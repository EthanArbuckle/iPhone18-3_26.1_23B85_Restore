uint64_t sub_C488C()
{
  v1 = v0[56];
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[45];

  sub_16F70(v4, &qword_137598, &unk_107EB0);

  v5 = v0[51];
  v6 = v0[48];
  v8 = v0[44];
  v7 = v0[45];
  v10 = v0[42];
  v9 = v0[43];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[35];
  v14 = v0[32];
  v17 = v0[31];
  v18 = v0[28];
  v19 = v0[25];
  v20 = v0[22];
  v21 = v0[20];
  v22 = v0[59];

  v15 = v0[1];

  return v15();
}

uint64_t sub_C49F8(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 480);
  v5 = *v3;
  v5[61] = a1;
  v5[62] = a2;
  v5[63] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_C4CC0, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v5[64] = v6;
    *v6 = v5;
    v6[1] = sub_C4B80;

    return sub_EF160();
  }
}

uint64_t sub_C4B80(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 512);
  v8 = *v3;
  *(*v3 + 520) = v2;

  if (v2)
  {
    v9 = v6[62];

    v10 = sub_C535C;
  }

  else
  {
    v6[66] = a2;
    v6[67] = a1;
    v10 = sub_C4E08;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_C4CC0()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);

  v3 = *(v0 + 408);
  v4 = *(v0 + 384);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  v11 = *(v0 + 280);
  v12 = *(v0 + 256);
  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  v20 = *(v0 + 504);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_C4E08()
{
  v1 = v0[52];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[39];
  sub_769D4(v0[61], v0[62], v0[67], v0[66], v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[53];
    sub_16F70(v0[39], &qword_137DC0, &unk_10A0A0);
    v6 = sub_106D10();
    v7 = sub_106FB0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Can NOT retrieve alarm snippet model.", v8, 2u);
    }

    v9 = v0[58];
    v10 = v0[54];
    v11 = v0[52];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0);
    swift_allocError();
    *v12 = 3;
    swift_willThrow();

    v13 = v0[51];
    v14 = v0[48];
    v16 = v0[44];
    v15 = v0[45];
    v18 = v0[42];
    v17 = v0[43];
    v20 = v0[38];
    v19 = v0[39];
    v21 = v0[35];
    v22 = v0[32];
    v47 = v0[31];
    v49 = v0[28];
    v51 = v0[25];
    v53 = v0[22];
    v55 = v0[20];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[52];
    v26 = v0[41];
    v27 = v0[42];
    v28 = v0[40];
    v29 = v0[38];
    v30 = v0[35];
    v56 = v0[53];
    v57 = v0[32];
    v31 = v0[27];
    v48 = v0[28];
    v50 = v0[26];
    v32 = v0[24];
    v52 = v0[25];
    v54 = v0[23];
    (*(v26 + 32))(v27, v0[39], v28);
    sub_104CF0();
    sub_25E4(&qword_137DD0, &unk_108920);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_108470;
    *(inited + 32) = v25;
    v34 = v25;
    sub_BD4A4(inited, v30);
    swift_setDeallocating();
    v35 = *(inited + 16);
    swift_arrayDestroy();
    v36 = sub_106AF0();
    v0[15] = v36;
    v0[16] = sub_CBFA8(&qword_137DE8, 255, &type metadata accessor for SiriAlarmSnippetModels);
    v37 = sub_1A924(v0 + 12);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v38 = *(v26 + 72);
    v39 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_107FC0;
    (*(v26 + 16))(v40 + v39, v27, v28);
    sub_106930();
    (*(*(v36 - 8) + 104))(v37, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v36);
    (*(v31 + 104))(v48, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v50);
    (*(v32 + 16))(v52, v56, v54);
    mach_absolute_time();
    sub_106330();
    v41 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v42 = swift_task_alloc();
    v0[68] = v42;
    *v42 = v0;
    v42[1] = sub_C54A4;
    v43 = v0[58];
    v44 = v0[38];
    v45 = v0[35];
    v46 = v0[32];

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 2, v44, v45, v0 + 12, v46, 0, 0, 0);
  }
}

uint64_t sub_C535C()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);

  v3 = *(v0 + 408);
  v4 = *(v0 + 384);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  v11 = *(v0 + 280);
  v12 = *(v0 + 256);
  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  v20 = *(v0 + 520);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_C54A4()
{
  v1 = *v0;
  v2 = *(*v0 + 544);
  v12 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v4 = *(*v0 + 288);
  v5 = *(*v0 + 280);
  v6 = *(*v0 + 272);
  v7 = *(*v0 + 264);
  v8 = *(*v0 + 256);
  v9 = *(*v0 + 240);
  v10 = *(*v0 + 232);
  v13 = *v0;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v12, v4);
  sub_16F70(v1 + 96, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_C56D8, 0, 0);
}

uint64_t sub_C56D8()
{
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[52];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
  v7 = v0[6];
  sub_1A8E0(v0 + 2, v0[5]);
  v25 = sub_1053F0();

  (*(v5 + 8))(v4, v6);
  sub_2738(v0 + 2);
  v8 = v0[51];
  v9 = v0[48];
  v11 = v0[44];
  v10 = v0[45];
  v13 = v0[42];
  v12 = v0[43];
  v15 = v0[38];
  v14 = v0[39];
  v16 = v0[35];
  v17 = v0[32];
  v20 = v0[31];
  v21 = v0[28];
  v22 = v0[25];
  v23 = v0[22];
  v24 = v0[20];

  v18 = v0[1];

  return v18(v25);
}

uint64_t sub_C5870(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  v4[71] = v1;

  v7 = v4[69];

  if (v1)
  {
    v8 = sub_C5D98;
  }

  else
  {
    v4[72] = a1;
    v8 = sub_C59B4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_C59B4()
{
  v1 = v0[52];
  v2 = v0[38];
  v3 = v0[20];
  sub_CBF48(v0[22], type metadata accessor for SearchQuerySuccessSingleParameters);
  sub_104CF0();
  *(swift_task_alloc() + 16) = v1;
  sub_1051B0();

  v4 = async function pointer to PatternExecutionResult.generateFlow(manifest:measure:)[1];
  v5 = swift_task_alloc();
  v0[73] = v5;
  *v5 = v0;
  v5[1] = sub_C5AC8;
  v6 = v0[72];
  v7 = v0[31];
  v8 = v0[20];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v8, v7);
}

uint64_t sub_C5AC8(uint64_t a1)
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 576);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 592) = a1;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_C5C40, 0, 0);
}

uint64_t sub_C5C40()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 408);
  v5 = *(v0 + 384);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  v11 = *(v0 + 304);
  v10 = *(v0 + 312);
  v12 = *(v0 + 280);
  v13 = *(v0 + 256);
  v16 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 200);
  v19 = *(v0 + 176);
  v20 = *(v0 + 160);
  v21 = *(v0 + 592);

  v14 = *(v0 + 8);

  return v14(v21);
}

uint64_t sub_C5D98()
{
  v1 = v0[52];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  sub_CBF48(v0[22], type metadata accessor for SearchQuerySuccessSingleParameters);

  (*(v3 + 8))(v2, v4);
  v5 = v0[51];
  v6 = v0[48];
  v8 = v0[44];
  v7 = v0[45];
  v10 = v0[42];
  v9 = v0[43];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[35];
  v14 = v0[32];
  v17 = v0[31];
  v18 = v0[28];
  v19 = v0[25];
  v20 = v0[22];
  v21 = v0[20];
  v22 = v0[71];

  v15 = v0[1];

  return v15();
}

uint64_t sub_C5F08(uint64_t a1, void *a2)
{
  v3 = sub_25E4(&qword_1375A8, &qword_10AA90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  sub_25E4(&qword_137DD0, &unk_108920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_108470;
  *(inited + 32) = a2;
  v8 = a2;
  sub_BD4A4(inited, v6);
  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  v10 = sub_104FF0();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1051C0();
}

uint64_t sub_C603C()
{
  v1[12] = v0;
  v2 = sub_1051E0();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = sub_1052B0();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v8 = sub_106D20();
  v1[19] = v8;
  v9 = *(v8 - 8);
  v1[20] = v9;
  v10 = *(v9 + 64) + 15;
  v1[21] = swift_task_alloc();
  v11 = sub_106300();
  v1[22] = v11;
  v12 = *(v11 - 8);
  v1[23] = v12;
  v13 = *(v12 + 64) + 15;
  v1[24] = swift_task_alloc();
  v14 = sub_106320();
  v1[25] = v14;
  v15 = *(v14 - 8);
  v1[26] = v15;
  v16 = *(v15 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v17 = sub_104FF0();
  v1[29] = v17;
  v18 = *(v17 - 8);
  v1[30] = v18;
  v19 = *(v18 + 64) + 15;
  v1[31] = swift_task_alloc();
  v20 = sub_104D60();
  v1[32] = v20;
  v21 = *(v20 - 8);
  v1[33] = v21;
  v22 = *(v21 + 64) + 15;
  v1[34] = swift_task_alloc();
  v23 = *(*(sub_25E4(&qword_137DC0, &unk_10A0A0) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v24 = sub_106AE0();
  v1[36] = v24;
  v25 = *(v24 - 8);
  v1[37] = v25;
  v26 = *(v25 + 64) + 15;
  v1[38] = swift_task_alloc();
  v27 = sub_106370();
  v1[39] = v27;
  v28 = *(v27 - 8);
  v1[40] = v28;
  v29 = *(v28 + 64) + 15;
  v1[41] = swift_task_alloc();
  v30 = sub_104670();
  v1[42] = v30;
  v31 = *(v30 - 8);
  v1[43] = v31;
  v32 = *(v31 + 64) + 15;
  v1[44] = swift_task_alloc();

  return _swift_task_switch(sub_C647C, 0, 0);
}

uint64_t sub_C647C()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(v0[19], qword_13A3A0);
  v0[45] = v1;
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider makeAllResultsFlow()", v4, 2u);
  }

  v5 = v0[12];

  v6 = *(v5 + 56);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v11 = *(v5 + 56);
    }

    if (sub_107270())
    {
      goto LABEL_7;
    }

LABEL_15:
    v12 = swift_task_alloc();
    v0[46] = v12;
    *v12 = v0;
    v12[1] = sub_C6A0C;
    v13 = v0[12];

    return sub_C2398();
  }

  if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_15;
  }

LABEL_7:
  v7 = *(v5 + 56);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v14 = *(v5 + 56);
    }

    if (sub_107270() == 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_9:
    v8 = swift_task_alloc();
    v0[47] = v8;
    *v8 = v0;
    v8[1] = sub_C6C98;
    v9 = v0[12];

    return sub_C2EE0();
  }

  v15 = *(v5 + 56);
  v45 = v5;
  v46 = v1;
  if (v15 >> 62)
  {
LABEL_45:
    v47 = v15 & 0xFFFFFFFFFFFFFF8;
    v48 = sub_107270();
  }

  else
  {
    v47 = v15 & 0xFFFFFFFFFFFFFF8;
    v48 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
  }

  v16 = v15 & 0xC000000000000001;
  v17 = (v0[43] + 8);

  v18 = 0;
LABEL_24:
  v0[48] = _swiftEmptyArrayStorage;
  while (v48 != v18)
  {
    if (v16)
    {
      v19 = sub_1071C0();
    }

    else
    {
      if (v18 >= *(v47 + 16))
      {
        goto LABEL_44;
      }

      v19 = *(v15 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v22 = v15;
    v23 = v0[44];
    v24 = v0[42];
    sub_106210();
    v25 = sub_75DD4(0, v23, 0);

    v26 = v23;
    v15 = v22;
    (*v17)(v26, v24);
    ++v18;
    if (v25)
    {
      sub_106EC0();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v27 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_106F10();
      }

      sub_106F20();
      v18 = v21;
      goto LABEL_24;
    }
  }

  v28 = v0[40];
  v29 = v0[41];
  v30 = v0[39];

  sub_106360();
  v31 = sub_106340();
  (*(v28 + 8))(v29, v30);
  if (v31)
  {
    v32 = swift_task_alloc();
    v0[49] = v32;
    *v32 = v0;
    v32[1] = sub_C6F24;

    return sub_EEDD4();
  }

  else
  {
    v33 = v0[27];
    v34 = v0[23];
    v35 = v0[24];
    v37 = v0[21];
    v36 = v0[22];
    v39 = v0[19];
    v38 = v0[20];
    v40 = v0[18];

    (*(v34 + 104))(v35, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v36);
    (*(v38 + 16))(v37, v46, v39);
    mach_absolute_time();
    sub_106330();
    sub_105260();
    v41 = *(v45 + 56);
    v0[63] = v41;

    v42 = swift_task_alloc();
    v0[64] = v42;
    *v42 = v0;
    v42[1] = sub_C7FA8;
    v43 = v0[18];
    v44 = v0[12];

    return sub_CAC34(v43, v41);
  }
}

uint64_t sub_C6A0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;

  v5 = v2[44];
  v6 = v2[41];
  v7 = v2[38];
  v8 = v2[35];
  v9 = v2[34];
  v10 = v2[31];
  v11 = v2[28];
  v12 = v2[27];
  v18 = v2[24];
  v19 = v2[21];
  v20 = v2[18];
  v13 = v2[15];

  v15 = *(v4 + 8);
  if (!v21)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_C6C98(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;

  v5 = v2[44];
  v6 = v2[41];
  v7 = v2[38];
  v8 = v2[35];
  v9 = v2[34];
  v10 = v2[31];
  v11 = v2[28];
  v12 = v2[27];
  v18 = v2[24];
  v19 = v2[21];
  v20 = v2[18];
  v13 = v2[15];

  v15 = *(v4 + 8);
  if (!v21)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_C6F24(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 392);
  v5 = *v3;
  v5[50] = a1;
  v5[51] = a2;
  v5[52] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_C71C4, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v5[53] = v6;
    *v6 = v5;
    v6[1] = sub_C70AC;

    return sub_EF160();
  }
}

uint64_t sub_C70AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 424);
  v8 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  if (v2)
  {
    v6 = sub_C76A0;
  }

  else
  {
    v6 = sub_C72D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_C71C4()
{
  v1 = v0[48];

  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[31];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v11 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[52];

  v12 = v0[1];

  return v12();
}

uint64_t sub_C72D8()
{
  v1 = *(v0[12] + 56);
  if (v1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_107270())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    v4 = v0[37];
    v31 = v1 & 0xFFFFFFFFFFFFFF8;
    v32 = v1 & 0xC000000000000001;
    v5 = (v4 + 48);
    v29 = v4;
    v30 = (v4 + 32);
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v32)
      {
        v7 = sub_1071C0();
      }

      else
      {
        if (v3 >= *(v31 + 16))
        {
          goto LABEL_25;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v1;
      v11 = i;
      v13 = v0[35];
      v12 = v0[36];
      sub_769D4(v0[50], v0[51], v0[54], v0[55], v13);

      if ((*v5)(v13, 1, v12) == 1)
      {
        sub_16F70(v0[35], &qword_137DC0, &unk_10A0A0);
      }

      else
      {
        v14 = *v30;
        (*v30)(v0[38], v0[35], v0[36]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_AD840(0, *(v6 + 2) + 1, 1, v6);
        }

        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          v6 = sub_AD840(v15 > 1, v16 + 1, 1, v6);
        }

        v17 = v0[38];
        v18 = v0[36];
        *(v6 + 2) = v16 + 1;
        v14(&v6[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v16], v17, v18);
      }

      i = v11;
      v1 = v10;
      ++v3;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_19:
  v0[57] = v6;
  v19 = v0[55];
  v20 = v0[51];

  if (qword_136D80 != -1)
  {
    swift_once();
  }

  v21 = v0[48];
  v22 = v0[12];
  v23 = sub_C19E8();
  sub_25E4(&qword_137880, &unk_108290);
  v24 = swift_allocObject();
  v0[58] = v24;
  *(v24 + 16) = xmmword_1094F0;
  *(v24 + 32) = 0x736D657469;
  *(v24 + 40) = 0xE500000000000000;
  v25 = sub_25E4(&qword_137B40, &unk_108390);
  *(v24 + 48) = v21;
  *(v24 + 88) = 0x800000000010DB70;
  *(v24 + 120) = &type metadata for Double;
  v26 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v33 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v24 + 72) = v25;
  *(v24 + 80) = 0xD000000000000010;
  *(v24 + 96) = v23;
  v27 = swift_task_alloc();
  v0[59] = v27;
  *v27 = v0;
  v27[1] = sub_C77C0;

  return v33(0xD000000000000025, 0x800000000010E0C0, v24);
}

uint64_t sub_C76A0()
{
  v1 = v0[51];
  v2 = v0[48];

  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[31];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[24];
  v12 = v0[21];
  v15 = v0[18];
  v16 = v0[15];
  v17 = v0[56];

  v13 = v0[1];

  return v13();
}

uint64_t sub_C77C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v7 = sub_C7E8C;
  }

  else
  {
    v8 = *(v4 + 464);

    *(v4 + 488) = a1;
    v7 = sub_C78F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_C78F0()
{
  v1 = v0[57];
  v2 = v0[34];
  v3 = v0[31];
  v22 = v0[45];
  v23 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[12];
  sub_104CF0();
  v11 = *(v10 + 56);

  sub_BD4A4(v12, v3);

  v13 = sub_106AF0();
  v0[10] = v13;
  v0[11] = sub_CBFA8(&qword_137DE8, 255, &type metadata accessor for SiriAlarmSnippetModels);
  v14 = sub_1A924(v0 + 7);
  sub_106930();
  (*(*(v13 - 8) + 104))(v14, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v13);
  (*(v5 + 104))(v4, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v7);
  (*(v8 + 16))(v6, v22, v9);
  mach_absolute_time();
  sub_106330();
  v15 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v16 = swift_task_alloc();
  v0[62] = v16;
  *v16 = v0;
  v16[1] = sub_C7B18;
  v17 = v0[61];
  v18 = v0[34];
  v19 = v0[31];
  v20 = v0[28];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 2, v18, v19, v0 + 7, v20, 0, 0, 0);
}

uint64_t sub_C7B18()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v12 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v5 = *(*v0 + 248);
  v6 = *(*v0 + 240);
  v7 = *(*v0 + 232);
  v8 = *(*v0 + 224);
  v9 = *(*v0 + 208);
  v10 = *(*v0 + 200);
  v13 = *v0;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v12, v4);
  sub_16F70(v1 + 56, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_C7D4C, 0, 0);
}

uint64_t sub_C7D4C()
{
  v1 = v0[61];
  v2 = v0[6];
  sub_1A8E0(v0 + 2, v0[5]);
  v17 = sub_1053F0();

  sub_2738(v0 + 2);
  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[31];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[24];
  v12 = v0[21];
  v15 = v0[18];
  v16 = v0[15];

  v13 = v0[1];

  return v13(v17);
}

uint64_t sub_C7E8C()
{
  v2 = v0[57];
  v1 = v0[58];

  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[31];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[24];
  v12 = v0[21];
  v15 = v0[18];
  v16 = v0[15];
  v17 = v0[60];

  v13 = v0[1];

  return v13();
}

uint64_t sub_C7FA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 512);
  v6 = *v2;
  v4[65] = v1;

  v7 = v4[63];
  v8 = v4[18];
  v9 = v4[17];
  v10 = v4[16];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_C84D4;
  }

  else
  {
    v4[66] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_C8154;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_C8154()
{
  v1 = v0[34];
  v2 = v0[15];
  v3 = v0[12];
  sub_104CF0();
  sub_1051B0();
  v4 = async function pointer to PatternExecutionResult.generateFlow(manifest:measure:)[1];
  v5 = swift_task_alloc();
  v0[67] = v5;
  *v5 = v0;
  v5[1] = sub_C8234;
  v6 = v0[66];
  v7 = v0[27];
  v8 = v0[15];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v8, v7);
}

uint64_t sub_C8234(uint64_t a1)
{
  v2 = *(*v1 + 536);
  v3 = *(*v1 + 528);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 544) = a1;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_C83AC, 0, 0);
}

uint64_t sub_C83AC()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[24];
  v10 = v0[21];
  v13 = v0[18];
  v14 = v0[15];
  v15 = v0[68];

  v11 = v0[1];

  return v11(v15);
}

uint64_t sub_C84D4()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[24];
  v10 = v0[21];
  v13 = v0[18];
  v14 = v0[15];
  v15 = v0[65];

  v11 = v0[1];

  return v11();
}

uint64_t sub_C85F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E4(&qword_1375A8, &qword_10AA90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + 56);

  sub_BD4A4(v8, v6);

  v9 = sub_104FF0();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  return sub_1051C0();
}

uint64_t sub_C86D8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1052B0();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v6 = sub_104D60();
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v8 = *(v7 + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = sub_1051E0();
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v12 = sub_106960();
  v3[18] = v12;
  v13 = *(v12 - 8);
  v3[19] = v13;
  v14 = *(v13 + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = sub_104FF0();
  v3[21] = v15;
  v16 = *(v15 - 8);
  v3[22] = v16;
  v17 = *(v16 + 64) + 15;
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_C8920, 0, 0);
}

uint64_t sub_C8920()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider makeWindowFlow", v4, 2u);
  }

  v5 = v0[23];
  v6 = v0[20];
  v37 = v0[22];
  v38 = v0[21];
  v7 = v0[18];
  v8 = v0[19];
  v9 = v0[15];
  v41 = v0[14];
  v10 = v0[12];
  v11 = v0[13];
  v30 = v0[11];
  v31 = v0[16];
  v39 = v0[17];
  v40 = v0[10];
  v12 = v0[8];
  v33 = v0[7];
  v34 = v0[9];
  v35 = v0[6];
  v36 = v0[5];
  v32 = v0[4];

  (*(v8 + 104))(v6, enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:), v7);
  sub_BD9B4(v6, v5);
  (*(v8 + 8))(v6, v7);
  sub_104D10();
  sub_1051A0();
  (*(v10 + 8))(v11, v30);
  (*(v9 + 16))(v31, v39, v41);
  v13 = sub_105010();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_105000();
  (*(v12 + 16))(v40, v32, v33);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v35;
  (*(v12 + 32))(v17 + v16, v40, v33);
  *(v17 + ((v34 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
  v18 = sub_1066B0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  sub_1066A0();
  sub_105180();
  v21 = *(v13 + 48);
  v22 = *(v13 + 52);
  swift_allocObject();
  sub_105000();
  v23 = sub_104A00();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v0[2] = sub_1049F0();
  sub_CBFA8(&qword_13A550, 255, &type metadata accessor for YesNoSearchWindowStrategy);
  v26 = sub_104A10();

  v0[3] = v26;
  sub_25E4(&qword_13A558, &unk_10ADB0);
  sub_B880C(&qword_13A560, &qword_13A558, &unk_10ADB0);
  v27 = sub_104B40();

  (*(v9 + 8))(v39, v41);
  (*(v37 + 8))(v5, v38);

  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_C8E68(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_104FF0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_104D60();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_C8F84, 0, 0);
}

uint64_t sub_C8F84()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider window prompt producing rejection output", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[5];

  sub_104D40();
  sub_104FE0();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_C90F4;
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[2];

  return sub_19708(v10, v8, v9);
}

uint64_t sub_C90F4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 80) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return _swift_task_switch(sub_CC058, 0, 0);
  }

  else
  {
    v11 = *(v2 + 64);
    v12 = *(v2 + 40);

    v13 = *(v10 + 8);

    return v13();
  }
}

uint64_t sub_C9320(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_104FF0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_104D60();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_C943C, 0, 0);
}

uint64_t sub_C943C()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider window prompt producing cancel output", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[5];

  sub_104D40();
  sub_104FE0();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_2B050;
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[2];

  return sub_19708(v10, v8, v9);
}

uint64_t sub_C95AC(uint64_t a1)
{
  v2 = sub_105E80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v7 = sub_106D20();
  sub_135C4(v7, qword_13A3A0);
  v8 = sub_106D10();
  v9 = sub_106FC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "SearchAlarm.ResultSetProvider Window prompt parsing nlv3 ActionForInput", v10, 2u);
  }

  (*(v3 + 16))(v6, a1, v2);
  v11 = type metadata accessor for AlarmNLIntent();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_B3800(v6);
  if (sub_B372C() == 3)
  {
    sub_104E60();
  }

  else
  {
    sub_104E50();
  }
}

uint64_t sub_C9784(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_25E4(&unk_137460, &unk_108C60) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_105E80();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_C987C, 0, 0);
}

uint64_t sub_C987C()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider Window prompt parsing nlv3 window action", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];

  (*(v6 + 16))(v5, v8, v7);
  v9 = type metadata accessor for AlarmNLIntent();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_B3800(v5);
  v12 = sub_B372C();
  if ((v12 - 1) < 2)
  {
    v13 = v0[4];
    v14 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_9:
    v15 = *v14;
    v16 = sub_1050D0();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v13, v15, v16);
    v18 = 0;
    goto LABEL_11;
  }

  if (!v12)
  {
    v13 = v0[4];
    v14 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_9;
  }

  v16 = sub_1050D0();
  v17 = *(v16 - 8);
  v18 = 1;
LABEL_11:
  v19 = v0[7];
  v20 = v0[2];
  (*(v17 + 56))(v0[4], v18, 1, v16);
  sub_105330();

  v21 = v0[1];

  return v21();
}

uint64_t sub_C9B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_56FA4;

  return sub_CAC34(a2, a3);
}

uint64_t sub_C9BC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_104D60() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1051E0();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_106D20();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_106300();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v14 = sub_106320();
  v3[15] = v14;
  v15 = *(v14 - 8);
  v3[16] = v15;
  v16 = *(v15 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_C9DC8, 0, 0);
}

uint64_t sub_C9DC8()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(v0[9], qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider makeFinalWindowFlow", v4, 2u);
  }

  v5 = v0[4];

  v6 = *(v5 + 56);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v13 = *(v5 + 56);
    }

    if (sub_107270() == 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_7:
    v7 = sub_106D10();
    v8 = sub_106FC0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "SearchAlarm.ResultSetProvider Bypassing windowing flow for single item presentation", v9, 2u);
    }

    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_CA098;
    v11 = v0[4];

    return sub_C2EE0();
  }

  v14 = v0[17];
  v15 = v0[11];
  v16 = v0[9];
  v17 = v0[10];
  (*(v0[13] + 104))(v0[14], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[12]);
  (*(v17 + 16))(v15, v1, v16);
  mach_absolute_time();
  sub_106330();
  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_CA244;
  v19 = v0[3];
  v20 = v0[4];
  v21 = v0[2];

  return sub_CAC34(v21, v19);
}

uint64_t sub_CA098(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;

  v7 = v4[17];
  v8 = v4[14];
  v9 = v4[11];
  v10 = v4[8];
  v11 = v4[5];

  v13 = *(v6 + 8);
  if (!v1)
  {
    v12 = a1;
  }

  return v13(v12);
}

uint64_t sub_CA244(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_CA6A0;
  }

  else
  {
    *(v4 + 168) = a1;
    v7 = sub_CA36C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_CA36C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  sub_104CF0();
  *(swift_task_alloc() + 16) = v3;
  sub_1051B0();

  v4 = async function pointer to PatternExecutionResult.generateFlow(manifest:measure:)[1];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_CA464;
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[8];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v8, v7);
}

uint64_t sub_CA464(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 184) = a1;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_CA5DC, 0, 0);
}

uint64_t sub_CA5DC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_CA6A0()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_CA75C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E4(&qword_1375A8, &qword_10AA90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  sub_BD4A4(a2, &v9 - v5);
  v7 = sub_104FF0();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return sub_1051C0();
}

uint64_t sub_CA82C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_25E4(&qword_13A538, &qword_10AD78) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_106000();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_CA930, 0, 0);
}

uint64_t sub_CA930()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_105FC0();
  sub_105FB0();
  sub_105FA0();

  sub_106790();

  sub_105FF0();
  v5 = sub_105FE0();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v7 = sub_106D20();
  sub_135C4(v7, qword_13A3A0);
  v8 = sub_106D10();
  v9 = sub_106FC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v5 & 1;
    _os_log_impl(&dword_0, v8, v9, "[ResultSetProvider.makeWindowingConfiguration] Using windowing configuration = %{BOOL}d", v10, 8u);
  }

  if (v5)
  {
    v11 = v0[5];
    v12 = v0[3];
    v0[2] = v0[4];
    sub_25E4(&qword_1387B8, &qword_1094D8);
    _s17ResultSetProviderCMa();
    sub_CBFA8(&qword_13A548, v13, _s17ResultSetProviderCMa);
    sub_1049E0();
    sub_105190();
    v14 = sub_25E4(&qword_13A540, &qword_10AD80);
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = v0[3];
    v16 = sub_25E4(&qword_13A540, &qword_10AD80);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_CAC34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  SuccessMultiParameters = type metadata accessor for SearchQuerySuccessMultiParameters(0);
  v3[5] = SuccessMultiParameters;
  v5 = *(*(SuccessMultiParameters - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_104670();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_CAD28, 0, 0);
}

uint64_t sub_CAD28()
{
  v54 = v0;
  v1 = *(v0 + 24);
  v53 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_45:
    v2 = sub_107270();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = *(v0 + 24) + 32;
    do
    {
      if (v4)
      {
        v11 = v52[3];
        v7 = sub_1071C0();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_44;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v0 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v9 = [v7 sleepAlarmAttribute];
      if (v9)
      {
      }

      else
      {
        sub_107200();
        v10 = *(v53 + 16);
        sub_107230();
        sub_107240();
        v1 = &v53;
        sub_107210();
      }

      ++v3;
    }

    while (v0 != v2);
    v0 = v52;
    v12 = v53;
    v53 = _swiftEmptyArrayStorage;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

  v12 = _swiftEmptyArrayStorage;
  v53 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_46:
    v51 = sub_107270();
    goto LABEL_19;
  }

LABEL_17:
  if ((v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v51 = *(v12 + 16);
LABEL_19:
  v13 = 0;
  v14 = (*(v0 + 64) + 8);
  v0 = _swiftEmptyArrayStorage;
  while (v51 != v13)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_1071C0();
    }

    else
    {
      if (v13 >= *(v12 + 16))
      {
        goto LABEL_42;
      }

      v15 = *(v12 + 8 * v13 + 32);
    }

    v1 = v15;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v17 = v52[9];
    v18 = v52[7];
    sub_106210();
    v19 = sub_75DD4(0, v17, 0);

    (*v14)(v17, v18);
    ++v13;
    if (v19)
    {
      sub_106EC0();
      if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v53 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v20 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        sub_106F10();
      }

      v1 = &v53;
      sub_106F20();
      v0 = v53;
      v13 = v16;
    }
  }

  if (v0 >> 62)
  {
    sub_107270();
  }

  v49 = v0;
  v21 = v52[4];
  v22 = sub_C1D80();
  v52[10] = v22;
  v23 = qword_136D88;

  if (v23 != -1)
  {
    swift_once();
  }

  v25 = v52[5];
  v24 = v52[6];
  v26 = v52[2];
  v27 = sub_1052A0();
  v28 = sub_105280();
  v29 = sub_1052A0();
  v30 = sub_105290();
  LOBYTE(v26) = sub_105250();
  v31 = sub_106160();
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  v48 = v25[5];
  *(v24 + v48) = 0;
  *(v24 + v25[6]) = 1;
  v32 = v24 + v25[7];
  *v32 = 0;
  *(v32 + 8) = 1;
  *(v24 + v25[8]) = (v27 & 1) == 0;
  *(v24 + v25[9]) = v28 & 1;
  *(v24 + v25[10]) = v29 & 1;
  *(v24 + v25[11]) = v30 & 1;
  *(v24 + v25[12]) = v26 & 1;
  *(v24 + v25[13]) = v49;
  v33 = v24 + v25[14];
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v25[15];
  *(v24 + v34) = 0;
  v35 = v24 + v25[16];
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v24 + v25[17];
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_106100();
  v37 = qword_136E48;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = v52[4];
  v39 = v52[2];

  *(v24 + v48) = sub_1060F0();
  *v36 = sub_105270();
  *(v36 + 8) = 0;
  *(v24 + v34) = v22;
  v40 = *(v38 + 56);
  if (v40 >> 62)
  {
    if (v40 < 0)
    {
      v47 = *(v38 + 56);
    }

    v41 = sub_107270();
  }

  else
  {
    v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
  }

  v42 = v52[6];

  *v35 = v41;
  *(v35 + 8) = 0;
  v43 = sub_A7FA0();
  v52[11] = v43;
  v44 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v50 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v45 = swift_task_alloc();
  v52[12] = v45;
  *v45 = v52;
  v45[1] = sub_CB2B8;

  return v50(0xD000000000000018, 0x800000000010E0A0, v43);
}

uint64_t sub_CB2B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v8 = sub_CB4A8;
  }

  else
  {
    *(v4 + 112) = a1;
    v8 = sub_CB404;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_CB404()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_CBF48(v0[6], type metadata accessor for SearchQuerySuccessMultiParameters);

  v3 = v0[1];
  v4 = v0[14];

  return v3(v4);
}

uint64_t sub_CB4A8()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_CBF48(v0[6], type metadata accessor for SearchQuerySuccessMultiParameters);

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_CB548()
{
  sub_2738((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_CB5C8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);

  return v1;
}

uint64_t sub_CB5FC()
{
  v1 = sub_104B20();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_CB65C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_57B60;

  return sub_C2398();
}

uint64_t sub_CB6EC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_57B60;

  return sub_C2EE0();
}

uint64_t sub_CB77C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_57B60;

  return sub_C603C();
}

uint64_t sub_CB80C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_CA82C(a1);
}

uint64_t sub_CB8A8(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_57B60;

  return sub_C9BC4(a1, v5);
}

uint64_t sub_CB950(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_57B60;

  return sub_C86D8(a1, v5);
}

uint64_t sub_CBA60()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  v5 = sub_106D10();
  v6 = sub_106FA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Alarms #response enabled – allowing ResultSet output to handle rendering", v7, 2u);
  }

  v8 = *(v0 + 16);

  sub_104DA0();
  sub_104D90();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_CBBFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CE64;

  return sub_CBA40(a1);
}

uint64_t sub_CBC94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CE64;

  return sub_D6B68(a1);
}

uint64_t sub_CBD58()
{
  v1 = sub_1052B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_CBE30()
{
  v2 = *(sub_1052B0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_57838;

  return sub_C9B18(v4, v0 + v3, v5);
}

uint64_t sub_CBF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_CBFA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_CC004()
{
  result = qword_13A570;
  if (!qword_13A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A570);
  }

  return result;
}

uint64_t sub_CC08C(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v7 = sub_1062B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *a2, v7);
  v12 = sub_1062A0();
  v14 = v13;
  result = (*(v8 + 8))(v11, v7);
  *a3 = v12;
  *a4 = v14;
  return result;
}

uint64_t sub_CC198()
{
  if (qword_136E38 != -1)
  {
    swift_once();
  }

  v0 = qword_136E40;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = sub_106770();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  result = sub_106760();
  qword_13B980 = result;
  return result;
}

uint64_t type metadata accessor for DeleteAlarmCATs_Async()
{
  result = qword_13A578;
  if (!qword_13A578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CC320(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for CreateAlarmCATs_Async()
{
  result = qword_13A5C8;
  if (!qword_13A5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CC53C(uint64_t a1, uint64_t a2)
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

uint64_t sub_CC6CC()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A618);
  sub_135C4(v0, qword_13A618);
  return sub_106A80();
}

uint64_t sub_CC72C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_106630();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CC7EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_106630();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s21ConfirmIntentStrategyVMa_0()
{
  result = qword_13A6A0;
  if (!qword_13A6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_CC8DC()
{
  result = sub_1B2C0();
  if (v1 <= 0x3F)
  {
    result = sub_106630();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_CC960()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A630);
  sub_135C4(v0, qword_13A630);
  return sub_106A80();
}

uint64_t sub_CC9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - v12;
  if (qword_136E58 != -1)
  {
    swift_once();
  }

  v14 = sub_106D20();
  sub_135C4(v14, qword_13A630);
  v15 = sub_106D10();
  v16 = sub_106FC0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "DismissAlarm.ConfirmIntentStrategy.actionForInput() called.", v17, 2u);
  }

  v18 = *(_s21ConfirmIntentStrategyVMa_0() + 20);
  v19 = sub_106630();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v13, v3 + v18, v19);
  (*(v20 + 56))(v13, 0, 1, v19);
  v21 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v22 = sub_106450();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v9, v21, v22);
  (*(v23 + 56))(v9, 0, 1, v22);
  sub_42240(a1, v13, 0, v9, a2);
  sub_16F70(v9, &unk_1374C0, &unk_1087B0);
  return sub_16F70(v13, &qword_1374F0, &qword_1080F0);
}

uint64_t sub_CCC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_25E4(&unk_137460, &unk_108C60) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1050D0();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_CCD80, 0, 0);
}

uint64_t sub_CCD80()
{
  if (qword_136E58 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A630);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In DismissAlarm.ConfirmIntentStrategy.parseConfirmationResponse().", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  sub_1174C(v10, v5);
  (*(v6 + 16))(v7, v5, v8);
  (*(v6 + 56))(v7, 0, 1, v8);
  sub_25E4(&qword_1376C8, &qword_10B020);
  sub_105170();
  sub_106910();
  sub_105080();
  (*(v6 + 8))(v5, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_CCF68(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_25E4(&qword_1375A8, &qword_10AA90) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_105030();
  v2[14] = v5;
  v6 = *(v5 - 8);
  v2[15] = v6;
  v7 = *(v6 + 64) + 15;
  v2[16] = swift_task_alloc();
  v8 = *(*(sub_104D60() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v9 = sub_1051E0();
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v12 = sub_106D20();
  v2[21] = v12;
  v13 = *(v12 - 8);
  v2[22] = v13;
  v14 = *(v13 + 64) + 15;
  v2[23] = swift_task_alloc();
  v15 = sub_106300();
  v2[24] = v15;
  v16 = *(v15 - 8);
  v2[25] = v16;
  v17 = *(v16 + 64) + 15;
  v2[26] = swift_task_alloc();
  v18 = sub_106320();
  v2[27] = v18;
  v19 = *(v18 - 8);
  v2[28] = v19;
  v20 = *(v19 + 64) + 15;
  v2[29] = swift_task_alloc();
  v21 = sub_106370();
  v2[30] = v21;
  v22 = *(v21 - 8);
  v2[31] = v22;
  v23 = *(v22 + 64) + 15;
  v2[32] = swift_task_alloc();
  v24 = sub_104FF0();
  v2[33] = v24;
  v25 = *(v24 - 8);
  v2[34] = v25;
  v26 = *(v25 + 64) + 15;
  v2[35] = swift_task_alloc();
  v27 = sub_106960();
  v2[36] = v27;
  v28 = *(v27 - 8);
  v2[37] = v28;
  v29 = *(v28 + 64) + 15;
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_CD36C, 0, 0);
}

uint64_t sub_CD36C()
{
  v1 = v0[38];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  (*(v0[37] + 104))(v1, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v0[36]);
  sub_BD9B4(v1, v2);
  sub_106360();
  LOBYTE(v1) = sub_106350();
  (*(v4 + 8))(v3, v5);
  if (v1)
  {
    (*(v0[25] + 104))(v0[26], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[24]);
    if (qword_136E58 != -1)
    {
      swift_once();
    }

    v6 = v0[29];
    v7 = v0[26];
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = sub_135C4(v10, qword_13A630);
    (*(v9 + 16))(v8, v11, v10);
    mach_absolute_time();
    sub_106330();
    if (qword_136C90 != -1)
    {
      swift_once();
    }

    v12 = v0[8];
    v13 = *(_s21ConfirmIntentStrategyVMa_0() + 20);
    sub_106630();
    v14 = sub_106510();
    v15 = sub_106510();
    v16 = swift_task_alloc();
    v0[39] = v16;
    *(v16 + 16) = v12;
    v17 = swift_task_alloc();
    v0[40] = v17;
    *v17 = v0;
    v17[1] = sub_CDA18;

    return sub_D257C(v14 & 1, (v15 & 1) == 0, sub_CF1B4, v16);
  }

  else
  {
    if (qword_136C88 != -1)
    {
      swift_once();
    }

    v19 = v0[8];
    v20 = *(_s21ConfirmIntentStrategyVMa_0() + 20);
    sub_106630();
    v53 = sub_106510();
    v52 = sub_106510();
    v21 = sub_106520();
    if (v21 && (v22 = v21, sub_106C50(), v24 = v23, v22, v24))
    {
      v25 = v0[13];
      sub_106E50();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v0[13];
    v28 = sub_106160();
    v29 = *(v28 - 8);
    v30 = *(v29 + 56);
    v30(v27, v26, 1, v28);
    v31 = sub_106520();
    if (v31 && (v32 = v31, sub_106C60(), v34 = v33, v32, v34))
    {
      v35 = v0[12];
      sub_106E50();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = v0[13];
    v38 = v0[11];
    v30(v0[12], v36, 1, v28);
    sub_25E4(&qword_137880, &unk_108290);
    v39 = swift_allocObject();
    v0[45] = v39;
    *(v39 + 16) = xmmword_108210;
    *(v39 + 32) = 0x6E6F737265507369;
    *(v39 + 40) = 0xEA00000000006C61;
    *(v39 + 48) = (v53 & 1) == 0;
    *(v39 + 72) = &type metadata for Bool;
    *(v39 + 80) = 0x6E756D6D6F437369;
    *(v39 + 88) = 0xEA00000000006C61;
    *(v39 + 96) = v52 & 1;
    *(v39 + 120) = &type metadata for Bool;
    *(v39 + 128) = 0x614E656369766564;
    *(v39 + 136) = 0xEA0000000000656DLL;
    sub_826B8(v37, v38);
    v40 = *(v29 + 48);
    v41 = v40(v38, 1, v28);
    v42 = v0[11];
    if (v41 == 1)
    {
      sub_16F70(v0[11], &qword_137598, &unk_107EB0);
      *(v39 + 144) = 0u;
      *(v39 + 160) = 0u;
    }

    else
    {
      *(v39 + 168) = v28;
      v43 = sub_1A924((v39 + 144));
      (*(v29 + 32))(v43, v42, v28);
    }

    v44 = v0[12];
    v45 = v0[10];
    *(v39 + 176) = 0x656D614E6D6F6F72;
    *(v39 + 184) = 0xE800000000000000;
    sub_826B8(v44, v45);
    v46 = v40(v45, 1, v28);
    v47 = v0[10];
    if (v46 == 1)
    {
      sub_16F70(v0[10], &qword_137598, &unk_107EB0);
      *(v39 + 192) = 0u;
      *(v39 + 208) = 0u;
    }

    else
    {
      *(v39 + 216) = v28;
      v48 = sub_1A924((v39 + 192));
      (*(v29 + 32))(v48, v47, v28);
    }

    v49 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
    v54 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
    v50 = swift_task_alloc();
    v0[46] = v50;
    *v50 = v0;
    v50[1] = sub_CDF60;
    v51 = v0[16];

    return v54(v51, 0xD000000000000025, 0x800000000010E280, v39);
  }
}

uint64_t sub_CDA18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *(*v2 + 312);
  v7 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v8 = sub_CE814;
  }

  else
  {
    *(v4 + 336) = a1;
    v8 = sub_CDB64;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_CDB64()
{
  v1 = v0[35];
  v2 = v0[20];
  v3 = v0[17];
  sub_104D00();
  *(swift_task_alloc() + 16) = v1;
  sub_1051B0();

  v4 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_CDC60;
  v6 = v0[42];
  v7 = v0[29];
  v8 = v0[20];
  v9 = v0[7];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v9, v8, v7);
}

uint64_t sub_CDC60()
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 352) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_CE990;
  }

  else
  {
    v7 = sub_CDDF0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_CDDF0()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  (*(v0[28] + 8))(v0[29], v0[27]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[38];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[23];
  v9 = v0[20];
  v10 = v0[16];
  v11 = v0[17];
  v14 = v0[13];
  v15 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  (*(v0[34] + 8))(v0[35], v0[33]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_CDF60()
{
  v2 = (*v1)[46];
  v3 = (*v1)[45];
  v4 = *v1;
  v4[47] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_CE680, 0, 0);
  }

  else
  {
    v5 = v4[13];
    sub_16F70(v4[12], &qword_137598, &unk_107EB0);
    sub_16F70(v5, &qword_137598, &unk_107EB0);
    v6 = swift_task_alloc();
    v4[48] = v6;
    *v6 = v4;
    v6[1] = sub_CE144;
    v7 = v4[38];

    return sub_863DC(v7);
  }
}

uint64_t sub_CE144(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v7 = sub_CE504;
  }

  else
  {
    *(v4 + 400) = a1;
    v7 = sub_CE26C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_CE26C()
{
  v1 = *(v0 + 280);
  v27 = *(v0 + 288);
  v29 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v19 = *(v0 + 128);
  v20 = *(v0 + 400);
  v21 = *(v0 + 120);
  v23 = *(v0 + 112);
  v25 = *(v0 + 296);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = v5[4];
  sub_1A8E0(v5, v5[3]);
  sub_104CC0();
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v8 = sub_105430();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6[3] = v8;
  v6[4] = &protocol witness table for AceOutput;
  sub_1A924(v6);
  sub_104EE0();

  sub_16F70(v0 + 16, &qword_1375B0, &qword_107EC0);
  sub_16F70(v4, &qword_1375A8, &qword_10AA90);
  (*(v21 + 8))(v19, v23);
  (*(v25 + 8))(v29, v27);
  v9 = *(v0 + 304);
  v10 = *(v0 + 256);
  v11 = *(v0 + 232);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v22 = *(v0 + 104);
  v24 = *(v0 + 96);
  v26 = *(v0 + 88);
  v28 = *(v0 + 80);
  v30 = *(v0 + 72);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_CE504()
{
  v1 = v0[37];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v19 = v0[49];
  v2 = v0[35];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[23];
  v11 = v0[20];
  v12 = v0[17];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  (*(v1 + 8))(v0[38], v0[36]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_CE680()
{
  v1 = v0[37];
  v2 = v0[13];
  sub_16F70(v0[12], &qword_137598, &unk_107EB0);
  sub_16F70(v2, &qword_137598, &unk_107EB0);
  v20 = v0[47];
  v3 = v0[35];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[23];
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v19 = v0[9];
  (*(v1 + 8))(v0[38], v0[36]);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_CE814()
{
  v1 = v0[37];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v19 = v0[41];
  v2 = v0[35];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[23];
  v11 = v0[20];
  v12 = v0[17];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  (*(v1 + 8))(v0[38], v0[36]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_CE990()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v18 = v0[44];
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[20];
  v11 = v0[17];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[9];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_CEB08(uint64_t a1)
{
  v2 = sub_25E4(&qword_137598, &unk_107EB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = *(_s21ConfirmIntentStrategyVMa_0() + 20);
  sub_106630();
  v10 = sub_106520();
  if (v10 && (v11 = v10, sub_106C50(), v13 = v12, v11, v13))
  {
    sub_106E50();

    v14 = sub_106160();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  }

  else
  {
    v15 = sub_106160();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  sub_1A814(v8, a1);
  v16 = sub_106520();
  if (v16 && (v17 = v16, sub_106C60(), v19 = v18, v17, v19))
  {
    sub_106E50();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_106160();
  (*(*(v21 - 8) + 56))(v6, v20, 1, v21);
  v22 = type metadata accessor for StopConfirmationParameters(0);
  return sub_1A814(v6, a1 + *(v22 + 28));
}

uint64_t sub_CED50(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E4(&qword_1375A8, &qword_10AA90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  sub_1051D0();
  v7 = sub_104FF0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_1051C0();
}

uint64_t sub_CEE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE64;

  return sub_CCC84(a1, a2, a3);
}

uint64_t sub_CEF0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_CEFB4;

  return sub_CCF68(a1);
}

uint64_t sub_CEFB4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_CF0E8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_CF0E8()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

void *sub_CF1C4()
{
  v1 = v0;
  v2 = sub_106160();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 period];
  v8 = _swiftEmptyArrayStorage;
  if (v7 <= 2)
  {
    if (v7 != (&dword_0 + 1))
    {
      if (v7 != (&dword_0 + 2))
      {
        goto LABEL_20;
      }

      v9 = 0xE90000000000006ELL;
      v8 = sub_AD590(0, 1, 1, _swiftEmptyArrayStorage);
      v11 = *(v8 + 2);
      v10 = *(v8 + 3);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v8 = sub_AD590((v10 > 1), v11 + 1, 1, v8);
      }

      v13 = 0x6F6F6E7265746661;
      goto LABEL_19;
    }

    v8 = sub_AD590(0, 1, 1, _swiftEmptyArrayStorage);
    v11 = *(v8 + 2);
    v15 = *(v8 + 3);
    v12 = v11 + 1;
    if (v11 >= v15 >> 1)
    {
      v8 = sub_AD590((v15 > 1), v11 + 1, 1, v8);
    }

    v9 = 0xE700000000000000;
    v16 = 1852993389;
    goto LABEL_18;
  }

  if (v7 == (&dword_0 + 3))
  {
    v8 = sub_AD590(0, 1, 1, _swiftEmptyArrayStorage);
    v11 = *(v8 + 2);
    v17 = *(v8 + 3);
    v12 = v11 + 1;
    if (v11 >= v17 >> 1)
    {
      v8 = sub_AD590((v17 > 1), v11 + 1, 1, v8);
    }

    v9 = 0xE700000000000000;
    v16 = 1852143205;
LABEL_18:
    v13 = v16 | 0x676E6900000000;
    goto LABEL_19;
  }

  if (v7 != &dword_8)
  {
    goto LABEL_20;
  }

  v8 = sub_AD590(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = *(v8 + 2);
  v14 = *(v8 + 3);
  v12 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v8 = sub_AD590((v14 > 1), v11 + 1, 1, v8);
  }

  v9 = 0xE800000000000000;
  v13 = 0x776F72726F6D6F74;
LABEL_19:
  *(v8 + 2) = v12;
  v18 = &v8[16 * v11];
  *(v18 + 4) = v13;
  *(v18 + 5) = v9;
LABEL_20:
  if (sub_1CE68())
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_AD590(0, *(v8 + 2) + 1, 1, v8);
    }

    v20 = *(v8 + 2);
    v19 = *(v8 + 3);
    if (v20 >= v19 >> 1)
    {
      v8 = sub_AD590((v19 > 1), v20 + 1, 1, v8);
    }

    *(v8 + 2) = v20 + 1;
    v21 = &v8[16 * v20];
    *(v21 + 4) = 0xD000000000000011;
    *(v21 + 5) = 0x800000000010C690;
  }

  v22 = [v1 label];
  if (v22)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_AD590(0, *(v8 + 2) + 1, 1, v8);
    }

    v24 = *(v8 + 2);
    v23 = *(v8 + 3);
    if (v24 >= v23 >> 1)
    {
      v8 = sub_AD590((v23 > 1), v24 + 1, 1, v8);
    }

    *(v8 + 2) = v24 + 1;
    v25 = &v8[16 * v24];
    *(v25 + 4) = 0xD000000000000012;
    *(v25 + 5) = 0x800000000010C670;
  }

  v26 = [v1 alarmReferenceType];
  if (v26 < 2)
  {
LABEL_46:
    v34 = [v1 includeSleepAlarm];
    sub_1F7B8();
    v35.super.super.isa = sub_107090(1).super.super.isa;
    isa = v35.super.super.isa;
    if (v34)
    {
      v37 = sub_1070A0();

      if (v37)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_AD590(0, *(v8 + 2) + 1, 1, v8);
        }

        v39 = *(v8 + 2);
        v38 = *(v8 + 3);
        if (v39 >= v38 >> 1)
        {
          v8 = sub_AD590((v38 > 1), v39 + 1, 1, v8);
        }

        *(v8 + 2) = v39 + 1;
        v40 = &v8[16 * v39];
        *(v40 + 4) = 0x7065656C73;
        *(v40 + 5) = 0xE500000000000000;
      }
    }

    else
    {
    }

    v41 = [v1 alarmSearchStatus];
    if (v41 == &dword_0 + 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_AD590(0, *(v8 + 2) + 1, 1, v8);
      }

      v43 = *(v8 + 2);
      v47 = *(v8 + 3);
      v44 = v43 + 1;
      if (v43 >= v47 >> 1)
      {
        v8 = sub_AD590((v47 > 1), v43 + 1, 1, v8);
      }

      v45 = 0xE800000000000000;
      v46 = 0x64656C6261736964;
    }

    else
    {
      if (v41 != &dword_0 + 1)
      {
        v44 = *(v8 + 2);
        if (!v44)
        {

          return _swiftEmptyArrayStorage;
        }

LABEL_68:
        v57 = _swiftEmptyArrayStorage;
        sub_833E4(0, v44, 0);
        v49 = v57;
        v50 = (v8 + 40);
        do
        {
          v51 = *(v50 - 1);
          v52 = *v50;

          sub_106E50();

          v57 = v49;
          v54 = v49[2];
          v53 = v49[3];
          if (v54 >= v53 >> 1)
          {
            sub_833E4(v53 > 1, v54 + 1, 1);
            v49 = v57;
          }

          v49[2] = v54 + 1;
          (*(v3 + 32))(v49 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v54, v6, v2);
          v50 += 2;
          --v44;
        }

        while (v44);

        return v49;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_AD590(0, *(v8 + 2) + 1, 1, v8);
      }

      v43 = *(v8 + 2);
      v42 = *(v8 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v8 = sub_AD590((v42 > 1), v43 + 1, 1, v8);
      }

      v45 = 0xE700000000000000;
      v46 = 0x64656C62616E65;
    }

    *(v8 + 2) = v44;
    v48 = &v8[16 * v43];
    *(v48 + 4) = v46;
    *(v48 + 5) = v45;
    goto LABEL_68;
  }

  if (v26 == &dword_0 + 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_AD590(0, *(v8 + 2) + 1, 1, v8);
    }

    v28 = *(v8 + 2);
    v27 = *(v8 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v8 = sub_AD590((v27 > 1), v28 + 1, 1, v8);
    }

    v30 = 0xE300000000000000;
    v31 = 7105633;
LABEL_45:
    *(v8 + 2) = v29;
    v33 = &v8[16 * v28];
    *(v33 + 4) = v31;
    *(v33 + 5) = v30;
    goto LABEL_46;
  }

  if (v26 == &dword_0 + 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_AD590(0, *(v8 + 2) + 1, 1, v8);
    }

    v28 = *(v8 + 2);
    v32 = *(v8 + 3);
    v29 = v28 + 1;
    if (v28 >= v32 >> 1)
    {
      v8 = sub_AD590((v32 > 1), v28 + 1, 1, v8);
    }

    v30 = 0xE400000000000000;
    v31 = 1954047342;
    goto LABEL_45;
  }

  v57 = v26;
  result = sub_1073A0();
  __break(1u);
  return result;
}

uint64_t sub_CF984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a2;
  v118 = a1;
  v124 = a4;
  v5 = sub_1047B0();
  v106 = *(v5 - 8);
  v107 = v5;
  v6 = *(v106 + 64);
  __chkstk_darwin(v5);
  v104 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_104740();
  v116 = *(v8 - 8);
  v117 = v8;
  v9 = *(v116 + 64);
  __chkstk_darwin(v8);
  v115 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_104750();
  v114 = *(v120 - 8);
  v11 = *(v114 + 64);
  __chkstk_darwin(v120);
  v113 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_104710();
  v112 = *(v119 - 8);
  v13 = *(v112 + 64);
  __chkstk_darwin(v119);
  v111 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_25E4(&qword_137518, &qword_107E28);
  v15 = *(*(v102 - 8) + 64);
  v16 = __chkstk_darwin(v102);
  v101 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v105 = &v99 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v99 - v21;
  __chkstk_darwin(v20);
  v110 = &v99 - v23;
  v24 = sub_104670();
  v123 = *(v24 - 8);
  v25 = *(v123 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v108 = &v99 - v29;
  v30 = sub_25E4(&qword_137500, &qword_107E10);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v37 = &v99 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v99 - v39;
  __chkstk_darwin(v38);
  v42 = &v99 - v41;
  v122 = a3;
  v43 = [a3 dateTime];
  v109 = v22;
  v103 = v28;
  if (v43)
  {
    v44 = v43;
    sub_104570();

    v45 = sub_1045E0();
    (*(*(v45 - 8) + 56))(v40, 0, 1, v45);
  }

  else
  {
    v45 = sub_1045E0();
    (*(*(v45 - 8) + 56))(v40, 1, 1, v45);
  }

  sub_7C278(v40, v42, &qword_137500, &qword_107E10);
  sub_1045E0();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  if (v47(v42, 1, v45))
  {
    goto LABEL_5;
  }

  v100 = sub_104580();
  v49 = v48;
  sub_16F70(v42, &qword_137500, &qword_107E10);
  if (v49)
  {
    return (*(v123 + 56))(v124, 1, 1, v24);
  }

  v51 = [v122 dateTime];
  if (v51)
  {
    v52 = v51;
    sub_104570();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  (*(v46 + 56))(v34, v53, 1, v45);
  sub_7C278(v34, v37, &qword_137500, &qword_107E10);
  if (v47(v37, 1, v45))
  {
    v42 = v37;
LABEL_5:
    sub_16F70(v42, &qword_137500, &qword_107E10);
    return (*(v123 + 56))(v124, 1, 1, v24);
  }

  v54 = sub_1045A0();
  v56 = v55;
  sub_16F70(v37, &qword_137500, &qword_107E10);
  if (v56)
  {
    return (*(v123 + 56))(v124, 1, 1, v24);
  }

  v57 = v54;
  v59 = v111;
  v58 = v112;
  (*(v112 + 104))(v111, enum case for Calendar.MatchingPolicy.nextTime(_:), v119);
  v60 = v113;
  v61 = v114;
  (*(v114 + 104))(v113, enum case for Calendar.RepeatedTimePolicy.first(_:), v120);
  v63 = v115;
  v62 = v116;
  v64 = v117;
  (*(v116 + 104))(v115, enum case for Calendar.SearchDirection.forward(_:), v117);
  v65 = v110;
  v99 = v57;
  v66 = v118;
  sub_104760();
  (*(v62 + 8))(v63, v64);
  (*(v61 + 8))(v60, v120);
  (*(v58 + 8))(v59, v119);
  v67 = v123;
  v68 = v24;
  if ((*(v123 + 48))(v65, 1, v24) == 1)
  {
    sub_16F70(v65, &qword_137518, &qword_107E28);
    if (qword_136E60 != -1)
    {
      swift_once();
    }

    v69 = sub_106D20();
    sub_135C4(v69, qword_13A6D8);
    v70 = v103;
    (*(v67 + 16))(v103, v121, v24);
    v71 = sub_106D10();
    v72 = sub_106FB0();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v125[0] = v74;
      *v73 = 136315138;
      sub_D1E40(&qword_137548);
      v75 = sub_107340();
      v77 = v76;
      (*(v67 + 8))(v70, v68);
      v78 = sub_722E8(v75, v77, v125);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_0, v71, v72, "NextFiringDate: Unable to offset alarmBaseDate from now: %s", v73, 0xCu);
      sub_2738(v74);
    }

    else
    {

      (*(v67 + 8))(v70, v24);
    }

    return (*(v67 + 56))(v124, 1, 1, v68);
  }

  else
  {
    v79 = v108;
    (*(v67 + 32))(v108, v65, v24);
    v80 = [v122 repeatSchedule];
    if (v80)
    {
      v81 = v80;
      sub_1069A0();
      v82 = sub_106EE0();
    }

    else
    {
      v82 = 0;
    }

    v83 = v109;
    sub_D0D24(v66, v121, v100, v99, v82);

    v85 = v106;
    v84 = v107;
    v86 = v104;
    (*(v106 + 104))(v104, enum case for Calendar.Component.day(_:), v107);
    sub_104780();
    (*(v85 + 8))(v86, v84);
    if (qword_136E60 != -1)
    {
      swift_once();
    }

    v87 = sub_106D20();
    sub_135C4(v87, qword_13A6D8);
    v88 = v105;
    sub_D1DD0(v83, v105);
    v89 = sub_106D10();
    v90 = sub_106FC0();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v125[0] = v92;
      *v91 = 136315138;
      sub_D1DD0(v88, v101);
      v93 = sub_106E30();
      v94 = v88;
      v95 = v93;
      v97 = v96;
      sub_16F70(v94, &qword_137518, &qword_107E28);
      v98 = sub_722E8(v95, v97, v125);

      *(v91 + 4) = v98;
      _os_log_impl(&dword_0, v89, v90, "NextFiringDate: %s", v91, 0xCu);
      sub_2738(v92);
    }

    else
    {

      sub_16F70(v88, &qword_137518, &qword_107E28);
    }

    (*(v67 + 8))(v79, v68);
    return sub_7C278(v83, v124, &qword_137518, &qword_107E28);
  }
}

uint64_t sub_D05F8()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A6D8);
  sub_135C4(v0, qword_13A6D8);
  return sub_106A80();
}

uint64_t sub_D0644(id *a1, uint64_t *a2)
{
  v3 = [*a1 repeatSchedule];
  if (v3 <= 2)
  {
    if (!v3)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v12 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v12 >> 1)
      {
        v9 = 1;
        goto LABEL_37;
      }

      result = sub_AD6C4((v12 > 1), v7 + 1, 1, v4);
      v9 = 1;
      v4 = result;
      goto LABEL_45;
    }

    if (v3 == &dword_0 + 1)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v10 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v10 >> 1)
      {
        v9 = 2;
        goto LABEL_37;
      }

      result = sub_AD6C4((v10 > 1), v7 + 1, 1, v4);
      v4 = result;
      v9 = 2;
LABEL_45:
      *a2 = v4;
      goto LABEL_37;
    }

    if (v3 == &dword_0 + 2)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v13 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v13 >> 1)
      {
        v9 = 3;
        goto LABEL_37;
      }

      result = sub_AD6C4((v13 > 1), v7 + 1, 1, v4);
      v4 = result;
      v9 = 3;
      goto LABEL_45;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == &dword_0 + 3)
      {
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v4;
        if ((result & 1) == 0)
        {
          result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
          v4 = result;
          *a2 = result;
        }

        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        v8 = v7 + 1;
        if (v7 < v6 >> 1)
        {
          v9 = 4;
LABEL_37:
          *(v4 + 16) = v8;
          *(v4 + 8 * v7 + 32) = v9;
          return result;
        }

        result = sub_AD6C4((v6 > 1), v7 + 1, 1, v4);
        v4 = result;
        v9 = 4;
      }

      else
      {
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v4;
        if ((result & 1) == 0)
        {
          result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
          v4 = result;
          *a2 = result;
        }

        v7 = *(v4 + 16);
        v14 = *(v4 + 24);
        v8 = v7 + 1;
        if (v7 < v14 >> 1)
        {
          v9 = 5;
          goto LABEL_37;
        }

        result = sub_AD6C4((v14 > 1), v7 + 1, 1, v4);
        v4 = result;
        v9 = 5;
      }

      goto LABEL_45;
    }

    if (v3 == &dword_4 + 1)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v11 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v11 >> 1)
      {
        v9 = 6;
        goto LABEL_37;
      }

      result = sub_AD6C4((v11 > 1), v7 + 1, 1, v4);
      v4 = result;
      v9 = 6;
      goto LABEL_45;
    }

    if (v3 == &dword_4 + 2)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v15 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v15 >> 1)
      {
        v9 = 7;
        goto LABEL_37;
      }

      result = sub_AD6C4((v15 > 1), v7 + 1, 1, v4);
      v4 = result;
      v9 = 7;
      goto LABEL_45;
    }
  }

  result = sub_1073A0();
  __break(1u);
  return result;
}

void sub_D0A2C(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1071C0();
      }

      else
      {
        if (v6 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_D0644(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

unint64_t sub_D0B20(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_AD6C4(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_D0BF4(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_D0BF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_D0CB4(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 16);
  if (!v3)
  {
LABEL_5:
    result = *(*a2 + 16);
    v6 = result;
LABEL_6:
    sub_D0B20(result, v6, a1);
    return v3;
  }

  result = 0;
  while (1)
  {
    v5 = *(*a2 + 32 + 8 * result);
    if (v5 >= a1)
    {
      break;
    }

    if (v3 == ++result)
    {
      goto LABEL_5;
    }
  }

  if (v5 != a1)
  {
    v3 = result;
    v6 = result;
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_D0D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v87 = a5;
  v93 = a4;
  v94 = a2;
  v92 = a1;
  v6 = sub_1047B0();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  __chkstk_darwin(v6);
  v81 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_104740();
  v9 = *(v91 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v91);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_104750();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_104710();
  v88 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25E4(&qword_137518, &qword_107E28);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v80 - v25;
  v27 = sub_104670();
  v89 = *(v27 - 8);
  v90 = v27;
  v28 = *(v89 + 64);
  v29 = __chkstk_darwin(v27);
  v86 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v85 = &v80 - v31;
  (*(v19 + 104))(v22, enum case for Calendar.MatchingPolicy.nextTime(_:), v18);
  v32 = v13;
  (*(v14 + 104))(v17, enum case for Calendar.RepeatedTimePolicy.first(_:), v13);
  v33 = v91;
  (*(v9 + 104))(v12, enum case for Calendar.SearchDirection.forward(_:), v91);
  v84 = a3;
  sub_104760();
  (*(v9 + 8))(v12, v33);
  (*(v14 + 8))(v17, v32);
  v34 = v22;
  v36 = v89;
  v35 = v90;
  (*(v19 + 8))(v34, v88);
  if ((*(v36 + 48))(v26, 1, v35) == 1)
  {
    sub_16F70(v26, &qword_137518, &qword_107E28);
    if (qword_136E60 != -1)
    {
      swift_once();
    }

    v37 = sub_106D20();
    sub_135C4(v37, qword_13A6D8);
    v38 = v86;
    (*(v36 + 16))(v86, v94, v35);
    v39 = sub_106D10();
    v40 = sub_106FB0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v95 = v42;
      *v41 = 134218498;
      *(v41 + 4) = v84;
      *(v41 + 12) = 2048;
      *(v41 + 14) = v93;
      *(v41 + 22) = 2080;
      sub_D1E40(&qword_137548);
      v43 = sub_107340();
      v45 = v44;
      (*(v36 + 8))(v38, v35);
      v46 = sub_722E8(v43, v45, &v95);

      *(v41 + 24) = v46;
      _os_log_impl(&dword_0, v39, v40, "Unable to get date using hour=%ld, minute=%ld from now of %s", v41, 0x20u);
      sub_2738(v42);
    }

    else
    {

      (*(v36 + 8))(v38, v35);
    }

    return 0;
  }

  v47 = v85;
  (*(v36 + 32))(v85, v26, v35);
  v48 = v87;
  if (v87)
  {
    if (v87 >> 62)
    {
      if (sub_107270())
      {
LABEL_9:
        v50 = v81;
        v49 = v82;
        v51 = v83;
        (*(v82 + 104))(v81, enum case for Calendar.Component.weekday(_:), v83);
        v52 = sub_1047C0();
        (*(v49 + 8))(v50, v51);
        v53 = v52 - 1;
        if (v52 == 1)
        {
          v53 = 7;
        }

        else if (__OFSUB__(v52, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        v97[0] = &_swiftEmptyArrayStorage;
        sub_D0A2C(v48, v97);
        v55 = v97[0];
        sub_D1E40(&qword_13A6F8);

        if ((sub_106DF0() & 1) == 0)
        {
LABEL_25:

          v64 = sub_D0CB4(v53, v97);
          if (v64 == -1)
          {
LABEL_32:
            if (qword_136E60 == -1)
            {
LABEL_33:
              v70 = sub_106D20();
              sub_135C4(v70, qword_13A6D8);
              v71 = sub_106D10();
              v72 = sub_106FB0();
              if (os_log_type_enabled(v71, v72))
              {
                v73 = swift_slowAlloc();
                v74 = swift_slowAlloc();
                v96 = v74;
                *v73 = 134218242;
                *(v73 + 4) = v53;
                *(v73 + 12) = 2080;
                swift_beginAccess();

                v75 = sub_106EF0();
                v77 = v76;

                v78 = sub_722E8(v75, v77, &v96);

                *(v73 + 14) = v78;
                _os_log_impl(&dword_0, v71, v72, "insert postion should NOT be -1, nowWeekday:%ld, optionsInInt:%s", v73, 0x16u);
                sub_2738(v74);
              }

              (*(v36 + 8))(v47, v35);

              return 0;
            }

LABEL_45:
            swift_once();
            goto LABEL_33;
          }

          if (!__OFADD__(v64, 1))
          {
            v65 = *(v97[0] + 16);
            if (v65)
            {
              v66 = (v64 + 1) % v65;
              if ((v66 & 0x8000000000000000) == 0)
              {
                v67 = *(v97[0] + 8 * v66 + 32);
                v68 = *(v36 + 8);
                v36 += 8;
                v68(v47, v35);

                v69 = v67 - v53;
                if (!__OFSUB__(v67, v53))
                {
                  v62 = __OFADD__(v69, 7);
                  v63 = v69 + 7;
                  if (!v62)
                  {
                    return v63 % 7;
                  }

                  goto LABEL_44;
                }

LABEL_43:
                __break(1u);
LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v56 = *(v55 + 16);
        v57 = 32;
        do
        {
          if (!v56)
          {
            goto LABEL_25;
          }

          v58 = *(v55 + v57);
          v57 += 8;
          --v56;
        }

        while (v58 != v53);

        result = sub_D0CB4(v53, v97);
        if (result == -1)
        {
          goto LABEL_32;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *(v97[0] + 16))
        {
          v59 = *(v97[0] + 8 * result + 32);
          v60 = *(v36 + 8);
          v36 += 8;
          v60(v47, v35);

          v61 = v59 - v53;
          if (!__OFSUB__(v59, v53))
          {
            v62 = __OFADD__(v61, 7);
            v63 = v61 + 7;
            if (!v62)
            {
              return v63 % 7;
            }

            __break(1u);
            goto LABEL_25;
          }

LABEL_48:
          __break(1u);
          return result;
        }

        __break(1u);
        goto LABEL_48;
      }
    }

    else if (*(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_9;
    }
  }

  sub_D1E40(&qword_13A6F8);
  v79 = sub_106DF0();
  (*(v36 + 8))(v47, v35);
  return ~v79 & 1;
}

uint64_t sub_D17AC(uint64_t a1)
{
  v50 = a1;
  v1 = sub_25E4(&qword_13A6F0, &qword_10B028);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v49 = &v39 - v3;
  v4 = sub_104700();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  __chkstk_darwin(v4);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1047D0();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_105F50();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v51);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_105ED0();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_106D20();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_106300();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_106320();
  v39 = *(v28 - 8);
  v40 = v28;
  v29 = *(v39 + 64);
  __chkstk_darwin(v28);
  v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v27, enum case for SiriTimeMeasurement.LogDescription.siriInferenceWitchingHour(_:), v23);
  if (qword_136E60 != -1)
  {
    swift_once();
  }

  v32 = sub_135C4(v18, qword_13A6D8);
  (*(v19 + 16))(v22, v32, v18);
  mach_absolute_time();
  sub_106330();
  sub_105EC0();
  (*(v10 + 104))(v13, enum case for DateTime.DateTimeRange.DefinedDateTimeRange.witchingHours(_:), v51);
  v33 = v43;
  sub_106240();
  sub_106560();
  sub_106550();
  sub_106540();

  sub_1A8E0(v52, v52[3]);
  v34 = v46;
  sub_104CB0();
  v35 = sub_105EA0();
  v36 = v49;
  (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
  sub_EA5C8(_swiftEmptyArrayStorage);
  v37 = sub_105EB0();

  sub_16F70(v36, &qword_13A6F0, &qword_10B028);
  (*(v47 + 8))(v34, v48);
  (*(v44 + 8))(v33, v45);
  (*(v10 + 8))(v13, v51);
  sub_2738(v52);
  sub_106310();
  (*(v41 + 8))(v17, v42);
  (*(v39 + 8))(v31, v40);
  return v37 & 1;
}

uint64_t sub_D1DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137518, &qword_107E28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D1E40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_104670();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_D1EE4()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  sub_25E4(&qword_137880, &unk_108290);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_108210;
  *(v8 + 32) = 0x614E656369766564;
  *(v8 + 40) = 0xEA0000000000656DLL;
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

  *(v8 + 80) = 0x6E756D6D6F437369;
  *(v8 + 88) = 0xEA00000000006C61;
  v13 = type metadata accessor for StopConfirmationParameters(0);
  *(v8 + 96) = *(v0 + v13[5]);
  *(v8 + 120) = &type metadata for Bool;
  *(v8 + 128) = 0x6E6F737265507369;
  *(v8 + 136) = 0xEA00000000006C61;
  *(v8 + 144) = *(v0 + v13[6]);
  *(v8 + 168) = &type metadata for Bool;
  *(v8 + 176) = 0x656D614E6D6F6F72;
  *(v8 + 184) = 0xE800000000000000;
  sub_14994(v0 + v13[7], v5, &qword_137598, &unk_107EB0);
  if (v11(v5, 1, v9) == 1)
  {
    sub_16F70(v5, &qword_137598, &unk_107EB0);
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
  }

  else
  {
    *(v8 + 216) = v9;
    v14 = sub_1A924((v8 + 192));
    (*(v10 + 32))(v14, v5, v9);
  }

  return v8;
}

uint64_t sub_D21A4()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - v6;
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  sub_25E4(&qword_137880, &unk_108290);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_107DE0;
  *(v10 + 32) = 0x6D72616C61;
  *(v10 + 40) = 0xE500000000000000;
  v11 = *v0;
  if (*v0)
  {
    v12 = type metadata accessor for AlarmAlarm(0);
    v13 = v11;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  *(v10 + 48) = v13;
  *(v10 + 72) = v12;
  *(v10 + 80) = 0x614E656369766564;
  *(v10 + 88) = 0xEA0000000000656DLL;
  v14 = type metadata accessor for StopIntentHandledElsewhereParameters(0);
  sub_14994(v0 + v14[5], v9, &qword_137598, &unk_107EB0);
  v15 = sub_106160();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v9, 1, v15) == 1)
  {

    sub_16F70(v9, &qword_137598, &unk_107EB0);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v15;
    v18 = sub_1A924((v10 + 96));
    (*(v16 + 32))(v18, v9, v15);
  }

  *(v10 + 128) = 0x7954676F6C616964;
  *(v10 + 136) = 0xEA00000000006570;
  sub_14994(v0 + v14[6], v7, &qword_137598, &unk_107EB0);
  if (v17(v7, 1, v15) == 1)
  {
    sub_16F70(v7, &qword_137598, &unk_107EB0);
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
  }

  else
  {
    *(v10 + 168) = v15;
    v19 = sub_1A924((v10 + 144));
    (*(v16 + 32))(v19, v7, v15);
  }

  *(v10 + 176) = 0x537373696D736964;
  *(v10 + 184) = 0xEF796C746E656C69;
  *(v10 + 192) = *(v0 + v14[7]);
  *(v10 + 216) = &type metadata for Bool;
  *(v10 + 224) = 0x656D614E6D6F6F72;
  *(v10 + 232) = 0xE800000000000000;
  v20 = v0 + v14[8];
  v21 = v25;
  sub_14994(v20, v25, &qword_137598, &unk_107EB0);
  if (v17(v21, 1, v15) == 1)
  {
    sub_16F70(v21, &qword_137598, &unk_107EB0);
    *(v10 + 240) = 0u;
    *(v10 + 256) = 0u;
  }

  else
  {
    *(v10 + 264) = v15;
    v22 = sub_1A924((v10 + 240));
    (*(v16 + 32))(v22, v21, v15);
  }

  return v10;
}

uint64_t sub_D257C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  v6 = type metadata accessor for StopConfirmationParameters(0);
  *(v5 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_D261C, 0, 0);
}

uint64_t sub_D261C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 89);
  v6 = *(v0 + 88);
  v7 = sub_106160();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v8(v1 + v2[7], 1, 1, v7);
  *(v1 + v2[5]) = v6;
  *(v1 + v2[6]) = v5;
  v4(v1);
  v9 = sub_D1EE4();
  *(v0 + 56) = v9;
  v10 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v14 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_D279C;
  v12 = *(v0 + 32);

  return v14(0xD000000000000011, 0x800000000010E300, v9);
}

uint64_t sub_D279C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_D2970;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_D28E8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_D28E8()
{
  sub_D3074(v0[6], type metadata accessor for StopConfirmationParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_D2970()
{
  sub_D3074(v0[6], type metadata accessor for StopConfirmationParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_D29F4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for StopIntentHandledElsewhereParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_D2A90, 0, 0);
}

uint64_t sub_D2A90()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 88);
  v6 = v2[5];
  v7 = sub_106160();
  v8 = *(*(v7 - 8) + 56);
  v8(&v1[v6], 1, 1, v7);
  v8(&v1[v2[6]], 1, 1, v7);
  v8(&v1[v2[8]], 1, 1, v7);
  *v1 = 0;
  v1[v2[7]] = v5;
  v4(v1);
  v9 = sub_D21A4();
  *(v0 + 56) = v9;
  v10 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v14 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_D2C2C;
  v12 = *(v0 + 32);

  return v14(0xD00000000000001BLL, 0x800000000010E2E0, v9);
}

uint64_t sub_D2C2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_D2E00;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_D2D78;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_D2D78()
{
  sub_D3074(v0[6], type metadata accessor for StopIntentHandledElsewhereParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_D2E00()
{
  sub_D3074(v0[6], type metadata accessor for StopIntentHandledElsewhereParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_D2E84(uint64_t a1, uint64_t a2)
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

uint64_t sub_D3074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_D30E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_D31D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_D3298()
{
  sub_D3594(319, &qword_1378F8, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_D3340(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_25E4(&qword_137598, &unk_107EB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_D341C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_25E4(&qword_137598, &unk_107EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_D34CC()
{
  sub_D3594(319, &unk_137A20, type metadata accessor for AlarmAlarm);
  if (v0 <= 0x3F)
  {
    sub_D3594(319, &qword_1378F8, &type metadata accessor for SpeakableString);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_D3594(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1070E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ChangeAlarmStatusCATPatternsExecutor()
{
  result = qword_13A888;
  if (!qword_13A888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D3674(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_D3698, 0, 0);
}

uint64_t sub_D3698()
{
  v0[2] = 0;
  v1 = v0[5];
  v2 = v0[6];
  v0[3] = 0;
  v0[4] = 0;
  v1(v0 + 2);
  v4 = v0[2];
  v3 = v0[3];
  v0[8] = v4;
  v0[9] = v3;
  v5 = v0[4];
  sub_25E4(&qword_137880, &unk_108290);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = xmmword_109690;
  *(v6 + 32) = 0x6D72616C61;
  *(v6 + 40) = 0xE500000000000000;
  if (v4)
  {
    v7 = type metadata accessor for AlarmAlarm(0);
    v8 = v4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  *(v6 + 48) = v8;
  *(v6 + 72) = v7;
  *(v6 + 80) = 7368801;
  *(v6 + 88) = 0xE300000000000000;
  if (v3)
  {
    v9 = sub_106100();
    v10 = v3;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v10;
  *(v6 + 120) = v9;
  *(v6 + 128) = 0x616C417065656C73;
  *(v6 + 136) = 0xEA00000000006D72;
  v11 = 0;
  if (v5)
  {
    v11 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  v0[11] = v5;
  *(v6 + 144) = v5;
  *(v6 + 168) = v11;
  v12 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v16 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_AA1FC;
  v14 = v0[7];

  return v16(0xD000000000000020, 0x800000000010D050, v6);
}

uint64_t sub_D3898(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_D38BC, 0, 0);
}

uint64_t sub_D38BC()
{
  v1 = *(v0 + 48);
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000000010C5B0;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_107FC0;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_D39F0;
  v5 = *(v0 + 16);

  return v7(0xD00000000000003BLL, 0x800000000010E3A0, v2);
}

uint64_t sub_D39F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_D3FEC, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_D3B48(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_D3B6C, 0, 0);
}

uint64_t sub_D3B6C()
{
  v1 = *(v0 + 48);
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000000010C5B0;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_107FC0;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_D3CA0;
  v5 = *(v0 + 16);

  return v7(0xD00000000000003ALL, 0x800000000010E360, v2);
}

uint64_t sub_D3CA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_D3DF8, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_D3DF8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_D3E5C(uint64_t a1, uint64_t a2)
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

id SIRINLUUserDialogAct.alarmSearch.getter()
{
  if (sub_107000())
  {
    v0 = sub_1EED0();

    return v0;
  }

  else
  {
    if (qword_136E68 != -1)
    {
      swift_once();
    }

    v2 = sub_106D20();
    sub_135C4(v2, qword_13A8D8);
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

uint64_t sub_D40F0()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A8D8);
  sub_135C4(v0, qword_13A8D8);
  return sub_106A80();
}

uint64_t sub_D41A4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
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

uint64_t sub_D4258(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_104D60();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = *(*(sub_106200() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_106D20();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_106300();
  v1[21] = v12;
  v13 = *(v12 - 8);
  v1[22] = v13;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();
  v15 = sub_106320();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D44B4, 0, 0);
}

uint64_t sub_D44B4()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_135C4(v5, qword_13A2F8);
  (*(v4 + 16))(v3, v6, v5);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D4658;

  return v10(0xD000000000000016, 0x800000000010E3E0, &_swiftEmptyArrayStorage);
}

uint64_t sub_D4658(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_DD6C0;
  }

  else
  {
    v8 = *(v4 + 216);
    *(v4 + 240) = a1;

    v7 = sub_D4788;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D4788()
{
  v1 = v0[16];
  v2 = v0[13];
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_D4848;
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_D4848()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v12 = *v1;
  *(*v1 + 256) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_DD6C4;
  }

  else
  {
    v10 = sub_D4A34;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_D4A34()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v7 = sub_106750();
  v0[5] = v7;
  v0[6] = &protocol witness table for ABCReport;
  v8 = sub_1A924(v0 + 2);
  v0[9] = sub_106910();
  sub_25E4(&unk_138440, &qword_108CC8);
  *v8 = sub_106E30();
  v8[1] = v9;
  v10 = enum case for UnhandledAbortSubtype.generic(_:);
  v11 = sub_106680();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  (*(*(v7 - 8) + 104))(v8, enum case for ABCReport.unhandledAbort(_:), v7);
  sub_1064D0();
  (*(v1 + 8))(v2, v4);
  sub_2738(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_D4BFC(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_104D60();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = *(*(sub_106200() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_106D20();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_106300();
  v1[21] = v12;
  v13 = *(v12 - 8);
  v1[22] = v13;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();
  v15 = sub_106320();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D4E58, 0, 0);
}

uint64_t sub_D4E58()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_135C4(v5, qword_13A2F8);
  (*(v4 + 16))(v3, v6, v5);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D4FFC;

  return (v10)(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D4FFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_DD6C0;
  }

  else
  {
    v8 = *(v4 + 216);
    *(v4 + 240) = a1;

    v7 = sub_D512C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D512C()
{
  v1 = v0[16];
  v2 = v0[13];
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_D51EC;
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_D51EC()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v12 = *v1;
  *(*v1 + 256) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_DD6C4;
  }

  else
  {
    v10 = sub_D53D8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_D53D8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v7 = sub_106750();
  v0[5] = v7;
  v0[6] = &protocol witness table for ABCReport;
  v8 = sub_1A924(v0 + 2);
  v0[9] = sub_1068D0();
  sub_25E4(&qword_138408, &qword_108C98);
  *v8 = sub_106E30();
  v8[1] = v9;
  v10 = enum case for UnhandledAbortSubtype.generic(_:);
  v11 = sub_106680();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  (*(*(v7 - 8) + 104))(v8, enum case for ABCReport.unhandledAbort(_:), v7);
  sub_1064D0();
  (*(v1 + 8))(v2, v4);
  sub_2738(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_D55A0(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_104D60();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = *(*(sub_106200() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_106D20();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_106300();
  v1[21] = v12;
  v13 = *(v12 - 8);
  v1[22] = v13;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();
  v15 = sub_106320();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D57FC, 0, 0);
}

uint64_t sub_D57FC()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_135C4(v5, qword_13A2F8);
  (*(v4 + 16))(v3, v6, v5);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D59A0;

  return (v10)(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D59A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_DD6C0;
  }

  else
  {
    v8 = *(v4 + 216);
    *(v4 + 240) = a1;

    v7 = sub_D5AD0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D5AD0()
{
  v1 = v0[16];
  v2 = v0[13];
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_D5B90;
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_D5B90()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v12 = *v1;
  *(*v1 + 256) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_DD6C4;
  }

  else
  {
    v10 = sub_D5D7C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_D5D7C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v7 = sub_106750();
  v0[5] = v7;
  v0[6] = &protocol witness table for ABCReport;
  v8 = sub_1A924(v0 + 2);
  v0[9] = sub_106800();
  sub_25E4(&qword_138430, &qword_108CB8);
  *v8 = sub_106E30();
  v8[1] = v9;
  v10 = enum case for UnhandledAbortSubtype.generic(_:);
  v11 = sub_106680();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  (*(*(v7 - 8) + 104))(v8, enum case for ABCReport.unhandledAbort(_:), v7);
  sub_1064D0();
  (*(v1 + 8))(v2, v4);
  sub_2738(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_D5F44(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_104D60();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = *(*(sub_106200() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_106D20();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_106300();
  v1[21] = v12;
  v13 = *(v12 - 8);
  v1[22] = v13;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();
  v15 = sub_106320();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D61A0, 0, 0);
}

uint64_t sub_D61A0()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_135C4(v5, qword_13A2F8);
  (*(v4 + 16))(v3, v6, v5);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D6344;

  return (v10)(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D6344(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_D6720;
  }

  else
  {
    v8 = *(v4 + 216);
    *(v4 + 240) = a1;

    v7 = sub_D6474;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D6474()
{
  v1 = v0[16];
  v2 = v0[13];
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_D6534;
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_D6534()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v12 = *v1;
  *(*v1 + 256) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_D6A2C;
  }

  else
  {
    v10 = sub_D6864;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_D6720()
{
  v1 = v0[27];

  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  v7 = v0[17];
  v11 = v0[16];
  v12 = v0[13];
  v0[8] = v0[29];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  v8 = v0[7];
  swift_willThrow();

  (*(v2 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D6864()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v7 = sub_106750();
  v0[5] = v7;
  v0[6] = &protocol witness table for ABCReport;
  v8 = sub_1A924(v0 + 2);
  v0[9] = sub_1067A0();
  sub_25E4(&qword_13A910, &qword_10B2E8);
  *v8 = sub_106E30();
  v8[1] = v9;
  v10 = enum case for UnhandledAbortSubtype.generic(_:);
  v11 = sub_106680();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  (*(*(v7 - 8) + 104))(v8, enum case for ABCReport.unhandledAbort(_:), v7);
  sub_1064D0();
  (*(v1 + 8))(v2, v4);
  sub_2738(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_D6A2C()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v10 = v0[16];
  v11 = v0[13];
  v0[8] = v0[32];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  v7 = v0[7];
  swift_willThrow();

  (*(v1 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_D6B68(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_104D60();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = *(*(sub_106200() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_106D20();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_106300();
  v1[21] = v12;
  v13 = *(v12 - 8);
  v1[22] = v13;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();
  v15 = sub_106320();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D6DC4, 0, 0);
}

uint64_t sub_D6DC4()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_135C4(v5, qword_13A2F8);
  (*(v4 + 16))(v3, v6, v5);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D6F68;

  return (v10)(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D6F68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_DD6C0;
  }

  else
  {
    v8 = *(v4 + 216);
    *(v4 + 240) = a1;

    v7 = sub_D7098;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D7098()
{
  v1 = v0[16];
  v2 = v0[13];
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_D7158;
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_D7158()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v12 = *v1;
  *(*v1 + 256) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_DD6C4;
  }

  else
  {
    v10 = sub_D7344;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_D7344()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v7 = sub_106750();
  v0[5] = v7;
  v0[6] = &protocol witness table for ABCReport;
  v8 = sub_1A924(v0 + 2);
  v0[9] = sub_106870();
  sub_25E4(&qword_13A918, &qword_10B318);
  *v8 = sub_106E30();
  v8[1] = v9;
  v10 = enum case for UnhandledAbortSubtype.generic(_:);
  v11 = sub_106680();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  (*(*(v7 - 8) + 104))(v8, enum case for ABCReport.unhandledAbort(_:), v7);
  sub_1064D0();
  (*(v1 + 8))(v2, v4);
  sub_2738(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_D750C(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_104D60();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = *(*(sub_106200() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_106D20();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_106300();
  v1[21] = v12;
  v13 = *(v12 - 8);
  v1[22] = v13;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();
  v15 = sub_106320();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D7768, 0, 0);
}

uint64_t sub_D7768()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_135C4(v5, qword_13A2F8);
  (*(v4 + 16))(v3, v6, v5);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D790C;

  return (v10)(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D790C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_DD6C0;
  }

  else
  {
    v8 = *(v4 + 216);
    *(v4 + 240) = a1;

    v7 = sub_D7A3C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D7A3C()
{
  v1 = v0[16];
  v2 = v0[13];
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_D7AFC;
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_D7AFC()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v12 = *v1;
  *(*v1 + 256) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_DD6C4;
  }

  else
  {
    v10 = sub_D7CE8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_D7CE8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v7 = sub_106750();
  v0[5] = v7;
  v0[6] = &protocol witness table for ABCReport;
  v8 = sub_1A924(v0 + 2);
  v0[9] = sub_106840();
  sub_25E4(&qword_138418, &qword_108CA0);
  *v8 = sub_106E30();
  v8[1] = v9;
  v10 = enum case for UnhandledAbortSubtype.generic(_:);
  v11 = sub_106680();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  (*(*(v7 - 8) + 104))(v8, enum case for ABCReport.unhandledAbort(_:), v7);
  sub_1064D0();
  (*(v1 + 8))(v2, v4);
  sub_2738(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_D7EB0(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_104D60();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = *(*(sub_106200() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_106D20();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_106300();
  v1[21] = v12;
  v13 = *(v12 - 8);
  v1[22] = v13;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();
  v15 = sub_106320();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D810C, 0, 0);
}

uint64_t sub_D810C()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_135C4(v5, qword_13A2F8);
  (*(v4 + 16))(v3, v6, v5);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D82B0;

  return (v10)(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D82B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_DD6C0;
  }

  else
  {
    v8 = *(v4 + 216);
    *(v4 + 240) = a1;

    v7 = sub_D83E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D83E0()
{
  v1 = v0[16];
  v2 = v0[13];
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_D84A0;
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_D84A0()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v12 = *v1;
  *(*v1 + 256) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_DD6C4;
  }

  else
  {
    v10 = sub_D868C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_D868C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v7 = sub_106750();
  v0[5] = v7;
  v0[6] = &protocol witness table for ABCReport;
  v8 = sub_1A924(v0 + 2);
  v0[9] = sub_1068B0();
  sub_25E4(&qword_138438, &qword_108CC0);
  *v8 = sub_106E30();
  v8[1] = v9;
  v10 = enum case for UnhandledAbortSubtype.generic(_:);
  v11 = sub_106680();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  (*(*(v7 - 8) + 104))(v8, enum case for ABCReport.unhandledAbort(_:), v7);
  sub_1064D0();
  (*(v1 + 8))(v2, v4);
  sub_2738(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_D8854()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A8F0);
  sub_135C4(v0, qword_13A8F0);
  return sub_106A80();
}

uint64_t sub_D88A0(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_105030();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = *(*(sub_106200() - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = sub_1066E0();
  v3[20] = v8;
  v9 = *(v8 - 8);
  v3[21] = v9;
  v10 = *(v9 + 64) + 15;
  v3[22] = swift_task_alloc();
  v11 = sub_106410();
  v3[23] = v11;
  v12 = *(v11 - 8);
  v3[24] = v12;
  v13 = *(v12 + 64) + 15;
  v3[25] = swift_task_alloc();
  v14 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v15 = *(*(type metadata accessor for DeleteAlarmUnsupportedWithReasonSleepAlarmNotSupportedParameters(0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v16 = sub_106370();
  v3[29] = v16;
  v17 = *(v16 - 8);
  v3[30] = v17;
  v18 = *(v17 + 64) + 15;
  v3[31] = swift_task_alloc();
  v19 = sub_104670();
  v3[32] = v19;
  v20 = *(v19 - 8);
  v3[33] = v20;
  v21 = *(v20 + 64) + 15;
  v3[34] = swift_task_alloc();
  v22 = sub_104D60();
  v3[35] = v22;
  v23 = *(v22 - 8);
  v3[36] = v23;
  v24 = *(v23 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v25 = type metadata accessor for DeleteAlarmIntentHandledMultipleParameters(0);
  v3[40] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v27 = type metadata accessor for DeleteAllIntentHandledParameters(0);
  v3[42] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v29 = sub_106D20();
  v3[44] = v29;
  v30 = *(v29 - 8);
  v3[45] = v30;
  v31 = *(v30 + 64) + 15;
  v3[46] = swift_task_alloc();
  v32 = sub_106300();
  v3[47] = v32;
  v33 = *(v32 - 8);
  v3[48] = v33;
  v34 = *(v33 + 64) + 15;
  v3[49] = swift_task_alloc();
  v35 = sub_106320();
  v3[50] = v35;
  v36 = *(v35 - 8);
  v3[51] = v36;
  v37 = *(v36 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v38 = sub_1053C0();
  v3[55] = v38;
  v39 = *(v38 - 8);
  v3[56] = v39;
  v40 = *(v39 + 64) + 15;
  v3[57] = swift_task_alloc();
  v41 = sub_104FF0();
  v3[58] = v41;
  v42 = *(v41 - 8);
  v3[59] = v42;
  v43 = *(v42 + 64) + 15;
  v3[60] = swift_task_alloc();
  v44 = sub_1064A0();
  v3[61] = v44;
  v45 = *(v44 - 8);
  v3[62] = v45;
  v46 = *(v45 + 64) + 15;
  v3[63] = swift_task_alloc();
  v47 = sub_1064C0();
  v3[64] = v47;
  v48 = *(v47 - 8);
  v3[65] = v48;
  v49 = *(v48 + 64) + 15;
  v3[66] = swift_task_alloc();

  return _swift_task_switch(sub_D8EE0, 0, 0);
}

uint64_t sub_D8EE0()
{
  if (qword_136E80 != -1)
  {
LABEL_23:
    swift_once();
  }

  v1 = sub_135C4(v0[44], qword_13A8F0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DeleteAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  v5 = v0[14];

  sub_25E4(&qword_1385B0, &unk_10B2D0);
  v6 = sub_105170();
  v0[67] = v6;
  v7 = [v6 alarms];
  if (v7)
  {
    v8 = v7;
    sub_106AA0();
    v9 = sub_106EE0();

    if (v9 >> 62)
    {
      v10 = sub_107270();
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      if (v10)
      {
LABEL_7:
        v197 = v0;
        v199 = v6;
        v193 = v1;
        v11 = 0;
        v12 = v9 & 0xC000000000000001;
        v0 = (v9 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if (v12)
          {
            v13 = sub_1071C0();
          }

          else
          {
            if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_22;
            }

            v13 = *(v9 + 8 * v11 + 32);
          }

          v14 = v13;
          v15 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v16 = [v13 sleepAlarmAttribute];
          if (v16)
          {

            sub_107200();
            v17 = _swiftEmptyArrayStorage[2];
            sub_107230();
            sub_107240();
            sub_107210();
          }

          else
          {
          }

          ++v11;
        }

        while (v15 != v10);
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
        {
          v36 = sub_107270();

          if (v36)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v18 = _swiftEmptyArrayStorage[2];

          if (v18)
          {
LABEL_20:
            v19 = v197;
            v20 = v197[66];
            v21 = v197[65];
            v22 = v197[64];
            (*(v197[62] + 104))(v197[63], enum case for AppInstallUtil.Domain.sleep(_:), v197[61]);
            sub_1064B0();
            v191 = sub_106470();
            (*(v21 + 8))(v20, v22);
            goto LABEL_32;
          }
        }

        v191 = 0;
        v19 = v197;
LABEL_32:
        sub_BD4A4(v9, v19[60]);
        if (v9 >> 62)
        {
          if (sub_107270() < 2)
          {
LABEL_34:
            if (v191)
            {

              v37 = sub_106D10();
              v38 = sub_106FC0();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                *v39 = 0;
                _os_log_impl(&dword_0, v37, v38, "Delete sleep alarm is not supported, punch out.", v39, 2u);
              }

              v40 = v197;
              v42 = v197[30];
              v41 = v197[31];
              v43 = v197[29];

              sub_106360();
              v44 = sub_106350();
              (*(v42 + 8))(v41, v43);
              v45 = sub_106D10();
              v46 = sub_106FC0();
              v47 = os_log_type_enabled(v45, v46);
              if (v44)
              {
                if (v47)
                {
                  v48 = swift_slowAlloc();
                  *v48 = 0;
                  _os_log_impl(&dword_0, v45, v46, "Hitting RF path for deleting sleep alarm.", v48, 2u);
                }

                v49 = v197[52];
                v50 = v197[48];
                v51 = v197[49];
                v53 = v197[46];
                v52 = v197[47];
                v55 = v197[44];
                v54 = v197[45];

                (*(v50 + 104))(v51, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v52);
                (*(v54 + 16))(v53, v193, v55);
                mach_absolute_time();
                sub_106330();
                if (qword_136D40 != -1)
                {
                  swift_once();
                }

                v57 = v197[27];
                v56 = v197[28];
                v58 = v197[25];
                v59 = v197[26];
                v60 = v197[23];
                v61 = v197[24];
                v62 = sub_106160();
                v63 = *(v62 - 8);
                (*(v63 + 56))(v56, 1, 1, v62);
                (*(v61 + 104))(v58, enum case for PunchOutApp.sleep(_:), v60);
                sub_1063F0();
                (*(v61 + 8))(v58, v60);
                sub_1A814(v57, v56);
                sub_25E4(&qword_137880, &unk_108290);
                v64 = swift_allocObject();
                v197[84] = v64;
                *(v64 + 16) = xmmword_107FC0;
                *(v64 + 32) = 0xD000000000000014;
                *(v64 + 40) = 0x800000000010D320;
                sub_826B8(v56, v59);
                v65 = (*(v63 + 48))(v59, 1, v62);
                v66 = v197[26];
                if (v65 == 1)
                {
                  sub_16F70(v197[26], &qword_137598, &unk_107EB0);
                  *(v64 + 48) = 0u;
                  *(v64 + 64) = 0u;
                }

                else
                {
                  *(v64 + 72) = v62;
                  v156 = sub_1A924((v64 + 48));
                  (*(v63 + 32))(v156, v66, v62);
                }

                v157 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
                v201 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
                v158 = swift_task_alloc();
                v197[85] = v158;
                *v158 = v197;
                v158[1] = sub_DB7DC;
                v116 = 0xD000000000000037;
                v127 = 0x800000000010E4F0;
LABEL_108:
                v159 = v64;
LABEL_109:

                return v201(v116, v127, v159);
              }

              if (v47)
              {
                v147 = swift_slowAlloc();
                *v147 = 0;
                _os_log_impl(&dword_0, v45, v46, "Hitting non-RF path for deleting sleep alarm.", v147, 2u);
                v40 = v197;
              }

              v149 = v40[62];
              v148 = v40[63];
              v150 = v40[61];
              v151 = v40[22];
              v152 = v40[19];

              (*(v149 + 104))(v148, enum case for AppInstallUtil.Domain.sleep(_:), v150);
              type metadata accessor for AlarmBaseCATs_Async();
              sub_1061E0();
              sub_1060D0();
              sub_4F234();
              sub_1066D0();
              v153 = async function pointer to AppInstallDialogOutputUtil.makeLaunchAppView()[1];
              v154 = swift_task_alloc();
              v40[90] = v154;
              *v154 = v40;
              v154[1] = sub_DBF4C;
              v155 = v40[22];

              return AppInstallDialogOutputUtil.makeLaunchAppView()();
            }

            v70 = [v6 alarmSearch];
            if (v70 && (v71 = v70, v72 = [v70 label], v71, v72))
            {

              v73 = 1;
            }

            else
            {
              v73 = 0;
            }

            v128 = [v6 alarms];
            if (v128)
            {
              v129 = v128;
              v130 = sub_106EE0();

              if (v130 >> 62)
              {
                if (sub_107270())
                {
                  goto LABEL_91;
                }
              }

              else if (*(&dword_10 + (v130 & 0xFFFFFFFFFFFFFF8)))
              {
LABEL_91:
                v196 = v73;
                if ((v130 & 0xC000000000000001) != 0)
                {
                  v131 = sub_1071C0();
                }

                else
                {
                  if (!*(&dword_10 + (v130 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
                    goto LABEL_126;
                  }

                  v131 = *(v130 + 32);
                }

                v132 = v131;
                v133 = v197[33];
                v134 = v197[34];
                v135 = v197[32];

                sub_106210();
                v129 = sub_75DD4(0, v134, 0);
                v197[77] = v129;

                (*(v133 + 8))(v134, v135);
                if (v129)
                {
                  if (!v12)
                  {
                    if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
                    {
                      __break(1u);
                      return AppInstallDialogOutputUtil.makeLaunchAppView()();
                    }

                    v136 = *(v9 + 32);
LABEL_98:
                    v137 = v136;
                    v138 = v197[15];

                    sub_25E4(&qword_137DD0, &unk_108920);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_108470;
                    *(inited + 32) = v137;
                    v140 = v137;
                    v141 = sub_DCF18(inited);
                    swift_setDeallocating();
                    v142 = *(inited + 16);
                    swift_arrayDestroy();
                    if (*(v141 + 2))
                    {
                      v143 = v197[60];
                      v144 = v197[56];
                      v145 = v197[57];
                      v146 = v197[55];
                      sub_E9AB4(v141, v145);

                      sub_104F30();

                      (*(v144 + 8))(v145, v146);
                    }

                    else
                    {
                    }

                    v160 = sub_106D10();
                    v161 = sub_106FC0();
                    if (os_log_type_enabled(v160, v161))
                    {
                      v162 = swift_slowAlloc();
                      *v162 = 0;
                      _os_log_impl(&dword_0, v160, v161, "RF path for deleting single alarm.", v162, 2u);
                    }

                    v163 = v197[53];
                    v164 = v197[48];
                    v165 = v197[49];
                    v167 = v197[46];
                    v166 = v197[47];
                    v169 = v197[44];
                    v168 = v197[45];

                    (*(v164 + 104))(v165, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v166);
                    (*(v168 + 16))(v167, v193, v169);
                    mach_absolute_time();
                    sub_106330();
                    if (qword_136D40 != -1)
                    {
                      swift_once();
                    }

                    sub_25E4(&qword_137880, &unk_108290);
                    v170 = swift_allocObject();
                    v197[78] = v170;
                    *(v170 + 16) = xmmword_1094F0;
                    *(v170 + 32) = 0x6D72616C61;
                    *(v170 + 40) = 0xE500000000000000;
                    v171 = type metadata accessor for AlarmAlarm(0);
                    *(v170 + 48) = v129;
                    *(v170 + 88) = 0x800000000010CA10;
                    *(v170 + 120) = &type metadata for Bool;
                    *(v170 + 96) = v196;
                    v172 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
                    v201 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
                    *(v170 + 72) = v171;
                    *(v170 + 80) = 0xD000000000000014;
                    swift_retain_n();
                    v173 = swift_task_alloc();
                    v197[79] = v173;
                    *v173 = v197;
                    v173[1] = sub_DB080;
                    v116 = 0xD000000000000019;
                    v127 = 0x800000000010E4D0;
                    v159 = v170;
                    goto LABEL_109;
                  }

LABEL_126:
                  v136 = sub_1071C0();
                  goto LABEL_98;
                }

                goto LABEL_123;
              }
            }

LABEL_123:
            v0 = v197;
            v175 = v197[59];
            v174 = v197[60];
            v176 = v197[58];

            sub_25E4(&qword_137DD8, &unk_1085D0);
            sub_26E48();
            swift_allocError();
            *v177 = 3;
            swift_willThrow();

            (*(v175 + 8))(v174, v176);
            goto LABEL_27;
          }
        }

        else if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) < 2)
        {
          goto LABEL_34;
        }

        v67 = [v6 alarmSearch];
        if (v67)
        {
          v68 = v67;
          [v67 alarmReferenceType];

          v69 = sub_106970();
          v184 = v69 == sub_106970();
        }

        else
        {
          v184 = 0;
        }

        v74 = [v6 alarmSearch];
        if (v74)
        {
          v75 = v74;
          [v74 period];

          v76 = sub_106A40();
          v195 = v76 == sub_106A40();
        }

        else
        {
          v195 = 0;
        }

        v77 = [v6 alarmSearch];
        if (v77)
        {
          v78 = v77;
          [v77 period];

          v79 = sub_106A40();
          v190 = v79 == sub_106A40();
        }

        else
        {
          v190 = 0;
        }

        v80 = [v6 alarmSearch];
        if (v80)
        {
          v81 = v80;
          [v80 period];

          v82 = sub_106A40();
          v188 = v82 == sub_106A40();
        }

        else
        {
          v188 = 0;
        }

        v83 = [v6 alarmSearch];
        if (v83)
        {
          v84 = v83;
          [v83 period];

          v85 = sub_106A40();
          v186 = v85 == sub_106A40();
        }

        else
        {
          v186 = 0;
        }

        v86 = 0;
        do
        {
          if (v12)
          {
            v88 = sub_1071C0();
          }

          else
          {
            if (v86 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_119;
            }

            v88 = *(v9 + 8 * v86 + 32);
          }

          v89 = v88;
          v90 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            swift_once();
LABEL_80:
            v107 = v197[42];
            v106 = v197[43];
            v108 = v197[15];
            v109 = v108[4];
            sub_1A8E0(v108, v108[3]);
            v110 = sub_104CD0();
            v111 = *(v107 + 48);
            v112 = sub_106160();
            (*(*(v112 - 8) + 56))(&v106[v111], 1, 1, v112);
            *v106 = v191 & 1;
            v106[1] = 1;
            v106[2] = v195;
            v106[3] = 1;
            v106[4] = v190;
            v106[5] = v188;
            v106[6] = v186;
            v106[7] = v110 & 1;
            *&v106[*(v107 + 52)] = 0;
            v113 = "ntHandledMultiple";
            v64 = sub_7E500();
            v197[68] = v64;
            v114 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
            v201 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
            v115 = swift_task_alloc();
            v197[69] = v115;
            *v115 = v197;
            v115[1] = sub_DA4DC;
            v116 = v0 + 3;
            goto LABEL_86;
          }

          v91 = [v88 sleepAlarmAttribute];
          if (v91)
          {
          }

          else
          {
            sub_107200();
            v87 = _swiftEmptyArrayStorage[2];
            sub_107230();
            sub_107240();
            sub_107210();
          }

          ++v86;
        }

        while (v90 != v10);
        v92 = v197[15];

        v93 = sub_DCF18(_swiftEmptyArrayStorage);

        if (*(v93 + 2))
        {
          v94 = v197[60];
          v96 = v197[56];
          v95 = v197[57];
          v97 = v197[55];
          sub_E9AB4(v93, v95);

          sub_104F30();
          (*(v96 + 8))(v95, v97);
        }

        else
        {
        }

        v0 = 0xD000000000000014;
        v98 = v197[54];
        v99 = v197[46];
        v100 = v197[45];
        v101 = v197[44];
        (*(v197[48] + 104))(v197[49], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v197[47]);
        (*(v100 + 16))(v99, v193, v101);
        mach_absolute_time();
        sub_106330();
        v102 = sub_106D10();
        v103 = sub_106FA0();
        v104 = os_log_type_enabled(v102, v103);
        if (v184)
        {
          if (v104)
          {
            v105 = swift_slowAlloc();
            *v105 = 0;
            _os_log_impl(&dword_0, v102, v103, "Hitting RF path for delete all alarms", v105, 2u);
          }

          if (qword_136D48 == -1)
          {
            goto LABEL_80;
          }

          goto LABEL_120;
        }

        if (v104)
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_0, v102, v103, "Hitting RF path for delete multiple alarms", v117, 2u);
        }

        if (qword_136D40 != -1)
        {
          swift_once();
        }

        v119 = v197[40];
        v118 = v197[41];
        v120 = v197[15];
        v121 = v120[4];
        sub_1A8E0(v120, v120[3]);
        v122 = sub_104CD0();
        v123 = *(v119 + 48);
        v124 = sub_106160();
        (*(*(v124 - 8) + 56))(&v118[v123], 1, 1, v124);
        *v118 = v191 & 1;
        v118[1] = 1;
        v118[2] = v195;
        v118[3] = 0;
        v118[4] = v190;
        v118[5] = v188;
        v118[6] = v186;
        v118[7] = v122 & 1;
        *&v118[*(v119 + 52)] = 0;
        sub_DD0A0(v118, v199);
        v113 = "nSleepAlarmNotSupported";
        v64 = sub_BCA84();
        v197[71] = v64;
        v125 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v201 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v126 = swift_task_alloc();
        v197[72] = v126;
        *v126 = v197;
        v126[1] = sub_DA8FC;
        v116 = 0xD000000000000021;
LABEL_86:
        v127 = v113 | 0x8000000000000000;
        goto LABEL_108;
      }
    }
  }

  sub_25E4(&qword_137DD8, &unk_1085D0);
  sub_26E48();
  swift_allocError();
  *v23 = 3;
  swift_willThrow();

LABEL_27:
  v24 = v0[66];
  v25 = v0[63];
  v26 = v0[60];
  v27 = v0[57];
  v29 = v0[53];
  v28 = v0[54];
  v30 = v0[52];
  v31 = v0[49];
  v32 = v0[46];
  v33 = v0[43];
  v178 = v0[41];
  v179 = v0[39];
  v180 = v0[38];
  v181 = v0[37];
  v182 = v0[34];
  v183 = v0[31];
  v185 = v0[28];
  v187 = v0[27];
  v189 = v0[26];
  v192 = v0[25];
  v194 = v0[22];
  v198 = v0[19];
  v200 = v0[18];

  v34 = v0[1];

  return v34();
}

uint64_t sub_DA4DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[69];
  v6 = *v2;
  v4[70] = v1;

  v7 = v3[68];

  if (v1)
  {
    v8 = sub_DA6FC;
  }

  else
  {
    v8 = sub_DA618;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_DA618()
{
  sub_DD660(v0[43], type metadata accessor for DeleteAllIntentHandledParameters);
  v1 = v0[8];
  v2 = v0[39];
  v0[74] = v1;
  v1;
  sub_104D50();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[75] = v4;
  *v4 = v0;
  v4[1] = sub_DAD1C;
  v5 = v0[60];
  v6 = v0[54];
  v7 = v0[39];
  v8 = v0[13];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_DA6FC()
{
  v1 = v0[67];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
  v5 = v0[54];
  v6 = v0[50];
  v7 = v0[51];
  sub_DD660(v0[43], type metadata accessor for DeleteAllIntentHandledParameters);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v33 = v0[70];
  v8 = v0[66];
  v9 = v0[63];
  v10 = v0[60];
  v11 = v0[57];
  v13 = v0[53];
  v12 = v0[54];
  v14 = v0[52];
  v15 = v0[49];
  v16 = v0[46];
  v17 = v0[43];
  v20 = v0[41];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[34];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[26];
  v29 = v0[25];
  v30 = v0[22];
  v31 = v0[19];
  v32 = v0[18];

  v18 = v0[1];

  return v18();
}

uint64_t sub_DA8FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[72];
  v6 = *v2;
  v4[73] = v1;

  v7 = v3[71];

  if (v1)
  {
    v8 = sub_DAB1C;
  }

  else
  {
    v8 = sub_DAA38;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_DAA38()
{
  sub_DD660(v0[41], type metadata accessor for DeleteAlarmIntentHandledMultipleParameters);
  v1 = v0[11];
  v2 = v0[39];
  v0[74] = v1;
  v1;
  sub_104D50();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[75] = v4;
  *v4 = v0;
  v4[1] = sub_DAD1C;
  v5 = v0[60];
  v6 = v0[54];
  v7 = v0[39];
  v8 = v0[13];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_DAB1C()
{
  v1 = v0[67];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
  v5 = v0[54];
  v6 = v0[50];
  v7 = v0[51];
  sub_DD660(v0[41], type metadata accessor for DeleteAlarmIntentHandledMultipleParameters);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v33 = v0[73];
  v8 = v0[66];
  v9 = v0[63];
  v10 = v0[60];
  v11 = v0[57];
  v13 = v0[53];
  v12 = v0[54];
  v14 = v0[52];
  v15 = v0[49];
  v16 = v0[46];
  v17 = v0[43];
  v20 = v0[41];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[34];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[26];
  v29 = v0[25];
  v30 = v0[22];
  v31 = v0[19];
  v32 = v0[18];

  v18 = v0[1];

  return v18();
}

uint64_t sub_DAD1C()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = v2[74];
  (*(v2[36] + 8))(v2[39], v2[35]);

  if (v0)
  {
    v6 = sub_DC794;
  }

  else
  {
    v6 = sub_DAE9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_DAE9C()
{
  v1 = *(v0 + 592);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v0 + 432);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 528);
  v9 = *(v0 + 504);
  v10 = *(v0 + 480);
  v11 = *(v0 + 456);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v14 = *(v0 + 416);
  v15 = *(v0 + 392);
  v16 = *(v0 + 368);
  v17 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  v23 = *(v0 + 296);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = *(v0 + 144);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_DB080(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 632);
  v6 = *v2;
  *(v4 + 640) = a1;
  *(v4 + 648) = v1;

  v7 = *(v3 + 624);

  if (v1)
  {
    v8 = sub_DB400;
  }

  else
  {
    v8 = sub_DB1C0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_DB1C0()
{
  v1 = v0[77];
  v2 = v0[38];

  sub_104CF0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[82] = v4;
  *v4 = v0;
  v4[1] = sub_DB280;
  v5 = v0[80];
  v6 = v0[60];
  v7 = v0[53];
  v8 = v0[38];
  v9 = v0[13];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v8, v6, v7, 0);
}

uint64_t sub_DB280()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;
  *(*v1 + 664) = v0;

  v5 = v2[80];
  (*(v2[36] + 8))(v2[38], v2[35]);

  if (v0)
  {
    v6 = sub_DCD28;
  }

  else
  {
    v6 = sub_DB5F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_DB400()
{
  v1 = *(v0 + 616);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v0 + 424);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v33 = *(v0 + 648);
  v8 = *(v0 + 528);
  v9 = *(v0 + 504);
  v10 = *(v0 + 480);
  v11 = *(v0 + 456);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v14 = *(v0 + 416);
  v15 = *(v0 + 392);
  v16 = *(v0 + 368);
  v17 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  v23 = *(v0 + 296);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = *(v0 + 144);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_DB5F4()
{
  v1 = *(v0 + 616);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v0 + 424);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 528);
  v9 = *(v0 + 504);
  v10 = *(v0 + 480);
  v11 = *(v0 + 456);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v14 = *(v0 + 416);
  v15 = *(v0 + 392);
  v16 = *(v0 + 368);
  v17 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  v23 = *(v0 + 296);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = *(v0 + 144);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_DB7DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 680);
  v6 = *v2;
  *(v4 + 688) = a1;
  *(v4 + 696) = v1;

  v7 = *(v3 + 672);

  if (v1)
  {
    v8 = sub_DBB70;
  }

  else
  {
    v8 = sub_DB91C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_DB91C()
{
  v1 = v0[37];
  sub_DD660(v0[28], type metadata accessor for DeleteAlarmUnsupportedWithReasonSleepAlarmNotSupportedParameters);
  sub_104D20();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[88] = v3;
  *v3 = v0;
  v3[1] = sub_DB9F0;
  v4 = v0[86];
  v5 = v0[60];
  v6 = v0[52];
  v7 = v0[37];
  v8 = v0[13];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_DB9F0()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v4 = *v1;
  *(*v1 + 712) = v0;

  v5 = v2[86];
  (*(v2[36] + 8))(v2[37], v2[35]);

  if (v0)
  {
    v6 = sub_DC980;
  }

  else
  {
    v6 = sub_DBD70;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_DBB70()
{
  v1 = v0[67];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[50];
  sub_DD660(v0[28], type metadata accessor for DeleteAlarmUnsupportedWithReasonSleepAlarmNotSupportedParameters);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v33 = v0[87];
  v8 = v0[66];
  v9 = v0[63];
  v10 = v0[60];
  v11 = v0[57];
  v13 = v0[53];
  v12 = v0[54];
  v14 = v0[52];
  v15 = v0[49];
  v16 = v0[46];
  v17 = v0[43];
  v20 = v0[41];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[34];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[26];
  v29 = v0[25];
  v30 = v0[22];
  v31 = v0[19];
  v32 = v0[18];

  v18 = v0[1];

  return v18();
}

uint64_t sub_DBD70()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 400);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 528);
  v8 = *(v0 + 504);
  v9 = *(v0 + 480);
  v10 = *(v0 + 456);
  v12 = *(v0 + 424);
  v11 = *(v0 + 432);
  v13 = *(v0 + 416);
  v14 = *(v0 + 392);
  v15 = *(v0 + 368);
  v16 = *(v0 + 344);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 304);
  v22 = *(v0 + 296);
  v23 = *(v0 + 272);
  v24 = *(v0 + 248);
  v25 = *(v0 + 224);
  v26 = *(v0 + 216);
  v27 = *(v0 + 208);
  v28 = *(v0 + 200);
  v29 = *(v0 + 176);
  v30 = *(v0 + 152);
  v31 = *(v0 + 144);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_DBF4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 720);
  v6 = *v2;
  v4[91] = a1;
  v4[92] = v1;

  (*(v3[21] + 8))(v3[22], v3[20]);
  if (v1)
  {
    v7 = sub_DCB64;
  }

  else
  {
    v7 = sub_DC0C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_DC0C0()
{
  if (qword_136D38 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v1[4];
  sub_1A8E0(v1, v1[3]);
  v3 = sub_104CD0();
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  v0[93] = v4;
  *(v4 + 16) = xmmword_109690;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x800000000010C5B0;
  *(v4 + 48) = 0;
  *(v4 + 72) = &type metadata for Bool;
  strcpy((v4 + 80), "hasSleepAlarm");
  *(v4 + 94) = -4864;
  *(v4 + 96) = 1;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0x68637461577369;
  *(v4 + 136) = 0xE700000000000000;
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 144) = v3 & 1;
  v5 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v9 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v6 = swift_task_alloc();
  v0[94] = v6;
  *v6 = v0;
  v6[1] = sub_DC2A8;
  v7 = v0[18];

  return v9(v7, 0xD000000000000037, 0x800000000010E4F0, v4);
}

uint64_t sub_DC2A8()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v7 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v4 = sub_DC5BC;
  }

  else
  {
    v5 = *(v2 + 744);

    v4 = sub_DC3C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DC3C4()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  sub_1A550(*(v0 + 728), v2, *(v0 + 104));

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 528);
  v9 = *(v0 + 504);
  v10 = *(v0 + 480);
  v11 = *(v0 + 456);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v14 = *(v0 + 416);
  v15 = *(v0 + 392);
  v16 = *(v0 + 368);
  v17 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  v23 = *(v0 + 296);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = *(v0 + 144);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_DC5BC()
{
  v1 = v0[93];
  v2 = v0[91];
  v3 = v0[67];
  v5 = v0[59];
  v4 = v0[60];
  v6 = v0[58];

  (*(v5 + 8))(v4, v6);
  v32 = v0[95];
  v7 = v0[66];
  v8 = v0[63];
  v9 = v0[60];
  v10 = v0[57];
  v12 = v0[53];
  v11 = v0[54];
  v13 = v0[52];
  v14 = v0[49];
  v15 = v0[46];
  v16 = v0[43];
  v19 = v0[41];
  v20 = v0[39];
  v21 = v0[38];
  v22 = v0[37];
  v23 = v0[34];
  v24 = v0[31];
  v25 = v0[28];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[22];
  v30 = v0[19];
  v31 = v0[18];

  v17 = v0[1];

  return v17();
}

uint64_t sub_DC794()
{
  v1 = *(v0 + 592);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v0 + 432);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v33 = *(v0 + 608);
  v8 = *(v0 + 528);
  v9 = *(v0 + 504);
  v10 = *(v0 + 480);
  v11 = *(v0 + 456);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v14 = *(v0 + 416);
  v15 = *(v0 + 392);
  v16 = *(v0 + 368);
  v17 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  v23 = *(v0 + 296);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = *(v0 + 144);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_DC980()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 400);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v32 = *(v0 + 712);
  v7 = *(v0 + 528);
  v8 = *(v0 + 504);
  v9 = *(v0 + 480);
  v10 = *(v0 + 456);
  v12 = *(v0 + 424);
  v11 = *(v0 + 432);
  v13 = *(v0 + 416);
  v14 = *(v0 + 392);
  v15 = *(v0 + 368);
  v16 = *(v0 + 344);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 304);
  v22 = *(v0 + 296);
  v23 = *(v0 + 272);
  v24 = *(v0 + 248);
  v25 = *(v0 + 224);
  v26 = *(v0 + 216);
  v27 = *(v0 + 208);
  v28 = *(v0 + 200);
  v29 = *(v0 + 176);
  v30 = *(v0 + 152);
  v31 = *(v0 + 144);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_DCB64()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);

  (*(v2 + 8))(v1, v3);
  v29 = *(v0 + 736);
  v4 = *(v0 + 528);
  v5 = *(v0 + 504);
  v6 = *(v0 + 480);
  v7 = *(v0 + 456);
  v9 = *(v0 + 424);
  v8 = *(v0 + 432);
  v10 = *(v0 + 416);
  v11 = *(v0 + 392);
  v12 = *(v0 + 368);
  v13 = *(v0 + 344);
  v16 = *(v0 + 328);
  v17 = *(v0 + 312);
  v18 = *(v0 + 304);
  v19 = *(v0 + 296);
  v20 = *(v0 + 272);
  v21 = *(v0 + 248);
  v22 = *(v0 + 224);
  v23 = *(v0 + 216);
  v24 = *(v0 + 208);
  v25 = *(v0 + 200);
  v26 = *(v0 + 176);
  v27 = *(v0 + 152);
  v28 = *(v0 + 144);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_DCD28()
{
  v1 = *(v0 + 616);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v0 + 424);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v33 = *(v0 + 664);
  v8 = *(v0 + 528);
  v9 = *(v0 + 504);
  v10 = *(v0 + 480);
  v11 = *(v0 + 456);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v14 = *(v0 + 416);
  v15 = *(v0 + 392);
  v16 = *(v0 + 368);
  v17 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  v23 = *(v0 + 296);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = *(v0 + 144);

  v18 = *(v0 + 8);

  return v18();
}

char *sub_DCF18(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_20:
    v3 = sub_107270();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_1071C0();
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_19;
      }

      v6 = *(a1 + 8 * v4 + 32);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    sub_A94E4(v6, &v18);
    ++v4;
    if (v20)
    {
      v17 = v20;
      v16 = v18;
      v8 = v19;
      v9 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_ADA44(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      v12 = v17;
      if (v11 >= v10 >> 1)
      {
        v14 = sub_ADA44((v10 > 1), v11 + 1, 1, v5);
        v12 = v17;
        v5 = v14;
      }

      *(v5 + 2) = v11 + 1;
      v13 = &v5[48 * v11];
      *(v13 + 2) = v16;
      *(v13 + 6) = v8;
      *(v13 + 56) = v12;
      v13[72] = v9 & 1;
      v4 = v7;
    }
  }

  return v5;
}

uint64_t sub_DD0A0(uint64_t a1, void *a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = [a2 alarmSearch];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 label];
    if (v10)
    {
      v11 = v10;
      sub_106E20();

      sub_106E50();

      v12 = sub_106160();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {
      v14 = sub_106160();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    }
  }

  else
  {
    v13 = sub_106160();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  v15 = type metadata accessor for DeleteAlarmIntentHandledMultipleParameters(0);
  sub_1A814(v7, a1 + *(v15 + 48));
  v16 = [a2 alarmSearch];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1CE68();
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v15 + 52);
  v20 = *(a1 + v19);

  *(a1 + v19) = v18;
  return result;
}

uint64_t sub_DD2A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_DD34C;

  return sub_D88A0(a1, a2);
}

uint64_t sub_DD34C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_DD480, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_DD480()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_DD54C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return sub_D750C(a1);
}

unint64_t sub_DD60C()
{
  result = qword_13A908;
  if (!qword_13A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A908);
  }

  return result;
}

uint64_t sub_DD660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_DD730(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
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

uint64_t type metadata accessor for DismissAlarmCATs_Async()
{
  result = qword_13A920;
  if (!qword_13A920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DD860(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for CreateAlarmCATsSimple()
{
  result = qword_13A970;
  if (!qword_13A970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DDA7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_DDAA0, 0, 0);
}

uint64_t sub_DDAA0()
{
  v1 = v0[2];
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_1094F0;
  *(v2 + 32) = 0x6D72616C61;
  *(v2 + 40) = 0xE500000000000000;
  if (v1)
  {
    v3 = type metadata accessor for AlarmAlarm(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 7368801;
  *(v2 + 88) = 0xE300000000000000;
  v6 = 0;
  if (v5)
  {
    v6 = sub_106100();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v7 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_DDC2C;
  v9 = v0[4];

  return v11(0xD000000000000032, 0x800000000010D740, v2);
}

uint64_t sub_DDC2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_DDD84, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_DDD84()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_DDDE8(uint64_t a1, uint64_t a2)
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

uint64_t sub_DDF70(uint64_t a1, uint64_t a2)
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

uint64_t sub_DE088()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A9C0);
  sub_135C4(v0, qword_13A9C0);
  return sub_106A80();
}

uint64_t sub_DE0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  if (qword_136E98 != -1)
  {
    swift_once();
  }

  v12 = sub_106D20();
  sub_135C4(v12, qword_13A9C0);
  v13 = sub_106D10();
  v14 = sub_106FC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "UpdateAlarm.NeedsValueStrategy.actionForInput() called)", v15, 2u);
  }

  v16 = sub_106630();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = enum case for DecideAction.PromptExpectation.slot(_:);
  v18 = sub_106450();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_46C44(a1, v11, 0, v7, a2);
  sub_16F70(v7, &unk_1374C0, &unk_1087B0);
  return sub_16F70(v11, &qword_1374F0, &qword_1080F0);
}

uint64_t sub_DE368(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_106D20();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_106300();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_106320();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v12 = sub_104FF0();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v15 = sub_104D60();
  v2[18] = v15;
  v16 = *(v15 - 8);
  v2[19] = v16;
  v17 = *(v16 + 64) + 15;
  v2[20] = swift_task_alloc();
  v18 = sub_1050C0();
  v2[21] = v18;
  v19 = *(v18 - 8);
  v2[22] = v19;
  v20 = *(v19 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_DE60C, 0, 0);
}

uint64_t sub_DE60C()
{
  v47 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[3];
  sub_25E4(&qword_13A388, &unk_10B4C0);
  sub_105210();
  v5 = sub_1050B0();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (qword_136E98 != -1)
  {
    swift_once();
  }

  v8 = sub_135C4(v0[4], qword_13A9C0);
  v9 = sub_106D10();
  v10 = sub_106FC0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "UpdateAlarm.NeedsValueStrategy.makePromptForValue() called)", v11, 2u);
  }

  v12 = sub_106D10();
  v13 = sub_106FC0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v46 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_722E8(v5, v7, &v46);
    _os_log_impl(&dword_0, v12, v13, "makeParameterPromptDialog for parameterName=%s", v14, 0xCu);
    sub_2738(v15);
  }

  v16 = v0[20];
  sub_104D10();
  if (v5 == 0x6465736F706F7270 && v7 == 0xED00006C6562614CLL)
  {

LABEL_11:
    sub_BFA60(v0[17]);
    v18 = sub_106D10();
    v19 = sub_106FC0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "UpdateAlarm.NeedsValueStrategy.makePromptForValue() #Response label prompt", v20, 2u);
    }

    v21 = v0[13];
    v23 = v0[8];
    v22 = v0[9];
    v25 = v0[6];
    v24 = v0[7];
    v26 = v0[4];
    v27 = v0[5];

    (*(v23 + 104))(v22, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v24);
    (*(v27 + 16))(v25, v8, v26);
    mach_absolute_time();
    sub_106330();
    if (qword_136E90 != -1)
    {
      swift_once();
    }

    v28 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v45 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v29 = swift_task_alloc();
    v0[24] = v29;
    *v29 = v0;
    v29[1] = sub_DEBC4;
    v30 = 0xD000000000000017;
    v31 = 0x800000000010E6A0;
    goto LABEL_21;
  }

  v17 = sub_107370();

  if (v17)
  {
    goto LABEL_11;
  }

  sub_BF5C0(v0[16]);
  v32 = sub_106D10();
  v33 = sub_106FC0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "UpdateAlarm.NeedsValueStrategy.makePromptForValue() #Response time prompt", v34, 2u);
  }

  v35 = v0[12];
  v37 = v0[8];
  v36 = v0[9];
  v39 = v0[6];
  v38 = v0[7];
  v40 = v0[4];
  v41 = v0[5];

  (*(v37 + 104))(v36, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v38);
  (*(v41 + 16))(v39, v8, v40);
  mach_absolute_time();
  sub_106330();
  if (qword_136E90 != -1)
  {
    swift_once();
  }

  v42 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v45 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v43 = swift_task_alloc();
  v0[29] = v43;
  *v43 = v0;
  v43[1] = sub_DF0E4;
  v31 = 0x800000000010E680;
  v30 = 0xD000000000000016;
LABEL_21:

  return (v45)(v30, v31, _swiftEmptyArrayStorage);
}

uint64_t sub_DEBC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_DEE8C, 0, 0);
  }

  else
  {
    v4[26] = a1;
    v7 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v8 = swift_task_alloc();
    v4[27] = v8;
    *v8 = v6;
    v8[1] = sub_DED60;
    v9 = v4[20];
    v10 = v4[17];
    v11 = v4[13];
    v12 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v12, v9, v10, v11, 0);
  }
}

uint64_t sub_DED60()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_DF604;
  }

  else
  {
    v4 = sub_DEFBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DEE8C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v4 + 8))(v2, v3);
  v14 = v0[25];
  v5 = v0[23];
  v6 = v0[17];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[9];
  v11 = v0[6];
  (*(v1 + 8))(v0[20], v0[18]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_DEFBC()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v9 = v0[12];
  v12 = v0[9];
  v13 = v0[6];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v7 + 8))(v4, v8);
  (*(v3 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_DF0E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_DF3AC, 0, 0);
  }

  else
  {
    v4[31] = a1;
    v7 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v8 = swift_task_alloc();
    v4[32] = v8;
    *v8 = v6;
    v8[1] = sub_DF280;
    v9 = v4[20];
    v10 = v4[16];
    v11 = v4[12];
    v12 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v12, v9, v10, v11, 0);
  }
}

uint64_t sub_DF280()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_DF728;
  }

  else
  {
    v4 = sub_DF4DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DF3AC()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v2, v4);
  v14 = v0[30];
  v5 = v0[23];
  v6 = v0[17];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[9];
  v11 = v0[6];
  (*(v1 + 8))(v0[20], v0[18]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_DF4DC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[13];
  v9 = v0[14];
  v12 = v0[9];
  v13 = v0[6];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v9);
  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_DF604()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[28];
  v5 = v0[23];
  v6 = v0[17];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[9];
  v11 = v0[6];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_DF728()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[33];
  v5 = v0[23];
  v6 = v0[17];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[9];
  v11 = v0[6];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_DF84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_105460();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_105410();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_105380();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v13 = sub_1045E0();
  v3[16] = v13;
  v14 = *(v13 - 8);
  v3[17] = v14;
  v15 = *(v14 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v16 = sub_25E4(&qword_137500, &qword_107E10);
  v3[21] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v18 = sub_105E80();
  v3[29] = v18;
  v19 = *(v18 - 8);
  v3[30] = v19;
  v20 = *(v19 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v21 = sub_1053E0();
  v3[33] = v21;
  v22 = *(v21 - 8);
  v3[34] = v22;
  v23 = *(v22 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_DFBA8, 0, 0);
}

uint64_t sub_DFBA8()
{
  v359 = v0;
  v1 = v0;
  v2 = v0[36];
  v3 = v0[34];
  v4 = v1[33];
  v6 = v1[3];
  v5 = v1[4];
  sub_25E4(&qword_13A388, &unk_10B4C0);
  v7 = sub_1051F0();
  sub_105360();
  v8 = (*(v3 + 88))(v2, v4);
  if (v8 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v9 = v1[36];
    v10 = v1[32];
    v12 = v1[29];
    v11 = v1[30];
    (*(v1[34] + 96))(v9, v1[33]);
    (*(v11 + 32))(v10, v9, v12);
    if (qword_136E98 != -1)
    {
      swift_once();
    }

    v13 = sub_106D20();
    sub_135C4(v13, qword_13A9C0);
    v14 = v7;
    v15 = sub_106D10();
    v16 = sub_106FC0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *&v357 = swift_slowAlloc();
      v18 = v357;
      *v17 = 136315138;
      v19 = v14;
      v20 = [v19 description];
      v21 = v1;
      v22 = sub_106E20();
      v24 = v23;

      v25 = v22;
      v1 = v21;
      v26 = sub_722E8(v25, v24, &v357);

      *(v17 + 4) = v26;
      _os_log_impl(&dword_0, v15, v16, "Current SK intent: %s", v17, 0xCu);
      sub_2738(v18);
    }

    v27 = v1[31];
    v28 = v1[28];
    v30 = v1[16];
    v29 = v1[17];
    (*(v1[30] + 16))(v27, v1[32], v1[29]);
    v31 = type metadata accessor for AlarmNLIntent();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_B3800(v27);
    sub_B5E60(v28);
    isa = 0;
    if ((*(v29 + 48))(v28, 1, v30) != 1)
    {
      v35 = v1[28];
      v37 = v1[16];
      v36 = v1[17];
      isa = sub_104560().super.isa;
      (*(v36 + 8))(v35, v37);
    }

    [v14 setProposedTime:isa];

    v38 = sub_B5620();
    if (v38)
    {
      v39 = sub_105F80();

      if (v39)
      {
        sub_1F7B8();
        v40 = sub_105F00();
        v38 = sub_107080(v40 & 1).super.super.isa;
      }

      else
      {
        v38 = 0;
      }
    }

    [v14 setProposedMeridiemSetByUser:v38];

    sub_B2324();
    if (v126)
    {
      v127 = sub_106E10();
    }

    else
    {
      v127 = 0;
    }

    [v14 setProposedLabel:v127];

    v128 = v14;
    v129 = sub_106D10();
    v130 = sub_106FC0();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *&v357 = v132;
      *v131 = 136315138;
      v133 = v128;
      v134 = [v133 description];
      v135 = v1;
      v136 = sub_106E20();
      v138 = v137;

      v139 = v136;
      v1 = v135;
      v140 = sub_722E8(v139, v138, &v357);

      *(v131 + 4) = v140;
      _os_log_impl(&dword_0, v129, v130, "Updated SK intent: %s", v131, 0xCu);
      sub_2738(v132);
    }

    v141 = v1[32];
    v142 = v1[29];
    v143 = v1[30];
    v144 = v1[2];
    sub_1068D0();
    v357 = 0u;
    v358 = 0u;
    sub_105070();

    (*(v143 + 8))(v141, v142);
    v145 = sub_25E4(&qword_13AA98, &unk_10B4D0);
    (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
LABEL_77:
    v248 = v1[35];
    v247 = v1[36];
    v249 = v1;
    v252 = v1 + 31;
    v251 = v1[31];
    v250 = v252[1];
    v254 = v249[27];
    v253 = v249[28];
    v256 = v249[25];
    v255 = v249[26];
    v258 = v249[23];
    v257 = v249[24];
    v331 = v249[22];
    v333 = v249[20];
    v335 = v249[19];
    v337 = v249[18];
    v339 = v249[15];
    v343 = v249[14];
    v346 = v249[13];
    v349 = v249[10];
    v355 = v249[7];

    v259 = v249[1];
    goto LABEL_78;
  }

  if (v8 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v41 = v1[36];
    (*(v1[34] + 96))(v41, v1[33]);
    v351 = *(v41 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));
    v42 = sub_1053D0();
    sub_1068D0();
    v348 = v42;
    v43 = swift_dynamicCastClassUnconditional();
    v44 = [v43 proposedTime];
    if (v44)
    {
      v46 = v1[26];
      v45 = v1[27];
      v47 = v1[20];
      v49 = v1[16];
      v48 = v1[17];
      v50 = v44;
      sub_104570();

      v51 = *(v48 + 32);
      v51(v46, v47, v49);
      v52 = *(v48 + 56);
      v52(v46, 0, 1, v49);
      v51(v45, v46, v49);
      v52(v45, 0, 1, v49);
    }

    else
    {
      v146 = *(v1[17] + 56);
      v146(v1[26], 1, 1, v1[16]);
      v147 = [v43 alarmSearch];
      if (v147)
      {
        v148 = v147;
        v149 = [v147 time];

        if (v149)
        {
          v150 = v1[25];
          sub_104570();

          v151 = 0;
        }

        else
        {
          v151 = 1;
        }

        v195 = v1[27];
        v196 = v1[25];
        v146(v196, v151, 1, v1[16]);
        sub_1D68C(v196, v195);
      }

      else
      {
        v146(v1[27], 1, 1, v1[16]);
      }

      v197 = v1[26];
      if ((*(v1[17] + 48))(v197, 1, v1[16]) != 1)
      {
        sub_16F70(v197, &qword_137500, &qword_107E10);
      }
    }

    if (qword_136E98 != -1)
    {
      swift_once();
    }

    v198 = v1[27];
    v199 = v1[24];
    v200 = sub_106D20();
    sub_135C4(v200, qword_13A9C0);
    sub_E211C(v198, v199);
    v201 = sub_106D10();
    v202 = sub_106FC0();
    v203 = os_log_type_enabled(v201, v202);
    v204 = v1[24];
    if (v203)
    {
      v205 = v1[23];
      v206 = v1[21];
      v207 = swift_slowAlloc();
      v208 = v1;
      v209 = swift_slowAlloc();
      *&v357 = v209;
      *v207 = 136315138;
      sub_E211C(v204, v205);
      v210 = sub_106E30();
      v212 = v211;
      sub_16F70(v204, &qword_137500, &qword_107E10);
      v213 = sub_722E8(v210, v212, &v357);

      *(v207 + 4) = v213;
      _os_log_impl(&dword_0, v201, v202, "Proposed Time: %s", v207, 0xCu);
      sub_2738(v209);
      v1 = v208;
    }

    else
    {

      sub_16F70(v204, &qword_137500, &qword_107E10);
    }

    v214 = [v7 alarm];
    if (v214)
    {
      v215 = v214;
      v216 = [v214 identifier];

      if (v216)
      {
        sub_106E20();
      }
    }

    v217 = v1[27];
    v218 = v1[22];
    v219 = v1;
    v222 = v1 + 16;
    v221 = v1[16];
    v220 = v222[1];
    sub_106A50();
    v223 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v224 = sub_106E10();

    v225 = sub_106E10();
    v226 = [v223 initWithIdentifier:v224 displayString:v225];

    sub_1F7B8();
    v227 = sub_107090(1).super.super.isa;
    [v226 setIncludeSleepAlarm:v227];

    [v7 setAlarmSearch:v226];
    [v7 setOperation:{objc_msgSend(v43, "operation")}];
    sub_E211C(v217, v218);
    v228 = v221;
    v1 = v219;
    v229 = 0;
    if ((*(v220 + 48))(v218, 1, v228) != 1)
    {
      v230 = v219[22];
      v232 = v219[16];
      v231 = v219[17];
      v229 = sub_104560().super.isa;
      (*(v231 + 8))(v230, v232);
    }

    [v7 setProposedTime:v229];

    v233 = [v43 proposedMeridiemSetByUser];
    [v7 setProposedMeridiemSetByUser:v233];

    v234 = [v43 proposedLabel];
    [v7 setProposedLabel:v234];

    v235 = v7;
    v236 = sub_106D10();
    v237 = sub_106FC0();

    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      *v238 = 138412290;
      *(v238 + 4) = v235;
      *v239 = v235;
      v240 = v235;
      _os_log_impl(&dword_0, v236, v237, "Updated intent: %@", v238, 0xCu);
      sub_16F70(v239, &qword_137578, &unk_10B4E0);
    }

    v241 = v219[36];
    v243 = v219[29];
    v242 = v219[30];
    v244 = v219[27];
    v245 = v219[2];

    v357 = 0u;
    v358 = 0u;
    sub_105070();

    sub_16F70(v244, &qword_137500, &qword_107E10);
    v246 = sub_25E4(&qword_13AA98, &unk_10B4D0);
    (*(*(v246 - 8) + 56))(v245, 0, 1, v246);
    (*(v242 + 8))(v241, v243);
    goto LABEL_77;
  }

  if (v8 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v53 = v1[36];
    (*(v1[34] + 96))(v53, v1[33]);
    v54 = *v53;
    swift_getObjectType();
    if (sub_107000())
    {
      sub_1068D0();

      v55 = sub_87F34();
      if (v55)
      {
        v56 = v55;
        if (qword_136E98 != -1)
        {
          swift_once();
        }

        v57 = sub_106D20();
        sub_135C4(v57, qword_13A9C0);
        v58 = v7;
        v59 = sub_106D10();
        v60 = sub_106FC0();

        v328 = v1;
        v341 = v58;
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *&v357 = v62;
          *v61 = 136315138;
          v63 = v58;
          v64 = [v63 description];
          v65 = sub_106E20();
          v67 = v66;

          v68 = sub_722E8(v65, v67, &v357);

          *(v61 + 4) = v68;
          _os_log_impl(&dword_0, v59, v60, "Current SK intent: %s", v61, 0xCu);
          sub_2738(v62);
        }

        v69 = v56;
        v70 = sub_106D10();
        v71 = sub_106FC0();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *&v357 = v73;
          *v72 = 136315138;
          v74 = v69;
          v75 = [v74 description];
          v76 = sub_106E20();
          v78 = v77;

          v79 = sub_722E8(v76, v78, &v357);

          *(v72 + 4) = v79;
          _os_log_impl(&dword_0, v70, v71, "This turn of updateAlarmIntent: %s", v72, 0xCu);
          sub_2738(v73);
        }

        v1 = v328;
        v80 = [v69 proposedTime];
        if (v80)
        {
          v81 = v328[19];
          v83 = v328[16];
          v82 = v328[17];
          v84 = v80;
          sub_104570();

          v85.super.isa = sub_104560().super.isa;
          (*(v82 + 8))(v81, v83);
        }

        else
        {
          v85.super.isa = 0;
        }

        [v341 setProposedTime:v85.super.isa];

        v261 = [v69 proposedMeridiemSetByUser];
        [v341 setProposedMeridiemSetByUser:v261];

        v262 = [v69 proposedLabel];
        [v341 setProposedLabel:v262];

        v263 = v341;
        v264 = sub_106D10();
        v265 = sub_106FC0();

        if (os_log_type_enabled(v264, v265))
        {
          v266 = swift_slowAlloc();
          v344 = swift_slowAlloc();
          *&v357 = v344;
          *v266 = 136315138;
          v267 = v263;
          v268 = [v267 description];
          v269 = sub_106E20();
          v270 = v69;
          v272 = v271;

          v273 = v269;
          v1 = v328;
          v274 = sub_722E8(v273, v272, &v357);
          v69 = v270;

          *(v266 + 4) = v274;
          _os_log_impl(&dword_0, v264, v265, "Updated SK intent: %s", v266, 0xCu);
          sub_2738(v344);
        }

        v275 = v1[2];
        v357 = 0u;
        v358 = 0u;
        sub_105070();

        swift_unknownObjectRelease();
        v276 = sub_25E4(&qword_13AA98, &unk_10B4D0);
        (*(*(v276 - 8) + 56))(v275, 0, 1, v276);
        goto LABEL_77;
      }
    }

    if (qword_136E98 != -1)
    {
      swift_once();
    }

    v175 = v1[15];
    v176 = v1[11];
    v177 = v1[12];
    v178 = v1[3];
    v179 = sub_106D20();
    sub_135C4(v179, qword_13A9C0);
    (*(v177 + 16))(v175, v178, v176);
    v180 = sub_106D10();
    v181 = sub_106FB0();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = v1[35];
      v183 = v1[33];
      v184 = v1[15];
      v185 = v1[12];
      v354 = v1[11];
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      *&v357 = v187;
      *v186 = 136315138;
      sub_105360();
      v188 = sub_106E30();
      v190 = v189;
      (*(v185 + 8))(v184, v354);
      v191 = sub_722E8(v188, v190, &v357);

      *(v186 + 4) = v191;
      _os_log_impl(&dword_0, v180, v181, "Failed to parse userDialogAct to UpdateAlarmIntent: %s", v186, 0xCu);
      sub_2738(v187);
    }

    else
    {
      v192 = v1[15];
      v194 = v1[11];
      v193 = v1[12];

      (*(v193 + 8))(v192, v194);
    }

    *(v1 + 298) = 0;
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    sub_1064E0();
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
    if (v8 == enum case for Parse.uso(_:))
    {
      v86 = v1[36];
      v88 = v1[9];
      v87 = v1[10];
      v90 = v1[7];
      v89 = v1[8];
      v91 = v1[5];
      v92 = v1[6];
      (*(v1[34] + 96))(v86, v1[33]);
      (*(v88 + 32))(v87, v86, v89);
      sub_105400();
      v93 = sub_105440();
      (*(v92 + 8))(v90, v91);
      if (v93)
      {
        sub_1068D0();

        v94 = sub_87F34();
        if (v94)
        {
          v95 = v94;
          if (qword_136E98 != -1)
          {
            swift_once();
          }

          v96 = sub_106D20();
          sub_135C4(v96, qword_13A9C0);
          v97 = v7;
          v98 = sub_106D10();
          v99 = sub_106FC0();

          v342 = v97;
          v329 = v1;
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            *&v357 = v101;
            *v100 = 136315138;
            v102 = v97;
            v103 = [v102 description];
            v104 = sub_106E20();
            v106 = v105;

            v107 = sub_722E8(v104, v106, &v357);

            *(v100 + 4) = v107;
            _os_log_impl(&dword_0, v98, v99, "Current SK intent: %s", v100, 0xCu);
            sub_2738(v101);
          }

          v108 = v95;
          v109 = sub_106D10();
          v110 = sub_106FC0();

          v352 = v108;
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            *&v357 = v112;
            *v111 = 136315138;
            v113 = v108;
            v114 = [v113 description];
            v115 = sub_106E20();
            v117 = v116;

            v118 = v115;
            v108 = v352;
            v119 = sub_722E8(v118, v117, &v357);

            *(v111 + 4) = v119;
            _os_log_impl(&dword_0, v109, v110, "This turn of updateAlarmIntent: %s", v111, 0xCu);
            sub_2738(v112);
          }

          v1 = v329;
          v120 = [v108 proposedTime];
          if (v120)
          {
            v121 = v329[17];
            v122 = v329[18];
            v123 = v329[16];
            v124 = v120;
            sub_104570();

            v125.super.isa = sub_104560().super.isa;
            (*(v121 + 8))(v122, v123);
          }

          else
          {
            v125.super.isa = 0;
          }

          [v342 setProposedTime:v125.super.isa];

          v309 = [v108 proposedMeridiemSetByUser];
          [v342 setProposedMeridiemSetByUser:v309];

          v310 = [v108 proposedLabel];
          [v342 setProposedLabel:v310];

          v311 = v342;
          v312 = sub_106D10();
          v313 = sub_106FC0();

          if (os_log_type_enabled(v312, v313))
          {
            v314 = swift_slowAlloc();
            v315 = swift_slowAlloc();
            *&v357 = v315;
            *v314 = 136315138;
            v316 = v311;
            v317 = [v316 description];
            v318 = sub_106E20();
            v320 = v319;

            v321 = v318;
            v1 = v329;
            v322 = sub_722E8(v321, v320, &v357);

            *(v314 + 4) = v322;
            _os_log_impl(&dword_0, v312, v313, "Updated SK intent: %s", v314, 0xCu);
            sub_2738(v315);
          }

          v324 = v1[9];
          v323 = v1[10];
          v325 = v1[8];
          v326 = v1[2];
          v357 = 0u;
          v358 = 0u;
          sub_105070();

          (*(v324 + 8))(v323, v325);
          v327 = sub_25E4(&qword_13AA98, &unk_10B4D0);
          (*(*(v327 - 8) + 56))(v326, 0, 1, v327);
          goto LABEL_77;
        }
      }

      if (qword_136E98 != -1)
      {
        swift_once();
      }

      v277 = v1[14];
      v278 = v1[11];
      v279 = v1[12];
      v280 = v1[3];
      v281 = sub_106D20();
      sub_135C4(v281, qword_13A9C0);
      (*(v279 + 16))(v277, v280, v278);
      v282 = sub_106D10();
      v283 = sub_106FB0();
      if (os_log_type_enabled(v282, v283))
      {
        v284 = v1[35];
        v285 = v1[33];
        v286 = v1[14];
        v287 = v1[12];
        v356 = v1[11];
        v288 = swift_slowAlloc();
        v289 = swift_slowAlloc();
        *&v357 = v289;
        *v288 = 136315138;
        sub_105360();
        v290 = sub_106E30();
        v292 = v291;
        (*(v287 + 8))(v286, v356);
        v293 = sub_722E8(v290, v292, &v357);

        *(v288 + 4) = v293;
        _os_log_impl(&dword_0, v282, v283, "Failed to parse userDialogAct to UpdateAlarmIntent: %s", v288, 0xCu);
        sub_2738(v289);
      }

      else
      {
        v294 = v1[14];
        v296 = v1[11];
        v295 = v1[12];

        (*(v295 + 8))(v294, v296);
      }

      v173 = v1[9];
      v172 = v1[10];
      v174 = v1[8];
      *(v1 + 297) = 0;
      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
    }

    else
    {
      if (qword_136E98 != -1)
      {
        swift_once();
      }

      v153 = v1[12];
      v152 = v1[13];
      v154 = v1[11];
      v155 = v1[3];
      v156 = sub_106D20();
      sub_135C4(v156, qword_13A9C0);
      (*(v153 + 16))(v152, v155, v154);
      v157 = sub_106D10();
      v158 = sub_106FB0();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = v1[35];
        v160 = v1[33];
        v162 = v1[12];
        v161 = v1[13];
        v353 = v1[11];
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v357 = v164;
        *v163 = 136315138;
        sub_105360();
        v165 = sub_106E30();
        v167 = v166;
        (*(v162 + 8))(v161, v353);
        v168 = sub_722E8(v165, v167, &v357);

        *(v163 + 4) = v168;
        _os_log_impl(&dword_0, v157, v158, "Received an unsupported input: %s", v163, 0xCu);
        sub_2738(v164);
      }

      else
      {
        v170 = v1[12];
        v169 = v1[13];
        v171 = v1[11];

        (*(v170 + 8))(v169, v171);
      }

      v172 = v1[36];
      v174 = v1[33];
      v173 = v1[34];
      *(v1 + 296) = 0;
      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
    }

    sub_1064E0();
    swift_willThrow();

    (*(v173 + 8))(v172, v174);
  }

  v298 = v1[35];
  v297 = v1[36];
  v299 = v1;
  v302 = v1 + 31;
  v301 = v1[31];
  v300 = v302[1];
  v303 = v299[27];
  v304 = v299[28];
  v306 = v299[25];
  v305 = v299[26];
  v308 = v299[23];
  v307 = v299[24];
  v330 = v299[22];
  v332 = v299[20];
  v334 = v299[19];
  v336 = v299[18];
  v338 = v299[15];
  v340 = v299[14];
  v345 = v299[13];
  v347 = v299[10];
  v350 = v299[7];

  v259 = v299[1];
LABEL_78:

  return v259();
}