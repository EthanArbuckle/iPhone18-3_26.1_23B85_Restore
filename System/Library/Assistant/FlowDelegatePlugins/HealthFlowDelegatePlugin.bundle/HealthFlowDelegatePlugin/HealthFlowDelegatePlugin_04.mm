uint64_t sub_62460()
{
  sub_7F1C();
  sub_62F0C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_624C4()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutEndIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_62558()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 89);
  v6 = *(v0 + 88);
  v7 = sub_73350();
  sub_303A8(v7, v8, v9, v7);
  *(v1 + *(v2 + 20)) = v6;
  *(v1 + *(v2 + 24)) = v5;
  v4(v1);
  *(v0 + 56) = sub_61C18();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v13 = v10;
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  sub_30354(v11);

  return v13(0xD000000000000020);
}

uint64_t sub_62664()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_62798()
{
  sub_7F1C();
  sub_62F64();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_627F4()
{
  sub_7F1C();
  sub_62F64();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_62858(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_628AC(a1, a2);
}

uint64_t sub_628AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v7);
  v9 = *(v8 + 64);
  sub_303DC();
  __chkstk_darwin(v10);
  sub_5AEC(a1, &v16 - v11, &qword_A3F90, &unk_74FC0);
  v12 = *(v5 + 16);
  sub_3039C();
  v13();
  v14 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v14;
}

uint64_t sub_62A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_5C0C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_62B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
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

uint64_t sub_62BD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  v8 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_30368();

    return sub_7CC4(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }

  return result;
}

uint64_t sub_62C8C()
{
  sub_303C4();
  v2 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(v1, v0, v2);
}

uint64_t sub_62CF0()
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

uint64_t sub_62D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_62E24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  v8 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_30368();

    return sub_7CC4(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_62F0C()
{
  v2 = *(v0 + 40);

  return sub_62A74(v2, type metadata accessor for WorkoutEndUnsupportedSlotValueParameters);
}

uint64_t sub_62F38()
{
  v2 = *(v0 + 48);

  return sub_62A74(v2, type metadata accessor for WorkoutEndErrorWithCodeParameters);
}

uint64_t sub_62F64()
{
  v2 = *(v0 + 48);

  return sub_62A74(v2, type metadata accessor for WorkoutEndIntentHandledResponseParameters);
}

void sub_62F90(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = sub_63254(a1);
  if (v4)
  {
    v5 = v4;
    sub_73970();
    v6 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_74B40;
    v8 = v6;
    v9 = [v5 description];
    v10 = sub_73790();
    v12 = v11;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_5258();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    sub_73620();

    v22 = v5;
    a3(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v13 = sub_B5BC(0);
    sub_73980();
    v14 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_74B40;
    v16 = v14;
    v17 = sub_B4FC();
    v19 = v18;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_5258();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    sub_73620();

    sub_63BE0(&qword_A3BB8, 255, type metadata accessor for HealthFlowError);
    v20 = swift_allocError();
    *v21 = v13;

    a3(v20, 1);
  }
}

void *sub_63254(uint64_t a1)
{
  v51 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v48 - v5;
  v6 = type metadata accessor for HealthNLIntent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_731D0();
  v11 = sub_5394(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_72830();
  v19 = sub_5394(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v19);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v48 - v27;
  v29 = v21[2];
  v29(&v48 - v27, v51, v18);
  v30 = v21[11];
  v31 = sub_5388();
  v33 = v32(v31);
  if (v33 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v34 = v21[12];
    v35 = sub_5388();
    v36(v35);
    (*(v13 + 32))(v17, v28, v10);
    (*(v13 + 16))(v9, v17, v10);
    sub_29A54();
    v37 = sub_5C4C8();
    sub_51F8(v9, type metadata accessor for HealthNLIntent);
    (*(v13 + 8))(v17, v10);
  }

  else if (v33 == enum case for Parse.directInvocation(_:))
  {
    v29(v26, v51, v18);
    v38 = v49;
    sub_6AFB0(v26, v49);
    v39 = v50;
    sub_50B4(v38, v50);
    v40 = type metadata accessor for DirectInvocationData();
    if (sub_5124(v39, 1, v40) == 1)
    {
      sub_514C(v38);
      sub_514C(v39);
      v37 = 0;
    }

    else
    {
      sub_6B824(v53);
      sub_514C(v38);
      sub_51F8(v39, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_29A54();
      if (swift_dynamicCast())
      {
        v37 = v52;
      }

      else
      {
        v37 = 0;
      }
    }

    v44 = v21[1];
    v45 = sub_5388();
    v46(v45);
  }

  else
  {
    v41 = v21[1];
    v42 = sub_5388();
    v43(v42);
    return 0;
  }

  return v37;
}

uint64_t sub_6368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_6371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, started, a3);
}

uint64_t sub_63768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_637D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_63840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_638AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_63928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, started, a3);
}

uint64_t sub_63974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, started, a4);
}

uint64_t sub_639D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, started, a6);
}

uint64_t sub_63A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_63BE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_63C88()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_65694(v0, v14);
  return v2;
}

uint64_t sub_63F00()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  v2 = sub_B1C0(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_656E4(v7, xmmword_77300);
  sub_3039C();
  sub_4F008(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  sub_6579C(v6);
  if (v12)
  {
    sub_10364(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_6578C();
    v14 = *(v13 + 32);
    sub_3039C();
    v15();
  }

  *(v7 + 80) = 0x656369766564;
  *(v7 + 88) = 0xE600000000000000;
  started = type metadata accessor for WorkoutStartErrorWithCodeParameters(0);
  v17 = *(v0 + *(started + 20));
  if (v17)
  {
    v18 = sub_73360();
    v19 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v19;
  *(v7 + 120) = v18;
  *(v7 + 128) = 0x646F43726F727265;
  *(v7 + 136) = 0xE900000000000065;
  v20 = (v0 + *(started + 24));
  if (v20[1])
  {
    v21 = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
    v22 = 0;
  }

  else
  {
    v22 = *v20;
    v21 = &type metadata for Double;
  }

  *(v7 + 144) = v22;
  *(v7 + 168) = v21;

  return v7;
}

uint64_t sub_640D4()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  v2 = sub_B1C0(v1);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v10 = swift_allocObject();
  v11 = sub_656E4(v10, xmmword_77300);
  sub_4F008(v11, v9, &qword_A3F98, qword_75450);
  v12 = sub_73350();
  sub_6579C(v9);
  if (v13)
  {
    sub_10364(v9, &qword_A3F98, qword_75450);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v12;
    sub_5BAC((v10 + 48));
    sub_6578C();
    (*(v14 + 32))();
  }

  *(v10 + 80) = 0x6E456E65704F7369;
  *(v10 + 88) = 0xEB00000000646564;
  started = type metadata accessor for WorkoutStartUnsupportedSlotValueParameters(0);
  *(v10 + 96) = *(v0 + *(started + 20));
  *(v10 + 120) = &type metadata for Bool;
  *(v10 + 128) = 1953459315;
  *(v10 + 136) = 0xE400000000000000;
  sub_4F008(v0 + *(started + 24), v7, &qword_A3F98, qword_75450);
  sub_6579C(v7);
  if (v13)
  {
    sub_10364(v7, &qword_A3F98, qword_75450);
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
  }

  else
  {
    *(v10 + 168) = v12;
    sub_5BAC((v10 + 144));
    sub_6578C();
    (*(v16 + 32))();
  }

  return v10;
}

uint64_t sub_64300()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  v2 = sub_B1C0(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_656E4(v7, xmmword_7AC70);
  sub_3039C();
  sub_4F008(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  sub_6579C(v6);
  if (v12)
  {
    sub_10364(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_6578C();
    v14 = *(v13 + 32);
    sub_3039C();
    v15();
  }

  *(v7 + 80) = 0x5074737269467369;
  *(v7 + 88) = 0xEF70704179747261;
  started = type metadata accessor for WorkoutStartIntentHandledResponseParameters(0);
  *(v7 + 96) = *(v0 + started[5]);
  *(v7 + 120) = &type metadata for Bool;
  strcpy((v7 + 128), "isPunchingOut");
  *(v7 + 142) = -4864;
  *(v7 + 144) = *(v0 + started[6]);
  *(v7 + 168) = &type metadata for Bool;
  strcpy((v7 + 176), "isWatchHandoff");
  *(v7 + 191) = -18;
  v17 = *(v0 + started[7]);
  *(v7 + 216) = &type metadata for Bool;
  *(v7 + 192) = v17;
  return v7;
}

uint64_t sub_644D8()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  started = type metadata accessor for WorkoutStartErrorWithCodeParameters(0);
  v1[5] = started;
  sub_B1C0(started);
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_64564()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  sub_73350();
  v5 = sub_657CC();
  sub_7CC4(v5, v6, v7, v8);
  *(v1 + *(v2 + 20)) = 0;
  v9 = v1 + *(v2 + 24);
  *v9 = 0;
  *(v9 + 8) = 1;
  v4(v1);
  v0[7] = sub_63F00();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v13 = v10;
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  sub_30354(v11);

  return v13(0xD00000000000001ALL);
}

uint64_t sub_64670()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_647A4()
{
  sub_7F1C();
  sub_65734();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_64800()
{
  sub_7F1C();
  sub_65734();

  sub_657BC();

  return v0();
}

uint64_t sub_6485C()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 88) = v4;
  started = type metadata accessor for WorkoutStartUnsupportedSlotValueParameters(0);
  *(v1 + 40) = started;
  sub_B1C0(started);
  v7 = *(v6 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_648EC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 88);
  v6 = sub_73350();
  v7 = sub_657CC();
  sub_7CC4(v7, v8, v9, v6);
  sub_7CC4(v1 + *(v2 + 24), 1, 1, v6);
  *(v1 + *(v2 + 20)) = v5;
  v4(v1);
  *(v0 + 56) = sub_640D4();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v13 = v10;
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  sub_30354(v11);

  return v13(0xD000000000000021);
}

uint64_t sub_64A0C()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_64B40()
{
  sub_7F1C();
  sub_65760();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_64B9C()
{
  sub_7F1C();
  sub_65760();

  sub_657BC();

  return v0();
}

uint64_t sub_64BF8()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 90) = v4;
  *(v1 + 89) = v5;
  *(v1 + 88) = v6;
  started = type metadata accessor for WorkoutStartIntentHandledResponseParameters(0);
  *(v1 + 40) = started;
  sub_B1C0(started);
  v9 = *(v8 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_64C90()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 90);
  v6 = *(v0 + 89);
  v7 = *(v0 + 88);
  sub_73350();
  v8 = sub_657CC();
  sub_7CC4(v8, v9, v10, v11);
  *(v1 + v2[5]) = v7;
  *(v1 + v2[6]) = v6;
  *(v1 + v2[7]) = v5;
  v4(v1);
  *(v0 + 56) = sub_64300();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v15 = v12;
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  sub_30354(v13);

  return v15(0xD000000000000022);
}

uint64_t sub_64DB0()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_64EE4()
{
  sub_7F1C();
  sub_65708();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_64F40()
{
  sub_7F1C();
  sub_65708();

  sub_657BC();

  return v0();
}

uint64_t sub_64F9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_64FF0(a1, a2);
}

uint64_t sub_64FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  v8 = sub_B1C0(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_4F008(a1, &v16 - v11, &qword_A3F90, &unk_74FC0);
  v12 = *(v5 + 16);
  sub_3039C();
  v13();
  v14 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_10364(a1, &qword_A3F90, &unk_74FC0);
  return v14;
}

uint64_t sub_651BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1168C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_65248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
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

uint64_t sub_6531C()
{
  sub_657DC();
  v4 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_30368();

    return sub_7CC4(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

void sub_653E4()
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_65490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_65568()
{
  sub_657DC();
  v4 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_30368();

    return sub_7CC4(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }

  return result;
}

void sub_65600()
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_656E4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656D614E707061;
  a1[2].n128_u64[1] = 0xE700000000000000;
  return v2;
}

uint64_t sub_65708()
{
  v2 = *(v0 + 48);

  return sub_651BC(v2, type metadata accessor for WorkoutStartIntentHandledResponseParameters);
}

uint64_t sub_65734()
{
  v2 = *(v0 + 48);

  return sub_651BC(v2, type metadata accessor for WorkoutStartErrorWithCodeParameters);
}

uint64_t sub_65760()
{
  v2 = *(v0 + 48);

  return sub_651BC(v2, type metadata accessor for WorkoutStartUnsupportedSlotValueParameters);
}

uint64_t sub_657BC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  v3 = *(v0 + 72);
  return result;
}

uint64_t sub_657F0()
{
  v1 = v0;
  v2 = sub_72D60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TerminalElement.Period.second(_:))
  {
    return 6;
  }

  if (v7 == enum case for TerminalElement.Period.minute(_:))
  {
    return 7;
  }

  if (v7 == enum case for TerminalElement.Period.hour(_:))
  {
    return 8;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t type metadata accessor for HealthUnsupportedCATs()
{
  result = qword_A7DB0;
  if (!qword_A7DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_659CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_65A20(a1, a2);
}

uint64_t sub_65A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_2D9E0(a1);
  return v12;
}

void *sub_65BF4()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_67444(v0, v14);
  return v2;
}

uint64_t sub_65E6C()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  v3 = *(v2 + 64);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_302B0(v7, xmmword_77300);
  sub_3039C();
  sub_5AEC(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v6, 1, v11) == 1)
  {
    sub_5B50(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_5C0C(v11);
    v13 = *(v12 + 32);
    sub_3039C();
    v14();
  }

  *(v7 + 80) = 0x656369766564;
  *(v7 + 88) = 0xE600000000000000;
  v15 = type metadata accessor for WorkoutResumeErrorWithCodeParameters(0);
  v16 = *(v0 + *(v15 + 20));
  if (v16)
  {
    v17 = sub_73360();
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v18;
  *(v7 + 120) = v17;
  *(v7 + 128) = 0x646F43726F727265;
  *(v7 + 136) = 0xE900000000000065;
  v19 = (v0 + *(v15 + 24));
  if (v19[1])
  {
    v20 = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v19;
    v20 = &type metadata for Double;
  }

  *(v7 + 144) = v21;
  *(v7 + 168) = v20;

  return v7;
}

uint64_t sub_66050()
{
  v1 = v0;
  v2 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v2);
  v4 = *(v3 + 64);
  sub_303DC();
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v8 = swift_allocObject();
  sub_302B0(v8, xmmword_74B40);
  sub_5AEC(v1, v7, &qword_A3F98, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v7, 1, v9) == 1)
  {
    sub_5B50(v7, &qword_A3F98, qword_75450);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    sub_5BAC((v8 + 48));
    sub_5C0C(v9);
    (*(v10 + 32))();
  }

  return v8;
}

uint64_t sub_66198()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  v3 = *(v2 + 64);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_302B0(v7, xmmword_77300);
  sub_3039C();
  sub_5AEC(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v6, 1, v11) == 1)
  {
    sub_5B50(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_5C0C(v11);
    v13 = *(v12 + 32);
    sub_3039C();
    v14();
  }

  *(v7 + 80) = 0x5074737269467369;
  *(v7 + 88) = 0xEF70704179747261;
  v15 = type metadata accessor for WorkoutResumeIntentHandledResponseParameters(0);
  *(v7 + 96) = *(v0 + *(v15 + 20));
  *(v7 + 120) = &type metadata for Bool;
  strcpy((v7 + 128), "isPunchingOut");
  *(v7 + 142) = -4864;
  v16 = *(v0 + *(v15 + 24));
  *(v7 + 168) = &type metadata for Bool;
  *(v7 + 144) = v16;
  return v7;
}

uint64_t sub_6634C()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutResumeErrorWithCodeParameters(0);
  v1[5] = v4;
  sub_B1C0(v4);
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_663D8()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_73350();
  sub_303A8(v5, v6, v7, v5);
  *(v1 + *(v2 + 20)) = 0;
  v8 = v1 + *(v2 + 24);
  *v8 = 0;
  *(v8 + 8) = 1;
  v4(v1);
  v0[7] = sub_65E6C();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v9;
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  sub_30354(v10);

  return v12(0xD00000000000001BLL);
}

uint64_t sub_664E0()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_66614()
{
  sub_7F1C();
  sub_674B8();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_66670()
{
  sub_7F1C();
  sub_674B8();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_666D4()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutResumeUnsupportedSlotValueParameters(0);
  sub_B1C0(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6675C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_73350();
  sub_303A8(v4, v5, v6, v4);
  v3(v1);
  v0[6] = sub_66050();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v10 = v7;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  sub_30354(v8);

  return v10(0xD000000000000022);
}

uint64_t sub_66844()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_66978()
{
  sub_7F1C();
  sub_6748C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_669E0()
{
  sub_7F1C();
  sub_6748C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_66A44()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutResumeIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_66AD8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 89);
  v6 = *(v0 + 88);
  v7 = sub_73350();
  sub_303A8(v7, v8, v9, v7);
  *(v1 + *(v2 + 20)) = v6;
  *(v1 + *(v2 + 24)) = v5;
  v4(v1);
  *(v0 + 56) = sub_66198();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v13 = v10;
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  sub_30354(v11);

  return v13(0xD000000000000023);
}

uint64_t sub_66BE4()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_66D18()
{
  sub_7F1C();
  sub_674E4();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_66D74()
{
  sub_7F1C();
  sub_674E4();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_66DD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_66E2C(a1, a2);
}

uint64_t sub_66E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v7);
  v9 = *(v8 + 64);
  sub_303DC();
  __chkstk_darwin(v10);
  sub_5AEC(a1, &v16 - v11, &qword_A3F90, &unk_74FC0);
  v12 = *(v5 + 16);
  sub_3039C();
  v13();
  v14 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v14;
}

uint64_t sub_66FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_5C0C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_67084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
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

uint64_t sub_67158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  v8 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_30368();

    return sub_7CC4(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }

  return result;
}

uint64_t sub_6720C()
{
  sub_303C4();
  v2 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(v1, v0, v2);
}

uint64_t sub_67270()
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

uint64_t sub_672CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_673A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  v8 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_30368();

    return sub_7CC4(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_6748C()
{
  v2 = *(v0 + 40);

  return sub_66FF4(v2, type metadata accessor for WorkoutResumeUnsupportedSlotValueParameters);
}

uint64_t sub_674B8()
{
  v2 = *(v0 + 48);

  return sub_66FF4(v2, type metadata accessor for WorkoutResumeErrorWithCodeParameters);
}

uint64_t sub_674E4()
{
  v2 = *(v0 + 48);

  return sub_66FF4(v2, type metadata accessor for WorkoutResumeIntentHandledResponseParameters);
}

uint64_t sub_67510()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_67564(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v169 = a8;
  v154 = a2;
  v167 = a9;
  v10 = sub_506C(&qword_A54E8, &qword_76BB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v155 = &v148 - v12;
  v163 = a10;
  v159 = *(a10 + 16);
  sub_72520();
  sub_D850(&qword_A4828, qword_75BA0);
  v168 = sub_73E80();
  v13 = sub_5394(v168);
  v165 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v166 = &v148 - v17;
  v18 = sub_73720();
  v19 = sub_5394(v18);
  v170 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_198CC();
  v162 = v23 - v24;
  sub_11658();
  __chkstk_darwin(v25);
  v160 = &v148 - v26;
  sub_11658();
  __chkstk_darwin(v27);
  v157 = &v148 - v28;
  sub_11658();
  __chkstk_darwin(v29);
  v161 = &v148 - v30;
  v31 = type metadata accessor for HealthNLIntent(0);
  v32 = sub_1168C(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_C2A4();
  v37 = v36 - v35;
  v38 = sub_72830();
  v39 = sub_5394(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v39);
  sub_C2A4();
  v46 = v45 - v44;
  v47 = sub_731D0();
  v48 = sub_5394(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  __chkstk_darwin(v48);
  sub_198CC();
  v156 = v53 - v54;
  sub_11658();
  __chkstk_darwin(v55);
  v158 = &v148 - v56;
  sub_11658();
  __chkstk_darwin(v57);
  v59 = &v148 - v58;
  sub_727E0();
  if ((*(v41 + 88))(v46, v38) == enum case for Parse.NLv3IntentOnly(_:))
  {
    v164 = v18;
    (*(v41 + 96))(v46, v38);
    (*(v50 + 32))(v59, v46, v47);
    v60 = *(v50 + 16);
    v60(v37, v59, v47);
    v61 = v50;
    if (qword_A3930 != -1)
    {
      swift_once();
    }

    sub_68D38(&qword_A42E8, type metadata accessor for HealthNLIntent);
    sub_72E30();
    v62 = v164;
    v63 = v161;
    if (v172 == 3)
    {
      v161 = v59;
      v159 = v47;
      type metadata accessor for HealthFlowError();
      swift_allocObject();
      v64 = sub_B5BC(3);
      v65 = sub_736E0();
      sub_5F0B4();
      v66 = v170;
      v67 = v160;
      (*(v170 + 16))(v160, v65, v62);

      v68 = sub_73710();
      v69 = sub_73980();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v162 = v61;
        v72 = v71;
        v73 = sub_14F88();
        v153 = v37;
        v74 = v73;
        v171[0] = v73;
        *v70 = 136315394;
        v75 = sub_73ED0();
        v77 = sub_19144(v75, v76, v171);

        *(v70 + 4) = v77;
        *(v70 + 12) = 2112;
        sub_68EAC();
        sub_68D38(v78, v79);
        sub_14F2C();
        *v80 = v64;

        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 14) = v81;
        *v72 = v81;
        _os_log_impl(&dword_0, v68, v69, "%s Error: %@", v70, 0x16u);
        sub_10364(v72, &qword_A4060, &qword_75440);
        v61 = v162;
        sub_7EBC();
        sub_AE38(v74);
        v37 = v153;
        sub_7EBC();
        sub_7EBC();

        (*(v66 + 8))(v160, v164);
      }

      else
      {

        (*(v66 + 8))(v67, v62);
      }

      sub_68EAC();
      sub_68D38(v125, v126);
      v127 = sub_14F2C();
      sub_68EDC(v127, v128);

      sub_68F1C();
      v129();

      v130 = sub_68F08();
      v131(v130);
      sub_BFD8(v37);
      return (*(v61 + 8))(v161, v159);
    }

    else
    {
      v149 = v172;
      v162 = v61;
      v153 = v37;
      v100 = sub_736E0();
      sub_5F0B4();
      v101 = *(v170 + 16);
      v151 = v170 + 16;
      v150 = v101;
      v101(v63, v100, v62);
      v102 = v158;
      v152 = v60;
      v60(v158, v59, v47);
      v103 = sub_73710();
      v104 = sub_73970();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = sub_14F88();
        v148 = v100;
        v107 = v106;
        v171[0] = v106;
        *v105 = 136315138;
        sub_68EC4();
        sub_68D38(v108, v109);
        v110 = sub_73DA0();
        v111 = v102;
        v112 = v59;
        v113 = v47;
        v115 = v114;
        v160 = *(v162 + 8);
        (v160)(v111, v113);
        v116 = sub_19144(v110, v115, v171);
        v47 = v113;
        v59 = v112;

        *(v105 + 4) = v116;
        _os_log_impl(&dword_0, v103, v104, "Confirmation NL: %s", v105, 0xCu);
        sub_AE38(v107);
        sub_7EBC();
        v62 = v164;
        sub_7EBC();
      }

      else
      {

        v160 = *(v162 + 8);
        (v160)(v102, v47);
      }

      v158 = *(v170 + 8);
      (v158)(v63, v62);
      v132 = v153;
      v133 = sub_33D50(v159, v159, *(v163 + 32));
      v134 = v59;
      v135 = v47;
      v136 = sub_72340();
      sub_1168C(v136);
      v138 = *(v137 + 104);
      v139 = (v165 + 8);
      if (v149)
      {
        v140 = sub_68F28();
        v141(v140);
        sub_68F50();
        v142 = v154;
      }

      else
      {
        v144 = sub_68F28();
        v145(v144);
        sub_68F50();
        v133 = v133;
      }

      v143 = v166;
      sub_72510();
      v146 = v168;
      swift_storeEnumTagMultiPayload();
      sub_68F1C();
      v147();

      (*v139)(v143, v146);
      sub_BFD8(v132);
      return (v160)(v134, v135);
    }
  }

  else
  {
    (*(v41 + 8))(v46, v38);
    v82 = type metadata accessor for HealthFlowError();
    swift_allocObject();
    v83 = sub_B5BC(0);
    v84 = sub_736E0();
    sub_5F0B4();
    v85 = v170;
    v86 = v162;
    (*(v170 + 16))(v162, v84, v18);

    v87 = sub_73710();
    v88 = sub_73980();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v161 = v82;
      v90 = v89;
      v91 = swift_slowAlloc();
      v92 = sub_14F88();
      v171[0] = v92;
      *v90 = 136315394;
      v93 = sub_73ED0();
      v164 = v18;
      v95 = sub_19144(v93, v94, v171);

      *(v90 + 4) = v95;
      *(v90 + 12) = 2112;
      sub_68EAC();
      sub_68D38(v96, v97);
      sub_14F2C();
      *v98 = v83;

      v99 = _swift_stdlib_bridgeErrorToNSError();
      *(v90 + 14) = v99;
      *v91 = v99;
      _os_log_impl(&dword_0, v87, v88, "%s Error: %@", v90, 0x16u);
      sub_10364(v91, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v92);
      sub_7EBC();
      sub_7EBC();

      (*(v85 + 8))(v86, v164);
    }

    else
    {

      (*(v85 + 8))(v86, v18);
    }

    sub_68EAC();
    sub_68D38(v117, v118);
    v119 = sub_14F2C();
    sub_68EDC(v119, v120);

    sub_68F1C();
    v121();

    v122 = sub_68F08();
    return v123(v122);
  }
}

uint64_t sub_68470(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v68[1] = a2;
  v72 = a9;
  v73 = a8;
  v71 = sub_73720();
  v13 = sub_5394(v71);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_C2A4();
  v20 = v19 - v18;
  v21 = sub_506C(&qword_A3F98, qword_75450);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_198CC();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = v68 - v27;
  v29 = sub_506C(&unk_A6CD0, &unk_75B80);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = v68 - v31;
  v33 = sub_721F0();
  v34 = sub_5394(v33);
  v69 = v35;
  v70 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  sub_C2A4();
  v40 = v39 - v38;

  v41 = sub_453DC(a3, a4);
  if (v41 == 5)
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v42 = sub_B5BC(2);
    v43 = sub_736E0();
    swift_beginAccess();
    (*(v15 + 16))(v20, v43, v71);

    v44 = sub_73710();
    v45 = sub_73980();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v70 = sub_14F88();
      v74[0] = v70;
      *v46 = 136315394;
      v48 = sub_73ED0();
      v50 = sub_19144(v48, v49, v74);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2112;
      sub_68EAC();
      sub_68D38(v51, v52);
      sub_14F2C();
      *v53 = v42;

      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v54;
      *v47 = v54;
      _os_log_impl(&dword_0, v44, v45, "%s Error: %@", v46, 0x16u);
      sub_10364(v47, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v70);
      sub_7EBC();
      sub_7EBC();
    }

    (*(v15 + 8))(v20, v71);
    sub_68EAC();
    sub_68D38(v55, v56);
    v57 = sub_14F2C();
    *v58 = v42;
    v74[0] = v57;
    v77 = 1;

    v73(v74);

    return sub_10364(v74, &qword_A4810, &unk_760A0);
  }

  else
  {
    v60 = v41;
    sub_37918();
    sub_21FC0(v10, v74);
    v61 = v75;
    v62 = v76;
    v71 = sub_7C78(v74, v75);
    sub_45428(v60);
    sub_737F0();

    v63 = sub_73350();
    v64 = 1;
    sub_7CC4(v28, 0, 1, v63);
    v65 = (*(*(a10 + 32) + 24))(*(a10 + 16));
    if (v65)
    {
      v66 = v65;
      sub_739A0();

      v64 = 0;
    }

    sub_7CC4(v25, v64, 1, v63);
    (*(v62 + 8))(v28, v25, v61, v62);
    sub_10364(v25, &qword_A3F98, qword_75450);
    sub_10364(v28, &qword_A3F98, qword_75450);
    v67 = sub_AE38(v74);
    __chkstk_darwin(v67);
    v68[-2] = v40;
    sub_541F4(sub_68CDC, v74);
    v73(v74);
    sub_10364(v74, &qword_A4810, &unk_760A0);
    sub_10364(v32, &unk_A6CD0, &unk_75B80);
    return (*(v69 + 8))(v40, v70);
  }
}

uint64_t sub_68A68@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_506C(&qword_A4050, &unk_75290);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v11 - v6;
  sub_72840();
  sub_72840();
  sub_7C78(v13, v13[3]);
  sub_71ED0();
  v8 = sub_721F0();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  sub_7CC4(v7, 0, 1, v8);
  v9 = sub_72890();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  a2[3] = v9;
  a2[4] = &protocol witness table for AceOutput;
  sub_5BAC(a2);
  sub_720E0();
  sub_10364(v11, &unk_A6D20, &qword_76D80);
  sub_10364(v7, &qword_A4050, &unk_75290);
  sub_AE38(v14);
  return sub_AE38(v13);
}

unint64_t sub_68CE4()
{
  result = qword_A8090;
  if (!qword_A8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A8090);
  }

  return result;
}

uint64_t sub_68D38(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WorkoutsConfirmSlotError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x68E1CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_68E58()
{
  result = qword_A8098;
  if (!qword_A8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A8098);
  }

  return result;
}

uint64_t sub_68EDC(uint64_t a1, void *a2)
{
  *a2 = v2;
  **(v3 - 192) = a1;
  v5 = *(v3 - 176);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_68F50()
{

  return sub_7CC4(v1, 0, 1, v0);
}

void *sub_68FD0()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_6AA2C(v0, v14);
  return v2;
}

uint64_t sub_69248()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  v3 = *(v2 + 64);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_302B0(v7, xmmword_77300);
  sub_3039C();
  sub_5AEC(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v6, 1, v11) == 1)
  {
    sub_5B50(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_5C0C(v11);
    v13 = *(v12 + 32);
    sub_3039C();
    v14();
  }

  *(v7 + 80) = 0x656369766564;
  *(v7 + 88) = 0xE600000000000000;
  v15 = type metadata accessor for WorkoutPauseErrorWithCodeParameters(0);
  v16 = *(v0 + *(v15 + 20));
  if (v16)
  {
    v17 = sub_73360();
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v18;
  *(v7 + 120) = v17;
  *(v7 + 128) = 0x646F43726F727265;
  *(v7 + 136) = 0xE900000000000065;
  v19 = (v0 + *(v15 + 24));
  if (v19[1])
  {
    v20 = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v19;
    v20 = &type metadata for Double;
  }

  *(v7 + 144) = v21;
  *(v7 + 168) = v20;

  return v7;
}

uint64_t sub_6942C()
{
  v1 = v0;
  v2 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v2);
  v4 = *(v3 + 64);
  sub_303DC();
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v8 = swift_allocObject();
  sub_302B0(v8, xmmword_74B40);
  sub_5AEC(v1, v7, &qword_A3F98, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v7, 1, v9) == 1)
  {
    sub_5B50(v7, &qword_A3F98, qword_75450);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    sub_5BAC((v8 + 48));
    sub_5C0C(v9);
    (*(v10 + 32))();
  }

  return v8;
}

uint64_t sub_69574()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  v3 = *(v2 + 64);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_302B0(v7, xmmword_77300);
  sub_3039C();
  sub_5AEC(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v6, 1, v11) == 1)
  {
    sub_5B50(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_5C0C(v11);
    v13 = *(v12 + 32);
    sub_3039C();
    v14();
  }

  *(v7 + 80) = 0x5074737269467369;
  *(v7 + 88) = 0xEF70704179747261;
  v15 = type metadata accessor for WorkoutPauseIntentHandledResponseParameters(0);
  *(v7 + 96) = *(v0 + *(v15 + 20));
  *(v7 + 120) = &type metadata for Bool;
  strcpy((v7 + 128), "isPunchingOut");
  *(v7 + 142) = -4864;
  v16 = *(v0 + *(v15 + 24));
  *(v7 + 168) = &type metadata for Bool;
  *(v7 + 144) = v16;
  return v7;
}

uint64_t sub_69728()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutPauseErrorWithCodeParameters(0);
  v1[5] = v4;
  sub_B1C0(v4);
  v6 = *(v5 + 64);
  v1[6] = sub_7ED4();
  v7 = sub_221BC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_697A8()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_73350();
  sub_7CC4(v1, 1, 1, v5);
  *(v1 + *(v2 + 20)) = 0;
  v6 = v1 + *(v2 + 24);
  *v6 = 0;
  *(v6 + 8) = 1;
  v4(v1);
  sub_6AB78();
  v0[7] = sub_69248();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = v7;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  sub_30354(v8);
  v9 = sub_6AB6C(26);

  return v11(v9);
}

uint64_t sub_698B4()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_44428();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_B044();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_6AB00();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_699DC()
{
  sub_7F1C();
  sub_6AAA8();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_69A38()
{
  sub_7F1C();
  sub_6AAA8();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_69A9C()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutPauseUnsupportedSlotValueParameters(0);
  sub_B1C0(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_7ED4();
  v7 = sub_221BC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_69B18()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_73350();
  sub_6AB10(v4);
  v3(v1);
  sub_6AB78();
  v0[6] = sub_6942C();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  sub_30354(v6);
  v7 = sub_6AB6C(33);

  return v9(v7);
}

uint64_t sub_69BF4()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_44428();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  sub_B044();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_6AB00();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_69D1C()
{
  sub_7F1C();
  sub_6AA7C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_69D84()
{
  sub_7F1C();
  sub_6AA7C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_69DE8()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutPauseIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = sub_7ED4();
  v9 = sub_221BC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_69E70()
{
  v2 = sub_6AB48();
  sub_6AB10(v2);
  v3 = sub_6AB30();
  v1(v3);
  sub_6AB78();
  *(v0 + 56) = sub_69574();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  sub_30354(v5);
  v6 = sub_6AB6C(34);

  return v8(v6);
}

uint64_t sub_69F4C()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_44428();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_B044();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_6AB00();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6A074()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutPauseIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = sub_7ED4();
  v9 = sub_221BC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_6A0FC()
{
  v2 = sub_6AB48();
  sub_6AB10(v2);
  v3 = sub_6AB30();
  v1(v3);
  sub_6AB78();
  *(v0 + 56) = sub_69574();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  sub_30354(v5);
  v6 = sub_6AB6C(26);

  return v8(v6);
}

uint64_t sub_6A1D8()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_44428();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_B044();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_6AB00();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6A300()
{
  sub_7F1C();
  sub_6AAD4();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_6A35C()
{
  sub_7F1C();
  sub_6AAD4();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_6A3C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_6A414(a1, a2);
}

uint64_t sub_6A414(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v7);
  v9 = *(v8 + 64);
  sub_303DC();
  __chkstk_darwin(v10);
  sub_5AEC(a1, &v16 - v11, &qword_A3F90, &unk_74FC0);
  v12 = *(v5 + 16);
  sub_3039C();
  v13();
  v14 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v14;
}

uint64_t sub_6A5DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_5C0C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_6A66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
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

uint64_t sub_6A740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  v8 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_30368();

    return sub_7CC4(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }

  return result;
}

uint64_t sub_6A7F4()
{
  sub_303C4();
  v2 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(v1, v0, v2);
}

uint64_t sub_6A858()
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

uint64_t sub_6A8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_6A98C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  v8 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_30368();

    return sub_7CC4(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_6AA7C()
{
  v2 = *(v0 + 40);

  return sub_6A5DC(v2, type metadata accessor for WorkoutPauseUnsupportedSlotValueParameters);
}

uint64_t sub_6AAA8()
{
  v2 = *(v0 + 48);

  return sub_6A5DC(v2, type metadata accessor for WorkoutPauseErrorWithCodeParameters);
}

uint64_t sub_6AAD4()
{
  v2 = *(v0 + 48);

  return sub_6A5DC(v2, type metadata accessor for WorkoutPauseIntentHandledResponseParameters);
}

uint64_t sub_6AB10(uint64_t a1)
{

  return sub_7CC4(v1, 1, 1, a1);
}

uint64_t sub_6AB30()
{
  *(v0 + *(v1 + 20)) = v3;
  *(v0 + *(v1 + 24)) = v2;
  return v0;
}

uint64_t sub_6AB48()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 89);
  v7 = *(v0 + 88);

  return sub_73350();
}

uint64_t sub_6AB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_72820();
    v9 = a1 + *(a3 + 44);

    return sub_5124(v9, a2, v8);
  }
}

uint64_t sub_6AC34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_72820();
    v8 = v5 + *(a4 + 44);

    return sub_7CC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DirectInvocationData()
{
  result = qword_A8308;
  if (!qword_A8308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6AD00()
{
  sub_6ADF8(319, &qword_A8318);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_6ADF8(319, &qword_A8320);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_6AE44();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_72820();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_6ADF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_73A90();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_6AE44()
{
  if (!qword_A8328)
  {
    sub_ADF8(255, &qword_A7778, INWorkoutAssociatedItem_ptr);
    v0 = sub_738D0();
    if (!v1)
    {
      atomic_store(v0, &qword_A8328);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WorkoutVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x6AF78);
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

uint64_t sub_6AFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_72830();
  v5 = sub_5394(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_C2A4();
  v12 = v11 - v10;
  v13 = sub_72820();
  v14 = sub_5394(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_C2A4();
  v21 = (v20 - v19);
  v22 = type metadata accessor for DirectInvocationData();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  sub_C2A4();
  v26 = v25 - v24;
  (*(v7 + 16))(v12, a1, v4);
  if ((*(v7 + 88))(v12, v4) != enum case for Parse.directInvocation(_:))
  {
    v32 = *(v7 + 8);
    v32(a1, v4);
    v32(v12, v4);
    return sub_7CC4(a2, 1, 1, v22);
  }

  v85 = a1;
  (*(v7 + 96))(v12, v4);
  (*(v16 + 32))(v21, v12, v13);
  v27 = *(v22 + 44);
  (*(v16 + 16))(v26 + v27, v21, v13);
  if (!sub_72810())
  {
    v33 = sub_6D754();
    v34(v33);
    v35 = v21;
    v21 = *(v16 + 8);
    (v21)(v35, v13);
    sub_6D788();
LABEL_12:
    sub_2E308(&v89);
LABEL_31:
    (v21)(v26 + v27, v13);
    return sub_7CC4(a2, 1, 1, v22);
  }

  v86 = v21;
  sub_6D890(0x5674756F6B726F77, 0xEB00000000627265);

  if (!v90)
  {
    v36 = sub_6D754();
    v37(v36);
    v38 = sub_6D7F0(v16);
    (v21)(v38);
    goto LABEL_12;
  }

  v21 = &type metadata for Any;
  if ((sub_6D724() & 1) == 0)
  {
    v39 = sub_6D754();
    v40(v39);
    v41 = sub_6D7F0(v16);
    type metadata for Any(v41);
    goto LABEL_31;
  }

  v82 = v13;
  v83 = v16;
  if (sub_72810())
  {
    sub_6D800("workoutProgramName");

    sub_6D724();
    sub_6D764();
    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = v29;
    }
  }

  else
  {
    sub_6D788();
    sub_2E308(&v89);
    v28 = 0;
    v31 = 0;
  }

  *v26 = v28;
  *(v26 + 8) = v31;
  v84 = v26;
  if (!sub_72810())
  {
    sub_6D788();
    goto LABEL_21;
  }

  sub_6D800("workoutTrainerName");

  if (!v90)
  {
LABEL_21:
    sub_2E308(&v89);
    v42 = 0;
    v44 = 0;
    goto LABEL_22;
  }

  sub_6D724();
  sub_6D764();
  if (v30)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

LABEL_22:
  *(v26 + 16) = v42;
  *(v26 + 24) = v44;
  if (!sub_72810())
  {
    sub_6D788();
    goto LABEL_28;
  }

  v45 = sub_6D774();
  sub_6D890(v45 & 0xFFFFFFFFFFFFLL | 0x4E74000000000000, 0xEB000000006E756FLL);

  if (!v90)
  {
LABEL_28:
    sub_2E308(&v89);
    v46 = 0;
    v48 = 0;
    goto LABEL_29;
  }

  sub_6D724();
  sub_6D764();
  if (v30)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

LABEL_29:
  *(v26 + 72) = v46;
  *(v26 + 80) = v48;
  v49 = sub_6D128(v87, v88);
  if (v49 == 5)
  {
    v50 = sub_6D754();
    v51(v50);
    v52 = sub_6D7F0(v83);
    type metadata for Any(v52);

    goto LABEL_31;
  }

  *(v26 + 48) = v49;
  if (!sub_72810())
  {
    sub_6D788();
    v55 = v83;
    goto LABEL_39;
  }

  v54 = sub_6D774();
  sub_6D890(v54 & 0xFFFFFFFFFFFFLL | 0x5374000000000000, 0xEF65636E65757165);

  v55 = v83;
  if (!v90)
  {
LABEL_39:
    sub_2E308(&v89);
    v56 = 0;
    v57 = 0;
    goto LABEL_40;
  }

  sub_6D724();
  sub_6D764();
  if (v30)
  {
    v57 = 0;
  }

LABEL_40:
  *(v26 + 56) = v56;
  *(v26 + 64) = v57;
  if (!sub_72810())
  {
    sub_6D788();
    goto LABEL_45;
  }

  v58 = sub_6D774();
  sub_6D890(v58 & 0xFFFFFFFFFFFFLL | 0x4174000000000000, 0xEF79746976697463);

  if (!v90)
  {
LABEL_45:
    sub_2E308(&v89);
    goto LABEL_46;
  }

  if (sub_6D724())
  {
    v59 = sub_12460();
    goto LABEL_47;
  }

LABEL_46:
  v59 = 87;
LABEL_47:
  *(v26 + 32) = v59;
  v60 = sub_72810();
  if (!v60)
  {
    sub_6D788();
    goto LABEL_63;
  }

  sub_6CDBC(0xD000000000000011, 0x800000000007F760, v60, &v89);

  if (!v90)
  {
LABEL_63:
    sub_2E308(&v89);
LABEL_64:
    (*(v7 + 8))(v85, v4);
    (*(v55 + 8))(v86, v13);
LABEL_65:
    *(v26 + 40) = &_swiftEmptyArrayStorage;
    sub_6D664(v26, a2);
    sub_7CC4(a2, 0, 1, v22);
    return sub_6D6C8(v26);
  }

  sub_506C(&qword_A4B20, &unk_75EA0);
  result = sub_6D724();
  if ((result & 1) == 0)
  {
    goto LABEL_64;
  }

  v79 = v22;
  v80 = a2;
  v61 = 0;
  v62 = v86;
  v81 = *(v87 + 16);
  v63 = v87 + 40;
LABEL_51:
  v64 = (v63 + 16 * v61);
  while (1)
  {
    if (v81 == v61)
    {

      v77 = sub_6D754();
      v78(v77);
      (*(v55 + 8))(v62, v13);
      v22 = v79;
      a2 = v80;
      goto LABEL_65;
    }

    if (v61 >= *(v87 + 16))
    {
      break;
    }

    v65 = *v64;
    *&v89 = *(v64 - 1);
    *(&v89 + 1) = v65;
    sub_10414();

    v66 = sub_73AF0();
    if (v66[2])
    {
      v68 = v66[4];
      v67 = v66[5];
      v70 = v66[6];
      v69 = v66[7];

      v71 = sub_737E0();
      v73 = v72;
      v13 = v82;

      v74 = objc_allocWithZone(INWorkoutAssociatedItem);
      v75 = v71;
      v62 = v86;
      v76 = sub_6D29C(5, v75, v73, 0, 0);

      if (v76)
      {
        sub_73850();
        if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_73890();
        }

        ++v61;
        result = sub_738C0();
        v55 = v83;
        v26 = v84;
        v63 = v87 + 40;
        goto LABEL_51;
      }
    }

    else
    {
    }

    v64 += 2;
    ++v61;
    v55 = v83;
    v26 = v84;
  }

  __break(1u);
  return result;
}

void sub_6B824(void *a1@<X8>)
{
  v2 = v1;
  switch(*(v1 + 48))
  {
    case 1:
      v15 = sub_6D560(v1);
      v5 = [objc_allocWithZone(INEndWorkoutIntent) initWithWorkoutName:v15];

      v4 = sub_6D878(v16, &qword_A4418);
      v8 = &off_9A868;
      break;
    case 2:
      v11 = sub_6D560(v1);
      v5 = [objc_allocWithZone(INPauseWorkoutIntent) initWithWorkoutName:v11];

      v4 = sub_6D878(v12, &qword_A4498);
      v8 = &off_9A878;
      break;
    case 3:
      v13 = sub_6D560(v1);
      v5 = [objc_allocWithZone(INCancelWorkoutIntent) initWithWorkoutName:v13];

      v4 = sub_6D878(v14, &qword_A4578);
      v8 = &off_9A870;
      break;
    case 4:
      v9 = sub_6D560(v1);
      v5 = [objc_allocWithZone(INResumeWorkoutIntent) initWithWorkoutName:v9];

      v4 = sub_6D878(v10, &qword_A3BA0);
      v8 = &off_9A880;
      break;
    default:
      v4 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
      sub_6D560(v1);
      sub_6D864();
      v5 = sub_739F0();
      v6 = *(v2 + 40);
      sub_ADF8(0, &qword_A7778, INWorkoutAssociatedItem_ptr);
      isa = sub_73860().super.isa;
      [v5 setAssociatedItems:isa];

      v8 = &off_9A860;
      break;
  }

  a1[3] = v4;
  a1[4] = v8;
  *a1 = v5;
}

Swift::Int sub_6BA6C(char a1)
{
  sub_6D84C();
  sub_73E50(qword_7B690[a1]);
  return sub_73E60();
}

Swift::Int sub_6BB0C(unsigned __int8 a1)
{
  sub_6D84C();
  sub_73E50(a1);
  return sub_73E60();
}

Swift::Int sub_6BB70()
{
  sub_6D84C();
  sub_6D7B4();
  return sub_73E60();
}

Swift::Int sub_6BBA4()
{
  sub_6D84C();
  sub_6C1A0();
  return sub_73E60();
}

Swift::Int sub_6BC14(uint64_t a1, void (*a2)(uint64_t))
{
  sub_6D84C();
  a2(a1);
  sub_6D828();

  return sub_73E60();
}

Swift::Int sub_6BC64(Swift::UInt a1)
{
  sub_6D84C();
  sub_73E50(a1);
  return sub_73E60();
}

uint64_t sub_6BCCC()
{
  sub_73810();
}

uint64_t sub_6BDC4()
{
  sub_73810();
}

uint64_t sub_6BEAC()
{
  sub_73810();
}

uint64_t sub_6BF74()
{
  sub_73810();
}

uint64_t sub_6C040()
{
  sub_73810();
}

uint64_t sub_6C1A0()
{
  sub_73810();
}

uint64_t sub_6C278(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_73810();
}

uint64_t sub_6C2D0()
{
  sub_73810();
}

Swift::Int sub_6C344()
{
  sub_73E40();
  sub_73810();

  return sub_73E60();
}

Swift::Int sub_6C3E4()
{
  sub_73E40();
  sub_6C1A0();
  return sub_73E60();
}

Swift::Int sub_6C428()
{
  sub_73E40();
  sub_6D7B4();
  return sub_73E60();
}

Swift::Int sub_6C4C0(uint64_t a1, char a2)
{
  sub_73E40();
  sub_73E50(qword_7B690[a2]);
  return sub_73E60();
}

Swift::Int sub_6C510()
{
  sub_73E40();
  sub_73810();

  return sub_73E60();
}

Swift::Int sub_6C5A4(uint64_t a1, unsigned __int8 a2)
{
  sub_73E40();
  sub_73E50(a2);
  return sub_73E60();
}

Swift::Int sub_6C600(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_73E40();
  a3(a2);
  sub_6D828();

  return sub_73E60();
}

Swift::Int sub_6C654(uint64_t a1, Swift::UInt a2)
{
  sub_73E40();
  sub_73E50(a2);
  return sub_73E60();
}

uint64_t sub_6C698(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      result = 6581861;
      break;
    case 2:
      result = 0x6573756170;
      break;
    case 3:
      result = 0x6C65636E6163;
      break;
    case 4:
      result = 0x656D75736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_6C72C@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = sub_506C(&qword_A8378, &qword_7B668);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v76 = &v67 - v4;
  v5 = sub_506C(&qword_A8380, &qword_7B670);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v73 = &v67 - v7;
  v8 = sub_72E60();
  v9 = sub_5394(v8);
  v74 = v10;
  v75 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_198CC();
  v72 = v13 - v14;
  __chkstk_darwin(v15);
  v71 = &v67 - v16;
  v70 = sub_72E00();
  v17 = *(v70 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v70);
  sub_198CC();
  v68 = v19 - v20;
  __chkstk_darwin(v21);
  v67 = &v67 - v22;
  v23 = sub_506C(qword_A8388, &qword_7B678);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  sub_198CC();
  v27 = (v25 - v26);
  __chkstk_darwin(v28);
  v30 = (&v67 - v29);
  sub_506C(&qword_A4650, &unk_7B680);
  v31 = *(v17 + 72);
  v78 = v17;
  v79 = v31;
  v32 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_74F60;
  *v30 = sub_6C698(*(v1 + 48));
  v30[1] = v34;
  v35 = enum case for TerminalElement.Value.string(_:);
  v36 = sub_72D50();
  v37 = *(*(v36 - 8) + 104);
  v38 = sub_6D7E0();
  v37(v38);
  sub_6D794();
  sub_6D744();
  sub_72DF0();
  v39 = *(v1 + 32);
  v69 = v32;
  if (v39 == 87)
  {
    v40 = 0xE500000000000000;
    v41 = 0x726568746FLL;
  }

  else
  {
    v41 = sub_124B4(v39);
  }

  *v27 = v41;
  v27[1] = v40;
  (v37)(v27, v35, v36);
  sub_7CC4(v27, 0, 1, v36);
  sub_6D744();
  v42 = v79;
  sub_72DF0();
  v43 = *(v1 + 64);
  if (v43)
  {
    v44 = 2 * v42;
    *v30 = *(v1 + 56);
    v30[1] = v43;
    v45 = sub_6D7E0();
    v37(v45);
    sub_6D794();

    sub_6D744();
    v46 = v67;
    sub_72DF0();
    sub_FFB4();
    v33 = v47;
    *(v47 + 16) = 3;
    v48 = v69;
    v49 = v47 + v69 + v44;
    v50 = v70;
    (*(v78 + 32))(v49, v46, v70);
  }

  else
  {
    v48 = v69;
    v50 = v70;
  }

  v51 = *(v1 + 80);
  if (v51)
  {
    *v30 = *(v1 + 72);
    v30[1] = v51;
    v52 = sub_6D7E0();
    v37(v52);
    sub_6D794();

    sub_6D744();
    v53 = v68;
    sub_72DF0();
    v54 = *(v33 + 16);
    if (v54 >= *(v33 + 24) >> 1)
    {
      sub_FFB4();
      v33 = v66;
    }

    v55 = v78;
    v56 = v79;
    *(v33 + 16) = v54 + 1;
    (*(v55 + 32))(v33 + v48 + v54 * v56, v53, v50);
  }

  sub_6CE20(v33);

  sub_6D744();
  v57 = v71;
  sub_72E50();
  v58 = v72;
  sub_72E40();
  v59 = v75;
  v80[3] = v75;
  v80[4] = &protocol witness table for NonTerminalIntentNode;
  v60 = sub_5BAC(v80);
  v61 = v74;
  (*(v74 + 16))(v60, v58, v59);
  v62 = sub_73150();
  sub_7CC4(v73, 1, 1, v62);
  v63 = sub_72E70();
  sub_7CC4(v76, 1, 1, v63);
  sub_6D864();
  sub_731C0();
  v64 = *(v61 + 8);
  v64(v58, v59);
  return (v64)(v57, v59);
}

double sub_6CDBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_6D330(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_14E68(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_6CE20(uint64_t a1)
{
  v2 = sub_72E00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_40280();
    v8 = v21;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v17 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v21 = v8;
      v13 = v8[2];
      if (v13 >= v8[3] >> 1)
      {
        sub_40280();
      }

      v19 = v2;
      v20 = &protocol witness table for TerminalIntentNode;
      v14 = sub_5BAC(&v18);
      v10(v14, v6, v2);
      v8 = v21;
      v21[2] = v13 + 1;
      sub_D8D8(&v18, &v8[5 * v13 + 4]);
      (*(v9 - 8))(v6, v2);
      v12 += v17;
      --v7;
    }

    while (v7);
  }

  return v8;
}

unint64_t sub_6CFEC(char a1)
{
  result = 0x5374756F6B726F77;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x4174756F6B726F77;
      break;
    case 5:
      result = 0x5674756F6B726F77;
      break;
    case 6:
      result = 0x4E74756F6B726F77;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_6D128(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_97B28;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_6D174(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_58A04();
}

uint64_t sub_6D1E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6D128(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_6D218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6C698(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_6D248()
{
  result = qword_A8370;
  if (!qword_A8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A8370);
  }

  return result;
}

id sub_6D29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  if (a3)
  {
    v10 = sub_73780();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithItemLabel:a1 itemID:v10 contentRating:a4 itemName:a5];

  return v11;
}

unint64_t sub_6D330(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_73E40();
  sub_73810();
  v6 = sub_73E60();

  return sub_6D3EC(a1, a2, v6);
}

unint64_t sub_6D3A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_73A30(*(v2 + 40));

  return sub_6D4A0(a1, v4);
}

unint64_t sub_6D3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_73DB0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_6D4A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_735B0();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_73A40();

    if (v8)
    {
      break;
    }
  }

  return i;
}

id sub_6D560(uint64_t a1)
{
  v14 = type metadata accessor for DirectInvocationData();
  v15 = &off_9A918;
  v2 = sub_5BAC(v13);
  sub_6D664(a1, v2);
  v3 = *(sub_7C78(v13, v14) + 32);
  if (v3 == 87)
  {
    v4 = 13;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_123E0(v4);
  v7 = v6;
  v8 = sub_7C78(v13, v14);
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v10 = 0xE700000000000000;
    v9 = 0x74756F6B726F57;
  }

  objc_allocWithZone(INSpeakableString);

  v11 = sub_5ED24(v5, v7, v9, v10, 0, 0);
  sub_AE38(v13);
  return v11;
}

uint64_t sub_6D664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6D6C8(uint64_t a1)
{
  v2 = type metadata accessor for DirectInvocationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6D724()
{

  return swift_dynamicCast();
}

double sub_6D788()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t sub_6D794()
{

  return sub_7CC4(v0, 0, 1, v1);
}

uint64_t sub_6D7B4()
{

  return sub_73810();
}

double sub_6D800@<D0>(uint64_t a1@<X8>)
{

  return sub_6CDBC(0xD000000000000012, (a1 - 32) | 0x8000000000000000, v1, (v2 - 112));
}

uint64_t sub_6D828()
{

  return sub_73810();
}

uint64_t sub_6D84C()
{

  return sub_73E40();
}

uint64_t sub_6D878(uint64_t a1, unint64_t *a2)
{

  return sub_ADF8(0, a2, v2);
}

double sub_6D890(uint64_t a1, uint64_t a2)
{

  return sub_6CDBC(a1, a2, v2, (v3 - 112));
}

unint64_t sub_6D8A8@<X0>(void *a1@<X8>)
{
  v2 = sub_73720();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = sub_6DAF4(0xD000000000000015, 0x800000000007F7A0);
  if (!v8)
  {
    v9 = sub_736E0();
    swift_beginAccess();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_73710();
    v11 = sub_73970();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "Error while creating Health user defaults!", v12, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v8 = [objc_opt_self() standardUserDefaults];
  }

  v13 = v8;
  result = sub_22024();
  a1[3] = result;
  a1[4] = &off_9A940;
  *a1 = v13;
  return result;
}

id sub_6DAB0()
{
  v1 = sub_73780();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

id sub_6DAF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_73780();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_6DB58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_6DB9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_6DBDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6DC88(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_73930();
  if (!v26)
  {
    return sub_738A0();
  }

  v48 = v26;
  v52 = sub_73C20();
  v39 = sub_73C30();
  sub_73BD0(v48);
  result = sub_73920();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_73950();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_73C10();
      result = sub_73940();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_6E0A4()
{
  sub_7F1C();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_73720();
  v0[7] = v3;
  sub_7E94(v3);
  v0[8] = v4;
  v6 = *(v5 + 64);
  v0[9] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6E14C()
{
  v41 = v0;
  v1 = v0[5];
  v2 = *(v0[6] + 16);
  sub_72640();
  v3 = sub_72620();
  v4 = [v3 disambiguationItems];

  v5 = sub_73870();
  v6 = sub_3E538(v5);

  if (v6)
  {
    v7 = v0[9];
    sub_506C(&qword_A4CF8, &qword_75FF0);
    v8 = sub_72790();

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[7];
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v14 = sub_B5BC(6);
    v15 = sub_736E0();
    sub_7146C();
    (*(v11 + 16))(v12, v15, v13);

    v16 = sub_73710();
    v17 = sub_73980();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[8];
    v20 = v0[9];
    v21 = v0[7];
    if (v18)
    {
      v39 = v0[9];
      v22 = v0[6];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v23 = 136315394;
      v26 = sub_73ED0();
      v38 = v21;
      v28 = sub_19144(v26, v27, &v40);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      sub_713E0();
      sub_71398(v29, v30);
      sub_14F2C();
      *v31 = v14;

      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v32;
      *v24 = v32;
      _os_log_impl(&dword_0, v16, v17, "%s Error: %@", v23, 0x16u);
      sub_AEF4(v24, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v25);
      sub_7EBC();
      sub_7EBC();

      (*(v19 + 8))(v39, v38);
    }

    else
    {

      (*(v19 + 8))(v20, v21);
    }

    v33 = v0[9];
    sub_713E0();
    sub_71398(v34, v35);
    sub_14F2C();
    *v36 = v14;
    swift_willThrow();

    sub_7EA4();

    return v37();
  }
}

uint64_t sub_6E4F8()
{
  sub_7F1C();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[14] = *(v2 + 16);
  v5 = sub_722B0();
  v0[15] = v5;
  sub_7E94(v5);
  v0[16] = v6;
  v8 = *(v7 + 64);
  v0[17] = sub_7ED4();
  v9 = sub_72830();
  v0[18] = v9;
  sub_7E94(v9);
  v0[19] = v10;
  v12 = *(v11 + 64);
  v0[20] = sub_7ED4();
  v13 = sub_727F0();
  v0[21] = v13;
  sub_7E94(v13);
  v0[22] = v14;
  v16 = *(v15 + 64);
  v0[23] = sub_7ED4();
  v17 = sub_73720();
  v0[24] = v17;
  sub_7E94(v17);
  v0[25] = v18;
  v20 = *(v19 + 64) + 15;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_6E6A4()
{
  v95 = v0;
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[11];
  v8 = sub_736E0();
  sub_7146C();
  v90 = v8;
  v89 = *(v3 + 16);
  v89(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v9 = sub_73710();
  v10 = sub_73970();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[27];
  v14 = v0[24];
  v13 = v0[25];
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[21];
  if (v11)
  {
    v87 = v0[27];
    v18 = v0[13];
    v85 = v0[24];
    v19 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_73ED0();
    v22 = sub_19144(v20, v21, v94);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_71398(&unk_A6D40, &type metadata accessor for Input);
    v23 = sub_73DA0();
    v25 = v24;
    (*(v16 + 8))(v15, v17);
    v26 = sub_19144(v23, v25, v94);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_0, v9, v10, "%s Received parse: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_7EBC();
    sub_7EBC();

    v27 = *(v13 + 8);
    v27(v87, v85);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    v27 = *(v13 + 8);
    v27(v12, v14);
  }

  v28 = v0[20];
  v30 = v0[13];
  v29 = v0[14];
  v31 = v0[11];
  sub_727E0();
  v32 = *(v30 + 32);
  v33 = sub_221CC();
  v35 = sub_33058(v33, v34, v29, v32);
  v41 = v0[14];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v88 = v35;
  v42 = (*(v32 + 24))(v41, v32);
  if (v42)
  {
    v43 = v42;
    v44 = [v42 spokenPhrase];

    v45 = sub_73790();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = v0[12];
  sub_506C(&qword_A4D00, &unk_760B0);
  v0[9] = sub_72440();
  v49 = swift_task_alloc();
  *(v49 + 16) = v45;
  *(v49 + 24) = v47;
  sub_506C(&qword_A8410, &qword_7B940);
  sub_D9A8(&unk_A8420, &qword_A8410, &qword_7B940);
  sub_73840();

  v50 = v0[8];
  if (v50)
  {
    v51 = v0[26];
    v52 = v0[27];
    v91 = v0[23];
    v92 = v0[20];
    v54 = v0[16];
    v53 = v0[17];
    v56 = v0[14];
    v55 = v0[15];
    v57 = v0[10];
    v94[3] = sub_ADF8(0, &qword_A4058, INSpeakableString_ptr);
    v94[0] = v50;
    v58 = v50;
    v59 = v88;
    sub_722A0();
    sub_72350();

    (*(v54 + 8))(v53, v55);

    sub_7EA4();
  }

  else
  {
    v62 = v0[26];
    v63 = v0[24];
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v64 = sub_B5BC(5);
    swift_beginAccess();
    v89(v62, v90, v63);

    v65 = sub_73710();
    v66 = sub_73980();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[25];
    v69 = v0[24];
    if (v67)
    {
      v93 = v0[26];
      v70 = v0[13];
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v94[0] = v86;
      *v71 = 136315394;
      v73 = sub_73ED0();
      v75 = sub_19144(v73, v74, v94);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2112;
      sub_713E0();
      sub_71398(v76, v77);
      sub_14F2C();
      *v78 = v64;

      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 14) = v79;
      *v72 = v79;
      _os_log_impl(&dword_0, v65, v66, "%s Error: %@", v71, 0x16u);
      sub_AEF4(v72, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v86);
      sub_7EBC();
      sub_7EBC();

      v80 = v93;
      v81 = v69;
    }

    else
    {

      v80 = sub_221CC();
    }

    v27(v80, v81);
    sub_713E0();
    sub_71398(v82, v83);
    sub_14F2C();
    *v84 = v64;
    swift_willThrow();

    v37 = v0[26];
    v36 = v0[27];
    v38 = v0[23];
    v39 = v0[20];
    v40 = v0[17];

    sub_7EA4();
  }

  return v60();
}

uint64_t sub_6EE10(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 spokenPhrase];
  v6 = sub_73790();
  v8 = v7;

  if (a3)
  {
    if (v6 == a2 && v8 == a3)
    {
      LOBYTE(a3) = 1;
    }

    else
    {
      LOBYTE(a3) = sub_73DB0();
    }
  }

  return a3 & 1;
}

uint64_t sub_6EEB8()
{
  sub_7F1C();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = *(*(sub_506C(&qword_A4050, &unk_75290) - 8) + 64);
  v1[10] = sub_7ED4();
  v6 = *(*(sub_71F70() - 8) + 64);
  v1[11] = sub_7ED4();
  v7 = sub_72580();
  v1[12] = v7;
  sub_7E94(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = sub_7ED4();
  v11 = sub_721F0();
  v1[15] = v11;
  sub_7E94(v11);
  v1[16] = v12;
  v14 = *(v13 + 64);
  v1[17] = sub_7ED4();
  v15 = sub_73720();
  v1[18] = v15;
  sub_7E94(v15);
  v1[19] = v16;
  v18 = *(v17 + 64);
  v1[20] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_6F050()
{
  v38 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_736E0();
  sub_7146C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_73710();
  v6 = sub_73970();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  if (v7)
  {
    v11 = v0[8];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315138;
    v14 = sub_73ED0();
    v16 = sub_19144(v14, v15, &v37);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "%s Generating prompt to disambiguate workoutName", v12, 0xCu);
    sub_AE38(v13);
    sub_7EBC();
    sub_7EBC();
  }

  v17 = *(v9 + 8);
  v18 = sub_221CC();
  v19(v18);
  v20 = v0[16];
  v21 = v0[14];
  v34 = v0[17];
  v35 = v0[15];
  v22 = v0[10];
  v23 = v0[11];
  v36 = v0[7];
  sub_506C(&qword_A4D00, &unk_760B0);
  v0[5] = sub_72440();
  v24 = sub_506C(&qword_A8410, &qword_7B940);
  sub_71428();
  v26 = sub_D9A8(v25, &qword_A8410, &qword_7B940);
  v28 = sub_6DC88(sub_6F8D4, 0, v24, &type metadata for String, &type metadata for Never, v26, &protocol witness table for Never, v27);

  sub_3727C(v28);

  sub_71F50();
  sub_72530();
  (*(v20 + 16))(v22, v34, v35);
  sub_7CC4(v22, 0, 1, v35);
  sub_72550();
  sub_72570();
  v29 = sub_72440();
  v0[21] = v29;
  v30 = swift_task_alloc();
  v0[22] = v30;
  *v30 = v0;
  v30[1] = sub_6F36C;
  v31 = v0[8];
  v32 = v0[9];

  return sub_6F93C(v29, v31);
}

uint64_t sub_6F36C()
{
  v2 = *v1;
  sub_44428();
  *v4 = v3;
  v5 = *(v2 + 176);
  v6 = *v1;
  *(v3 + 184) = v7;
  *(v3 + 192) = v0;

  v8 = *(v2 + 168);

  sub_7F10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_6F49C()
{
  v1 = v0[9];
  v2 = v1[38];
  v3 = v1[39];
  sub_7C78(v1 + 35, v2);
  v4 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_6F564;
  v6 = v0[23];
  v7 = v0[14];
  v8 = v0[6];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v8, v6, v7, v2, v3);
}

uint64_t sub_6F564()
{
  sub_7F1C();
  sub_B0BC();
  v3 = *(v2 + 200);
  v4 = *v1;
  sub_B044();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6F664()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  (*(v7 + 8))(v5, v6);
  v10 = *(v3 + 8);
  v11 = sub_221CC();
  v12(v11);

  sub_7EA4();

  return v13();
}

uint64_t sub_6F74C()
{
  v4 = *(v1 + 192);
  v5 = sub_71440();
  v6(v5);
  (*(v3 + 8))(v0, v2);

  sub_7EA4();

  return v7();
}

uint64_t sub_6F80C()
{
  v4 = *(v1 + 208);
  v5 = sub_71440();
  v6(v5);
  (*(v3 + 8))(v0, v2);

  sub_7EA4();

  return v7();
}

void sub_6F8D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 spokenPhrase];
  v4 = sub_73790();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_6F93C(uint64_t a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  sub_7F10();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_6F96C()
{
  v1 = *(v0 + 504);
  v2 = sub_707B0(*(v0 + 496), v1);
  *(v0 + 520) = v2;
  v3 = *(v1 + 16);
  v4 = sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  if (!sub_71488(v4))
  {
    v13 = sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    if (sub_71488(v13))
    {
      v14 = sub_7C78((*(v0 + 512) + 40), *(*(v0 + 512) + 64));
      sub_71460(v14);
      *(v0 + 744) = v15;
      *(v0 + 752) = v15;
      *(v0 + 760) = v15;
      *(v0 + 768) = v15;
      *(v0 + 232) = 0;
      *(v0 + 240) = *(v0 + 744);
      *(v0 + 241) = 65792;
      *(v0 + 248) = v2;
      *(v0 + 256) = 0;
      *(v0 + 264) = *(v0 + 752);
      *(v0 + 272) = 0;
      *(v0 + 280) = *(v0 + 760);
      *(v0 + 288) = 0;
      *(v0 + 296) = *(v0 + 768);
      v8 = sub_61674();
      *(v0 + 552) = v8;
      v16 = sub_71408(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      *(v0 + 560) = v16;
      *v16 = v0;
      v16[1] = sub_70090;
      v12 = 0x800000000007F8A0;
      v11 = 0xD000000000000020;
      goto LABEL_9;
    }

    v17 = sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
    if (sub_71488(v17))
    {
      v18 = sub_7C78((*(v0 + 512) + 80), *(*(v0 + 512) + 104));
      sub_71460(v18);
      *(v0 + 712) = v19;
      *(v0 + 720) = v19;
      *(v0 + 728) = v19;
      *(v0 + 736) = v19;
      *(v0 + 160) = 0;
      *(v0 + 168) = *(v0 + 712);
      *(v0 + 169) = 65792;
      *(v0 + 176) = v2;
      *(v0 + 184) = 0;
      *(v0 + 192) = *(v0 + 720);
      *(v0 + 200) = 0;
      *(v0 + 208) = *(v0 + 728);
      *(v0 + 216) = 0;
      v20 = "sambiguateSlotValue";
      *(v0 + 224) = *(v0 + 736);
      v8 = sub_68FD0();
      *(v0 + 576) = v8;
      v21 = sub_71408(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      *(v0 + 584) = v21;
      *v21 = v0;
      v22 = sub_70258;
    }

    else
    {
      v24 = sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
      if (sub_71488(v24))
      {
        v25 = sub_7C78((*(v0 + 512) + 120), *(*(v0 + 512) + 144));
        sub_71460(v25);
        *(v0 + 680) = v26;
        *(v0 + 688) = v26;
        *(v0 + 696) = v26;
        *(v0 + 648) = v26;
        *(v0 + 88) = 0;
        *(v0 + 96) = *(v0 + 680);
        *(v0 + 97) = 65792;
        *(v0 + 104) = v2;
        *(v0 + 112) = 0;
        *(v0 + 120) = *(v0 + 688);
        *(v0 + 128) = 0;
        *(v0 + 136) = *(v0 + 696);
        *(v0 + 144) = 0;
        v7 = "ambiguateSlotValue";
        *(v0 + 152) = *(v0 + 648);
        v8 = sub_65BF4();
        *(v0 + 600) = v8;
        v9 = sub_71408(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        *(v0 + 608) = v9;
        *v9 = v0;
        v10 = sub_70420;
        goto LABEL_3;
      }

      v27 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
      if (!sub_71488(v27))
      {
        return sub_73CC0();
      }

      v28 = sub_7C78((*(v0 + 512) + 160), *(*(v0 + 512) + 184));
      sub_71460(v28);
      *(v0 + 704) = v29;
      *(v0 + 656) = v29;
      *(v0 + 664) = v29;
      *(v0 + 672) = v29;
      *(v0 + 16) = 0;
      *(v0 + 24) = *(v0 + 704);
      *(v0 + 25) = 65792;
      *(v0 + 32) = v2;
      *(v0 + 40) = 0;
      *(v0 + 48) = *(v0 + 656);
      *(v0 + 56) = 0;
      *(v0 + 64) = *(v0 + 664);
      *(v0 + 72) = 0;
      v20 = "rategyAsync.swift";
      *(v0 + 80) = *(v0 + 672);
      v8 = sub_63C88();
      *(v0 + 624) = v8;
      v21 = sub_71408(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      *(v0 + 632) = v21;
      *v21 = v0;
      v22 = sub_705E8;
    }

    v21[1] = v22;
    v12 = v20 | 0x8000000000000000;
    v11 = 0xD000000000000022;
    goto LABEL_9;
  }

  v5 = sub_7C78(*(v0 + 512), *(*(v0 + 512) + 24));
  sub_71460(v5);
  *(v0 + 776) = v6;
  *(v0 + 784) = v6;
  *(v0 + 792) = v6;
  *(v0 + 800) = v6;
  *(v0 + 304) = 0;
  *(v0 + 312) = *(v0 + 776);
  *(v0 + 313) = 65792;
  *(v0 + 320) = v2;
  *(v0 + 328) = 0;
  *(v0 + 336) = *(v0 + 784);
  *(v0 + 344) = 0;
  *(v0 + 352) = *(v0 + 792);
  *(v0 + 360) = 0;
  v7 = "biguateSlotValue";
  *(v0 + 368) = *(v0 + 800);
  v8 = sub_2E6AC();
  *(v0 + 528) = v8;
  v9 = sub_71408(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 536) = v9;
  *v9 = v0;
  v10 = sub_6FEC8;
LABEL_3:
  v9[1] = v10;
  v11 = 0xD000000000000023;
  v12 = v7 | 0x8000000000000000;
LABEL_9:

  return v30(v11, v12, v8);
}

uint64_t sub_6FEC8()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[47] = v1;
  v3[48] = v5;
  v3[49] = v0;
  sub_B15C();
  v7 = *(v6 + 536);
  v8 = *v1;
  sub_B044();
  *v9 = v8;
  v3[68] = v0;

  if (!v0)
  {
    v10 = v3[66];
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6FFCC()
{
  sub_7F1C();
  v1 = *(v0 + 520);

  v2 = *(v0 + 384);
  sub_713F8();

  return v3();
}

uint64_t sub_70028()
{
  sub_7F1C();
  v1 = v0[66];
  v2 = v0[65];

  v3 = v0[68];
  sub_7EA4();

  return v4();
}

uint64_t sub_70090()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[50] = v1;
  v3[51] = v5;
  v3[52] = v0;
  sub_B15C();
  v7 = *(v6 + 560);
  v8 = *v1;
  sub_B044();
  *v9 = v8;
  v3[71] = v0;

  if (!v0)
  {
    v10 = v3[69];
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_70194()
{
  sub_7F1C();
  v1 = *(v0 + 520);

  v2 = *(v0 + 408);
  sub_713F8();

  return v3();
}

uint64_t sub_701F0()
{
  sub_7F1C();
  v1 = v0[69];
  v2 = v0[65];

  v3 = v0[71];
  sub_7EA4();

  return v4();
}

uint64_t sub_70258()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[53] = v1;
  v3[54] = v5;
  v3[55] = v0;
  sub_B15C();
  v7 = *(v6 + 584);
  v8 = *v1;
  sub_B044();
  *v9 = v8;
  v3[74] = v0;

  if (!v0)
  {
    v10 = v3[72];
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_7035C()
{
  sub_7F1C();
  v1 = *(v0 + 520);

  v2 = *(v0 + 432);
  sub_713F8();

  return v3();
}

uint64_t sub_703B8()
{
  sub_7F1C();
  v1 = v0[72];
  v2 = v0[65];

  v3 = v0[74];
  sub_7EA4();

  return v4();
}

uint64_t sub_70420()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[56] = v1;
  v3[57] = v5;
  v3[58] = v0;
  sub_B15C();
  v7 = *(v6 + 608);
  v8 = *v1;
  sub_B044();
  *v9 = v8;
  v3[77] = v0;

  if (!v0)
  {
    v10 = v3[75];
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_70524()
{
  sub_7F1C();
  v1 = *(v0 + 520);

  v2 = *(v0 + 456);
  sub_713F8();

  return v3();
}

uint64_t sub_70580()
{
  sub_7F1C();
  v1 = v0[75];
  v2 = v0[65];

  v3 = v0[77];
  sub_7EA4();

  return v4();
}

uint64_t sub_705E8()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[59] = v1;
  v3[60] = v5;
  v3[61] = v0;
  sub_B15C();
  v7 = *(v6 + 632);
  v8 = *v1;
  sub_B044();
  *v9 = v8;
  v3[80] = v0;

  if (!v0)
  {
    v10 = v3[78];
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_706EC()
{
  sub_7F1C();
  v1 = *(v0 + 520);

  v2 = *(v0 + 480);
  sub_713F8();

  return v3();
}

uint64_t sub_70748()
{
  sub_7F1C();
  v1 = v0[78];
  v2 = v0[65];

  v3 = v0[80];
  sub_7EA4();

  return v4();
}

uint64_t sub_707B0(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v8[1] = *(a2 + 16);
  v9 = *(a2 + 32);
  v2 = sub_506C(&qword_A8410, &qword_7B940);
  v3 = sub_73260();
  sub_71428();
  v5 = sub_D9A8(v4, &qword_A8410, &qword_7B940);
  return sub_6DC88(sub_71354, v8, v2, v3, &type metadata for Never, v5, &protocol witness table for Never, v6);
}

uint64_t sub_70874@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v5 = sub_506C(&qword_A3F98, qword_75450);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_73350();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_739A0();
  v17 = sub_73340();
  v19 = v18;
  v20 = a2[33];
  v21 = a2[34];
  sub_7C78(a2 + 30, v20);
  (*(v21 + 8))(v35, v20, v21);
  sub_2E370(v35, v17, v19);
  v23 = v22;

  sub_AE38(v35);
  if (v23)
  {
    sub_737F0();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v33;
  sub_7CC4(v11, v24, 1, v33);
  v26 = sub_73250();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_73240();
  v29 = v32;
  (*(v32 + 16))(v9, v15, v25);
  sub_7CC4(v9, 0, 1, v25);
  sub_73230();

  sub_AEF4(v9, &qword_A3F98, qword_75450);
  sub_73210();

  v30 = sub_73220();

  sub_AEF4(v11, &qword_A3F98, qword_75450);
  result = (*(v29 + 8))(v15, v25);
  *v34 = v30;
  return result;
}

uint64_t sub_70B50(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_70BF0;

  return sub_6E0A4();
}

uint64_t sub_70BF0(uint64_t a1)
{
  sub_B0BC();
  v5 = v4;
  sub_44428();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  sub_B044();
  *v10 = v9;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_70CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_6E4F8();
}

uint64_t sub_70DA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_6EEB8();
}

uint64_t sub_70E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_B014;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t sub_70F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_B014;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t sub_70FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_710B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_71178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_ACC4;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_71254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_B014;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_71354@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_70874(a1, *(v2 + 40), a2);
}

uint64_t sub_71398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_71408@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_71440()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v7 = v0[10];
  v6 = v0[11];
  v8 = *(v0[13] + 8);
  return v0[14];
}

uint64_t sub_7146C()
{

  return swift_beginAccess();
}

uint64_t sub_71488(uint64_t a1)
{

  return _swift_dynamicCastMetatype(v1, a1);
}