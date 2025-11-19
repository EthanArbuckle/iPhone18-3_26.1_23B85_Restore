uint64_t sub_E1C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE64;

  return sub_DF84C(a1, a2, a3);
}

uint64_t sub_E1CDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_DE368(a1, a2);
}

uint64_t sub_E1D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = _s18NeedsValueStrategyCMa_0();
  *v9 = v4;
  v9[1] = sub_1CE64;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_E1E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = _s18NeedsValueStrategyCMa_0();
  *v9 = v4;
  v9[1] = sub_1CE64;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_E1F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = _s18NeedsValueStrategyCMa_0();
  *v13 = v6;
  v13[1] = sub_1CE64;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_E1FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = _s18NeedsValueStrategyCMa_0();
  *v15 = v7;
  v15[1] = sub_1CE64;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_E20C8()
{
  result = qword_13AA90;
  if (!qword_13AA90)
  {
    _s18NeedsValueStrategyCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AA90);
  }

  return result;
}

uint64_t sub_E211C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137500, &qword_107E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E21EC()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v25 - v3;
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10B4F0;
  *(v5 + 32) = 7368801;
  *(v5 + 40) = 0xE300000000000000;
  v6 = *v0;
  if (*v0)
  {
    v7 = sub_106100();
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 72) = v7;
  *(v5 + 80) = 0x6E69577473726966;
  *(v5 + 88) = 0xEF657A6953776F64;
  if (v0[2])
  {
    v9 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
    v10 = 0;
  }

  else
  {
    v10 = v0[1];
    v9 = &type metadata for Double;
  }

  *(v5 + 96) = v10;
  *(v5 + 120) = v9;
  strcpy((v5 + 128), "isConclusion");
  *(v5 + 141) = 0;
  *(v5 + 142) = -5120;
  *(v5 + 144) = *(v0 + 17);
  *(v5 + 168) = &type metadata for Bool;
  strcpy((v5 + 176), "isFirstWindow");
  *(v5 + 190) = -4864;
  *(v5 + 192) = *(v0 + 18);
  *(v5 + 216) = &type metadata for Bool;
  strcpy((v5 + 224), "isLastWindow");
  *(v5 + 237) = 0;
  *(v5 + 238) = -5120;
  *(v5 + 240) = *(v0 + 19);
  *(v5 + 264) = &type metadata for Bool;
  *(v5 + 272) = 0xD000000000000016;
  *(v5 + 280) = 0x800000000010DAF0;
  *(v5 + 288) = *(v0 + 20);
  *(v5 + 312) = &type metadata for Bool;
  *(v5 + 320) = 0x6D6F727065527369;
  *(v5 + 328) = 0xEA00000000007470;
  *(v5 + 336) = *(v0 + 21);
  *(v5 + 360) = &type metadata for Bool;
  *(v5 + 368) = 0x736D657469;
  *(v5 + 376) = 0xE500000000000000;
  v11 = v0[3];
  v12 = sub_25E4(&qword_137B40, &unk_108390);
  *(v5 + 384) = v11;
  *(v5 + 408) = v12;
  *(v5 + 416) = 0xD000000000000013;
  *(v5 + 424) = 0x800000000010DB10;
  if (v0[5])
  {
    v13 = 0;
    *(v5 + 440) = 0;
    *(v5 + 448) = 0;
    v14 = 0;
  }

  else
  {
    v14 = v0[4];
    v13 = &type metadata for Double;
  }

  *(v5 + 432) = v14;
  *(v5 + 456) = v13;
  *(v5 + 464) = 0x6574496C61746F74;
  *(v5 + 472) = 0xEA0000000000736DLL;
  if (v0[7])
  {
    v15 = 0;
    *(v5 + 488) = 0;
    *(v5 + 496) = 0;
    v16 = 0;
  }

  else
  {
    v16 = v0[6];
    v15 = &type metadata for Double;
  }

  *(v5 + 480) = v16;
  *(v5 + 504) = v15;
  *(v5 + 512) = 0xD000000000000018;
  *(v5 + 520) = 0x800000000010E730;
  v17 = type metadata accessor for AlarmBaseDisambiguationParameters(0);
  sub_14994(v0 + *(v17 + 56), v4, &qword_137598, &unk_107EB0);
  v18 = sub_106160();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v4, 1, v18) == 1)
  {

    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v5 + 528) = 0u;
    *(v5 + 544) = 0u;
  }

  else
  {
    *(v5 + 552) = v18;
    v20 = sub_1A924((v5 + 528));
    (*(v19 + 32))(v20, v4, v18);
  }

  *(v5 + 560) = 0x6953776F646E6977;
  *(v5 + 568) = 0xEA0000000000657ALL;
  v21 = (v0 + *(v17 + 60));
  if (v21[1])
  {
    v22 = 0;
    *(v5 + 584) = 0u;
    v23 = 0;
  }

  else
  {
    v23 = *v21;
    v22 = &type metadata for Double;
  }

  *(v5 + 576) = v23;
  *(v5 + 600) = v22;
  return v5;
}

uint64_t sub_E2634()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  sub_25E4(&qword_137880, &unk_108290);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_109690;
  *(v8 + 32) = 0xD000000000000010;
  *(v8 + 40) = 0x800000000010CF20;
  sub_14994(v0, v7, &qword_137598, &unk_107EB0);
  v9 = sub_106160();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_16F70(v7, &qword_137598, &unk_107EB0);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    v12 = sub_1A924((v8 + 48));
    (*(v10 + 32))(v12, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000014;
  *(v8 + 88) = 0x800000000010D320;
  v13 = type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters(0);
  sub_14994(v0 + *(v13 + 20), v5, &qword_137598, &unk_107EB0);
  if (v11(v5, 1, v9) == 1)
  {
    sub_16F70(v5, &qword_137598, &unk_107EB0);
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
  }

  else
  {
    *(v8 + 120) = v9;
    v14 = sub_1A924((v8 + 96));
    (*(v10 + 32))(v14, v5, v9);
  }

  *(v8 + 128) = 0x656369766564;
  *(v8 + 136) = 0xE600000000000000;
  v15 = *(v0 + *(v13 + 24));
  if (v15)
  {
    v16 = sub_1061B0();
  }

  else
  {
    v16 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v15;
  *(v8 + 168) = v16;

  return v8;
}

uint64_t sub_E28E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters(0);
  v2[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_E29C0, 0, 0);
}

uint64_t sub_E29C0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v20 = v0[4];
  v4 = v0[3];
  v5 = sub_106160();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 1, 1, v5);
  v7 = *(v1 + 20);
  *(v2 + v7) = 0;
  v8 = v4[4];
  sub_1A8E0(v4, v4[3]);
  sub_106710();
  sub_1A814(v3, v2);
  v9 = v4[4];
  sub_1A8E0(v4, v4[3]);
  v10 = sub_106720();
  *(v2 + v7) = v10;
  sub_25E4(&qword_137880, &unk_108290);
  v11 = swift_allocObject();
  v0[8] = v11;
  *(v11 + 16) = xmmword_1094F0;
  *(v11 + 32) = 0xD000000000000014;
  *(v11 + 40) = 0x800000000010D320;
  sub_14994(v2, v20, &qword_137598, &unk_107EB0);
  v12 = (*(v6 + 48))(v20, 1, v5);
  v13 = v0[4];
  if (v12 == 1)
  {
    sub_16F70(v0[4], &qword_137598, &unk_107EB0);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v5;
    v14 = sub_1A924((v11 + 48));
    (*(v6 + 32))(v14, v13, v5);
  }

  *(v11 + 80) = 0x656369766564;
  *(v11 + 88) = 0xE600000000000000;
  v15 = 0;
  if (v10)
  {
    v15 = sub_1061B0();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  *(v11 + 96) = v10;
  *(v11 + 120) = v15;
  v16 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v21 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_E2C88;
  v18 = v0[2];

  return v21(0xD000000000000028, 0x800000000010E750, v11);
}

uint64_t sub_E2C88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_E2E78;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_E2DD4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_E2DD4()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_E3E24(v0[7], type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters);

  v3 = v0[1];
  v4 = v0[11];

  return v3(v4);
}

uint64_t sub_E2E78()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_E3E24(v0[7], type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters);

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_E2F18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_E2FB0, 0, 0);
}

uint64_t sub_E2FB0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_106160();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + *(v2 + 20), 1, 1, v5);
  *(v1 + *(v2 + 24)) = 0;
  v4(v1);
  v7 = sub_E2634();
  v0[7] = v7;
  v8 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_E3118;
  v10 = v0[4];

  return v12(0xD000000000000026, 0x800000000010E700, v7);
}

uint64_t sub_E3118(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_E32EC;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_E3264;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_E3264()
{
  sub_E3E24(v0[6], type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_E32EC()
{
  sub_E3E24(v0[6], type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_E3370(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

uint64_t sub_E3574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25E4(&qword_137598, &unk_107EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E3644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25E4(&qword_137598, &unk_107EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E36F4()
{
  sub_E3AFC(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_A90C8();
    if (v1 <= 0x3F)
    {
      sub_E3AFC(319, &qword_137A18, type metadata accessor for AlarmAlarm, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_E3AFC(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_E386C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_E3954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_E3A18()
{
  sub_E3AFC(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_E3AFC(319, &unk_13AC10, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_E3AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_E3B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_E3C5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_E3D40()
{
  sub_E3AFC(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_E3AFC(319, &unk_13AC10, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_E3E24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*sub_E3EA0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_E3ED0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*sub_E3F08(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_E3F6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_E3FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1064A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_E4048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1064A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for UnsupportedAppNotInstalledPatternExecutor()
{
  result = qword_13AD30;
  if (!qword_13AD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E4104()
{
  result = sub_1064A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_E4170(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(sub_106200() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_E4204, 0, 0);
}

uint64_t sub_E4204()
{
  v1 = v0[10];
  v11 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters(0);
  v0[5] = v4;
  v0[6] = sub_E4D14(&qword_13AD68, type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters);
  v5 = sub_1A924(v0 + 2);
  v6 = sub_106160();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v7((v5 + *(v4 + 20)), 1, 1, v6);
  *(v5 + *(v4 + 24)) = 0;
  v3(v0 + 2);
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[11] = sub_1060D0();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *(v8 + 16) = v0 + 2;
  *(v8 + 24) = v11;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_E43E4;

  return sub_E2F18(sub_E48D4, v8);
}

uint64_t sub_E43E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_E4590;
  }

  else
  {
    v8 = v4[11];
    v9 = v4[12];

    v4[15] = a1;

    v7 = sub_E451C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_E451C()
{
  v1 = v0[10];
  sub_2738(v0 + 2);

  v2 = v0[1];
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_E4590()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  sub_2738(v0 + 2);

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_E4610(uint64_t a1, void *a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = a2[4];
  sub_1A8E0(a2, a2[3]);
  sub_106710();
  v9 = type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters(0);
  sub_1A814(v7, a1 + *(v9 + 20));
  v10 = a2[4];
  sub_1A8E0(a2, a2[3]);
  v11 = sub_106720();
  v12 = *(v9 + 24);
  v13 = *(a1 + v12);

  *(a1 + v12) = v11;
  sub_106490();
  sub_106E50();

  v14 = sub_106160();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  return sub_1A814(v7, a1);
}

uint64_t sub_E477C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_56FA4;

  return sub_E4170(a1, a2);
}

uint64_t sub_E4820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_57B60;

  return (sub_E48DC)(a1, a2);
}

uint64_t sub_E48DC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(sub_106200() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_E496C, 0, 0);
}

uint64_t sub_E496C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters(0);
  v0[5] = v4;
  v0[6] = sub_E4D14(&qword_13AD70, type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters);
  v5 = sub_1A924(v0 + 2);
  v6 = sub_106160();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  *(v5 + *(v4 + 20)) = 0;
  v3(v0 + 2);
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v7 = sub_1060D0();
  v0[10] = v7;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_E4AFC;

  return sub_E28E8(v7, (v0 + 2));
}

uint64_t sub_E4AFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_E4CA0;
  }

  else
  {
    v8 = *(v4 + 80);

    *(v4 + 104) = a1;
    v7 = sub_E4C2C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_E4C2C()
{
  v1 = v0[9];
  sub_2738(v0 + 2);

  v2 = v0[1];
  v3 = v0[13];

  return v2(v3);
}

uint64_t sub_E4CA0()
{
  v2 = v0[9];
  v1 = v0[10];

  sub_2738(v0 + 2);

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_E4D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E4D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E4E40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s20HandleIntentStrategyVMa_5()
{
  result = qword_13ADE8;
  if (!qword_13ADE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E4F3C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13AD78);
  sub_135C4(v0, qword_13AD78);
  return sub_106A80();
}

uint64_t sub_E4F88(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_136EA0 != -1)
  {
    swift_once();
  }

  v6 = sub_106D20();
  sub_135C4(v6, qword_13AD78);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "SnoozeAlarm.HandleIntentStrategy.makeIntentExecutionBehavior is called.", v9, 2u);
  }

  v10 = v3 + *(_s20HandleIntentStrategyVMa_5() + 20);

  return sub_169D8(a1, a2, v10);
}

uint64_t sub_E509C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_25E4(&qword_13AE28, &qword_10B898) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_106CC0();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_106BF0();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = *(*(sub_25E4(&qword_1374F0, &qword_1080F0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = *(*(sub_25E4(&qword_13AE30, &unk_10B8A0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = sub_1046B0();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_E52C8, 0, 0);
}

uint64_t sub_E52C8()
{
  sub_104CA0();
  v1 = v0[6];
  sub_1A8E0(v0 + 2, v0[5]);
  sub_105130();
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[19];
    v5 = v0[17];
    sub_2738(v0 + 2);
    sub_104680();

    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      v6 = v0[17];
      v7 = &unk_13AE30;
      v8 = &unk_10B8A0;
    }

    else
    {
      v9 = v0[16];
      v10 = v0[8];
      (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
      v11 = _s20HandleIntentStrategyVMa_5();
      sub_517C8(v10 + *(v11 + 20), v9);
      v12 = sub_106630();
      v13 = *(v12 - 8);
      v14 = (*(v13 + 48))(v9, 1, v12);
      v15 = v0[21];
      if (v14 != 1)
      {
        v31 = v0[19];
        v41 = v0[20];
        v42 = v0[18];
        v33 = v0[15];
        v32 = v0[16];
        v34 = v0[14];
        v35 = v0[11];
        v43 = v0[12];
        v44 = v0[10];
        v45 = v0[9];
        v46 = v0[21];
        v47 = v0[13];
        v48 = v0[7];
        v36 = sub_106620();
        (*(v13 + 8))(v32, v12);
        sub_106C90();
        sub_106C80();
        v40 = *(sub_25E4(&qword_13AE40, &qword_10B8C0) + 64);
        sub_25E4(&qword_137DD0, &unk_108920);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_108470;
        *(v37 + 32) = v36;
        *v33 = v37;
        v33[1] = 0;
        (*(v31 + 16))(v41, v15, v42);
        (*(v35 + 104))(v43, enum case for ExecutionInfo.Action.alarmSnooze(_:), v44);
        v38 = sub_106CB0();
        (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
        v39 = v36;
        sub_106CA0();
        (*(v34 + 104))(v33, enum case for CrossDeviceCommandExecution.started(_:), v47);
        sub_106C70();

        (*(v34 + 8))(v33, v47);
        v48[3] = sub_105430();
        v48[4] = &protocol witness table for AceOutput;
        sub_1A924(v48);
        sub_105420();

        (*(v31 + 8))(v46, v42);
        goto LABEL_13;
      }

      v16 = v0[16];
      (*(v0[19] + 8))(v0[21], v0[18]);
      v7 = &qword_1374F0;
      v8 = &qword_1080F0;
      v6 = v16;
    }

    sub_16F70(v6, v7, v8);
  }

  else
  {
    sub_2738(v0 + 2);
  }

  if (qword_136EA0 != -1)
  {
    swift_once();
  }

  v17 = sub_106D20();
  sub_135C4(v17, qword_13AD78);
  v18 = sub_106D10();
  v19 = sub_106FC0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "SnoozeAlarm.HandleIntentStrategy.makePreHandleIntentOutput() returning - selectedDevice not found in halInfo", v20, 2u);
  }

  v21 = v0[7];

  v21[3] = sub_105430();
  v21[4] = &protocol witness table for AceOutput;
  sub_1A924(v21);
  sub_105420();
LABEL_13:
  v23 = v0[20];
  v22 = v0[21];
  v25 = v0[16];
  v24 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[9];

  v29 = v0[1];

  return v29();
}

uint64_t sub_E5808(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = *(*(sub_25E4(&qword_13AE28, &qword_10B898) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v5 = sub_106CC0();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v8 = sub_106BF0();
  v3[35] = v8;
  v9 = *(v8 - 8);
  v3[36] = v9;
  v10 = *(v9 + 64) + 15;
  v3[37] = swift_task_alloc();
  v11 = sub_106BE0();
  v3[38] = v11;
  v12 = *(v11 - 8);
  v3[39] = v12;
  v13 = *(v12 + 64) + 15;
  v3[40] = swift_task_alloc();
  v14 = *(*(sub_25E4(&qword_13AE30, &unk_10B8A0) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v15 = sub_1046B0();
  v3[42] = v15;
  v16 = *(v15 - 8);
  v3[43] = v16;
  v17 = *(v16 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v18 = sub_104D60();
  v3[46] = v18;
  v19 = *(v18 - 8);
  v3[47] = v19;
  v20 = *(v19 + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v21 = sub_106D20();
  v3[51] = v21;
  v22 = *(v21 - 8);
  v3[52] = v22;
  v23 = *(v22 + 64) + 15;
  v3[53] = swift_task_alloc();
  v24 = sub_106300();
  v3[54] = v24;
  v25 = *(v24 - 8);
  v3[55] = v25;
  v26 = *(v25 + 64) + 15;
  v3[56] = swift_task_alloc();
  v27 = sub_106320();
  v3[57] = v27;
  v28 = *(v27 - 8);
  v3[58] = v28;
  v29 = *(v28 + 64) + 15;
  v3[59] = swift_task_alloc();
  v30 = *(*(sub_25E4(&qword_1374F0, &qword_1080F0) - 8) + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v31 = sub_104FF0();
  v3[62] = v31;
  v32 = *(v31 - 8);
  v3[63] = v32;
  v33 = *(v32 + 64) + 15;
  v3[64] = swift_task_alloc();

  return _swift_task_switch(sub_E5C84, 0, 0);
}

uint64_t sub_E5C84()
{
  if (qword_136EA0 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(v0[51], qword_13AD78);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SnoozeAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  v5 = v0[29];

  v0[65] = sub_25E4(&qword_139638, &unk_109D20);
  v6 = sub_105170();
  v7 = [v6 alarmId];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v0[61];
  v9 = v0[30];
  v10 = sub_106E20();
  v12 = v11;

  v13 = _s20HandleIntentStrategyVMa_5();
  sub_517C8(v9 + *(v13 + 20), v8);
  v14 = sub_106630();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v8, 1, v14);
  v17 = v0[61];
  if (v16 != 1)
  {
    v18 = sub_106520();
    (*(v15 + 8))(v17, v14);
    if (!v18)
    {
      goto LABEL_11;
    }

LABEL_10:
    v19 = v0[64];
    sub_104FE0();
    goto LABEL_12;
  }

  sub_16F70(v0[61], &qword_1374F0, &qword_1080F0);
LABEL_11:
  v20 = v0[64];
  sub_25E4(&qword_1376D0, &unk_1080E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_107FC0;
  *(inited + 32) = v10;
  v22 = inited + 32;
  *(inited + 40) = v12;
  sub_BD348(inited, v20);
  swift_setDeallocating();
  sub_1CDA8(v22);
LABEL_12:
  v23 = v0[59];
  v24 = v0[53];
  v25 = v0[51];
  v26 = v0[52];
  v27 = v0[29];
  (*(v0[55] + 104))(v0[56], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[54]);
  (*(v26 + 16))(v24, v1, v25);
  mach_absolute_time();
  sub_106330();
  v28 = sub_105150();
  v29 = sub_106880();

  if (v29 == 100)
  {
    if (qword_136D20 != -1)
    {
      swift_once();
    }

    v34 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v40 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v35 = swift_task_alloc();
    v0[72] = v35;
    *v35 = v0;
    v35[1] = sub_E6B68;
    v36 = 0x4E23657A6F6F6E53;
    v37 = 0xEF676E697269466FLL;
  }

  else
  {
    if (v29 == 4)
    {
      if (qword_136D20 != -1)
      {
        swift_once();
      }

      v30 = v0[30];
      v31 = swift_task_alloc();
      v0[66] = v31;
      *(v31 + 16) = v30;
      v32 = swift_task_alloc();
      v0[67] = v32;
      *v32 = v0;
      v32[1] = sub_E6204;

      return sub_7D400(sub_E8FBC, v31);
    }

    if (qword_136D20 != -1)
    {
      swift_once();
    }

    v38 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v40 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v39 = swift_task_alloc();
    v0[77] = v39;
    *v39 = v0;
    v39[1] = sub_E761C;
    v36 = 0x4523657A6F6F6E53;
    v37 = 0xEC000000726F7272;
  }

  return (v40)(v36, v37, _swiftEmptyArrayStorage);
}

uint64_t sub_E6204(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *(*v2 + 528);
  v7 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v8 = sub_E80D0;
  }

  else
  {
    *(v4 + 552) = a1;
    v8 = sub_E6350;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_E6350()
{
  v1 = v0[50];
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_E6404;
  v4 = v0[69];
  v5 = v0[64];
  v6 = v0[59];
  v7 = v0[50];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 23, v7, v5, v6, 0);
}

uint64_t sub_E6404()
{
  v2 = *(*v1 + 560);
  v3 = *(*v1 + 552);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 376);
  v6 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 568) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_E8244;
  }

  else
  {
    v7 = sub_E6594;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_E6594()
{
  sub_1AD44((v0 + 184), *(v0 + 224));
  sub_104CA0();
  v1 = *(v0 + 136);
  sub_1A8E0((v0 + 104), *(v0 + 128));
  sub_105130();
  if (!v2)
  {
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v14 = *(v0 + 496);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v13 + 8))(v12, v14);
    sub_2738((v0 + 104));
    goto LABEL_11;
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 328);
  sub_2738((v0 + 104));
  sub_104680();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = *(v0 + 504);
    v6 = *(v0 + 512);
    v8 = *(v0 + 496);
    v9 = *(v0 + 328);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v7 + 8))(v6, v8);
    v10 = &qword_13AE30;
    v11 = &unk_10B8A0;
LABEL_7:
    sub_16F70(v9, v10, v11);
    goto LABEL_11;
  }

  v15 = *(v0 + 480);
  v16 = *(v0 + 240);
  (*(*(v0 + 344) + 32))(*(v0 + 360), *(v0 + 328), *(v0 + 336));
  v17 = _s20HandleIntentStrategyVMa_5();
  sub_517C8(v16 + *(v17 + 20), v15);
  v18 = sub_106630();
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
  {
    v20 = *(v0 + 504);
    v19 = *(v0 + 512);
    v21 = *(v0 + 496);
    v22 = *(v0 + 472);
    v9 = *(v0 + 480);
    v23 = *(v0 + 456);
    v24 = *(v0 + 464);
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
    (*(v24 + 8))(v22, v23);
    (*(v20 + 8))(v19, v21);
    v10 = &qword_1374F0;
    v11 = &qword_1080F0;
    goto LABEL_7;
  }

  v25 = *(v0 + 520);
  v67 = *(v0 + 512);
  v63 = *(v0 + 504);
  v65 = *(v0 + 496);
  v58 = *(v0 + 464);
  v59 = *(v0 + 456);
  v61 = *(v0 + 472);
  v26 = *(v0 + 352);
  v69 = *(v0 + 360);
  v27 = *(v0 + 344);
  v53 = *(v0 + 336);
  v28 = *(v0 + 312);
  v29 = *(v0 + 320);
  v30 = *(v0 + 296);
  v52 = *(v0 + 304);
  v31 = *(v0 + 288);
  v32 = *(v0 + 264);
  v54 = *(v0 + 272);
  v55 = *(v0 + 256);
  v56 = *(v0 + 248);
  v57 = *(v0 + 280);
  v33 = *(v0 + 232);
  sub_16F70(*(v0 + 480), &qword_1374F0, &qword_1080F0);
  v34 = sub_105150();
  sub_106880();

  v35 = sub_1068A0();
  v36 = sub_1068A0();
  v37 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if (v35 != v36)
  {
    v37 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  (*(v28 + 104))(v29, *v37, v52);
  sub_106C90();
  sub_106C80();
  v51 = *(sub_25E4(&qword_13AE38, &qword_10B8B0) + 48);
  (*(v27 + 16))(v26, v69, v53);
  (*(v32 + 104))(v54, enum case for ExecutionInfo.Action.alarmSnooze(_:), v55);
  v38 = sub_106CB0();
  (*(*(v38 - 8) + 56))(v56, 1, 1, v38);
  sub_106CA0();
  (*(v28 + 16))(v30 + v51, v29, v52);
  (*(v31 + 104))(v30, enum case for CrossDeviceCommandExecution.ended(_:), v57);
  sub_106C70();

  (*(v31 + 8))(v30, v57);
  (*(v28 + 8))(v29, v52);
  (*(v27 + 8))(v69, v53);
  (*(v58 + 8))(v61, v59);
  (*(v63 + 8))(v67, v65);
LABEL_11:
  v39 = *(v0 + 512);
  v41 = *(v0 + 480);
  v40 = *(v0 + 488);
  v42 = *(v0 + 472);
  v43 = *(v0 + 448);
  v44 = *(v0 + 424);
  v46 = *(v0 + 392);
  v45 = *(v0 + 400);
  v47 = *(v0 + 384);
  v48 = *(v0 + 360);
  v60 = *(v0 + 352);
  v62 = *(v0 + 328);
  v64 = *(v0 + 320);
  v66 = *(v0 + 296);
  v68 = *(v0 + 272);
  v70 = *(v0 + 248);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_E6B68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 576);
  v6 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {
    v7 = sub_E6ED4;
  }

  else
  {
    *(v4 + 592) = a1;
    v7 = sub_E6C90;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_E6C90()
{
  v1 = v0[49];
  sub_104D20();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[75] = v3;
  *v3 = v0;
  v3[1] = sub_E6D44;
  v4 = v0[74];
  v5 = v0[64];
  v6 = v0[59];
  v7 = v0[49];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 18, v7, v5, v6, 0);
}

uint64_t sub_E6D44()
{
  v2 = *(*v1 + 600);
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 392);
  v5 = *(*v1 + 376);
  v6 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 608) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_E83B8;
  }

  else
  {
    v7 = sub_E7048;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_E6ED4()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[73];
  v4 = v0[64];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[53];
  v10 = v0[49];
  v11 = v0[50];
  v12 = v0[48];
  v13 = v0[45];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[34];
  v21 = v0[31];

  v14 = v0[1];

  return v14();
}

uint64_t sub_E7048()
{
  sub_1AD44((v0 + 144), *(v0 + 224));
  sub_104CA0();
  v1 = *(v0 + 136);
  sub_1A8E0((v0 + 104), *(v0 + 128));
  sub_105130();
  if (!v2)
  {
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v14 = *(v0 + 496);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v13 + 8))(v12, v14);
    sub_2738((v0 + 104));
    goto LABEL_11;
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 328);
  sub_2738((v0 + 104));
  sub_104680();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = *(v0 + 504);
    v6 = *(v0 + 512);
    v8 = *(v0 + 496);
    v9 = *(v0 + 328);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v7 + 8))(v6, v8);
    v10 = &qword_13AE30;
    v11 = &unk_10B8A0;
LABEL_7:
    sub_16F70(v9, v10, v11);
    goto LABEL_11;
  }

  v15 = *(v0 + 480);
  v16 = *(v0 + 240);
  (*(*(v0 + 344) + 32))(*(v0 + 360), *(v0 + 328), *(v0 + 336));
  v17 = _s20HandleIntentStrategyVMa_5();
  sub_517C8(v16 + *(v17 + 20), v15);
  v18 = sub_106630();
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
  {
    v20 = *(v0 + 504);
    v19 = *(v0 + 512);
    v21 = *(v0 + 496);
    v22 = *(v0 + 472);
    v9 = *(v0 + 480);
    v23 = *(v0 + 456);
    v24 = *(v0 + 464);
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
    (*(v24 + 8))(v22, v23);
    (*(v20 + 8))(v19, v21);
    v10 = &qword_1374F0;
    v11 = &qword_1080F0;
    goto LABEL_7;
  }

  v25 = *(v0 + 520);
  v67 = *(v0 + 512);
  v63 = *(v0 + 504);
  v65 = *(v0 + 496);
  v58 = *(v0 + 464);
  v59 = *(v0 + 456);
  v61 = *(v0 + 472);
  v26 = *(v0 + 352);
  v69 = *(v0 + 360);
  v27 = *(v0 + 344);
  v53 = *(v0 + 336);
  v28 = *(v0 + 312);
  v29 = *(v0 + 320);
  v30 = *(v0 + 296);
  v52 = *(v0 + 304);
  v31 = *(v0 + 288);
  v32 = *(v0 + 264);
  v54 = *(v0 + 272);
  v55 = *(v0 + 256);
  v56 = *(v0 + 248);
  v57 = *(v0 + 280);
  v33 = *(v0 + 232);
  sub_16F70(*(v0 + 480), &qword_1374F0, &qword_1080F0);
  v34 = sub_105150();
  sub_106880();

  v35 = sub_1068A0();
  v36 = sub_1068A0();
  v37 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if (v35 != v36)
  {
    v37 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  (*(v28 + 104))(v29, *v37, v52);
  sub_106C90();
  sub_106C80();
  v51 = *(sub_25E4(&qword_13AE38, &qword_10B8B0) + 48);
  (*(v27 + 16))(v26, v69, v53);
  (*(v32 + 104))(v54, enum case for ExecutionInfo.Action.alarmSnooze(_:), v55);
  v38 = sub_106CB0();
  (*(*(v38 - 8) + 56))(v56, 1, 1, v38);
  sub_106CA0();
  (*(v28 + 16))(v30 + v51, v29, v52);
  (*(v31 + 104))(v30, enum case for CrossDeviceCommandExecution.ended(_:), v57);
  sub_106C70();

  (*(v31 + 8))(v30, v57);
  (*(v28 + 8))(v29, v52);
  (*(v27 + 8))(v69, v53);
  (*(v58 + 8))(v61, v59);
  (*(v63 + 8))(v67, v65);
LABEL_11:
  v39 = *(v0 + 512);
  v41 = *(v0 + 480);
  v40 = *(v0 + 488);
  v42 = *(v0 + 472);
  v43 = *(v0 + 448);
  v44 = *(v0 + 424);
  v46 = *(v0 + 392);
  v45 = *(v0 + 400);
  v47 = *(v0 + 384);
  v48 = *(v0 + 360);
  v60 = *(v0 + 352);
  v62 = *(v0 + 328);
  v64 = *(v0 + 320);
  v66 = *(v0 + 296);
  v68 = *(v0 + 272);
  v70 = *(v0 + 248);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_E761C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v7 = sub_E7988;
  }

  else
  {
    *(v4 + 632) = a1;
    v7 = sub_E7744;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_E7744()
{
  v1 = v0[48];
  sub_104D20();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[80] = v3;
  *v3 = v0;
  v3[1] = sub_E77F8;
  v4 = v0[79];
  v5 = v0[64];
  v6 = v0[59];
  v7 = v0[48];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 8, v7, v5, v6, 0);
}

uint64_t sub_E77F8()
{
  v2 = *(*v1 + 640);
  v3 = *(*v1 + 632);
  v4 = *(*v1 + 384);
  v5 = *(*v1 + 376);
  v6 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 648) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_E852C;
  }

  else
  {
    v7 = sub_E7AFC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_E7988()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[78];
  v4 = v0[64];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[53];
  v10 = v0[49];
  v11 = v0[50];
  v12 = v0[48];
  v13 = v0[45];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[34];
  v21 = v0[31];

  v14 = v0[1];

  return v14();
}

uint64_t sub_E7AFC()
{
  sub_1AD44((v0 + 64), *(v0 + 224));
  sub_104CA0();
  v1 = *(v0 + 136);
  sub_1A8E0((v0 + 104), *(v0 + 128));
  sub_105130();
  if (!v2)
  {
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v14 = *(v0 + 496);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v13 + 8))(v12, v14);
    sub_2738((v0 + 104));
    goto LABEL_11;
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 328);
  sub_2738((v0 + 104));
  sub_104680();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = *(v0 + 504);
    v6 = *(v0 + 512);
    v8 = *(v0 + 496);
    v9 = *(v0 + 328);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v7 + 8))(v6, v8);
    v10 = &qword_13AE30;
    v11 = &unk_10B8A0;
LABEL_7:
    sub_16F70(v9, v10, v11);
    goto LABEL_11;
  }

  v15 = *(v0 + 480);
  v16 = *(v0 + 240);
  (*(*(v0 + 344) + 32))(*(v0 + 360), *(v0 + 328), *(v0 + 336));
  v17 = _s20HandleIntentStrategyVMa_5();
  sub_517C8(v16 + *(v17 + 20), v15);
  v18 = sub_106630();
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
  {
    v20 = *(v0 + 504);
    v19 = *(v0 + 512);
    v21 = *(v0 + 496);
    v22 = *(v0 + 472);
    v9 = *(v0 + 480);
    v23 = *(v0 + 456);
    v24 = *(v0 + 464);
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
    (*(v24 + 8))(v22, v23);
    (*(v20 + 8))(v19, v21);
    v10 = &qword_1374F0;
    v11 = &qword_1080F0;
    goto LABEL_7;
  }

  v25 = *(v0 + 520);
  v67 = *(v0 + 512);
  v63 = *(v0 + 504);
  v65 = *(v0 + 496);
  v58 = *(v0 + 464);
  v59 = *(v0 + 456);
  v61 = *(v0 + 472);
  v26 = *(v0 + 352);
  v69 = *(v0 + 360);
  v27 = *(v0 + 344);
  v53 = *(v0 + 336);
  v28 = *(v0 + 312);
  v29 = *(v0 + 320);
  v30 = *(v0 + 296);
  v52 = *(v0 + 304);
  v31 = *(v0 + 288);
  v32 = *(v0 + 264);
  v54 = *(v0 + 272);
  v55 = *(v0 + 256);
  v56 = *(v0 + 248);
  v57 = *(v0 + 280);
  v33 = *(v0 + 232);
  sub_16F70(*(v0 + 480), &qword_1374F0, &qword_1080F0);
  v34 = sub_105150();
  sub_106880();

  v35 = sub_1068A0();
  v36 = sub_1068A0();
  v37 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if (v35 != v36)
  {
    v37 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  (*(v28 + 104))(v29, *v37, v52);
  sub_106C90();
  sub_106C80();
  v51 = *(sub_25E4(&qword_13AE38, &qword_10B8B0) + 48);
  (*(v27 + 16))(v26, v69, v53);
  (*(v32 + 104))(v54, enum case for ExecutionInfo.Action.alarmSnooze(_:), v55);
  v38 = sub_106CB0();
  (*(*(v38 - 8) + 56))(v56, 1, 1, v38);
  sub_106CA0();
  (*(v28 + 16))(v30 + v51, v29, v52);
  (*(v31 + 104))(v30, enum case for CrossDeviceCommandExecution.ended(_:), v57);
  sub_106C70();

  (*(v31 + 8))(v30, v57);
  (*(v28 + 8))(v29, v52);
  (*(v27 + 8))(v69, v53);
  (*(v58 + 8))(v61, v59);
  (*(v63 + 8))(v67, v65);
LABEL_11:
  v39 = *(v0 + 512);
  v41 = *(v0 + 480);
  v40 = *(v0 + 488);
  v42 = *(v0 + 472);
  v43 = *(v0 + 448);
  v44 = *(v0 + 424);
  v46 = *(v0 + 392);
  v45 = *(v0 + 400);
  v47 = *(v0 + 384);
  v48 = *(v0 + 360);
  v60 = *(v0 + 352);
  v62 = *(v0 + 328);
  v64 = *(v0 + 320);
  v66 = *(v0 + 296);
  v68 = *(v0 + 272);
  v70 = *(v0 + 248);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_E80D0()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[68];
  v4 = v0[64];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[53];
  v10 = v0[49];
  v11 = v0[50];
  v12 = v0[48];
  v13 = v0[45];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[34];
  v21 = v0[31];

  v14 = v0[1];

  return v14();
}

uint64_t sub_E8244()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[71];
  v4 = v0[64];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[53];
  v10 = v0[49];
  v11 = v0[50];
  v12 = v0[48];
  v13 = v0[45];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[34];
  v21 = v0[31];

  v14 = v0[1];

  return v14();
}

uint64_t sub_E83B8()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[76];
  v4 = v0[64];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[53];
  v10 = v0[49];
  v11 = v0[50];
  v12 = v0[48];
  v13 = v0[45];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[34];
  v21 = v0[31];

  v14 = v0[1];

  return v14();
}

uint64_t sub_E852C()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[81];
  v4 = v0[64];
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[53];
  v10 = v0[49];
  v11 = v0[50];
  v12 = v0[48];
  v13 = v0[45];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[34];
  v21 = v0[31];

  v14 = v0[1];

  return v14();
}

uint64_t sub_E86A0(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - v8;
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = sub_25E4(&qword_137598, &unk_107EB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v34 = &v33 - v17;
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v38 = *(_s20HandleIntentStrategyVMa_5() + 20);
  v39 = a2;
  sub_517C8(a2 + v38, v11);
  v20 = sub_106630();
  v21 = *(v20 - 8);
  v37 = *(v21 + 48);
  if (v37(v11, 1, v20) == 1)
  {
    sub_16F70(v11, &qword_1374F0, &qword_1080F0);
  }

  else
  {
    v22 = sub_106520();
    (*(v21 + 8))(v11, v20);
    if (v22)
    {
      sub_106C20();

      v23 = 0;
      goto LABEL_6;
    }
  }

  v23 = 1;
LABEL_6:
  v24 = sub_106160();
  v25 = *(*(v24 - 8) + 56);
  v25(v19, v23, 1, v24);
  v26 = type metadata accessor for SnoozeIntentHandledParameters(0);
  sub_1A814(v19, v40 + v26[6]);
  sub_517C8(v39 + v38, v9);
  if (v37(v9, 1, v20) == 1)
  {
    sub_16F70(v9, &qword_1374F0, &qword_1080F0);
    v27 = v36;
  }

  else
  {
    v28 = sub_106520();
    (*(v21 + 8))(v9, v20);
    v27 = v36;
    if (v28)
    {
      v29 = v34;
      sub_106C30();

      goto LABEL_11;
    }
  }

  v29 = v34;
  v25(v34, 1, 1, v24);
LABEL_11:
  sub_1A814(v29, v40 + v26[7]);
  sub_517C8(v39 + v38, v27);
  if (v37(v27, 1, v20) == 1)
  {
    sub_16F70(v27, &qword_1374F0, &qword_1080F0);
LABEL_15:
    v31 = v35;
    v25(v35, 1, 1, v24);
    return sub_1A814(v31, v40 + v26[5]);
  }

  v30 = sub_106520();
  (*(v21 + 8))(v27, v20);
  if (!v30)
  {
    goto LABEL_15;
  }

  v31 = v35;
  sub_106C10();

  return sub_1A814(v31, v40 + v26[5]);
}

uint64_t sub_E8B08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CE64;

  return sub_E509C(a1);
}

uint64_t sub_E8BA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_E8C48;

  return sub_E5808(a1, a2);
}

uint64_t sub_E8C48()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_E8D7C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_E8D7C()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_E8E48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return sub_D7EB0(a1);
}

uint64_t sub_E8F04(uint64_t a1, void *a2)
{
  v3 = sub_E4F88(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

unint64_t sub_E8F64()
{
  result = qword_13AE20;
  if (!qword_13AE20)
  {
    _s20HandleIntentStrategyVMa_5();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AE20);
  }

  return result;
}

void *INDateComponentsRange.alarmRepeatSchedule.getter()
{
  v1 = [v0 recurrenceRule];
  if (v1)
  {
    v2 = v1;
    if ([v1 frequency]== &dword_0 + 3)
    {
      if (qword_136EA8 != -1)
      {
        swift_once();
      }

      v3 = sub_106D20();
      sub_135C4(v3, qword_13AE48);
      v4 = sub_106D10();
      v5 = sub_106FC0();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_0, v4, v5, "User requested to set alarm for every day.", v6, 2u);
      }

      v7 = 127;
    }

    else
    {
      v7 = [v2 weeklyRecurrenceDays];
    }

    v11 = sub_82D7C(v7);
  }

  else
  {
    if (qword_136EA8 != -1)
    {
      swift_once();
    }

    v8 = sub_106D20();
    sub_135C4(v8, qword_13AE48);
    v2 = sub_106D10();
    v9 = sub_106FC0();
    if (os_log_type_enabled(v2, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v2, v9, "No weeklyRecurrenceDays found.", v10, 2u);
    }

    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

uint64_t sub_E91B4()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13AE48);
  sub_135C4(v0, qword_13AE48);
  return sub_106A80();
}

__n128 sub_E9200(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_E9214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E925C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E92C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v41 = sub_106960();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v41);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1065A0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = sub_1065E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v14);
  v40 = sub_1065D0();
  v39 = v19;
  (*(v15 + 8))(v18, v14);
  sub_25E4(&qword_137D68, &qword_108450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v37 = v8[13];
  v36 = v7;
  v37(v13, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v7);
  v21 = sub_106590();
  v23 = v22;
  v24 = v8[1];
  v24(v13, v7);
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  v25 = v41;
  (*(v3 + 104))(v6, enum case for AlarmNLv4Constants.AlarmVerb.delete(_:), v41);
  v26 = sub_106950();
  v28 = v27;
  (*(v3 + 8))(v6, v25);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v26;
  *(inited + 56) = v28;
  v29 = v38;
  v30 = v36;
  v37(v38, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v36);
  v31 = sub_106590();
  v33 = v32;
  v24(v29, v30);
  *(inited + 80) = v31;
  *(inited + 88) = v33;
  *(inited + 120) = &type metadata for String;
  v34 = v43;
  *(inited + 96) = v42;
  *(inited + 104) = v34;

  sub_EA35C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_137D70, &qword_108458);
  swift_arrayDestroy();
  return sub_105390();
}

uint64_t sub_E96B8@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v44 = a1;
  v45 = a3;
  v43 = sub_106960();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1065A0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = sub_1065E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v14);
  v41 = sub_1065D0();
  v40 = v19;
  (*(v15 + 8))(v18, v14);
  sub_25E4(&qword_137D68, &qword_108450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v38 = v8[13];
  v37 = v7;
  v38(v13, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v7);
  v21 = sub_106590();
  v23 = v22;
  v24 = v8[1];
  v24(v13, v7);
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  v25 = v6;
  v26 = v6;
  v27 = v43;
  (*(v3 + 104))(v26, *v42, v43);
  v28 = sub_106950();
  v30 = v29;
  (*(v3 + 8))(v25, v27);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v28;
  *(inited + 56) = v30;
  v31 = v39;
  v32 = v37;
  v38(v39, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v37);
  v33 = sub_106590();
  v35 = v34;
  v24(v31, v32);
  *(inited + 80) = v33;
  *(inited + 88) = v35;
  *(inited + 120) = sub_25E4(&qword_137558, &qword_109540);
  *(inited + 96) = v44;

  sub_EA35C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_137D70, &qword_108458);
  swift_arrayDestroy();
  return sub_105390();
}

uint64_t sub_E9AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = sub_106960();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v45);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1065A0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v44 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v41 - v12;
  v14 = sub_1065E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_104500();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1044F0();
  v47 = a1;
  sub_25E4(&qword_137530, &qword_1087D0);
  sub_EBE84();
  v43 = sub_1044E0();
  v42 = v22;

  (*(v15 + 104))(v18, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v14);
  v41[3] = sub_1065D0();
  v41[2] = v23;
  (*(v15 + 8))(v18, v14);
  sub_25E4(&qword_137D68, &qword_108450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v41[0] = v8[13];
  (v41[0])(v13, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v7);
  v25 = sub_106590();
  v27 = v26;
  v28 = v8[1];
  v28(v13, v7);
  *(inited + 32) = v25;
  v41[1] = inited + 32;
  *(inited + 40) = v27;
  v29 = v6;
  v30 = v45;
  (*(v3 + 104))(v6, enum case for AlarmNLv4Constants.AlarmVerb.create(_:), v45);
  v31 = sub_106950();
  v33 = v32;
  (*(v3 + 8))(v29, v30);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v31;
  *(inited + 56) = v33;
  v34 = v44;
  (v41[0])(v44, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmSnapshotsJson(_:), v7);
  v35 = sub_106590();
  v37 = v36;
  v28(v34, v7);
  *(inited + 80) = v35;
  *(inited + 88) = v37;
  *(inited + 120) = sub_25E4(&qword_13AED8, &qword_10BAA8);
  v38 = v43;
  v39 = v42;
  *(inited + 96) = v43;
  *(inited + 104) = v39;
  sub_EBF5C(v38, v39);
  sub_EA35C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_137D70, &qword_108458);
  swift_arrayDestroy();
  sub_105390();
  return sub_EBF70(v38, v39);
}

uint64_t sub_E9F6C(void *a1)
{
  v3 = v1;
  v5 = sub_25E4(&qword_13AE78, &qword_10B960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1A8E0(a1, a1[3]);
  sub_EBB6C();
  sub_107450();
  v11 = *v3;
  v21 = 0;
  sub_107320();
  if (!v2)
  {
    v12 = v3[1];
    v20 = 1;
    sub_107320();
    v13 = v3[2];
    v14 = v3[3];
    v19 = 2;
    sub_107300();
    v18 = v3[4];
    v17[15] = 3;
    sub_25E4(&qword_137D90, &qword_108468);
    sub_EBBC0(&qword_13AE80);
    sub_107330();
    v15 = *(v3 + 40);
    v17[14] = 4;
    sub_107310();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_EA1C4()
{
  v1 = *v0;
  v2 = 1920298856;
  v3 = 0x6C6562616CLL;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x64656C62616E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574756E696DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_EA254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_EB6CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_EA288(uint64_t a1)
{
  v2 = sub_EBB6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EA2C4(uint64_t a1)
{
  v2 = sub_EBB6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_EA300@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_EB87C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_EA35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25E4(&qword_13AEC0, &qword_10BAA0);
    v3 = sub_107290();
    v4 = a1 + 32;

    while (1)
    {
      sub_14994(v4, &v13, &qword_137D70, &qword_108458);
      v5 = v13;
      v6 = v14;
      result = sub_32658(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1F7A8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_EA48C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25E4(&qword_137D80, &qword_108460);
    v3 = sub_107290();
    v4 = a1 + 32;

    while (1)
    {
      sub_14994(v4, v13, &qword_13AE90, &qword_10B970);
      result = sub_326D0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1F7A8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_EA5C8(uint64_t a1)
{
  v2 = sub_25E4(&qword_13AE98, &qword_10B978);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_25E4(&qword_13AEA0, &qword_10B980);
    v8 = sub_107290();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_14994(v10, v6, &qword_13AE98, &qword_10B978);
      result = sub_32714(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_105F50();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_EA7C8(void *a1, int a2, void (*a3)(char *, uint64_t))
{
  v61 = a3;
  v65 = a2;
  v63 = a1;
  v60 = sub_106960();
  v57 = *(v60 - 1);
  v3 = *(v57 + 64);
  __chkstk_darwin(v60);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1065A0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v64 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v58 = &v54 - v11;
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v14 = sub_1065E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for DirectInvocationUtils.Alarm.URI.handleVerbAction(_:), v14);
  sub_1065D0();
  (*(v15 + 8))(v18, v14);
  v19 = objc_allocWithZone(SKIDirectInvocationPayload);
  v20 = sub_106E10();

  v62 = [v19 initWithIdentifier:v20];

  sub_25E4(&qword_13AE88, &qword_10B968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_109690;
  v22 = v6[13];
  v55 = v5;
  (v22)(v13, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v5);
  v23 = sub_106590();
  v25 = v24;
  v27 = v6 + 1;
  v26 = v6[1];
  v56 = v27;
  v26(v13, v5);
  v66 = v23;
  v67 = v25;
  sub_107140();
  v28 = v60;
  v29 = v57;
  v30 = v59;
  (*(v57 + 104))(v59, *v61, v60);
  v31 = sub_106950();
  v33 = v32;
  v34 = v30;
  v35 = v26;
  v36 = v22;
  v37 = v55;
  (*(v29 + 8))(v34, v28);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v31;
  *(inited + 80) = v33;
  v38 = v58;
  v60 = v36;
  (v36)(v58, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v37);
  v39 = sub_106590();
  v41 = v40;
  v61 = v35;
  v35(v38, v37);
  v66 = v39;
  v67 = v41;
  sub_107140();
  v42 = [v63 identifier];
  if (v42)
  {
    v43 = v42;
    v44 = sub_106E20();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  *(inited + 168) = sub_25E4(&qword_138CB0, &qword_1097C8);
  *(inited + 144) = v44;
  *(inited + 152) = v46;
  v47 = v64;
  (v60)(v64, enum case for DirectInvocationUtils.Alarm.UserInfoKey.handleSilently(_:), v37);
  v48 = sub_106590();
  v50 = v49;
  v61(v47, v37);
  v66 = v48;
  v67 = v50;
  sub_107140();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = v65 & 1;
  sub_EA48C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_13AE90, &qword_10B970);
  swift_arrayDestroy();
  isa = sub_106DC0().super.isa;

  v52 = v62;
  [v62 setUserData:isa];

  return v52;
}

id sub_EAD50(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v39 = a1;
  v2 = sub_1065A0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = sub_1065E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, enum case for DirectInvocationUtils.Alarm.URI.buttonPress(_:), v10);
  sub_1065D0();
  (*(v11 + 8))(v14, v10);
  v15 = objc_allocWithZone(SKIDirectInvocationPayload);
  v16 = sub_106E10();

  v38 = [v15 initWithIdentifier:v16];

  sub_25E4(&qword_13AE88, &qword_10B968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v18 = v3[13];
  v18(v9, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v2);
  v19 = sub_106590();
  v21 = v20;
  v22 = v3[1];
  v22(v9, v2);
  v41 = v19;
  v42 = v21;
  sub_107140();
  v23 = sub_106950();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v23;
  *(inited + 80) = v24;
  v18(v7, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v2);
  v25 = sub_106590();
  v27 = v26;
  v22(v7, v2);
  v41 = v25;
  v42 = v27;
  sub_107140();
  v28 = sub_106430();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v28;
  *(inited + 152) = v29;
  sub_EA48C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_13AE90, &qword_10B970);
  swift_arrayDestroy();
  isa = sub_106DC0().super.isa;

  v31 = v38;
  [v38 setUserData:isa];

  v32 = objc_opt_self();
  sub_106560();
  sub_106550();
  sub_106540();

  sub_1A8E0(&v41, v43);
  v33 = sub_104CE0();
  v34 = [v32 runSiriKitExecutorCommandWithContext:v33 payload:v31];

  sub_2738(&v41);
  v35 = [v32 wrapCommandInStartLocalRequest:v34];

  return v35;
}

id sub_EB1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v35 = a1;
  v3 = sub_1065A0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_1065E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for DirectInvocationUtils.Alarm.URI.disambiguation(_:), v11);
  sub_1065D0();
  (*(v12 + 8))(v15, v11);
  v16 = objc_allocWithZone(SKIDirectInvocationPayload);
  v17 = sub_106E10();

  v34 = [v16 initWithIdentifier:v17];

  sub_25E4(&qword_13AE88, &qword_10B968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v19 = v4[13];
  v19(v10, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v3);
  v20 = sub_106590();
  v22 = v21;
  v23 = v4[1];
  v23(v10, v3);
  v38 = v20;
  v39 = v22;
  sub_107140();
  v24 = sub_106950();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v24;
  *(inited + 80) = v25;
  v19(v8, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v3);
  v26 = sub_106590();
  v28 = v27;
  v23(v8, v3);
  v38 = v26;
  v39 = v28;
  sub_107140();
  *(inited + 168) = &type metadata for String;
  v29 = v37;
  *(inited + 144) = v36;
  *(inited + 152) = v29;

  sub_EA48C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_13AE90, &qword_10B970);
  swift_arrayDestroy();
  isa = sub_106DC0().super.isa;

  v31 = v34;
  [v34 setUserData:isa];

  return v31;
}

id sub_EB5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_EB1D4(a1, a2, a3);
  v4 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  [v4 setInputOrigin:SAInputOriginDialogButtonTapValue];
  [v4 setInteractionType:SAIntentGroupAceInteractionTypeDisplayDrivenValue];
  v5 = objc_opt_self();
  sub_106560();
  sub_106550();
  sub_106540();

  sub_1A8E0(v9, v9[3]);
  v6 = sub_104CE0();
  v7 = [v5 runSiriKitExecutorCommandWithContext:v6 payload:v3];

  sub_2738(v9);
  return v7;
}

uint64_t sub_EB6CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_107370() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (sub_107370() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_107370() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000000010E7E0 == a2 || (sub_107370() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_107370();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_EB87C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25E4(&qword_13AE60, &qword_10B958);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1A8E0(a1, a1[3]);
  sub_EBB6C();
  sub_107440();
  if (v2)
  {
    return sub_2738(a1);
  }

  v27 = 0;
  v11 = sub_1072D0();
  v26 = 1;
  v21 = sub_1072D0();
  v25 = 2;
  v19 = sub_1072B0();
  v20 = v12;
  sub_25E4(&qword_137D90, &qword_108468);
  v24 = 3;
  sub_EBBC0(&qword_13AE70);
  sub_1072E0();
  v18 = v22;
  v23 = 4;
  v13 = sub_1072C0();
  (*(v6 + 8))(v9, v5);
  result = sub_2738(a1);
  v15 = v21;
  *a2 = v11;
  *(a2 + 8) = v15;
  v16 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v13 & 1;
  return result;
}

unint64_t sub_EBB6C()
{
  result = qword_13AE68;
  if (!qword_13AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AE68);
  }

  return result;
}

uint64_t sub_EBBC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_14EB0(&qword_137D90, &qword_108468);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmSnapshot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmSnapshot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_EBD80()
{
  result = qword_13AEA8;
  if (!qword_13AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEA8);
  }

  return result;
}

unint64_t sub_EBDD8()
{
  result = qword_13AEB0;
  if (!qword_13AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEB0);
  }

  return result;
}

unint64_t sub_EBE30()
{
  result = qword_13AEB8;
  if (!qword_13AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEB8);
  }

  return result;
}

unint64_t sub_EBE84()
{
  result = qword_13AEC8;
  if (!qword_13AEC8)
  {
    sub_14EB0(&qword_137530, &qword_1087D0);
    sub_EBF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEC8);
  }

  return result;
}

unint64_t sub_EBF08()
{
  result = qword_13AED0;
  if (!qword_13AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AED0);
  }

  return result;
}

uint64_t sub_EBF5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20680(a1, a2);
  }

  return a1;
}

uint64_t sub_EBF70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_14DD8(a1, a2);
  }

  return a1;
}

uint64_t sub_EBF84(uint64_t *a1, char a2)
{
  sub_106800();
  sub_1067E0();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_13AEE0, qword_10BAB0);
  sub_104AC0();
  sub_262C(a1, v6);
  _s18NeedsValueStrategyCMa();
  v4 = swift_allocObject();
  sub_1AD44(v6, v4 + 16);
  *&v6[0] = v4;
  sub_EC140();
  sub_104A30();
  sub_104AA0();
  sub_262C(a1, v7);
  sub_EC198();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, v6 + 8);
  LOBYTE(v6[0]) = a2 & 1;
  sub_EC1EC();
  sub_104A50();
  sub_104AB0();

  sub_2738(a1);
  sub_EC240(v6);
  return sub_EC294(v7);
}

unint64_t sub_EC140()
{
  result = qword_13AEE8;
  if (!qword_13AEE8)
  {
    _s18NeedsValueStrategyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEE8);
  }

  return result;
}

unint64_t sub_EC198()
{
  result = qword_13AEF0;
  if (!qword_13AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEF0);
  }

  return result;
}

unint64_t sub_EC1EC()
{
  result = qword_13AEF8;
  if (!qword_13AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEF8);
  }

  return result;
}

uint64_t sub_EC384(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_106200();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_1061E0();
  result = a3(v10, 0);
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for SnoozeAlarmCATs_Async()
{
  result = qword_13AF00;
  if (!qword_13AF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_EC4B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

uint64_t sub_EC644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1047D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&qword_137518, &qword_107E28);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = sub_1045E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 dateTime];
  if (v18)
  {
    v19 = v18;
    sub_104570();

    sub_104790();
    sub_104770();
    (*(v5 + 8))(v8, v4);
    v20 = sub_104670();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v12, 1, v20) == 1)
    {
      sub_ECC28(v12);
      if (qword_136EC8 != -1)
      {
        swift_once();
      }

      v22 = sub_106D20();
      sub_135C4(v22, qword_13AF50);
      v23 = sub_106D10();
      v24 = sub_106FB0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "getAlarmDate: Could not get date from alarmDateComponents.", v25, 2u);
      }

      (*(v14 + 8))(v17, v13);
      return (*(v21 + 56))(a2, 1, 1, v20);
    }

    else
    {
      (*(v14 + 8))(v17, v13);
      (*(v21 + 32))(a2, v12, v20);
      return (*(v21 + 56))(a2, 0, 1, v20);
    }
  }

  else
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v27 = sub_106D20();
    sub_135C4(v27, qword_13AF50);
    v28 = sub_106D10();
    v29 = sub_106FB0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "getAlarmDate: DateComponents not available from alarm in intent response.", v30, 2u);
    }

    v31 = sub_104670();
    v32 = *(*(v31 - 8) + 56);

    return v32(a2, 1, 1, v31);
  }
}

uint64_t sub_ECB40(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  sub_14930(v6, a3);
  sub_135C4(v6, a3);
  return a4();
}

uint64_t sub_ECB9C()
{
  v0 = sub_106200();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for AlarmBaseCATs_Async();
  sub_1061E0();
  result = sub_1060D0();
  qword_13AF80 = result;
  return result;
}

uint64_t sub_ECC28(uint64_t a1)
{
  v2 = sub_25E4(&qword_137518, &qword_107E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ECC90()
{
  v0 = sub_1046E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_104700();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136ED0 != -1)
  {
    swift_once();
  }

  v10 = sub_135C4(v5, qword_13AF68);
  (*(v6 + 16))(v9, v10, v5);
  sub_1046F0();
  (*(v6 + 8))(v9, v5);
  v11 = (*(v1 + 88))(v4, v0);
  if (v11 == enum case for Locale.HourCycle.zeroToEleven(_:) || v11 == enum case for Locale.HourCycle.oneToTwelve(_:))
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v13 = sub_106D20();
    sub_135C4(v13, qword_13AF50);
    v14 = sub_106D10();
    v15 = sub_106FC0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "uses24HourTime: Using 12h clock for time output", v16, 2u);
    }

    return 0;
  }

  if (v11 != enum case for Locale.HourCycle.zeroToTwentyThree(_:) && v11 != enum case for Locale.HourCycle.oneToTwentyFour(_:))
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v23 = sub_106D20();
    sub_135C4(v23, qword_13AF50);
    v24 = sub_106D10();
    v25 = sub_106FB0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "uses24HourTime: Unknown hourCycle enumeration found. This is a programming error. Defaulting to 12h time.", v26, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  if (qword_136EC8 != -1)
  {
    swift_once();
  }

  v18 = sub_106D20();
  sub_135C4(v18, qword_13AF50);
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "uses24HourTime: Using 24h clock for time output", v21, 2u);
  }

  return 1;
}

uint64_t sub_ED0D0(void *a1)
{
  v2 = sub_104700();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1045E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_ECC90();
  result = 0;
  if ((v12 & 1) == 0)
  {
    v14 = [a1 dateTime];
    if (!v14)
    {
LABEL_5:
      if (qword_136EC8 != -1)
      {
        swift_once();
      }

      v18 = sub_106D20();
      sub_135C4(v18, qword_13AF50);
      v19 = sub_106D10();
      v20 = sub_106FB0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v19, v20, "getMeridiemForSnippet: Could not get hour from alarmDateComponents.", v21, 2u);
      }

      return 0;
    }

    v15 = v14;
    sub_104570();

    v16 = sub_104580();
    if (v17)
    {
      (*(v8 + 8))(v11, v7);
      goto LABEL_5;
    }

    v22 = v16;
    v23 = [objc_allocWithZone(NSDateFormatter) init];
    if (qword_136ED0 != -1)
    {
      swift_once();
    }

    v24 = sub_135C4(v2, qword_13AF68);
    (*(v3 + 16))(v6, v24, v2);
    isa = sub_1046C0().super.isa;
    (*(v3 + 8))(v6, v2);
    [v23 setLocale:isa];

    if (v22 >= 12)
    {
      v26 = [v23 PMSymbol];
      if (v26)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v26 = [v23 AMSymbol];
      if (v26)
      {
LABEL_16:
        v27 = v26;
        v28 = sub_106E20();

        (*(v8 + 8))(v11, v7);
        return v28;
      }
    }

    (*(v8 + 8))(v11, v7);

    return 0;
  }

  return result;
}

uint64_t sub_ED47C(void *a1)
{
  v2 = sub_104550();
  v118 = *(v2 - 8);
  v119 = v2;
  v3 = *(v118 + 64);
  v4 = __chkstk_darwin(v2);
  v116 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v115 = &v108 - v7;
  __chkstk_darwin(v6);
  v117 = &v108 - v8;
  v112 = sub_25E4(&qword_13AF88, &qword_10BB28);
  v9 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v121 = &v108 - v10;
  v11 = sub_104700();
  v122 = *(v11 - 8);
  v12 = *(v122 + 64);
  v13 = __chkstk_darwin(v11);
  v114 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v108 - v15;
  v17 = sub_1047D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25E4(&qword_137518, &qword_107E28);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v108 - v24;
  v26 = sub_104670();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v125 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1045E0();
  v123 = *(v30 - 8);
  v124 = v30;
  v31 = *(v123 + 64);
  __chkstk_darwin(v30);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  v34 = [a1 dateTime];
  if (!v34)
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v42 = sub_106D20();
    sub_135C4(v42, qword_13AF50);
    v43 = sub_106D10();
    v44 = sub_106FB0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "getFormattedTimeComponentsForSnippet: DateComponents not available from alarm in intent response.", v45, 2u);
    }

    return 0;
  }

  v35 = v34;
  sub_104570();

  sub_104790();
  v120 = v33;
  sub_104770();
  (*(v18 + 8))(v21, v17);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_ECC28(v25);
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v36 = sub_106D20();
    sub_135C4(v36, qword_13AF50);
    v37 = sub_106D10();
    v38 = sub_106FB0();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v120;
    if (v39)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v37, v38, "getFormattedTimeComponentsForSnippet: Could not get date from alarmDateComponents.", v41, 2u);
    }

    (*(v123 + 8))(v40, v124);
    return 0;
  }

  v47 = v26;
  v110 = v27;
  (*(v27 + 32))(v125, v25, v26);
  v48 = [objc_allocWithZone(NSDateFormatter) init];
  if (qword_136ED0 != -1)
  {
    swift_once();
  }

  v49 = sub_135C4(v11, qword_13AF68);
  v50 = v122;
  (*(v122 + 16))(v16, v49, v11);
  isa = sub_1046C0().super.isa;
  v109 = *(v50 + 8);
  v109(v16, v11);
  [v48 setLocale:isa];

  v52 = v121;
  if (qword_136EC8 != -1)
  {
    swift_once();
  }

  v53 = sub_106D20();
  v54 = sub_135C4(v53, qword_13AF50);
  v55 = v48;
  v111 = v54;
  v56 = sub_106D10();
  v57 = sub_106FC0();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v55;
    v61 = v59;
    v126 = v59;
    *v58 = 136315138;
    v62 = v60;
    v63 = [v60 locale];
    if (v63)
    {
      v64 = v63;
      sub_1046D0();

      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    (*(v122 + 56))(v52, v65, 1, v11);
    v66 = sub_106E30();
    v68 = sub_722E8(v66, v67, &v126);

    *(v58 + 4) = v68;
    _os_log_impl(&dword_0, v56, v57, "getFormattedTimeComponentsForSnippet: Using locale for snippet: %s", v58, 0xCu);
    sub_2738(v61);

    v55 = v62;
  }

  else
  {
  }

  LODWORD(v122) = sub_ECC90();
  v69 = sub_106E10();

  v70 = [v55 locale];
  if (v70)
  {
    v71 = v114;
    v72 = v70;
    sub_1046D0();

    v73.super.isa = sub_1046C0().super.isa;
    v109(v71, v11);
  }

  else
  {
    v73.super.isa = 0;
  }

  v74 = [objc_opt_self() dateFormatFromTemplate:v69 options:0 locale:v73.super.isa];

  if (v74)
  {
    v75 = sub_106E20();
    v77 = v76;

    v126 = v75;
    v127 = v77;
    v78 = v115;
    sub_104510();
    v79 = v116;
    sub_104520();
    v80 = v117;
    sub_104540();
    v81 = v119;
    v82 = *(v118 + 8);
    v82(v79, v119);
    v82(v78, v81);
    sub_7C40C();
    v74 = sub_1070F0();
    v84 = v83;
    v82(v80, v81);
  }

  else
  {
    v84 = 0;
  }

  v85 = v120;

  v86 = sub_106D10();
  v87 = sub_106FC0();

  v88 = os_log_type_enabled(v86, v87);
  v121 = v74;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v127 = v84;
    v128 = v90;
    *v89 = 136315138;
    v126 = v74;

    sub_25E4(&qword_138CB0, &qword_1097C8);
    v91 = sub_106E30();
    v93 = v85;
    v94 = v55;
    v95 = v47;
    v96 = sub_722E8(v91, v92, &v128);

    *(v89 + 4) = v96;
    v47 = v95;
    v55 = v94;
    v85 = v93;
    _os_log_impl(&dword_0, v86, v87, "getFormattedTimeComponentsForSnippet: Alarm time format: %s", v89, 0xCu);
    sub_2738(v90);
  }

  if (v84)
  {
    v97 = sub_106E10();
  }

  else
  {
    v97 = 0;
  }

  [v55 setDateFormat:v97];

  v98 = sub_104650().super.isa;
  v99 = [v55 stringFromDate:v98];

  v100 = sub_106E20();
  v102 = v101;

  v103 = sub_106D10();
  v104 = sub_106FC0();
  v105 = v102;

  if (os_log_type_enabled(v103, v104))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v126 = v107;
    *v106 = 136315138;
    *(v106 + 4) = sub_722E8(v100, v105, &v126);
    _os_log_impl(&dword_0, v103, v104, "getFormattedTimeComponentsForSnippet: Alarm time to print: %s", v106, 0xCu);
    sub_2738(v107);
  }

  if ((v122 & 1) == 0)
  {
    sub_ED0D0(v113);
  }

  (*(v110 + 8))(v125, v47);
  (*(v123 + 8))(v85, v124);
  return v100;
}

uint64_t sub_EE12C(void *a1)
{
  v2 = sub_104700();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1047D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E4(&qword_137518, &qword_107E28);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v50 - v13;
  v15 = sub_104670();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1045E0();
  v53 = *(v19 - 8);
  v54 = v19;
  v20 = *(v53 + 64);
  __chkstk_darwin(v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 dateTime];
  if (!v23)
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v29 = sub_106D20();
    sub_135C4(v29, qword_13AF50);
    v30 = sub_106D10();
    v31 = sub_106FB0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "DateComponents not available from alarm in intent response.", v32, 2u);
    }

    return 0;
  }

  v24 = v23;
  sub_104570();

  sub_104790();
  v50 = v22;
  sub_104770();
  (*(v7 + 8))(v10, v6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_ECC28(v14);
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v25 = sub_106D20();
    sub_135C4(v25, qword_13AF50);
    v26 = sub_106D10();
    v27 = sub_106FB0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Could not get date from alarmDateComponents.", v28, 2u);
    }

    (*(v53 + 8))(v50, v54);
    return 0;
  }

  v34 = v52;
  (*(v16 + 32))(v52, v14, v15);
  v35 = [objc_allocWithZone(NSDateFormatter) init];
  if (qword_136ED0 != -1)
  {
    swift_once();
  }

  v36 = sub_135C4(v2, qword_13AF68);
  v37 = v51;
  (*(v51 + 16))(v5, v36, v2);
  isa = sub_1046C0().super.isa;
  (*(v37 + 8))(v5, v2);
  [v35 setLocale:isa];

  [v35 setDateFormat:0];
  [v35 setTimeStyle:1];
  v39 = sub_104650().super.isa;
  v40 = [v35 stringFromDate:v39];

  v51 = sub_106E20();
  v42 = v41;

  if (qword_136EC8 != -1)
  {
    swift_once();
  }

  v43 = sub_106D20();
  sub_135C4(v43, qword_13AF50);

  v44 = sub_106D10();
  v45 = sub_106FC0();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v50;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_722E8(v51, v42, &v55);
    _os_log_impl(&dword_0, v44, v45, "getFullFormattedTimeForSnippet: Full alarm time to print: %s", v48, 0xCu);
    sub_2738(v49);
  }

  (*(v16 + 8))(v34, v15);
  (*(v53 + 8))(v47, v54);
  return v51;
}

uint64_t sub_EE858()
{
  v1 = sub_104EC0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_105030();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = sub_105060();
  v0[8] = v7;
  v8 = *(v7 - 8);
  v0[9] = v8;
  v9 = *(v8 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_EE9CC, 0, 0);
}

uint64_t sub_EE9CC()
{
  if (qword_136ED8 != -1)
  {
    swift_once();
  }

  v1 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_EEAD0;
  v3 = *(v0 + 56);

  return (v5)(v3, 0xD00000000000001DLL, 0x800000000010E870, _swiftEmptyArrayStorage);
}

uint64_t sub_EEAD0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_EED58;
  }

  else
  {
    v3 = sub_EEBE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_EEBE4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_105020();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    (*(v6 + 16))(v5, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    sub_105050();
    (*(v6 + 8))(v5, v7);
    v11 = sub_104EB0();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
  }

  else
  {

    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = v0[10];
  v15 = v0[7];
  v16 = v0[4];

  v17 = v0[1];

  return v17(v11, v13);
}

uint64_t sub_EED58()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_EEDD4()
{
  v1 = sub_104EC0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_105030();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = sub_105060();
  v0[8] = v7;
  v8 = *(v7 - 8);
  v0[9] = v8;
  v9 = *(v8 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_EEF48, 0, 0);
}

uint64_t sub_EEF48()
{
  if (qword_136ED8 != -1)
  {
    swift_once();
  }

  v1 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_EF04C;
  v3 = *(v0 + 56);

  return (v5)(v3, 0xD00000000000001ALL, 0x800000000010E850, _swiftEmptyArrayStorage);
}

uint64_t sub_EF04C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_EF3DC;
  }

  else
  {
    v3 = sub_EF3D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_EF160()
{
  v1 = sub_104EC0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_105030();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = sub_105060();
  v0[8] = v7;
  v8 = *(v7 - 8);
  v0[9] = v8;
  v9 = *(v8 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_EF2D4, 0, 0);
}

uint64_t sub_EF2D4()
{
  if (qword_136ED8 != -1)
  {
    swift_once();
  }

  v1 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_EF04C;
  v3 = *(v0 + 56);

  return (v5)(v3, 0xD00000000000001CLL, 0x800000000010E830, _swiftEmptyArrayStorage);
}

uint64_t sub_EF3E0()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13AF90);
  sub_135C4(v0, qword_13AF90);
  return sub_106A80();
}

uint64_t static AlarmFlowFactory.makeFlowFrom(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v363 = a2;
  v3 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v313 = &v308 - v5;
  v325 = sub_1065A0();
  v324 = *(v325 - 8);
  v6 = *(v324 + 64);
  __chkstk_darwin(v325);
  v323 = &v308 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E4(&qword_13AFB0, &qword_10BB38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v340 = &v308 - v10;
  v11 = sub_1065E0();
  v342 = *(v11 - 8);
  v12 = *(v342 + 64);
  v13 = __chkstk_darwin(v11);
  v312 = &v308 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v341 = &v308 - v16;
  __chkstk_darwin(v15);
  v347 = &v308 - v17;
  v18 = sub_1053C0();
  v346 = *(v18 - 8);
  v19 = *(v346 + 64);
  v20 = __chkstk_darwin(v18);
  v339 = &v308 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v337 = &v308 - v23;
  v24 = __chkstk_darwin(v22);
  v326 = &v308 - v25;
  __chkstk_darwin(v24);
  v348 = &v308 - v26;
  v319 = sub_106040();
  v318 = *(v319 - 8);
  v27 = *(v318 + 64);
  v28 = __chkstk_darwin(v319);
  v314 = &v308 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v320 = &v308 - v30;
  v322 = sub_1050A0();
  v321 = *(v322 - 8);
  v31 = *(v321 + 64);
  __chkstk_darwin(v322);
  v338 = &v308 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_106960();
  v317 = *(v316 - 8);
  v33 = *(v317 + 64);
  v34 = __chkstk_darwin(v316);
  v308 = &v308 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v308 - v37;
  v39 = __chkstk_darwin(v36);
  v310 = &v308 - v40;
  v41 = __chkstk_darwin(v39);
  v311 = &v308 - v42;
  __chkstk_darwin(v41);
  v315 = &v308 - v43;
  v329 = sub_105460();
  v328 = *(v329 - 8);
  v44 = *(v328 + 64);
  __chkstk_darwin(v329);
  v327 = &v308 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_105410();
  v331 = *(v332 - 8);
  v46 = *(v331 + 64);
  __chkstk_darwin(v332);
  v330 = &v308 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25E4(&qword_13AFB8, &unk_10BB40);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  v334 = &v308 - v50;
  v336 = sub_105120();
  v335 = *(v336 - 8);
  v51 = *(v335 + 64);
  __chkstk_darwin(v336);
  v333 = &v308 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25E4(&unk_13AFC0, &qword_10A928);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v345 = &v308 - v55;
  v56 = sub_25E4(&qword_13A028, &qword_10BB50);
  v57 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56 - 8);
  v355 = &v308 - v58;
  v59 = sub_25E4(&unk_13AFD0, &qword_10A920);
  v60 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59 - 8);
  v349 = &v308 - v61;
  v62 = sub_25E4(&qword_13A040, &qword_10A940);
  v63 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62 - 8);
  v360 = &v308 - v64;
  v65 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v66 = *(*(v65 - 8) + 64);
  v67 = __chkstk_darwin(v65 - 8);
  v350 = &v308 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __chkstk_darwin(v67);
  v354 = &v308 - v70;
  v71 = __chkstk_darwin(v69);
  v353 = &v308 - v72;
  __chkstk_darwin(v71);
  v356 = &v308 - v73;
  v74 = sub_105E80();
  v357 = *(v74 - 8);
  v358 = v74;
  v75 = *(v357 + 64);
  v76 = __chkstk_darwin(v74);
  v352 = &v308 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v362 = (&v308 - v78);
  v79 = sub_1053E0();
  v80 = *(v79 - 8);
  v81 = *(v80 + 64);
  v82 = __chkstk_darwin(v79);
  v359 = (&v308 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = __chkstk_darwin(v82);
  v86 = &v308 - v85;
  __chkstk_darwin(v84);
  v88 = &v308 - v87;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v89 = sub_106D20();
  v90 = sub_135C4(v89, qword_13AF90);
  v91 = *(v80 + 16);
  v361 = a1;
  v364 = v91;
  v91(v88, a1, v79);
  v351 = v90;
  v92 = sub_106D10();
  v93 = sub_106FC0();
  v94 = os_log_type_enabled(v92, v93);
  v309 = v38;
  if (v94)
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v344 = v11;
    v97 = v96;
    v365 = v96;
    *v95 = 136315138;
    v364(v86, v88, v79);
    v98 = sub_106E30();
    v343 = v18;
    v100 = v99;
    v101 = v88;
    v102 = *(v80 + 8);
    v102(v101, v79);
    v103 = sub_722E8(v98, v100, &v365);
    v18 = v343;

    *(v95 + 4) = v103;
    _os_log_impl(&dword_0, v92, v93, "AlarmFlowFactory: called makeFlowFrom() with parse %s", v95, 0xCu);
    sub_2738(v97);
    v11 = v344;
  }

  else
  {

    v104 = v88;
    v102 = *(v80 + 8);
    v102(v104, v79);
  }

  v105 = v359;
  v364(v359, v361, v79);
  v106 = (*(v80 + 88))(v105, v79);
  v107 = v360;
  if (v106 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v108 = *(v80 + 96);
    v361 = v79;
    v108(v105, v79);
    v110 = v357;
    v109 = v358;
    v111 = v362;
    (*(v357 + 32))(v362, v105, v358);
    v112 = v352;
    (*(v110 + 16))(v352, v111, v109);
    v113 = type metadata accessor for AlarmNLIntent();
    v114 = *(v113 + 48);
    v115 = *(v113 + 52);
    swift_allocObject();
    v116 = sub_B3800(v112);
    v117 = v356;
    v364 = v116;
    sub_B245C(v356);
    v118 = v353;
    sub_14994(v117, v353, &qword_13AFE0, &qword_10A320);
    v119 = sub_105700();
    v120 = *(v119 - 8);
    v121 = *(v120 + 48);
    if (v121(v118, 1, v119) == 1)
    {
      sub_16F70(v118, &qword_13AFE0, &qword_10A320);
    }

    else
    {
      v127 = v349;
      v128 = v118;
      sub_1056F0();
      v129 = v127;
      (*(v120 + 8))(v128, v119);
      v130 = sub_1057F0();
      v131 = *(v130 - 8);
      if ((*(v131 + 48))(v129, 1, v130) != 1)
      {
        sub_1057E0();
        (*(v131 + 8))(v129, v130);
        v160 = sub_1057B0();
        v161 = (*(*(v160 - 8) + 48))(v107, 1, v160);
        v133 = v355;
        v117 = v356;
        v134 = v354;
        if (v161 != 1)
        {
          v154 = &qword_13A040;
          v155 = &qword_10A940;
          v156 = v107;
          goto LABEL_32;
        }

        goto LABEL_14;
      }

      sub_16F70(v129, &unk_13AFD0, &qword_10A920);
      v117 = v356;
    }

    v132 = sub_1057B0();
    (*(*(v132 - 8) + 56))(v107, 1, 1, v132);
    v134 = v354;
    v133 = v355;
LABEL_14:
    sub_16F70(v107, &qword_13A040, &qword_10A940);
    sub_14994(v117, v134, &qword_13AFE0, &qword_10A320);
    if (v121(v134, 1, v119) == 1)
    {
      sub_16F70(v134, &qword_13AFE0, &qword_10A320);
      v135 = sub_105640();
      (*(*(v135 - 8) + 56))(v133, 1, 1, v135);
    }

    else
    {
      sub_1056A0();
      (*(v120 + 8))(v134, v119);
      v152 = sub_105640();
      if ((*(*(v152 - 8) + 48))(v133, 1, v152) != 1)
      {
        v154 = &qword_13A028;
        v155 = &qword_10BB50;
        v156 = v133;
        goto LABEL_32;
      }
    }

    sub_16F70(v133, &qword_13A028, &qword_10BB50);
    v153 = v350;
    sub_14994(v117, v350, &qword_13AFE0, &qword_10A320);
    if (v121(v153, 1, v119) == 1)
    {
      v154 = &qword_13AFE0;
      v155 = &qword_10A320;
      v156 = v153;
LABEL_32:
      sub_16F70(v156, v154, v155);
LABEL_33:
      v167 = sub_B4AF8();
      v166 = v363;
      sub_F21A4(v167, v363);

      sub_16F70(v117, &qword_13AFE0, &qword_10A320);
      (*(v110 + 8))(v362, v109);
LABEL_34:
      v168 = sub_104BD0();
      v169 = *(*(v168 - 8) + 56);
      v170 = v166;
      return v169(v170, 0, 1, v168);
    }

    v157 = v345;
    sub_1056E0();
    (*(v120 + 8))(v153, v119);
    v158 = sub_1057D0();
    v159 = *(v158 - 8);
    if ((*(v159 + 48))(v157, 1, v158) == 1)
    {
      v154 = &unk_13AFC0;
      v155 = &qword_10A928;
      v156 = v157;
      goto LABEL_32;
    }

    v171 = COERCE_DOUBLE(sub_1057C0());
    v173 = v172;
    (*(v159 + 8))(v157, v158);
    if ((v173 & 1) != 0 || v171 <= 0.0)
    {
      goto LABEL_33;
    }

    v174 = sub_106D10();
    v175 = sub_106FC0();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      *v176 = 0;
      _os_log_impl(&dword_0, v174, v175, "Reforming qualified alarm nlv3 input to timers instead.", v176, 2u);
    }

    sub_105FD0();
    v177 = v333;
    sub_105110();
    v178 = v363;
    sub_104BC0();

    (*(v335 + 8))(v177, v336);
    sub_16F70(v117, &qword_13AFE0, &qword_10A320);
    (*(v110 + 8))(v362, v109);
LABEL_41:
    v168 = sub_104BD0();
    v169 = *(*(v168 - 8) + 56);
    v170 = v178;
    return v169(v170, 0, 1, v168);
  }

  if (v106 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v80 + 96))(v105, v79);
    v122 = *(v105 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));
    v123 = sub_1053D0();
    v124 = v363;
    sub_F21A4(v123, v363);

    v125 = sub_104BD0();
    (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
    return (*(v357 + 8))(v105, v358);
  }

  if (v106 != enum case for Parse.directInvocation(_:))
  {
    if (v106 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v80 + 96))(v105, v79);
      v162 = *v105;
      v163 = sub_106D10();
      v164 = sub_106FC0();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 0;
        _os_log_impl(&dword_0, v163, v164, "Alarm domain: Hitting SiriX code path", v165, 2u);
      }

      v166 = v363;
      sub_F2748(v162, v363);
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    if (v106 != enum case for Parse.uso(_:))
    {
      if (v106 == enum case for Parse.ifClientAction(_:))
      {
        (*(v80 + 96))(v105, v79);
        v201 = v105;
        v202 = v321;
        v203 = v322;
        (*(v321 + 32))(v338, v201, v322);
        v204 = sub_106D10();
        v205 = sub_106FC0();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&dword_0, v204, v205, "Alarm domain: received ifClientAction parse.", v206, 2u);
        }

        v207 = v320;
        sub_105090();
        v208 = sub_106030();
        v210 = v319;
        if (v208 == 0x615F657461657263 && v209 == 0xEC0000006D72616CLL)
        {
        }

        else
        {
          v233 = sub_107370();

          if ((v233 & 1) == 0)
          {
            v252 = v318;
            v253 = v314;
            (*(v318 + 16))(v314, v207, v210);
            v254 = sub_106D10();
            v255 = sub_106FB0();
            if (os_log_type_enabled(v254, v255))
            {
              v256 = v252;
              v257 = swift_slowAlloc();
              v258 = swift_slowAlloc();
              v365 = v258;
              *v257 = 136315138;
              v259 = sub_106030();
              v260 = v253;
              v262 = v261;
              v263 = *(v256 + 8);
              v263(v260, v210);
              v264 = sub_722E8(v259, v262, &v365);

              *(v257 + 4) = v264;
              _os_log_impl(&dword_0, v254, v255, "Alarm domain unexpected client action toolId: %s", v257, 0xCu);
              sub_2738(v258);
            }

            else
            {

              v263 = *(v252 + 8);
              v263(v253, v210);
            }

            v178 = v363;
            sub_104B90();
            v263(v320, v210);
            (*(v321 + 8))(v338, v322);
            goto LABEL_41;
          }
        }

        sub_F5DBC(1, 1);
        v166 = v363;
        sub_104BB0();

        (*(v318 + 8))(v207, v210);
        (*(v202 + 8))(v338, v203);
        goto LABEL_34;
      }

      v226 = sub_106D10();
      v227 = sub_106FB0();
      if (os_log_type_enabled(v226, v227))
      {
        v228 = swift_slowAlloc();
        *v228 = 0;
        _os_log_impl(&dword_0, v226, v227, "FlowPlugin is unable to consume the alarm intent. Exiting the flow.", v228, 2u);
      }

      v229 = sub_104BD0();
      (*(*(v229 - 8) + 56))(v363, 1, 1, v229);
      return (v102)(v105, v79);
    }

    (*(v80 + 96))(v105, v79);
    v184 = v331;
    v185 = v330;
    v186 = v105;
    v187 = v332;
    (*(v331 + 32))(v330, v186, v332);
    v188 = sub_106D10();
    v189 = sub_106FC0();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      *v190 = 0;
      _os_log_impl(&dword_0, v188, v189, "Alarm domain: Hitting SiriX code path (receiving UsoParse)", v190, 2u);
    }

    v191 = v327;
    sub_105400();
    v192 = sub_105440();
    (*(v328 + 8))(v191, v329);
    if (v192)
    {
      if (!sub_F9670(v192))
      {
        v234 = v315;
        sub_274CC(v315);

        v166 = v363;
        sub_F2AF8(v234, 0, v192, v363);

        (*(v317 + 8))(v234, v316);
        goto LABEL_82;
      }

      v193 = sub_106D10();
      v194 = sub_106FC0();
      if (os_log_type_enabled(v193, v194))
      {
        v195 = swift_slowAlloc();
        *v195 = 0;
        _os_log_impl(&dword_0, v193, v194, "This is not supported nvl4 intent, use unsupportedFlow.", v195, 2u);
      }

      v166 = v363;
      sub_104BB0();
    }

    else
    {
      v230 = sub_106D10();
      v231 = sub_106FB0();
      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        *v232 = 0;
        _os_log_impl(&dword_0, v230, v231, "UsoTask is empty! Calling searchAlarmFlow anyways", v232, 2u);
      }

      sub_F6720();
      v166 = v363;
      sub_104BB0();
    }

LABEL_82:
    (*(v184 + 8))(v185, v187);
    goto LABEL_34;
  }

  (*(v80 + 96))(v105, v79);
  v136 = v346;
  v137 = v348;
  (*(v346 + 32))(v348, v105, v18);
  sub_1053A0();
  v138 = v340;
  sub_1065C0();
  v139 = v342;
  if ((*(v342 + 48))(v138, 1, v11) == 1)
  {
    sub_16F70(v138, &qword_13AFB0, &qword_10BB38);
    v140 = *(v136 + 16);
    v141 = v339;
    v140(v339, v137, v18);
    v142 = sub_106D10();
    v143 = sub_106FB0();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = v18;
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v365 = v146;
      *v145 = 136315138;
      v140(v337, v141, v144);
      v147 = sub_106E30();
      v149 = v148;
      v150 = *(v136 + 8);
      v150(v141, v144);
      v151 = sub_722E8(v147, v149, &v365);

      *(v145 + 4) = v151;
      _os_log_impl(&dword_0, v142, v143, "Alarm domain received a direct invocation we don't support: %s", v145, 0xCu);
      sub_2738(v146);

      v150(v348, v144);
    }

    else
    {

      v200 = *(v136 + 8);
      v200(v141, v18);
      v200(v137, v18);
    }

LABEL_88:
    v251 = sub_104BD0();
    return (*(*(v251 - 8) + 56))(v363, 1, 1, v251);
  }

  v343 = v18;
  (*(v139 + 32))(v347, v138, v11);
  v179 = sub_106D10();
  v180 = sub_106FC0();
  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    *v181 = 0;
    _os_log_impl(&dword_0, v179, v180, "Alarm domain: received known direct invocation", v181, 2u);
  }

  v182 = *(v139 + 104);
  v182(v341, enum case for DirectInvocationUtils.Alarm.URI.stopAlarm(_:), v11);
  sub_F9DEC(&qword_13AFE8, &type metadata accessor for DirectInvocationUtils.Alarm.URI);
  sub_106EB0();
  v344 = v11;
  sub_106EB0();
  if (v365 == v367 && v366 == v368)
  {
    v183 = 1;
  }

  else
  {
    v183 = sub_107370();
  }

  v198 = *(v139 + 8);
  v197 = v139 + 8;
  v196 = v198;
  v199 = v344;
  v198(v341, v344);

  if (v183)
  {
    sub_F6BF0();
    v166 = v363;
    sub_104BB0();

    v196(v347, v199);
LABEL_58:
    (*(v346 + 8))(v137, v343);
    goto LABEL_34;
  }

  v364 = v196;
  v211 = sub_1053B0();
  if (!v211)
  {
LABEL_85:
    v235 = v346;
    v236 = *(v346 + 16);
    v237 = v326;
    v238 = v137;
    v239 = v137;
    v240 = v343;
    v236(v326, v238, v343);
    v241 = sub_106D10();
    v242 = sub_106FB0();
    if (os_log_type_enabled(v241, v242))
    {
      v243 = swift_slowAlloc();
      v362 = swift_slowAlloc();
      v365 = v362;
      *v243 = 136315138;
      v244 = v343;
      v236(v337, v237, v343);
      v245 = sub_106E30();
      v247 = v246;
      v248 = *(v235 + 8);
      v248(v237, v244);
      v249 = sub_722E8(v245, v247, &v365);

      *(v243 + 4) = v249;
      _os_log_impl(&dword_0, v241, v242, "Missing or incorrect value for 'verb' key on known directInvocation: %s", v243, 0xCu);
      sub_2738(v362);

      (v364)(v347, v344);
      v248(v348, v244);
    }

    else
    {

      v250 = *(v235 + 8);
      v250(v237, v240);
      (v364)(v347, v344);
      v250(v239, v240);
    }

    goto LABEL_88;
  }

  v212 = v211;
  v213 = v324;
  v214 = v323;
  v215 = v325;
  (*(v324 + 104))(v323, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v325);
  v216 = sub_106590();
  v218 = v217;
  (*(v213 + 8))(v214, v215);
  if (!*(v212 + 16))
  {

    goto LABEL_84;
  }

  v219 = sub_32658(v216, v218);
  v221 = v220;

  if ((v221 & 1) == 0)
  {
LABEL_84:

    v137 = v348;
    goto LABEL_85;
  }

  sub_135FC(*(v212 + 56) + 32 * v219, &v365);

  v222 = swift_dynamicCast();
  v137 = v348;
  if ((v222 & 1) == 0)
  {
    goto LABEL_85;
  }

  v223 = v313;
  sub_106940();
  v224 = v317;
  v225 = v316;
  if ((*(v317 + 48))(v223, 1, v316) == 1)
  {
    sub_16F70(v223, &unk_1374A0, &qword_10BB30);
    goto LABEL_85;
  }

  v265 = v311;
  (*(v224 + 32))(v311, v223, v225);
  v266 = v344;
  v182(v312, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v344);
  sub_106EB0();
  sub_106EB0();
  if (v365 == v367 && v366 == v368)
  {
    (v364)(v312, v266);
  }

  else
  {
    v267 = sub_107370();
    (v364)(v312, v266);

    if ((v267 & 1) == 0)
    {
      v342 = v197;
      v282 = v309;
      (*(v317 + 104))(v309, enum case for AlarmNLv4Constants.AlarmVerb.create(_:), v316);
      sub_F9DEC(&unk_13AFF0, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
      sub_106EB0();
      sub_106EB0();
      if (v365 == v367 && v366 == v368)
      {
        v283 = 1;
      }

      else
      {
        v283 = sub_107370();
      }

      v288 = v317;
      v289 = *(v317 + 8);
      v290 = v282;
      v291 = v316;
      v289(v290, v316);

      if (v283)
      {
        sub_F5DBC(1, 1);
        v166 = v363;
        sub_104BB0();

        v289(v265, v291);
        (v364)(v347, v266);
        goto LABEL_58;
      }

      v292 = v265;
      v293 = *(v288 + 16);
      v294 = v308;
      v293(v308, v292, v291);
      v295 = sub_106D10();
      LODWORD(v362) = sub_106FA0();
      if (os_log_type_enabled(v295, v362))
      {
        v296 = swift_slowAlloc();
        v297 = swift_slowAlloc();
        v365 = v297;
        *v296 = 136315138;
        v293(v315, v294, v316);
        v298 = sub_106E30();
        v300 = v299;
        v289(v294, v316);
        v301 = sub_722E8(v298, v300, &v365);

        *(v296 + 4) = v301;
        _os_log_impl(&dword_0, v295, v362, "Handling known direct invocation with verb %s", v296, 0xCu);
        sub_2738(v297);
        v266 = v344;

        v291 = v316;
      }

      else
      {

        v289(v294, v291);
      }

      v178 = v363;
      v307 = v311;
      sub_F2AF8(v311, 1, 0, v363);
      v289(v307, v291);
      (v364)(v347, v266);
LABEL_102:
      (*(v346 + 8))(v137, v343);
      goto LABEL_41;
    }
  }

  v268 = v317;
  v269 = v310;
  v270 = v316;
  (*(v317 + 16))(v310, v265, v316);
  v271 = (*(v268 + 88))(v269, v270);
  if (v271 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {
    sub_106AC0();
    v272 = sub_106AB0();
    v273 = type metadata accessor for RecreateDeletedAlarmsFlow();
    v274 = *(v273 + 48);
    v275 = *(v273 + 52);
    v276 = swift_allocObject();
    v365 = sub_32AEC(v272, v276);
    sub_F9DEC(&qword_137FE0, type metadata accessor for RecreateDeletedAlarmsFlow);
    sub_104B30();

    v178 = v363;
    sub_104BB0();

    (*(v268 + 8))(v265, v270);
LABEL_101:
    (v364)(v347, v266);
    goto LABEL_102;
  }

  if (v271 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    sub_106AC0();
    v277 = sub_106AB0();
    AlarmFlow = type metadata accessor for UndoCreateAlarmFlow();
    v279 = *(AlarmFlow + 48);
    v280 = *(AlarmFlow + 52);
    v281 = swift_allocObject();
    v365 = sub_F5204(v277, v281);
    sub_F9DEC(&unk_13B000, type metadata accessor for UndoCreateAlarmFlow);
    sub_104B30();

    v178 = v363;
    sub_104BB0();

    (*(v317 + 8))(v265, v270);
    goto LABEL_101;
  }

  v284 = v346;
  if (v271 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:) || v271 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    sub_106AC0();
    v302 = sub_106AB0();
    v303 = type metadata accessor for UndoChangeStatusFlow();
    v304 = *(v303 + 48);
    v305 = *(v303 + 52);
    v306 = swift_allocObject();
    v365 = sub_72F94(v302, v306);
    sub_F9DEC(&qword_138860, type metadata accessor for UndoChangeStatusFlow);
    sub_104B30();

    v178 = v363;
    sub_104BB0();

    (*(v317 + 8))(v265, v270);
    (v364)(v347, v266);
    (*(v284 + 8))(v137, v343);
    goto LABEL_41;
  }

  v285 = v363;
  sub_F2AF8(v265, 1, 0, v363);
  v286 = *(v317 + 8);
  v286(v265, v270);
  (v364)(v347, v266);
  (*(v284 + 8))(v137, v343);
  v287 = sub_104BD0();
  (*(*(v287 - 8) + 56))(v285, 0, 1, v287);
  return (v286)(v310, v270);
}

uint64_t static Transformer<>.alarmToTimerParseTransformer.getter()
{
  sub_1053E0();

  return sub_105FD0();
}

uint64_t sub_F21A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&qword_137500, &qword_107E10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_25E4(&qword_13B028, &qword_10BB80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - v10;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v12 = sub_106D20();
  sub_135C4(v12, qword_13AF90);
  v13 = a1;
  v14 = sub_106D10();
  v15 = sub_106FC0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = a2;
    v17 = v16;
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *v17 = 136315138;
    v18 = v13;
    v19 = [v18 description];
    v20 = sub_106E20();
    v21 = v7;
    v23 = v22;

    v24 = sub_722E8(v20, v23, v43);
    v7 = v21;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_0, v14, v15, "AlarmFlowFactory: routing flow with SK intent: %s", v17, 0xCu);
    sub_2738(v41);

    a2 = v42;
  }

  sub_F31A0(v13, v11);
  v25 = sub_104BD0();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) != 1)
  {
    return (*(v26 + 32))(a2, v11, v25);
  }

  sub_16F70(v11, &qword_13B028, &qword_10BB80);
  sub_106800();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = [v27 time];
    if (v28)
    {
      sub_104570();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v31 = sub_1045E0();
    (*(*(v31 - 8) + 56))(v7, v29, 1, v31);
    sub_16F70(v7, &qword_137500, &qword_107E10);
    sub_F5DBC(v28 != 0, 0);
    goto LABEL_14;
  }

  sub_106840();
  if (swift_dynamicCastClass())
  {
    sub_F6264();
LABEL_14:
    sub_104BB0();
  }

  sub_106870();
  if (swift_dynamicCastClass())
  {
    sub_F6720();
    goto LABEL_14;
  }

  sub_1067A0();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    if ([v32 operation] == &dword_0 + 2)
    {
      sub_F6BF0();
    }

    else
    {
      sub_F6D34();
    }

    goto LABEL_14;
  }

  sub_1068D0();
  if (swift_dynamicCastClass())
  {
    sub_F71F0();
    goto LABEL_14;
  }

  sub_1068B0();
  if (swift_dynamicCastClass())
  {
    v33 = sub_104940();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v43[0] = sub_104950();
    sub_104B30();

    goto LABEL_14;
  }

  v36 = sub_106750();
  v43[3] = v36;
  v43[4] = &protocol witness table for ABCReport;
  v37 = sub_1A924(v43);
  *v37 = swift_getObjectType();
  v38 = enum case for UnhandledAbortSubtype.unknownIntent(_:);
  v39 = sub_106680();
  (*(*(v39 - 8) + 104))(v37, v38, v39);
  (*(*(v36 - 8) + 104))(v37, enum case for ABCReport.unhandledAbort(_:), v36);
  sub_1064D0();
  sub_2738(v43);
  return sub_104B90();
}

uint64_t sub_F2748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_106960();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v9 = sub_106D20();
  sub_135C4(v9, qword_13AF90);
  swift_unknownObjectRetain();
  v10 = sub_106D10();
  v11 = sub_106FC0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = a2;
    v13 = v12;
    v29 = swift_slowAlloc();
    v31 = a1;
    v32 = v29;
    *v13 = 136315138;
    swift_unknownObjectRetain();
    sub_25E4(&unk_137470, &unk_10BC40);
    v14 = sub_106E30();
    v16 = v8;
    v17 = v5;
    v18 = v4;
    v19 = sub_722E8(v14, v15, &v32);

    *(v13 + 4) = v19;
    v4 = v18;
    v5 = v17;
    v8 = v16;
    _os_log_impl(&dword_0, v10, v11, "AlarmFlowFactory: routing flow with nlv4 intent: %s", v13, 0xCu);
    sub_2738(v29);

    a2 = v30;
  }

  swift_getObjectType();
  v20 = sub_107000();
  if (!v20)
  {
    v25 = sub_106D10();
    v26 = sub_106FB0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "UsoTask is empty! Calling searchAlarmFlow anyways", v27, 2u);
    }

    sub_F6720();
    sub_104BB0();
  }

  v21 = v20;
  if (sub_F9670(v20))
  {
    v22 = sub_106D10();
    v23 = sub_106FC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "This is not supported nvl4 intent, use unsupportedFlow.", v24, 2u);
    }

    sub_104BB0();
  }

  sub_274CC(v8);

  sub_F2AF8(v8, 0, v21, a2);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_F2AF8@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_106960();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v56 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v59 = &v52[-v14];
  v15 = __chkstk_darwin(v13);
  v60 = &v52[-v16];
  __chkstk_darwin(v15);
  v18 = &v52[-v17];
  if (qword_136EE0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v19 = sub_106D20();
    v20 = sub_135C4(v19, qword_13AF90);
    v61 = *(v9 + 16);
    v62 = a1;
    v61(v18, a1, v8);
    v57 = v20;
    v21 = sub_106D10();
    v22 = sub_106FC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v54 = a3;
      v24 = v23;
      v25 = swift_slowAlloc();
      v55 = a4;
      v26 = v25;
      v63 = v25;
      *v24 = 136315138;
      v27 = sub_106950();
      v53 = a2;
      v29 = v28;
      v58 = *(v9 + 8);
      v58(v18, v8);
      v30 = sub_722E8(v27, v29, &v63);
      a2 = v53;

      *(v24 + 4) = v30;
      _os_log_impl(&dword_0, v21, v22, "AlarmFlowFactory: routing flow with verb: %s", v24, 0xCu);
      sub_2738(v26);
      a4 = v55;

      a3 = v54;
    }

    else
    {

      v58 = *(v9 + 8);
      v58(v18, v8);
    }

    a1 = v60;
    v31 = v61;
    v18 = v62;
    v61(v60, v62, v8);
    v32 = (*(v9 + 88))(a1, v8);
    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:))
    {
      v33 = v59;
      v31(v59, v18, v8);
      v34 = sub_106D10();
      v35 = sub_106FB0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = v31;
        v39 = v37;
        v63 = v37;
        *v36 = 136315138;
        v38(v56, v33, v8);
        v40 = sub_106E30();
        v41 = v33;
        v43 = v42;
        v58(v41, v8);
        v44 = sub_722E8(v40, v43, &v63);

        *(v36 + 4) = v44;
        _os_log_impl(&dword_0, v34, v35, "Unexpected alarmVerb: %s", v36, 0xCu);
        sub_2738(v39);
      }

      else
      {

        v58(v33, v8);
      }

LABEL_16:
      sub_F6720();
      goto LABEL_17;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
    {
      goto LABEL_16;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
    {
LABEL_10:
      if (a3)
      {
        v45 = sub_105E40();
        if (!v45)
        {
LABEL_21:
          sub_F5DBC(v45, a2 & 1);
          goto LABEL_17;
        }

        v46 = sub_1058F0();

        if (v46)
        {
          v47 = sub_105980();

          if (v47)
          {

            LOBYTE(v45) = 1;
            goto LABEL_21;
          }
        }
      }

      LOBYTE(v45) = 0;
      goto LABEL_21;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
    {
      sub_F6264();
      goto LABEL_17;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
    {
      break;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
    {
LABEL_25:
      sub_F6D34();
      goto LABEL_17;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:) || v32 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:))
    {
      goto LABEL_16;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:))
    {
      v49 = sub_104940();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      v63 = sub_104950();
      sub_104B30();

      goto LABEL_17;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
    {
      goto LABEL_16;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
    {
      sub_F71F0();
      goto LABEL_17;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
    {
      goto LABEL_10;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
    {
      break;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
    {
      goto LABEL_25;
    }

    if (v32 == enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
    {
      break;
    }

    sub_107360();
    __break(1u);
LABEL_38:
    swift_once();
  }

  sub_F6BF0();
LABEL_17:
  sub_104BB0();
}

uint64_t sub_F31A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_F5814(0))
  {
    goto LABEL_2;
  }

  sub_106800();
  if (swift_dynamicCastClass())
  {
    goto LABEL_21;
  }

  sub_106840();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    isa = a1;
    v8 = [v6 alarmSearch];
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_20:

    goto LABEL_21;
  }

  sub_106870();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    isa = a1;
    v8 = [v10 alarmSearch];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_1067A0();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      isa = a1;
      v8 = [v12 alarmSearch];
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1068D0();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
LABEL_21:
        v4 = 1;
        goto LABEL_22;
      }

      v14 = v13;
      isa = a1;
      v8 = [v14 alarmSearch];
      if (!v8)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_15:
  v15 = v8;
  v16 = [v8 includeSleepAlarm];
  sub_1F7B8();
  v17.super.super.isa = sub_107090(1).super.super.isa;
  if (!v16)
  {

    isa = v17.super.super.isa;
    goto LABEL_20;
  }

  v18 = sub_1070A0();

  if ((v18 & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = 1;
  if (sub_F5814(1))
  {
LABEL_2:
    sub_104BB0();

    v4 = 0;
  }

LABEL_22:
  v19 = sub_104BD0();
  v20 = *(*(v19 - 8) + 56);

  return v20(a2, v4, 1, v19);
}

uint64_t sub_F3420(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_25E4(&qword_13B0D8, &qword_10BC08);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_25E4(&qword_13B0E0, &qword_10BC10);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = sub_25E4(&unk_13B0E8, &unk_10BC18);
  v1[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v10 = sub_1063E0();
  v1[14] = v10;
  v11 = *(v10 - 8);
  v1[15] = v11;
  v12 = *(v11 + 64) + 15;
  v1[16] = swift_task_alloc();
  v13 = *(*(sub_25E4(&qword_1374F0, &qword_1080F0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_F3648, 0, 0);
}

uint64_t sub_F3648()
{
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13AF90);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AlarmFlowFactory: making snoozeAlarmFlow.", v4, 2u);
  }

  v5 = *(v0 + 128);

  sub_106780();
  sub_1063C0();
  v6 = async function pointer to SiriTimeDeviceContextProvider.fetchAlarmContexts()[1];
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_F37B0;
  v8 = *(v0 + 128);

  return SiriTimeDeviceContextProvider.fetchAlarmContexts()();
}

uint64_t sub_F37B0(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 160) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_F3910, 0, 0);
}

uint64_t sub_F3910()
{
  v30 = v0;
  v1 = v0[20];
  v2 = sub_106F00();

  if (*(v2 + 16))
  {
    v3 = v0[18];
    v4 = sub_106630();
    v5 = *(v4 - 8);
    (*(v5 + 16))(v3, v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    v6 = 0;
  }

  else
  {

    v4 = sub_106630();
    v5 = *(v4 - 8);
    v6 = 1;
  }

  v7 = v0[18];
  v8 = v0[13];
  v23 = v0[16];
  v24 = v0[12];
  v9 = v0[11];
  v10 = v0[8];
  v27 = v0[9];
  v28 = v0[17];
  v11 = v0[7];
  v25 = v0[10];
  v26 = v0[6];
  v12 = v0[4];
  v13 = v0[5];
  v21 = v12;
  v22 = v0[3];
  (*(v5 + 56))(v7, v6, 1, v4);
  sub_106560();
  sub_106550();
  sub_106540();

  sub_14994(v7, v8 + *(v9 + 36), &qword_1374F0, &qword_1080F0);
  sub_106550();
  sub_106540();

  sub_14994(v7, v28, &qword_1374F0, &qword_1080F0);
  sub_84A9C(v29, v28);
  (*(v10 + 16))(v27, v25, v11);
  v14 = sub_25E4(&qword_13B0F8, &qword_10BC28);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_104B10();
  sub_14994(v8, v24, &unk_13B0E8, &unk_10BC18);
  sub_B880C(&qword_13B100, &unk_13B0E8, &unk_10BC18);

  sub_104EA0();
  v17 = sub_104E80();
  (*(v13 + 8))(v26, v21);
  v0[2] = v17;
  sub_25E4(&qword_13B108, &unk_10BC30);
  sub_B880C(&unk_13B110, &qword_13B108, &unk_10BC30);
  v18 = sub_104B30();

  v22[3] = sub_1049D0();
  v22[4] = &protocol witness table for AnyFlow;

  *v22 = v18;
  (*(v10 + 8))(v25, v11);
  sub_16F70(v8, &unk_13B0E8, &unk_10BC18);
  sub_16F70(v7, &qword_1374F0, &qword_1080F0);

  v19 = v0[1];

  return v19();
}

uint64_t sub_F3D70(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_106630();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1063E0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = *(*(sub_25E4(&qword_1374F0, &qword_1080F0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_F3ED0, 0, 0);
}

uint64_t sub_F3ED0()
{
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  v0[11] = sub_135C4(v1, qword_13AF90);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AlarmFlowFactory: making decideDismissOrChangeAlarmStatusFlow.", v4, 2u);
  }

  v5 = v0[8];

  sub_106780();
  sub_1063C0();
  v6 = async function pointer to SiriTimeDeviceContextProvider.fetchAlarmContexts()[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_F403C;
  v8 = v0[8];

  return SiriTimeDeviceContextProvider.fetchAlarmContexts()();
}

uint64_t sub_F403C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_F419C, 0, 0);
}

uint64_t sub_F419C()
{
  v1 = v0[13];
  v2 = sub_106F00();

  if (*(v2 + 16))
  {
    (*(v0[4] + 16))(v0[10], v2 + ((*(v0[4] + 80) + 32) & ~*(v0[4] + 80)), v0[3]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[3];
  v7 = v0[4];

  (*(v7 + 56))(v4, v3, 1, v6);
  sub_14994(v4, v5, &qword_1374F0, &qword_1080F0);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = v0[11];
  v10 = v0[9];
  if (v8 == 1)
  {
    sub_16F70(v0[9], &qword_1374F0, &qword_1080F0);
    v11 = sub_106D10();
    v12 = sub_106FC0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "DecideDismissOrChangeStateFlow: Can NOT get valid HAL info, running changeAlarmStatusFlow.", v13, 2u);
    }

    v14 = v0[2];

    v15 = sub_F6D34();
    v14[3] = sub_1049D0();
    v14[4] = &protocol witness table for AnyFlow;
    *v14 = v15;
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v0[9], v0[3]);
    v16 = sub_106D10();
    v17 = sub_106FA0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "DecideDismissOrChangeStateFlow: Running dismissAlarmFlow.", v18, 2u);
    }

    v20 = v0[4];
    v19 = v0[5];
    v22 = v0[2];
    v21 = v0[3];

    v23 = sub_F986C(v19);
    v22[3] = sub_1049D0();
    v22[4] = &protocol witness table for AnyFlow;
    *v22 = v23;
    (*(v20 + 8))(v19, v21);
  }

  v24 = v0[9];
  v25 = v0[8];
  v26 = v0[5];
  sub_16F70(v0[10], &qword_1374F0, &qword_1080F0);

  v27 = v0[1];

  return v27();
}

uint64_t sub_F4490@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v136 = a1;
  v129 = a2;
  v3 = sub_1053C0();
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  __chkstk_darwin(v3);
  v123 = v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E4(&unk_13AFC0, &qword_10A928);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v116 - v8;
  v10 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v116 - v12;
  v14 = sub_105700();
  v126 = *(v14 - 8);
  v127 = v14;
  v15 = *(v126 + 64);
  __chkstk_darwin(v14);
  v124 = v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_105E80();
  v128 = *(v134 - 8);
  v17 = *(v128 + 64);
  v18 = __chkstk_darwin(v134);
  v125 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v116 - v21;
  __chkstk_darwin(v20);
  v133 = v116 - v23;
  v24 = sub_1053E0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v117 = v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v118 = v116 - v30;
  v31 = __chkstk_darwin(v29);
  v122 = v116 - v32;
  __chkstk_darwin(v31);
  v34 = v116 - v33;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v35 = sub_106D20();
  v132 = sub_135C4(v35, qword_13AF90);
  v36 = sub_106D10();
  v37 = sub_106FC0();
  v38 = os_log_type_enabled(v36, v37);
  v135 = v24;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v36, v37, "Transforming timer parse to alarm parse", v39, 2u);
    v24 = v135;
  }

  v130 = *(v25 + 16);
  v131 = v25 + 16;
  v130(v34, v136, v24);
  v40 = (*(v25 + 88))(v34, v24);
  if (v40 != enum case for Parse.NLv3IntentOnly(_:))
  {
    v54 = v40;
    if (v40 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v25 + 8))(v34, v24);
      v55 = sub_106D10();
      v56 = sub_106FB0();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_0, v55, v56, "Alarm domain was told to reform an NLv4 parse, which is not supported. Qualifying Alarm NLv4 parses should go directly to the Timer domain.", v57, 2u);
        v24 = v135;
      }

      v58 = v129;
      v59 = v136;
      v60 = v24;
      return (v130)(v58, v59, v60);
    }

    v81 = enum case for Parse.uso(_:);
    v82 = sub_106D10();
    v83 = sub_106FB0();
    v84 = os_log_type_enabled(v82, v83);
    if (v54 == v81)
    {
      if (v84)
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        v86 = "Alarm domain was told to reform a USO parse, which is not supported. Qualifying Alarm USO parses should go directly to the Timer domain.";
LABEL_27:
        _os_log_impl(&dword_0, v82, v83, v86, v85, 2u);
      }
    }

    else if (v84)
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      v86 = "Transformer should only be called for nlv3 parse. Check the caller to make sure it's not mis-used.";
      goto LABEL_27;
    }

    v91 = v135;
    v130(v129, v136, v135);
    return (*(v25 + 8))(v34, v91);
  }

  v116[1] = v2;
  (*(v25 + 96))(v34, v24);
  v41 = v128;
  v42 = v133;
  v43 = v34;
  v44 = v134;
  (*(v128 + 32))(v133, v43, v134);
  v45 = *(v41 + 16);
  v45(v22, v42, v44);
  v46 = type metadata accessor for AlarmNLIntent();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v119 = sub_B3800(v22);
  sub_B245C(v13);
  v50 = v126;
  v49 = v127;
  if ((*(v126 + 48))(v13, 1, v127) == 1)
  {
    v51 = &qword_13AFE0;
    v52 = &qword_10A320;
    v53 = v13;
LABEL_14:
    sub_16F70(v53, v51, v52);
    v66 = v134;
LABEL_15:
    v67 = v133;
    v68 = v125;
    v45(v125, v133, v66);
    v69 = sub_106D10();
    v70 = sub_106FB0();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = v68;
      v73 = swift_slowAlloc();
      v137[0] = v73;
      *v71 = 136315138;
      sub_F9DEC(&unk_13B018, &type metadata accessor for NLIntent);
      v74 = sub_107340();
      v75 = v66;
      v76 = v74;
      v78 = v77;
      v79 = *(v128 + 8);
      v79(v72, v75);
      v80 = sub_722E8(v76, v78, v137);
      v24 = v135;

      *(v71 + 4) = v80;
      _os_log_impl(&dword_0, v69, v70, "Not able to parse timer duration from alarm NLv3 intent %s", v71, 0xCu);
      sub_2738(v73);

      v79(v133, v134);
    }

    else
    {

      v87 = *(v128 + 8);
      v87(v68, v66);
      v87(v67, v66);
    }

    v58 = v129;
    v59 = v136;
    v60 = v24;
    return (v130)(v58, v59, v60);
  }

  v116[0] = v25;
  v61 = v124;
  (*(v50 + 32))(v124, v13, v49);
  v62 = v50;
  sub_1056E0();
  v63 = v49;
  v64 = sub_1057D0();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(v9, 1, v64) == 1)
  {
    (*(v62 + 8))(v61, v63);
    v51 = &unk_13AFC0;
    v52 = &qword_10A928;
    v53 = v9;
    goto LABEL_14;
  }

  sub_1057C0();
  v90 = v89;
  (*(v65 + 8))(v9, v64);
  v66 = v134;
  if (v90)
  {
    (*(v126 + 8))(v124, v127);
    v24 = v135;
    goto LABEL_15;
  }

  v92 = sub_106D10();
  v93 = sub_106FC0();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v137[0] = v95;
    *v94 = 136315138;
    v96 = sub_106F70();
    v98 = sub_722E8(v96, v97, v137);

    *(v94 + 4) = v98;
    _os_log_impl(&dword_0, v92, v93, "Found timer duration from alarmTime %s", v94, 0xCu);
    sub_2738(v95);
  }

  v99 = v135;
  v100 = v130;
  v102 = v120;
  v101 = v121;
  v103 = v116[0];
  sub_B2290();
  v104 = v123;
  sub_1065B0();

  v105 = v122;
  (*(v102 + 16))(v122, v104, v101);
  (*(v103 + 104))(v105, enum case for Parse.directInvocation(_:), v99);
  v106 = v118;
  v100(v118, v105, v99);
  v107 = sub_106D10();
  v108 = sub_106FC0();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v137[0] = v110;
    *v109 = 136315138;
    v111 = v103;
    v130(v117, v106, v99);
    v112 = sub_106E30();
    v114 = v113;
    (*(v111 + 8))(v106, v135);
    v115 = sub_722E8(v112, v114, v137);
    v103 = v111;

    *(v109 + 4) = v115;
    v99 = v135;
    _os_log_impl(&dword_0, v107, v108, "Alarm reformed alarm parse to timer: %s", v109, 0xCu);
    sub_2738(v110);

    (*(v120 + 8))(v123, v121);
  }

  else
  {

    (*(v103 + 8))(v106, v99);
    (*(v102 + 8))(v123, v101);
  }

  (*(v126 + 8))(v124, v127);
  (*(v128 + 8))(v133, v66);
  return (*(v103 + 32))(v129, v122, v99);
}

char *sub_F5204(uint64_t a1, char *a2)
{
  v4 = sub_106200();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v10 = sub_106AC0();
  v11 = &protocol witness table for SiriAlarmManagerImpl;
  *&v9 = a1;
  type metadata accessor for DeleteAlarmCATs_Async();
  sub_1061E0();
  *(a2 + 2) = sub_1060D0();
  type metadata accessor for DeleteAlarmCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 3) = sub_1060D0();
  sub_1061E0();
  *(a2 + 4) = sub_1060D0();
  type metadata accessor for ErrorCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 5) = sub_1060D0();
  *(a2 + 6) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  v6 = OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction;
  v7 = sub_104E10();
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  sub_1AD44(&v9, (a2 + 56));
  return a2;
}

uint64_t sub_F537C(uint64_t a1)
{
  v34 = a1;
  v1 = sub_25E4(&unk_13B1C0, &unk_10BCB0);
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_25E4(&qword_13AEE0, qword_10BAB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_25E4(&unk_13B1D0, &qword_10BCC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v19 = sub_106D20();
  sub_135C4(v19, qword_13AF90);
  v20 = sub_106D10();
  v21 = sub_106FC0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "AlarmFlowFactory: making createAlarmFlow.", v22, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v23 = *(v12 + 36);
  v24 = sub_106630();
  (*(*(v24 - 8) + 56))(&v18[v23], 1, 1, v24);
  sub_106550();
  sub_106540();

  sub_EBF84(v37, 0);
  (*(v5 + 16))(v9, v11, v4);
  v25 = sub_25E4(&qword_13B1E0, &qword_10BCC8);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_104B10();
  sub_14994(v18, v16, &unk_13B1D0, &qword_10BCC0);
  sub_B880C(&qword_13B1E8, &unk_13B1D0, &qword_10BCC0);

  v28 = v33;
  sub_104EA0();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  v29 = v36;
  v30 = sub_104E90();

  (*(v35 + 8))(v28, v29);
  (*(v5 + 8))(v11, v4);
  sub_16F70(v18, &unk_13B1D0, &qword_10BCC0);
  return v30;
}

uint64_t sub_F5814(int a1)
{
  v40 = a1;
  v1 = sub_106700();
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  __chkstk_darwin(v1);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1064A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1064C0();
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = *(v5 + 104);
  v41 = enum case for AppInstallUtil.Domain.alarm(_:);
  v16(v8);
  sub_1064B0();
  v17 = enum case for AppInstallUtil.Domain.sleep(_:);
  (v16)(v8, enum case for AppInstallUtil.Domain.sleep(_:), v4);
  sub_1064B0();
  v46 = v15;
  v18 = sub_106470();
  v45 = v13;
  v19 = sub_106470();
  v20 = v19;
  if (v18 & 1) != 0 && (v19)
  {
    if (qword_136EE0 != -1)
    {
      swift_once();
    }

    v21 = sub_106D20();
    sub_135C4(v21, qword_13AF90);
    v22 = sub_106D10();
    v23 = sub_106FA0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "genericTaskNeedInstallationFlow: Both alarms and sleep/health are installed — not checking task for sleep properties.", v24, 2u);

      v25 = *(v47 + 8);
      v25(v45, v9);
      v26 = v46;
      v27 = v9;
LABEL_17:
      v25(v26, v27);
      return 0;
    }

LABEL_16:
    v25 = *(v47 + 8);
    v25(v45, v9);
    v26 = v46;
    v27 = v9;
    goto LABEL_17;
  }

  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v28 = sub_106D20();
  sub_135C4(v28, qword_13AF90);
  v29 = sub_106D10();
  v30 = sub_106FA0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v39 = v9;
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "genericTaskNeedInstallationFlow: One of alarms or sleep/health is not installed.", v31, 2u);
    v9 = v39;
  }

  if (v18)
  {
    goto LABEL_16;
  }

  if (v20 & 1) != 0 && (v40)
  {
    (v16)(v8, v17, v4);
    v51 = &type metadata for UnsupportedAppNotInstalledWithSleepFallbackPatternExecutor;
    v52 = sub_F97C4();
  }

  else
  {
    v33 = v41;
    (v16)(v8, v41, v4);
    v51 = type metadata accessor for UnsupportedAppNotInstalledPatternExecutor();
    v52 = sub_F9DEC(&qword_13B120, type metadata accessor for UnsupportedAppNotInstalledPatternExecutor);
    v34 = sub_1A924(v50);
    (v16)(v34, v33, v4);
  }

  v48 = &type metadata for AlarmAppNotInstalledLegacyDialog;
  v49 = sub_F9770();
  v35 = v42;
  sub_1066F0();
  sub_F9DEC(&qword_13B130, &type metadata accessor for UnsupportedAppNotInstalledFlow);
  v36 = v44;
  v37 = sub_104B30();
  (*(v43 + 8))(v35, v36);
  v38 = *(v47 + 8);
  v38(v45, v9);
  v38(v46, v9);
  return v37;
}

uint64_t sub_F5DBC(char a1, char a2)
{
  v4 = sub_25E4(&unk_13B1C0, &unk_10BCB0);
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = sub_25E4(&qword_13AEE0, qword_10BAB0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = sub_25E4(&unk_13B1D0, &qword_10BCC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  if (a2 & 1) != 0 || (a1)
  {
    sub_106560();
    v36 = v8;
    v37 = v4;
    v24 = v8;
    sub_106550();
    sub_106540();

    v25 = *(v15 + 36);
    v26 = sub_106630();
    (*(*(v26 - 8) + 56))(&v21[v25], 1, 1, v26);
    sub_106550();
    sub_106540();

    v27 = v14;
    v35 = v14;
    sub_EBF84(v40, a2 & 1);
    v28 = v39;
    (*(v39 + 16))(v12, v27, v24);
    v29 = sub_25E4(&qword_13B1E0, &qword_10BCC8);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_104B10();
    sub_14994(v21, v19, &unk_13B1D0, &qword_10BCC0);
    sub_B880C(&qword_13B1E8, &unk_13B1D0, &qword_10BCC0);

    sub_104EA0();
    v32 = v37;
    v33 = sub_104E80();
    (*(v38 + 8))(v7, v32);
    v40[0] = v33;
    sub_25E4(&qword_13B1F0, &qword_10BCD0);
    sub_B880C(&qword_13B1F8, &qword_13B1F0, &qword_10BCD0);
    v23 = sub_104B30();

    (*(v28 + 8))(v35, v36);
    sub_16F70(v21, &unk_13B1D0, &qword_10BCC0);
  }

  else
  {
    type metadata accessor for CreateAlarmReformableFlow();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v40[0] = v22;
    sub_F9DEC(&qword_1382C0, type metadata accessor for CreateAlarmReformableFlow);
    v23 = sub_104B30();
  }

  return v23;
}

uint64_t sub_F6264()
{
  v0 = sub_25E4(&unk_13B030, &unk_10BB90);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = &v32 - v2;
  v3 = sub_25E4(&qword_13A338, &qword_10AB98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_25E4(&qword_13B040, &qword_10BBA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v18 = sub_106D20();
  sub_135C4(v18, qword_13AF90);
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "AlarmFlowFactory: making deleteAlarmFlow.", v21, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v22 = *(v11 + 36);
  v23 = sub_106630();
  (*(*(v23 - 8) + 56))(&v17[v22], 1, 1, v23);
  sub_106550();
  sub_106540();

  sub_C13DC(v35);
  (*(v4 + 16))(v8, v10, v3);
  v24 = sub_25E4(&qword_13B048, &qword_10BBA8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_104B10();
  sub_14994(v17, v15, &qword_13B040, &qword_10BBA0);
  sub_B880C(&qword_13B050, &qword_13B040, &qword_10BBA0);

  v27 = v32;
  sub_104EA0();
  v28 = v34;
  v29 = sub_104E80();
  (*(v33 + 8))(v27, v28);
  v35[0] = v29;
  sub_25E4(&qword_13B058, &qword_10BBB0);
  sub_B880C(&qword_13B060, &qword_13B058, &qword_10BBB0);
  v30 = sub_104B30();

  (*(v4 + 8))(v10, v3);
  sub_16F70(v17, &qword_13B040, &qword_10BBA0);
  return v30;
}

uint64_t sub_F6720()
{
  v0 = sub_25E4(&unk_13B150, &qword_10BC58);
  v34 = *(v0 - 8);
  v1 = *(v34 + 64);
  __chkstk_darwin(v0);
  v3 = &v31 - v2;
  v4 = sub_25E4(&qword_137060, &qword_10BC60);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v31 - v9;
  v10 = sub_25E4(&qword_13B160, &qword_10BC68);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v17 = sub_106D20();
  sub_135C4(v17, qword_13AF90);
  v18 = sub_106D10();
  v19 = sub_106FC0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "AlarmFlowFactory: making Search Alarm Flow.", v20, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v21 = *(v10 + 36);
  v22 = sub_106630();
  v23 = *(*(v22 - 8) + 56);
  v32 = v16;
  v23(&v16[v21], 1, 1, v22);
  sub_106550();
  sub_106540();

  v24 = v35;
  sub_1EE8(v36);
  v25 = v33;
  (*(v33 + 16))(v8, v24, v4);
  v26 = sub_25E4(&qword_13B168, &qword_10BC70);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_104B10();
  sub_14994(v16, v14, &qword_13B160, &qword_10BC68);
  sub_B880C(&qword_13B170, &qword_13B160, &qword_10BC68);

  sub_104EA0();
  v36[0] = sub_104E80();
  sub_25E4(&qword_13B178, &qword_10BC78);
  sub_B880C(&qword_13B180, &qword_13B178, &qword_10BC78);
  v29 = sub_104B30();

  (*(v34 + 8))(v3, v0);
  (*(v25 + 8))(v35, v4);
  sub_16F70(v32, &qword_13B160, &qword_10BC68);
  return v29;
}

uint64_t sub_F6BF0()
{
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v0 = sub_106D20();
  sub_135C4(v0, qword_13AF90);
  v1 = sub_106D10();
  v2 = sub_106FC0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "AlarmFlowFactory: making DecideDismissOrChangeStateFlow.", v3, 2u);
  }

  v4 = sub_104940();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_104950();
  v7 = sub_104B30();

  return v7;
}

uint64_t sub_F6D34()
{
  v0 = sub_25E4(&qword_13B068, &qword_10BBB8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = &v32 - v2;
  v3 = sub_25E4(&qword_13B070, &qword_10BBC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_25E4(&qword_13B078, &qword_10BBC8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v18 = sub_106D20();
  sub_135C4(v18, qword_13AF90);
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "AlarmFlowFactory: making changeAlarmStatusFlow.", v21, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v22 = *(v11 + 36);
  v23 = sub_106630();
  (*(*(v23 - 8) + 56))(&v17[v22], 1, 1, v23);
  sub_106550();
  sub_106540();

  sub_8A8E4(v35);
  (*(v4 + 16))(v8, v10, v3);
  v24 = sub_25E4(&qword_13B080, &qword_10BBD0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_104B10();
  sub_14994(v17, v15, &qword_13B078, &qword_10BBC8);
  sub_B880C(&qword_13B088, &qword_13B078, &qword_10BBC8);

  v27 = v32;
  sub_104EA0();
  v28 = v34;
  v29 = sub_104E80();
  (*(v33 + 8))(v27, v28);
  v35[0] = v29;
  sub_25E4(&qword_13B090, &qword_10BBD8);
  sub_B880C(&qword_13B098, &qword_13B090, &qword_10BBD8);
  v30 = sub_104B30();

  (*(v4 + 8))(v10, v3);
  sub_16F70(v17, &qword_13B078, &qword_10BBC8);
  return v30;
}

uint64_t sub_F71F0()
{
  v0 = sub_25E4(&unk_13B0A0, &unk_10BBE0);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = &v32 - v2;
  v3 = sub_25E4(&qword_1375D0, &qword_107FA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_25E4(&qword_13B0B0, &qword_10BBF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v18 = sub_106D20();
  sub_135C4(v18, qword_13AF90);
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "AlarmFlowFactory: making updateAlarmFlow.", v21, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v22 = *(v11 + 36);
  v23 = sub_106630();
  (*(*(v23 - 8) + 56))(&v17[v22], 1, 1, v23);
  sub_106550();
  sub_106540();

  sub_1AAC8(v35);
  (*(v4 + 16))(v8, v10, v3);
  v24 = sub_25E4(&qword_13B0B8, &qword_10BBF8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_104B10();
  sub_14994(v17, v15, &qword_13B0B0, &qword_10BBF0);
  sub_B880C(&qword_13B0C0, &qword_13B0B0, &qword_10BBF0);

  v27 = v32;
  sub_104EA0();
  v28 = v34;
  v29 = sub_104E80();
  (*(v33 + 8))(v27, v28);
  v35[0] = v29;
  sub_25E4(&qword_13B0C8, &qword_10BC00);
  sub_B880C(&qword_13B0D0, &qword_13B0C8, &qword_10BC00);
  v30 = sub_104B30();

  (*(v4 + 8))(v10, v3);
  sub_16F70(v17, &qword_13B0B0, &qword_10BBF0);
  return v30;
}

BOOL sub_F76AC(uint64_t a1)
{
  v2 = sub_105590();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_105940();
    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105A20();
      if (swift_dynamicCast())
      {

        sub_105930();

        if (v101[0])
        {
          v7 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v8 = sub_AB75C(v6, v7);

          (*(v3 + 8))(v6, v2);
          if (v8)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v9 = sub_106D20();
            sub_135C4(v9, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v14 = sub_106E30();
            v16 = sub_722E8(v14, v15, v101);

            *(v12 + 4) = v16;
            v17 = "Detected sleep attribute in UsoTask_create_common_Alarm: %s";
LABEL_135:
            _os_log_impl(&dword_0, v10, v11, v17, v12, 0xCu);
            sub_2738(v13);

LABEL_136:

LABEL_137:

            LOBYTE(v22) = 1;
LABEL_153:
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v90 = sub_106D20();
            sub_135C4(v90, qword_13AF90);
            v91 = sub_106D10();
            v92 = sub_106FA0();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              v101[0] = v94;
              *v93 = 136315138;
              if (v22)
              {
                v95 = 5457241;
              }

              else
              {
                v95 = 20302;
              }

              if (v22)
              {
                v96 = 0xE300000000000000;
              }

              else
              {
                v96 = 0xE200000000000000;
              }

              v97 = sub_722E8(v95, v96, v101);

              *(v93 + 4) = v97;
              _os_log_impl(&dword_0, v91, v92, "genericTaskHasSleepAttribute: Task requires sleep attribute: %s", v93, 0xCu);
              sub_2738(v94);
            }

            else
            {
            }

            sub_16F70(v103, &qword_137490, qword_108C80);
            return v22;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105AC0();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v101[0])
        {
          v23 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v24 = sub_AB75C(v6, v23);

          (*(v3 + 8))(v6, v2);
          if (v24)
          {
LABEL_42:
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v33 = sub_106D20();
            sub_135C4(v33, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v34 = sub_106E30();
            v36 = sub_722E8(v34, v35, v101);

            *(v12 + 4) = v36;
            v17 = "Detected sleep attribute for UsoTask_disable_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105D80();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v101[0])
        {
          v25 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v26 = sub_AB75C(v6, v25);

          (*(v3 + 8))(v6, v2);
          if (v26)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v27 = sub_106D20();
            sub_135C4(v27, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v28 = sub_106E30();
            v30 = sub_722E8(v28, v29, v101);

            *(v12 + 4) = v30;
            v17 = "Detected sleep attribute for UsoTask_checkExistence_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105AC0();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v101[0])
        {
          v31 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v32 = sub_AB75C(v6, v31);

          (*(v3 + 8))(v6, v2);
          if (v32)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105A50();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v101[0])
        {
          v37 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v38 = sub_AB75C(v6, v37);

          (*(v3 + 8))(v6, v2);
          if (v38)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v39 = sub_106D20();
            sub_135C4(v39, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v40 = sub_106E30();
            v42 = sub_722E8(v40, v41, v101);

            *(v12 + 4) = v42;
            v17 = "Detected sleep attribute for UsoTask_enable_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105A60();
      if (swift_dynamicCast())
      {

        sub_105570();

        if (v101[0])
        {
          v43 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v44 = sub_AB75C(v6, v43);

          (*(v3 + 8))(v6, v2);
          if (v44)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v45 = sub_106D20();
            sub_135C4(v45, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v46 = sub_106E30();
            v48 = sub_722E8(v46, v47, v101);

            *(v12 + 4) = v48;
            v17 = "Detected sleep attribute for UsoTask_noVerb_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105990();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v101[0])
        {
          v49 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v50 = sub_AB75C(v6, v49);

          (*(v3 + 8))(v6, v2);
          if (v50)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v51 = sub_106D20();
            sub_135C4(v51, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v52 = sub_106E30();
            v54 = sub_722E8(v52, v53, v101);

            *(v12 + 4) = v54;
            v17 = "Detected sleep attribute for UsoTask_read_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105AD0();
      if (swift_dynamicCast())
      {

        sub_105C40();

        if (v101[0])
        {
          v55 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v56 = sub_AB75C(v6, v55);

          (*(v3 + 8))(v6, v2);
          if (v56)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v57 = sub_106D20();
            sub_135C4(v57, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v58 = sub_106E30();
            v60 = sub_722E8(v58, v59, v101);

            *(v12 + 4) = v60;
            v17 = "Detected sleep attribute for UsoTask_request_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105A90();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v101[0])
        {
          v61 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v62 = sub_AB75C(v6, v61);

          (*(v3 + 8))(v6, v2);
          if (v62)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v63 = sub_106D20();
            sub_135C4(v63, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v64 = sub_106E30();
            v66 = sub_722E8(v64, v65, v101);

            *(v12 + 4) = v66;
            v17 = "Detected sleep attribute for UsoTask_snooze_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105B80();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v101[0])
        {
          v67 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v68 = sub_AB75C(v6, v67);

          (*(v3 + 8))(v6, v2);
          if (v68)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v69 = sub_106D20();
            sub_135C4(v69, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v70 = sub_106E30();
            v72 = sub_722E8(v70, v71, v101);

            *(v12 + 4) = v72;
            v17 = "Detected sleep attribute for UsoTask_summarise_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105AA0();
      if (swift_dynamicCast())
      {

        sub_105C50();
        if (v101[0])
        {
          v73 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v22 = sub_AB75C(v6, v73);

          (*(v3 + 8))(v6, v2);
        }

        else
        {
          v22 = 0;
        }

        sub_105C60();

        if (v101[0])
        {
          v80 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v81 = sub_AB75C(v6, v80);

          (*(v3 + 8))(v6, v2);
          if (v81 || v22)
          {
LABEL_142:
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v82 = sub_106D20();
            sub_135C4(v82, qword_13AF90);

            v83 = sub_106D10();
            v84 = sub_106FC0();

            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v100 = a1;
              v101[0] = v86;
              *v85 = 136315138;
              sub_105E60();

              v87 = sub_106E30();
              v89 = sub_722E8(v87, v88, v101);

              *(v85 + 4) = v89;
              _os_log_impl(&dword_0, v83, v84, "Detected sleep attribute for UsoTask_update_common_Alarm: %s", v85, 0xCu);
              sub_2738(v86);
            }

            goto LABEL_137;
          }
        }

        else if (v22)
        {
          goto LABEL_142;
        }

        goto LABEL_153;
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    sub_14994(v103, v101, &qword_137490, qword_108C80);
    if (v102)
    {
      sub_105A30();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v101[0])
        {
          v74 = sub_ACBCC();
          (*(v3 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v75 = sub_AB75C(v6, v74);

          (*(v3 + 8))(v6, v2);
          if (v75)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v76 = sub_106D20();
            sub_135C4(v76, qword_13AF90);

            v10 = sub_106D10();
            v11 = sub_106FC0();

            if (!os_log_type_enabled(v10, v11))
            {
              goto LABEL_136;
            }

            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v100 = a1;
            v101[0] = v13;
            *v12 = 136315138;
            sub_105E60();

            v77 = sub_106E30();
            v79 = sub_722E8(v77, v78, v101);

            *(v12 + 4) = v79;
            v17 = "Detected sleep attribute for UsoTask_delete_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v101, &qword_137490, qword_108C80);
    }

    LOBYTE(v22) = 0;
    goto LABEL_153;
  }

  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v18 = sub_106D20();
  sub_135C4(v18, qword_13AF90);
  v19 = sub_106D10();
  v20 = sub_106FA0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "genericTaskHasSleepAttribute: Input task was nil", v21, 2u);
  }

  LOBYTE(v22) = 0;
  return v22;
}

uint64_t sub_F91EC(uint64_t a1)
{
  v2 = sub_106200();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_105590();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_F76AC(a1);
  result = sub_F5814(v9);
  if (result)
  {
    return result;
  }

  sub_105940();
  sub_14994(v27, v26, &qword_137490, qword_108C80);
  if (!v26[3])
  {
    sub_16F70(v27, &qword_137490, qword_108C80);
    v24 = v26;
LABEL_13:
    sub_16F70(v24, &qword_137490, qword_108C80);
    return 0;
  }

  sub_105A20();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = v27;
    goto LABEL_13;
  }

  sub_105930();

  if (!v26[0])
  {
    sub_16F70(v27, &qword_137490, qword_108C80);

    return 0;
  }

  v11 = sub_ACBCC();
  (*(v5 + 104))(v8, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v4);
  v12 = sub_AB75C(v8, v11);

  (*(v5 + 8))(v8, v4);
  if (!v12)
  {
    sub_16F70(v27, &qword_137490, qword_108C80);

    return 0;
  }

  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v13 = sub_106D20();
  sub_135C4(v13, qword_13AF90);

  v14 = sub_106D10();
  v15 = sub_106FC0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[1] = a1;
    v26[0] = v17;
    *v16 = 136315138;

    sub_25E4(&qword_13B148, &qword_10BC50);
    v18 = sub_106E30();
    v20 = sub_722E8(v18, v19, v26);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v14, v15, "Detected sleep attribute in create: %s", v16, 0xCu);
    sub_2738(v17);
  }

  type metadata accessor for CreateAlarmCATs_Async();
  sub_1061E0();
  v21 = sub_1060D0();
  type metadata accessor for CreateAlarmCATPatternsExecutor(0);
  sub_1061E0();
  v22 = sub_1060D0();
  v26[0] = v21;
  v26[1] = v22;
  sub_F9818();
  v23 = sub_104B30();

  sub_16F70(v27, &qword_137490, qword_108C80);
  return v23;
}

uint64_t sub_F9670(uint64_t a1)
{
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_106D20();
  sub_135C4(v2, qword_13AF90);
  v3 = sub_106D10();
  v4 = sub_106FC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "AlarmFlowFactory: Testing for qualified AlarmFlowFactory.getUnsupportedFlow()", v5, 2u);
  }

  return sub_F91EC(a1);
}

unint64_t sub_F9770()
{
  result = qword_13B128;
  if (!qword_13B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13B128);
  }

  return result;
}

unint64_t sub_F97C4()
{
  result = qword_13B138;
  if (!qword_13B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13B138);
  }

  return result;
}

unint64_t sub_F9818()
{
  result = qword_13B140;
  if (!qword_13B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13B140);
  }

  return result;
}

uint64_t sub_F986C(uint64_t a1)
{
  v41 = a1;
  v45 = sub_25E4(&qword_13B188, &qword_10BC88);
  v43 = *(v45 - 8);
  v1 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = &v37 - v2;
  v3 = sub_106630();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25E4(&qword_13B190, &qword_10BC90);
  v40 = *(v44 - 8);
  v8 = *(v40 + 64);
  v9 = __chkstk_darwin(v44);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_25E4(&qword_13B198, &qword_10BC98);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v19 = sub_106D20();
  sub_135C4(v19, qword_13AF90);
  v20 = sub_106D10();
  v21 = sub_106FC0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "AlarmFlowFactory: making dismissAlarmFlow.", v22, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v23 = *(v13 + 36);
  v24 = *(v4 + 16);
  v37 = v13;
  v25 = v41;
  v24(&v18[v23], v41, v3);
  (*(v4 + 56))(&v18[v23], 0, 1, v3);
  sub_106550();
  sub_106540();

  v24(v7, v25, v3);
  v26 = v12;
  sub_26FE0(v46, v7);
  v27 = v40;
  v28 = v44;
  (*(v40 + 16))(v38, v26, v44);
  v29 = sub_25E4(&qword_13B1A0, &qword_10BCA0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_104B10();
  sub_14994(v18, v39, &qword_13B198, &qword_10BC98);
  sub_B880C(&qword_13B1A8, &qword_13B198, &qword_10BC98);

  v32 = v42;
  sub_104EA0();
  v33 = v45;
  v34 = sub_104E80();
  (*(v43 + 8))(v32, v33);
  v46[0] = v34;
  sub_25E4(&qword_13B1B0, &qword_10BCA8);
  sub_B880C(&qword_13B1B8, &qword_13B1B0, &qword_10BCA8);
  v35 = sub_104B30();

  (*(v27 + 8))(v26, v28);
  sub_16F70(v18, &qword_13B198, &qword_10BC98);
  return v35;
}

uint64_t sub_F9DEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_F9E3C()
{
  sub_1B2C0();
  if (v0 <= 0x3F)
  {
    sub_B9880();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_F9ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_F9FA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_FA06C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B200);
  sub_135C4(v0, qword_13B200);
  return sub_106A80();
}

uint64_t sub_FA0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_FA0DC, 0, 0);
}

uint64_t sub_FA0DC()
{
  if (qword_136EE8 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13B200);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AlarmIntents.FlowStrategy.makeIntentExecutionBehavior is called.", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  v9 = sub_169D8(v8, v7, v5 + *(v6 + 36));
  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_FA214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v44 = sub_105380();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v41 - v10;
  v12 = sub_1053E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136EE8 != -1)
  {
    swift_once();
  }

  v43 = v5;
  v17 = sub_106D20();
  sub_135C4(v17, qword_13B200);
  v18 = sub_106D10();
  v19 = sub_106FC0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Base AlarmIntents.FlowStrategy.actionForInput() called..", v20, 2u);
  }

  sub_105360();
  v21 = *(a2 + 16);
  v22 = *(a2 + 36);
  v23 = v45;
  v24 = sub_14F94(v16, v21, v45 + v22);
  (*(v13 + 8))(v16, v12);
  if (v24)
  {
    v26 = v42;
    v25 = v43;
    v27 = v44;
    (*(v43 + 16))(v42, a1, v44);
    v28 = sub_106D10();
    v29 = sub_106FB0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v25;
      v31 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v21;
      v48 = v45;
      *v31 = 136315394;
      swift_getMetatypeMetadata();
      v32 = sub_106E30();
      v34 = sub_722E8(v32, v33, &v48);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      sub_105360();
      v35 = sub_106E30();
      v37 = v36;
      (*(v30 + 8))(v26, v27);
      v38 = sub_722E8(v35, v37, &v48);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_0, v28, v29, "Current intent is incompatible with new input in makeIntentExecutionBehavior. Current Intent: %s, parse: %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v25 + 8))(v26, v27);
    }

    return sub_104E60();
  }

  else
  {
    v39 = sub_106450();
    (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
    sub_C140(a1, v23 + v22, 0, v11, v21, v46);
    return sub_16F70(v11, &unk_1374C0, &unk_1087B0);
  }
}

uint64_t sub_FA6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_56FA4;

  return sub_FAD60(a1, a3);
}

uint64_t sub_FA780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_FA844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1CE64;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_FA910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1CE64;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_FA9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1CE64;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_FAAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1CA94;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_FAB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1CE64;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_FAC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_32420;

  return sub_FA0B8(a1, a2, a3);
}

uint64_t sub_FAD60(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1053E0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_1062B0();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_FAE8C, 0, 0);
}

uint64_t sub_FAE8C()
{
  v65 = v0;
  if (qword_136EE8 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13B200);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Base AlarmIntents.FlowStrategy.makeIntentFromParse() called.", v4, 2u);
  }

  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);

  v8 = sub_579C(v7, v5 + *(v6 + 36));
  if (v8)
  {
    v9 = v8;
    v10 = *(*(v0 + 24) + 16);
    v11 = swift_dynamicCastUnknownClass();
    if (v11)
    {
      v12 = v11;
      v13 = objc_allocWithZone(_INPBIntentMetadata);
      v14 = v9;
      v15 = [v13 init];
      [v12 _setMetadata:v15];

      v16 = [v12 _metadata];
      if (v16)
      {
        v17 = v16;
        v19 = *(v0 + 80);
        v18 = *(v0 + 88);
        v20 = *(v0 + 72);
        (*(v19 + 104))(v18, enum case for SiriTimeAppBundleId.alarmExtension(_:), v20);
        sub_1062A0();
        (*(v19 + 8))(v18, v20);
        v21 = sub_106E10();

        [v17 setSystemExtensionBundleId:v21];
      }

      v22 = *(v0 + 88);
      v24 = *(v0 + 56);
      v23 = *(v0 + 64);
      v25 = sub_107070();

      v26 = sub_107060();

      v27 = *(v0 + 8);

      return v27(v26);
    }

    v42 = v9;
    v43 = sub_106D10();
    v44 = sub_106FB0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64[0] = v47;
      *v45 = 138412546;
      *(v45 + 4) = v42;
      *v46 = v9;
      *(v45 + 12) = 2080;
      v48 = v42;
      v49 = sub_107480();
      v51 = sub_722E8(v49, v50, v64);

      *(v45 + 14) = v51;
      _os_log_impl(&dword_0, v43, v44, "Intent: %@ doesn't match intentType (we shouldn't ever get here): %s", v45, 0x16u);
      sub_16F70(v46, &qword_137578, &unk_10B4E0);

      sub_2738(v47);
    }

    v52 = *(v0 + 24);
    *(v0 + 97) = 0;
    v53 = *(v52 + 24);
    type metadata accessor for AlarmIntents.FlowError();
    swift_getWitnessTable();
    swift_allocError();
    sub_1064E0();
    swift_willThrow();
  }

  else
  {
    v29 = *(*(v0 + 48) + 16);
    v29(*(v0 + 64), *(v0 + 16), *(v0 + 40));
    v30 = sub_106D10();
    v31 = sub_106FB0();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 64);
    if (v32)
    {
      v34 = *(v0 + 48);
      v35 = *(v0 + 56);
      v36 = *(v0 + 40);
      v37 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64[0] = v63;
      *v37 = 136315138;
      v29(v35, v33, v36);
      v38 = sub_106E30();
      v40 = v39;
      (*(v34 + 8))(v33, v36);
      v41 = sub_722E8(v38, v40, v64);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_0, v30, v31, "Failed to parse intent from parse in makeIntentFromParse %s", v37, 0xCu);
      sub_2738(v63);
    }

    else
    {
      v54 = *(v0 + 40);
      v55 = *(v0 + 48);

      (*(v55 + 8))(v33, v54);
    }

    v56 = *(v0 + 24);
    *(v0 + 96) = 0;
    v57 = *(v56 + 16);
    v58 = *(v56 + 24);
    type metadata accessor for AlarmIntents.FlowError();
    swift_getWitnessTable();
    swift_allocError();
    sub_1064E0();
    swift_willThrow();
  }

  v59 = *(v0 + 88);
  v61 = *(v0 + 56);
  v60 = *(v0 + 64);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t type metadata accessor for DeleteAlarmCATsSimple()
{
  result = qword_13B298;
  if (!qword_13B298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FB598(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

uint64_t sub_FB720(uint64_t a1, uint64_t a2)
{
  v4 = sub_106200();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_106180();
  (*(v5 + 8))(a2, v4);
  return v11;
}

char *UndoCreateAlarmFlow.__allocating_init()()
{
  sub_106AC0();
  v0 = sub_106AB0();
  AlarmFlow = type metadata accessor for UndoCreateAlarmFlow();
  v2 = *(AlarmFlow + 48);
  v3 = *(AlarmFlow + 52);
  v4 = swift_allocObject();

  return sub_F5204(v0, v4);
}

uint64_t sub_FB89C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B2E8);
  sub_135C4(v0, qword_13B2E8);
  return sub_106A80();
}

char *UndoCreateAlarmFlow.__allocating_init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_2B610(a1, v3);
  v6 = sub_1017D4(v5, v1, v3, v4);
  sub_2738(a1);
  return v6;
}

uint64_t type metadata accessor for UndoCreateAlarmFlow()
{
  result = qword_13B330;
  if (!qword_13B330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *UndoCreateAlarmFlow.init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_2B610(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_101628(v8, v1, v3, v4);
  sub_2738(a1);
  return v10;
}

uint64_t UndoCreateAlarmFlow.on(input:)()
{
  v0 = sub_25E4(&qword_137FD0, &unk_1087C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v84 = &v80 - v2;
  v3 = sub_1065E0();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  __chkstk_darwin(v3);
  v86 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v92 = &v80 - v8;
  v9 = sub_106960();
  v10 = *(v9 - 8);
  v93 = v9;
  v94 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v89 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v80 - v14;
  v15 = sub_1065A0();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v90 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = sub_1053C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1053E0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105360();
  if ((*(v28 + 88))(v31, v27) != enum case for Parse.directInvocation(_:))
  {
    (*(v28 + 8))(v31, v27);
    return 0;
  }

  (*(v28 + 96))(v31, v27);
  (*(v23 + 32))(v26, v31, v22);
  v32 = sub_1053B0();
  v33 = v22;
  if (!v32)
  {
    (*(v23 + 8))(v26, v22);
    return 0;
  }

  v34 = v32;
  v83 = v26;
  v35 = v16[13];
  v35(v21, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v15);
  v36 = sub_106590();
  v38 = v37;
  v82 = v16[1];
  v82(v21, v15);
  if (!*(v34 + 16))
  {

    goto LABEL_11;
  }

  v39 = sub_32658(v36, v38);
  v41 = v40;

  if ((v41 & 1) == 0)
  {
LABEL_11:

    (*(v23 + 8))(v83, v33);
    return 0;
  }

  sub_135FC(*(v34 + 56) + 32 * v39, v97);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v23 + 8))(v83, v33);

    return 0;
  }

  v42 = v35;
  v81 = v33;
  v43 = v92;
  sub_106940();
  v44 = v93;
  v45 = v94;
  if ((*(v94 + 48))(v43, 1, v93) == 1)
  {
    (*(v23 + 8))(v83, v81);

    sub_16F70(v43, &unk_1374A0, &qword_10BB30);
    return 0;
  }

  v47 = v43;
  v48 = v91;
  (*(v45 + 32))(v91, v47, v44);
  v49 = v90;
  v42(v90, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v15);
  v50 = sub_106590();
  v51 = v34;
  v53 = v52;
  v82(v49, v15);
  if (!*(v51 + 16))
  {

    goto LABEL_21;
  }

  v54 = sub_32658(v50, v53);
  v56 = v55;

  if ((v56 & 1) == 0)
  {
LABEL_21:

    v67 = v83;
    (*(v94 + 8))(v48, v44);
    (*(v23 + 8))(v67, v81);
    return 0;
  }

  sub_135FC(*(v51 + 56) + 32 * v54, v97);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v94 + 8))(v48, v44);
    (*(v23 + 8))(v83, v81);
    return 0;
  }

  v92 = v51;
  v57 = v96;
  v90 = v95;
  v58 = sub_1053A0();
  v60 = v59;
  v61 = v86;
  v62 = v87;
  v63 = v88;
  (*(v87 + 104))(v86, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v88);
  v64 = sub_1065D0();
  v66 = v65;
  (*(v62 + 8))(v61, v63);
  if (v58 == v64 && v60 == v66)
  {
  }

  else
  {
    v68 = sub_107370();

    if ((v68 & 1) == 0)
    {

      v70 = *(v94 + 8);
      goto LABEL_36;
    }
  }

  (*(v94 + 104))(v89, enum case for AlarmNLv4Constants.AlarmVerb.delete(_:), v93);
  sub_1019E4(&unk_13AFF0, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
  sub_106EB0();
  sub_106EB0();
  if (v97[0] == v95 && v97[1] == v96)
  {
    v69 = 1;
  }

  else
  {
    v69 = sub_107370();
  }

  v70 = *(v94 + 8);
  v70(v89, v93);

  if ((v69 & 1) == 0)
  {

LABEL_36:
    v79 = v81;
    v70(v91, v93);
    (*(v23 + 8))(v83, v79);
    return 0;
  }

  if (qword_136EF0 != -1)
  {
    swift_once();
  }

  v71 = sub_106D20();
  sub_135C4(v71, qword_13B2E8);
  v72 = sub_106D10();
  v73 = sub_106FC0();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_0, v72, v73, "UndoCreateAlarmFlow: accepting input.", v74, 2u);
  }

  v75 = v85;
  v76 = *(v85 + 104);
  *(v85 + 96) = v90;
  *(v75 + 104) = v57;

  v77 = v84;
  sub_20368(v92, v84);

  v70(v91, v93);
  (*(v23 + 8))(v83, v81);
  v78 = OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction;
  swift_beginAccess();
  sub_32EEC(v77, v75 + v78);
  swift_endAccess();
  return 1;
}

uint64_t UndoCreateAlarmFlow.execute(completion:)()
{
  type metadata accessor for UndoCreateAlarmFlow();
  sub_1019E4(&unk_13B000, type metadata accessor for UndoCreateAlarmFlow);
  return sub_104B50();
}

uint64_t UndoCreateAlarmFlow.execute()(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = *(*(sub_25E4(&qword_137FD0, &unk_1087C0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v4 = sub_104E10();
  v2[30] = v4;
  v5 = *(v4 - 8);
  v2[31] = v5;
  v6 = *(v5 + 64) + 15;
  v2[32] = swift_task_alloc();
  v7 = sub_1062D0();
  v2[33] = v7;
  v8 = *(v7 - 8);
  v2[34] = v8;
  v9 = *(v8 + 64) + 15;
  v2[35] = swift_task_alloc();
  v10 = *(*(sub_25E4(&qword_137DB8, &unk_1085B0) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v11 = sub_104D60();
  v2[38] = v11;
  v12 = *(v11 - 8);
  v2[39] = v12;
  v13 = *(v12 + 64) + 15;
  v2[40] = swift_task_alloc();
  v14 = sub_106D20();
  v2[41] = v14;
  v15 = *(v14 - 8);
  v2[42] = v15;
  v16 = *(v15 + 64) + 15;
  v2[43] = swift_task_alloc();
  v17 = sub_106300();
  v2[44] = v17;
  v18 = *(v17 - 8);
  v2[45] = v18;
  v19 = *(v18 + 64) + 15;
  v2[46] = swift_task_alloc();
  v20 = sub_106320();
  v2[47] = v20;
  v21 = *(v20 - 8);
  v2[48] = v21;
  v22 = *(v21 + 64) + 15;
  v2[49] = swift_task_alloc();
  v23 = sub_104FF0();
  v2[50] = v23;
  v24 = *(v23 - 8);
  v2[51] = v24;
  v25 = *(v24 + 64) + 15;
  v2[52] = swift_task_alloc();
  v26 = sub_104670();
  v2[53] = v26;
  v27 = *(v26 - 8);
  v2[54] = v27;
  v28 = *(v27 + 64) + 15;
  v2[55] = swift_task_alloc();
  v29 = *(*(sub_25E4(&qword_137FE8, &unk_1087E0) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v30 = *(*(sub_25E4(&qword_137FF0, &unk_10C0F0) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v31 = *(*(sub_25E4(&qword_137FF8, &qword_1087F0) - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v32 = sub_104DE0();
  v2[59] = v32;
  v33 = *(v32 - 8);
  v2[60] = v33;
  v34 = *(v33 + 64) + 15;
  v2[61] = swift_task_alloc();

  return _swift_task_switch(sub_FCA74, 0, 0);
}

uint64_t sub_FCA74()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  v4 = enum case for ActivityType.correction(_:);
  v5 = *(v2 + 104);
  v0[62] = v5;
  v0[63] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v3);
  if (qword_136EF8 != -1)
  {
    swift_once();
  }

  v6 = v0[58];
  v7 = sub_1062E0();
  v0[64] = sub_135C4(v7, qword_13BA50);
  v8 = sub_104C40();
  v0[65] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v0[66] = v10;
  v0[67] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v6, 1, 1, v8);
  if (qword_136F00 != -1)
  {
    swift_once();
  }

  v12 = v0[60];
  v11 = v0[61];
  v13 = v0[58];
  v15 = v0[56];
  v14 = v0[57];
  v17 = v0[33];
  v16 = v0[34];
  v43 = v0[28];
  v44 = v0[59];
  v18 = sub_1062F0();
  v0[68] = v18;
  v19 = sub_135C4(v18, qword_13BA68);
  v0[69] = v19;
  v20 = *(v18 - 8);
  v21 = *(v20 + 16);
  v0[70] = v21;
  v0[71] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v14, v19, v18);
  v22 = *(v20 + 56);
  v0[72] = v22;
  v0[73] = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v14, 0, 1, v18);
  v23 = *(v16 + 56);
  v0[74] = v23;
  v0[75] = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v15, 1, 1, v17);
  sub_1062C0();
  sub_16F70(v15, &qword_137FE8, &unk_1087E0);
  sub_16F70(v14, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v13, &qword_137FF8, &qword_1087F0);
  v24 = *(v12 + 8);
  v0[76] = v24;
  v0[77] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v11, v44);
  v25 = *(v43 + 104);
  v0[78] = v25;
  if (v25)
  {
    v26 = v0[28];
    v27 = *(v26 + 96);

    v28 = swift_task_alloc();
    v0[79] = v28;
    v28[2] = v27;
    v28[3] = v25;
    v28[4] = v26;
    v29 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v30 = swift_task_alloc();
    v0[80] = v30;
    v31 = sub_25E4(&qword_138870, qword_10BE90);
    *v30 = v0;
    v30[1] = sub_FCF8C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 25, 0, 0, 0xD000000000000010, 0x800000000010E920, sub_1018C4, v28, v31);
  }

  else
  {
    if (qword_136EF0 != -1)
    {
      swift_once();
    }

    sub_135C4(v0[41], qword_13B2E8);
    v32 = sub_106D10();
    v33 = sub_106FB0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "UndoCreateAlarmFlow: No alarm id to delete! This should never happen.", v34, 2u);
    }

    v36 = v0[34];
    v35 = v0[35];
    v37 = v0[33];

    (*(v36 + 104))(v35, enum case for SiriTimeEventSender.ReasonDescription.noAlarmToDelete(_:), v37);
    v38 = swift_task_alloc();
    v0[95] = v38;
    *v38 = v0;
    v38[1] = sub_FE9E4;
    v39 = v0[35];
    v40 = v0[27];
    v41 = v0[28];

    return sub_1004F4(v40, v39);
  }
}

uint64_t sub_FCF8C()
{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 632);
  v4 = *v0;

  return _swift_task_switch(sub_FD0A4, 0, 0);
}

uint64_t sub_FD0A4()
{
  v1 = v0[25];
  v0[81] = v1;
  if (v1)
  {
    v2 = v0[28];
    v3 = swift_task_alloc();
    v0[82] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    v0[83] = v5;
    *v5 = v0;
    v5[1] = sub_FD300;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 98, 0, 0, 0xD000000000000013, 0x800000000010E940, sub_1018D0, v3, &type metadata for Bool);
  }

  else
  {
    v6 = v0[78];

    if (qword_136EF0 != -1)
    {
      swift_once();
    }

    sub_135C4(v0[41], qword_13B2E8);
    v7 = sub_106D10();
    v8 = sub_106FB0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "UndoCreateAlarmFlow: No alarm id to delete! This should never happen.", v9, 2u);
    }

    v11 = v0[34];
    v10 = v0[35];
    v12 = v0[33];

    (*(v11 + 104))(v10, enum case for SiriTimeEventSender.ReasonDescription.noAlarmToDelete(_:), v12);
    v13 = swift_task_alloc();
    v0[95] = v13;
    *v13 = v0;
    v13[1] = sub_FE9E4;
    v14 = v0[35];
    v15 = v0[27];
    v16 = v0[28];

    return sub_1004F4(v15, v14);
  }
}

uint64_t sub_FD300()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v4 = *v0;

  return _swift_task_switch(sub_FD418, 0, 0);
}

uint64_t sub_FD418()
{
  v62 = v0;
  if (*(v0 + 784) == 1)
  {
    v1 = *(v0 + 648);
    v3 = *(v0 + 432);
    v2 = *(v0 + 440);
    v4 = *(v0 + 424);
    sub_106210();
    v5 = sub_75DD4(0, v2, 0);
    *(v0 + 672) = v5;
    (*(v3 + 8))(v2, v4);
    v6 = *(v0 + 648);
    if (v5)
    {
      v60 = v5;
      v7 = *(v0 + 624);
      v8 = *(v0 + 416);

      sub_25E4(&qword_137DD0, &unk_108920);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_108470;
      *(inited + 32) = v6;
      v10 = v6;
      sub_BD4A4(inited, v8);
      swift_setDeallocating();
      v11 = *(inited + 16);
      swift_arrayDestroy();
      if (qword_136EF0 != -1)
      {
        swift_once();
      }

      v12 = sub_135C4(*(v0 + 328), qword_13B2E8);
      *(v0 + 680) = v12;
      v13 = sub_106D10();
      v14 = sub_106FC0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "UndoCreateAlarmFlow: RF path for undoing a create alarm.", v15, 2u);
      }

      v58 = *(v0 + 392);
      v17 = *(v0 + 360);
      v16 = *(v0 + 368);
      v19 = *(v0 + 344);
      v18 = *(v0 + 352);
      v21 = *(v0 + 328);
      v20 = *(v0 + 336);
      v22 = *(v0 + 224);

      (*(v17 + 104))(v16, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v18);
      (*(v20 + 16))(v19, v12, v21);
      mach_absolute_time();
      sub_106330();
      v23 = *(v22 + 32);
      sub_25E4(&qword_137880, &unk_108290);
      v24 = swift_allocObject();
      *(v0 + 688) = v24;
      *(v24 + 16) = xmmword_1094F0;
      *(v24 + 32) = 0x6D72616C61;
      *(v24 + 40) = 0xE500000000000000;
      *(v24 + 72) = type metadata accessor for AlarmAlarm(0);
      *(v24 + 80) = 0xD000000000000014;
      *(v24 + 88) = 0x800000000010CA10;
      *(v24 + 120) = &type metadata for Bool;
      v25 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v59 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      *(v24 + 48) = v60;
      *(v24 + 96) = 0;
      swift_retain_n();
      v26 = swift_task_alloc();
      *(v0 + 696) = v26;
      *v26 = v0;
      v26[1] = sub_FDC14;

      return v59(0xD000000000000019, 0x800000000010E4D0, v24);
    }

    else
    {
      v36 = sub_106750();
      *(v0 + 40) = v36;
      *(v0 + 48) = &protocol witness table for ABCReport;
      v37 = sub_1A924((v0 + 16));
      *v37 = 0xD000000000000013;
      v37[1] = 0x800000000010E960;
      v38 = enum case for UnhandledAbortSubtype.expectedObject(_:);
      v39 = sub_106680();
      (*(*(v39 - 8) + 104))(v37, v38, v39);
      (*(*(v36 - 8) + 104))(v37, enum case for ABCReport.unhandledAbort(_:), v36);
      sub_1064D0();
      sub_2738((v0 + 16));
      sub_107190(87);
      v64._countAndFlagsBits = 0xD000000000000055;
      v64._object = 0x800000000010E980;
      sub_106E80(v64);
      v40 = [v6 description];
      v41 = sub_106E20();
      v43 = v42;

      v65._countAndFlagsBits = v41;
      v65._object = v43;
      sub_106E80(v65);

      v44 = qword_136EF0;

      if (v44 != -1)
      {
        swift_once();
      }

      v45 = *(v0 + 328);
      v46 = *(v0 + 336);
      v48 = *(v0 + 288);
      v47 = *(v0 + 296);
      v49 = sub_135C4(v45, qword_13B2E8);
      (*(v46 + 16))(v47, v49, v45);
      (*(v46 + 56))(v47, 0, 1, v45);
      sub_14994(v47, v48, &qword_137DB8, &unk_1085B0);
      v50 = (*(v46 + 48))(v48, 1, v45);
      v51 = *(v0 + 288);
      if (v50 == 1)
      {
        sub_16F70(*(v0 + 288), &qword_137DB8, &unk_1085B0);
      }

      else
      {

        v52 = sub_106D10();
        v53 = sub_106FB0();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v54 = 136315650;
          v55 = sub_1071A0();
          v57 = sub_722E8(v55, v56, &v61);

          *(v54 + 4) = v57;
          *(v54 + 12) = 2048;
          *(v54 + 14) = 84;
          *(v54 + 22) = 2080;
          *(v54 + 24) = sub_722E8(0, 0xE000000000000000, &v61);
          _os_log_impl(&dword_0, v52, v53, "FatalError at %s:%lu - %s", v54, 0x20u);
          swift_arrayDestroy();
        }

        (*(*(v0 + 336) + 8))(*(v0 + 288), *(v0 + 328));
      }

      sub_104C90();
      return sub_107250();
    }
  }

  else
  {
    v28 = *(v0 + 624);
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v31 = *(v0 + 264);

    (*(v30 + 104))(v29, enum case for SiriTimeEventSender.ReasonDescription.failedToDeleteAlarm(_:), v31);
    v32 = swift_task_alloc();
    *(v0 + 752) = v32;
    *v32 = v0;
    v32[1] = sub_FE38C;
    v33 = *(v0 + 280);
    v34 = *(v0 + 216);
    v35 = *(v0 + 224);

    return sub_1004F4(v34, v33);
  }
}

uint64_t sub_FDC14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 696);
  v6 = *(*v2 + 688);
  v7 = *v2;
  *(*v2 + 704) = v1;

  if (v1)
  {
    v8 = sub_FDFB0;
  }

  else
  {
    *(v4 + 712) = a1;
    v8 = sub_FDD60;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_FDD60()
{
  v1 = v0[84];
  v2 = v0[40];

  sub_104CF0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[90] = v4;
  *v4 = v0;
  v4[1] = sub_FDE20;
  v5 = v0[89];
  v6 = v0[52];
  v7 = v0[49];
  v8 = v0[40];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 12, v8, v6, v7, 0);
}

uint64_t sub_FDE20()
{
  v2 = *(*v1 + 720);
  v3 = *(*v1 + 712);
  v4 = *(*v1 + 320);
  v5 = *(*v1 + 312);
  v6 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 728) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_FEFAC;
  }

  else
  {
    v7 = sub_FE1B4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_FDFB0()
{
  v20 = v0;
  v1 = v0[84];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];

  (*(v3 + 8))(v2, v4);
  v5 = v0[88];
  v0[96] = v5;
  v6 = v0[85];
  swift_errorRetain();
  v7 = sub_106D10();
  v8 = sub_106FB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v0[26] = v5;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v11 = sub_106E30();
    v13 = sub_722E8(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "UndoCreateAlarmFlow: Error in RF path: %s", v9, 0xCu);
    sub_2738(v10);
  }

  (*(v0[34] + 104))(v0[35], enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v0[33]);
  v14 = swift_task_alloc();
  v0[97] = v14;
  *v14 = v0;
  v14[1] = sub_FECF0;
  v15 = v0[35];
  v16 = v0[27];
  v17 = v0[28];

  return sub_1004F4(v16, v15);
}

uint64_t sub_FE1B4()
{
  sub_105180();
  v1 = v0[20];
  v2 = v0[21];
  sub_1A8E0(v0 + 17, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[92] = v4;
  *v4 = v0;
  v4[1] = sub_FE278;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 12, v1, v2);
}

uint64_t sub_FE278()
{
  v2 = *(*v1 + 736);
  v5 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = sub_FF1A0;
  }

  else
  {
    v3 = sub_FE614;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_FE38C()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 264);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_FE4E4, 0, 0);
}

uint64_t sub_FE4E4()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 416);
  v7 = *(v0 + 392);
  v8 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 320);
  v13 = *(v0 + 296);
  v14 = *(v0 + 288);
  v15 = *(v0 + 280);
  v16 = *(v0 + 256);
  v17 = *(v0 + 232);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_FE614()
{
  v1 = v0[84];
  v55 = v0[76];
  v57 = v0[77];
  v46 = v0[74];
  v47 = v0[75];
  v43 = v0[72];
  v44 = v0[73];
  v41 = v0[70];
  v42 = v0[71];
  v39 = v0[68];
  v40 = v0[69];
  v36 = v0[66];
  v37 = v0[67];
  v45 = v0[64];
  v34 = v0[63];
  v35 = v0[65];
  v31 = v0[61];
  v2 = v0[58];
  v32 = v0[59];
  v33 = v0[62];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[47];
  v10 = v0[48];
  v38 = v0[33];
  v51 = v0[31];
  v53 = v0[30];
  v48 = v0[28];
  v49 = v0[29];

  sub_2738(v0 + 12);
  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  sub_2738(v0 + 17);
  v33(v31, enum case for ActivityType.completed(_:), v32);
  v36(v2, 1, 1, v35);
  v41(v3, v40, v39);
  v43(v3, 0, 1, v39);
  v46(v4, 1, 1, v38);
  sub_1062C0();
  sub_16F70(v4, &qword_137FE8, &unk_1087E0);
  sub_16F70(v3, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v2, &qword_137FF8, &qword_1087F0);
  v55(v31, v32);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v48 + v11, v49, &qword_137FD0, &unk_1087C0);
  v12 = (*(v51 + 48))(v49, 1, v53);
  v13 = v0[81];
  if (v12 == 1)
  {
    v14 = v0[27];
    sub_16F70(v0[29], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v16 = v0[31];
    v15 = v0[32];
    v17 = v0[30];
    v18 = v0[27];
    (*(v16 + 32))(v15, v0[29], v17);
    sub_104F10();

    (*(v16 + 8))(v15, v17);
  }

  v19 = v0[61];
  v20 = v0[57];
  v21 = v0[58];
  v23 = v0[55];
  v22 = v0[56];
  v24 = v0[52];
  v25 = v0[49];
  v26 = v0[46];
  v27 = v0[43];
  v28 = v0[40];
  v50 = v0[37];
  v52 = v0[36];
  v54 = v0[35];
  v56 = v0[32];
  v58 = v0[29];

  v29 = v0[1];

  return v29();
}

uint64_t sub_FE9E4()
{
  v1 = *v0;
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v5 = *(*v0 + 264);
  v23 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = v1[61];
  v7 = v1[58];
  v8 = v1[57];
  v9 = v1[56];
  v10 = v1[55];
  v11 = v1[52];
  v12 = v1[49];
  v13 = v1[46];
  v18 = v1[43];
  v19 = v1[40];
  v20 = v1[37];
  v21 = v1[36];
  v14 = v1[35];
  v22 = v1[32];
  v15 = v1[29];

  v16 = *(v23 + 8);

  return v16();
}

uint64_t sub_FECF0()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 264);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_FEE48, 0, 0);
}

uint64_t sub_FEE48()
{
  v1 = v0[96];
  v2 = v0[84];
  v3 = v0[81];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[50];

  (*(v5 + 8))(v4, v6);
  v7 = v0[61];
  v8 = v0[57];
  v9 = v0[58];
  v11 = v0[55];
  v10 = v0[56];
  v12 = v0[52];
  v13 = v0[49];
  v14 = v0[46];
  v15 = v0[43];
  v16 = v0[40];
  v19 = v0[37];
  v20 = v0[36];
  v21 = v0[35];
  v22 = v0[32];
  v23 = v0[29];

  v17 = v0[1];

  return v17();
}

uint64_t sub_FEFAC()
{
  v16 = v0;
  (*(v0[48] + 8))(v0[49], v0[47]);
  v1 = v0[91];
  v0[96] = v1;
  v2 = v0[85];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v0[26] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "UndoCreateAlarmFlow: Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  (*(v0[34] + 104))(v0[35], enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v0[33]);
  v10 = swift_task_alloc();
  v0[97] = v10;
  *v10 = v0;
  v10[1] = sub_FECF0;
  v11 = v0[35];
  v12 = v0[27];
  v13 = v0[28];

  return sub_1004F4(v12, v11);
}

uint64_t sub_FF1A0()
{
  v19 = v0;
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  sub_2738(v0 + 12);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 17);
  v4 = v0[93];
  v0[96] = v4;
  v5 = v0[85];
  swift_errorRetain();
  v6 = sub_106D10();
  v7 = sub_106FB0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v0[26] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v10 = sub_106E30();
    v12 = sub_722E8(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "UndoCreateAlarmFlow: Error in RF path: %s", v8, 0xCu);
    sub_2738(v9);
  }

  (*(v0[34] + 104))(v0[35], enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v0[33]);
  v13 = swift_task_alloc();
  v0[97] = v13;
  *v13 = v0;
  v13[1] = sub_FECF0;
  v14 = v0[35];
  v15 = v0[27];
  v16 = v0[28];

  return sub_1004F4(v15, v14);
}

uint64_t sub_FF3AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v37 = a1;
  v7 = sub_25E4(&qword_138A30, &qword_109620);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v36 = &v33 - v10;
  v35 = sub_106D00();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v35);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136EF0 != -1)
  {
    swift_once();
  }

  v15 = sub_106D20();
  sub_135C4(v15, qword_13B2E8);

  v16 = sub_106D10();
  v17 = sub_106FC0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = v11;
    v21 = a2;
    v22 = v20;
    v38[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_722E8(v21, a3, v38);
    _os_log_impl(&dword_0, v16, v17, "UndoCreateAlarmFlow.searchAlarm for %s", v19, 0xCu);
    sub_2738(v22);
    v11 = v33;

    v7 = v34;
  }

  sub_106A50();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_106E10();
  v25 = sub_106E10();
  v26 = [v23 initWithIdentifier:v24 displayString:v25];

  sub_106FF0();
  v27 = *(a4 + 48);
  sub_106CF0();
  sub_106CE0();
  (*(v11 + 8))(v14, v35);
  sub_262C(a4 + 56, v38);
  sub_1A8E0(v38, v38[3]);
  v28 = v36;
  (*(v8 + 16))(v36, v37, v7);
  v29 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  (*(v8 + 32))(v30 + v29, v28, v7);
  v31 = v26;

  sub_106B60();

  return sub_2738(v38);
}

uint64_t sub_FF7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v5 = sub_106990();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&qword_1381C8, &qword_109640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v40 - v11);
  v13 = sub_106D00();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v18 = *(a2 + 48);
  sub_106CF0();
  sub_106CE0();
  (*(v14 + 8))(v17, v13);
  sub_14994(a1, v12, &qword_1381C8, &qword_109640);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    v32 = *v12;
    if (*v12 >> 62)
    {
      if (v32 < 0)
      {
        v35 = *v12;
      }

      if (sub_107270() == 1)
      {
        result = sub_107270();
        if (result)
        {
          goto LABEL_9;
        }
      }
    }

    else if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) == 1)
    {
LABEL_9:
      if ((v32 & 0xC000000000000001) != 0)
      {
        v33 = sub_1071C0();
      }

      else
      {
        if (!*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v33 = *(v32 + 32);
      }

      v34 = v33;

      v43[0] = v34;
LABEL_22:
      sub_25E4(&qword_138A30, &qword_109620);
      return sub_106F60();
    }

    if (qword_136EF0 != -1)
    {
      swift_once();
    }

    v36 = sub_106D20();
    sub_135C4(v36, qword_13B2E8);
    v37 = sub_106D10();
    v38 = sub_106FB0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "UndoCreateAlarmFlow: Alarm not found.", v39, 2u);
    }

    v43[0] = 0;
    goto LABEL_22;
  }

  v20 = v41;
  (*(v41 + 32))(v8, v12, v5);
  v21 = v5;
  v22 = v20;
  if (qword_136EF0 != -1)
  {
    swift_once();
  }

  v23 = sub_106D20();
  sub_135C4(v23, qword_13B2E8);
  v24 = sub_106D10();
  v25 = sub_106FB0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "UndoCreateAlarmFlow: Alarm search failure.", v26, 2u);
  }

  v43[0] = 0;
  sub_25E4(&qword_138A30, &qword_109620);
  sub_106F60();
  v27 = sub_106750();
  v43[3] = v27;
  v43[4] = &protocol witness table for ABCReport;
  v28 = sub_1A924(v43);
  sub_1019E4(&qword_1381C0, &type metadata accessor for AlarmOperationError);
  swift_allocError();
  (*(v22 + 16))(v29, v8, v21);
  *v28 = sub_1045F0();
  v30 = enum case for ErrorSubType.managerReturnedError(_:);
  v31 = sub_106460();
  (*(*(v31 - 8) + 104))(v28, v30, v31);
  (*(*(v27 - 8) + 104))(v28, enum case for ABCReport.alarmUndoHandle(_:), v27);
  sub_1064D0();
  (*(v22 + 8))(v8, v21);
  sub_2738(v43);
}

uint64_t sub_FFD98(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v24 = a1;
  v4 = sub_25E4(&qword_13B468, &qword_10BF88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - v7;
  v9 = sub_106D00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  v14 = *(a2 + 48);
  sub_106CF0();
  sub_106CE0();
  (*(v10 + 8))(v13, v9);
  sub_262C(a2 + 56, v25);
  v22[2] = v25[4];
  v22[1] = sub_1A8E0(v25, v25[3]);
  sub_25E4(&qword_137DD0, &unk_108920);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_108470;
  v17 = v23;
  v16 = v24;
  *(v15 + 32) = v23;
  (*(v5 + 16))(v8, v16, v4);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v5 + 32))(v19 + v18, v8, v4);
  v20 = v17;

  sub_106B40();

  return sub_2738(v25);
}

uint64_t sub_10003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v5 = sub_106990();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&qword_1381C8, &qword_109640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = sub_106D00();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v18 = *(a2 + 48);
  sub_106CF0();
  sub_106CE0();
  (*(v14 + 8))(v17, v13);
  sub_14994(a1, v12, &qword_1381C8, &qword_109640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v33;
    (*(v33 + 32))(v8, v12, v5);
    v20 = v5;
    v21 = v19;
    if (qword_136EF0 != -1)
    {
      swift_once();
    }

    v22 = sub_106D20();
    sub_135C4(v22, qword_13B2E8);
    v23 = sub_106D10();
    v24 = sub_106FB0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "UndoCreateAlarmFlow: Failed to delete alarm.", v25, 2u);
    }

    LOBYTE(v35[0]) = 0;
    sub_25E4(&qword_13B468, &qword_10BF88);
    sub_106F60();
    v26 = sub_106750();
    v35[3] = v26;
    v35[4] = &protocol witness table for ABCReport;
    v27 = sub_1A924(v35);
    sub_1019E4(&qword_1381C0, &type metadata accessor for AlarmOperationError);
    swift_allocError();
    (*(v21 + 16))(v28, v8, v20);
    *v27 = sub_1045F0();
    v29 = enum case for ErrorSubType.managerReturnedError(_:);
    v30 = sub_106460();
    (*(*(v30 - 8) + 104))(v27, v29, v30);
    (*(*(v26 - 8) + 104))(v27, enum case for ABCReport.alarmUndoHandle(_:), v26);
    sub_1064D0();
    (*(v21 + 8))(v8, v20);
    sub_2738(v35);
  }

  else
  {
    sub_16F70(v12, &qword_1381C8, &qword_109640);
    LOBYTE(v35[0]) = 1;
    sub_25E4(&qword_13B468, &qword_10BF88);
    return sub_106F60();
  }
}

uint64_t sub_1004F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_104FF0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_104D60();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  found = type metadata accessor for ErrorNotFoundParameters(0);
  v3[11] = found;
  v11 = *(*(found - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_106D20();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v15 = sub_106300();
  v3[16] = v15;
  v16 = *(v15 - 8);
  v3[17] = v16;
  v17 = *(v16 + 64) + 15;
  v3[18] = swift_task_alloc();
  v18 = sub_106320();
  v3[19] = v18;
  v19 = *(v18 - 8);
  v3[20] = v19;
  v20 = *(v19 + 64) + 15;
  v3[21] = swift_task_alloc();
  v21 = *(*(sub_25E4(&qword_137FE8, &unk_1087E0) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v22 = *(*(sub_25E4(&qword_137FF0, &unk_10C0F0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v23 = *(*(sub_25E4(&qword_137FF8, &qword_1087F0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v24 = sub_104DE0();
  v3[25] = v24;
  v25 = *(v24 - 8);
  v3[26] = v25;
  v26 = *(v25 + 64) + 15;
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_10085C, 0, 0);
}

uint64_t sub_10085C()
{
  (*(v0[26] + 104))(v0[27], enum case for ActivityType.failed(_:), v0[25]);
  if (qword_136EF8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1062E0();
  sub_135C4(v2, qword_13BA50);
  v3 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v4 = sub_104C40();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  if (qword_136F00 != -1)
  {
    swift_once();
  }

  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[3];
  v13 = sub_1062F0();
  v14 = sub_135C4(v13, qword_13BA68);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v10, v14, v13);
  (*(v15 + 56))(v10, 0, 1, v13);
  v16 = sub_1062D0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, v12, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_1062C0();
  sub_16F70(v11, &qword_137FE8, &unk_1087E0);
  sub_16F70(v10, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v9, &qword_137FF8, &qword_1087F0);
  (*(v7 + 8))(v6, v8);
  if (qword_136EF0 != -1)
  {
    swift_once();
  }

  v18 = sub_135C4(v0[13], qword_13B2E8);
  v0[28] = v18;
  v38 = v18;
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "UndoCreateAlarmFlow: Hitting alarm RF codepath for UndoCreateAlarmFlow error case.", v21, 2u);
  }

  v22 = v0[17];
  v23 = v0[18];
  v25 = v0[15];
  v24 = v0[16];
  v27 = v0[13];
  v26 = v0[14];
  v29 = v0[11];
  v28 = v0[12];
  v36 = v0[4];
  v37 = v0[21];

  (*(v22 + 104))(v23, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v24);
  (*(v26 + 16))(v25, v38, v27);
  mach_absolute_time();
  sub_106330();
  v30 = *(v36 + 40);
  v31 = sub_106160();
  (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
  *(v28 + v29[5]) = 0;
  *(v28 + v29[6]) = _swiftEmptyArrayStorage;
  *(v28 + v29[7]) = 0;
  v32 = sub_1FB6C();
  v0[29] = v32;
  v33 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v39 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v34 = swift_task_alloc();
  v0[30] = v34;
  *v34 = v0;
  v34[1] = sub_100D88;

  return v39(0x6F4E23726F727245, 0xEE00646E756F4674, v32);
}

uint64_t sub_100D88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *(*v2 + 232);
  v7 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v8 = sub_10126C;
  }

  else
  {
    *(v4 + 256) = a1;
    v8 = sub_100ED4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100ED4()
{
  v1 = v0[10];
  v2 = v0[7];
  sub_1A884(v0[12]);
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)[1];
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_100F9C;
  v5 = v0[32];
  v6 = v0[21];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[2];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v9, v7, v8, v6);
}

uint64_t sub_100F9C()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 40);
  v10 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_101170, 0, 0);
}

uint64_t sub_101170()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10126C()
{
  v1 = v0[28];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  sub_1A884(v0[12]);
  (*(v3 + 8))(v2, v4);
  v5 = sub_106D10();
  v6 = sub_106FB0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "UndoCreateAlarmFlow: Failed to produce Incomplete response.", v7, 2u);
  }

  v8 = v0[31];
  v9 = v0[2];

  sub_104F00();

  v10 = v0[27];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[18];
  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[10];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t UndoCreateAlarmFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  sub_2738((v0 + 56));
  v5 = *(v0 + 104);

  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction, &qword_137FD0, &unk_1087C0);
  return v0;
}

uint64_t UndoCreateAlarmFlow.__deallocating_deinit()
{
  UndoCreateAlarmFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1014F0()
{
  v2 = *v0;
  type metadata accessor for UndoCreateAlarmFlow();
  return sub_104B50();
}

uint64_t sub_101550(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return UndoCreateAlarmFlow.execute()(a1);
}

uint64_t sub_1015EC()
{
  type metadata accessor for UndoCreateAlarmFlow();

  return sub_104B80();
}

char *sub_101628(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_106200();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v15 = a3;
  v16 = a4;
  v10 = sub_1A924(&v14);
  (*(*(a3 - 8) + 32))(v10, a1, a3);
  type metadata accessor for DeleteAlarmCATs_Async();
  sub_1061E0();
  *(a2 + 2) = sub_1060D0();
  type metadata accessor for DeleteAlarmCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 3) = sub_1060D0();
  sub_1061E0();
  *(a2 + 4) = sub_1060D0();
  type metadata accessor for ErrorCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 5) = sub_1060D0();
  *(a2 + 6) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction;
  v12 = sub_104E10();
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1AD44(&v14, (a2 + 56));
  return a2;
}

char *sub_1017D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlarmFlow = type metadata accessor for UndoCreateAlarmFlow();
  v12 = *(AlarmFlow + 48);
  v13 = *(AlarmFlow + 52);
  v14 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  return sub_101628(v10, v14, a3, a4);
}

void sub_1018E0()
{
  sub_33058();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1019E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_101A68(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_25E4(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = v4 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a4(a1, v7, v8);
}

uint64_t type metadata accessor for ChangeAlarmStatusCATs_Async()
{
  result = qword_13B470;
  if (!qword_13B470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101B80(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

id Siri_Nlu_External_UserParse.alarmSearch.getter()
{
  if (sub_105440())
  {
    v0 = sub_1EED0();

    return v0;
  }

  else
  {
    if (qword_136F08 != -1)
    {
      swift_once();
    }

    v2 = sub_106D20();
    sub_135C4(v2, qword_13B4C0);
    v3 = sub_106D10();
    v4 = sub_106FB0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "No task found in userDialogAct.", v5, 2u);
    }

    return 0;
  }
}

uint64_t sub_101E10()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B4C0);
  sub_135C4(v0, qword_13B4C0);
  return sub_106A80();
}

uint64_t sub_101E5C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B4D8);
  sub_135C4(v0, qword_13B4D8);
  return sub_106A60();
}

uint64_t sub_101EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&qword_13B028, &qword_10BB80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  if (qword_136F10 != -1)
  {
    swift_once();
  }

  v8 = sub_106D20();
  sub_135C4(v8, qword_13B4D8);
  v9 = sub_106D10();
  v10 = sub_106FC0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "AlarmFlowPlugin: called findFlowForX()", v11, 2u);
  }

  static AlarmFlowFactory.makeFlowFrom(parse:)(a1, v7);
  v12 = sub_104BD0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) != 1)
  {
    return (*(v13 + 32))(a2, v7, v12);
  }

  sub_102408(v7);
  return sub_104B90();
}

void sub_1020B4(uint64_t *a1@<X8>)
{
  type metadata accessor for AlarmFlowPlugin();
  v2 = swift_allocObject();
  sub_106120();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_106110();

  *a1 = v2;
}

uint64_t sub_1021C0(uint64_t a1)
{
  v2 = sub_25E4(&qword_13B028, &qword_10BB80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - v4;
  static AlarmFlowFactory.makeFlowFrom(parse:)(a1, v17 - v4);
  v6 = sub_104BD0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_102408(v5);
  }

  else
  {
    v8 = sub_104BA0();
    (*(v7 + 8))(v5, v6);
    if (v8)
    {
      return v8;
    }
  }

  if (qword_136F10 != -1)
  {
    swift_once();
  }

  v9 = sub_106D20();
  sub_135C4(v9, qword_13B4D8);
  v10 = sub_106D10();
  v11 = sub_106FB0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Unable to parse valid alarm flow in deprecated makeFlowFor(parse:)", v12, 2u);
  }

  v13 = sub_106740();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v17[1] = sub_106730();
  sub_102470(&qword_13B5A0, 255, &type metadata accessor for NoOpFlow);
  v8 = sub_104B30();

  return v8;
}

uint64_t sub_102408(uint64_t a1)
{
  v2 = sub_25E4(&qword_13B028, &qword_10BB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_102470(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1024B8(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA94;

  return sub_57E00(a1, a2, a3);
}

uint64_t sub_10257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_105030();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(sub_25E4(&qword_137FE8, &unk_1087E0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(sub_25E4(&qword_137FF0, &unk_10C0F0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(sub_25E4(&qword_137FF8, &qword_1087F0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_1062E0();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = sub_104DE0();
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = sub_1064C0();
  v4[19] = v18;
  v19 = *(v18 - 8);
  v4[20] = v19;
  v20 = *(v19 + 64) + 15;
  v4[21] = swift_task_alloc();
  v21 = *(*(sub_106200() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v22 = sub_1064A0();
  v4[23] = v22;
  v23 = *(v22 - 8);
  v4[24] = v23;
  v24 = *(v23 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v25 = sub_1066E0();
  v4[27] = v25;
  v26 = *(v25 - 8);
  v4[28] = v26;
  v27 = *(v26 + 64) + 15;
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_102924, 0, 0);
}

uint64_t sub_102924()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[3];
  v7 = *(v4 + 16);
  v0[30] = v7;
  v0[31] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v3);
  v0[32] = type metadata accessor for AlarmBaseCATs_Async();
  sub_1061E0();
  sub_1060D0();
  sub_4F234();
  sub_1066D0();
  v8 = async function pointer to AppInstallDialogOutputUtil.makeLaunchAppView()[1];
  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_102A48;
  v10 = v0[29];

  return AppInstallDialogOutputUtil.makeLaunchAppView()();
}

uint64_t sub_102A48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v7 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v5 = sub_103430;
  }

  else
  {
    v5 = sub_102B5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_102B5C()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 24), *(v0 + 184));
  sub_1064B0();
  v5 = sub_106470();
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 184);
  if (v5)
  {
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for AppInstallUtil.Domain.clock(_:), v6);
  }

  else
  {
    v7 = *(v0 + 248);
    (*(v0 + 240))(*(v0 + 200), *(v0 + 24), v6);
  }

  v34 = *(v0 + 256);
  v35 = *(v0 + 200);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v31 = v10;
  v32 = *(v0 + 176);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v29 = v8;
  v30 = v12;
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  v16 = *(v0 + 80);
  v33 = *(v0 + 48);
  v36 = *(v0 + 32);
  (*(v9 + 104))();
  (*(v13 + 104))(v11, enum case for SiriTimeEventSender.TaskType.current(_:), v12);
  v17 = enum case for SiriKitReliabilityCodes.noAppFoundOnDeviceToSupportIntent(_:);
  v18 = sub_104C40();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v14, v17, v18);
  (*(v19 + 56))(v14, 0, 1, v18);
  v20 = sub_1062F0();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = enum case for SiriTimeEventSender.ReasonDescription.alarmAppNotInstalledLegacyDialog(_:);
  v22 = sub_1062D0();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v16, v21, v22);
  (*(v23 + 56))(v16, 0, 1, v22);
  sub_1062C0();
  sub_16F70(v16, &qword_137FE8, &unk_1087E0);
  sub_16F70(v15, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v14, &qword_137FF8, &qword_1087F0);
  (*(v13 + 8))(v11, v30);
  (*(v9 + 8))(v29, v31);
  sub_1061E0();
  *(v0 + 288) = sub_1060D0();
  sub_106490();
  sub_106E50();

  v24 = sub_106160();
  (*(*(v24 - 8) + 56))(v33, 0, 1, v24);
  v25 = swift_task_alloc();
  *(v0 + 296) = v25;
  *v25 = v0;
  v25[1] = sub_102F84;
  v26 = *(v0 + 72);
  v27 = *(v0 + 48);

  return sub_58274(v26, v36, v27);
}

uint64_t sub_102F84()
{
  v2 = *(*v1 + 296);
  v3 = *v1;
  v3[38] = v0;

  if (v0)
  {
    v4 = v3[36];
    v5 = v3[34];
    sub_16F70(v3[6], &qword_137598, &unk_107EB0);

    return _swift_task_switch(sub_103550, 0, 0);
  }

  else
  {
    v6 = v3[36];
    sub_16F70(v3[6], &qword_137598, &unk_107EB0);

    v7 = swift_task_alloc();
    v3[39] = v7;
    *v7 = v3;
    v7[1] = sub_103160;
    v8 = v3[34];
    v9 = v3[9];
    v10 = v3[5];
    v11 = v3[2];

    return sub_19F84(v11, v8, v10);
  }
}

uint64_t sub_103160()
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 320) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_103688;
  }

  else
  {
    v7 = sub_1032F4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1032F4()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[22];
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[15];
  v11 = v0[12];
  v12 = v0[11];
  v13 = v0[10];
  v14 = v0[9];
  v15 = v0[6];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_103430()
{
  v1 = v0[26];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[12];
  v11 = v0[10];
  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[35];
  (*(v0[28] + 8))(v0[29], v0[27]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_103550()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[26];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[12];
  v11 = v0[10];
  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[38];
  (*(v0[28] + 8))(v0[29], v0[27]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_103688()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[26];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[12];
  v11 = v0[10];
  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[40];
  (*(v0[28] + 8))(v0[29], v0[27]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1037C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return sub_10257C(a1, a2, a3, a4);
}

uint64_t type metadata accessor for SearchAlarmCATsSimple()
{
  result = qword_13B5A8;
  if (!qword_13B5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_103904(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

uint64_t sub_103A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_106200();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_106180();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t sub_103BB4()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B5F8);
  sub_135C4(v0, qword_13B5F8);
  return sub_106A80();
}

uint64_t sub_103C00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_103C20, 0, 0);
}

uint64_t sub_103C20()
{
  v1 = v0[3];
  sub_25E4(&qword_13A388, &unk_10B4C0);
  v2 = sub_105200();
  v0[4] = v2;
  if (qword_136F18 != -1)
  {
    swift_once();
  }

  v3 = sub_106D20();
  sub_135C4(v3, qword_13B5F8);
  v4 = v2;
  v5 = sub_106D10();
  v6 = sub_106FC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = [v4 unsupportedReason];

    _os_log_impl(&dword_0, v5, v6, "UpdateAlarm.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v7, 0xCu);
  }

  else
  {

    v5 = v4;
  }

  v8 = v0[3];

  v9 = sub_1051F0();
  v10 = [v9 alarmSearch];
  v0[5] = v10;

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_103E10;
  v12 = v0[2];

  return sub_17218(v12, v10, v4);
}

uint64_t sub_103E10()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_103F90;
  }

  else
  {

    v4 = sub_103F2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_103F2C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_103F90()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_103FF8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1050C0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1040D0, 0, 0);
}

uint64_t sub_1040D0()
{
  v35 = v0;
  v1 = v0[7];
  v2 = v0[2];
  sub_25E4(&qword_13A388, &unk_10B4C0);
  sub_105210();
  if (qword_136F18 != -1)
  {
    swift_once();
  }

  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[3];
  v5 = v0[4];
  v7 = sub_106D20();
  sub_135C4(v7, qword_13B5F8);
  v8 = *(v5 + 16);
  v8(v4, v3, v6);
  v9 = sub_106D10();
  v10 = sub_106FC0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[6];
  if (v11)
  {
    v33 = v10;
    v13 = v0[4];
    v14 = v0[5];
    v15 = v0[3];
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v16 = 136315138;
    v8(v14, v12, v15);
    v17 = sub_106E30();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v12, v15);
    v21 = sub_722E8(v17, v19, &v34);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_0, v9, v33, "UpdateAlarm.UnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue() called for parameter: %s", v16, 0xCu);
    sub_2738(v32);
  }

  else
  {
    v22 = v0[3];
    v23 = v0[4];

    v20 = *(v23 + 8);
    v20(v12, v22);
  }

  v25 = v0[6];
  v24 = v0[7];
  v26 = v0[5];
  v27 = v0[2];
  v28 = v0[3];
  v29 = sub_1051F0();
  v20(v24, v28);

  v30 = v0[1];

  return v30(v29);
}

uint64_t sub_10437C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_103C00(a1, a2);
}

uint64_t sub_10441C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_56FA4;

  return sub_103FF8(a1);
}