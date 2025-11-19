id sub_532A8()
{
  v0 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v24 - v2;
  v4 = sub_5AE8(&qword_15FF98, &qword_12AA40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - v6;
  if (qword_15EF78 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent();
  sub_536D8(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent);
  sub_12428C();
  v8 = sub_12412C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    v10 = &qword_15FF90;
    v11 = &unk_127BC0;
    v12 = v3;
LABEL_7:
    sub_5CA8(v12, v10, v11);
LABEL_8:
    [objc_opt_self() defaultDuration];
    goto LABEL_9;
  }

  sub_12410C();
  (*(v9 + 8))(v3, v8);
  v13 = sub_1241AC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    v10 = &qword_15FF98;
    v11 = &qword_12AA40;
    v12 = v7;
    goto LABEL_7;
  }

  sub_12419C();
  v23 = v22;
  (*(v14 + 8))(v7, v13);
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (qword_15EF60 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (v24[1])
  {
    v15 = objc_allocWithZone(INSpeakableString);
    v16 = sub_125B8C();

    v17 = [v15 initWithSpokenPhrase:v16];

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (qword_15EF70 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (LOBYTE(v24[0]))
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = [objc_allocWithZone(sub_1255EC()) init];
  [v20 setLabel:v18];

  sub_1255DC();
  [v20 setType:v19];

  return v20;
}

uint64_t sub_536D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_53720(uint64_t *a1)
{
  v2 = sub_1250BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1255EC();
  sub_1255AC();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_160030, &unk_128240);
  sub_1233AC();
  sub_53A84();
  sub_12337C();
  sub_1233CC();
  _s18NeedsValueStrategyCMa();
  v10 = swift_allocObject();
  sub_53AD8(&qword_160040, _s18NeedsValueStrategyCMa);
  sub_12330C();
  sub_12338C();
  _s25NeedsConfirmationStrategyCMa();
  v10 = swift_allocObject();
  sub_53AD8(&qword_160048, _s25NeedsConfirmationStrategyCMa);
  sub_12334C();
  sub_1233DC();
  sub_1250AC();
  v7 = sub_12504C();
  (*(v3 + 8))(v6, v2);
  if (!v7)
  {
    sub_53B20();
    sub_12336C();
    sub_1233BC();
  }

  sub_53B74();
  sub_12332C();
  sub_12339C();

  return sub_5BB0(a1);
}

BOOL sub_53A20()
{
  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v0 = sub_123A9C();
  sub_12559C();

  v1 = sub_1255BC();
  return v1 == sub_1255BC();
}

unint64_t sub_53A84()
{
  result = qword_160038;
  if (!qword_160038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160038);
  }

  return result;
}

uint64_t sub_53AD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_53B20()
{
  result = qword_160050;
  if (!qword_160050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160050);
  }

  return result;
}

unint64_t sub_53B74()
{
  result = qword_160058;
  if (!qword_160058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160058);
  }

  return result;
}

uint64_t sub_53C30(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v10, 0);
  *a4 = result;
  return result;
}

uint64_t sub_53D3C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v10, 0);
  *a4 = result;
  return result;
}

void sub_53DE8()
{
  sub_54018();
  if (v0 <= 0x3F)
  {
    sub_5407C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_53E80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_53F50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_54018()
{
  result = qword_162160;
  if (!qword_162160)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_162160);
  }

  return result;
}

void sub_5407C()
{
  if (!qword_1600F8)
  {
    sub_12532C();
    v0 = sub_125F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1600F8);
    }
  }
}

uint64_t sub_540D4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160060);
  sub_5B30(v0, qword_160060);
  return sub_1257AC();
}

uint64_t sub_54120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v20 - v10);
  if (qword_15EE30 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_160060);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "TimerIntents.FlowStrategy.actionForInput() called.", v15, 2u);
  }

  v16 = *(a2 + 16);
  v17 = *(a2 + 36);
  v18 = sub_12514C();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_9A934(a1, v4 + v17, 0, v11, v16, a3);
  return sub_5CA8(v11, &unk_15F1B0, qword_126E30);
}

uint64_t sub_542E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_12392C();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_12368C();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = *(*(sub_124EDC() - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v13 = sub_125ABC();
  v5[12] = v13;
  v14 = *(v13 - 8);
  v5[13] = v14;
  v15 = *(v14 + 64) + 15;
  v5[14] = swift_task_alloc();
  v16 = sub_124FFC();
  v5[15] = v16;
  v17 = *(v16 - 8);
  v5[16] = v17;
  v18 = *(v17 + 64) + 15;
  v5[17] = swift_task_alloc();
  v19 = sub_12501C();
  v5[18] = v19;
  v20 = *(v19 - 8);
  v5[19] = v20;
  v21 = *(v20 + 64) + 15;
  v5[20] = swift_task_alloc();
  v22 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v23 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v24 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v25 = sub_124FDC();
  v5[24] = v25;
  v26 = *(v25 - 8);
  v5[25] = v26;
  v27 = *(v26 + 64) + 15;
  v5[26] = swift_task_alloc();
  v28 = sub_12370C();
  v5[27] = v28;
  v29 = *(v28 - 8);
  v5[28] = v29;
  v30 = *(v29 + 64) + 15;
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_546A8, 0, 0);
}

uint64_t sub_546A8()
{
  if (qword_15EE30 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(*(v0 + 96), qword_160060);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "TimerIntents.FlowStrategy.makeFailureConfirmingIntentResponse() called", v4, 2u);
  }

  v5 = *(v0 + 24);

  sub_1255AC();
  if (swift_dynamicCastClass())
  {
    v6 = *(v0 + 24);
    if (sub_12559C() == 101)
    {
      v7 = *(v0 + 224);
      v8 = *(v0 + 208);
      v46 = v8;
      v47 = *(v0 + 232);
      v10 = *(v0 + 192);
      v9 = *(v0 + 200);
      v48 = v10;
      v50 = *(v0 + 216);
      v12 = *(v0 + 176);
      v11 = *(v0 + 184);
      v13 = *(v0 + 168);
      (*(v7 + 104))();
      (*(v9 + 104))(v8, enum case for SiriTimeEventSender.TaskType.createTimerIntent(_:), v10);
      v14 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
      v15 = sub_12353C();
      v16 = *(v15 - 8);
      (*(v16 + 104))(v11, v14, v15);
      (*(v16 + 56))(v11, 0, 1, v15);
      v17 = sub_124FEC();
      (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
      v18 = enum case for SiriTimeEventSender.ReasonDescription.sleepUnavailable(_:);
      v19 = sub_124FCC();
      v20 = *(v19 - 8);
      (*(v20 + 104))(v13, v18, v19);
      (*(v20 + 56))(v13, 0, 1, v19);
      sub_124FBC();
      sub_5CA8(v13, &qword_15F6E8, &unk_1271C0);
      sub_5CA8(v12, &qword_15F6F0, &unk_128340);
      sub_5CA8(v11, &qword_15F6F8, &qword_1271D0);
      (*(v9 + 8))(v46, v48);
      (*(v7 + 8))(v47, v50);
    }

    v21 = *(v0 + 160);
    v22 = *(v0 + 112);
    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    v25 = *(v0 + 88);
    (*(*(v0 + 128) + 104))(*(v0 + 136), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 120));
    (*(v24 + 16))(v22, v1, v23);
    mach_absolute_time();
    sub_12502C();
    type metadata accessor for CreateTimerCATPatternsExecutor(0);
    sub_124ECC();
    *(v0 + 240) = sub_124DBC();
    v26 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v51 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v27 = swift_task_alloc();
    *(v0 + 248) = v27;
    *v27 = v0;
    v27[1] = sub_54CF4;

    return v51(0xD00000000000001CLL, 0x800000000012CF00, _swiftEmptyArrayStorage);
  }

  else
  {
    v29 = sub_125AAC();
    v30 = sub_125DEC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "TimerIntents.FlowStrategy.makeFailureConfirmingIntentResponse was called with an unexpected response type", v31, 2u);
    }

    v32 = *(v0 + 32);

    *(v0 + 288) = 4;
    v33 = *(v32 + 16);
    v34 = *(v32 + 24);
    type metadata accessor for TimerIntents.FlowError();
    swift_getWitnessTable();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();
    v35 = *(v0 + 232);
    v36 = *(v0 + 208);
    v38 = *(v0 + 176);
    v37 = *(v0 + 184);
    v40 = *(v0 + 160);
    v39 = *(v0 + 168);
    v41 = *(v0 + 136);
    v42 = *(v0 + 112);
    v43 = *(v0 + 80);
    v44 = *(v0 + 88);
    v49 = *(v0 + 56);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_54CF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v8 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v5 = sub_550BC;
  }

  else
  {
    v6 = v3[30];

    v5 = sub_54E10;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_54E10()
{
  v1 = v0[10];
  v2 = v0[7];
  sub_12361C();
  sub_12391C();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_54ED0;
  v5 = v0[32];
  v6 = v0[20];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_54ED0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  v8 = *(v2 + 56);
  v9 = *(v2 + 48);
  v10 = *(v2 + 40);

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v11 = sub_55304;
  }

  else
  {
    v11 = sub_551E4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_550BC()
{
  v1 = v0[30];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[3];

  (*(v3 + 8))(v2, v4);
  v6 = v0[29];
  v7 = v0[26];
  v9 = v0[22];
  v8 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[10];
  v15 = v0[11];
  v18 = v0[7];
  v19 = v0[33];

  v16 = v0[1];

  return v16();
}

uint64_t sub_551E4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);

  (*(v8 + 8))(v6, v7);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_55304()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 136);
  v11 = *(v0 + 112);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v16 = *(v0 + 56);
  v17 = *(v0 + 280);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_55428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DE18;

  return sub_55D84(a1, a3);
}

uint64_t sub_554E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_555A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_5D08;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_55674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_5D08;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_55740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_5D08;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_5580C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_503C;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_558E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_5D08;

  return sub_542E8(a1, v9, v10, a4, a5);
}

uint64_t sub_55998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  *v7 = v3;
  v7[1] = sub_4EA0;

  return sub_55AAC(a1, a2, v8);
}

uint64_t sub_55AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(sub_5AE8(&qword_15FFB0, &unk_1270A0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_55B4C, 0, 0);
}

uint64_t sub_55B4C()
{
  v21 = v0;
  if (qword_15EE30 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_125ABC();
  sub_5B30(v2, qword_160060);
  v3 = v1;
  v4 = sub_125AAC();
  v5 = sub_125DFC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    swift_getWitnessTable();
    v10 = sub_A8500();
    v12 = sub_8530(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v4, v5, "TimerIntents.FlowStrategy.makeIntentExecutionBehavior(app:intent:) called with intent %s", v8, 0xCu);
    sub_5BB0(v9);
  }

  v13 = v0[6];
  v15 = v0[3];
  v14 = v0[4];
  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = sub_A85C8(v15, v14, v13);
  sub_5CA8(v13, &qword_15FFB0, &unk_1270A0);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_55D84(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_124FAC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_55E48, 0, 0);
}

uint64_t sub_55E48()
{
  v43 = v0;
  if (qword_15EE30 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160060);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "TimerIntents.FlowStrategy.makeIntentFromParse() called.", v4, 2u);
  }

  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);

  v8 = sub_A588C(v7, v5 + *(v6 + 36));
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
        v19 = *(v0 + 48);
        v18 = *(v0 + 56);
        v20 = *(v0 + 40);
        (*(v19 + 104))(v18, enum case for SiriTimeAppBundleId.timerExtension(_:), v20);
        sub_124F9C();
        (*(v19 + 8))(v18, v20);
        v21 = sub_125B8C();

        [v17 setSystemExtensionBundleId:v21];
      }

      v22 = *(v0 + 56);
      v23 = sub_125EDC();

      v24 = sub_125ECC();

      v25 = *(v0 + 8);

      return v25(v24);
    }
  }

  v27 = sub_125AAC();
  v28 = sub_125DEC();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 24);
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = v32;
    *v31 = 136315138;
    v33 = *(v30 + 16);
    v34 = sub_12631C();
    v36 = sub_8530(v34, v35, &v42);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_0, v27, v28, "Intent is nil or cannot cast converted intent to IntentType %s", v31, 0xCu);
    sub_5BB0(v32);
  }

  else
  {

    v37 = *(v30 + 16);
  }

  v38 = *(v0 + 56);
  v39 = *(v0 + 24);
  *(v0 + 64) = 0;
  v40 = *(v39 + 24);
  type metadata accessor for TimerIntents.FlowError();
  swift_getWitnessTable();
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_562B4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160100);
  sub_5B30(v0, qword_160100);
  return sub_1257AC();
}

uint64_t sub_56300(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_5AE8(&unk_160770, &qword_127E08);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_5AE8(&qword_160118, &qword_127E10);
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = sub_12532C();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v12 = sub_1250FC();
  v2[24] = v12;
  v13 = *(v12 - 8);
  v2[25] = v13;
  v14 = *(v13 + 64) + 15;
  v2[26] = swift_task_alloc();
  v15 = *(*(sub_5AE8(&qword_15FFB0, &unk_1270A0) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_56548, 0, 0);
}

uint64_t sub_56548()
{
  if (qword_15EE38 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  v0[30] = sub_5B30(v1, qword_160100);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "decideDismissOrDeleteTimerFlow.execute()", v4, 2u);
  }

  v5 = v0[26];

  sub_1254EC();
  sub_1250CC();
  v6 = async function pointer to SiriTimeDeviceContextProvider.fetchTimerContexts()[1];
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_566B4;
  v8 = v0[26];

  return SiriTimeDeviceContextProvider.fetchTimerContexts()();
}

uint64_t sub_566B4(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 256) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_56814, 0, 0);
}

uint64_t sub_56814()
{
  v1 = v0[32];
  v2 = sub_125C8C();

  if (*(v2 + 16))
  {
    (*(v0[21] + 16))(v0[29], v2 + ((*(v0[21] + 80) + 32) & ~*(v0[21] + 80)), v0[20]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0 + 21;
  v4 = v0[21];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[20];

  v48 = *(v4 + 56);
  v48(v6, v3, 1, v8);
  sub_E344(v6, v7, &qword_15FFB0, &unk_1270A0);
  v9 = (*(v4 + 48))(v7, 1, v8);
  v10 = v0[30];
  if (v9 == 1)
  {
    sub_5CA8(v0[28], &qword_15FFB0, &unk_1270A0);
    v11 = sub_125AAC();
    v12 = sub_125DFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "DecideDismissOrDeleteTimerFlow: Didn't get a valid halInfo for timer. Running delete timer flow", v13, 2u);
    }

    v15 = v0 + 16;
    v14 = v0[16];
    v16 = v0[27];
    v17 = v0[20];
    v18 = v0[21];
    v20 = v0[12];
    v19 = v0[13];

    sub_2F488(v19, (v0 + 2));
    sub_DDDC0(v0 + 2);
    v48(v16, 1, 1, v17);
    sub_571E0(v14, v16, v19, v20);
    sub_5CA8(v16, &qword_15FFB0, &unk_1270A0);
    v5 = v0 + 15;
    v21 = v0 + 14;
  }

  else
  {
    v15 = v0 + 23;
    (*(v0[21] + 32))(v0[23], v0[28], v0[20]);
    v22 = sub_125AAC();
    v23 = sub_125DDC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "DecideDismissOrDeleteTimerFlow: Running dismissTimerFlow.", v24, 2u);
    }

    v25 = v0[27];
    v27 = v0[22];
    v26 = v0[23];
    v29 = v0[20];
    v28 = v0[21];
    v30 = v0[19];
    v46 = v0[18];
    v47 = v0[17];
    v31 = v22;
    v32 = v0[13];
    v45 = v0[12];

    sub_2F488(v32, (v0 + 7));
    v33 = *(v28 + 16);
    v33(v27, v26, v29);
    sub_F61E4(v0 + 7, v27);
    v33(v25, v26, v29);
    v48(v25, 0, 1, v29);
    sub_56C6C(v30, v25, v32, v45);
    sub_5CA8(v25, &qword_15FFB0, &unk_1270A0);
    (*(v46 + 8))(v30, v47);
    v21 = v0 + 20;
  }

  v34 = *v15;
  v35 = v0[28];
  v36 = v0[29];
  v38 = v0[26];
  v37 = v0[27];
  v40 = v0[22];
  v39 = v0[23];
  v41 = v0[19];
  v42 = v0[16];
  (*(*v5 + 8))(v34, *v21);
  sub_5CA8(v36, &qword_15FFB0, &unk_1270A0);

  v43 = v0[1];

  return v43();
}

uint64_t sub_56C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v51 = a2;
  v56 = a4;
  v50 = sub_5AE8(&qword_160120, &qword_127E18);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v50);
  v54 = &v45 - v8;
  v53 = sub_5AE8(&qword_160128, &qword_127E20);
  v9 = *(*(v53 - 8) + 64);
  v10 = __chkstk_darwin(v53);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v45 - v12;
  v13 = sub_5AE8(&qword_160118, &qword_127E10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  if (qword_15EE38 != -1)
  {
    swift_once();
  }

  v21 = sub_125ABC();
  sub_5B30(v21, qword_160100);
  v57 = *(v14 + 16);
  v57(v20, a1, v13);
  v22 = sub_125AAC();
  v23 = sub_125DDC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = a1;
    v25 = v24;
    v46 = swift_slowAlloc();
    v58 = v46;
    *v25 = 136315138;
    v57(v18, v20, v13);
    v26 = sub_125BAC();
    v47 = v18;
    v27 = a3;
    v28 = v26;
    v49 = v6;
    v30 = v29;
    (*(v14 + 8))(v20, v13);
    v31 = v28;
    a3 = v27;
    v18 = v47;
    v32 = sub_8530(v31, v30, &v58);
    v6 = v49;

    *(v25 + 4) = v32;
    _os_log_impl(&dword_0, v22, v23, "Initializing next flow: %s", v25, 0xCu);
    sub_5BB0(v46);

    a1 = v48;
  }

  else
  {

    (*(v14 + 8))(v20, v13);
  }

  v33 = a3;
  v34 = v55;
  sub_2F488(v33, v55);
  sub_E344(v51, v34 + *(v53 + 36), &qword_15FFB0, &unk_1270A0);
  v57(v18, a1, v13);
  v35 = sub_5AE8(&qword_160130, &qword_127E28);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v34, v52, &qword_160128, &qword_127E20);
  sub_5C60(&qword_160138, &qword_160128, &qword_127E20);

  v38 = v54;
  sub_1237CC();
  v39 = v50;
  v40 = sub_1237AC();
  (*(v6 + 8))(v38, v39);
  v58 = v40;
  sub_5AE8(&qword_160140, &qword_127E30);
  sub_5C60(&qword_160148, &qword_160140, &qword_127E30);
  v41 = sub_12342C();

  v42 = sub_1232AC();
  v43 = v56;
  v56[3] = v42;
  v43[4] = &protocol witness table for AnyFlow;

  *v43 = v41;
  return sub_5CA8(v34, &qword_160128, &qword_127E20);
}

uint64_t sub_571E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v51 = a2;
  v56 = a4;
  v50 = sub_5AE8(&qword_160150, &unk_128210);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v50);
  v54 = &v45 - v8;
  v53 = sub_5AE8(&unk_160780, &qword_127E38);
  v9 = *(*(v53 - 8) + 64);
  v10 = __chkstk_darwin(v53);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v45 - v12;
  v13 = sub_5AE8(&unk_160770, &qword_127E08);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  if (qword_15EE38 != -1)
  {
    swift_once();
  }

  v21 = sub_125ABC();
  sub_5B30(v21, qword_160100);
  v57 = *(v14 + 16);
  v57(v20, a1, v13);
  v22 = sub_125AAC();
  v23 = sub_125DDC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = a1;
    v25 = v24;
    v46 = swift_slowAlloc();
    v58 = v46;
    *v25 = 136315138;
    v57(v18, v20, v13);
    v26 = sub_125BAC();
    v47 = v18;
    v27 = a3;
    v28 = v26;
    v49 = v6;
    v30 = v29;
    (*(v14 + 8))(v20, v13);
    v31 = v28;
    a3 = v27;
    v18 = v47;
    v32 = sub_8530(v31, v30, &v58);
    v6 = v49;

    *(v25 + 4) = v32;
    _os_log_impl(&dword_0, v22, v23, "Initializing next flow: %s", v25, 0xCu);
    sub_5BB0(v46);

    a1 = v48;
  }

  else
  {

    (*(v14 + 8))(v20, v13);
  }

  v33 = a3;
  v34 = v55;
  sub_2F488(v33, v55);
  sub_E344(v51, v34 + *(v53 + 36), &qword_15FFB0, &unk_1270A0);
  v57(v18, a1, v13);
  v35 = sub_5AE8(&qword_160158, &unk_128220);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v34, v52, &unk_160780, &qword_127E38);
  sub_5C60(&unk_160790, &unk_160780, &qword_127E38);

  v38 = v54;
  sub_1237CC();
  v39 = v50;
  v40 = sub_1237AC();
  (*(v6 + 8))(v38, v39);
  v58 = v40;
  sub_5AE8(&qword_160160, &qword_127E40);
  sub_5C60(&unk_1607A0, &qword_160160, &qword_127E40);
  v41 = sub_12342C();

  v42 = sub_1232AC();
  v43 = v56;
  v56[3] = v42;
  v43[4] = &protocol witness table for AnyFlow;

  *v43 = v41;
  return sub_5CA8(v34, &unk_160780, &qword_127E38);
}

uint64_t sub_57754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v51 = a2;
  v56 = a4;
  v50 = sub_5AE8(&unk_1607B0, &qword_127E50);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v50);
  v54 = &v45 - v8;
  v53 = sub_5AE8(&qword_160170, &unk_128250);
  v9 = *(*(v53 - 8) + 64);
  v10 = __chkstk_darwin(v53);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v45 - v12;
  v13 = sub_5AE8(&qword_160030, &unk_128240);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  if (qword_15EE38 != -1)
  {
    swift_once();
  }

  v21 = sub_125ABC();
  sub_5B30(v21, qword_160100);
  v57 = *(v14 + 16);
  v57(v20, a1, v13);
  v22 = sub_125AAC();
  v23 = sub_125DDC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = a1;
    v25 = v24;
    v46 = swift_slowAlloc();
    v58 = v46;
    *v25 = 136315138;
    v57(v18, v20, v13);
    v26 = sub_125BAC();
    v47 = v18;
    v27 = a3;
    v28 = v26;
    v49 = v6;
    v30 = v29;
    (*(v14 + 8))(v20, v13);
    v31 = v28;
    a3 = v27;
    v18 = v47;
    v32 = sub_8530(v31, v30, &v58);
    v6 = v49;

    *(v25 + 4) = v32;
    _os_log_impl(&dword_0, v22, v23, "Initializing next flow: %s", v25, 0xCu);
    sub_5BB0(v46);

    a1 = v48;
  }

  else
  {

    (*(v14 + 8))(v20, v13);
  }

  v33 = a3;
  v34 = v55;
  sub_2F488(v33, v55);
  sub_E344(v51, v34 + *(v53 + 36), &qword_15FFB0, &unk_1270A0);
  v57(v18, a1, v13);
  v35 = sub_5AE8(&unk_1607C0, &qword_127E58);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v34, v52, &qword_160170, &unk_128250);
  sub_5C60(&qword_160178, &qword_160170, &unk_128250);

  v38 = v54;
  sub_1237CC();
  v39 = v50;
  v40 = sub_1237AC();
  (*(v6 + 8))(v38, v39);
  v58 = v40;
  sub_5AE8(&unk_1607D0, &qword_128260);
  sub_5C60(&qword_160180, &unk_1607D0, &qword_128260);
  v41 = sub_12342C();

  v42 = sub_1232AC();
  v43 = v56;
  v56[3] = v42;
  v43[4] = &protocol witness table for AnyFlow;

  *v43 = v41;
  return sub_5CA8(v34, &qword_160170, &unk_128250);
}

uint64_t sub_57CC8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = *(*(sub_5AE8(&qword_15FFB0, &unk_1270A0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = sub_5AE8(&qword_160030, &unk_128240);
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = *(*(sub_124EDC() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = sub_1250FC();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_57E54, 0, 0);
}

uint64_t sub_57E54()
{
  v1 = v0[10];
  v2 = v1[4];
  sub_23B08(v1, v1[3]);
  if (sub_1235FC())
  {
    if (qword_15EE38 != -1)
    {
      swift_once();
    }

    v3 = sub_125ABC();
    v0[19] = sub_5B30(v3, qword_160100);
    v4 = sub_125AAC();
    v5 = sub_125DFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "decideCreateSleepTimerFlow.execute()", v6, 2u);
    }

    v7 = v0[18];

    sub_1254EC();
    sub_1250CC();
    v8 = async function pointer to SiriTimeDeviceContextProvider.isNothingPlaying.getter[1];
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_58100;
    v10 = v0[18];

    return SiriTimeDeviceContextProvider.isNothingPlaying.getter();
  }

  else
  {
    v12 = v0[13];
    v11 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    sub_2F488(v15, (v0 + 2));
    sub_53720(v0 + 2);
    v17 = sub_12532C();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    sub_57754(v11, v14, v15, v16);
    sub_5CA8(v14, &qword_15FFB0, &unk_1270A0);
    (*(v12 + 8))(v11, v13);
    v18 = v0[18];
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[11];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_58100(char a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 168) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_58260, 0, 0);
}

uint64_t sub_58260()
{
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 72);
    type metadata accessor for CreateTimerCATs_Async();
    sub_124ECC();
    v3 = sub_124DBC();
    type metadata accessor for CreateTimerCATPatternsExecutor(0);
    sub_124ECC();
    v4 = sub_124DBC();
    *(v0 + 56) = v3;
    *(v0 + 64) = v4;
    sub_584B0();
    v5 = sub_12342C();

    v2[3] = sub_1232AC();
    v2[4] = &protocol witness table for AnyFlow;
    *v2 = v5;
  }

  else
  {
    v6 = *(v0 + 152);
    v7 = sub_125AAC();
    v8 = sub_125DFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Device has media playing; allowing sleep timer creation", v9, 2u);
    }

    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    sub_2F488(v14, v0 + 16);
    sub_53720((v0 + 16));
    v16 = sub_12532C();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_57754(v10, v13, v14, v15);
    sub_5CA8(v13, &qword_15FFB0, &unk_1270A0);
    (*(v11 + 8))(v10, v12);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  v20 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21();
}

unint64_t sub_584B0()
{
  result = qword_160168;
  if (!qword_160168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160168);
  }

  return result;
}

uint64_t type metadata accessor for CreateTimerCATs_Async()
{
  result = qword_160188;
  if (!qword_160188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_58590(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_606C(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v16;
}

uint64_t sub_58720(uint64_t *a1)
{
  sub_12555C();
  sub_12554C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_1601D8, &qword_1281E0);
  sub_1233AC();
  sub_5AE8(&qword_1601E0, &qword_127E98);
  sub_5C60(&qword_1601E8, &qword_1601E0, &qword_127E98);
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v5);
  sub_589E8();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_58A3C();
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v3);
  sub_5AE8(&qword_160200, &unk_127EA0);
  sub_5C60(&qword_160208, &qword_160200, &unk_127EA0);
  sub_12337C();
  sub_1233CC();
  sub_5BB0(a1);
  sub_58A90(v3);
  sub_58AF8(v4);
  return sub_58B4C(v5);
}

uint64_t sub_5895C(void *a1)
{
  *a1 = sub_DDFFC();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_589E8()
{
  result = qword_1601F0;
  if (!qword_1601F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1601F0);
  }

  return result;
}

unint64_t sub_58A3C()
{
  result = qword_1601F8;
  if (!qword_1601F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1601F8);
  }

  return result;
}

uint64_t sub_58A90(uint64_t a1)
{
  v2 = sub_5AE8(&qword_160200, &unk_127EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_58C00()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1270B0;
  *(v5 + 32) = 7368801;
  *(v5 + 40) = 0xE300000000000000;
  v6 = *v0;
  if (*v0)
  {
    v7 = sub_124DEC();
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
  *(v5 + 80) = 0x6D69547465736572;
  *(v5 + 88) = 0xEB00000000737265;
  v9 = v0[1];
  v10 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v5 + 96) = v9;
  *(v5 + 120) = v10;
  *(v5 + 128) = 0x6174614477656976;
  *(v5 + 136) = 0xE800000000000000;
  v11 = type metadata accessor for ResetTimerHandledOnWatchParameters(0);
  sub_E344(v0 + *(v11 + 24), v4, &unk_15F170, &unk_126E00);
  v12 = sub_124E4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {

    sub_5CA8(v4, &unk_15F170, &unk_126E00);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v12;
    v14 = sub_23B4C((v5 + 144));
    (*(v13 + 32))(v14, v4, v12);
  }

  return v5;
}

uint64_t sub_58E30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_58E50, 0, 0);
}

uint64_t sub_58E50()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  *(v2 + 32) = 0x6D69547465736572;
  *(v2 + 40) = 0xEB00000000737265;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FD8;
  v5 = v0[3];

  return v7(0xD000000000000017, 0x800000000012D2D0, v2);
}

uint64_t sub_58F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ResetTimerHandledOnWatchParameters(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_59034, 0, 0);
}

uint64_t sub_59034()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *(v0[6] + 24);
  v6 = sub_124E4C();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *v1 = 0;
  *(v1 + 1) = v4;

  v3(v1);
  v7 = sub_58C00();
  v0[8] = v7;
  v8 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_5917C;
  v10 = v0[5];

  return v12(0xD000000000000019, 0x800000000012D2B0, v7);
}

uint64_t sub_5917C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_5933C;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_592C8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_592C8()
{
  sub_596E8(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_5933C()
{
  sub_596E8(v0[7]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_593AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_593CC, 0, 0);
}

uint64_t sub_593CC()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  *(v2 + 32) = 0x6D69547465736572;
  *(v2 + 40) = 0xEB00000000737265;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2B3C8;
  v5 = v0[3];

  return v7(0xD000000000000018, 0x800000000012D290, v2);
}

uint64_t sub_59518(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_E344(a1, v13, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v16;
}

uint64_t sub_596E8(uint64_t a1)
{
  v2 = type metadata accessor for ResetTimerHandledOnWatchParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_59758(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_59828(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_598D8()
{
  sub_59A04(319, &unk_15FE30, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_59A04(319, &unk_1602C8, type metadata accessor for TimerTimer, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_59A04(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_59A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_59A68()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160300);
  sub_5B30(v0, qword_160300);
  return sub_12578C();
}

uint64_t sub_59AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_1603D0, &qword_127FF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  if (qword_15EE40 != -1)
  {
    swift_once();
  }

  v8 = sub_125ABC();
  sub_5B30(v8, qword_160300);
  v9 = sub_125AAC();
  v10 = sub_125DFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "TimerFlowDelegatePlugin: called findFlowForX()", v11, 2u);
  }

  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08(v21, v22);
  v12 = sub_12358C();
  sub_5BB0(v21);
  if (v12)
  {
    sub_12573C();
    sub_12572C();
    sub_5BB0(v21);
  }

  else
  {
    sub_12523C();
    sub_12522C();

    sub_23B08(v21, v22);
    v13 = sub_1235DC();
    sub_5BB0(v21);
    if (v13)
    {
      sub_125D2C();
      v14 = sub_125D4C();
      (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      sub_59E64(0, 0, v7, &unk_128008, v15);
    }
  }

  sub_12523C();
  sub_12522C();

  sub_12523C();
  sub_12522C();

  v16 = type metadata accessor for TimerFlowProvider();
  v17 = swift_allocObject();
  sub_2F4EC(&v20, v17 + 16);
  v24 = v16;
  v25 = &off_158B00;
  v23 = v17;
  sub_5AB7C(a1, a2);
  return sub_2F504(v21);
}

uint64_t sub_59DF0()
{
  sub_12573C();
  sub_12572C();
  sub_5BB0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_59E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_5AE8(&unk_1603D0, &qword_127FF8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_5A830(a3, v27 - v11);
  v13 = sub_125D4C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_5A8A0(v12);
  }

  else
  {
    sub_125D3C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_125D0C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_125BBC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_5A8A0(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_5A8A0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_5A160(uint64_t *a1@<X8>)
{
  type metadata accessor for TimerFlowDelegatePlugin();
  v2 = swift_allocObject();
  sub_124E0C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_124DFC();

  *a1 = v2;
}

uint64_t sub_5A26C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5A364;

  return v7(a1);
}

uint64_t sub_5A364()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5A45C(uint64_t a1)
{
  v2 = sub_1234CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EE40 != -1)
  {
    swift_once();
  }

  v7 = sub_125ABC();
  sub_5B30(v7, qword_160300);
  v8 = sub_125AAC();
  v9 = sub_125DFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "TimerFlowDelegatePlugin: called makeFlowFor()", v10, 2u);
  }

  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_12523C();
  sub_12522C();

  v11 = type metadata accessor for TimerFlowProvider();
  v12 = swift_allocObject();
  sub_2F4EC(&v19, v12 + 16);
  v20[8] = v11;
  v20[9] = &off_158B00;
  v20[5] = v12;
  sub_5AB7C(a1, v6);
  sub_2F504(v20);
  v13 = sub_12349C();
  (*(v3 + 8))(v6, v2);
  if (!v13)
  {
    v14 = sub_12546C();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v20[0] = sub_12545C();
    sub_5A704(&qword_1603C8, 255, &type metadata accessor for NoOpFlow);
    v13 = sub_12342C();
  }

  return v13;
}

uint64_t sub_5A704(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_5A74C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5A784()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_503C;

  return sub_59DD4();
}

uint64_t sub_5A830(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_1603D0, &qword_127FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5A8A0(uint64_t a1)
{
  v2 = sub_5AE8(&unk_1603D0, &qword_127FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5A908()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5A940(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5D08;

  return sub_5A26C(a1, v5);
}

uint64_t sub_5A9F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_503C;

  return sub_5A26C(a1, v5);
}

__n128 sub_5AAB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_5AAD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_5AB18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_5AB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v310 = a2;
  v283 = sub_1252CC();
  v287 = *(v283 - 8);
  v3 = *(v287 + 64);
  v4 = __chkstk_darwin(v283);
  v256 = &v255 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v282 = &v255 - v6;
  v285 = sub_123D1C();
  v286 = *(v285 - 8);
  v7 = *(v286 + 64);
  v8 = __chkstk_darwin(v285);
  v258 = &v255 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v255 - v11;
  __chkstk_darwin(v10);
  v290 = &v255 - v13;
  v14 = sub_124CFC();
  v264 = *(v14 - 8);
  v15 = *(v264 + 64);
  v16 = __chkstk_darwin(v14);
  v257 = &v255 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v266 = &v255 - v18;
  v265 = sub_1239EC();
  v267 = *(v265 - 8);
  v19 = *(v267 + 64);
  __chkstk_darwin(v265);
  v278 = &v255 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_123E8C();
  v261 = *(v262 - 8);
  v21 = *(v261 + 64);
  __chkstk_darwin(v262);
  v260 = &v255 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_123E4C();
  v289 = *(v276 - 8);
  v23 = *(v289 + 64);
  __chkstk_darwin(v276);
  v288 = (&v255 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v275 = sub_123DAC();
  v274 = *(v275 - 8);
  v25 = *(v274 + 64);
  __chkstk_darwin(v275);
  v273 = (&v255 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_5AE8(&qword_160510, &qword_12B170);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v271 = &v255 - v29;
  v270 = sub_123D7C();
  v269 = *(v270 - 8);
  v30 = *(v269 + 64);
  v31 = __chkstk_darwin(v270);
  v259 = &v255 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v272 = &v255 - v33;
  v280 = sub_123D6C();
  v279 = *(v280 - 8);
  v34 = *(v279 + 64);
  __chkstk_darwin(v280);
  v281 = &v255 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TimerNLv3Intent();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v292 = &v255 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_124BCC();
  v294 = *(v309 - 8);
  v39 = *(v294 + 64);
  v40 = __chkstk_darwin(v309);
  v284 = &v255 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v293 = &v255 - v43;
  v44 = __chkstk_darwin(v42);
  v291 = &v255 - v45;
  __chkstk_darwin(v44);
  v303 = &v255 - v46;
  v47 = sub_124EDC();
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v297 = &v255 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_12542C();
  v300 = *(v301 - 8);
  v50 = *(v300 + 64);
  __chkstk_darwin(v301);
  v298 = &v255 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_12519C();
  v306 = *(v52 - 8);
  v307 = v52;
  v53 = *(v306 + 64);
  __chkstk_darwin(v52);
  v305 = &v255 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_12517C();
  v311 = *(v314 - 8);
  v55 = *(v311 + 64);
  v56 = __chkstk_darwin(v314);
  v312 = &v255 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v313 = &v255 - v58;
  v59 = sub_123D3C();
  v60 = *(v59 - 8);
  v61 = v60[8];
  v62 = __chkstk_darwin(v59);
  v302 = &v255 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v66 = &v255 - v65;
  __chkstk_darwin(v64);
  v68 = &v255 - v67;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v69 = sub_125ABC();
  v70 = sub_5B30(v69, qword_1603E0);
  v71 = v60[2];
  v304 = a1;
  v71(v68, a1, v59);
  v308 = v70;
  v72 = sub_125AAC();
  v73 = sub_125DFC();
  v74 = os_log_type_enabled(v72, v73);
  v277 = v12;
  v268 = v14;
  v299 = v60;
  v296 = v71;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v319[0] = v76;
    *v75 = 136315138;
    v71(v66, v68, v59);
    v77 = sub_125BAC();
    v79 = v78;
    v263 = v60[1];
    v263(v68, v59);
    v80 = sub_8530(v77, v79, v319);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_0, v72, v73, "Running timer flow with parse: %s", v75, 0xCu);
    sub_5BB0(v76);
    v81 = v310;

    v82 = v59;
  }

  else
  {

    v263 = v60[1];
    v263(v68, v59);
    v82 = v59;
    v81 = v310;
  }

  v83 = v311;
  v85 = v313;
  v84 = v314;
  (*(v311 + 104))(v313, enum case for AppInstallUtil.Domain.timer(_:), v314);
  v86 = *(v83 + 16);
  v86(v312, v85, v84);
  v87 = v305;
  sub_12518C();
  v88 = sub_12516C();
  (*(v306 + 8))(v87, v307);
  v89 = sub_125AAC();
  v90 = sub_125DFC();
  v91 = os_log_type_enabled(v89, v90);
  if ((v88 & 1) == 0)
  {
    if (v91)
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_0, v89, v90, "Clock/Timers app is deleted from the device; returning UnsupportedClockAppNotInstalledFlow.", v110, 2u);
    }

    v111 = v313;
    v112 = v314;
    v86(v312, v313, v314);
    v113 = type metadata accessor for TimerBaseCATPatternsExecutor(0);
    sub_124ECC();
    v114 = sub_124DBC();
    v319[3] = v113;
    v319[4] = sub_647DC(&qword_160518, type metadata accessor for TimerBaseCATPatternsExecutor);
    v319[0] = v114;
    v317 = &type metadata for TimerAppNotInstalledLegacyDialog;
    v318 = sub_64150();
    v115 = v298;
    sub_12541C();
    sub_647DC(&unk_160528, &type metadata accessor for UnsupportedAppNotInstalledFlow);
    v116 = v301;
    sub_12342C();
    sub_1234AC();

    (*(v300 + 8))(v115, v116);
    return (*(v83 + 8))(v111, v112);
  }

  if (v91)
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_0, v89, v90, "Clock/Timers app is installed; continue!", v92, 2u);
  }

  v93 = v302;
  v296(v302, v304, v82);
  v94 = v299;
  v95 = (v299[11])(v93, v82);
  if (v95 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (v94[12])(v93, v82);
    v96 = v294;
    v97 = v303;
    v98 = v309;
    (*(v294 + 32))(v303, v93, v309);
    v99 = *(v96 + 16);
    v100 = v291;
    v99(v291, v97, v98);
    v101 = sub_125AAC();
    v102 = sub_125DFC();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v319[0] = v104;
      *v103 = 136315138;
      sub_647DC(&qword_160538, &type metadata accessor for NLIntent);
      v105 = sub_12618C();
      v312 = v99;
      v107 = v106;
      v108 = *(v96 + 8);
      v108(v100, v309);
      v109 = sub_8530(v105, v107, v319);
      v99 = v312;

      *(v103 + 4) = v109;
      _os_log_impl(&dword_0, v101, v102, "Receiving timer NLv3 intent parse: %s", v103, 0xCu);
      sub_5BB0(v104);
      v98 = v309;
    }

    else
    {

      v108 = *(v96 + 8);
      v108(v100, v98);
    }

    v138 = v292;
    v139 = v303;
    v99(v292, v303, v98);
    sub_5D194(v138, v310);
    sub_97EC(v138);
    v108(v139, v98);
    return (*(v311 + 8))(v313, v314);
  }

  v118 = v82;
  v119 = v309;
  if (v95 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (v94[12])(v93, v118);
    v120 = *(v93 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));
    v121 = v294;
    v122 = v293;
    (*(v294 + 32))(v293, v93, v119);
    v312 = v120;
    v123 = sub_123D2C();
    v124 = v284;
    (*(v121 + 16))(v284, v122, v119);
    v125 = v123;
    v126 = sub_125AAC();
    v127 = sub_125DFC();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v319[0] = v130;
      *v128 = 136315394;
      sub_647DC(&qword_160538, &type metadata accessor for NLIntent);
      v131 = sub_12618C();
      v132 = v124;
      v134 = v133;
      v135 = *(v121 + 8);
      v135(v132, v309);
      v136 = sub_8530(v131, v134, v319);

      *(v128 + 4) = v136;
      *(v128 + 12) = 2112;
      *(v128 + 14) = v125;
      *v129 = v125;
      v137 = v125;
      _os_log_impl(&dword_0, v126, v127, "Timer NLv3 intent is: %s, Timer SiriKit intent is: %@", v128, 0x16u);
      sub_5CA8(v129, &unk_160540, &unk_1295A0);
      v81 = v310;

      sub_5BB0(v130);

      v119 = v309;
    }

    else
    {

      v135 = *(v121 + 8);
      v135(v124, v119);
    }

    sub_5D790(v125, v81);

    v135(v293, v119);
    return (*(v311 + 8))(v313, v314);
  }

  if (v95 == enum case for Parse.directInvocation(_:))
  {
    (v94[12])(v93, v118);
    (*(v286 + 32))(v290, v93, v285);
    v140 = sub_125AAC();
    v141 = sub_125DFC();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&dword_0, v140, v141, "Timer domain: received direct invocation", v142, 2u);
    }

    v143 = sub_123CFC();
    v145 = v144;
    v146 = v287;
    v147 = v282;
    v148 = v283;
    v312 = *(v287 + 104);
    (v312)(v282, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v283);
    v149 = sub_1252BC();
    v151 = v150;
    v152 = *(v146 + 8);
    v287 = v146 + 8;
    v152(v147, v148);
    if (v143 == v149 && v145 == v151)
    {

LABEL_33:
      sub_5E504();
LABEL_34:
      (*(v286 + 8))(v290, v285);
      return (*(v311 + 8))(v313, v314);
    }

    v157 = sub_1261BC();

    if (v157)
    {
      goto LABEL_33;
    }

    v171 = sub_123D0C();
    v172 = v277;
    if (!v171)
    {
      goto LABEL_60;
    }

    v173 = v171;
    if (!*(v171 + 16) || (v174 = sub_8AD8(1651664246, 0xE400000000000000), (v175 & 1) == 0))
    {

      goto LABEL_60;
    }

    sub_8B50(*(v173 + 56) + 32 * v174, v319);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_60:
      v189 = v285;
      v190 = v286;
      v191 = *(v286 + 16);
      v191(v172, v290, v285);
      v192 = sub_125AAC();
      v193 = sub_125DEC();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v319[0] = v195;
        *v194 = 136315138;
        v191(v258, v172, v189);
        v196 = sub_125BAC();
        v198 = v197;
        v199 = *(v190 + 8);
        v199(v172, v189);
        v200 = sub_8530(v196, v198, v319);

        *(v194 + 4) = v200;
        _os_log_impl(&dword_0, v192, v193, "Not able to handle directInvocation: %s", v194, 0xCu);
        sub_5BB0(v195);
      }

      else
      {

        v199 = *(v190 + 8);
        v199(v172, v189);
      }

      sub_12348C();
      v199(v290, v189);
      return (*(v311 + 8))(v313, v314);
    }

    v177 = v315;
    v176 = v316;

    v178 = sub_B66D0();
    if (v178 == 19)
    {

      v172 = v277;
      goto LABEL_60;
    }

    v228 = v178;
    v229 = sub_123CFC();
    v231 = v230;
    v232 = v256;
    (v312)(v256, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v148);
    v233 = sub_1252BC();
    v235 = v234;
    v152(v232, v148);
    if (v229 == v233 && v231 == v235)
    {

      v236 = v286;
    }

    else
    {
      v237 = sub_1261BC();

      v238 = v310;
      v236 = v286;
      if ((v237 & 1) == 0)
      {

        sub_5DED4(v228, 0, v238);
        goto LABEL_105;
      }
    }

    if (v228 <= 4u)
    {
      if (v228 == 1)
      {

        v247 = sub_125AAC();
        v248 = sub_125DFC();
        if (os_log_type_enabled(v247, v248))
        {
          v249 = swift_slowAlloc();
          *v249 = 0;
          _os_log_impl(&dword_0, v247, v248, "Undoing a previously deleted alarm", v249, 2u);
        }

        sub_23B08((v295 + 40), *(v295 + 64));
        sub_63980();
        goto LABEL_105;
      }

      if (v228 == 2)
      {

        v239 = sub_125AAC();
        v240 = sub_125DFC();
        if (os_log_type_enabled(v239, v240))
        {
          v241 = swift_slowAlloc();
          *v241 = 0;
          _os_log_impl(&dword_0, v239, v240, "Undoing a previously created timer", v241, 2u);
        }

        sub_23B08((v295 + 40), *(v295 + 64));
        sub_63B34();
        goto LABEL_105;
      }

LABEL_100:

      v162 = sub_125AAC();
      v243 = sub_125DEC();

      if (os_log_type_enabled(v162, v243))
      {
        v244 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        v319[0] = v245;
        *v244 = 136315138;
        v246 = sub_8530(v177, v176, v319);

        *(v244 + 4) = v246;
        _os_log_impl(&dword_0, v162, v243, "Not able to handle specified verb for undo: %s", v244, 0xCu);
        sub_5BB0(v245);

LABEL_108:

        sub_12348C();
        goto LABEL_34;
      }

LABEL_107:

      goto LABEL_108;
    }

    if (v228 != 5 && v228 != 8)
    {
      goto LABEL_100;
    }

    v242 = *sub_23B08((v295 + 40), *(v295 + 64));
    sub_63CE8();
LABEL_105:
    (*(v236 + 8))(v290, v285);
    return (*(v311 + 8))(v313, v314);
  }

  if (v95 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (v94[12])(v93, v118);
    v153 = *v93;
    v154 = sub_125AAC();
    v155 = sub_125DFC();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&dword_0, v154, v155, "Timer domain: Hitting SiriX code path", v156, 2u);
    }

    sub_5DC6C(v81);
    swift_unknownObjectRelease();
    return (*(v83 + 8))(v313, v314);
  }

  if (v95 != enum case for Parse.uso(_:))
  {
    if (v95 == enum case for Parse.ifClientAction(_:))
    {
      (v94[12])(v93, v118);
      v179 = v267;
      v180 = v265;
      (*(v267 + 32))(v278, v93, v265);
      v181 = sub_125AAC();
      v182 = sub_125DFC();
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        *v183 = 0;
        _os_log_impl(&dword_0, v181, v182, "Timer domain Siri X code path hit: received ifClientAction parse.", v183, 2u);
      }

      v184 = v266;
      sub_1239DC();
      if (sub_124CEC() == 0x745F657461657263 && v185 == 0xEC00000072656D69)
      {
      }

      else
      {
        v211 = sub_1261BC();

        if ((v211 & 1) == 0)
        {
          v215 = v264;
          v216 = v257;
          v217 = v268;
          (*(v264 + 16))(v257, v184, v268);
          v218 = sub_125AAC();
          v219 = sub_125DEC();
          if (os_log_type_enabled(v218, v219))
          {
            v220 = swift_slowAlloc();
            v221 = swift_slowAlloc();
            v319[0] = v221;
            *v220 = 136315138;
            v222 = sub_124CEC();
            v223 = v216;
            v225 = v224;
            v226 = *(v215 + 8);
            v226(v223, v268);
            v227 = sub_8530(v222, v225, v319);

            *(v220 + 4) = v227;
            _os_log_impl(&dword_0, v218, v219, "Timer domain unexpected client action toolId: %s", v220, 0xCu);
            sub_5BB0(v221);
            v180 = v265;

            v217 = v268;
          }

          else
          {

            v226 = *(v215 + 8);
            v226(v216, v217);
          }

          sub_12348C();
          v226(v266, v217);
          (*(v267 + 8))(v278, v180);
          return (*(v83 + 8))(v313, v314);
        }
      }

      v212 = *sub_23B08((v295 + 40), *(v295 + 64));
      sub_6096C(v81);
      (*(v264 + 8))(v184, v268);
      (*(v179 + 8))(v278, v180);
      return (*(v83 + 8))(v313, v314);
    }

    v186 = sub_125AAC();
    v187 = sub_125DEC();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      *v188 = 0;
      _os_log_impl(&dword_0, v186, v187, "FlowPlugin is unable to consume the timer intent. Exiting the flow.", v188, 2u);
    }

    sub_12348C();
    (*(v83 + 8))(v313, v314);
    return (v263)(v93, v118);
  }

  (v94[12])(v93, v118);
  (*(v279 + 32))(v281, v93, v280);
  v158 = sub_125AAC();
  v159 = sub_125DFC();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    *v160 = 0;
    _os_log_impl(&dword_0, v158, v159, "Timer domain Siri X code path hit: received USO parse.", v160, 2u);
  }

  v161 = v273;
  sub_123D5C();
  v162 = v161;
  v163 = sub_123D9C();
  (*(v274 + 8))(v161, v275);
  v164 = *(v163 + 16);
  v165 = v276;
  v166 = v289;
  if (v164)
  {
    v167 = 0;
    v168 = (v289 + 8);
    while (v167 < *(v163 + 16))
    {
      v162 = v288;
      (*(v166 + 16))(v288, v163 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v167, v165);
      if (sub_123DBC())
      {

        v201 = v289;
        v170 = v271;
        (*(v289 + 32))(v271, v162, v165);
        v169 = 0;
        v166 = v201;
        goto LABEL_66;
      }

      ++v167;
      (*v168)(v162, v165);
      v166 = v289;
      if (v164 == v167)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_107;
  }

LABEL_43:

  v169 = 1;
  v170 = v271;
LABEL_66:
  (*(v166 + 56))(v170, v169, 1, v165);
  v202 = (*(v166 + 48))(v170, 1, v165);
  v203 = v272;
  v204 = v310;
  if (v202 == 1)
  {
    sub_5CA8(v170, &qword_160510, &qword_12B170);
    v207 = sub_125AAC();
    v208 = sub_125DEC();
    if (os_log_type_enabled(v207, v208))
    {
      v210 = swift_slowAlloc();
      *v210 = 0;
      _os_log_impl(&dword_0, v207, v208, "Failed to parse userParse. Returning noFlow.", v210, 2u);
    }

    sub_12348C();
    goto LABEL_72;
  }

  v205 = v260;
  sub_123E0C();
  (*(v166 + 8))(v170, v165);
  v206 = v259;
  sub_123E5C();
  (*(v261 + 8))(v205, v262);
  (*(v269 + 32))(v203, v206, v270);
  sub_123F0C();
  result = sub_12424C();
  if (result >> 62)
  {
    v250 = result;
    v251 = sub_1260FC();
    result = v250;
    if (v251)
    {
      goto LABEL_78;
    }

LABEL_110:

    v252 = sub_125AAC();
    v253 = sub_125DEC();
    if (os_log_type_enabled(v252, v253))
    {
      v254 = swift_slowAlloc();
      *v254 = 0;
      _os_log_impl(&dword_0, v252, v253, "USO graph has no tasks. Returning noFlow.", v254, 2u);
    }

    sub_12348C();

    goto LABEL_113;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_110;
  }

LABEL_78:
  if ((result & 0xC000000000000001) != 0)
  {
    v213 = sub_125FFC();
    goto LABEL_81;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v213 = *(result + 32);

LABEL_81:

    v214 = sub_C69B0();

    sub_5DED4(v214, v213, v204);

LABEL_113:
    (*(v269 + 8))(v203, v270);
LABEL_72:
    (*(v279 + 8))(v281, v280);
    return (*(v83 + 8))(v313, v314);
  }

  __break(1u);
  return result;
}

uint64_t sub_5D148()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1603E0);
  sub_5B30(v0, qword_1603E0);
  return sub_1257AC();
}

uint64_t sub_5D194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v43 - v8;
  v10 = type metadata accessor for TimerNLv3Intent();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  v15 = sub_5B30(v14, qword_1603E0);
  sub_9848(a1, v13);
  v16 = sub_125AAC();
  v17 = sub_125DFC();
  v18 = os_log_type_enabled(v16, v17);
  v45 = v10;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v43[1] = v15;
    v20 = v19;
    v21 = swift_slowAlloc();
    v44 = v2;
    v22 = v21;
    v46 = v21;
    *v20 = 136315138;
    sub_647DC(&qword_161ED0, type metadata accessor for TimerNLv3Intent);
    v23 = sub_12618C();
    v24 = v9;
    v25 = a1;
    v26 = a2;
    v28 = v27;
    sub_97EC(v13);
    v29 = sub_8530(v23, v28, &v46);
    a2 = v26;
    a1 = v25;
    v9 = v24;

    *(v20 + 4) = v29;
    _os_log_impl(&dword_0, v16, v17, "Routing flow based on nlv3 intent: %s", v20, 0xCu);
    sub_5BB0(v22);
    v3 = v44;
  }

  else
  {

    sub_97EC(v13);
  }

  if (qword_15EF50 != -1)
  {
    swift_once();
  }

  sub_647DC(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
  sub_12428C();
  if (v48 <= 4u)
  {
    if (v48 > 1u)
    {
      if (v48 != 2)
      {
        if (v48 == 3)
        {
          v30 = *sub_23B08((v3 + 40), *(v3 + 64));
          return sub_613CC(a2);
        }

        else
        {
          v38 = *sub_23B08((v3 + 40), *(v3 + 64));
          return sub_60EFC(a2);
        }
      }

LABEL_34:
      v41 = *sub_23B08((v3 + 40), *(v3 + 64));
      return sub_6189C(a2);
    }

    if (v48)
    {
      return sub_5E504();
    }

    if (qword_15EF70 != -1)
    {
      swift_once();
    }

    sub_12428C();
    if (v47 & 1) == 0 && (sub_12570C())
    {
      v36 = *sub_23B08((v3 + 40), *(v3 + 64));
      return sub_60BD4();
    }

    return sub_5E604(a1, a2);
  }

  if (v48 > 6u)
  {
    if (v48 == 7)
    {
      v32 = sub_125AAC();
      v33 = sub_125DEC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "TimerFlow doen't support nlv3 intent verb: add. Returning noFlow";
        goto LABEL_28;
      }
    }

    else
    {
      if (v48 != 8)
      {
        if (qword_15EF78 != -1)
        {
          swift_once();
        }

        sub_12428C();
        v39 = sub_12412C();
        v40 = (*(*(v39 - 8) + 48))(v9, 1, v39);
        sub_5CA8(v9, &qword_15FF90, &unk_127BC0);
        if (v40 == 1)
        {
          goto LABEL_34;
        }

        return sub_5E604(a1, a2);
      }

      v32 = sub_125AAC();
      v33 = sub_125DEC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "TimerFlow doen't support nlv3 intent verb: substract. Returning noFlow";
LABEL_28:
        _os_log_impl(&dword_0, v32, v33, v35, v34, 2u);
      }
    }

    return sub_12348C();
  }

  if (v48 == 5)
  {
    v37 = *sub_23B08((v3 + 40), *(v3 + 64));
    return sub_61164(a2);
  }

  else
  {
    v42 = *sub_23B08((v3 + 40), *(v3 + 64));
    return sub_61634(a2);
  }
}

uint64_t sub_5D790@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_1603E0);
  v7 = a1;
  v8 = sub_125AAC();
  v9 = sub_125DFC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, "Routing flow based on SiriKit intent: %@", v10, 0xCu);
    sub_5CA8(v11, &unk_160540, &unk_1295A0);
  }

  sub_1255EC();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    [v13 type];
    v14 = sub_12589C();
    if (v14 == sub_12589C() && (sub_12570C() & 1) != 0)
    {
      v15 = *sub_23B08((v3 + 40), *(v3 + 64));
      return sub_60BD4();
    }

    else
    {
      v17 = *sub_23B08((v3 + 40), *(v3 + 64));
      return sub_6096C(a2);
    }
  }

  else
  {
    sub_12561C();
    if (swift_dynamicCastClass())
    {

      return sub_5E504();
    }

    else
    {
      sub_12555C();
      if (swift_dynamicCastClass())
      {
        v18 = *sub_23B08((v2 + 40), *(v2 + 64));
        return sub_60EFC(a2);
      }

      else
      {
        sub_12558C();
        if (swift_dynamicCastClass())
        {
          v19 = *sub_23B08((v2 + 40), *(v2 + 64));
          return sub_613CC(a2);
        }

        else
        {
          sub_12564C();
          if (swift_dynamicCastClass())
          {
            v20 = *sub_23B08((v2 + 40), *(v2 + 64));
            return sub_61164(a2);
          }

          else
          {
            sub_12568C();
            if (swift_dynamicCastClass())
            {
              v21 = *sub_23B08((v2 + 40), *(v2 + 64));
              return sub_6189C(a2);
            }

            else
            {
              sub_12550C();
              if (swift_dynamicCastClass())
              {
                v22 = *sub_23B08((v2 + 40), *(v2 + 64));
                return sub_61634(a2);
              }

              else
              {
                v23 = v7;
                v24 = sub_125AAC();
                v25 = sub_125DEC();

                if (os_log_type_enabled(v24, v25))
                {
                  v26 = swift_slowAlloc();
                  v27 = swift_slowAlloc();
                  v38[0] = v27;
                  *v26 = 136315138;
                  v28 = v23;
                  v29 = [v28 description];
                  v30 = sub_125B9C();
                  v32 = v31;

                  v33 = sub_8530(v30, v32, v38);

                  *(v26 + 4) = v33;
                  _os_log_impl(&dword_0, v24, v25, "FlowPlugin is unable to consume the SiriKit intent %s. Exiting the flow.", v26, 0xCu);
                  sub_5BB0(v27);
                }

                v34 = sub_12547C();
                v38[3] = v34;
                v38[4] = &protocol witness table for ABCReport;
                v35 = sub_23B4C(v38);
                *v35 = swift_getObjectType();
                v36 = enum case for UnhandledAbortSubtype.unknownIntent(_:);
                v37 = sub_12538C();
                (*(*(v37 - 8) + 104))(v35, v36, v37);
                (*(*(v34 - 8) + 104))(v35, enum case for ABCReport.unhandledAbort(_:), v34);
                sub_1251AC();
                sub_5BB0(v38);
                return sub_12348C();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_5DC6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v4 = sub_125ABC();
  sub_5B30(v4, qword_1603E0);
  swift_unknownObjectRetain();
  v5 = sub_125AAC();
  v6 = sub_125DFC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    sub_5AE8(&unk_160610, &unk_129CC0);
    v9 = sub_125BAC();
    v11 = sub_8530(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Routing flow based on nlv4 intent: %s", v7, 0xCu);
    sub_5BB0(v8);
  }

  swift_getObjectType();
  v12 = SIRINLUUserDialogAct.firstUsoTask.getter();
  if (v12)
  {
    v13 = v12;
    v14 = sub_C69B0();

    sub_5DED4(v14, v13, a1);
  }

  else
  {
    v16 = sub_125AAC();
    v17 = sub_125DEC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "UsoTask is empty! Calling createTimerFlow anyways", v18, 2u);
    }

    v19 = *sub_23B08((v2 + 40), *(v2 + 64));
    return sub_6096C(a1);
  }
}

uint64_t sub_5DED4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v8 = sub_125ABC();
  sub_5B30(v8, qword_1603E0);
  v9 = sub_125AAC();
  v10 = sub_125DFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = v4;
    v13 = a3;
    v14 = swift_slowAlloc();
    v39[0] = v14;
    *v11 = 136315138;
    v15 = sub_B6264(a1);
    v17 = a2;
    v18 = a1;
    v19 = sub_8530(v15, v16, v39);

    *(v11 + 4) = v19;
    a1 = v18;
    a2 = v17;
    _os_log_impl(&dword_0, v9, v10, "Routing flow based on verb: %s", v11, 0xCu);
    sub_5BB0(v14);
    a3 = v13;
    v4 = v12;
  }

  if (a2)
  {

    if (sub_C66F0())
    {
      if (sub_12570C())
      {
        sub_5F348();

LABEL_12:
      }
    }

    if (sub_C6BD8())
    {
      sub_5E504();
      goto LABEL_12;
    }
  }

  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 9:

      return sub_5F60C(a2, a3);
    case 2:
      v25 = *sub_23B08((v4 + 40), *(v4 + 64));
      return sub_60C94(a3);
    case 5:
      v24 = *sub_23B08((v4 + 40), *(v4 + 64));
      return sub_60EFC(a3);
    case 7:
    case 17:
    case 18:
      v22 = *sub_23B08((v4 + 40), *(v4 + 64));
      return sub_613CC(a3);
    case 8:
      v23 = *sub_23B08((v4 + 40), *(v4 + 64));
      return sub_61164(a3);
    case 10:

      return sub_5E504();
    case 12:
      v26 = *sub_23B08((v4 + 40), *(v4 + 64));
      return sub_61634(a3);
    case 14:
      sub_12437C();
      sub_E344(v39, v37, &unk_161840, &qword_128110);
      if (v38)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {
          sub_123F3C();
          if (!v37[0])
          {
            goto LABEL_30;
          }

          UsoEntity_common_Timer.duration.getter();
          sub_8BAC();
          isa = UsoEntity_common_Timer.isMultiple.getter().super.super.isa;
          v28 = sub_125EFC(0).super.super.isa;
          v29 = sub_125F0C();

          if ((v29 & 1) == 0)
          {
            v36 = *sub_23B08((v4 + 40), *(v4 + 64));
            sub_6189C(a3);
          }

          else
          {
LABEL_30:
            sub_5F60C(a2, a3);
          }

LABEL_47:

          return sub_5CA8(v39, &unk_161840, &qword_128110);
        }
      }

      else
      {
        sub_5CA8(v37, &unk_161840, &qword_128110);
      }

      sub_E344(v39, v37, &unk_161840, &qword_128110);
      if (v38)
      {
        sub_12457C();
        if (swift_dynamicCast())
        {
          sub_123F3C();
          if (v37[0] && (v30 = sub_1242DC(), , v30) && (v31 = sub_1243BC(), , v31))
          {

            v32 = *sub_23B08((v4 + 40), *(v4 + 64));
            sub_6096C(a3);
          }

          else
          {
            sub_12348C();
          }

          goto LABEL_47;
        }
      }

      else
      {
        sub_5CA8(v37, &unk_161840, &qword_128110);
      }

      v33 = sub_125AAC();
      v34 = sub_125DEC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "TimerFlowFactory: failed to parse UsoTask_noVerb_common_Timer. Exiting the flow.", v35, 2u);
      }

      sub_12348C();
      return sub_5CA8(v39, &unk_161840, &qword_128110);
    default:
      v21 = *sub_23B08((v4 + 40), *(v4 + 64));
      return sub_6189C(a3);
  }
}

uint64_t sub_5E504()
{
  v1 = v0;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_1603E0);
  v3 = sub_125AAC();
  v4 = sub_125DFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "TimerFlowFactory: deciding between deleteTimerFlow and dismissTimerFlow based on firing timer info from device context.", v5, 2u);
  }

  v6 = *sub_23B08((v1 + 40), *(v1 + 64));
  return sub_63ECC();
}

uint64_t sub_5E604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_5AE8(&qword_160550, &qword_1280D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v84 = &v79 - v5;
  v85 = sub_123A6C();
  v83 = *(v85 - 8);
  v6 = *(v83 + 64);
  __chkstk_darwin(v85);
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5AE8(&qword_160558, &qword_1280E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v79 - v10;
  v12 = sub_5AE8(&qword_160560, &qword_1280E8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v79 - v14;
  v16 = sub_1241DC();
  v92 = *(v16 - 8);
  v17 = *(v92 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v87 = &v79 - v21;
  v22 = sub_124EDC();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v88 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v89 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v79 - v30;
  __chkstk_darwin(v29);
  v33 = &v79 - v32;
  v34 = sub_5AE8(&qword_160568, &unk_1280F0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v79 - v36;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v91 = v15;
  v86 = v20;
  v38 = sub_125ABC();
  v94 = sub_5B30(v38, qword_1603E0);
  v39 = sub_125AAC();
  v40 = sub_125DFC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "TimerFlowFactory: deciding between createTimerFlow and createAlarmFlow based on user's NLv3 intent.", v41, 2u);
  }

  v90 = v11;
  v93 = v16;

  if (qword_15EF78 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent();
  sub_647DC(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
  v95 = a1;
  sub_12428C();
  v42 = sub_12412C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  if (v44(v33, 1, v42) == 1)
  {
    sub_5CA8(v33, &qword_15FF90, &unk_127BC0);
    v45 = sub_12418C();
    (*(*(v45 - 8) + 56))(v37, 1, 1, v45);
LABEL_10:
    sub_5CA8(v37, &qword_160568, &unk_1280F0);
    v48 = sub_125AAC();
    v49 = sub_125DFC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "No startTime found in timerIntent. Returning createTimerFlow", v50, 2u);
    }

    v51 = v96[8];
    v52 = v96 + 5;
    goto LABEL_13;
  }

  v81 = v44;
  sub_1240EC();
  v46 = *(v43 + 8);
  v46(v33, v42);
  v47 = sub_12418C();
  if ((*(*(v47 - 8) + 48))(v37, 1, v47) == 1)
  {
    goto LABEL_10;
  }

  v80 = v46;
  sub_5CA8(v37, &qword_160568, &unk_1280F0);
  sub_12428C();
  if (v81(v31, 1, v42) == 1)
  {
    sub_5CA8(v31, &qword_15FF90, &unk_127BC0);
  }

  else
  {
    v55 = sub_1240FC();
    v80(v31, v42);
    if (v55)
    {
      if (qword_15EF70 != -1)
      {
        swift_once();
      }

      sub_12428C();
      if (v98)
      {
        sub_5FB70(v55, v97);
      }
    }
  }

  if (qword_15EF70 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (v98 & 1) == 0 && (sub_12570C())
  {
    v56 = *sub_23B08(v96 + 5, v96[8]);
    return sub_60BD4();
  }

  sub_12428C();
  v57 = v96;
  if (v98 == 1)
  {
    v58 = v96[4];
    sub_23B08(v96, v96[3]);
    if (sub_1235EC())
    {
      type metadata accessor for CreateTimerCATs_Async();
      sub_124ECC();
      v59 = sub_124DBC();
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v60 = sub_124DBC();
      v98 = v59;
      v99 = v60;
      sub_641A4();
      sub_12342C();

      sub_1234AC();
    }
  }

  if (qword_15EFA0 != -1)
  {
    swift_once();
  }

  v61 = v89;
  sub_12428C();
  if (v81(v61, 1, v42) == 1)
  {
    sub_5CA8(v61, &qword_15FF90, &unk_127BC0);
    v62 = sub_12414C();
    v63 = v90;
    (*(*(v62 - 8) + 56))(v90, 1, 1, v62);
    v64 = v91;
LABEL_35:
    sub_5CA8(v63, &qword_160558, &qword_1280E0);
    (*(v92 + 56))(v64, 1, 1, v93);
LABEL_36:
    sub_5CA8(v64, &qword_160560, &qword_1280E8);
    v51 = v57[8];
    v52 = v57 + 5;
LABEL_13:
    v53 = *sub_23B08(v52, v51);
    return sub_6096C(v97);
  }

  v63 = v90;
  sub_1240DC();
  v80(v61, v42);
  v65 = sub_12414C();
  v66 = *(v65 - 8);
  v67 = (*(v66 + 48))(v63, 1, v65);
  v64 = v91;
  if (v67 == 1)
  {
    goto LABEL_35;
  }

  sub_12413C();
  (*(v66 + 8))(v63, v65);
  v69 = v92;
  v68 = v93;
  if ((*(v92 + 48))(v64, 1, v93) == 1)
  {
    goto LABEL_36;
  }

  v70 = v87;
  (*(v69 + 32))(v87, v64, v68);
  v71 = v86;
  (*(v69 + 16))(v86, v70, v68);
  if ((*(v69 + 88))(v71, v68) == enum case for TerminalElement.Qualifier.every(_:))
  {
    v72 = sub_125AAC();
    v73 = sub_125DFC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_0, v72, v73, "Found startTime with recurrence qualifier in timerIntent. Transforming to alarm flow", v74, 2u);
    }

    sub_123D3C();
    sub_124C8C();
    v75 = v82;
    sub_123A5C();
    sub_1234BC();
    (*(v83 + 8))(v75, v85);
    return (*(v69 + 8))(v70, v68);
  }

  else
  {
    type metadata accessor for CreateTimerCATs_Async();
    sub_124ECC();
    v76 = sub_124DBC();
    type metadata accessor for CreateTimerCATPatternsExecutor(0);
    sub_124ECC();
    v77 = sub_124DBC();
    v98 = v76;
    v99 = v77;
    sub_641A4();
    sub_12342C();

    sub_1234AC();

    v78 = *(v69 + 8);
    v78(v70, v68);
    return (v78)(v71, v68);
  }
}

uint64_t sub_5F348()
{
  v1 = v0;
  if (sub_12468C())
  {
    if (sub_1243BC() && (v2 = sub_12440C(), , v2))
    {
      if (v2 >> 62)
      {
LABEL_26:
        v3 = sub_1260FC();
        if (v3)
        {
LABEL_6:
          v15 = v1;
          v4 = 0;
          v5 = 0.0;
          do
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              sub_125FFC();
              v1 = v4 + 1;
              if (__OFADD__(v4, 1))
              {
LABEL_16:
                __break(1u);
                goto LABEL_17;
              }
            }

            else
            {
              if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
              {
                __break(1u);
                goto LABEL_26;
              }

              v7 = *(v2 + 8 * v4 + 32);

              v1 = v4 + 1;
              if (__OFADD__(v4, 1))
              {
                goto LABEL_16;
              }
            }

            sub_1241FC();
            if (v16)
            {
              sub_12498C();
              v6 = v8;
            }

            else
            {
              v6 = 0.0;
            }

            v5 = v5 + v6;
            ++v4;
          }

          while (v1 != v3);

          if (v5 <= 0.0)
          {
            goto LABEL_28;
          }

          v10 = *sub_23B08((v15 + 40), *(v15 + 64));
          sub_60BD4();
        }
      }

      else
      {
        v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
        if (v3)
        {
          goto LABEL_6;
        }
      }

LABEL_28:
      if (qword_15EE48 != -1)
      {
        swift_once();
      }

      v11 = sub_125ABC();
      sub_5B30(v11, qword_1603E0);
      v12 = sub_125AAC();
      v13 = sub_125DEC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_0, v12, v13, "TimerFlowDelegatePlugin was presented a sleep timer ontology, but with a duration of zero seconds.", v14, 2u);
      }

      sub_12348C();
    }

    else
    {
LABEL_17:
      sub_12348C();
    }
  }

  return sub_12348C();
}

uint64_t sub_5F60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (a1 && sub_124B7C())
  {
    if ((sub_1242CC() & 1) == 0)
    {
      if (qword_15EE48 != -1)
      {
        swift_once();
      }

      v21 = sub_125ABC();
      sub_5B30(v21, qword_1603E0);
      v22 = sub_125AAC();
      v23 = sub_125DFC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_0, v22, v23, "TimerFlowFactory: Found alarm parse with invalid signature for timers – returning .noFlow", v24, 2u);
      }

      sub_12348C();
    }
  }

  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_1603E0);
  v7 = sub_125AAC();
  v8 = sub_125DFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "TimerFlowFactory: deciding between createTimerFlow and createAlarmFlow based on user's intent.", v9, 2u);
  }

  if (a1)
  {
    if (sub_C6CBC())
    {

      v10 = sub_125AAC();
      v11 = sub_125DFC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v36 = v13;
        *v12 = 136315138;
        sub_12434C();

        v14 = sub_125BAC();
        v16 = sub_8530(v14, v15, &v36);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_0, v10, v11, "TimerFlowFactory: timerEntity: %s", v12, 0xCu);
        sub_5BB0(v13);
      }

      UsoEntity_common_Timer.timerType.getter();
      v17 = sub_12589C();
      if (v17 == sub_12589C() && (sub_12570C() & 1) != 0)
      {
        v18 = *sub_23B08((v3 + 40), *(v3 + 64));
        sub_60BD4();
      }

      else
      {
        UsoEntity_common_Timer.isRightNow.getter();
        v19 = *sub_23B08((v3 + 40), *(v3 + 64));
        sub_6096C(a2);
      }
    }

    if (sub_124B8C() == 0x656C62616E65 && v25 == 0xE600000000000000)
    {
      goto LABEL_27;
    }

    v26 = sub_1261BC();

    if (v26)
    {
      goto LABEL_29;
    }

    if (sub_124B8C() == 0x656C6261736964 && v30 == 0xE700000000000000)
    {
LABEL_27:

LABEL_29:
      v27 = sub_125AAC();
      v28 = sub_125DEC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "TimerEntity is nil in the uso enable or disable task. Returning no flow.", v29, 2u);
      }

      return sub_12348C();
    }

    v31 = sub_1261BC();

    if (v31)
    {
      goto LABEL_29;
    }
  }

  v32 = sub_125AAC();
  v33 = sub_125DEC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "TimerEntity is nil in the uso task. Return createTimerFlow anyways.", v34, 2u);
  }

  v35 = *sub_23B08((v3 + 40), *(v3 + 64));
  return sub_6096C(a2);
}

uint64_t sub_5FB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_124EDC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v117 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5AE8(&qword_160578, &unk_12AA50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v126 = v104 - v9;
  v133 = sub_122E6C();
  v130 = *(v133 - 8);
  v10 = *(v130 + 64);
  v11 = __chkstk_darwin(v133);
  v118 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = v104 - v14;
  v15 = __chkstk_darwin(v13);
  v122 = v104 - v16;
  v17 = __chkstk_darwin(v15);
  v123 = v104 - v18;
  v19 = __chkstk_darwin(v17);
  v120 = v104 - v20;
  __chkstk_darwin(v19);
  v127 = v104 - v21;
  v132 = sub_12306C();
  v22 = *(v132 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v132);
  v25 = v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_122F1C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v121 = v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v134 = v104 - v31;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v32 = sub_125ABC();
  v33 = sub_5B30(v32, qword_1603E0);

  v125 = v33;
  v34 = sub_125AAC();
  v35 = sub_125DFC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v124 = v27;
    v128 = v22;
    v37 = v36;
    v38 = swift_slowAlloc();
    v129 = v25;
    v39 = v38;
    v135 = a1;
    v136[0] = v38;
    *v37 = 136315138;
    sub_124C2C();
    v40 = a2;
    sub_647DC(&qword_160590, &type metadata accessor for DateTime);
    v41 = sub_12618C();
    v43 = sub_8530(v41, v42, v136);

    *(v37 + 4) = v43;
    a2 = v40;
    _os_log_impl(&dword_0, v34, v35, "TimerFlowFactory: In createTimerOrReformToAlarm with %s", v37, 0xCu);
    sub_5BB0(v39);
    v25 = v129;

    v22 = v128;
    v27 = v124;
  }

  v44 = v134;
  sub_124EEC();
  sub_12304C();
  if (sub_124C1C() && (v45 = sub_124EFC()) != 0)
  {
    v46 = v45;
    v129 = v25;
    v115 = a2;
    v128 = v22;
    v116 = v26;
    v47 = sub_5AE8(&qword_160580, &qword_128100);
    v48 = sub_12305C();
    v49 = *(v48 - 8);
    v50 = *(v49 + 72);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v108 = *(v49 + 80);
    v110 = v47;
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_128030;
    v111 = v51;
    v53 = v52 + v51;
    v112 = v49;
    v54 = *(v49 + 104);
    (v54)(v53, enum case for Calendar.Component.year(_:), v48);
    (v54)(v53 + v50, enum case for Calendar.Component.month(_:), v48);
    (v54)(v53 + 2 * v50, enum case for Calendar.Component.day(_:), v48);
    v109 = v50;
    v106 = enum case for Calendar.Component.hour(_:);
    v54(v53 + 3 * v50);
    v107 = v54;
    (v54)(v53 + 4 * v50, enum case for Calendar.Component.minute(_:), v48);
    v113 = sub_64210(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v55 = v127;
    v114 = v46;
    sub_124F0C();
    v56 = v130;
    v57 = v130 + 16;
    v58 = v120;
    v105 = *(v130 + 16);
    v105(v120, v55, v133);
    v59 = sub_125AAC();
    v60 = sub_125DFC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v124 = v27;
      v63 = v133;
      v104[1] = v57;
      v64 = v62;
      v136[0] = v62;
      *v61 = 136315138;
      sub_647DC(&qword_160588, &type metadata accessor for DateComponents);
      v65 = sub_12618C();
      v66 = v56;
      v68 = v67;
      v120 = *(v66 + 8);
      (v120)(v58, v63);
      v69 = sub_8530(v65, v68, v136);

      *(v61 + 4) = v69;
      _os_log_impl(&dword_0, v59, v60, "TimerFlowFactory: reference date from utterance: %s", v61, 0xCu);
      sub_5BB0(v64);
      v27 = v124;

      v55 = v127;
    }

    else
    {

      v120 = *(v56 + 8);
      (v120)(v58, v133);
    }

    v72 = v129;
    sub_12303C();
    v73 = v126;
    v74 = v55;
    v75 = v116;
    v76 = (*(v27 + 48))(v126, 1, v116);
    v77 = v134;
    if (v76 == 1)
    {

      sub_5CA8(v73, &qword_160578, &unk_12AA50);
      v78 = *sub_23B08((v131 + 40), *(v131 + 64));
      sub_6096C(v115);

      (v120)(v74, v133);
      (*(v128 + 8))(v72, v132);
      return (*(v27 + 8))(v77, v75);
    }

    else
    {
      (*(v27 + 32))(v121, v73, v75);
      sub_12302C();
      sub_12302C();

      v79 = v111;
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_126CB0;
      v107(v80 + v79, v106, v48);
      sub_64210(v80);
      swift_setDeallocating();
      (*(v112 + 8))(v80 + v79, v48);
      swift_deallocClassInstance();
      v81 = v119;
      sub_12301C();

      v82 = v118;
      v105(v118, v81, v133);
      v83 = sub_125AAC();
      v84 = sub_125DFC();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = v82;
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v136[0] = v87;
        *v86 = 136315138;
        sub_647DC(&qword_160588, &type metadata accessor for DateComponents);
        v88 = v133;
        v89 = sub_12618C();
        v91 = v90;
        v92 = v85;
        v93 = v120;
        (v120)(v92, v88);
        v94 = sub_8530(v89, v91, v136);
        v95 = v129;

        *(v86 + 4) = v94;
        _os_log_impl(&dword_0, v83, v84, "TimerFlowFactory: deltaComponments: %s", v86, 0xCu);
        sub_5BB0(v87);
      }

      else
      {
        v95 = v72;

        v93 = v120;
        (v120)(v82, v133);
      }

      v96 = sub_122E4C();
      v97 = v116;
      if ((v98 & 1) != 0 || v96 < 0x18)
      {
        v101 = *sub_23B08((v131 + 40), *(v131 + 64));
        sub_6096C(v115);
      }

      else
      {
        type metadata accessor for CreateTimerCATs_Async();
        sub_124ECC();
        v99 = sub_124DBC();
        type metadata accessor for CreateTimerCATPatternsExecutor(0);
        sub_124ECC();
        v100 = sub_124DBC();
        v136[0] = v99;
        v136[1] = v100;
        sub_641A4();
        sub_12342C();

        sub_1234AC();
      }

      v102 = v133;
      v93(v81, v133);
      v93(v122, v102);
      v93(v123, v102);
      v103 = *(v27 + 8);
      v103(v121, v97);
      v93(v127, v102);
      (*(v128 + 8))(v95, v132);
      return (v103)(v134, v97);
    }
  }

  else
  {
    v70 = *sub_23B08((v131 + 40), *(v131 + 64));
    sub_6096C(a2);
    (*(v22 + 8))(v25, v132);
    return (*(v27 + 8))(v44, v26);
  }
}

uint64_t sub_6096C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-1] - v6;
  v8 = sub_5AE8(&qword_160030, &unk_128240);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-1] - v11;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_1603E0);
  v14 = sub_125AAC();
  v15 = sub_125DFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "TimerFlowFactory: making createTimerFlow.", v16, 2u);
  }

  sub_2F488(v2 + 16, v20);
  sub_53720(v20);
  v17 = sub_12532C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_61DC0(v12, v7, a1);
  sub_5CA8(v7, &qword_15FFB0, &unk_1270A0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_60BF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return sub_57CC8(a1, a2 + 16);
}

uint64_t sub_60C94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-1] - v6;
  v8 = sub_5AE8(&unk_160770, &qword_127E08);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-1] - v11;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_1603E0);
  v14 = sub_125AAC();
  v15 = sub_125DFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "TimerFlowFactory: making deleteTimerFlow.", v16, 2u);
  }

  sub_2F488(v2 + 16, v20);
  sub_DDDC0(v20);
  v17 = sub_12532C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_63260(v12, v7, a1);
  sub_5CA8(v7, &qword_15FFB0, &unk_1270A0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_60EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-1] - v6;
  v8 = sub_5AE8(&qword_1601D8, &qword_1281E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-1] - v11;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_1603E0);
  v14 = sub_125AAC();
  v15 = sub_125DFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "TimerFlowFactory: making pauseTimerFlow.", v16, 2u);
  }

  sub_2F488(v2 + 16, v20);
  sub_58720(v20);
  v17 = sub_12532C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_62810(v12, v7, a1);
  sub_5CA8(v7, &qword_15FFB0, &unk_1270A0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_61164@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-1] - v6;
  v8 = sub_5AE8(&qword_160700, &qword_1281B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-1] - v11;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_1603E0);
  v14 = sub_125AAC();
  v15 = sub_125DFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "TimerFlowFactory: making resumeTimerFlow.", v16, 2u);
  }

  sub_2F488(v2 + 16, v20);
  sub_D64D8(v20);
  v17 = sub_12532C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_624A0(v12, v7, a1);
  sub_5CA8(v7, &qword_15FFB0, &unk_1270A0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_613CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-1] - v6;
  v8 = sub_5AE8(&qword_1606C8, &qword_128190);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-1] - v11;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_1603E0);
  v14 = sub_125AAC();
  v15 = sub_125DFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "TimerFlowFactory: making resetTimerFlow.", v16, 2u);
  }

  sub_2F488(v2 + 16, v20);
  sub_1176D0(v20);
  v17 = sub_12532C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_62130(v12, v7, a1);
  sub_5CA8(v7, &qword_15FFB0, &unk_1270A0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_61634@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-1] - v6;
  v8 = sub_5AE8(&qword_160690, &qword_128168);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-1] - v11;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_1603E0);
  v14 = sub_125AAC();
  v15 = sub_125DFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "TimerFlowFactory: making setTimerAttributeFlow.", v16, 2u);
  }

  sub_2F488(v2 + 16, v20);
  sub_F5C58(v20);
  v17 = sub_12532C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_62B80(v12, v7, a1);
  sub_5CA8(v7, &qword_15FFB0, &unk_1270A0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_6189C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_5AE8(&qword_160648, &qword_128130);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_1250BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_1603E0);
  v15 = sub_125AAC();
  v16 = sub_125DFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "TimerFlowFactory: making searchTimerFlow.", v17, 2u);
  }

  sub_1250AC();
  v18 = sub_12506C();
  (*(v10 + 8))(v13, v9);
  if (v18)
  {
    v19 = sub_125AAC();
    v20 = sub_125DFC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v28;
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v19, v20, "Using RemoteTimerContinuationFlow for Cross-Device Flow", v23, 2u);
    }

    sub_2F488(v22 + 16, v31);
    type metadata accessor for RemoteTimerContinuationFlow();
    swift_allocObject();
    *&v31[0] = sub_2C0D4(v31);
    sub_647DC(&unk_160670, type metadata accessor for RemoteTimerContinuationFlow);
    sub_12342C();

    sub_1234AC();
  }

  else
  {
    sub_2F488(v28 + 16, v31);
    sub_12568C();
    sub_12566C();
    sub_1233FC();
    if (qword_15EEA8 != -1)
    {
      swift_once();
    }

    sub_12333C();
    sub_1233AC();
    sub_2F488(v31, v30);
    *(swift_allocObject() + 16) = 0;
    sub_64688();
    sub_12331C();

    sub_12339C();
    sub_646DC(v30);
    sub_5BB0(v31);
    v25 = sub_12532C();
    (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
    sub_62EF0(v8, v4, v29);
    sub_5CA8(v4, &qword_15FFB0, &unk_1270A0);
    return (*(v27 + 8))(v8, v5);
  }
}

uint64_t sub_61DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a3;
  v4 = sub_5AE8(&unk_1607B0, &qword_127E50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_5AE8(&qword_160030, &unk_128240);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_5AE8(&qword_160170, &unk_128250);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  sub_2F488(v3 + 16, &v26 - v19);
  sub_E344(v26, &v20[*(v14 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v10 + 16))(v13, v27, v9);
  v21 = sub_5AE8(&unk_1607C0, &qword_127E58);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v20, v18, &qword_160170, &unk_128250);
  sub_5C60(&qword_160178, &qword_160170, &unk_128250);

  sub_1237CC();
  v24 = sub_1237AC();
  (*(v5 + 8))(v8, v4);
  v29 = v24;
  sub_5AE8(&unk_1607D0, &qword_128260);
  sub_5C60(&qword_160180, &unk_1607D0, &qword_128260);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v20, &qword_160170, &unk_128250);
}

uint64_t sub_62130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a3;
  v4 = sub_5AE8(&qword_1606D0, &qword_128198);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_5AE8(&qword_1606C8, &qword_128190);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_5AE8(&qword_1606D8, &qword_1281A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  sub_2F488(v3 + 16, &v26 - v19);
  sub_E344(v26, &v20[*(v14 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v10 + 16))(v13, v27, v9);
  v21 = sub_5AE8(&qword_1606E0, &qword_1281A8);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v20, v18, &qword_1606D8, &qword_1281A0);
  sub_5C60(&qword_1606E8, &qword_1606D8, &qword_1281A0);

  sub_1237CC();
  v24 = sub_1237AC();
  (*(v5 + 8))(v8, v4);
  v29 = v24;
  sub_5AE8(&qword_1606F0, &qword_1281B0);
  sub_5C60(&qword_1606F8, &qword_1606F0, &qword_1281B0);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v20, &qword_1606D8, &qword_1281A0);
}

uint64_t sub_624A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a3;
  v4 = sub_5AE8(&qword_160708, &qword_1281C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_5AE8(&qword_160700, &qword_1281B8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_5AE8(&qword_160710, &qword_1281C8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  sub_2F488(v3 + 16, &v26 - v19);
  sub_E344(v26, &v20[*(v14 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v10 + 16))(v13, v27, v9);
  v21 = sub_5AE8(&qword_160718, &qword_1281D0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v20, v18, &qword_160710, &qword_1281C8);
  sub_5C60(&qword_160720, &qword_160710, &qword_1281C8);

  sub_1237CC();
  v24 = sub_1237AC();
  (*(v5 + 8))(v8, v4);
  v29 = v24;
  sub_5AE8(&qword_160728, &qword_1281D8);
  sub_5C60(&unk_160730, &qword_160728, &qword_1281D8);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v20, &qword_160710, &qword_1281C8);
}

uint64_t sub_62810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a3;
  v4 = sub_5AE8(&qword_160740, &qword_1281E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_5AE8(&qword_1601D8, &qword_1281E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_5AE8(&qword_160748, &qword_1281F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  sub_2F488(v3 + 16, &v26 - v19);
  sub_E344(v26, &v20[*(v14 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v10 + 16))(v13, v27, v9);
  v21 = sub_5AE8(&qword_160750, &qword_1281F8);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v20, v18, &qword_160748, &qword_1281F0);
  sub_5C60(&qword_160758, &qword_160748, &qword_1281F0);

  sub_1237CC();
  v24 = sub_1237AC();
  (*(v5 + 8))(v8, v4);
  v29 = v24;
  sub_5AE8(&qword_160760, &unk_128200);
  sub_5C60(&qword_160768, &qword_160760, &unk_128200);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v20, &qword_160748, &qword_1281F0);
}

uint64_t sub_62B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a3;
  v4 = sub_5AE8(&qword_160698, &qword_128170);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_5AE8(&qword_160690, &qword_128168);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_5AE8(&qword_1606A0, &qword_128178);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  sub_2F488(v3 + 16, &v26 - v19);
  sub_E344(v26, &v20[*(v14 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v10 + 16))(v13, v27, v9);
  v21 = sub_5AE8(&qword_1606A8, &qword_128180);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v20, v18, &qword_1606A0, &qword_128178);
  sub_5C60(&qword_1606B0, &qword_1606A0, &qword_128178);

  sub_1237CC();
  v24 = sub_1237AC();
  (*(v5 + 8))(v8, v4);
  v29 = v24;
  sub_5AE8(&qword_1606B8, &qword_128188);
  sub_5C60(&qword_1606C0, &qword_1606B8, &qword_128188);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v20, &qword_1606A0, &qword_128178);
}

uint64_t sub_62EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a3;
  v4 = sub_5AE8(&qword_15FB68, &unk_1278E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_5AE8(&qword_160648, &qword_128130);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_5AE8(&qword_160640, &qword_128128);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  sub_2F488(v3 + 16, &v26 - v19);
  sub_E344(v26, &v20[*(v14 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v10 + 16))(v13, v27, v9);
  v21 = sub_5AE8(&qword_160658, &unk_128140);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v20, v18, &qword_160640, &qword_128128);
  sub_5C60(&unk_160660, &qword_160640, &qword_128128);

  sub_1237CC();
  v24 = sub_1237AC();
  (*(v5 + 8))(v8, v4);
  v29 = v24;
  sub_5AE8(&qword_160680, &qword_128160);
  sub_5C60(&qword_160688, &qword_160680, &qword_128160);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v20, &qword_160640, &qword_128128);
}

uint64_t sub_63260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a3;
  v4 = sub_5AE8(&qword_160150, &unk_128210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_5AE8(&unk_160770, &qword_127E08);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_5AE8(&unk_160780, &qword_127E38);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  sub_2F488(v3 + 16, &v26 - v19);
  sub_E344(v26, &v20[*(v14 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v10 + 16))(v13, v27, v9);
  v21 = sub_5AE8(&qword_160158, &unk_128220);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v20, v18, &unk_160780, &qword_127E38);
  sub_5C60(&unk_160790, &unk_160780, &qword_127E38);

  sub_1237CC();
  v24 = sub_1237AC();
  (*(v5 + 8))(v8, v4);
  v29 = v24;
  sub_5AE8(&qword_160160, &qword_127E40);
  sub_5C60(&unk_1607A0, &qword_160160, &qword_127E40);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v20, &unk_160780, &qword_127E38);
}

uint64_t sub_635D0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v24[0] = sub_5AE8(&qword_160640, &qword_128128);
  v4 = *(*(v24[0] - 8) + 64);
  v5 = __chkstk_darwin(v24[0]);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v24 - v8;
  v10 = sub_5AE8(&qword_160648, &qword_128130);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v24 - v16;
  sub_2F488(v2 + 16, v26);
  sub_12568C();
  sub_12566C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_1233AC();
  sub_2F488(v26, v25);
  *(swift_allocObject() + 16) = a1 & 1;
  sub_64688();
  sub_12331C();

  sub_12339C();
  sub_646DC(v25);
  sub_5BB0(v26);
  sub_2F488(v2 + 16, v9);
  v18 = *(v24[0] + 36);
  v19 = sub_12532C();
  (*(*(v19 - 8) + 56))(&v9[v18], 1, 1, v19);
  (*(v11 + 16))(v15, v17, v10);
  v20 = sub_5AE8(&qword_160658, &unk_128140);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_12340C();
  sub_E344(v9, v7, &qword_160640, &qword_128128);
  sub_5C60(&unk_160660, &qword_160640, &qword_128128);
  sub_1237CC();
  sub_5CA8(v9, &qword_160640, &qword_128128);
  return (*(v11 + 8))(v17, v10);
}

uint64_t sub_63980()
{
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v0 = sub_125ABC();
  sub_5B30(v0, qword_1603E0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "TimerFlowFactory: making recreateDeletedTimerFlow.", v3, 2u);
  }

  v4 = sub_12587C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_12586C();
  v8 = [objc_allocWithZone(MTTimerManager) init];
  v9 = type metadata accessor for RecreateDeletedTimerFlow();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  sub_10EFA0(v7, v8, v12);
  sub_647DC(&qword_160638, type metadata accessor for RecreateDeletedTimerFlow);
  sub_12342C();

  sub_1234AC();
}

uint64_t sub_63B34()
{
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v0 = sub_125ABC();
  sub_5B30(v0, qword_1603E0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "TimerFlowFactory: making undoCreateTimerFlow", v3, 2u);
  }

  v4 = sub_12587C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_12586C();
  v8 = [objc_allocWithZone(MTTimerManager) init];
  TimerFlow = type metadata accessor for UndoCreateTimerFlow();
  v10 = *(TimerFlow + 48);
  v11 = *(TimerFlow + 52);
  v12 = swift_allocObject();
  sub_FC520(v7, v8, v12);
  sub_647DC(&qword_160630, type metadata accessor for UndoCreateTimerFlow);
  sub_12342C();

  sub_1234AC();
}

uint64_t sub_63CE8()
{
  v1 = v0;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_1603E0);
  v3 = sub_125AAC();
  v4 = sub_125DFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "TimerFlowFactory: making undoTimerChangeStateFlow", v5, 2u);
  }

  sub_2F488(v1 + 16, v18);
  v6 = sub_12587C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_12586C();
  v10 = [objc_allocWithZone(MTTimerManager) init];
  sub_2F488(v18, v17);
  v11 = type metadata accessor for UndoTimerChangeStateFlow();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = sub_7B870(v9, v10, v17, v14);
  sub_5BB0(v18);
  v18[0] = v15;
  sub_647DC(&qword_160628, type metadata accessor for UndoTimerChangeStateFlow);
  sub_12342C();

  sub_1234AC();
}

uint64_t sub_63EEC(const char *a1)
{
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_1603E0);
  v3 = sub_125AAC();
  v4 = sub_125DFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, a1, v5, 2u);
  }

  v6 = sub_1231BC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  sub_1231CC();
  sub_12342C();

  sub_1234AC();
}

uint64_t sub_64054(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_56300(a1, a2 + 16);
}

uint64_t sub_640F4()
{
  sub_5BB0((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_64150()
{
  result = qword_160520;
  if (!qword_160520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160520);
  }

  return result;
}

unint64_t sub_641A4()
{
  result = qword_160570;
  if (!qword_160570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160570);
  }

  return result;
}

void *sub_64210(uint64_t a1)
{
  v2 = sub_12305C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_5AE8(&qword_160598, &qword_128108);
    v10 = sub_125FCC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_647DC(&qword_1605A0, &type metadata accessor for Calendar.Component);
      v18 = sub_125B6C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_647DC(&qword_1605A8, &type metadata accessor for Calendar.Component);
          v25 = sub_125B7C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_64530(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_5D08;

  return sub_64054(a1, v1);
}

uint64_t sub_645DC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_648C4;

  return sub_6606C(a1, a2, v6);
}

unint64_t sub_64688()
{
  result = qword_160650;
  if (!qword_160650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160650);
  }

  return result;
}

uint64_t sub_64730(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23934;

  return sub_6606C(a1, a2, v6);
}

uint64_t sub_647DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_64824(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_503C;

  return sub_60BF4(a1, v1);
}

id sub_648C8(unint64_t a1, int a2)
{
  v2 = a1;
  isa = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_46:
    v4 = sub_1260FC();
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    if (qword_15EE50 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_1607E0);

    v6 = sub_125AAC();
    v7 = sub_125DDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if (isa)
      {
        v9 = sub_1260FC();
      }

      else
      {
        v9 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_0, v6, v7, "Converting [SiriTimer] to [STTimerShowTimerAndPerformAction]: %ld timers", v8, 0xCu);
    }

    else
    {
    }

    v15 = 0;
    v39 = v2 & 0xC000000000000001;
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
    v17 = _swiftEmptyArrayStorage;
    v38 = v2;
    do
    {
      if (v39)
      {
        v19 = sub_125FFC();
      }

      else
      {
        if (v15 >= *(v16 + 16))
        {
          goto LABEL_44;
        }

        v19 = *(v2 + 8 * v15 + 32);
      }

      isa = v19;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v42 = v19;
      sub_64E98(&v42, a2, v41);

      v21 = v41[0];
      if (v41[0])
      {
        v22 = v41[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_CDBA0(0, v17[2] + 1, 1, v17);
        }

        v24 = v17[2];
        v23 = v17[3];
        isa = (v24 + 1);
        if (v24 >= v23 >> 1)
        {
          v17 = sub_CDBA0((v23 > 1), v24 + 1, 1, v17);
        }

        v17[2] = isa;
        v18 = &v17[2 * v24];
        v18[4] = v21;
        v18[5] = v22;
        v2 = v38;
      }

      ++v15;
    }

    while (v20 != v4);
    v2 = [objc_allocWithZone(STTimerShowTimerAndPerformAction) init];
    v25 = v17[2];
    if (v25)
    {
      v41[0] = _swiftEmptyArrayStorage;
      sub_12606C();
      v26 = v17 + 4;
      do
      {
        v27 = *v26;
        v26 += 2;
        v28 = v27;
        sub_12603C();
        v29 = *(v41[0] + 16);
        sub_12607C();
        sub_12608C();
        sub_12604C();
        --v25;
      }

      while (v25);
    }

    sub_30B8C(0, &qword_160800, STTimer_ptr);
    isa = sub_125C4C().super.isa;

    v30 = 0;
    v41[0] = _swiftEmptyArrayStorage;
    v31 = v17[2];
LABEL_34:
    v32 = 16 * v30 + 40;
    while (v31 != v30)
    {
      if (v30 >= v17[2])
      {
        goto LABEL_45;
      }

      v33 = *(v17 + v32);
      v32 += 16;
      ++v30;
      if (v33)
      {
        v34 = v33;
        sub_125C3C();
        if (*(&dword_10 + (v41[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v35 = *(&dword_10 + (v41[0] & 0xFFFFFFFFFFFFFF8));
          sub_125C9C();
        }

        sub_125CCC();
        goto LABEL_34;
      }
    }

    sub_30B8C(0, &qword_160808, SASTCommandTemplateAction_ptr);
    v36 = sub_125C4C().super.isa;

    v14 = [v2 _initWithTimers:isa templateActions:v36 timerAction:qword_128280[a2]];
  }

  else
  {
    if (qword_15EE50 != -1)
    {
      swift_once();
    }

    v10 = sub_125ABC();
    sub_5B30(v10, qword_1607E0);
    v11 = sub_125AAC();
    v12 = sub_125DFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "getSTTimerAction received an empty array of timers: returning nil.", v13, 2u);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_64DC0()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1607E0);
  sub_5B30(v0, qword_1607E0);
  return sub_1257AC();
}

uint64_t sub_64E0C()
{
  v0 = sub_124EDC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for TimerBaseCATs_Async();
  sub_124ECC();
  result = sub_124DBC();
  qword_1607F8 = result;
  return result;
}

void sub_64E98(id *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 identifier];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_125B9C();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

LABEL_14:
    if (qword_15EE50 != -1)
    {
      swift_once();
    }

    v29 = sub_125ABC();
    sub_5B30(v29, qword_1607E0);
    v30 = v5;
    v31 = sub_125AAC();
    v32 = sub_125DFC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57[0] = v34;
      *v33 = 136315138;
      v35 = v30;
      v36 = [v35 description];
      v37 = a3;
      v38 = sub_125B9C();
      v40 = v39;

      v41 = v38;
      a3 = v37;
      v42 = sub_8530(v41, v40, v57);

      *(v33 + 4) = v42;
      _os_log_impl(&dword_0, v31, v32, "Timer ID was nil! %s", v33, 0xCu);
      sub_5BB0(v34);
    }

    goto LABEL_19;
  }

  sub_30B8C(0, &qword_160800, STTimer_ptr);
  v12 = sub_65448(v5);
  if (!v12)
  {

LABEL_19:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v13 = v12;
  if (qword_15EE50 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_1607E0);
  v15 = v13;
  v16 = sub_125AAC();
  v17 = sub_125DFC();

  v56 = v8;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57[0] = v54;
    *v18 = 136315138;
    v19 = v15;
    v20 = a2;
    v21 = [v19 description];
    v53 = v17;
    v22 = a3;
    v23 = sub_125B9C();
    v55 = v13;
    v25 = v24;

    a2 = v20;
    v26 = v23;
    a3 = v22;
    v27 = sub_8530(v26, v25, v57);
    v13 = v55;

    *(v18 + 4) = v27;
    _os_log_impl(&dword_0, v16, v53, "STTimer: %s", v18, 0xCu);
    sub_5BB0(v54);
  }

  if (sub_B6264(a2) == 0x6E776F6E6B6E75 && v28 == 0xE700000000000000)
  {

LABEL_22:

    *a3 = v13;
    a3[1] = 0;
    return;
  }

  v43 = sub_1261BC();

  if ((v43 & 1) != 0 || a2 > 0x12u || ((1 << a2) & 0x611A4) == 0)
  {
    goto LABEL_22;
  }

  v44 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  sub_5AE8(&qword_160810, &unk_127420);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_126EB0;
  v46 = sub_DE3C(a2, v56, v10);
  v47 = objc_opt_self();
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v48 = v13;
  sub_23B08(v57, v57[3]);
  v49 = sub_12360C();
  v50 = [v47 runSiriKitExecutorCommandWithContext:v49 payload:v46];

  sub_5BB0(v57);
  v51 = [v47 wrapCommandInStartLocalRequest:v50];

  *(v45 + 32) = v51;
  sub_5AE8(&qword_160818, &qword_128278);
  isa = sub_125C4C().super.isa;

  [v44 setCommands:isa];

  *a3 = v48;
  a3[1] = v44;
}

id sub_65448(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_125B9C();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = [a1 duration];
      if (v8)
      {
        v9 = v8;
        v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v10 setIdentifier:v3];

        v11 = [a1 remainingTime];
        [v10 setValue:v11];

        return v10;
      }
    }
  }

  if (qword_15EE50 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_1607E0);
  v14 = a1;
  v15 = sub_125AAC();
  v16 = sub_125DFC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    v19 = v14;
    v20 = [v19 description];
    v21 = sub_125B9C();
    v23 = v22;

    v24 = sub_8530(v21, v23, &v25);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_0, v15, v16, "STTimer(siriTimer:) Timer ID or duration was nil! %s", v17, 0xCu);
    sub_5BB0(v18);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_656CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 200) = a2;
  *(v4 + 16) = a1;
  v5 = sub_1237EC();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = sub_12397C();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v11 = sub_1239AC();
  *(v4 + 96) = v11;
  v12 = *(v11 - 8);
  *(v4 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_65864, 0, 0);
}

uint64_t sub_65864()
{
  if (qword_15EE58 != -1)
  {
    swift_once();
  }

  v0[16] = qword_1607F8;
  v1 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v5 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_6596C;
  v3 = v0[11];

  return v5(v3, 0xD000000000000018, 0x800000000012D3D0, &_swiftEmptyArrayStorage);
}

uint64_t sub_6596C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_65C4C;
  }

  else
  {
    v3 = sub_65A80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_65A80()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_12396C();
  v5 = *(v3 + 8);
  v0[19] = v5;
  v0[20] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (*(v4 + 16))
  {
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[13];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    (*(v8 + 16))(v6, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    sub_12399C();
    (*(v8 + 8))(v6, v7);
    v12 = sub_1237DC();
    v14 = v13;
    (*(v10 + 8))(v9, v11);
  }

  else
  {

    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v0[21] = v12;
  v0[22] = v14;
  v15 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v20 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v16 = swift_task_alloc();
  v0[23] = v16;
  *v16 = v0;
  v16[1] = sub_65CE8;
  v17 = v0[16];
  v18 = v0[10];

  return v20(v18, 0xD000000000000017, 0x800000000012D3F0, &_swiftEmptyArrayStorage);
}

uint64_t sub_65C4C()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_65CE8()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_65FC8;
  }

  else
  {
    v3 = sub_65DFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_65DFC()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = sub_12396C();
  v2(v3, v4);
  if (*(v5 + 16))
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 96);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    (*(v7 + 16))(v6, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v8);

    sub_12399C();
    (*(v7 + 8))(v6, v8);
    sub_1237DC();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
  }

  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v21 = *(v0 + 88);
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);
  sub_B6264(*(v0 + 200));

  sub_12539C();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_65FC8()
{
  v1 = v0[22];

  v2 = v0[24];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_6606C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return _swift_task_switch(sub_66090, 0, 0);
}

uint64_t sub_66090()
{
  v1 = *(v0 + 32);
  sub_12565C();
  v2 = sub_12567C();
  if (v2 == sub_12567C())
  {
    v3 = sub_12546C();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    *(v0 + 16) = sub_12545C();
    sub_664AC();
    v6 = sub_12342C();

    v7 = *(v0 + 8);

    return v7(v6);
  }

  else
  {
    v9 = [*(v0 + 32) matchedTimers];
    if (v9)
    {
      v10 = v9;
      sub_1257EC();
      v11 = sub_125C6C();
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    v12 = [*(v0 + 32) unmatchedTimers];
    if (v12)
    {
      v13 = v12;
      sub_1257EC();
      v14 = sub_125C6C();
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    v15 = [*(v0 + 32) remoteTimers];
    if (v15)
    {
      v16 = v15;
      sub_1257EC();
      v17 = sub_125C6C();
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = *(v0 + 64);
    v19 = *(v0 + 24);
    _s17ResultSetProviderCMa();
    swift_allocObject();
    *(v0 + 40) = sub_F6F8(v19, v18, v11, v14, v17);
    v20 = swift_task_alloc();
    *(v0 + 48) = v20;
    *v20 = v0;
    v20[1] = sub_662F0;

    return sub_FEE0();
  }
}

uint64_t sub_662F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_66448, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_66448()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

unint64_t sub_664AC()
{
  result = qword_1603C8;
  if (!qword_1603C8)
  {
    sub_12546C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1603C8);
  }

  return result;
}

char *UndoTimerChangeStateFlow.__allocating_init(deviceState:)(uint64_t *a1)
{
  v2 = sub_12587C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_12586C();
  v6 = [objc_allocWithZone(MTTimerManager) init];
  sub_2F488(a1, v13);
  v7 = type metadata accessor for UndoTimerChangeStateFlow();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_7B870(v5, v6, v13, v10);
  sub_5BB0(a1);
  return v11;
}

uint64_t type metadata accessor for UndoTimerChangeStateFlow()
{
  result = qword_1608A0;
  if (!qword_1608A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_66600()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160820);
  sub_5B30(v0, qword_160820);
  return sub_1257AC();
}

uint64_t sub_6669C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_5BFC(v6, a3);
  v7 = sub_5B30(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t UndoTimerChangeStateFlow.on(input:)()
{
  v0 = sub_5AE8(&qword_160838, &qword_128330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v91 = &v83 - v2;
  v3 = sub_1252CC();
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = *(v93 + 64);
  __chkstk_darwin(v3);
  v92 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1252AC();
  v6 = *(v97 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v97);
  v96 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v83 - v11;
  __chkstk_darwin(v10);
  v14 = &v83 - v13;
  v15 = sub_123D1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_123D3C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  if ((*(v21 + 88))(v24, v20) != enum case for Parse.directInvocation(_:))
  {
    (*(v21 + 8))(v24, v20);
    return 0;
  }

  (*(v21 + 96))(v24, v20);
  (*(v16 + 32))(v19, v24, v15);
  v25 = sub_123D0C();
  v26 = v19;
  if (!v25)
  {
    (*(v16 + 8))(v19, v15);
    return 0;
  }

  v27 = v25;
  v89 = v26;
  v90 = v15;
  v28 = v6;
  v29 = *(v6 + 104);
  v30 = v97;
  v87 = v29;
  v29(v14, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v97);
  v31 = sub_12529C();
  v33 = v32;
  v34 = *(v28 + 8);
  v88 = v28 + 8;
  v34(v14, v30);
  if (!*(v27 + 16))
  {
    goto LABEL_11;
  }

  v35 = sub_8AD8(v31, v33);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_12:

    (*(v16 + 8))(v89, v90);
    return 0;
  }

  sub_8B50(*(v27 + 56) + 32 * v35, v100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v38 = sub_B66D0();
  if (v38 == 19)
  {
    goto LABEL_7;
  }

  v86 = v38;
  v87(v12, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v30);
  v40 = sub_12529C();
  v42 = v41;
  v34(v12, v30);
  if (!*(v27 + 16))
  {
LABEL_11:

    goto LABEL_12;
  }

  v43 = sub_8AD8(v40, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_8B50(*(v27 + 56) + 32 * v43, v100);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    (*(v16 + 8))(v89, v90);
LABEL_8:

    return 0;
  }

  v46 = v99;
  v85 = v98;
  if (sub_B6264(v86) == 0x6573756170 && v47 == 0xE500000000000000)
  {
  }

  else
  {
    v48 = sub_1261BC();

    if ((v48 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v49 = v96;
  v87(v96, enum case for DirectInvocationUtils.Timer.UserInfoKey.duration(_:), v30);
  v50 = sub_12529C();
  v52 = v51;
  v34(v49, v30);
  if (!*(v27 + 16))
  {

    v68 = v89;
LABEL_31:

    (*(v16 + 8))(v68, v90);
    return 0;
  }

  v53 = v46;
  v54 = sub_8AD8(v50, v52);
  v56 = v55;

  if ((v56 & 1) == 0)
  {

    v68 = v89;
    goto LABEL_31;
  }

  sub_8B50(*(v27 + 56) + 32 * v54, v100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v16 + 8))(v89, v90);
LABEL_47:

    goto LABEL_8;
  }

  v57 = v95 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_remainingTime;
  *v57 = v98;
  *(v57 + 8) = 0;
  v46 = v53;
LABEL_26:
  v84 = v46;
  v58 = v89;
  v59 = sub_123CFC();
  v61 = v60;
  v62 = v92;
  v63 = v93;
  v64 = v94;
  (*(v93 + 104))(v92, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v94);
  v65 = sub_1252BC();
  v67 = v66;
  (*(v63 + 8))(v62, v64);
  if (v59 == v65 && v61 == v67)
  {
  }

  else
  {
    v69 = sub_1261BC();

    if ((v69 & 1) == 0)
    {
LABEL_46:
      (*(v16 + 8))(v58, v90);
      goto LABEL_47;
    }
  }

  if (sub_B6264(v86) != 0x6573756170 || v70 != 0xE500000000000000)
  {
    v71 = sub_1261BC();

    if (v71)
    {
      goto LABEL_37;
    }

    if (sub_B6264(v86) != 0x656D75736572 || v81 != 0xE600000000000000)
    {
      v82 = sub_1261BC();

      if (v82)
      {
        goto LABEL_37;
      }

      goto LABEL_46;
    }
  }

LABEL_37:
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v72 = sub_125ABC();
  sub_5B30(v72, qword_160820);
  v73 = sub_125AAC();
  v74 = sub_125DFC();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_0, v73, v74, "UndoTimerChangeStateFlow: accepting input.", v75, 2u);
  }

  v76 = v95;
  v77 = *(v95 + 128);
  v78 = v84;
  *(v95 + 120) = v85;
  *(v76 + 128) = v78;

  v79 = v91;
  sub_F58F4(v27, v91);

  (*(v16 + 8))(v58, v90);
  v80 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_followupPluginAction;
  swift_beginAccess();
  sub_7CC5C(v79, v76 + v80, &qword_160838, &qword_128330);
  swift_endAccess();
  *(v76 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_operation) = v86;
  return 1;
}

uint64_t UndoTimerChangeStateFlow.execute(completion:)()
{
  type metadata accessor for UndoTimerChangeStateFlow();
  sub_7D14C(&qword_160628, type metadata accessor for UndoTimerChangeStateFlow);
  return sub_12344C();
}

uint64_t UndoTimerChangeStateFlow.execute()(uint64_t a1)
{
  v2[146] = v1;
  v2[145] = a1;
  v3 = *(*(sub_5AE8(&qword_160838, &qword_128330) - 8) + 64) + 15;
  v2[147] = swift_task_alloc();
  v4 = sub_12372C();
  v2[148] = v4;
  v5 = *(v4 - 8);
  v2[149] = v5;
  v6 = *(v5 + 64) + 15;
  v2[150] = swift_task_alloc();
  v7 = type metadata accessor for ResumeTimerHandledOnWatchParameters(0);
  v2[151] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[152] = swift_task_alloc();
  v9 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v2[153] = swift_task_alloc();
  v10 = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  v2[154] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[155] = swift_task_alloc();
  v12 = sub_123B3C();
  v2[156] = v12;
  v13 = *(v12 - 8);
  v2[157] = v13;
  v14 = *(v13 + 64) + 15;
  v2[158] = swift_task_alloc();
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v15 = sub_12503C();
  v2[162] = v15;
  v16 = *(v15 - 8);
  v2[163] = v16;
  v17 = *(v16 + 64) + 15;
  v2[164] = swift_task_alloc();
  v2[165] = swift_task_alloc();
  v18 = sub_125ABC();
  v2[166] = v18;
  v19 = *(v18 - 8);
  v2[167] = v19;
  v20 = *(v19 + 64) + 15;
  v2[168] = swift_task_alloc();
  v21 = sub_124FFC();
  v2[169] = v21;
  v22 = *(v21 - 8);
  v2[170] = v22;
  v23 = *(v22 + 64) + 15;
  v2[171] = swift_task_alloc();
  v24 = sub_12501C();
  v2[172] = v24;
  v25 = *(v24 - 8);
  v2[173] = v25;
  v26 = *(v25 + 64) + 15;
  v2[174] = swift_task_alloc();
  v2[175] = swift_task_alloc();
  v27 = sub_12368C();
  v2[176] = v27;
  v28 = *(v27 - 8);
  v2[177] = v28;
  v29 = *(v28 + 64) + 15;
  v2[178] = swift_task_alloc();
  v2[179] = swift_task_alloc();
  v2[180] = swift_task_alloc();
  v30 = sub_12392C();
  v2[181] = v30;
  v31 = *(v30 - 8);
  v2[182] = v31;
  v32 = *(v31 + 64) + 15;
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  v33 = sub_124FCC();
  v2[185] = v33;
  v34 = *(v33 - 8);
  v2[186] = v34;
  v35 = *(v34 + 64) + 15;
  v2[187] = swift_task_alloc();
  v36 = sub_122EDC();
  v2[188] = v36;
  v37 = *(v36 - 8);
  v2[189] = v37;
  v38 = *(v37 + 64) + 15;
  v2[190] = swift_task_alloc();
  v2[191] = swift_task_alloc();
  v39 = sub_122F6C();
  v2[192] = v39;
  v40 = *(v39 - 8);
  v2[193] = v40;
  v41 = *(v40 + 64) + 15;
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  v42 = sub_1250BC();
  v2[196] = v42;
  v43 = *(v42 - 8);
  v2[197] = v43;
  v44 = *(v43 + 64) + 15;
  v2[198] = swift_task_alloc();
  v45 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v2[199] = swift_task_alloc();
  v46 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v2[200] = swift_task_alloc();
  v47 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v2[201] = swift_task_alloc();
  v48 = sub_12370C();
  v2[202] = v48;
  v49 = *(v48 - 8);
  v2[203] = v49;
  v50 = *(v49 + 64) + 15;
  v2[204] = swift_task_alloc();

  return _swift_task_switch(sub_678A8, 0, 0);
}

uint64_t sub_678A8()
{
  (*(v0[203] + 104))(v0[204], enum case for ActivityType.correction(_:), v0[202]);
  if (qword_15EE68 != -1)
  {
    swift_once();
  }

  v1 = v0[201];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_1675A8);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15EE70 != -1)
  {
    swift_once();
  }

  v4 = v0[203];
  v151 = v0[204];
  v153 = v0[202];
  v5 = v0[201];
  v6 = v0[200];
  v7 = v0[199];
  v8 = v0[186];
  v157 = v0;
  v9 = v0[185];
  v10 = v0[146];
  v11 = sub_124FEC();
  v12 = sub_5B30(v11, qword_1675C0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v6, v12, v11);
  (*(v13 + 56))(v6, 0, 1, v11);
  v14 = *(v8 + 56);
  v0[205] = v14;
  v0[206] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15 = v9;
  v16 = v0;
  v14(v7, 1, 1, v15);
  sub_124FBC();
  sub_5CA8(v7, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v6, &qword_15F6F0, &unk_128340);
  sub_5CA8(v5, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v151, v153);
  v0[207] = *(v10 + 120);
  v17 = *(v10 + 128);
  v0[208] = v17;
  if (!v17)
  {
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v21 = sub_125AAC();
    v22 = sub_125DEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "UndoTimerChangeStateFlow: No timer id to operate on! This should never happen.", v23, 2u);
    }

    v24 = v0[187];
    v25 = v0[186];
    v26 = v16[185];

    (*(v25 + 104))(v24, enum case for SiriTimeEventSender.ReasonDescription.noTimerToUndo(_:), v26);
    v27 = swift_task_alloc();
    v16[320] = v27;
    *v27 = v16;
    v28 = sub_74530;
    goto LABEL_21;
  }

  v18 = v0[146];
  v19 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_operation;
  if (sub_B6264(*(v18 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_operation)) == 0x6573756170 && v20 == 0xE500000000000000)
  {
  }

  else
  {
    v29 = sub_1261BC();

    if ((v29 & 1) == 0)
    {
      if (sub_B6264(*(v18 + v19)) == 0x656D75736572 && v59 == 0xE600000000000000)
      {
      }

      else
      {
        v65 = sub_1261BC();

        if ((v65 & 1) == 0)
        {

          v100 = v0[146];
          v101 = v0[145];
          sub_12383C();
          sub_7C4BC(v100);
          v102 = v0[204];
          v103 = v0[201];
          v104 = v0[200];
          v105 = v0[199];
          v106 = v0[198];
          v107 = v0[195];
          v108 = v0[194];
          v109 = v0[191];
          v110 = v0[190];
          v111 = v0[187];
          v132 = v0[184];
          v133 = v0[183];
          v134 = v0[180];
          v135 = v0[179];
          v136 = v0[178];
          v137 = v0[175];
          v138 = v0[174];
          v139 = v0[171];
          v140 = v0[168];
          v141 = v0[165];
          v142 = v0[164];
          v143 = v0[161];
          v144 = v0[160];
          v145 = v0[159];
          v146 = v0[158];
          v148 = v0[155];
          v150 = v0[153];
          v152 = v0[152];
          v154 = v0[150];
          v156 = v0[147];

          v112 = v0[1];

          return v112();
        }
      }

      v66 = v0[198];
      v67 = v0[197];
      v68 = v16[196];
      sub_1250AC();
      v69 = sub_12504C();
      v70 = *(v67 + 8);
      v16[268] = v70;
      v16[269] = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v70(v66, v68);
      if (v69)
      {
        v71 = *(v16[146] + 112);
        v16[270] = v71;
        v71;
        v72 = swift_task_alloc();
        v16[271] = v72;
        *v72 = v16;
        v72[1] = sub_6E550;

        return sub_CE068();
      }

      sub_2F488(v16[146] + 72, (v16 + 97));
      v60 = v16[100];
      v61 = v16[101];
      sub_23B08(v16 + 97, v60);
      v73 = async function pointer to dispatch thunk of SiriTimerManagerIOS.currentTimer()[1];
      v63 = swift_task_alloc();
      v16[280] = v63;
      *v63 = v16;
      v64 = sub_6F700;
LABEL_40:
      v63[1] = v64;

      return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v60, v61);
    }
  }

  v30 = v0[146] + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_remainingTime;
  if (*(v30 + 8))
  {

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v31 = sub_125AAC();
    v32 = sub_125DEC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "UndoTimerChangeStateFlow: undoing a resume timer, need to know the remaining time to go back to.", v33, 2u);
    }

    v34 = v0[187];
    v35 = v0[186];
    v36 = v16[185];

    (*(v35 + 104))(v34, enum case for SiriTimeEventSender.ReasonDescription.timerMissingInputRemainingTime(_:), v36);
    v27 = swift_task_alloc();
    v16[267] = v27;
    *v27 = v16;
    v28 = sub_6E3CC;
LABEL_21:
    v27[1] = v28;
    v37 = v16[187];
    v38 = v16[146];
    v39 = v16[145];

    return sub_77DEC(v39, v37);
  }

  v41 = v0[198];
  v42 = v0[197];
  v43 = v16[196];
  v16[209] = *v30;
  sub_1250AC();
  v44 = sub_12504C();
  v45 = *(v42 + 8);
  v16[210] = v45;
  v16[211] = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v41, v43);
  if (!v44)
  {
    sub_2F488(v16[146] + 72, (v16 + 92));
    v60 = v16[95];
    v61 = v16[96];
    sub_23B08(v16 + 92, v60);
    v62 = async function pointer to dispatch thunk of SiriTimerManagerIOS.currentTimer()[1];
    v63 = swift_task_alloc();
    v16[225] = v63;
    *v63 = v16;
    v64 = sub_6A2E0;
    goto LABEL_40;
  }

  v46 = *(v16[146] + 112);
  v16[212] = v46;
  v47 = v46;
  v48 = [v47 timers];
  v16[213] = v48;
  if (v48)
  {
    v49 = v48;
    v50 = swift_task_alloc();
    v16[214] = v50;
    *(v50 + 16) = v49;
    v51 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v52 = swift_task_alloc();
    v16[215] = v52;
    v53 = sub_5AE8(&qword_160868, qword_12B5A0);
    *v52 = v16;
    v52[1] = sub_68AD4;
    v54 = v53;
    v55 = sub_7CDC0;
    v56 = v16 + 142;
    v57 = 0x800000000012D4F0;
    v58 = 0xD000000000000010;
LABEL_27:

    return withCheckedContinuation<A>(isolation:function:_:)(v56, 0, 0, v58, v57, v55, v50, v54);
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v74 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    if (v74)
    {
      goto LABEL_45;
    }

LABEL_75:
    v125 = v16[208];

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v16[166], qword_160820);
    v126 = sub_125AAC();
    v127 = sub_125DEC();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_0, v126, v127, "UndoTimerChangeStateFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timer to change.", v128, 2u);
    }

    v129 = swift_task_alloc();
    v16[224] = v129;
    *v129 = v16;
    v129[1] = sub_69F80;
    v130 = v16[146];
    v131 = v16[145];

    return sub_785AC(v131);
  }

LABEL_74:
  v74 = sub_1260FC();
  if (!v74)
  {
    goto LABEL_75;
  }

LABEL_45:
  v75 = 0;
  v149 = (v16[193] + 8);
  v147 = (v16[189] + 8);
  while (1)
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v76 = sub_125FFC();
    }

    else
    {
      if (v75 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_73;
      }

      v76 = _swiftEmptyArrayStorage[v75 + 4];
    }

    v16[216] = v76;
    v77 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v78 = v16[208];
    v79 = v16[207];
    v80 = v16[195];
    v81 = v16[192];
    v155 = v76;
    v82 = [v76 timerID];
    sub_122F4C();

    v83 = sub_122F3C();
    v85 = v84;
    (*v149)(v80, v81);
    if (v83 == v79 && v78 == v85)
    {
      break;
    }

    v16 = v157;
    v86 = v157[208];
    v87 = v157[207];
    v88 = sub_1261BC();

    if (v88)
    {
      goto LABEL_63;
    }

    v89 = v157[208];
    v90 = v157[207];
    v91 = v157[191];
    v92 = v157[188];
    v93 = [v155 timerURL];
    sub_122EBC();

    v94 = sub_122E9C();
    v96 = v95;
    (*v147)(v91, v92);
    if (v94 == v90 && v89 == v96)
    {
      break;
    }

    v16 = v157;
    v97 = v157[208];
    v98 = v157[207];
    v99 = sub_1261BC();

    if (v99)
    {
      goto LABEL_63;
    }

    ++v75;
    if (v77 == v74)
    {
      goto LABEL_75;
    }
  }

  v16 = v157;

LABEL_63:

  if ([v155 state] != &dword_0 + 2)
  {
    v122 = v16[146];
    v50 = swift_task_alloc();
    v16[219] = v50;
    *(v50 + 16) = v155;
    *(v50 + 24) = v122;
    v123 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v124 = swift_task_alloc();
    v16[220] = v124;
    *v124 = v16;
    v124[1] = sub_6939C;
    v54 = &type metadata for Bool;
    v55 = sub_7CDB8;
    v56 = (v16 + 2571);
    v58 = 0xD000000000000017;
    v57 = 0x800000000012D4D0;
    goto LABEL_27;
  }

  v113 = v16[208];

  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  sub_5B30(v16[166], qword_160820);
  v114 = sub_125AAC();
  v115 = sub_125DFC();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&dword_0, v114, v115, "UndoTimerChangeStateFlow: Attempting to pause a paused timer: returning .failureTimerAlreadyPaused", v116, 2u);
  }

  sub_1257EC();
  v117 = v155;
  v118 = sub_1257BC();
  v16[217] = v118;
  v119 = swift_task_alloc();
  v16[218] = v119;
  *v119 = v16;
  v119[1] = sub_6925C;
  v120 = v16[146];
  v121 = v16[145];

  return sub_795BC(v121, v118);
}

uint64_t sub_68AD4()
{
  v1 = *(*v0 + 1720);
  v2 = *(*v0 + 1712);
  v4 = *v0;

  return _swift_task_switch(sub_68C18, 0, 0);
}

uint64_t sub_68C18()
{
  v1 = *(v0 + 1704);

  v2 = *(v0 + 1136);
  if (!(v2 >> 62))
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_32:
    v44 = *(v0 + 1664);

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v45 = sub_125AAC();
    v46 = sub_125DEC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "UndoTimerChangeStateFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timer to change.", v47, 2u);
    }

    v48 = swift_task_alloc();
    *(v0 + 1792) = v48;
    *v48 = v0;
    v48[1] = sub_69F80;
    v49 = *(v0 + 1168);
    v50 = *(v0 + 1160);

    return sub_785AC(v50);
  }

LABEL_31:
  v3 = sub_1260FC();
  if (!v3)
  {
    goto LABEL_32;
  }

LABEL_3:
  v4 = 0;
  v55 = v2 & 0xFFFFFFFFFFFFFF8;
  v56 = v2 & 0xC000000000000001;
  v52 = (*(v0 + 1512) + 8);
  v53 = (*(v0 + 1544) + 8);
  v54 = v2;
  v51 = v3;
  while (1)
  {
    if (v56)
    {
      v5 = sub_125FFC();
    }

    else
    {
      if (v4 >= *(v55 + 16))
      {
        goto LABEL_30;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    *(v0 + 1728) = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = *(v0 + 1664);
    v9 = *(v0 + 1656);
    v10 = *(v0 + 1560);
    v11 = *(v0 + 1536);
    v12 = [v5 timerID];
    sub_122F4C();

    v13 = sub_122F3C();
    v15 = v14;
    (*v53)(v10, v11);
    if (v13 == v9 && v8 == v15)
    {
      break;
    }

    v16 = *(v0 + 1664);
    v17 = *(v0 + 1656);
    v18 = sub_1261BC();

    if (v18)
    {
      goto LABEL_18;
    }

    v19 = *(v0 + 1664);
    v20 = *(v0 + 1656);
    v21 = *(v0 + 1528);
    v22 = *(v0 + 1504);
    v23 = [v6 timerURL];
    sub_122EBC();

    v24 = sub_122E9C();
    v26 = v25;
    (*v52)(v21, v22);
    if (v24 == v20 && v19 == v26)
    {
      break;
    }

    v27 = *(v0 + 1664);
    v28 = *(v0 + 1656);
    v29 = sub_1261BC();

    if (v29)
    {
      goto LABEL_18;
    }

    ++v4;
    v2 = v54;
    if (v7 == v51)
    {
      goto LABEL_32;
    }
  }

LABEL_18:

  if ([v6 state] == &dword_0 + 2)
  {
    v30 = *(v0 + 1664);

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v31 = sub_125AAC();
    v32 = sub_125DFC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "UndoTimerChangeStateFlow: Attempting to pause a paused timer: returning .failureTimerAlreadyPaused", v33, 2u);
    }

    sub_1257EC();
    v34 = v6;
    v35 = sub_1257BC();
    *(v0 + 1736) = v35;
    v36 = swift_task_alloc();
    *(v0 + 1744) = v36;
    *v36 = v0;
    v36[1] = sub_6925C;
    v37 = *(v0 + 1168);
    v38 = *(v0 + 1160);

    return sub_795BC(v38, v35);
  }

  else
  {
    v40 = *(v0 + 1168);
    v41 = swift_task_alloc();
    *(v0 + 1752) = v41;
    *(v41 + 16) = v6;
    *(v41 + 24) = v40;
    v42 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v43 = swift_task_alloc();
    *(v0 + 1760) = v43;
    *v43 = v0;
    v43[1] = sub_6939C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2571, 0, 0, 0xD000000000000017, 0x800000000012D4D0, sub_7CDB8, v41, &type metadata for Bool);
  }
}

uint64_t sub_6925C()
{
  v1 = *(*v0 + 1744);
  v2 = *(*v0 + 1736);
  v4 = *v0;

  return _swift_task_switch(sub_7D578, 0, 0);
}

uint64_t sub_6939C()
{
  v1 = *(*v0 + 1760);
  v2 = *(*v0 + 1752);
  v4 = *v0;

  return _swift_task_switch(sub_694E0, 0, 0);
}

uint64_t sub_694E0()
{
  if (*(v0 + 2571) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 1768) = v1;
    *v1 = v0;
    v1[1] = sub_69740;
    v2 = *(v0 + 1728);
    v3 = *(v0 + 1672);
    v4 = *(v0 + 1168);

    return sub_7A674(v2, v3);
  }

  else
  {
    v6 = *(v0 + 1664);

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v7 = sub_125AAC();
    v8 = sub_125DEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "UndoTimerChangeStateFlow: Failed to pause mtTimer", v9, 2u);
    }

    v10 = *(v0 + 1496);
    v11 = *(v0 + 1488);
    v12 = *(v0 + 1480);

    (*(v11 + 104))(v10, enum case for SiriTimeEventSender.ReasonDescription.failedToPauseTimer(_:), v12);
    v13 = swift_task_alloc();
    *(v0 + 1784) = v13;
    *v13 = v0;
    v13[1] = sub_69BB8;
    v14 = *(v0 + 1496);
    v15 = *(v0 + 1168);
    v16 = *(v0 + 1160);

    return sub_77DEC(v16, v14);
  }
}

uint64_t sub_69740(uint64_t a1)
{
  v2 = *(*v1 + 1768);
  v4 = *v1;
  *(*v1 + 1776) = a1;

  return _swift_task_switch(sub_6986C, 0, 0);
}

uint64_t sub_6986C()
{
  if (*(v0 + 1776))
  {

    v1 = *(v0 + 1776);
    *(v0 + 1896) = v1;
    v2 = *(v0 + 1472);
    v3 = *(v0 + 1440);
    v4 = v1;
    *(v0 + 1904) = sub_5AE8(&qword_160810, &unk_127420);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_126EB0;
    *(v5 + 32) = v4;
    v6 = v4;
    sub_FF26C(v5, v2);
    swift_setDeallocating();
    v7 = *(v5 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v0 + 1912) = sub_113D6C(0, 0);
    sub_12361C();
    sub_12573C();
    sub_12572C();
    v8 = *(v0 + 880);
    v9 = *(v0 + 888);
    sub_23B08((v0 + 856), v8);
    v10 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
    v11 = swift_task_alloc();
    *(v0 + 1920) = v11;
    *v11 = v0;
    v11[1] = sub_6B948;
    v12 = *(v0 + 1664);
    v13 = *(v0 + 1656);

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v13, v12, v8, v9);
  }

  else
  {
    v14 = *(v0 + 1664);

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v15 = sub_125AAC();
    v16 = sub_125DEC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "UndoTimerChangeStateFlow: Failed to pause mtTimer", v17, 2u);
    }

    v18 = *(v0 + 1496);
    v19 = *(v0 + 1488);
    v20 = *(v0 + 1480);

    (*(v19 + 104))(v18, enum case for SiriTimeEventSender.ReasonDescription.failedToPauseTimer(_:), v20);
    v21 = swift_task_alloc();
    *(v0 + 1784) = v21;
    *v21 = v0;
    v21[1] = sub_69BB8;
    v22 = *(v0 + 1496);
    v23 = *(v0 + 1168);
    v24 = *(v0 + 1160);

    return sub_77DEC(v24, v22);
  }
}

uint64_t sub_69BB8()
{
  v1 = *(*v0 + 1784);
  v2 = *(*v0 + 1496);
  v3 = *(*v0 + 1488);
  v4 = *(*v0 + 1480);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_69D3C, 0, 0);
}

uint64_t sub_69D3C()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1600);
  v5 = *(v0 + 1592);
  v6 = *(v0 + 1584);
  v7 = *(v0 + 1560);
  v8 = *(v0 + 1552);
  v9 = *(v0 + 1528);
  v10 = *(v0 + 1520);
  v11 = *(v0 + 1496);
  v14 = *(v0 + 1472);
  v15 = *(v0 + 1464);
  v16 = *(v0 + 1440);
  v17 = *(v0 + 1432);
  v18 = *(v0 + 1424);
  v19 = *(v0 + 1400);
  v20 = *(v0 + 1392);
  v21 = *(v0 + 1368);
  v22 = *(v0 + 1344);
  v23 = *(v0 + 1320);
  v24 = *(v0 + 1312);
  v25 = *(v0 + 1288);
  v26 = *(v0 + 1280);
  v27 = *(v0 + 1272);
  v28 = *(v0 + 1264);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1224);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1200);
  v33 = *(v0 + 1176);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_69F80()
{
  v1 = *(*v0 + 1792);
  v3 = *v0;

  return _swift_task_switch(sub_6A0A8, 0, 0);
}

uint64_t sub_6A0A8()
{
  sub_7C4BC(v0[146]);
  v1 = v0[204];
  v2 = v0[201];
  v3 = v0[200];
  v4 = v0[199];
  v5 = v0[198];
  v6 = v0[195];
  v7 = v0[194];
  v8 = v0[191];
  v9 = v0[190];
  v10 = v0[187];
  v13 = v0[184];
  v14 = v0[183];
  v15 = v0[180];
  v16 = v0[179];
  v17 = v0[178];
  v18 = v0[175];
  v19 = v0[174];
  v20 = v0[171];
  v21 = v0[168];
  v22 = v0[165];
  v23 = v0[164];
  v24 = v0[161];
  v25 = v0[160];
  v26 = v0[159];
  v27 = v0[158];
  v28 = v0[155];
  v29 = v0[153];
  v30 = v0[152];
  v31 = v0[150];
  v32 = v0[147];

  v11 = v0[1];

  return v11();
}

uint64_t sub_6A2E0(uint64_t a1)
{
  v2 = *(*v1 + 1800);
  v4 = *v1;
  *(*v1 + 1808) = a1;

  return _swift_task_switch(sub_6A40C, 0, 0);
}

uint64_t sub_6A40C()
{
  v1 = v0[226];
  if (v1)
  {
    sub_5BB0(v0 + 92);
    [v1 state];
    v2 = sub_1258BC();
    if (v2 == sub_1258BC())
    {
      v3 = v0[208];

      if (qword_15EE60 != -1)
      {
        swift_once();
      }

      sub_5B30(v0[166], qword_160820);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_0, v4, v5, "UndoTimerChangeStateFlow: Attempting to pause a paused timer: returning .failureTimerAlreadyPaused", v6, 2u);
      }

      v7 = swift_task_alloc();
      v0[227] = v7;
      *v7 = v0;
      v7[1] = sub_6A6B4;
      v8 = v0[146];
      v9 = v0[145];

      return sub_795BC(v9, v1);
    }
  }

  else
  {
    sub_5BB0(v0 + 92);
  }

  v11 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[228] = v12;
  *v12 = v0;
  v12[1] = sub_6AA20;
  v13 = v0[146];

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2572, 0, 0, 0xD000000000000011, 0x800000000012D450, sub_7CCC4, v13, &type metadata for Bool);
}

uint64_t sub_6A6B4()
{
  v1 = *(*v0 + 1816);
  v3 = *v0;

  return _swift_task_switch(sub_6A7DC, 0, 0);
}

uint64_t sub_6A7DC()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1600);
  v5 = *(v0 + 1592);
  v6 = *(v0 + 1584);
  v7 = *(v0 + 1560);
  v8 = *(v0 + 1552);
  v9 = *(v0 + 1528);
  v10 = *(v0 + 1520);
  v11 = *(v0 + 1496);
  v14 = *(v0 + 1472);
  v15 = *(v0 + 1464);
  v16 = *(v0 + 1440);
  v17 = *(v0 + 1432);
  v18 = *(v0 + 1424);
  v19 = *(v0 + 1400);
  v20 = *(v0 + 1392);
  v21 = *(v0 + 1368);
  v22 = *(v0 + 1344);
  v23 = *(v0 + 1320);
  v24 = *(v0 + 1312);
  v25 = *(v0 + 1288);
  v26 = *(v0 + 1280);
  v27 = *(v0 + 1272);
  v28 = *(v0 + 1264);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1224);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1200);
  v33 = *(v0 + 1176);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_6AA20()
{
  v1 = *(*v0 + 1824);
  v3 = *v0;

  return _swift_task_switch(sub_6AB48, 0, 0);
}

uint64_t sub_6AB48()
{
  if (*(v0 + 2572) == 1)
  {
    v1 = *(v0 + 1672);
    v2 = *(v0 + 1168);
    v3 = swift_task_alloc();
    *(v0 + 1832) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 1840) = v5;
    *v5 = v0;
    v5[1] = sub_6AD48;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2568, 0, 0, 0xD00000000000001DLL, 0x800000000012D4B0, sub_7CD4C, v3, &type metadata for Bool);
  }

  else
  {
    *(v0 + 2573) = 1;
    sub_2F488(*(v0 + 1168) + 72, v0 + 816);
    v6 = *(v0 + 840);
    v7 = *(v0 + 848);
    sub_23B08((v0 + 816), v6);
    v8 = async function pointer to dispatch thunk of SiriTimerManagerIOS.currentTimer()[1];
    v9 = swift_task_alloc();
    *(v0 + 1880) = v9;
    *v9 = v0;
    v9[1] = sub_6B578;

    return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v6, v7);
  }
}

uint64_t sub_6AD48()
{
  v1 = *(*v0 + 1840);
  v2 = *(*v0 + 1832);
  v4 = *v0;

  return _swift_task_switch(sub_6AE8C, 0, 0);
}

uint64_t sub_6AE8C()
{
  if (*(v0 + 2568) == 1)
  {
    sub_2F488(*(v0 + 1168) + 72, v0 + 56);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    sub_23B08((v0 + 56), v1);
    v3 = async function pointer to dispatch thunk of SiriTimerManagerIOS.currentTimer()[1];
    v4 = swift_task_alloc();
    *(v0 + 1848) = v4;
    *v4 = v0;
    v5 = sub_6AFFC;
  }

  else
  {
    *(v0 + 2573) = 1;
    sub_2F488(*(v0 + 1168) + 72, v0 + 816);
    v1 = *(v0 + 840);
    v2 = *(v0 + 848);
    sub_23B08((v0 + 816), v1);
    v6 = async function pointer to dispatch thunk of SiriTimerManagerIOS.currentTimer()[1];
    v4 = swift_task_alloc();
    *(v0 + 1880) = v4;
    *v4 = v0;
    v5 = sub_6B578;
  }

  v4[1] = v5;

  return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v1, v2);
}

uint64_t sub_6AFFC(uint64_t a1)
{
  v2 = *(*v1 + 1848);
  v4 = *v1;
  *(*v1 + 1856) = a1;

  return _swift_task_switch(sub_6B128, 0, 0);
}

uint64_t sub_6B128()
{
  v1 = *(v0 + 1856);
  if (v1)
  {
    v2 = *(v0 + 1168);
    sub_5BB0((v0 + 56));
    v3 = swift_task_alloc();
    *(v0 + 1864) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 1872) = v5;
    *v5 = v0;
    v5[1] = sub_6B328;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2570, 0, 0, 0x6D69546573756170, 0xEE00293A5F287265, sub_7CD58, v3, &type metadata for Bool);
  }

  else
  {
    sub_5BB0((v0 + 56));
    *(v0 + 2573) = 1;
    sub_2F488(*(v0 + 1168) + 72, v0 + 816);
    v6 = *(v0 + 840);
    v7 = *(v0 + 848);
    sub_23B08((v0 + 816), v6);
    v8 = async function pointer to dispatch thunk of SiriTimerManagerIOS.currentTimer()[1];
    v9 = swift_task_alloc();
    *(v0 + 1880) = v9;
    *v9 = v0;
    v9[1] = sub_6B578;

    return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v6, v7);
  }
}

uint64_t sub_6B328()
{
  v1 = *(*v0 + 1872);
  v2 = *(*v0 + 1864);
  v4 = *v0;

  return _swift_task_switch(sub_6B46C, 0, 0);
}

uint64_t sub_6B46C()
{
  v1 = *(v0 + 2570);

  *(v0 + 2573) = (v1 & 1) == 0;
  sub_2F488(*(v0 + 1168) + 72, v0 + 816);
  v2 = *(v0 + 840);
  v3 = *(v0 + 848);
  sub_23B08((v0 + 816), v2);
  v4 = async function pointer to dispatch thunk of SiriTimerManagerIOS.currentTimer()[1];
  v5 = swift_task_alloc();
  *(v0 + 1880) = v5;
  *v5 = v0;
  v5[1] = sub_6B578;

  return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v2, v3);
}

uint64_t sub_6B578(uint64_t a1)
{
  v2 = *(*v1 + 1880);
  v4 = *v1;
  *(*v1 + 1888) = a1;

  return _swift_task_switch(sub_6B6A4, 0, 0);
}

uint64_t sub_6B6A4()
{
  v1 = *(v0 + 1888);
  v2 = *(v0 + 2573);
  sub_5BB0((v0 + 816));
  if ((v2 & 1) != 0 || !v1)
  {
    v16 = *(v0 + 1664);
    v17 = *(v0 + 1496);
    v18 = *(v0 + 1488);
    v19 = *(v0 + 1480);

    (*(v18 + 104))(v17, enum case for SiriTimeEventSender.ReasonDescription.failedToPauseTimer(_:), v19);
    v20 = swift_task_alloc();
    *(v0 + 2128) = v20;
    *v20 = v0;
    v20[1] = sub_6E004;
    v21 = *(v0 + 1496);
    v22 = *(v0 + 1168);
    v23 = *(v0 + 1160);

    return sub_77DEC(v23, v21);
  }

  else
  {
    v3 = *(v0 + 1888);
    *(v0 + 1896) = v3;
    v4 = *(v0 + 1472);
    v5 = *(v0 + 1440);
    v6 = v3;
    *(v0 + 1904) = sub_5AE8(&qword_160810, &unk_127420);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_126EB0;
    *(v7 + 32) = v6;
    v8 = v6;
    sub_FF26C(v7, v4);
    swift_setDeallocating();
    v9 = *(v7 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v0 + 1912) = sub_113D6C(0, 0);
    sub_12361C();
    sub_12573C();
    sub_12572C();
    v10 = *(v0 + 880);
    v11 = *(v0 + 888);
    sub_23B08((v0 + 856), v10);
    v12 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
    v13 = swift_task_alloc();
    *(v0 + 1920) = v13;
    *v13 = v0;
    v13[1] = sub_6B948;
    v14 = *(v0 + 1664);
    v15 = *(v0 + 1656);

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v15, v14, v10, v11);
  }
}

uint64_t sub_6B948(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1920);
  v5 = *(*v2 + 1664);
  v7 = *v2;
  *(v3 + 1928) = a1;
  *(v3 + 1936) = a2;

  return _swift_task_switch(sub_6BA98, 0, 0);
}

uint64_t sub_6BA98()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1352);
  sub_5BB0((v0 + 856));
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v5 = *(v0 + 928);
  sub_23B08((v0 + 896), *(v0 + 920));
  v6 = sub_1235DC();
  *(v0 + 2574) = v6 & 1;
  v7 = v6 & (v1 != 0);
  sub_5BB0((v0 + 896));
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 1400);
  v9 = *(v0 + 1368);
  v10 = *(v0 + 1344);
  v11 = *(v0 + 1336);
  v12 = *(v0 + 1328);
  v13 = sub_5B30(v12, qword_160820);
  *(v0 + 1944) = v13;
  (*(v11 + 16))(v10, v13, v12);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  v14 = *(v0 + 1008);
  sub_23B08((v0 + 976), *(v0 + 1000));
  LOBYTE(v8) = sub_1235DC();
  sub_5BB0((v0 + 976));
  if (v7 & 1 | ((v8 & 1) == 0))
  {
    v15 = *(v0 + 1688);
    v16 = *(v0 + 1680);
    v17 = *(v0 + 1584);
    v18 = *(v0 + 1568);
    sub_1250AC();
    v19 = sub_12504C();
    v16(v17, v18);
    v20 = *(v0 + 1912);
    v21 = *(v0 + 1904);
    v22 = *(v0 + 1168);
    if (v19)
    {
      v23 = *(v22 + 16);
      v24 = swift_allocObject();
      *(v0 + 1952) = v24;
      *(v24 + 16) = xmmword_126EB0;
      *(v24 + 32) = v20;

      v25 = swift_task_alloc();
      *(v0 + 1960) = v25;
      *v25 = v0;
      v25[1] = sub_6C5FC;

      return sub_F3918(v24);
    }

    else
    {
      v54 = *(v22 + 48);
      v55 = swift_allocObject();
      *(v0 + 1992) = v55;
      *(v55 + 16) = xmmword_126EB0;
      *(v55 + 32) = v20;

      v56 = swift_task_alloc();
      *(v0 + 2000) = v56;
      *v56 = v0;
      v56[1] = sub_6CC78;

      return sub_11BA94(v55);
    }
  }

  v27 = *(v0 + 1904);
  v28 = *(v0 + 1896);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_126EB0;
  *(v29 + 32) = v28;
  v30 = v28;
  v31 = sub_648C8(v29, 13);
  *(v0 + 2040) = v31;

  if (v31)
  {
    v32 = objc_opt_self();
    *(v0 + 1144) = 0;
    v33 = [v32 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:v0 + 1144];
    v34 = *(v0 + 1144);
    if (v33)
    {
      v35 = v33;
      v36 = *(v0 + 1912);
      v37 = *(v0 + 1904);
      v38 = *(v0 + 1240);
      v39 = *(v0 + 1232);
      v120 = *(v0 + 1224);
      v40 = *(v0 + 1168);
      v41 = v34;
      v42 = sub_122EFC();
      v44 = v43;

      *(v0 + 2048) = v42;
      *(v0 + 2056) = v44;
      v118 = *(v40 + 48);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_126EB0;
      *(v45 + 32) = v36;
      v46 = *(v39 + 24);
      v47 = sub_124E4C();
      v48 = *(*(v47 - 8) + 56);

      v48(&v38[v46], 1, 1, v47);
      *v38 = 0;
      *(v38 + 1) = v45;
      sub_122EEC(0);
      sub_124E1C();
      v48(v120, 0, 1, v47);
      sub_7CC5C(v120, &v38[v46], &unk_15F170, &unk_126E00);
      sub_124DEC();
      if (qword_15EEA8 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 1240);

      *v49 = sub_124DDC();
      v50 = sub_11B454();
      *(v0 + 2064) = v50;
      v51 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v52 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v53 = swift_task_alloc();
      *(v0 + 2072) = v53;
      *v53 = v0;
      v53[1] = sub_6D1FC;

      return ((&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v52))(0xD000000000000019, 0x800000000012D490, v50);
    }

    v69 = *(v0 + 1936);
    v70 = v34;

    sub_122E8C();

    swift_willThrow();
  }

  else
  {
    v57 = *(v0 + 1936);

    v58 = sub_125AAC();
    v59 = sub_125DFC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "Could not get timer action from timer.", v60, 2u);
    }

    v61 = *(v0 + 1648);
    v62 = *(v0 + 1640);
    v63 = *(v0 + 1592);
    v64 = *(v0 + 1488);
    v65 = *(v0 + 1480);
    v66 = *(v0 + 1168);

    (*(v64 + 104))(v63, enum case for SiriTimeEventSender.ReasonDescription.failedToCastTimer(_:), v65);
    v62(v63, 0, 1, v65);
    v67 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v63, v66 + v67, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v68 = 1;
    swift_willThrow();
  }

  v71 = *(v0 + 1944);
  v72 = *(v0 + 1648);
  v73 = *(v0 + 1640);
  v74 = *(v0 + 1592);
  v75 = *(v0 + 1480);
  v76 = *(v0 + 1168);
  (*(*(v0 + 1488) + 104))(v74, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v75);
  v73(v74, 0, 1, v75);
  v77 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v74, v76 + v77, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v78 = sub_125AAC();
  v79 = sub_125DEC();
  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v0 + 1912);
  v82 = *(v0 + 1896);
  v83 = *(v0 + 1440);
  v84 = *(v0 + 1416);
  v121 = *(v0 + 1400);
  v123 = *(v0 + 1408);
  v85 = *(v0 + 1384);
  v86 = *(v0 + 1376);
  if (v80)
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_0, v78, v79, "UndoTimerChangeStateFlow: Error publishing Success output.", v87, 2u);
  }

  (*(v85 + 8))(v121, v86);
  (*(v84 + 8))(v83, v123);
  (*(*(v0 + 1456) + 8))(*(v0 + 1472), *(v0 + 1448));
  v88 = *(v0 + 1168);
  v89 = *(v0 + 1160);
  sub_12383C();
  sub_7C4BC(v88);
  v90 = *(v0 + 1632);
  v91 = *(v0 + 1608);
  v92 = *(v0 + 1600);
  v93 = *(v0 + 1592);
  v94 = *(v0 + 1584);
  v95 = *(v0 + 1560);
  v96 = *(v0 + 1552);
  v97 = *(v0 + 1528);
  v98 = *(v0 + 1520);
  v99 = *(v0 + 1496);
  v101 = *(v0 + 1472);
  v102 = *(v0 + 1464);
  v103 = *(v0 + 1440);
  v104 = *(v0 + 1432);
  v105 = *(v0 + 1424);
  v106 = *(v0 + 1400);
  v107 = *(v0 + 1392);
  v108 = *(v0 + 1368);
  v109 = *(v0 + 1344);
  v110 = *(v0 + 1320);
  v111 = *(v0 + 1312);
  v112 = *(v0 + 1288);
  v113 = *(v0 + 1280);
  v114 = *(v0 + 1272);
  v115 = *(v0 + 1264);
  v116 = *(v0 + 1240);
  v117 = *(v0 + 1224);
  v119 = *(v0 + 1216);
  v122 = *(v0 + 1200);
  v124 = *(v0 + 1176);

  v100 = *(v0 + 8);

  return v100();
}

uint64_t sub_6C5FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1960);
  v6 = *v2;
  v4[246] = a1;
  v4[247] = v1;

  v7 = v3[244];
  if (v1)
  {
    v8 = v4[242];

    v9 = sub_746B4;
  }

  else
  {

    v9 = sub_6C780;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_6C780()
{
  v1 = (v0 + 616);
  if (*(v0 + 2574) != 1 || *(v0 + 1936) == 0)
  {
    v3 = *(v0 + 1896);
    v4 = *(v0 + 1320);
    v5 = *(v0 + 1304);
    v6 = *(v0 + 1296);
    sub_5AE8(&qword_15F940, &unk_127410);
    v7 = *(sub_124F4C() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_126CB0;
    sub_1135FC(v10 + v9);
    sub_12521C();
    (*(v5 + 104))(v4, enum case for SiriTimePluginModel.timerMulti(_:), v6);
    *(v0 + 640) = v6;
    *(v0 + 648) = sub_7D14C(&qword_15F930, &type metadata accessor for SiriTimePluginModel);
    v11 = sub_23B4C((v0 + 616));
    (*(v5 + 32))(v11, v4, v6);
  }

  else
  {
    *(v0 + 648) = 0;
    *v1 = 0u;
    *(v0 + 632) = 0u;
  }

  v12 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v13 = swift_task_alloc();
  *(v0 + 1984) = v13;
  *v13 = v0;
  v13[1] = sub_6C9FC;
  v14 = *(v0 + 1968);
  v15 = *(v0 + 1936);
  v16 = *(v0 + 1928);
  v17 = *(v0 + 1472);
  v18 = *(v0 + 1440);
  v19 = *(v0 + 1400);

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 336, v18, v17, v1, v19, v16, v15, 0xD000000000000018);
}

uint64_t sub_6C9FC()
{
  v1 = *v0;
  v2 = *(*v0 + 1984);
  v3 = *(*v0 + 1968);
  v4 = *(*v0 + 1936);
  v6 = *v0;

  sub_5CA8(v1 + 616, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_6CB78, 0, 0);
}

uint64_t sub_6CB78()
{
  sub_2F4EC((v0 + 336), v0 + 936);
  sub_123ACC();
  v1 = *(v0 + 520);
  v2 = *(v0 + 528);
  sub_23B08((v0 + 496), v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  *(v0 + 2112) = v4;
  *v4 = v0;
  v4[1] = sub_6DBF8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 936, v1, v2);
}

uint64_t sub_6CC78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2000);
  v6 = *v2;
  v4[251] = a1;
  v4[252] = v1;

  v7 = v3[249];
  if (v1)
  {
    v8 = v4[242];

    v9 = sub_74A94;
  }

  else
  {

    v9 = sub_6CDFC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_6CDFC()
{
  v1 = v0[242];
  v2 = v0[241];
  v3 = v0[184];
  v4 = v0[179];
  v5 = v0[161];
  sub_12361C();
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  sub_123B0C();

  v7 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v8 = swift_task_alloc();
  v0[253] = v8;
  *v8 = v0;
  v8[1] = sub_6CF48;
  v9 = v0[251];
  v10 = v0[175];
  v11 = v0[161];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v0 + 2, v11, v10);
}

uint64_t sub_6CF48()
{
  v2 = *v1;
  v3 = *(*v1 + 2024);
  v4 = *v1;
  *(*v1 + 2032) = v0;

  v5 = v2[251];
  (*(v2[157] + 8))(v2[161], v2[156]);

  if (v0)
  {
    v6 = sub_74E74;
  }

  else
  {
    v6 = sub_6D0FC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_6D0FC()
{
  sub_2F4EC((v0 + 16), v0 + 936);
  sub_123ACC();
  v1 = *(v0 + 520);
  v2 = *(v0 + 528);
  sub_23B08((v0 + 496), v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  *(v0 + 2112) = v4;
  *v4 = v0;
  v4[1] = sub_6DBF8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 936, v1, v2);
}

uint64_t sub_6D1FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2072);
  v6 = *v2;
  v4[260] = a1;
  v4[261] = v1;

  v7 = v3[258];
  if (v1)
  {
    v8 = v4[242];

    v9 = sub_6D6C4;
  }

  else
  {

    v9 = sub_6D380;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_6D380()
{
  v1 = v0[242];
  v2 = v0[241];
  v3 = v0[184];
  v4 = v0[180];
  v5 = v0[179];
  v6 = v0[177];
  v7 = v0[176];
  v8 = v0[160];
  sub_7CCEC(v0[155], type metadata accessor for PauseTimerHandledOnWatchParameters);
  (*(v6 + 16))(v5, v4, v7);
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v1;
  sub_123B0C();

  v10 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v11 = swift_task_alloc();
  v0[262] = v11;
  *v11 = v0;
  v11[1] = sub_6D510;
  v12 = v0[260];
  v13 = v0[175];
  v14 = v0[160];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v0 + 82, v14, v13);
}

uint64_t sub_6D510()
{
  v2 = *v1;
  v3 = *(*v1 + 2096);
  v4 = *v1;
  *(*v1 + 2104) = v0;

  v5 = v2[260];
  (*(v2[157] + 8))(v2[160], v2[156]);

  if (v0)
  {
    v6 = sub_75254;
  }

  else
  {
    v6 = sub_6DADC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_6D6C4()
{
  v1 = v0[257];
  v2 = v0[256];
  v3 = v0[255];
  sub_7CCEC(v0[155], type metadata accessor for PauseTimerHandledOnWatchParameters);

  sub_E498(v2, v1);
  v4 = v0[261];
  v5 = v0[243];
  v6 = v0[206];
  v7 = v0[205];
  v8 = v0[199];
  v9 = v0[185];
  v10 = v0[146];
  (*(v0[186] + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v9);
  v7(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v8, v10 + v11, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v12 = sub_125AAC();
  v13 = sub_125DEC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[239];
  v16 = v0[237];
  v17 = v0[180];
  v18 = v0[177];
  v54 = v0[175];
  v56 = v0[176];
  v19 = v0[173];
  v20 = v0[172];
  if (v14)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v12, v13, "UndoTimerChangeStateFlow: Error publishing Success output.", v21, 2u);
  }

  (*(v19 + 8))(v54, v20);
  (*(v18 + 8))(v17, v56);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v22 = v0[146];
  v23 = v0[145];
  sub_12383C();
  sub_7C4BC(v22);
  v24 = v0[204];
  v25 = v0[201];
  v26 = v0[200];
  v27 = v0[199];
  v28 = v0[198];
  v29 = v0[195];
  v30 = v0[194];
  v31 = v0[191];
  v32 = v0[190];
  v33 = v0[187];
  v36 = v0[184];
  v37 = v0[183];
  v38 = v0[180];
  v39 = v0[179];
  v40 = v0[178];
  v41 = v0[175];
  v42 = v0[174];
  v43 = v0[171];
  v44 = v0[168];
  v45 = v0[165];
  v46 = v0[164];
  v47 = v0[161];
  v48 = v0[160];
  v49 = v0[159];
  v50 = v0[158];
  v51 = v0[155];
  v52 = v0[153];
  v53 = v0[152];
  v55 = v0[150];
  v57 = v0[147];

  v34 = v0[1];

  return v34();
}

uint64_t sub_6DADC()
{
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2048);

  sub_E498(v2, v1);
  sub_2F4EC((v0 + 656), v0 + 936);
  sub_123ACC();
  v3 = *(v0 + 520);
  v4 = *(v0 + 528);
  sub_23B08((v0 + 496), v3);
  v5 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v6 = swift_task_alloc();
  *(v0 + 2112) = v6;
  *v6 = v0;
  v6[1] = sub_6DBF8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 936, v3, v4);
}

uint64_t sub_6DBF8()
{
  v2 = *(*v1 + 2112);
  v5 = *v1;
  *(*v1 + 2120) = v0;

  if (v0)
  {
    v3 = sub_75650;
  }

  else
  {
    v3 = sub_6DD38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_6DD38()
{
  v1 = v0[239];
  v2 = v0[237];
  v3 = v0[180];
  v4 = v0[177];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[173];
  v8 = v0[172];

  sub_5BB0(v0 + 117);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_5BB0(v0 + 62);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v9 = v0[146];
  v10 = v0[145];
  sub_12383C();
  sub_7C4BC(v9);
  v11 = v0[204];
  v12 = v0[201];
  v13 = v0[200];
  v14 = v0[199];
  v15 = v0[198];
  v16 = v0[195];
  v17 = v0[194];
  v18 = v0[191];
  v19 = v0[190];
  v20 = v0[187];
  v23 = v0[184];
  v24 = v0[183];
  v25 = v0[180];
  v26 = v0[179];
  v27 = v0[178];
  v28 = v0[175];
  v29 = v0[174];
  v30 = v0[171];
  v31 = v0[168];
  v32 = v0[165];
  v33 = v0[164];
  v34 = v0[161];
  v35 = v0[160];
  v36 = v0[159];
  v37 = v0[158];
  v38 = v0[155];
  v39 = v0[153];
  v40 = v0[152];
  v41 = v0[150];
  v42 = v0[147];

  v21 = v0[1];

  return v21();
}

uint64_t sub_6E004()
{
  v1 = *(*v0 + 2128);
  v2 = *(*v0 + 1496);
  v3 = *(*v0 + 1488);
  v4 = *(*v0 + 1480);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_6E188, 0, 0);
}

uint64_t sub_6E188()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1600);
  v5 = *(v0 + 1592);
  v6 = *(v0 + 1584);
  v7 = *(v0 + 1560);
  v8 = *(v0 + 1552);
  v9 = *(v0 + 1528);
  v10 = *(v0 + 1520);
  v11 = *(v0 + 1496);
  v14 = *(v0 + 1472);
  v15 = *(v0 + 1464);
  v16 = *(v0 + 1440);
  v17 = *(v0 + 1432);
  v18 = *(v0 + 1424);
  v19 = *(v0 + 1400);
  v20 = *(v0 + 1392);
  v21 = *(v0 + 1368);
  v22 = *(v0 + 1344);
  v23 = *(v0 + 1320);
  v24 = *(v0 + 1312);
  v25 = *(v0 + 1288);
  v26 = *(v0 + 1280);
  v27 = *(v0 + 1272);
  v28 = *(v0 + 1264);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1224);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1200);
  v33 = *(v0 + 1176);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_6E3CC()
{
  v1 = *(*v0 + 2136);
  v2 = *(*v0 + 1496);
  v3 = *(*v0 + 1488);
  v4 = *(*v0 + 1480);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_6A0A8, 0, 0);
}

uint64_t sub_6E550(uint64_t a1)
{
  v2 = *(*v1 + 2168);
  v3 = *(*v1 + 2160);
  v5 = *v1;
  *(*v1 + 2176) = a1;

  return _swift_task_switch(sub_6E698, 0, 0);
}

uint64_t sub_6E698()
{
  v1 = v0[272];
  if (!(v1 >> 62))
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    v3 = v0[272];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_30:
    v45 = v0[208];

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v46 = sub_125AAC();
    v47 = sub_125DEC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "UndoTimerChangeStateFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timer to change.", v48, 2u);
    }

    v49 = swift_task_alloc();
    v0[279] = v49;
    *v49 = v0;
    v49[1] = sub_6F5D8;
    v50 = v0[146];
    v51 = v0[145];

    return sub_785AC(v51);
  }

LABEL_39:
  v2 = sub_1260FC();
  v3 = v0[272];
  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_3:
  v4 = 0;
  v56 = v1 & 0xFFFFFFFFFFFFFF8;
  v57 = v1 & 0xC000000000000001;
  v54 = v3 + 32;
  v55 = (v0[193] + 8);
  v52 = v2;
  v53 = (v0[189] + 8);
  while (1)
  {
    if (v57)
    {
      v29 = v0[272];
      v5 = sub_125FFC();
    }

    else
    {
      if (v4 >= *(v56 + 16))
      {
        goto LABEL_38;
      }

      v5 = *(v54 + 8 * v4);
    }

    v6 = v5;
    v0[273] = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = v0[208];
    v9 = v0[207];
    v10 = v0[194];
    v11 = v0[192];
    v12 = [v5 timerID];
    sub_122F4C();

    v13 = sub_122F3C();
    v15 = v14;
    (*v55)(v10, v11);
    if (v13 == v9 && v8 == v15)
    {
      goto LABEL_17;
    }

    v16 = v0[208];
    v17 = v0[207];
    v18 = sub_1261BC();

    if (v18)
    {
      break;
    }

    v19 = v0[208];
    v20 = v0[207];
    v21 = v0[190];
    v22 = v0[188];
    v23 = [v6 timerURL];
    sub_122EBC();

    v24 = sub_122E9C();
    v1 = v25;
    (*v53)(v21, v22);
    if (v24 == v20 && v19 == v1)
    {
LABEL_17:
      v30 = v0[272];

      goto LABEL_19;
    }

    v26 = v0[208];
    v27 = v0[207];
    v28 = sub_1261BC();

    if (v28)
    {
      break;
    }

    ++v4;
    if (v7 == v52)
    {
      v44 = v0[272];
      goto LABEL_30;
    }
  }

  v31 = v0[272];
LABEL_19:

  if ([v6 state] == &dword_0 + 3)
  {
    v32 = v0[208];

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v33 = sub_125AAC();
    v34 = sub_125DFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "UndoTimerChangeStateFlow: Attempting to resume a running timer: returning .failureTimerAlreadyRunning", v35, 2u);
    }

    sub_1257EC();
    v36 = v6;
    v37 = sub_1257BC();
    v0[274] = v37;
    v38 = swift_task_alloc();
    v0[275] = v38;
    *v38 = v0;
    v38[1] = sub_6EC7C;
    v39 = v0[146];
    v40 = v0[145];

    return sub_78D7C(v40, v37);
  }

  else
  {
    v42 = swift_task_alloc();
    v0[276] = v42;
    *v42 = v0;
    v42[1] = sub_6F000;
    v43 = v0[146];

    return sub_79F38(v6, 3);
  }
}

uint64_t sub_6EC7C()
{
  v1 = *(*v0 + 2200);
  v2 = *(*v0 + 2192);
  v4 = *v0;

  return _swift_task_switch(sub_6EDBC, 0, 0);
}

uint64_t sub_6EDBC()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1600);
  v5 = *(v0 + 1592);
  v6 = *(v0 + 1584);
  v7 = *(v0 + 1560);
  v8 = *(v0 + 1552);
  v9 = *(v0 + 1528);
  v10 = *(v0 + 1520);
  v11 = *(v0 + 1496);
  v14 = *(v0 + 1472);
  v15 = *(v0 + 1464);
  v16 = *(v0 + 1440);
  v17 = *(v0 + 1432);
  v18 = *(v0 + 1424);
  v19 = *(v0 + 1400);
  v20 = *(v0 + 1392);
  v21 = *(v0 + 1368);
  v22 = *(v0 + 1344);
  v23 = *(v0 + 1320);
  v24 = *(v0 + 1312);
  v25 = *(v0 + 1288);
  v26 = *(v0 + 1280);
  v27 = *(v0 + 1272);
  v28 = *(v0 + 1264);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1224);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1200);
  v33 = *(v0 + 1176);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_6F000(uint64_t a1)
{
  v2 = *(*v1 + 2208);
  v4 = *v1;
  *(*v1 + 2216) = a1;

  return _swift_task_switch(sub_6F12C, 0, 0);
}

uint64_t sub_6F12C()
{
  v1 = *(v0 + 2216);
  if (v1)
  {

    *(v0 + 2328) = *(v0 + 2216);
    *(v0 + 2320) = v1;
    v2 = *(v0 + 1464);
    v3 = v1;
    *(v0 + 2336) = sub_5AE8(&qword_160810, &unk_127420);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_126EB0;
    *(v4 + 32) = v3;
    v5 = v3;
    sub_FF26C(v4, v2);
    swift_setDeallocating();
    v6 = *(v4 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_12573C();
    sub_12572C();
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    sub_23B08((v0 + 136), v7);
    v9 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
    v10 = swift_task_alloc();
    *(v0 + 2344) = v10;
    *v10 = v0;
    v10[1] = sub_70BAC;
    v11 = *(v0 + 1664);
    v12 = *(v0 + 1656);

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v12, v11, v7, v8);
  }

  else
  {
    v13 = *(v0 + 1664);

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v14 = sub_125AAC();
    v15 = sub_125DEC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "UndoTimerChangeStateFlow: Failed to resume mtTimer", v16, 2u);
    }

    v17 = *(v0 + 1496);
    v18 = *(v0 + 1488);
    v19 = *(v0 + 1480);

    (*(v18 + 104))(v17, enum case for SiriTimeEventSender.ReasonDescription.failedToResumeTimer(_:), v19);
    v20 = swift_task_alloc();
    *(v0 + 2224) = v20;
    *v20 = v0;
    v20[1] = sub_6F454;
    v21 = *(v0 + 1496);
    v22 = *(v0 + 1168);
    v23 = *(v0 + 1160);

    return sub_77DEC(v23, v21);
  }
}

uint64_t sub_6F454()
{
  v1 = *(*v0 + 2224);
  v2 = *(*v0 + 1496);
  v3 = *(*v0 + 1488);
  v4 = *(*v0 + 1480);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_7D5EC, 0, 0);
}

uint64_t sub_6F5D8()
{
  v1 = *(*v0 + 2232);
  v3 = *v0;

  return _swift_task_switch(sub_7D660, 0, 0);
}

uint64_t sub_6F700(uint64_t a1)
{
  v2 = *(*v1 + 2240);
  v4 = *v1;
  *(*v1 + 2248) = a1;

  return _swift_task_switch(sub_6F82C, 0, 0);
}

uint64_t sub_6F82C()
{
  v1 = v0[281];
  if (!v1)
  {
    v9 = v0[208];

    sub_5BB0(v0 + 97);
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v10 = sub_125AAC();
    v11 = sub_125DEC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "UndoTimerChangeStateFlow: siriTimerManager.currentTimerSync get nil result: no timers to operate on.", v12, 2u);
    }

    v7 = swift_task_alloc();
    v0[289] = v7;
    *v7 = v0;
    v8 = sub_70A84;
    goto LABEL_24;
  }

  sub_5BB0(v0 + 97);
  [v1 state];
  v2 = sub_1258BC();
  if (v2 == sub_1258BC())
  {
    v3 = v0[208];

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v4 = sub_125AAC();
    v5 = sub_125DFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "UndoTimerChangeStateFlow: Timer has an unknown state (meaning there's no timer set on phone): No timers to operate on.", v6, 2u);
    }

    v7 = swift_task_alloc();
    v0[288] = v7;
    *v7 = v0;
    v8 = sub_7095C;
LABEL_24:
    v7[1] = v8;
    v28 = v0[146];
    v29 = v0[145];

    return sub_785AC(v29);
  }

  v13 = [v1 identifier];
  if (!v13)
  {
LABEL_19:
    v24 = v0[208];

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v25 = sub_125AAC();
    v26 = sub_125DEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "UndoTimerChangeStateFlow: UndoTimerChangeState target timer id does not match current timer id.", v27, 2u);
    }

    v7 = swift_task_alloc();
    v0[287] = v7;
    *v7 = v0;
    v8 = sub_70834;
    goto LABEL_24;
  }

  v14 = v0[208];
  v15 = v0[207];
  v16 = v13;
  v17 = sub_125B9C();
  v19 = v18;

  if (v17 == v15 && v14 == v19)
  {
  }

  else
  {
    v21 = v0[208];
    v22 = v0[207];
    v23 = sub_1261BC();

    if ((v23 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  [v1 state];
  v31 = sub_1258BC();
  if (v31 == sub_1258BC())
  {
    v32 = v0[208];

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v33 = sub_125AAC();
    v34 = sub_125DFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "UndoTimerChangeStateFlow: Attempting to resume a running timer: returning .failureTimerAlreadyRunning", v35, 2u);
    }

    v36 = swift_task_alloc();
    v0[282] = v36;
    *v36 = v0;
    v36[1] = sub_6FED4;
    v37 = v0[146];
    v38 = v0[145];

    return sub_78D7C(v38, v1);
  }

  else
  {
    v39 = v0[146];
    v40 = swift_task_alloc();
    v0[283] = v40;
    *(v40 + 16) = v39;
    *(v40 + 24) = v1;
    v41 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v42 = swift_task_alloc();
    v0[284] = v42;
    *v42 = v0;
    v42[1] = sub_70240;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2569, 0, 0, 0x6954656D75736572, 0xEF293A5F2872656DLL, sub_7CBFC, v40, &type metadata for Bool);
  }
}

uint64_t sub_6FED4()
{
  v1 = *(*v0 + 2256);
  v3 = *v0;

  return _swift_task_switch(sub_6FFFC, 0, 0);
}

uint64_t sub_6FFFC()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1600);
  v5 = *(v0 + 1592);
  v6 = *(v0 + 1584);
  v7 = *(v0 + 1560);
  v8 = *(v0 + 1552);
  v9 = *(v0 + 1528);
  v10 = *(v0 + 1520);
  v11 = *(v0 + 1496);
  v14 = *(v0 + 1472);
  v15 = *(v0 + 1464);
  v16 = *(v0 + 1440);
  v17 = *(v0 + 1432);
  v18 = *(v0 + 1424);
  v19 = *(v0 + 1400);
  v20 = *(v0 + 1392);
  v21 = *(v0 + 1368);
  v22 = *(v0 + 1344);
  v23 = *(v0 + 1320);
  v24 = *(v0 + 1312);
  v25 = *(v0 + 1288);
  v26 = *(v0 + 1280);
  v27 = *(v0 + 1272);
  v28 = *(v0 + 1264);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1224);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1200);
  v33 = *(v0 + 1176);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_70240()
{
  v1 = *(*v0 + 2272);
  v2 = *(*v0 + 2264);
  v4 = *v0;

  return _swift_task_switch(sub_70384, 0, 0);
}

uint64_t sub_70384()
{
  v1 = *(v0 + 1168);
  *(v0 + 2575) = *(v0 + 2569);
  sub_2F488(v1 + 72, v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  sub_23B08((v0 + 96), v2);
  v4 = async function pointer to dispatch thunk of SiriTimerManagerIOS.currentTimer()[1];
  v5 = swift_task_alloc();
  *(v0 + 2280) = v5;
  *v5 = v0;
  v5[1] = sub_7047C;

  return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v2, v3);
}

uint64_t sub_7047C(uint64_t a1)
{
  v2 = *(*v1 + 2280);
  v4 = *v1;
  *(*v1 + 2288) = a1;

  return _swift_task_switch(sub_705A8, 0, 0);
}

uint64_t sub_705A8()
{
  v1 = *(v0 + 2288);
  v2 = *(v0 + 2575);

  sub_5BB0((v0 + 96));
  if (v2 != 1 || v1 == 0)
  {
    v4 = *(v0 + 1664);
    v5 = *(v0 + 1496);
    v6 = *(v0 + 1488);
    v7 = *(v0 + 1480);

    (*(v6 + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.failedToResumeTimer(_:), v7);
    v8 = swift_task_alloc();
    *(v0 + 2552) = v8;
    *v8 = v0;
    v8[1] = sub_74168;
    v9 = *(v0 + 1496);
    v10 = *(v0 + 1168);
    v11 = *(v0 + 1160);

    return sub_77DEC(v11, v9);
  }

  else
  {
    v13 = *(v0 + 2288);
    *(v0 + 2328) = v13;
    *(v0 + 2320) = v13;
    v14 = *(v0 + 1464);
    v15 = v13;
    *(v0 + 2336) = sub_5AE8(&qword_160810, &unk_127420);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_126EB0;
    *(v16 + 32) = v15;
    v17 = v15;
    sub_FF26C(v16, v14);
    swift_setDeallocating();
    v18 = *(v16 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_12573C();
    sub_12572C();
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);
    sub_23B08((v0 + 136), v19);
    v21 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
    v22 = swift_task_alloc();
    *(v0 + 2344) = v22;
    *v22 = v0;
    v22[1] = sub_70BAC;
    v23 = *(v0 + 1664);
    v24 = *(v0 + 1656);

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v24, v23, v19, v20);
  }
}

uint64_t sub_70834()
{
  v1 = *(*v0 + 2296);
  v3 = *v0;

  return _swift_task_switch(sub_7D6D4, 0, 0);
}

uint64_t sub_7095C()
{
  v1 = *(*v0 + 2304);
  v3 = *v0;

  return _swift_task_switch(sub_7D6D4, 0, 0);
}

uint64_t sub_70A84()
{
  v1 = *(*v0 + 2312);
  v3 = *v0;

  return _swift_task_switch(sub_7D660, 0, 0);
}

uint64_t sub_70BAC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2344);
  v5 = *(*v2 + 1664);
  v7 = *v2;
  *(v3 + 2352) = a1;
  *(v3 + 2360) = a2;

  return _swift_task_switch(sub_70CFC, 0, 0);
}

uint64_t sub_70CFC()
{
  v1 = *(v0 + 2360);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1352);
  sub_5BB0((v0 + 136));
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v5 = *(v0 + 208);
  sub_23B08((v0 + 176), *(v0 + 200));
  v6 = sub_1235DC();
  *(v0 + 2576) = v6 & 1;
  v7 = v6 & (v1 != 0);
  sub_5BB0((v0 + 176));
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 1392);
  v9 = *(v0 + 1368);
  v10 = *(v0 + 1344);
  v11 = *(v0 + 1336);
  v12 = *(v0 + 1328);
  v13 = sub_5B30(v12, qword_160820);
  *(v0 + 2368) = v13;
  (*(v11 + 16))(v10, v13, v12);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  v14 = *(v0 + 288);
  sub_23B08((v0 + 256), *(v0 + 280));
  LOBYTE(v8) = sub_1235DC();
  sub_5BB0((v0 + 256));
  if (v7 & 1 | ((v8 & 1) == 0))
  {
    v15 = *(v0 + 2152);
    v16 = *(v0 + 2144);
    v17 = *(v0 + 1584);
    v18 = *(v0 + 1568);
    sub_1250AC();
    v19 = sub_12504C();
    v16(v17, v18);
    v20 = *(v0 + 2336);
    v21 = *(v0 + 2320);
    v22 = *(v0 + 1168);
    if (v19)
    {
      v23 = *(v22 + 32);
      v24 = swift_allocObject();
      *(v0 + 2376) = v24;
      *(v24 + 16) = xmmword_126EB0;
      *(v24 + 32) = sub_113D6C(0, 0);
      v25 = swift_task_alloc();
      *(v0 + 2384) = v25;
      *v25 = v0;
      v25[1] = sub_7183C;

      return sub_2B258(v24);
    }

    else
    {
      v54 = *(v22 + 56);
      v55 = swift_allocObject();
      *(v0 + 2416) = v55;
      *(v55 + 16) = xmmword_126EB0;
      *(v55 + 32) = sub_113D6C(0, 0);
      v56 = swift_task_alloc();
      *(v0 + 2424) = v56;
      *v56 = v0;
      v56[1] = sub_723C0;

      return sub_B5994(v55);
    }
  }

  v27 = *(v0 + 2336);
  v28 = *(v0 + 2320);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_126EB0;
  *(v29 + 32) = v28;
  v30 = v28;
  v31 = sub_648C8(v29, 13);
  *(v0 + 2464) = v31;

  if (v31)
  {
    v32 = objc_opt_self();
    *(v0 + 1152) = 0;
    v33 = [v32 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:v0 + 1152];
    v34 = *(v0 + 1152);
    if (v33)
    {
      v35 = v33;
      v36 = *(v0 + 2336);
      v37 = *(v0 + 2320);
      v38 = *(v0 + 1224);
      v39 = *(v0 + 1216);
      v119 = *(v0 + 1208);
      v40 = *(v0 + 1168);
      v41 = v34;
      v42 = sub_122EFC();
      v44 = v43;

      *(v0 + 2472) = v42;
      *(v0 + 2480) = v44;
      v117 = *(v40 + 56);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_126EB0;
      *(v45 + 32) = sub_113D6C(0, 0);
      v46 = *(v119 + 24);
      v47 = sub_124E4C();
      v48 = *(*(v47 - 8) + 56);
      v48(&v39[v46], 1, 1, v47);
      *v39 = 0;
      *(v39 + 1) = v45;
      sub_122EEC(0);
      sub_124E1C();
      v48(v38, 0, 1, v47);
      sub_7CC5C(v38, &v39[v46], &unk_15F170, &unk_126E00);
      sub_124DEC();
      if (qword_15EEA8 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 1216);

      *v49 = sub_124DDC();
      v50 = sub_B5350();
      *(v0 + 2488) = v50;
      v51 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v52 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v53 = swift_task_alloc();
      *(v0 + 2496) = v53;
      *v53 = v0;
      v53[1] = sub_72DE0;

      return ((&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v52))(0xD00000000000001ALL, 0x800000000012D430, v50);
    }

    v69 = *(v0 + 2360);
    v70 = v34;

    sub_122E8C();

    swift_willThrow();
  }

  else
  {
    v57 = *(v0 + 2360);

    v58 = sub_125AAC();
    v59 = sub_125DFC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "Could not get timer action from timer.", v60, 2u);
    }

    v61 = *(v0 + 1648);
    v62 = *(v0 + 1640);
    v63 = *(v0 + 1592);
    v64 = *(v0 + 1488);
    v65 = *(v0 + 1480);
    v66 = *(v0 + 1168);

    (*(v64 + 104))(v63, enum case for SiriTimeEventSender.ReasonDescription.failedToCastTimer(_:), v65);
    v62(v63, 0, 1, v65);
    v67 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v63, v66 + v67, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v68 = 1;
    swift_willThrow();
  }

  v71 = *(v0 + 2368);
  v72 = *(v0 + 1648);
  v73 = *(v0 + 1640);
  v74 = *(v0 + 1592);
  v75 = *(v0 + 1480);
  v76 = *(v0 + 1168);
  (*(*(v0 + 1488) + 104))(v74, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v75);
  v73(v74, 0, 1, v75);
  v77 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v74, v76 + v77, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v78 = sub_125AAC();
  v79 = sub_125DEC();
  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v0 + 2328);
  v82 = *(v0 + 2320);
  v83 = *(v0 + 1392);
  v84 = *(v0 + 1384);
  v85 = *(v0 + 1376);
  if (v80)
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_0, v78, v79, "UndoTimerChangeStateFlow: Error publishing Success output.", v86, 2u);

    v78 = v81;
  }

  else
  {
  }

  (*(v84 + 8))(v83, v85);
  (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
  v87 = *(v0 + 1168);
  v88 = *(v0 + 1160);
  sub_12383C();
  sub_7C4BC(v87);
  v89 = *(v0 + 1632);
  v90 = *(v0 + 1608);
  v91 = *(v0 + 1600);
  v92 = *(v0 + 1592);
  v93 = *(v0 + 1584);
  v94 = *(v0 + 1560);
  v95 = *(v0 + 1552);
  v96 = *(v0 + 1528);
  v97 = *(v0 + 1520);
  v98 = *(v0 + 1496);
  v100 = *(v0 + 1472);
  v101 = *(v0 + 1464);
  v102 = *(v0 + 1440);
  v103 = *(v0 + 1432);
  v104 = *(v0 + 1424);
  v105 = *(v0 + 1400);
  v106 = *(v0 + 1392);
  v107 = *(v0 + 1368);
  v108 = *(v0 + 1344);
  v109 = *(v0 + 1320);
  v110 = *(v0 + 1312);
  v111 = *(v0 + 1288);
  v112 = *(v0 + 1280);
  v113 = *(v0 + 1272);
  v114 = *(v0 + 1264);
  v115 = *(v0 + 1240);
  v116 = *(v0 + 1224);
  v118 = *(v0 + 1216);
  v120 = *(v0 + 1200);
  v121 = *(v0 + 1176);

  v99 = *(v0 + 8);

  return v99();
}