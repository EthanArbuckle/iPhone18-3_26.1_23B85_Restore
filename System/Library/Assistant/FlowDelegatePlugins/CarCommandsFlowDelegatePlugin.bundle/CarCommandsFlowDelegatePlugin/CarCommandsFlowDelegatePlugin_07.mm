uint64_t sub_B5C64()
{
  sub_D2DC();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = type metadata accessor for CarCommandsError();
  v1[14] = v4;
  sub_D414(v4);
  v6 = *(v5 + 64);
  v1[15] = sub_D3C8();
  v7 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v7);
  v9 = *(v8 + 64);
  v1[16] = sub_D3C8();
  v10 = sub_168FE4();
  v1[17] = v10;
  sub_10AEC(v10);
  v1[18] = v11;
  v13 = *(v12 + 64);
  v1[19] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_B5D88()
{
  v38 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[12];
  v5 = v0[11];
  v6 = *(v0[13] + 416);
  sub_169274();
  v7 = sub_169244();
  v0[20] = v7;
  sub_169264();
  v34 = sub_168FD4();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  v10 = *(v4 + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  v0[2] = 0xD000000000000082;
  v0[3] = 0x8000000000189700;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v13 = sub_16AB34();
  v14 = sub_15AE4(v13);
  v16 = v15;

  if (v16)
  {
    v40._countAndFlagsBits = 32;
    v40._object = 0xE100000000000000;
    sub_16A744(v40);
    v41._countAndFlagsBits = 0xD000000000000022;
    v41._object = 0x8000000000189810;
    sub_16A744(v41);
    v17 = v14;
    v18 = v16;
  }

  else
  {
    v17 = 0xD000000000000022;
    v18 = 0x8000000000189810;
  }

  v35 = v17;
  v36 = v18;
  v37._countAndFlagsBits = 58;
  v37._object = 0xE100000000000000;
  v0[8] = 70;
  v42._countAndFlagsBits = sub_16AE24();
  sub_16A744(v42);

  sub_16A744(v37);

  v19._countAndFlagsBits = sub_378D0(v10);
  if (v19._object)
  {
    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    sub_16A744(v19);

    v43._countAndFlagsBits = 32;
    v43._object = 0xE100000000000000;
    sub_16A744(v43);
  }

  v20 = sub_16A574();
  if (os_log_type_enabled(v20, v12))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37._countAndFlagsBits = v22;
    *v21 = 136315138;
    v23 = sub_15BC8(v35, v36, &v37._countAndFlagsBits);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_0, v20, v12, "%s", v21, 0xCu);
    sub_D13C(v22);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v24 = v0[16];
  v25 = v7;
  sub_67C60();

  sub_D95F4(v20, v34, v9);
  v26 = *(v4 + 176);
  v27 = sub_16A9A4();
  sub_386D8(v27, v26, 0xD000000000000082, 0x8000000000189700, 0xD000000000000022, 0x8000000000189810, 74, 0xD000000000000022, 0x8000000000189840);
  sub_16A6E4();

  v28 = sub_16A0C4();
  sub_5370(v24, 0, 1, v28);
  v29 = swift_task_alloc();
  v0[21] = v29;
  *v29 = v0;
  v29[1] = sub_B61B8;
  v30 = v0[16];
  v31 = v0[12];
  v32 = v0[10];

  return sub_B64EC();
}

uint64_t sub_B61B8()
{
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v5 = *(v2 + 168);
  *v4 = *v1;
  *(v3 + 176) = v0;

  sub_109A0(*(v2 + 128), &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_B62F4()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);

  sub_D37C();

  return v4();
}

uint64_t sub_B6378()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  sub_16ACF4(64);
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[9] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v14._object = 0x8000000000189870;
  v14._countAndFlagsBits = 0xD00000000000003ELL;
  sub_16A744(v14);
  v7 = v0[7];
  *v4 = v0[6];
  v4[1] = v7;
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  v8 = sub_67C60();
  sub_548D0(v8, v9);
  swift_willThrow();

  sub_B75CC();
  sub_B7534(v4, v10);

  sub_D37C();

  return v11();
}

uint64_t sub_B64EC()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 273) = v3;
  *(v1 + 120) = v4;
  v5 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v1 + 144) = sub_D3C8();
  v8 = sub_168E14();
  *(v1 + 152) = v8;
  sub_10AEC(v8);
  *(v1 + 160) = v9;
  v11 = *(v10 + 64);
  *(v1 + 168) = sub_D3C8();
  v12 = sub_168B74();
  sub_D414(v12);
  v14 = *(v13 + 64);
  *(v1 + 176) = sub_D3C8();
  v15 = sub_1691E4();
  *(v1 + 184) = v15;
  sub_10AEC(v15);
  *(v1 + 192) = v16;
  v18 = *(v17 + 64);
  *(v1 + 200) = sub_D3C8();
  v19 = type metadata accessor for NeedsValueParameters(0);
  sub_D414(v19);
  v21 = *(v20 + 64);
  *(v1 + 208) = sub_D3C8();
  v22 = sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v1 + 216) = v22;
  sub_D414(v22);
  v24 = *(v23 + 64);
  *(v1 + 224) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_B6684()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 273);
  v4 = *(v0 + 128);
  v5 = *(*(v0 + 136) + 176);
  sub_16ACF4(51);
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  v17._object = 0x80000000001897D0;
  sub_16A744(v17);
  sub_16198(v4, v1);
  v18._countAndFlagsBits = sub_16A694();
  sub_16A744(v18);

  v19._object = 0x80000000001897F0;
  v19._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v19);
  *(v0 + 272) = v3;
  sub_5758(&qword_1EA2A8, &unk_174150);
  v20._countAndFlagsBits = sub_16A694();
  sub_16A744(v20);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v6 = *(v0 + 208);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = sub_16A584();
  sub_9DA0(v9, qword_1E65C0);
  v10 = sub_16A9A4();
  sub_386D8(v10, v5, 0xD000000000000082, 0x8000000000189700, 0xD000000000000037, 0x8000000000189790, 85, 0, 0xE000000000000000);

  v11 = sub_D084((v8 + qword_1F0C28), *(v8 + qword_1F0C28 + 24));
  sub_16198(v7, v6);
  v12 = *v11;
  v13 = swift_task_alloc();
  *(v0 + 232) = v13;
  *v13 = v0;
  v13[1] = sub_B68CC;
  v14 = *(v0 + 208);

  return sub_156F84(v14);
}

uint64_t sub_B68CC()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *(v5 + 208);
  v8 = *v1;
  sub_D2A4();
  *v9 = v8;
  *(v11 + 240) = v10;
  *(v11 + 248) = v0;

  sub_B7534(v7, type metadata accessor for NeedsValueParameters);
  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_B6A04()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 273);
  swift_beginAccess();
  sub_10824(v7 + 184, v0 + 16);
  sub_168B54();
  sub_169164();
  sub_1691A4();
  sub_1691C4();
  sub_12B484(v8);
  (*(v5 + 16))(v6, v3, v4);
  sub_5370(v6, 0, 1, v4);
  sub_1691B4();
  v9 = *(v0 + 48);
  sub_D084((v0 + 16), *(v0 + 40));
  v10 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  *v11 = v0;
  v11[1] = sub_B6B8C;
  v12 = *(v0 + 240);
  v13 = *(v0 + 200);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 56);
}

uint64_t sub_B6B8C()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  sub_D2A4();
  *v8 = v7;
  *(v9 + 264) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_B6C90()
{
  v1 = *(v0 + 248);
  sub_B75F8();

  sub_D37C();

  return v2();
}

uint64_t sub_B6D24()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v11 = *(v0 + 144);
  v8 = *(v0 + 120);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  (*(v6 + 8))(v4, v5);
  sub_D124((v0 + 56), v8);
  sub_D13C((v0 + 16));

  sub_D37C();

  return v9();
}

uint64_t sub_B6E34()
{
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v3 + 8))(v2, v4);
  sub_D13C(v0 + 2);

  v5 = v0[33];
  sub_B75F8();

  sub_D37C();

  return v6();
}

uint64_t sub_B6F10()
{
  sub_D13C((v0 + qword_1F0C28));
  v1 = *(v0 + qword_1F0C30);
}

uint64_t *sub_B6F50()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0C28));
  v1 = *(v0 + qword_1F0C30);

  return v0;
}

uint64_t sub_B6F98()
{
  v0 = sub_B6F50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_B7028()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B758C;

  return sub_B5708();
}

uint64_t sub_B70DC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C8;

  return sub_B5C64();
}

uint64_t sub_B7188(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[52];
  v12 = a3[53];
  v13 = a3[54];
  v14 = type metadata accessor for CommonNeedsValueFlowStrategy();
  *v10 = v4;
  v10[1] = sub_B758C;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v14, a4);
}

uint64_t sub_B725C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[52];
  v12 = a3[53];
  v13 = a3[54];
  v14 = type metadata accessor for CommonNeedsValueFlowStrategy();
  *v10 = v4;
  v10[1] = sub_B758C;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v14, a4);
}

uint64_t sub_B7330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[52];
  v16 = a5[53];
  v17 = a5[54];
  v18 = type metadata accessor for CommonNeedsValueFlowStrategy();
  *v14 = v6;
  v14[1] = sub_B758C;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v18, a6);
}

uint64_t sub_B741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = a6[52];
  v18 = a6[53];
  v19 = a6[54];
  v20 = type metadata accessor for CommonNeedsValueFlowStrategy();
  *v16 = v7;
  v16[1] = sub_B758C;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v20, a7);
}

uint64_t sub_B7534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10AFC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_B7590()
{
  result = v0;
  v3 = *(v1 - 328);
  v4 = *(v1 - 288);
  return result;
}

uint64_t sub_B75E4()
{
  result = v0;
  v3 = *(v1 - 336);
  return result;
}

uint64_t sub_B75F8()
{
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
}

id sub_B7618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_B78D4(a1, a2, v8);
  sub_B7A7C(a3, a4, v8, &selRef_setType_);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_16D440;
  v10 = sub_168C14();

  *(v9 + 32) = v10;
  sub_B792C(v9, v8);

  return v8;
}

id sub_B7704(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_B79AC(a2);
  if (v6)
  {
    sub_5758(&qword_1EA2B8, &qword_174188);
    sub_16A7C4();
    v6 = sub_B7BB8();
  }

  else
  {
    v2 = 0;
  }

  sub_B7BA0(v6, "setConfirmCommands:");

  v7 = sub_B7A18(a2);
  if (v8)
  {
    sub_16A644();
    v7 = sub_B7BB8();
  }

  else
  {
    v2 = 0;
  }

  sub_B7BA0(v7, "setConfirmText:");

  v9 = sub_B79AC(a1);
  if (v9)
  {
    sub_5758(&qword_1EA2B8, &qword_174188);
    sub_16A7C4();
    v9 = sub_B7BB8();
  }

  else
  {
    v2 = 0;
  }

  sub_B7BA0(v9, "setDenyCommands:");

  v10 = sub_B7A18(a1);
  if (v11)
  {
    sub_16A644();
    v10 = sub_B7BB8();
  }

  else
  {
    v2 = 0;
  }

  sub_B7BA0(v10, "setDenyText:");

  v12 = sub_16A664();
  sub_B7A7C(v12, v13, v5, &selRef_setCancelTrigger_);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_16E450;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v15 = a1;
  v16 = a2;
  sub_B7AE8(v14, v5);

  return v5;
}

void sub_B78D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16A644();
  [a3 setLabel:v4];
}

void sub_B792C(uint64_t a1, void *a2)
{
  sub_5758(&qword_1EA2B8, &qword_174188);
  isa = sub_16A7C4().super.isa;

  [a2 setCommands:isa];
}

uint64_t sub_B79AC(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_5758(&qword_1EA2B8, &qword_174188);
  v3 = sub_16A7D4();

  return v3;
}

uint64_t sub_B7A18(void *a1)
{
  v1 = [a1 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

void sub_B7A7C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_16A644();

  [a3 *a4];
}

void sub_B7AE8(uint64_t a1, void *a2)
{
  sub_B7B5C();
  isa = sub_16A7C4().super.isa;

  [a2 setAllConfirmationOptions:isa];
}

unint64_t sub_B7B5C()
{
  result = qword_1EA2C0;
  if (!qword_1EA2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA2C0);
  }

  return result;
}

id sub_B7BA0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_B7BB8()
{
}

uint64_t sub_B7BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedMeasurementUnitProvider();
    v9 = a1 + *(a3 + 24);

    return sub_9E2C(v9, a2, v8);
  }
}

uint64_t sub_B7C80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalizedMeasurementUnitProvider();
    v8 = v5 + *(a4 + 24);

    return sub_5370(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GetTirePressureStatusAction()
{
  result = qword_1EA328;
  if (!qword_1EA328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B7D4C(char a1)
{
  result = 0x776F4C656E6FLL;
  switch(a1)
  {
    case 1:
      v3 = 1214606959;
      goto LABEL_8;
    case 2:
      v5 = 1282373492;
      goto LABEL_15;
    case 3:
      v3 = 1215264628;
      goto LABEL_8;
    case 4:
      v4 = 1097824116;
      goto LABEL_13;
    case 5:
      return 0x776F4C6565726874;
    case 6:
      return 0x6769486565726874;
    case 7:
      return 0x6E62416565726874;
    case 8:
      v5 = 1282174049;
LABEL_15:
      result = v5 & 0xFFFF0000FFFFFFFFLL | 0x776F00000000;
      break;
    case 9:
      v3 = 1215065185;
LABEL_8:
      result = v3 | 0x68676900000000;
      break;
    case 10:
      v4 = 1097624673;
LABEL_13:
      result = v4 | 0x726F6E6200000000;
      break;
    case 11:
      result = 0x616D726F4E6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B7EAC()
{
  *(v1 + 128) = v0;
  sub_10B4C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_B7ED8()
{
  sub_D2DC();
  v1 = *sub_D084((*(v0 + 128) + 8), *(*(v0 + 128) + 32));
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_B7F80;

  return sub_13AB58(v0 + 16, 3);
}

uint64_t sub_B7F80()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[19] = v12;
    *v12 = v7;
    v12[1] = sub_B80DC;
    v13 = v3[16];

    return sub_B861C();
  }
}

uint64_t sub_B80DC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 160) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_B81E0()
{
  v2 = v1[18];
  sub_890A0();
  sub_890C4(v3, v4, v5, v6, v7, v8, v9, v10, v21, v22, v23, v24, v25);
  v27._countAndFlagsBits = 0xD000000000000019;
  v27._object = 0x8000000000186790;
  sub_16A744(v27);
  v1[15] = v2;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v11 = *v0;
  v12 = v1[14];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v13 = v1[16];
  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_BB5B4(v15);

  sub_3024C(&unk_172F98);
  v16 = *v13;
  v17 = swift_task_alloc();
  v1[22] = v17;
  *v17 = v1;
  v18 = sub_BB584(v17);

  return v19(v18);
}

uint64_t sub_B8348()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v6 = *(v5 + 176);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 184) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_B844C()
{
  sub_D13C(v1 + 2);
  v2 = v1[20];
  sub_890A0();
  sub_890C4(v3, v4, v5, v6, v7, v8, v9, v10, v21, v22, v23, v24, v25);
  v27._countAndFlagsBits = 0xD000000000000019;
  v27._object = 0x8000000000186790;
  sub_16A744(v27);
  v1[15] = v2;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v11 = *v0;
  v12 = v1[14];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v13 = v1[16];
  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_BB5B4(v15);

  sub_3024C(&unk_172F98);
  v16 = *v13;
  v17 = swift_task_alloc();
  v1[22] = v17;
  *v17 = v1;
  v18 = sub_BB584(v17);

  return v19(v18);
}

uint64_t sub_B85BC()
{
  sub_D2DC();
  v1 = v0[21];

  v2 = v0[1];
  v3 = v0[23];

  return v2();
}

uint64_t sub_B861C()
{
  sub_D2DC();
  v1[15] = v2;
  v1[16] = v0;
  v3 = *(*(sub_16A164() - 8) + 64);
  v1[17] = sub_D3C8();
  v4 = sub_5758(&qword_1EA368, &unk_1741F0);
  v1[18] = v4;
  sub_10AEC(v4);
  v1[19] = v5;
  v7 = *(v6 + 64);
  v1[20] = sub_D3C8();
  v8 = sub_5758(&qword_1EA370, &qword_1782B0);
  v1[21] = v8;
  sub_10AEC(v8);
  v1[22] = v9;
  v11 = *(v10 + 64);
  v1[23] = sub_D3C8();
  v12 = sub_168454();
  v1[24] = v12;
  sub_10AEC(v12);
  v1[25] = v13;
  v15 = *(v14 + 64);
  v1[26] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_B8798()
{
  v1 = *(v0 + 120);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_B88C4;

  return v8(v0 + 56, v2, v3);
}

uint64_t sub_B88C4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_B89C0()
{
  if (*(v0 + 80))
  {
    v2 = *(v0 + 200);
    v1 = *(v0 + 208);
    v3 = *(v0 + 192);
    v4 = *(v0 + 128);
    sub_D124((v0 + 56), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    sub_D084((v0 + 16), v5);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = sub_B956C(v7);
    v10 = v9;

    v11 = *(type metadata accessor for GetTirePressureStatusAction() + 24);
    sub_B9C38();
    (*(v2 + 16))(v1, v4 + v11, v3);
    v12 = sub_16A984();
    v13 = objc_opt_self();
    v14 = [v13 poundsForcePerSquareInch];
    v15 = sub_16AAD4();

    v16 = &selRef_kilopascals;
    if (v15)
    {
      v16 = &selRef_poundsForcePerSquareInch;
    }

    v72 = [v13 *v16];
    *(v0 + 232) = v72;

    v17 = *(v10 + 16);
    if (v17)
    {
      v60 = v8;
      v18 = 0;
      v19 = 0;
      v65 = 0;
      v66 = 0;
      v63 = 0;
      v20 = 0;
      v67 = 0;
      v64 = 0;
      v73 = 0;
      v21 = *(v0 + 176);
      v70 = *(v0 + 184);
      v69 = *(*(v0 + 168) + 48);
      v22 = v10 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      v68 = *(v21 + 72);
      v23 = (*(v0 + 152) + 8);
      v80 = 1;
      while (1)
      {
        v75 = v20;
        v76 = v19;
        v77 = v18;
        v24 = *(v0 + 184);
        v25 = *(v0 + 160);
        v26 = *(v0 + 144);
        sub_B9C7C(v22, v24);
        v27 = *v24;
        sub_168344();
        v28 = *v23;
        (*v23)(v70 + v69, v26);
        if (v73)
        {
          if (v67)
          {
            if (!v66)
            {
              v62 = *&aLeftFrorightFr[8 * v27];
              v66 = *&aNt[8 * v27];
              v37 = *(v0 + 160);
              v38 = *(v0 + 144);
              sub_168314();
              v18 = v39;
              v20 = v75;
              v19 = v76;
              goto LABEL_16;
            }

            v20 = v75;
            if (!v63)
            {
              v61 = *&aLeftFrorightFr[8 * v27];
              v63 = *&aNt[8 * v27];
              v29 = *(v0 + 160);
              v30 = *(v0 + 144);
              sub_168314();
            }

            v19 = v76;
          }

          else
          {
            v20 = *&aLeftFrorightFr[8 * v27];
            v67 = *&aNt[8 * v27];
            v34 = *(v0 + 160);
            v35 = *(v0 + 144);
            sub_168314();
            v19 = v36;
          }

          v18 = v77;
        }

        else
        {
          v64 = *&aLeftFrorightFr[8 * v27];
          v73 = *&aNt[8 * v27];
          v31 = *(v0 + 160);
          v32 = *(v0 + 144);
          sub_168314();
          v80 = 0;
          v65 = v33;
          v20 = v75;
          v19 = v76;
          v18 = v77;
        }

LABEL_16:
        v28(*(v0 + 160), *(v0 + 144));
        v22 += v68;
        if (!--v17)
        {

          v8 = v60;
          v40 = v73;
          v41 = v67;
          v42 = v63;
          v43 = v66;
          goto LABEL_24;
        }
      }
    }

    v65 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v64 = 0;
    v40 = 0;
    v80 = 1;
LABEL_24:
    v74 = v40;
    *(v0 + 256) = v41;
    *(v0 + 264) = v40;
    *(v0 + 240) = v42;
    *(v0 + 248) = v43;
    v52 = *(v0 + 136);
    v71 = sub_B7D4C(v8);
    v54 = v53;
    *(v0 + 272) = v53;
    v55 = [v72 symbol];
    v56 = sub_16A664();
    v58 = v57;

    *(v0 + 280) = v58;
    type metadata accessor for CarCommandsGetTirePressureCATsSimple();
    sub_16A154();
    *(v0 + 288) = sub_16A0F4();
    v59 = swift_task_alloc();
    *(v0 + 296) = v59;
    *v59 = v0;
    v59[1] = sub_B9040;

    return sub_956A4(v71, v54, v56, v58, v64, v74, v65, v80 & 1);
  }

  else
  {
    sub_D188(v0 + 56, &qword_1EA378, &unk_174200);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v44 = *(v0 + 128);
    v45 = sub_16A584();
    sub_9DA0(v45, qword_1E65C0);
    v46 = sub_16A9A4();
    sub_386D8(v46, 0x800000uLL, 0xD000000000000094, 0x8000000000189970, 0xD00000000000001CLL, 0x8000000000189A10, 37, 0xD000000000000022, 0x80000000001867D0);
    sub_3024C(&unk_179C30);
    v78 = v47;
    v48 = *v44;
    v49 = swift_task_alloc();
    *(v0 + 312) = v49;
    *v49 = v0;
    v49[1] = sub_B936C;
    v50 = *(v0 + 128);

    return v78(v48);
  }
}

uint64_t sub_B9040()
{
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v0;
  v6 = v2[37];
  v7 = v2[36];
  v8 = v2[35];
  v9 = v2[34];
  *v4 = *v1;
  v3[38] = v0;

  v10 = v2[33];
  v11 = v2[32];
  v12 = v2[31];
  v13 = v2[30];
  if (v0)
  {
    v14 = v2[33];
  }

  else
  {
    v15 = v2[30];
  }

  sub_10B4C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_B9248()
{
  sub_D13C((v0 + 16));
  v1 = *(v0 + 104);
  sub_BB5EC();

  sub_30AEC();

  return v2(v1);
}

uint64_t sub_B92DC()
{
  sub_D13C((v0 + 16));
  v1 = *(v0 + 304);
  sub_BB5EC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_B936C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  sub_D254();
  *v7 = v6;

  v8 = v4[26];
  v9 = v4[23];
  v10 = v4[20];
  v11 = v4[17];

  v13 = *(v6 + 8);
  if (!v1)
  {
    v12 = a1;
  }

  return v13(v12);
}

uint64_t sub_B94EC()
{
  v1 = *(v0 + 224);
  sub_BB5EC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_B956C(uint64_t a1)
{
  v44 = sub_5758(&qword_1EA370, &qword_1782B0);
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v44);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v40 - v6;
  v8 = type metadata accessor for CarTire();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    v43 = 0;
    v14 = 0;
    v16 = _swiftEmptyArrayStorage;
LABEL_23:
    v38 = sub_B99B0(v14, v43);
    v46 = v16;

    sub_B9DAC(&v46);

    return v38;
  }

  v43 = 0;
  v14 = 0;
  v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v45 = *(v10 + 72);
  v16 = _swiftEmptyArrayStorage;
  v41 = v2;
  while (1)
  {
    sub_B9CEC(v15, v12);
    v17 = *v12;
    v18 = v12[1];
    if ((v18 - 4) >= 2)
    {
      if (v18 == 3)
      {
        if (__OFADD__(v43, 1))
        {
          goto LABEL_25;
        }

        ++v43;
        v26 = v8;
        v27 = *(v8 + 24);
        v28 = *(v44 + 48);
        v29 = v42;
        *v42 = v17;
        v30 = sub_5758(&qword_1EA368, &unk_1741F0);
        (*(*(v30 - 8) + 16))(&v29[v28], &v12[v27], v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = v16[2];
          sub_108CC8();
          v16 = v36;
        }

        v31 = v16[2];
        v8 = v26;
        if (v31 >= v16[3] >> 1)
        {
          sub_108CC8();
          v16 = v37;
        }

        v2 = v41;
        sub_B9D50(v12);
        v16[2] = v31 + 1;
        v24 = v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v31;
        v25 = v42;
        goto LABEL_18;
      }

      if (v18 != 1)
      {
        sub_B9D50(v12);
        goto LABEL_20;
      }
    }

    if (__OFADD__(v14++, 1))
    {
      break;
    }

    v20 = *(v8 + 24);
    v21 = *(v44 + 48);
    *v7 = v17;
    v22 = sub_5758(&qword_1EA368, &unk_1741F0);
    (*(*(v22 - 8) + 16))(&v7[v21], &v12[v20], v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = v16[2];
      sub_108CC8();
      v16 = v33;
    }

    v23 = v16[2];
    if (v23 >= v16[3] >> 1)
    {
      sub_108CC8();
      v16 = v34;
    }

    sub_B9D50(v12);
    v16[2] = v23 + 1;
    v24 = v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v23;
    v25 = v7;
LABEL_18:
    sub_B9E60(v25, v24);
LABEL_20:
    v15 += v45;
    if (!--v13)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_B99B0(uint64_t a1, uint64_t a2)
{
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    JUMPOUT(0xB9A48);
  }

  switch(a1 + a2)
  {
    case 1:
      return a1 != 1;
    case 2:
      v3 = 2;
      if (a2 == 2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
      }

      v5 = a1 == 2;
      goto LABEL_16;
    case 3:
      v3 = 5;
      if (a2 == 3)
      {
        v4 = 6;
      }

      else
      {
        v4 = 7;
      }

      v5 = a1 == 3;
      goto LABEL_16;
    case 4:
      v3 = 8;
      if (a2 == 4)
      {
        v4 = 9;
      }

      else
      {
        v4 = 10;
      }

      v5 = a1 == 4;
LABEL_16:
      if (v5)
      {
        result = v3;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      result = 11;
      break;
  }

  return result;
}

BOOL sub_B9A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA370, &qword_1782B0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  sub_B9C7C(a1, v18 - v10);
  LODWORD(a1) = *v11;
  v12 = *(v5 + 56);
  sub_B9C7C(a2, v9);
  v13 = *(v5 + 56);
  v14 = a1 < *v9;
  v15 = sub_5758(&qword_1EA368, &unk_1741F0);
  v16 = *(*(v15 - 8) + 8);
  v16(&v9[v13], v15);
  v16(&v11[v12], v15);
  return v14;
}

uint64_t sub_B9BAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_88ED0;

  return sub_B7EAC();
}

unint64_t sub_B9C38()
{
  result = qword_1EA380;
  if (!qword_1EA380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA380);
  }

  return result;
}

uint64_t sub_B9C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA370, &qword_1782B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B9CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarTire();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B9D50(uint64_t a1)
{
  v2 = type metadata accessor for CarTire();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_B9DAC(uint64_t *a1)
{
  v2 = *(sub_5758(&qword_1EA370, &qword_1782B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_39734(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_B9ED0(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_B9E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA370, &qword_1782B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_B9ED0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_16AE14(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_5758(&qword_1EA370, &qword_1782B0);
        v6 = sub_16A804();
        v6[2] = v5;
      }

      v7 = *(sub_5758(&qword_1EA370, &qword_1782B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_BA348(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_BA018(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_BA018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_5758(&qword_1EA370, &qword_1782B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v44 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v35 - v13;
  v14 = __chkstk_darwin(v12);
  v46 = &v35 - v15;
  v16 = __chkstk_darwin(v14);
  v45 = &v35 - v17;
  result = __chkstk_darwin(v16);
  v53 = &v35 - v20;
  v37 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v42 = -v22;
    v43 = v21;
    v24 = a1 - a3;
    v36 = v22;
    v25 = v21 + v22 * a3;
    while (2)
    {
      v40 = v23;
      v41 = a3;
      v38 = v25;
      v39 = v24;
      v26 = v25;
      v48 = v24;
      do
      {
        v27 = v53;
        sub_B9C7C(v26, v53);
        v28 = v45;
        sub_B9C7C(v23, v45);
        v29 = v46;
        sub_B9C7C(v27, v46);
        v52 = *v29;
        v50 = *(v8 + 48);
        v30 = v47;
        sub_B9C7C(v28, v47);
        v51 = *v30;
        v49 = *(v8 + 48);
        v31 = sub_5758(&qword_1EA368, &unk_1741F0);
        v32 = *(*(v31 - 8) + 8);
        v32(&v30[v49], v31);
        v32(&v29[v50], v31);
        sub_D188(v28, &qword_1EA370, &qword_1782B0);
        result = sub_D188(v53, &qword_1EA370, &qword_1782B0);
        if (v52 >= v51)
        {
          break;
        }

        if (!v43)
        {
          __break(1u);
          return result;
        }

        v33 = v44;
        sub_B9E60(v26, v44);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_B9E60(v33, v23);
        v23 += v42;
        v26 += v42;
      }

      while (!__CFADD__(v48++, 1));
      a3 = v41 + 1;
      v23 = v40 + v36;
      v24 = v39 - 1;
      v25 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_BA348(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = sub_5758(&qword_1EA370, &qword_1782B0);
  v141 = *(v8 - 8);
  v9 = *(v141 + 64);
  v10 = __chkstk_darwin(v8);
  v137 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v146 = &v127 - v13;
  v14 = __chkstk_darwin(v12);
  v149 = &v127 - v15;
  v16 = __chkstk_darwin(v14);
  v148 = &v127 - v17;
  v18 = __chkstk_darwin(v16);
  v147 = &v127 - v19;
  v20 = __chkstk_darwin(v18);
  v151 = &v127 - v21;
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v142 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_102:
    v156 = *v133;
    if (!v156)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_104;
    }

    goto LABEL_139;
  }

  v130 = &v127 - v23;
  v131 = v24;
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v129 = a4;
  v150 = v8;
  while (1)
  {
    v28 = v26 + 1;
    v134 = v26;
    if (v26 + 1 < v25)
    {
      v29 = *v142;
      v30 = *(v141 + 72);
      v143 = v26 + 1;
      v31 = v29 + v30 * v28;
      v32 = v31;
      v33 = v130;
      sub_B9C7C(v31, v130);
      v34 = v29 + v30 * v26;
      v35 = v131;
      sub_B9C7C(v34, v131);
      LODWORD(v144) = sub_B9A58(v33, v35);
      if (v5)
      {
        sub_D188(v35, &qword_1EA370, &qword_1782B0);
        sub_D188(v33, &qword_1EA370, &qword_1782B0);
LABEL_114:

        return;
      }

      v132 = 0;
      v140 = v25;
      sub_D188(v35, &qword_1EA370, &qword_1782B0);
      v36 = v140;
      sub_D188(v33, &qword_1EA370, &qword_1782B0);
      v37 = v134 + 2;
      v38 = v29 + v30 * (v134 + 2);
      v28 = v143;
      v145 = v30;
      while (1)
      {
        v39 = v37;
        v40 = v28 + 1;
        if (v40 >= v36)
        {
          break;
        }

        v41 = v151;
        v156 = v37;
        sub_B9C7C(v38, v151);
        v42 = v147;
        sub_B9C7C(v32, v147);
        v5 = v148;
        sub_B9C7C(v41, v148);
        v155 = *v5;
        v153 = *(v8 + 48);
        v43 = v149;
        sub_B9C7C(v42, v149);
        LODWORD(v154) = *v43;
        v152 = *(v8 + 48);
        v44 = sub_5758(&qword_1EA368, &unk_1741F0);
        v143 = v40;
        v45 = v44;
        v46 = *(*(v44 - 8) + 8);
        v47 = &v43[v152];
        v36 = v140;
        v46(v47, v45);
        v48 = v45;
        v28 = v143;
        v46(&v5[v153], v48);
        v8 = v150;
        sub_D188(v42, &qword_1EA370, &qword_1782B0);
        sub_D188(v151, &qword_1EA370, &qword_1782B0);
        v39 = v156;
        v30 = v145;
        v38 += v145;
        v32 += v145;
        v37 = v156 + 1;
        if (((v144 ^ (v155 >= v154)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v28 = v36;
LABEL_10:
      if (v144)
      {
        v26 = v134;
        if (v28 < v134)
        {
          goto LABEL_138;
        }

        if (v134 >= v28)
        {
          v5 = v132;
          goto LABEL_32;
        }

        if (v36 >= v39)
        {
          v49 = v39;
        }

        else
        {
          v49 = v36;
        }

        v50 = v134;
        v51 = v30 * (v49 - 1);
        v52 = v28;
        v53 = v30 * v49;
        v54 = v134 * v30;
        v143 = v52;
        do
        {
          if (v50 != --v52)
          {
            v55 = *v142;
            if (!*v142)
            {
              goto LABEL_143;
            }

            sub_B9E60(v55 + v54, v137);
            v56 = v54 < v51 || v55 + v54 >= (v55 + v53);
            if (v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_B9E60(v137, v55 + v51);
            v30 = v145;
          }

          ++v50;
          v51 -= v30;
          v53 -= v30;
          v54 += v30;
        }

        while (v50 < v52);
        v28 = v143;
      }

      v5 = v132;
      v26 = v134;
    }

LABEL_32:
    v57 = v142[1];
    if (v28 < v57)
    {
      if (__OFSUB__(v28, v26))
      {
        goto LABEL_135;
      }

      if (v28 - v26 < v129)
      {
        break;
      }
    }

LABEL_50:
    if (v28 < v26)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = *(v27 + 16);
      sub_108404();
      v27 = v118;
    }

    v73 = *(v27 + 16);
    v74 = v73 + 1;
    if (v73 >= *(v27 + 24) >> 1)
    {
      sub_108404();
      v27 = v119;
    }

    *(v27 + 16) = v74;
    v75 = v27 + 32;
    v76 = (v27 + 32 + 16 * v73);
    *v76 = v134;
    v76[1] = v28;
    v156 = *v133;
    if (!v156)
    {
      goto LABEL_144;
    }

    v143 = v28;
    if (v73)
    {
      while (1)
      {
        v77 = v74 - 1;
        v78 = (v75 + 16 * (v74 - 1));
        v79 = (v27 + 16 * v74);
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v80 = *(v27 + 32);
          v81 = *(v27 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_70:
          if (v83)
          {
            goto LABEL_121;
          }

          v95 = *v79;
          v94 = v79[1];
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_124;
          }

          v99 = v78[1];
          v100 = v99 - *v78;
          if (__OFSUB__(v99, *v78))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v97, v100))
          {
            goto LABEL_129;
          }

          if (v97 + v100 >= v82)
          {
            if (v82 < v100)
            {
              v77 = v74 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v74 < 2)
        {
          goto LABEL_123;
        }

        v102 = *v79;
        v101 = v79[1];
        v90 = __OFSUB__(v101, v102);
        v97 = v101 - v102;
        v98 = v90;
LABEL_85:
        if (v98)
        {
          goto LABEL_126;
        }

        v104 = *v78;
        v103 = v78[1];
        v90 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v90)
        {
          goto LABEL_128;
        }

        if (v105 < v97)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v77 - 1 >= v74)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v142)
        {
          goto LABEL_141;
        }

        v109 = (v75 + 16 * (v77 - 1));
        v110 = *v109;
        v111 = v77;
        v112 = v75 + 16 * v77;
        v113 = *(v112 + 8);
        sub_BAE78(*v142 + *(v141 + 72) * *v109, *v142 + *(v141 + 72) * *v112, *v142 + *(v141 + 72) * v113, v156);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v113 < v110)
        {
          goto LABEL_116;
        }

        v114 = v27;
        v27 = v75;
        v5 = *(v114 + 16);
        if (v111 > v5)
        {
          goto LABEL_117;
        }

        *v109 = v110;
        v109[1] = v113;
        if (v111 >= v5)
        {
          goto LABEL_118;
        }

        v115 = v114;
        v74 = (v5 - 1);
        sub_39538((v112 + 16), &v5[-v111 - 1], v112);
        *(v115 + 16) = v5 - 1;
        v116 = v5 > 2;
        v5 = 0;
        v27 = v115;
        v8 = v150;
        if (!v116)
        {
          goto LABEL_99;
        }
      }

      v84 = v75 + 16 * v74;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_119;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_120;
      }

      v91 = v79[1];
      v92 = v91 - *v79;
      if (__OFSUB__(v91, *v79))
      {
        goto LABEL_122;
      }

      v90 = __OFADD__(v82, v92);
      v93 = v82 + v92;
      if (v90)
      {
        goto LABEL_125;
      }

      if (v93 >= v87)
      {
        v107 = *v78;
        v106 = v78[1];
        v90 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v90)
        {
          goto LABEL_133;
        }

        if (v82 < v108)
        {
          v77 = v74 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v26 = v143;
    v25 = v142[1];
    if (v143 >= v25)
    {
      goto LABEL_102;
    }
  }

  v58 = v26 + v129;
  if (__OFADD__(v26, v129))
  {
    goto LABEL_136;
  }

  if (v58 >= v57)
  {
    v58 = v142[1];
  }

  if (v58 < v26)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v27 = sub_39524(v27);
LABEL_104:
    v120 = (v27 + 16);
    v121 = *(v27 + 16);
    while (v121 >= 2)
    {
      if (!*v142)
      {
        goto LABEL_142;
      }

      v122 = v27;
      v123 = (v27 + 16 * v121);
      v124 = *v123;
      v125 = &v120[2 * v121];
      v27 = *(v125 + 1);
      sub_BAE78(*v142 + *(v141 + 72) * *v123, *v142 + *(v141 + 72) * *v125, *v142 + *(v141 + 72) * v27, v156);
      if (v5)
      {
        break;
      }

      if (v27 < v124)
      {
        goto LABEL_130;
      }

      if (v121 - 2 >= *v120)
      {
        goto LABEL_131;
      }

      *v123 = v124;
      v123[1] = v27;
      v126 = *v120 - v121;
      if (*v120 < v121)
      {
        goto LABEL_132;
      }

      v121 = *v120 - 1;
      sub_39538(v125 + 16, v126, v125);
      *v120 = v121;
      v27 = v122;
    }

    goto LABEL_114;
  }

  if (v28 == v58)
  {
    goto LABEL_50;
  }

  v128 = v27;
  v132 = v5;
  v59 = *v142;
  v60 = *(v141 + 72);
  v61 = *v142 + v60 * (v28 - 1);
  v144 = -v60;
  v145 = v59;
  v62 = v26 - v28;
  v135 = v60;
  v136 = v58;
  v63 = v59 + v28 * v60;
LABEL_41:
  v143 = v28;
  v138 = v63;
  v139 = v62;
  v64 = v62;
  v140 = v61;
  while (1)
  {
    v152 = v64;
    v65 = v151;
    sub_B9C7C(v63, v151);
    v66 = v147;
    sub_B9C7C(v61, v147);
    v67 = v148;
    sub_B9C7C(v65, v148);
    LODWORD(v156) = *v67;
    v154 = *(v8 + 48);
    v68 = v149;
    sub_B9C7C(v66, v149);
    v155 = *v68;
    v153 = *(v8 + 48);
    v69 = sub_5758(&qword_1EA368, &unk_1741F0);
    v70 = *(*(v69 - 8) + 8);
    v70(&v68[v153], v69);
    v70(&v67[v154], v69);
    sub_D188(v66, &qword_1EA370, &qword_1782B0);
    sub_D188(v65, &qword_1EA370, &qword_1782B0);
    if (v156 >= v155)
    {
      v8 = v150;
LABEL_48:
      v28 = v143 + 1;
      v61 = v140 + v135;
      v62 = v139 - 1;
      v63 = v138 + v135;
      if (v143 + 1 == v136)
      {
        v28 = v136;
        v5 = v132;
        v27 = v128;
        v26 = v134;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    v71 = v152;
    if (!v145)
    {
      break;
    }

    v72 = v146;
    sub_B9E60(v63, v146);
    v8 = v150;
    swift_arrayInitWithTakeFrontToBack();
    sub_B9E60(v72, v61);
    v61 += v144;
    v63 += v144;
    v56 = __CFADD__(v71, 1);
    v64 = v71 + 1;
    if (v56)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_BAE78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_5758(&qword_1EA370, &qword_1782B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v70 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v69 = &v60 - v13;
  v14 = __chkstk_darwin(v12);
  v68 = &v60 - v15;
  result = __chkstk_darwin(v14);
  v75 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_61;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v24 = v20 / v19;
  v80 = a1;
  v79 = a4;
  v25 = v22 / v19;
  v67 = v8;
  if (v20 / v19 >= v22 / v19)
  {
    v39 = a3;
    sub_10928C();
    v40 = a4 + v25 * v19;
    v41 = -v19;
    v42 = v40;
    v76 = a1;
    v77 = a4;
    v63 = v41;
LABEL_36:
    v43 = a2 + v41;
    v44 = v39;
    v61 = v42;
    v64 = a2 + v41;
    v65 = a2;
    while (1)
    {
      if (v40 <= a4)
      {
        v80 = a2;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v62 = v42;
      v74 = v44 + v41;
      v45 = v40 + v41;
      v46 = v75;
      v47 = v44;
      sub_B9C7C(v40 + v41, v75);
      v48 = v43;
      v49 = v8;
      v50 = v68;
      sub_B9C7C(v48, v68);
      v51 = v69;
      sub_B9C7C(v46, v69);
      v73 = *v51;
      v71 = *(v49 + 48);
      v52 = v70;
      sub_B9C7C(v50, v70);
      v72 = *v52;
      v66 = *(v49 + 48);
      v53 = sub_5758(&qword_1EA368, &unk_1741F0);
      v54 = *(*(v53 - 8) + 8);
      v54(&v52[v66], v53);
      v54(&v51[v71], v53);
      sub_D188(v50, &qword_1EA370, &qword_1782B0);
      sub_D188(v75, &qword_1EA370, &qword_1782B0);
      if (v73 < v72)
      {
        if (v47 < v65 || v74 >= v65)
        {
          v39 = v74;
          a2 = v64;
          v8 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v42 = v62;
          v41 = v63;
          a1 = v76;
          a4 = v77;
        }

        else
        {
          v39 = v74;
          v41 = v63;
          v42 = v62;
          v21 = v47 == v65;
          v58 = v64;
          a2 = v64;
          v8 = v67;
          a1 = v76;
          a4 = v77;
          if (!v21)
          {
            v59 = v62;
            swift_arrayInitWithTakeBackToFront();
            a2 = v58;
            v42 = v59;
          }
        }

        goto LABEL_36;
      }

      v55 = v74;
      if (v47 < v40 || v74 >= v40)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v55;
        v40 = v45;
        v42 = v45;
        a1 = v76;
        a4 = v77;
        v41 = v63;
        v43 = v64;
        a2 = v65;
      }

      else
      {
        v42 = v45;
        v21 = v40 == v47;
        v44 = v74;
        v40 = v45;
        v8 = v67;
        a1 = v76;
        a4 = v77;
        v41 = v63;
        v43 = v64;
        a2 = v65;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          v44 = v55;
          v40 = v45;
          v42 = v45;
        }
      }
    }

    v80 = a2;
    v42 = v61;
LABEL_58:
    v78 = v42;
  }

  else
  {
    sub_10928C();
    v65 = v19;
    v66 = a4 + v24 * v19;
    v78 = v66;
    v74 = a3;
    while (a4 < v66 && a2 < a3)
    {
      v76 = a1;
      v27 = v75;
      sub_B9C7C(a2, v75);
      v28 = v68;
      sub_B9C7C(a4, v68);
      v29 = v69;
      sub_B9C7C(v27, v69);
      v73 = *v29;
      v77 = a4;
      v30 = a2;
      v71 = *(v8 + 48);
      v31 = v70;
      sub_B9C7C(v28, v70);
      v72 = *v31;
      v32 = *(v8 + 48);
      v33 = sub_5758(&qword_1EA368, &unk_1741F0);
      v34 = *(*(v33 - 8) + 8);
      v34(&v31[v32], v33);
      v34(&v29[v71], v33);
      sub_D188(v28, &qword_1EA370, &qword_1782B0);
      sub_D188(v27, &qword_1EA370, &qword_1782B0);
      if (v73 >= v72)
      {
        v35 = v65;
        v36 = v76;
        a4 = v77 + v65;
        if (v76 < v77 || v76 >= a4)
        {
          v8 = v67;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v74;
        }

        else
        {
          a3 = v74;
          v8 = v67;
          if (v76 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v79 = a4;
      }

      else
      {
        v35 = v65;
        a2 += v65;
        v36 = v76;
        a4 = v77;
        if (v76 < v30 || v76 >= a2)
        {
          v8 = v67;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v74;
        }

        else
        {
          a3 = v74;
          v8 = v67;
          if (v76 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v36 + v35;
      v80 = a1;
    }
  }

  sub_BB498(&v80, &v79, &v78);
  return 1;
}

uint64_t sub_BB498(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_5758(&qword_1EA370, &qword_1782B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_BB584(uint64_t a1)
{
  *(a1 + 8) = sub_B8348;
  v3 = *(v2 + 128);
  return v1;
}

void sub_BB5B4(os_log_type_t a1)
{

  sub_386D8(a1, 0x800000uLL, v3 + 130, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 30, v2, v1);
}

uint64_t sub_BB5EC()
{
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[17];
}

id sub_BB60C()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39SetRadioStationHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39SetRadioStationHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39SetRadioStationHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v4 = sub_BC78C(qword_1F0E10);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_BB6A8()
{
  sub_D2DC();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SetRadioStationParameters(0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_BB764, 0, 0);
}

uint64_t sub_BB764()
{
  v24 = v0;
  v1 = v0[21];
  sub_10824(v0[22] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(qword_1EA5B0, &qword_1743A8);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v5 = 0xD000000000000025;
  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  v7 = sub_16A9A4();
  v0[15] = 0xD00000000000009ALL;
  v0[16] = 0x8000000000189A80;
  v0[17] = 47;
  v0[18] = 0xE100000000000000;
  sub_D030();
  v8 = sub_16AB34();
  v9 = sub_15AE4(v8);
  v11 = v10;

  if (v11)
  {
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    sub_16A744(v26);
    v27._countAndFlagsBits = 0xD000000000000025;
    v27._object = 0x8000000000182560;
    sub_16A744(v27);
    v5 = v9;
    v4 = v11;
  }

  v23._countAndFlagsBits = 58;
  v23._object = 0xE100000000000000;
  v0[19] = 24;
  v28._countAndFlagsBits = sub_16AE24();
  sub_16A744(v28);

  sub_16A744(v23);

  v12._countAndFlagsBits = sub_378D0(0x802uLL);
  if (v12._object)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    sub_16A744(v12);

    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_16A744(v29);
  }

  v13 = sub_16A574();
  if (os_log_type_enabled(v13, v7))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23._countAndFlagsBits = v15;
    *v14 = 136315138;
    v16 = sub_15BC8(v5, v4, &v23._countAndFlagsBits);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_0, v13, v7, "%s", v14, 0xCu);
    sub_D13C(v15);
  }

  else
  {
  }

  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[21];
  v0[25] = sub_1690A4();
  sub_5B35C();
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v0[26] = sub_16A094();
  v20 = swift_task_alloc();
  v0[27] = v20;
  *v20 = v0;
  v20[1] = sub_BBB18;
  v21 = v0[24];

  return sub_1572C8(v21);
}

uint64_t sub_BBB18()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v8 + 224) = v7;
  *(v8 + 232) = v0;

  if (v0)
  {
    v9 = sub_BBE90;
  }

  else
  {
    v9 = sub_BBC3C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_BBC3C()
{
  sub_D2DC();
  v1 = v0[22];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 7));
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_BBCF8;
  v3 = v0[28];
  v4 = v0[20];

  return sub_11A570();
}

uint64_t sub_BBCF8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 240);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 248) = v0;

  sub_D13C((v3 + 56));
  if (v0)
  {
    v7 = sub_BBF04;
  }

  else
  {
    v7 = sub_BBE04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_BBE04()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  sub_BC730(v1);

  sub_D37C();

  return v4();
}

uint64_t sub_BBE90()
{
  sub_D2DC();
  v1 = *(v0 + 192);

  sub_BC730(v1);
  v2 = *(v0 + 232);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);

  sub_D37C();

  return v5();
}

uint64_t sub_BBF04()
{
  sub_D2DC();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);

  sub_BC730(v2);
  v3 = *(v0 + 248);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);

  sub_D37C();

  return v6();
}

uint64_t sub_BBF90()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetRadioStationHandleIntentFlowStrategy()
{
  result = qword_1EA3B8;
  if (!qword_1EA3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_BC09C(uint64_t a1)
{
  result = sub_BC0C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_BC0C4()
{
  result = qword_1EA5A8;
  if (!qword_1EA5A8)
  {
    type metadata accessor for SetRadioStationHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA5A8);
  }

  return result;
}

uint64_t sub_BC11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_BC1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_BC2AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_BC36C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_BB6A8();
}

uint64_t sub_BC418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_BC4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_BC5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_BC670()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_455F0();
}

uint64_t sub_BC730(uint64_t a1)
{
  v2 = type metadata accessor for SetRadioStationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_BC78C(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayService();
  v15[3] = v2;
  v15[4] = &off_1DA3F0;
  v15[0] = a1;
  v3 = type metadata accessor for SetCarRadioStationIntentHandler();
  v4 = objc_allocWithZone(v3);
  v5 = sub_2F8D0(v15, v2);
  v6 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_1DA3F0;
  v14[0] = v10;
  sub_10824(v14, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SetCarRadioStationIntentHandler_service);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_D13C(v14);
  sub_D13C(v15);
  return v11;
}

id sub_BC8D8(char a1)
{
  if (a1)
  {
    v2 = sub_BCA9C();
  }

  else
  {
    v2 = 0;
  }

  sub_16ACF4(46);

  v6._countAndFlagsBits = sub_16AE24();
  sub_16A744(v6);

  v7._countAndFlagsBits = 543584032;
  v7._object = 0xE400000000000000;
  sub_16A744(v7);
  sub_BCA9C();
  v8._countAndFlagsBits = sub_16AE24();
  sub_16A744(v8);

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  sub_386D8(v4, 0x1000000uLL, 0xD0000000000000A3, 0x8000000000189B20, 0x62616E6528746573, 0xED0000293A64656CLL, 24, 0xD000000000000026, 0x8000000000189BD0);

  return [v1 setHeatingCoolingLevel:v2];
}

uint64_t sub_BCA9C()
{
  v1 = [v0 heatingCoolingLevelRange];
  v2 = [v1 maximumValue];

  return v2;
}

BOOL sub_BCAEC()
{
  v1 = [v0 heatingCoolingLevelRange];
  v2 = [v1 maximumValue];

  return v2 > 0;
}

uint64_t sub_BCBB0()
{
  if ([v0 heatingCoolingLevelDisabled])
  {
    return 0;
  }

  else
  {
    return [v0 heatingCoolingLevelInvalid] ^ 1;
  }
}

uint64_t sub_BCC54()
{
  sub_D2DC();
  v1[35] = v2;
  v1[36] = v0;
  v1[33] = v3;
  v1[34] = v4;
  v1[31] = v5;
  v1[32] = v6;
  v1[30] = v7;
  v8 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v9 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v10 = type metadata accessor for CarNameParameters(0);
  v1[39] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_BCD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 248);
  if (sub_11F404())
  {
    v14 = [*(v12 + 256) parametersByName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_16A5B4();

      sub_13F530(0x656D614E726163, 0xE700000000000000, v16, (v12 + 136));

      if (*(v12 + 160))
      {
        sub_95578();
        if (swift_dynamicCast())
        {
          v17 = *(v12 + 232);
        }

        else
        {
          v17 = 0;
        }

LABEL_12:
        *(v12 + 328) = v17;
        v35 = [*(v12 + 264) userActivity];
        if (v35 && (v36 = v35, v37 = [v35 userInfo], v36, v37))
        {
          v38 = sub_16A5B4();

          *(v12 + 200) = 0x664F7265626D756ELL;
          *(v12 + 208) = 0xEF7379654B726143;
          sub_16AC84();
          sub_13F658(v12 + 96, v38, (v12 + 168));

          sub_472B0(v12 + 96);
          if (*(v12 + 192))
          {
            if (swift_dynamicCast())
            {
              v39 = *(v12 + 224) > 1;
              if (!v17)
              {
LABEL_17:
                v40 = 0;
                v41 = 1;
                goto LABEL_30;
              }

LABEL_21:
              v42 = [v17 spokenPhrase];
              v43 = sub_16A664();
              v45 = v44;

              sub_15B48(v43, v45);
              v47 = v46;

              if (v47)
              {
                v48 = sub_16A5D4();
                v50 = v49;

                if (v48 == 115 && v50 == 0xE100000000000000)
                {

                  v40 = 1;
                }

                else
                {
                  v40 = sub_16AE54();
                }
              }

              else
              {
                v40 = 0;
              }

              v52 = *(v12 + 304);
              v53 = v17;
              sub_99C94();

              v41 = 0;
LABEL_30:
              v55 = *(v12 + 312);
              v54 = *(v12 + 320);
              v56 = *(v12 + 304);
              v57 = *(v12 + 264);
              v58 = sub_16A0C4();
              sub_5370(v56, v41, 1, v58);
              sub_BDF9C(v55[7]);
              sub_BDF9C(v55[8]);
              sub_BDF9C(v55[9]);
              sub_16304(v56, v54);
              *(v54 + v55[5]) = v39;
              *(v54 + v55[6]) = v40 & 1;
              if ([v57 _intentResponseCode])
              {
                if (qword_1E58E8 != -1)
                {
                  sub_9ED4();
                }

                v59 = sub_BE030();
                sub_9DA0(v59, qword_1E65C0);
                sub_16A9A4();
                sub_BDFE8();
                sub_386D8(v60, 2uLL, v61, v62, 0xD00000000000003FLL, v63, 43, 0xD00000000000005CLL, v76);
                type metadata accessor for CarCommandsCATPatternsExecutor(0);
                sub_16A154();
                *(v12 + 384) = sub_16A094();
                v64 = swift_task_alloc();
                *(v12 + 392) = v64;
                *v64 = v12;
                sub_BDFFC(v64);
                sub_10B0C();

                return sub_1570D4(v65);
              }

              else
              {
                if (qword_1E58E8 != -1)
                {
                  sub_9ED4();
                }

                v67 = sub_BE030();
                sub_9DA0(v67, qword_1E65C0);
                sub_16A9A4();
                sub_BDFE8();
                sub_386D8(v68, 2uLL, v69, v70, 0xD00000000000003FLL, v71, 38, 0xD00000000000003FLL, v76);
                type metadata accessor for CarCommandsCATPatternsExecutor(0);
                sub_16A154();
                *(v12 + 336) = sub_16A094();
                v72 = swift_task_alloc();
                *(v12 + 344) = v72;
                *v72 = v12;
                sub_BDFFC(v72);
                sub_10B0C();

                return sub_1569A0(v73);
              }
            }

LABEL_20:
            v39 = 0;
            if (!v17)
            {
              goto LABEL_17;
            }

            goto LABEL_21;
          }
        }

        else
        {
          *(v12 + 184) = 0u;
          *(v12 + 168) = 0u;
        }

        sub_BDF34(v12 + 168);
        goto LABEL_20;
      }
    }

    else
    {
      *(v12 + 152) = 0u;
      *(v12 + 136) = 0u;
    }

    sub_BDF34(v12 + 136);
    v17 = 0;
    goto LABEL_12;
  }

  v18 = *(v12 + 272);
  v19 = *(*(v12 + 280) + 8);
  sub_BE010();
  sub_BE010();
  type metadata accessor for DefaultRouteConfirmIntentResponseFlowStrategyAsync();
  v20 = sub_BDE3C();
  *(v12 + 432) = v20;
  *(v12 + 216) = v20;
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  *(v12 + 440) = v22;
  swift_getWitnessTable();
  *v22 = v12;
  v22[1] = sub_BDA44;
  v23 = *(v12 + 256);
  v24 = *(v12 + 264);
  v25 = *(v12 + 240);
  v26 = *(v12 + 248);
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_BD39C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *(v4 + 336);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v10 + 352) = v9;
  *(v10 + 360) = v0;

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_BD4B8()
{
  sub_D2DC();
  v1 = sub_BDFD4();
  v2(v1);
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_BD564;
  v4 = v0[44];
  v5 = v0[30];

  return sub_11A570();
}

uint64_t sub_BD564()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 376) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_BD668()
{
  sub_D2DC();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  sub_36F84(v2);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);

  sub_D37C();

  return v6();
}

uint64_t sub_BD6F0()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *(v4 + 384);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v10 + 400) = v9;
  *(v10 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_BD80C()
{
  sub_D2DC();
  v1 = sub_BDFD4();
  v2(v1);
  v3 = swift_task_alloc();
  v0[52] = v3;
  *v3 = v0;
  v3[1] = sub_BD8B8;
  v4 = v0[50];
  v5 = v0[30];

  return sub_11A570();
}

uint64_t sub_BD8B8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_BD9BC()
{
  sub_D2DC();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  sub_36F84(v2);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);

  sub_D37C();

  return v6();
}

uint64_t sub_BDA44()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *(v5 + 432);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  v3[56] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v3[40];
    v16 = v3 + 37;
    v14 = v3[37];
    v15 = v16[1];

    sub_D37C();

    return v17();
  }
}

uint64_t sub_BDBA4()
{
  sub_1696C();
  v1 = *(v0 + 320);

  sub_36F84(v1);
  v2 = *(v0 + 360);
  sub_BDFBC();

  sub_D37C();

  return v3();
}

uint64_t sub_BDC24()
{
  sub_1696C();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  sub_36F84(v2);
  v3 = *(v0 + 376);
  sub_BDFBC();

  sub_D37C();

  return v4();
}

uint64_t sub_BDCAC()
{
  sub_1696C();
  v1 = *(v0 + 320);

  sub_36F84(v1);
  v2 = *(v0 + 408);
  sub_BDFBC();

  sub_D37C();

  return v3();
}

uint64_t sub_BDD2C()
{
  sub_1696C();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  sub_36F84(v2);
  v3 = *(v0 + 424);
  sub_BDFBC();

  sub_D37C();

  return v4();
}

uint64_t sub_BDDB4()
{
  sub_1696C();
  v1 = *(v0 + 448);
  sub_BDFBC();

  sub_D37C();

  return v2();
}

uint64_t sub_BDE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v20 = swift_task_alloc();
  *(v12 + 16) = v20;
  v21 = *(a5 + 80);
  v22 = *(a5 + 88);
  v23 = type metadata accessor for DefaultRouteConfirmIntentResponseFlowStrategyAsync();
  *v20 = v12;
  v20[1] = sub_1039C;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v23, a6, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_BDF34(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6A10, &unk_1744D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BDF9C@<X0>(uint64_t a1@<X8>)
{

  return sub_5370(v1 + a1, 1, 1, v2);
}

uint64_t sub_BDFBC()
{
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
}

uint64_t sub_BDFD4()
{
  v1 = v0[36];
  result = v0[34];
  v3 = *(v0[35] + 16);
  return result;
}

uint64_t sub_BE010()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_BE030()
{
  v2 = *(v0 + 296);

  return sub_16A584();
}

uint64_t sub_BE050@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 itemToConfirm];
  sub_16AB64();
  swift_unknownObjectRelease();
  sub_95578();
  if (swift_dynamicCast())
  {
    sub_99C94();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16A0C4();
  return sub_5370(a1, v4, 1, v5);
}

uint64_t getEnumTagSinglePayload for CarAccessoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarAccessoryType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0xBE280);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_BE2B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D2F78;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BE304(char a1)
{
  result = 0x616964656DLL;
  switch(a1)
  {
    case 1:
      v3 = 0x74616D696C63;
      goto LABEL_4;
    case 2:
      result = 0x6574736F72666564;
      break;
    case 3:
      result = 1701996916;
      break;
    case 4:
      v3 = 0x6C6369686576;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 5:
      result = 2036625250;
      break;
    case 6:
      result = 0x7465536F69647561;
      break;
    case 7:
      result = 0x6979616C50776F6ELL;
      break;
    case 8:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_BE43C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BE2B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_BE46C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BE304(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_BE49C()
{
  result = qword_1EA638;
  if (!qword_1EA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA638);
  }

  return result;
}

uint64_t sub_BE4F0()
{
  v1 = sub_5758(&qword_1EA640, &unk_174608);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_16D440;
  *(v5 + 32) = v0;

  sub_1698E4();
  v6 = sub_1698F4();
  sub_5370(v4, 0, 1, v6);
  v7 = sub_1698A4();

  sub_BE6A0(v4);
  return v7;
}

uint64_t sub_BE5EC()
{
  sub_BE4F0();
  sub_169624();
}

uint64_t sub_BE6A0(uint64_t a1)
{
  v2 = sub_5758(&qword_1EA640, &unk_174608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BE730(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3070;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BE77C(char a1)
{
  result = 28006;
  switch(a1)
  {
    case 1:
      result = 28001;
      break;
    case 2:
      result = 28024;
      break;
    case 3:
      result = 6447460;
      break;
    case 4:
      result = 0x6261646D66;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_BE834@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BE730(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_BE864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BE77C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarRadioStationBand(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xBE95CLL);
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

unint64_t sub_BE998()
{
  result = qword_1EA648;
  if (!qword_1EA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA648);
  }

  return result;
}

id sub_BE9EC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134();
    }

    v4 = sub_BF964(v3);
    v5 = *(v0 + 56);
    *(v0 + 56) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_BEA70()
{
  v0 = sub_1693E4();
  sub_37404();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  sub_169384();
  sub_8F624();
  sub_86E4(v8, &_swiftEmptySetSingleton, v13);

  (*(v2 + 8))(v8, v0);
  v9 = v13[3];
  sub_57A80(v13);
  if (v9)
  {
    return sub_168C64();
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x10000uLL, 0xD00000000000008BLL, 0x8000000000189CD0, 0xD000000000000016, 0x800000000017FD50, 27, 0xD000000000000020, 0x8000000000180180);
  return sub_168C74();
}

uint64_t sub_BEC38()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_BECF4, 0, 0);
}

uint64_t sub_BECF4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16A484();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_95374(v1);
  v7 = v0[5];
  if (v6)
  {
    v8 = v6;
    v9 = v0[5];

    v10 = v0[1];

    return v10(v8);
  }

  else
  {
    v13 = v0[2];
    v12 = v0[3];
    type metadata accessor for CarCommandsError();
    sub_BFD54(&qword_1E92F0, 255, type metadata accessor for CarCommandsError);
    swift_allocError();
    v5(v14, v13, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_BEEA0()
{
  v0 = sub_16A164();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v2 = sub_5758(&qword_1EA760, &qword_17B9F0);
  sub_37404();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21[-1] - v11;
  if (qword_1E5908 != -1)
  {
    sub_48134();
  }

  v13 = qword_1F0C70;
  v21[3] = type metadata accessor for WalletService();
  v21[4] = &off_1D7C28;
  v21[0] = v13;
  type metadata accessor for CarCommandsCATs();

  sub_16A154();
  sub_16A094();
  sub_162510();

  sub_D13C(v21);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  v14 = swift_allocObject();
  v15 = sub_168E34();
  sub_483C8(v15);

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v16 = sub_BFAA0(v21, v14);

  v21[0] = v16;
  type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy();
  sub_BFD54(&qword_1EA768, 255, type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy);
  sub_1687E4();

  sub_168884();
  (*(v4 + 16))(v10, v12, v2);
  v17 = sub_5758(&qword_1EA770, &unk_1748B0);
  sub_483C8(v17);
  v18 = sub_168914();
  (*(v4 + 8))(v12, v2);
  return v18;
}

uint64_t sub_BF1A0()
{
  sub_D13C((v0 + 16));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_BF204(uint64_t a1, uint64_t a2)
{
  result = sub_BFD54(&qword_1EA748, a2, type metadata accessor for GetTrunkStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

void *sub_BF25C()
{
  v1 = sub_168E34();
  sub_483C8(v1);
  v2 = sub_168E24();
  v0[5] = v1;
  v0[6] = &protocol witness table for ResponseFactory;
  v0[2] = v2;
  v0[7] = 0;
  return v0;
}

uint64_t sub_BF2CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_BEC38();
}

uint64_t sub_BF360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  TrunkStatusRCHFlowStrategy = type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, TrunkStatusRCHFlowStrategy, a5);
}

uint64_t sub_BF42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  TrunkStatusRCHFlowStrategy = type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, TrunkStatusRCHFlowStrategy, a5);
}

uint64_t sub_BF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  TrunkStatusRCHFlowStrategy = type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, TrunkStatusRCHFlowStrategy, a5);
}

uint64_t sub_BF5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  TrunkStatusRCHFlowStrategy = type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, TrunkStatusRCHFlowStrategy, a6);
}

uint64_t sub_BF6A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_3F724();
}

uint64_t sub_BF778()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_457EC();
}

uint64_t sub_BF8C4(uint64_t a1, uint64_t a2)
{
  result = sub_BFD54(&qword_1EA750, a2, type metadata accessor for GetTrunkStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

id sub_BF964(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v17[3] = v2;
  v17[4] = &off_1D7C28;
  v17[0] = a1;
  v3 = type metadata accessor for SEGetTrunkStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  sub_2F8D0(v17, v2);
  sub_37404();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v16[3] = v2;
  v16[4] = &off_1D7C28;
  v16[0] = v12;
  sub_10824(v16, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEGetTrunkStatusIntentHandler_carKeyService);
  v15.receiver = v4;
  v15.super_class = v3;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_D13C(v16);
  sub_D13C(v17);
  return v13;
}

uint64_t sub_BFAA0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FeatureFlagHelper();
  v34[3] = v6;
  v34[4] = &off_1D9AF0;
  v34[0] = a2;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy();
  v8 = *(TrunkStatusHandleIntentFlowStrategy + 48);
  v9 = *(TrunkStatusHandleIntentFlowStrategy + 52);
  v10 = swift_allocObject();
  v11 = sub_2F8D0(v34, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v6;
  v33[4] = &off_1D9AF0;
  v33[0] = v16;
  v17 = (v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  *(v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v32);
  sub_10824(v33, v30);
  v20 = v31;
  v21 = sub_2F8D0(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  sub_1668CC();
  v28 = v27;
  sub_D13C(a1);
  sub_D13C(v33);
  sub_D13C(v30);
  sub_D13C(v34);
  return v28;
}

uint64_t sub_BFD54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SEGetClimateStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_BFDB0()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = v0[2];
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x22000uLL, 0xD0000000000000B9, 0x8000000000189D60, 0xD000000000000014, 0x8000000000185FE0, 21, 0xD000000000000013, 0x8000000000189E20);
  v0[4] = [v1 carName];
  sub_3024C(dword_16DAD0);
  v8 = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v6 = sub_615AC(v5);

  return v8(v6, 10);
}

uint64_t sub_BFF34(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEGetClimateStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SEGetClimateStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_C000C()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  sub_3024C(&unk_16DAC8);
  v6 = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_C00D4;
  v4 = *(v0 + 48);

  return v6(v1, 1, 1);
}

uint64_t sub_C00D4()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 32) = v1;
  *(v2 + 24) = v3;
  *(v2 + 16) = v0;
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 72) = v8;

  return _swift_task_switch(sub_C01EC, 0, 0);
}

uint64_t sub_C01EC()
{
  sub_D2DC();
  v1 = *(v0 + 72);
  sub_16A3A4();
  if (v1 <= 5)
  {
    v2 = qword_174968[v1];
  }

  v3 = *(v0 + 32);
  v4 = sub_16A394();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_C0294(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetClimateStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SEGetClimateStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_C036C()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = v0[2];
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x22000uLL, 0xD0000000000000B9, 0x8000000000189D60, 0x6928656C646E6168, 0xEF293A746E65746ELL, 42, 0xD00000000000002DLL, 0x8000000000189E40);
  v0[4] = [v1 carName];
  sub_3024C(&unk_16F8E8);
  v8 = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v6 = sub_615AC(v5);

  return v8(v6, 1);
}

uint64_t sub_C04D8()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_D254();
  *v5 = v4;
  *(v7 + 56) = v6;
  *(v7 + 48) = v8;

  return _swift_task_switch(sub_C05E8, 0, 0);
}

uint64_t sub_C05E8()
{
  sub_1696C();
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  switch(v1 >> 8)
  {
    case 3u:
      sub_16A3A4();
      v3 = v2;
      v4 = sub_16A394();
      v5 = [objc_allocWithZone(NSNumber) initWithBool:v1 & 1];
      [v4 setEnabled:v5];

      break;
    default:
      sub_16A3A4();
      v4 = sub_16A394();
      break;
  }

  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_C0764(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetClimateStatusIntentHandler.handle(intent:)(v6);
}

id SEGetClimateStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEGetClimateStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_C08D4()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_C096C()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_C0A04()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t type metadata accessor for CarCommandsSetSteeringWheelTemperatureCATsSimple()
{
  result = qword_1EA7A8;
  if (!qword_1EA7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C0B30(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_C0B54, 0, 0);
}

uint64_t sub_C0B54()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x64656C62616E65;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_49014;
  v5 = *(v0 + 16);

  return v7(0xD00000000000003CLL, 0x800000000018A020, v2);
}

uint64_t sub_C0C7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_C0CD0(a1, a2);
}

uint64_t sub_C0CD0(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_C0E2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_C0F34()
{
  sub_D2DC();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_C0FC0, 0, 0);
}

uint64_t sub_C0FC0()
{
  sub_D2DC();
  v1 = v0[9];
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v0[10] = sub_16A094();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_C1084;

  return sub_156570(31, _swiftEmptyArrayStorage);
}

uint64_t sub_C1084()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  v2[12] = v6;
  v2[13] = v0;

  if (v0)
  {
    v7 = sub_4FFD4;
  }

  else
  {
    v8 = v2[10];

    v7 = sub_C1198;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_C1198()
{
  sub_D2DC();
  sub_10824(v0[8] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_responseGenerator, (v0 + 2));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_4FEC4;
  v2 = v0[12];
  v3 = v0[7];

  return sub_11A570();
}

uint64_t sub_C1248(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_featureFlagHelper);
  v7 = type metadata accessor for FeatureFlagHelper();
  v8 = swift_allocObject();
  v6[3] = v7;
  v6[4] = &off_1D9AF0;
  *v6 = v8;
  v9 = (v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_responseGenerator);
  v10 = sub_168E34();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_168E24();
  v9[3] = v10;
  v9[4] = &protocol witness table for ResponseFactory;
  *v9 = v13;

  return sub_74260(a1, a2);
}

uint64_t sub_C1308()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_featureFlagHelper));
  v1 = (v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_responseGenerator);

  return sub_D13C(v1);
}

uint64_t sub_C1348()
{
  v0 = sub_735DC();
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_featureFlagHelper;

  sub_D13C((v2 + v1));
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CommonUnsupportedActionFlow_responseGenerator));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CommonUnsupportedActionFlow()
{
  result = qword_1EA820;
  if (!qword_1EA820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C1470()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C8;

  return sub_C0F34();
}

id sub_C15EC()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v4 = sub_166CB4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_C1688()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = type metadata accessor for SignalActivationParameters(0);
  v1[41] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_C175C()
{
  v1 = v0[37];
  sub_10824(v0[38] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1EABB0, &unk_174CD0);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[31] = 0xD00000000000009CLL;
  v0[32] = 0x800000000018A100;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v101._countAndFlagsBits = 0xD000000000000025;
    v101._object = 0x8000000000182560;
    sub_16A744(v101);
    v10 = v96;
    v4 = v99;
  }

  else
  {
    v10 = 0xD000000000000025;
  }

  v93 = v10;
  v0[35] = 25;
  v102._countAndFlagsBits = sub_16AE24();
  sub_16A744(v102);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v93, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x40002uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v94, v95, v97, v100);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v98, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v98);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v34 = v0[38];
  sub_3CF7C();
  v35 = *sub_D084((v34 + 136), *(v34 + 160));
  v36 = sub_11B5C0();
  v37 = v0[37];
  if (v36)
  {
    sub_169094();
    sub_16A1B4();
    v39 = v38;

    v0[43] = v39;
    if (!v39)
    {
      type metadata accessor for CarCommandsError();
      sub_C2E6C();
      sub_C2E24(v51, v52);
      sub_5A144();
      *v53 = 0xD00000000000002DLL;
      v53[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v54 = v0[42];
      v56 = v0[39];
      v55 = v0[40];

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v40 = v0[37];
    v41 = *(*(v0[38] + 224) + 16);
    v42 = sub_1690A4();
    v0[44] = [v42 carName];

    v43 = sub_169084();
    v44 = [v43 carSignal];

    if (v44)
    {
      [v44 unsignedIntegerValue];
    }

    v84 = v0[37];
    v85 = sub_169084();
    v86 = [v85 signalActivated];

    sub_76D10();
    v87.super.super.isa = sub_16AAB4(1).super.super.isa;
    isa = v87.super.super.isa;
    if (v86)
    {
      sub_16AAD4();
    }

    else
    {
    }

    v89 = v0[38];
    type metadata accessor for SignalStatusSnippetFactory();
    sub_3CF7C();
    sub_10824(v89 + 184, (v0 + 17));
    v90 = swift_task_alloc();
    v0[45] = v90;
    *v90 = v0;
    v90[1] = sub_584A8;
    v91 = v0[36];
    sub_D2C0();

    return sub_126E58();
  }

  else
  {
    v45 = sub_1690A4();
    v0[47] = v45;
    v46 = sub_169084();
    v0[48] = v46;
    v47 = [v45 carName];
    if (v47)
    {
      v48 = v47;
      v49 = v0[40];
      sub_99C94();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v59 = v0[40];
    v60 = sub_16A0C4();
    sub_5370(v59, v50, 1, v60);
    v61 = [v46 signalActivated];
    sub_76D10();
    v62.super.super.isa = sub_16AAB4(1).super.super.isa;
    if (v61)
    {
      v63 = sub_16AAD4();
    }

    else
    {
      v63 = 0;
    }

    v64 = [v46 carSignal];
    if (v64)
    {
      v65 = v64;
      v66 = [v64 unsignedIntegerValue];

      v67 = v66 == &dword_0 + 2;
    }

    else
    {
      v67 = 0;
    }

    v68 = v0[37];
    sub_169094();
    sub_16A1B4();
    v70 = v69;

    if (v70)
    {
      v71 = v0[39];
      sub_16A6E4();

      v72 = 0;
    }

    else
    {
      v72 = 1;
    }

    v74 = v0[41];
    v73 = v0[42];
    v76 = v0[39];
    v75 = v0[40];
    v77 = v0[38];
    sub_5370(v76, v72, 1, v60);
    sub_16304(v75, v73);
    *(v73 + v74[5]) = v63 & 1;
    *(v73 + v74[6]) = v67;
    sub_16304(v76, v73 + v74[7]);
    v78 = *sub_D084((v77 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns), *(v77 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns + 24));
    v79 = swift_task_alloc();
    v0[49] = v79;
    *v79 = v0;
    v79[1] = sub_C1ED8;
    v80 = v0[42];
    sub_D2C0();

    return sub_156A48(v81);
  }
}

uint64_t sub_C1ED8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 392);
  v10 = *v1;
  *(v3 + 400) = v5;
  *(v3 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_C1FE0()
{
  sub_D2DC();
  v1 = v0[38];
  sub_3CF7C();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_C2094;
  v3 = v0[50];

  return sub_11A570();
}

uint64_t sub_C2094()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 416);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_C219C(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_C21CC()
{
  v1 = v0[24];
  sub_10824(v0[25] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1EABB0, &unk_174CD0);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000185C90;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[18] = 0xD00000000000009CLL;
  v0[19] = 0x800000000018A100;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v58._countAndFlagsBits = 0xD00000000000002DLL;
    v58._object = 0x8000000000185C90;
    sub_16A744(v58);
    v10 = v53;
    v4 = v56;
  }

  else
  {
    v10 = 0xD00000000000002DLL;
  }

  v50 = v10;
  v0[22] = 62;
  v59._countAndFlagsBits = sub_16AE24();
  sub_16A744(v59);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v50, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x40002uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v51, v52, v54, v57);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v55, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v55);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v34 = v0[25];
  if (*(v34[28] + 16) != 1 || (sub_3CF7C(), v35 = *sub_D084(v34 + 17, v34[20]), (sub_11B5C0() & 1) == 0))
  {
    v44 = v0[23];
    sub_168BB4();
    sub_168BA4();
    sub_D37C();
    goto LABEL_18;
  }

  v36 = v0[24];
  sub_169094();
  sub_16A1B4();
  v38 = v37;

  if (!v38)
  {
    type metadata accessor for CarCommandsError();
    sub_C2E6C();
    sub_C2E24(v47, v48);
    sub_5A144();
    *v49 = 0xD00000000000002DLL;
    v49[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
LABEL_18:
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v39 = v0[25];

  type metadata accessor for SignalStatusSnippetFactory();
  sub_3CF7C();
  sub_10824(v39 + 184, (v0 + 7));
  v40 = swift_task_alloc();
  v0[26] = v40;
  *v40 = v0;
  v40[1] = sub_7BC20;
  v41 = v0[23];
  sub_D2C0();

  return sub_127848();
}

void sub_C2614()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

uint64_t *sub_C2654()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_C269C()
{
  v0 = sub_C2654();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DeactivateSignalHandleIntentFlowStrategy()
{
  result = qword_1EA990;
  if (!qword_1EA990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C2790(uint64_t a1)
{
  result = sub_C2E24(&qword_1EABA8, type metadata accessor for DeactivateSignalHandleIntentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C27E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeactivateSignalHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_C28B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeactivateSignalHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_C2978()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_C2A38()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_C1688();
}

uint64_t sub_C2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeactivateSignalHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_C2BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeactivateSignalHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_C2C74(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1039C;

  return sub_C219C(a1, a2);
}

uint64_t sub_C2D20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_459E4();
}

uint64_t sub_C2E24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CarCommandsSetTrunkStatusCATsSimple()
{
  result = qword_1EABB8;
  if (!qword_1EABB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_C2F10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3120;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  return v4 != 0;
}

BOOL sub_C2F68@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C2F10(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_C2FC4()
{
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = sub_C3A4C();
  *v2 = v0;
  v2[1] = sub_7971C;

  return v5(0xD000000000000023, 0x800000000018A270, _swiftEmptyArrayStorage, &type metadata for CarCommandsSetTrunkStatusCATsSimple.OpenTrunkDialogIds, v3);
}

uint64_t sub_C3098()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_C312C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  v0[5] = v3;
  sub_AE798(v3, xmmword_16D9A0);
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_4EAF4(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_4EB50(v2);
    (*(v6 + 32))();
  }

  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = v7;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  sub_AE7B8(v8);

  return v10(0xD000000000000034);
}

uint64_t sub_C32A8()
{
  v3 = *(*v1 + 48);
  v2 = *v1;
  sub_D254();
  *v4 = v2;
  v2[7] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {
    v9 = v2[4];
    v8 = v2[5];

    v10 = sub_9F020();

    return v11(v10);
  }
}

uint64_t sub_C33EC()
{
  sub_D2DC();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_C3484()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  sub_AE798(v3, xmmword_16D3A0);
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_4EAF4(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_4EB50(v2);
    (*(v6 + 32))();
  }

  v7 = *(v0 + 64);
  *(v3 + 80) = 0x75725465736F6C63;
  *(v3 + 88) = 0xEA00000000006B6ELL;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v7;
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = v8;
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  sub_AE7B8(v9);

  return v11(0xD000000000000036);
}

uint64_t sub_C3630()
{
  v3 = *(*v1 + 48);
  v2 = *v1;
  sub_D254();
  *v4 = v2;
  v2[7] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {
    v9 = v2[4];
    v8 = v2[5];

    v10 = sub_9F020();

    return v11(v10);
  }
}

uint64_t sub_C3774(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_C37C8(a1, a2);
}

uint64_t sub_C37C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_4EA90(a1, &v18 - v15, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_4EAF4(a1, &qword_1E5B48, &unk_16DDB0);
  return v16;
}

uint64_t sub_C3944(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

unint64_t sub_C3A4C()
{
  result = qword_1EAC08;
  if (!qword_1EAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsSetTrunkStatusCATsSimple.OpenTrunkDialogIds(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CarCommandsSetTrunkStatusCATsSimple.OpenTrunkDialogIds(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0xC3B90);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_C3BCC()
{
  result = qword_1EAC10;
  if (!qword_1EAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC10);
  }

  return result;
}

uint64_t sub_C3C30(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 96) = a1;
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_C3CC4, 0, 0);
}

uint64_t sub_C3CC4()
{
  sub_1696C();
  sub_C5D00();
  sub_132B1C();
  sub_C5CC8();
  sub_9F300();
  sub_482AC();
  v0 = sub_9F3C8();
  sub_C5DB4(v0);
  v1 = swift_task_alloc();
  v2 = sub_C5DA8(v1);
  *v2 = v3;
  sub_3099C(v2);

  return sub_DFBEC();
}

uint64_t sub_C3D68()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_C3E9C()
{
  sub_D2DC();
  v2 = v0[8];
  v1 = v0[9];

  sub_D37C();
  v4 = v0[11];

  return v3();
}

uint64_t sub_C3F00()
{
  sub_D2DC();
  v2 = sub_C5D74(v1);
  sub_D414(v2);
  v4 = *(v3 + 64);
  *(v0 + 64) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_C3F74()
{
  sub_1696C();
  sub_C5D00();
  sub_132B1C();
  sub_C5CC8();
  sub_9F300();
  sub_482AC();
  v0 = sub_9F3C8();
  sub_C5DB4(v0);
  v1 = swift_task_alloc();
  v2 = sub_C5DA8(v1);
  *v2 = v3;
  sub_3099C(v2);

  return sub_DFBEC();
}

uint64_t sub_C4018()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_C414C(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  sub_10B4C();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_C44EC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 552) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_C45E4()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_D084(v0 + 26, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[70] = v5;
  *v5 = v0;
  v5[1] = sub_C4710;

  return (v7)(v0 + 41, v1, v2);
}

uint64_t sub_C4710()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 568) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_C4928()
{
  if (!*(v0 + 352))
  {
    sub_D188(v0 + 328, &qword_1E83D0, &qword_174EE0);
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;
    goto LABEL_9;
  }

  v1 = *(v0 + 360);
  sub_D084((v0 + 328), *(v0 + 352));
  v2 = *(v1 + 40);
  v3 = sub_C5D4C();
  v4(v3);
  sub_D13C((v0 + 328));
  if (!*(v0 + 312))
  {
LABEL_9:
    sub_D188(v0 + 288, &qword_1EAC28, &qword_1774E0);
    goto LABEL_11;
  }

  sub_D124((v0 + 288), v0 + 248);
  v5 = *(v0 + 280);
  sub_D084((v0 + 248), *(v0 + 272));
  v6 = *(v5 + 16);
  v7 = sub_C5D4C();
  if (v8(v7))
  {
    v9 = sub_D084((*(v0 + 536) + 48), *(*(v0 + 536) + 72));
    sub_5758(&qword_1E83E0, &unk_170410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D9A0;
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    v13 = sub_D084((v0 + 248), v11);
    *(inited + 56) = v11;
    *(inited + 64) = *(v12 + 8);
    v14 = sub_10888((inited + 32));
    v15.n128_f64[0] = (*(*(v11 - 8) + 16))(v14, v13, v11);
    v16 = sub_948E4(inited, *v9, v15);
    swift_setDeallocating();
    sub_EFFF4();
    v17 = v16[2];

    if (v17)
    {
      v18 = *(v0 + 272);
      v19 = *(v0 + 280);
      v20 = *(v0 + 664);
      sub_D084((v0 + 248), v18);
      (*(v19 + 24))(v20 & 1, v18, v19);
      v21 = swift_task_alloc();
      *(v0 + 592) = v21;
      *v21 = v0;
      v21[1] = sub_C4DFC;

      return sub_C5900();
    }

    else
    {
      sub_89054(&unk_179C20);
      v33 = swift_task_alloc();
      *(v0 + 576) = v33;
      *v33 = v0;
      v33[1] = sub_C4D00;
      v34 = *(v0 + 536);

      return v36();
    }
  }

  sub_D13C((v0 + 248));
LABEL_11:
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v23 = *(v0 + 536);
  v24 = sub_16A584();
  sub_9DA0(v24, qword_1E65C0);
  sub_16A9A4();
  sub_C5D2C();
  sub_386D8(v26, 0x80000000uLL, v27, v28, 0xD000000000000012, v29, 31, v25 + 20, v35);
  sub_89054(&unk_179C28);
  v30 = *v23;
  v31 = swift_task_alloc();
  *(v0 + 608) = v31;
  *v31 = v0;
  v32 = sub_C5C70(v31);

  return (v36)(v32);
}

uint64_t sub_C4D00()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[46] = v1;
  v2[47] = v4;
  v2[48] = v0;
  sub_71940();
  v6 = *(v5 + 576);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_C4DFC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[49] = v1;
  v2[50] = v4;
  v2[51] = v0;
  sub_71940();
  v6 = *(v5 + 592);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_C4EF8()
{
  sub_D2DC();
  sub_9F200();
  v1 = *(v0 + 400);
  v2 = sub_9F080();

  return v3(v2);
}

uint64_t sub_C4F50()
{
  sub_D2DC();
  sub_9F200();
  v1 = *(v0 + 376);
  v2 = sub_9F080();

  return v3(v2);
}

uint64_t sub_C4FA8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[52] = v1;
  v2[53] = v4;
  v2[54] = v0;
  sub_71940();
  v6 = *(v5 + 608);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 616) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_C50A4()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  v1 = *(v0 + 424);
  v2 = sub_9F080();

  return v3(v2);
}

uint64_t sub_C5100()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[55] = v1;
  v2[56] = v4;
  v2[57] = v0;
  sub_71940();
  v6 = *(v5 + 624);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 632) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_C51FC()
{
  sub_D2DC();
  v1 = *(v0 + 448);
  v2 = sub_9F080();

  return v3(v2);
}

uint64_t sub_C5250()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 632);
  sub_D37C();

  return v2();
}

uint64_t sub_C52AC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[58] = v1;
  v2[59] = v4;
  v2[60] = v0;
  sub_71940();
  v6 = *(v5 + 648);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 656) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_C53A8()
{
  sub_D2DC();
  v1 = *(v0 + 640);

  v2 = *(v0 + 472);
  v3 = sub_9F080();

  return v4(v3);
}

uint64_t sub_C589C()
{
  sub_D2DC();
  v1 = v0[80];

  sub_D13C(v0 + 11);
  v2 = v0[82];
  sub_D37C();

  return v3();
}

uint64_t sub_C5900()
{
  sub_D2DC();
  *(v0 + 48) = v1;
  v2 = sub_16A164();
  sub_D414(v2);
  v4 = *(v3 + 64);
  *(v0 + 16) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_C597C()
{
  sub_D2DC();
  v1 = *(v0 + 16);
  type metadata accessor for CarCommandsSetMaxACCATsSimple();
  sub_16A154();
  *(v0 + 24) = sub_16A0F4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_C5A3C;
  v3 = *(v0 + 48);

  return sub_138A08(v3);
}

uint64_t sub_C5A3C()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[5] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[2];
    v12 = v3[3];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_C5B70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3E08C;

  return sub_C414C(a1);
}

uint64_t sub_C5C08(uint64_t a1)
{
  *(a1 + 8) = sub_C52AC;
  v3 = *(v2 + 536);
  return v1;
}

void sub_C5C38(os_log_type_t a1)
{

  sub_386D8(a1, 0x80000000uLL, v3 + 100, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 43, v2, v1);
}

uint64_t sub_C5C70(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 536);
  return v2;
}

void sub_C5C84()
{
  *(v1 + 640) = v0;

  sub_16ACF4(27);
}

void sub_C5CA8(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 7;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_C5CC8()
{
  v2 = *sub_D084((v1 + 16), *(v1 + 40));

  return sub_D2B90(1, v0);
}

void sub_C5D00()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 96);
}

uint64_t sub_C5D10()
{
  v2 = *(v0 + 536);

  return sub_16A584();
}

uint64_t sub_C5D74(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 96) = a1;

  return sub_16A164();
}

uint64_t sub_C5D90()
{

  return sub_16AD84();
}

uint64_t sub_C5DC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedStream];
  v3 = [objc_opt_self() sharedManager];
  sub_1689F4();
  v4 = type metadata accessor for CarCommandsLoggingProducer();
  swift_allocObject();
  result = sub_D230C(v2, v3, &v6);
  a1[3] = v4;
  a1[4] = &off_1D7DF0;
  *a1 = result;
  return result;
}

uint64_t sub_C5EC8()
{
  sub_5758(&qword_1EAC98, &qword_174F50);
  sub_37404();
  v1 = *(v0 + 64);
  sub_CA380();
  __chkstk_darwin(v2);
  sub_CA0E8();
  type metadata accessor for GetSignalActivationStatusRCHFlowStrategy();
  sub_CA2E0();
  swift_allocObject();
  v3 = sub_EC4FC();
  sub_CA540(v3);
  sub_EC180();
  sub_C9F48(&qword_1EACA0, type metadata accessor for GetSignalActivationStatusRCHFlowStrategy);
  sub_CA128();
  sub_CA558();
  v4 = sub_CA114();
  v5(v4);
  v6 = sub_3CFF0();
  sub_5758(v6, v7);
  sub_CA470(&qword_1EACB0);
  sub_CA38C();
  sub_CA510();

  return sub_CA448();
}

void sub_C6018()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040();
  }

  v2 = qword_1F0E10;
  v38 = type metadata accessor for CarPlayService();
  v39 = &off_1DA3F0;
  v37 = v2;
  v36[0] = 0;
  v3 = v2;
  sub_C5DC0(v35);
  sub_1690C4();
  v4 = sub_168E34();
  sub_CA1B0(v4);
  v5 = sub_168E24();
  v32 = v0;
  v33 = &protocol witness table for ResponseFactory;
  *&v31 = v5;
  sub_2F8D0(v35, v35[3]);
  sub_CA094();
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v10 = sub_CA01C(v9, v24);
  v11(v10);
  v12 = *v0;
  v29 = &type metadata for GetCarPlayDoorLockStatusAction;
  v30 = &off_1D6398;
  sub_CA594();
  *&v28 = swift_allocObject();
  sub_C960C(v36, v28 + 16);
  v13 = type metadata accessor for CarCommandsLoggingProducer();
  v27[3] = v13;
  v27[4] = &off_1D7DF0;
  v27[0] = v12;
  type metadata accessor for CarCommandsActionFlow();
  v14 = sub_CA220();
  sub_2F8D0(v27, v13);
  sub_CA078();
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v19 = sub_C9FD4(v18, v24);
  v20(v19);
  v21 = *v1;
  v25 = v13;
  v26 = &off_1D7DF0;
  *&v24 = v21;
  sub_C9FF8();
  sub_D124(&v28, v14 + 224);
  sub_D124(&v24, v14 + 144);
  sub_D124(&v34, v14 + 64);
  sub_D124(&v31, v14 + 104);
  sub_D13C(v27);
  sub_D13C(v35);
  v35[0] = v14;
  sub_C9FBC();
  sub_C9F48(v22, v23);
  sub_168924();
  sub_CA1CC();

  sub_C9668(v36);
  sub_CA23C();
  sub_CA368();
}

uint64_t sub_C62A8()
{
  sub_5758(&qword_1EAC38, &qword_174F20);
  sub_37404();
  v1 = *(v0 + 64);
  sub_CA380();
  __chkstk_darwin(v2);
  sub_CA0E8();
  type metadata accessor for GetLockStatusRCHFlowStrategy();
  sub_CA2E0();
  swift_allocObject();
  v3 = sub_DC78C();
  sub_CA540(v3);
  sub_DC3AC();
  sub_C9F48(&qword_1EAC40, type metadata accessor for GetLockStatusRCHFlowStrategy);
  sub_CA128();
  sub_CA558();
  v4 = sub_CA114();
  v5(v4);
  v6 = sub_3CFF0();
  sub_5758(v6, v7);
  sub_CA470(&qword_1EAC50);
  sub_CA38C();
  sub_CA510();

  return sub_CA448();
}

uint64_t sub_C63F8()
{
  sub_5758(&qword_1EAC58, &qword_174F30);
  sub_37404();
  v1 = *(v0 + 64);
  sub_CA380();
  __chkstk_darwin(v2);
  sub_CA0E8();
  type metadata accessor for GetClimateStatusRCHFlowStrategy();
  sub_CA594();
  swift_allocObject();
  v3 = sub_BF25C();
  sub_CA540(v3);
  sub_11C220();
  sub_C9F48(&qword_1EAC60, type metadata accessor for GetClimateStatusRCHFlowStrategy);
  sub_CA128();
  sub_CA558();
  v4 = sub_CA114();
  v5(v4);
  v6 = sub_3CFF0();
  sub_5758(v6, v7);
  sub_CA470(&qword_1EAC70);
  sub_CA38C();
  sub_CA510();

  return sub_CA448();
}

void sub_C6548()
{
  sub_CA350();
  CarRemainingRangeAction = type metadata accessor for GetCarRemainingRangeAction();
  v3 = sub_10AFC(CarRemainingRangeAction);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_A138();
  v8 = (v7 - v6);
  if (qword_1E5968 != -1)
  {
    sub_CA040();
  }

  v9 = type metadata accessor for CarPlayService();
  sub_CA5E0(v9, &off_1DA3F0);
  sub_168444();
  sub_169EB4();
  sub_169EA4();
  sub_169E94();

  v10 = v0 + *(type metadata accessor for LocalizedMeasurementUnitProvider() + 20);
  sub_169ED4();

  *v8 = 3;
  sub_C5DC0(v42);
  sub_1690C4();
  v11 = sub_168E34();
  sub_483C8(v11);
  v39 = v11;
  v40 = &protocol witness table for ResponseFactory;
  *&v38 = sub_168E24();
  sub_CA270();
  sub_CA078();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_A138();
  v16 = sub_CA488(v15);
  v17(v16);
  v18 = *v11;
  v36 = CarRemainingRangeAction;
  v37 = &off_1D6C08;
  v19 = sub_10888(&v35);
  sub_C976C(v8, v19);
  v20 = type metadata accessor for CarCommandsLoggingProducer();
  sub_CA5A0(v20);
  v21 = swift_allocObject();
  sub_CA618();
  sub_CA0B0();
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  sub_A138();
  v26 = sub_CA2F8(v25);
  v27(v26);
  v28 = *v1;
  v33 = &off_1D7DF0;
  *&v29 = sub_CA0FC(v28);
  *(v21 + 16) = v29;
  *(v21 + 32) = v29;
  *(v21 + 48) = 0;
  *(v21 + 184) = v29;
  *(v21 + 200) = v29;
  *(v21 + 216) = 0;
  *(v21 + 56) = 5;
  sub_D124(&v35, v21 + 224);
  sub_D124(&v32, v21 + 144);
  sub_D124(&v41, v21 + 64);
  sub_D124(&v38, v21 + 104);
  sub_D13C(&v34);
  sub_D13C(v42);
  v42[0] = v21;
  sub_C9FBC();
  sub_C9F48(v30, v31);
  sub_CA2EC();
  sub_168924();

  sub_C97C4(v8, type metadata accessor for GetCarRemainingRangeAction);
  sub_CA23C();
  sub_CA368();
}

uint64_t sub_C687C()
{
  sub_5758(&qword_1EAC78, &qword_174F40);
  sub_37404();
  v1 = *(v0 + 64);
  sub_CA380();
  __chkstk_darwin(v2);
  sub_CA0E8();
  type metadata accessor for GetPowerLevelRCHFlowStrategy();
  v3 = swift_allocObject();
  sub_CA540(v3);
  sub_78994();
  sub_C9F48(&qword_1EAC80, type metadata accessor for GetPowerLevelRCHFlowStrategy);
  sub_CA128();
  sub_CA558();
  v4 = sub_CA114();
  v5(v4);
  v6 = sub_3CFF0();
  sub_5758(v6, v7);
  sub_CA470(&qword_1EAC90);
  sub_CA38C();
  sub_CA510();

  return sub_CA448();
}

uint64_t sub_C69C8()
{
  sub_5758(&qword_1EACD8, &qword_174F70);
  sub_37404();
  v1 = *(v0 + 64);
  sub_CA380();
  __chkstk_darwin(v2);
  sub_CA0E8();
  type metadata accessor for GetTrunkStatusRCHFlowStrategy();
  sub_CA594();
  swift_allocObject();
  v3 = sub_BF25C();
  sub_CA540(v3);
  sub_BEEA0();
  sub_C9F48(&qword_1EACE0, type metadata accessor for GetTrunkStatusRCHFlowStrategy);
  sub_CA128();
  sub_CA558();
  v4 = sub_CA114();
  v5(v4);
  v6 = sub_3CFF0();
  sub_5758(v6, v7);
  sub_CA470(&qword_1EACF0);
  sub_CA38C();
  sub_CA510();

  return sub_CA448();
}

void sub_C6B18()
{
  sub_CA350();
  sub_5758(&qword_1EAD00, &qword_174F80);
  sub_37404();
  v3 = v2;
  v5 = *(v4 + 64);
  sub_CA380();
  __chkstk_darwin(v6);
  sub_CA3FC();
  type metadata accessor for FeatureFlagHelper();
  v7 = sub_CA4BC();
  v8 = sub_168E34();
  sub_483C8(v8);
  sub_CA1CC();

  sub_168E24();
  sub_47FC4();
  type metadata accessor for SnippetManager();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v38 = v0;
  v39 = &off_1D9AF0;
  v37 = v7;
  v10 = type metadata accessor for SetRadioStationRCHFlowStrategy();
  sub_CA3A8(v10);
  sub_CA4A0();
  sub_37404();
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v15 = sub_CA0C4(v14, v31);
  v16(v15);
  v17 = *v1;
  v35 = v0;
  v36 = &off_1D9AF0;
  v34 = v17;
  sub_CA4F4(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetRadioStationRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  sub_10824(&v34, &v33);
  sub_CA41C();
  sub_37404();
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  v22 = sub_CA0C4(v21, v32);
  v23(v22);
  v24 = *v1;

  sub_CA248();
  sub_CA3C4();
  sub_D13C(&v37);

  v40 = v9;

  sub_A9880();
  sub_C9F48(&qword_1EAD08, type metadata accessor for SetRadioStationRCHFlowStrategy);
  sub_CA32C();
  v25 = sub_CA5C0();
  v26 = *(v3 + 8);
  v27 = sub_CA57C();
  v28(v27);
  v40 = v25;
  v29 = sub_3CFF0();
  sub_5758(v29, v30);
  sub_CA470(&qword_1EAD18);
  sub_CA4D8();
  sub_CA528();

  sub_CA368();
}

void sub_C6E0C()
{
  sub_CA350();
  TirePressureStatusAction = type metadata accessor for GetTirePressureStatusAction();
  v2 = sub_10AFC(TirePressureStatusAction);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_A138();
  v7 = (v6 - v5);
  sub_1693F4();
  v8 = v47;
  sub_D084(&v46, v47);
  sub_CA1CC();
  v9 = sub_168B24();
  sub_D13C(&v46);
  if (v9)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040();
    }

    v10 = type metadata accessor for CarPlayService();
    sub_CA5E0(v10, &off_1DA3F0);
    sub_168444();
    sub_169EB4();
    sub_169EA4();
    sub_169E94();

    v11 = v8 + *(type metadata accessor for LocalizedMeasurementUnitProvider() + 20);
    sub_169ED4();

    *v7 = 16;
    sub_C5DC0(&v46);
    sub_1690C4();
    v12 = sub_168E34();
    sub_483C8(v12);
    v43 = v12;
    v44 = &protocol witness table for ResponseFactory;
    *&v42 = sub_168E24();
    sub_CA270();
    sub_CA078();
    v14 = *(v13 + 64);
    __chkstk_darwin(v15);
    sub_A138();
    v17 = sub_CA488(v16);
    v18(v17);
    v19 = *v12;
    v40 = TirePressureStatusAction;
    v41 = &off_1D7288;
    v20 = sub_10888(&v39);
    sub_C976C(v7, v20);
    v21 = type metadata accessor for CarCommandsLoggingProducer();
    sub_CA5A0(v21);
    v22 = swift_allocObject();
    sub_CA618();
    sub_CA0B0();
    v24 = *(v23 + 64);
    __chkstk_darwin(v25);
    sub_A138();
    v27 = sub_CA2F8(v26);
    v28(v27);
    v29 = *v0;
    v37 = &off_1D7DF0;
    *&v30 = sub_CA0FC(v29);
    *(v22 + 16) = v30;
    *(v22 + 32) = v30;
    *(v22 + 48) = 0;
    *(v22 + 184) = v30;
    *(v22 + 200) = v30;
    *(v22 + 216) = 0;
    *(v22 + 56) = 5;
    sub_D124(&v39, v22 + 224);
    sub_D124(&v36, v22 + 144);
    sub_D124(v45, v22 + 64);
    sub_D124(&v42, v22 + 104);
    sub_D13C(&v38);
    sub_D13C(&v46);
    *&v46 = v22;
    sub_C9FBC();
    sub_C9F48(v31, v32);
    sub_CA2EC();
    sub_168924();

    sub_C97C4(v7, type metadata accessor for GetTirePressureStatusAction);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v33 = type metadata accessor for CommonUnsupportedActionFlow();
    sub_483C8(v33);
    *&v46 = sub_C1248(&v46, v45);
    sub_CA060();
    sub_C9F48(v34, v35);
    sub_CA2EC();
    sub_168924();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C71EC()
{
  sub_CA350();
  sub_1693F4();
  sub_CA14C();
  sub_CA630();
  if (v0)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040();
    }

    v4 = qword_1F0E10;
    v5 = type metadata accessor for CarPlayService();
    v45 = &off_1DA3F0;
    sub_CA31C(v5, &type metadata for ServiceAvailabilityGate);
    v46 = 22;
    v44[0] = 22;
    v6 = v4;
    sub_C5DC0(v47);
    sub_1690C4();
    v7 = sub_168E34();
    sub_CA1B0(v7);
    v8 = sub_168E24();
    sub_CA1FC(v8, &protocol witness table for ResponseFactory);
    sub_CA094();
    v10 = *(v9 + 64);
    __chkstk_darwin(v11);
    v13 = sub_CA01C(v12, v33);
    v14(v13);
    v15 = *v1;
    v40 = &type metadata for SetCarPlayFanIntensityAction;
    v41 = &off_1D9770;
    sub_CA2E0();
    v16 = swift_allocObject();
    v17 = sub_CA188(v16);
    sub_C9E98(v17, v18);
    v19 = type metadata accessor for CarCommandsLoggingProducer();
    sub_CA2C4(v19);
    sub_CA220();
    sub_CA2A8();
    sub_CA078();
    v21 = *(v20 + 64);
    __chkstk_darwin(v22);
    v24 = sub_C9FD4(v23, v34);
    v25(v24);
    v26 = *v3;
    v36 = v19;
    v37 = &off_1D7DF0;
    *&v35 = v26;
    sub_C9FF8();
    sub_D124(&v39, v2 + 224);
    sub_D124(&v35, v2 + 144);
    sub_D124(&v43, v2 + 64);
    sub_D124(&v42, v2 + 104);
    sub_D13C(&v38);
    sub_D13C(v47);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v27, v28);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();

    sub_C9EF4(v44);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v29 = type metadata accessor for CommonUnsupportedActionFlow();
    sub_CA1B0(v29);
    v30 = sub_CA454();
    sub_CA588(v30);
    sub_CA060();
    sub_C9F48(v31, v32);
    sub_CA28C();
    sub_CA1CC();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C74C0()
{
  sub_CA350();
  sub_1693F4();
  sub_CA14C();
  sub_CA630();
  if (v0)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040();
    }

    v4 = qword_1F0E10;
    v5 = type metadata accessor for CarPlayService();
    v45 = &off_1DA3F0;
    sub_CA31C(v5, &type metadata for ServiceAvailabilityGate);
    v46 = 12;
    v44[0] = 12;
    v6 = v4;
    sub_C5DC0(v47);
    sub_1690C4();
    v7 = sub_168E34();
    sub_CA1B0(v7);
    v8 = sub_168E24();
    sub_CA1FC(v8, &protocol witness table for ResponseFactory);
    sub_CA094();
    v10 = *(v9 + 64);
    __chkstk_darwin(v11);
    v13 = sub_CA01C(v12, v33);
    v14(v13);
    v15 = *v1;
    v40 = &type metadata for SetCarPlayMaxACAction;
    v41 = &off_1D7880;
    sub_CA2E0();
    v16 = swift_allocObject();
    v17 = sub_CA188(v16);
    sub_C96BC(v17, v18);
    v19 = type metadata accessor for CarCommandsLoggingProducer();
    sub_CA2C4(v19);
    sub_CA220();
    sub_CA2A8();
    sub_CA078();
    v21 = *(v20 + 64);
    __chkstk_darwin(v22);
    v24 = sub_C9FD4(v23, v34);
    v25(v24);
    v26 = *v3;
    v36 = v19;
    v37 = &off_1D7DF0;
    *&v35 = v26;
    sub_C9FF8();
    sub_D124(&v39, v2 + 224);
    sub_D124(&v35, v2 + 144);
    sub_D124(&v43, v2 + 64);
    sub_D124(&v42, v2 + 104);
    sub_D13C(&v38);
    sub_D13C(v47);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v27, v28);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();

    sub_C9718(v44);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v29 = type metadata accessor for CommonUnsupportedActionFlow();
    sub_CA1B0(v29);
    v30 = sub_CA454();
    sub_CA588(v30);
    sub_CA060();
    sub_C9F48(v31, v32);
    sub_CA28C();
    sub_CA1CC();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C7794()
{
  sub_CA350();
  sub_1693F4();
  sub_CA14C();
  sub_CA630();
  if (v0)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040();
    }

    v4 = qword_1F0E10;
    v5 = type metadata accessor for CarPlayService();
    v45 = &off_1DA3F0;
    sub_CA31C(v5, &type metadata for ServiceAvailabilityGate);
    v46 = 7;
    v44[0] = 7;
    v6 = v4;
    sub_C5DC0(v47);
    sub_1690C4();
    v7 = sub_168E34();
    sub_CA1B0(v7);
    v8 = sub_168E24();
    sub_CA1FC(v8, &protocol witness table for ResponseFactory);
    sub_CA094();
    v10 = *(v9 + 64);
    __chkstk_darwin(v11);
    v13 = sub_CA01C(v12, v33);
    v14(v13);
    v15 = *v1;
    v40 = &type metadata for SetDefrosterAction;
    v41 = &off_1D95D8;
    sub_CA2E0();
    v16 = swift_allocObject();
    v17 = sub_CA188(v16);
    sub_C981C(v17, v18);
    v19 = type metadata accessor for CarCommandsLoggingProducer();
    sub_CA2C4(v19);
    sub_CA220();
    sub_CA2A8();
    sub_CA078();
    v21 = *(v20 + 64);
    __chkstk_darwin(v22);
    v24 = sub_C9FD4(v23, v34);
    v25(v24);
    v26 = *v3;
    v36 = v19;
    v37 = &off_1D7DF0;
    *&v35 = v26;
    sub_C9FF8();
    sub_D124(&v39, v2 + 224);
    sub_D124(&v35, v2 + 144);
    sub_D124(&v43, v2 + 64);
    sub_D124(&v42, v2 + 104);
    sub_D13C(&v38);
    sub_D13C(v47);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v27, v28);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();

    sub_C9878(v44);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v29 = type metadata accessor for CommonUnsupportedActionFlow();
    sub_CA1B0(v29);
    v30 = sub_CA454();
    sub_CA588(v30);
    sub_CA060();
    sub_C9F48(v31, v32);
    sub_CA28C();
    sub_CA1CC();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C7A68()
{
  sub_CA350();
  sub_5758(&qword_1EACB8, &qword_174F60);
  sub_37404();
  v3 = v2;
  v5 = *(v4 + 64);
  sub_CA380();
  __chkstk_darwin(v6);
  sub_CA3FC();
  type metadata accessor for FeatureFlagHelper();
  v7 = sub_CA4BC();
  v8 = sub_168E34();
  sub_483C8(v8);
  sub_CA1CC();

  sub_168E24();
  sub_47FC4();
  type metadata accessor for SnippetManager();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v38 = v0;
  v39 = &off_1D9AF0;
  v37 = v7;
  v10 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy();
  sub_CA3A8(v10);
  sub_CA4A0();
  sub_37404();
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v15 = sub_CA0C4(v14, v31);
  v16(v15);
  v17 = *v1;
  v35 = v0;
  v36 = &off_1D9AF0;
  v34 = v17;
  sub_CA4F4(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin32SetCarPlayClimateRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  sub_10824(&v34, &v33);
  sub_CA41C();
  sub_37404();
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  v22 = sub_CA0C4(v21, v32);
  v23(v22);
  v24 = *v1;

  sub_CA248();
  sub_CA3C4();
  sub_D13C(&v37);

  v40 = v9;

  sub_F7A14();
  sub_C9F48(&qword_1EACC0, type metadata accessor for SetCarPlayClimateRCHFlowStrategy);
  sub_CA32C();
  v25 = sub_CA5C0();
  v26 = *(v3 + 8);
  v27 = sub_CA57C();
  v28(v27);
  v40 = v25;
  v29 = sub_3CFF0();
  sub_5758(v29, v30);
  sub_CA470(&qword_1EACD0);
  sub_CA4D8();
  sub_CA528();

  sub_CA368();
}

void sub_C7D38()
{
  sub_CA350();
  sub_5758(&qword_1EAD20, &qword_174F90);
  sub_37404();
  v3 = v2;
  v5 = *(v4 + 64);
  sub_CA380();
  __chkstk_darwin(v6);
  sub_CA3FC();
  sub_D084(&v42, v43);
  sub_CA1CC();
  v7 = sub_168B24();
  sub_D13C(&v42);
  sub_1693F4();
  if (v7)
  {
    type metadata accessor for FeatureFlagHelper();
    v8 = sub_CA4BC();
    v9 = sub_168E34();
    sub_483C8(v9);
    sub_CA1CC();

    sub_168E24();
    sub_47FC4();
    type metadata accessor for SnippetManager();
    v36 = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    v40 = v0;
    v41 = &off_1D9AF0;
    *&v39 = v8;
    v11 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy();
    sub_CA3A8(v11);
    sub_CA4A0();
    v35 = &v35;
    sub_37404();
    v13 = *(v12 + 64);
    __chkstk_darwin(v14);
    v16 = sub_CA0C4(v15, v35);
    v17(v16);
    v18 = *v1;
    v38[3] = v0;
    v38[4] = &off_1D9AF0;
    v38[0] = v18;
    sub_CA4F4(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetCarPlaySeatSettingsRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
    sub_10824(v38, &v37);
    sub_CA41C();
    sub_37404();
    v20 = *(v19 + 64);
    __chkstk_darwin(v21);
    v23 = sub_CA0C4(v22, v35);
    v24(v23);
    v25 = *v1;

    sub_CA248();
    sub_CA3C4();
    sub_D13C(&v39);

    *&v42 = v10;

    sub_152B60();
    sub_C9F48(&qword_1EAD28, type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy);
    sub_CA32C();
    v26 = sub_168CC4();
    v27 = *(v36 + 8);
    v28 = sub_CA57C();
    v29(v28);
    *&v42 = v26;
    v30 = sub_3CFF0();
    sub_5758(v30, v31);
    sub_CA470(&qword_1EAD38);
    sub_CA4D8();
    sub_CA528();
  }

  else
  {
    sub_1690C4();
    v32 = type metadata accessor for CommonUnsupportedActionFlow();
    sub_483C8(v32);
    *&v42 = sub_C1248(&v42, &v39);
    sub_CA060();
    sub_C9F48(v33, v34);
    sub_168924();
  }

  sub_CA368();
}

void sub_C80E4()
{
  sub_CA350();
  sub_1693F4();
  sub_CA14C();
  sub_CA630();
  if (v0)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040();
    }

    v4 = qword_1F0E10;
    v5 = type metadata accessor for CarPlayService();
    v45 = &off_1DA3F0;
    sub_CA31C(v5, &type metadata for ServiceAvailabilityGate);
    v46 = 15;
    v44[0] = 15;
    v6 = v4;
    sub_C5DC0(v47);
    sub_1690C4();
    v7 = sub_168E34();
    sub_CA1B0(v7);
    v8 = sub_168E24();
    sub_CA1FC(v8, &protocol witness table for ResponseFactory);
    sub_CA094();
    v10 = *(v9 + 64);
    __chkstk_darwin(v11);
    v13 = sub_CA01C(v12, v33);
    v14(v13);
    v15 = *v1;
    v40 = &type metadata for SetCarPlaySteeringWheelTemperatureAction;
    v41 = &off_1D5420;
    sub_CA2E0();
    v16 = swift_allocObject();
    v17 = sub_CA188(v16);
    sub_C9920(v17, v18);
    v19 = type metadata accessor for CarCommandsLoggingProducer();
    sub_CA2C4(v19);
    sub_CA220();
    sub_CA2A8();
    sub_CA078();
    v21 = *(v20 + 64);
    __chkstk_darwin(v22);
    v24 = sub_C9FD4(v23, v34);
    v25(v24);
    v26 = *v3;
    v36 = v19;
    v37 = &off_1D7DF0;
    *&v35 = v26;
    sub_C9FF8();
    sub_D124(&v39, v2 + 224);
    sub_D124(&v35, v2 + 144);
    sub_D124(&v43, v2 + 64);
    sub_D124(&v42, v2 + 104);
    sub_D13C(&v38);
    sub_D13C(v47);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v27, v28);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();

    sub_C997C(v44);
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v29 = type metadata accessor for CommonUnsupportedActionFlow();
    sub_CA1B0(v29);
    v30 = sub_CA454();
    sub_CA588(v30);
    sub_CA060();
    sub_C9F48(v31, v32);
    sub_CA28C();
    sub_CA1CC();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C83B8()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040();
  }

  v3 = type metadata accessor for CarPlayService();
  v38[5] = &off_1DA3F0;
  sub_CA30C(v3, &type metadata for ServiceAvailabilityGate);
  sub_CA600(17);
  sub_C5DC0(v37);
  sub_1690C4();
  v4 = sub_168E34();
  sub_CA1B0(v4);
  v5 = sub_168E24();
  sub_CA1D8(v5, &protocol witness table for ResponseFactory);
  sub_CA094();
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v10 = sub_CA01C(v9, v26);
  v11(v10);
  v12 = *v0;
  v33 = &type metadata for SetCarPlayFanSettingsAction;
  v34 = &off_1D4EF8;
  sub_CA2E0();
  v13 = swift_allocObject();
  v14 = sub_CA19C(v13);
  sub_C9B9C(v14, v15);
  v16 = type metadata accessor for CarCommandsLoggingProducer();
  sub_CA2C4(v16);
  sub_CA220();
  sub_CA2A8();
  sub_CA078();
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v21 = sub_C9FD4(v20, v27);
  v22(v21);
  v23 = *v2;
  v29 = v16;
  v30 = &off_1D7DF0;
  *&v28 = v23;
  sub_C9FF8();
  sub_D124(&v32, v1 + 224);
  sub_D124(&v28, v1 + 144);
  sub_D124(&v36, v1 + 64);
  sub_D124(&v35, v1 + 104);
  sub_D13C(&v31);
  sub_D13C(v37);
  sub_CA570();
  sub_C9FBC();
  sub_C9F48(v24, v25);
  sub_CA28C();
  sub_CA1CC();

  sub_C9BF8(v38);
  sub_CA23C();
  sub_CA368();
}

void sub_C8610()
{
  sub_CA350();
  sub_1693F4();
  v1 = v40;
  sub_D084(&v38, v39);
  v2 = sub_168B24();
  sub_D13C(&v38);
  if (v2)
  {
    if (qword_1E5968 != -1)
    {
      sub_CA040();
    }

    v3 = sub_C9A48(qword_1F0E10, 18);

    sub_C5DC0(&v38);
    sub_1690C4();
    v4 = sub_168E34();
    sub_CA1B0(v4);
    v35 = v1;
    v36 = &protocol witness table for ResponseFactory;
    *&v34 = sub_168E24();
    sub_CA270();
    sub_CA094();
    v6 = *(v5 + 64);
    __chkstk_darwin(v7);
    v9 = sub_CA01C(v8, v25);
    v10(v9);
    v11 = *v1;
    v32 = type metadata accessor for SetVolumeAction();
    v33 = &off_1D6998;
    *&v31 = v3;
    v29 = type metadata accessor for CarCommandsLoggingProducer();
    v30 = &off_1D7DF0;
    v28 = v11;
    type metadata accessor for CarCommandsActionFlow();
    v12 = sub_CA220();
    sub_CA618();
    sub_CA078();
    v14 = *(v13 + 64);
    __chkstk_darwin(v15);
    v17 = sub_C9FD4(v16, v25);
    v18(v17);
    v19 = *v0;
    v27 = &off_1D7DF0;
    v26 = v29;
    *&v25 = v19;
    sub_C9FF8();
    sub_D124(&v31, v12 + 224);
    sub_D124(&v25, v12 + 144);
    sub_D124(v37, v12 + 64);
    sub_D124(&v34, v12 + 104);
    sub_D13C(&v28);
    sub_D13C(&v38);
    sub_CA43C();
    sub_C9FBC();
    sub_C9F48(v20, v21);
    sub_CA2EC();
    sub_168924();
    sub_CA1CC();
  }

  else
  {
    sub_1693F4();
    sub_1690C4();
    v22 = type metadata accessor for CommonUnsupportedActionFlow();
    sub_483C8(v22);
    *&v38 = sub_C1248(&v38, v37);
    sub_CA060();
    sub_C9F48(v23, v24);
    sub_CA2EC();
    sub_168924();
  }

  sub_CA23C();
  sub_CA368();
}

void sub_C8914()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040();
  }

  v3 = type metadata accessor for CarPlayService();
  v38[5] = &off_1DA3F0;
  sub_CA30C(v3, &type metadata for ServiceAvailabilityGate);
  sub_CA600(19);
  sub_C5DC0(v37);
  sub_1690C4();
  v4 = sub_168E34();
  sub_CA1B0(v4);
  v5 = sub_168E24();
  sub_CA1D8(v5, &protocol witness table for ResponseFactory);
  sub_CA094();
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v10 = sub_CA01C(v9, v26);
  v11(v10);
  v12 = *v0;
  v33 = &type metadata for SetCarPlayAutoModeAction;
  v34 = &off_1D6FA8;
  sub_CA2E0();
  v13 = swift_allocObject();
  v14 = sub_CA19C(v13);
  sub_C9C4C(v14, v15);
  v16 = type metadata accessor for CarCommandsLoggingProducer();
  sub_CA2C4(v16);
  sub_CA220();
  sub_CA2A8();
  sub_CA078();
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v21 = sub_C9FD4(v20, v27);
  v22(v21);
  v23 = *v2;
  v29 = v16;
  v30 = &off_1D7DF0;
  *&v28 = v23;
  sub_C9FF8();
  sub_D124(&v32, v1 + 224);
  sub_D124(&v28, v1 + 144);
  sub_D124(&v36, v1 + 64);
  sub_D124(&v35, v1 + 104);
  sub_D13C(&v31);
  sub_D13C(v37);
  sub_CA570();
  sub_C9FBC();
  sub_C9F48(v24, v25);
  sub_CA28C();
  sub_CA1CC();

  sub_C9CA8(v38);
  sub_CA23C();
  sub_CA368();
}

void sub_C8B6C()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040();
  }

  v3 = type metadata accessor for CarPlayService();
  v38[5] = &off_1DA3F0;
  sub_CA30C(v3, &type metadata for ServiceAvailabilityGate);
  sub_CA600(21);
  sub_C5DC0(v37);
  sub_1690C4();
  v4 = sub_168E34();
  sub_CA1B0(v4);
  v5 = sub_168E24();
  sub_CA1D8(v5, &protocol witness table for ResponseFactory);
  sub_CA094();
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v10 = sub_CA01C(v9, v26);
  v11(v10);
  v12 = *v0;
  v33 = &type metadata for SetCarPlayVentModeAction;
  v34 = &off_1D9E10;
  sub_CA2E0();
  v13 = swift_allocObject();
  v14 = sub_CA19C(v13);
  sub_C9DAC(v14, v15);
  v16 = type metadata accessor for CarCommandsLoggingProducer();
  sub_CA2C4(v16);
  sub_CA220();
  sub_CA2A8();
  sub_CA078();
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v21 = sub_C9FD4(v20, v27);
  v22(v21);
  v23 = *v2;
  v29 = v16;
  v30 = &off_1D7DF0;
  *&v28 = v23;
  sub_C9FF8();
  sub_D124(&v32, v1 + 224);
  sub_D124(&v28, v1 + 144);
  sub_D124(&v36, v1 + 64);
  sub_D124(&v35, v1 + 104);
  sub_D13C(&v31);
  sub_D13C(v37);
  sub_CA570();
  sub_C9FBC();
  sub_C9F48(v24, v25);
  sub_CA28C();
  sub_CA1CC();

  sub_C9E08(v38);
  sub_CA23C();
  sub_CA368();
}

void sub_C8DC4()
{
  sub_CA350();
  if (qword_1E5968 != -1)
  {
    sub_CA040();
  }

  v3 = type metadata accessor for CarPlayService();
  v38[5] = &off_1DA3F0;
  sub_CA30C(v3, &type metadata for ServiceAvailabilityGate);
  sub_CA600(20);
  sub_C5DC0(v37);
  sub_1690C4();
  v4 = sub_168E34();
  sub_CA1B0(v4);
  v5 = sub_168E24();
  sub_CA1D8(v5, &protocol witness table for ResponseFactory);
  sub_CA094();
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v10 = sub_CA01C(v9, v26);
  v11(v10);
  v12 = *v0;
  v33 = &type metadata for SetCarPlayClimateSyncAction;
  v34 = &off_1DA058;
  sub_CA2E0();
  v13 = swift_allocObject();
  v14 = sub_CA19C(v13);
  sub_C9CFC(v14, v15);
  v16 = type metadata accessor for CarCommandsLoggingProducer();
  sub_CA2C4(v16);
  sub_CA220();
  sub_CA2A8();
  sub_CA078();
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v21 = sub_C9FD4(v20, v27);
  v22(v21);
  v23 = *v2;
  v29 = v16;
  v30 = &off_1D7DF0;
  *&v28 = v23;
  sub_C9FF8();
  sub_D124(&v32, v1 + 224);
  sub_D124(&v28, v1 + 144);
  sub_D124(&v36, v1 + 64);
  sub_D124(&v35, v1 + 104);
  sub_D13C(&v31);
  sub_D13C(v37);
  sub_CA570();
  sub_C9FBC();
  sub_C9F48(v24, v25);
  sub_CA28C();
  sub_CA1CC();

  sub_C9D58(v38);
  sub_CA23C();
  sub_CA368();
}

void sub_C9040()
{
  sub_CA350();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if (qword_1E5968 != -1)
  {
    sub_CA040();
  }

  v7 = qword_1F0E10;
  v8 = type metadata accessor for CarPlayService();
  v52[3] = v8;
  v52[4] = &off_1DA3F0;
  v52[0] = v7;
  v9 = v6(0);
  v10 = swift_allocObject();
  sub_2F8D0(v52, v8);
  sub_37404();
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  sub_A138();
  v15 = sub_CA2F8(v14);
  v16(v15);
  v17 = *v0;
  v50 = v8;
  v51 = &off_1DA3F0;
  *&v49 = v17;
  *(v10 + 16) = v4;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 1;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0u;
  sub_D124(&v49, v10 + 24);
  v18 = v7;
  sub_D13C(v52);

  sub_C5DC0(v52);
  sub_1690C4();
  v19 = sub_168E34();
  sub_CA3A8(v19);
  v47 = v8;
  v48 = &protocol witness table for ResponseFactory;
  *&v46 = sub_168E24();
  sub_CA270();
  sub_CA094();
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  v24 = sub_C9FD4(v23, v37);
  v25(v24);
  v26 = *v8;
  v44 = v9;
  v45 = v2;
  *&v43 = v10;
  v41 = type metadata accessor for CarCommandsLoggingProducer();
  v42 = &off_1D7DF0;
  v40 = v26;
  type metadata accessor for CarCommandsActionFlow();
  v27 = sub_CA220();
  sub_CA618();
  sub_CA078();
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  v32 = sub_C9FD4(v31, v37);
  v33(v32);
  v34 = *v26;
  v39 = &off_1D7DF0;
  v38 = v41;
  *&v37 = v34;
  sub_C9FF8();
  sub_D124(&v43, v27 + 224);
  sub_D124(&v37, v27 + 144);
  sub_D124(&v49, v27 + 64);
  sub_D124(&v46, v27 + 104);
  sub_D13C(&v40);
  sub_D13C(v52);
  sub_CA43C();
  sub_C9FBC();
  sub_C9F48(v35, v36);
  sub_CA2EC();
  sub_168924();
  sub_CA1CC();

  sub_CA23C();
  sub_CA368();
}

uint64_t sub_C93CC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  sub_1693F4();
  sub_1690C4();
  v7 = a1(0);
  sub_CA3A8(v7);
  v12[0] = a2(v12, &v11);
  v8 = sub_CA57C();
  sub_C9F48(v8, v9);
  sub_168924();
  sub_CA528();
  return a4;
}

uint64_t sub_C94C8(uint64_t a1)
{
  v2 = sub_168F64();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_A138();
  v6 = v5 - v4;
  sub_1693F4();
  sub_1690C4();
  sub_168F54();
  v7 = type metadata accessor for CommonCheckLockScreenFlow();
  sub_CA1B0(v7);
  *&v10 = sub_4CA24(a1, &v10, &v9, v6);
  sub_C9F48(&qword_1E6F78, type metadata accessor for CommonCheckLockScreenFlow);

  sub_168924();
  sub_CA528();
  return sub_CA448();
}

uint64_t sub_C95D8()
{
  sub_D13C((v0 + 24));
  sub_CA594();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_C976C(uint64_t a1, uint64_t a2)
{
  v3 = sub_47FC4();
  v5 = v4(v3);
  sub_10AFC(v5);
  v7 = *(v6 + 16);
  v8 = sub_3CFF0();
  v9(v8);
  return a2;
}

uint64_t sub_C97C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10AFC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_C98CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_37130(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C99D0(uint64_t a1, char a2, uint64_t a3)
{
  *(a3 + 48) = type metadata accessor for CarPlayService();
  *(a3 + 56) = &off_1DA3F0;
  *(a3 + 24) = a1;
  *(a3 + 88) = &type metadata for ServiceAvailabilityGate;
  *(a3 + 96) = &off_1D6810;
  *(a3 + 64) = a2;
  *(a3 + 16) = 18;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  return a3;
}

uint64_t sub_C9A48(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CarPlayService();
  v17[4] = &off_1DA3F0;
  v17[3] = v4;
  v17[0] = a1;
  v15 = &type metadata for ServiceAvailabilityGate;
  v16 = &off_1D6810;
  LOBYTE(v14[0]) = a2;
  type metadata accessor for SetVolumeAction();
  v5 = swift_allocObject();
  v6 = sub_2F8D0(v17, v4);
  v7 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_2F8D0(v14, v15);
  v12 = sub_C99D0(*v9, *v11, v5);
  sub_D13C(v14);
  sub_D13C(v17);
  return v12;
}

uint64_t sub_C9E5C()
{
  sub_D13C((v0 + 24));
  sub_D13C((v0 + 64));
  sub_CA2E0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_C9F48(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_C9FF8()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  *(v0 + 56) = 5;
  return result;
}

uint64_t sub_CA040()
{

  return swift_once();
}

double sub_CA0FC@<D0>(uint64_t a1@<X8>)
{
  *(v2 - 296) = v1;
  *(v2 - 320) = a1;
  return 0.0;
}

uint64_t sub_CA128()
{

  return sub_168CD4();
}

uint64_t sub_CA14C()
{
  v1 = v0[30];
  sub_D084(v0 + 26, v0[29]);

  return sub_168B24();
}

uint64_t sub_CA1B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_CA1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[19] = v3;
  v2[20] = a2;
  v2[16] = a1;
  v5 = v2[29];

  return sub_2F8D0((v2 + 26), v5);
}

uint64_t sub_CA1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[19] = v3;
  v2[20] = a2;
  v2[16] = a1;
  v6 = *(v4 - 96);

  return sub_2F8D0(v4 - 120, v6);
}

uint64_t sub_CA220()
{

  return swift_allocObject();
}

void sub_CA248()
{

  sub_1668CC();
}

uint64_t sub_CA270()
{
  v2 = *(v0 - 96);

  return sub_2F8D0(v0 - 120, v2);
}

uint64_t sub_CA28C()
{

  return sub_168924();
}

uint64_t sub_CA2A8()
{

  return sub_2F8D0(v0 + 48, v1);
}

uint64_t sub_CA2C4(uint64_t a1)
{
  v1[9] = a1;
  v1[10] = v3;
  v1[6] = v2;

  return type metadata accessor for CarCommandsActionFlow();
}

uint64_t sub_CA30C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 136) = result;
  *(v4 - 160) = v3;
  *(v4 - 96) = a2;
  *(v4 - 88) = v2;
  return result;
}

uint64_t sub_CA31C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[30] = result;
  v3[27] = v4;
  v3[35] = a2;
  v3[36] = v2;
  return result;
}

uint64_t sub_CA32C()
{

  return sub_168CD4();
}

uint64_t sub_CA38C()
{

  return sub_168924();
}

uint64_t sub_CA3A8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_CA3C4()
{
  sub_D13C((v0 - 128));
  sub_D13C((v0 - 208));

  return sub_D13C((v0 - 288));
}

uint64_t sub_CA3FC()
{

  return sub_1693F4();
}

uint64_t sub_CA41C()
{
  v2 = *(v0 - 264);

  return sub_2F8D0(v0 - 288, v2);
}

uint64_t sub_CA454()
{

  return sub_C1248((v0 + 208), (v1 - 120));
}

uint64_t sub_CA470(unint64_t *a1)
{

  return sub_C98CC(a1, v1, v2);
}

uint64_t sub_CA4A0()
{

  return sub_2F8D0(v1 - 168, v0);
}

uint64_t sub_CA4BC()
{

  return swift_allocObject();
}

uint64_t sub_CA4D8()
{

  return sub_168924();
}

uint64_t sub_CA4F4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;

  return sub_10824(v2 - 128, v2 - 248);
}

uint64_t sub_CA510()
{
}

uint64_t sub_CA528()
{
}

uint64_t sub_CA540(uint64_t a1)
{
  *(v1 - 56) = a1;
}

uint64_t sub_CA558()
{

  return sub_168CC4();
}

uint64_t sub_CA5A0(uint64_t a1)
{
  *(v3 - 256) = a1;
  *(v3 - 248) = v2;
  *(v3 - 280) = v1;

  return type metadata accessor for CarCommandsActionFlow();
}

uint64_t sub_CA5C0()
{
  v2 = *(v0 - 296);

  return sub_168CC4();
}

id sub_CA5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[1] = v3;
  v6 = v2 + *(v4 + 24);

  return v3;
}

id sub_CA600@<X0>(char a1@<W8>)
{
  *(v2 - 120) = a1;
  *(v2 - 168) = a1;

  return v1;
}

uint64_t sub_CA618()
{

  return sub_2F8D0(v1 - 280, v0);
}

uint64_t sub_CA630()
{

  return sub_D13C((v0 + 208));
}

id sub_CA648()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134();
    }

    v4 = sub_12685C(v3);
    v5 = *(v0 + 96);
    *(v0 + 96) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void *sub_CA6CC(uint64_t a1)
{
  v3 = sub_16A164();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_A138();
  v5 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v6 = sub_16A094();
  v1[5] = v5;
  v1[6] = &off_1DA7E8;
  v1[2] = v6;
  v7 = sub_168E34();
  sub_483C8(v7);
  v8 = sub_168E24();
  v1[10] = v7;
  v1[11] = &protocol witness table for ResponseFactory;
  v1[7] = v8;
  v1[12] = 0;
  v1[13] = a1;
  return v1;
}

uint64_t sub_CA79C()
{
  v0 = sub_1693E4();
  sub_37404();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  sub_169384();
  sub_8F624();
  sub_86E4(v8, &_swiftEmptySetSingleton, v13);

  (*(v2 + 8))(v8, v0);
  v9 = v13[3];
  sub_57A80(v13);
  if (v9)
  {
    return sub_168C64();
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x40uLL, 0xD00000000000008DLL, 0x800000000018A420, 0xD000000000000016, 0x800000000017FD50, 36, 0xD00000000000001FLL, 0x800000000017F910);
  return sub_168C74();
}

uint64_t sub_CA968()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16E450;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  return v0;
}

uint64_t sub_CAA34()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_CAAF0, 0, 0);
}

uint64_t sub_CAAF0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_CB8E0();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_FDFF8(v1);
  v7 = v0[5];
  if (v6)
  {
    v8 = v6;
    v9 = v0[5];

    v10 = v0[1];

    return v10(v8);
  }

  else
  {
    v13 = v0[2];
    v12 = v0[3];
    type metadata accessor for CarCommandsError();
    sub_CB924(&qword_1E92F0, 255, type metadata accessor for CarCommandsError);
    swift_allocError();
    v5(v14, v13, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_CAC9C()
{
  v2 = sub_16A164();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_A138();
  v43 = sub_5758(&qword_1EAE88, &qword_1751D0);
  sub_37404();
  v42 = v4;
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v7);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  if (qword_1E5908 != -1)
  {
    sub_48134();
  }

  v12 = qword_1F0C70;
  v48[3] = type metadata accessor for WalletService();
  v48[4] = &off_1D7C28;
  v48[0] = v12;
  type metadata accessor for CarCommandsCATs();

  sub_16A154();
  sub_16A094();
  sub_164564();

  sub_D13C(v48);
  v13 = *(v0 + 104);

  sub_1693F4();
  v14 = type metadata accessor for FeatureFlagHelper();
  v15 = swift_allocObject();
  v16 = sub_168E34();
  sub_483C8(v16);

  sub_168E24();
  v47[3] = v14;
  v47[4] = &off_1D9AF0;
  v47[0] = v15;
  v17 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy();
  v18 = sub_483C8(v17);
  sub_2F8D0(v47, v14);
  sub_37404();
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  sub_A138();
  v23 = sub_CB96C(v22);
  v24(v23);
  v25 = *v1;
  v46[3] = v14;
  v46[4] = &off_1D9AF0;
  v46[0] = v25;
  *(v18 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(v48, v45);
  sub_10824(v46, v44);
  sub_2F8D0(v44, v44[3]);
  sub_37404();
  v27 = *(v26 + 64);
  __chkstk_darwin(v28);
  sub_A138();
  v30 = sub_CB96C(v29);
  v31(v30);
  v32 = *v1;

  sub_1668CC();
  v34 = v33;
  sub_D13C(v48);
  sub_D13C(v46);
  sub_D13C(v44);
  sub_D13C(v47);

  v48[0] = v34;
  sub_CB924(&qword_1EAE90, 255, type metadata accessor for SetLockStatusHandleIntentFlowStrategy);
  sub_1687E4();

  v35 = v43;
  sub_168884();
  v36 = v42;
  (*(v42 + 16))(v41, v11, v35);
  v37 = sub_5758(&qword_1EAE98, &qword_1751D8);
  sub_483C8(v37);
  v38 = sub_168914();
  (*(v36 + 8))(v11, v35);
  return v38;
}

uint64_t sub_CB16C(uint64_t a1, uint64_t a2)
{
  result = sub_CB924(&qword_1EAE68, a2, type metadata accessor for SetLockStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CB1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_CAA34();
}

uint64_t sub_CB288()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_3FC18();
}

uint64_t sub_CB360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetLockStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_CB42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetLockStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_CB4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetLockStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_CB5C4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F428;

  return sub_43114();
}

uint64_t sub_CB69C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_45BDC();
}

uint64_t sub_CB830(uint64_t a1, uint64_t a2)
{
  result = sub_CB924(&qword_1EAE70, a2, type metadata accessor for SetLockStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CB888(uint64_t a1, uint64_t a2)
{
  result = sub_CB924(&qword_1EAE80, a2, type metadata accessor for SetLockStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_CB8E0()
{
  result = qword_1E6A50;
  if (!qword_1E6A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6A50);
  }

  return result;
}

uint64_t sub_CB924(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CB984()
{
  v1 = [v0 mediaSourceSemanticType];
  if (((v1 - 1) & 0xF8) != 0)
  {
    return 5;
  }

  else
  {
    return (0x405030505020001uLL >> (8 * (v1 - 1)));
  }
}

uint64_t sub_CB9F0()
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  if (qword_1E58F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1F0BE8;
  v18 = type metadata accessor for CarKeyPassManager();
  v19 = &off_1D6C40;
  v17[0] = v0;
  v1 = type metadata accessor for WalletPassLibrary();
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  v3 = v0;
  sub_CD04C(v17, v2 + 16);
  swift_endAccess();
  v18 = v1;
  v19 = &off_1D9410;
  v17[0] = v2;
  type metadata accessor for WalletService();
  v4 = swift_allocObject();
  sub_2F8D0(v17, v1);
  sub_37404();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v15 = v1;
  v16 = &off_1D9410;
  *&v14 = v11;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  swift_beginAccess();

  sub_CD04C(v20, v4 + 16);
  swift_endAccess();
  sub_D124(&v14, v4 + 56);
  sub_D13C(v17);

  qword_1F0C70 = v4;
  return result;
}

void *sub_CBC08(char *a1)
{
  v2 = v1;
  v4 = 0xD000000000000016;
  v5 = "carKeyPassManager";
  v6 = " supports useCase ";
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  sub_16ACF4(61);
  v69._countAndFlagsBits = 0xD00000000000002ALL;
  v69._object = 0x800000000018A640;
  sub_16A744(v69);
  *&v64 = sub_CD180(a1);
  *(&v64 + 1) = v7;
  sub_5758(&qword_1E5FA0, &qword_172DD0);
  v70._countAndFlagsBits = sub_16A694();
  sub_16A744(v70);

  v71._countAndFlagsBits = 0x506E656B6F707320;
  v71._object = 0xEF203A6573617268;
  sub_16A744(v71);
  v8 = [a1 spokenPhrase];
  v9 = sub_16A664();
  v11 = v10;

  v72._countAndFlagsBits = v9;
  v72._object = v11;
  sub_16A744(v72);

  v12 = 0;
  v13 = 0xE000000000000000;
  if (qword_1E58E8 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v14 = sub_16A584();
    v15 = sub_9DA0(v14, qword_1E65C0);
    v16 = sub_16A9A4();
    v57 = v6;
    v58 = v5;
    v56 = v15;
    sub_386D8(v16, 0x20000uLL, v4 + 112, v5 | 0x8000000000000000, 0xD000000000000016, (v6 | 0x8000000000000000), 24, v12, v13);

    v17 = sub_CD180(a1);
    if (!v18)
    {
      goto LABEL_10;
    }

    v19 = v17;
    v20 = v18;
    v21 = a1;
    v22 = [a1 spokenPhrase];
    v23 = sub_16A664();
    v25 = v24;

    if (v19 == v23 && v20 == v25)
    {

      a1 = v21;
      goto LABEL_10;
    }

    v27 = sub_16AE54();

    a1 = v21;
    if (v27)
    {

      goto LABEL_10;
    }

    v53 = *sub_D084(v2 + 7, v2[10]);
    sub_F57D8(v19, v20, &v64);

    if (v65)
    {
      break;
    }

    sub_D188(&v64, &qword_1E6358, &unk_16DA90);
LABEL_10:
    v55 = a1;
    v28 = [a1 spokenPhrase];
    sub_16A664();

    v29 = sub_16A6A4();
    v13 = v30;

    v12 = *sub_D084(v2 + 7, v2[10]);
    v6 = sub_F6174();
    v4 = 0;
    v5 = *(v6 + 16);
    v2 = _swiftEmptyArrayStorage;
    a1 = (v6 + 32);
    v59 = v5;
    v60 = v13;
    while (1)
    {
      if (v5 == v4)
      {

        *&v66 = 0;
        *(&v66 + 1) = 0xE000000000000000;
        sub_16ACF4(38);

        *&v66 = 0x20646E756F46;
        *(&v66 + 1) = 0xE600000000000000;
        *&v64 = v2[2];
        v73._countAndFlagsBits = sub_16AE24();
        sub_16A744(v73);

        v74._countAndFlagsBits = 0xD00000000000001CLL;
        v74._object = 0x800000000018A670;
        sub_16A744(v74);
        v46 = [v55 description];
        v47 = sub_16A664();
        v49 = v48;

        v75._countAndFlagsBits = v47;
        v75._object = v49;
        sub_16A744(v75);

        v50 = v66;
        v51 = sub_16A9A4();
        sub_386D8(v51, 0x20000uLL, 0xD000000000000086, v58 | 0x8000000000000000, 0xD000000000000016, (v57 | 0x8000000000000000), 38, v50, *(&v50 + 1));

        return v2;
      }

      if (v4 >= *(v6 + 16))
      {
        break;
      }

      sub_10824(a1, &v66);
      v31 = *sub_D084(&v66, v67);
      v32 = sub_110574();
      v33 = [v32 spokenPhrase];

      sub_16A664();
      v34 = sub_16A6A4();
      v36 = v35;

      *&v64 = v34;
      *(&v64 + 1) = v36;
      *&v61 = v29;
      *(&v61 + 1) = v13;
      sub_D030();
      v12 = sub_16AB54();

      if (v12)
      {
        sub_D124(&v66, &v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1468D8(0, v2[2] + 1, 1);
          v2 = v68;
        }

        v39 = v2[2];
        v38 = v2[3];
        if (v39 >= v38 >> 1)
        {
          sub_1468D8((v38 > 1), v39 + 1, 1);
          v2 = v68;
        }

        sub_2F8D0(&v64, v65);
        sub_37404();
        v41 = *(v40 + 64);
        __chkstk_darwin(v42);
        v44 = (&v54 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v45 + 16))(v44);
        v12 = *v44;
        v62 = type metadata accessor for WalletCarKey();
        v63 = &off_1D9928;
        *&v61 = v12;
        v2[2] = v39 + 1;
        sub_D124(&v61, &v2[5 * v39 + 4]);
        sub_D13C(&v64);
        v5 = v59;
        v13 = v60;
      }

      else
      {
        sub_D13C(&v66);
      }

      a1 += 40;
      ++v4;
    }

    __break(1u);
LABEL_27:
    sub_9ED4();
  }

  sub_D124(&v64, &v66);
  sub_5758(&qword_1EAFA8, &unk_178270);
  v2 = swift_allocObject();
  *(v2 + 1) = xmmword_16D9A0;
  sub_D124(&v66, (v2 + 4));
  return v2;
}

uint64_t sub_CC2C0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  return sub_D2B0();
}

uint64_t sub_CC2DC()
{
  sub_1696C();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = objc_allocWithZone(INSpeakableString);
  swift_bridgeObjectRetain_n();
  v5 = sub_CD0BC(v3, v2, v3, v2, 0, 0);
  v6 = sub_CBC08(v5);
  *(v0 + 40) = v6;

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_CC3D4;
  v8 = *(v0 + 56);

  return sub_CC6B0(v8, v6);
}

uint64_t sub_CC3D4()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = *(v4 + 48);
  v6 = *(v4 + 40);
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  sub_30AEC();
  if (!v0)
  {
    v9 = v3;
  }

  return v10(v9);
}

uint64_t sub_CC4E4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return sub_D2B0();
}

uint64_t sub_CC4FC()
{
  sub_D2DC();
  v1 = *(v0 + 16);
  v2 = sub_CCFA8();
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_CC5A0;
  v4 = *(v0 + 40);

  return sub_CC6B0(v4, v2);
}

uint64_t sub_CC5A0()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = *(v4 + 32);
  v6 = *(v4 + 24);
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  sub_30AEC();
  if (!v0)
  {
    v9 = v3;
  }

  return v10(v9);
}

uint64_t sub_CC6B0(char a1, uint64_t a2)
{
  *(v2 + 168) = a2;
  *(v2 + 225) = a1;
  return sub_D2B0();
}

uint64_t sub_CC6C8()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  *(v0 + 184) = 0;
  *(v0 + 192) = _swiftEmptyArrayStorage;
  *(v0 + 176) = v2;
  if (v2)
  {
    sub_10824(v1 + 32, v0 + 16);
    sub_2FFF0();
    v3 = swift_task_alloc();
    *(v0 + 200) = v3;
    *v3 = v0;
    sub_CD1E4(v3);

    return sub_111544();
  }

  else
  {
    v5 = *(v0 + 225);
    sub_16ACF4(38);
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    v12._object = 0x800000000018A5E0;
    v12._countAndFlagsBits = 0xD000000000000010;
    sub_16A744(v12);
    sub_5758(&qword_1E6380, &qword_16DAC0);
    v13._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v13);

    v14._countAndFlagsBits = 0xD000000000000012;
    v14._object = 0x800000000018A600;
    sub_16A744(v14);
    *(v0 + 224) = v5;
    sub_16AD84();
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x20000uLL, 0xD000000000000086, 0x800000000018A510, 0xD000000000000037, 0x800000000018A5A0, 62, v6, v7);

    sub_30AEC();

    return v10(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_CC90C()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 160) = v1;
  *(v2 + 152) = v0;
  v3 = *(v2 + 200);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  return _swift_task_switch(sub_CCA00, 0, 0);
}

uint64_t sub_CCA00()
{
  sub_D2DC();
  sub_2FFF0();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_CCA94;
  v2 = *(v0 + 225);

  return sub_110D28();
}

uint64_t sub_CCA94()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  v6 = *(v4 + 208);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v5 + 216) = v0;

  if (v0)
  {
    v9 = *(v5 + 192);

    v10 = sub_CCF48;
  }

  else
  {
    v11 = *(v5 + 160);
    *(v5 + 226) = v3 & 1;
    *(v5 + 227) = v11;
    v10 = sub_CCBC0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_CCBC0()
{
  v1 = *(v0 + 192);
  if (*(v0 + 226) == 1 && (*(v0 + 227) & 1) != 0)
  {
    sub_10824(v0 + 16, v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 192);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = *(v1 + 16);
      v23 = *(v0 + 192);
      sub_10890C();
      v1 = v24;
    }

    v3 = *(v1 + 16);
    if (v3 >= *(v1 + 24) >> 1)
    {
      sub_10890C();
      v1 = v25;
    }

    v4 = *(v0 + 80);
    v5 = sub_2F8D0(v0 + 56, v4);
    sub_37404();
    v7 = v6;
    v9 = *(v8 + 64) + 15;
    v10 = swift_task_alloc();
    (*(v7 + 16))(v10, v5, v4);
    v11 = *v10;
    *(v0 + 120) = type metadata accessor for WalletCarKey();
    *(v0 + 128) = &off_1D9928;
    *(v0 + 96) = v11;
    *(v1 + 16) = v3 + 1;
    sub_D124((v0 + 96), v1 + 40 * v3 + 32);
    sub_D13C((v0 + 56));
  }

  sub_D13C((v0 + 16));
  v12 = *(v0 + 176);
  v13 = *(v0 + 184) + 1;
  *(v0 + 184) = v13;
  *(v0 + 192) = v1;
  if (v13 == v12)
  {
    v14 = *(v0 + 225);
    sub_16ACF4(38);
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    v27._object = 0x800000000018A5E0;
    v27._countAndFlagsBits = 0xD000000000000010;
    sub_16A744(v27);
    sub_5758(&qword_1E6380, &qword_16DAC0);
    v28._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v28);

    v29._countAndFlagsBits = 0xD000000000000012;
    v29._object = 0x800000000018A600;
    sub_16A744(v29);
    *(v0 + 224) = v14;
    sub_16AD84();
    v15 = *(v0 + 136);
    v16 = *(v0 + 144);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v17 = sub_16A584();
    sub_9DA0(v17, qword_1E65C0);
    v18 = sub_16A9A4();
    sub_386D8(v18, 0x20000uLL, 0xD000000000000086, 0x800000000018A510, 0xD000000000000037, 0x800000000018A5A0, 62, v15, v16);

    sub_30AEC();

    return v19(v1);
  }

  else
  {
    sub_10824(*(v0 + 168) + 40 * v13 + 32, v0 + 16);
    sub_2FFF0();
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    sub_CD1E4();

    return sub_111544();
  }
}

uint64_t sub_CCF48()
{
  sub_D2DC();
  sub_D13C(v0 + 2);
  v1 = v0[1];
  v2 = v0[27];

  return v1();
}

uint64_t sub_CCFD8()
{
  sub_D188(v0 + 16, &qword_1EAFA0, &qword_175890);
  sub_D13C((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_CD04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EAFA0, &qword_175890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_CD0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_16A644();

  v9 = sub_16A644();

  if (a6)
  {
    v10 = sub_16A644();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithVocabularyIdentifier:v8 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

uint64_t sub_CD180(void *a1)
{
  v1 = [a1 vocabularyIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

uint64_t sub_CD208(uint64_t a1)
{
  *(v2 + 568) = v1;
  *(v2 + 560) = a1;
  return sub_D2B0();
}

uint64_t sub_CD220()
{
  sub_D2DC();
  v1 = v0[71];
  sub_10824(v0[70], (v0 + 37));
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&unk_1E9020, &qword_172608);
  swift_dynamicCast();
  v2 = *sub_D084((v1 + 24), *(v1 + 48));
  swift_task_alloc();
  sub_D3E0();
  v0[72] = v3;
  *v3 = v4;
  v3[1] = sub_CD314;

  return sub_13AB58((v0 + 42), 0);
}

uint64_t sub_CD314()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CD410()
{
  v1 = v0[45];
  v2 = v0[46];
  sub_D084(v0 + 42, v1);
  v3 = *(v2 + 56);
  v8 = (v3 + *v3);
  v4 = v3[1];
  swift_task_alloc();
  sub_D3E0();
  v0[74] = v5;
  *v5 = v6;
  v5[1] = sub_CD538;

  return (v8)(v0 + 52, v1, v2);
}

uint64_t sub_CD538()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CD634()
{
  sub_D2DC();
  v1 = *(v0 + 584);
  sub_CECF4();

  return v2();
}

uint64_t sub_CD688()
{
  if (*(v0 + 440))
  {
    sub_D124((v0 + 416), v0 + 376);
    v1 = *(v0 + 360);
    v2 = *(v0 + 368);
    sub_D084((v0 + 336), v1);
    v3 = *(v2 + 88);
    v12 = (v3 + *v3);
    v4 = v3[1];
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 608) = v5;
    *v5 = v6;
    v5[1] = sub_CD860;

    return v12(v0 + 496, v1, v2);
  }

  else
  {
    sub_CEBE8(v0 + 416, &qword_1E6060);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    v8 = sub_5A144();
    sub_CED14(v8, v9);
    *v10 = 0xD000000000000040;
    v10[1] = 0x800000000018A800;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 336));
    sub_CECF4();

    return v11();
  }
}

uint64_t sub_CD860()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 616) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CD95C()
{
  if (!*(v0 + 520))
  {
    sub_D13C((v0 + 376));
    sub_CEBE8(v0 + 496, &qword_1EA118);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    v9 = sub_5A144();
    sub_CED14(v9, v10);
    *v11 = 0xD000000000000040;
    v11[1] = 0x800000000018A800;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 336));
    sub_CECF4();
    sub_CED20();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 568);
  sub_D124((v0 + 496), v0 + 456);
  sub_10824(v0 + 376, v0 + 16);
  sub_10824(v0 + 456, v0 + 56);
  swift_beginAccess();
  sub_B176C(v0 + 16, v1 + 64);
  swift_endAccess();
  v2 = sub_D084((v0 + 256), *(v0 + 280));
  if (sub_CEC44(*v2))
  {
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 640) = v3;
    *v3 = v4;
    v3[1] = sub_CDE2C;
    v5 = *(v0 + 568);
    sub_CED20();

    return sub_CE12C(v6);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    sub_386D8(v15, 0x800uLL, 0xD00000000000008ELL, 0x800000000018A730, 0xD000000000000012, 0x8000000000184BB0, 35, 0xD000000000000025, 0x800000000018A850);
    sub_B17DC(v1 + 64, v0 + 96);
    if (*(v0 + 120) == 1)
    {
      sub_CEBE8(v0 + 96, &qword_1EA120);
      [objc_allocWithZone(DialogExecutionResult) init];
      sub_CECB4();
      sub_CED20();

      __asm { BRAA            X2, X16 }
    }

    sub_B184C(v0 + 96, v0 + 176);
    sub_CEBE8(v0 + 96, &qword_1EA120);
    v18 = swift_task_alloc();
    *(v0 + 624) = v18;
    *v18 = v0;
    v18[1] = sub_CDCB8;
    sub_CED20();

    return sub_10CBE8();
  }
}

uint64_t sub_CDCB8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 624);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 632) = v0;

  sub_B18A8(v3 + 176);
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CDDC0()
{
  sub_D2DC();
  [objc_allocWithZone(DialogExecutionResult) init];
  v0 = sub_CECB4();

  return v1(v0);
}

uint64_t sub_CDE2C(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 640);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v5 + 648) = v1;

  if (!v1)
  {
    *(v5 + 656) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_CDF40()
{
  sub_D2DC();
  v1 = *(v0 + 656);
  v2 = sub_CECB4();

  return v3(v2);
}

uint64_t sub_CDF94()
{
  sub_D2DC();
  sub_D13C((v0 + 336));
  v1 = *(v0 + 600);
  sub_CECF4();

  return v2();
}

uint64_t sub_CDFF0()
{
  sub_D2DC();
  sub_D13C(v0 + 47);
  sub_D13C(v0 + 42);
  v1 = v0[77];
  sub_CECF4();

  return v2();
}

uint64_t sub_CE054()
{
  sub_D2DC();
  sub_D13C(v0 + 57);
  sub_D13C(v0 + 47);
  sub_D13C(v0 + 42);
  v1 = v0[79];
  sub_CECF4();

  return v2();
}

uint64_t sub_CE0C0()
{
  sub_D2DC();
  sub_D13C(v0 + 57);
  sub_D13C(v0 + 47);
  sub_D13C(v0 + 42);
  v1 = v0[81];
  sub_CECF4();

  return v2();
}

uint64_t sub_CE12C(uint64_t a1)
{
  *(v2 + 640) = v1;
  *(v2 + 632) = a1;
  return sub_D2B0();
}

uint64_t sub_CE144()
{
  v1 = *(v0 + 632);
  v2 = sub_D084(v1, v1[3]);
  v3 = *v2;
  if (!sub_8E748(v2) || (v4 = sub_D084(*(v0 + 632), v1[3]), v5 = *v4, v6 = sub_8E748(v4), v7 = sub_5B994(v6), *(v0 + 681) = v7, v7 == 6))
  {
    type metadata accessor for CarCommandsError();
    sub_11D28();
    v8 = sub_5A144();
    sub_CED14(v8, v9);
    *v10 = 0xD000000000000023;
    v10[1] = 0x800000000018A6D0;
    goto LABEL_4;
  }

  v14 = *(v0 + 640);
  swift_beginAccess();
  sub_B17DC(v14 + 64, v0 + 16);
  if (*(v0 + 40) == 1)
  {
    sub_CEBE8(v0 + 16, &qword_1EA120);
    v15 = *(v0 + 681);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v17 = v16;
    sub_16ACF4(49);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    v23._countAndFlagsBits = 0xD00000000000002FLL;
    v23._object = 0x800000000018A700;
    sub_16A744(v23);
    *(v0 + 680) = v15;
    sub_16AD84();
    v18 = *(v0 + 608);
    *v17 = *(v0 + 600);
    v17[1] = v18;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v11 = *(v0 + 8);
    sub_CED20();

    __asm { BRAA            X1, X16 }
  }

  sub_B184C(v0 + 16, v0 + 96);
  sub_CEBE8(v0 + 16, &qword_1EA120);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 648) = v19;
  *v19 = v20;
  v19[1] = sub_CE3D0;
  sub_CED20();

  return sub_10D380();
}

uint64_t sub_CE3D0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 648);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 656) = v0;

  sub_B18A8(v3 + 96);
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CE4D8()
{
  v1 = *(v0 + 392);
  if (v1)
  {
    *(v0 + 336) = *(v0 + 384);
    *(v0 + 344) = v1;
    v2 = *(v0 + 416);
    *(v0 + 352) = *(v0 + 400);
    *(v0 + 368) = v2;
    sub_16ACF4(28);
    *(v0 + 616) = 0;
    *(v0 + 624) = 0xE000000000000000;
    v20._object = 0x800000000018A7E0;
    v20._countAndFlagsBits = 0xD00000000000001ALL;
    sub_16A744(v20);
    v3 = *(v0 + 352);
    *(v0 + 432) = *(v0 + 336);
    *(v0 + 448) = v3;
    *(v0 + 464) = *(v0 + 368);
    sub_16AD84();
    v4 = *(v0 + 616);
    v5 = *(v0 + 624);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v6 = *(v0 + 640);
    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_386D8(v8, 0x800uLL, 0xD00000000000008ELL, 0x800000000018A730, 0xD00000000000001FLL, 0x800000000018A7C0, 54, v4, v5);

    sub_B17DC(v6 + 64, v0 + 176);
    if (*(v0 + 200) == 1)
    {
      *(v0 + 552) = *(v0 + 336);
      sub_CEB94(v0 + 552);
      *(v0 + 536) = *(v0 + 368);
      sub_CEBE8(v0 + 536, &qword_1E5FA0);
      sub_CEBE8(v0 + 176, &qword_1EA120);
      v9 = [objc_allocWithZone(DialogExecutionResult) init];
      v10 = *(v0 + 8);

      return v10(v9);
    }

    else
    {
      sub_B184C(v0 + 176, v0 + 256);
      sub_CEBE8(v0 + 176, &qword_1EA120);
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 664) = v17;
      *v17 = v18;
      v17[1] = sub_CE880;

      return sub_10D8F8(v0 + 336);
    }
  }

  else
  {
    v12 = *(v0 + 681);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v14 = v13;
    sub_16ACF4(49);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD00000000000002FLL;
    v21._object = 0x800000000018A700;
    sub_16A744(v21);
    *(v0 + 680) = v12;
    sub_16AD84();
    v15 = *(v0 + 608);
    *v14 = *(v0 + 600);
    v14[1] = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}