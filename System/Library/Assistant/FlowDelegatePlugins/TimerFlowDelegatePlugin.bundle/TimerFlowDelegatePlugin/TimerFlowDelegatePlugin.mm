uint64_t sub_21F8()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15ED98);
  sub_5B30(v0, qword_15ED98);
  return sub_1257AC();
}

uint64_t sub_2244@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  if (qword_15ED90 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_15ED98);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "CreateTimer.NeedsConfirmationStrategy.actionForInput() called)", v15, 2u);
  }

  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v18 = sub_12514C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_346FC(a1, v11, 0, v7, a2);
  sub_5CA8(v7, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v11, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_24D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_5AE8(&unk_15FF60, &unk_127BA0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_123A0C();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = *(*(sub_5AE8(&unk_161EC0, &unk_126E20) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v11 = sub_123A1C();
  v3[14] = v11;
  v12 = *(v11 - 8);
  v3[15] = v12;
  v13 = *(v12 + 64) + 15;
  v3[16] = swift_task_alloc();
  v14 = sub_123D3C();
  v3[17] = v14;
  v15 = *(v14 - 8);
  v3[18] = v15;
  v16 = *(v15 + 64) + 15;
  v3[19] = swift_task_alloc();
  v17 = sub_123D1C();
  v3[20] = v17;
  v18 = *(v17 - 8);
  v3[21] = v18;
  v19 = *(v18 + 64) + 15;
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_2768, 0, 0);
}

uint64_t sub_2768()
{
  v83 = v0;
  if (qword_15ED90 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15ED98);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "CreateTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 24);

  sub_123CCC();
  if ((*(v6 + 88))(v5, v7) == enum case for Parse.directInvocation(_:))
  {
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 104);
    (*(*(v0 + 144) + 96))(v12, *(v0 + 136));
    (*(v10 + 32))(v9, v12, v11);
    sub_12527C();
    v16 = (*(v14 + 48))(v15, 1, v13);
    v18 = *(v0 + 168);
    v17 = *(v0 + 176);
    v19 = *(v0 + 160);
    if (v16 != 1)
    {
      v51 = *(v0 + 120);
      v50 = *(v0 + 128);
      v52 = *(v0 + 112);
      v53 = *(v0 + 96);
      v54 = *(v0 + 32);
      v55 = *(v0 + 40);
      v80 = *(v0 + 16);
      (*(v51 + 32))(v50, *(v0 + 104), v52);
      (*(v51 + 16))(v53, v50, v52);
      (*(v51 + 56))(v53, 0, 1, v52);
      sub_123B4C();
      sub_1255EC();
      sub_123AEC();
      (*(v51 + 8))(v50, v52);
      (*(v18 + 8))(v17, v19);
      goto LABEL_14;
    }

    v20 = *(v0 + 104);
    (*(v18 + 8))(*(v0 + 176), *(v0 + 160));
    sub_5CA8(v20, &unk_161EC0, &unk_126E20);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  v21 = *(v0 + 88);
  v22 = *(v0 + 64);
  v23 = *(v0 + 72);
  v25 = *(v0 + 32);
  v24 = *(v0 + 40);
  sub_123B6C();
  v26 = sub_1239FC();
  v28 = v27;
  v29 = *(v23 + 8);
  v29(v21, v22);
  v30._rawValue = &off_1578D8;
  v85._countAndFlagsBits = v26;
  v85._object = v28;
  v31 = sub_12613C(v30, v85);

  if (v31 > 1)
  {
    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v38 = sub_125AAC();
    v39 = sub_125DEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 80);
      v77 = v39;
      v42 = *(v0 + 48);
      v41 = *(v0 + 56);
      v43 = *(v0 + 40);
      v73 = v43;
      v75 = *(v0 + 64);
      v44 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = v79;
      *v44 = 136315138;
      v45 = v41;
      sub_123B6C();
      v46 = sub_1239FC();
      v48 = v47;
      v29(v40, v75);
      (*(v42 + 8))(v45, v73);
      v49 = sub_8530(v46, v48, &v82);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_0, v38, v77, "Received unsupported parameter name: %s", v44, 0xCu);
      sub_5BB0(v79);
    }

    else
    {
      v66 = *(v0 + 48);
      v65 = *(v0 + 56);
      v67 = *(v0 + 40);

      (*(v66 + 8))(v65, v67);
    }

    v68 = *(v0 + 176);
    v69 = *(v0 + 152);
    v70 = *(v0 + 128);
    v71 = *(v0 + 104);
    v74 = *(v0 + 88);
    v76 = *(v0 + 96);
    v78 = *(v0 + 80);
    v81 = *(v0 + 56);
    *(v0 + 184) = 0;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    v64 = *(v0 + 8);
    goto LABEL_17;
  }

  v32 = *(v0 + 112);
  v33 = *(v0 + 120);
  v34 = *(v0 + 96);
  v35 = *(v0 + 32);
  v36 = *(v0 + 40);
  v37 = *(v0 + 16);
  (*(v33 + 104))(v34, enum case for ConfirmationResponse.confirmed(_:), v32);
  (*(v33 + 56))(v34, 0, 1, v32);
  sub_123B4C();
  sub_1255EC();
  sub_123AEC();
LABEL_14:
  v56 = *(v0 + 176);
  v57 = *(v0 + 152);
  v58 = *(v0 + 128);
  v60 = *(v0 + 96);
  v59 = *(v0 + 104);
  v62 = *(v0 + 80);
  v61 = *(v0 + 88);
  v63 = *(v0 + 56);

  v64 = *(v0 + 8);
LABEL_17:

  return v64();
}

uint64_t sub_2E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a1;
  v3[9] = a3;
  v4 = sub_12392C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(sub_5AE8(&unk_162190, &unk_128500) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v9 = sub_125ABC();
  v3[16] = v9;
  v10 = *(v9 - 8);
  v3[17] = v10;
  v11 = *(v10 + 64) + 15;
  v3[18] = swift_task_alloc();
  v12 = sub_124FFC();
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();
  v15 = sub_12501C();
  v3[22] = v15;
  v16 = *(v15 - 8);
  v3[23] = v16;
  v17 = *(v16 + 64) + 15;
  v3[24] = swift_task_alloc();
  v18 = sub_123A0C();
  v3[25] = v18;
  v19 = *(v18 - 8);
  v3[26] = v19;
  v20 = *(v19 + 64) + 15;
  v3[27] = swift_task_alloc();
  v21 = sub_12368C();
  v3[28] = v21;
  v22 = *(v21 - 8);
  v3[29] = v22;
  v23 = *(v22 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_3148, 0, 0);
}

uint64_t sub_3148()
{
  v47 = v0;
  if (qword_15ED90 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[16], qword_15ED98);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "CreateTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  v5 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[9];

  sub_12362C();
  sub_5AE8(&unk_15FF60, &unk_127BA0);
  sub_123B6C();
  v10 = sub_1239FC();
  v12 = v11;
  (*(v7 + 8))(v6, v8);

  v13 = sub_125AAC();
  v14 = sub_125DFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v46 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_8530(v10, v12, &v46);
    _os_log_impl(&dword_0, v13, v14, "Parameter name: %s", v15, 0xCu);
    sub_5BB0(v16);
  }

  v17 = v0[24];
  v18 = v0[18];
  v19 = v0[16];
  v20 = v0[17];
  (*(v0[20] + 104))(v0[21], enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v0[19]);
  (*(v20 + 16))(v18, v1, v19);
  mach_absolute_time();
  sub_12502C();

  v21._rawValue = &off_1578D8;
  v49._countAndFlagsBits = v10;
  v49._object = v12;
  v22 = sub_12613C(v21, v49);

  if (v22)
  {

    if (v22 == 1)
    {
      if (qword_15EE10 != -1)
      {
        swift_once();
      }

      v23 = v0[9];
      v24 = sub_123B4C();
      v25 = [v24 label];

      if (v25)
      {
        v26 = v0[14];
        sub_125E0C();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      v41 = v0[14];
      v42 = sub_124E4C();
      (*(*(v42 - 8) + 56))(v41, v27, 1, v42);
      v43 = swift_task_alloc();
      v0[34] = v43;
      *v43 = v0;
      v43[1] = sub_3A60;
      v44 = v0[14];

      return sub_8E4D8(v44);
    }

    else
    {
      v33 = sub_125AAC();
      v34 = sub_125DEC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "Parameter name or type is not supported.", v35, 2u);
      }

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v36 = sub_124EAC();
      sub_12524C();
      sub_12523C();
      sub_12522C();

      v37 = sub_124E9C();
      v0[39] = v37;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v38 = swift_allocObject();
      *(v38 + 32) = 0x656369766564;
      *(v38 + 40) = 0xE600000000000000;
      *(v38 + 72) = v36;
      v39 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v45 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v0[40] = v38;
      *(v38 + 16) = xmmword_126CB0;
      *(v38 + 48) = v37;

      v40 = swift_task_alloc();
      v0[41] = v40;
      *v40 = v0;
      v40[1] = sub_3F08;

      return v45(0xD000000000000011, 0x800000000012C010, v38);
    }
  }

  else
  {
    if (qword_15EE10 != -1)
    {
      swift_once();
    }

    v28 = v0[15];
    sub_125BCC();

    v29 = sub_124E4C();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    v30 = swift_task_alloc();
    v0[32] = v30;
    *v30 = v0;
    v30[1] = sub_3840;
    v31 = v0[15];

    return sub_8E8B8(v31);
  }
}

uint64_t sub_3840(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[32];
  v6 = v3[15];
  v9 = *v2;
  v4[33] = v1;

  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  if (v1)
  {
    v7 = sub_45E8;
  }

  else
  {
    v7 = sub_3988;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_3988()
{
  v1 = v0[3];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v0[36] = v1;
  (*(v4 + 56))(v2, 1, 1, v3);
  v1;
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_3C80;
  v6 = v0[24];
  v7 = v0[13];
  v8 = v0[8];

  return sub_F2BE4(v8, 1, v7, v6);
}

uint64_t sub_3A60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[34];
  v6 = v3[14];
  v9 = *v2;
  v4[35] = v1;

  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  if (v1)
  {
    v7 = sub_47AC;
  }

  else
  {
    v7 = sub_3BA8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_3BA8()
{
  v1 = v0[6];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v0[36] = v1;
  (*(v4 + 56))(v2, 1, 1, v3);
  v1;
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_3C80;
  v6 = v0[24];
  v7 = v0[13];
  v8 = v0[8];

  return sub_F2BE4(v8, 1, v7, v6);
}

uint64_t sub_3C80()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 304) = v0;

  sub_5CA8(v4, &unk_162190, &unk_128500);

  if (v0)
  {
    v5 = sub_4970;
  }

  else
  {
    v5 = sub_3DE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3DE0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 112);
  v11 = *(v0 + 104);
  v12 = *(v0 + 96);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  (*(v4 + 8))(v2, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_3F08(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v7 = *(v3 + 320);

  if (v1)
  {
    v8 = sub_42FC;
  }

  else
  {
    v8 = sub_4044;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_4044()
{
  v1 = v0[39];
  v2 = v0[30];
  v3 = v0[12];

  sub_12364C();
  sub_12391C();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_4110;
  v6 = v0[42];
  v7 = v0[30];
  v8 = v0[24];
  v9 = v0[12];
  v10 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v7, v9, v8, 0);
}

uint64_t sub_4110()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  v7 = *(v2 + 224);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  v10 = *(v2 + 80);

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v11 = sub_4B3C;
  }

  else
  {
    v11 = sub_44C8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_42FC()
{
  v1 = v0[39];

  v2 = v0[43];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v8 = v0[30];
  v9 = v0[27];
  v10 = v0[21];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[12];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_44C8()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_45E8()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v14 = v0[12];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_47AC()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v14 = v0[12];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_4970()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);
  v9 = *(v0 + 168);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  v12 = *(v0 + 112);
  v13 = *(v0 + 104);
  v14 = *(v0 + 96);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_4B3C()
{
  v1 = v0[45];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v14 = v0[12];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_4D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_24D8(a1, a2, a3);
}

uint64_t sub_4DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = _s25NeedsConfirmationStrategyCMa();
  *v9 = v4;
  v9[1] = sub_4EA0;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_4EA0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_4F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_503C;

  return sub_2E34(a1, v6, a3);
}

uint64_t sub_503C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = _s25NeedsConfirmationStrategyCMa();
  *v11 = v5;
  v11[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t sub_51FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = _s25NeedsConfirmationStrategyCMa();
  *v11 = v5;
  v11[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t sub_52C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = _s25NeedsConfirmationStrategyCMa();
  *v9 = v4;
  v9[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = _s25NeedsConfirmationStrategyCMa();
  *v9 = v4;
  v9[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_5450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = _s25NeedsConfirmationStrategyCMa();
  *v13 = v6;
  v13[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = _s25NeedsConfirmationStrategyCMa();
  *v13 = v6;
  v13[1] = sub_5D08;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_5608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = _s25NeedsConfirmationStrategyCMa();
  *v15 = v7;
  v15[1] = sub_5D08;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_594C(void (*a1)(void), uint64_t (*a2)(char *, void))
{
  v4 = sub_124EDC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0);
  sub_124ECC();
  return a2(v7, 0);
}

uint64_t sub_59F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

unint64_t sub_5A94()
{
  result = qword_15F160;
  if (!qword_15F160)
  {
    _s25NeedsConfirmationStrategyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F160);
  }

  return result;
}

uint64_t sub_5AE8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_5B30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5B68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5BB0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_5BFC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_5C60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5CA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5AE8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for ResetTimerCATsSimple()
{
  result = qword_15F580;
  if (!qword_15F580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5D9C(uint64_t a1, uint64_t a2)
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

uint64_t sub_5F24(uint64_t a1, uint64_t a2)
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

uint64_t sub_6034()
{
  sub_124E8C();

  return swift_deallocClassInstance();
}

uint64_t sub_606C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_60DC(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6144(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x6970756F72476F6ELL;
  v4 = a1;
  v5 = 0x61727544656D6173;
  v6 = 0xEC0000006E6F6974;
  if (a1 == 5)
  {
    v5 = 0x65737561506C6C61;
    v6 = 0xE900000000000064;
  }

  v7 = 0x69766544656D6173;
  if (a1 == 3)
  {
    v8 = 0xEA00000000006563;
  }

  else
  {
    v7 = 0x696E6E75526C6C61;
    v8 = 0xEA0000000000676ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6562614C656D6173;
  v10 = 0xE90000000000006CLL;
  if (a1 != 1)
  {
    v9 = 0x6D6F6F52656D6173;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x6970756F72476F6ELL;
    v10 = 0xEA0000000000676ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE90000000000006CLL;
        if (v11 != 0x6562614C656D6173)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6D6F6F52656D6173)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x65737561506C6C61)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEC0000006E6F6974;
        if (v11 != 0x61727544656D6173)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xEA00000000006563;
      if (v11 != 0x69766544656D6173)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x696E6E75526C6C61;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1261BC();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_637C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x53736574756E696DLL;
    }

    else
    {
      v4 = 0xD000000000000020;
    }

    if (v3 == 2)
    {
      v5 = 0xEE0073646E6F6365;
    }

    else
    {
      v5 = 0x800000000012C180;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73646E6F636573;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0x53736574756E696DLL;
  v7 = 0x800000000012C180;
  if (a2 == 2)
  {
    v7 = 0xEE0073646E6F6365;
  }

  else
  {
    v6 = 0xD000000000000020;
  }

  if (a2)
  {
    v2 = 0x73646E6F636573;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1261BC();
  }

  return v10 & 1;
}

uint64_t sub_64D8()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F5D8);
  sub_5B30(v0, qword_15F5D8);
  return sub_12578C();
}

uint64_t static TimerResponseDisambiguationUtils.parsePromptResult<A>(input:items:intentType:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1252AC();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_123D1C();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = sub_123DAC();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v12 = sub_123D6C();
  v2[20] = v12;
  v13 = *(v12 - 8);
  v2[21] = v13;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();
  v15 = *(*(type metadata accessor for TimerNLv3Intent() - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v16 = sub_123D3C();
  v2[24] = v16;
  v17 = *(v16 - 8);
  v2[25] = v17;
  v18 = *(v17 + 64) + 15;
  v2[26] = swift_task_alloc();
  v19 = sub_124BCC();
  v2[27] = v19;
  v20 = *(v19 - 8);
  v2[28] = v20;
  v21 = *(v20 + 64) + 15;
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_67E8, 0, 0);
}

uint64_t sub_67E8()
{
  v167 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 64);
  sub_123CCC();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(*(v0 + 200) + 96))(*(v0 + 208), *(v0 + 192));
LABEL_5:
    v8 = *(v0 + 232);
    v9 = *(v0 + 216);
    v10 = *(v0 + 184);
    v11 = *(v0 + 72);
    v12 = *(*(v0 + 224) + 32);
    v12(v8, *(v0 + 208), v9);
    v12(v10, v8, v9);
    v13 = sub_E113C();
    v14 = sub_E18C8();
    v15 = sub_9070(v13, v11, v14 & 1);

    sub_97EC(v10);
    goto LABEL_6;
  }

  if (v5 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v6 = *(v0 + 208);
    (*(*(v0 + 200) + 96))(v6, *(v0 + 192));
    v7 = *(v6 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

    goto LABEL_5;
  }

  if (v5 != enum case for Parse.directInvocation(_:))
  {
    if (v5 == enum case for Parse.NLv4IntentOnly(_:))
    {
      v59 = *(v0 + 208);
      (*(*(v0 + 200) + 96))(v59, *(v0 + 192));
      v60 = *v59;
      swift_getObjectType();
      if (SIRINLUUserDialogAct.firstUsoTask.getter())
      {
        v61 = sub_93FC();
        if (v61)
        {
          v62 = v61;
          sub_5AE8(&qword_160810, &unk_127420);
          v15 = swift_allocObject();
          *(v15 + 1) = xmmword_126EB0;
          v15[4] = v62;
LABEL_72:

          swift_unknownObjectRelease();
          goto LABEL_6;
        }
      }

      if (!SIRINLUUserDialogAct.firstUsoTask.getter())
      {
        swift_unknownObjectRelease();
        goto LABEL_86;
      }

      if (sub_C5BD0())
      {
        sub_1257EC();

        v111 = sub_113084(v110);
        if (qword_15EDB0 != -1)
        {
          swift_once();
        }

        v112 = sub_125ABC();
        sub_5B30(v112, qword_15F5D8);
        v113 = v111;
        v114 = sub_125AAC();
        v115 = sub_125DFC();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v166[0] = v159;
          *v116 = 136315138;
          v164 = v113;
          v117 = v113;
          v118 = [v117 description];
          v119 = sub_125B9C();
          v156 = v115;
          v121 = v120;

          v113 = v164;
          v122 = sub_8530(v119, v121, v166);

          *(v116 + 4) = v122;
          _os_log_impl(&dword_0, v114, v156, "Converted timer from UsoEntity_common_Timer: %s", v116, 0xCu);
          sub_5BB0(v159);
        }

        v123 = *(v0 + 72);
        sub_8BAC();
        isa = UsoEntity_common_Timer.isMultiple.getter().super.super.isa;
        v125 = sub_125EEC(1).super.super.isa;
        v126 = sub_125F0C();

        v15 = sub_9070(v113, v123, v126 & 1);

        goto LABEL_72;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (v5 != enum case for Parse.uso(_:))
      {
        if (qword_15EDB0 != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_52;
      }

      v63 = *(v0 + 208);
      v65 = *(v0 + 168);
      v64 = *(v0 + 176);
      v67 = *(v0 + 152);
      v66 = *(v0 + 160);
      v68 = *(v0 + 128);
      v69 = *(v0 + 136);
      (*(*(v0 + 200) + 96))(v63, *(v0 + 192));
      (*(v65 + 32))(v64, v63, v66);
      sub_123D5C();
      v70 = sub_123D8C();
      v71 = *(v69 + 8);
      v71(v67, v68);
      if (v70)
      {
        v72 = sub_93FC();
        if (v72)
        {
          v73 = v72;
          v75 = *(v0 + 168);
          v74 = *(v0 + 176);
          v76 = *(v0 + 160);
          sub_5AE8(&qword_160810, &unk_127420);
          v15 = swift_allocObject();
          *(v15 + 1) = xmmword_126EB0;
          v15[4] = v73;

          (*(v75 + 8))(v74, v76);
          goto LABEL_6;
        }
      }

      v127 = *(v0 + 176);
      v128 = *(v0 + 144);
      v129 = *(v0 + 128);
      sub_123D5C();
      v130 = sub_123D8C();
      v71(v128, v129);
      if (!v130)
      {
        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
        goto LABEL_86;
      }

      if (sub_C5BD0())
      {
        sub_1257EC();

        v132 = sub_113084(v131);
        if (qword_15EDB0 != -1)
        {
          swift_once();
        }

        v133 = sub_125ABC();
        sub_5B30(v133, qword_15F5D8);
        v134 = v132;
        v135 = sub_125AAC();
        v136 = sub_125DFC();

        v165 = v134;
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v166[0] = v160;
          *v137 = 136315138;
          v138 = v134;
          v139 = [v138 description];
          v140 = sub_125B9C();
          v142 = v141;

          v143 = sub_8530(v140, v142, v166);

          *(v137 + 4) = v143;
          _os_log_impl(&dword_0, v135, v136, "Converted timer from UsoEntity_common_Timer: %s", v137, 0xCu);
          sub_5BB0(v160);
        }

        v144 = *(v0 + 168);
        v161 = *(v0 + 176);
        v145 = *(v0 + 160);
        v146 = *(v0 + 72);
        sub_8BAC();
        v147 = UsoEntity_common_Timer.isMultiple.getter().super.super.isa;
        v148 = sub_125EEC(1).super.super.isa;
        v149 = sub_125F0C();

        v15 = sub_9070(v165, v146, v149 & 1);

        (*(v144 + 8))(v161, v145);
        goto LABEL_6;
      }

      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    }

    goto LABEL_86;
  }

  v26 = *(v0 + 208);
  v28 = *(v0 + 112);
  v27 = *(v0 + 120);
  v29 = *(v0 + 104);
  (*(*(v0 + 200) + 96))(v26, *(v0 + 192));
  (*(v28 + 32))(v27, v26, v29);
  if (qword_15EDB0 != -1)
  {
    swift_once();
  }

  v30 = sub_125ABC();
  sub_5B30(v30, qword_15F5D8);
  v31 = sub_125AAC();
  v32 = sub_125DFC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "Received directInvocation in ResponseSimpleDisambiguationStrategy.parseDisambiguationResult", v33, 2u);
  }

  v34 = *(v0 + 120);

  v35 = sub_123D0C();
  if (!v35)
  {
    goto LABEL_57;
  }

  v36 = v35;
  v38 = *(v0 + 88);
  v37 = *(v0 + 96);
  v39 = *(v0 + 80);
  (*(v38 + 104))(v37, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v39);
  v40 = sub_12529C();
  v42 = v41;
  (*(v38 + 8))(v37, v39);
  if (!*(v36 + 16))
  {

    goto LABEL_56;
  }

  v43 = sub_8AD8(v40, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_56:

LABEL_57:
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_58;
  }

  sub_8B50(*(v36 + 56) + 32 * v43, v0 + 16);

  if (!*(v0 + 40))
  {
LABEL_58:
    sub_5CA8(v0 + 16, &unk_161840, &qword_128110);
    goto LABEL_59;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    v98 = sub_125AAC();
    v99 = sub_125DEC();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_0, v98, v99, "There's no timerId in direct invocation", v100, 2u);
    }

    v101 = *(v0 + 232);
    v102 = *(v0 + 208);
    v103 = *(v0 + 176);
    v104 = *(v0 + 184);
    v155 = *(v0 + 152);
    v158 = *(v0 + 144);
    v106 = *(v0 + 112);
    v105 = *(v0 + 120);
    v107 = *(v0 + 104);
    v163 = *(v0 + 96);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v108 = 0;
    swift_willThrow();
    (*(v106 + 8))(v105, v107);

    v109 = *(v0 + 8);

    return v109();
  }

  v46 = *(v0 + 48);
  v47 = *(v0 + 56);
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {
    v150 = *(v0 + 56);

    goto LABEL_59;
  }

  v49 = *(v0 + 56);

  v50 = sub_125AAC();
  v51 = sub_125DDC();

  v154 = v46;
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v166[0] = v53;
    *v52 = 136315138;

    v54 = sub_8530(v46, v47, v166);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_0, v50, v51, "Direct invocation timer ID: %s", v52, 0xCu);
    sub_5BB0(v53);
  }

  v55 = *(v0 + 72);
  v166[0] = _swiftEmptyArrayStorage;
  if (v55 >> 62)
  {
    v56 = sub_1260FC();
    if (v56)
    {
      goto LABEL_26;
    }

LABEL_93:
    v15 = _swiftEmptyArrayStorage;
LABEL_94:
    v151 = *(v0 + 112);
    v152 = *(v0 + 120);
    v153 = *(v0 + 104);

    (*(v151 + 8))(v152, v153);
    goto LABEL_6;
  }

  v56 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
  if (!v56)
  {
    goto LABEL_93;
  }

LABEL_26:
  v57 = 0;
  v157 = v55 & 0xFFFFFFFFFFFFFF8;
  v162 = v55 & 0xC000000000000001;
  v58 = *(v0 + 72) + 32;
  while (1)
  {
    if (v162)
    {
      v90 = *(v0 + 72);
      v77 = sub_125FFC();
    }

    else
    {
      if (v57 >= *(v157 + 16))
      {
        goto LABEL_90;
      }

      v77 = *(v58 + 8 * v57);
    }

    v78 = v77;
    v79 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    v80 = [v77 identifier];
    if (v80)
    {
      v81 = v80;
      v82 = v47;
      v83 = sub_125B9C();
      v85 = v84;

      v86 = v83;
      v47 = v82;
      if (v86 == v154 && v85 == v82)
      {

LABEL_49:
        sub_12603C();
        v89 = *(v166[0] + 16);
        sub_12607C();
        sub_12608C();
        sub_12604C();
        goto LABEL_36;
      }

      v88 = sub_1261BC();

      if (v88)
      {
        goto LABEL_49;
      }
    }

LABEL_36:
    ++v57;
    if (v79 == v56)
    {
      v15 = v166[0];
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  swift_once();
LABEL_52:
  v91 = sub_125ABC();
  sub_5B30(v91, qword_15F5D8);
  v92 = sub_125AAC();
  v93 = sub_125DEC();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_0, v92, v93, "Unhandled unknown case", v94, 2u);
  }

  v96 = *(v0 + 200);
  v95 = *(v0 + 208);
  v97 = *(v0 + 192);

  (*(v96 + 8))(v95, v97);
LABEL_86:
  v15 = 0;
LABEL_6:
  v16 = *(v0 + 232);
  v17 = *(v0 + 208);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v22 = *(v0 + 120);
  v23 = *(v0 + 96);

  v24 = *(v0 + 8);

  return v24(v15);
}

uint64_t static TimerResponseDisambiguationUtils.determineWindowInputType(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_123CDC();
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  __chkstk_darwin(v3);
  v98 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1252AC();
  v102 = *(v6 - 8);
  v103 = v6;
  v7 = *(v102 + 64);
  __chkstk_darwin(v6);
  v101 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_123D1C();
  v105 = *(v9 - 1);
  v106 = v9;
  v10 = *(v105 + 64);
  __chkstk_darwin(v9);
  v104 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_123DAC();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  __chkstk_darwin(v12);
  v93 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_123D6C();
  v94 = *(v95 - 8);
  v15 = *(v94 + 64);
  __chkstk_darwin(v95);
  v92 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for TimerNLv3Intent();
  v17 = *(*(v107 - 8) + 64);
  v18 = __chkstk_darwin(v107);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v91 - v21;
  v23 = sub_123D3C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  __chkstk_darwin(v26);
  v28 = (&v91 - v27);
  v29 = sub_124BCC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  v34 = (*(v24 + 88))(v28, v23);
  if (v34 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v24 + 96))(v28, v23);
    goto LABEL_5;
  }

  if (v34 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v24 + 96))(v28, v23);
    v35 = *(v28 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

LABEL_5:
    v36 = *(v30 + 32);
    v36(v33, v28, v29);
    v36(v22, v33, v29);
    if (qword_15EDB0 != -1)
    {
      swift_once();
    }

    v37 = sub_125ABC();
    sub_5B30(v37, qword_15F5D8);
    sub_9848(v22, v20);
    v38 = sub_125AAC();
    v39 = sub_125DFC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v111 = v41;
      *v40 = 136315138;
      sub_98AC(&qword_161ED0);
      v42 = sub_12618C();
      v44 = v43;
      sub_97EC(v20);
      v45 = sub_8530(v42, v44, &v111);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "TimerDisambiguation.determineInputType(input:) TimerNLIntent: %s", v40, 0xCu);
      sub_5BB0(v41);
    }

    else
    {

      sub_97EC(v20);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_98AC(&qword_15FFA0);
    sub_12428C();
    if (v111 > 1u)
    {
      if (v111 == 2)
      {
        sub_123C7C();
        return sub_97EC(v22);
      }
    }

    else if (v111)
    {
      sub_123C5C();
      return sub_97EC(v22);
    }

    sub_123C6C();
    return sub_97EC(v22);
  }

  if (v34 != enum case for Parse.directInvocation(_:))
  {
    if (v34 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v24 + 96))(v28, v23);
      v73 = *v28;
      sub_12534C();
      return swift_unknownObjectRelease();
    }

    if (v34 == enum case for Parse.uso(_:))
    {
      (*(v24 + 96))(v28, v23);
      v74 = v94;
      v75 = v92;
      v76 = v95;
      (*(v94 + 32))(v92, v28, v95);
      v77 = v93;
      sub_123D5C();
      sub_123D9C();
      (*(v96 + 8))(v77, v97);
      sub_12533C();

      return (*(v74 + 8))(v75, v76);
    }

    if (qword_15EDB0 != -1)
    {
      swift_once();
    }

    v78 = sub_125ABC();
    sub_5B30(v78, qword_15F5D8);
    v80 = v98;
    v79 = v99;
    v81 = v100;
    (*(v99 + 16))(v98, a1, v100);
    v82 = sub_125AAC();
    v83 = sub_125DEC();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      LODWORD(v107) = v83;
      v85 = v80;
      v86 = v84;
      v106 = swift_slowAlloc();
      *&v111 = v106;
      *v86 = 136315138;
      sub_123CCC();
      v87 = sub_125BAC();
      v89 = v88;
      (*(v79 + 8))(v85, v81);
      v90 = sub_8530(v87, v89, &v111);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_0, v82, v107, "TimerDisambiguation.determineInputType(input:) Received an unsupported parse for disambiguation window prompt: %s", v86, 0xCu);
      sub_5BB0(v106);
    }

    else
    {

      (*(v79 + 8))(v80, v81);
    }

    (*(v24 + 8))(v28, v23);
    return sub_123C4C();
  }

  (*(v24 + 96))(v28, v23);
  v48 = v104;
  v47 = v105;
  v49 = v106;
  (*(v105 + 32))(v104, v28, v106);
  if (qword_15EDB0 != -1)
  {
    swift_once();
  }

  v50 = sub_125ABC();
  sub_5B30(v50, qword_15F5D8);
  v51 = sub_125AAC();
  v52 = sub_125DFC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "TimerDisambiguation.determineInputType(input:) Received directInvocation", v53, 2u);
  }

  v54 = sub_123D0C();
  if (!v54)
  {
    (*(v47 + 8))(v48, v49);
    v111 = 0u;
    v112 = 0u;
LABEL_46:
    sub_5CA8(&v111, &unk_161840, &qword_128110);
    return sub_123C4C();
  }

  v55 = v54;
  v57 = v101;
  v56 = v102;
  v58 = v103;
  (*(v102 + 104))(v101, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v103);
  v59 = sub_12529C();
  v61 = v60;
  (*(v56 + 8))(v57, v58);
  if (!*(v55 + 16))
  {

    goto LABEL_44;
  }

  v62 = sub_8AD8(v59, v61);
  v64 = v63;

  if ((v64 & 1) == 0)
  {
LABEL_44:

    v111 = 0u;
    v112 = 0u;
    goto LABEL_45;
  }

  sub_8B50(*(v55 + 56) + 32 * v62, &v111);

  if (!*(&v112 + 1))
  {
LABEL_45:
    (*(v47 + 8))(v48, v49);
    goto LABEL_46;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v47 + 8))(v48, v49);
    return sub_123C4C();
  }

  v66 = v109;
  v65 = v110;
  v67 = HIBYTE(v110) & 0xF;
  if ((v110 & 0x2000000000000000) == 0)
  {
    v67 = v109 & 0xFFFFFFFFFFFFLL;
  }

  if (!v67)
  {
    (*(v47 + 8))(v48, v49);

    return sub_123C4C();
  }

  v68 = sub_125AAC();
  v69 = sub_125DDC();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v111 = v71;
    *v70 = 136315138;
    v72 = sub_8530(v66, v65, &v111);

    *(v70 + 4) = v72;
    _os_log_impl(&dword_0, v68, v69, "TimerDisambiguation.determineInputType(input:) Direct invocation Timer ID: %s", v70, 0xCu);
    sub_5BB0(v71);
  }

  else
  {
  }

  sub_123C6C();
  return (*(v47 + 8))(v48, v49);
}

unint64_t sub_84CC()
{
  result = qword_15FF70;
  if (!qword_15FF70)
  {
    sub_5B68(&unk_15F1A0, &unk_126ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15FF70);
  }

  return result;
}

uint64_t sub_8530(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_85FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_8B50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5BB0(v11);
  return v7;
}

unint64_t sub_85FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_8708(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_12601C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_8708(uint64_t a1, unint64_t a2)
{
  v4 = sub_8754(a1, a2);
  sub_8884(&off_157928);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_8754(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_8970(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_12601C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_125C1C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_8970(v10, 0);
        result = sub_125FDC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_8884(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_89E4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_8970(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_5AE8(&qword_15F5F8, &unk_126F20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_89E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_5AE8(&qword_15F5F8, &unk_126F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_8AD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_12626C();
  sub_125BFC();
  v6 = sub_12628C();

  return sub_8D38(a1, a2, v6);
}

uint64_t sub_8B50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_8BAC()
{
  result = qword_160620;
  if (!qword_160620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_160620);
  }

  return result;
}

unint64_t sub_8BF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_125F9C(*(v2 + 40));

  return sub_8DF0(a1, v4);
}

unint64_t sub_8C3C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_12626C();
  sub_125BFC();

  v4 = sub_12628C();

  return sub_8EB8(a1, v4);
}

unint64_t sub_8D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1261BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_8DF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_9900(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_125FAC();
      sub_995C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_8EB8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      v7 = v6 == 2 ? 0x53736574756E696DLL : 0xD000000000000020;
      v8 = v6 == 2 ? 0xEE0073646E6F6365 : 0x800000000012C180;
      v9 = *(*(v21 + 48) + v4) ? 0x73646E6F636573 : 0x746C7561666564;
      v10 = *(*(v21 + 48) + v4) <= 1u ? v9 : v7;
      v11 = *(*(v21 + 48) + v4) <= 1u ? 0xE700000000000000 : v8;
      v12 = v5 == 2 ? 0x53736574756E696DLL : 0xD000000000000020;
      v13 = v5 == 2 ? 0xEE0073646E6F6365 : 0x800000000012C180;
      v14 = v5 ? 0x73646E6F636573 : 0x746C7561666564;
      v15 = v5 <= 1 ? v14 : v12;
      v16 = v5 <= 1 ? 0xE700000000000000 : v13;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = sub_1261BC();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id *sub_9070(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62)
  {
LABEL_17:
    v11 = a3;
    v12 = sub_1260FC();
    a3 = v11;
    v4 = v12;
    if (v12)
    {
LABEL_3:
      v25 = a3;
      v5 = 0;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v6 = sub_125FFC();
        }

        else
        {
          if (v5 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_16;
          }

          v6 = *(a2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (sub_1257DC())
        {
          sub_12603C();
          v9 = _swiftEmptyArrayStorage[2];
          sub_12607C();
          sub_12608C();
          sub_12604C();
        }

        else
        {
        }

        ++v5;
      }

      while (v8 != v4);
      v10 = _swiftEmptyArrayStorage;
      LOBYTE(a3) = v25;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v10 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
    {
      v13 = _swiftEmptyArrayStorage[2];
      if (v13 < 2)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

LABEL_26:
  v19 = a3;
  v13 = sub_1260FC();
  LOBYTE(a3) = v19;
  if (v13 < 2)
  {
LABEL_27:
    if (v13 != &dword_0 + 1)
    {

      if (qword_15EDB0 != -1)
      {
        swift_once();
      }

      v21 = sub_125ABC();
      sub_5B30(v21, qword_15F5D8);
      v15 = sub_125AAC();
      v22 = sub_125DFC();
      if (!os_log_type_enabled(v15, v22))
      {
        v10 = 0;
        goto LABEL_38;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v15, v22, "Found multiple matching timers for disambiguation input. Re-prompting for input.", v23, 2u);
      v10 = 0;
      goto LABEL_37;
    }

    if (qword_15EDB0 != -1)
    {
      swift_once();
    }

    v20 = sub_125ABC();
    sub_5B30(v20, qword_15F5D8);
    v15 = sub_125AAC();
    v16 = sub_125DFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Found single matching timer for disambiguation input. Using as result.";
      goto LABEL_32;
    }

    goto LABEL_38;
  }

LABEL_21:
  if ((a3 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_15EDB0 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_15F5D8);
  v15 = sub_125AAC();
  v16 = sub_125DFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Found multiple matching timers and multiple quantifier was specified. Using filteredTimers for result.";
LABEL_32:
    _os_log_impl(&dword_0, v15, v16, v18, v17, 2u);
LABEL_37:
  }

LABEL_38:

  return v10;
}

uint64_t sub_93FC()
{
  v0 = sub_124F8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  sub_12437C();
  if (!v19)
  {
    sub_5CA8(&v18, &unk_161840, &qword_128110);
    if (qword_15EDB0 != -1)
    {
      swift_once();
    }

    v11 = sub_125ABC();
    sub_5B30(v11, qword_15F5D8);
    v12 = sub_125AAC();
    v13 = sub_125DEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "NLv4TranslationParse: Dialog act is not a UsoTask_noVerb_common_Timer or has no target, cannot support input", v14, 2u);
    }

    return 0;
  }

  sub_99B0(&v18, v20);
  sub_8B50(v20, &v18);
  sub_12459C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_5BB0(v20);
    return 0;
  }

  sub_123F3C();

  if (!v18)
  {
    sub_5BB0(v20);

    return 0;
  }

  sub_124F7C();

  sub_12408C();

  sub_124F6C();

  (*(v1 + 8))(v4, v0);
  v9 = sub_125B4C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_5BB0(v20);

    sub_5CA8(v8, &qword_15F5F0, &unk_12AAA0);
    return 0;
  }

  sub_1257EC();
  v16 = sub_125B1C();
  sub_5BB0(v20);

  (*(v10 + 8))(v8, v9);
  if (!v16)
  {
    return 0;
  }

  return v16;
}

uint64_t sub_97EC(uint64_t a1)
{
  v2 = type metadata accessor for TimerNLv3Intent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerNLv3Intent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_98AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimerNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_99B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for ResetTimerCATs_Async()
{
  result = qword_15F600;
  if (!qword_15F600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9A50(uint64_t a1, uint64_t a2)
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

uint64_t sub_9BD8()
{
  sub_124DCC();

  return swift_deallocClassInstance();
}

__n128 sub_9C10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_9C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_9C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9CC4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F650);
  sub_5B30(v0, qword_15F650);
  return sub_1257AC();
}

uint64_t sub_9D10(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_125ABC();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_124FFC();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = sub_12501C();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = sub_123D1C();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v15 = sub_12368C();
  v2[22] = v15;
  v16 = *(v15 - 8);
  v2[23] = v16;
  v17 = *(v16 + 64) + 15;
  v2[24] = swift_task_alloc();
  v18 = sub_12392C();
  v2[25] = v18;
  v19 = *(v18 - 8);
  v2[26] = v19;
  v20 = *(v19 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_9F9C, 0, 0);
}

uint64_t sub_9F9C()
{
  if (qword_15EDB8 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[10], qword_15F650);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DeleteTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v4, 2u);
  }

  v5 = v0[9];

  sub_5AE8(&qword_15F678, &qword_127088);
  v6 = sub_123A9C();
  v7 = [v6 deletedTimers];

  if (!v7)
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    v24 = v0[27];
    v25 = v0[24];
    v26 = v0[21];
    v27 = v0[18];
    v28 = v0[15];
    v29 = v0[12];

    v30 = v0[1];

    return v30();
  }

  v8 = v0[27];
  v9 = v0[24];
  sub_1257EC();
  v10 = sub_125C6C();

  sub_12391C();
  sub_12361C();
  result = sub_2BE74(v10);
  v12 = result;
  v0[28] = result;
  if (v10 >> 62)
  {
    if (sub_1260FC() == 1)
    {
      result = sub_1260FC();
      if (result)
      {
        goto LABEL_8;
      }
    }
  }

  else if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_8:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = sub_125FFC();
    }

    else
    {
      if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v13 = *(v10 + 32);
    }

    v14 = v13;

    v15 = sub_113460();
    if (v15)
    {
      v16 = v15;
      v17 = v0[27];
      v19 = v0[20];
      v18 = v0[21];
      v20 = v0[19];
      [v14 state];
      v21 = sub_1258BC();
      v22 = v21 == sub_1258BC();
      sub_CD5C(v16, v22, v18);
      sub_12386C();

      (*(v19 + 8))(v18, v20);
    }

    else
    {
    }

    goto LABEL_20;
  }

LABEL_20:
  v31 = v0[18];
  v32 = v0[12];
  v33 = v0[10];
  v34 = v0[11];
  (*(v0[14] + 104))(v0[15], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[13]);
  (*(v34 + 16))(v32, v1, v33);
  mach_absolute_time();
  sub_12502C();
  if (v12 >> 62)
  {
    if (sub_1260FC() == 1)
    {
      goto LABEL_22;
    }
  }

  else if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_22:
    if (qword_15F038 != -1)
    {
      swift_once();
    }

    v35 = swift_task_alloc();
    v0[29] = v35;
    *v35 = v0;
    v35[1] = sub_A508;

    return sub_906A8(v12);
  }

  if (qword_15F038 != -1)
  {
    swift_once();
  }

  v36 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v38 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v37 = swift_task_alloc();
  v0[31] = v37;
  *v37 = v0;
  v37[1] = sub_A700;

  return v38(0xD000000000000018, 0x800000000012C630, _swiftEmptyArrayStorage);
}

uint64_t sub_A508(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[29];
  v6 = v3[28];
  v9 = *v2;
  v4[30] = v1;

  if (v1)
  {
    v7 = sub_AC2C;
  }

  else
  {
    v7 = sub_A640;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_A640()
{
  v1 = v0[3];
  v0[33] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_A9E0;
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[18];
  v7 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v5, v4, v6, 0);
}

uint64_t sub_A700(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[31];
  v8 = *v2;
  v4[32] = v1;

  if (v1)
  {
    v6 = sub_A8DC;
  }

  else
  {
    v6 = sub_A81C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_A81C()
{
  v1 = v0[6];
  v0[33] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_A9E0;
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[18];
  v7 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v5, v4, v6, 0);
}

uint64_t sub_A8DC()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[32];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_A9E0()
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 264);
  v6 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_AD30;
  }

  else
  {
    v4 = sub_AB0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_AB0C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  v12 = *(v0 + 168);
  v13 = *(v0 + 120);
  v14 = *(v0 + 96);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_AC2C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_AD30()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 128);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 280);
  v11 = *(v0 + 216);
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);
  v14 = *(v0 + 144);
  v15 = *(v0 + 120);
  v16 = *(v0 + 96);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_AE54(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_125ABC();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_124FFC();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = sub_12501C();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v12 = *(*(sub_124EDC() - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v13 = sub_12392C();
  v2[23] = v13;
  v14 = *(v13 - 8);
  v2[24] = v14;
  v15 = *(v14 + 64) + 15;
  v2[25] = swift_task_alloc();
  v16 = sub_12368C();
  v2[26] = v16;
  v17 = *(v16 - 8);
  v2[27] = v17;
  v18 = *(v17 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_B0BC, 0, 0);
}

uint64_t sub_B0BC()
{
  if (qword_15EDB8 != -1)
  {
    swift_once();
  }

  v31 = sub_5B30(v0[13], qword_15F650);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "DeleteTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  v28 = v0[13];
  v29 = v0[21];
  v30 = v0[12];

  sub_12361C();
  sub_12391C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[30] = sub_124DBC();
  (*(v7 + 104))(v8, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v9);
  (*(v11 + 16))(v10, v31, v28);
  mach_absolute_time();
  sub_12502C();
  sub_5AE8(&qword_15F678, &qword_127088);
  v12 = sub_123A9C();
  v13 = sub_1255FC();

  if (v13 == 100)
  {
    v18 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v32 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v19 = swift_task_alloc();
    v0[34] = v19;
    *v19 = v0;
    v19[1] = sub_B6B4;
    v20 = 0x800000000012C5A0;
    v21 = 0xD000000000000012;
  }

  else
  {
    if (v13 == 101)
    {
      v14 = v0[12];
      v15 = swift_task_alloc();
      v0[31] = v15;
      *(v15 + 16) = v14;
      v16 = swift_task_alloc();
      v0[32] = v16;
      *v16 = v0;
      v16[1] = sub_B4BC;

      return sub_104D80(sub_CCEC, v15);
    }

    v23 = v0[28];
    v22 = v0[29];
    v24 = v0[26];
    v25 = v0[27];
    sub_12364C();
    (*(v25 + 8))(v22, v24);
    (*(v25 + 32))(v22, v23, v24);
    v26 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v32 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v27 = swift_task_alloc();
    v0[36] = v27;
    *v27 = v0;
    v27[1] = sub_B9B8;
    v20 = 0xEF726F7272652365;
    v21 = 0x73614272656D6974;
  }

  return v32(v21, v20, _swiftEmptyArrayStorage);
}

uint64_t sub_B4BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[32];
  v6 = v3[31];
  v9 = *v2;
  v4[33] = v1;

  if (v1)
  {
    v7 = sub_BF20;
  }

  else
  {
    v7 = sub_B5F4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_B5F4()
{
  v1 = v0[3];
  v0[38] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_BCBC;
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_B6B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[34];
  v8 = *v2;
  v4[35] = v1;

  if (v1)
  {
    v6 = sub_B890;
  }

  else
  {
    v6 = sub_B7D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B7D0()
{
  v1 = v0[6];
  v0[38] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_BCBC;
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_B890()
{
  v1 = v0[30];

  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[35];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B9B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[36];
  v8 = *v2;
  v4[37] = v1;

  if (v1)
  {
    v6 = sub_BB94;
  }

  else
  {
    v6 = sub_BAD4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_BAD4()
{
  v1 = v0[9];
  v0[38] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_BCBC;
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_BB94()
{
  v1 = v0[30];

  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[37];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_BCBC()
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v6 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_C048;
  }

  else
  {
    v4 = sub_BDE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BDE8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 224);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v14 = *(v0 + 176);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_BF20()
{
  v1 = v0[30];

  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[33];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_C048()
{
  v1 = *(v0 + 240);

  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v12 = *(v0 + 144);
  v13 = *(v0 + 120);
  v14 = *(v0 + 320);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v5);

  v10 = *(v0 + 8);

  return v10();
}

void sub_C17C(uint64_t a1)
{
  sub_5AE8(&qword_15F678, &qword_127088);
  v4 = sub_123ABC();
  sub_12561C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_503C;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C450(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_C4F8;

  return sub_9D10(a1, a2);
}

uint64_t sub_C4F8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_C62C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_C62C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_C6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C880(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_C928;

  return sub_AE54(a1, a2);
}

uint64_t sub_C928()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_CA5C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_CA5C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_CB28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_5AE8(&qword_15FFB0, &unk_1270A0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_CBC4, 0, 0);
}

uint64_t sub_CBC4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_12532C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_A85C8(v3, v1, v2);
  sub_CCF4(v2);

  v6 = v0[1];

  return v6(v5);
}

unint64_t sub_CC98()
{
  result = qword_15F668;
  if (!qword_15F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F668);
  }

  return result;
}

uint64_t sub_CCF4(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CD5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v50 = a3;
  v46 = sub_1252AC();
  v4 = *(v46 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v46);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v47 = &v40 - v9;
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = sub_1252CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_122E2C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_122E1C();
  v51 = a1;
  sub_124BDC();
  sub_E3C4();
  v20 = sub_122E0C();
  v45 = v21;

  (*(v13 + 104))(v16, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v12);
  v44 = sub_1252BC();
  v43 = v22;
  (*(v13 + 8))(v16, v12);
  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270B0;
  v24 = v4[13];
  v25 = v46;
  v24(v11, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v46);
  v26 = sub_12529C();
  v28 = v27;
  v29 = v4[1];
  v29(v11, v25);
  v41 = v29;
  *(inited + 32) = v26;
  v42 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v28;
  *(inited + 48) = 0x657461657263;
  *(inited + 56) = 0xE600000000000000;
  v30 = v47;
  v24(v47, enum case for DirectInvocationUtils.Timer.UserInfoKey.usoEntity(_:), v25);
  v31 = sub_12529C();
  v33 = v32;
  v29(v30, v25);
  *(inited + 80) = v31;
  *(inited + 88) = v33;
  *(inited + 120) = sub_5AE8(&qword_15F6C8, &qword_1270F8);
  v34 = v45;
  *(inited + 96) = v20;
  *(inited + 104) = v34;
  v35 = v48;
  v24(v48, enum case for DirectInvocationUtils.Timer.UserInfoKey.paused(_:), v25);
  sub_E41C(v20, v34);
  v36 = sub_12529C();
  v38 = v37;
  v41(v35, v25);
  *(inited + 128) = v36;
  *(inited + 136) = v38;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v49 & 1;
  sub_DBD0(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F688, &qword_1270D0);
  swift_arrayDestroy();
  sub_123CEC();
  return sub_E484(v20, v34);
}

uint64_t sub_D1F0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v35 = a4;
  v4 = sub_1252AC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v31 - v10;
  v12 = sub_1252CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for DirectInvocationUtils.Timer.URI.disambiguation(_:), v12);
  v31[2] = sub_1252BC();
  v31[1] = v17;
  (*(v13 + 8))(v16, v12);
  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270C0;
  v19 = v5[13];
  v19(v11, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v4);
  v20 = sub_12529C();
  v22 = v21;
  v23 = v5[1];
  v23(v11, v4);
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = sub_B6264(v32);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v24;
  *(inited + 56) = v25;
  v19(v9, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v4);
  v26 = sub_12529C();
  v28 = v27;
  v23(v9, v4);
  *(inited + 80) = v26;
  *(inited + 88) = v28;
  *(inited + 120) = &type metadata for String;
  v29 = v34;
  *(inited + 96) = v33;
  *(inited + 104) = v29;

  sub_DBD0(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F688, &qword_1270D0);
  swift_arrayDestroy();
  return sub_123CEC();
}

uint64_t sub_D510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v34 = a4;
  v4 = sub_1252AC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = sub_1252CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v12);
  v30[2] = sub_1252BC();
  v30[1] = v17;
  (*(v13 + 8))(v16, v12);
  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270C0;
  v19 = v5[13];
  v19(v11, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v4);
  v20 = sub_12529C();
  v22 = v21;
  v23 = v5[1];
  v23(v11, v4);
  *(inited + 32) = v20;
  *(inited + 72) = &type metadata for String;
  v24 = v31;
  *(inited + 40) = v22;
  *(inited + 48) = v24;
  *(inited + 56) = 0xE600000000000000;
  v19(v9, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v4);
  v25 = sub_12529C();
  v27 = v26;
  v23(v9, v4);
  *(inited + 80) = v25;
  *(inited + 88) = v27;
  *(inited + 120) = &type metadata for String;
  v28 = v33;
  *(inited + 96) = v32;
  *(inited + 104) = v28;

  sub_DBD0(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F688, &qword_1270D0);
  swift_arrayDestroy();
  return sub_123CEC();
}

uint64_t sub_D80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v39 = a2;
  v38 = a1;
  v40 = a3;
  v5 = sub_1252AC();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v37 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v36 - v11;
  __chkstk_darwin(v10);
  v14 = v36 - v13;
  v15 = sub_1252CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v15);
  v36[2] = sub_1252BC();
  v36[1] = v20;
  (*(v16 + 8))(v19, v15);
  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270B0;
  v22 = v6[13];
  v22(v14, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v5);
  v23 = sub_12529C();
  v25 = v24;
  v26 = v6[1];
  v26(v14, v5);
  *(inited + 32) = v23;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v25;
  *(inited + 48) = 0x6573756170;
  *(inited + 56) = 0xE500000000000000;
  v22(v12, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v5);
  v27 = sub_12529C();
  v29 = v28;
  v26(v12, v5);
  *(inited + 80) = v27;
  *(inited + 88) = v29;
  *(inited + 120) = &type metadata for String;
  v30 = v39;
  *(inited + 96) = v38;
  *(inited + 104) = v30;
  v31 = v37;
  v22(v37, enum case for DirectInvocationUtils.Timer.UserInfoKey.duration(_:), v5);

  v32 = sub_12529C();
  v34 = v33;
  v26(v31, v5);
  *(inited + 128) = v32;
  *(inited + 136) = v34;
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = a4;
  sub_DBD0(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F688, &qword_1270D0);
  swift_arrayDestroy();
  return sub_123CEC();
}

unint64_t sub_DBD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5AE8(&qword_15F690, &qword_1270D8);
    v3 = sub_12612C();
    v4 = a1 + 32;

    while (1)
    {
      sub_E344(v4, &v13, &qword_15F688, &qword_1270D0);
      v5 = v13;
      v6 = v14;
      result = sub_8AD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_99B0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_DD00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5AE8(&qword_15F6A8, &unk_129D30);
    v3 = sub_12612C();
    v4 = a1 + 32;

    while (1)
    {
      sub_E344(v4, v13, &qword_15F6A0, &qword_1270E8);
      result = sub_8BF8(v13);
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
      result = sub_99B0(&v15, (v3[7] + 32 * result));
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

id sub_DE3C(int a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v35 = a1;
  v3 = sub_1252AC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_1252CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for DirectInvocationUtils.Timer.URI.disambiguation(_:), v11);
  sub_1252BC();
  (*(v12 + 8))(v15, v11);
  v16 = objc_allocWithZone(SKIDirectInvocationPayload);
  v17 = sub_125B8C();

  v34 = [v16 initWithIdentifier:v17];

  sub_5AE8(&qword_15F698, &qword_1270E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270C0;
  v19 = v4[13];
  v19(v10, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v3);
  v20 = sub_12529C();
  v22 = v21;
  v23 = v4[1];
  v23(v10, v3);
  v38 = v20;
  v39 = v22;
  sub_125FBC();
  v24 = sub_B6264(v35);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v24;
  *(inited + 80) = v25;
  v19(v8, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v3);
  v26 = sub_12529C();
  v28 = v27;
  v23(v8, v3);
  v38 = v26;
  v39 = v28;
  sub_125FBC();
  *(inited + 168) = &type metadata for String;
  v29 = v37;
  *(inited + 144) = v36;
  *(inited + 152) = v29;

  sub_DD00(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F6A0, &qword_1270E8);
  swift_arrayDestroy();
  isa = sub_125B5C().super.isa;

  v31 = v34;
  [v34 setUserData:isa];

  return v31;
}

unint64_t sub_E210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5AE8(&qword_15F6B0, &unk_129760);
    v3 = sub_12612C();
    v4 = a1 + 32;

    while (1)
    {
      sub_E344(v4, &v13, &qword_15F6B8, &qword_1270F0);
      v5 = v13;
      v6 = v14;
      result = sub_8AD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_E3AC(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

uint64_t sub_E344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5AE8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_E3AC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_E3C4()
{
  result = qword_15F6C0;
  if (!qword_15F6C0)
  {
    sub_124BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F6C0);
  }

  return result;
}

uint64_t sub_E41C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_E430(a1, a2);
  }

  return a1;
}

uint64_t sub_E430(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_E484(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_E498(a1, a2);
  }

  return a1;
}

uint64_t sub_E498(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 sub_E4EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_E4F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E58C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F6D0);
  sub_5B30(v0, qword_15F6D0);
  return sub_1257AC();
}

uint64_t sub_E5D8()
{
  v0 = sub_124FDC();
  sub_5BFC(v0, qword_1674E0);
  v1 = sub_5B30(v0, qword_1674E0);
  v2 = enum case for SiriTimeEventSender.TaskType.createTimerIntent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_E660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = sub_12392C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_12368C();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_125ABC();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_124FFC();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_12501C();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v20 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v21 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v22 = sub_12370C();
  v3[23] = v22;
  v23 = *(v22 - 8);
  v3[24] = v23;
  v24 = *(v23 + 64) + 15;
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_E994, 0, 0);
}

uint64_t sub_E994()
{
  if (qword_15EDC0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[11], qword_15F6D0);
  v0[26] = v1;
  v33 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In UnsupportedDateTimerFlow execute()", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];

  (*(v5 + 104))(v6, enum case for ActivityType.failed(_:), v7);
  if (qword_15EDC8 != -1)
  {
    swift_once();
  }

  v8 = v0[24];
  v9 = v0[22];
  v26 = v0[25];
  v27 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[15];
  v28 = v0[16];
  v29 = v0[14];
  v30 = v0[13];
  v13 = v0[12];
  v31 = v0[11];
  v32 = v0[19];
  v14 = sub_124FDC();
  sub_5B30(v14, qword_1674E0);
  v15 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
  v16 = sub_12353C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  v18 = sub_124FEC();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = enum case for SiriTimeEventSender.ReasonDescription.timerDurationTooLong(_:);
  v20 = sub_124FCC();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v11, v19, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  sub_124FBC();
  sub_5CA8(v11, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v10, &qword_15F6F0, &unk_128340);
  sub_5CA8(v9, &qword_15F6F8, &qword_1271D0);
  (*(v8 + 8))(v26, v27);
  (*(v12 + 104))(v28, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v29);
  (*(v13 + 16))(v30, v33, v31);
  mach_absolute_time();
  sub_12502C();
  v22 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v34 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v23 = swift_task_alloc();
  v0[27] = v23;
  *v23 = v0;
  v23[1] = sub_EDE0;
  v24 = v0[4];

  return v34(0xD000000000000020, 0x800000000012C650, _swiftEmptyArrayStorage);
}

uint64_t sub_EDE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = sub_F280;
  }

  else
  {
    *(v4 + 232) = a1;
    v7 = sub_EF08;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_EF08()
{
  v1 = v0[10];
  v2 = v0[7];
  sub_12361C();
  sub_12391C();
  v3 = async function pointer to PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)[1];
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_EFC4;
  v5 = v0[29];
  v6 = v0[19];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[3];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v9, v7, v8, v6);
}

uint64_t sub_EFC4()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 40);
  v10 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_F198, 0, 0);
}

uint64_t sub_F198()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_F280()
{
  v25 = v0;
  v1 = v0[28];
  v2 = v0[26];
  (*(v0[18] + 8))(v0[19], v0[17]);
  swift_errorRetain();
  v3 = sub_125AAC();
  v4 = sub_125DEC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v8 = sub_125BAC();
    v10 = sub_8530(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "Failed to execute DialogEngine: %s", v6, 0xCu);
    sub_5BB0(v7);
  }

  else
  {
    v11 = v0[28];
  }

  v12 = v0[3];
  sub_12383C();
  v13 = v0[25];
  v14 = v0[21];
  v15 = v0[22];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[16];
  v19 = v0[13];
  v20 = v0[10];
  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_F4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_4EA0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_F588(uint64_t a1)
{
  v4 = *(v1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_503C;

  return sub_E660(a1, v5, v4);
}

uint64_t sub_F630()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F700);
  sub_5B30(v0, qword_15F700);
  return sub_1257AC();
}

id sub_F67C()
{
  v1 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v3;
}

unint64_t sub_F6F8(id a1, char a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = v5;
  LOBYTE(v8) = a2;
  sub_12524C();
  sub_12523C();
  sub_12522C();

  *(v5 + 72) = 0xD00000000000001CLL;
  *(v5 + 80) = 0x800000000012C7C0;
  if (qword_15EDD0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v10 = sub_125ABC();
    sub_5B30(v10, qword_15F700);
    v11 = sub_125AAC();
    v12 = sub_125DFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "SearchTimer.ResultSetProvider init", v13, 2u);
    }

    *(v6 + 64) = a1;
    *(v6 + 112) = v8 & 1;
    v14 = a4 >> 62 ? sub_1260FC() : *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
    v15 = a1;
    v16 = v15;
    if (!v14)
    {
      break;
    }

    v48 = v15;
    v49 = v6;
    v8 = 0;
    v6 = a4 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v17 = sub_125FFC();
      }

      else
      {
        if (v8 >= *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_38;
        }

        v17 = *(a4 + 8 * v8 + 32);
      }

      v18 = v17;
      v19 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v17 state];
      v20 = sub_1258BC();
      if (v20 == sub_1258BC())
      {
        sub_12603C();
        a1 = _swiftEmptyArrayStorage[2];
        sub_12607C();
        sub_12608C();
        sub_12604C();
      }

      else
      {
      }

      ++v8;
      if (v19 == v14)
      {
        v16 = v48;
        v6 = v49;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_18:

  *(v6 + 104) = a5;

  v21 = [v16 includeRemoteTimers];
  sub_8BAC();
  v22.super.super.isa = sub_125EEC(1).super.super.isa;
  isa = v22.super.super.isa;
  if (v21)
  {
    v24 = sub_125F0C();

    if (v24)
    {
      v25 = v16;

      v26 = sub_125AAC();
      v27 = sub_125DFC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        if (a5 >> 62)
        {
          v29 = sub_1260FC();
        }

        else
        {
          v29 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
        }

        *(v28 + 4) = v29;

        _os_log_impl(&dword_0, v26, v27, "Using %ld remote timers for matched timers", v28, 0xCu);
      }

      else
      {
      }

      *(v6 + 88) = a5;
      v36 = *(v6 + 104);
      *(v6 + 104) = _swiftEmptyArrayStorage;

      *(v6 + 56) = a5;

      *(v6 + 96) = _swiftEmptyArrayStorage;
      return v6;
    }
  }

  else
  {
  }

  if (a3 >> 62)
  {
    if (sub_1260FC())
    {
      goto LABEL_27;
    }
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_27:

LABEL_28:

    v30 = sub_125AAC();
    v31 = sub_125DFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v6;
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      if (a3 >> 62)
      {
        v34 = sub_1260FC();
      }

      else
      {
        v34 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
      }

      *(v33 + 4) = v34;

      _os_log_impl(&dword_0, v30, v31, "Using %ld matched for results", v33, 0xCu);

      v6 = v32;
      v35 = a3;
    }

    else
    {

      v35 = a3;
    }

    *(v6 + 56) = v35;
    *(v6 + 88) = v35;
    *(v6 + 96) = _swiftEmptyArrayStorage;

    return v6;
  }

  if (a5 >> 62)
  {
    if (sub_1260FC() == 1)
    {
      goto LABEL_44;
    }
  }

  else if (*(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_44:
    v37 = v16;

    v38 = sub_125AAC();
    v39 = sub_125DFC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v6;
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      if (a5 >> 62)
      {
        v42 = sub_1260FC();
      }

      else
      {
        v42 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
      }

      *(v41 + 4) = v42;

      _os_log_impl(&dword_0, v38, v39, "Matched are empty; single otherRemoteTimers – using %ld remote timers for results", v41, 0xCu);

      v6 = v40;
    }

    else
    {
    }

    *(v6 + 56) = a5;
    *(v6 + 88) = a5;

    *(v6 + 96) = _swiftEmptyArrayStorage;
    return v6;
  }

  if (!v14)
  {
    goto LABEL_28;
  }

  v43 = sub_125AAC();
  v44 = sub_125DFC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v46 = sub_1260FC();
    }

    else
    {
      v46 = _swiftEmptyArrayStorage[2];
    }

    *(v45 + 4) = v46;

    _os_log_impl(&dword_0, v43, v44, "Matched are empty; using %ld unmatchedRunningTimers for results", v45, 0xCu);
  }

  else
  {
  }

  *(v6 + 56) = _swiftEmptyArrayStorage;

  *(v6 + 88) = _swiftEmptyArrayStorage;
  *(v6 + 96) = _swiftEmptyArrayStorage;
  return v6;
}

id sub_FE18()
{
  result = [*(v0 + 64) duration];
  if (result)
  {
    v2 = result;
    [result doubleValue];
    v4 = v3;

    [objc_opt_self() defaultDuration];
    result = 0;
    if (v4 != v5)
    {
      v6 = sub_124D6C();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      sub_124D5C();
      sub_124D4C();

      v9 = sub_124D3C();

      return v9;
    }
  }

  return result;
}

uint64_t sub_FF00()
{
  v1 = v0[4];
  sub_123ACC();
  v2 = sub_12394C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_12393C();
  v5 = sub_1232DC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1232CC();
  v0[5] = v8;
  v0[2] = v8;
  v0[3] = v1;
  v9 = async function pointer to PatternFlowProviding.makeResultSetFlow<A>(provider:)[1];
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = _s17ResultSetProviderCMa();
  v13 = sub_23BBC(&qword_15F948, v12, _s17ResultSetProviderCMa);
  *v10 = v0;
  v10[1] = sub_10070;

  return PatternFlowProviding.makeResultSetFlow<A>(provider:)(v0 + 3, v5, v11, &protocol witness table for PatternFlowProvider, v13);
}

uint64_t sub_10070(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(v6 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_101D4, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_101EC()
{
  v1[13] = v0;
  v2 = sub_123B3C();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = sub_12392C();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();
  v8 = sub_12368C();
  v1[20] = v8;
  v9 = *(v8 - 8);
  v1[21] = v9;
  v10 = *(v9 + 64) + 15;
  v1[22] = swift_task_alloc();
  v11 = *(*(sub_124EDC() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v12 = sub_1250BC();
  v1[24] = v12;
  v13 = *(v12 - 8);
  v1[25] = v13;
  v14 = *(v13 + 64) + 15;
  v1[26] = swift_task_alloc();
  v15 = sub_125ABC();
  v1[27] = v15;
  v16 = *(v15 - 8);
  v1[28] = v16;
  v17 = *(v16 + 64) + 15;
  v1[29] = swift_task_alloc();
  v18 = sub_124FFC();
  v1[30] = v18;
  v19 = *(v18 - 8);
  v1[31] = v19;
  v20 = *(v19 + 64) + 15;
  v1[32] = swift_task_alloc();
  v21 = sub_12501C();
  v1[33] = v21;
  v22 = *(v21 - 8);
  v1[34] = v22;
  v23 = *(v22 + 64) + 15;
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_10500, 0, 0);
}

uint64_t sub_10500()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v30 = sub_5B30(v0[27], qword_15F700);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SearchTimer.ResultSetProvider makeEmptyResultSetFlow", v3, 2u);
  }

  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[25];
  v11 = v0[26];
  v28 = v0[35];
  v29 = v0[24];

  (*(v5 + 104))(v4, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v6);
  (*(v8 + 16))(v7, v30, v9);
  mach_absolute_time();
  sub_12502C();
  sub_1250AC();
  LOBYTE(v8) = sub_12506C();
  (*(v10 + 8))(v11, v29);
  if (v8)
  {
    v12 = *(v0[13] + 104);
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v19 = *(v0[13] + 104);
      }

      if (sub_1260FC())
      {
        goto LABEL_8;
      }
    }

    else if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_8:
      v13 = v0[23];
      type metadata accessor for TimerBaseCATsSimple();
      sub_124ECC();
      v0[36] = sub_124E7C();
      v14 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v31 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
      v15 = swift_task_alloc();
      v0[37] = v15;
      *v15 = v0;
      v15[1] = sub_108D8;
      v16 = _swiftEmptyArrayStorage;
      v17 = 0xD000000000000016;
      v18 = 0x800000000012C9E0;
      goto LABEL_13;
    }
  }

  v20 = v0[23];
  v21 = v0[13];
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[41] = sub_124DBC();
  v0[12] = *(v21 + 64);
  sub_12568C();
  sub_1258DC();
  v23 = v22;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v24 = swift_allocObject();
  *(v24 + 32) = 0xD000000000000011;
  *(v24 + 40) = 0x800000000012C9C0;
  *(v24 + 72) = &type metadata for Double;
  v25 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v31 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0[42] = v24;
  *(v24 + 16) = xmmword_126CB0;
  *(v24 + 48) = v23;
  v26 = swift_task_alloc();
  v0[43] = v26;
  *v26 = v0;
  v26[1] = sub_10EB8;
  v17 = 0xD000000000000012;
  v18 = 0x800000000012C9A0;
  v16 = v24;
LABEL_13:

  return v31(v17, v18, v16);
}

uint64_t sub_108D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v7 = sub_10DC8;
  }

  else
  {
    v8 = *(v4 + 288);

    *(v4 + 312) = a1;
    v7 = sub_10A08;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10A08()
{
  v1 = v0[22];
  v2 = v0[19];
  sub_12361C();
  sub_12391C();
  v3 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_10AD4;
  v5 = v0[39];
  v6 = v0[35];
  v7 = v0[22];
  v8 = v0[19];

  return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v0 + 7, v7, v8, v6, 0, 0, 0, 0);
}

uint64_t sub_10AD4()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 160);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 144);
  v8 = *(*v0 + 136);
  v10 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10CA8, 0, 0);
}

uint64_t sub_10CA8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[11];
  sub_23B08(v0 + 7, v0[10]);
  v5 = sub_123D4C();
  (*(v2 + 8))(v1, v3);
  sub_5BB0(v0 + 7);
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[26];
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[19];
  v13 = v0[16];

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_10DC8()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[26];
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[19];
  v13 = v0[16];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10EB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = sub_11258;
  }

  else
  {
    v8 = *(v4 + 336);
    *(v4 + 360) = a1;

    v7 = sub_10FE8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10FE8()
{
  v1 = v0[41];
  v2 = v0[22];
  v3 = v0[16];

  sub_12361C();
  sub_123B0C();
  v4 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_110C8;
  v6 = v0[45];
  v7 = v0[35];
  v8 = v0[16];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v0 + 2, v8, v7);
}

uint64_t sub_110C8()
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 376) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_11474;
  }

  else
  {
    v7 = sub_11354;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_11258()
{
  v1 = v0[41];
  v2 = v0[42];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];

  (*(v4 + 8))(v3, v5);
  v6 = v0[44];
  v7 = v0[35];
  v8 = v0[32];
  v9 = v0[29];
  v10 = v0[26];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[19];
  v14 = v0[16];

  v15 = v0[1];

  return v15();
}

uint64_t sub_11354()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[6];
  sub_23B08(v0 + 2, v0[5]);
  v5 = sub_123D4C();
  (*(v2 + 8))(v1, v3);
  sub_5BB0(v0 + 2);
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[26];
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[19];
  v13 = v0[16];

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_11474()
{
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[47];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[19];
  v9 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t sub_11558()
{
  v1[68] = v0;
  v2 = sub_123B3C();
  v1[69] = v2;
  v3 = *(v2 - 8);
  v1[70] = v3;
  v4 = *(v3 + 64) + 15;
  v1[71] = swift_task_alloc();
  v5 = sub_12503C();
  v1[72] = v5;
  v6 = *(v5 - 8);
  v1[73] = v6;
  v7 = *(v6 + 64) + 15;
  v1[74] = swift_task_alloc();
  v8 = type metadata accessor for SearchForTimersHandledOtherMultiParameters(0);
  v1[75] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[76] = swift_task_alloc();
  v10 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v11 = sub_125ABC();
  v1[97] = v11;
  v12 = *(v11 - 8);
  v1[98] = v12;
  v13 = *(v12 + 64) + 15;
  v1[99] = swift_task_alloc();
  v14 = sub_124FFC();
  v1[100] = v14;
  v15 = *(v14 - 8);
  v1[101] = v15;
  v16 = *(v15 + 64) + 15;
  v1[102] = swift_task_alloc();
  v17 = sub_12501C();
  v1[103] = v17;
  v18 = *(v17 - 8);
  v1[104] = v18;
  v19 = *(v18 + 64) + 15;
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v20 = sub_1250BC();
  v1[109] = v20;
  v21 = *(v20 - 8);
  v1[110] = v21;
  v22 = *(v21 + 64) + 15;
  v1[111] = swift_task_alloc();
  v23 = sub_12392C();
  v1[112] = v23;
  v24 = *(v23 - 8);
  v1[113] = v24;
  v25 = *(v24 + 64) + 15;
  v1[114] = swift_task_alloc();
  v26 = sub_12368C();
  v1[115] = v26;
  v27 = *(v26 - 8);
  v1[116] = v27;
  v28 = *(v27 + 64) + 15;
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();

  return _swift_task_switch(sub_11A18, 0, 0);
}

uint64_t sub_11A18()
{
  v2 = *(v0 + 544);
  v3 = *(v2 + 56);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v86 = *(v2 + 56);
    }

    if (sub_1260FC())
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {

        v4 = sub_125FFC();
      }

      else
      {
        if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_62:
          swift_once();
LABEL_44:
          v62 = *(v0 + 608);
          v63 = *(v0 + 600);
          v64 = *(*(v0 + 544) + 96);

          v66 = sub_2BE74(v65);

          v67 = v63[14];
          v68 = sub_124E4C();
          v69 = *(*(v68 - 8) + 56);
          v70 = 1;
          v124 = v67;
          v69(v62 + v67, 1, 1, v68);
          v118 = v63[16];
          v69(v62 + v118, 1, 1, v68);
          v120 = v63[17];
          v69(v62 + v120, 1, 1, v68);
          *v62 = 1;
          *(v62 + 8) = 0;
          *(v62 + 16) = 1;
          *(v62 + 24) = 0;
          *(v62 + 32) = v1;
          *(v62 + 33) = 65792;
          *(v62 + 40) = v66;
          *(v62 + 48) = 0;
          *(v62 + 56) = 1;
          v71 = v63[15];
          *(v62 + v71) = 0;
          v72 = v62 + v63[18];
          *v72 = 0;
          v122 = v72;
          *(v72 + 8) = 1;
          v73 = v62 + v63[19];
          *v73 = 0;
          *(v73 + 8) = 1;
          v74 = [v129 label];
          if (v74)
          {
            v75 = *(v0 + 720);
            v76 = v74;
            sub_125B9C();

            sub_125BCC();

            v70 = 0;
          }

          v77 = *(v0 + 720);
          v78 = *(v0 + 712);
          v79 = *(v0 + 544);
          v69(v77, v70, 1, v68);
          sub_22A1C(v77, v62 + v118);
          *(v62 + v71) = sub_FE18();
          [v129 type];
          sub_12588C();
          v69(v78, 0, 1, v68);
          sub_22A1C(v78, v62 + v120);
          [v129 state];
          sub_1258AC();
          v69(v78, 0, 1, v68);
          sub_22A1C(v78, v62 + v124);
          v80 = *(v127 + 56);
          if (v80 >> 62)
          {
            if (v80 < 0)
            {
              v99 = *(v127 + 56);
            }

            v81 = sub_1260FC();
          }

          else
          {
            v81 = *(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8));
          }

          v82 = *(v0 + 608);
          *v122 = v81;
          *(v122 + 8) = 0;
          *(v62 + 24) = 0;
          v83 = sub_AD73C();
          *(v0 + 1056) = v83;
          v84 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
          v130 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
          v85 = swift_task_alloc();
          *(v0 + 1064) = v85;
          *v85 = v0;
          v85[1] = sub_14104;

          return v130(0xD000000000000021, 0x800000000012C7E0, v83);
        }

        v4 = *(v3 + 32);
      }

      *(v0 + 952) = v4;
      if (qword_15EDD0 != -1)
      {
        swift_once();
      }

      v5 = sub_5B30(*(v0 + 776), qword_15F700);
      *(v0 + 960) = v5;
      v6 = sub_125AAC();
      v7 = sub_125DFC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, v6, v7, "SearchTimer.ResultSetProvider makeSingleItemFlow", v8, 2u);
      }

      v9 = *(v0 + 944);
      v10 = *(v0 + 912);
      v11 = *(v0 + 544);

      sub_12361C();
      sub_5AE8(&qword_160810, &unk_127420);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_126EB0;
      *(inited + 32) = v4;
      v13 = v4;
      sub_FF26C(inited, v10);
      swift_setDeallocating();
      v14 = *(inited + 16);
      swift_arrayDestroy();
      v15 = *(v11 + 88);
      if (v15 >> 62)
      {
        if (v15 < 0)
        {
          v98 = *(v11 + 88);
        }

        v16 = sub_1260FC();
      }

      else
      {
        v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      }

      v17 = sub_125AAC();
      v18 = sub_125DFC();
      v19 = os_log_type_enabled(v17, v18);
      if (v16)
      {
        if (v19)
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_0, v17, v18, "SearchTimer.ResultSetProvider makeSingleItemFlow for matched timer", v20, 2u);
        }

        v21 = *(v0 + 888);
        v22 = *(v0 + 880);
        v23 = *(v0 + 872);

        sub_1250AC();
        v24 = sub_12504C();
        (*(v22 + 8))(v21, v23);
        if (v24)
        {
          v25 = sub_125AAC();
          v26 = sub_125DFC();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_0, v25, v26, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] Using multi-timer RF 2.0 path.", v27, 2u);
          }

          sub_12573C();
          sub_12572C();
          v28 = *(v0 + 120);
          v29 = *(v0 + 128);
          sub_23B08((v0 + 96), v28);
          v30 = [v13 identifier];
          if (v30)
          {
            v31 = v30;
            v32 = sub_125B9C();
            v34 = v33;
          }

          else
          {
            v32 = 0;
            v34 = 0;
          }

          *(v0 + 1104) = v34;
          v53 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
          v54 = swift_task_alloc();
          *(v0 + 1112) = v54;
          *v54 = v0;
          v55 = sub_149A4;
        }

        else
        {
          sub_12573C();
          sub_12572C();
          v28 = *(v0 + 80);
          v29 = *(v0 + 88);
          sub_23B08((v0 + 56), v28);
          v46 = [v13 identifier];
          if (v46)
          {
            v47 = v46;
            v32 = sub_125B9C();
            v34 = v48;
          }

          else
          {
            v32 = 0;
            v34 = 0;
          }

          *(v0 + 1264) = v34;
          v56 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
          v54 = swift_task_alloc();
          *(v0 + 1272) = v54;
          *v54 = v0;
          v55 = sub_17698;
        }

LABEL_39:
        v54[1] = v55;

        return dispatch thunk of SessionManaging.sessionIDString(for:)(v32, v34, v28, v29);
      }

      if (v19)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v17, v18, "SearchTimer.ResultSetProvider makeSingleItemFlow for unmatched timer", v35, 2u);
      }

      v36 = *(v0 + 888);
      v37 = *(v0 + 880);
      v38 = *(v0 + 872);

      sub_1250AC();
      v39 = sub_12504C();
      (*(v37 + 8))(v36, v38);
      if (v39)
      {
        v40 = sub_125AAC();
        v41 = sub_125DFC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_0, v40, v41, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] Using multi-timer RF 2.0 path", v42, 2u);
        }

        sub_12573C();
        sub_12572C();
        v28 = *(v0 + 320);
        v29 = *(v0 + 328);
        sub_23B08((v0 + 296), v28);
        v43 = [v13 identifier];
        if (v43)
        {
          v44 = v43;
          v32 = sub_125B9C();
          v34 = v45;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        *(v0 + 968) = v34;
        v57 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
        v54 = swift_task_alloc();
        *(v0 + 976) = v54;
        *v54 = v0;
        v55 = sub_1278C;
        goto LABEL_39;
      }

      v129 = *(*(v0 + 544) + 64);
      v49 = [v129 allAvailableTargets];
      v127 = v2;
      if (v49)
      {
        v50 = v49;
        sub_1256DC();
        v51 = sub_125C6C();

        if (v51 >> 62)
        {
          v52 = sub_1260FC();
        }

        else
        {
          v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        }

        v1 = v52 > 1;
      }

      else
      {
        v1 = 0;
      }

      v58 = *(v0 + 856);
      v59 = *(v0 + 792);
      v60 = *(v0 + 784);
      v61 = *(v0 + 776);
      (*(*(v0 + 808) + 104))(*(v0 + 816), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 800));
      (*(v60 + 16))(v59, v5, v61);
      mach_absolute_time();
      sub_12502C();
      if (qword_15F078 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_62;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  *(v0 + 1352) = 0;
  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();
  v87 = *(v0 + 944);
  v88 = *(v0 + 936);
  v89 = *(v0 + 912);
  v90 = *(v0 + 888);
  v91 = *(v0 + 864);
  v92 = *(v0 + 856);
  v93 = *(v0 + 848);
  v94 = *(v0 + 840);
  v95 = *(v0 + 816);
  v96 = *(v0 + 792);
  v101 = *(v0 + 768);
  v102 = *(v0 + 760);
  v103 = *(v0 + 752);
  v104 = *(v0 + 744);
  v105 = *(v0 + 736);
  v106 = *(v0 + 728);
  v107 = *(v0 + 720);
  v108 = *(v0 + 712);
  v109 = *(v0 + 704);
  v110 = *(v0 + 696);
  v111 = *(v0 + 688);
  v112 = *(v0 + 680);
  v113 = *(v0 + 672);
  v114 = *(v0 + 664);
  v115 = *(v0 + 656);
  v116 = *(v0 + 648);
  v117 = *(v0 + 640);
  v119 = *(v0 + 632);
  v121 = *(v0 + 624);
  v123 = *(v0 + 616);
  v125 = *(v0 + 608);
  v126 = *(v0 + 592);
  v128 = *(v0 + 568);

  v97 = *(v0 + 8);

  return v97();
}

uint64_t sub_1278C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 976);
  v5 = *(*v2 + 968);
  v7 = *v2;
  *(v3 + 984) = a1;
  *(v3 + 992) = a2;

  return _swift_task_switch(sub_128B0, 0, 0);
}

uint64_t sub_128B0()
{
  v1 = v0[120];
  v2 = v0[108];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[98];
  v8 = v0[97];
  sub_5BB0(v0 + 37);
  (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v5);
  (*(v7 + 16))(v6, v1, v8);
  mach_absolute_time();
  sub_12502C();
  if (qword_15F070 != -1)
  {
    swift_once();
  }

  v9 = v0[68];
  v10 = *(v9 + 96);

  v50 = sub_2BE74(v11);

  v12 = *(v9 + 64);
  v13 = [v12 label];
  if (v13)
  {
    v14 = v0[96];
    v15 = v13;
    sub_125B9C();

    sub_125BCC();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v0[96];
  v18 = v0[95];
  v19 = v0[94];
  v20 = v0[68];
  v21 = sub_124E4C();
  v51 = *(v21 - 8);
  v22 = *(v51 + 56);
  v22(v17, v16, 1, v21);
  v23 = sub_FE18();
  v0[125] = v23;
  [v12 type];
  sub_12588C();
  v22(v18, 0, 1, v21);
  [v12 state];
  sub_1258AC();
  v22(v19, 0, 1, v21);
  v24 = *(v20 + 56);
  if (v24 >> 62)
  {
    if (v24 < 0)
    {
      v49 = *(v20 + 56);
    }

    v25 = sub_1260FC();
  }

  else
  {
    v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
  }

  v26 = v0[96];
  v27 = v0[93];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v28 = swift_allocObject();
  v0[126] = v28;
  *(v28 + 16) = xmmword_1271F0;
  *(v28 + 32) = 0x736D657469;
  *(v28 + 40) = 0xE500000000000000;
  v29 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v28 + 48) = v50;
  *(v28 + 72) = v29;
  *(v28 + 80) = 0xD000000000000013;
  *(v28 + 88) = 0x800000000012C810;
  sub_23A98(v26, v27);
  v30 = *(v51 + 48);
  v31 = v30(v27, 1, v21);
  v32 = v0[93];
  if (v31 == 1)
  {
    sub_5CA8(v0[93], &unk_15F170, &unk_126E00);
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
  }

  else
  {
    *(v28 + 120) = v21;
    v33 = sub_23B4C((v28 + 96));
    (*(v51 + 32))(v33, v32, v21);
  }

  *(v28 + 128) = 0xD000000000000016;
  *(v28 + 136) = 0x800000000012C830;
  if (v23)
  {
    v34 = sub_124D7C();
    v35 = v23;
  }

  else
  {
    v35 = 0;
    v34 = 0;
    *(v28 + 152) = 0;
    *(v28 + 160) = 0;
  }

  v36 = v0[95];
  v37 = v0[92];
  *(v28 + 144) = v35;
  *(v28 + 168) = v34;
  strcpy((v28 + 176), "requestedType");
  *(v28 + 190) = -4864;
  sub_23A98(v36, v37);
  v38 = v30(v37, 1, v21);
  v39 = v0[92];
  if (v38 == 1)
  {

    sub_5CA8(v39, &unk_15F170, &unk_126E00);
    *(v28 + 192) = 0u;
    *(v28 + 208) = 0u;
  }

  else
  {
    *(v28 + 216) = v21;
    v40 = sub_23B4C((v28 + 192));
    (*(v51 + 32))(v40, v39, v21);
  }

  v41 = v0[94];
  v42 = v0[91];
  strcpy((v28 + 224), "requestedState");
  *(v28 + 239) = -18;
  sub_23A98(v41, v42);
  v43 = v30(v42, 1, v21);
  v44 = v0[91];
  if (v43 == 1)
  {
    sub_5CA8(v0[91], &unk_15F170, &unk_126E00);
    *(v28 + 240) = 0u;
    *(v28 + 256) = 0u;
  }

  else
  {
    *(v28 + 264) = v21;
    v45 = sub_23B4C((v28 + 240));
    (*(v51 + 32))(v45, v44, v21);
  }

  *(v28 + 272) = 0x6574496C61746F74;
  *(v28 + 280) = 0xEA0000000000736DLL;
  *(v28 + 312) = &type metadata for Double;
  *(v28 + 320) = 0x676E6970756F7267;
  *(v28 + 328) = 0xE800000000000000;
  v46 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v52 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v28 + 288) = v25;
  *(v28 + 336) = 0u;
  *(v28 + 352) = 0u;
  v47 = swift_task_alloc();
  v0[127] = v47;
  *v47 = v0;
  v47[1] = sub_12EC8;

  return v52(0xD00000000000003CLL, 0x800000000012C900, v28);
}

uint64_t sub_12EC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1016);
  v6 = *v2;
  v4[128] = a1;
  v4[129] = v1;

  v7 = v3[126];
  if (v1)
  {
    v8 = v4[124];

    v9 = sub_135E8;
  }

  else
  {
    v10 = v4[125];
    v11 = v4[96];
    v12 = v4[95];
    v13 = v4[94];

    sub_5CA8(v13, &unk_15F170, &unk_126E00);
    sub_5CA8(v12, &unk_15F170, &unk_126E00);
    sub_5CA8(v11, &unk_15F170, &unk_126E00);
    v9 = sub_13078;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_13078()
{
  v48 = v0;
  v1 = v0[120];
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] Creating response using ResponseFactory...", v4, 2u);
  }

  v5 = v0[124];

  if (v5)
  {
    v6 = v0[124];
    v7 = v0[120];

    v8 = sub_125AAC();
    v9 = sub_125DFC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[123];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v47 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_8530(v10, v6, &v47);
      _os_log_impl(&dword_0, v8, v9, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] We have a live activity: %s", v11, 0xCu);
      sub_5BB0(v12);
    }

    v13 = v0[119];
    v14 = v0[73];
    v15 = v0[72];
    v0[60] = v15;
    v0[61] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel);
    v16 = sub_23B4C(v0 + 57);
    sub_5AE8(&qword_15F940, &unk_127410);
    v17 = *(sub_124F4C() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_126CB0;
    sub_1135FC(v20 + v19);
    sub_12521C();
    (*(v14 + 104))(v16, enum case for SiriTimePluginModel.timerMulti(_:), v15);
    v21 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v22 = swift_task_alloc();
    v0[130] = v22;
    *v22 = v0;
    v22[1] = sub_138F8;
    v23 = v0[128];
    v24 = v0[124];
    v25 = v0[123];
    v26 = v0[118];
    v27 = v0[114];
    v28 = v0[108];
    v51 = 2;
    v50 = 0x800000000012C8E0;
    v29 = v0 + 52;
    v30 = v0 + 57;
  }

  else
  {
    v31 = v0[120];
    v32 = sub_125AAC();
    v33 = sub_125DFC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] Using multi-timer snippet model for single unmatched timer instead.", v34, 2u);
    }

    v35 = v0[119];
    v36 = v0[73];
    v37 = v0[72];

    v0[50] = v37;
    v0[51] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel);
    v38 = sub_23B4C(v0 + 47);
    sub_5AE8(&qword_15F940, &unk_127410);
    v39 = *(sub_124F4C() - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_126CB0;
    sub_1135FC(v42 + v41);
    sub_12521C();
    (*(v36 + 104))(v38, enum case for SiriTimePluginModel.timerMulti(_:), v37);
    v43 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v44 = swift_task_alloc();
    v0[131] = v44;
    *v44 = v0;
    v44[1] = sub_13D0C;
    v45 = v0[128];
    v26 = v0[118];
    v27 = v0[114];
    v28 = v0[108];
    v51 = 2;
    v50 = 0x800000000012C8E0;
    v29 = v0 + 42;
    v30 = v0 + 47;
    v25 = 0;
    v24 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v29, v26, v27, v30, v28, v25, v24, 0xD00000000000001DLL);
}

uint64_t sub_135E8()
{
  v1 = v0[125];
  v2 = v0[116];
  v41 = v0[119];
  v43 = v0[115];
  v49 = v0[114];
  v3 = v0[113];
  v45 = v0[118];
  v47 = v0[112];
  v39 = v0[108];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[94];

  sub_5CA8(v8, &unk_15F170, &unk_126E00);
  sub_5CA8(v7, &unk_15F170, &unk_126E00);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);

  (*(v4 + 8))(v39, v5);
  (*(v2 + 8))(v45, v43);
  (*(v3 + 8))(v49, v47);
  v50 = v0[129];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[114];
  v12 = v0[111];
  v13 = v0[108];
  v14 = v0[107];
  v15 = v0[106];
  v16 = v0[105];
  v17 = v0[102];
  v18 = v0[99];
  v21 = v0[96];
  v22 = v0[95];
  v23 = v0[94];
  v24 = v0[93];
  v25 = v0[92];
  v26 = v0[91];
  v27 = v0[90];
  v28 = v0[89];
  v29 = v0[88];
  v30 = v0[87];
  v31 = v0[86];
  v32 = v0[85];
  v33 = v0[84];
  v34 = v0[83];
  v35 = v0[82];
  v36 = v0[81];
  v37 = v0[80];
  v38 = v0[79];
  v40 = v0[78];
  v42 = v0[77];
  v44 = v0[76];
  v46 = v0[74];
  v48 = v0[71];

  v19 = v0[1];

  return v19();
}

uint64_t sub_138F8()
{
  v1 = *v0;
  v2 = *(*v0 + 1040);
  v3 = *(*v0 + 992);
  v5 = *v0;

  sub_5CA8(v1 + 456, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_13A28, 0, 0);
}

uint64_t sub_13A28()
{
  v1 = v0[128];
  v2 = v0[119];
  v42 = v0[118];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[108];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[56];
  sub_23B08(v0 + 52, v0[55]);
  v44 = sub_123D4C();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v42, v4);
  sub_5BB0(v0 + 52);
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[111];
  v12 = v0[108];
  v13 = v0[107];
  v14 = v0[106];
  v15 = v0[105];
  v16 = v0[102];
  v19 = v0[99];
  v20 = v0[96];
  v21 = v0[95];
  v22 = v0[94];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[85];
  v32 = v0[84];
  v33 = v0[83];
  v34 = v0[82];
  v35 = v0[81];
  v36 = v0[80];
  v37 = v0[79];
  v38 = v0[78];
  v39 = v0[77];
  v40 = v0[76];
  v41 = v0[74];
  v43 = v0[71];
  (*(v0[113] + 8))(v0[114], v0[112]);

  v17 = v0[1];

  return v17(v44);
}

uint64_t sub_13D0C()
{
  v1 = *v0;
  v2 = *(*v0 + 1048);
  v4 = *v0;

  sub_5CA8(v1 + 376, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_13E20, 0, 0);
}

uint64_t sub_13E20()
{
  v1 = v0[128];
  v2 = v0[119];
  v42 = v0[118];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[108];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[46];
  sub_23B08(v0 + 42, v0[45]);
  v44 = sub_123D4C();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v42, v4);
  sub_5BB0(v0 + 42);
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[111];
  v12 = v0[108];
  v13 = v0[107];
  v14 = v0[106];
  v15 = v0[105];
  v16 = v0[102];
  v19 = v0[99];
  v20 = v0[96];
  v21 = v0[95];
  v22 = v0[94];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[85];
  v32 = v0[84];
  v33 = v0[83];
  v34 = v0[82];
  v35 = v0[81];
  v36 = v0[80];
  v37 = v0[79];
  v38 = v0[78];
  v39 = v0[77];
  v40 = v0[76];
  v41 = v0[74];
  v43 = v0[71];
  (*(v0[113] + 8))(v0[114], v0[112]);

  v17 = v0[1];

  return v17(v44);
}

uint64_t sub_14104(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *v2;
  v4[134] = v1;

  v7 = v4[132];

  if (v1)
  {
    v8 = sub_146D4;
  }

  else
  {
    v4[135] = a1;
    v8 = sub_14248;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_14248()
{
  sub_23A30(v0[76], type metadata accessor for SearchForTimersHandledOtherMultiParameters);
  v1 = async function pointer to PatternExecutionResult.generateFlow(phase:contextUpdate:measure:)[1];
  v2 = swift_task_alloc();
  v0[136] = v2;
  *v2 = v0;
  v2[1] = sub_14308;
  v3 = v0[135];
  v4 = v0[118];
  v5 = v0[114];
  v6 = v0[107];

  return PatternExecutionResult.generateFlow(phase:contextUpdate:measure:)(v4, v5, v6);
}

uint64_t sub_14308(uint64_t a1)
{
  v2 = *(*v1 + 1088);
  v3 = *(*v1 + 1080);
  v5 = *v1;
  *(*v1 + 1096) = a1;

  return _swift_task_switch(sub_14424, 0, 0);
}

uint64_t sub_14424()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 856);
  v5 = *(v0 + 832);
  v6 = *(v0 + 824);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v41 = *(v0 + 1096);
  v7 = *(v0 + 944);
  v8 = *(v0 + 936);
  v9 = *(v0 + 888);
  v10 = *(v0 + 864);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  v13 = *(v0 + 840);
  v14 = *(v0 + 816);
  v17 = *(v0 + 792);
  v18 = *(v0 + 768);
  v19 = *(v0 + 760);
  v20 = *(v0 + 752);
  v21 = *(v0 + 744);
  v22 = *(v0 + 736);
  v23 = *(v0 + 728);
  v24 = *(v0 + 720);
  v25 = *(v0 + 712);
  v26 = *(v0 + 704);
  v27 = *(v0 + 696);
  v28 = *(v0 + 688);
  v29 = *(v0 + 680);
  v30 = *(v0 + 672);
  v31 = *(v0 + 664);
  v32 = *(v0 + 656);
  v33 = *(v0 + 648);
  v34 = *(v0 + 640);
  v35 = *(v0 + 632);
  v36 = *(v0 + 624);
  v37 = *(v0 + 616);
  v38 = *(v0 + 608);
  v39 = *(v0 + 592);
  v40 = *(v0 + 568);
  (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));

  v15 = *(v0 + 8);

  return v15(v41);
}

uint64_t sub_146D4()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[116];
  v4 = v0[115];
  v45 = v0[114];
  v5 = v0[113];
  v6 = v0[112];
  v7 = v0[107];
  v8 = v0[104];
  v9 = v0[103];
  sub_23A30(v0[76], type metadata accessor for SearchForTimersHandledOtherMultiParameters);

  (*(v8 + 8))(v7, v9);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v45, v6);
  v46 = v0[134];
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[114];
  v13 = v0[111];
  v14 = v0[108];
  v15 = v0[107];
  v16 = v0[106];
  v17 = v0[105];
  v18 = v0[102];
  v19 = v0[99];
  v22 = v0[96];
  v23 = v0[95];
  v24 = v0[94];
  v25 = v0[93];
  v26 = v0[92];
  v27 = v0[91];
  v28 = v0[90];
  v29 = v0[89];
  v30 = v0[88];
  v31 = v0[87];
  v32 = v0[86];
  v33 = v0[85];
  v34 = v0[84];
  v35 = v0[83];
  v36 = v0[82];
  v37 = v0[81];
  v38 = v0[80];
  v39 = v0[79];
  v40 = v0[78];
  v41 = v0[77];
  v42 = v0[76];
  v43 = v0[74];
  v44 = v0[71];

  v20 = v0[1];

  return v20();
}

uint64_t sub_149A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1112);
  v5 = *(*v2 + 1104);
  v7 = *v2;
  *(v3 + 1120) = a1;
  *(v3 + 1128) = a2;

  return _swift_task_switch(sub_14AC8, 0, 0);
}

uint64_t sub_14AC8()
{
  v147 = v0;
  v1 = v0[119];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[68];
  sub_5BB0(v0 + 12);
  sub_5AE8(&qword_15F940, &unk_127410);
  v6 = *(sub_124F4C() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_126CB0;
  sub_1135FC(v9 + v8);
  sub_12521C();
  (*(v3 + 104))(v2, enum case for SiriTimePluginModel.timerMulti(_:), v4);
  v10 = *(v5 + 88);
  sub_1257EC();

  v11 = sub_125CAC();

  v12 = sub_18324(v11);

  v0[142] = v12;
  v13 = *(v0[68] + 88);
  if (v13 >> 62)
  {
    goto LABEL_34;
  }

  v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v15 = v0[68];
  v143 = v12;
  v145 = v0;
  if (v14)
  {
    v12 = *(v15 + 88);

    v17 = sub_2BE74(v16);

    v146[0] = _swiftEmptyArrayStorage;
    v141 = v17;
    if (v17 >> 62)
    {
      v18 = sub_1260FC();
      if (v18)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      if (v18)
      {
LABEL_6:
        v19 = 0;
        v0 = v17;
        v20 = v17 & 0xC000000000000001;
        v21 = v17 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v20)
          {
            v22 = sub_125FFC();
            v23 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:
              v0 = v145;
              v25 = v146[0];
              goto LABEL_37;
            }
          }

          else
          {
            if (v19 >= *(v21 + 16))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              v14 = sub_1260FC();
              goto LABEL_3;
            }

            v22 = v141[v19 + 4];

            v23 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_16;
            }
          }

          if (*(v22 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom))
          {
            sub_12603C();
            v24 = *(v146[0] + 16);
            sub_12607C();
            sub_12608C();
            v12 = v146;
            sub_12604C();
          }

          else
          {
          }

          ++v19;
          if (v23 == v18)
          {
            goto LABEL_17;
          }
        }
      }
    }

    v25 = _swiftEmptyArrayStorage;
LABEL_37:
    v33 = *(v0[68] + 88);
    if (v33 >> 62)
    {
      goto LABEL_77;
    }

    for (i = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1260FC())
    {

      if (!i)
      {
        break;
      }

      v35 = 0;
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v36 = sub_125FFC();
        }

        else
        {
          if (v35 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_76;
          }

          v36 = *(v33 + 8 * v35 + 32);
        }

        v37 = v36;
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        [v36 type];
        v39 = sub_12589C();
        if (v39 == sub_12589C())
        {

          v40 = sub_113D6C(0, 0);

          goto LABEL_51;
        }

        ++v35;
        if (v38 == i)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      ;
    }

LABEL_49:

    v40 = 0;
LABEL_51:
    v138 = v40;
    v0[149] = v40;
    v41 = v0[120];
    v42 = v0[106];
    v43 = v0[99];
    v44 = v0[98];
    v45 = v0[97];
    (*(v0[101] + 104))(v0[102], enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v0[100]);
    (*(v44 + 16))(v43, v41, v45);
    mach_absolute_time();
    sub_12502C();
    if (qword_15F070 != -1)
    {
      swift_once();
    }

    v46 = *(v0[68] + 64);
    v47 = [v46 label];
    v139 = v25;
    if (v47)
    {
      v48 = v0[82];
      v49 = v47;
      sub_125B9C();

      sub_125BCC();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v51 = v0[82];
    v52 = v0[81];
    v53 = v0[80];
    v135 = v0[79];
    v54 = v0[68];
    v55 = sub_124E4C();
    v56 = *(v55 - 8);
    v57 = *(v56 + 56);
    v57(v51, v50, 1, v55);
    v58 = sub_FE18();
    v145[150] = v58;
    [v46 type];
    sub_12588C();
    v57(v52, 0, 1, v55);
    [v46 state];
    sub_1258AC();
    v57(v53, 0, 1, v55);
    sub_5AE8(&qword_15F180, &unk_126E10);
    v59 = swift_allocObject();
    v145[151] = v59;
    *(v59 + 16) = xmmword_127200;
    *(v59 + 32) = 0xD000000000000013;
    *(v59 + 40) = 0x800000000012C810;
    sub_23A98(v51, v135);
    v60 = *(v56 + 48);
    v61 = v60(v135, 1, v55);
    v62 = v145[79];
    if (v61 == 1)
    {
      v63 = v56;
      sub_5CA8(v145[79], &unk_15F170, &unk_126E00);
      *(v59 + 48) = 0u;
      *(v59 + 64) = 0u;
    }

    else
    {
      *(v59 + 72) = v55;
      v64 = sub_23B4C((v59 + 48));
      v63 = v56;
      (*(v56 + 32))(v64, v62, v55);
    }

    *(v59 + 80) = 0xD000000000000016;
    *(v59 + 88) = 0x800000000012C830;
    if (v58)
    {
      v65 = sub_124D7C();
      v66 = v58;
    }

    else
    {
      v66 = 0;
      v65 = 0;
      *(v59 + 104) = 0;
      *(v59 + 112) = 0;
    }

    v67 = v145[81];
    v68 = v145[78];
    *(v59 + 96) = v66;
    *(v59 + 120) = v65;
    strcpy((v59 + 128), "requestedType");
    *(v59 + 142) = -4864;
    sub_23A98(v67, v68);
    v69 = v60(v68, 1, v55);
    v70 = v145[78];
    if (v69 == 1)
    {

      sub_5CA8(v70, &unk_15F170, &unk_126E00);
      *(v59 + 144) = 0u;
      *(v59 + 160) = 0u;
    }

    else
    {
      *(v59 + 168) = v55;
      v71 = sub_23B4C((v59 + 144));
      (*(v63 + 32))(v71, v70, v55);
    }

    v72 = v145[80];
    v73 = v145[77];
    strcpy((v59 + 176), "requestedState");
    *(v59 + 191) = -18;
    sub_23A98(v72, v73);
    v74 = v60(v73, 1, v55);
    v75 = v145[77];
    if (v74 == 1)
    {
      sub_5CA8(v145[77], &unk_15F170, &unk_126E00);
      *(v59 + 192) = 0u;
      *(v59 + 208) = 0u;
    }

    else
    {
      *(v59 + 216) = v55;
      v76 = sub_23B4C((v59 + 192));
      (*(v63 + 32))(v76, v75, v55);
    }

    strcpy((v59 + 224), "matchedTimers");
    *(v59 + 238) = -4864;
    v77 = sub_5AE8(&qword_15F928, &unk_127400);
    *(v59 + 240) = v141;
    *(v59 + 264) = v77;
    *(v59 + 272) = 0x6D69547065656C73;
    *(v59 + 280) = 0xEA00000000007265;
    if (v138)
    {
      v78 = type metadata accessor for TimerTimer(0);
      v79 = v138;
    }

    else
    {
      v79 = 0;
      v78 = 0;
      *(v59 + 296) = 0;
      *(v59 + 304) = 0;
    }

    *(v59 + 288) = v79;
    *(v59 + 312) = v78;
    *(v59 + 320) = 0xD00000000000001DLL;
    *(v59 + 328) = 0x800000000012C850;
    *(v59 + 336) = v139;
    *(v59 + 360) = v77;
    *(v59 + 368) = 0x676E6970756F7267;
    *(v59 + 376) = 0xE800000000000000;
    v80 = 0;
    if (v143)
    {
      v80 = type metadata accessor for TimerTimerGrouping();
    }

    else
    {
      *(v59 + 392) = 0;
      *(v59 + 400) = 0;
    }

    v145[152] = v143;
    *(v59 + 384) = v143;
    *(v59 + 408) = v80;
    v81 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v144 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v82 = swift_task_alloc();
    v145[153] = v82;
    *v82 = v145;
    v82[1] = sub_16574;
    v83 = 0xD00000000000001ELL;
    v84 = 0x800000000012C870;
    v85 = v59;
    goto LABEL_118;
  }

  v12 = *(v15 + 96);

  v27 = sub_2BE74(v26);

  v146[0] = _swiftEmptyArrayStorage;
  if (v27 >> 62)
  {
    v28 = sub_1260FC();
    if (v28)
    {
      goto LABEL_20;
    }

LABEL_79:
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_80;
  }

  v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  if (!v28)
  {
    goto LABEL_79;
  }

LABEL_20:
  v29 = 0;
  while ((v27 & 0xC000000000000001) != 0)
  {
    v30 = sub_125FFC();
    v0 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      goto LABEL_30;
    }

LABEL_26:
    if (*(v30 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom))
    {
      sub_12603C();
      v31 = *(v146[0] + 16);
      sub_12607C();
      sub_12608C();
      v12 = v146;
      sub_12604C();
    }

    else
    {
    }

    ++v29;
    if (v0 == v28)
    {
      goto LABEL_31;
    }
  }

  if (v29 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_33;
  }

  v30 = v27[v29 + 4];

  v0 = (v29 + 1);
  if (!__OFADD__(v29, 1))
  {
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v0 = v145;
  v32 = v146[0];
LABEL_80:
  v142 = v32;
  v86 = *(v0[68] + 88);
  if (v86 >> 62)
  {
    goto LABEL_123;
  }

  for (j = *(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)); ; j = sub_1260FC())
  {

    if (!j)
    {
      break;
    }

    v88 = 0;
    while (1)
    {
      if ((v86 & 0xC000000000000001) != 0)
      {
        v89 = sub_125FFC();
      }

      else
      {
        if (v88 >= *(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_122;
        }

        v89 = *(v86 + 8 * v88 + 32);
      }

      v90 = v89;
      v91 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      [v89 type];
      v92 = sub_12589C();
      if (v92 == sub_12589C())
      {

        v93 = sub_113D6C(0, 0);

        goto LABEL_94;
      }

      ++v88;
      if (v91 == j)
      {
        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    ;
  }

LABEL_92:

  v93 = 0;
LABEL_94:
  v140 = v93;
  v145[143] = v93;
  v94 = v145[120];
  v95 = v145[106];
  v96 = v145[99];
  v97 = v145[98];
  v98 = v145[97];
  (*(v145[101] + 104))(v145[102], enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v145[100]);
  (*(v97 + 16))(v96, v94, v98);
  mach_absolute_time();
  sub_12502C();
  if (qword_15F070 != -1)
  {
    swift_once();
  }

  v99 = *(v145[68] + 64);
  v100 = [v99 label];
  if (v100)
  {
    v101 = v145[88];
    v102 = v100;
    sub_125B9C();

    sub_125BCC();

    v103 = 0;
  }

  else
  {
    v103 = 1;
  }

  v104 = v145[88];
  v105 = v145[87];
  v106 = v145[86];
  v137 = v145[85];
  v107 = v145[68];
  v108 = sub_124E4C();
  v136 = *(v108 - 8);
  v109 = *(v136 + 56);
  v109(v104, v103, 1, v108);
  v110 = sub_FE18();
  v145[144] = v110;
  [v99 type];
  sub_12588C();
  v109(v105, 0, 1, v108);
  [v99 state];
  sub_1258AC();
  v109(v106, 0, 1, v108);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v111 = swift_allocObject();
  v145[145] = v111;
  *(v111 + 16) = xmmword_127200;
  *(v111 + 32) = 0xD000000000000013;
  *(v111 + 40) = 0x800000000012C810;
  sub_23A98(v104, v137);
  v112 = *(v136 + 48);
  v113 = v112(v137, 1, v108);
  v114 = v145[85];
  if (v113 == 1)
  {
    sub_5CA8(v145[85], &unk_15F170, &unk_126E00);
    *(v111 + 48) = 0u;
    *(v111 + 64) = 0u;
  }

  else
  {
    *(v111 + 72) = v108;
    v115 = sub_23B4C((v111 + 48));
    (*(v136 + 32))(v115, v114, v108);
  }

  *(v111 + 80) = 0xD000000000000016;
  *(v111 + 88) = 0x800000000012C830;
  if (v110)
  {
    v116 = sub_124D7C();
    v117 = v110;
  }

  else
  {
    v117 = 0;
    v116 = 0;
    *(v111 + 104) = 0;
    *(v111 + 112) = 0;
  }

  v118 = v145[87];
  v119 = v145[84];
  *(v111 + 96) = v117;
  *(v111 + 120) = v116;
  strcpy((v111 + 128), "requestedType");
  *(v111 + 142) = -4864;
  sub_23A98(v118, v119);
  v120 = v112(v119, 1, v108);
  v121 = v145[84];
  if (v120 == 1)
  {

    sub_5CA8(v121, &unk_15F170, &unk_126E00);
    *(v111 + 144) = 0u;
    *(v111 + 160) = 0u;
  }

  else
  {
    *(v111 + 168) = v108;
    v122 = sub_23B4C((v111 + 144));
    (*(v136 + 32))(v122, v121, v108);
  }

  v123 = v145[86];
  v124 = v145[83];
  strcpy((v111 + 176), "requestedState");
  *(v111 + 191) = -18;
  sub_23A98(v123, v124);
  v125 = v112(v124, 1, v108);
  v126 = v145[83];
  if (v125 == 1)
  {
    sub_5CA8(v145[83], &unk_15F170, &unk_126E00);
    *(v111 + 192) = 0u;
    *(v111 + 208) = 0u;
  }

  else
  {
    *(v111 + 216) = v108;
    v127 = sub_23B4C((v111 + 192));
    (*(v136 + 32))(v127, v126, v108);
  }

  *(v111 + 224) = 0x65686374616D6E75;
  *(v111 + 232) = 0xEF7372656D695464;
  v128 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v111 + 240) = v27;
  *(v111 + 264) = v128;
  *(v111 + 272) = 0x6D69547065656C73;
  *(v111 + 280) = 0xEA00000000007265;
  if (v140)
  {
    v129 = type metadata accessor for TimerTimer(0);
    v130 = v140;
  }

  else
  {
    v130 = 0;
    v129 = 0;
    *(v111 + 296) = 0;
    *(v111 + 304) = 0;
  }

  *(v111 + 288) = v130;
  *(v111 + 312) = v129;
  *(v111 + 320) = 0xD000000000000019;
  *(v111 + 328) = 0x800000000012C890;
  *(v111 + 336) = v142;
  *(v111 + 360) = v128;
  *(v111 + 368) = 0x676E6970756F7267;
  *(v111 + 376) = 0xE800000000000000;
  if (v143)
  {
    v131 = type metadata accessor for TimerTimerGrouping();
  }

  else
  {
    v131 = 0;
    *(v111 + 392) = 0;
    *(v111 + 400) = 0;
  }

  v145[146] = v143;
  *(v111 + 384) = v143;
  *(v111 + 408) = v131;
  v132 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v144 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v133 = swift_task_alloc();
  v145[147] = v133;
  *v133 = v145;
  v133[1] = sub_15CBC;
  v83 = 0xD000000000000020;
  v84 = 0x800000000012C8B0;
  v85 = v111;
LABEL_118:

  return v144(v83, v84, v85);
}

uint64_t sub_15CBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[62] = v2;
  v4[63] = a1;
  v4[64] = v1;
  v5 = v3[147];
  v6 = *v2;
  v4[148] = v1;

  v7 = v3[145];
  if (v1)
  {
    v8 = v4[141];

    v9 = sub_16214;
  }

  else
  {
    v10 = v4[144];
    v11 = v4[88];
    v12 = v4[87];
    v13 = v4[86];

    sub_5CA8(v13, &unk_15F170, &unk_126E00);
    sub_5CA8(v12, &unk_15F170, &unk_126E00);
    sub_5CA8(v11, &unk_15F170, &unk_126E00);
    v9 = sub_15E68;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_15E68()
{
  v36 = v0;
  v1 = v0[63];
  v2 = v0[143];
  v3 = v0[141];

  v0[155] = v1;
  if (v3)
  {
    v4 = v0[141];
    v5 = v0[120];

    v6 = sub_125AAC();
    v7 = sub_125DFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[140];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_8530(v8, v4, &v35);
      _os_log_impl(&dword_0, v6, v7, "[SearchTimer.ResultSetProvider.makeIntentHandledResponse] We have a live activity: %s", v9, 0xCu);
      sub_5BB0(v10);
    }

    v11 = v0[74];
    v12 = v0[73];
    v13 = v0[72];
    v0[35] = v13;
    v0[36] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel);
    v14 = sub_23B4C(v0 + 32);
    (*(v12 + 16))(v14, v11, v13);
    v15 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v16 = swift_task_alloc();
    v0[156] = v16;
    *v16 = v0;
    v16[1] = sub_16E2C;
    v17 = v0[141];
    v18 = v0[140];
    v19 = v0[118];
    v20 = v0[114];
    v21 = v0[106];
    v39 = 2;
    v38 = 0x800000000012C8E0;
    v22 = v0 + 27;
    v23 = v0 + 32;
  }

  else
  {
    v24 = v0[120];
    v25 = sub_125AAC();
    v26 = sub_125DFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "[SearchTimer.ResultSetProvider.makeIntentHandledResponse] Using multi-timer snippet model for single matched timer instead.", v27, 2u);
    }

    v28 = v0[74];
    v29 = v0[73];
    v30 = v0[72];

    v0[25] = v30;
    v0[26] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel);
    v31 = sub_23B4C(v0 + 22);
    (*(v29 + 16))(v31, v28, v30);
    v32 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v33 = swift_task_alloc();
    v0[157] = v33;
    *v33 = v0;
    v33[1] = sub_17270;
    v19 = v0[118];
    v20 = v0[114];
    v21 = v0[106];
    v39 = 2;
    v38 = 0x800000000012C8E0;
    v22 = v0 + 17;
    v23 = v0 + 22;
    v18 = 0;
    v17 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v22, v19, v20, v23, v21, v18, v17, 0xD00000000000001DLL);
}

uint64_t sub_16214()
{
  v42 = v0[146];
  v1 = v0[144];
  v34 = v0[143];
  v2 = v0[116];
  v46 = v0[119];
  v48 = v0[115];
  v54 = v0[114];
  v3 = v0[113];
  v50 = v0[118];
  v52 = v0[112];
  v40 = v0[106];
  v4 = v0[104];
  v36 = v0[103];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v44 = v0[74];
  v8 = v0[73];
  v38 = v0[72];

  sub_5CA8(v7, &unk_15F170, &unk_126E00);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);

  (*(v4 + 8))(v40, v36);
  (*(v8 + 8))(v44, v38);
  (*(v2 + 8))(v50, v48);
  (*(v3 + 8))(v54, v52);
  v55 = v0[148];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[114];
  v12 = v0[111];
  v13 = v0[108];
  v14 = v0[107];
  v15 = v0[106];
  v16 = v0[105];
  v17 = v0[102];
  v18 = v0[99];
  v21 = v0[96];
  v22 = v0[95];
  v23 = v0[94];
  v24 = v0[93];
  v25 = v0[92];
  v26 = v0[91];
  v27 = v0[90];
  v28 = v0[89];
  v29 = v0[88];
  v30 = v0[87];
  v31 = v0[86];
  v32 = v0[85];
  v33 = v0[84];
  v35 = v0[83];
  v37 = v0[82];
  v39 = v0[81];
  v41 = v0[80];
  v43 = v0[79];
  v45 = v0[78];
  v47 = v0[77];
  v49 = v0[76];
  v51 = v0[74];
  v53 = v0[71];

  v19 = v0[1];

  return v19();
}

uint64_t sub_16574(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[65] = v2;
  v4[66] = a1;
  v4[67] = v1;
  v5 = v3[153];
  v6 = *v2;
  v4[154] = v1;

  v7 = v3[151];
  if (v1)
  {
    v8 = v4[141];

    v9 = sub_16AD0;
  }

  else
  {
    v10 = v4[150];
    v11 = v4[82];
    v12 = v4[81];
    v13 = v4[80];

    sub_5CA8(v13, &unk_15F170, &unk_126E00);
    sub_5CA8(v12, &unk_15F170, &unk_126E00);
    sub_5CA8(v11, &unk_15F170, &unk_126E00);
    v9 = sub_16724;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_16724()
{
  v36 = v0;
  v1 = v0[66];
  v2 = v0[149];
  v3 = v0[141];

  v0[155] = v1;
  if (v3)
  {
    v4 = v0[141];
    v5 = v0[120];

    v6 = sub_125AAC();
    v7 = sub_125DFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[140];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_8530(v8, v4, &v35);
      _os_log_impl(&dword_0, v6, v7, "[SearchTimer.ResultSetProvider.makeIntentHandledResponse] We have a live activity: %s", v9, 0xCu);
      sub_5BB0(v10);
    }

    v11 = v0[74];
    v12 = v0[73];
    v13 = v0[72];
    v0[35] = v13;
    v0[36] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel);
    v14 = sub_23B4C(v0 + 32);
    (*(v12 + 16))(v14, v11, v13);
    v15 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v16 = swift_task_alloc();
    v0[156] = v16;
    *v16 = v0;
    v16[1] = sub_16E2C;
    v17 = v0[141];
    v18 = v0[140];
    v19 = v0[118];
    v20 = v0[114];
    v21 = v0[106];
    v39 = 2;
    v38 = 0x800000000012C8E0;
    v22 = v0 + 27;
    v23 = v0 + 32;
  }

  else
  {
    v24 = v0[120];
    v25 = sub_125AAC();
    v26 = sub_125DFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "[SearchTimer.ResultSetProvider.makeIntentHandledResponse] Using multi-timer snippet model for single matched timer instead.", v27, 2u);
    }

    v28 = v0[74];
    v29 = v0[73];
    v30 = v0[72];

    v0[25] = v30;
    v0[26] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel);
    v31 = sub_23B4C(v0 + 22);
    (*(v29 + 16))(v31, v28, v30);
    v32 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v33 = swift_task_alloc();
    v0[157] = v33;
    *v33 = v0;
    v33[1] = sub_17270;
    v19 = v0[118];
    v20 = v0[114];
    v21 = v0[106];
    v39 = 2;
    v38 = 0x800000000012C8E0;
    v22 = v0 + 17;
    v23 = v0 + 22;
    v18 = 0;
    v17 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v22, v19, v20, v23, v21, v18, v17, 0xD00000000000001DLL);
}

uint64_t sub_16AD0()
{
  v1 = v0[150];
  v34 = v0[152];
  v36 = v0[149];
  v2 = v0[116];
  v46 = v0[119];
  v48 = v0[115];
  v54 = v0[114];
  v3 = v0[113];
  v50 = v0[118];
  v52 = v0[112];
  v42 = v0[106];
  v4 = v0[104];
  v38 = v0[103];
  v5 = v0[82];
  v6 = v0[81];
  v7 = v0[80];
  v44 = v0[74];
  v8 = v0[73];
  v40 = v0[72];

  sub_5CA8(v7, &unk_15F170, &unk_126E00);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);

  (*(v4 + 8))(v42, v38);
  (*(v8 + 8))(v44, v40);
  (*(v2 + 8))(v50, v48);
  (*(v3 + 8))(v54, v52);
  v55 = v0[154];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[114];
  v12 = v0[111];
  v13 = v0[108];
  v14 = v0[107];
  v15 = v0[106];
  v16 = v0[105];
  v17 = v0[102];
  v18 = v0[99];
  v21 = v0[96];
  v22 = v0[95];
  v23 = v0[94];
  v24 = v0[93];
  v25 = v0[92];
  v26 = v0[91];
  v27 = v0[90];
  v28 = v0[89];
  v29 = v0[88];
  v30 = v0[87];
  v31 = v0[86];
  v32 = v0[85];
  v33 = v0[84];
  v35 = v0[83];
  v37 = v0[82];
  v39 = v0[81];
  v41 = v0[80];
  v43 = v0[79];
  v45 = v0[78];
  v47 = v0[77];
  v49 = v0[76];
  v51 = v0[74];
  v53 = v0[71];

  v19 = v0[1];

  return v19();
}

uint64_t sub_16E2C()
{
  v1 = *v0;
  v2 = *(*v0 + 1248);
  v3 = *(*v0 + 1128);
  v5 = *v0;

  sub_5CA8(v1 + 256, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_16F5C, 0, 0);
}

uint64_t sub_16F5C()
{
  v1 = v0[155];
  v2 = v0[142];
  v3 = v0[119];
  v4 = v0[116];
  v44 = v0[115];
  v46 = v0[118];
  v5 = v0[104];
  v6 = v0[103];
  v42 = v0[74];
  v7 = v0[73];
  v38 = v0[106];
  v40 = v0[72];
  v8 = v0[31];
  sub_23B08(v0 + 27, v0[30]);
  v48 = sub_123D4C();

  (*(v5 + 8))(v38, v6);
  (*(v7 + 8))(v42, v40);
  (*(v4 + 8))(v46, v44);
  sub_5BB0(v0 + 27);
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[111];
  v12 = v0[108];
  v13 = v0[107];
  v14 = v0[106];
  v15 = v0[105];
  v16 = v0[102];
  v19 = v0[99];
  v20 = v0[96];
  v21 = v0[95];
  v22 = v0[94];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[85];
  v32 = v0[84];
  v33 = v0[83];
  v34 = v0[82];
  v35 = v0[81];
  v36 = v0[80];
  v37 = v0[79];
  v39 = v0[78];
  v41 = v0[77];
  v43 = v0[76];
  v45 = v0[74];
  v47 = v0[71];
  (*(v0[113] + 8))(v0[114], v0[112]);

  v17 = v0[1];

  return v17(v48);
}

uint64_t sub_17270()
{
  v1 = *v0;
  v2 = *(*v0 + 1256);
  v4 = *v0;

  sub_5CA8(v1 + 176, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_17384, 0, 0);
}

uint64_t sub_17384()
{
  v1 = v0[155];
  v2 = v0[142];
  v3 = v0[119];
  v4 = v0[116];
  v44 = v0[115];
  v46 = v0[118];
  v5 = v0[104];
  v6 = v0[103];
  v42 = v0[74];
  v7 = v0[73];
  v38 = v0[106];
  v40 = v0[72];
  v8 = v0[21];
  sub_23B08(v0 + 17, v0[20]);
  v48 = sub_123D4C();

  (*(v5 + 8))(v38, v6);
  (*(v7 + 8))(v42, v40);
  (*(v4 + 8))(v46, v44);
  sub_5BB0(v0 + 17);
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[111];
  v12 = v0[108];
  v13 = v0[107];
  v14 = v0[106];
  v15 = v0[105];
  v16 = v0[102];
  v19 = v0[99];
  v20 = v0[96];
  v21 = v0[95];
  v22 = v0[94];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[85];
  v32 = v0[84];
  v33 = v0[83];
  v34 = v0[82];
  v35 = v0[81];
  v36 = v0[80];
  v37 = v0[79];
  v39 = v0[78];
  v41 = v0[77];
  v43 = v0[76];
  v45 = v0[74];
  v47 = v0[71];
  (*(v0[113] + 8))(v0[114], v0[112]);

  v17 = v0[1];

  return v17(v48);
}

uint64_t sub_17698(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1272);
  v5 = *(*v2 + 1264);
  v7 = *v2;
  *(v3 + 1280) = a1;
  *(v3 + 1288) = a2;

  return _swift_task_switch(sub_177BC, 0, 0);
}

uint64_t sub_177BC()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 840);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = *(v0 + 800);
  v6 = *(v0 + 792);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  sub_5BB0((v0 + 56));
  (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v5);
  (*(v7 + 16))(v6, v1, v8);
  mach_absolute_time();
  sub_12502C();
  if (qword_15F078 != -1)
  {
    swift_once();
  }

  v9 = *(*(v0 + 544) + 112);
  [*(v0 + 952) type];
  v10 = sub_12589C();
  LOWORD(v10) = v10 == sub_12589C();
  v11 = sub_113D6C(0, 0);
  *(v0 + 1296) = v11;
  v12 = sub_ADDF4(v9 | (v10 << 8), v11);
  *(v0 + 1304) = v12;
  v13 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v16 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = swift_task_alloc();
  *(v0 + 1312) = v14;
  *v14 = v0;
  v14[1] = sub_179A8;

  return v16(0xD00000000000001DLL, 0x800000000012C8E0, v12);
}

uint64_t sub_179A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1312);
  v6 = *v2;
  v4[165] = v1;

  v7 = v4[163];
  if (v1)
  {
    v8 = v4[161];

    v9 = sub_18068;
  }

  else
  {

    v4[166] = a1;
    v9 = sub_17AFC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_17AFC()
{
  v1 = v0[162];
  v2 = v0[161];
  v3 = v0[160];
  v4 = v0[118];
  v5 = v0[117];
  v6 = v0[116];
  v7 = v0[115];
  v8 = v0[114];
  v9 = v0[71];

  (*(v6 + 16))(v5, v4, v7);
  v10 = swift_task_alloc();
  v10[2] = v8;
  v10[3] = v3;
  v10[4] = v2;
  sub_123B0C();

  v11 = async function pointer to PatternExecutionResult.generateFlow(manifest:measure:)[1];
  v12 = swift_task_alloc();
  v0[167] = v12;
  *v12 = v0;
  v12[1] = sub_17C40;
  v13 = v0[166];
  v14 = v0[105];
  v15 = v0[71];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v15, v14);
}

uint64_t sub_17C40(uint64_t a1)
{
  v2 = *(*v1 + 1336);
  v3 = *(*v1 + 1328);
  v4 = *(*v1 + 568);
  v5 = *(*v1 + 560);
  v6 = *(*v1 + 552);
  v8 = *v1;
  *(*v1 + 1344) = a1;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_17DB8, 0, 0);
}

uint64_t sub_17DB8()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 840);
  v5 = *(v0 + 832);
  v6 = *(v0 + 824);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v41 = *(v0 + 1344);
  v7 = *(v0 + 944);
  v8 = *(v0 + 936);
  v9 = *(v0 + 888);
  v10 = *(v0 + 864);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  v13 = *(v0 + 840);
  v14 = *(v0 + 816);
  v17 = *(v0 + 792);
  v18 = *(v0 + 768);
  v19 = *(v0 + 760);
  v20 = *(v0 + 752);
  v21 = *(v0 + 744);
  v22 = *(v0 + 736);
  v23 = *(v0 + 728);
  v24 = *(v0 + 720);
  v25 = *(v0 + 712);
  v26 = *(v0 + 704);
  v27 = *(v0 + 696);
  v28 = *(v0 + 688);
  v29 = *(v0 + 680);
  v30 = *(v0 + 672);
  v31 = *(v0 + 664);
  v32 = *(v0 + 656);
  v33 = *(v0 + 648);
  v34 = *(v0 + 640);
  v35 = *(v0 + 632);
  v36 = *(v0 + 624);
  v37 = *(v0 + 616);
  v38 = *(v0 + 608);
  v39 = *(v0 + 592);
  v40 = *(v0 + 568);
  (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));

  v15 = *(v0 + 8);

  return v15(v41);
}

uint64_t sub_18068()
{
  v1 = v0[162];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[116];
  v5 = v0[115];
  v46 = v0[114];
  v6 = v0[113];
  v7 = v0[112];
  v8 = v0[105];
  v9 = v0[104];
  v10 = v0[103];

  (*(v9 + 8))(v8, v10);
  (*(v4 + 8))(v3, v5);
  (*(v6 + 8))(v46, v7);
  v47 = v0[165];
  v11 = v0[118];
  v12 = v0[117];
  v13 = v0[114];
  v14 = v0[111];
  v15 = v0[108];
  v16 = v0[107];
  v17 = v0[106];
  v18 = v0[105];
  v19 = v0[102];
  v20 = v0[99];
  v23 = v0[96];
  v24 = v0[95];
  v25 = v0[94];
  v26 = v0[93];
  v27 = v0[92];
  v28 = v0[91];
  v29 = v0[90];
  v30 = v0[89];
  v31 = v0[88];
  v32 = v0[87];
  v33 = v0[86];
  v34 = v0[85];
  v35 = v0[84];
  v36 = v0[83];
  v37 = v0[82];
  v38 = v0[81];
  v39 = v0[80];
  v40 = v0[79];
  v41 = v0[78];
  v42 = v0[77];
  v43 = v0[76];
  v44 = v0[74];
  v45 = v0[71];

  v21 = v0[1];

  return v21();
}

uint64_t sub_18324(uint64_t a1)
{
  v2 = sub_12575C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimerTimerGrouping.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 19) = 0;
  *(inited + 16) = *(a1 + 16) == 0;
  v8 = v3[13];
  v8(v6, enum case for TimerGrouping.statePaused(_:), v2);
  v9 = sub_22C84(v6, a1);
  v10 = v3[1];
  v10(v6, v2);
  *(inited + 21) = v9 & 1;
  v8(v6, enum case for TimerGrouping.stateRunning(_:), v2);
  v11 = sub_22C84(v6, a1);
  v10(v6, v2);
  *(inited + 20) = v11 & 1;
  v8(v6, enum case for TimerGrouping.device(_:), v2);
  v12 = sub_22C84(v6, a1);
  v10(v6, v2);
  *(inited + 19) = v12 & 1;
  v8(v6, enum case for TimerGrouping.room(_:), v2);
  v13 = sub_22C84(v6, a1);
  v10(v6, v2);
  *(inited + 18) = v13 & 1;
  v8(v6, enum case for TimerGrouping.label(_:), v2);
  v14 = sub_22C84(v6, a1);
  v10(v6, v2);
  *(inited + 17) = v14 & 1;
  v8(v6, enum case for TimerGrouping.duration(_:), v2);
  LOBYTE(a1) = sub_22C84(v6, a1);
  v10(v6, v2);
  *(inited + 22) = a1 & 1;
  type metadata accessor for TimerTimerGrouping();
  swift_allocObject();
  return sub_90334(inited);
}

uint64_t sub_18604(uint64_t a1, uint64_t a2)
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

uint64_t sub_18728()
{
  v1[22] = v0;
  v2 = sub_123B3C();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v5 = sub_123C1C();
  v1[26] = v5;
  v6 = *(v5 - 8);
  v1[27] = v6;
  v7 = *(v6 + 64) + 15;
  v1[28] = swift_task_alloc();
  v8 = sub_12368C();
  v1[29] = v8;
  v9 = *(v8 - 8);
  v1[30] = v9;
  v10 = *(v9 + 64) + 15;
  v1[31] = swift_task_alloc();
  v11 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v12 = sub_125ABC();
  v1[44] = v12;
  v13 = *(v12 - 8);
  v1[45] = v13;
  v14 = *(v13 + 64) + 15;
  v1[46] = swift_task_alloc();
  v15 = sub_124FFC();
  v1[47] = v15;
  v16 = *(v15 - 8);
  v1[48] = v16;
  v17 = *(v16 + 64) + 15;
  v1[49] = swift_task_alloc();
  v18 = sub_12501C();
  v1[50] = v18;
  v19 = *(v18 - 8);
  v1[51] = v19;
  v20 = *(v19 + 64) + 15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v21 = sub_124F4C();
  v1[55] = v21;
  v22 = *(v21 - 8);
  v1[56] = v22;
  v23 = *(v22 + 64) + 15;
  v1[57] = swift_task_alloc();
  v24 = sub_12503C();
  v1[58] = v24;
  v25 = *(v24 - 8);
  v1[59] = v25;
  v26 = *(v25 + 64) + 15;
  v1[60] = swift_task_alloc();
  v27 = sub_1250BC();
  v1[61] = v27;
  v28 = *(v27 - 8);
  v1[62] = v28;
  v29 = *(v28 + 64) + 15;
  v1[63] = swift_task_alloc();
  v30 = sub_12392C();
  v1[64] = v30;
  v31 = *(v30 - 8);
  v1[65] = v31;
  v32 = *(v31 + 64) + 15;
  v1[66] = swift_task_alloc();

  return _swift_task_switch(sub_18BF8, 0, 0);
}

uint64_t sub_18BF8()
{
  v203 = v0;
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(*(v0 + 352), qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider makeAllResultsFlow", v4, 2u);
  }

  v5 = *(v0 + 176);

  v6 = *(v5 + 56);
  if (!(v6 >> 62))
  {
    if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_15:
    v12 = swift_task_alloc();
    *(v0 + 536) = v12;
    *v12 = v0;
    v12[1] = sub_1A318;
    v13 = *(v0 + 176);

    return sub_101EC();
  }

  if (v6 < 0)
  {
    v11 = *(v5 + 56);
  }

  if (!sub_1260FC())
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

    if (sub_1260FC() == 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_9:
    v8 = swift_task_alloc();
    *(v0 + 544) = v8;
    *v8 = v0;
    v8[1] = sub_1A718;
    v9 = *(v0 + 176);

    return sub_11558();
  }

  v15 = *(v5 + 56);
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v19 = *(v5 + 56);
    }

    v20 = sub_1260FC();
    v16 = *(v0 + 528);
    if (v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = *(v0 + 528);
    if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_23:
      v17 = *(v5 + 56);

      sub_FF26C(v18, v16);

      goto LABEL_28;
    }
  }

  sub_12391C();
LABEL_28:
  v21 = *(v0 + 496);
  v22 = *(v0 + 504);
  v23 = *(v0 + 488);
  sub_1250AC();
  v24 = sub_12504C();
  (*(v21 + 8))(v22, v23);
  if (!v24)
  {
    v43 = *(v0 + 416);
    v44 = *(v0 + 368);
    v46 = *(v0 + 352);
    v45 = *(v0 + 360);
    v47 = *(v0 + 224);
    (*(*(v0 + 384) + 104))(*(v0 + 392), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 376));
    (*(v45 + 16))(v44, v1, v46);
    mach_absolute_time();
    sub_12502C();
    sub_123BCC();
    v48 = *(v5 + 56);
    *(v0 + 680) = v48;

    v49 = swift_task_alloc();
    *(v0 + 688) = v49;
    *v49 = v0;
    v49[1] = sub_1BD9C;
    v50 = *(v0 + 224);
    v51 = *(v0 + 176);

    return sub_1EEF0(v50, v48);
  }

  v25 = sub_125AAC();
  v26 = sub_125DFC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "[SearchTimer.ResultSetProvider.makeAllResultsFlow] Using multi-timer RF 2.0 path", v27, 2u);
  }

  v28 = *(v5 + 56);
  if (v28 >> 62)
  {
    goto LABEL_79;
  }

  v29 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
LABEL_33:
  v196 = v1;
  v1 = _swiftEmptyArrayStorage;
  v200 = v0;
  if (v29)
  {
    v202[0] = _swiftEmptyArrayStorage;
    v30 = v28;

    v31 = v202;
    sub_22A8C(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      goto LABEL_98;
    }

    v32 = 0;
    v33 = *(v0 + 448);
    v34 = v202[0];
    v35 = v30;
    v36 = v29;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v37 = sub_125FFC();
      }

      else
      {
        v37 = *(v35 + 8 * v32 + 32);
      }

      v38 = v37;
      sub_1135FC(*(v0 + 456));

      v202[0] = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22A8C(v39 > 1, v40 + 1, 1);
        v34 = v202[0];
      }

      v41 = *(v0 + 456);
      v42 = *(v0 + 440);
      ++v32;
      *(v34 + 16) = v40 + 1;
      (*(v33 + 32))(v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v40, v41, v42);
      v35 = v30;
    }

    while (v36 != v32);

    v1 = _swiftEmptyArrayStorage;
  }

  v52 = *(v0 + 472);
  v53 = *(v0 + 480);
  v54 = *(v0 + 464);
  v55 = *(v0 + 176);
  sub_12521C();
  (*(v52 + 104))(v53, enum case for SiriTimePluginModel.timerMulti(_:), v54);
  v56 = v55;
  v57 = *(v55 + 88);
  if (v57 >> 62)
  {
    if (v57 < 0)
    {
      v75 = *(v55 + 88);
    }

    if (sub_1260FC())
    {
LABEL_48:
      v58 = *(v55 + 88);
      sub_1257EC();

      v59 = sub_125CAC();

      v0 = sub_18324(v59);

      v31 = *(v56 + 88);
      v197 = v56;
      v194 = v0;
      if (!(v31 >> 62))
      {
        v60 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_50;
      }

LABEL_99:
      v60 = sub_1260FC();
LABEL_50:

      if (v60)
      {
        v61 = 0;
        while (1)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v28 = sub_125FFC();
          }

          else
          {
            if (v61 >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_78;
            }

            v28 = *(v31 + 8 * v61 + 32);
          }

          v62 = v28;
          v0 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_77;
          }

          [v28 type];
          v63 = sub_12589C();
          if (v63 == sub_12589C())
          {
            break;
          }

          ++v61;
          if (v0 == v60)
          {
            goto LABEL_60;
          }
        }

        v64 = sub_113D6C(0, 0);
      }

      else
      {
LABEL_60:

        v64 = 0;
      }

      v65 = v200;
      v192 = v64;
      v200[77] = v64;
      v66 = *(v197 + 88);

      v68 = sub_2BE74(v67);

      v202[0] = v1;
      if (v68 >> 62)
      {
        v28 = sub_1260FC();
        v69 = v28;
        if (v28)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v69 = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
        if (v69)
        {
LABEL_64:
          v70 = 0;
          v0 = &OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom;
          while (1)
          {
            if ((v68 & 0xC000000000000001) != 0)
            {
              v1 = sub_125FFC();
              v71 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
LABEL_74:
                __break(1u);
LABEL_75:
                v65 = v200;
                v73 = v202[0];
                goto LABEL_102;
              }
            }

            else
            {
              if (v70 >= *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
              {
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                v74 = v28;
                v29 = sub_1260FC();
                v28 = v74;
                goto LABEL_33;
              }

              v1 = v68[v70 + 4];

              v71 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                goto LABEL_74;
              }
            }

            if (*(v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom))
            {
              sub_12603C();
              v72 = *(v202[0] + 16);
              sub_12607C();
              sub_12608C();
              v28 = sub_12604C();
            }

            else
            {
            }

            ++v70;
            if (v71 == v69)
            {
              goto LABEL_75;
            }
          }
        }
      }

      v73 = _swiftEmptyArrayStorage;
LABEL_102:
      v190 = v73;
      v83 = v65[53];
      v84 = v65[48];
      v85 = v65[49];
      v87 = v65[46];
      v86 = v65[47];
      v89 = v65[44];
      v88 = v65[45];

      (*(v84 + 104))(v85, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v86);
      (*(v88 + 16))(v87, v196, v89);
      mach_absolute_time();
      sub_12502C();
      if (qword_15F070 != -1)
      {
        swift_once();
      }

      v186 = *(v65[22] + 64);
      v90 = [v186 label];
      v91 = v65;
      if (v90)
      {
        v92 = v65[37];
        v93 = v90;
        sub_125B9C();

        v91 = v200;
        sub_125BCC();

        v94 = 0;
      }

      else
      {
        v94 = 1;
      }

      v95 = v91[36];
      v96 = v91[37];
      v185 = v96;
      v97 = v91[35];
      v188 = v91[34];
      v98 = v91[22];
      v99 = sub_124E4C();
      v100 = *(v99 - 8);
      v101 = *(v100 + 56);
      v101(v96, v94, 1, v99);
      v102 = sub_FE18();
      v91[78] = v102;
      [v186 type];
      sub_12588C();
      v101(v95, 0, 1, v99);
      [v186 state];
      sub_1258AC();
      v101(v97, 0, 1, v99);
      v103 = *(v197 + 88);

      v198 = sub_2BE74(v104);
      v105 = v100;

      sub_5AE8(&qword_15F180, &unk_126E10);
      v106 = swift_allocObject();
      v91[79] = v106;
      *(v106 + 16) = xmmword_127200;
      *(v106 + 32) = 0xD000000000000013;
      *(v106 + 40) = 0x800000000012C810;
      sub_23A98(v185, v188);
      v107 = *(v100 + 48);
      v108 = v107(v188, 1, v99);
      v109 = v91[34];
      if (v108 == 1)
      {
        sub_5CA8(v91[34], &unk_15F170, &unk_126E00);
        *(v106 + 48) = 0u;
        *(v106 + 64) = 0u;
      }

      else
      {
        *(v106 + 72) = v99;
        v110 = sub_23B4C((v106 + 48));
        (*(v105 + 32))(v110, v109, v99);
      }

      *(v106 + 80) = 0xD000000000000016;
      *(v106 + 88) = 0x800000000012C830;
      if (v102)
      {
        v111 = sub_124D7C();
        v112 = v102;
      }

      else
      {
        v112 = 0;
        v111 = 0;
        *(v106 + 104) = 0;
        *(v106 + 112) = 0;
      }

      v113 = v200[36];
      v114 = v200[33];
      *(v106 + 96) = v112;
      *(v106 + 120) = v111;
      strcpy((v106 + 128), "requestedType");
      *(v106 + 142) = -4864;
      sub_23A98(v113, v114);
      v115 = v107(v114, 1, v99);
      v116 = v200[33];
      if (v115 == 1)
      {

        sub_5CA8(v116, &unk_15F170, &unk_126E00);
        *(v106 + 144) = 0u;
        *(v106 + 160) = 0u;
      }

      else
      {
        *(v106 + 168) = v99;
        v117 = sub_23B4C((v106 + 144));
        (*(v105 + 32))(v117, v116, v99);
      }

      v118 = v200[35];
      v119 = v200[32];
      strcpy((v106 + 176), "requestedState");
      *(v106 + 191) = -18;
      sub_23A98(v118, v119);
      v120 = v107(v119, 1, v99);
      v121 = v200[32];
      if (v120 == 1)
      {
        sub_5CA8(v200[32], &unk_15F170, &unk_126E00);
        *(v106 + 192) = 0u;
        *(v106 + 208) = 0u;
      }

      else
      {
        *(v106 + 216) = v99;
        v122 = sub_23B4C((v106 + 192));
        (*(v105 + 32))(v122, v121, v99);
      }

      strcpy((v106 + 224), "matchedTimers");
      *(v106 + 238) = -4864;
      v123 = sub_5AE8(&qword_15F928, &unk_127400);
      *(v106 + 240) = v198;
      *(v106 + 264) = v123;
      *(v106 + 272) = 0x6D69547065656C73;
      *(v106 + 280) = 0xEA00000000007265;
      if (v192)
      {
        v124 = type metadata accessor for TimerTimer(0);
        v125 = v192;
      }

      else
      {
        v125 = 0;
        v124 = 0;
        *(v106 + 296) = 0;
        *(v106 + 304) = 0;
      }

      *(v106 + 288) = v125;
      *(v106 + 312) = v124;
      *(v106 + 320) = 0xD00000000000001DLL;
      *(v106 + 328) = 0x800000000012C850;
      *(v106 + 336) = v190;
      *(v106 + 360) = v123;
      *(v106 + 368) = 0x676E6970756F7267;
      *(v106 + 376) = 0xE800000000000000;
      v126 = 0;
      if (v194)
      {
        v126 = type metadata accessor for TimerTimerGrouping();
      }

      else
      {
        *(v106 + 392) = 0;
        *(v106 + 400) = 0;
      }

      v127 = v200;
      v200[80] = v194;
      *(v106 + 384) = v194;
      *(v106 + 408) = v126;
      v128 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v201 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v129 = swift_task_alloc();
      v127[81] = v129;
      *v129 = v127;
      v129[1] = sub_1B450;
      v130 = 0xD00000000000001ELL;
      v131 = 0x800000000012C870;
      v132 = v106;
      goto LABEL_166;
    }
  }

  else if (*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_48;
  }

  v197 = *(v0 + 176);
  v31 = *(v197 + 96);

  v0 = sub_2BE74(v76);

  v202[0] = _swiftEmptyArrayStorage;
  if (v0 >> 62)
  {
    v77 = sub_1260FC();
    if (v77)
    {
      goto LABEL_85;
    }

LABEL_127:
    v82 = _swiftEmptyArrayStorage;
    goto LABEL_128;
  }

  v77 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  if (!v77)
  {
    goto LABEL_127;
  }

LABEL_85:
  v78 = 0;
  v1 = (v0 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v0 & 0xC000000000000001) == 0)
    {
      if (v78 < *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
      {
        v79 = *(v0 + 8 * v78 + 32);

        v80 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        goto LABEL_91;
      }

      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v79 = sub_125FFC();
    v80 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

LABEL_91:
    if (*(v79 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom))
    {
      sub_12603C();
      v81 = *(v202[0] + 16);
      sub_12607C();
      sub_12608C();
      v31 = v202;
      sub_12604C();
    }

    else
    {
    }

    ++v78;
    if (v80 == v77)
    {
      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_96:
  v82 = v202[0];
LABEL_128:
  v195 = v82;
  v133 = *(v197 + 96);
  if (v133 >> 62)
  {
    goto LABEL_171;
  }

  for (i = *(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1260FC())
  {

    v193 = v0;
    if (!i)
    {
      break;
    }

    v135 = 0;
    while (1)
    {
      if ((v133 & 0xC000000000000001) != 0)
      {
        v136 = sub_125FFC();
      }

      else
      {
        if (v135 >= *(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_170;
        }

        v136 = *(v133 + 8 * v135 + 32);
      }

      v137 = v136;
      v0 = v135 + 1;
      if (__OFADD__(v135, 1))
      {
        break;
      }

      [v136 type];
      v138 = sub_12589C();
      if (v138 == sub_12589C())
      {

        v139 = sub_113D6C(0, 0);

        goto LABEL_142;
      }

      ++v135;
      if (v0 == i)
      {
        goto LABEL_140;
      }
    }

    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    ;
  }

LABEL_140:

  v139 = 0;
LABEL_142:
  v140 = v200;
  v191 = v139;
  v200[69] = v139;
  v141 = *(v197 + 96);
  sub_1257EC();

  v142 = sub_125CAC();

  v199 = sub_18324(v142);

  v143 = v200[54];
  v144 = v200[46];
  v146 = v200[44];
  v145 = v200[45];
  (*(v140[48] + 104))(v140[49], enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v140[47]);
  (*(v145 + 16))(v144, v196, v146);
  mach_absolute_time();
  sub_12502C();
  if (qword_15F070 != -1)
  {
    swift_once();
  }

  v189 = *(v200[22] + 64);
  v147 = [v189 label];
  if (v147)
  {
    v148 = v200[43];
    v149 = v147;
    sub_125B9C();

    v140 = v200;
    sub_125BCC();

    v150 = 0;
  }

  else
  {
    v150 = 1;
  }

  v151 = v140[42];
  v152 = v140[43];
  v153 = v140[41];
  v187 = v140[40];
  v154 = v140[22];
  v155 = sub_124E4C();
  v156 = *(v155 - 8);
  v157 = v140;
  v158 = *(v156 + 56);
  v158(v152, v150, 1, v155);
  v159 = sub_FE18();
  v157[70] = v159;
  [v189 type];
  sub_12588C();
  v158(v151, 0, 1, v155);
  [v189 state];
  sub_1258AC();
  v158(v153, 0, 1, v155);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v160 = swift_allocObject();
  v157[71] = v160;
  *(v160 + 16) = xmmword_127200;
  *(v160 + 32) = 0xD000000000000013;
  *(v160 + 40) = 0x800000000012C810;
  sub_23A98(v152, v187);
  v161 = *(v156 + 48);
  v162 = v161(v187, 1, v155);
  v163 = v157[40];
  if (v162 == 1)
  {
    v164 = v156;
    sub_5CA8(v157[40], &unk_15F170, &unk_126E00);
    *(v160 + 48) = 0u;
    *(v160 + 64) = 0u;
  }

  else
  {
    *(v160 + 72) = v155;
    v165 = sub_23B4C((v160 + 48));
    v164 = v156;
    (*(v156 + 32))(v165, v163, v155);
  }

  *(v160 + 80) = 0xD000000000000016;
  *(v160 + 88) = 0x800000000012C830;
  if (v159)
  {
    v166 = sub_124D7C();
    v167 = v159;
  }

  else
  {
    v167 = 0;
    v166 = 0;
    *(v160 + 104) = 0;
    *(v160 + 112) = 0;
  }

  v168 = v200[42];
  v169 = v200[39];
  *(v160 + 96) = v167;
  *(v160 + 120) = v166;
  strcpy((v160 + 128), "requestedType");
  *(v160 + 142) = -4864;
  sub_23A98(v168, v169);
  v170 = v161(v169, 1, v155);
  v171 = v200[39];
  if (v170 == 1)
  {

    sub_5CA8(v171, &unk_15F170, &unk_126E00);
    *(v160 + 144) = 0u;
    *(v160 + 160) = 0u;
  }

  else
  {
    *(v160 + 168) = v155;
    v172 = sub_23B4C((v160 + 144));
    (*(v164 + 32))(v172, v171, v155);
  }

  v173 = v200[41];
  v174 = v200[38];
  strcpy((v160 + 176), "requestedState");
  *(v160 + 191) = -18;
  sub_23A98(v173, v174);
  v175 = v161(v174, 1, v155);
  v176 = v200[38];
  if (v175 == 1)
  {
    sub_5CA8(v200[38], &unk_15F170, &unk_126E00);
    *(v160 + 192) = 0u;
    *(v160 + 208) = 0u;
  }

  else
  {
    *(v160 + 216) = v155;
    v177 = sub_23B4C((v160 + 192));
    (*(v164 + 32))(v177, v176, v155);
  }

  *(v160 + 224) = 0x65686374616D6E75;
  *(v160 + 232) = 0xEF7372656D695464;
  v178 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v160 + 240) = v193;
  *(v160 + 264) = v178;
  *(v160 + 272) = 0x6D69547065656C73;
  *(v160 + 280) = 0xEA00000000007265;
  if (v191)
  {
    v179 = type metadata accessor for TimerTimer(0);
    v180 = v191;
  }

  else
  {
    v180 = 0;
    v179 = 0;
    *(v160 + 296) = 0;
    *(v160 + 304) = 0;
  }

  *(v160 + 288) = v180;
  *(v160 + 312) = v179;
  *(v160 + 320) = 0xD000000000000019;
  *(v160 + 328) = 0x800000000012C890;
  *(v160 + 336) = v195;
  *(v160 + 360) = v178;
  *(v160 + 368) = 0x676E6970756F7267;
  *(v160 + 376) = 0xE800000000000000;
  v181 = 0;
  if (v199)
  {
    v181 = type metadata accessor for TimerTimerGrouping();
  }

  else
  {
    *(v160 + 392) = 0;
    *(v160 + 400) = 0;
  }

  v182 = v200;
  v200[72] = v199;
  *(v160 + 384) = v199;
  *(v160 + 408) = v181;
  v183 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v201 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v184 = swift_task_alloc();
  v182[73] = v184;
  *v184 = v182;
  v184[1] = sub_1AB18;
  v130 = 0xD000000000000020;
  v131 = 0x800000000012C8B0;
  v132 = v160;
LABEL_166:

  return v201(v130, v131, v132);
}

uint64_t sub_1A318(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v33 = *v1;

  v4 = v2[66];
  v5 = v2[63];
  v6 = v2[60];
  v7 = v2[57];
  v8 = v2[54];
  v9 = v2[53];
  v10 = v2[52];
  v11 = v2[49];
  v12 = v2[46];
  v18 = v2[43];
  v19 = v2[42];
  v20 = v2[41];
  v21 = v2[40];
  v22 = v2[39];
  v23 = v2[38];
  v24 = v2[37];
  v25 = v2[36];
  v26 = v2[35];
  v27 = v2[34];
  v28 = v2[33];
  v29 = v2[32];
  v30 = v2[31];
  v31 = v2[28];
  v13 = v2[25];

  v15 = *(v33 + 8);
  if (!v32)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_1A718(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v33 = *v1;

  v4 = v2[66];
  v5 = v2[63];
  v6 = v2[60];
  v7 = v2[57];
  v8 = v2[54];
  v9 = v2[53];
  v10 = v2[52];
  v11 = v2[49];
  v12 = v2[46];
  v18 = v2[43];
  v19 = v2[42];
  v20 = v2[41];
  v21 = v2[40];
  v22 = v2[39];
  v23 = v2[38];
  v24 = v2[37];
  v25 = v2[36];
  v26 = v2[35];
  v27 = v2[34];
  v28 = v2[33];
  v29 = v2[32];
  v30 = v2[31];
  v31 = v2[28];
  v13 = v2[25];

  v15 = *(v33 + 8);
  if (!v32)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_1AB18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 584);
  v6 = *(*v2 + 568);
  v13 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v7 = sub_1B1D4;
  }

  else
  {
    v8 = v4[70];
    v10 = v4[42];
    v9 = v4[43];
    v11 = v4[41];
    v4[75] = a1;

    sub_5CA8(v11, &unk_15F170, &unk_126E00);
    sub_5CA8(v10, &unk_15F170, &unk_126E00);
    sub_5CA8(v9, &unk_15F170, &unk_126E00);
    v7 = sub_1ACB0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1ACB0()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[31];
  sub_12361C();
  v0[20] = v3;
  v0[21] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel);
  v5 = sub_23B4C(v0 + 17);
  (*(v2 + 16))(v5, v1, v3);
  v6 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v7 = swift_task_alloc();
  v0[76] = v7;
  *v7 = v0;
  v7[1] = sub_1ADF0;
  v8 = v0[75];
  v9 = v0[66];
  v10 = v0[54];
  v11 = v0[31];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 12, v11, v9, v0 + 17, v10, 0, 0, 0);
}

uint64_t sub_1ADF0()
{
  v1 = *v0;
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 600);
  v4 = *(*v0 + 248);
  v5 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_5CA8(v1 + 136, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_1AF80, 0, 0);
}

uint64_t sub_1AF80()
{
  v1 = v0[72];
  v2 = v0[69];
  v37 = v0[66];
  v3 = v0[65];
  v4 = v0[59];
  v33 = v0[60];
  v35 = v0[64];
  v31 = v0[58];
  v5 = v0[54];
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[16];
  sub_23B08(v0 + 12, v0[15]);
  v39 = sub_123D4C();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v33, v31);
  sub_5BB0(v0 + 12);
  (*(v3 + 8))(v37, v35);
  v9 = v0[66];
  v10 = v0[63];
  v11 = v0[60];
  v12 = v0[57];
  v14 = v0[53];
  v13 = v0[54];
  v15 = v0[52];
  v16 = v0[49];
  v17 = v0[46];
  v18 = v0[43];
  v21 = v0[42];
  v22 = v0[41];
  v23 = v0[40];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v29 = v0[34];
  v30 = v0[33];
  v32 = v0[32];
  v34 = v0[31];
  v36 = v0[28];
  v38 = v0[25];

  v19 = v0[1];

  return v19(v39);
}