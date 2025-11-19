void sub_DB360(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_5AE8(&unk_15F170, &unk_126E00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  sub_124DEC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  v10 = sub_124DDC();
  v11 = *a1;

  *a1 = v10;
  sub_122EEC(0);
  sub_124E1C();
  v12 = sub_124E4C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = type metadata accessor for TimerBaseDisambiguationParameters(0);
  sub_7CC5C(v9, a1 + *(v14 + 56), &unk_15F170, &unk_126E00);
  a1[6] = a4;
  *(a1 + 56) = 0;
  v15 = sub_12398C();

  sub_125F1C();
  v18 = v17;

  if (v18)
  {
    sub_124E2C();
    v13(v9, 0, 1, v12);
    sub_7CC5C(v9, a1 + *(v14 + 60), &unk_15F170, &unk_126E00);
  }

  else
  {
    if (qword_15EF40 != -1)
    {
      swift_once();
    }

    v19 = sub_125ABC();
    sub_5B30(v19, qword_162240);
    v20 = sub_125AAC();
    v21 = sub_125DEC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Error generating base64 action for 'windowPromptButtonAction'", v22, 2u);
    }
  }
}

uint64_t sub_DB61C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_12392C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_12368C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_125ABC();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_124FFC();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = sub_12501C();
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_DB84C, 0, 0);
}

uint64_t sub_DB84C()
{
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v16 = sub_5B30(v0[10], qword_162240);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "ResponseTimerDisambiguationStrategy.makeErrorResponse(error:)", v3, 2u);
  }

  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[3];

  (*(v6 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v7);
  (*(v10 + 16))(v8, v16, v9);
  mach_absolute_time();
  sub_12502C();
  v12 = *(v11 + 24);
  v13 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v17 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_DBA5C;

  return v17(0x73614272656D6974, 0xEF726F7272652365, _swiftEmptyArrayStorage);
}

uint64_t sub_DBA5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_DBE30;
  }

  else
  {
    *(v4 + 168) = a1;
    v7 = sub_DBB84;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_DBB84()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_12364C();
  sub_12391C();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_DBC44;
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v8, v6, 0);
}

uint64_t sub_DBC44()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 32);
  v12 = *v1;
  *(*v1 + 184) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_DBFA8;
  }

  else
  {
    v10 = sub_DBEEC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_DBE30()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_DBEEC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_DBFA8()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_DC064(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_12392C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_12368C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_DC180, 0, 0);
}

uint64_t sub_DC180()
{
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_162240);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResponseTimerDisambiguationStrategy.makeFlowCancelledResponse()", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[5];

  sub_12367C();
  sub_12391C();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1D494;
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[2];

  return sub_2F7D4(v10, v8, v9);
}

uint64_t sub_DC2F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_5CA8(v0 + qword_1622D8, &qword_1623F8, &unk_12A7F0);
  return v0;
}

void sub_DC350()
{
  if (!qword_162370[0])
  {
    sub_123C1C();
    v0 = sub_125F2C();
    if (!v1)
    {
      atomic_store(v0, qword_162370);
    }
  }
}

uint64_t sub_DC3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v9 = *(a4 + 80);
  *v8 = v4;
  v8[1] = sub_DC4A8;

  return sub_DD6F4(a2, a3, v9);
}

uint64_t sub_DC4A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_DC5B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_D7B58(a1, a2);
}

uint64_t sub_DC660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to SimpleDisambiguationPromptStrategy.makeRepromptOnEmptyParse(items:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = type metadata accessor for ResponseTimerSimpleDisambiguationStrategy();
  *v10 = v4;
  v10[1] = sub_5D08;

  return SimpleDisambiguationPromptStrategy.makeRepromptOnEmptyParse(items:)(a1, a2, v12, a4);
}

uint64_t sub_DC730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to SimpleDisambiguationPromptStrategy.makeRepromptOnLowConfidence(items:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = type metadata accessor for ResponseTimerSimpleDisambiguationStrategy();
  *v10 = v4;
  v10[1] = sub_5D08;

  return SimpleDisambiguationPromptStrategy.makeRepromptOnLowConfidence(items:)(a1, a2, v12, a4);
}

uint64_t sub_DC800(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5D08;

  return sub_DC064(a1);
}

uint64_t sub_DC898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5D08;

  return sub_DB61C(a1);
}

uint64_t sub_DC930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_123C8C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_123CDC();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_DCA50, 0, 0);
}

uint64_t sub_DCA50()
{
  v29 = v0;
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_125ABC();
  sub_5B30(v5, qword_162240);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_125AAC();
  v7 = sub_125DFC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    sub_DDC84(&unk_161858, &type metadata accessor for Input);
    v14 = sub_12618C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_8530(v14, v16, &v28);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "TimerDisambiguation.parseWindowActionFromInput(input:items:): %s", v12, 0xCu);
    sub_5BB0(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[5];
  sub_DD020(v0[3], v0[8]);
  v19 = async function pointer to static ResponseDisambigUtils.parseWindowActionFromInput<A>(input:windowInputType:items:choiceSelector:)[1];

  v20 = swift_task_alloc();
  v0[12] = v20;
  v21 = sub_1257EC();
  *v20 = v0;
  v20[1] = sub_DCD08;
  v22 = v0[8];
  v23 = v0[4];
  v24 = v0[5];
  v25 = v0[2];
  v26 = v0[3];

  return static ResponseDisambigUtils.parseWindowActionFromInput<A>(input:windowInputType:items:choiceSelector:)(v25, v26, v22, v23, &unk_12A7E8, v24, v21);
}

uint64_t sub_DCD08()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  v6[13] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_DCECC, 0, 0);
  }

  else
  {
    v7 = v6[11];
    v8 = v6[8];
    v9 = v6[5];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_DCECC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_DCF48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(v6 + 80);
  *v7 = v3;
  v7[1] = sub_1DE18;

  return sub_DD6F4(a1, a2, v8);
}

uint64_t sub_DD020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_162240);
  v7 = sub_125AAC();
  v8 = sub_125DDC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v15 = *(v5 + 288);
    swift_getMetatypeMetadata();
    v11 = sub_125BAC();
    v13 = sub_8530(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "TimerDisambiguation.determineInputType(input:) with intent type: %s", v9, 0xCu);
    sub_5BB0(v10);
  }

  return static TimerResponseDisambiguationUtils.determineWindowInputType(input:)(a1, a2);
}

uint64_t sub_DD1B8()
{
  sub_DC2F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_DD250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return sub_DC930(a1, a2, a3);
}

uint64_t sub_DD304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_503C;

  return sub_D7ECC(a1, a2, a3);
}

uint64_t sub_DD3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ListPromptFlowStrategy.makeRepromptOnEmptyParse(items:paginationParameters:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 288);
  v14 = type metadata accessor for ResponseTimerDisambiguationStrategy();
  *v12 = v5;
  v12[1] = sub_5D08;

  return ListPromptFlowStrategy.makeRepromptOnEmptyParse(items:paginationParameters:)(a1, a2, a3, v14, a5);
}

uint64_t sub_DD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ListPromptFlowStrategy.makeRepromptOnLowConfidence(items:paginationParameters:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 288);
  v14 = type metadata accessor for ResponseTimerDisambiguationStrategy();
  *v12 = v5;
  v12[1] = sub_5D08;

  return ListPromptFlowStrategy.makeRepromptOnLowConfidence(items:paginationParameters:)(a1, a2, a3, v14, a5);
}

uint64_t sub_DD578(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_DB61C(a1);
}

uint64_t sub_DD6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_123CDC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_DD7B8, 0, 0);
}

uint64_t sub_DD7B8()
{
  v24 = v0;
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = sub_125ABC();
  sub_5B30(v5, qword_162240);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_125AAC();
  v7 = sub_125DFC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    sub_DDC84(&unk_161858, &type metadata accessor for Input);
    v14 = sub_12618C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_8530(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "ResponseTimerSimpleDisambiguationStrategy.parseDisambiguationResult(input:items:) parsing input: %s", v12, 0xCu);
    sub_5BB0(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_DDA34;
  v19 = v0[3];
  v20 = v0[4];
  v21 = v0[2];

  return static TimerResponseDisambiguationUtils.parsePromptResult<A>(input:items:intentType:)(v21, v19);
}

uint64_t sub_DDA34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  v7 = *(v4 + 56);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_DDB60(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23934;

  return sub_DCF48(a1, a2, v2);
}

uint64_t sub_DDC08(uint64_t a1)
{
  v2 = type metadata accessor for TimerBaseDisambiguationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DDC84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DDCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_1623F8, &unk_12A7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DDD3C()
{

  return sub_DA540();
}

uint64_t sub_DDDC0(uint64_t *a1)
{
  sub_12561C();
  sub_12560C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&unk_160770, &qword_127E08);
  sub_1233AC();
  sub_5AE8(&qword_162410, &qword_12A810);
  sub_5C60(&qword_162418, &qword_162410, &qword_12A810);
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v5);
  sub_DF448();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_DF49C();
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v3);
  sub_5AE8(&qword_162430, &qword_12A818);
  sub_5C60(&qword_162438, &qword_162430, &qword_12A818);
  sub_12337C();
  sub_1233CC();
  sub_5BB0(a1);
  sub_DF4F0(v3);
  sub_DF558(v4);
  return sub_DF5AC(v5);
}

void *sub_DDFFC()
{
  sub_5AE8(&qword_162490, &qword_12BDD0);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_1601E0, &qword_127E98);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 5, &qword_162498, &qword_12A870, &qword_1624A0, &unk_12A878);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

void *sub_DE2F0()
{
  sub_5AE8(&qword_161818, &qword_1292C0);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_1621F8, &qword_12A260);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 8, &qword_162480, &qword_12A860, &qword_162488, &qword_12A868);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

void *sub_DE5E4()
{
  sub_5AE8(&qword_1612A8, &qword_128EA0);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_162410, &qword_12A810);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 2, &qword_162440, &qword_12A820, &qword_162448, &qword_12A828);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

void *sub_DE8D8()
{
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_162450, &qword_12A830);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 12, &qword_162458, &qword_12A838, &qword_162460, &qword_12A840);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

void *sub_DEBCC()
{
  sub_5AE8(&qword_1620D8, &qword_12A120);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_162468, &qword_12A848);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 7, &qword_162470, &qword_12A850, &qword_162478, &qword_12A858);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

id *sub_DEEC0(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_12606C();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_8B50(i, v6);
    sub_1257EC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_12603C();
    v4 = v7[2];
    sub_12607C();
    sub_12608C();
    sub_12604C();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void *sub_DEFAC(unint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v13 = sub_124EDC();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_123ACC();
  v15 = sub_12394C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_12393C();
  v18 = sub_1232DC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1232CC();
  v7[8] = v18;
  v7[9] = &protocol witness table for PatternFlowProvider;
  v7[5] = v21;
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v7[10] = sub_124DBC();
  v7[11] = 0xD000000000000018;
  v7[12] = 0x800000000012EA80;
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v22 = sub_125ABC();
  sub_5B30(v22, qword_162240);

  v23 = a2;
  v24 = sub_125AAC();
  v25 = sub_125DFC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53 = v47;
    *v26 = 134218242;
    v48 = a4;
    v49 = a5;
    if (a1 >> 62)
    {
      v27 = sub_1260FC();
    }

    else
    {
      v27 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v26 + 4) = v27;

    *(v26 + 12) = 2080;
    v28 = v23;
    v29 = [v28 description];
    v30 = sub_125B9C();
    v32 = v31;

    v33 = sub_8530(v30, v32, &v53);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_0, v24, v25, "ResponseTimerDisambiguationFlowProvider.init with %ld items and intent: %s", v26, 0x16u);
    sub_5BB0(v47);

    a4 = v48;
    a5 = v49;
  }

  else
  {
  }

  v10[2] = a1;
  v10[13] = v23;
  v34 = v10[10];
  v35 = sub_5AE8(a4, a5);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v39 = qword_1622D8;
  v40 = sub_123C1C();
  v41 = *(*(v40 - 8) + 56);
  v41(v38 + v39, 1, 1, v40);
  *(v38 + qword_1622E0) = 0x8000000000000000;
  *(v38 + qword_1622E8) = 0;
  *(v38 + 16) = a1;
  *(v38 + 24) = v34;
  *(v38 + 32) = a3;
  v10[3] = v38;
  v42 = sub_5AE8(a6, a7);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v41(v45 + qword_1622D8, 1, 1, v40);
  *(v45 + qword_1622E0) = 0x8000000000000000;
  *(v45 + qword_1622E8) = 0;
  *(v45 + 16) = a1;
  *(v45 + 24) = v34;
  *(v45 + 32) = a3;
  v10[4] = v45;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  return v10;
}

uint64_t sub_DF3BC(void *a1)
{
  *a1 = sub_DE5E4();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_DF448()
{
  result = qword_162420;
  if (!qword_162420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162420);
  }

  return result;
}

unint64_t sub_DF49C()
{
  result = qword_162428;
  if (!qword_162428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162428);
  }

  return result;
}

uint64_t sub_DF4F0(uint64_t a1)
{
  v2 = sub_5AE8(&qword_162430, &qword_12A818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_DF600()
{
  v1 = v0;
  v2 = sub_5AE8(&qword_162008, &qword_129F20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = *v1;
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v42 = &protocol witness table for Double;
  *&v39 = v6;
  sub_E3AC(&v39, &v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = &_swiftEmptyDictionarySingleton;
  v8 = sub_23C74(&v37, v38);
  sub_2309C(0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v43, *v8);
  sub_5BB0(&v37);
  v9 = v43;
  v10 = v1[1];
  v41 = &protocol witness table for Int;
  v42 = &protocol witness table for Int;
  v40 = &type metadata for Int;
  *&v39 = v10;
  sub_E3AC(&v39, &v37);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v9;
  v12 = sub_23C74(&v37, v38);
  sub_23204(*v12, 0x756F4372656D6974, 0xEA0000000000746ELL, v11, &v43);
  sub_5BB0(&v37);
  v13 = v43;
  v14 = *(v1 + 16);
  v40 = &type metadata for Bool;
  v41 = &protocol witness table for Bool;
  v42 = &protocol witness table for Bool;
  LOBYTE(v39) = v14;
  sub_E3AC(&v39, &v37);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v13;
  v16 = sub_23C74(&v37, v38);
  sub_23374(*v16, 0xD000000000000018, 0x800000000012EAF0, v15, &v36);
  sub_5BB0(&v37);
  v43 = v36;
  v17 = type metadata accessor for TimeSuggestionExecutionParameters();
  sub_DFC10(v1 + *(v17 + 28), v5);
  v18 = sub_124CCC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v5, 1, v18) == 1)
  {
    sub_5CA8(v5, &qword_162008, &qword_129F20);
    sub_DFB18(0x65736E6F70736572, 0xEC00000065646F4DLL, &v39);
    sub_5CA8(&v39, &qword_1624A8, &qword_12A888);
    v20 = v43;
  }

  else
  {
    v40 = v18;
    v21 = sub_DFC80(&qword_1624B0);
    v41 = v21;
    v22 = sub_DFC80(&qword_1624B8);
    v42 = v22;
    v23 = sub_23B4C(&v39);
    (*(v19 + 32))(v23, v5, v18);
    sub_E3AC(&v39, &v37);
    v24 = v43;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v24;
    v26 = v38;
    v27 = sub_23C74(&v37, v38);
    v28 = *(*(v26 - 8) + 64);
    __chkstk_darwin(v27);
    v30 = &v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v30);
    sub_DFCC4(v30, 0x65736E6F70736572, 0xEC00000065646F4DLL, v25, &v36, v18, v21, v22);
    sub_5BB0(&v37);
    v20 = v36;
  }

  v32 = *(v1 + *(v17 + 32));
  v40 = &type metadata for Bool;
  v41 = &protocol witness table for Bool;
  v42 = &protocol witness table for Bool;
  LOBYTE(v39) = v32;
  sub_E3AC(&v39, &v37);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v20;
  v34 = sub_23C74(&v37, v38);
  sub_23374(*v34, 0xD00000000000001ALL, 0x800000000012EB10, v33, &v36);
  sub_5BB0(&v37);
  return v36;
}

double sub_DFB18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_8AD8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_AB638();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_E3AC((*(v12 + 56) + 48 * v9), a3);
    sub_AB010(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t type metadata accessor for TimeSuggestionExecutionParameters()
{
  result = qword_162518;
  if (!qword_162518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DFC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_162008, &qword_129F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DFC80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_124CCC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_DFCC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v16 = sub_23B4C(&v37);
  (*(*(a6 - 8) + 32))(v16, a1, a6);
  v17 = *a5;
  v19 = sub_8AD8(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 48 * v19);
      sub_5BB0(v26);
      return sub_E3AC(&v37, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v22, a4 & 1);
  v28 = *a5;
  v29 = sub_8AD8(a2, a3);
  if ((v23 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v19 = v29;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v31 = v38;
  v32 = sub_23C74(&v37, v38);
  v33 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v37 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  sub_DFF04(v19, a2, a3, v35, v25, a6, a7, a8);

  return sub_5BB0(&v37);
}

_OWORD *sub_DFF04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v14 = sub_23B4C(&v20);
  (*(*(a6 - 8) + 32))(v14, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_E3AC(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_DFFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_5AE8(&qword_162008, &qword_129F20);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_E00C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_5AE8(&qword_162008, &qword_129F20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E0170()
{
  sub_E0204();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_E0204()
{
  if (!qword_162528)
  {
    sub_124CCC();
    v0 = sub_125F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_162528);
    }
  }
}

uint64_t sub_E02BC()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v20 - v7;
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_127990;
  *(v11 + 32) = 0x614E656369766564;
  *(v11 + 40) = 0xEA0000000000656DLL;
  sub_E344(v0, v10, &unk_15F170, &unk_126E00);
  v12 = sub_124E4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    sub_5CA8(v10, &unk_15F170, &unk_126E00);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    v15 = sub_23B4C((v11 + 48));
    (*(v13 + 32))(v15, v10, v12);
  }

  *(v11 + 80) = 0x7954676F6C616964;
  *(v11 + 88) = 0xEA00000000006570;
  v16 = type metadata accessor for DismissTimerHandledRemoteParameters(0);
  sub_E344(v0 + v16[5], v8, &unk_15F170, &unk_126E00);
  if (v14(v8, 1, v12) == 1)
  {
    sub_5CA8(v8, &unk_15F170, &unk_126E00);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v12;
    v17 = sub_23B4C((v11 + 96));
    (*(v13 + 32))(v17, v8, v12);
  }

  *(v11 + 128) = 0x537373696D736964;
  *(v11 + 136) = 0xEF796C746E656C69;
  *(v11 + 144) = *(v0 + v16[6]);
  *(v11 + 168) = &type metadata for Bool;
  *(v11 + 176) = 0x656D614E6D6F6F72;
  *(v11 + 184) = 0xE800000000000000;
  sub_E344(v0 + v16[7], v5, &unk_15F170, &unk_126E00);
  if (v14(v5, 1, v12) == 1)
  {
    sub_5CA8(v5, &unk_15F170, &unk_126E00);
    *(v11 + 192) = 0u;
    *(v11 + 208) = 0u;
  }

  else
  {
    *(v11 + 216) = v12;
    v18 = sub_23B4C((v11 + 192));
    (*(v13 + 32))(v18, v5, v12);
  }

  return v11;
}

uint64_t sub_E062C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for DismissTimerHandledRemoteParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_E06C8, 0, 0);
}

uint64_t sub_E06C8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 88);
  v6 = sub_124E4C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[5], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  *(v1 + v2[6]) = v5;
  v4(v1);
  v8 = sub_E02BC();
  *(v0 + 56) = v8;
  v9 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v13 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_E0858;
  v11 = *(v0 + 32);

  return v13(0xD00000000000001ALL, 0x800000000012EB70, v8);
}

uint64_t sub_E0858(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_E0A18;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_E09A4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_E09A4()
{
  sub_E0C58(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_E0A18()
{
  sub_E0C58(v0[6]);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_E0A88(uint64_t a1, uint64_t a2)
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

uint64_t sub_E0C58(uint64_t a1)
{
  v2 = type metadata accessor for DismissTimerHandledRemoteParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E0CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5AE8(&unk_15F170, &unk_126E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_E0DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_5AE8(&unk_15F170, &unk_126E00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_E0E78()
{
  sub_95D2C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_E0F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_124BCC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_E0F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_124BCC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TimerNLv3Intent()
{
  result = qword_1626C0;
  if (!qword_1626C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E1040()
{
  result = sub_124BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_E113C()
{
  v0 = sub_124F8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v41[-v7];
  if (qword_15EF90 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent();
  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
  sub_12428C();
  if (v42 == 36)
  {
    goto LABEL_12;
  }

  if (sub_E2BBC(v42) == 6647407 && v9 == 0xE300000000000000)
  {
  }

  else
  {
    v10 = sub_1261BC();

    if ((v10 & 1) == 0)
    {
LABEL_12:
      if (qword_15EF58 != -1)
      {
        swift_once();
      }

      sub_12428C();
      if (v43)
      {
        v17 = sub_125B8C();
      }

      else
      {
        v17 = 0;
      }

      sub_1257EC();
      v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v19 = sub_125B8C();
      v20 = [v18 initWithIdentifier:v17 displayString:v19];

      if (qword_15EF60 != -1)
      {
        swift_once();
      }

      sub_12428C();
      v21 = v43;
      if (v43)
      {
        sub_125BDC();

        v22 = objc_allocWithZone(INSpeakableString);
        v23 = sub_125B8C();

        v24 = [v22 initWithSpokenPhrase:v23];

        if (v24)
        {
          v21 = [v24 spokenPhrase];

          if (!v21)
          {
            sub_125B9C();
            v21 = sub_125B8C();
          }
        }

        else
        {
          v21 = 0;
        }
      }

      [v20 setLabel:v21];

      sub_E3330();
      isa = sub_125D5C().super.super.isa;
      [v20 setDuration:isa];

      [objc_opt_self() defaultDuration];
      v26 = sub_125D5C().super.super.isa;
      [v20 setRemainingTime:v26];

      [v20 setState:0];
      if (qword_15EF70 != -1)
      {
        swift_once();
      }

      sub_12428C();
      if (v42)
      {
        v27 = 0;
      }

      else
      {
        v27 = 2;
      }

      [v20 setType:v27];
      sub_E18C8();
      v28 = sub_125CEC().super.super.isa;
      [v20 setShouldMatchAny:v28];

      return v20;
    }
  }

  v11 = sub_12466C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_12465C();
  v14 = sub_12438C();

  if (!v14)
  {
    goto LABEL_12;
  }

  sub_124F7C();
  sub_124F6C();
  (*(v1 + 8))(v4, v0);
  v15 = sub_125B4C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {

    sub_5CA8(v8, &qword_15F5F0, &unk_12AAA0);
    goto LABEL_12;
  }

  sub_1257EC();
  v30 = sub_125B1C();
  (*(v16 + 8))(v8, v15);
  if (!v30)
  {

    goto LABEL_12;
  }

  if (qword_15EF48 != -1)
  {
    swift_once();
  }

  v31 = sub_125ABC();
  sub_5B30(v31, qword_162650);
  v20 = v30;
  v32 = sub_125AAC();
  v33 = sub_125DFC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v34 = 136315138;
    v20 = v20;
    v36 = [v20 description];
    v37 = sub_125B9C();
    v39 = v38;

    v40 = sub_8530(v37, v39, &v42);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_0, v32, v33, "getSiriTimer: Resolved timer %s from SRR. Using it to search timer.", v34, 0xCu);
    sub_5BB0(v35);
  }

  return v20;
}

uint64_t sub_E18C8()
{
  if (qword_15EF88 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent();
  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
  sub_12428C();
  if (v4 == 3)
  {
    v0 = 1;
  }

  else
  {
    if (qword_15EF90 != -1)
    {
      swift_once();
    }

    sub_12428C();
    if (v3 == 36)
    {
      v0 = 0;
    }

    else if (sub_E2BBC(v3) == 2037277037 && v1 == 0xE400000000000000)
    {

      v0 = 1;
    }

    else
    {
      v0 = sub_1261BC();
    }
  }

  return v0 & 1;
}

id sub_E1A4C()
{
  v1 = v0;
  v2 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26[-v4];
  v6 = type metadata accessor for TimerNLv3Intent();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_15EF50 != -1)
  {
    swift_once();
  }

  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
  sub_12428C();
  if (v27 <= 4u)
  {
    if (v27 > 1u)
    {
      if (v27 != 2)
      {
        if (v27 == 3)
        {
          sub_12558C();
          sub_9848(v0, v9);
          return sub_F2258(v9);
        }

        sub_9848(v0, v9);
        v18 = sub_E113C();
        sub_E18C8();
        v19 = sub_125CFC();
        v20 = [objc_allocWithZone(sub_12555C()) init];
        goto LABEL_27;
      }

LABEL_25:
      sub_12568C();
      sub_9848(v1, v9);
      return sub_F24F8(v9);
    }

    if (v27)
    {
      sub_9848(v0, v9);
      v16 = [objc_allocWithZone(sub_12561C()) init];
      v17 = sub_E113C();
      [v16 setTargetTimer:v17];

      [v16 setTargetingInfo:0];
      sub_97EC(v9);
      return v16;
    }

    goto LABEL_31;
  }

  if (v27 > 6u)
  {
    if (v27 == 7)
    {
      if (qword_15EF48 != -1)
      {
        swift_once();
      }

      v21 = sub_125ABC();
      sub_5B30(v21, qword_162650);
      v12 = sub_125AAC();
      v13 = sub_125DEC();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_24;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "TimerFlow doen't support nlv3 intent verb: add. Returning searchIntent anyways";
    }

    else
    {
      if (v27 != 8)
      {
        if (qword_15EF78 != -1)
        {
          swift_once();
        }

        sub_12428C();
        v24 = sub_12412C();
        v25 = (*(*(v24 - 8) + 48))(v5, 1, v24);
        sub_5CA8(v5, &qword_15FF90, &unk_127BC0);
        if (v25 == 1)
        {
          goto LABEL_25;
        }

LABEL_31:
        sub_1255EC();
        sub_9848(v1, v9);
        return sub_F2078(v9);
      }

      if (qword_15EF48 != -1)
      {
        swift_once();
      }

      v11 = sub_125ABC();
      sub_5B30(v11, qword_162650);
      v12 = sub_125AAC();
      v13 = sub_125DEC();
      if (!os_log_type_enabled(v12, v13))
      {
LABEL_24:

        goto LABEL_25;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "TimerFlow doen't support nlv3 intent verb: substract. Returning searchIntent anyways";
    }

    _os_log_impl(&dword_0, v12, v13, v15, v14, 2u);

    goto LABEL_24;
  }

  if (v27 == 5)
  {
    sub_9848(v0, v9);
    v18 = sub_E113C();
    sub_E18C8();
    v19 = sub_125CFC();
    v20 = [objc_allocWithZone(sub_12564C()) init];
LABEL_27:
    v22 = v20;
    [v18 setShouldMatchAny:v19];
    v23 = v18;
    [v22 setTargetTimer:v23];

    sub_97EC(v9);
    return v22;
  }

  sub_12550C();
  sub_9848(v0, v9);
  return sub_F2310(v9);
}

uint64_t sub_E1FC8()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162650);
  sub_5B30(v0, qword_162650);
  return sub_1257AC();
}

uint64_t sub_E2014()
{
  v0 = sub_5AE8(&qword_162728, &qword_12AA78);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_1677E0 = result;
  return result;
}

uint64_t sub_E207C()
{
  v0 = sub_5AE8(&qword_162700, &qword_12AA38);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_1677E8 = result;
  return result;
}

uint64_t sub_E20E0()
{
  v0 = sub_5AE8(&qword_162700, &qword_12AA38);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_1677F0 = result;
  return result;
}

uint64_t sub_E2148()
{
  v0 = sub_5AE8(&qword_162700, &qword_12AA38);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_1677F8 = result;
  return result;
}

uint64_t sub_E21B8()
{
  v0 = sub_5AE8(&qword_162718, &qword_12AA68);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_167800 = result;
  return result;
}

uint64_t sub_E2220()
{
  v0 = sub_5AE8(&qword_162710, &qword_12AA60);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_167808 = result;
  return result;
}

uint64_t sub_E2288()
{
  v0 = sub_5AE8(&qword_162710, &qword_12AA60);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_167810 = result;
  return result;
}

uint64_t sub_E22F4()
{
  v0 = sub_5AE8(&qword_162758, &qword_12AA88);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_167818 = result;
  return result;
}

uint64_t sub_E2364()
{
  v0 = sub_5AE8(&qword_162768, &qword_12AA90);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_167820 = result;
  return result;
}

uint64_t sub_E23D4()
{
  v0 = sub_5AE8(&qword_162778, &qword_12AA98);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_167828 = result;
  return result;
}

uint64_t sub_E243C()
{
  v0 = sub_5AE8(&qword_162710, &qword_12AA60);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_12406C();
  qword_167830 = result;
  return result;
}

uint64_t sub_E24A4()
{
  sub_5AE8(&qword_162730, &qword_12AA80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_12A970;
  if (qword_15EF50 != -1)
  {
    swift_once();
  }

  v1 = qword_1677E0;
  *(v0 + 56) = sub_5AE8(&qword_162728, &qword_12AA78);
  *(v0 + 64) = sub_5C60(&qword_162738, &qword_162728, &qword_12AA78);
  *(v0 + 32) = v1;
  v2 = qword_15EF58;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1677E8;
  v4 = sub_5AE8(&qword_162700, &qword_12AA38);
  *(v0 + 96) = v4;
  v5 = sub_5C60(&qword_162740, &qword_162700, &qword_12AA38);
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_15EF60;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1677F0;
  *(v0 + 136) = v4;
  *(v0 + 144) = v5;
  *(v0 + 112) = v7;
  v8 = qword_15EF70;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_167800;
  *(v0 + 176) = sub_5AE8(&qword_162718, &qword_12AA68);
  *(v0 + 184) = sub_5C60(&qword_162748, &qword_162718, &qword_12AA68);
  *(v0 + 152) = v9;
  v10 = qword_15EF78;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_167808;
  v12 = sub_5AE8(&qword_162710, &qword_12AA60);
  *(v0 + 216) = v12;
  v13 = sub_5C60(&qword_162750, &qword_162710, &qword_12AA60);
  *(v0 + 224) = v13;
  *(v0 + 192) = v11;
  v14 = qword_15EF80;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_167810;
  *(v0 + 256) = v12;
  *(v0 + 264) = v13;
  *(v0 + 232) = v15;
  v16 = qword_15EF68;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1677F8;
  *(v0 + 296) = v4;
  *(v0 + 304) = v5;
  *(v0 + 272) = v17;
  v18 = qword_15EF88;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_167818;
  *(v0 + 336) = sub_5AE8(&qword_162758, &qword_12AA88);
  *(v0 + 344) = sub_5C60(&qword_162760, &qword_162758, &qword_12AA88);
  *(v0 + 312) = v19;
  v20 = qword_15EF90;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_167820;
  *(v0 + 376) = sub_5AE8(&qword_162768, &qword_12AA90);
  *(v0 + 384) = sub_5C60(&qword_162770, &qword_162768, &qword_12AA90);
  *(v0 + 352) = v21;
  v22 = qword_15EF98;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_167828;
  *(v0 + 416) = sub_5AE8(&qword_162778, &qword_12AA98);
  *(v0 + 424) = sub_5C60(&qword_162780, &qword_162778, &qword_12AA98);
  *(v0 + 392) = v23;
  v24 = sub_12405C();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  result = sub_12404C();
  qword_167838 = result;
  return result;
}

Swift::Int sub_E2A50()
{
  sub_12626C();
  sub_125BFC();
  return sub_12628C();
}

Swift::Int sub_E2AB4()
{
  sub_12626C();
  sub_125BFC();
  return sub_12628C();
}

uint64_t sub_E2B00@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_158088;
  v7._object = v3;
  v5 = sub_12613C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_E2BBC(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      return 0x687472756F66;
    case 4:
      return 0x6874666966;
    case 5:
      return 0x6874786973;
    case 6:
      return 0x68746E65766573;
    case 7:
      return 0x687468676965;
    case 8:
      return 0x68746E696ELL;
    case 9:
      return 0x68746E6574;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      return 0x6874666C657774;
    case 12:
      v4 = 1919510644;
      goto LABEL_26;
    case 13:
      v4 = 1920298854;
      goto LABEL_26;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v4 = 1751607653;
      goto LABEL_26;
    case 18:
      v4 = 1701734766;
LABEL_26:
      result = v4 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 6647407;
      break;
    case 32:
      result = 2037277037;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    case 35:
      result = 0x74736574616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_E2FA4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_E2BBC(*a1);
  v5 = v4;
  if (v3 == sub_E2BBC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1261BC();
  }

  return v8 & 1;
}

Swift::Int sub_E302C()
{
  v1 = *v0;
  sub_12626C();
  sub_E2BBC(v1);
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_E3090()
{
  sub_E2BBC(*v0);
  sub_125BFC();
}

Swift::Int sub_E30E4()
{
  v1 = *v0;
  sub_12626C();
  sub_E2BBC(v1);
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_E3144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_E5658();
  *a2 = result;
  return result;
}

uint64_t sub_E3174@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E2BBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_E31F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

uint64_t sub_E32BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a4();
  v9 = a5();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v8, v9);
}

id sub_E3330()
{
  v0 = sub_5AE8(&qword_15FF98, &qword_12AA40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v86 = v79 - v2;
  v3 = sub_5AE8(&qword_162708, &qword_12AA48);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v85 = v79 - v5;
  v82 = sub_5AE8(&qword_160578, &unk_12AA50);
  v6 = *(*(v82 - 8) + 64);
  v7 = __chkstk_darwin(v82);
  v83 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v79 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v79 - v13;
  __chkstk_darwin(v12);
  v84 = v79 - v15;
  v16 = sub_5AE8(&qword_160568, &unk_1280F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v79 - v18;
  v20 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v79 - v22;
  v24 = sub_12412C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EF78 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent();
  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
  sub_12428C();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_5CA8(v23, &qword_15FF90, &unk_127BC0);
    return [objc_opt_self() defaultDuration];
  }

  v80 = v25;
  v81 = v24;
  v30 = *(v25 + 32);
  v31 = v28;
  v30(v28, v23, v24);
  sub_1240EC();
  v32 = sub_12418C();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v19, 1, v32) == 1)
  {
    sub_5CA8(v19, &qword_160568, &unk_1280F0);
  }

  else
  {
    v34 = sub_12415C();
    (*(v33 + 8))(v19, v32);
    if (v34)
    {

      v35 = sub_124EFC();

      if (v35)
      {
        v79[1] = v34;
        v36 = v84;
        sub_124BEC();
        if (qword_15EF48 != -1)
        {
          swift_once();
        }

        v37 = sub_125ABC();
        sub_5B30(v37, qword_162650);
        sub_E492C(v36, v14);
        v38 = sub_125AAC();
        v39 = sub_125DFC();
        v40 = os_log_type_enabled(v38, v39);
        v79[0] = v35;
        if (v40)
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v87 = *&v42;
          *v41 = 136315138;
          sub_E492C(v14, v11);
          v43 = sub_125BAC();
          v45 = v44;
          sub_5CA8(v14, &qword_160578, &unk_12AA50);
          v46 = sub_8530(v43, v45, &v87);

          *(v41 + 4) = v46;
          _os_log_impl(&dword_0, v38, v39, "convertedDate: %s", v41, 0xCu);
          sub_5BB0(v42);
        }

        else
        {

          sub_5CA8(v14, &qword_160578, &unk_12AA50);
        }

        v47 = v83;
        sub_E492C(v36, v83);
        v48 = sub_122F1C();
        v49 = *(v48 - 8);
        v50 = (*(v49 + 48))(v47, 1, v48);
        if (v50 == 1)
        {
          sub_5CA8(v47, &qword_160578, &unk_12AA50);
          v51 = 0.0;
        }

        else
        {
          sub_122F0C();
          v51 = v52;
          (*(v49 + 8))(v47, v48);
        }

        v53 = sub_125AAC();
        v54 = sub_125DFC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v89 = v56;
          *v55 = 136315138;
          v87 = v51;
          v88 = v50 == 1;
          sub_5AE8(&qword_162720, &qword_12AA70);
          v57 = sub_125BAC();
          v59 = sub_8530(v57, v58, &v89);

          *(v55 + 4) = v59;
          _os_log_impl(&dword_0, v53, v54, "timeIntervalSinceNow: %s", v55, 0xCu);
          sub_5BB0(v56);
        }

        v60 = v79[0];
        if (v50 != 1 && v51 > 0.0)
        {

          v61 = sub_125AAC();
          v62 = sub_125DFC();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = v31;
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v87 = *&v65;
            *v64 = 136315138;
            v89 = v60;
            sub_124C2C();
            sub_E499C(&qword_160590, &type metadata accessor for DateTime);
            v66 = sub_12618C();
            v68 = sub_8530(v66, v67, &v87);

            *(v64 + 4) = v68;
            _os_log_impl(&dword_0, v61, v62, "Resolved duration using absolute date %s", v64, 0xCu);
            sub_5BB0(v65);

            sub_5CA8(v36, &qword_160578, &unk_12AA50);
            return (*(v80 + 8))(v63, v81);
          }

          sub_5CA8(v36, &qword_160578, &unk_12AA50);
          return (*(v80 + 8))(v31, v81);
        }

        sub_5CA8(v36, &qword_160578, &unk_12AA50);
      }
    }
  }

  v69 = v85;
  sub_12411C();
  v70 = sub_1241CC();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v69, 1, v70) == 1)
  {
    sub_5CA8(v69, &qword_162708, &qword_12AA48);
    v72 = v86;
  }

  else
  {
    sub_1241BC();
    v74 = v73;
    (*(v71 + 8))(v69, v70);
    v72 = v86;
    if ((v74 & 1) == 0)
    {
      return (*(v80 + 8))(v31, v81);
    }
  }

  sub_12410C();
  v75 = sub_1241AC();
  v76 = *(v75 - 8);
  if ((*(v76 + 48))(v72, 1, v75) == 1)
  {
    sub_5CA8(v72, &qword_15FF98, &qword_12AA40);
LABEL_32:
    [objc_opt_self() defaultDuration];
    return (*(v80 + 8))(v31, v81);
  }

  sub_12419C();
  v78 = v77;
  (*(v76 + 8))(v72, v75);
  if (v78)
  {
    goto LABEL_32;
  }

  return (*(v80 + 8))(v31, v81);
}

id sub_E3E90()
{
  v0 = sub_5AE8(&qword_15FF98, &qword_12AA40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v62 = &v59 - v2;
  v3 = sub_5AE8(&qword_162708, &qword_12AA48);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v59 - v5;
  v7 = sub_5AE8(&qword_160578, &unk_12AA50);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v59 - v12;
  v13 = sub_5AE8(&qword_160568, &unk_1280F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v59 - v19;
  v21 = sub_12412C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EF80 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent();
  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
  sub_12428C();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_5CA8(v20, &qword_15FF90, &unk_127BC0);
    return [objc_opt_self() defaultDuration];
  }

  v27 = v21;
  v28 = v22;
  v29 = *(v22 + 32);
  v60 = v27;
  v29(v25, v20);
  sub_1240EC();
  v30 = sub_12418C();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v16, 1, v30) == 1)
  {
    v32 = &qword_160568;
    v33 = &unk_1280F0;
    v34 = v16;
LABEL_7:
    sub_5CA8(v34, v32, v33);
    goto LABEL_20;
  }

  v35 = sub_12415C();
  (*(v31 + 8))(v16, v30);
  if (v35)
  {

    v36 = sub_124EFC();

    if (v36)
    {
      v37 = v61;
      sub_124BEC();
      sub_E492C(v37, v11);
      v38 = sub_122F1C();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v11, 1, v38) == 1)
      {
        sub_5CA8(v37, &qword_160578, &unk_12AA50);

        v34 = v11;
        v32 = &qword_160578;
        v33 = &unk_12AA50;
        goto LABEL_7;
      }

      sub_122F0C();
      v41 = v40;
      (*(v39 + 8))(v11, v38);
      if (v41 > 0.0)
      {
        if (qword_15EF48 != -1)
        {
          swift_once();
        }

        v42 = sub_125ABC();
        sub_5B30(v42, qword_162650);

        v43 = sub_125AAC();
        v44 = sub_125DFC();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v63 = v36;
          v64 = v46;
          *v45 = 136315138;
          sub_124C2C();
          sub_E499C(&qword_160590, &type metadata accessor for DateTime);
          v47 = sub_12618C();
          v49 = sub_8530(v47, v48, &v64);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_0, v43, v44, "Resolved toDuration using absolute date %s", v45, 0xCu);
          sub_5BB0(v46);
        }

        sub_5CA8(v61, &qword_160578, &unk_12AA50);
        return (*(v28 + 8))(v25, v60);
      }

      sub_5CA8(v37, &qword_160578, &unk_12AA50);
    }
  }

LABEL_20:
  sub_12411C();
  v50 = sub_1241CC();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v6, 1, v50) == 1)
  {
    sub_5CA8(v6, &qword_162708, &qword_12AA48);
  }

  else
  {
    sub_1241BC();
    v53 = v52;
    (*(v51 + 8))(v6, v50);
    if ((v53 & 1) == 0)
    {
      return (*(v28 + 8))(v25, v60);
    }
  }

  v54 = v62;
  sub_12410C();
  v55 = sub_1241AC();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    sub_5CA8(v54, &qword_15FF98, &qword_12AA40);
LABEL_26:
    [objc_opt_self() defaultDuration];
    return (*(v28 + 8))(v25, v60);
  }

  sub_12419C();
  v58 = v57;
  (*(v56 + 8))(v54, v55);
  if (v58)
  {
    goto LABEL_26;
  }

  return (*(v28 + 8))(v25, v60);
}

uint64_t sub_E4714@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_124BCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_E477C()
{
  if (qword_15EFA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_E47D8(uint64_t a1)
{
  v2 = sub_E499C(&qword_1626F8, type metadata accessor for TimerNLv3Intent);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_E4854(uint64_t a1)
{
  v2 = sub_E499C(&qword_1626F8, type metadata accessor for TimerNLv3Intent);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_E48C0(uint64_t a1)
{
  v2 = sub_E499C(&qword_1626F8, type metadata accessor for TimerNLv3Intent);

  return NLIntentWrapper.description.getter(a1, v2);
}

uint64_t sub_E492C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_160578, &unk_12AA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E499C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TimerNLv3Intent.TimerConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNLv3Intent.TimerConfirmation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerNLv3Intent.TimerReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNLv3Intent.TimerReference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerNLv3Intent.TimerAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNLv3Intent.TimerAttributes(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerNLv3Intent.Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNLv3Intent.Verb(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_E4F38()
{
  result = qword_162788;
  if (!qword_162788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162788);
  }

  return result;
}

unint64_t sub_E4FD4()
{
  result = qword_1627A0;
  if (!qword_1627A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627A0);
  }

  return result;
}

unint64_t sub_E502C()
{
  result = qword_1627A8;
  if (!qword_1627A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627A8);
  }

  return result;
}

unint64_t sub_E5084()
{
  result = qword_1627B0;
  if (!qword_1627B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627B0);
  }

  return result;
}

unint64_t sub_E5120()
{
  result = qword_1627C8;
  if (!qword_1627C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627C8);
  }

  return result;
}

unint64_t sub_E5178()
{
  result = qword_1627D0;
  if (!qword_1627D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627D0);
  }

  return result;
}

unint64_t sub_E51D0()
{
  result = qword_1627D8;
  if (!qword_1627D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627D8);
  }

  return result;
}

unint64_t sub_E526C()
{
  result = qword_1627F0;
  if (!qword_1627F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627F0);
  }

  return result;
}

unint64_t sub_E52C4()
{
  result = qword_1627F8;
  if (!qword_1627F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627F8);
  }

  return result;
}

unint64_t sub_E531C()
{
  result = qword_162800;
  if (!qword_162800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162800);
  }

  return result;
}

unint64_t sub_E53B8()
{
  result = qword_162818;
  if (!qword_162818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162818);
  }

  return result;
}

unint64_t sub_E5410()
{
  result = qword_162820;
  if (!qword_162820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162820);
  }

  return result;
}

unint64_t sub_E5468()
{
  result = qword_162828;
  if (!qword_162828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162828);
  }

  return result;
}

unint64_t sub_E5504()
{
  result = qword_162840;
  if (!qword_162840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162840);
  }

  return result;
}

unint64_t sub_E555C()
{
  result = qword_162848;
  if (!qword_162848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162848);
  }

  return result;
}

unint64_t sub_E55B0()
{
  result = qword_162850;
  if (!qword_162850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162850);
  }

  return result;
}

unint64_t sub_E5604()
{
  result = qword_162858;
  if (!qword_162858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162858);
  }

  return result;
}

uint64_t sub_E5658()
{
  v0 = sub_1261DC();

  if (v0 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_E56AC()
{
  result = qword_162860;
  if (!qword_162860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162860);
  }

  return result;
}

unint64_t sub_E5700()
{
  result = qword_162868;
  if (!qword_162868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162868);
  }

  return result;
}

unint64_t sub_E5754()
{
  result = qword_162870;
  if (!qword_162870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162870);
  }

  return result;
}

unint64_t sub_E57A8()
{
  result = qword_162878;
  if (!qword_162878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162878);
  }

  return result;
}

unint64_t sub_E57FC()
{
  result = qword_162880;
  if (!qword_162880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162880);
  }

  return result;
}

unint64_t sub_E5850()
{
  result = qword_162888;
  if (!qword_162888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162888);
  }

  return result;
}

unint64_t sub_E58A4()
{
  result = qword_162890;
  if (!qword_162890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162890);
  }

  return result;
}

unint64_t sub_E58F8()
{
  result = qword_162898;
  if (!qword_162898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162898);
  }

  return result;
}

unint64_t sub_E594C()
{
  result = qword_1628A0;
  if (!qword_1628A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1628A0);
  }

  return result;
}

unint64_t sub_E59A0()
{
  result = qword_1628A8;
  if (!qword_1628A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1628A8);
  }

  return result;
}

uint64_t sub_E5A1C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1628B0);
  sub_5B30(v0, qword_1628B0);
  return sub_1257AC();
}

uint64_t sub_E5A68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  if (qword_15EFB0 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_1628B0);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "SetTimerAttribute.NeedsValueStrategy.actionForInput() called)", v15, 2u);
  }

  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = enum case for DecideAction.PromptExpectation.slot(_:);
  v18 = sub_12514C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_435BC(a1, v11, 0, v7, a2);
  sub_5CA8(v7, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v11, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_E5CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_123E8C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_123E4C();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_123DAC();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = *(*(sub_5AE8(&qword_160510, &qword_12B170) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = sub_123D7C();
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v18 = sub_123D6C();
  v4[20] = v18;
  v19 = *(v18 - 8);
  v4[21] = v19;
  v20 = *(v19 + 64) + 15;
  v4[22] = swift_task_alloc();
  v21 = sub_123CDC();
  v4[23] = v21;
  v22 = *(v21 - 8);
  v4[24] = v22;
  v23 = *(v22 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v24 = type metadata accessor for TimerNLv3Intent();
  v4[28] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v26 = sub_124BCC();
  v4[33] = v26;
  v27 = *(v26 - 8);
  v4[34] = v27;
  v28 = *(v27 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v29 = sub_123D3C();
  v4[37] = v29;
  v30 = *(v29 - 8);
  v4[38] = v30;
  v31 = *(v30 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return _swift_task_switch(sub_E610C, 0, 0);
}

unint64_t sub_E610C()
{
  v288 = v0;
  v1 = v0;
  v2 = v0[40];
  v3 = v0[38];
  v4 = v1[37];
  v6 = v1[3];
  v5 = v1[4];
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v7 = sub_123B4C();
  sub_123CCC();
  v8 = (*(v3 + 88))(v2, v4);
  if (v8 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v9 = v1[40];
    v10 = v1[36];
    v12 = v1[33];
    v11 = v1[34];
    v13 = v1[32];
    v14 = v1[5];
    (*(v1[38] + 96))(v9, v1[37]);
    (*(v11 + 32))(v10, v9, v12);
    (*(v11 + 16))(v13, v10, v12);
    v15 = sub_E798C(v13, v7);
    if (qword_15EFB0 == -1)
    {
LABEL_3:
      v17 = v1[31];
      v16 = v1[32];
      v18 = sub_125ABC();
      sub_5B30(v18, qword_1628B0);
      sub_9848(v16, v17);
      v19 = sub_125AAC();
      v20 = sub_125DFC();
      v21 = os_log_type_enabled(v19, v20);
      v22 = v1[31];
      v278 = v7;
      v23 = v1;
      if (v21)
      {
        v24 = v1[28];
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v286 = v26;
        *v25 = 136315138;
        sub_98AC(&qword_161ED0);
        v27 = sub_12618C();
        v29 = v28;
        sub_97EC(v22);
        v30 = sub_8530(v27, v29, &v286);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_0, v19, v20, "NLIntent:%s", v25, 0xCu);
        sub_5BB0(v26);
      }

      else
      {

        sub_97EC(v22);
      }

      v54 = v15;
      v55 = sub_125AAC();
      v56 = sub_125DFC();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v286 = v58;
        *v57 = 136315138;
        v59 = v54;
        v60 = [v59 description];
        v61 = sub_125B9C();
        v63 = v62;

        v64 = sub_8530(v61, v63, &v286);

        *(v57 + 4) = v64;
        _os_log_impl(&dword_0, v55, v56, "UpdatedSKIntent:%s", v57, 0xCu);
        sub_5BB0(v58);
      }

      v65 = v23;
      v66 = v278;
      v67 = v23[36];
      v68 = v23[34];
      v70 = v65[32];
      v69 = v65[33];
LABEL_22:
      v95 = v65[2];
      v286 = 0u;
      v287 = 0u;
      v96 = v54;
      sub_125EDC();

      sub_12550C();
      sub_1239BC();

      sub_97EC(v70);
      (*(v68 + 8))(v67, v69);
      goto LABEL_23;
    }

LABEL_74:
    swift_once();
    goto LABEL_3;
  }

  if (v8 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v31 = v1[40];
    v33 = v1[34];
    v32 = v1[35];
    v34 = v1[33];
    v35 = v1[30];
    v36 = v1[5];
    (*(v1[38] + 96))(v31, v1[37]);
    v37 = *(v31 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

    (*(v33 + 32))(v32, v31, v34);
    (*(v33 + 16))(v35, v32, v34);
    v38 = sub_E798C(v35, v7);
    if (qword_15EFB0 != -1)
    {
      swift_once();
    }

    v39 = v1[29];
    v40 = v1[30];
    v41 = sub_125ABC();
    sub_5B30(v41, qword_1628B0);
    sub_9848(v40, v39);
    v42 = sub_125AAC();
    v43 = sub_125DFC();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v1[29];
    v279 = v7;
    v46 = v1;
    if (v44)
    {
      v47 = v1[28];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v286 = v49;
      *v48 = 136315138;
      sub_98AC(&qword_161ED0);
      v50 = sub_12618C();
      v52 = v51;
      sub_97EC(v45);
      v53 = sub_8530(v50, v52, &v286);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_0, v42, v43, "NLIntent:%s", v48, 0xCu);
      sub_5BB0(v49);
    }

    else
    {

      sub_97EC(v45);
    }

    v54 = v38;
    v84 = sub_125AAC();
    v85 = sub_125DFC();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v286 = v87;
      *v86 = 136315138;
      v88 = v54;
      v89 = [v88 description];
      v90 = sub_125B9C();
      v92 = v91;

      v93 = sub_8530(v90, v92, &v286);

      *(v86 + 4) = v93;
      _os_log_impl(&dword_0, v84, v85, "UpdatedSKIntent:%s", v86, 0xCu);
      sub_5BB0(v87);
    }

    v65 = v46;
    v66 = v279;
    v94 = v46 + 34;
    v68 = v46[34];
    v67 = v94[1];
    v69 = v65[33];
    v70 = v65[30];
    goto LABEL_22;
  }

  if (v8 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v8 != enum case for Parse.uso(_:))
    {
      if (qword_15EFB0 != -1)
      {
        swift_once();
      }

      v127 = v1[24];
      v126 = v1[25];
      v128 = v1[23];
      v129 = v1[3];
      v130 = sub_125ABC();
      sub_5B30(v130, qword_1628B0);
      (*(v127 + 16))(v126, v129, v128);
      v131 = sub_125AAC();
      v132 = sub_125DEC();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = v1[39];
        v134 = v1[37];
        v136 = v1[24];
        v135 = v1[25];
        v282 = v7;
        v137 = v1[23];
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *&v286 = v139;
        *v138 = 136315138;
        sub_123CCC();
        v140 = sub_125BAC();
        v142 = v141;
        v143 = v137;
        v7 = v282;
        (*(v136 + 8))(v135, v143);
        v144 = sub_8530(v140, v142, &v286);

        *(v138 + 4) = v144;
        _os_log_impl(&dword_0, v131, v132, "Received an unsupported input: %s", v138, 0xCu);
        sub_5BB0(v139);
      }

      else
      {
        v146 = v1[24];
        v145 = v1[25];
        v147 = v1[23];

        (*(v146 + 8))(v145, v147);
      }

      v148 = v1[40];
      v150 = v1[37];
      v149 = v1[38];
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v151 = 0;
      swift_willThrow();

      goto LABEL_59;
    }

    v110 = v1[40];
    v112 = v1[21];
    v111 = v1[22];
    v113 = v1[20];
    (*(v1[38] + 96))(v110, v1[37]);
    (*(v112 + 32))(v111, v110, v113);
    if (qword_15EFB0 != -1)
    {
      swift_once();
    }

    v114 = sub_125ABC();
    sub_5B30(v114, qword_1628B0);
    v115 = sub_125AAC();
    v116 = sub_125DFC();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_0, v115, v116, "Received an USO parse in CreateTimer.parseResponseValue().", v117, 2u);
    }

    v118 = v1[22];
    v120 = v1[13];
    v119 = v1[14];
    v121 = v1[12];

    sub_123D5C();
    v15 = sub_123D9C();
    (*(v120 + 8))(v119, v121);
    v122 = v15[2];
    if (v122)
    {
      v123 = 0;
      v124 = v1[10];
      while (v123 < v15[2])
      {
        (*(v124 + 16))(v1[11], v15 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v123, v1[9]);
        if (sub_123DBC())
        {
          v174 = v1[15];
          v176 = v1[10];
          v175 = v1[11];
          v177 = v1[9];

          (*(v176 + 32))(v174, v175, v177);
          v125 = 0;
          goto LABEL_52;
        }

        ++v123;
        (*(v124 + 8))(v1[11], v1[9]);
        if (v122 == v123)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

LABEL_37:

    v125 = 1;
LABEL_52:
    v284 = v7;
    v178 = v1[15];
    v179 = v1[9];
    v180 = v1[10];
    (*(v180 + 56))(v178, v125, 1, v179);
    if ((*(v180 + 48))(v178, 1, v179) == 1)
    {
      sub_5CA8(v1[15], &qword_160510, &qword_12B170);
      (*(v1[24] + 16))(v1[26], v1[3], v1[23]);
      v191 = sub_125AAC();
      v192 = sub_125DEC();
      if (os_log_type_enabled(v191, v192))
      {
        v194 = v1[39];
        v195 = v1[37];
        v196 = v1[26];
        v198 = v1[23];
        v197 = v1[24];
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *&v286 = v200;
        *v199 = 136315138;
        sub_123CCC();
        v201 = sub_125BAC();
        v203 = v202;
        (*(v197 + 8))(v196, v198);
        v204 = sub_8530(v201, v203, &v286);

        *(v199 + 4) = v204;
        _os_log_impl(&dword_0, v191, v192, "Failed to parse userParse from parse: %s.", v199, 0xCu);
        sub_5BB0(v200);
      }

      else
      {
        v205 = v1[26];
        v206 = v1[23];
        v207 = v1[24];

        (*(v207 + 8))(v205, v206);
      }

      v149 = v1[21];
      v148 = v1[22];
      v150 = v1[20];
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v208 = 0;
      swift_willThrow();

LABEL_59:
      (*(v149 + 8))(v148, v150);
LABEL_60:
      v210 = v1[39];
      v209 = v1[40];
      v212 = v1[35];
      v211 = v1[36];
      v213 = v1;
      v216 = v1 + 31;
      v215 = v1[31];
      v214 = v216[1];
      v217 = v213[29];
      v218 = v213[30];
      v220 = v213[26];
      v219 = v213[27];
      v262 = v213[25];
      v264 = v213[22];
      v266 = v213[19];
      v268 = v213[18];
      v270 = v213[15];
      v272 = v213[14];
      v276 = v213[11];
      v285 = v213[8];

      v108 = v213[1];
      goto LABEL_24;
    }

    v182 = v1[18];
    v181 = v1[19];
    v183 = v1[17];
    v275 = v1[16];
    v184 = v1[15];
    v185 = v1;
    v186 = v1[10];
    v188 = v185[8];
    v187 = v185[9];
    v190 = v185[6];
    v189 = v185[7];
    sub_123E0C();
    (*(v186 + 8))(v184, v187);
    sub_123E5C();
    (*(v189 + 8))(v188, v190);
    (*(v183 + 32))(v181, v182, v275);
    v221 = v185;
    sub_123F0C();
    result = sub_12424C();
    if (result >> 62)
    {
      v251 = result;
      v252 = sub_1260FC();
      result = v251;
      v1 = v185;
      if (v252)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v1 = v185;
      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_63:
        if ((result & 0xC000000000000001) != 0)
        {
          sub_125FFC();
        }

        else
        {
          if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v222 = *(result + 32);
        }

        sub_12550C();
        v223 = v284;

        v225 = sub_F18EC(v224, v284);
        v273 = v223;
        if (v225)
        {
          v226 = v225;
          v227 = sub_125AAC();
          v228 = sub_125DFC();

          if (os_log_type_enabled(v227, v228))
          {
            v229 = swift_slowAlloc();
            v230 = swift_slowAlloc();
            *v229 = 138412290;
            v231 = [v226 targetTimer];
            *(v229 + 4) = v231;
            *v230 = v231;
            _os_log_impl(&dword_0, v227, v228, "[SetTimerAttribute.NeedsValueStrategy.parseValueResponse] Using target timer: %@", v229, 0xCu);
            sub_5CA8(v230, &unk_160540, &unk_1295A0);
            v1 = v185;
          }

          v232 = v1[21];
          v233 = v1[22];
          v234 = v1[20];
          v235 = v185[19];
          v237 = v185[16];
          v236 = v185[17];
          v238 = v185[2];

          v286 = 0u;
          v287 = 0u;
          sub_1239BC();

          v239 = v235;
          v65 = v221;
          (*(v236 + 8))(v239, v237);
          (*(v232 + 8))(v233, v234);
          goto LABEL_23;
        }

        v240 = sub_125AAC();
        v241 = sub_125DEC();

        if (os_log_type_enabled(v240, v241))
        {
          v242 = swift_slowAlloc();
          v243 = swift_slowAlloc();
          *&v286 = v243;
          *v242 = 136315138;
          v244 = sub_124B8C();
          v246 = sub_8530(v244, v245, &v286);

          *(v242 + 4) = v246;
          _os_log_impl(&dword_0, v240, v241, "Could not create SetTimerAttributeIntent from given task: %s", v242, 0xCu);
          sub_5BB0(v243);
        }

        v149 = v1[21];
        v148 = v1[22];
        v247 = v1[19];
        v150 = v1[20];
        v248 = v1[16];
        v249 = v1[17];
        sub_5AE8(&unk_15F1A0, &unk_126ED0);
        sub_84CC();
        swift_allocError();
        *v250 = 0;
        swift_willThrow();

        (*(v249 + 8))(v247, v248);
        goto LABEL_59;
      }
    }

    v253 = sub_125AAC();
    v254 = sub_125DEC();
    if (os_log_type_enabled(v253, v254))
    {
      v255 = swift_slowAlloc();
      *v255 = 0;
      _os_log_impl(&dword_0, v253, v254, "USO graph has no tasks.", v255, 2u);
    }

    v149 = v1[21];
    v148 = v1[22];
    v256 = v1[19];
    v150 = v1[20];
    v257 = v1[16];
    v258 = v1[17];

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v259 = 0;
    swift_willThrow();

    (*(v258 + 8))(v256, v257);
    goto LABEL_59;
  }

  v71 = v1[40];
  (*(v1[38] + 96))(v71, v1[37]);
  v72 = *v71;
  swift_getObjectType();
  if (!SIRINLUUserDialogAct.firstUsoTask.getter())
  {
LABEL_45:
    if (qword_15EFB0 != -1)
    {
      swift_once();
    }

    v152 = v1[27];
    v153 = v1[23];
    v154 = v1[24];
    v155 = v1[3];
    v156 = sub_125ABC();
    sub_5B30(v156, qword_1628B0);
    (*(v154 + 16))(v152, v155, v153);
    v157 = sub_125AAC();
    v158 = sub_125DEC();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = v1[39];
      v283 = v7;
      v160 = v1[37];
      v161 = v1[27];
      v163 = v1[23];
      v162 = v1[24];
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      *&v286 = v165;
      *v164 = 136315138;
      sub_123CCC();
      v166 = sub_125BAC();
      v168 = v167;
      (*(v162 + 8))(v161, v163);
      v169 = sub_8530(v166, v168, &v286);
      v7 = v283;

      *(v164 + 4) = v169;
      _os_log_impl(&dword_0, v157, v158, "Failed to parse userDialogAct into SetTimerAttributeIntent: %s", v164, 0xCu);
      sub_5BB0(v165);
    }

    else
    {
      v170 = v1[27];
      v171 = v1[23];
      v172 = v1[24];

      (*(v172 + 8))(v170, v171);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v173 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_60;
  }

  v73 = sub_12550C();
  v74 = v7;

  v76 = sub_F18EC(v75, v7);
  if (!v76)
  {

    goto LABEL_45;
  }

  v77 = v76;
  v280 = v1[2];
  v78 = [v74 targetTimer];
  v79 = [v77 toDuration];
  v80 = v1;
  v81 = [v77 toLabel];
  v82 = [objc_allocWithZone(v73) init];
  [v82 setTargetTimer:v78];
  [v82 setToDuration:v79];
  [v82 setToLabel:v81];

  v65 = v80;
  v286 = 0u;
  v287 = 0u;
  v83 = v82;
  sub_125EDC();

  sub_1239BC();

  swift_unknownObjectRelease();
LABEL_23:
  v98 = v65[39];
  v97 = v65[40];
  v100 = v65[35];
  v99 = v65[36];
  v101 = v65[31];
  v102 = v65[32];
  v103 = v65[29];
  v104 = v65[30];
  v260 = v65[27];
  v261 = v65[26];
  v263 = v65[25];
  v265 = v65[22];
  v267 = v65[19];
  v269 = v65[18];
  v271 = v65[15];
  v274 = v65[14];
  v277 = v65[11];
  v281 = v65[8];
  v105 = v65;
  v106 = v65[2];
  v107 = sub_5AE8(&qword_1628D0, &qword_12B178);
  (*(*(v107 - 8) + 56))(v106, 0, 1, v107);

  v108 = v105[1];
LABEL_24:

  return v108();
}

id sub_E798C(uint64_t a1, void *a2)
{
  if (qword_15EFB0 != -1)
  {
    swift_once();
  }

  v3 = sub_125ABC();
  sub_5B30(v3, qword_1628B0);
  v4 = sub_125AAC();
  v5 = sub_125DFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "correct setTimerAttributeIntent from nlIntent by supplementing timerId", v6, 2u);
  }

  v7 = [a2 targetTimer];
  if (v7)
  {
    v8 = v7;
    if (qword_15EF58 != -1)
    {
      swift_once();
    }

    type metadata accessor for TimerNLv3Intent();
    sub_98AC(&qword_15FFA0);
    sub_12428C();
    if (v29)
    {
      v9 = sub_125B8C();
    }

    else
    {
      v9 = 0;
    }

    sub_1257EC();
    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v19 = sub_125B8C();
    v20 = [v18 initWithIdentifier:v9 displayString:v19];

    v21 = [v8 label];
    [v20 setLabel:v21];

    v22 = [v8 duration];
    [v20 setDuration:v22];

    v23 = [v8 remainingTime];
    [v20 setRemainingTime:v23];

    [v20 setState:{objc_msgSend(v8, "state")}];
    [v20 setType:{objc_msgSend(v8, "type")}];
    sub_E3E90();
    v13.super.super.isa = sub_125D5C().super.super.isa;
    if (qword_15EF68 != -1)
    {
      swift_once();
    }

    sub_12428C();
    v14 = v29;
    if (v29)
    {
      sub_125BDC();

      v24 = objc_allocWithZone(INSpeakableString);
      v25 = sub_125B8C();

      v14 = [v24 initWithSpokenPhrase:v25];
    }

    v26 = objc_allocWithZone(sub_12550C());
    v27 = v20;
    v17 = [v26 init];
    [v17 setTargetTimer:v27];
    [v17 setToDuration:v13.super.super.isa];
    [v17 setToLabel:v14];
  }

  else
  {
    v10 = sub_125AAC();
    v11 = sub_125DEC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "SetTimerAttribute+NeedsValueStrategy.correctedIntentFrom(): Could not get targetTimer from intent; returning SetTimerAttributeIntent without targetTimer.", v12, 2u);
    }

    sub_E3E90();
    v13.super.super.isa = sub_125D5C().super.super.isa;
    if (qword_15EF68 != -1)
    {
      swift_once();
    }

    type metadata accessor for TimerNLv3Intent();
    sub_98AC(&qword_15FFA0);
    sub_12428C();
    v14 = v29;
    if (v29)
    {
      sub_125BDC();

      v15 = objc_allocWithZone(INSpeakableString);
      v16 = sub_125B8C();

      v14 = [v15 initWithSpokenPhrase:v16];
    }

    v17 = [objc_allocWithZone(sub_12550C()) init];
    [v17 setTargetTimer:0];
    [v17 setToDuration:v13.super.super.isa];
    [v17 setToLabel:v14];
  }

  return v17;
}

uint64_t sub_E7F84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_125ABC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_124FFC();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_12501C();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_12392C();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = sub_12368C();
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();
  v18 = sub_123A0C();
  v2[19] = v18;
  v19 = *(v18 - 8);
  v2[20] = v19;
  v20 = *(v19 + 64) + 15;
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_E8210, 0, 0);
}

uint64_t sub_E8210()
{
  v44 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[3];
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  sub_123B6C();
  v6 = sub_1239FC();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  sub_12363C();

  v9._rawValue = &off_158500;
  v46._countAndFlagsBits = v6;
  v46._object = v8;
  v10 = sub_12613C(v9, v46);

  if (!v10)
  {
    v11 = 0;
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    v11 = 1;
LABEL_5:
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];

    (*(v13 + 104))(v12, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v14);
    if (qword_15EFB0 != -1)
    {
      swift_once();
    }

    v15 = v0[12];
    v16 = v0[9];
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];
    v20 = sub_5B30(v19, qword_1628B0);
    (*(v18 + 16))(v17, v20, v19);
    mach_absolute_time();
    sub_12502C();
    v21 = v0[15];
    if (v11)
    {
      sub_102100();
      if (qword_15EEC0 != -1)
      {
        swift_once();
      }

      v22 = v0[3];
      v23 = sub_123B4C();
      v24 = [v23 targetTimer];

      if (v24)
      {
        v25 = sub_113D6C(0, 0);
      }

      else
      {
        v25 = 0;
      }

      v0[24] = v25;
      v41 = swift_task_alloc();
      v0[25] = v41;
      *v41 = v0;
      v41[1] = sub_E8A50;

      return sub_23E64(v25);
    }

    else
    {
      sub_101C14();
      if (qword_15EEC0 != -1)
      {
        swift_once();
      }

      v26 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v42 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
      v27 = swift_task_alloc();
      v0[22] = v27;
      *v27 = v0;
      v27[1] = sub_E8798;

      return v42(0xD000000000000027, 0x800000000012EC20, _swiftEmptyArrayStorage);
    }
  }

  if (qword_15EFB0 != -1)
  {
    swift_once();
  }

  sub_5B30(v0[4], qword_1628B0);

  v29 = sub_125AAC();
  v30 = sub_125DEC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136315138;
    v33 = sub_8530(v6, v8, &v43);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_0, v29, v30, "NeedsValueStrategy error: Unexpected parameter name: %s", v31, 0xCu);
    sub_5BB0(v32);
  }

  else
  {
  }

  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_84CC();
  swift_allocError();
  *v34 = 4;
  swift_willThrow();
  v35 = v0[21];
  v36 = v0[15];
  v37 = v0[12];
  v38 = v0[9];
  v39 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v40 = v0[1];

  return v40();
}

uint64_t sub_E8798(void *a1)
{
  v4 = *(*v2 + 176);
  v5 = *v2;
  v5[23] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_E894C, 0, 0);
  }

  else
  {
    v5[27] = a1;
    v6 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
    a1;
    v7 = swift_task_alloc();
    v5[28] = v7;
    *v7 = v5;
    v7[1] = sub_E8C14;
    v8 = v5[18];
    v9 = v5[15];
    v10 = v5[12];
    v11 = v5[2];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v11, v8, v9, v10, 0, 0, 0, 0);
  }
}

uint64_t sub_E894C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_E8A50(void *a1)
{
  v4 = *(*v2 + 200);
  v5 = *v2;
  v5[26] = v1;

  if (v1)
  {
    v6 = v5[24];

    return _swift_task_switch(sub_E8E48, 0, 0);
  }

  else
  {
    v7 = v5[24];

    v5[27] = a1;
    v8 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
    a1;
    v9 = swift_task_alloc();
    v5[28] = v9;
    *v9 = v5;
    v9[1] = sub_E8C14;
    v10 = v5[18];
    v11 = v5[15];
    v12 = v5[12];
    v13 = v5[2];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v13, v10, v11, v12, 0, 0, 0, 0);
  }
}

uint64_t sub_E8C14()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_E8D28, 0, 0);
}

uint64_t sub_E8D28()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);
  v12 = *(v0 + 168);
  v13 = *(v0 + 72);
  v14 = *(v0 + 48);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_E8E48()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_E8F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_E9014;

  return sub_E5CFC(a1, a2, a3);
}

uint64_t sub_E9014()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_E9148, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_E9148()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_E9214(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_E92BC;

  return sub_E7F84(a1, a2);
}

uint64_t sub_E92BC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_E93F0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_E93F0()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_E94BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_503C;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_E9580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, a3, a4);
}

unint64_t sub_E9648()
{
  result = qword_1628C8;
  if (!qword_1628C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1628C8);
  }

  return result;
}

uint64_t sub_E96AC()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1628D8);
  sub_5B30(v0, qword_1628D8);
  return sub_1257AC();
}

uint64_t sub_E96F8(uint64_t a1, uint64_t a2)
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
  v25 = sub_12392C();
  v2[71] = v25;
  v26 = *(v25 - 8);
  v2[72] = v26;
  v27 = *(v26 + 64) + 15;
  v2[73] = swift_task_alloc();

  return _swift_task_switch(sub_E9ADC, 0, 0);
}

uint64_t sub_E9ADC()
{
  if (qword_15EFB8 != -1)
  {
    swift_once();
  }

  *(v0 + 592) = sub_5B30(*(v0 + 448), qword_1628D8);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "ResetTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v3, 2u);
  }

  v4 = *(v0 + 344);

  sub_5AE8(&qword_1628F8, &qword_12B2A8);
  v5 = sub_123A9C();
  v6 = [v5 resetTimers];

  if (!v6)
  {
    goto LABEL_65;
  }

  sub_1257EC();
  v7 = sub_125C6C();
  *(v0 + 600) = v7;

  if (!(v7 >> 62))
  {
    if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

  if (!sub_1260FC())
  {
LABEL_64:

LABEL_65:
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v102 = 5;
    swift_willThrow();
LABEL_66:
    v103 = *(v0 + 584);
    v104 = *(v0 + 560);
    v105 = *(v0 + 552);
    v106 = *(v0 + 544);
    v107 = *(v0 + 536);
    v108 = *(v0 + 512);
    v109 = *(v0 + 488);
    v110 = *(v0 + 464);
    v111 = *(v0 + 440);
    v112 = *(v0 + 416);
    v117 = *(v0 + 408);
    v121 = *(v0 + 400);
    v125 = *(v0 + 392);
    v129 = *(v0 + 368);

    v113 = *(v0 + 8);

    return v113();
  }

LABEL_8:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_125FFC();
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_71;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;
  *(v0 + 608) = v8;
  v10 = *(v0 + 584);
  v11 = *(v0 + 560);
  sub_5AE8(&qword_160810, &unk_127420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126EB0;
  *(inited + 32) = v9;
  v13 = v9;
  sub_FF26C(inited, v10);
  swift_setDeallocating();
  v14 = *(inited + 16);
  swift_arrayDestroy();
  sub_12361C();
  *(v0 + 616) = sub_2BE74(v7);
  if (v7 >> 62)
  {
    v15 = sub_1260FC();
  }

  else
  {
    v15 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  *(v0 + 624) = v15;
  if (v15 == 1)
  {
    sub_12573C();
    sub_12572C();
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    sub_23B08((v0 + 216), v16);
    v18 = [v13 identifier];
    if (v18)
    {
      v19 = v18;
      v20 = sub_125B9C();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    *(v0 + 632) = v22;
    v64 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
    v65 = swift_task_alloc();
    *(v0 + 640) = v65;
    *v65 = v0;
    v65[1] = sub_EA97C;

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v20, v22, v16, v17);
  }

  *(v0 + 664) = 0u;
  v122 = *(v0 + 592);
  v126 = *(v0 + 512);
  v24 = *(v0 + 480);
  v23 = *(v0 + 488);
  v25 = *(v0 + 464);
  v26 = *(v0 + 472);
  v27 = *(v0 + 456);
  v118 = *(v0 + 448);
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v28 = *(v0 + 88);
  sub_23B08((v0 + 56), *(v0 + 80));
  sub_1235DC();
  sub_5BB0((v0 + 56));
  (*(v24 + 104))(v23, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v26);
  (*(v27 + 16))(v25, v122, v118);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  v29 = *(v0 + 128);
  sub_23B08((v0 + 96), *(v0 + 120));
  v30 = sub_1235DC();
  sub_5BB0((v0 + 96));
  if (v30)
  {
    v31 = sub_648C8(*(v0 + 600), 13);
    *(v0 + 792) = v31;

    if (v31)
    {
      v32 = objc_opt_self();
      *(v0 + 328) = 0;
      v33 = [v32 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:v0 + 328];
      v34 = *(v0 + 328);
      if (v33)
      {
        v35 = v33;
        v36 = v34;
        v37 = sub_122EFC();
        v39 = v38;

        *(v0 + 800) = v37;
        *(v0 + 808) = v39;
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v40 = *(v0 + 344);
        v41 = swift_task_alloc();
        *(v0 + 816) = v41;
        v41[2] = v37;
        v41[3] = v39;
        v41[4] = v40;
        v42 = swift_task_alloc();
        *(v0 + 824) = v42;
        *v42 = v0;
        v42[1] = sub_ECC20;
        v43 = *(v0 + 616);

        return sub_58F9C(v43, sub_EF97C, v41);
      }

      v95 = *(v0 + 616);
      v115 = *(v0 + 608);
      v96 = *(v0 + 576);
      v124 = *(v0 + 568);
      v128 = *(v0 + 584);
      v97 = *(v0 + 528);
      v116 = *(v0 + 520);
      v120 = *(v0 + 560);
      v98 = *(v0 + 504);
      v99 = *(v0 + 512);
      v100 = *(v0 + 496);
      v101 = v34;

      sub_122E8C();

      swift_willThrow();
      (*(v98 + 8))(v99, v100);
      (*(v97 + 8))(v120, v116);
      (*(v96 + 8))(v128, v124);
    }

    else
    {
      v80 = *(v0 + 616);
      v81 = *(v0 + 592);

      v82 = sub_125AAC();
      v83 = sub_125DFC();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_0, v82, v83, "Could not get timer action from timer.", v84, 2u);
      }

      v85 = *(v0 + 608);
      v86 = *(v0 + 576);
      v123 = *(v0 + 568);
      v127 = *(v0 + 584);
      v119 = *(v0 + 560);
      v87 = *(v0 + 528);
      v88 = *(v0 + 520);
      v89 = *(v0 + 504);
      v90 = *(v0 + 512);
      v91 = *(v0 + 496);

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v92 = 1;
      swift_willThrow();

      (*(v89 + 8))(v90, v91);
      (*(v87 + 8))(v119, v88);
      (*(v86 + 8))(v127, v123);
    }

    goto LABEL_66;
  }

  v46 = *(v0 + 432);
  v45 = *(v0 + 440);
  v47 = *(v0 + 424);
  sub_1250AC();
  v48 = sub_12504C();
  (*(v46 + 8))(v45, v47);
  if (v48)
  {
    v49 = *(v0 + 592);
    v50 = sub_125AAC();
    v51 = sub_125DFC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "[ResetTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v52, 2u);
    }

    v53 = *(v0 + 624);
    if (!v53)
    {
      goto LABEL_49;
    }

    sub_22A8C(0, v53 & ~(v53 >> 63), 0);
    if ((v53 & 0x8000000000000000) == 0)
    {
      v54 = 0;
      v55 = *(v0 + 384);
      v56 = *(v0 + 600) + 32;
      do
      {
        if ((*(v0 + 600) & 0xC000000000000001) != 0)
        {
          v57 = sub_125FFC();
        }

        else
        {
          v57 = *(v56 + 8 * v54);
        }

        v58 = v57;
        sub_1135FC(*(v0 + 392));

        v60 = _swiftEmptyArrayStorage[2];
        v59 = _swiftEmptyArrayStorage[3];
        if (v60 >= v59 >> 1)
        {
          sub_22A8C(v59 > 1, v60 + 1, 1);
        }

        v61 = *(v0 + 624);
        v62 = *(v0 + 392);
        v63 = *(v0 + 376);
        ++v54;
        _swiftEmptyArrayStorage[2] = (v60 + 1);
        (*(v55 + 32))(_swiftEmptyArrayStorage + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v60, v62, v63);
      }

      while (v54 != v61);
LABEL_49:
      v71 = *(v0 + 416);
      sub_12521C();
      v72 = enum case for SiriTimePluginModel.timerMulti(_:);
      v73 = sub_12503C();
      v74 = *(v73 - 8);
      (*(v74 + 104))(v71, v72, v73);
      (*(v74 + 56))(v71, 0, 1, v73);
      if (qword_15EE20 != -1)
      {
        swift_once();
      }

      v75 = *(v0 + 616);
      sub_5AE8(&qword_15F180, &unk_126E10);
      v76 = swift_allocObject();
      *(v0 + 680) = v76;
      *(v76 + 16) = xmmword_126CB0;
      *(v76 + 32) = 0x6D69547465736572;
      *(v76 + 40) = 0xEB00000000737265;
      *(v76 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
      *(v76 + 48) = v75;
      v77 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v78 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v79 = swift_task_alloc();
      *(v0 + 688) = v79;
      *v79 = v0;
      v79[1] = sub_EB660;

      return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v78))(0xD000000000000020, 0x800000000012EDE0, v76);
    }

    __break(1u);
    goto LABEL_75;
  }

  v66 = *(v0 + 616);
  v67 = *(v0 + 600);

  if (!(v66 >> 62))
  {
    v68 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_44;
  }

LABEL_71:
  if (*(v0 + 616) < 0)
  {
    v114 = *(v0 + 616);
  }

  v68 = sub_1260FC();
LABEL_44:
  if (v68 >= 2)
  {
    if (qword_15EE28 == -1)
    {
LABEL_46:
      v69 = swift_task_alloc();
      *(v0 + 760) = v69;
      *v69 = v0;
      v69[1] = sub_EC668;
      v70 = *(v0 + 616);

      return sub_58E30(v70);
    }

LABEL_75:
    swift_once();
    goto LABEL_46;
  }

  if (qword_15EE28 != -1)
  {
    swift_once();
  }

  v93 = swift_task_alloc();
  *(v0 + 776) = v93;
  *v93 = v0;
  v93[1] = sub_EC944;
  v94 = *(v0 + 616);

  return sub_593AC(v94);
}

uint64_t sub_EA97C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 640);
  v5 = *(*v2 + 632);
  v7 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = a2;

  return _swift_task_switch(sub_EAACC, 0, 0);
}

uint64_t sub_EAACC()
{
  sub_5BB0(v0 + 27);
  v1 = v0[82];
  v2 = v0[81];
  v0[84] = v1;
  v0[83] = v2;
  v102 = v0[74];
  v106 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v6 = v0[57];
  v95 = v0[59];
  v98 = v0[56];
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v7 = v0[11];
  sub_23B08(v0 + 7, v0[10]);
  v8 = sub_1235DC() & (v1 != 0);
  sub_5BB0(v0 + 7);
  (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v95);
  (*(v6 + 16))(v5, v102, v98);
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
      v29 = v0[74];
      v30 = sub_125AAC();
      v31 = sub_125DFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "[ResetTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v32, 2u);
      }

      if (v8)
      {
        v33 = v0[52];
        v34 = sub_12503C();
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
      }

      else
      {
        v53 = v0[78];
        if (v53)
        {
          sub_22A8C(0, v53 & ~(v53 >> 63), 0);
          if (v53 < 0)
          {
            __break(1u);
          }

          v54 = 0;
          v55 = v0[48];
          v56 = v0[75] + 32;
          do
          {
            if ((v0[75] & 0xC000000000000001) != 0)
            {
              v57 = sub_125FFC();
            }

            else
            {
              v57 = *(v56 + 8 * v54);
            }

            v58 = v57;
            sub_1135FC(v0[49]);

            v60 = _swiftEmptyArrayStorage[2];
            v59 = _swiftEmptyArrayStorage[3];
            if (v60 >= v59 >> 1)
            {
              sub_22A8C(v59 > 1, v60 + 1, 1);
            }

            v61 = v0[78];
            v62 = v0[49];
            v63 = v0[47];
            ++v54;
            _swiftEmptyArrayStorage[2] = (v60 + 1);
            (*(v55 + 32))(_swiftEmptyArrayStorage + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v60, v62, v63);
          }

          while (v54 != v61);
        }

        v66 = v0[52];
        sub_12521C();
        v67 = enum case for SiriTimePluginModel.timerMulti(_:);
        v68 = sub_12503C();
        v69 = *(v68 - 8);
        (*(v69 + 104))(v66, v67, v68);
        (*(v69 + 56))(v66, 0, 1, v68);
      }

      if (qword_15EE20 != -1)
      {
        swift_once();
      }

      v70 = v0[77];
      sub_5AE8(&qword_15F180, &unk_126E10);
      v71 = swift_allocObject();
      v0[85] = v71;
      *(v71 + 16) = xmmword_126CB0;
      *(v71 + 32) = 0x6D69547465736572;
      *(v71 + 40) = 0xEB00000000737265;
      *(v71 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
      *(v71 + 48) = v70;
      v72 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v73 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v74 = swift_task_alloc();
      v0[86] = v74;
      *v74 = v0;
      v74[1] = sub_EB660;

      return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v73))(0xD000000000000020, 0x800000000012EDE0, v71);
    }

    else
    {
      v35 = v0[77];
      v36 = v0[75];

      if (v35 >> 62)
      {
        if (v0[77] < 0)
        {
          v93 = v0[77];
        }

        v37 = sub_1260FC();
      }

      else
      {
        v37 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
      }

      if (v37 < 2)
      {
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v64 = swift_task_alloc();
        v0[97] = v64;
        *v64 = v0;
        v64[1] = sub_EC944;
        v65 = v0[77];

        return sub_593AC(v65);
      }

      else
      {
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v38 = swift_task_alloc();
        v0[95] = v38;
        *v38 = v0;
        v38[1] = sub_EC668;
        v39 = v0[77];

        return sub_58E30(v39);
      }
    }
  }

  else
  {
    v11 = sub_648C8(v0[75], 13);
    v0[99] = v11;

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

        v0[100] = v17;
        v0[101] = v19;
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v20 = v0[43];
        v21 = swift_task_alloc();
        v0[102] = v21;
        v21[2] = v17;
        v21[3] = v19;
        v21[4] = v20;
        v22 = swift_task_alloc();
        v0[103] = v22;
        *v22 = v0;
        v22[1] = sub_ECC20;
        v23 = v0[77];

        return sub_58F9C(v23, sub_EF97C, v21);
      }

      v75 = v0[77];
      v94 = v0[76];
      v76 = v0[72];
      v104 = v0[71];
      v108 = v0[73];
      v77 = v0[66];
      v96 = v0[65];
      v100 = v0[70];
      v78 = v0[63];
      v79 = v0[64];
      v80 = v0[62];
      v81 = v14;

      sub_122E8C();

      swift_willThrow();
      (*(v78 + 8))(v79, v80);
      (*(v77 + 8))(v100, v96);
      (*(v76 + 8))(v108, v104);
    }

    else
    {
      v40 = v0[77];
      v41 = v0[74];

      v42 = sub_125AAC();
      v43 = sub_125DFC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "Could not get timer action from timer.", v44, 2u);
      }

      v45 = v0[76];
      v46 = v0[72];
      v103 = v0[71];
      v107 = v0[73];
      v99 = v0[70];
      v47 = v0[66];
      v48 = v0[65];
      v49 = v0[63];
      v50 = v0[64];
      v51 = v0[62];

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v52 = 1;
      swift_willThrow();

      (*(v49 + 8))(v50, v51);
      (*(v47 + 8))(v99, v48);
      (*(v46 + 8))(v107, v103);
    }

    v82 = v0[73];
    v83 = v0[70];
    v84 = v0[69];
    v85 = v0[68];
    v86 = v0[67];
    v87 = v0[64];
    v88 = v0[61];
    v89 = v0[58];
    v90 = v0[55];
    v91 = v0[52];
    v97 = v0[51];
    v101 = v0[50];
    v105 = v0[49];
    v109 = v0[46];

    v92 = v0[1];

    return v92();
  }
}

uint64_t sub_EB660(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 688);
  v8 = *v2;
  v3[87] = a1;
  v3[88] = v1;

  if (v1)
  {
    v5 = sub_EBCF8;
  }

  else
  {
    v6 = v3[85];

    v5 = sub_EB7B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_EB7B4()
{
  v56 = v0;
  v1 = *(v0 + 672);
  if (v1)
  {
    v2 = *(v0 + 600);
    v3 = *(v0 + 592);

    v4 = sub_125AAC();
    v5 = sub_125DFC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 664);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v55 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_8530(v6, v1, &v55);
      _os_log_impl(&dword_0, v4, v5, "[ResetTimer.HandleIntentStrategy.makeIntentHandledResponse] We have a live activity: %s", v7, 0xCu);
      sub_5BB0(v8);
    }

    v9 = *(v0 + 552);
    v10 = *(v0 + 408);
    v11 = *(v0 + 416);
    sub_12361C();
    sub_2AEC8(v11, v10);
    v12 = sub_12503C();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v10, 1, v12);
    v15 = *(v0 + 408);
    if (v14 == 1)
    {
      sub_5CA8(*(v0 + 408), &qword_15F9E0, &unk_127710);
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0;
    }

    else
    {
      *(v0 + 200) = v12;
      *(v0 + 208) = sub_2AF38();
      v25 = sub_23B4C((v0 + 176));
      (*(v13 + 32))(v25, v15, v12);
    }

    v26 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v27 = swift_task_alloc();
    *(v0 + 712) = v27;
    *v27 = v0;
    v27[1] = sub_EBEF8;
    v28 = *(v0 + 696);
    v29 = *(v0 + 672);
    v30 = *(v0 + 664);
    v31 = *(v0 + 584);
    v32 = *(v0 + 552);
    v33 = *(v0 + 512);
    v34 = *(v0 + 336);
    v59 = 2;
    v58 = 0x800000000012D290;
    v35 = v0 + 176;
    v36 = 0xD000000000000018;
  }

  else
  {
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);

    v18 = sub_125AAC();
    v19 = sub_125DFC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 600);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      v23 = *(v0 + 600);
      if (v21 >> 62)
      {
        if (v23 < 0)
        {
          v38 = *(v0 + 600);
        }

        v24 = sub_1260FC();
        v39 = *(v0 + 600);
      }

      else
      {
        v24 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
      }

      *(v22 + 4) = v24;

      _os_log_impl(&dword_0, v18, v19, "[ResetTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer snippet model for %ld timers.", v22, 0xCu);
    }

    else
    {
      v37 = *(v0 + 600);
      swift_bridgeObjectRelease_n();
    }

    v40 = *(v0 + 544);
    v41 = *(v0 + 416);
    v42 = *(v0 + 400);
    sub_12361C();
    sub_2AEC8(v41, v42);
    v43 = sub_12503C();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 48))(v42, 1, v43);
    v46 = *(v0 + 400);
    if (v45 == 1)
    {
      sub_5CA8(*(v0 + 400), &qword_15F9E0, &unk_127710);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
    }

    else
    {
      *(v0 + 160) = v43;
      *(v0 + 168) = sub_2AF38();
      v47 = sub_23B4C((v0 + 136));
      (*(v44 + 32))(v47, v46, v43);
    }

    v48 = *(v0 + 624);
    if (v48 <= 1)
    {
      v49 = 0xD000000000000018;
    }

    else
    {
      v49 = 0xD000000000000017;
    }

    if (v48 <= 1)
    {
      v50 = "esetTimerCATPatternsExecutor";
    }

    else
    {
      v50 = "resetTimer#handledOnWatch";
    }

    v51 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v52 = swift_task_alloc();
    *(v0 + 736) = v52;
    *v52 = v0;
    v52[1] = sub_EC2A0;
    v53 = *(v0 + 696);
    v31 = *(v0 + 584);
    v32 = *(v0 + 544);
    v33 = *(v0 + 512);
    v34 = *(v0 + 336);
    v59 = 2;
    v58 = v50 | 0x8000000000000000;
    v35 = v0 + 136;
    v30 = 0;
    v29 = 0;
    v36 = v49;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v34, v32, v31, v35, v33, v30, v29, v36);
}

uint64_t sub_EBCF8()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[72];
  v28 = v0[71];
  v30 = v0[73];
  v6 = v0[66];
  v24 = v0[65];
  v26 = v0[70];
  v7 = v0[63];
  v8 = v0[64];
  v9 = v0[62];
  v10 = v0[52];

  sub_5CA8(v10, &qword_15F9E0, &unk_127710);
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v26, v24);
  (*(v5 + 8))(v30, v28);
  v11 = v0[73];
  v12 = v0[70];
  v13 = v0[69];
  v14 = v0[68];
  v15 = v0[67];
  v16 = v0[64];
  v17 = v0[61];
  v18 = v0[58];
  v19 = v0[55];
  v20 = v0[52];
  v23 = v0[88];
  v25 = v0[51];
  v27 = v0[50];
  v29 = v0[49];
  v31 = v0[46];

  v21 = v0[1];

  return v21();
}

uint64_t sub_EBEF8()
{
  v1 = *v0;
  v2 = *(*v0 + 712);
  v3 = *(*v0 + 672);
  v4 = *(*v0 + 552);
  v5 = *(*v0 + 528);
  v6 = *(*v0 + 520);
  v9 = *v0;

  v7 = *(v5 + 8);
  *(v1 + 720) = v7;
  *(v1 + 728) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  sub_5CA8(v1 + 176, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_EC0C8, 0, 0);
}

uint64_t sub_EC0C8()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 608);
  v4 = *(v0 + 560);
  v5 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  v8 = *(v0 + 496);
  v9 = *(v0 + 416);

  sub_5CA8(v9, &qword_15F9E0, &unk_127710);
  (*(v7 + 8))(v6, v8);
  v2(v4, v5);
  v10 = *(v0 + 560);
  v11 = *(v0 + 552);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 512);
  v15 = *(v0 + 488);
  v16 = *(v0 + 464);
  v17 = *(v0 + 440);
  v20 = *(v0 + 416);
  v21 = *(v0 + 408);
  v22 = *(v0 + 400);
  v23 = *(v0 + 392);
  v24 = *(v0 + 368);
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_EC2A0()
{
  v1 = *v0;
  v2 = *(*v0 + 736);
  v3 = *(*v0 + 544);
  v4 = *(*v0 + 528);
  v5 = *(*v0 + 520);
  *(*v0 + 624);
  v8 = *v0;

  v6 = *(v4 + 8);
  *(v1 + 744) = v6;
  *(v1 + 752) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  sub_5CA8(v1 + 136, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_EC490, 0, 0);
}

uint64_t sub_EC490()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 608);
  v4 = *(v0 + 560);
  v5 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  v8 = *(v0 + 496);
  v9 = *(v0 + 416);

  sub_5CA8(v9, &qword_15F9E0, &unk_127710);
  (*(v7 + 8))(v6, v8);
  v2(v4, v5);
  v10 = *(v0 + 560);
  v11 = *(v0 + 552);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 512);
  v15 = *(v0 + 488);
  v16 = *(v0 + 464);
  v17 = *(v0 + 440);
  v20 = *(v0 + 416);
  v21 = *(v0 + 408);
  v22 = *(v0 + 400);
  v23 = *(v0 + 392);
  v24 = *(v0 + 368);
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_EC668(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[32] = v2;
  v4[33] = a1;
  v4[34] = v1;
  v5 = v3[95];
  v11 = *v2;
  v4[96] = v1;

  if (v1)
  {
    v6 = v4[84];
    v7 = v4[77];

    v8 = sub_ED2BC;
  }

  else
  {
    v9 = v4[77];

    v8 = sub_EC7D4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_EC7D4()
{
  v1 = v0[33];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[46];
  v0[105] = v1;
  (*(v7 + 16))(v6, v5, v8);
  v10 = swift_task_alloc();
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = v2;
  v1;
  sub_123B0C();

  v11 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v12 = swift_task_alloc();
  v0[106] = v12;
  *v12 = v0;
  v12[1] = sub_ECF44;
  v13 = v0[64];
  v14 = v0[46];
  v15 = v0[42];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v15, v14, v13);
}

uint64_t sub_EC944(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[35] = v2;
  v4[36] = a1;
  v4[37] = v1;
  v5 = v3[97];
  v11 = *v2;
  v4[98] = v1;

  if (v1)
  {
    v6 = v4[84];
    v7 = v4[77];

    v8 = sub_ED480;
  }

  else
  {
    v9 = v4[77];

    v8 = sub_ECAB0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_ECAB0()
{
  v1 = v0[36];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[46];
  v0[105] = v1;
  (*(v7 + 16))(v6, v5, v8);
  v10 = swift_task_alloc();
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = v2;
  v1;
  sub_123B0C();

  v11 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v12 = swift_task_alloc();
  v0[106] = v12;
  *v12 = v0;
  v12[1] = sub_ECF44;
  v13 = v0[64];
  v14 = v0[46];
  v15 = v0[42];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v15, v14, v13);
}

uint64_t sub_ECC20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v5 = v3[103];
  v6 = *v2;
  v4[104] = v1;

  v7 = v3[102];
  if (v1)
  {
    v8 = v4[84];
    v9 = v4[77];

    v10 = sub_ED644;
  }

  else
  {
    v11 = v4[77];

    v10 = sub_ECDB8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_ECDB8()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);

  sub_E498(v2, v1);
  v3 = *(v0 + 312);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 584);
  v7 = *(v0 + 560);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v11 = *(v0 + 368);
  *(v0 + 840) = v3;
  (*(v9 + 16))(v8, v7, v10);
  v12 = swift_task_alloc();
  v12[2] = v6;
  v12[3] = v5;
  v12[4] = v4;
  v3;
  sub_123B0C();

  v13 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v14 = swift_task_alloc();
  *(v0 + 848) = v14;
  *v14 = v0;
  v14[1] = sub_ECF44;
  v15 = *(v0 + 512);
  v16 = *(v0 + 368);
  v17 = *(v0 + 336);

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v17, v16, v15);
}

uint64_t sub_ECF44()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *v1;
  *(*v1 + 856) = v0;

  v5 = v2[105];
  (*(v2[45] + 8))(v2[46], v2[44]);

  if (v0)
  {
    v6 = sub_ED81C;
  }

  else
  {
    v6 = sub_ED0F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_ED0F8()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 560);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 496);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 512);
  v13 = *(v0 + 488);
  v14 = *(v0 + 464);
  v15 = *(v0 + 440);
  v18 = *(v0 + 416);
  v19 = *(v0 + 408);
  v20 = *(v0 + 400);
  v21 = *(v0 + 392);
  v22 = *(v0 + 368);
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_ED2BC()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 584);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 512);
  v16 = *(v0 + 488);
  v17 = *(v0 + 464);
  v18 = *(v0 + 440);
  v19 = *(v0 + 416);
  v22 = *(v0 + 768);
  v23 = *(v0 + 408);
  v24 = *(v0 + 400);
  v25 = *(v0 + 392);
  v26 = *(v0 + 368);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_ED480()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 584);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 512);
  v16 = *(v0 + 488);
  v17 = *(v0 + 464);
  v18 = *(v0 + 440);
  v19 = *(v0 + 416);
  v22 = *(v0 + 784);
  v23 = *(v0 + 408);
  v24 = *(v0 + 400);
  v25 = *(v0 + 392);
  v26 = *(v0 + 368);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_ED644()
{
  v1 = v0[99];
  v2 = v0[76];
  v3 = v0[72];
  v25 = v0[71];
  v27 = v0[73];
  v4 = v0[70];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[63];
  v8 = v0[64];
  v9 = v0[62];
  sub_E498(v0[100], v0[101]);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v27, v25);
  v10 = v0[73];
  v11 = v0[70];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[64];
  v16 = v0[61];
  v17 = v0[58];
  v18 = v0[55];
  v19 = v0[52];
  v22 = v0[104];
  v23 = v0[51];
  v24 = v0[50];
  v26 = v0[49];
  v28 = v0[46];

  v20 = v0[1];

  return v20();
}

uint64_t sub_ED81C()
{
  v1 = *(v0 + 608);
  v26 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v26, v3);
  v10 = *(v0 + 584);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 512);
  v16 = *(v0 + 488);
  v17 = *(v0 + 464);
  v18 = *(v0 + 440);
  v19 = *(v0 + 416);
  v22 = *(v0 + 856);
  v23 = *(v0 + 408);
  v24 = *(v0 + 400);
  v25 = *(v0 + 392);
  v27 = *(v0 + 368);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_ED9EC(uint64_t *a1)
{
  v2 = sub_5AE8(&unk_15F170, &unk_126E00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  sub_122EEC(0);
  sub_124E1C();
  v6 = sub_124E4C();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for ResetTimerHandledOnWatchParameters(0);
  sub_22A1C(v5, a1 + *(v7 + 24));
  sub_124DEC();
  sub_5AE8(&qword_1628F8, &qword_12B2A8);
  sub_123AAC();
  v8 = sub_124DDC();
  v9 = *a1;

  *a1 = v8;
  return result;
}

uint64_t sub_EDB24(uint64_t a1, uint64_t a2)
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

uint64_t sub_EDC48(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_125ABC();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = sub_124FFC();
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v9 = sub_12501C();
  v2[22] = v9;
  v10 = *(v9 - 8);
  v2[23] = v10;
  v11 = *(v10 + 64) + 15;
  v2[24] = swift_task_alloc();
  v12 = *(*(sub_124EDC() - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v13 = sub_12368C();
  v2[26] = v13;
  v14 = *(v13 - 8);
  v2[27] = v14;
  v15 = *(v14 + 64) + 15;
  v2[28] = swift_task_alloc();
  v16 = sub_12392C();
  v2[29] = v16;
  v17 = *(v16 - 8);
  v2[30] = v17;
  v18 = *(v17 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_EDEA4, 0, 0);
}

uint64_t sub_EDEA4()
{
  if (qword_15EFB8 != -1)
  {
    swift_once();
  }

  v37 = sub_5B30(v0[16], qword_1628D8);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "ResetTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  v34 = v0[16];
  v35 = v0[24];
  v36 = v0[15];

  sub_12391C();
  sub_12361C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[32] = sub_124DBC();
  (*(v7 + 104))(v8, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v9);
  (*(v11 + 16))(v10, v37, v34);
  mach_absolute_time();
  sub_12502C();
  sub_5AE8(&qword_1628F8, &qword_12B2A8);
  v12 = sub_123A9C();
  v13 = sub_12556C();

  if (v13 != 100)
  {
    if (v13 == 101)
    {
      v14 = v0[15];
      v15 = swift_task_alloc();
      v0[33] = v15;
      *(v15 + 16) = v14;
      v16 = swift_task_alloc();
      v0[34] = v16;
      *v16 = v0;
      v16[1] = sub_EE3C4;

      return sub_104D80(sub_EF968, v15);
    }

    v22 = v0[15];
    v23 = sub_123ABC();
    v24 = [v23 targetTimer];

    v25 = [v24 shouldMatchAny];
    sub_8BAC();
    v26.super.super.isa = sub_125EFC(1).super.super.isa;
    isa = v26.super.super.isa;
    if (v25)
    {
      v28 = sub_125F0C();

      if (v28)
      {
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v29 = "resetTimer#errorSingle";
        v30 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v38 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v31 = swift_task_alloc();
        v0[38] = v31;
        *v31 = v0;
        v31[1] = sub_EE8B4;
        v21 = 0xD000000000000015;
LABEL_20:
        v20 = v29 | 0x8000000000000000;
        goto LABEL_21;
      }
    }

    else
    {
    }

    if (qword_15EE28 != -1)
    {
      swift_once();
    }

    v29 = "ngIntentResponse(rchRecord:)";
    v32 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v38 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v33 = swift_task_alloc();
    v0[40] = v33;
    *v33 = v0;
    v33[1] = sub_EEBAC;
    v21 = 0xD000000000000016;
    goto LABEL_20;
  }

  v18 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v38 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v19 = swift_task_alloc();
  v0[36] = v19;
  *v19 = v0;
  v19[1] = sub_EE5BC;
  v20 = 0x800000000012C5A0;
  v21 = 0xD000000000000012;
LABEL_21:

  return v38(v21, v20, _swiftEmptyArrayStorage);
}

uint64_t sub_EE3C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[34];
  v6 = v3[33];
  v9 = *v2;
  v4[35] = v1;

  if (v1)
  {
    v7 = sub_EF0F8;
  }

  else
  {
    v7 = sub_EE4FC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_EE4FC()
{
  v1 = v0[3];
  v0[42] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_EEEA4;
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[14];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v5, v4, v6, 0);
}

uint64_t sub_EE5BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[36];
  v8 = *v2;
  v4[37] = v1;

  if (v1)
  {
    v6 = sub_EE798;
  }

  else
  {
    v6 = sub_EE6D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_EE6D8()
{
  v1 = v0[6];
  v0[42] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_EEEA4;
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[14];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v5, v4, v6, 0);
}

uint64_t sub_EE798()
{
  v1 = v0[32];

  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[21];
  v12 = v0[18];
  v13 = v0[37];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_EE8B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[38];
  v8 = *v2;
  v4[39] = v1;

  if (v1)
  {
    v6 = sub_EEA90;
  }

  else
  {
    v6 = sub_EE9D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_EE9D0()
{
  v1 = v0[9];
  v0[42] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_EEEA4;
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[14];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v5, v4, v6, 0);
}

uint64_t sub_EEA90()
{
  v1 = v0[32];

  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[21];
  v12 = v0[18];
  v13 = v0[39];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_EEBAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[40];
  v8 = *v2;
  v4[41] = v1;

  if (v1)
  {
    v6 = sub_EED88;
  }

  else
  {
    v6 = sub_EECC8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_EECC8()
{
  v1 = v0[12];
  v0[42] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_EEEA4;
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[14];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v5, v4, v6, 0);
}

uint64_t sub_EED88()
{
  v1 = v0[32];

  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[21];
  v12 = v0[18];
  v13 = v0[41];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_EEEA4()
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v6 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_EF214;
  }

  else
  {
    v4 = sub_EEFD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_EEFD0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  v12 = *(v0 + 232);
  v13 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  v14 = *(v0 + 168);
  v15 = *(v0 + 144);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_EF0F8()
{
  v1 = v0[32];

  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[21];
  v12 = v0[18];
  v13 = v0[35];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_EF214()
{
  v1 = *(v0 + 256);

  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = *(v0 + 168);
  v12 = *(v0 + 144);
  v13 = *(v0 + 352);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10();
}

void sub_EF33C(uint64_t a1)
{
  sub_5AE8(&qword_1628F8, &qword_12B2A8);
  v4 = sub_123ABC();
  sub_12558C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_EF3C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_EF468;

  return sub_E96F8(a1, a2);
}

uint64_t sub_EF468()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_EF59C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_EF59C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_EF668(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_EF710;

  return sub_EDC48(a1, a2);
}

uint64_t sub_EF710()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_EF844, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_EF844()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

unint64_t sub_EF914()
{
  result = qword_1628F0;
  if (!qword_1628F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1628F0);
  }

  return result;
}

uint64_t sub_EF970(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_EDB24(a1, v1[2]);
}

uint64_t sub_EF97C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_ED9EC(a1);
}

uint64_t sub_EF998()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162900);
  sub_5B30(v0, qword_162900);
  return sub_1257AC();
}

uint64_t sub_EF9E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  if (qword_15EFC0 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_162900);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "PauseTimer.NeedsConfirmationStrategy.actionForInput() called)", v15, 2u);
  }

  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v18 = sub_12514C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_435BC(a1, v11, 0, v7, a2);
  sub_5CA8(v7, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v11, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_EFC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v4 = *(*(sub_5AE8(&unk_161EC0, &unk_126E20) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_EFD14, 0, 0);
}

uint64_t sub_EFD14()
{
  if (qword_15EFC0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_162900);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PauseTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  v5 = v0[8];

  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v6 = sub_123B5C();
  v7 = [v6 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  v8 = swift_dynamicCast();
  v9 = v0[9];
  if (v8)
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    v13 = sub_123B4C();
    v14 = [objc_allocWithZone(sub_12550C()) init];
    [v14 setTargetTimer:v12];
    v15 = [v13 toDuration];
    [v14 setToDuration:v15];

    v16 = [v13 toLabel];
    [v14 setToLabel:v16];

    v17 = enum case for ConfirmationResponse.confirmed(_:);
    v18 = sub_123A1C();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v9, v17, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    v20 = v14;
    sub_125EDC();

    sub_123AEC();
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_F0088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v4 = *(*(sub_5AE8(&unk_162190, &unk_128500) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = sub_125ABC();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = sub_124FFC();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = sub_12501C();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();
  v14 = sub_12392C();
  v3[19] = v14;
  v15 = *(v14 - 8);
  v3[20] = v15;
  v16 = *(v15 + 64) + 15;
  v3[21] = swift_task_alloc();
  v17 = sub_12368C();
  v3[22] = v17;
  v18 = *(v17 - 8);
  v3[23] = v18;
  v19 = *(v18 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_F02F0, 0, 0);
}

uint64_t sub_F02F0()
{
  if (qword_15EFC0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[10], qword_162900);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PauseTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  v5 = v0[8];

  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v6 = sub_123B5C();
  v7 = [v6 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (swift_dynamicCast())
  {
    v8 = v0[24];
    v9 = v0[21];
    v30 = v0[18];
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v14 = v1;
    v16 = v0[10];
    v15 = v0[11];
    v0[25] = v0[6];
    sub_12362C();
    sub_FFAE8(5);
    (*(v11 + 104))(v10, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v12);
    (*(v15 + 16))(v13, v14, v16);
    mach_absolute_time();
    sub_12502C();
    if (qword_15EEC0 != -1)
    {
      swift_once();
    }

    v17 = sub_113D6C(0, 0);
    v0[26] = v17;
    sub_5AE8(&qword_15F180, &unk_126E10);
    v18 = swift_allocObject();
    v0[27] = v18;
    *(v18 + 16) = xmmword_126CB0;
    strcpy((v18 + 32), "speakableTimer");
    *(v18 + 47) = -18;
    *(v18 + 72) = type metadata accessor for TimerTimer(0);
    *(v18 + 48) = v17;
    v19 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v31 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v20 = swift_task_alloc();
    v0[28] = v20;
    *v20 = v0;
    v20[1] = sub_F0718;

    return v31(0xD000000000000024, 0x800000000012CA70, v18);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();
    v23 = v0[24];
    v24 = v0[21];
    v25 = v0[18];
    v26 = v0[15];
    v27 = v0[12];
    v28 = v0[9];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_F0718(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v9 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v5 = sub_F0A5C;
  }

  else
  {
    v7 = v3[26];
    v6 = v3[27];

    v5 = sub_F083C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_F083C()
{
  (*(v0[20] + 56))(v0[9], 1, 1, v0[19]);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_F0900;
  v2 = v0[29];
  v3 = v0[18];
  v4 = v0[9];
  v5 = v0[7];

  return sub_F2BE4(v5, 12, v4, v3);
}

uint64_t sub_F0900()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 232);
  sub_5CA8(*(v2 + 72), &unk_162190, &unk_128500);

  if (v0)
  {
    v6 = sub_F0CAC;
  }

  else
  {
    v6 = sub_F0B8C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_F0A5C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v20 = v0[22];
  v21 = v0[24];
  v5 = v0[20];
  v6 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[16];
  v9 = v0[17];

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v21, v20);
  v11 = v0[30];
  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_F0B8C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 120);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_F0CAC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 256);
  v11 = *(v0 + 192);
  v12 = *(v0 + 168);
  v13 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 96);
  v16 = *(v0 + 72);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_F0DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_F0E94;

  return sub_EFC78(a1, a2, a3);
}

uint64_t sub_F0E94()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_F0FC8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_F0FC8()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_F1094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_F1144;

  return sub_F0088(a1, a2, a3);
}

uint64_t sub_F1144()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_F1278, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_F1278()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

unint64_t sub_F1348()
{
  result = qword_162918;
  if (!qword_162918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162918);
  }

  return result;
}

id sub_F139C()
{
  v1 = sub_C6CBC();
  if (v1)
  {
    v2 = sub_F2998(v1, 0);

    v3 = v2;
  }

  else
  {
    if (!sub_124B7C())
    {
      v4 = [objc_allocWithZone(v0) init];
      [v4 setLabel:0];
      [objc_opt_self() defaultDuration];
      sub_1255DC();
      [v4 setType:1];
      goto LABEL_4;
    }

    v7 = sub_F27A4();
    if (!v7)
    {

      return 0;
    }

    v3 = v7;
  }

  v4 = v3;
LABEL_4:
  sub_12577C();
  sub_CBEB0();
  sub_C6B1C();
  v5 = sub_12576C();
  [v4 setTargetingInfo:v5];

  return v4;
}

id sub_F14F0()
{
  if (sub_C5BD0())
  {
    v1 = [objc_allocWithZone(v0) init];
    UsoEntity_common_Timer.duration.getter();
    v3 = [objc_allocWithZone(NSNumber) initWithDouble:v2];
    [v1 setDuration:v3];

    sub_12432C();
    if (v4 && (sub_125BDC(), , v5 = objc_allocWithZone(INSpeakableString), v6 = sub_125B8C(), , v7 = [v5 initWithSpokenPhrase:v6], v6, v7))
    {
      v8 = [v7 spokenPhrase];

      if (!v8)
      {
        sub_125B9C();
        v8 = sub_125B8C();
      }
    }

    else
    {
      v8 = 0;
    }

    [v1 setLabel:v8];

    [v1 setState:UsoEntity_common_Timer.timerState.getter()];
    [v1 setType:UsoEntity_common_Timer.timerType.getter()];
  }

  else
  {
    v9 = [objc_allocWithZone(v0) init];
    v10 = objc_opt_self();
    v1 = v9;
    [v10 defaultDuration];
    v12 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
    [v1 setDuration:v12];

    [v1 setLabel:0];
    [v1 setState:0];
    [v1 setType:1];
  }

  sub_12577C();
  sub_CBEB0();
  sub_C6B1C();
  v13 = sub_12576C();
  [v1 setTargetingInfo:v13];

  return v1;
}

id sub_F17BC()
{
  v1 = v0;
  v2 = sub_1172B0();
  if (sub_C5BD0())
  {
    v3.super.super.isa = UsoEntity_common_Timer.isMultiple.getter().super.super.isa;
  }

  else
  {
    v3.super.super.isa = 0;
  }

  v4 = objc_allocWithZone(v1);
  v5 = v2;
  v6 = [v4 init];
  [v5 setShouldMatchAny:v3.super.super.isa];
  v7 = v5;
  [v6 setTargetTimer:v7];

  sub_12577C();
  v8 = v6;
  sub_CBEB0();
  sub_C6B1C();
  v9 = sub_12576C();
  [v8 setTargetingInfo:v9];

  return v8;
}

id sub_F18EC(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_12437C();
  sub_F2B08(v24, v22);
  if (v23)
  {
    sub_1245DC();
    if (swift_dynamicCast())
    {

      sub_12488C();
      if (v22[0])
      {
        sub_12432C();
        if (v5)
        {
          sub_125BDC();

          v6 = objc_allocWithZone(INSpeakableString);
          v7 = sub_125B8C();

          v8 = [v6 initWithSpokenPhrase:v7];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      sub_12488C();

      if (v22[0])
      {
        UsoEntity_common_Timer.duration.getter();
      }

      else
      {
        [objc_opt_self() defaultDuration];
      }

      v17 = sub_1172B0();
      if (a2 && (v18 = [a2 targetTimer]) != 0)
      {
        v19 = v18;
        sub_1257CC();
      }

      else
      {
        v19 = v17;
      }

      v9 = v19;
      isa = sub_125D5C().super.super.isa;
      v11 = [objc_allocWithZone(v3) init];
      [v11 setTargetTimer:v9];
      [v11 setToDuration:isa];
      [v11 setToLabel:v8];

LABEL_31:

      sub_12577C();
      v20 = v11;
      sub_CBEB0();
      sub_C6B1C();
      v21 = sub_12576C();
      [v20 setTargetingInfo:v21];

      sub_F2B78(v24);
      return v20;
    }
  }

  else
  {
    sub_F2B78(v22);
  }

  sub_F2B08(v24, v22);
  if (v23)
  {
    sub_1245EC();
    if (swift_dynamicCast())
    {

      v9 = sub_1172B0();
      if (!SiriTimer.isDefault()() || (isa = [a2 targetTimer]) == 0)
      {
        isa = v9;
      }

      [objc_opt_self() defaultDuration];
      v8 = sub_125D5C().super.super.isa;
      v11 = [objc_allocWithZone(v3) init];
      [v11 setTargetTimer:isa];
      [v11 setToDuration:v8];
      [v11 setToLabel:0];
      goto LABEL_31;
    }
  }

  else
  {
    sub_F2B78(v22);
  }

  if (qword_15EFC8 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_162920);
  v13 = sub_125AAC();
  v14 = sub_125DEC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "NLv4TranslationParse: Dialog act is not a resolvable INSetTimerAttributeIntent parse, cannot support input", v15, 2u);
  }

  else
  {
  }

  sub_F2B78(v24);
  return 0;
}

id sub_F1D90()
{
  v1 = v0;
  v2 = sub_1172B0();
  v3 = sub_CA148();
  if (v3)
  {
    v4 = v3;
    sub_1257EC();

    v5 = v2;
    v6 = sub_113084(v4);
    v7 = [objc_allocWithZone(v0) init];
    sub_8BAC();
    v8 = v7;
    isa = sub_125EEC(0).super.super.isa;
    [v5 setShouldMatchAny:isa];

    [v8 setTargetTimer:v5];
    v10 = v6;
    [v8 setToTimer:v10];

    v11 = v10;
  }

  else
  {
    if (sub_C5BD0())
    {
      v11 = UsoEntity_common_Timer.isMultiple.getter().super.super.isa;
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_allocWithZone(v1);
    v10 = v2;
    v8 = [v12 init];
    [(objc_class *)v10 setShouldMatchAny:v11];
    [v8 setTargetTimer:v10];
    [v8 setToTimer:0];
  }

  sub_12577C();
  v13 = v8;
  sub_CBEB0();
  sub_C6B1C();
  v14 = sub_12576C();
  [v13 setTargetingInfo:v14];

  return v13;
}

id sub_F1FAC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) init];
  v5 = v4;
  if (a2)
  {
    v6 = sub_125BEC();
  }

  else
  {
    v6 = 0;
  }

  [v4 setLabel:v6];

  sub_1255DC();
  [v4 setType:1];
  [v4 setTargetingInfo:0];

  return v4;
}

id sub_F2078(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = qword_15EF60;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent();
  sub_F24A0();
  sub_12428C();
  v6 = v12;
  if (v12)
  {
    sub_125BDC();

    v7 = objc_allocWithZone(INSpeakableString);
    v8 = sub_125B8C();

    v6 = [v7 initWithSpokenPhrase:v8];
  }

  [v5 setLabel:v6];

  sub_E3330();
  sub_1255DC();
  if (qword_15EF70 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (v11)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  [v5 setType:v9];
  [v5 setTargetingInfo:0];

  sub_97EC(a1);
  return v5;
}

id sub_F2258(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E113C();
  sub_E18C8();
  v5 = sub_125CFC();
  v6 = [objc_allocWithZone(v2) init];
  [v4 setShouldMatchAny:v5];
  [v6 setTargetTimer:v4];
  [v6 setToTimer:0];

  sub_97EC(a1);
  return v6;
}

id sub_F2310(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E113C();
  sub_E3E90();
  v5.super.super.isa = sub_125D5C().super.super.isa;
  if (qword_15EF68 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent();
  sub_F24A0();
  sub_12428C();
  v6 = v11;
  if (v11)
  {
    sub_125BDC();

    v7 = objc_allocWithZone(INSpeakableString);
    v8 = sub_125B8C();

    v6 = [v7 initWithSpokenPhrase:v8];
  }

  v9 = [objc_allocWithZone(v2) init];
  [v9 setTargetTimer:v4];
  [v9 setToDuration:v5.super.super.isa];
  [v9 setToLabel:v6];

  sub_97EC(a1);
  return v9;
}

unint64_t sub_F24A0()
{
  result = qword_15FFA0;
  if (!qword_15FFA0)
  {
    type metadata accessor for TimerNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15FFA0);
  }

  return result;
}

id sub_F24F8(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(v2) init];
  v5 = qword_15EF60;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent();
  sub_F24A0();
  sub_12428C();
  v7 = v16;
  if (v16)
  {
    sub_125BDC();

    v8 = objc_allocWithZone(INSpeakableString);
    v9 = sub_125B8C();

    v10 = [v8 initWithSpokenPhrase:v9];

    if (v10)
    {
      v7 = [v10 spokenPhrase];

      if (!v7)
      {
        sub_125B9C();
        v7 = sub_125B8C();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  [v6 setLabel:v7];

  sub_E3330();
  v12 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
  [v6 setDuration:v12];

  [v6 setState:0];
  if (qword_15EF70 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (v15)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [v6 setType:v13];

  sub_97EC(a1);
  return v6;
}

uint64_t sub_F2758()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162920);
  sub_5B30(v0, qword_162920);
  return sub_1257AC();
}

id sub_F27A4()
{
  v1 = v0;
  if ((sub_1242CC() & 1) != 0 && (v2 = sub_1242BC()) != 0 && (v3 = v2, [v2 doubleValue], v5 = v4, v3, objc_msgSend(objc_opt_self(), "minimumDuration"), v6 < v5))
  {
    v7 = [objc_allocWithZone(v1) init];
    sub_1242EC();
    if (v8)
    {
      v9 = sub_125BEC();
    }

    else
    {
      v9 = 0;
    }

    [v7 setLabel:v9];

    sub_1255DC();
    [v7 setType:1];
    [v7 setTargetingInfo:0];

    return v7;
  }

  else
  {
    if (qword_15EFC8 != -1)
    {
      swift_once();
    }

    v10 = sub_125ABC();
    sub_5B30(v10, qword_162920);
    v11 = sub_125AAC();
    v12 = sub_125DFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Timer domain received an alarm entity that it cannot handle. Rejecting parse.", v13, 2u);
    }

    return 0;
  }
}

id sub_F2998(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(v2) init];
  sub_12432C();
  if (v5)
  {
    sub_125BDC();

    v6 = objc_allocWithZone(INSpeakableString);
    v7 = sub_125B8C();

    v8 = [v6 initWithSpokenPhrase:v7];
  }

  else
  {
    v8 = 0;
  }

  [v4 setLabel:v8];

  if (a2)
  {
    if (sub_12430C())
    {
      sub_1243FC();
    }

    else
    {
      [objc_opt_self() defaultDuration];
    }
  }

  else
  {
    UsoEntity_common_Timer.duration.getter();
  }

  sub_1255DC();
  [v4 setType:UsoEntity_common_Timer.timerType.getter()];
  [v4 setTargetingInfo:0];

  return v4;
}

uint64_t sub_F2B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_161840, &qword_128110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F2B78(uint64_t a1)
{
  v2 = sub_5AE8(&unk_161840, &qword_128110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F2BE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 208) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  v6 = *(*(sub_5AE8(&unk_162190, &unk_128500) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_12392C();
  *(v5 + 96) = v7;
  v8 = *(v7 - 8);
  *(v5 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v10 = sub_1253AC();
  *(v5 + 120) = v10;
  v11 = *(v10 - 8);
  *(v5 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v13 = sub_12368C();
  *(v5 + 144) = v13;
  v14 = *(v13 - 8);
  *(v5 + 152) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_F2DA8, 0, 0);
}

uint64_t sub_F2DA8()
{
  v31 = v0;
  if (qword_15EFD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_125ABC();
  sub_5B30(v2, qword_162938);
  v3 = v1;
  v4 = sub_125AAC();
  v5 = sub_125DFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 144);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v8 catId];
    v11 = sub_125B9C();
    v13 = v12;

    v14 = sub_8530(v11, v13, &v30);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    sub_12362C();
    v15 = sub_125BAC();
    v17 = sub_8530(v15, v16, &v30);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_0, v4, v5, "#Response 2.0 dialog/snippet conversation space generation for catId=%s, dialogPhase=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v18 = [*(v0 + 80) dialog];
  sub_F3768();
  v19 = sub_125C6C();

  if (v19 >> 62)
  {
    result = sub_1260FC();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    v24 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_13;
  }

  result = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = sub_125FFC();
  }

  else
  {
    if (!*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v21 = *(v19 + 32);
  }

  v22 = v21;

  v23 = [v22 supportingPrint];

  v24 = sub_125B9C();
  v26 = v25;

LABEL_13:
  *(v0 + 176) = v26;
  v27 = swift_task_alloc();
  *(v0 + 184) = v27;
  *v27 = v0;
  v27[1] = sub_F30E8;
  v28 = *(v0 + 136);
  v29 = *(v0 + 208);

  return sub_656CC(v28, v29, v24, v26);
}

uint64_t sub_F30E8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_F3670;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_F3204;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_F3204()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  sub_12362C();
  sub_F37B4(v5, v4);
  v6 = *(v3 + 48);
  if (v6(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 112);
    sub_FFAE8(*(v0 + 208));
    if (v6(v7, 1, v8) != 1)
    {
      sub_F3824(*(v0 + 88));
    }
  }

  else
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
  }

  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 120);
  v13 = sub_12503C();
  *(v0 + 40) = v13;
  *(v0 + 48) = sub_2AF38();
  v14 = sub_23B4C((v0 + 16));
  (*(v11 + 16))(v14, v10, v12);
  (*(*(v13 - 8) + 104))(v14, enum case for SiriTimePluginModel.timerConfirmation(_:), v13);
  v15 = async function pointer to DialogExecutionResult.generateConversationOutput(dialogPhase:context:conversationModel:measure:sessionID:responseViewId:)[1];
  v16 = swift_task_alloc();
  *(v0 + 200) = v16;
  *v16 = v0;
  v16[1] = sub_F33F4;
  v17 = *(v0 + 160);
  v18 = *(v0 + 112);
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 56);

  return DialogExecutionResult.generateConversationOutput(dialogPhase:context:conversationModel:measure:sessionID:responseViewId:)(v21, v17, v18, v0 + 16, v19, 0, 0, 0);
}

uint64_t sub_F33F4()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 112);
  v7 = *(*v0 + 104);
  v8 = *(*v0 + 96);
  v10 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_5BB0((v1 + 16));

  return _swift_task_switch(sub_F35B8, 0, 0);
}

uint64_t sub_F35B8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[14];
  v4 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_F3670()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];
  v8 = v0[24];

  return v7();
}

uint64_t sub_F371C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162938);
  sub_5B30(v0, qword_162938);
  return sub_12578C();
}

unint64_t sub_F3768()
{
  result = qword_162950;
  if (!qword_162950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_162950);
  }

  return result;
}

uint64_t sub_F37B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_162190, &unk_128500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F3824(uint64_t a1)
{
  v2 = sub_5AE8(&unk_162190, &unk_128500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PauseTimerCATsSimple()
{
  result = qword_162958;
  if (!qword_162958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F3918(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_F3938, 0, 0);
}

uint64_t sub_F3938()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "pausedTimers");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FD8;
  v5 = v0[3];

  return v7(0xD000000000000020, 0x800000000012E3D0, v2);
}

uint64_t sub_F3A84(uint64_t a1, uint64_t a2)
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

uint64_t sub_F3C0C(uint64_t a1, uint64_t a2)
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

uint64_t sub_F3D34()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1629A8);
  sub_5B30(v0, qword_1629A8);
  return sub_1257AC();
}

uint64_t sub_F3D80()
{
  v0 = sub_124FDC();
  sub_5BFC(v0, qword_167850);
  v1 = sub_5B30(v0, qword_167850);
  v2 = enum case for SiriTimeEventSender.TaskType.createTimerIntent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_F3E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_12397C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_12392C();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_125ABC();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_124FFC();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = sub_12501C();
  v3[18] = v16;
  v17 = *(v16 - 8);
  v3[19] = v17;
  v18 = *(v17 + 64) + 15;
  v3[20] = swift_task_alloc();
  v19 = sub_1250BC();
  v3[21] = v19;
  v20 = *(v19 - 8);
  v3[22] = v20;
  v21 = *(v20 + 64) + 15;
  v3[23] = swift_task_alloc();
  v22 = sub_12368C();
  v3[24] = v22;
  v23 = *(v22 - 8);
  v3[25] = v23;
  v24 = *(v23 + 64) + 15;
  v3[26] = swift_task_alloc();
  v25 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v26 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v27 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v28 = sub_12370C();
  v3[30] = v28;
  v29 = *(v28 - 8);
  v3[31] = v29;
  v30 = *(v29 + 64) + 15;
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_F41F8, 0, 0);
}

uint64_t sub_F41F8()
{
  if (qword_15EFD8 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[12], qword_1629A8);
  v0[33] = v1;
  v34 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In UnsupportedCreateSleepTimerFlow execute()", v4, 2u);
  }

  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[30];

  (*(v5 + 104))(v6, enum case for ActivityType.failed(_:), v7);
  if (qword_15EFE0 != -1)
  {
    swift_once();
  }

  v8 = v0[31];
  v9 = v0[29];
  v11 = v0[27];
  v10 = v0[28];
  v35 = v0[32];
  v36 = v0[26];
  v13 = v0[22];
  v12 = v0[23];
  v37 = v0[30];
  v38 = v0[21];
  v14 = sub_124FDC();
  sub_5B30(v14, qword_167850);
  v15 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
  v16 = sub_12353C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  v18 = sub_124FEC();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = enum case for SiriTimeEventSender.ReasonDescription.sleepUnavailable(_:);
  v20 = sub_124FCC();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v11, v19, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  sub_124FBC();
  sub_5CA8(v11, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v10, &qword_15F6F0, &unk_128340);
  sub_5CA8(v9, &qword_15F6F8, &qword_1271D0);
  (*(v8 + 8))(v35, v37);
  sub_12361C();
  sub_1250AC();
  LOBYTE(v19) = sub_12509C();
  (*(v13 + 8))(v12, v38);
  if (v19)
  {
    v22 = v0[20];
    v23 = v0[14];
    v24 = v0[12];
    v25 = v0[13];
    (*(v0[16] + 104))(v0[17], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[15]);
    (*(v25 + 16))(v23, v34, v24);
    mach_absolute_time();
    sub_12502C();
    v26 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v39 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v27 = swift_task_alloc();
    v0[34] = v27;
    *v27 = v0;
    v27[1] = sub_F4730;
    v28 = v0[5];

    return v39(0xD00000000000001CLL, 0x800000000012CF00, _swiftEmptyArrayStorage);
  }

  else
  {
    v30 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
    v40 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
    v31 = swift_task_alloc();
    v0[38] = v31;
    *v31 = v0;
    v31[1] = sub_F4DE4;
    v32 = v0[8];
    v33 = v0[4];

    return v40(v32, 0xD000000000000027, 0x800000000012EF60, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_F4730(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v7 = sub_F4BA4;
  }

  else
  {
    *(v4 + 288) = a1;
    v7 = sub_F4858;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_F4858()
{
  v1 = v0[11];
  sub_12391C();
  v2 = async function pointer to PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)[1];
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_F4908;
  v4 = v0[36];
  v5 = v0[26];
  v6 = v0[20];
  v7 = v0[11];
  v8 = v0[3];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v8, v5, v7, v6);
}

uint64_t sub_F4908()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_F4A78, 0, 0);
}

uint64_t sub_F4A78()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[32];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[11];
  v16 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_F4BA4()
{
  v28 = v0;
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[35];
  v2 = v0[33];
  swift_errorRetain();
  v3 = sub_125AAC();
  v4 = sub_125DEC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v7 = sub_125BAC();
    v9 = sub_8530(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to execute DialogEngine: %s", v5, 0xCu);
    sub_5BB0(v6);
  }

  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  v13 = v0[3];
  sub_12383C();

  (*(v11 + 8))(v10, v12);
  v14 = v0[32];
  v15 = v0[28];
  v16 = v0[29];
  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[11];
  v26 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t sub_F4DE4()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_F50D0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[40] = v4;
    *v4 = v3;
    v4[1] = sub_F4F60;
    v5 = v3[26];
    v6 = v3[8];
    v7 = v3[3];

    return sub_30624(v7, 0, v5);
  }
}

uint64_t sub_F4F60()
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 328) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_F5404;
  }

  else
  {
    v6 = sub_F52F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_F50D0()
{
  v28 = v0;
  v1 = v0[39];
  v2 = v0[33];
  swift_errorRetain();
  v3 = sub_125AAC();
  v4 = sub_125DEC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v7 = sub_125BAC();
    v9 = sub_8530(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to execute DialogEngine: %s", v5, 0xCu);
    sub_5BB0(v6);
  }

  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  v13 = v0[3];
  sub_12383C();

  (*(v11 + 8))(v10, v12);
  v14 = v0[32];
  v15 = v0[28];
  v16 = v0[29];
  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[11];
  v26 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t sub_F52F8()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[11];
  v13 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_F5404()
{
  v28 = v0;
  v1 = v0[41];
  v2 = v0[33];
  swift_errorRetain();
  v3 = sub_125AAC();
  v4 = sub_125DEC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v7 = sub_125BAC();
    v9 = sub_8530(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to execute DialogEngine: %s", v5, 0xCu);
    sub_5BB0(v6);
  }

  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  v13 = v0[3];
  sub_12383C();

  (*(v11 + 8))(v10, v12);
  v14 = v0[32];
  v15 = v0[28];
  v16 = v0[29];
  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[11];
  v26 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t sub_F562C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_503C;

  return sub_F3E08(a1, v5, v4);
}

uint64_t type metadata accessor for PauseTimerCATs_Async()
{
  result = qword_1629C0;
  if (!qword_1629C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F5764(uint64_t a1, uint64_t a2)
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

uint64_t sub_F58F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_12372C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v9 = sub_8AD8(0xD00000000000001CLL, 0x800000000012EFD0), (v10 & 1) != 0) && (sub_8B50(*(a1 + 56) + 32 * v9, v22), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v20;
    v11 = v21;
    sub_E430(v20, v21);
    sub_12371C();
    if (qword_15EFE8 != -1)
    {
      swift_once();
    }

    v15 = sub_125ABC();
    sub_5B30(v15, qword_162A10);
    v16 = sub_125AAC();
    v17 = sub_125DFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Followup PluginAction available.", v18, 2u);
    }

    sub_E498(v12, v11);

    (*(v5 + 32))(a2, v8, v4);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

uint64_t sub_F5C0C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162A10);
  sub_5B30(v0, qword_162A10);
  return sub_1257AC();
}

uint64_t sub_F5C58(uint64_t *a1)
{
  sub_12550C();
  sub_12552C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_160690, &qword_128168);
  sub_1233AC();
  sub_5AE8(&qword_162450, &qword_12A830);
  sub_F5EE0();
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v6);
  sub_F5F44();
  sub_12330C();
  sub_12338C();
  sub_2F488(a1, v5);
  sub_F5F98();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_F5FEC();
  sub_12337C();
  sub_1233CC();
  sub_2F488(a1, v3);
  sub_F6040();
  sub_12332C();
  sub_12339C();
  sub_5BB0(a1);
  sub_F6094(v3);
  sub_F60E8(v4);
  sub_F613C(v5);
  return sub_F6190(v6);
}