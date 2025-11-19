uint64_t sub_7183C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2384);
  v6 = *v2;
  v4[299] = a1;
  v4[300] = v1;

  v7 = v3[297];
  if (v1)
  {
    v8 = v4[295];

    v9 = sub_75A40;
  }

  else
  {

    v9 = sub_719C0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_719C0()
{
  v1 = (v0 + 576);
  v2 = *(v0 + 2576);
  v3 = *(v0 + 2360);
  v4 = *(v0 + 1424);
  sub_12361C();
  if (v2 != 1 || v3 == 0)
  {
    v6 = *(v0 + 2320);
    v7 = *(v0 + 1312);
    v8 = *(v0 + 1304);
    v9 = *(v0 + 1296);
    sub_5AE8(&qword_15F940, &unk_127410);
    v10 = *(sub_124F4C() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_126CB0;
    sub_1135FC(v13 + v12);
    sub_12521C();
    (*(v8 + 104))(v7, enum case for SiriTimePluginModel.timerMulti(_:), v9);
    *(v0 + 600) = v9;
    *(v0 + 608) = sub_7D14C(&qword_15F930, &type metadata accessor for SiriTimePluginModel);
    v14 = sub_23B4C((v0 + 576));
    (*(v8 + 32))(v14, v7, v9);
  }

  else
  {
    *(v0 + 608) = 0;
    *v1 = 0u;
    *(v0 + 592) = 0u;
  }

  v15 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v16 = swift_task_alloc();
  *(v0 + 2408) = v16;
  *v16 = v0;
  v16[1] = sub_71C44;
  v17 = *(v0 + 2392);
  v18 = *(v0 + 2360);
  v19 = *(v0 + 2352);
  v20 = *(v0 + 1464);
  v21 = *(v0 + 1424);
  v22 = *(v0 + 1392);

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 536, v21, v20, v1, v22, v19, v18, 0xD000000000000019);
}

uint64_t sub_71C44()
{
  v1 = *v0;
  v2 = *(*v0 + 2408);
  v3 = *(*v0 + 2392);
  v4 = *(*v0 + 2360);
  v5 = *(*v0 + 1424);
  v6 = *(*v0 + 1416);
  v7 = *(*v0 + 1408);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  sub_5CA8(v1 + 576, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_71E24, 0, 0);
}

uint64_t sub_71E24()
{
  v1 = *(v0 + 552);
  *(v0 + 216) = *(v0 + 536);
  *(v0 + 232) = v1;
  *(v0 + 248) = *(v0 + 568);
  sub_E344(v0 + 216, v0 + 416, &qword_160860, &unk_128368);
  if (*(v0 + 440))
  {
    sub_2F4EC((v0 + 416), v0 + 376);
    sub_123ACC();
    v2 = *(v0 + 480);
    v3 = *(v0 + 488);
    sub_23B08((v0 + 456), v2);
    v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v5 = swift_task_alloc();
    *(v0 + 2536) = v5;
    *v5 = v0;
    v5[1] = sub_73C10;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 376, v2, v3);
  }

  else
  {
    v6 = *(v0 + 2368);
    sub_5CA8(v0 + 416, &qword_160860, &unk_128368);
    v7 = sub_125AAC();
    v8 = sub_125DEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "[UndoTimerChangeStateFlow] Generated Success output via RF, but it was nil!", v9, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
    sub_5CA8(v0 + 216, &qword_160860, &unk_128368);
    v11 = *(v0 + 2368);
    v12 = *(v0 + 1648);
    v13 = *(v0 + 1640);
    v14 = *(v0 + 1592);
    v15 = *(v0 + 1480);
    v16 = *(v0 + 1168);
    (*(*(v0 + 1488) + 104))(v14, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v15);
    v13(v14, 0, 1, v15);
    v17 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v14, v16 + v17, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    v18 = sub_125AAC();
    v19 = sub_125DEC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2328);
    v22 = *(v0 + 2320);
    v23 = *(v0 + 1392);
    v24 = *(v0 + 1384);
    v25 = *(v0 + 1376);
    if (v20)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v18, v19, "UndoTimerChangeStateFlow: Error publishing Success output.", v26, 2u);

      v18 = v21;
    }

    else
    {
    }

    (*(v24 + 8))(v23, v25);
    (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
    v27 = *(v0 + 1168);
    v28 = *(v0 + 1160);
    sub_12383C();
    sub_7C4BC(v27);
    v29 = *(v0 + 1632);
    v30 = *(v0 + 1608);
    v31 = *(v0 + 1600);
    v32 = *(v0 + 1592);
    v33 = *(v0 + 1584);
    v34 = *(v0 + 1560);
    v35 = *(v0 + 1552);
    v36 = *(v0 + 1528);
    v37 = *(v0 + 1520);
    v38 = *(v0 + 1496);
    v41 = *(v0 + 1472);
    v42 = *(v0 + 1464);
    v43 = *(v0 + 1440);
    v44 = *(v0 + 1432);
    v45 = *(v0 + 1424);
    v46 = *(v0 + 1400);
    v47 = *(v0 + 1392);
    v48 = *(v0 + 1368);
    v49 = *(v0 + 1344);
    v50 = *(v0 + 1320);
    v51 = *(v0 + 1312);
    v52 = *(v0 + 1288);
    v53 = *(v0 + 1280);
    v54 = *(v0 + 1272);
    v55 = *(v0 + 1264);
    v56 = *(v0 + 1240);
    v57 = *(v0 + 1224);
    v58 = *(v0 + 1216);
    v59 = *(v0 + 1200);
    v60 = *(v0 + 1176);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_723C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2424);
  v6 = *v2;
  v4[304] = a1;
  v4[305] = v1;

  v7 = v3[302];
  if (v1)
  {
    v8 = v4[295];

    v9 = sub_75DF8;
  }

  else
  {

    v9 = sub_72544;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_72544()
{
  v1 = v0[295];
  v2 = v0[294];
  v3 = v0[183];
  v4 = v0[179];
  v5 = v0[159];
  sub_12361C();
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  sub_123B0C();

  v7 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v8 = swift_task_alloc();
  v0[306] = v8;
  *v8 = v0;
  v8[1] = sub_72690;
  v9 = v0[304];
  v10 = v0[174];
  v11 = v0[159];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v0 + 37, v11, v10);
}

uint64_t sub_72690()
{
  v2 = *v1;
  v3 = *(*v1 + 2448);
  v4 = *v1;
  *(*v1 + 2456) = v0;

  v5 = v2[304];
  (*(v2[157] + 8))(v2[159], v2[156]);

  if (v0)
  {
    v6 = sub_761B0;
  }

  else
  {
    v6 = sub_72844;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_72844()
{
  v1 = *(v0 + 312);
  *(v0 + 216) = *(v0 + 296);
  *(v0 + 232) = v1;
  *(v0 + 248) = *(v0 + 328);
  sub_E344(v0 + 216, v0 + 416, &qword_160860, &unk_128368);
  if (*(v0 + 440))
  {
    sub_2F4EC((v0 + 416), v0 + 376);
    sub_123ACC();
    v2 = *(v0 + 480);
    v3 = *(v0 + 488);
    sub_23B08((v0 + 456), v2);
    v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v5 = swift_task_alloc();
    *(v0 + 2536) = v5;
    *v5 = v0;
    v5[1] = sub_73C10;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 376, v2, v3);
  }

  else
  {
    v6 = *(v0 + 2368);
    sub_5CA8(v0 + 416, &qword_160860, &unk_128368);
    v7 = sub_125AAC();
    v8 = sub_125DEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "[UndoTimerChangeStateFlow] Generated Success output via RF, but it was nil!", v9, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
    sub_5CA8(v0 + 216, &qword_160860, &unk_128368);
    v11 = *(v0 + 2368);
    v12 = *(v0 + 1648);
    v13 = *(v0 + 1640);
    v14 = *(v0 + 1592);
    v15 = *(v0 + 1480);
    v16 = *(v0 + 1168);
    (*(*(v0 + 1488) + 104))(v14, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v15);
    v13(v14, 0, 1, v15);
    v17 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v14, v16 + v17, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    v18 = sub_125AAC();
    v19 = sub_125DEC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2328);
    v22 = *(v0 + 2320);
    v23 = *(v0 + 1392);
    v24 = *(v0 + 1384);
    v25 = *(v0 + 1376);
    if (v20)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v18, v19, "UndoTimerChangeStateFlow: Error publishing Success output.", v26, 2u);

      v18 = v21;
    }

    else
    {
    }

    (*(v24 + 8))(v23, v25);
    (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
    v27 = *(v0 + 1168);
    v28 = *(v0 + 1160);
    sub_12383C();
    sub_7C4BC(v27);
    v29 = *(v0 + 1632);
    v30 = *(v0 + 1608);
    v31 = *(v0 + 1600);
    v32 = *(v0 + 1592);
    v33 = *(v0 + 1584);
    v34 = *(v0 + 1560);
    v35 = *(v0 + 1552);
    v36 = *(v0 + 1528);
    v37 = *(v0 + 1520);
    v38 = *(v0 + 1496);
    v41 = *(v0 + 1472);
    v42 = *(v0 + 1464);
    v43 = *(v0 + 1440);
    v44 = *(v0 + 1432);
    v45 = *(v0 + 1424);
    v46 = *(v0 + 1400);
    v47 = *(v0 + 1392);
    v48 = *(v0 + 1368);
    v49 = *(v0 + 1344);
    v50 = *(v0 + 1320);
    v51 = *(v0 + 1312);
    v52 = *(v0 + 1288);
    v53 = *(v0 + 1280);
    v54 = *(v0 + 1272);
    v55 = *(v0 + 1264);
    v56 = *(v0 + 1240);
    v57 = *(v0 + 1224);
    v58 = *(v0 + 1216);
    v59 = *(v0 + 1200);
    v60 = *(v0 + 1176);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_72DE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2496);
  v6 = *v2;
  v4[313] = a1;
  v4[314] = v1;

  v7 = v3[311];
  if (v1)
  {
    v8 = v4[295];

    v9 = sub_73260;
  }

  else
  {

    v9 = sub_72F64;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_72F64()
{
  v1 = v0[295];
  v2 = v0[294];
  v3 = v0[183];
  v4 = v0[179];
  v5 = v0[158];
  sub_7CCEC(v0[152], type metadata accessor for ResumeTimerHandledOnWatchParameters);
  sub_12361C();
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  sub_123B0C();

  v7 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v8 = swift_task_alloc();
  v0[315] = v8;
  *v8 = v0;
  v8[1] = sub_730CC;
  v9 = v0[313];
  v10 = v0[174];
  v11 = v0[158];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v0 + 87, v11, v10);
}

uint64_t sub_730CC()
{
  v2 = *v1;
  v3 = *(*v1 + 2520);
  v4 = *v1;
  *(*v1 + 2528) = v0;

  (*(v2[157] + 8))(v2[158], v2[156]);
  if (v0)
  {
    v5 = sub_76568;
  }

  else
  {
    v5 = sub_73650;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_73260()
{
  v1 = v0[310];
  v2 = v0[309];
  v3 = v0[308];
  sub_7CCEC(v0[152], type metadata accessor for ResumeTimerHandledOnWatchParameters);
  sub_E498(v2, v1);

  v4 = v0[314];
  v5 = v0[296];
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
  v15 = v0[291];
  v16 = v0[290];
  v17 = v0[174];
  v18 = v0[173];
  v19 = v0[172];
  if (v14)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v12, v13, "UndoTimerChangeStateFlow: Error publishing Success output.", v20, 2u);

    v12 = v15;
  }

  else
  {
  }

  (*(v18 + 8))(v17, v19);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v21 = v0[146];
  v22 = v0[145];
  sub_12383C();
  sub_7C4BC(v21);
  v23 = v0[204];
  v24 = v0[201];
  v25 = v0[200];
  v26 = v0[199];
  v27 = v0[198];
  v28 = v0[195];
  v29 = v0[194];
  v30 = v0[191];
  v31 = v0[190];
  v32 = v0[187];
  v35 = v0[184];
  v36 = v0[183];
  v37 = v0[180];
  v38 = v0[179];
  v39 = v0[178];
  v40 = v0[175];
  v41 = v0[174];
  v42 = v0[171];
  v43 = v0[168];
  v44 = v0[165];
  v45 = v0[164];
  v46 = v0[161];
  v47 = v0[160];
  v48 = v0[159];
  v49 = v0[158];
  v50 = v0[155];
  v51 = v0[153];
  v52 = v0[152];
  v53 = v0[150];
  v54 = v0[147];

  v33 = v0[1];

  return v33();
}

uint64_t sub_73650()
{
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2480);
  v3 = *(v0 + 2472);

  sub_E498(v3, v2);
  v4 = *(v0 + 712);
  *(v0 + 216) = *(v0 + 696);
  *(v0 + 232) = v4;
  *(v0 + 248) = *(v0 + 728);
  sub_E344(v0 + 216, v0 + 416, &qword_160860, &unk_128368);
  if (*(v0 + 440))
  {
    sub_2F4EC((v0 + 416), v0 + 376);
    sub_123ACC();
    v5 = *(v0 + 480);
    v6 = *(v0 + 488);
    sub_23B08((v0 + 456), v5);
    v7 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v8 = swift_task_alloc();
    *(v0 + 2536) = v8;
    *v8 = v0;
    v8[1] = sub_73C10;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 376, v5, v6);
  }

  else
  {
    v9 = *(v0 + 2368);
    sub_5CA8(v0 + 416, &qword_160860, &unk_128368);
    v10 = sub_125AAC();
    v11 = sub_125DEC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "[UndoTimerChangeStateFlow] Generated Success output via RF, but it was nil!", v12, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v13 = 6;
    swift_willThrow();
    sub_5CA8(v0 + 216, &qword_160860, &unk_128368);
    v14 = *(v0 + 2368);
    v15 = *(v0 + 1648);
    v16 = *(v0 + 1640);
    v17 = *(v0 + 1592);
    v18 = *(v0 + 1480);
    v19 = *(v0 + 1168);
    (*(*(v0 + 1488) + 104))(v17, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v18);
    v16(v17, 0, 1, v18);
    v20 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v17, v19 + v20, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    v21 = sub_125AAC();
    v22 = sub_125DEC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 2328);
    v25 = *(v0 + 2320);
    v26 = *(v0 + 1392);
    v27 = *(v0 + 1384);
    v28 = *(v0 + 1376);
    if (v23)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v21, v22, "UndoTimerChangeStateFlow: Error publishing Success output.", v29, 2u);

      v21 = v24;
    }

    else
    {
    }

    (*(v27 + 8))(v26, v28);
    (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
    v30 = *(v0 + 1168);
    v31 = *(v0 + 1160);
    sub_12383C();
    sub_7C4BC(v30);
    v32 = *(v0 + 1632);
    v33 = *(v0 + 1608);
    v34 = *(v0 + 1600);
    v35 = *(v0 + 1592);
    v36 = *(v0 + 1584);
    v37 = *(v0 + 1560);
    v38 = *(v0 + 1552);
    v39 = *(v0 + 1528);
    v40 = *(v0 + 1520);
    v41 = *(v0 + 1496);
    v44 = *(v0 + 1472);
    v45 = *(v0 + 1464);
    v46 = *(v0 + 1440);
    v47 = *(v0 + 1432);
    v48 = *(v0 + 1424);
    v49 = *(v0 + 1400);
    v50 = *(v0 + 1392);
    v51 = *(v0 + 1368);
    v52 = *(v0 + 1344);
    v53 = *(v0 + 1320);
    v54 = *(v0 + 1312);
    v55 = *(v0 + 1288);
    v56 = *(v0 + 1280);
    v57 = *(v0 + 1272);
    v58 = *(v0 + 1264);
    v59 = *(v0 + 1240);
    v60 = *(v0 + 1224);
    v61 = *(v0 + 1216);
    v62 = *(v0 + 1200);
    v63 = *(v0 + 1176);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_73C10()
{
  v2 = *(*v1 + 2536);
  v5 = *v1;
  *(*v1 + 2544) = v0;

  if (v0)
  {
    v3 = sub_76944;
  }

  else
  {
    v3 = sub_73D50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_73D50()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  sub_5BB0(v0 + 57);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_followupPluginAction;
  swift_beginAccess();
  sub_E344(v4 + v5, v3, &qword_160838, &qword_128330);
  v6 = (*(v1 + 48))(v3, 1, v2);
  v7 = v0[291];
  v8 = v0[290];
  if (v6 == 1)
  {
    v9 = v0[174];
    v10 = v0[173];
    v11 = v0[172];
    v12 = v0[147];

    sub_5BB0(v0 + 47);
    sub_5CA8((v0 + 27), &qword_160860, &unk_128368);
    (*(v10 + 8))(v9, v11);
    sub_5CA8(v12, &qword_160838, &qword_128330);
    (*(v0[182] + 8))(v0[183], v0[181]);
    v13 = v0[146];
    v14 = v0[145];
    sub_12383C();
    v15 = v13;
  }

  else
  {
    v16 = v0[182];
    v55 = v0[181];
    v57 = v0[183];
    v17 = v0[173];
    v18 = v0[172];
    v19 = v0[150];
    v20 = v0[149];
    v21 = v0[148];
    v51 = v0[174];
    v53 = v0[146];
    v22 = v0[145];
    (*(v20 + 32))(v19, v0[147], v21);
    sub_12384C();

    (*(v20 + 8))(v19, v21);
    sub_5BB0(v0 + 47);
    sub_5CA8((v0 + 27), &qword_160860, &unk_128368);
    (*(v17 + 8))(v51, v18);
    (*(v16 + 8))(v57, v55);
    v15 = v53;
  }

  sub_7C4BC(v15);
  v23 = v0[204];
  v24 = v0[201];
  v25 = v0[200];
  v26 = v0[199];
  v27 = v0[198];
  v28 = v0[195];
  v29 = v0[194];
  v30 = v0[191];
  v31 = v0[190];
  v32 = v0[187];
  v35 = v0[184];
  v36 = v0[183];
  v37 = v0[180];
  v38 = v0[179];
  v39 = v0[178];
  v40 = v0[175];
  v41 = v0[174];
  v42 = v0[171];
  v43 = v0[168];
  v44 = v0[165];
  v45 = v0[164];
  v46 = v0[161];
  v47 = v0[160];
  v48 = v0[159];
  v49 = v0[158];
  v50 = v0[155];
  v52 = v0[153];
  v54 = v0[152];
  v56 = v0[150];
  v58 = v0[147];

  v33 = v0[1];

  return v33();
}

uint64_t sub_74168()
{
  v1 = *(*v0 + 2552);
  v2 = *(*v0 + 1496);
  v3 = *(*v0 + 1488);
  v4 = *(*v0 + 1480);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_742EC, 0, 0);
}

uint64_t sub_742EC()
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

uint64_t sub_74530()
{
  v1 = *(*v0 + 2560);
  v2 = *(*v0 + 1496);
  v3 = *(*v0 + 1488);
  v4 = *(*v0 + 1480);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_7D660, 0, 0);
}

uint64_t sub_746B4()
{
  v1 = v0[247];
  v2 = v0[243];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[239];
  v13 = v0[237];
  v14 = v0[180];
  v15 = v0[177];
  v51 = v0[175];
  v53 = v0[176];
  v16 = v0[173];
  v17 = v0[172];
  if (v11)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v18, 2u);
  }

  (*(v16 + 8))(v51, v17);
  (*(v15 + 8))(v14, v53);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v19 = v0[146];
  v20 = v0[145];
  sub_12383C();
  sub_7C4BC(v19);
  v21 = v0[204];
  v22 = v0[201];
  v23 = v0[200];
  v24 = v0[199];
  v25 = v0[198];
  v26 = v0[195];
  v27 = v0[194];
  v28 = v0[191];
  v29 = v0[190];
  v30 = v0[187];
  v33 = v0[184];
  v34 = v0[183];
  v35 = v0[180];
  v36 = v0[179];
  v37 = v0[178];
  v38 = v0[175];
  v39 = v0[174];
  v40 = v0[171];
  v41 = v0[168];
  v42 = v0[165];
  v43 = v0[164];
  v44 = v0[161];
  v45 = v0[160];
  v46 = v0[159];
  v47 = v0[158];
  v48 = v0[155];
  v49 = v0[153];
  v50 = v0[152];
  v52 = v0[150];
  v54 = v0[147];

  v31 = v0[1];

  return v31();
}

uint64_t sub_74A94()
{
  v1 = v0[252];
  v2 = v0[243];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[239];
  v13 = v0[237];
  v14 = v0[180];
  v15 = v0[177];
  v51 = v0[175];
  v53 = v0[176];
  v16 = v0[173];
  v17 = v0[172];
  if (v11)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v18, 2u);
  }

  (*(v16 + 8))(v51, v17);
  (*(v15 + 8))(v14, v53);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v19 = v0[146];
  v20 = v0[145];
  sub_12383C();
  sub_7C4BC(v19);
  v21 = v0[204];
  v22 = v0[201];
  v23 = v0[200];
  v24 = v0[199];
  v25 = v0[198];
  v26 = v0[195];
  v27 = v0[194];
  v28 = v0[191];
  v29 = v0[190];
  v30 = v0[187];
  v33 = v0[184];
  v34 = v0[183];
  v35 = v0[180];
  v36 = v0[179];
  v37 = v0[178];
  v38 = v0[175];
  v39 = v0[174];
  v40 = v0[171];
  v41 = v0[168];
  v42 = v0[165];
  v43 = v0[164];
  v44 = v0[161];
  v45 = v0[160];
  v46 = v0[159];
  v47 = v0[158];
  v48 = v0[155];
  v49 = v0[153];
  v50 = v0[152];
  v52 = v0[150];
  v54 = v0[147];

  v31 = v0[1];

  return v31();
}

uint64_t sub_74E74()
{
  v1 = v0[254];
  v2 = v0[243];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[239];
  v13 = v0[237];
  v14 = v0[180];
  v15 = v0[177];
  v51 = v0[175];
  v53 = v0[176];
  v16 = v0[173];
  v17 = v0[172];
  if (v11)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v18, 2u);
  }

  (*(v16 + 8))(v51, v17);
  (*(v15 + 8))(v14, v53);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v19 = v0[146];
  v20 = v0[145];
  sub_12383C();
  sub_7C4BC(v19);
  v21 = v0[204];
  v22 = v0[201];
  v23 = v0[200];
  v24 = v0[199];
  v25 = v0[198];
  v26 = v0[195];
  v27 = v0[194];
  v28 = v0[191];
  v29 = v0[190];
  v30 = v0[187];
  v33 = v0[184];
  v34 = v0[183];
  v35 = v0[180];
  v36 = v0[179];
  v37 = v0[178];
  v38 = v0[175];
  v39 = v0[174];
  v40 = v0[171];
  v41 = v0[168];
  v42 = v0[165];
  v43 = v0[164];
  v44 = v0[161];
  v45 = v0[160];
  v46 = v0[159];
  v47 = v0[158];
  v48 = v0[155];
  v49 = v0[153];
  v50 = v0[152];
  v52 = v0[150];
  v54 = v0[147];

  v31 = v0[1];

  return v31();
}

uint64_t sub_75254()
{
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2048);

  sub_E498(v2, v1);
  v3 = *(v0 + 2104);
  v4 = *(v0 + 1944);
  v5 = *(v0 + 1648);
  v6 = *(v0 + 1640);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1480);
  v9 = *(v0 + 1168);
  (*(*(v0 + 1488) + 104))(v7, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v8);
  v6(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v7, v9 + v10, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v11 = sub_125AAC();
  v12 = sub_125DEC();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1912);
  v15 = *(v0 + 1896);
  v16 = *(v0 + 1440);
  v17 = *(v0 + 1416);
  v53 = *(v0 + 1400);
  v55 = *(v0 + 1408);
  v18 = *(v0 + 1384);
  v19 = *(v0 + 1376);
  if (v13)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v11, v12, "UndoTimerChangeStateFlow: Error publishing Success output.", v20, 2u);
  }

  (*(v18 + 8))(v53, v19);
  (*(v17 + 8))(v16, v55);
  (*(*(v0 + 1456) + 8))(*(v0 + 1472), *(v0 + 1448));
  v21 = *(v0 + 1168);
  v22 = *(v0 + 1160);
  sub_12383C();
  sub_7C4BC(v21);
  v23 = *(v0 + 1632);
  v24 = *(v0 + 1608);
  v25 = *(v0 + 1600);
  v26 = *(v0 + 1592);
  v27 = *(v0 + 1584);
  v28 = *(v0 + 1560);
  v29 = *(v0 + 1552);
  v30 = *(v0 + 1528);
  v31 = *(v0 + 1520);
  v32 = *(v0 + 1496);
  v35 = *(v0 + 1472);
  v36 = *(v0 + 1464);
  v37 = *(v0 + 1440);
  v38 = *(v0 + 1432);
  v39 = *(v0 + 1424);
  v40 = *(v0 + 1400);
  v41 = *(v0 + 1392);
  v42 = *(v0 + 1368);
  v43 = *(v0 + 1344);
  v44 = *(v0 + 1320);
  v45 = *(v0 + 1312);
  v46 = *(v0 + 1288);
  v47 = *(v0 + 1280);
  v48 = *(v0 + 1272);
  v49 = *(v0 + 1264);
  v50 = *(v0 + 1240);
  v51 = *(v0 + 1224);
  v52 = *(v0 + 1216);
  v54 = *(v0 + 1200);
  v56 = *(v0 + 1176);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_75650()
{
  sub_5BB0(v0 + 117);
  sub_5BB0(v0 + 62);
  v1 = v0[265];
  v2 = v0[243];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[239];
  v13 = v0[237];
  v14 = v0[180];
  v15 = v0[177];
  v51 = v0[175];
  v53 = v0[176];
  v16 = v0[173];
  v17 = v0[172];
  if (v11)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v18, 2u);
  }

  (*(v16 + 8))(v51, v17);
  (*(v15 + 8))(v14, v53);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v19 = v0[146];
  v20 = v0[145];
  sub_12383C();
  sub_7C4BC(v19);
  v21 = v0[204];
  v22 = v0[201];
  v23 = v0[200];
  v24 = v0[199];
  v25 = v0[198];
  v26 = v0[195];
  v27 = v0[194];
  v28 = v0[191];
  v29 = v0[190];
  v30 = v0[187];
  v33 = v0[184];
  v34 = v0[183];
  v35 = v0[180];
  v36 = v0[179];
  v37 = v0[178];
  v38 = v0[175];
  v39 = v0[174];
  v40 = v0[171];
  v41 = v0[168];
  v42 = v0[165];
  v43 = v0[164];
  v44 = v0[161];
  v45 = v0[160];
  v46 = v0[159];
  v47 = v0[158];
  v48 = v0[155];
  v49 = v0[153];
  v50 = v0[152];
  v52 = v0[150];
  v54 = v0[147];

  v31 = v0[1];

  return v31();
}

uint64_t sub_75A40()
{
  v1 = v0[300];
  v2 = v0[296];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[291];
  v13 = v0[290];
  v14 = v0[174];
  v15 = v0[173];
  v16 = v0[172];
  if (v11)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v17, 2u);

    v9 = v12;
  }

  else
  {
  }

  (*(v15 + 8))(v14, v16);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v18 = v0[146];
  v19 = v0[145];
  sub_12383C();
  sub_7C4BC(v18);
  v20 = v0[204];
  v21 = v0[201];
  v22 = v0[200];
  v23 = v0[199];
  v24 = v0[198];
  v25 = v0[195];
  v26 = v0[194];
  v27 = v0[191];
  v28 = v0[190];
  v29 = v0[187];
  v32 = v0[184];
  v33 = v0[183];
  v34 = v0[180];
  v35 = v0[179];
  v36 = v0[178];
  v37 = v0[175];
  v38 = v0[174];
  v39 = v0[171];
  v40 = v0[168];
  v41 = v0[165];
  v42 = v0[164];
  v43 = v0[161];
  v44 = v0[160];
  v45 = v0[159];
  v46 = v0[158];
  v47 = v0[155];
  v48 = v0[153];
  v49 = v0[152];
  v50 = v0[150];
  v51 = v0[147];

  v30 = v0[1];

  return v30();
}

uint64_t sub_75DF8()
{
  v1 = v0[305];
  v2 = v0[296];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[291];
  v13 = v0[290];
  v14 = v0[174];
  v15 = v0[173];
  v16 = v0[172];
  if (v11)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v17, 2u);

    v9 = v12;
  }

  else
  {
  }

  (*(v15 + 8))(v14, v16);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v18 = v0[146];
  v19 = v0[145];
  sub_12383C();
  sub_7C4BC(v18);
  v20 = v0[204];
  v21 = v0[201];
  v22 = v0[200];
  v23 = v0[199];
  v24 = v0[198];
  v25 = v0[195];
  v26 = v0[194];
  v27 = v0[191];
  v28 = v0[190];
  v29 = v0[187];
  v32 = v0[184];
  v33 = v0[183];
  v34 = v0[180];
  v35 = v0[179];
  v36 = v0[178];
  v37 = v0[175];
  v38 = v0[174];
  v39 = v0[171];
  v40 = v0[168];
  v41 = v0[165];
  v42 = v0[164];
  v43 = v0[161];
  v44 = v0[160];
  v45 = v0[159];
  v46 = v0[158];
  v47 = v0[155];
  v48 = v0[153];
  v49 = v0[152];
  v50 = v0[150];
  v51 = v0[147];

  v30 = v0[1];

  return v30();
}

uint64_t sub_761B0()
{
  v1 = v0[307];
  v2 = v0[296];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[291];
  v13 = v0[290];
  v14 = v0[174];
  v15 = v0[173];
  v16 = v0[172];
  if (v11)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v17, 2u);

    v9 = v12;
  }

  else
  {
  }

  (*(v15 + 8))(v14, v16);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v18 = v0[146];
  v19 = v0[145];
  sub_12383C();
  sub_7C4BC(v18);
  v20 = v0[204];
  v21 = v0[201];
  v22 = v0[200];
  v23 = v0[199];
  v24 = v0[198];
  v25 = v0[195];
  v26 = v0[194];
  v27 = v0[191];
  v28 = v0[190];
  v29 = v0[187];
  v32 = v0[184];
  v33 = v0[183];
  v34 = v0[180];
  v35 = v0[179];
  v36 = v0[178];
  v37 = v0[175];
  v38 = v0[174];
  v39 = v0[171];
  v40 = v0[168];
  v41 = v0[165];
  v42 = v0[164];
  v43 = v0[161];
  v44 = v0[160];
  v45 = v0[159];
  v46 = v0[158];
  v47 = v0[155];
  v48 = v0[153];
  v49 = v0[152];
  v50 = v0[150];
  v51 = v0[147];

  v30 = v0[1];

  return v30();
}

uint64_t sub_76568()
{
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2480);
  v3 = *(v0 + 2472);

  sub_E498(v3, v2);
  v4 = *(v0 + 2528);
  v5 = *(v0 + 2368);
  v6 = *(v0 + 1648);
  v7 = *(v0 + 1640);
  v8 = *(v0 + 1592);
  v9 = *(v0 + 1480);
  v10 = *(v0 + 1168);
  (*(*(v0 + 1488) + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v9);
  v7(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v8, v10 + v11, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v12 = sub_125AAC();
  v13 = sub_125DEC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 2328);
  v16 = *(v0 + 2320);
  v17 = *(v0 + 1392);
  v18 = *(v0 + 1384);
  v19 = *(v0 + 1376);
  if (v14)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v12, v13, "UndoTimerChangeStateFlow: Error publishing Success output.", v20, 2u);

    v12 = v15;
  }

  else
  {
  }

  (*(v18 + 8))(v17, v19);
  (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
  v21 = *(v0 + 1168);
  v22 = *(v0 + 1160);
  sub_12383C();
  sub_7C4BC(v21);
  v23 = *(v0 + 1632);
  v24 = *(v0 + 1608);
  v25 = *(v0 + 1600);
  v26 = *(v0 + 1592);
  v27 = *(v0 + 1584);
  v28 = *(v0 + 1560);
  v29 = *(v0 + 1552);
  v30 = *(v0 + 1528);
  v31 = *(v0 + 1520);
  v32 = *(v0 + 1496);
  v35 = *(v0 + 1472);
  v36 = *(v0 + 1464);
  v37 = *(v0 + 1440);
  v38 = *(v0 + 1432);
  v39 = *(v0 + 1424);
  v40 = *(v0 + 1400);
  v41 = *(v0 + 1392);
  v42 = *(v0 + 1368);
  v43 = *(v0 + 1344);
  v44 = *(v0 + 1320);
  v45 = *(v0 + 1312);
  v46 = *(v0 + 1288);
  v47 = *(v0 + 1280);
  v48 = *(v0 + 1272);
  v49 = *(v0 + 1264);
  v50 = *(v0 + 1240);
  v51 = *(v0 + 1224);
  v52 = *(v0 + 1216);
  v53 = *(v0 + 1200);
  v54 = *(v0 + 1176);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_76944()
{
  sub_5BB0(v0 + 47);
  sub_5CA8((v0 + 27), &qword_160860, &unk_128368);
  sub_5BB0(v0 + 57);
  v1 = v0[318];
  v2 = v0[296];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[291];
  v13 = v0[290];
  v14 = v0[174];
  v15 = v0[173];
  v16 = v0[172];
  if (v11)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v17, 2u);

    v9 = v12;
  }

  else
  {
  }

  (*(v15 + 8))(v14, v16);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v18 = v0[146];
  v19 = v0[145];
  sub_12383C();
  sub_7C4BC(v18);
  v20 = v0[204];
  v21 = v0[201];
  v22 = v0[200];
  v23 = v0[199];
  v24 = v0[198];
  v25 = v0[195];
  v26 = v0[194];
  v27 = v0[191];
  v28 = v0[190];
  v29 = v0[187];
  v32 = v0[184];
  v33 = v0[183];
  v34 = v0[180];
  v35 = v0[179];
  v36 = v0[178];
  v37 = v0[175];
  v38 = v0[174];
  v39 = v0[171];
  v40 = v0[168];
  v41 = v0[165];
  v42 = v0[164];
  v43 = v0[161];
  v44 = v0[160];
  v45 = v0[159];
  v46 = v0[158];
  v47 = v0[155];
  v48 = v0[153];
  v49 = v0[152];
  v50 = v0[150];
  v51 = v0[147];

  v30 = v0[1];

  return v30();
}

uint64_t sub_76D24(uint64_t a1, uint64_t a2)
{
  v3 = sub_5AE8(&unk_162190, &unk_128500);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_12392C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_123B1C();

  return sub_123B2C();
}

uint64_t sub_76E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15[-1] - v7;
  sub_2F488(a2 + 72, v15);
  sub_23B08(v15, v15[3]);
  isa = sub_125D5C().super.super.isa;
  v10 = [objc_allocWithZone(sub_12550C()) init];
  [v10 setTargetTimer:0];
  [v10 setToDuration:isa];
  [v10 setToLabel:0];

  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  sub_12584C();

  return sub_5BB0(v15);
}

uint64_t sub_77048(uint64_t a1)
{
  v2 = sub_12571C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5AE8(&qword_160AE8, &qword_1284F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v26[-1] - v9;
  sub_E344(a1, &v26[-1] - v9, &qword_160AE8, &qword_1284F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v11 = sub_125ABC();
    sub_5B30(v11, qword_160820);
    v12 = sub_125AAC();
    v13 = sub_125DEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "UndoTimerChangeStateFlow: set and start timer failed", v14, 2u);
    }

    LOBYTE(v26[0]) = 0;
    sub_5AE8(&qword_160AD0, &qword_1284E0);
    sub_125D1C();
    v15 = sub_12547C();
    v26[3] = v15;
    v26[4] = &protocol witness table for ABCReport;
    v16 = sub_23B4C(v26);
    sub_7D14C(&qword_160AE0, &type metadata accessor for TimerOperationError);
    swift_allocError();
    (*(v3 + 16))(v17, v6, v2);
    *v16 = sub_122E7C();
    v18 = enum case for ErrorSubType.managerReturnedError(_:);
    v19 = sub_12515C();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.timerUndoHandle(_:), v15);
    sub_1251AC();
    (*(v3 + 8))(v6, v2);
    sub_5BB0(v26);
  }

  else
  {
    sub_5CA8(v10, &qword_160AE8, &qword_1284F8);
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v21 = sub_125ABC();
    sub_5B30(v21, qword_160820);
    v22 = sub_125AAC();
    v23 = sub_125DFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "UndoTimerChangeStateFlow: set and start timer completion", v24, 2u);
    }

    LOBYTE(v26[0]) = 1;
    sub_5AE8(&qword_160AD0, &qword_1284E0);
    return sub_125D1C();
  }
}

uint64_t sub_774D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-1] - v7;
  sub_2F488(a2 + 72, v18);
  sub_23B08(v18, v19);
  v9 = sub_12583C();
  if (v9)
  {

    sub_5BB0(v18);
    sub_2F488(a2 + 72, v18);
    sub_23B08(v18, v19);
    (*(v5 + 16))(v8, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v8, v4);
    sub_1257FC();

    return sub_5BB0(v18);
  }

  else
  {
    sub_5BB0(v18);
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v13 = sub_125ABC();
    sub_5B30(v13, qword_160820);
    v14 = sub_125AAC();
    v15 = sub_125DFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "UndoTimerChangeStateFlow: no need to stop timer as its already done.", v16, 2u);
    }

    LOBYTE(v18[0]) = 1;
    return sub_125D1C();
  }
}

uint64_t sub_77770(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v31 = a2;
  v7 = sub_12571C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5AE8(&qword_160AD8, &qword_1284F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v32[-1] - v14;
  sub_E344(a1, &v32[-1] - v14, &qword_160AD8, &qword_1284F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v15, v7);
    v16 = v8;
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v17 = sub_125ABC();
    sub_5B30(v17, qword_160820);
    v18 = sub_125AAC();
    v19 = sub_125DEC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, a4, v20, 2u);
    }

    LOBYTE(v32[0]) = 0;
    sub_5AE8(&qword_160AD0, &qword_1284E0);
    sub_125D1C();
    v21 = sub_12547C();
    v32[3] = v21;
    v32[4] = &protocol witness table for ABCReport;
    v22 = sub_23B4C(v32);
    sub_7D14C(&qword_160AE0, &type metadata accessor for TimerOperationError);
    swift_allocError();
    (*(v16 + 16))(v23, v11, v7);
    *v22 = sub_122E7C();
    v24 = enum case for ErrorSubType.managerReturnedError(_:);
    v25 = sub_12515C();
    (*(*(v25 - 8) + 104))(v22, v24, v25);
    (*(*(v21 - 8) + 104))(v22, enum case for ABCReport.timerUndoHandle(_:), v21);
    sub_1251AC();
    (*(v16 + 8))(v11, v7);
    sub_5BB0(v32);
  }

  else
  {
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v27 = sub_125ABC();
    sub_5B30(v27, qword_160820);
    v28 = sub_125AAC();
    v29 = sub_125DFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, a3, v30, 2u);
    }

    LOBYTE(v32[0]) = 1;
    sub_5AE8(&qword_160AD0, &qword_1284E0);
    return sub_125D1C();
  }
}

uint64_t sub_77BEC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = a6;
  v26 = a7;
  v23 = a1;
  v24 = a5;
  v10 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_2F488(a2 + 72, v27);
  v15 = v28;
  v16 = v29;
  sub_23B08(v27, v28);
  sub_30B8C(0, &qword_160620, NSNumber_ptr);
  isa = sub_125EEC(0).super.super.isa;
  v18 = [objc_allocWithZone(a4(0)) init];
  [a3 setShouldMatchAny:isa];
  [v18 setTargetTimer:a3];

  (*(v11 + 16))(v14, v23, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v19, v14, v10);
  v26(v18, v25, v20, v15, v16);

  return sub_5BB0(v27);
}

uint64_t sub_77DEC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_77E8C, 0, 0);
}

uint64_t sub_77E8C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_124FCC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v1, v2 + v6, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v7 = *(v2 + 64);
  v8 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_78028;

  return v11(0x73614272656D6974, 0xEF726F7272652365, _swiftEmptyArrayStorage);
}

uint64_t sub_78028(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_78474, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[12] = v7;
    *v7 = v6;
    v7[1] = sub_781A8;

    return sub_7BAF0(a1);
  }
}

uint64_t sub_781A8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_78334;
  }

  else
  {
    v3 = sub_782BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_782BC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  sub_12383C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_78334()
{
  v1 = *(v0 + 104);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_160820);
  v3 = sub_125AAC();
  v4 = sub_125DEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "UndoTimerChangeStateFlow: Error publishing generic failure output.", v5, 2u);
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 40);

  sub_12383C();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_78474()
{
  v1 = v0[11];
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_160820);
  v3 = sub_125AAC();
  v4 = sub_125DEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "UndoTimerChangeStateFlow: Error publishing generic failure output.", v5, 2u);
  }

  v6 = v0[8];
  v7 = v0[5];

  sub_12383C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_785AC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_78648, 0, 0);
}

uint64_t sub_78648()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = enum case for SiriTimeEventSender.ReasonDescription.timerNotFound(_:);
  v4 = sub_124FCC();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v1, v2 + v6, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v7 = *(v2 + 64);
  v8 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_787F8;

  return v11(0xD000000000000012, 0x800000000012C5A0, _swiftEmptyArrayStorage);
}

uint64_t sub_787F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_78C44, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[11] = v7;
    *v7 = v6;
    v7[1] = sub_78978;

    return sub_7BAF0(a1);
  }
}

uint64_t sub_78978()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_78B04;
  }

  else
  {
    v3 = sub_78A8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_78A8C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_12383C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_78B04()
{
  v1 = *(v0 + 96);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_160820);
  v3 = sub_125AAC();
  v4 = sub_125DEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "UndoTimerChangeStateFlow: Error publishing timerNotFound failure output.", v5, 2u);
  }

  v6 = *(v0 + 56);
  v7 = *(v0 + 40);

  sub_12383C();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_78C44()
{
  v1 = v0[10];
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_160820);
  v3 = sub_125AAC();
  v4 = sub_125DEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "UndoTimerChangeStateFlow: Error publishing timerNotFound failure output.", v5, 2u);
  }

  v6 = v0[7];
  v7 = v0[5];

  sub_12383C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_78D7C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_78E1C, 0, 0);
}

uint64_t sub_78E1C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = enum case for SiriTimeEventSender.ReasonDescription.timerAlreadyRunning(_:);
  v5 = sub_124FCC();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v1, v2 + v7, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v8 = *(v2 + 56);
  v9 = sub_113D6C(0, 0);
  v0[9] = v9;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = xmmword_126CB0;
  *(v10 + 32) = 0x72656D6974;
  *(v10 + 40) = 0xE500000000000000;
  *(v10 + 72) = type metadata accessor for TimerTimer(0);
  *(v10 + 48) = v9;
  v11 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v14 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_79034;

  return v14(0xD00000000000001ALL, 0x800000000012D780, v10);
}

uint64_t sub_79034(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  v8 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v6 = sub_7947C;
  }

  else
  {
    v6 = sub_79168;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_79168()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_79210;
  v5 = v0[12];

  return sub_7BAF0(v5);
}

uint64_t sub_79210()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_7933C;
  }

  else
  {
    v4 = sub_7D764;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7933C()
{
  v1 = *(v0 + 120);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_160820);
  v3 = sub_125AAC();
  v4 = sub_125DEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "UndoTimerChangeStateFlow: Error publishing timerAlreadyRunning failure output.", v5, 2u);
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 40);

  sub_12383C();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_7947C()
{
  v1 = v0[9];

  v2 = v0[13];
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v3 = sub_125ABC();
  sub_5B30(v3, qword_160820);
  v4 = sub_125AAC();
  v5 = sub_125DEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "UndoTimerChangeStateFlow: Error publishing timerAlreadyRunning failure output.", v6, 2u);
  }

  v7 = v0[8];
  v8 = v0[5];

  sub_12383C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_795BC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_7965C, 0, 0);
}

uint64_t sub_7965C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = enum case for SiriTimeEventSender.ReasonDescription.timerAlreadyPaused(_:);
  v5 = sub_124FCC();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v1, v2 + v7, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v8 = *(v2 + 48);
  v9 = *(v2 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState + 24);
  v10 = *(v2 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState + 32);
  sub_23B08((v2 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState), v9);
  v11 = sub_11CC78(v9, v10);
  v12 = sub_124D6C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_124D5C();
  v15 = [v3 remainingTime];
  v16 = v15;
  if (v15)
  {
    [v15 doubleValue];
  }

  sub_124D4C();

  v17 = sub_124D3C();
  v0[9] = v17;

  sub_5AE8(&qword_15F180, &unk_126E10);
  v18 = swift_allocObject();
  v0[10] = v18;
  *(v18 + 16) = xmmword_1270C0;
  *(v18 + 32) = 0xD000000000000011;
  *(v18 + 40) = 0x800000000012D730;
  *(v18 + 48) = v11 & 1;
  *(v18 + 72) = &type metadata for Bool;
  strcpy((v18 + 80), "remainingTime");
  *(v18 + 94) = -4864;
  *(v18 + 120) = sub_124D7C();
  *(v18 + 96) = v17;
  v19 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v22 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_7995C;

  return v22(0xD000000000000021, 0x800000000012D700, v18);
}

uint64_t sub_7995C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  v8 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v6 = sub_79DF8;
  }

  else
  {
    v6 = sub_79A90;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_79A90()
{
  v1 = v0[9];

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_79B2C;
  v3 = v0[12];

  return sub_7BAF0(v3);
}

uint64_t sub_79B2C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_79CB8;
  }

  else
  {
    v3 = sub_79C40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_79C40()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  sub_12383C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_79CB8()
{
  v1 = *(v0 + 120);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_160820);
  v3 = sub_125AAC();
  v4 = sub_125DEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "UndoTimerChangeStateFlow: Error publishing timerAlreadyPaused failure output.", v5, 2u);
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 40);

  sub_12383C();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_79DF8()
{
  v1 = v0[9];

  v2 = v0[13];
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v3 = sub_125ABC();
  sub_5B30(v3, qword_160820);
  v4 = sub_125AAC();
  v5 = sub_125DEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "UndoTimerChangeStateFlow: Error publishing timerAlreadyPaused failure output.", v6, 2u);
  }

  v7 = v0[8];
  v8 = v0[5];

  sub_12383C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_79F38(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_79F5C, 0, 0);
}

uint64_t sub_79F5C()
{
  [*(v0 + 56) mutableCopy];
  sub_125F4C();
  swift_unknownObjectRelease();
  sub_30B8C(0, &qword_160AF0, MTMutableTimer_ptr);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    *(v0 + 80) = v3;
    [v3 setState:v1];
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_7A1B8;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 104, 0, 0, 0xD000000000000025, 0x800000000012D750, sub_7D224, v4, &type metadata for Bool);
  }

  else
  {
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v7 = sub_125ABC();
    sub_5B30(v7, qword_160820);
    v8 = sub_125AAC();
    v9 = sub_125DEC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "UndoTimerChangeStateFlow: Failed to get mutableTimer copy", v10, 2u);
    }

    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_7A1B8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_7A2D0, 0, 0);
}

uint64_t sub_7A2D0()
{
  if (*(v0 + 104) == 1)
  {
    sub_1257EC();
    v1 = sub_1257BC();
  }

  else
  {

    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_7A35C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = [*(a2 + 112) updateTimer:a3];
  if (v11)
  {
    v12 = v11;
    v27 = *(v7 + 16);
    v27(v10, a1, v6);
    v26 = a1;
    v13 = *(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    v25 = *(v7 + 32);
    v25(v14 + ((v13 + 24) & ~v13), v10, v6);
    v32 = sub_7D2FC;
    v33 = v14;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v24 = &v30;
    v30 = sub_105C48;
    v31 = &unk_158DA8;
    v15 = _Block_copy(&aBlock);
    v16 = v12;
    v17 = a3;

    v18 = [v16 addSuccessBlock:v15];
    _Block_release(v15);

    v27(v10, v26, v6);
    v19 = (v13 + 16) & ~v13;
    v20 = swift_allocObject();
    v25(v20 + v19, v10, v6);
    v32 = sub_7D38C;
    v33 = v20;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_105C50;
    v31 = &unk_158DF8;
    v21 = _Block_copy(&aBlock);
    v22 = v16;

    v23 = [v22 addFailureBlock:v21];

    _Block_release(v21);
  }
}

uint64_t sub_7A674(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return _swift_task_switch(sub_7A69C, 0, 0);
}

uint64_t sub_7A69C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = [objc_allocWithZone(MTMutableTimer) initWithState:2 duration:*(v0 + 24)];
  *(v0 + 40) = v3;
  v4 = [v2 title];
  [v3 setTitle:v4];

  v5 = [v2 sound];
  [v3 setSound:v5];

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_7A834;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 64, 0, 0, 0xD000000000000032, 0x800000000012D680, sub_7CF74, v6, &type metadata for Bool);
}

uint64_t sub_7A834()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_7A94C, 0, 0);
}

uint64_t sub_7A94C()
{
  if (*(v0 + 64) == 1)
  {
    sub_1257EC();
    v1 = sub_1257BC();
  }

  else
  {

    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_7A9D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = [*(a2 + 112) addTimer:a3];
  if (v11)
  {
    v12 = v11;
    v27 = *(v7 + 16);
    v27(v10, a1, v6);
    v26 = a1;
    v13 = *(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    v25 = *(v7 + 32);
    v25(v14 + ((v13 + 24) & ~v13), v10, v6);
    v32 = sub_7CF80;
    v33 = v14;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v24 = &v30;
    v30 = sub_105C48;
    v31 = &unk_158BF0;
    v15 = _Block_copy(&aBlock);
    v16 = v12;
    v17 = a3;

    v18 = [v16 addSuccessBlock:v15];
    _Block_release(v15);

    v27(v10, v26, v6);
    v19 = (v13 + 16) & ~v13;
    v20 = swift_allocObject();
    v25(v20 + v19, v10, v6);
    v32 = sub_7CFA4;
    v33 = v20;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_105C50;
    v31 = &unk_158C40;
    v21 = _Block_copy(&aBlock);
    v22 = v16;

    v23 = [v22 addFailureBlock:v21];

    _Block_release(v21);
  }
}

uint64_t sub_7ACF0(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_160820);
  v7 = a2;
  v8 = sub_125AAC();
  v9 = sub_125DFC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = [v7 timerIDString];
    v13 = sub_125B9C();
    v15 = v14;

    v16 = sub_8530(v13, v15, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, a4, v10, 0xCu);
    sub_5BB0(v11);
  }

  v19 = 1;
  sub_5AE8(&qword_160AD0, &qword_1284E0);
  return sub_125D1C();
}

uint64_t sub_7AEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), const char *a4)
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_160820);
  swift_errorRetain();
  v7 = sub_125AAC();
  v8 = a3();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v7, v8, a4, v9, 0xCu);
    sub_5CA8(v10, &unk_160540, &unk_1295A0);
  }

  LOBYTE(v17[0]) = 0;
  sub_5AE8(&qword_160AD0, &qword_1284E0);
  sub_125D1C();
  v12 = sub_12547C();
  v17[3] = v12;
  v17[4] = &protocol witness table for ABCReport;
  v13 = sub_23B4C(v17);
  *v13 = sub_122E7C();
  v14 = enum case for ErrorSubType.managerReturnedError(_:);
  v15 = sub_12515C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(*(v12 - 8) + 104))(v13, enum case for ABCReport.timerUndoHandle(_:), v12);
  sub_1251AC();
  return sub_5BB0(v17);
}

void sub_7B100(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = [a2 timerIDString];
  v12 = sub_125B9C();
  v14 = v13;

  v15 = [*(a3 + 112) removeTimer:a2];
  if (v15)
  {
    v16 = v15;
    v30 = *(v7 + 16);
    v30(v10, a1, v6);
    v29 = a1;
    v17 = *(v7 + 80);
    v27 = v8;
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v14;
    v28 = *(v7 + 32);
    v28(v18 + ((v17 + 32) & ~v17), v10, v6);
    v35 = sub_7D094;
    v36 = v18;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_105C48;
    v34 = &unk_158C90;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 addSuccessBlock:v19];
    _Block_release(v19);

    v30(v10, v29, v6);
    v22 = (v17 + 16) & ~v17;
    v23 = swift_allocObject();
    v28(v23 + v22, v10, v6);
    v35 = sub_7D114;
    v36 = v23;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_105C50;
    v34 = &unk_158CE0;
    v24 = _Block_copy(&aBlock);
    v25 = v20;

    v26 = [v25 addFailureBlock:v24];

    _Block_release(v24);
  }

  else
  {
  }
}

uint64_t sub_7B480(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v5 = sub_125ABC();
  sub_5B30(v5, qword_160820);

  v6 = sub_125AAC();
  v7 = sub_125DFC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_8530(a2, a3, &v11);
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: removed mtTimer successfully, which had ID %s", v8, 0xCu);
    sub_5BB0(v9);
  }

  v12 = 1;
  sub_5AE8(&qword_160AD0, &qword_1284E0);
  return sub_125D1C();
}

uint64_t UndoTimerChangeStateFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  sub_5BB0((v0 + 72));

  v8 = *(v0 + 128);

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_followupPluginAction, &qword_160838, &qword_128330);
  sub_5BB0((v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState));
  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason, &qword_15F6E8, &unk_1271C0);
  return v0;
}

uint64_t UndoTimerChangeStateFlow.__deallocating_deinit()
{
  UndoTimerChangeStateFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_7B738()
{
  v2 = *v0;
  type metadata accessor for UndoTimerChangeStateFlow();
  return sub_12344C();
}

uint64_t sub_7B798(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return UndoTimerChangeStateFlow.execute()(a1);
}

uint64_t sub_7B834()
{
  type metadata accessor for UndoTimerChangeStateFlow();

  return sub_12347C();
}

char *sub_7B870(uint64_t a1, uint64_t a2, __int128 *a3, char *a4)
{
  v8 = sub_124EDC();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v17 = sub_12587C();
  v18 = &protocol witness table for SiriTimerManagerImpl;
  *&v16 = a1;
  type metadata accessor for PauseTimerCATsSimple();
  sub_124ECC();
  *(a4 + 2) = sub_124E7C();
  type metadata accessor for PauseTimerCATs_Async();
  sub_124ECC();
  *(a4 + 3) = sub_124DBC();
  type metadata accessor for ResumeTimerCATsSimple();
  sub_124ECC();
  *(a4 + 4) = sub_124E7C();
  type metadata accessor for ResumeTimerCATs_Async();
  sub_124ECC();
  *(a4 + 5) = sub_124DBC();
  type metadata accessor for PauseTimerCATPatternsExecutor(0);
  sub_124ECC();
  *(a4 + 6) = sub_124DBC();
  type metadata accessor for ResumeTimerCATPatternsExecutor(0);
  sub_124ECC();
  *(a4 + 7) = sub_124DBC();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  *(a4 + 8) = sub_124DBC();
  *(a4 + 15) = 0;
  *(a4 + 16) = 0;
  v10 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_followupPluginAction;
  v11 = sub_12372C();
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  a4[OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_operation] = 8;
  v12 = &a4[OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_remainingTime];
  *v12 = 0;
  v12[8] = 1;
  v13 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  v14 = sub_124FCC();
  (*(*(v14 - 8) + 56))(&a4[v13], 1, 1, v14);
  sub_2F4EC(&v16, (a4 + 72));
  sub_2F4EC(a3, &a4[OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState]);
  *(a4 + 14) = a2;
  return a4;
}

uint64_t sub_7BAF0(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_125ABC();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = sub_124FFC();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v8 = sub_12501C();
  v1[19] = v8;
  v9 = *(v8 - 8);
  v1[20] = v9;
  v10 = *(v9 + 64) + 15;
  v1[21] = swift_task_alloc();
  v11 = sub_12392C();
  v1[22] = v11;
  v12 = *(v11 - 8);
  v1[23] = v12;
  v13 = *(v12 + 64) + 15;
  v1[24] = swift_task_alloc();
  v14 = sub_12368C();
  v1[25] = v14;
  v15 = *(v14 - 8);
  v1[26] = v15;
  v16 = *(v15 + 64) + 15;
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_7BD20, 0, 0);
}

uint64_t sub_7BD20()
{
  v1 = v0[27];
  v2 = v0[24];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  sub_12364C();
  sub_12391C();
  (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v5);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v6 = v0[21];
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = sub_5B30(v10, qword_160820);
  (*(v9 + 16))(v8, v11, v10);
  mach_absolute_time();
  sub_12502C();
  v12 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_7BEA0;
  v14 = v0[27];
  v15 = v0[24];
  v16 = v0[21];
  v17 = v0[12];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 2, v14, v15, v16, 0);
}

uint64_t sub_7BEA0()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_7C2A4;
  }

  else
  {
    v3 = sub_7BFB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7BFB4()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_7C078;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_7C078()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_7C39C;
  }

  else
  {
    v3 = sub_7C18C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7C18C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  v12 = v0[18];
  v13 = v0[15];
  sub_5BB0(v0 + 2);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0(v0 + 7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_7C2A4()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[18];
  v12 = v0[15];

  v13 = v0[1];

  return v13();
}

uint64_t sub_7C39C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  sub_5BB0(v0 + 2);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0(v0 + 7);
  v10 = v0[31];
  v11 = v0[27];
  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];

  v16 = v0[1];

  return v16();
}

uint64_t sub_7C4BC(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15F6F0, &unk_128340);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v50 = &v46 - v4;
  v5 = sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v46 - v7;
  v8 = sub_12370C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v19 = sub_124FCC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_E344(a1 + v24, v18, &qword_15F6E8, &unk_1271C0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_5CA8(v18, &qword_15F6E8, &unk_1271C0);
    (*(v9 + 104))(v12, enum case for ActivityType.completed(_:), v8);
    if (qword_15EE68 != -1)
    {
      swift_once();
    }

    v25 = sub_124FDC();
    sub_5B30(v25, qword_1675A8);
    v26 = sub_12353C();
    v27 = v49;
    (*(*(v26 - 8) + 56))(v49, 1, 1, v26);
    if (qword_15EE70 != -1)
    {
      swift_once();
    }

    v28 = sub_124FEC();
    v29 = sub_5B30(v28, qword_1675C0);
    v30 = *(v28 - 8);
    v31 = v50;
    (*(v30 + 16))(v50, v29, v28);
    (*(v30 + 56))(v31, 0, 1, v28);
    v32 = v48;
    (*(v20 + 56))(v48, 1, 1, v19);
    sub_124FBC();
    sub_5CA8(v32, &qword_15F6E8, &unk_1271C0);
    sub_5CA8(v31, &qword_15F6F0, &unk_128340);
    sub_5CA8(v27, &qword_15F6F8, &qword_1271D0);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v34 = v19;
    (*(v20 + 32))(v23, v18, v19);
    v35 = *(v9 + 104);
    v47 = v12;
    v35(v12, enum case for ActivityType.failed(_:), v8);
    v46 = v8;
    v36 = v23;
    if (qword_15EE68 != -1)
    {
      swift_once();
    }

    v37 = sub_124FDC();
    sub_5B30(v37, qword_1675A8);
    v38 = sub_12353C();
    v39 = v49;
    (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
    if (qword_15EE70 != -1)
    {
      swift_once();
    }

    v40 = sub_124FEC();
    v41 = sub_5B30(v40, qword_1675C0);
    v42 = *(v40 - 8);
    v43 = v50;
    (*(v42 + 16))(v50, v41, v40);
    (*(v42 + 56))(v43, 0, 1, v40);
    v44 = v48;
    (*(v20 + 16))(v48, v36, v34);
    (*(v20 + 56))(v44, 0, 1, v34);
    v45 = v47;
    sub_124FBC();
    sub_5CA8(v44, &qword_15F6E8, &unk_1271C0);
    sub_5CA8(v43, &qword_15F6F0, &unk_128340);
    sub_5CA8(v39, &qword_15F6F8, &qword_1271D0);
    (*(v9 + 8))(v45, v46);
    return (*(v20 + 8))(v36, v34);
  }
}

uint64_t sub_7CC5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5AE8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_7CCCC(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_76D24(a1, v1[2]);
}

uint64_t sub_7CCEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_7CDD0()
{
  sub_7CF20(319, &qword_1608B0, &type metadata accessor for PluginAction);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_7CF20(319, &unk_1608B8, &type metadata accessor for SiriTimeEventSender.ReasonDescription);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_7CF20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_125F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_7CF8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7CFC4()
{
  v1 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_7D094(uint64_t a1)
{
  v3 = *(*(sub_5AE8(&qword_160AD0, &qword_1284E0) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_7B480(a1, v4, v5);
}

uint64_t sub_7D14C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7D194(uint64_t a1)
{
  v2 = *(*(sub_5AE8(&qword_160AD0, &qword_1284E0) - 8) + 80);

  return sub_77048(a1);
}

uint64_t sub_7D22C()
{
  v1 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_7D434()
{
  v1 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_7D578()
{

  return sub_69D3C();
}

uint64_t sub_7D5EC()
{

  return sub_6EDBC();
}

uint64_t sub_7D660()
{

  return sub_6A0A8();
}

uint64_t sub_7D6D4()
{

  return sub_6FFFC();
}

uint64_t type metadata accessor for TimerBaseCATsSimple()
{
  result = qword_160AF8;
  if (!qword_160AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7D810(uint64_t a1, uint64_t a2)
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
  v16 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v16;
}

uint64_t sub_7D998(uint64_t a1, uint64_t a2)
{
  v4 = sub_124EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_124E6C();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t sub_7DB10()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1270B0;
  *(v5 + 32) = 0x6954746567726174;
  *(v5 + 40) = 0xEB0000000072656DLL;
  v6 = *v0;
  if (*v0)
  {
    v7 = type metadata accessor for TimerTimer(0);
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
  strcpy((v5 + 80), "updatedTimer");
  *(v5 + 93) = 0;
  *(v5 + 94) = -5120;
  v9 = v0[1];
  if (v9)
  {
    v10 = type metadata accessor for TimerTimer(0);
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v11;
  *(v5 + 120) = v10;
  *(v5 + 128) = 0x6174614477656976;
  *(v5 + 136) = 0xE800000000000000;
  v12 = type metadata accessor for SetTimerAttributeHandledOnWatchParameters(0);
  sub_E344(v0 + *(v12 + 24), v4, &unk_15F170, &unk_126E00);
  v13 = sub_124E4C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {

    sub_5CA8(v4, &unk_15F170, &unk_126E00);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v13;
    v15 = sub_23B4C((v5 + 144));
    (*(v14 + 32))(v15, v4, v13);
  }

  return v5;
}

uint64_t sub_7DD5C(uint64_t a1, uint64_t a2)
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

uint64_t sub_7DF40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_5AE8(&unk_15F170, &unk_126E00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_7E01C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
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

void sub_7E0CC()
{
  sub_7E188(319, &unk_15FD98, type metadata accessor for TimerTimer);
  if (v0 <= 0x3F)
  {
    sub_7E188(319, &qword_15FD00, &type metadata accessor for SpeakableString);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7E188(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_125F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_7E1DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_7E230()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160C30);
  sub_5B30(v0, qword_160C30);
  return sub_1257AC();
}

uint64_t sub_7E27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v5 = sub_12392C();
  v3[26] = v5;
  v6 = *(v5 - 8);
  v3[27] = v6;
  v7 = *(v6 + 64) + 15;
  v3[28] = swift_task_alloc();
  v8 = sub_12368C();
  v3[29] = v8;
  v9 = *(v8 - 8);
  v3[30] = v9;
  v10 = *(v9 + 64) + 15;
  v3[31] = swift_task_alloc();
  v11 = *(*(sub_5AE8(&qword_160CC8, &unk_12BE70) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v12 = sub_1256FC();
  v3[33] = v12;
  v13 = *(v12 - 8);
  v3[34] = v13;
  v14 = *(v13 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v15 = sub_125ABC();
  v3[37] = v15;
  v16 = *(v15 - 8);
  v3[38] = v16;
  v17 = *(v16 + 64) + 15;
  v3[39] = swift_task_alloc();
  v18 = sub_124FFC();
  v3[40] = v18;
  v19 = *(v18 - 8);
  v3[41] = v19;
  v20 = *(v19 + 64) + 15;
  v3[42] = swift_task_alloc();
  v21 = sub_12501C();
  v3[43] = v21;
  v22 = *(v21 - 8);
  v3[44] = v22;
  v23 = *(v22 + 64) + 15;
  v3[45] = swift_task_alloc();
  v24 = *(*(sub_124EDC() - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = *(a3 + 16);
  v25 = sub_123B7C();
  v3[48] = v25;
  v26 = *(v25 - 8);
  v3[49] = v26;
  v27 = *(v26 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_7E5F0, 0, 0);
}

uint64_t sub_7E5F0()
{
  v68 = v0;
  if (qword_15EE78 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[24];
  v5 = sub_5B30(v0[37], qword_160C30);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v65 = v5;
  v7 = sub_125AAC();
  v8 = sub_125DFC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[51];
  if (v9)
  {
    v11 = v0[49];
    v12 = v0[50];
    v13 = v0[48];
    v14 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67 = v63;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_125BAC();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_8530(v15, v17, &v67);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v7, v8, "[TimerUnsupportedValueStrategy.makeUnsupportedValueOutput] Called with resolveRecord %s", v14, 0xCu);
    sub_5BB0(v63);
  }

  else
  {
    v19 = v0[48];
    v20 = v0[49];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[46];
  v60 = v0[45];
  v61 = v0[48];
  v22 = v0[41];
  v23 = v0[42];
  v24 = v0[39];
  v25 = v0[40];
  v26 = v0[37];
  v27 = v0[38];
  v28 = v0[34];
  v62 = v0[32];
  v64 = v0[33];
  v59 = v0[24];
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[52] = sub_124DBC();
  (*(v22 + 104))(v23, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v25);
  (*(v27 + 16))(v24, v65, v26);
  mach_absolute_time();
  sub_12502C();
  v29 = sub_123B5C();
  [v29 unsupportedReason];

  sub_1256EC();
  if ((*(v28 + 48))(v62, 1, v64) == 1)
  {
    sub_5CA8(v0[32], &qword_160CC8, &unk_12BE70);
    v30 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v31 = swift_task_alloc();
    v0[68] = v31;
    *v31 = v0;
    v32 = sub_8015C;
LABEL_19:
    v31[1] = v32;
    v40 = 0xEF726F7272652365;
    v41 = 0x73614272656D6974;
    goto LABEL_20;
  }

  v33 = v0[35];
  v34 = v0[36];
  v35 = v0[33];
  v36 = v0[34];
  (*(v36 + 32))(v34, v0[32], v35);
  (*(v36 + 16))(v33, v34, v35);
  v37 = (*(v36 + 88))(v33, v35);
  if (v37 == enum case for TimerHandlerError.noResultsAfterFiltering(_:))
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
LABEL_10:
    v38 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v39 = swift_task_alloc();
    v0[56] = v39;
    *v39 = v0;
    v39[1] = sub_7F0B8;
    v40 = 0x800000000012C5A0;
    v41 = 0xD000000000000012;
LABEL_20:

    return v66(v41, v40, _swiftEmptyArrayStorage);
  }

  if (v37 == enum case for TimerHandlerError.generic(_:) || v37 == enum case for TimerHandlerError.timersAmbiguous(_:) || v37 == enum case for TimerHandlerError.durationNeedsValue(_:))
  {
    goto LABEL_18;
  }

  if (v37 == enum case for TimerHandlerError.durationTooLong(_:))
  {
    v42 = v0[46];
    type metadata accessor for CreateTimerCATPatternsExecutor(0);
    sub_124ECC();
    v0[60] = sub_124DBC();
    v43 = "deleteTimer#handledMulti";
    v44 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v45 = swift_task_alloc();
    v0[61] = v45;
    *v45 = v0;
    v45[1] = sub_7F750;
    v41 = 0xD000000000000020;
LABEL_16:
    v40 = v43 | 0x8000000000000000;
    goto LABEL_20;
  }

  if (v37 == enum case for TimerHandlerError.failedToAdd(_:))
  {
LABEL_18:
    v46 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v31 = swift_task_alloc();
    v0[58] = v31;
    *v31 = v0;
    v32 = sub_7F404;
    goto LABEL_19;
  }

  if (v37 == enum case for TimerHandlerError.noResults(_:))
  {
    goto LABEL_10;
  }

  if (v37 == enum case for TimerHandlerError.noTimersExist(_:))
  {
    v48 = v0[47];
    v50 = v0[24];
    v49 = v0[25];
    v51 = swift_task_alloc();
    v0[53] = v51;
    v51[2] = v48;
    v51[3] = *(v49 + 24);
    v51[4] = v50;
    v52 = swift_task_alloc();
    v0[54] = v52;
    *v52 = v0;
    v52[1] = sub_7EE8C;

    return sub_104D80(sub_810EC, v51);
  }

  else
  {
    if (v37 == enum case for TimerHandlerError.setAttributeUnsupported(_:))
    {
      goto LABEL_18;
    }

    if (v37 == enum case for TimerHandlerError.pauseResumeSleepTimersUnsupported(_:))
    {
      v53 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v54 = swift_task_alloc();
      v0[66] = v54;
      *v54 = v0;
      v54[1] = sub_7FE10;
      v41 = 0xD000000000000025;
      v40 = 0x800000000012D8A0;
      goto LABEL_20;
    }

    if (v37 == enum case for TimerHandlerError.createSleepTimerNothingPlaying(_:))
    {
      v55 = v0[46];
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v0[63] = sub_124DBC();
      v43 = "createTimer#handledSleep";
      v56 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v57 = swift_task_alloc();
      v0[64] = v57;
      *v57 = v0;
      v57[1] = sub_7FAB0;
      v41 = 0xD00000000000001CLL;
      goto LABEL_16;
    }

    v58 = v0[33];

    return _diagnoseUnexpectedEnumCase<A>(type:)(v58, v58);
  }
}

uint64_t sub_7EE8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[54];
  v6 = v3[53];
  v9 = *v2;
  v4[55] = v1;

  if (v1)
  {
    v7 = sub_80788;
  }

  else
  {
    v7 = sub_7EFC4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_7EFC4()
{
  v1 = v0[3];
  (*(v0[34] + 8))(v0[36], v0[33]);
  v2 = v0[31];
  v3 = v0[28];
  v0[70] = v1;
  v1;
  sub_12364C();
  sub_12391C();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_80470;
  v6 = v0[45];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[23];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_7F0B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[56];
  v8 = *v2;
  v4[57] = v1;

  if (v1)
  {
    v6 = sub_7F2C8;
  }

  else
  {
    v6 = sub_7F1D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_7F1D4()
{
  v1 = v0[6];
  (*(v0[34] + 8))(v0[36], v0[33]);
  v2 = v0[31];
  v3 = v0[28];
  v0[70] = v1;
  v1;
  sub_12364C();
  sub_12391C();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_80470;
  v6 = v0[45];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[23];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_7F2C8()
{
  v1 = v0[52];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[46];
  v8 = v0[42];
  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[32];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[57];
  (*(v0[44] + 8))(v0[45], v0[43]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_7F404(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[58];
  v8 = *v2;
  v4[59] = v1;

  if (v1)
  {
    v6 = sub_7F614;
  }

  else
  {
    v6 = sub_7F520;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_7F520()
{
  v1 = v0[9];
  (*(v0[34] + 8))(v0[36], v0[33]);
  v2 = v0[31];
  v3 = v0[28];
  v0[70] = v1;
  v1;
  sub_12364C();
  sub_12391C();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_80470;
  v6 = v0[45];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[23];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_7F614()
{
  v1 = v0[52];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[46];
  v8 = v0[42];
  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[32];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[59];
  (*(v0[44] + 8))(v0[45], v0[43]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_7F750(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[61];
  v9 = *v2;
  v4[62] = v1;

  if (v1)
  {
    v6 = sub_7F968;
  }

  else
  {
    v7 = v4[60];

    v6 = sub_7F874;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_7F874()
{
  v1 = v0[12];
  (*(v0[34] + 8))(v0[36], v0[33]);
  v2 = v0[31];
  v3 = v0[28];
  v0[70] = v1;
  v1;
  sub_12364C();
  sub_12391C();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_80470;
  v6 = v0[45];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[23];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_7F968()
{
  v1 = v0[60];
  v2 = v0[52];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[34];

  (*(v5 + 8))(v3, v4);
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[46];
  v9 = v0[42];
  v10 = v0[39];
  v12 = v0[35];
  v11 = v0[36];
  v13 = v0[32];
  v16 = v0[31];
  v17 = v0[28];
  v18 = v0[62];
  (*(v0[44] + 8))(v0[45], v0[43]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_7FAB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[14] = v2;
  v4[15] = a1;
  v4[16] = v1;
  v5 = v3[64];
  v9 = *v2;
  v4[65] = v1;

  if (v1)
  {
    v6 = sub_7FCC8;
  }

  else
  {
    v7 = v4[63];

    v6 = sub_7FBD4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_7FBD4()
{
  v1 = v0[15];
  (*(v0[34] + 8))(v0[36], v0[33]);
  v2 = v0[31];
  v3 = v0[28];
  v0[70] = v1;
  v1;
  sub_12364C();
  sub_12391C();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_80470;
  v6 = v0[45];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[23];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_7FCC8()
{
  v1 = v0[63];
  v2 = v0[52];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[34];

  (*(v5 + 8))(v3, v4);
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[46];
  v9 = v0[42];
  v10 = v0[39];
  v12 = v0[35];
  v11 = v0[36];
  v13 = v0[32];
  v16 = v0[31];
  v17 = v0[28];
  v18 = v0[65];
  (*(v0[44] + 8))(v0[45], v0[43]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_7FE10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[17] = v2;
  v4[18] = a1;
  v4[19] = v1;
  v5 = v3[66];
  v8 = *v2;
  v4[67] = v1;

  if (v1)
  {
    v6 = sub_80020;
  }

  else
  {
    v6 = sub_7FF2C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_7FF2C()
{
  v1 = v0[18];
  (*(v0[34] + 8))(v0[36], v0[33]);
  v2 = v0[31];
  v3 = v0[28];
  v0[70] = v1;
  v1;
  sub_12364C();
  sub_12391C();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_80470;
  v6 = v0[45];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[23];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_80020()
{
  v1 = v0[52];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[46];
  v8 = v0[42];
  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[32];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[67];
  (*(v0[44] + 8))(v0[45], v0[43]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_8015C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[20] = v2;
  v4[21] = a1;
  v4[22] = v1;
  v5 = v3[68];
  v8 = *v2;
  v4[69] = v1;

  if (v1)
  {
    v6 = sub_80354;
  }

  else
  {
    v6 = sub_80278;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_80278()
{
  v1 = v0[21];
  v2 = v0[31];
  v3 = v0[28];
  v0[70] = v1;
  v1;
  sub_12364C();
  sub_12391C();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_80470;
  v6 = v0[45];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[23];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_80354()
{
  v1 = v0[52];

  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[46];
  v5 = v0[42];
  v6 = v0[39];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[32];
  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[69];
  (*(v0[44] + 8))(v0[45], v0[43]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_80470()
{
  v2 = *(*v1 + 568);
  v3 = *(*v1 + 560);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 240);
  v6 = *(*v1 + 232);
  v7 = *(*v1 + 224);
  v8 = *(*v1 + 216);
  v9 = *(*v1 + 208);
  v12 = *v1;
  *(*v1 + 576) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_808C4;
  }

  else
  {
    v10 = sub_8065C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_8065C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 336);
  v9 = *(v0 + 312);
  v12 = *(v0 + 288);
  v13 = *(v0 + 280);
  v14 = *(v0 + 256);
  v15 = *(v0 + 248);
  v16 = *(v0 + 224);

  (*(v7 + 8))(v5, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_80788()
{
  v1 = v0[52];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[46];
  v8 = v0[42];
  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[32];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[55];
  (*(v0[44] + 8))(v0[45], v0[43]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_808C4()
{
  v1 = *(v0 + 416);

  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 368);
  v5 = *(v0 + 336);
  v6 = *(v0 + 312);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 256);
  v12 = *(v0 + 248);
  v13 = *(v0 + 224);
  v14 = *(v0 + 576);
  (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_809EC(uint64_t a1)
{
  v2 = sub_1250BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1250AC();
  v7 = sub_12506C();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_123B7C();
    v12 = sub_123B4C();
    sub_5AE8(&qword_160CD0, &qword_1286D0);
    if (swift_dynamicCast())
    {
      sub_2F4EC(v10, v13);
      sub_23B08(v13, v13[3]);
      sub_1258DC();
      *a1 = v9;
      *(a1 + 8) = 0;
      return sub_5BB0(v13);
    }

    else
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      return sub_5CA8(v10, &qword_160CD8, &qword_1286D8);
    }
  }

  return result;
}

uint64_t sub_80B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_80C38;

  return sub_7E27C(a1, a2, a3);
}

uint64_t sub_80C38()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_80D6C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_80D6C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_80E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_503C;

  return sub_80B88(a1, a2, a3);
}

uint64_t sub_80EE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *v5 = v2;
  v5[1] = sub_1DE18;

  return (sub_81060)(a1, v6, v7);
}

uint64_t sub_80F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_81060(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_81080, 0, 0);
}

uint64_t sub_81080()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_123B7C();
  v3 = sub_123B4C();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_810EC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_809EC(a1);
}

NSNumber UsoEntity_common_Timer.isMultiple.getter()
{
  v1 = sub_12452C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v49 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_5AE8(&qword_160CF8, &qword_1286E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v58 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v46[-v9];
  v11 = sub_5AE8(&qword_160D00, &qword_1286E8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v55 = &v46[-v17];
  v18 = __chkstk_darwin(v16);
  v56 = &v46[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v46[-v21];
  v23 = __chkstk_darwin(v20);
  v25 = &v46[-v24];
  __chkstk_darwin(v23);
  v27 = &v46[-v26];
  v53 = v0;
  v28 = sub_12420C();
  v57 = v15;
  if (v28)
  {
    sub_12451C();
  }

  else
  {
    (*(v2 + 56))(v27, 1, 1, v1);
  }

  v51 = *(v2 + 104);
  v52 = v2 + 104;
  v51(v25, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v1);
  v50 = *(v2 + 56);
  v50(v25, 0, 1, v1);
  v54 = v5;
  v29 = *(v5 + 48);
  sub_E344(v27, v10, &qword_160D00, &qword_1286E8);
  sub_E344(v25, &v10[v29], &qword_160D00, &qword_1286E8);
  v59 = v2;
  v30 = *(v2 + 48);
  if (v30(v10, 1, v1) == 1)
  {
    sub_5CA8(v25, &qword_160D00, &qword_1286E8);
    sub_5CA8(v27, &qword_160D00, &qword_1286E8);
    if (v30(&v10[v29], 1, v1) == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  sub_E344(v10, v22, &qword_160D00, &qword_1286E8);
  if (v30(&v10[v29], 1, v1) == 1)
  {
    sub_5CA8(v25, &qword_160D00, &qword_1286E8);
    sub_5CA8(v27, &qword_160D00, &qword_1286E8);
    (*(v59 + 8))(v22, v1);
LABEL_9:
    sub_5CA8(v10, &qword_160CF8, &qword_1286E0);
    goto LABEL_10;
  }

  v35 = *(v59 + 32);
  v48 = v30;
  v36 = v49;
  v35(v49, &v10[v29], v1);
  sub_83810(&qword_160D08, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues);
  v47 = sub_125B7C();
  v37 = *(v59 + 8);
  v38 = v36;
  v30 = v48;
  v37(v38, v1);
  sub_5CA8(v25, &qword_160D00, &qword_1286E8);
  sub_5CA8(v27, &qword_160D00, &qword_1286E8);
  v37(v22, v1);
  sub_5CA8(v10, &qword_160D00, &qword_1286E8);
  if (v47)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (sub_12420C())
  {
    v31 = v56;
    sub_12451C();

    v32 = v57;
    v10 = v58;
    v33 = v55;
    v34 = v50;
  }

  else
  {
    v31 = v56;
    v34 = v50;
    v50(v56, 1, 1, v1);
    v32 = v57;
    v10 = v58;
    v33 = v55;
  }

  v51(v33, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_Multiple(_:), v1);
  v34(v33, 0, 1, v1);
  v39 = *(v54 + 48);
  sub_E344(v31, v10, &qword_160D00, &qword_1286E8);
  sub_E344(v33, &v10[v39], &qword_160D00, &qword_1286E8);
  if (v30(v10, 1, v1) != 1)
  {
    sub_E344(v10, v32, &qword_160D00, &qword_1286E8);
    if (v30(&v10[v39], 1, v1) == 1)
    {
      sub_5CA8(v33, &qword_160D00, &qword_1286E8);
      sub_5CA8(v31, &qword_160D00, &qword_1286E8);
      (*(v59 + 8))(v32, v1);
      goto LABEL_20;
    }

    v41 = v59;
    v42 = v49;
    (*(v59 + 32))(v49, &v10[v39], v1);
    sub_83810(&qword_160D08, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues);
    v43 = sub_125B7C();
    v44 = *(v41 + 8);
    v44(v42, v1);
    sub_5CA8(v33, &qword_160D00, &qword_1286E8);
    sub_5CA8(v31, &qword_160D00, &qword_1286E8);
    v44(v32, v1);
    sub_5CA8(v10, &qword_160D00, &qword_1286E8);
    if ((v43 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    v40 = 1;
    goto LABEL_24;
  }

  sub_5CA8(v33, &qword_160D00, &qword_1286E8);
  sub_5CA8(v31, &qword_160D00, &qword_1286E8);
  if (v30(&v10[v39], 1, v1) != 1)
  {
LABEL_20:
    sub_5CA8(v10, &qword_160CF8, &qword_1286E0);
LABEL_21:
    v40 = 0;
    goto LABEL_24;
  }

LABEL_17:
  sub_5CA8(v10, &qword_160D00, &qword_1286E8);
  v40 = 1;
LABEL_24:
  sub_8BAC();
  return sub_125EFC(v40);
}

id UsoEntity_common_Timer.duration.getter()
{
  v0 = sub_5AE8(&qword_160578, &unk_12AA50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  if (!sub_12431C() || (sub_1243FC(), v5 = v4, , result = [objc_opt_self() minimumDuration], v7 >= v5))
  {
    if (sub_12433C())
    {
      v8 = sub_1243AC();

      if (v8)
      {

        v9 = sub_124EFC();

        if (v9)
        {
          sub_124BEC();
          v10 = sub_122F1C();
          v11 = *(v10 - 8);
          if ((*(v11 + 48))(v3, 1, v10) == 1)
          {

            sub_5CA8(v3, &qword_160578, &unk_12AA50);
          }

          else
          {
            sub_122F0C();
            v13 = v12;
            (*(v11 + 8))(v3, v10);
            [objc_opt_self() minimumDuration];
            v15 = v14;

            if (v15 < v13)
            {
              return result;
            }
          }
        }

        else
        {
        }
      }
    }

    return [objc_opt_self() defaultDuration];
  }

  return result;
}

uint64_t UsoEntity_common_Timer.timerType.getter()
{
  v67 = 0;
  v1 = sub_123F5C();
  v69 = *(v1 - 8);
  v70 = v1;
  v2 = *(v69 + 64);
  v3 = __chkstk_darwin(v1);
  v68 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v65 = &v61[-v5];
  v6 = sub_12452C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v63 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_5AE8(&qword_160CF8, &qword_1286E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v61[-v12];
  v14 = sub_5AE8(&qword_160D00, &qword_1286E8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v66 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v20 = &v61[-v19];
  __chkstk_darwin(v18);
  v22 = &v61[-v21];
  sub_12432C();
  if (v23)
  {
    v24 = sub_125BDC();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      goto LABEL_14;
    }
  }

  v28 = sub_12420C();
  v64 = v0;
  if (v28)
  {
    sub_12451C();
  }

  else
  {
    (*(v7 + 56))(v22, 1, 1, v6);
  }

  (*(v7 + 104))(v20, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v6);
  (*(v7 + 56))(v20, 0, 1, v6);
  v29 = *(v10 + 48);
  sub_E344(v22, v13, &qword_160D00, &qword_1286E8);
  sub_E344(v20, &v13[v29], &qword_160D00, &qword_1286E8);
  v30 = *(v7 + 48);
  if (v30(v13, 1, v6) == 1)
  {
    sub_5CA8(v20, &qword_160D00, &qword_1286E8);
    sub_5CA8(v22, &qword_160D00, &qword_1286E8);
    if (v30(&v13[v29], 1, v6) == 1)
    {
      sub_5CA8(v13, &qword_160D00, &qword_1286E8);
      v32 = v69;
      v31 = v70;
      v33 = v68;
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v34 = v66;
  sub_E344(v13, v66, &qword_160D00, &qword_1286E8);
  if (v30(&v13[v29], 1, v6) == 1)
  {
    sub_5CA8(v20, &qword_160D00, &qword_1286E8);
    sub_5CA8(v22, &qword_160D00, &qword_1286E8);
    (*(v7 + 8))(v34, v6);
LABEL_13:
    sub_5CA8(v13, &qword_160CF8, &qword_1286E0);
LABEL_14:
    v32 = v69;
    v31 = v70;
    v33 = v68;
    goto LABEL_15;
  }

  v43 = v63;
  (*(v7 + 32))(v63, &v13[v29], v6);
  sub_83810(&qword_160D08, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues);
  v62 = sub_125B7C();
  v44 = *(v7 + 8);
  v44(v43, v6);
  sub_5CA8(v20, &qword_160D00, &qword_1286E8);
  sub_5CA8(v22, &qword_160D00, &qword_1286E8);
  v44(v34, v6);
  sub_5CA8(v13, &qword_160D00, &qword_1286E8);
  v32 = v69;
  v31 = v70;
  v33 = v68;
  if ((v62 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_24:
  v45 = v65;
  (*(v32 + 104))(v65, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v31);
  v46 = sub_1242FC();
  if (!v46)
  {
LABEL_39:
    (*(v32 + 8))(v45, v31);
LABEL_40:
    if (qword_15EE80 != -1)
    {
      swift_once();
    }

    v57 = sub_125ABC();
    sub_5B30(v57, qword_160CE0);
    v39 = sub_125AAC();
    v58 = sub_125DDC();
    if (!os_log_type_enabled(v39, v58))
    {
      v41 = 0;
      goto LABEL_45;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_0, v39, v58, "USO parse has all quantifier and no sleep timer attribute and no name", v59, 2u);
    v41 = 0;
    goto LABEL_44;
  }

  if (!(v46 >> 62))
  {
    if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

  v55 = v46;
  v56 = sub_1260FC();
  v46 = v55;
  if (!v56)
  {
LABEL_38:

    goto LABEL_39;
  }

LABEL_27:
  v47 = __chkstk_darwin(v46);
  *&v61[-16] = v45;
  v48 = v67;
  v49 = sub_83608(sub_83858, &v61[-32], v47);
  v67 = v48;

  (*(v32 + 8))(v45, v31);
  if ((v49 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  (*(v32 + 104))(v33, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v31);
  v35 = sub_1242FC();
  if (!v35)
  {
LABEL_31:
    (*(v32 + 8))(v33, v31);
    goto LABEL_32;
  }

  if (!(v35 >> 62))
  {
    if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  v50 = v35;
  v51 = sub_1260FC();
  v35 = v50;
  if (!v51)
  {
LABEL_30:

    goto LABEL_31;
  }

LABEL_18:
  v36 = __chkstk_darwin(v35);
  *&v61[-16] = v33;
  v37 = sub_83608(sub_837F0, &v61[-32], v36);

  (*(v32 + 8))(v33, v31);
  if (v37)
  {
    if (qword_15EE80 != -1)
    {
      swift_once();
    }

    v38 = sub_125ABC();
    sub_5B30(v38, qword_160CE0);
    v39 = sub_125AAC();
    v40 = sub_125DDC();
    v41 = 2;
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v39, v40, "USO parse has sleep timer attribute!", v42, 2u);
LABEL_44:

      goto LABEL_45;
    }

    goto LABEL_45;
  }

LABEL_32:
  if (qword_15EE80 != -1)
  {
    swift_once();
  }

  v52 = sub_125ABC();
  sub_5B30(v52, qword_160CE0);
  v39 = sub_125AAC();
  v53 = sub_125DDC();
  if (os_log_type_enabled(v39, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v39, v53, "USO parse does not have sleep timer attribute", v54, 2u);
    v41 = 1;
    goto LABEL_44;
  }

  v41 = 1;
LABEL_45:

  return v41;
}

uint64_t UsoEntity_common_Timer.isRightNow.getter()
{
  v0 = sub_1243DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_5AE8(&qword_160D10, &qword_1286F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_5AE8(&qword_160D18, &qword_1286F8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  if (sub_12433C())
  {
    sub_1243CC();
  }

  else
  {
    (*(v1 + 56))(v17, 1, 1, v0);
  }

  (*(v1 + 104))(v15, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v0);
  (*(v1 + 56))(v15, 0, 1, v0);
  v18 = *(v4 + 48);
  sub_E344(v17, v7, &qword_160D18, &qword_1286F8);
  sub_E344(v15, &v7[v18], &qword_160D18, &qword_1286F8);
  v19 = *(v1 + 48);
  if (v19(v7, 1, v0) != 1)
  {
    sub_E344(v7, v12, &qword_160D18, &qword_1286F8);
    if (v19(&v7[v18], 1, v0) != 1)
    {
      v21 = v25;
      (*(v1 + 32))(v25, &v7[v18], v0);
      sub_83810(&qword_160D20, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues);
      v20 = sub_125B7C();
      v22 = *(v1 + 8);
      v22(v21, v0);
      sub_5CA8(v15, &qword_160D18, &qword_1286F8);
      sub_5CA8(v17, &qword_160D18, &qword_1286F8);
      v22(v12, v0);
      sub_5CA8(v7, &qword_160D18, &qword_1286F8);
      return v20 & 1;
    }

    sub_5CA8(v15, &qword_160D18, &qword_1286F8);
    sub_5CA8(v17, &qword_160D18, &qword_1286F8);
    (*(v1 + 8))(v12, v0);
    goto LABEL_9;
  }

  sub_5CA8(v15, &qword_160D18, &qword_1286F8);
  sub_5CA8(v17, &qword_160D18, &qword_1286F8);
  if (v19(&v7[v18], 1, v0) != 1)
  {
LABEL_9:
    sub_5CA8(v7, &qword_160D10, &qword_1286F0);
    v20 = 0;
    return v20 & 1;
  }

  sub_5CA8(v7, &qword_160D18, &qword_1286F8);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_82954()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160CE0);
  sub_5B30(v0, qword_160CE0);
  return sub_1257AC();
}

id UsoEntity_common_Timer.remainingTime.getter()
{
  if (sub_12430C())
  {
    sub_1243FC();
  }

  else
  {
    v1 = objc_opt_self();

    return [v1 defaultDuration];
  }
}

id UsoEntity_common_Timer.label.getter()
{
  sub_12432C();
  if (!v0)
  {
    return 0;
  }

  sub_125BDC();

  v1 = objc_allocWithZone(INSpeakableString);
  v2 = sub_125B8C();

  v3 = [v1 initWithSpokenPhrase:v2];

  return v3;
}

uint64_t UsoEntity_common_Timer.timerState.getter()
{
  v0 = sub_123F5C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = __chkstk_darwin(v0);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v52 - v7;
  sub_5AE8(&qword_160D28, &qword_128700);
  v9 = *(v1 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1270C0;
  v52 = v11;
  v12 = v11 + v10;
  v13 = *(v2 + 104);
  v55 = enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerAttributesPaused(_:);
  v13(v11 + v10);
  v57 = v9;
  v59 = v12;
  v56 = enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerAttributesRunning(_:);
  v13(v12 + v9);
  v14 = 0;
  v15 = 0;
  v17 = *(v2 + 16);
  v2 += 16;
  v16 = v17;
  v18 = (v2 + 72);
  v58 = v2;
  v19 = (v2 - 8);
  v53 = v8;
  v54 = (v2 - 8);
  while (1)
  {
    v20 = v14;
    v16(v8, v59 + v15 * v57, v0);
    v16(v6, v8, v0);
    v21 = (*v18)(v6, v0);
    if (v21 == v56)
    {
      v22 = sub_1242FC();
      if (!v22)
      {
        goto LABEL_4;
      }

      if (v22 >> 62)
      {
        v29 = v22;
        v30 = sub_1260FC();
        v22 = v29;
        if (!v30)
        {
          goto LABEL_2;
        }
      }

      else if (!*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_2;
      }

      v23 = __chkstk_darwin(v22);
      *(&v52 - 2) = v8;
      v24 = sub_83608(sub_83858, (&v52 - 4), v23);

      if (v24)
      {

        v38 = v54;
        if (qword_15EE80 != -1)
        {
          swift_once();
        }

        v39 = sub_125ABC();
        sub_5B30(v39, qword_160CE0);
        v40 = sub_125AAC();
        v41 = sub_125DDC();
        v42 = os_log_type_enabled(v40, v41);
        v43 = v53;
        if (v42)
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_0, v40, v41, "USO parse has timer state of .running", v44, 2u);
        }

        (*v38)(v43, v0);
        return 1;
      }

      goto LABEL_17;
    }

    if (v21 != v55)
    {
      v28 = *v19;
      (*v19)(v8, v0);
      v28(v6, v0);
      goto LABEL_5;
    }

    v25 = sub_1242FC();
    if (v25)
    {
      break;
    }

LABEL_4:
    (*v19)(v8, v0);
LABEL_5:
    v14 = 1;
    v15 = 1;
    if (v20)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (qword_15EE80 != -1)
      {
        swift_once();
      }

      v33 = sub_125ABC();
      sub_5B30(v33, qword_160CE0);
      v34 = sub_125AAC();
      v35 = sub_125DDC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "USO parse has timer state of .unknown", v36, 2u);
      }

      return 0;
    }
  }

  if (!(v25 >> 62))
  {
    if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_16;
    }

LABEL_2:

LABEL_3:
    v19 = v54;
    goto LABEL_4;
  }

  v31 = v25;
  v32 = sub_1260FC();
  v25 = v31;
  if (!v32)
  {
    goto LABEL_2;
  }

LABEL_16:
  v26 = __chkstk_darwin(v25);
  *(&v52 - 2) = v8;
  v27 = sub_83608(sub_83858, (&v52 - 4), v26);

  if ((v27 & 1) == 0)
  {
LABEL_17:
    v8 = v53;
    goto LABEL_3;
  }

  v45 = v54;
  if (qword_15EE80 != -1)
  {
    swift_once();
  }

  v46 = sub_125ABC();
  sub_5B30(v46, qword_160CE0);
  v47 = sub_125AAC();
  v48 = sub_125DDC();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v53;
  if (v49)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_0, v47, v48, "USO parse has timer state of .paused", v51, 2u);
  }

  (*v45)(v50, v0);
  return 2;
}

uint64_t sub_83110(uint64_t *a1, uint64_t a2)
{
  v33 = a2;
  v4 = sub_123F5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5AE8(&qword_160D30, &qword_128710);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_5AE8(&qword_160D38, &unk_128718);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v34 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v30 - v17;
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v21 = *a1;
  sub_1241FC();
  if (v35)
  {
    sub_12408C();
  }

  sub_123F6C();
  sub_12448C();

  if (!v36)
  {
    v25 = 0;
    return v25 & 1;
  }

  v32 = v2;
  sub_123F4C();
  (*(v5 + 16))(v18, v33, v4);
  (*(v5 + 56))(v18, 0, 1, v4);
  v22 = v5;
  v23 = *(v8 + 48);
  sub_E344(v20, v11, &qword_160D38, &unk_128718);
  sub_E344(v18, &v11[v23], &qword_160D38, &unk_128718);
  v24 = *(v22 + 48);
  if (v24(v11, 1, v4) != 1)
  {
    sub_E344(v11, v34, &qword_160D38, &unk_128718);
    if (v24(&v11[v23], 1, v4) != 1)
    {
      v26 = &v11[v23];
      v27 = v31;
      (*(v22 + 32))(v31, v26, v4);
      sub_83810(&qword_160D40, &type metadata accessor for UsoEntity_appleTimer_TimerAttribute.DefinedValues);
      v25 = sub_125B7C();

      v28 = *(v22 + 8);
      v28(v27, v4);
      sub_5CA8(v18, &qword_160D38, &unk_128718);
      sub_5CA8(v20, &qword_160D38, &unk_128718);
      v28(v34, v4);
      sub_5CA8(v11, &qword_160D38, &unk_128718);
      return v25 & 1;
    }

    sub_5CA8(v18, &qword_160D38, &unk_128718);
    sub_5CA8(v20, &qword_160D38, &unk_128718);
    (*(v22 + 8))(v34, v4);
    goto LABEL_10;
  }

  sub_5CA8(v18, &qword_160D38, &unk_128718);
  sub_5CA8(v20, &qword_160D38, &unk_128718);
  if (v24(&v11[v23], 1, v4) != 1)
  {
LABEL_10:
    sub_5CA8(v11, &qword_160D30, &qword_128710);
    v25 = 0;
    return v25 & 1;
  }

  sub_5CA8(v11, &qword_160D38, &unk_128718);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_83608(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = sub_125FFC();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1260FC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_83744(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_83810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_83874(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_503C;

  return sub_2B850(a1, a2, a3);
}

uint64_t sub_83938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_12397C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_124FDC();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_12370C();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = *(*(sub_124EDC() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = sub_12517C();
  v4[19] = v18;
  v19 = *(v18 - 8);
  v4[20] = v19;
  v20 = *(v19 + 64) + 15;
  v4[21] = swift_task_alloc();
  v21 = sub_12540C();
  v4[22] = v21;
  v22 = *(v21 - 8);
  v4[23] = v22;
  v23 = *(v22 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_83C40, 0, 0);
}

uint64_t sub_83C40()
{
  v1 = v0[24];
  v2 = v0[18];
  (*(v0[20] + 16))(v0[21], v0[3], v0[19]);
  v0[25] = type metadata accessor for TimerBaseCATs_Async();
  sub_124ECC();
  sub_124DBC();
  sub_849E8();
  sub_1253FC();
  v3 = async function pointer to AppInstallDialogOutputUtil.makeLaunchAppView()[1];
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_83D54;
  v5 = v0[24];

  return AppInstallDialogOutputUtil.makeLaunchAppView()();
}

uint64_t sub_83D54(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_84740;
  }

  else
  {
    v5 = sub_83E68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_83E68()
{
  v1 = v0[17];
  v24 = v0[18];
  v25 = v0[25];
  v2 = v0[16];
  v23 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v21 = v1;
  v22 = v5;
  v7 = v0[9];
  v8 = v0[10];
  v27 = v0[4];
  (*(v2 + 104))();
  (*(v4 + 104))(v3, enum case for SiriTimeEventSender.TaskType.current(_:), v5);
  v9 = enum case for SiriKitReliabilityCodes.noAppFoundOnDeviceToSupportIntent(_:);
  v10 = sub_12353C();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v6, v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = sub_124FEC();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = enum case for SiriTimeEventSender.ReasonDescription.timerAppNotInstalledLegacyDialog(_:);
  v14 = sub_124FCC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v7, v13, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  sub_124FBC();
  sub_5CA8(v7, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v8, &qword_15F6F0, &unk_128340);
  sub_5CA8(v6, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v3, v22);
  (*(v2 + 8))(v21, v23);
  sub_124ECC();
  v0[29] = sub_124DBC();
  sub_5AE8(&qword_15F180, &unk_126E10);
  v16 = swift_allocObject();
  v0[30] = v16;
  *(v16 + 16) = xmmword_126CB0;
  *(v16 + 32) = 0x656369766564;
  *(v16 + 40) = 0xE600000000000000;
  *(v16 + 72) = sub_124EAC();
  *(v16 + 48) = v27;
  v17 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v26 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v18 = swift_task_alloc();
  v0[31] = v18;
  *v18 = v0;
  v18[1] = sub_8421C;
  v19 = v0[8];

  return v26(v19, 0xD000000000000020, 0x800000000012D8D0, v16);
}

uint64_t sub_8421C()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_8453C, 0, 0);
  }

  else
  {
    v5 = v3[29];
    v4 = v3[30];

    v6 = swift_task_alloc();
    v3[33] = v6;
    *v6 = v3;
    v6[1] = sub_843A8;
    v7 = v3[27];
    v8 = v3[8];
    v9 = v3[5];
    v10 = v3[2];

    return sub_30048(v10, v7, v9);
  }
}

uint64_t sub_843A8()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 272) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_84838;
  }

  else
  {
    v7 = sub_84650;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_8453C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];

  v14 = v0[32];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_84650()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_84740()
{
  v11 = v0[28];
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_84838()
{
  v11 = v0[34];
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_84930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return sub_83938(a1, a2, a3, a4);
}

unint64_t sub_849E8()
{
  result = qword_160D48;
  if (!qword_160D48)
  {
    type metadata accessor for TimerBaseCATs_Async();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160D48);
  }

  return result;
}

uint64_t sub_84A50()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160D50);
  sub_5B30(v0, qword_160D50);
  return sub_1257AC();
}

uint64_t sub_84A9C(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v2[43] = a2;
  v3 = sub_123B3C();
  v2[44] = v3;
  v4 = *(v3 - 8);
  v2[45] = v4;
  v5 = *(v4 + 64) + 15;
  v2[46] = swift_task_alloc();
  v6 = sub_124F4C();
  v2[47] = v6;
  v7 = *(v6 - 8);
  v2[48] = v7;
  v8 = *(v7 + 64) + 15;
  v2[49] = swift_task_alloc();
  v9 = *(*(sub_5AE8(&qword_15F9E0, &unk_127710) - 8) + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v10 = sub_1250BC();
  v2[53] = v10;
  v11 = *(v10 - 8);
  v2[54] = v11;
  v12 = *(v11 + 64) + 15;
  v2[55] = swift_task_alloc();
  v13 = sub_125ABC();
  v2[56] = v13;
  v14 = *(v13 - 8);
  v2[57] = v14;
  v15 = *(v14 + 64) + 15;
  v2[58] = swift_task_alloc();
  v16 = sub_124FFC();
  v2[59] = v16;
  v17 = *(v16 - 8);
  v2[60] = v17;
  v18 = *(v17 + 64) + 15;
  v2[61] = swift_task_alloc();
  v19 = sub_12501C();
  v2[62] = v19;
  v20 = *(v19 - 8);
  v2[63] = v20;
  v21 = *(v20 + 64) + 15;
  v2[64] = swift_task_alloc();
  v22 = sub_12368C();
  v2[65] = v22;
  v23 = *(v22 - 8);
  v2[66] = v23;
  v24 = *(v23 + 64) + 15;
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v25 = sub_123D1C();
  v2[71] = v25;
  v26 = *(v25 - 8);
  v2[72] = v26;
  v27 = *(v26 + 64) + 15;
  v2[73] = swift_task_alloc();
  v28 = sub_12392C();
  v2[74] = v28;
  v29 = *(v28 - 8);
  v2[75] = v29;
  v30 = *(v29 + 64) + 15;
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();

  return _swift_task_switch(sub_84EF4, 0, 0);
}

uint64_t sub_84EF4()
{
  if (qword_15EE88 != -1)
  {
    swift_once();
  }

  *(v0 + 632) = sub_5B30(*(v0 + 448), qword_160D50);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "ResumeTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v3, 2u);
  }

  v4 = *(v0 + 344);

  sub_5AE8(&qword_160D70, &qword_1288D8);
  v5 = sub_123A9C();
  *(v0 + 640) = v5;
  v6 = [v5 resumedTimers];
  if (!v6)
  {
    goto LABEL_71;
  }

  v7 = v6;
  sub_1257EC();
  v8 = sub_125C6C();
  *(v0 + 648) = v8;

  v9 = v8 >> 62;
  if (!(v8 >> 62))
  {
    if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

  if (!sub_1260FC())
  {
LABEL_70:

LABEL_71:
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
    swift_allocError();
    *v121 = 5;
    swift_willThrow();

LABEL_72:
    v122 = *(v0 + 624);
    v123 = *(v0 + 616);
    v124 = *(v0 + 608);
    v125 = *(v0 + 584);
    v126 = *(v0 + 560);
    v127 = *(v0 + 552);
    v128 = *(v0 + 544);
    v129 = *(v0 + 536);
    v130 = *(v0 + 512);
    v131 = *(v0 + 488);
    v133 = *(v0 + 464);
    v135 = *(v0 + 440);
    v138 = *(v0 + 416);
    v141 = *(v0 + 408);
    v145 = *(v0 + 400);
    v149 = *(v0 + 392);
    v153 = *(v0 + 368);

    v132 = *(v0 + 8);

    return v132();
  }

LABEL_8:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_125FFC();
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_77;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;
  *(v0 + 656) = v10;
  v12 = *(v0 + 624);
  sub_5AE8(&qword_160810, &unk_127420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126EB0;
  *(inited + 32) = v11;
  v14 = v11;
  sub_FF26C(inited, v12);
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  v16 = v14;
  v17 = [v16 identifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_125B9C();
    v21 = v20;

    if (v9)
    {
      if (sub_1260FC() != 1)
      {
        goto LABEL_14;
      }
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) != 1)
    {
LABEL_14:

      goto LABEL_20;
    }

    v22 = [v16 remainingTime];
    if (v22 || (v22 = [v16 duration]) != 0)
    {
      v23 = v22;
      [v22 doubleValue];
      v25 = v24;
    }

    else
    {
      v25 = 0.0;
    }

    v26 = *(v0 + 624);
    v27 = *(v0 + 584);
    v28 = *(v0 + 576);
    v29 = *(v0 + 568);
    sub_D80C(v19, v21, v27, v25);

    sub_12386C();
    (*(v28 + 8))(v27, v29);
  }

LABEL_20:
  v30 = *(v0 + 560);
  sub_12361C();
  *(v0 + 664) = sub_2BE74(v8);
  if (v9)
  {
    v31 = sub_1260FC();
  }

  else
  {
    v31 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  *(v0 + 672) = v31;
  if (v31 == 1)
  {
    sub_12573C();
    sub_12572C();
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    sub_23B08((v0 + 216), v32);
    v34 = [v16 identifier];

    if (v34)
    {
      v35 = sub_125B9C();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    *(v0 + 680) = v37;
    v79 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
    v80 = swift_task_alloc();
    *(v0 + 688) = v80;
    *v80 = v0;
    v80[1] = sub_85F4C;

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v35, v37, v32, v33);
  }

  *(v0 + 712) = 0u;
  v146 = *(v0 + 632);
  v150 = *(v0 + 512);
  v39 = *(v0 + 480);
  v38 = *(v0 + 488);
  v40 = *(v0 + 464);
  v41 = *(v0 + 472);
  v42 = *(v0 + 456);
  v142 = *(v0 + 448);
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v43 = *(v0 + 88);
  sub_23B08((v0 + 56), *(v0 + 80));
  sub_1235DC();
  sub_5BB0((v0 + 56));
  (*(v39 + 104))(v38, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v41);
  (*(v42 + 16))(v40, v146, v142);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  v44 = *(v0 + 128);
  sub_23B08((v0 + 96), *(v0 + 120));
  v45 = sub_1235DC();
  sub_5BB0((v0 + 96));
  if (v45)
  {
    v46 = sub_648C8(*(v0 + 648), 13);
    *(v0 + 856) = v46;

    if (v46)
    {
      v47 = objc_opt_self();
      *(v0 + 328) = 0;
      v48 = [v47 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:v0 + 328];
      v49 = *(v0 + 328);
      if (v48)
      {
        v50 = v48;
        v51 = v49;
        v52 = sub_122EFC();
        v54 = v53;

        *(v0 + 864) = v52;
        *(v0 + 872) = v54;
        if (qword_15F050 != -1)
        {
          swift_once();
        }

        v55 = *(v0 + 344);
        v56 = swift_task_alloc();
        *(v0 + 880) = v56;
        v56[2] = v52;
        v56[3] = v54;
        v56[4] = v55;
        v57 = swift_task_alloc();
        *(v0 + 888) = v57;
        *v57 = v0;
        v57[1] = sub_88620;
        v58 = *(v0 + 664);

        return sub_B5584(v58, sub_8DC90, v56);
      }

      v114 = *(v0 + 664);
      v115 = *(v0 + 640);
      v116 = *(v0 + 600);
      v148 = *(v0 + 592);
      v152 = *(v0 + 624);
      v144 = *(v0 + 560);
      v117 = *(v0 + 528);
      v137 = *(v0 + 656);
      v140 = *(v0 + 520);
      v118 = *(v0 + 504);
      v134 = *(v0 + 512);
      v119 = *(v0 + 496);
      v120 = v49;

      sub_122E8C();

      swift_willThrow();
      (*(v118 + 8))(v134, v119);
      (*(v117 + 8))(v144, v140);
      (*(v116 + 8))(v152, v148);
    }

    else
    {
      v98 = *(v0 + 664);
      v99 = *(v0 + 632);

      v100 = sub_125AAC();
      v101 = sub_125DFC();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_0, v100, v101, "Could not get timer action from timer.", v102, 2u);
      }

      v103 = *(v0 + 640);
      v104 = *(v0 + 600);
      v147 = *(v0 + 592);
      v151 = *(v0 + 624);
      v143 = *(v0 + 560);
      v105 = *(v0 + 528);
      v136 = *(v0 + 656);
      v139 = *(v0 + 520);
      v106 = *(v0 + 504);
      v107 = *(v0 + 512);
      v108 = *(v0 + 496);

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
      swift_allocError();
      *v109 = 1;
      swift_willThrow();

      (*(v106 + 8))(v107, v108);
      (*(v105 + 8))(v143, v139);
      (*(v104 + 8))(v151, v147);
    }

    goto LABEL_72;
  }

  v61 = *(v0 + 432);
  v60 = *(v0 + 440);
  v62 = *(v0 + 424);
  sub_1250AC();
  v63 = sub_12504C();
  (*(v61 + 8))(v60, v62);
  if (v63)
  {
    v64 = *(v0 + 632);
    v65 = sub_125AAC();
    v66 = sub_125DFC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "[ResumeTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v67, 2u);
    }

    v68 = *(v0 + 672);
    if (!v68)
    {
LABEL_56:
      v85 = *(v0 + 416);
      sub_12521C();
      v86 = enum case for SiriTimePluginModel.timerMulti(_:);
      v87 = sub_12503C();
      v88 = *(v87 - 8);
      (*(v88 + 104))(v85, v86, v87);
      (*(v88 + 56))(v85, 0, 1, v87);
      if (qword_15F048 == -1)
      {
LABEL_57:
        v89 = *(v0 + 664);
        sub_5AE8(&qword_15F180, &unk_126E10);
        v90 = swift_allocObject();
        *(v0 + 728) = v90;
        *(v90 + 16) = xmmword_126CB0;
        strcpy((v90 + 32), "resumedTimers");
        *(v90 + 46) = -4864;
        *(v90 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
        *(v90 + 48) = v89;
        v91 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v92 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
        v93 = swift_task_alloc();
        *(v0 + 736) = v93;
        *v93 = v0;
        v93[1] = sub_86C88;
        v94 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v92);
        v95 = 0xD000000000000021;
        v96 = 0x800000000012CC70;
        v97 = v90;
LABEL_64:

        return v94(v95, v96, v97);
      }

LABEL_77:
      swift_once();
      goto LABEL_57;
    }

    sub_22A8C(0, v68 & ~(v68 >> 63), 0);
    if ((v68 & 0x8000000000000000) == 0)
    {
      v69 = 0;
      v70 = *(v0 + 384);
      v71 = *(v0 + 648) + 32;
      do
      {
        if ((*(v0 + 648) & 0xC000000000000001) != 0)
        {
          v72 = sub_125FFC();
        }

        else
        {
          v72 = *(v71 + 8 * v69);
        }

        v73 = v72;
        sub_1135FC(*(v0 + 392));

        v75 = _swiftEmptyArrayStorage[2];
        v74 = _swiftEmptyArrayStorage[3];
        if (v75 >= v74 >> 1)
        {
          sub_22A8C(v74 > 1, v75 + 1, 1);
        }

        v76 = *(v0 + 672);
        v77 = *(v0 + 392);
        v78 = *(v0 + 376);
        ++v69;
        _swiftEmptyArrayStorage[2] = (v75 + 1);
        (*(v70 + 32))(_swiftEmptyArrayStorage + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v75, v77, v78);
      }

      while (v69 != v76);
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_79;
  }

  v81 = *(v0 + 672);
  v82 = *(v0 + 648);

  if (v81 != 1)
  {
    v110 = *(v0 + 664);

    if (qword_15F050 != -1)
    {
      swift_once();
    }

    v111 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v112 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v113 = swift_task_alloc();
    *(v0 + 840) = v113;
    *v113 = v0;
    v113[1] = sub_88168;
    v94 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v112);
    v97 = _swiftEmptyArrayStorage;
    v96 = 0x800000000012D9D0;
    v95 = 0xD000000000000018;
    goto LABEL_64;
  }

  if (qword_15F050 != -1)
  {
LABEL_79:
    swift_once();
  }

  v83 = swift_task_alloc();
  *(v0 + 824) = v83;
  *v83 = v0;
  v83[1] = sub_87E8C;
  v84 = *(v0 + 664);

  return sub_B5994(v84);
}

uint64_t sub_85F4C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 688);
  v5 = *(*v2 + 680);
  v7 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = a2;

  return _swift_task_switch(sub_8609C, 0, 0);
}

uint64_t sub_8609C()
{
  sub_5BB0(v0 + 27);
  v1 = v0[88];
  v2 = v0[87];
  v0[90] = v1;
  v0[89] = v2;
  v111 = v0[79];
  v115 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v6 = v0[57];
  v103 = v0[59];
  v107 = v0[56];
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v7 = v0[11];
  sub_23B08(v0 + 7, v0[10]);
  v8 = sub_1235DC() & (v1 != 0);
  sub_5BB0(v0 + 7);
  (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v103);
  (*(v6 + 16))(v5, v111, v107);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  v9 = v0[16];
  sub_23B08(v0 + 12, v0[15]);
  v10 = sub_1235DC();
  sub_5BB0(v0 + 12);
  if ((v10 & 1) == 0 || v8)
  {
    v26 = v0[54];
    v25 = v0[55];
    v27 = v0[53];
    sub_1250AC();
    v28 = sub_12504C();
    (*(v26 + 8))(v25, v27);
    if (v28)
    {
      v29 = v0[79];
      v30 = sub_125AAC();
      v31 = sub_125DFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "[ResumeTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v32, 2u);
      }

      if (v8)
      {
        v33 = v0[52];
        v34 = sub_12503C();
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
      }

      else
      {
        v51 = v0[84];
        if (v51)
        {
          sub_22A8C(0, v51 & ~(v51 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
          }

          v52 = 0;
          v53 = v0[48];
          v54 = v0[81] + 32;
          do
          {
            if ((v0[81] & 0xC000000000000001) != 0)
            {
              v55 = sub_125FFC();
            }

            else
            {
              v55 = *(v54 + 8 * v52);
            }

            v56 = v55;
            sub_1135FC(v0[49]);

            v58 = _swiftEmptyArrayStorage[2];
            v57 = _swiftEmptyArrayStorage[3];
            if (v58 >= v57 >> 1)
            {
              sub_22A8C(v57 > 1, v58 + 1, 1);
            }

            v59 = v0[84];
            v60 = v0[49];
            v61 = v0[47];
            ++v52;
            _swiftEmptyArrayStorage[2] = (v58 + 1);
            (*(v53 + 32))(_swiftEmptyArrayStorage + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v58, v60, v61);
          }

          while (v52 != v59);
        }

        v70 = v0[52];
        sub_12521C();
        v71 = enum case for SiriTimePluginModel.timerMulti(_:);
        v72 = sub_12503C();
        v73 = *(v72 - 8);
        (*(v73 + 104))(v70, v71, v72);
        (*(v73 + 56))(v70, 0, 1, v72);
      }

      if (qword_15F048 != -1)
      {
        swift_once();
      }

      v74 = v0[83];
      sub_5AE8(&qword_15F180, &unk_126E10);
      v75 = swift_allocObject();
      v0[91] = v75;
      *(v75 + 16) = xmmword_126CB0;
      strcpy((v75 + 32), "resumedTimers");
      *(v75 + 46) = -4864;
      *(v75 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
      *(v75 + 48) = v74;
      v76 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v77 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v78 = swift_task_alloc();
      v0[92] = v78;
      *v78 = v0;
      v78[1] = sub_86C88;
      v66 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v77);
      v69 = 0xD000000000000021;
      v68 = 0x800000000012CC70;
      v67 = v75;
    }

    else
    {
      v35 = v0[84];
      v36 = v0[81];

      if (v35 == 1)
      {
        if (qword_15F050 != -1)
        {
          swift_once();
        }

        v37 = swift_task_alloc();
        v0[103] = v37;
        *v37 = v0;
        v37[1] = sub_87E8C;
        v38 = v0[83];

        return sub_B5994(v38);
      }

      v62 = v0[83];

      if (qword_15F050 != -1)
      {
        swift_once();
      }

      v63 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v64 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v65 = swift_task_alloc();
      v0[105] = v65;
      *v65 = v0;
      v65[1] = sub_88168;
      v66 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v64);
      v67 = _swiftEmptyArrayStorage;
      v68 = 0x800000000012D9D0;
      v69 = 0xD000000000000018;
    }

    return v66(v69, v68, v67);
  }

  v11 = sub_648C8(v0[81], 13);
  v0[107] = v11;

  if (v11)
  {
    v12 = objc_opt_self();
    v0[41] = 0;
    v13 = [v12 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v0 + 41];
    v14 = v0[41];
    if (v13)
    {
      v15 = v13;
      v16 = v14;
      v17 = sub_122EFC();
      v19 = v18;

      v0[108] = v17;
      v0[109] = v19;
      if (qword_15F050 != -1)
      {
        swift_once();
      }

      v20 = v0[43];
      v21 = swift_task_alloc();
      v0[110] = v21;
      v21[2] = v17;
      v21[3] = v19;
      v21[4] = v20;
      v22 = swift_task_alloc();
      v0[111] = v22;
      *v22 = v0;
      v22[1] = sub_88620;
      v23 = v0[83];

      return sub_B5584(v23, sub_8DC90, v21);
    }

    v79 = v0[83];
    v80 = v0[80];
    v81 = v0[75];
    v113 = v0[74];
    v117 = v0[78];
    v82 = v0[66];
    v105 = v0[65];
    v109 = v0[70];
    v83 = v0[63];
    v97 = v0[64];
    v99 = v0[82];
    v84 = v0[62];
    v85 = v14;

    sub_122E8C();

    swift_willThrow();
    (*(v83 + 8))(v97, v84);
    (*(v82 + 8))(v109, v105);
    (*(v81 + 8))(v117, v113);
  }

  else
  {
    v39 = v0[83];
    v40 = v0[79];

    v41 = sub_125AAC();
    v42 = sub_125DFC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "Could not get timer action from timer.", v43, 2u);
    }

    v44 = v0[80];
    v45 = v0[75];
    v112 = v0[74];
    v116 = v0[78];
    v108 = v0[70];
    v46 = v0[66];
    v101 = v0[82];
    v104 = v0[65];
    v47 = v0[63];
    v48 = v0[64];
    v49 = v0[62];

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
    swift_allocError();
    *v50 = 1;
    swift_willThrow();

    (*(v47 + 8))(v48, v49);
    (*(v46 + 8))(v108, v104);
    (*(v45 + 8))(v116, v112);
  }

  v86 = v0[78];
  v87 = v0[77];
  v88 = v0[76];
  v89 = v0[73];
  v90 = v0[70];
  v91 = v0[69];
  v92 = v0[68];
  v93 = v0[67];
  v94 = v0[64];
  v95 = v0[61];
  v98 = v0[58];
  v100 = v0[55];
  v102 = v0[52];
  v106 = v0[51];
  v110 = v0[50];
  v114 = v0[49];
  v118 = v0[46];

  v96 = v0[1];

  return v96();
}

uint64_t sub_86C88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 736);
  v8 = *v2;
  v3[93] = a1;
  v3[94] = v1;

  if (v1)
  {
    v5 = sub_87398;
  }

  else
  {
    v6 = v3[91];

    v5 = sub_86DDC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_86DDC()
{
  v64 = v0;
  v1 = *(v0 + 720);
  if (v1)
  {
    v2 = *(v0 + 648);
    v3 = *(v0 + 632);

    v4 = sub_125AAC();
    v5 = sub_125DFC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 712);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v63 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_8530(v6, v1, &v63);
      _os_log_impl(&dword_0, v4, v5, "[ResumeTimer.HandleIntentStrategy.makeIntentHandledResponse] We have a live activity: %s", v7, 0xCu);
      sub_5BB0(v8);
    }

    v9 = *(v0 + 624);
    v10 = *(v0 + 616);
    v11 = *(v0 + 600);
    v12 = *(v0 + 592);
    v13 = *(v0 + 552);
    v15 = *(v0 + 408);
    v14 = *(v0 + 416);
    sub_12361C();
    (*(v11 + 16))(v10, v9, v12);
    sub_E344(v14, v15, &qword_15F9E0, &unk_127710);
    v16 = sub_12503C();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v15, 1, v16);
    v19 = *(v0 + 408);
    if (v18 == 1)
    {
      sub_5CA8(*(v0 + 408), &qword_15F9E0, &unk_127710);
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0;
    }

    else
    {
      *(v0 + 200) = v16;
      *(v0 + 208) = sub_2AF38();
      v29 = sub_23B4C((v0 + 176));
      (*(v17 + 32))(v29, v19, v16);
    }

    v30 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v31 = swift_task_alloc();
    *(v0 + 760) = v31;
    *v31 = v0;
    v31[1] = sub_875CC;
    v32 = *(v0 + 744);
    v33 = *(v0 + 720);
    v34 = *(v0 + 712);
    v35 = *(v0 + 616);
    v36 = *(v0 + 552);
    v37 = *(v0 + 512);
    v38 = *(v0 + 336);
    v67 = 2;
    v66 = 0x800000000012D410;
    v39 = v0 + 176;
    v40 = 0xD000000000000019;
  }

  else
  {
    v20 = *(v0 + 648);
    v21 = *(v0 + 632);

    v22 = sub_125AAC();
    v23 = sub_125DFC();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 648);
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = *(v0 + 648);
      if (v25 >> 62)
      {
        if (v27 < 0)
        {
          v42 = *(v0 + 648);
        }

        v28 = sub_1260FC();
        v43 = *(v0 + 648);
      }

      else
      {
        v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
      }

      *(v26 + 4) = v28;

      _os_log_impl(&dword_0, v22, v23, "[ResumeTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer snippet model for %ld running timers.", v26, 0xCu);
    }

    else
    {
      v41 = *(v0 + 648);
      swift_bridgeObjectRelease_n();
    }

    v44 = *(v0 + 624);
    v45 = *(v0 + 608);
    v46 = *(v0 + 600);
    v47 = *(v0 + 592);
    v48 = *(v0 + 544);
    v49 = *(v0 + 416);
    v50 = *(v0 + 400);
    sub_12361C();
    (*(v46 + 16))(v45, v44, v47);
    sub_E344(v49, v50, &qword_15F9E0, &unk_127710);
    v51 = sub_12503C();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v50, 1, v51);
    v54 = *(v0 + 400);
    if (v53 == 1)
    {
      sub_5CA8(*(v0 + 400), &qword_15F9E0, &unk_127710);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
    }

    else
    {
      *(v0 + 160) = v51;
      *(v0 + 168) = sub_2AF38();
      v55 = sub_23B4C((v0 + 136));
      (*(v52 + 32))(v55, v54, v51);
    }

    v56 = *(v0 + 672);
    if (v56 <= 1)
    {
      v57 = 0xD000000000000019;
    }

    else
    {
      v57 = 0xD000000000000018;
    }

    if (v56 <= 1)
    {
      v58 = "timerBase#noButtonTitle";
    }

    else
    {
      v58 = "dResponse(rchRecord:)";
    }

    v59 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v60 = swift_task_alloc();
    *(v0 + 792) = v60;
    *v60 = v0;
    v60[1] = sub_87A1C;
    v61 = *(v0 + 744);
    v35 = *(v0 + 608);
    v36 = *(v0 + 544);
    v37 = *(v0 + 512);
    v38 = *(v0 + 336);
    v67 = 2;
    v66 = v58 | 0x8000000000000000;
    v39 = v0 + 136;
    v34 = 0;
    v33 = 0;
    v40 = v57;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v38, v36, v35, v39, v37, v34, v33, v40);
}

uint64_t sub_87398()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[75];
  v32 = v0[74];
  v34 = v0[78];
  v7 = v0[66];
  v28 = v0[65];
  v30 = v0[70];
  v8 = v0[63];
  v26 = v0[64];
  v9 = v0[62];
  v10 = v0[52];

  sub_5CA8(v10, &qword_15F9E0, &unk_127710);
  (*(v8 + 8))(v26, v9);
  (*(v7 + 8))(v30, v28);
  (*(v6 + 8))(v34, v32);
  v11 = v0[78];
  v12 = v0[77];
  v13 = v0[76];
  v14 = v0[73];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[64];
  v20 = v0[61];
  v23 = v0[94];
  v24 = v0[58];
  v25 = v0[55];
  v27 = v0[52];
  v29 = v0[51];
  v31 = v0[50];
  v33 = v0[49];
  v35 = v0[46];

  v21 = v0[1];

  return v21();
}

uint64_t sub_875CC()
{
  v1 = *v0;
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 720);
  v4 = *(*v0 + 616);
  v5 = *(*v0 + 600);
  v6 = *(*v0 + 592);
  v7 = *(*v0 + 552);
  v8 = *(*v0 + 528);
  v9 = *(*v0 + 520);
  v13 = *v0;

  v10 = *(v5 + 8);
  v1[96] = v10;
  v10(v4, v6);
  v11 = *(v8 + 8);
  v1[97] = v11;
  v1[98] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v9);
  sub_5CA8((v1 + 22), &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_87804, 0, 0);
}

uint64_t sub_87804()
{
  v28 = *(v0 + 784);
  v1 = *(v0 + 776);
  v2 = *(v0 + 744);
  v3 = *(v0 + 656);
  v4 = *(v0 + 560);
  v5 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  v8 = *(v0 + 496);
  v9 = *(v0 + 416);

  sub_5CA8(v9, &qword_15F9E0, &unk_127710);
  (*(v7 + 8))(v6, v8);
  v1(v4, v5);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v12 = *(v0 + 584);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v17 = *(v0 + 512);
  v22 = *(v0 + 488);
  v23 = *(v0 + 464);
  v24 = *(v0 + 440);
  v25 = *(v0 + 416);
  v26 = *(v0 + 408);
  v27 = *(v0 + 400);
  v18 = *(v0 + 392);
  v29 = *(v0 + 368);
  v19 = (*(v0 + 600) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 768))(*(v0 + 624), *(v0 + 592));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_87A1C()
{
  v1 = *v0;
  v2 = *(*v0 + 792);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 600);
  v5 = *(*v0 + 592);
  v6 = *(*v0 + 544);
  v7 = *(*v0 + 528);
  v8 = *(*v0 + 520);
  *(*v0 + 672);
  v12 = *v0;

  v9 = *(v4 + 8);
  v1[100] = v9;
  v9(v3, v5);
  v10 = *(v7 + 8);
  v1[101] = v10;
  v1[102] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  sub_5CA8((v1 + 17), &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_87C74, 0, 0);
}

uint64_t sub_87C74()
{
  v28 = *(v0 + 816);
  v1 = *(v0 + 808);
  v2 = *(v0 + 744);
  v3 = *(v0 + 656);
  v4 = *(v0 + 560);
  v5 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  v8 = *(v0 + 496);
  v9 = *(v0 + 416);

  sub_5CA8(v9, &qword_15F9E0, &unk_127710);
  (*(v7 + 8))(v6, v8);
  v1(v4, v5);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v12 = *(v0 + 584);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v17 = *(v0 + 512);
  v22 = *(v0 + 488);
  v23 = *(v0 + 464);
  v24 = *(v0 + 440);
  v25 = *(v0 + 416);
  v26 = *(v0 + 408);
  v27 = *(v0 + 400);
  v18 = *(v0 + 392);
  v29 = *(v0 + 368);
  v19 = (*(v0 + 600) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 800))(*(v0 + 624), *(v0 + 592));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_87E8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[32] = v2;
  v4[33] = a1;
  v4[34] = v1;
  v5 = v3[103];
  v11 = *v2;
  v4[104] = v1;

  if (v1)
  {
    v6 = v4[90];
    v7 = v4[83];

    v8 = sub_88CF0;
  }

  else
  {
    v9 = v4[83];

    v8 = sub_87FF8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_87FF8()
{
  v1 = v0[33];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[78];
  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[46];
  v0[113] = v1;
  (*(v7 + 16))(v6, v5, v8);
  v10 = swift_task_alloc();
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = v2;
  v1;
  sub_123B0C();

  v11 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v12 = swift_task_alloc();
  v0[114] = v12;
  *v12 = v0;
  v12[1] = sub_88944;
  v13 = v0[64];
  v14 = v0[46];
  v15 = v0[42];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v15, v14, v13);
}

uint64_t sub_88168(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[35] = v2;
  v4[36] = a1;
  v4[37] = v1;
  v5 = v3[105];
  v8 = *v2;
  v4[106] = v1;

  if (v1)
  {
    v6 = sub_88420;
  }

  else
  {
    v6 = sub_882B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_882B0()
{
  v1 = v0[36];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[78];
  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[46];
  v0[113] = v1;
  (*(v7 + 16))(v6, v5, v8);
  v10 = swift_task_alloc();
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = v2;
  v1;
  sub_123B0C();

  v11 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v12 = swift_task_alloc();
  v0[114] = v12;
  *v12 = v0;
  v12[1] = sub_88944;
  v13 = v0[64];
  v14 = v0[46];
  v15 = v0[42];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v15, v14, v13);
}

uint64_t sub_88420()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 656);
  v3 = *(v0 + 600);
  v28 = *(v0 + 592);
  v30 = *(v0 + 624);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v30, v28);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 584);
  v14 = *(v0 + 560);
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  v17 = *(v0 + 536);
  v18 = *(v0 + 512);
  v19 = *(v0 + 488);
  v22 = *(v0 + 848);
  v23 = *(v0 + 464);
  v24 = *(v0 + 440);
  v25 = *(v0 + 416);
  v26 = *(v0 + 408);
  v27 = *(v0 + 400);
  v29 = *(v0 + 392);
  v31 = *(v0 + 368);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_88620(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v5 = v3[111];
  v6 = *v2;
  v4[112] = v1;

  v7 = v3[110];
  if (v1)
  {
    v8 = v4[90];
    v9 = v4[83];

    v10 = sub_88EE8;
  }

  else
  {
    v11 = v4[83];

    v10 = sub_887B8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_887B8()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 864);

  sub_E498(v2, v1);
  v3 = *(v0 + 312);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v6 = *(v0 + 624);
  v7 = *(v0 + 560);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v11 = *(v0 + 368);
  *(v0 + 904) = v3;
  (*(v9 + 16))(v8, v7, v10);
  v12 = swift_task_alloc();
  v12[2] = v6;
  v12[3] = v5;
  v12[4] = v4;
  v3;
  sub_123B0C();

  v13 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v14 = swift_task_alloc();
  *(v0 + 912) = v14;
  *v14 = v0;
  v14[1] = sub_88944;
  v15 = *(v0 + 512);
  v16 = *(v0 + 368);
  v17 = *(v0 + 336);

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v17, v16, v15);
}

uint64_t sub_88944()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v4 = *v1;
  *(*v1 + 920) = v0;

  v5 = v2[113];
  (*(v2[45] + 8))(v2[46], v2[44]);

  if (v0)
  {
    v6 = sub_890F8;
  }

  else
  {
    v6 = sub_88AF8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_88AF8()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 656);
  v3 = *(v0 + 600);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v12 = *(v0 + 584);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v19 = *(v0 + 512);
  v20 = *(v0 + 488);
  v21 = *(v0 + 464);
  v22 = *(v0 + 440);
  v23 = *(v0 + 416);
  v24 = *(v0 + 408);
  v25 = *(v0 + 400);
  v26 = *(v0 + 392);
  v27 = *(v0 + 368);
  (*(v3 + 8))(*(v0 + 624), *(v0 + 592));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_88CF0()
{
  v1 = *(v0 + 656);
  v29 = *(v0 + 624);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v29, v3);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 584);
  v14 = *(v0 + 560);
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  v17 = *(v0 + 536);
  v18 = *(v0 + 512);
  v19 = *(v0 + 488);
  v22 = *(v0 + 832);
  v23 = *(v0 + 464);
  v24 = *(v0 + 440);
  v25 = *(v0 + 416);
  v26 = *(v0 + 408);
  v27 = *(v0 + 400);
  v28 = *(v0 + 392);
  v30 = *(v0 + 368);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_88EE8()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v4 = *(v0 + 656);
  v5 = *(v0 + 600);
  v30 = *(v0 + 592);
  v32 = *(v0 + 624);
  v6 = *(v0 + 528);
  v26 = *(v0 + 520);
  v28 = *(v0 + 560);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 496);

  sub_E498(v2, v1);
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v28, v26);
  (*(v5 + 8))(v32, v30);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 584);
  v14 = *(v0 + 560);
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  v17 = *(v0 + 536);
  v18 = *(v0 + 512);
  v19 = *(v0 + 488);
  v22 = *(v0 + 896);
  v23 = *(v0 + 464);
  v24 = *(v0 + 440);
  v25 = *(v0 + 416);
  v27 = *(v0 + 408);
  v29 = *(v0 + 400);
  v31 = *(v0 + 392);
  v33 = *(v0 + 368);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_890F8()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 656);
  v3 = *(v0 + 600);
  v28 = *(v0 + 592);
  v30 = *(v0 + 624);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v30, v28);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 584);
  v14 = *(v0 + 560);
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  v17 = *(v0 + 536);
  v18 = *(v0 + 512);
  v19 = *(v0 + 488);
  v22 = *(v0 + 920);
  v23 = *(v0 + 464);
  v24 = *(v0 + 440);
  v25 = *(v0 + 416);
  v26 = *(v0 + 408);
  v27 = *(v0 + 400);
  v29 = *(v0 + 392);
  v31 = *(v0 + 368);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_892F4(uint64_t *a1)
{
  v2 = sub_5AE8(&unk_15F170, &unk_126E00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  sub_122EEC(0);
  sub_124E1C();
  v6 = sub_124E4C();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for ResumeTimerHandledOnWatchParameters(0);
  sub_22A1C(v5, a1 + *(v7 + 24));
  sub_124DEC();
  sub_5AE8(&qword_160D70, &qword_1288D8);
  sub_123AAC();
  v8 = sub_124DDC();
  v9 = *a1;

  *a1 = v8;
  return result;
}

uint64_t sub_8942C(uint64_t a1, uint64_t a2)
{
  v3 = sub_5AE8(&unk_162190, &unk_128500);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_12392C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_123B1C();

  return sub_123B2C();
}

uint64_t sub_89550(uint64_t a1, uint64_t a2)
{
  v2[40] = a1;
  v2[41] = a2;
  v3 = sub_12503C();
  v2[42] = v3;
  v4 = *(v3 - 8);
  v2[43] = v4;
  v5 = *(v4 + 64) + 15;
  v2[44] = swift_task_alloc();
  v6 = sub_1250BC();
  v2[45] = v6;
  v7 = *(v6 - 8);
  v2[46] = v7;
  v8 = *(v7 + 64) + 15;
  v2[47] = swift_task_alloc();
  v9 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v10 = *(*(type metadata accessor for ResumeTimerAlreadyRunningAllParameters(0) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v11 = *(*(sub_124EDC() - 8) + 64) + 15;
  v2[50] = swift_task_alloc();
  v12 = sub_125ABC();
  v2[51] = v12;
  v13 = *(v12 - 8);
  v2[52] = v13;
  v14 = *(v13 + 64) + 15;
  v2[53] = swift_task_alloc();
  v15 = sub_124FFC();
  v2[54] = v15;
  v16 = *(v15 - 8);
  v2[55] = v16;
  v17 = *(v16 + 64) + 15;
  v2[56] = swift_task_alloc();
  v18 = sub_12501C();
  v2[57] = v18;
  v19 = *(v18 - 8);
  v2[58] = v19;
  v20 = *(v19 + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v21 = sub_12392C();
  v2[61] = v21;
  v22 = *(v21 - 8);
  v2[62] = v22;
  v23 = *(v22 + 64) + 15;
  v2[63] = swift_task_alloc();
  v24 = sub_12368C();
  v2[64] = v24;
  v25 = *(v24 - 8);
  v2[65] = v25;
  v26 = *(v25 + 64) + 15;
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_898E0, 0, 0);
}

uint64_t sub_898E0()
{
  v105 = v0;
  if (qword_15EE88 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[51], qword_160D50);
  v0[68] = v1;
  v101 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResumeTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v4, 2u);
  }

  v5 = v0[67];
  v6 = v0[63];
  v7 = v0[60];
  v8 = v0[55];
  v9 = v0[56];
  v103 = v0;
  v10 = v0[54];
  v11 = v0[53];
  v12 = v0[52];
  v13 = v103[51];
  v14 = v103[50];
  v100 = v103[41];

  sub_12361C();
  sub_12391C();
  v15 = enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:);
  v16 = *(v8 + 104);
  v103[69] = v16;
  v103[70] = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v17 = v10;
  v18 = v103;
  v16(v9, v15, v17);
  v19 = *(v12 + 16);
  v103[71] = v19;
  v103[72] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20 = v101;
  v19(v11, v101, v13);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v103[73] = sub_124DBC();
  sub_5AE8(&qword_160D70, &qword_1288D8);
  v21 = sub_123A9C();
  v22 = sub_12562C();

  if (v22 <= 101)
  {
    if (v22 == 100)
    {
      v51 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v102 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v52 = swift_task_alloc();
      v103[77] = v52;
      *v52 = v103;
      v52[1] = sub_8A7F8;
      v49 = _swiftEmptyArrayStorage;
      v53 = 0x800000000012C5A0;
      v50 = 0xD000000000000012;
LABEL_56:

      return v102(v50, v53, v49);
    }

    if (v22 == 101)
    {
      v23 = v103[41];
      v24 = swift_task_alloc();
      v103[74] = v24;
      *(v24 + 16) = v23;
      v25 = swift_task_alloc();
      v103[75] = v25;
      *v25 = v103;
      v25[1] = sub_8A5FC;

      return sub_104D80(sub_8DC7C, v24);
    }

LABEL_17:
    v20 = 0xD000000000000012;
    v35 = v103[67];
    v36 = v103[66];
    v37 = v103[65];
    v38 = v103[64];
    v39 = v103[41];
    sub_12364C();
    (*(v37 + 8))(v35, v38);
    (*(v37 + 32))(v35, v36, v38);
    v40 = sub_123ABC();
    v41 = [v40 targetTimer];

    v42 = [v41 shouldMatchAny];
    sub_8BAC();
    v43.super.super.isa = sub_125EFC(1).super.super.isa;
    isa = v43.super.super.isa;
    if (v42)
    {
      v45 = sub_125F0C();

      if (v45)
      {
        if (qword_15F050 == -1)
        {
LABEL_20:
          v46 = "resumeTimer#errorSingle";
          v47 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
          v102 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
          v48 = swift_task_alloc();
          v103[101] = v48;
          *v48 = v103;
          v48[1] = sub_8C424;
          v49 = _swiftEmptyArrayStorage;
          v50 = v20 + 4;
LABEL_35:
          v53 = v46 | 0x8000000000000000;
          goto LABEL_56;
        }

LABEL_65:
        swift_once();
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (qword_15F050 != -1)
    {
      swift_once();
    }

    v46 = "Installed_Dialog";
    v65 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v102 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v66 = swift_task_alloc();
    v103[103] = v66;
    *v66 = v103;
    v66[1] = sub_8C8A0;
    v49 = _swiftEmptyArrayStorage;
    v50 = 0xD000000000000017;
    goto LABEL_35;
  }

  if (v22 != 102)
  {
    if (v22 != 103)
    {
      goto LABEL_17;
    }

    if (qword_15F050 != -1)
    {
      swift_once();
    }

    v27 = v103[48];
    v28 = v103[49];
    v29 = sub_124E4C();
    v30 = *(v29 - 8);
    v31 = *(v30 + 56);
    v31(v28, 1, 1, v29);
    sub_5CA8(v28, &unk_15F170, &unk_126E00);
    v31(v28, 1, 1, v29);
    sub_5AE8(&qword_15F180, &unk_126E10);
    v32 = swift_allocObject();
    v103[79] = v32;
    *(v32 + 16) = xmmword_126CB0;
    *(v32 + 32) = 0x6174614477656976;
    *(v32 + 40) = 0xE800000000000000;
    sub_E344(v28, v27, &unk_15F170, &unk_126E00);
    v33 = (*(v30 + 48))(v27, 1, v29);
    v34 = v103[48];
    if (v33 == 1)
    {
      sub_5CA8(v103[48], &unk_15F170, &unk_126E00);
      *(v32 + 48) = 0u;
      *(v32 + 64) = 0u;
    }

    else
    {
      *(v32 + 72) = v29;
      v61 = sub_23B4C((v32 + 48));
      (*(v30 + 32))(v61, v34, v29);
    }

    v62 = "resumeTimer#errorMulti";
    v63 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v102 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v64 = swift_task_alloc();
    v103[80] = v64;
    *v64 = v103;
    v64[1] = sub_8AC74;
    v50 = 0xD00000000000001DLL;
LABEL_55:
    v53 = v62 | 0x8000000000000000;
    v49 = v32;
    goto LABEL_56;
  }

  v54 = v103[41];
  v55 = sub_123A9C();
  v56 = [v55 resumedTimers];

  if (!v56)
  {
    goto LABEL_38;
  }

  sub_1257EC();
  v57 = sub_125C6C();

  if (v57 >> 62)
  {
    if (sub_1260FC())
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

  if (!*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_37:

    v56 = 0;
LABEL_38:
    v59 = 0;
    goto LABEL_39;
  }

LABEL_25:
  if ((v57 & 0xC000000000000001) != 0)
  {
    v58 = sub_125FFC();
  }

  else
  {
    if (!*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_65;
    }

    v58 = *(v57 + 32);
  }

  v59 = v58;

  v60 = v59;
  v56 = sub_113D6C(0, 0);

LABEL_39:
  v103[83] = v59;
  v103[82] = v56;
  v68 = v103[46];
  v67 = v103[47];
  v69 = v103[45];
  sub_1250AC();
  v70 = sub_12504C();
  (*(v68 + 8))(v67, v69);
  if (!v70 || !v59)
  {
    v92 = sub_125AAC();
    v93 = sub_125DFC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_0, v92, v93, "[ResumeTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse] Using RF 1.0 pattern", v94, 2u);
    }

    if (qword_15F050 != -1)
    {
      swift_once();
    }

    sub_5AE8(&qword_15F180, &unk_126E10);
    v32 = swift_allocObject();
    v103[97] = v32;
    *(v32 + 16) = xmmword_126CB0;
    *(v32 + 32) = 0x72656D6974;
    *(v32 + 40) = 0xE500000000000000;
    v95 = 0;
    if (v56)
    {
      v95 = type metadata accessor for TimerTimer(0);
    }

    else
    {
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
    }

    v103[98] = v56;
    *(v32 + 48) = v56;
    *(v32 + 72) = v95;
    v62 = "te(mtTimer:newState:)";
    v96 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v102 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    swift_retain_n();
    v97 = swift_task_alloc();
    v103[99] = v97;
    *v97 = v103;
    v97[1] = sub_8BF5C;
    v50 = 0xD00000000000001ALL;
    goto LABEL_55;
  }

  v71 = sub_125AAC();
  v72 = sub_125DFC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "[ResumeTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse] Using multi-timer RF 2.0 path for failureTimerAlreadyRunning", v73, 2u);
  }

  v74 = v59;
  v75 = sub_125AAC();
  v76 = sub_125DFC();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v104 = v78;
    *v77 = 136315138;
    v79 = v74;
    v80 = [v79 description];
    v81 = sub_125B9C();
    v83 = v82;

    v84 = sub_8530(v81, v83, &v104);
    v18 = v103;

    *(v77 + 4) = v84;
    _os_log_impl(&dword_0, v75, v76, "[ResumeTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse] Resumed timer: %s", v77, 0xCu);
    sub_5BB0(v78);
  }

  sub_12573C();
  sub_12572C();
  v85 = v18[10];
  v86 = v18[11];
  sub_23B08(v18 + 7, v85);
  v87 = [v74 identifier];
  if (v87)
  {
    v88 = v87;
    v89 = sub_125B9C();
    v91 = v90;
  }

  else
  {
    v89 = 0;
    v91 = 0;
  }

  v18[84] = v91;
  v98 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
  v99 = swift_task_alloc();
  v18[85] = v99;
  *v99 = v18;
  v99[1] = sub_8B124;

  return dispatch thunk of SessionManaging.sessionIDString(for:)(v89, v91, v85, v86);
}

uint64_t sub_8A5FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[22] = v2;
  v4[23] = a1;
  v4[24] = v1;
  v5 = v3[75];
  v6 = *v2;
  v4[76] = v1;

  v7 = v3[74];

  if (v1)
  {
    v8 = sub_8CFAC;
  }

  else
  {
    v8 = sub_8A738;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_8A738()
{
  v1 = v0[23];
  v0[105] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[106] = v3;
  *v3 = v0;
  v3[1] = sub_8CD1C;
  v4 = v0[67];
  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[40];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_8A7F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[25] = v2;
  v4[26] = a1;
  v4[27] = v1;
  v5 = v3[77];
  v8 = *v2;
  v4[78] = v1;

  if (v1)
  {
    v6 = sub_8A9D4;
  }

  else
  {
    v6 = sub_8A914;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_8A914()
{
  v1 = v0[26];
  v0[105] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[106] = v3;
  *v3 = v0;
  v3[1] = sub_8CD1C;
  v4 = v0[67];
  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[40];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_8A9D4()
{
  v1 = v0[73];

  v2 = v0[78];
  v3 = v0[65];
  v26 = v0[64];
  v28 = v0[67];
  v4 = v0[62];
  v24 = v0[61];
  v25 = v0[63];
  v5 = v0[60];
  v7 = v0[57];
  v6 = v0[58];
  v8 = sub_12547C();
  v0[5] = v8;
  v0[6] = &protocol witness table for ABCReport;
  v9 = sub_23B4C(v0 + 2);
  *v9 = sub_122E7C();
  v10 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v11 = sub_1253BC();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(*(v8 - 8) + 104))(v9, enum case for ABCReport.dialog(_:), v8);
  sub_1251AC();
  sub_5BB0(v0 + 2);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v25, v24);
  (*(v3 + 8))(v28, v26);
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[63];
  v16 = v0[59];
  v15 = v0[60];
  v17 = v0[56];
  v18 = v0[53];
  v20 = v0[49];
  v19 = v0[50];
  v21 = v0[48];
  v27 = v0[47];
  v29 = v0[44];

  v22 = v0[1];

  return v22();
}

uint64_t sub_8AC74(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[28] = v2;
  v4[29] = a1;
  v4[30] = v1;
  v5 = v3[80];
  v6 = *v2;
  v4[81] = v1;

  v7 = v3[79];

  if (v1)
  {
    v8 = sub_8AE78;
  }

  else
  {
    v8 = sub_8ADB0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_8ADB0()
{
  sub_8DC20(v0[49]);
  v1 = v0[29];
  v0[105] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[106] = v3;
  *v3 = v0;
  v3[1] = sub_8CD1C;
  v4 = v0[67];
  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[40];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_8AE78()
{
  v1 = v0[73];
  sub_8DC20(v0[49]);

  v2 = v0[81];
  v3 = v0[65];
  v26 = v0[64];
  v28 = v0[67];
  v4 = v0[62];
  v24 = v0[61];
  v25 = v0[63];
  v5 = v0[60];
  v7 = v0[57];
  v6 = v0[58];
  v8 = sub_12547C();
  v0[5] = v8;
  v0[6] = &protocol witness table for ABCReport;
  v9 = sub_23B4C(v0 + 2);
  *v9 = sub_122E7C();
  v10 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v11 = sub_1253BC();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(*(v8 - 8) + 104))(v9, enum case for ABCReport.dialog(_:), v8);
  sub_1251AC();
  sub_5BB0(v0 + 2);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v25, v24);
  (*(v3 + 8))(v28, v26);
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[63];
  v16 = v0[59];
  v15 = v0[60];
  v17 = v0[56];
  v18 = v0[53];
  v20 = v0[49];
  v19 = v0[50];
  v21 = v0[48];
  v27 = v0[47];
  v29 = v0[44];

  v22 = v0[1];

  return v22();
}

uint64_t sub_8B124(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 680);
  v5 = *(*v2 + 672);
  v7 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = a2;

  return _swift_task_switch(sub_8B248, 0, 0);
}

uint64_t sub_8B248()
{
  v1 = v0[83];
  v19 = v0[71];
  v20 = v0[72];
  v16 = v0[69];
  v17 = v0[70];
  v18 = v0[68];
  v21 = v0[59];
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  v15 = v0[51];
  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[42];
  sub_5BB0(v0 + 7);
  sub_5AE8(&qword_15F940, &unk_127410);
  v8 = *(sub_124F4C() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_126CB0;
  sub_1135FC(v11 + v10);
  sub_12521C();
  (*(v5 + 104))(v6, enum case for SiriTimePluginModel.timerMulti(_:), v7);
  v16(v2, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v4);
  v19(v3, v18, v15);
  mach_absolute_time();
  sub_12502C();
  if (qword_15F048 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  v0[88] = v12;
  *v12 = v0;
  v12[1] = sub_8B48C;
  v13 = v0[82];

  return sub_2B0F4(v13);
}

uint64_t sub_8B48C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 704);
  v8 = *v2;
  v3[89] = a1;
  v3[90] = v1;

  if (v1)
  {
    v5 = v3[87];

    v6 = sub_8D24C;
  }

  else
  {
    v6 = sub_8B5AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_8B5AC()
{
  v36 = v0;
  v1 = v0[87];
  v2 = v0[68];
  if (v1)
  {
    v3 = v0[87];

    v4 = sub_125AAC();
    v5 = sub_125DFC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[86];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35 = v8;
      *v7 = 136315138;
      v9 = sub_8530(v6, v1, &v35);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_0, v4, v5, "[ResumeTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse] We have a live activity: %s", v7, 0xCu);
      sub_5BB0(v8);
    }

    else
    {
    }

    v26 = v0[66];
    v28 = v0[43];
    v27 = v0[44];
    v29 = v0[42];
    sub_12361C();
    v0[20] = v29;
    v0[21] = sub_2AF38();
    v30 = sub_23B4C(v0 + 17);
    (*(v28 + 16))(v30, v27, v29);
    v31 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v32 = swift_task_alloc();
    v0[91] = v32;
    *v32 = v0;
    v32[1] = sub_8B8D4;
    v33 = v0[89];
    v21 = v0[66];
    v22 = v0[63];
    v23 = v0[59];
    v24 = v0[40];
    v39 = 2;
    v38 = 0;
    v25 = v0 + 17;
  }

  else
  {
    v10 = sub_125AAC();
    v11 = sub_125DFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "[ResumeTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse] Using multi-timer snippet model for single running timer instead.", v12, 2u);
    }

    v13 = v0[66];
    v15 = v0[43];
    v14 = v0[44];
    v16 = v0[42];

    sub_12361C();
    v0[15] = v16;
    v0[16] = sub_2AF38();
    v17 = sub_23B4C(v0 + 12);
    (*(v15 + 16))(v17, v14, v16);
    v18 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v19 = swift_task_alloc();
    v0[94] = v19;
    *v19 = v0;
    v19[1] = sub_8BC18;
    v20 = v0[89];
    v21 = v0[66];
    v22 = v0[63];
    v23 = v0[59];
    v24 = v0[40];
    v39 = 2;
    v38 = 0;
    v25 = v0 + 12;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v24, v21, v22, v25, v23, 0, 0, 0);
}

uint64_t sub_8B8D4()
{
  v1 = *v0;
  v2 = *(*v0 + 728);
  v3 = *(*v0 + 528);
  v4 = *(*v0 + 520);
  v5 = *(*v0 + 512);
  v8 = *v0;

  v6 = *(v4 + 8);
  *(v1 + 736) = v6;
  *(v1 + 744) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  sub_5CA8(v1 + 136, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_8BA54, 0, 0);
}

uint64_t sub_8BA54()
{
  v29 = *(v0 + 736);
  v31 = *(v0 + 744);
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 584);
  v27 = *(v0 + 512);
  v28 = *(v0 + 536);
  v26 = *(v0 + 504);
  v4 = *(v0 + 496);
  v5 = *(v0 + 472);
  v24 = *(v0 + 480);
  v25 = *(v0 + 488);
  v7 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 344);
  v23 = *(v0 + 352);
  v9 = *(v0 + 336);

  v10 = *(v6 + 8);
  v10(v5, v7);
  (*(v8 + 8))(v23, v9);
  v10(v24, v7);
  (*(v4 + 8))(v26, v25);
  v29(v28, v27);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v13 = *(v0 + 504);
  v15 = *(v0 + 472);
  v14 = *(v0 + 480);
  v16 = *(v0 + 448);
  v17 = *(v0 + 424);
  v19 = *(v0 + 392);
  v18 = *(v0 + 400);
  v20 = *(v0 + 384);
  v30 = *(v0 + 376);
  v32 = *(v0 + 352);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_8BC18()
{
  v1 = *v0;
  v2 = *(*v0 + 752);
  v3 = *(*v0 + 528);
  v4 = *(*v0 + 520);
  v5 = *(*v0 + 512);
  v8 = *v0;

  v6 = *(v4 + 8);
  *(v1 + 760) = v6;
  *(v1 + 768) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  sub_5CA8(v1 + 96, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_8BD98, 0, 0);
}

uint64_t sub_8BD98()
{
  v29 = *(v0 + 760);
  v31 = *(v0 + 768);
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 584);
  v27 = *(v0 + 512);
  v28 = *(v0 + 536);
  v26 = *(v0 + 504);
  v4 = *(v0 + 496);
  v5 = *(v0 + 472);
  v24 = *(v0 + 480);
  v25 = *(v0 + 488);
  v7 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 344);
  v23 = *(v0 + 352);
  v9 = *(v0 + 336);

  v10 = *(v6 + 8);
  v10(v5, v7);
  (*(v8 + 8))(v23, v9);
  v10(v24, v7);
  (*(v4 + 8))(v26, v25);
  v29(v28, v27);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v13 = *(v0 + 504);
  v15 = *(v0 + 472);
  v14 = *(v0 + 480);
  v16 = *(v0 + 448);
  v17 = *(v0 + 424);
  v19 = *(v0 + 392);
  v18 = *(v0 + 400);
  v20 = *(v0 + 384);
  v30 = *(v0 + 376);
  v32 = *(v0 + 352);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_8BF5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[31] = v2;
  v4[32] = a1;
  v4[33] = v1;
  v5 = v3[99];
  v6 = *v2;
  v4[100] = v1;

  v7 = v3[97];

  if (v1)
  {
    v8 = sub_8C16C;
  }

  else
  {
    v8 = sub_8C098;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_8C098()
{
  v1 = v0[98];
  v2 = v0[83];

  v3 = v0[32];
  v0[105] = v3;
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3;
  v5 = swift_task_alloc();
  v0[106] = v5;
  *v5 = v0;
  v5[1] = sub_8CD1C;
  v6 = v0[67];
  v7 = v0[63];
  v8 = v0[60];
  v9 = v0[40];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v6, v7, v8, 0);
}

uint64_t sub_8C16C()
{
  v1 = v0[98];
  v2 = v0[83];
  v3 = v0[73];

  v4 = v0[100];
  v5 = v0[65];
  v28 = v0[64];
  v30 = v0[67];
  v6 = v0[62];
  v26 = v0[61];
  v27 = v0[63];
  v7 = v0[60];
  v9 = v0[57];
  v8 = v0[58];
  v10 = sub_12547C();
  v0[5] = v10;
  v0[6] = &protocol witness table for ABCReport;
  v11 = sub_23B4C(v0 + 2);
  *v11 = sub_122E7C();
  v12 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v13 = sub_1253BC();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  (*(*(v10 - 8) + 104))(v11, enum case for ABCReport.dialog(_:), v10);
  sub_1251AC();
  sub_5BB0(v0 + 2);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  swift_willThrow();

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v27, v26);
  (*(v5 + 8))(v30, v28);
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[63];
  v18 = v0[59];
  v17 = v0[60];
  v19 = v0[56];
  v20 = v0[53];
  v22 = v0[49];
  v21 = v0[50];
  v23 = v0[48];
  v29 = v0[47];
  v31 = v0[44];

  v24 = v0[1];

  return v24();
}

uint64_t sub_8C424(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[34] = v2;
  v4[35] = a1;
  v4[36] = v1;
  v5 = v3[101];
  v8 = *v2;
  v4[102] = v1;

  if (v1)
  {
    v6 = sub_8C600;
  }

  else
  {
    v6 = sub_8C540;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_8C540()
{
  v1 = v0[35];
  v0[105] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[106] = v3;
  *v3 = v0;
  v3[1] = sub_8CD1C;
  v4 = v0[67];
  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[40];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_8C600()
{
  v1 = v0[73];

  v2 = v0[102];
  v3 = v0[65];
  v26 = v0[64];
  v28 = v0[67];
  v4 = v0[62];
  v24 = v0[61];
  v25 = v0[63];
  v5 = v0[60];
  v7 = v0[57];
  v6 = v0[58];
  v8 = sub_12547C();
  v0[5] = v8;
  v0[6] = &protocol witness table for ABCReport;
  v9 = sub_23B4C(v0 + 2);
  *v9 = sub_122E7C();
  v10 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v11 = sub_1253BC();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(*(v8 - 8) + 104))(v9, enum case for ABCReport.dialog(_:), v8);
  sub_1251AC();
  sub_5BB0(v0 + 2);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v25, v24);
  (*(v3 + 8))(v28, v26);
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[63];
  v16 = v0[59];
  v15 = v0[60];
  v17 = v0[56];
  v18 = v0[53];
  v20 = v0[49];
  v19 = v0[50];
  v21 = v0[48];
  v27 = v0[47];
  v29 = v0[44];

  v22 = v0[1];

  return v22();
}

uint64_t sub_8C8A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[37] = v2;
  v4[38] = a1;
  v4[39] = v1;
  v5 = v3[103];
  v8 = *v2;
  v4[104] = v1;

  if (v1)
  {
    v6 = sub_8CA7C;
  }

  else
  {
    v6 = sub_8C9BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_8C9BC()
{
  v1 = v0[38];
  v0[105] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[106] = v3;
  *v3 = v0;
  v3[1] = sub_8CD1C;
  v4 = v0[67];
  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[40];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_8CA7C()
{
  v1 = v0[73];

  v2 = v0[104];
  v3 = v0[65];
  v26 = v0[64];
  v28 = v0[67];
  v4 = v0[62];
  v24 = v0[61];
  v25 = v0[63];
  v5 = v0[60];
  v7 = v0[57];
  v6 = v0[58];
  v8 = sub_12547C();
  v0[5] = v8;
  v0[6] = &protocol witness table for ABCReport;
  v9 = sub_23B4C(v0 + 2);
  *v9 = sub_122E7C();
  v10 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v11 = sub_1253BC();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(*(v8 - 8) + 104))(v9, enum case for ABCReport.dialog(_:), v8);
  sub_1251AC();
  sub_5BB0(v0 + 2);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v25, v24);
  (*(v3 + 8))(v28, v26);
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[63];
  v16 = v0[59];
  v15 = v0[60];
  v17 = v0[56];
  v18 = v0[53];
  v20 = v0[49];
  v19 = v0[50];
  v21 = v0[48];
  v27 = v0[47];
  v29 = v0[44];

  v22 = v0[1];

  return v22();
}

uint64_t sub_8CD1C()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v6 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v4 = sub_8D540;
  }

  else
  {

    v4 = sub_8CE38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8CE38()
{
  v1 = v0[105];
  v2 = v0[73];
  v24 = v0[67];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[61];
  v7 = v0[62];
  v8 = v0[60];
  v10 = v0[57];
  v9 = v0[58];

  (*(v9 + 8))(v8, v10);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v24, v4);
  v11 = v0[67];
  v12 = v0[66];
  v13 = v0[63];
  v15 = v0[59];
  v14 = v0[60];
  v16 = v0[56];
  v17 = v0[53];
  v19 = v0[49];
  v18 = v0[50];
  v20 = v0[48];
  v23 = v0[47];
  v25 = v0[44];

  v21 = v0[1];

  return v21();
}

uint64_t sub_8CFAC()
{
  v1 = v0[73];

  v2 = v0[76];
  v3 = v0[65];
  v26 = v0[64];
  v28 = v0[67];
  v4 = v0[62];
  v24 = v0[61];
  v25 = v0[63];
  v5 = v0[60];
  v7 = v0[57];
  v6 = v0[58];
  v8 = sub_12547C();
  v0[5] = v8;
  v0[6] = &protocol witness table for ABCReport;
  v9 = sub_23B4C(v0 + 2);
  *v9 = sub_122E7C();
  v10 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v11 = sub_1253BC();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(*(v8 - 8) + 104))(v9, enum case for ABCReport.dialog(_:), v8);
  sub_1251AC();
  sub_5BB0(v0 + 2);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v25, v24);
  (*(v3 + 8))(v28, v26);
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[63];
  v16 = v0[59];
  v15 = v0[60];
  v17 = v0[56];
  v18 = v0[53];
  v20 = v0[49];
  v19 = v0[50];
  v21 = v0[48];
  v27 = v0[47];
  v29 = v0[44];

  v22 = v0[1];

  return v22();
}

uint64_t sub_8D24C()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[73];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];

  (*(v5 + 8))(v4, v6);
  (*(v8 + 8))(v7, v9);
  v10 = v0[90];
  v11 = v0[65];
  v34 = v0[64];
  v36 = v0[67];
  v12 = v0[62];
  v32 = v0[61];
  v33 = v0[63];
  v13 = v0[60];
  v15 = v0[57];
  v14 = v0[58];
  v16 = sub_12547C();
  v0[5] = v16;
  v0[6] = &protocol witness table for ABCReport;
  v17 = sub_23B4C(v0 + 2);
  *v17 = sub_122E7C();
  v18 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v19 = sub_1253BC();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, enum case for ABCReport.dialog(_:), v16);
  sub_1251AC();
  sub_5BB0(v0 + 2);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  swift_willThrow();

  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v33, v32);
  (*(v11 + 8))(v36, v34);
  v20 = v0[67];
  v21 = v0[66];
  v22 = v0[63];
  v24 = v0[59];
  v23 = v0[60];
  v25 = v0[56];
  v26 = v0[53];
  v28 = v0[49];
  v27 = v0[50];
  v29 = v0[48];
  v35 = v0[47];
  v37 = v0[44];

  v30 = v0[1];

  return v30();
}

uint64_t sub_8D540()
{
  v1 = *(v0 + 584);

  v2 = *(v0 + 856);
  v27 = *(v0 + 536);
  v29 = *(v0 + 840);
  v3 = *(v0 + 520);
  v25 = *(v0 + 504);
  v26 = *(v0 + 512);
  v4 = *(v0 + 496);
  v24 = *(v0 + 488);
  v5 = *(v0 + 480);
  v7 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = sub_12547C();
  *(v0 + 40) = v8;
  *(v0 + 48) = &protocol witness table for ABCReport;
  v9 = sub_23B4C((v0 + 16));
  *v9 = sub_122E7C();
  v10 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v11 = sub_1253BC();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(*(v8 - 8) + 104))(v9, enum case for ABCReport.dialog(_:), v8);
  sub_1251AC();
  sub_5BB0((v0 + 16));
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v25, v24);
  (*(v3 + 8))(v27, v26);

  v12 = *(v0 + 536);
  v13 = *(v0 + 528);
  v14 = *(v0 + 504);
  v16 = *(v0 + 472);
  v15 = *(v0 + 480);
  v17 = *(v0 + 448);
  v18 = *(v0 + 424);
  v20 = *(v0 + 392);
  v19 = *(v0 + 400);
  v21 = *(v0 + 384);
  v28 = *(v0 + 376);
  v30 = *(v0 + 352);

  v22 = *(v0 + 8);

  return v22();
}

void sub_8D7FC(uint64_t a1)
{
  sub_5AE8(&qword_160D70, &qword_1288D8);
  v4 = sub_123ABC();
  sub_12564C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_8D880(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_8D928;

  return sub_84A9C(a1, a2);
}

uint64_t sub_8D928()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_8DA5C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_8DA5C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_8DB28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return sub_89550(a1, a2);
}

unint64_t sub_8DBCC()
{
  result = qword_160D68;
  if (!qword_160D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160D68);
  }

  return result;
}

uint64_t sub_8DC20(uint64_t a1)
{
  v2 = type metadata accessor for ResumeTimerAlreadyRunningAllParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8DC84(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_8942C(a1, v1[2]);
}

uint64_t sub_8DC90(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_892F4(a1);
}

uint64_t type metadata accessor for TimeSuggestionsCATsSimple()
{
  result = qword_160D78;
  if (!qword_160D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8DD28(uint64_t a1, uint64_t a2)
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
  v16 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v16;
}

uint64_t sub_8DEB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_124EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_124E6C();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t type metadata accessor for ResumeTimerCATs_Async()
{
  result = qword_160DC8;
  if (!qword_160DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8E054(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for DeleteTimerCATs_Async()
{
  result = qword_160E18;
  if (!qword_160E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8E270(uint64_t a1, uint64_t a2)
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

uint64_t sub_8E400()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160E68);
  sub_5B30(v0, qword_160E68);
  return sub_1257AC();
}

uint64_t type metadata accessor for CreateTimerCATsSimple()
{
  result = qword_160E80;
  if (!qword_160E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8E4D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_8E574, 0, 0);
}

uint64_t sub_8E574()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_126CB0;
  *(v3 + 32) = 0x62614C72656D6974;
  *(v3 + 40) = 0xEA00000000006C65;
  sub_E344(v2, v1, &unk_15F170, &unk_126E00);
  v4 = sub_124E4C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_5CA8(v0[4], &unk_15F170, &unk_126E00);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v8 = sub_23B4C((v3 + 48));
    (*(v5 + 32))(v8, v7, v4);
  }

  v9 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v13 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_8E75C;
  v11 = v0[3];

  return v13(0xD000000000000018, 0x800000000012DB40, v3);
}

uint64_t sub_8E75C(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_8F404, 0, 0);
  }

  else
  {
    v7 = v5[4];
    v6 = v5[5];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_8E8B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_8E954, 0, 0);
}

uint64_t sub_8E954()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_126CB0;
  *(v3 + 32) = 0x70795472656D6974;
  *(v3 + 40) = 0xE900000000000065;
  sub_E344(v2, v1, &unk_15F170, &unk_126E00);
  v4 = sub_124E4C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_5CA8(v0[4], &unk_15F170, &unk_126E00);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v8 = sub_23B4C((v3 + 48));
    (*(v5 + 32))(v8, v7, v4);
  }

  v9 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v13 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_8EB3C;
  v11 = v0[3];

  return v13(0xD000000000000017, 0x800000000012DB20, v3);
}

uint64_t sub_8EB3C(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_8EC98, 0, 0);
  }

  else
  {
    v7 = v5[4];
    v6 = v5[5];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_8EC98()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_8ED04(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_8EDA4, 0, 0);
}

uint64_t sub_8EDA4()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_1270C0;
  strcpy((v2 + 32), "createdTimer");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for TimerTimer(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = v0[5];
  v5 = v0[3];
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000016;
  *(v2 + 88) = 0x800000000012CEA0;
  sub_E344(v5, v4, &unk_15F170, &unk_126E00);
  v6 = sub_124E4C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = v0[5];
  v10 = v0[2];
  if (v8 == 1)
  {
    v11 = v0[2];

    sub_5CA8(v9, &unk_15F170, &unk_126E00);
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
  }

  else
  {
    *(v2 + 120) = v6;
    v12 = sub_23B4C((v2 + 96));
    (*(v7 + 32))(v12, v9, v6);
  }

  v13 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v17 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_8EFE8;
  v15 = v0[4];

  return v17(0xD000000000000021, 0x800000000012DAF0, v2);
}

uint64_t sub_8EFE8(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  v5[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_2BC58, 0, 0);
  }

  else
  {
    v7 = v5[5];
    v6 = v5[6];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_8F144(uint64_t a1, uint64_t a2)
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
  v16 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v16;
}

uint64_t sub_8F2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_124EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_124E6C();
  (*(v5 + 8))(a2, v4);
  return v11;
}

Swift::Int sub_8F408()
{
  sub_12626C();
  sub_125BFC();

  return sub_12628C();
}

double sub_8F548@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6970756F72476F6ELL && a2 == 0xEA0000000000676ELL;
  if (v6 || (sub_1261BC() & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v9;
    return result;
  }

  if (a1 == 0x6562614C656D6173 && a2 == 0xE90000000000006CLL || (sub_1261BC() & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  if (a1 == 0x6D6F6F52656D6173 && a2 == 0xE800000000000000 || (sub_1261BC() & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  if (a1 == 0x69766544656D6173 && a2 == 0xEA00000000006563 || (sub_1261BC() & 1) != 0)
  {
    v9 = v3[27];
    goto LABEL_7;
  }

  if (a1 == 0x696E6E75526C6C61 && a2 == 0xEA0000000000676ELL || (sub_1261BC() & 1) != 0)
  {
    v9 = v3[28];
    goto LABEL_7;
  }

  if (a1 == 0x65737561506C6C61 && a2 == 0xE900000000000064 || (sub_1261BC() & 1) != 0)
  {
    v9 = v3[29];
    goto LABEL_7;
  }

  if (a1 == 0x61727544656D6173 && a2 == 0xEC0000006E6F6974 || (sub_1261BC() & 1) != 0)
  {
    v9 = v3[30];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_8F798()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_125BFC();
}

uint64_t sub_8F8BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_905D0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}