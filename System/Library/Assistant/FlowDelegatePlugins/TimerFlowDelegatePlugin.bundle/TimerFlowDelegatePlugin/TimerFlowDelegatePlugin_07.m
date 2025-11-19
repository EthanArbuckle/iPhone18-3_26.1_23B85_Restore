uint64_t sub_C3B94()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 960);
  v3 = *(v0 + 944);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 888);
  v31 = *(v0 + 880);
  v33 = *(v0 + 904);
  v7 = *(v0 + 800);
  v8 = *(v0 + 784);
  v9 = *(v0 + 776);

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v3, v5);
  (*(v6 + 8))(v33, v31);
  v10 = *(v0 + 944);
  v11 = *(v0 + 936);
  v12 = *(v0 + 928);
  v13 = *(v0 + 904);
  v14 = *(v0 + 896);
  v15 = *(v0 + 872);
  v16 = *(v0 + 848);
  v17 = *(v0 + 824);
  v18 = *(v0 + 800);
  v19 = *(v0 + 792);
  v22 = *(v0 + 1224);
  v23 = *(v0 + 768);
  v24 = *(v0 + 744);
  v25 = *(v0 + 720);
  v26 = *(v0 + 696);
  v27 = *(v0 + 688);
  v28 = *(v0 + 680);
  v29 = *(v0 + 672);
  v30 = *(v0 + 648);
  v32 = *(v0 + 624);
  v34 = *(v0 + 608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_C3DCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1260DC();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&unk_15F170, &unk_126E00);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  sub_122EEC(0);
  sub_124E1C();
  v17 = sub_124E4C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = 1;
  v47 = v18 + 56;
  v19(v16, 0, 1, v17);
  TimerHandledOnWatchParameters = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  sub_22A1C(v16, a1 + *(TimerHandledOnWatchParameters + 28));
  v21 = a1[1];

  a1[1] = a4;
  v22 = *(a4 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
  if (v22)
  {
    v43 = v9;
    v44 = v22;
    sub_1260CC();
    v49 = v6;
    v50 = &off_1592B0;
    v23 = sub_23B4C(v48);
    v24 = v45;
    (*(v45 + 16))(v23, v9, v6);
    v42 = type metadata accessor for DefaultCircuitBreaker();
    v25 = swift_allocObject();
    v26 = v49;
    v27 = sub_23C74(v48, v49);
    v41 = &v41;
    v28 = *(*(v26 - 8) + 64);
    __chkstk_darwin(v27);
    v30 = v17;
    v31 = v14;
    v32 = v19;
    v33 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33);
    *(v25 + 56) = v6;
    *(v25 + 64) = &off_1592B0;
    v35 = sub_23B4C((v25 + 32));
    v36 = v33;
    v19 = v32;
    v14 = v31;
    v17 = v30;
    (*(v24 + 32))(v35, v36, v6);
    *(v25 + 72) = sub_1262EC();
    *(v25 + 80) = v37;
    *(v25 + 16) = xmmword_129E00;
    sub_5BB0(v48);
    (*(v24 + 8))(v43, v6);
    v49 = v42;
    v50 = &off_1592C0;
    v48[0] = v25;
    sub_A983C(v44, v48, v14);
    sub_5BB0(v48);
    v20 = 0;
  }

  v19(v14, v20, 1, v17);
  sub_22A1C(v14, a1 + *(TimerHandledOnWatchParameters + 24));
  sub_124DEC();
  sub_5AE8(&unk_161EB0, &qword_129CB0);
  sub_123AAC();
  v38 = sub_124DDC();
  v39 = *a1;

  *a1 = v38;
  return result;
}

uint64_t sub_C41E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5AE8(&unk_162190, &unk_128500);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;

  sub_123B2C();
  v9 = sub_12392C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a4, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  return sub_123B1C();
}

void sub_C4304(void **a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_122F6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if ([v10 state] == &dword_0 + 3)
  {
    sub_5AE8(&unk_161EB0, &qword_129CB0);
    v11 = sub_123A9C();
    v12 = [v11 createdTimer];

    if (!v12 || (v13 = [v12 identifier], v12, !v13))
    {
      v21 = *a3 + 1;
      if (!__OFADD__(*a3, 1))
      {
LABEL_9:
        *a3 = v21;
        return;
      }

      goto LABEL_15;
    }

    v14 = sub_125B9C();
    v24 = v15;

    v16 = [v10 timerID];
    if (!v16)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v17 = v16;
    sub_122F4C();

    v18 = sub_122F3C();
    v20 = v19;
    (*(v6 + 8))(v9, v5);
    if (v18 == v14 && v20 == v24)
    {

      return;
    }

    v22 = sub_1261BC();

    if ((v22 & 1) == 0)
    {
      v21 = *a3 + 1;
      if (!__OFADD__(*a3, 1))
      {
        goto LABEL_9;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }
}

void sub_C4534(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_125F6C();
    sub_C5AC0();
    sub_C5B0C(&qword_162018, sub_C5AC0);
    sub_125D6C();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_125F8C())
        {
          break;
        }

        sub_C5AC0();
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_C5B54();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_C4764(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_C4804;

  return sub_BDD50(a1, a2);
}

uint64_t sub_C4804()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_C4938, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_C4938()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_C4A04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_C4AA4;

  return sub_BDD50(a1, a2);
}

uint64_t sub_C4AA4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_C4BD8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_C4BD8()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

unint64_t sub_C4CA8()
{
  result = qword_161FF8;
  if (!qword_161FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161FF8);
  }

  return result;
}

uint64_t sub_C4D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1254DC();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for TimeSuggestionExecutionParameters();
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = *(*(sub_5AE8(&qword_162008, &qword_129F20) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_12532C();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_1250FC();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = sub_1250BC();
  v3[18] = v16;
  v17 = *(v16 - 8);
  v3[19] = v17;
  v18 = *(v17 + 64) + 15;
  v3[20] = swift_task_alloc();
  v19 = *(*(sub_5AE8(&qword_15F960, &qword_12BAF0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v20 = sub_122F6C();
  v3[22] = v20;
  v21 = *(v20 - 8);
  v3[23] = v21;
  v22 = *(v21 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_C4FE8, 0, 0);
}

uint64_t sub_C4FE8()
{
  v33 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[3];
  v5 = v0[4];
  sub_122F2C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_5CA8(v0[21], &qword_15F960, &qword_12BAF0);
    if (qword_15EF18 != -1)
    {
      swift_once();
    }

    v6 = v0[4];
    v7 = sub_125ABC();
    sub_5B30(v7, qword_161FE0);

    v8 = sub_125AAC();
    v9 = sub_125DEC();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[3];
      v10 = v0[4];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_8530(v11, v10, &v32);
      _os_log_impl(&dword_0, v8, v9, "CreateTimer - unable to parse %s to a UUID", v12, 0xCu);
      sub_5BB0(v13);
    }

    goto LABEL_12;
  }

  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[18];
  (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
  sub_1250AC();
  v17 = sub_12507C();
  (*(v15 + 8))(v14, v16);
  if (!v17)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
LABEL_12:
    v22 = v0[24];
    v23 = v0[20];
    v24 = v0[21];
    v25 = v0[17];
    v26 = v0[14];
    v28 = v0[10];
    v27 = v0[11];
    v29 = v0[8];

    v30 = v0[1];

    return v30();
  }

  v18 = v0[17];
  v0[2] = 0;
  sub_1254EC();
  sub_1250CC();
  v19 = async function pointer to SiriTimeDeviceContextProvider.fetchTimerContexts()[1];
  v20 = swift_task_alloc();
  v0[25] = v20;
  *v20 = v0;
  v20[1] = sub_C530C;
  v21 = v0[17];

  return SiriTimeDeviceContextProvider.fetchTimerContexts()();
}

uint64_t sub_C530C(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 208) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_C546C, 0, 0);
}

uint64_t sub_C546C()
{
  v1 = v0[26];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[13];
    v4 = *(v3 + 16);
    v3 += 16;
    v34 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v33 = *(v3 + 56);
    v6 = (v3 - 8);
    do
    {
      v7 = v0[14];
      v8 = v0[12];
      v9 = v0[5];
      v34(v7, v5, v8);
      v10 = sub_12531C();
      v11 = swift_task_alloc();
      *(v11 + 16) = v9;
      *(v11 + 24) = v0 + 2;
      sub_C4534(sub_C5A44, v11, v10);

      (*v6)(v7, v8);
      v5 += v33;
      --v2;
    }

    while (v2);
    v12 = v0[26];
  }

  v36 = AFDeviceSupportsEchoCancellation();
  v13 = [objc_opt_self() sharedPreferences];
  v35 = [v13 deviceUsesCompactVoiceTrigger];

  sub_124C7C();
  if (sub_124C5C())
  {
    v14 = v0[11];
    sub_124C3C();

    sub_1254FC();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v0[10];
  v17 = v0[11];
  v19 = v0[8];
  v18 = v0[9];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];
  v23 = sub_124CCC();
  (*(*(v23 - 8) + 56))(v17, v15, 1, v23);
  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v24 = sub_123ABC();
  sub_1255CC();
  v26 = v25;

  v27 = v0[2];
  sub_E344(v17, v16 + *(v18 + 28), &qword_162008, &qword_129F20);
  *v16 = v26;
  *(v16 + 8) = v27;
  *(v16 + 16) = v36;
  *(v16 + *(v18 + 32)) = v35;
  v28 = sub_DF600();
  v0[27] = v28;
  sub_C5A60(v16, type metadata accessor for TimeSuggestionExecutionParameters);
  *v19 = sub_123ABC();
  (*(v20 + 104))(v19, enum case for SiriSuggestions.Intent.inIntent(_:), v21);
  v29 = swift_task_alloc();
  v0[28] = v29;
  *v29 = v0;
  v29[1] = sub_C57D4;
  v30 = v0[24];
  v31 = v0[8];

  return sub_11C83C(v30, v31, v28);
}

uint64_t sub_C57D4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_C5948, 0, 0);
}

uint64_t sub_C5948()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_5CA8(v0[11], &qword_162008, &qword_129F20);
  (*(v2 + 8))(v1, v3);
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_C5A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_C5AC0()
{
  result = qword_162010;
  if (!qword_162010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_162010);
  }

  return result;
}

uint64_t sub_C5B0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C5B5C()
{

  return sub_C1E38();
}

uint64_t sub_C5BD0()
{
  v0 = sub_C69B0();
  result = 0;
  switch(v0)
  {
    case 1:
    case 3:
    case 4:
    case 9:
    case 15:
    case 16:
    case 17:
    case 18:
      return result;
    case 2:
      sub_12437C();
      if (v19)
      {
        sub_12455C();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v9 = sub_125ABC();
      sub_5B30(v9, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_89;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: timer entity not found on deleteTimerTask.";
      goto LABEL_88;
    case 5:
      sub_12437C();
      if (v19)
      {
        sub_1244AC();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v12 = sub_125ABC();
      sub_5B30(v12, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_89;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: timer entity not found on pauseTimerTask.";
      goto LABEL_88;
    case 6:
      sub_12437C();
      if (v19)
      {
        sub_1245FC();
        if (swift_dynamicCast())
        {

          sub_12486C();
          if (v17)
          {

            return v17;
          }

          sub_12485C();
          goto LABEL_37;
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v7 = sub_125ABC();
      sub_5B30(v7, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Parse entity: timer entity not found on requestTimerTask.";
        goto LABEL_88;
      }

      goto LABEL_89;
    case 7:
      sub_12437C();
      if (v19)
      {
        sub_1244CC();
        if (swift_dynamicCast())
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v8 = sub_125ABC();
      sub_5B30(v8, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_89;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: timer entity not found on resetTimerTask.";
      goto LABEL_88;
    case 8:
      sub_12437C();
      if (v19)
      {
        sub_1245BC();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v11 = sub_125ABC();
      sub_5B30(v11, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_89;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: timer entity not found on resumeTimerTask.";
      goto LABEL_88;
    case 10:
      sub_12437C();
      if (v19)
      {
        sub_12445C();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v15 = sub_125ABC();
      sub_5B30(v15, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_89;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: timer entity not found on stopTimerTask.";
      goto LABEL_88;
    case 11:
      sub_12437C();
      if (v19)
      {
        sub_12472C();
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v10 = sub_125ABC();
      sub_5B30(v10, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_89;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: timer entity not found on summariseTimerTask.";
      goto LABEL_88;
    case 12:
      sub_12437C();
      if (v19)
      {
        sub_1245DC();
        if (swift_dynamicCast())
        {
LABEL_36:

          sub_12489C();
          goto LABEL_37;
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v16 = sub_125ABC();
      sub_5B30(v16, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_89;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: timer entity not found on updateTimerTask.";
      goto LABEL_88;
    case 13:
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v2 = sub_125ABC();
      sub_5B30(v2, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_89;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse task with unknown verb. Returning nil entity";
      goto LABEL_88;
    case 14:
      sub_12437C();
      if (v19)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {

          sub_123F3C();
          goto LABEL_37;
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v14 = sub_125ABC();
      sub_5B30(v14, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_89;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: timer entity not found on noVerbTimerTask.";
      goto LABEL_88;
    default:
      sub_12437C();
      if (v19)
      {
        sub_124A5C();
        if (swift_dynamicCast())
        {
LABEL_33:

          sub_12450C();
LABEL_37:

          return v18[0];
        }
      }

      else
      {
        sub_5CA8(v18, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v13 = sub_125ABC();
      sub_5B30(v13, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Parse entity: timer entity not found on checkExistenceTimerTask.";
LABEL_88:
        _os_log_impl(&dword_0, v3, v4, v6, v5, 2u);
      }

LABEL_89:

      return 0;
  }
}

uint64_t sub_C66F0()
{
  sub_12437C();
  sub_E344(v11, v9, &unk_161840, &qword_128110);
  if (v10)
  {
    sub_1246BC();
    if (swift_dynamicCast())
    {
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v0 = sub_125ABC();
      sub_5B30(v0, qword_162020);
      v1 = sub_125AAC();
      v2 = sub_125DFC();
      if (!os_log_type_enabled(v1, v2))
      {
        goto LABEL_15;
      }

      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "TimerFlowDelegatePlugin found UsoTask_stop_common_MediaItem.trigger";
LABEL_14:
      _os_log_impl(&dword_0, v1, v2, v4, v3, 2u);

LABEL_15:

      v6 = sub_12491C();

      sub_5CA8(v11, &unk_161840, &qword_128110);
      return v6;
    }
  }

  else
  {
    sub_5CA8(v9, &unk_161840, &qword_128110);
  }

  sub_E344(v11, v9, &unk_161840, &qword_128110);
  if (v10)
  {
    sub_12446C();
    if (swift_dynamicCast())
    {
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v5 = sub_125ABC();
      sub_5B30(v5, qword_162020);
      v1 = sub_125AAC();
      v2 = sub_125DFC();
      if (!os_log_type_enabled(v1, v2))
      {
        goto LABEL_15;
      }

      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "TimerFlowDelegatePlugin found UsoTask_stop_uso_NoEntity.trigger";
      goto LABEL_14;
    }

    v8 = v11;
  }

  else
  {
    sub_5CA8(v11, &unk_161840, &qword_128110);
    v8 = v9;
  }

  sub_5CA8(v8, &unk_161840, &qword_128110);
  return 0;
}

uint64_t sub_C69B0()
{
  sub_124B8C();
  result = sub_B66D0();
  if (result == 19)
  {
    if (qword_15EF20 != -1)
    {
      swift_once();
    }

    v1 = sub_125ABC();
    sub_5B30(v1, qword_162020);

    v2 = sub_125AAC();
    v3 = sub_125DEC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      v6 = sub_124B8C();
      v8 = sub_8530(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_0, v2, v3, "Unexpected timer verb: %s", v4, 0xCu);
      sub_5BB0(v5);
    }

    return 13;
  }

  return result;
}

uint64_t sub_C6BD8()
{
  sub_12437C();
  if (!v4)
  {
    goto LABEL_6;
  }

  sub_E344(v3, v2, &unk_161840, &qword_128110);
  sub_1246BC();
  if (!swift_dynamicCast())
  {
    sub_12446C();
    if (!swift_dynamicCast())
    {
      sub_5BB0(v2);
LABEL_6:
      v0 = 0;
      goto LABEL_7;
    }
  }

  sub_5BB0(v2);
  v0 = 1;
LABEL_7:
  sub_5CA8(v3, &unk_161840, &qword_128110);
  return v0;
}

uint64_t sub_C6CBC()
{
  v0 = sub_5AE8(&qword_162038, &qword_129F28);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v129 = v123 - v2;
  v3 = sub_123E4C();
  v130 = *(v3 - 8);
  v131 = v3;
  v4 = *(v130 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v123 - v8;
  v10 = sub_12441C();
  v127 = *(v10 - 8);
  v128 = v10;
  v11 = *(v127 + 64);
  __chkstk_darwin(v10);
  v13 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_12442C();
  v132 = *(v14 - 8);
  v15 = *(v132 + 64);
  __chkstk_darwin(v14);
  v17 = v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_123F5C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  switch(sub_C69B0())
  {
    case 1u:
      sub_12437C();
      if (v135)
      {
        sub_12454C();
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v112 = sub_125ABC();
      sub_5B30(v112, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on createTimerTask.";
      goto LABEL_145;
    case 2u:
      sub_12437C();
      if (v135)
      {
        sub_12455C();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v114 = sub_125ABC();
      sub_5B30(v114, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on deleteTimerTask.";
      goto LABEL_145;
    case 3u:
      if (!MSVDeviceIsAppleTV())
      {
        return 0;
      }

      sub_12437C();
      if (!v135)
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
LABEL_136:
        if (qword_15EF20 != -1)
        {
          swift_once();
        }

        v120 = sub_125ABC();
        sub_5B30(v120, qword_162020);
        v104 = sub_125AAC();
        v105 = sub_125DFC();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          v107 = "Parse entity: disable common setting entity not found on disable common setting task.";
LABEL_145:
          _os_log_impl(&dword_0, v104, v105, v107, v106, 2u);
        }

LABEL_146:

        return 0;
      }

      sub_12471C();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_136;
      }

      v24 = v133;
      v25 = sub_1249AC();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v126 = sub_12499C();
      v28 = sub_12466C();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v31 = sub_12465C();
      v32 = sub_123FFC();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      sub_123FEC();
      (*(v19 + 104))(v22, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v18);
      sub_123FDC();
      (*(v19 + 8))(v22, v18);
      v35 = v31;

      sub_12461C();

      v36 = sub_12494C();

      if (!v36)
      {
        goto LABEL_151;
      }

      v37 = sub_12467C();

      if (!v37)
      {
        goto LABEL_151;
      }

      v38 = sub_1246DC();

      if (!v38)
      {
        goto LABEL_151;
      }

      v39 = sub_1243BC();

      if (!v39)
      {
        goto LABEL_151;
      }

      sub_1243FC();
      v41 = v40;
      v42 = v40;

      v43 = sub_12481C();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      v46 = sub_12480C();
      v47 = v132;
      (*(v132 + 104))(v17, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v14);
      v125 = v46;
      sub_1247FC();
      (*(v47 + 8))(v17, v14);
      v48 = sub_12476C();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      sub_12475C();
      if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      v132 = v24;
      v124 = v35;
      if (fabs(v41) >= 9.22337204e18)
      {
LABEL_162:
        __break(1u);
        JUMPOUT(0xC88BCLL);
      }

      sub_12474C();
      v51 = sub_124B3C();
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      sub_124B2C();

      sub_124B0C();

      sub_124B1C();

      v54 = sub_1247EC();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      swift_allocObject();
      sub_1247DC();
      v58 = v127;
      v57 = v128;
      (*(v127 + 104))(v13, enum case for UsoEntity_common_Duration.DefinedValues.common_Duration_TotalDuration(_:), v128);
      sub_1247CC();
      (*(v58 + 8))(v13, v57);

      sub_1247BC();

      sub_12463C();

      sub_12473C();
      sub_124BAC();
      v59 = sub_12422C();
      v60 = v129;
      (*(*(v59 - 8) + 56))(v129, 1, 1, v59);

      sub_C9C60(v61, v60, v9);

      sub_5CA8(v60, &qword_162038, &qword_129F28);
      sub_123DCC();
      sub_12437C();

      if (!v135)
      {
        (*(v130 + 8))(v9, v131);

LABEL_155:

        sub_5CA8(v134, &unk_161840, &qword_128110);
        return 0;
      }

      sub_12454C();
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*(v130 + 8))(v9, v131);

LABEL_157:

        goto LABEL_158;
      }

      sub_12436C();

      (*(v130 + 8))(v9, v131);
      return v134[0];
    case 4u:
      if (!MSVDeviceIsAppleTV())
      {
        return 0;
      }

      sub_12437C();
      if (v135)
      {
        sub_12469C();
        if (swift_dynamicCast())
        {
          v126 = v133;
          v62 = sub_1249AC();
          v63 = *(v62 + 48);
          v64 = *(v62 + 52);
          swift_allocObject();
          v124 = sub_12499C();
          v65 = sub_12466C();
          v66 = *(v65 + 48);
          v67 = *(v65 + 52);
          swift_allocObject();
          v68 = sub_12465C();
          v69 = sub_123FFC();
          v70 = *(v69 + 48);
          v71 = *(v69 + 52);
          swift_allocObject();
          v72 = sub_123FEC();
          (*(v19 + 104))(v22, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v18);
          sub_123FDC();
          (*(v19 + 8))(v22, v18);

          v123[1] = v68;
          sub_12461C();
          v125 = v72;

          v73 = sub_12494C();

          if (v73)
          {
            v74 = sub_12467C();

            if (v74)
            {
              v75 = sub_1246EC();

              if (v75)
              {
                goto LABEL_55;
              }
            }
          }

          if (sub_12494C())
          {
            v76 = sub_12467C();

            if (v76)
            {
              v77 = sub_1246CC();

              if (v77)
              {
                v78 = sub_1243BC();

                if (v78)
                {
                  goto LABEL_55;
                }
              }
            }
          }

          if (sub_12494C())
          {
            v79 = sub_12468C();

            if (v79)
            {
              v80 = sub_1243BC();

              if (v80)
              {
LABEL_55:
                sub_1243FC();
                v82 = v81;
                v83 = v81;

                v84 = sub_12481C();
                v85 = *(v84 + 48);
                v86 = *(v84 + 52);
                swift_allocObject();
                v87 = sub_12480C();
                v88 = v132;
                (*(v132 + 104))(v17, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v14);
                sub_1247FC();
                (*(v88 + 8))(v17, v14);
                v89 = sub_12476C();
                v90 = *(v89 + 48);
                v91 = *(v89 + 52);
                swift_allocObject();
                sub_12475C();
                if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  __break(1u);
                }

                else
                {
                  v132 = v87;
                  if (fabs(v82) < 9.22337204e18)
                  {
                    sub_12474C();
                    v92 = sub_124B3C();
                    v93 = *(v92 + 48);
                    v94 = *(v92 + 52);
                    swift_allocObject();
                    sub_124B2C();

                    sub_124B0C();

                    sub_124B1C();

                    v95 = sub_1247EC();
                    v96 = *(v95 + 48);
                    v97 = *(v95 + 52);
                    swift_allocObject();
                    sub_1247DC();
                    v99 = v127;
                    v98 = v128;
                    (*(v127 + 104))(v13, enum case for UsoEntity_common_Duration.DefinedValues.common_Duration_TotalDuration(_:), v128);
                    sub_1247CC();
                    (*(v99 + 8))(v13, v98);

                    sub_1247BC();

                    sub_12463C();

                    sub_12473C();
                    sub_124BAC();
                    v100 = sub_12422C();
                    v101 = v129;
                    (*(*(v100 - 8) + 56))(v129, 1, 1, v100);

                    sub_C9C60(v102, v101, v7);

                    sub_5CA8(v101, &qword_162038, &qword_129F28);
                    sub_123DCC();
                    sub_12437C();

                    if (v135)
                    {
                      sub_12454C();
                      if (swift_dynamicCast())
                      {

                        sub_12436C();

                        (*(v130 + 8))(v7, v131);
                        return v134[0];
                      }

                      (*(v130 + 8))(v7, v131);

                      goto LABEL_157;
                    }

                    (*(v130 + 8))(v7, v131);

                    goto LABEL_155;
                  }
                }

                __break(1u);
                goto LABEL_161;
              }
            }
          }

LABEL_151:

LABEL_158:

          return 0;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v121 = sub_125ABC();
      sub_5B30(v121, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: enable common setting entity not found on enable common setting task.";
      goto LABEL_145;
    case 5u:
      sub_12437C();
      if (v135)
      {
        sub_1244AC();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v110 = sub_125ABC();
      sub_5B30(v110, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on pauseTimerTask.";
      goto LABEL_145;
    case 6u:
      sub_12437C();
      if (v135)
      {
        sub_1245FC();
        if (swift_dynamicCast())
        {

          sub_12486C();
          v23 = v133;
          if (v133)
          {

            return v23;
          }

          sub_12485C();
          goto LABEL_74;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v115 = sub_125ABC();
      sub_5B30(v115, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        v107 = "Parse entity: timer entity not found on requestTimerTask.";
        goto LABEL_145;
      }

      goto LABEL_146;
    case 7u:
      sub_12437C();
      if (v135)
      {
        sub_1244CC();
        if (swift_dynamicCast())
        {
          goto LABEL_73;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v108 = sub_125ABC();
      sub_5B30(v108, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on resetTimerTask.";
      goto LABEL_145;
    case 8u:
      sub_12437C();
      if (v135)
      {
        sub_1245BC();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v109 = sub_125ABC();
      sub_5B30(v109, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on resumeTimerTask.";
      goto LABEL_145;
    case 9u:
      sub_12437C();
      if (v135)
      {
        sub_1244DC();
        if (swift_dynamicCast())
        {
LABEL_34:

          sub_12436C();
          goto LABEL_74;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v113 = sub_125ABC();
      sub_5B30(v113, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on startTimerTask.";
      goto LABEL_145;
    case 0xAu:
      sub_12437C();
      if (v135)
      {
        sub_12445C();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v118 = sub_125ABC();
      sub_5B30(v118, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on stopTimerTask.";
      goto LABEL_145;
    case 0xBu:
      sub_12437C();
      if (v135)
      {
        sub_12472C();
        if (swift_dynamicCast())
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v111 = sub_125ABC();
      sub_5B30(v111, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on summariseTimerTask.";
      goto LABEL_145;
    case 0xCu:
      sub_12437C();
      if (v135)
      {
        sub_1245DC();
        if (swift_dynamicCast())
        {
LABEL_73:

          sub_12489C();
          goto LABEL_74;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v119 = sub_125ABC();
      sub_5B30(v119, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on updateTimerTask.";
      goto LABEL_145;
    case 0xDu:
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v103 = sub_125ABC();
      sub_5B30(v103, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DEC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: failed to parse task with unknown verb. Returning nil entity";
      goto LABEL_145;
    case 0xEu:
      sub_12437C();
      if (v135)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {

          sub_123F3C();
          goto LABEL_74;
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v117 = sub_125ABC();
      sub_5B30(v117, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_146;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Parse entity: timer entity not found on noVerbTimerTask.";
      goto LABEL_145;
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
      return v23;
    default:
      sub_12437C();
      if (v135)
      {
        sub_124A5C();
        if (swift_dynamicCast())
        {
LABEL_70:

          sub_12450C();
LABEL_74:

          return v134[0];
        }
      }

      else
      {
        sub_5CA8(v134, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v116 = sub_125ABC();
      sub_5B30(v116, qword_162020);
      v104 = sub_125AAC();
      v105 = sub_125DFC();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        v107 = "Parse entity: timer entity not found on checkExistenceTimerTask.";
        goto LABEL_145;
      }

      goto LABEL_146;
  }
}

uint64_t sub_C8908()
{
  v0 = sub_12452C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_5AE8(&qword_160CF8, &qword_1286E0);
  v5 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v7 = &v110 - v6;
  v8 = sub_5AE8(&qword_160D00, &qword_1286E8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v110 - v14;
  __chkstk_darwin(v13);
  v119 = &v110 - v16;
  v17 = sub_123F9C();
  v142 = *(v17 - 8);
  v143 = v17;
  v18 = *(v142 + 64);
  __chkstk_darwin(v17);
  v123 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_5AE8(&qword_162050, &qword_129F70);
  v20 = *(*(v140 - 8) + 64);
  v21 = __chkstk_darwin(v140);
  v121 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v110 - v23;
  v25 = sub_5AE8(&qword_162058, &qword_129F78);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v122 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v128 = &v110 - v30;
  v31 = __chkstk_darwin(v29);
  v130 = &v110 - v32;
  v33 = __chkstk_darwin(v31);
  v126 = &v110 - v34;
  v35 = __chkstk_darwin(v33);
  v139 = &v110 - v36;
  __chkstk_darwin(v35);
  v125 = &v110 - v37;
  sub_12437C();
  if (!v145[3])
  {
LABEL_31:
    sub_5CA8(v145, &unk_161840, &qword_128110);
LABEL_32:
    if (qword_15EF20 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_33;
  }

  sub_1246AC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v111 = v12;
  v38 = v144;
  if (qword_15EF20 != -1)
  {
    swift_once();
  }

  v116 = v1;
  v39 = sub_125ABC();
  v114 = sub_5B30(v39, qword_162020);
  v40 = sub_125AAC();
  v41 = sub_125DFC();
  v42 = os_log_type_enabled(v40, v41);
  v115 = v15;
  if (v42)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v40, v41, "Searching for room confirmation in UsoTask_noVerb_common_Setting", v43, 2u);
  }

  v112 = v7;
  v113 = v0;

  v44 = sub_123F2C();
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = &_swiftEmptyArrayStorage;
  }

  v117 = v38;
  v110 = v4;
  if (v45 >> 62)
  {
    v46 = sub_1260FC();
  }

  else
  {
    v46 = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8));
  }

  v47 = v125;
  if (!v46)
  {
LABEL_56:

    sub_123F3C();

    if (v145[0] && (v86 = sub_12420C(), , v86))
    {
      v87 = v119;
      sub_12451C();

      v88 = v113;
      v89 = v112;
      v90 = v116;
    }

    else
    {
      v90 = v116;
      v87 = v119;
      v88 = v113;
      (*(v116 + 56))(v119, 1, 1, v113);
      v89 = v112;
    }

    v91 = v118;
    v92 = v115;
    (*(v90 + 104))(v115, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v88);
    (*(v90 + 56))(v92, 0, 1, v88);
    v93 = *(v91 + 48);
    sub_E344(v87, v89, &qword_160D00, &qword_1286E8);
    sub_E344(v92, v89 + v93, &qword_160D00, &qword_1286E8);
    v94 = *(v90 + 48);
    if (v94(v89, 1, v88) == 1)
    {
      sub_5CA8(v92, &qword_160D00, &qword_1286E8);
      sub_5CA8(v87, &qword_160D00, &qword_1286E8);
      if (v94(v89 + v93, 1, v88) == 1)
      {
        sub_5CA8(v89, &qword_160D00, &qword_1286E8);
        goto LABEL_72;
      }
    }

    else
    {
      v95 = v111;
      sub_E344(v89, v111, &qword_160D00, &qword_1286E8);
      if (v94(v89 + v93, 1, v88) != 1)
      {
        v99 = v116;
        v100 = v89 + v93;
        v101 = v110;
        (*(v116 + 32))(v110, v100, v88);
        sub_CE020(&qword_160D08, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues);
        v102 = sub_125B7C();
        v103 = *(v99 + 8);
        v103(v101, v88);
        sub_5CA8(v115, &qword_160D00, &qword_1286E8);
        sub_5CA8(v87, &qword_160D00, &qword_1286E8);
        v103(v95, v88);
        sub_5CA8(v89, &qword_160D00, &qword_1286E8);
        if (v102)
        {
LABEL_72:
          v104 = sub_125AAC();
          v105 = sub_125DFC();
          if (os_log_type_enabled(v104, v105))
          {
            v67 = 2;
            v106 = swift_slowAlloc();
            *v106 = 0;
            _os_log_impl(&dword_0, v104, v105, "Found .all", v106, 2u);
          }

          else
          {

            return 2;
          }

          return v67;
        }

LABEL_66:

        return 3;
      }

      sub_5CA8(v115, &qword_160D00, &qword_1286E8);
      sub_5CA8(v87, &qword_160D00, &qword_1286E8);
      (*(v116 + 8))(v95, v88);
    }

    sub_5CA8(v89, &qword_160CF8, &qword_1286E0);
    goto LABEL_66;
  }

  v48 = 0;
  v137 = v45 & 0xFFFFFFFFFFFFFF8;
  v138 = v45 & 0xC000000000000001;
  v135 = (v142 + 56);
  v127 = enum case for UsoEntity_common_UserEntity.DefinedValues.common_UserEntity_Everywhere(_:);
  v134 = (v142 + 104);
  v129 = (v142 + 48);
  v120 = (v142 + 32);
  v124 = (v142 + 8);
  v132 = v46;
  v136 = v45;
  do
  {
    if (v138)
    {
      v51 = sub_125FFC();
      v50 = v139;
      v52 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      v50 = v139;
      if (v48 >= *(v137 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_once();
LABEL_33:
        v63 = sub_125ABC();
        sub_5B30(v63, qword_162020);
        v64 = sub_125AAC();
        v65 = sub_125DFC();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_0, v64, v65, "No UsoTask_noVerb_common_Setting found when searching for room confirmation", v66, 2u);
        }

        return 3;
      }

      v51 = *(v45 + 8 * v48 + 32);

      v52 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
        goto LABEL_30;
      }
    }

    v141 = v52;
    sub_1241FC();
    v142 = v51;
    if (v145[0])
    {
      sub_123F8C();

      v53 = v135;
    }

    else
    {
      v53 = v135;
      (*v135)(v47, 1, 1, v143);
    }

    v54 = v143;
    v131 = *v134;
    v131(v50, v127, v143);
    v133 = *v53;
    v133(v50, 0, 1, v54);
    v55 = *(v140 + 48);
    sub_E344(v47, v24, &qword_162058, &qword_129F78);
    sub_E344(v50, &v24[v55], &qword_162058, &qword_129F78);
    v56 = v50;
    v57 = *v129;
    if ((*v129)(v24, 1, v54) == 1)
    {

      sub_5CA8(v56, &qword_162058, &qword_129F78);
      sub_5CA8(v47, &qword_162058, &qword_129F78);
      if (v57(&v24[v55], 1, v54) == 1)
      {
        sub_5CA8(v24, &qword_162058, &qword_129F78);
LABEL_68:

        v96 = sub_125AAC();
        v97 = sub_125DFC();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_0, v96, v97, "Found .everywhere", v98, 2u);
        }

        return 0;
      }

      goto LABEL_15;
    }

    v58 = v126;
    sub_E344(v24, v126, &qword_162058, &qword_129F78);
    if (v57(&v24[v55], 1, v54) == 1)
    {

      sub_5CA8(v139, &qword_162058, &qword_129F78);
      v47 = v125;
      sub_5CA8(v125, &qword_162058, &qword_129F78);
      (*v124)(v58, v143);
LABEL_15:
      sub_5CA8(v24, &qword_162050, &qword_129F70);
      goto LABEL_16;
    }

    v59 = v123;
    v60 = v143;
    (*v120)(v123, &v24[v55], v143);
    sub_CE020(&qword_162060, &type metadata accessor for UsoEntity_common_UserEntity.DefinedValues);
    v61 = sub_125B7C();

    v62 = *v124;
    (*v124)(v59, v60);
    sub_5CA8(v139, &qword_162058, &qword_129F78);
    v47 = v125;
    sub_5CA8(v125, &qword_162058, &qword_129F78);
    v62(v126, v60);
    sub_5CA8(v24, &qword_162058, &qword_129F78);
    if (v61)
    {
      goto LABEL_68;
    }

LABEL_16:
    ++v48;
    v49 = v130;
    v45 = v136;
  }

  while (v141 != v132);
  v141 = v57;
  v69 = 0;
  LODWORD(v139) = enum case for UsoEntity_common_UserEntity.DefinedValues.common_UserEntity_Here(_:);
  v70 = v121;
  v71 = v133;
  while (1)
  {
    if (v138)
    {
      sub_125FFC();
      v74 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v69 >= *(v137 + 16))
      {
        goto LABEL_80;
      }

      v73 = *(v45 + 8 * v69 + 32);

      v74 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v142 = v74;
    sub_1241FC();
    if (v145[0])
    {
      sub_123F8C();
    }

    else
    {
      v71(v49, 1, 1, v143);
    }

    v75 = v128;
    v76 = v143;
    v131(v128, v139, v143);
    v71(v75, 0, 1, v76);
    v77 = *(v140 + 48);
    sub_E344(v49, v70, &qword_162058, &qword_129F78);
    sub_E344(v75, v70 + v77, &qword_162058, &qword_129F78);
    v78 = v76;
    v79 = v141;
    if (v141(v70, 1, v78) == 1)
    {
      break;
    }

    v80 = v122;
    sub_E344(v70, v122, &qword_162058, &qword_129F78);
    if (v79((v70 + v77), 1, v143) == 1)
    {

      sub_5CA8(v128, &qword_162058, &qword_129F78);
      v49 = v130;
      sub_5CA8(v130, &qword_162058, &qword_129F78);
      (*v124)(v80, v143);
      v71 = v133;
      goto LABEL_40;
    }

    v81 = v70 + v77;
    v82 = v123;
    v83 = v143;
    (*v120)(v123, v81, v143);
    sub_CE020(&qword_162060, &type metadata accessor for UsoEntity_common_UserEntity.DefinedValues);
    v127 = sub_125B7C();

    v84 = *v124;
    v85 = v82;
    v70 = v121;
    (*v124)(v85, v83);
    sub_5CA8(v128, &qword_162058, &qword_129F78);
    v49 = v130;
    sub_5CA8(v130, &qword_162058, &qword_129F78);
    v84(v80, v83);
    sub_5CA8(v70, &qword_162058, &qword_129F78);
    v71 = v133;
    if (v127)
    {
      goto LABEL_76;
    }

LABEL_41:
    ++v69;
    v45 = v136;
    if (v142 == v132)
    {
      goto LABEL_56;
    }
  }

  sub_5CA8(v75, &qword_162058, &qword_129F78);
  sub_5CA8(v49, &qword_162058, &qword_129F78);
  v72 = v79((v70 + v77), 1, v143);
  v71 = v133;
  if (v72 != 1)
  {
LABEL_40:
    sub_5CA8(v70, &qword_162050, &qword_129F70);
    goto LABEL_41;
  }

  sub_5CA8(v70, &qword_162058, &qword_129F78);
LABEL_76:

  v107 = sub_125AAC();
  v108 = sub_125DFC();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_0, v107, v108, "Found .here", v109, 2u);
  }

  return 1;
}

uint64_t sub_C9C14()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162020);
  sub_5B30(v0, qword_162020);
  return sub_1257AC();
}

uint64_t sub_C9C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_123D7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v36 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_123E8C();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  v11 = __chkstk_darwin(v9);
  v37 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v38 = v35 - v13;
  v14 = sub_5AE8(&qword_162040, &qword_129F30);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v35 - v20;
  __chkstk_darwin(v19);
  v23 = v35 - v22;
  v24 = *(v6 + 56);
  v24(v35 - v22, 1, 1, v5);
  if (a1)
  {
    sub_5AE8(&qword_160810, &unk_127420);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_126EB0;
    *(v25 + 32) = a1;
  }

  v35[1] = a2;
  v26 = sub_1241EC();

  sub_12423C();
  v27 = sub_12427C();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_12426C();
  v35[2] = v26;
  sub_123F1C();
  sub_5CA8(v23, &qword_162040, &qword_129F30);

  v24(v21, 0, 1, v5);
  sub_CD970(v21, v23);
  v30 = v38;
  sub_123E7C();
  sub_E344(v23, v18, &qword_162040, &qword_129F30);
  v31 = *(v6 + 48);
  if (v31(v18, 1, v5) == 1)
  {
    sub_1241EC();

    sub_123F1C();

    if (v31(v18, 1, v5) != 1)
    {
      sub_5CA8(v18, &qword_162040, &qword_129F30);
    }
  }

  else
  {

    (*(v6 + 32))(v36, v18, v5);
  }

  sub_123E6C();
  sub_123E3C();
  v33 = v39;
  v32 = v40;
  (*(v39 + 16))(v37, v30, v40);
  sub_123E1C();

  (*(v33 + 8))(v30, v32);
  return sub_5CA8(v23, &qword_162040, &qword_129F30);
}

uint64_t sub_CA148()
{
  v0 = sub_5AE8(&qword_162038, &qword_129F28);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v115 = v107 - v2;
  v3 = sub_123E4C();
  v112 = *(v3 - 8);
  v113 = v3;
  v4 = *(v112 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v107 - v8;
  v10 = sub_12441C();
  v114 = *(v10 - 8);
  v11 = *(v114 + 64);
  __chkstk_darwin(v10);
  v13 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_12442C();
  v116 = *(v14 - 8);
  v15 = *(v116 + 64);
  __chkstk_darwin(v14);
  v17 = v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_123F5C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_C69B0();
  result = 0;
  if (v23 <= 2u)
  {
    if (v23 != 1)
    {
      return result;
    }

    sub_12437C();
    if (v119)
    {
      sub_12454C();
      if (swift_dynamicCast())
      {
LABEL_15:

        sub_12436C();
        goto LABEL_16;
      }
    }

    else
    {
      sub_5CA8(v118, &unk_161840, &qword_128110);
    }

    if (qword_15EF20 != -1)
    {
      swift_once();
    }

    v98 = sub_125ABC();
    sub_5B30(v98, qword_162020);
    v99 = sub_125AAC();
    v100 = sub_125DFC();
    if (!os_log_type_enabled(v99, v100))
    {
      goto LABEL_75;
    }

    v101 = swift_slowAlloc();
    *v101 = 0;
    v102 = "Parse entity: timer entity not found on createTimerTask.";
    goto LABEL_74;
  }

  if (v23 <= 0x12u)
  {
    if (((1 << v23) & 0x7FD60) != 0)
    {
      return result;
    }

    if (v23 == 7)
    {
      sub_12437C();
      if (v119)
      {
        sub_1244CC();
        if (swift_dynamicCast())
        {

          sub_12488C();
LABEL_16:

          return v118[0];
        }
      }

      else
      {
        sub_5CA8(v118, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v103 = sub_125ABC();
      sub_5B30(v103, qword_162020);
      v99 = sub_125AAC();
      v100 = sub_125DFC();
      if (!os_log_type_enabled(v99, v100))
      {
        goto LABEL_75;
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      v102 = "Parse entity: timer entity not found on resetTimerTask.";
      goto LABEL_74;
    }

    if (v23 == 9)
    {
      sub_12437C();
      if (v119)
      {
        sub_1244DC();
        if (swift_dynamicCast())
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_5CA8(v118, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v104 = sub_125ABC();
      sub_5B30(v104, qword_162020);
      v99 = sub_125AAC();
      v100 = sub_125DFC();
      if (!os_log_type_enabled(v99, v100))
      {
        goto LABEL_75;
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      v102 = "Parse entity: timer entity not found on startTimerTask.";
LABEL_74:
      _os_log_impl(&dword_0, v99, v100, v102, v101, 2u);

LABEL_75:

      return 0;
    }
  }

  if (v23 == 3)
  {
    if (MSVDeviceIsAppleTV())
    {
      sub_12437C();
      if (v119)
      {
        sub_12471C();
        if (swift_dynamicCast())
        {
          v110 = v117;
          v25 = sub_1249AC();
          v26 = *(v25 + 48);
          v27 = *(v25 + 52);
          swift_allocObject();
          v109 = sub_12499C();
          v28 = sub_12466C();
          v29 = *(v28 + 48);
          v30 = *(v28 + 52);
          swift_allocObject();
          v111 = sub_12465C();
          v31 = sub_123FFC();
          v32 = *(v31 + 48);
          v33 = *(v31 + 52);
          swift_allocObject();
          v34 = sub_123FEC();
          (*(v19 + 104))(v22, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v18);
          sub_123FDC();
          (*(v19 + 8))(v22, v18);

          sub_12461C();
          v108 = v34;

          v35 = sub_12494C();

          if (v35)
          {
            v36 = sub_12467C();

            if (v36)
            {
              v37 = sub_1246DC();

              if (v37)
              {
                v38 = sub_1243BC();

                if (v38)
                {
                  sub_1243FC();
                  v40 = v39;
                  v41 = v39;

                  v42 = sub_12481C();
                  v43 = *(v42 + 48);
                  v44 = *(v42 + 52);
                  swift_allocObject();
                  v45 = sub_12480C();
                  v46 = v116;
                  (*(v116 + 104))(v17, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v14);
                  v107[1] = v45;
                  sub_1247FC();
                  (*(v46 + 8))(v17, v14);
                  v47 = sub_12476C();
                  v48 = *(v47 + 48);
                  v49 = *(v47 + 52);
                  swift_allocObject();
                  result = sub_12475C();
                  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    if (fabs(v40) < 9.22337204e18)
                    {
                      sub_12474C();
                      v50 = sub_124B3C();
                      v51 = *(v50 + 48);
                      v52 = *(v50 + 52);
                      swift_allocObject();
                      sub_124B2C();

                      sub_124B0C();

                      sub_124B1C();

                      v53 = sub_1247EC();
                      v54 = *(v53 + 48);
                      v55 = *(v53 + 52);
                      swift_allocObject();
                      sub_1247DC();
                      v56 = v114;
                      (*(v114 + 104))(v13, enum case for UsoEntity_common_Duration.DefinedValues.common_Duration_TotalDuration(_:), v10);
                      sub_1247CC();
                      (*(v56 + 8))(v13, v10);

                      sub_1247BC();

                      sub_12463C();

                      sub_12473C();
                      sub_124BAC();
                      v57 = sub_12422C();
                      v58 = v115;
                      (*(*(v57 - 8) + 56))(v115, 1, 1, v57);

                      sub_C9C60(v59, v58, v9);

                      sub_5CA8(v58, &qword_162038, &qword_129F28);
                      sub_123DCC();
                      sub_12437C();

                      if (v119)
                      {
                        sub_12454C();
                        if (swift_dynamicCast())
                        {

                          sub_12436C();

                          (*(v112 + 8))(v9, v113);
                          return v118[0];
                        }

                        (*(v112 + 8))(v9, v113);

                        goto LABEL_84;
                      }

                      (*(v112 + 8))(v9, v113);

                      goto LABEL_82;
                    }

LABEL_89:
                    __break(1u);
                    return result;
                  }

LABEL_88:
                  __break(1u);
                  goto LABEL_89;
                }
              }
            }
          }

          goto LABEL_78;
        }
      }

      else
      {
        sub_5CA8(v118, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v105 = sub_125ABC();
      sub_5B30(v105, qword_162020);
      v99 = sub_125AAC();
      v100 = sub_125DFC();
      if (!os_log_type_enabled(v99, v100))
      {
        goto LABEL_75;
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      v102 = "Parse entity: disable common setting not found on disable common setting task.";
      goto LABEL_74;
    }
  }

  else if (MSVDeviceIsAppleTV())
  {
    sub_12437C();
    if (v119)
    {
      sub_12469C();
      if (swift_dynamicCast())
      {
        v110 = v117;
        v60 = sub_1249AC();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        swift_allocObject();
        v109 = sub_12499C();
        v63 = sub_12466C();
        v64 = *(v63 + 48);
        v65 = *(v63 + 52);
        swift_allocObject();
        v111 = sub_12465C();
        v66 = sub_123FFC();
        v67 = *(v66 + 48);
        v68 = *(v66 + 52);
        swift_allocObject();
        v69 = sub_123FEC();
        (*(v19 + 104))(v22, enum case for UsoEntity_appleTimer_TimerAttribute.DefinedValues.appleTimer_TimerAttribute_TimerTypeSleep(_:), v18);
        sub_123FDC();
        (*(v19 + 8))(v22, v18);

        sub_12461C();
        v108 = v69;

        v70 = sub_12494C();

        if (v70)
        {
          v71 = sub_12467C();

          if (v71)
          {
            v72 = sub_1246EC();

            if (v72)
            {
              goto LABEL_44;
            }
          }
        }

        if (sub_12494C())
        {
          v73 = sub_12467C();

          if (v73)
          {
            v74 = sub_1246CC();

            if (v74)
            {
              v75 = sub_1243BC();

              if (v75)
              {
                goto LABEL_44;
              }
            }
          }
        }

        if (sub_12494C())
        {
          v76 = sub_12468C();

          if (v76)
          {
            v77 = sub_1243BC();

            if (v77)
            {
LABEL_44:
              sub_1243FC();
              v79 = v78;
              v80 = v78;

              v81 = sub_12481C();
              v82 = *(v81 + 48);
              v83 = *(v81 + 52);
              swift_allocObject();
              sub_12480C();
              v84 = v116;
              (*(v116 + 104))(v17, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v14);
              sub_1247FC();
              (*(v84 + 8))(v17, v14);
              v85 = sub_12476C();
              v86 = *(v85 + 48);
              v87 = *(v85 + 52);
              swift_allocObject();
              result = sub_12475C();
              if ((*&v80 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                __break(1u);
              }

              else if (fabs(v79) < 9.22337204e18)
              {
                sub_12474C();
                v88 = sub_124B3C();
                v89 = *(v88 + 48);
                v90 = *(v88 + 52);
                swift_allocObject();
                sub_124B2C();

                sub_124B0C();

                sub_124B1C();

                v91 = sub_1247EC();
                v92 = *(v91 + 48);
                v93 = *(v91 + 52);
                swift_allocObject();
                sub_1247DC();
                v94 = v114;
                (*(v114 + 104))(v13, enum case for UsoEntity_common_Duration.DefinedValues.common_Duration_TotalDuration(_:), v10);
                sub_1247CC();
                (*(v94 + 8))(v13, v10);

                sub_1247BC();

                sub_12463C();

                sub_12473C();
                sub_124BAC();
                v95 = sub_12422C();
                v96 = v115;
                (*(*(v95 - 8) + 56))(v115, 1, 1, v95);

                sub_C9C60(v97, v96, v7);

                sub_5CA8(v96, &qword_162038, &qword_129F28);
                sub_123DCC();
                sub_12437C();

                if (v119)
                {
                  sub_12454C();
                  if (swift_dynamicCast())
                  {

                    sub_12436C();

                    (*(v112 + 8))(v7, v113);
                    return v118[0];
                  }

                  (*(v112 + 8))(v7, v113);

LABEL_84:

                  goto LABEL_85;
                }

                (*(v112 + 8))(v7, v113);

LABEL_82:

                sub_5CA8(v118, &unk_161840, &qword_128110);
                return 0;
              }

              __break(1u);
              goto LABEL_88;
            }
          }
        }

LABEL_78:

LABEL_85:

        return 0;
      }
    }

    else
    {
      sub_5CA8(v118, &unk_161840, &qword_128110);
    }

    if (qword_15EF20 != -1)
    {
      swift_once();
    }

    v106 = sub_125ABC();
    sub_5B30(v106, qword_162020);
    v99 = sub_125AAC();
    v100 = sub_125DFC();
    if (!os_log_type_enabled(v99, v100))
    {
      goto LABEL_75;
    }

    v101 = swift_slowAlloc();
    *v101 = 0;
    v102 = "Parse entity: enable common setting not found on enable common setting task.";
    goto LABEL_74;
  }

  return 0;
}

uint64_t sub_CB454()
{
  v0 = sub_C69B0();
  result = 0;
  switch(v0)
  {
    case 2:
      sub_12437C();
      if (v17)
      {
        sub_12456C();
        if (swift_dynamicCast())
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v8 = sub_125ABC();
      sub_5B30(v8, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_84;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse entity from delete_NoEntity.";
      goto LABEL_83;
    case 5:
      sub_12437C();
      if (v17)
      {
        sub_1244BC();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v11 = sub_125ABC();
      sub_5B30(v11, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_84;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse entity from pause_NoEntity.";
      goto LABEL_83;
    case 8:
      sub_12437C();
      if (v17)
      {
        sub_1245CC();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v2 = sub_125ABC();
      sub_5B30(v2, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_84;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse entity from resume_NoEntity.";
      goto LABEL_83;
    case 9:
      sub_12437C();
      if (v17)
      {
        sub_1244EC();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v7 = sub_125ABC();
      sub_5B30(v7, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_84;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse entity from start_NoEntity.";
      goto LABEL_83;
    case 12:
      sub_12437C();
      if (v17)
      {
        sub_1245EC();
        if (swift_dynamicCast())
        {

          sub_12489C();
          goto LABEL_32;
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v10 = sub_125ABC();
      sub_5B30(v10, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_84;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse entity from update_NoEntity.";
      goto LABEL_83;
    case 14:
      sub_12437C();
      if (v17)
      {
        sub_12459C();
        if (swift_dynamicCast())
        {

          return 0;
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v14 = sub_125ABC();
      sub_5B30(v14, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_84;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse entity from noVerb_NoEntity.";
      goto LABEL_83;
    case 15:
      sub_12437C();
      if (v17)
      {
        sub_12443C();
        if (swift_dynamicCast())
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v9 = sub_125ABC();
      sub_5B30(v9, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_84;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse entity from open_NoEntity.";
      goto LABEL_83;
    case 16:
      sub_12437C();
      if (v17)
      {
        sub_12444C();
        if (swift_dynamicCast())
        {
LABEL_31:

          sub_12450C();
          goto LABEL_32;
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v15 = sub_125ABC();
      sub_5B30(v15, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_84;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse entity from read_NoEntity.";
      goto LABEL_83;
    case 17:
      sub_12437C();
      if (v17)
      {
        sub_1245AC();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v12 = sub_125ABC();
      sub_5B30(v12, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_84;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Parse entity: failed to parse entity from repeat_NoEntity.";
      goto LABEL_83;
    case 18:
      sub_12437C();
      if (v17)
      {
        sub_12460C();
        if (swift_dynamicCast())
        {
LABEL_25:

          sub_12492C();
LABEL_32:

          return v16[0];
        }
      }

      else
      {
        sub_5CA8(v16, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v13 = sub_125ABC();
      sub_5B30(v13, qword_162020);
      v3 = sub_125AAC();
      v4 = sub_125DEC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Parse entity: failed to parse entity from restart_NoEntity.";
LABEL_83:
        _os_log_impl(&dword_0, v3, v4, v6, v5, 2u);
      }

LABEL_84:

      return 0;
    default:
      return result;
  }
}

uint64_t sub_CBF6C(uint64_t (*a1)(uint64_t), const char *a2, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, const char *a8, const char *a9, const char *a10, const char *a11, const char *a12, const char *a13, const char *a14, const char *a15, const char *a16)
{
  v17 = sub_C69B0();
  result = 0;
  switch(v17)
  {
    case 1:
      sub_12437C();
      if (v68)
      {
        sub_12454C();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v40 = sub_125ABC();
      sub_5B30(v40, qword_162020);
      v21 = sub_125AAC();
      v41 = sub_125DEC();
      if (!os_log_type_enabled(v21, v41))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v41;
      v25 = v21;
      a16 = a3;
      goto LABEL_122;
    case 2:
      sub_12437C();
      if (v68)
      {
        sub_12455C();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v44 = sub_125ABC();
      sub_5B30(v44, qword_162020);
      v21 = sub_125AAC();
      v45 = sub_125DEC();
      if (!os_log_type_enabled(v21, v45))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v45;
      v25 = v21;
      a16 = a7;
      goto LABEL_122;
    case 3:
      sub_12437C();
      if (v68)
      {
        sub_12471C();
        if (swift_dynamicCast())
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v35 = sub_125ABC();
      sub_5B30(v35, qword_162020);
      v21 = sub_125AAC();
      v36 = sub_125DEC();
      if (!os_log_type_enabled(v21, v36))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v36;
      v25 = v21;
      a16 = a4;
      goto LABEL_122;
    case 4:
      sub_12437C();
      if (v68)
      {
        sub_12469C();
        if (swift_dynamicCast())
        {
LABEL_34:

          v19 = sub_12493C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v48 = sub_125ABC();
      sub_5B30(v48, qword_162020);
      v21 = sub_125AAC();
      v49 = sub_125DEC();
      if (!os_log_type_enabled(v21, v49))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v49;
      v25 = v21;
      a16 = a5;
      goto LABEL_122;
    case 5:
      sub_12437C();
      if (v68)
      {
        sub_1244AC();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v33 = sub_125ABC();
      sub_5B30(v33, qword_162020);
      v21 = sub_125AAC();
      v34 = sub_125DEC();
      if (!os_log_type_enabled(v21, v34))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v34;
      v25 = v21;
      a16 = a9;
      goto LABEL_122;
    case 6:
      sub_12437C();
      if (v68)
      {
        sub_1245FC();
        if (swift_dynamicCast())
        {

          v19 = sub_12484C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v46 = sub_125ABC();
      sub_5B30(v46, qword_162020);
      v21 = sub_125AAC();
      v47 = sub_125DEC();
      if (!os_log_type_enabled(v21, v47))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v47;
      v25 = v21;
      a16 = a12;
      goto LABEL_122;
    case 7:
      sub_12437C();
      if (v68)
      {
        sub_1244CC();
        if (swift_dynamicCast())
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v29 = sub_125ABC();
      sub_5B30(v29, qword_162020);
      v21 = sub_125AAC();
      v30 = sub_125DEC();
      if (!os_log_type_enabled(v21, v30))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v30;
      v25 = v21;
      a16 = a11;
      goto LABEL_122;
    case 8:
      sub_12437C();
      if (v68)
      {
        sub_1245BC();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v31 = sub_125ABC();
      sub_5B30(v31, qword_162020);
      v21 = sub_125AAC();
      v32 = sub_125DEC();
      if (!os_log_type_enabled(v21, v32))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v32;
      v25 = v21;
      a16 = a10;
      goto LABEL_122;
    case 9:
      sub_12437C();
      if (v68)
      {
        sub_1244DC();
        if (swift_dynamicCast())
        {
LABEL_25:

          v19 = sub_12435C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v42 = sub_125ABC();
      sub_5B30(v42, qword_162020);
      v21 = sub_125AAC();
      v43 = sub_125DEC();
      if (!os_log_type_enabled(v21, v43))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v43;
      v25 = v21;
      a16 = a6;
      goto LABEL_122;
    case 10:
      sub_12437C();
      if (v68)
      {
        sub_12445C();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v56 = sub_125ABC();
      sub_5B30(v56, qword_162020);
      v21 = sub_125AAC();
      v57 = sub_125DEC();
      if (!os_log_type_enabled(v21, v57))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v57;
      v25 = v21;
      a16 = a8;
      goto LABEL_122;
    case 11:
      sub_12437C();
      if (v68)
      {
        sub_12472C();
        if (swift_dynamicCast())
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v37 = sub_125ABC();
      sub_5B30(v37, qword_162020);
      v21 = sub_125AAC();
      v38 = sub_125DEC();
      if (!os_log_type_enabled(v21, v38))
      {
        goto LABEL_124;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v21, v38, a13, v39, 2u);
      goto LABEL_123;
    case 12:
      sub_12437C();
      if (v68)
      {
        sub_1245DC();
        if (swift_dynamicCast())
        {
LABEL_47:

          v19 = sub_12487C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v58 = sub_125ABC();
      sub_5B30(v58, qword_162020);
      v21 = sub_125AAC();
      v59 = sub_125DEC();
      if (!os_log_type_enabled(v21, v59))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v59;
      v25 = v21;
      a16 = a15;
      goto LABEL_122;
    case 13:
      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v20 = sub_125ABC();
      sub_5B30(v20, qword_162020);
      v21 = sub_125AAC();
      v22 = sub_125DEC();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_124;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = v22;
      v25 = v21;
      goto LABEL_122;
    case 14:
      sub_12437C();
      if (v68)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {

          v19 = sub_123F2C();
          goto LABEL_48;
        }
      }

      else
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
      }

      if (qword_15EF20 != -1)
      {
        swift_once();
      }

      v54 = sub_125ABC();
      sub_5B30(v54, qword_162020);
      v21 = sub_125AAC();
      v55 = sub_125DEC();
      if (os_log_type_enabled(v21, v55))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = v55;
        v25 = v21;
        a16 = a2;
LABEL_122:
        _os_log_impl(&dword_0, v25, v24, a16, v23, 2u);
LABEL_123:
      }

LABEL_124:

      return 0;
    case 15:
    case 16:
    case 17:
    case 18:
      return result;
    default:
      sub_12437C();
      if (!v68)
      {
        sub_5CA8(v67, &unk_161840, &qword_128110);
LABEL_102:
        if (qword_15EF20 != -1)
        {
          swift_once();
        }

        v50 = sub_125ABC();
        sub_5B30(v50, qword_162020);
        v51 = sub_125AAC();
        v52 = sub_125DEC();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_0, v51, v52, a14, v53, 2u);
        }

        return 0;
      }

      sub_124A5C();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_102;
      }

LABEL_44:

      v19 = sub_1244FC();
LABEL_48:
      v27 = v19;

      if (v27)
      {
        v28 = a1(v27);

        return v28;
      }

      return 0;
  }
}

char *sub_CCEF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1260FC())
  {
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    while ((a1 & 0xC000000000000001) != 0)
    {
      sub_125FFC();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = sub_CD380();

      v8 = *(v7 + 2);
      v9 = *(v4 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
      {
        if (*(v7 + 2))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_CD9E0(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 2))
        {
LABEL_18:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v8)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = *(v4 + 2);
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            *(v4 + 2) = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = &_swiftEmptyArrayStorage;
LABEL_32:
  if (!*(v4 + 2))
  {

    return 0;
  }

  return v4;
}

unint64_t sub_CD0DC(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_30;
  }

  v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (v2)
  {
    do
    {
      v3 = 0;
      v4 = &_swiftEmptyArrayStorage;
      while ((v1 & 0xC000000000000001) != 0)
      {
        sub_125FFC();
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_24;
        }

LABEL_9:
        v7 = sub_CD764();

        v8 = *(v7 + 2);
        v9 = *(v4 + 2);
        v10 = v9 + v8;
        if (__OFADD__(v9, v8))
        {
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
        {
          if (*(v7 + 2))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v9 <= v10)
          {
            v12 = v9 + v8;
          }

          else
          {
            v12 = v9;
          }

          v4 = sub_CD9E0(isUniquelyReferenced_nonNull_native, v12, 1, v4);
          if (*(v7 + 2))
          {
LABEL_18:
            if ((*(v4 + 3) >> 1) - *(v4 + 2) < v8)
            {
              goto LABEL_28;
            }

            swift_arrayInitWithCopy();

            if (v8)
            {
              v13 = *(v4 + 2);
              v14 = __OFADD__(v13, v8);
              v15 = v13 + v8;
              if (v14)
              {
                goto LABEL_29;
              }

              *(v4 + 2) = v15;
            }

            goto LABEL_5;
          }
        }

        if (v8)
        {
          goto LABEL_27;
        }

LABEL_5:
        ++v3;
        if (v6 == v2)
        {
          goto LABEL_32;
        }
      }

      if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v5 = *(v1 + 8 * v3 + 32);

      v6 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_9;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_1260FC();
      v2 = result;
    }

    while (result);
  }

  v4 = &_swiftEmptyArrayStorage;
LABEL_32:
  v16 = *(v4 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = (v4 + 40);
    v19 = &_swiftEmptyArrayStorage;
    while (v17 < *(v4 + 2))
    {
      v21 = *(v18 - 1);
      v20 = *v18;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_CD9E0(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_CD9E0((v22 > 1), v23 + 1, 1, v19);
        v19 = result;
      }

      ++v17;
      *(v19 + 2) = v23 + 1;
      v24 = &v19[16 * v23];
      *(v24 + 4) = v21;
      *(v24 + 5) = v20;
      v18 += 2;
      if (v16 == v17)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = &_swiftEmptyArrayStorage;
LABEL_42:

    if (!*(v19 + 2))
    {

      return 0;
    }

    return v19;
  }

  return result;
}

char *sub_CD380()
{
  sub_1241FC();
  if (!v34)
  {
    return &_swiftEmptyArrayStorage;
  }

  v0 = sub_123F7C();

  if (!v0)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1260FC())
  {
    v3 = 0;
    v29 = v0 & 0xC000000000000001;
    v4 = &_swiftEmptyArrayStorage;
    v28 = v0 + 32;
    v26 = v1;
    v27 = v0;
    v25 = i;
    while (v29)
    {
      sub_125FFC();
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_57;
      }

LABEL_11:
      sub_1241FC();
      if (!v33)
      {

        v9 = &_swiftEmptyArrayStorage;
        goto LABEL_41;
      }

      v30 = v4;
      v7 = sub_123FAC();

      if (v7)
      {
        swift_getKeyPath();
        if (v7 >> 62)
        {
          v8 = sub_1260FC();
          if (v8)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
          if (v8)
          {
LABEL_15:
            v0 = 0;
            v1 = v7 & 0xC000000000000001;
            v9 = &_swiftEmptyArrayStorage;
            do
            {
              v10 = v0;
              while (1)
              {
                if (v1)
                {
                  sub_125FFC();
                  v0 = v10 + 1;
                  if (__OFADD__(v10, 1))
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  if (v10 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_56;
                  }

                  v11 = *(v7 + 8 * v10 + 32);

                  v0 = v10 + 1;
                  if (__OFADD__(v10, 1))
                  {
LABEL_55:
                    __break(1u);
LABEL_56:
                    __break(1u);
                    goto LABEL_57;
                  }
                }

                swift_getAtKeyPath();

                if (v32)
                {
                  break;
                }

                ++v10;
                if (v0 == v8)
                {
                  goto LABEL_39;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_CD9E0(0, *(v9 + 2) + 1, 1, v9);
              }

              v13 = *(v9 + 2);
              v12 = *(v9 + 3);
              v14 = v13 + 1;
              if (v13 >= v12 >> 1)
              {
                v16 = sub_CD9E0((v12 > 1), v13 + 1, 1, v9);
                v14 = v13 + 1;
                v9 = v16;
              }

              *(v9 + 2) = v14;
              v15 = &v9[16 * v13];
              *(v15 + 4) = v31;
              *(v15 + 5) = v32;
            }

            while (v0 != v8);
            goto LABEL_39;
          }
        }

        v9 = &_swiftEmptyArrayStorage;
LABEL_39:

        v1 = v26;
        v0 = v27;
        i = v25;
        goto LABEL_40;
      }

      v9 = &_swiftEmptyArrayStorage;
LABEL_40:
      v4 = v30;
LABEL_41:
      v17 = *(v9 + 2);
      v18 = *(v4 + 2);
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        goto LABEL_59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v19 <= *(v4 + 3) >> 1)
      {
        if (*(v9 + 2))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v21 = v18 + v17;
        }

        else
        {
          v21 = v18;
        }

        v4 = sub_CD9E0(isUniquelyReferenced_nonNull_native, v21, 1, v4);
        if (*(v9 + 2))
        {
LABEL_50:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v17)
          {
            goto LABEL_61;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v22 = *(v4 + 2);
            v6 = __OFADD__(v22, v17);
            v23 = v22 + v17;
            if (v6)
            {
              goto LABEL_62;
            }

            *(v4 + 2) = v23;
          }

          goto LABEL_7;
        }
      }

      if (v17)
      {
        goto LABEL_60;
      }

LABEL_7:
      if (v3 == i)
      {
        goto LABEL_65;
      }
    }

    if (v3 >= *(v1 + 16))
    {
      goto LABEL_58;
    }

    v5 = *(v28 + 8 * v3);

    v6 = __OFADD__(v3++, 1);
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v4 = &_swiftEmptyArrayStorage;
LABEL_65:

  return v4;
}

char *sub_CD764()
{
  sub_1241FC();
  if (v14)
  {
    v0 = sub_123FAC();

    if (v0)
    {
      swift_getKeyPath();
      if (v0 >> 62)
      {
LABEL_25:
        v1 = sub_1260FC();
        if (v1)
        {
LABEL_5:
          v2 = 0;
          v3 = &_swiftEmptyArrayStorage;
          do
          {
            v4 = v2;
            while (1)
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                sub_125FFC();
                v2 = v4 + 1;
                if (__OFADD__(v4, 1))
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if (v4 >= *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_24;
                }

                v5 = *(v0 + 8 * v4 + 32);

                v2 = v4 + 1;
                if (__OFADD__(v4, 1))
                {
LABEL_23:
                  __break(1u);
LABEL_24:
                  __break(1u);
                  goto LABEL_25;
                }
              }

              swift_getAtKeyPath();

              if (v13)
              {
                break;
              }

              ++v4;
              if (v2 == v1)
              {
                goto LABEL_27;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_CD9E0(0, *(v3 + 2) + 1, 1, v3);
            }

            v7 = *(v3 + 2);
            v6 = *(v3 + 3);
            v8 = v7 + 1;
            if (v7 >= v6 >> 1)
            {
              v10 = sub_CD9E0((v6 > 1), v7 + 1, 1, v3);
              v8 = v7 + 1;
              v3 = v10;
            }

            *(v3 + 2) = v8;
            v9 = &v3[16 * v7];
            *(v9 + 4) = v12;
            *(v9 + 5) = v13;
          }

          while (v2 != v1);
          goto LABEL_27;
        }
      }

      else
      {
        v1 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
        if (v1)
        {
          goto LABEL_5;
        }
      }

      v3 = &_swiftEmptyArrayStorage;
LABEL_27:

      return v3;
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_CD970(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_162040, &qword_129F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_CD9E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_5AE8(&qword_162048, &qword_129F38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_CDAEC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_1241FC();
  result = *&v5;
  *a2 = v5;
  return result;
}

id *sub_CDBA0(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_5AE8(&qword_162090, &qword_129FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5AE8(&qword_162098, &qword_129FB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_CDCFC(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5AE8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = (2 * ((result - v16) / v15));
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id *sub_CDED8(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_5AE8(&qword_162068, &qword_129F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 40));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5AE8(&qword_162070, &qword_129F88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_CE020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CE088()
{
  v1 = [*(v0 + 24) timers];
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *(v3 + 16) = v2;
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    v6 = sub_5AE8(&qword_160868, qword_12B5A0);
    *v5 = v0;
    v5[1] = sub_CE1EC;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000010, 0x800000000012D4F0, sub_7CDC0, v3, v6);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_CE1EC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_CE304, 0, 0);
}

uint64_t sub_CE304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_CE368(uint64_t a1, void *a2)
{
  v16 = a2;
  v19 = a1;
  v4 = sub_5AE8(&qword_1620A8, &qword_129FC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v18 = *(v5 + 16);
  v18(&v16 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v17 = *(v5 + 32);
  v17(v10 + v9, v8, v4);
  v24 = sub_CE6A0;
  v25 = v10;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_CE71C;
  v23 = &unk_159770;
  v11 = _Block_copy(&aBlock);

  v12 = [a2 addSuccessBlock:v11];
  _Block_release(v11);

  v18(v8, v19, v4);
  v13 = swift_allocObject();
  v17(v13 + v9, v8, v4);
  v24 = sub_CE830;
  v25 = v13;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_105C50;
  v23 = &unk_1597C0;
  v14 = _Block_copy(&aBlock);

  v15 = [v16 addFailureBlock:v14];
  _Block_release(v14);
}

uint64_t sub_CE620()
{
  sub_CE8D0();
  sub_125C5C();
  sub_5AE8(&qword_1620A8, &qword_129FC0);
  return sub_125D1C();
}

uint64_t sub_CE6A0()
{
  v0 = *(*(sub_5AE8(&qword_1620A8, &qword_129FC0) - 8) + 80);

  return sub_CE620();
}

void sub_CE71C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_CE784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_CE79C()
{
  v1 = sub_5AE8(&qword_1620A8, &qword_129FC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_CE830()
{
  v0 = *(sub_5AE8(&qword_1620A8, &qword_129FC0) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_5AE8(&qword_1620A8, &qword_129FC0);
  return sub_125D1C();
}

unint64_t sub_CE8D0()
{
  result = qword_1620B0;
  if (!qword_1620B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1620B0);
  }

  return result;
}

uint64_t sub_CE938()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1620B8);
  sub_5B30(v0, qword_1620B8);
  return sub_1257AC();
}

uint64_t sub_CE984()
{
  v0 = sub_1250BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1250AC();
  v5 = sub_12506C();
  (*(v1 + 8))(v4, v0);
  if (!v5)
  {
    goto LABEL_6;
  }

  sub_5AE8(&qword_1620D8, &qword_12A120);
  v6 = sub_123B4C();
  v7 = [v6 targetTimer];

  v8 = [v7 shouldMatchAny];
  sub_8BAC();
  v9.super.super.isa = sub_125EFC(1).super.super.isa;
  if (!v8)
  {
    goto LABEL_5;
  }

  v10 = sub_125F0C();

  if (v10)
  {
    v11 = sub_123B4C();
    v9.super.super.isa = [v11 targetingInfo];

    if (!v9.super.super.isa)
    {
      if (qword_15EF28 != -1)
      {
        swift_once();
      }

      v18 = sub_125ABC();
      sub_5B30(v18, qword_1620B8);
      v13 = sub_125AAC();
      v19 = sub_125DFC();
      if (!os_log_type_enabled(v13, v19))
      {
        v16 = 1;
        goto LABEL_12;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v13, v19, "ResolveRecord indicates we are searching for a room confirmation", v20, 2u);
      v16 = 1;
      goto LABEL_10;
    }

LABEL_5:
  }

LABEL_6:
  if (qword_15EF28 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_1620B8);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (!os_log_type_enabled(v13, v14))
  {
    v16 = 0;
    goto LABEL_12;
  }

  v15 = swift_slowAlloc();
  *v15 = 0;
  _os_log_impl(&dword_0, v13, v14, "ResolveRecord not searching for room confirmation", v15, 2u);
  v16 = 0;
LABEL_10:

LABEL_12:

  return v16;
}

uint64_t sub_CEC9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  if (qword_15EF28 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_1620B8);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "ResetTimer.NeedsConfirmationStrategy.actionForInput() called)", v15, 2u);
  }

  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = sub_CE984();
  v18 = &enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  if ((v17 & 1) == 0)
  {
    v18 = &enum case for DecideAction.PromptExpectation.confirmation(_:);
  }

  v19 = *v18;
  v20 = sub_12514C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v7, v19, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  sub_3D63C(a1, v11, 0, v7, a2);
  sub_5CA8(v7, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v11, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_CEF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_5AE8(&unk_161EC0, &unk_126E20) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_12379C();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_CF064, 0, 0);
}

uint64_t sub_CF064()
{
  if (qword_15EF28 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_1620B8);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResetTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  v5 = *(v0 + 72);

  sub_5AE8(&qword_1620D8, &qword_12A120);
  v6 = sub_123B5C();
  v7 = [v6 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (!swift_dynamicCast())
  {
    v17 = *(v0 + 112);
    v18 = *(v0 + 120);
    v19 = *(v0 + 88);
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();

    v21 = *(v0 + 8);
    goto LABEL_28;
  }

  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = sub_123B4C();
  [v11 setTargetTimer:v10];
  if ((sub_CE984() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_9D860(*(v0 + 64), 1, *(v0 + 120));
  v12 = sub_A8C70();
  if (v12 <= 1)
  {
    if (v12)
    {
      v13 = sub_125AAC();
      v14 = sub_125DFC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "Received explicit 'here' confirmation – only local timers for pauseMultiple", v15, 2u);
      }

      v16 = [v11 targetTimer];
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_15:
    v22 = sub_125AAC();
    v23 = sub_125DFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Received explicit 'everywhere' confirmation to include remote timers for pauseMultiple", v24, 2u);
    }

    v25 = [v11 targetTimer];
    if (!v25)
    {
      goto LABEL_25;
    }

    v26 = v25;
    v27 = 1;
    goto LABEL_24;
  }

  if (v12 == 2)
  {
    goto LABEL_15;
  }

  v29 = *(v0 + 112);
  v28 = *(v0 + 120);
  v30 = *(v0 + 96);
  v31 = *(v0 + 104);
  sub_12377C();
  v32 = sub_12375C();
  v33 = *(v31 + 8);
  v33(v29, v30);
  v34 = sub_125AAC();
  v35 = sub_125DFC();
  v36 = os_log_type_enabled(v34, v35);
  if ((v32 & 1) == 0)
  {
    v58 = v33;
    if (v36)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v34, v35, "Defaulting confirmation to reject for no/cancel", v49, 2u);
    }

    v57 = *(v0 + 120);
    v51 = *(v0 + 88);
    v50 = *(v0 + 96);
    v52 = *(v0 + 56);

    v53 = enum case for ConfirmationResponse.rejected(_:);
    v54 = sub_123A1C();
    v55 = *(v54 - 8);
    (*(v55 + 104))(v51, v53, v54);
    (*(v55 + 56))(v51, 0, 1, v54);
    v56 = v11;
    sub_125EDC();

    sub_12558C();
    sub_123AEC();

    v58(v57, v50);
    goto LABEL_27;
  }

  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v34, v35, "Confirming use only local timers for pauseMultiple", v37, 2u);
  }

  v16 = [v11 targetTimer];
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_23:
  v26 = v16;
  v27 = 0;
LABEL_24:
  sub_8BAC();
  isa = sub_125EEC(v27).super.super.isa;
  [v26 setShouldMatchRemote:isa];

LABEL_25:
  (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
LABEL_26:
  v39 = *(v0 + 88);
  v40 = *(v0 + 56);
  v41 = enum case for ConfirmationResponse.confirmed(_:);
  v42 = sub_123A1C();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v39, v41, v42);
  (*(v43 + 56))(v39, 0, 1, v42);
  v44 = v11;
  sub_125EDC();

  sub_12558C();
  sub_123AEC();

LABEL_27:
  v46 = *(v0 + 112);
  v45 = *(v0 + 120);
  v47 = *(v0 + 88);

  v21 = *(v0 + 8);
LABEL_28:

  return v21();
}

uint64_t sub_CF764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a3;
  v4 = *(*(sub_5AE8(&unk_162190, &unk_128500) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = *(*(sub_124EDC() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v6 = sub_125ABC();
  v3[17] = v6;
  v7 = *(v6 - 8);
  v3[18] = v7;
  v8 = *(v7 + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = sub_124FFC();
  v3[20] = v9;
  v10 = *(v9 - 8);
  v3[21] = v10;
  v11 = *(v10 + 64) + 15;
  v3[22] = swift_task_alloc();
  v12 = sub_12501C();
  v3[23] = v12;
  v13 = *(v12 - 8);
  v3[24] = v13;
  v14 = *(v13 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v15 = sub_12392C();
  v3[28] = v15;
  v16 = *(v15 - 8);
  v3[29] = v16;
  v17 = *(v16 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v18 = sub_1250BC();
  v3[33] = v18;
  v19 = *(v18 - 8);
  v3[34] = v19;
  v20 = *(v19 + 64) + 15;
  v3[35] = swift_task_alloc();
  v21 = sub_12368C();
  v3[36] = v21;
  v22 = *(v21 - 8);
  v3[37] = v22;
  v23 = *(v22 + 64) + 15;
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_CFA84, 0, 0);
}

uint64_t sub_CFA84()
{
  if (qword_15EF28 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[17], qword_1620B8);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResetTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  v5 = v0[14];

  sub_5AE8(&qword_1620D8, &qword_12A120);
  v6 = sub_123B5C();
  v7 = [v6 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (swift_dynamicCast())
  {
    v82 = v1;
    v8 = v0[38];
    v10 = v0[34];
    v9 = v0[35];
    v11 = v0[33];
    v12 = v0[12];
    v0[39] = v12;
    sub_12362C();
    sub_1250AC();
    v13 = sub_12506C();
    (*(v10 + 8))(v9, v11);
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = [v12 shouldMatchAny];
    sub_8BAC();
    v15.super.super.isa = sub_125EFC(1).super.super.isa;
    if (v14)
    {
      v16 = sub_125F0C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_11;
      }

      v17 = v0[14];
      v18 = sub_123B4C();
      v15.super.super.isa = [v18 targetingInfo];

      if (!v15.super.super.isa)
      {
        v70 = v0[27];
        v72 = v0[21];
        v71 = v0[22];
        v74 = v0[19];
        v73 = v0[20];
        v75 = v0[17];
        v76 = v0[18];
        v77 = v0[16];
        sub_FFF04(7, v0[32]);
        (*(v72 + 104))(v71, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v73);
        (*(v76 + 16))(v74, v1, v75);
        mach_absolute_time();
        sub_12502C();
        type metadata accessor for ResetTimerCATsSimple();
        sub_124ECC();
        v0[40] = sub_124E7C();
        v63 = "resetTimer#confirmResetMultiple";
        v78 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v83 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
        v79 = swift_task_alloc();
        v0[41] = v79;
        *v79 = v0;
        v79[1] = sub_D03C0;
        v66 = _swiftEmptyArrayStorage;
        v33 = 0xD000000000000020;
LABEL_27:
        v34 = v63 | 0x8000000000000000;
        goto LABEL_28;
      }
    }

LABEL_11:
    v19 = [v12 device];
    if (v19)
    {
      v20 = v0[31];
      v21 = v0[26];
      v22 = v0[21];
      v23 = v0[22];
      v25 = v0[19];
      v24 = v0[20];
      v27 = v0[17];
      v26 = v0[18];
      v28 = v0[16];

      sub_FFAE8(7);
      (*(v22 + 104))(v23, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v24);
      (*(v26 + 16))(v25, v82, v27);
      mach_absolute_time();
      sub_12502C();
      type metadata accessor for TimerBaseCATsSimple();
      sub_124ECC();
      v0[45] = sub_124E7C();
      v29 = sub_113D6C(0, 0);
      v0[46] = v29;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v30 = swift_allocObject();
      v0[47] = v30;
      *(v30 + 16) = xmmword_126CB0;
      *(v30 + 32) = 0x72656D6974;
      *(v30 + 40) = 0xE500000000000000;
      *(v30 + 72) = type metadata accessor for TimerTimer(0);
      *(v30 + 48) = v29;
      v31 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v83 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v32 = swift_task_alloc();
      v0[48] = v32;
      *v32 = v0;
      v32[1] = sub_D0964;
      v33 = 0xD000000000000023;
      v34 = 0x800000000012DD90;
LABEL_25:
      v66 = v30;
LABEL_28:

      return v83(v33, v34, v66);
    }

LABEL_16:
    v48 = v0[30];
    v49 = v0[25];
    v50 = v0[21];
    v51 = v0[22];
    v53 = v0[19];
    v52 = v0[20];
    v55 = v0[17];
    v54 = v0[18];
    v56 = v0[14];
    sub_FFAE8(7);
    (*(v50 + 104))(v51, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v52);
    (*(v54 + 16))(v53, v82, v55);
    mach_absolute_time();
    sub_12502C();
    v57 = sub_123B4C();
    v58 = [v57 targetTimer];

    v59 = [v58 shouldMatchAny];
    sub_8BAC();
    v60.super.super.isa = sub_125EFC(1).super.super.isa;
    isa = v60.super.super.isa;
    if (v59)
    {
      v62 = sub_125F0C();

      if (v62)
      {
        if (qword_15EE20 != -1)
        {
          swift_once();
        }

        v63 = "resetTimer#confirmTargetTimer";
        v64 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v83 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
        v65 = swift_task_alloc();
        v0[52] = v65;
        *v65 = v0;
        v65[1] = sub_D0F30;
        v66 = _swiftEmptyArrayStorage;
        v33 = 0xD00000000000001FLL;
        goto LABEL_27;
      }
    }

    else
    {
    }

    if (qword_15EE20 != -1)
    {
      swift_once();
    }

    v67 = sub_113D6C(0, 0);
    v0[54] = v67;
    sub_5AE8(&qword_15F180, &unk_126E10);
    v30 = swift_allocObject();
    v0[55] = v30;
    *(v30 + 16) = xmmword_126CB0;
    strcpy((v30 + 32), "speakableTimer");
    *(v30 + 47) = -18;
    *(v30 + 72) = type metadata accessor for TimerTimer(0);
    *(v30 + 48) = v67;
    v68 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v83 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v69 = swift_task_alloc();
    v0[56] = v69;
    *v69 = v0;
    v69[1] = sub_D1290;
    v34 = 0x800000000012E7E0;
    v33 = 0xD00000000000001DLL;
    goto LABEL_25;
  }

  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_84CC();
  swift_allocError();
  *v35 = 3;
  swift_willThrow();
  v36 = v0[38];
  v37 = v0[35];
  v39 = v0[31];
  v38 = v0[32];
  v40 = v0[30];
  v42 = v0[26];
  v41 = v0[27];
  v43 = v0[25];
  v44 = v0[22];
  v45 = v0[19];
  v80 = v0[16];
  v81 = v0[15];

  v46 = v0[1];

  return v46();
}

uint64_t sub_D03C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_D07EC, 0, 0);
  }

  else
  {
    v7 = v4[40];

    v4[43] = a1;
    v8 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
    v9 = swift_task_alloc();
    v4[44] = v9;
    *v9 = v6;
    v9[1] = sub_D0570;
    v10 = v4[38];
    v11 = v4[32];
    v12 = v4[27];
    v13 = v4[13];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v13, v10, v11, v12, 0, 0, 0, 0);
  }
}

uint64_t sub_D0570()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return _swift_task_switch(sub_D0684, 0, 0);
}

uint64_t sub_D0684()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 256);
  v12 = *(v0 + 280);
  v13 = *(v0 + 248);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v14 = *(v0 + 240);
  v15 = *(v0 + 208);
  v16 = *(v0 + 200);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = *(v0 + 152);
  v19 = *(v0 + 128);
  v20 = *(v0 + 120);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_D07EC()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v25 = v0[38];
  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[27];
  v10 = v0[23];
  v9 = v0[24];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v25, v4);
  v11 = v0[38];
  v12 = v0[35];
  v14 = v0[31];
  v13 = v0[32];
  v15 = v0[30];
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[19];
  v23 = v0[16];
  v24 = v0[15];
  v26 = v0[42];

  v21 = v0[1];

  return v21();
}

uint64_t sub_D0964(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_D0DA4, 0, 0);
  }

  else
  {
    v8 = v4[46];
    v7 = v4[47];
    v9 = v4[45];

    v4[50] = a1;
    v10 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
    v11 = swift_task_alloc();
    v4[51] = v11;
    *v11 = v6;
    v11[1] = sub_D0B28;
    v12 = v4[38];
    v13 = v4[31];
    v14 = v4[26];
    v15 = v4[13];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v15, v12, v13, v14, 0, 0, 0, 0);
  }
}

uint64_t sub_D0B28()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v4 = *v0;

  return _swift_task_switch(sub_D0C3C, 0, 0);
}

uint64_t sub_D0C3C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 248);
  v12 = *(v0 + 280);
  v13 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 224);
  v14 = *(v0 + 216);
  v15 = *(v0 + 240);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v16 = *(v0 + 200);
  v17 = *(v0 + 176);
  v18 = *(v0 + 152);
  v19 = *(v0 + 128);
  v20 = *(v0 + 120);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_D0DA4()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[39];
  v5 = v0[37];
  v25 = v0[36];
  v27 = v0[38];
  v23 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v10 = v0[23];
  v9 = v0[24];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v23, v7);
  (*(v5 + 8))(v27, v25);
  v11 = v0[38];
  v12 = v0[35];
  v14 = v0[31];
  v13 = v0[32];
  v15 = v0[30];
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[19];
  v24 = v0[16];
  v26 = v0[15];
  v28 = v0[49];

  v21 = v0[1];

  return v21();
}

uint64_t sub_D0F30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[6] = v2;
  v4[7] = a1;
  v4[8] = v1;
  v5 = v3[52];
  v8 = *v2;
  v4[53] = v1;

  if (v1)
  {
    v6 = sub_D1124;
  }

  else
  {
    v6 = sub_D104C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_D104C()
{
  v1 = v0[7];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[58] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[59] = v5;
  *v5 = v0;
  v5[1] = sub_D1610;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 7, v7, v6);
}

uint64_t sub_D1124()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 304);
  v11 = *(v0 + 280);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 240);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 120);
  v24 = *(v0 + 424);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_D1290(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[9] = v2;
  v4[10] = a1;
  v4[11] = v1;
  v5 = v3[56];
  v10 = *v2;
  v4[57] = v1;

  if (v1)
  {
    v6 = sub_D1494;
  }

  else
  {
    v8 = v4[54];
    v7 = v4[55];

    v6 = sub_D13BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_D13BC()
{
  v1 = v0[10];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[58] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[59] = v5;
  *v5 = v0;
  v5[1] = sub_D1610;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 7, v7, v6);
}

uint64_t sub_D1494()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[39];
  v4 = v0[37];
  v24 = v0[36];
  v26 = v0[38];
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[28];
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];

  (*(v8 + 8))(v9, v10);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v26, v24);
  v11 = v0[38];
  v12 = v0[35];
  v14 = v0[31];
  v13 = v0[32];
  v15 = v0[30];
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[19];
  v23 = v0[16];
  v25 = v0[15];
  v27 = v0[57];

  v21 = v0[1];

  return v21();
}

uint64_t sub_D1610()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 464);
  sub_5CA8(*(v2 + 120), &unk_162190, &unk_128500);

  if (v0)
  {
    v6 = sub_D18DC;
  }

  else
  {
    v6 = sub_D176C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_D176C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v12 = *(v0 + 280);
  v13 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v14 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v15 = *(v0 + 216);
  v16 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = *(v0 + 152);
  v19 = *(v0 + 128);
  v20 = *(v0 + 120);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_D18DC()
{
  v1 = *(v0 + 464);
  v24 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v24, v2);
  v10 = *(v0 + 304);
  v11 = *(v0 + 280);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 240);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 120);
  v25 = *(v0 + 480);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_D1A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_D1B08;

  return sub_CEF5C(a1, a2, a3);
}

uint64_t sub_D1B08()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_D1C3C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_D1C3C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_D1D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_D1DB8;

  return sub_CF764(a1, a2, a3);
}

uint64_t sub_D1DB8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_D1EEC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_D1EEC()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

unint64_t sub_D1FBC()
{
  result = qword_1620D0;
  if (!qword_1620D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1620D0);
  }

  return result;
}

uint64_t sub_D2024(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_12532C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_D20E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_12532C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s21ConfirmIntentStrategyVMa_0()
{
  result = qword_162150;
  if (!qword_162150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_D21D4()
{
  result = sub_54018();
  if (v1 <= 0x3F)
  {
    result = sub_12532C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_D2258()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1620E0);
  sub_5B30(v0, qword_1620E0);
  return sub_1257AC();
}

uint64_t sub_D22A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  if (qword_15EF30 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_1620E0);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "DismissTimer.ConfirmIntentStrategy.actionForInput() called.", v15, 2u);
  }

  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v18 = sub_12514C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_405FC(a1, v11, 0, v7, a2);
  sub_5CA8(v7, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v11, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_D2538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = sub_123CDC();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = sub_1252AC();
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v9 = *(v8 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v10 = sub_123D1C();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v13 = sub_123E4C();
  v3[32] = v13;
  v14 = *(v13 - 8);
  v3[33] = v14;
  v15 = *(v14 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v16 = sub_123DAC();
  v3[38] = v16;
  v17 = *(v16 - 8);
  v3[39] = v17;
  v18 = *(v17 + 64) + 15;
  v3[40] = swift_task_alloc();
  v19 = sub_123D6C();
  v3[41] = v19;
  v20 = *(v19 - 8);
  v3[42] = v20;
  v21 = *(v20 + 64) + 15;
  v3[43] = swift_task_alloc();
  v22 = sub_123A1C();
  v3[44] = v22;
  v23 = *(v22 - 8);
  v3[45] = v23;
  v24 = *(v23 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v25 = *(*(sub_5AE8(&unk_161EC0, &unk_126E20) - 8) + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v26 = type metadata accessor for TimerNLv3Intent();
  v3[56] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v28 = sub_123D3C();
  v3[59] = v28;
  v29 = *(v28 - 8);
  v3[60] = v29;
  v30 = *(v29 + 64) + 15;
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v31 = sub_124BCC();
  v3[63] = v31;
  v32 = *(v31 - 8);
  v3[64] = v32;
  v33 = *(v32 + 64) + 15;
  v3[65] = swift_task_alloc();

  return _swift_task_switch(sub_D2A10, 0, 0);
}

uint64_t sub_D2A10()
{
  v378 = v0;
  v1 = v0;
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);
  v4 = *(v1 + 472);
  v6 = *(v1 + 136);
  v5 = *(v1 + 144);
  sub_5AE8(&qword_1621A0, &unk_12A210);
  v7 = sub_123ABC();
  sub_123CCC();
  v8 = (*(v3 + 88))(v2, v4);
  if (v8 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(*(v1 + 480) + 96))(*(v1 + 496), *(v1 + 472));
LABEL_5:
    v11 = *(v1 + 520);
    v12 = *(v1 + 504);
    v13 = *(v1 + 464);
    v14 = *(*(v1 + 512) + 32);
    v14(v11, *(v1 + 496), v12);
    v14(v13, v11, v12);
    if (qword_15EF30 != -1)
    {
      swift_once();
    }

    v16 = *(v1 + 456);
    v15 = *(v1 + 464);
    v17 = sub_125ABC();
    sub_5B30(v17, qword_1620E0);
    sub_9848(v15, v16);
    v18 = sub_125AAC();
    v19 = sub_125DFC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 456);
    v22 = v1;
    if (v20)
    {
      v23 = *(v1 + 448);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v377[0] = v25;
      *v24 = 136315138;
      sub_98AC(&qword_161ED0);
      v26 = sub_12618C();
      v28 = v27;
      sub_97EC(v21);
      v29 = sub_8530(v26, v28, v377);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v18, v19, "TimerNLIntent: %s", v24, 0xCu);
      sub_5BB0(v25);
    }

    else
    {

      sub_97EC(v21);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    v1 = v22;
    v30 = *(v22 + 464);
    v31 = *(v22 + 448);
    sub_98AC(&qword_15FFA0);
    sub_12428C();
    if (*(v22 + 532) == 2 || (v32 = *(v22 + 464), v33 = *(v22 + 448), sub_12428C(), *(v22 + 533) == 1))
    {
      v34 = *(v22 + 464);
      v35 = *(v22 + 440);
      v37 = *(v22 + 352);
      v36 = *(v22 + 360);
      v38 = *(v1 + 128);
      v39 = &enum case for ConfirmationResponse.rejected(_:);
    }

    else
    {
      v34 = *(v22 + 464);
      v35 = *(v22 + 440);
      v37 = *(v22 + 352);
      v36 = *(v22 + 360);
      v66 = *(v1 + 128);
      v39 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    (*(v36 + 104))(v35, *v39, v37);
    (*(v36 + 56))(v35, 0, 1, v37);
    sub_1256CC();
    sub_1239CC();
    sub_97EC(v34);
    goto LABEL_22;
  }

  if (v8 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v9 = *(v1 + 496);
    (*(*(v1 + 480) + 96))(v9, *(v1 + 472));
    v10 = *(v9 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

    goto LABEL_5;
  }

  v372 = v1;
  if (v8 == enum case for Parse.directInvocation(_:))
  {
    v40 = *(v1 + 496);
    v41 = *(v1 + 248);
    v43 = *(v1 + 208);
    v42 = *(v1 + 216);
    (*(*(v1 + 480) + 96))(v40, *(v1 + 472));
    (*(v42 + 32))(v41, v40, v43);
    if (qword_15EF30 != -1)
    {
      swift_once();
    }

    v45 = *(v1 + 240);
    v44 = *(v1 + 248);
    v47 = *(v1 + 208);
    v46 = *(v1 + 216);
    v48 = sub_125ABC();
    sub_5B30(v48, qword_1620E0);
    v49 = *(v46 + 16);
    v49(v45, v44, v47);
    v50 = sub_125AAC();
    v51 = sub_125DFC();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v1 + 240);
    v355 = v49;
    if (v52)
    {
      v54 = v1;
      v55 = *(v1 + 232);
      v56 = *(v54 + 216);
      v365 = v7;
      v57 = *(v372 + 208);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v377[0] = v59;
      *v58 = 136315138;
      v49(v55, v53, v57);
      v60 = sub_125BAC();
      v62 = v61;
      v63 = v57;
      v7 = v365;
      v369 = *(v56 + 8);
      v369(v53, v63);
      v64 = v60;
      v1 = v372;
      v65 = sub_8530(v64, v62, v377);

      *(v58 + 4) = v65;
      _os_log_impl(&dword_0, v50, v51, "Handling direct invocation: %s", v58, 0xCu);
      sub_5BB0(v59);
    }

    else
    {
      v98 = *(v1 + 208);
      v99 = *(v1 + 216);

      v369 = *(v99 + 8);
      v369(v53, v98);
    }

    v100 = *(v1 + 400);
    v101 = *(v1 + 352);
    v102 = *(v1 + 360);
    v103 = *(v1 + 248);
    sub_12527C();
    if ((*(v102 + 48))(v100, 1, v101) != 1)
    {
      v195 = *(v1 + 440);
      v196 = *(v1 + 376);
      v197 = *(v1 + 352);
      v198 = *(v1 + 360);
      v199 = *(v1 + 248);
      v200 = *(v1 + 208);
      v201 = *(v1 + 216);
      v202 = *(v1 + 128);
      (*(v198 + 32))(v196, *(v1 + 400), v197);
LABEL_85:
      (*(v198 + 16))(v195, v196, v197);
      (*(v198 + 56))(v195, 0, 1, v197);
      sub_1256CC();
      sub_1239CC();
      (*(v198 + 8))(v196, v197);
      v369(v199, v200);
LABEL_22:
      v67 = *(v1 + 520);
      v68 = *(v1 + 488);
      v69 = *(v1 + 496);
      v71 = *(v1 + 456);
      v70 = *(v1 + 464);
      v73 = *(v1 + 432);
      v72 = *(v1 + 440);
      v75 = *(v1 + 416);
      v74 = *(v1 + 424);
      v76 = v1;
      v77 = *(v1 + 408);
      v331 = v76[50];
      v333 = v76[49];
      v335 = v76[48];
      v337 = v76[47];
      v339 = v76[46];
      v341 = v76[43];
      v343 = v76[40];
      v345 = v76[37];
      v347 = v76[36];
      v349 = v76[35];
      v351 = v76[34];
      v353 = v76[31];
      v356 = v76[30];
      v358 = v76[29];
      v362 = v76[28];
      v366 = v76[25];
      v370 = v76[24];
      v373 = v76[21];

      v78 = v76[1];
      goto LABEL_23;
    }

    v104 = *(v1 + 248);
    sub_5CA8(*(v1 + 400), &unk_161EC0, &unk_126E20);
    v105 = sub_123D0C();
    if (!v105)
    {
      goto LABEL_116;
    }

    v106 = v105;
    v107 = v7;
    v108 = *(v1 + 200);
    v109 = v1;
    v110 = *(v1 + 184);
    v111 = *(v109 + 176);
    v112 = *(v110 + 104);
    v112(v108, enum case for DirectInvocationUtils.Timer.UserInfoKey.buttonPressed(_:), v111);
    v113 = sub_12529C();
    v115 = v114;
    v116 = *(v110 + 8);
    v116(v108, v111);
    if (*(v106 + 16))
    {
      v117 = sub_8AD8(v113, v115);
      v119 = v118;

      if (v119)
      {
        sub_8B50(*(v106 + 56) + 32 * v117, v372 + 16);
        if (swift_dynamicCast())
        {
          v120._rawValue = &off_157950;
          v121 = sub_12613C(v120, *(v372 + 80));

          if (!v121)
          {
            LODWORD(v367) = 0;
            goto LABEL_125;
          }

          if (v121 == 1)
          {
            LODWORD(v367) = 1;
LABEL_125:
            v307 = *(v372 + 192);
            v308 = *(v372 + 176);
            v112(v307, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v308);
            v309 = sub_12529C();
            v311 = v310;
            v116(v307, v308);
            if (*(v106 + 16))
            {
              v312 = sub_8AD8(v309, v311);
              v314 = v313;

              v7 = v107;
              if (v314)
              {
                v1 = v372;
                sub_8B50(*(v106 + 56) + 32 * v312, v372 + 48);

                if (swift_dynamicCast())
                {
                  v315 = *(v372 + 96);
                  v316 = *(v372 + 104);
                  v317 = sub_B66D0();
                  if (v317 != 19)
                  {
                    if (sub_B6264(v317) == 1886352499 && v318 == 0xE400000000000000)
                    {

LABEL_139:
                      v320 = sub_125AAC();
                      v321 = sub_125DFC();
                      if (os_log_type_enabled(v320, v321))
                      {
                        v322 = swift_slowAlloc();
                        v323 = swift_slowAlloc();
                        v377[0] = v323;
                        *v322 = 136315138;
                        if (v367)
                        {
                          v324 = 0x6C65636E6163;
                        }

                        else
                        {
                          v324 = 7562617;
                        }

                        if (v367)
                        {
                          v325 = 0xE600000000000000;
                        }

                        else
                        {
                          v325 = 0xE300000000000000;
                        }

                        v326 = sub_8530(v324, v325, v377);

                        *(v322 + 4) = v326;
                        _os_log_impl(&dword_0, v320, v321, "Received confirmation directionInvocation, buttonPressed: %s", v322, 0xCu);
                        sub_5BB0(v323);
                      }

                      v195 = *(v1 + 440);
                      v198 = *(v1 + 360);
                      v196 = *(v1 + 368);
                      v197 = *(v1 + 352);
                      v199 = *(v1 + 248);
                      v200 = *(v1 + 208);
                      v327 = *(v1 + 216);
                      v328 = &enum case for ConfirmationResponse.rejected(_:);
                      v329 = *(v1 + 128);
                      if (!v367)
                      {
                        v328 = &enum case for ConfirmationResponse.confirmed(_:);
                      }

                      (*(*(v1 + 360) + 104))(*(v1 + 368), *v328, *(v1 + 352));
                      goto LABEL_85;
                    }

LABEL_138:
                    v319 = sub_1261BC();

                    if (v319)
                    {
                      goto LABEL_139;
                    }
                  }
                }

                goto LABEL_116;
              }
            }

            else
            {

              v7 = v107;
            }

            v1 = v372;
LABEL_116:
            v355(*(v1 + 224), *(v1 + 248), *(v1 + 208));
            v273 = sub_125AAC();
            v274 = sub_125DEC();
            if (os_log_type_enabled(v273, v274))
            {
              v276 = *(v1 + 224);
              v275 = *(v1 + 232);
              v360 = *(v372 + 216);
              v277 = *(v372 + 208);
              v278 = swift_slowAlloc();
              v279 = swift_slowAlloc();
              v377[0] = v279;
              *v278 = 136315138;
              v355(v275, v276, v277);
              v280 = sub_125BAC();
              v282 = v281;
              v283 = v276;
              v284 = v369;
              v369(v283, v277);
              v285 = sub_8530(v280, v282, v377);
              v1 = v372;

              *(v278 + 4) = v285;
              _os_log_impl(&dword_0, v273, v274, "Received unsupported directInvocation for timer confirmation: %s", v278, 0xCu);
              sub_5BB0(v279);
            }

            else
            {
              v287 = *(v1 + 216);
              v286 = *(v1 + 224);
              v288 = *(v1 + 208);

              v284 = v369;
              v369(v286, v288);
            }

            v289 = *(v1 + 248);
            v290 = *(v1 + 208);
            *(v1 + 529) = 0;
            sub_5AE8(&unk_15F1A0, &unk_126ED0);
            sub_84CC();
            swift_allocError();
            sub_1251BC();
            swift_willThrow();

            v284(v289, v290);
            goto LABEL_122;
          }
        }
      }
    }

    else
    {
    }

    v1 = v372;
    v7 = v107;
    goto LABEL_116;
  }

  if (v8 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v80 = *(v1 + 496);
    v81 = *(v1 + 432);
    v83 = *(v1 + 352);
    v82 = *(v1 + 360);
    (*(*(v1 + 480) + 96))(v80, *(v1 + 472));
    v84 = *v80;
    v85 = *(v82 + 56);
    v85(v81, 1, 1, v83);
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      if (qword_15EF30 != -1)
      {
        swift_once();
      }

      v86 = sub_125ABC();
      sub_5B30(v86, qword_1620E0);
      swift_unknownObjectRetain();
      v87 = sub_125AAC();
      v88 = sub_125DFC();
      swift_unknownObjectRelease();
      v89 = os_log_type_enabled(v87, v88);
      v90 = *(v1 + 432);
      if (v89)
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v377[0] = v92;
        *v91 = 136315138;
        *(v1 + 120) = v84;
        swift_unknownObjectRetain();
        sub_5AE8(&unk_160610, &unk_129CC0);
        v93 = sub_125BAC();
        v95 = v85;
        v96 = v7;
        v97 = sub_8530(v93, v94, v377);

        *(v91 + 4) = v97;
        v7 = v96;
        v85 = v95;
        _os_log_impl(&dword_0, v87, v88, "Received UserDialogAct - %s", v91, 0xCu);
        sub_5BB0(v92);
      }

      else
      {
      }

      sub_5CA8(v90, &unk_161EC0, &unk_126E20);
      v220 = *(v1 + 432);
      v221 = *(v1 + 352);
      (*(*(v1 + 360) + 104))(v220, enum case for ConfirmationResponse.confirmed(_:), v221);
      v85(v220, 0, 1, v221);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_15EF30 != -1)
      {
        swift_once();
      }

      v222 = sub_125ABC();
      sub_5B30(v222, qword_1620E0);
      v223 = sub_125AAC();
      v224 = sub_125DFC();
      if (os_log_type_enabled(v223, v224))
      {
        v225 = swift_slowAlloc();
        *v225 = 0;
        _os_log_impl(&dword_0, v223, v224, "Received UserDialogAct - UserRejected", v225, 2u);
      }

      v226 = *(v1 + 432);
      v227 = *(v1 + 352);
      v228 = *(v1 + 360);

      sub_5CA8(v226, &unk_161EC0, &unk_126E20);
      (*(v228 + 104))(v226, enum case for ConfirmationResponse.rejected(_:), v227);
      v85(v226, 0, 1, v227);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_15EF30 != -1)
      {
        swift_once();
      }

      v229 = sub_125ABC();
      sub_5B30(v229, qword_1620E0);
      v230 = sub_125AAC();
      v231 = sub_125DFC();
      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        *v232 = 0;
        _os_log_impl(&dword_0, v230, v231, "Received UserDialogAct - UserCancelled", v232, 2u);
      }

      v233 = *(v1 + 432);
      v234 = *(v1 + 352);
      v235 = *(v1 + 360);

      sub_5CA8(v233, &unk_161EC0, &unk_126E20);
      (*(v235 + 104))(v233, enum case for ConfirmationResponse.rejected(_:), v234);
      v85(v233, 0, 1, v234);
    }

    v236 = *(v1 + 424);
    v237 = *(v1 + 352);
    v238 = *(v1 + 360);
    sub_E344(*(v1 + 432), v236, &unk_161EC0, &unk_126E20);
    if ((*(v238 + 48))(v236, 1, v237) != 1)
    {
      v249 = *(v1 + 440);
      v375 = *(v1 + 432);
      v250 = *(v1 + 424);
      v251 = *(v1 + 392);
      v252 = v85;
      v253 = v1;
      v254 = *(v1 + 360);
      v255 = *(v253 + 352);
      v256 = *(v253 + 128);
      (*(v254 + 32))(v251, v250, v255);
      (*(v254 + 16))(v249, v251, v255);
      v252(v249, 0, 1, v255);
      sub_1256CC();
      sub_1239CC();
      swift_unknownObjectRelease();
      (*(v254 + 8))(v251, v255);
      v1 = v253;
      sub_5CA8(v375, &unk_161EC0, &unk_126E20);
      goto LABEL_22;
    }

    sub_5CA8(*(v1 + 424), &unk_161EC0, &unk_126E20);
    if (qword_15EF30 != -1)
    {
      swift_once();
    }

    v239 = sub_125ABC();
    sub_5B30(v239, qword_1620E0);
    swift_unknownObjectRetain();
    v240 = sub_125AAC();
    v241 = sub_125DEC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v240, v241))
    {
      v242 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v377[0] = v243;
      *v242 = 136315138;
      *(v1 + 112) = v84;
      swift_unknownObjectRetain();
      sub_5AE8(&unk_160610, &unk_129CC0);
      v244 = sub_125BAC();
      v246 = v1;
      v247 = sub_8530(v244, v245, v377);

      *(v242 + 4) = v247;
      v1 = v246;
      _os_log_impl(&dword_0, v240, v241, "Received unsupported userDialogAct for confirmation: %s", v242, 0xCu);
      sub_5BB0(v243);
    }

    v248 = *(v1 + 432);
    *(v1 + 531) = 0;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_5CA8(v248, &unk_161EC0, &unk_126E20);
  }

  else if (v8 == enum case for Parse.uso(_:))
  {
    v122 = *(v1 + 496);
    v123 = *(v1 + 472);
    v124 = *(v1 + 480);
    v125 = *(v1 + 416);
    v126 = *(v1 + 360);
    v367 = v7;
    v371 = *(v1 + 352);
    v127 = *(v1 + 336);
    v128 = *(v1 + 344);
    v130 = *(v1 + 320);
    v129 = *(v1 + 328);
    v131 = v1;
    v134 = v1 + 304;
    v133 = *(v1 + 304);
    v132 = *(v134 + 8);
    v7 = *(v131 + 264);
    (*(v124 + 96))(v122, v123);
    (*(v127 + 32))(v128, v122, v129);
    sub_123D5C();
    v135 = sub_123D9C();
    (*(v132 + 8))(v130, v133);
    v136 = v371;
    v369 = (v126 + 56);
    v363 = *(v126 + 56);
    v363(v125, 1, 1, v136);
    v137 = 0;
    v138 = *(v135 + 16);
    v1 = v7 + 8;
    while (v138 != v137)
    {
      if (v137 >= *(v135 + 16))
      {
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v139 = *(v372 + 296);
      v140 = *(v372 + 256);
      (*(v7 + 16))(v139, v135 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v137++, v140);
      v141 = sub_123DDC();
      (*(v7 + 8))(v139, v140);
      if (v141)
      {
        if (qword_15EF30 != -1)
        {
          swift_once();
        }

        v142 = sub_125ABC();
        sub_5B30(v142, qword_1620E0);
        v143 = sub_125AAC();
        v144 = sub_125DFC();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&dword_0, v143, v144, "USO parse userDialogActs contains hasAccepted; response is .confirmed.)", v145, 2u);
        }

        v146 = *(v372 + 416);
        v148 = *(v372 + 352);
        v147 = *(v372 + 360);

        sub_5CA8(v146, &unk_161EC0, &unk_126E20);
        (*(v147 + 104))(v146, enum case for ConfirmationResponse.confirmed(_:), v148);
        v363(v146, 0, 1, v148);
        break;
      }
    }

    v149 = 0;
    while (v138 != v149)
    {
      if (v149 >= *(v135 + 16))
      {
        goto LABEL_135;
      }

      v150 = *(v372 + 288);
      v151 = *(v372 + 256);
      (*(v7 + 16))(v150, v135 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v149++, v151);
      v152 = sub_123E2C();
      (*(v7 + 8))(v150, v151);
      if (v152)
      {
        if (qword_15EF30 != -1)
        {
          swift_once();
        }

        v153 = sub_125ABC();
        sub_5B30(v153, qword_1620E0);
        v154 = sub_125AAC();
        v155 = sub_125DFC();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_0, v154, v155, "USO parse userDialogActs contains hasWantedToProceed; response is .confirmed (unexpected!)", v156, 2u);
        }

        v157 = *(v372 + 416);
        v159 = *(v372 + 352);
        v158 = *(v372 + 360);

        sub_5CA8(v157, &unk_161EC0, &unk_126E20);
        (*(v158 + 104))(v157, enum case for ConfirmationResponse.confirmed(_:), v159);
        v363(v157, 0, 1, v159);
        break;
      }
    }

    v160 = 0;
    while (v138 != v160)
    {
      if (v160 >= *(v135 + 16))
      {
        goto LABEL_136;
      }

      v161 = *(v372 + 280);
      v162 = *(v372 + 256);
      (*(v7 + 16))(v161, v135 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v160++, v162);
      v163 = sub_123DEC();
      (*(v7 + 8))(v161, v162);
      if (v163)
      {
        if (qword_15EF30 != -1)
        {
          swift_once();
        }

        v164 = sub_125ABC();
        sub_5B30(v164, qword_1620E0);
        v165 = sub_125AAC();
        v166 = sub_125DFC();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&dword_0, v165, v166, "USO parse userDialogActs contains hasRejected; response is .rejected.", v167, 2u);
        }

        v168 = *(v372 + 416);
        v170 = *(v372 + 352);
        v169 = *(v372 + 360);

        sub_5CA8(v168, &unk_161EC0, &unk_126E20);
        (*(v169 + 104))(v168, enum case for ConfirmationResponse.rejected(_:), v170);
        v363(v168, 0, 1, v170);
        break;
      }
    }

    v171 = 0;
    while (v138 != v171)
    {
      if (v171 >= *(v135 + 16))
      {
        goto LABEL_137;
      }

      v172 = *(v372 + 272);
      v173 = *(v372 + 256);
      (*(v7 + 16))(v172, v135 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v171++, v173);
      v174 = sub_123DFC();
      (*(v7 + 8))(v172, v173);
      if (v174)
      {
        if (qword_15EF30 != -1)
        {
          swift_once();
        }

        v175 = sub_125ABC();
        sub_5B30(v175, qword_1620E0);
        v176 = sub_125AAC();
        v177 = sub_125DFC();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&dword_0, v176, v177, "USO parse userDialogActs contains hasCancelled; response is .rejected.", v178, 2u);
        }

        v179 = *(v372 + 416);
        v181 = *(v372 + 352);
        v180 = *(v372 + 360);

        sub_5CA8(v179, &unk_161EC0, &unk_126E20);
        (*(v180 + 104))(v179, enum case for ConfirmationResponse.rejected(_:), v181);
        v363(v179, 0, 1, v181);
        break;
      }
    }

    v1 = v372;
    v182 = *(v372 + 408);
    v184 = *(v372 + 352);
    v183 = *(v372 + 360);
    sub_E344(*(v372 + 416), v182, &unk_161EC0, &unk_126E20);
    if ((*(v183 + 48))(v182, 1, v184) != 1)
    {
      v263 = *(v372 + 440);
      v265 = *(v372 + 408);
      v264 = *(v372 + 416);
      v266 = *(v372 + 384);
      v267 = *(v372 + 360);
      v268 = *(v372 + 352);
      v359 = *(v372 + 344);
      v269 = *(v372 + 336);
      v270 = *(v372 + 328);
      v271 = *(v372 + 128);

      (*(v267 + 32))(v266, v265, v268);
      (*(v267 + 16))(v263, v266, v268);
      v363(v263, 0, 1, v268);
      sub_1256CC();
      sub_1239CC();
      v272 = v266;
      v1 = v372;
      (*(v267 + 8))(v272, v268);
      sub_5CA8(v264, &unk_161EC0, &unk_126E20);
      (*(v269 + 8))(v359, v270);
      goto LABEL_22;
    }

    sub_5CA8(*(v372 + 408), &unk_161EC0, &unk_126E20);
    if (qword_15EF30 != -1)
    {
      swift_once();
    }

    v185 = sub_125ABC();
    sub_5B30(v185, qword_1620E0);

    v186 = sub_125AAC();
    v187 = sub_125DEC();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = *(v372 + 256);
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v377[0] = v190;
      *v189 = 136315138;
      v191 = sub_125C7C();
      v193 = v192;

      v194 = sub_8530(v191, v193, v377);
      v1 = v372;

      *(v189 + 4) = v194;
      _os_log_impl(&dword_0, v186, v187, "Received unsupported userDialogActs for confirmation: %s", v189, 0xCu);
      sub_5BB0(v190);
    }

    else
    {
    }

    v291 = *(v1 + 416);
    v293 = *(v1 + 336);
    v292 = *(v1 + 344);
    v294 = *(v1 + 328);
    *(v1 + 530) = 0;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    sub_5CA8(v291, &unk_161EC0, &unk_126E20);
    (*(v293 + 8))(v292, v294);
  }

  else
  {
    if (qword_15EF30 != -1)
    {
      swift_once();
    }

    v204 = *(v1 + 160);
    v203 = *(v1 + 168);
    v205 = *(v1 + 152);
    v206 = *(v1 + 136);
    v207 = sub_125ABC();
    sub_5B30(v207, qword_1620E0);
    (*(v204 + 16))(v203, v206, v205);
    v208 = sub_125AAC();
    v209 = sub_125DEC();
    if (os_log_type_enabled(v208, v209))
    {
      v210 = *(v1 + 488);
      v211 = *(v1 + 472);
      v213 = *(v1 + 160);
      v212 = *(v1 + 168);
      v374 = *(v1 + 152);
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v377[0] = v215;
      *v214 = 136315138;
      sub_123CCC();
      v216 = sub_125BAC();
      v218 = v217;
      (*(v213 + 8))(v212, v374);
      v219 = sub_8530(v216, v218, v377);

      *(v214 + 4) = v219;
      _os_log_impl(&dword_0, v208, v209, "Received not an supported input: %s", v214, 0xCu);
      sub_5BB0(v215);
    }

    else
    {
      v258 = *(v1 + 160);
      v257 = *(v1 + 168);
      v259 = *(v1 + 152);

      (*(v258 + 8))(v257, v259);
    }

    v260 = *(v1 + 496);
    v261 = *(v1 + 472);
    v262 = *(v1 + 480);
    *(v1 + 528) = 0;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    (*(v262 + 8))(v260, v261);
  }

LABEL_122:
  v295 = *(v1 + 520);
  v296 = *(v1 + 488);
  v297 = *(v1 + 496);
  v299 = *(v1 + 456);
  v298 = *(v1 + 464);
  v301 = *(v1 + 432);
  v300 = *(v1 + 440);
  v302 = v1;
  v305 = v1 + 416;
  v304 = *(v1 + 416);
  v303 = *(v305 + 8);
  v306 = v302[51];
  v330 = v302[50];
  v332 = v302[49];
  v334 = v302[48];
  v336 = v302[47];
  v338 = v302[46];
  v340 = v302[43];
  v342 = v302[40];
  v344 = v302[37];
  v346 = v302[36];
  v348 = v302[35];
  v350 = v302[34];
  v352 = v302[31];
  v354 = v302[30];
  v357 = v302[29];
  v361 = v302[28];
  v364 = v302[25];
  v368 = v302[24];
  v376 = v302[21];

  v78 = v302[1];
LABEL_23:

  return v78();
}

uint64_t sub_D4F40(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_5AE8(&unk_162190, &unk_128500) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_125ABC();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_124FFC();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_12501C();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v14 = sub_12368C();
  v2[18] = v14;
  v15 = *(v14 - 8);
  v2[19] = v15;
  v16 = *(v15 + 64) + 15;
  v2[20] = swift_task_alloc();
  v17 = sub_12392C();
  v2[21] = v17;
  v18 = *(v17 - 8);
  v2[22] = v18;
  v19 = *(v18 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_D5204, 0, 0);
}

uint64_t sub_D5204()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[3];
  sub_FFAE8(10);
  sub_12362C();
  v4 = *(_s21ConfirmIntentStrategyVMa_0() + 20);
  sub_12532C();
  v5 = sub_1251EC();
  v6 = sub_1251FC();
  v45 = v5;
  if (v6 && (v7 = v6, sub_12595C(), v9 = v8, v7, v9))
  {
    v10 = v0[17];
    sub_125BCC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v0[17];
  v13 = sub_124E4C();
  v46 = *(v13 - 8);
  v14 = *(v46 + 56);
  v15 = 1;
  v14(v12, v11, 1, v13);
  v16 = sub_1251FC();
  if (v16)
  {
    v17 = v16;
    sub_12596C();
    v19 = v18;

    if (v19)
    {
      v20 = v0[16];
      sub_125BCC();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }
  }

  v22 = v0[9];
  v21 = v0[10];
  v23 = v0[8];
  v14(v0[16], v15, 1, v13);
  (*(v22 + 104))(v21, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v23);
  if (qword_15EF30 != -1)
  {
    swift_once();
  }

  v24 = v0[13];
  v25 = v0[10];
  v26 = v0[6];
  v27 = v0[7];
  v28 = v0[5];
  v29 = sub_5B30(v28, qword_1620E0);
  (*(v26 + 16))(v27, v29, v28);
  mach_absolute_time();
  sub_12502C();
  if (qword_15EEE8 != -1)
  {
    swift_once();
  }

  v30 = v0[17];
  v31 = v0[15];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v32 = swift_allocObject();
  v0[24] = v32;
  *(v32 + 16) = xmmword_127990;
  *(v32 + 32) = 0x6E6F737265507369;
  *(v32 + 40) = 0xEA00000000006C61;
  *(v32 + 48) = (v45 ^ 1) & 1;
  *(v32 + 72) = &type metadata for Bool;
  *(v32 + 80) = 0x6E756D6D6F437369;
  *(v32 + 88) = 0xEA00000000006C61;
  *(v32 + 96) = v45 & 1;
  *(v32 + 120) = &type metadata for Bool;
  *(v32 + 128) = 0x614E656369766564;
  *(v32 + 136) = 0xEA0000000000656DLL;
  sub_E344(v30, v31, &unk_15F170, &unk_126E00);
  v33 = *(v46 + 48);
  v34 = v33(v31, 1, v13);
  v35 = v0[15];
  if (v34 == 1)
  {
    sub_5CA8(v0[15], &unk_15F170, &unk_126E00);
    *(v32 + 144) = 0u;
    *(v32 + 160) = 0u;
  }

  else
  {
    *(v32 + 168) = v13;
    v36 = sub_23B4C((v32 + 144));
    (*(v46 + 32))(v36, v35, v13);
  }

  v37 = v0[16];
  v38 = v0[14];
  *(v32 + 176) = 0x656D614E6D6F6F72;
  *(v32 + 184) = 0xE800000000000000;
  sub_E344(v37, v38, &unk_15F170, &unk_126E00);
  v39 = v33(v38, 1, v13);
  v40 = v0[14];
  if (v39 == 1)
  {
    sub_5CA8(v0[14], &unk_15F170, &unk_126E00);
    *(v32 + 192) = 0u;
    *(v32 + 208) = 0u;
  }

  else
  {
    *(v32 + 216) = v13;
    v41 = sub_23B4C((v32 + 192));
    (*(v46 + 32))(v41, v40, v13);
  }

  v42 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v47 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v43 = swift_task_alloc();
  v0[25] = v43;
  *v43 = v0;
  v43[1] = sub_D5740;

  return v47(0xD000000000000025, 0x800000000012E8D0, v32);
}

uint64_t sub_D5740(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = sub_D5A94;
  }

  else
  {
    v8 = *(v4 + 192);
    *(v4 + 216) = a1;

    v7 = sub_D5870;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D5870()
{
  (*(v0[22] + 56))(v0[4], 1, 1, v0[21]);
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_D5934;
  v2 = v0[27];
  v3 = v0[13];
  v4 = v0[4];
  v5 = v0[2];

  return sub_F2BE4(v5, 10, v4, v3);
}

uint64_t sub_D5934()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 232) = v0;

  sub_5CA8(v4, &unk_162190, &unk_128500);

  if (v0)
  {
    v5 = sub_D5D8C;
  }

  else
  {
    v5 = sub_D5C18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D5A94()
{
  v1 = v0[24];

  v17 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[19];
  v11 = v0[18];
  v12 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v13 = v0[15];
  v14 = v0[14];
  v8 = v0[10];
  v15 = v0[7];
  v16 = v0[4];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_5CA8(v7, &unk_15F170, &unk_126E00);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  (*(v5 + 8))(v4, v11);
  (*(v3 + 8))(v2, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D5C18()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[19];
  v10 = v0[18];
  v11 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v12 = v0[15];
  v13 = v0[14];
  v7 = v0[10];
  v14 = v0[7];
  v15 = v0[4];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  (*(v4 + 8))(v3, v10);
  (*(v2 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_D5D8C()
{
  v16 = v0[29];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[19];
  v10 = v0[18];
  v11 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v12 = v0[15];
  v13 = v0[14];
  v7 = v0[10];
  v14 = v0[7];
  v15 = v0[4];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  (*(v4 + 8))(v3, v10);
  (*(v2 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_D5F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_D2538(a1, a2, a3);
}

uint64_t sub_D5FD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5D08;

  return sub_D4F40(a1);
}

uint64_t sub_D6068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_D612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_503C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_D61F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_5D08;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for SetTimerAttributeCATs_Async()
{
  result = qword_1621A8;
  if (!qword_1621A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D6348(uint64_t a1, uint64_t a2)
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

uint64_t sub_D64D8(uint64_t *a1)
{
  sub_12564C();
  sub_12563C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_160700, &qword_1281B8);
  sub_1233AC();
  sub_5AE8(&qword_1621F8, &qword_12A260);
  sub_5C60(&qword_162200, &qword_1621F8, &qword_12A260);
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v5);
  sub_D67A0();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_D67F4();
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v3);
  sub_5AE8(&qword_162218, &qword_12A268);
  sub_5C60(&qword_162220, &qword_162218, &qword_12A268);
  sub_12337C();
  sub_1233CC();
  sub_5BB0(a1);
  sub_D6848(v3);
  sub_D68B0(v4);
  return sub_D6904(v5);
}

uint64_t sub_D6714(void *a1)
{
  *a1 = sub_DE2F0();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_D67A0()
{
  result = qword_162208;
  if (!qword_162208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162208);
  }

  return result;
}

unint64_t sub_D67F4()
{
  result = qword_162210;
  if (!qword_162210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162210);
  }

  return result;
}

uint64_t sub_D6848(uint64_t a1)
{
  v2 = sub_5AE8(&qword_162218, &qword_12A268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SIRINLUUserDialogAct.firstUsoTask.getter()
{
  v0 = sub_12425C();
  if (v0 >> 62)
  {
    v12 = v0;
    v13 = sub_1260FC();
    v0 = v12;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = sub_125FFC();
      goto LABEL_6;
    }

    if (*(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
    {
      v1 = *(v0 + 32);

LABEL_6:

      if (qword_15EF38 != -1)
      {
        swift_once();
      }

      v2 = sub_125ABC();
      sub_5B30(v2, qword_162228);

      v3 = sub_125AAC();
      v4 = sub_125DFC();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v23[0] = swift_slowAlloc();
        *v5 = 136315394;
        v6 = sub_124B9C();
        v8 = sub_8530(v6, v7, v23);

        *(v5 + 4) = v8;
        *(v5 + 12) = 2080;
        v9 = sub_124B8C();
        v11 = sub_8530(v9, v10, v23);

        *(v5 + 14) = v11;
        _os_log_impl(&dword_0, v3, v4, "NLv4TranslationParse: Input is entity=%s verb=%s", v5, 0x16u);
        swift_arrayDestroy();
      }

      return v1;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_15EF38 != -1)
  {
LABEL_19:
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_162228);
  swift_unknownObjectRetain();
  v15 = sub_125AAC();
  v16 = sub_125DEC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 136315138;
    swift_unknownObjectRetain();
    v19 = sub_125BAC();
    v21 = sub_8530(v19, v20, v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, v15, v16, "NLv4TranslationParse: usoTasks are empty in UserDialogAct %s ", v17, 0xCu);
    sub_5BB0(v18);
  }

  return 0;
}

uint64_t sub_D6E14()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162228);
  sub_5B30(v0, qword_162228);
  return sub_1257AC();
}

uint64_t sub_D6ED8()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162240);
  sub_5B30(v0, qword_162240);
  return sub_12578C();
}

uint64_t sub_D6F24(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  return _swift_task_switch(sub_D6F70, 0, 0);
}

uint64_t sub_D6F70()
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
    _os_log_impl(&dword_0, v2, v3, "ResponseTimerDisambiguationFlowProvider.makeIntentPromptAnswer(choice:)", v4, 2u);
  }

  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  sub_5AE8(&qword_15F900, &qword_12A800);
  v9 = *(v5 + 104);
  v0[3] = v9;
  v12 = v6 + 80;
  v11 = *(v6 + 80);
  v10 = *(v12 + 8);
  v13 = *(v10 + 8);

  v14 = v9;
  v13(v7, v11, v10);

  v15 = v0[2];
  sub_1239BC();
  v16 = v0[1];

  return v16();
}

uint64_t sub_D7120()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_5BB0((v0 + 40));
  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return v0;
}

uint64_t sub_D7170()
{
  sub_D7120();

  return swift_deallocClassInstance();
}

void sub_D71C0()
{
  sub_DC350();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_D72B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NeedsDisambiguationDetailedFlowProvider.authenticationRequirements.getter(a1, WitnessTable);
}

uint64_t sub_D7318(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_D6F24(a1, v5);
}

uint64_t sub_D73D0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 96);

  return v1;
}

uint64_t sub_D7404(uint64_t a1)
{
  v3 = async function pointer to NeedsDisambiguationDetailedSelectionFlowProvider.makeAllItemsFlow()[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = type metadata accessor for ResponseTimerDisambiguationFlowProvider();
  WitnessTable = swift_getWitnessTable();
  *v4 = v1;
  v4[1] = sub_23CC8;

  return NeedsDisambiguationDetailedSelectionFlowProvider.makeAllItemsFlow()(v7, WitnessTable);
}

uint64_t sub_D74D8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to NeedsDisambiguationDetailedSelectionFlowProvider.makeWindowingConfiguration()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  v9 = type metadata accessor for ResponseTimerDisambiguationFlowProvider();
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_5D08;

  return NeedsDisambiguationDetailedSelectionFlowProvider.makeWindowingConfiguration()(a1, v9, WitnessTable);
}

uint64_t sub_D75B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = async function pointer to NeedsDisambiguationDetailedSelectionFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for ResponseTimerDisambiguationFlowProvider();
  WitnessTable = swift_getWitnessTable();
  *v8 = v3;
  v8[1] = sub_23CC8;

  return NeedsDisambiguationDetailedSelectionFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(a1, v6, v11, WitnessTable);
}

uint64_t sub_D76A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MultipleChoicePromptWindowingFlowProvider.makeConclusionFlow(paginationParameters:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23CC8;

  return MultipleChoicePromptWindowingFlowProvider.makeConclusionFlow(paginationParameters:)(a1, a2, a3);
}

uint64_t sub_D7750(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = async function pointer to NeedsDisambiguationDetailedSelectionFlowProvider.makeWindowFlow(paginationParameters:windowContent:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for ResponseTimerDisambiguationFlowProvider();
  WitnessTable = swift_getWitnessTable();
  *v8 = v3;
  v8[1] = sub_23CC8;

  return NeedsDisambiguationDetailedSelectionFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(a1, v6, v11, WitnessTable);
}

void sub_D783C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_5AE8(&qword_1623F8, &unk_12A7F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_123C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v16 = sub_125ABC();
  sub_5B30(v16, qword_162240);
  v17 = sub_125AAC();
  v18 = sub_125DFC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v23 = v15;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "ResponseTimerSimpleDisambiguationStrategy.actionForInput(input:) called.", v19, 2u);
    v15 = v23;
  }

  v20 = qword_1622D8;
  swift_beginAccess();
  sub_DDCCC(v3 + v20, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_5CA8(v10, &qword_1623F8, &unk_12A7F0);
    v21 = 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v22 = sub_123C0C();
    v21 = ((v22 ^ sub_123BFC()) & 1) != 0 || (sub_123C0C() & 1) == 0 || sub_123BDC() != 0;
    (*(v12 + 8))(v15, v11);
  }

  sub_A11D4(a1, v21, *(v6 + 80), a2);
}

uint64_t sub_D7B58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_123C1C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_D7C1C, 0, 0);
}

uint64_t sub_D7C1C()
{
  v1 = v0[7];
  sub_123BCC();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_D7CC0;
  v3 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_D7ECC(v6, v4, v3);
}

uint64_t sub_D7CC0()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_D7E68, 0, 0);
  }

  else
  {
    v7 = v6[7];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_D7E68()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_D7ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = type metadata accessor for TimerBaseDisambiguationParameters(0);
  v4[27] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v7 = sub_12368C();
  v4[29] = v7;
  v8 = *(v7 - 8);
  v4[30] = v8;
  v9 = *(v8 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v10 = sub_1237EC();
  v4[33] = v10;
  v11 = *(v10 - 8);
  v4[34] = v11;
  v12 = *(v11 + 64) + 15;
  v4[35] = swift_task_alloc();
  v13 = *(*(sub_124EDC() - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v14 = sub_12397C();
  v4[37] = v14;
  v15 = *(v14 - 8);
  v4[38] = v15;
  v16 = *(v15 + 64) + 15;
  v4[39] = swift_task_alloc();
  v17 = sub_1239AC();
  v4[40] = v17;
  v18 = *(v17 - 8);
  v4[41] = v18;
  v19 = *(v18 + 64) + 15;
  v4[42] = swift_task_alloc();
  v20 = sub_125ABC();
  v4[43] = v20;
  v21 = *(v20 - 8);
  v4[44] = v21;
  v22 = *(v21 + 64) + 15;
  v4[45] = swift_task_alloc();
  v23 = sub_124FFC();
  v4[46] = v23;
  v24 = *(v23 - 8);
  v4[47] = v24;
  v25 = *(v24 + 64) + 15;
  v4[48] = swift_task_alloc();
  v26 = sub_12501C();
  v4[49] = v26;
  v27 = *(v26 - 8);
  v4[50] = v27;
  v28 = *(v27 + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v29 = sub_124CCC();
  v4[53] = v29;
  v30 = *(v29 - 8);
  v4[54] = v30;
  v31 = *(v30 + 64) + 15;
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v32 = sub_1250BC();
  v4[57] = v32;
  v33 = *(v32 - 8);
  v4[58] = v33;
  v34 = *(v33 + 64) + 15;
  v4[59] = swift_task_alloc();
  v35 = sub_12392C();
  v4[60] = v35;
  v36 = *(v35 - 8);
  v4[61] = v36;
  v37 = *(v36 + 64) + 15;
  v4[62] = swift_task_alloc();
  v38 = *(*(sub_5AE8(&qword_1623F8, &unk_12A7F0) - 8) + 64) + 15;
  v4[63] = swift_task_alloc();

  return _swift_task_switch(sub_D83B0, 0, 0);
}

uint64_t sub_D83B0()
{
  v160 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = sub_1257EC();
  v4 = sub_1133B8(v2, v3);
  *(v0 + 512) = v4;
  v5 = *(v1 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v129 = *(v1 + 16);
    }

    v147 = sub_1260FC();
  }

  else
  {
    v147 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = *(v0 + 504);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = sub_123C1C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = qword_1622D8;
  swift_beginAccess();
  sub_7CC5C(v6, v7 + v11, &qword_1623F8, &unk_12A7F0);
  swift_endAccess();
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v12 = sub_5B30(*(v0 + 344), qword_162240);

  v13 = sub_125AAC();
  LOBYTE(v14) = sub_125DFC();
  v150 = v4;
  v152 = v12;
  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_10;
  }

  v15 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v159[0] = v12;
  *v15 = 134218242;
  if (v4 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1260FC())
  {
    *(v15 + 4) = i;

    *(v15 + 12) = 2080;
    type metadata accessor for TimerTimer(0);
    v17 = sub_125C7C();
    v19 = sub_8530(v17, v18, v159);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_0, v13, v14, "ResponseTimerDisambiguationStrategy.makePromptForItems(items:paginationParameters:) Converted %ld timers to send to dialog: %s", v15, 0x16u);
    sub_5BB0(v12);

    v12 = v152;
LABEL_10:
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);
    v22 = *(v0 + 192);
    v23 = *(v1 + 16);

    sub_123BDC();
    sub_DDC84(&qword_162400, &type metadata accessor for SiriTimer);
    v24 = sub_12535C();

    v1 = qword_1622E0;
    v155 = v24;
    if (v24 != *(v21 + qword_1622E0))
    {
      *(*(v0 + 208) + qword_1622E8) = 0;
    }

    v25 = *(v0 + 208);

    v26 = sub_125AAC();
    v27 = sub_125DFC();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 208);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v159[0] = v31;
      *v30 = 134218498;
      v15 = v21;
      *(v30 + 4) = *(v21 + v1);
      *(v30 + 12) = 2048;
      *(v30 + 14) = *(v29 + qword_1622E8);

      *(v30 + 22) = 2080;
      *(v0 + 176) = v155;
      v32 = sub_12618C();
      v34 = sub_8530(v32, v33, v159);

      *(v30 + 24) = v34;
      _os_log_impl(&dword_0, v26, v27, "[makePromptForItems] window=%ld, promptCount=%ld, thisWindow=%s", v30, 0x20u);
      sub_5BB0(v31);

      v12 = v152;
    }

    else
    {
      v15 = v21;
      v35 = *(v0 + 208);
    }

    v36 = *(v0 + 208);
    v14 = qword_1622E8;
    if (*(v36 + qword_1622E8))
    {
      v37 = *(v15 + v1);
      v38 = v37 != 0x8000000000000000 && v155 == v37;
      v39 = v38;
      v144 = v39;
    }

    else
    {
      v144 = 0;
    }

    v13 = *(v0 + 200);
    v40 = *(v36 + 32);
    if (sub_123C0C())
    {
      v13 = *(v0 + 200);
      v41 = sub_123BFC() ^ 1;
    }

    else
    {
      v41 = 1;
    }

    sub_101208(*(v0 + 192), v40, v41 & 1, *(v0 + 496));
    *(v15 + v1) = v155;
    v42 = *(v36 + v14);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (!v43)
    {
      break;
    }

    __break(1u);
LABEL_63:
    ;
  }

  *(v36 + v14) = v44;
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v45 = *(v0 + 48);
  sub_23B08((v0 + 16), *(v0 + 40));
  v46 = sub_1235DC();
  sub_5BB0((v0 + 16));
  if (v46)
  {
    goto LABEL_31;
  }

  v47 = *(v0 + 464);
  v48 = *(v0 + 472);
  v49 = *(v0 + 456);
  sub_1250AC();
  v50 = sub_12504C();
  v156 = *(v47 + 8);
  v156(v48, v49);
  if (!v50)
  {
    goto LABEL_31;
  }

  v52 = *(v0 + 440);
  v51 = *(v0 + 448);
  v54 = *(v0 + 424);
  v53 = *(v0 + 432);
  sub_124C7C();
  sub_124C6C();
  sub_124C3C();

  sub_1254FC();

  sub_124CBC();
  sub_DDC84(&qword_161B78, &type metadata accessor for ResponseMode);
  v55 = sub_125B7C();
  v56 = *(v53 + 8);
  v56(v52, v54);
  v56(v51, v54);
  if (v55)
  {
LABEL_31:

    v57 = sub_125AAC();
    v58 = sub_125DFC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 134217984;
      if (v150 >> 62)
      {
        v60 = sub_1260FC();
      }

      else
      {
        v60 = *(&dword_10 + (v150 & 0xFFFFFFFFFFFFFF8));
      }

      *(v59 + 4) = v60;

      _os_log_impl(&dword_0, v57, v58, "[makePromptForItems] Using disambiguation pattern with %ld items", v59, 0xCu);
    }

    else
    {
    }

    v61 = sub_648C8(*(v0 + 192), v40);
    *(v0 + 664) = v61;
    if (v61)
    {
      v62 = v61;
      v63 = objc_opt_self();
      *(v0 + 160) = 0;
      v64 = [v63 archivedDataWithRootObject:v62 requiringSecureCoding:1 error:v0 + 160];
      v65 = *(v0 + 160);
      if (v64)
      {
        v66 = *(v0 + 376);
        v67 = *(v0 + 384);
        v68 = *(v0 + 360);
        v69 = *(v0 + 352);
        v131 = *(v0 + 368);
        v132 = *(v0 + 344);
        v70 = *(v0 + 224);
        v135 = *(v0 + 408);
        v138 = *(v0 + 216);
        v71 = *(v0 + 200);
        v133 = *(v0 + 208);
        v157 = sub_122EFC();
        v73 = v72;
        v141 = v72;

        *(v0 + 672) = v157;
        *(v0 + 680) = v73;
        (*(v66 + 104))(v67, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v131);
        (*(v69 + 16))(v68, v152, v132);
        mach_absolute_time();
        sub_12502C();
        v136 = *(v133 + 24);
        v153 = sub_123BEC();
        LOBYTE(v66) = sub_123C0C();
        v74 = sub_123BFC();
        LOBYTE(v71) = sub_123BBC();
        v75 = v138[14];
        v76 = sub_124E4C();
        v77 = *(*(v76 - 8) + 56);
        v77(v70 + v75, 1, 1, v76);
        v77(v70 + v138[15], 1, 1, v76);
        *v70 = 0;
        *(v70 + 8) = 0;
        *(v70 + 16) = 1;
        *(v70 + 17) = v153 & 1;
        *(v70 + 18) = v66 & 1;
        *(v70 + 19) = v74 & 1;
        *(v70 + 20) = v71 & 1;
        *(v70 + 21) = v144;
        *(v70 + 24) = v150;
        *(v70 + 32) = 0;
        *(v70 + 40) = 1;
        *(v70 + 48) = 0;
        *(v70 + 56) = 1;
        v78 = v70 + v138[16];
        *v78 = 0;
        *(v78 + 8) = 1;
        sub_DB360(v70, v157, v141, v147);
        v79 = sub_104248();
        *(v0 + 688) = v79;
        v80 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v81 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
        v82 = swift_task_alloc();
        *(v0 + 696) = v82;
        *v82 = v0;
        v82[1] = sub_DA8A0;
        v83 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v81);
        v84 = 0x800000000012EA80;
        v85 = 0xD000000000000018;
        v86 = v79;
LABEL_39:

        return v83(v85, v84, v86);
      }

      v92 = v65;

      sub_122E8C();

      swift_willThrow();
    }

    else
    {

      v88 = sub_125AAC();
      v89 = sub_125DFC();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_0, v88, v89, "Could not get timer action from timer.", v90, 2u);
      }

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0);
      swift_allocError();
      *v91 = 1;
      swift_willThrow();
    }

    v93 = *(v0 + 504);
    v94 = *(v0 + 472);
    v95 = *(v0 + 440);
    v96 = *(v0 + 448);
    v98 = *(v0 + 408);
    v97 = *(v0 + 416);
    v99 = *(v0 + 384);
    v100 = *(v0 + 360);
    v139 = *(v0 + 336);
    v142 = *(v0 + 312);
    v145 = *(v0 + 288);
    v148 = *(v0 + 280);
    v151 = *(v0 + 256);
    v154 = *(v0 + 248);
    v158 = *(v0 + 224);
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));

    v101 = *(v0 + 8);

    return v101();
  }

  else
  {
    v102 = *(v0 + 192);

    v103 = sub_125AAC();
    v104 = sub_125DFC();
    v105 = os_log_type_enabled(v103, v104);
    v106 = *(v0 + 192);
    if (v105)
    {
      v107 = swift_slowAlloc();
      *v107 = 134217984;
      if (v106 >> 62)
      {
        *(v0 + 192);
        v130 = v107;
        v108 = sub_1260FC();
        v107 = v130;
      }

      else
      {
        v108 = *(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8));
      }

      v109 = *(v0 + 192);
      *(v107 + 4) = v108;
      v110 = v107;

      _os_log_impl(&dword_0, v103, v104, "[makePromptForItems] Using multi-timer snippet model for %ld timers.", v110, 0xCu);
    }

    else
    {
      v111 = *(v0 + 192);
    }

    v112 = *(v0 + 472);
    v146 = *(v0 + 416);
    v149 = *(v0 + 456);
    v113 = *(v0 + 376);
    v134 = *(v0 + 384);
    v137 = *(v0 + 368);
    v114 = *(v0 + 352);
    v140 = *(v0 + 360);
    v143 = *(v0 + 344);
    v115 = *(v0 + 208);
    *(v0 + 168) = *(v0 + 192);
    v116 = sub_5AE8(&qword_15F900, &qword_12A800);
    v117 = sub_124F4C();
    v118 = sub_5C60(&qword_162408, &qword_15F900, &qword_12A800);
    *(v0 + 520) = sub_11394C(sub_DDC64, v115, v116, v117, &type metadata for Never, v118, &protocol witness table for Never, v119);
    (*(v113 + 104))(v134, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v137);
    (*(v114 + 16))(v140, v152, v143);
    mach_absolute_time();
    sub_12502C();
    sub_1250AC();
    LOBYTE(v115) = sub_12505C();
    v156(v112, v149);
    v120 = *(v0 + 288);
    if ((v115 & 1) == 0)
    {
      type metadata accessor for TimerBaseCATsSimple();
      sub_124ECC();
      *(v0 + 616) = sub_124E7C();
      sub_5AE8(&qword_15F180, &unk_126E10);
      v125 = swift_allocObject();
      *(v0 + 624) = v125;
      *(v125 + 16) = xmmword_126CB0;
      *(v125 + 32) = 0x736D657469;
      *(v125 + 40) = 0xE500000000000000;
      *(v125 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
      *(v125 + 48) = v150;
      v126 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v127 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v128 = swift_task_alloc();
      *(v0 + 632) = v128;
      *v128 = v0;
      v128[1] = sub_DA07C;
      v83 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v127);
      v85 = 0xD000000000000025;
      v84 = 0x800000000012EAA0;
      v86 = v125;
      goto LABEL_39;
    }

    type metadata accessor for TimerBaseCATs_Async();
    sub_124ECC();
    *(v0 + 528) = sub_124DBC();
    v121 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
    v122 = async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
    v123 = swift_task_alloc();
    *(v0 + 536) = v123;
    *v123 = v0;
    v123[1] = sub_D944C;
    v124 = *(v0 + 312);

    return ((&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + v122))(v124, 0xD00000000000001DLL, 0x800000000012EAD0, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_D944C()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v7 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = sub_D980C;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_D959C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_D959C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = sub_12396C();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v6 = v0[41];
    v5 = v0[42];
    v7 = v0[40];
    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[33];
    (*(v6 + 16))(v5, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    sub_12399C();
    (*(v6 + 8))(v5, v7);
    v11 = sub_1237DC();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
  }

  else
  {

    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v0[70] = v13;
  v0[69] = v11;
  v14 = v0[64];
  v15 = v0[36];
  type metadata accessor for TimerBaseCATsSimple();
  sub_124ECC();
  v0[71] = sub_124E7C();
  sub_5AE8(&qword_15F180, &unk_126E10);
  v16 = swift_allocObject();
  v0[72] = v16;
  *(v16 + 16) = xmmword_126CB0;
  *(v16 + 32) = 0x736D657469;
  *(v16 + 40) = 0xE500000000000000;
  *(v16 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v16 + 48) = v14;
  v17 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v18 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v19 = swift_task_alloc();
  v0[73] = v19;
  *v19 = v0;
  v19[1] = sub_D99D0;

  return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v18))(0xD000000000000025, 0x800000000012EAA0, v16);
}

uint64_t sub_D980C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[52];
  v5 = v0[49];
  v6 = v0[50];

  (*(v6 + 8))(v4, v5);
  v7 = v0[63];
  v8 = v0[59];
  v9 = v0[55];
  v10 = v0[56];
  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[48];
  v14 = v0[45];
  v17 = v0[68];
  v18 = v0[42];
  v19 = v0[39];
  v20 = v0[36];
  v21 = v0[35];
  v22 = v0[32];
  v23 = v0[31];
  v24 = v0[28];
  (*(v0[61] + 8))(v0[62], v0[60]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_D99D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 584);
  v10 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v6 = sub_D9EAC;
  }

  else
  {
    v7 = v4[72];
    v8 = v4[71];

    v4[75] = a1;
    v6 = sub_D9B34;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_D9B34()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[65];
  v4 = v0[32];
  sub_12363C();
  v5 = sub_12503C();
  v0[15] = v5;
  v0[16] = sub_DDC84(&qword_15F930, &type metadata accessor for SiriTimePluginModel);
  v6 = sub_23B4C(v0 + 12);
  sub_12525C();
  (*(*(v5 - 8) + 104))(v6, enum case for SiriTimePluginModel.timerSelector(_:), v5);
  v7 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v8 = swift_task_alloc();
  v0[76] = v8;
  *v8 = v0;
  v8[1] = sub_D9CF0;
  v9 = v0[75];
  v10 = v0[62];
  v11 = v0[52];
  v12 = v0[32];
  v13 = v0[23];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v13, v12, v10, v0 + 12, v11, 0, 0, 0);
}

uint64_t sub_D9CF0()
{
  v1 = *v0;
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 600);
  v4 = *(*v0 + 256);
  v5 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_5CA8(v1 + 96, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_DDD3C, 0, 0);
}

uint64_t sub_D9EAC()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[65];
  v5 = v0[52];
  v6 = v0[49];
  v7 = v0[50];

  (*(v7 + 8))(v5, v6);
  v8 = v0[63];
  v9 = v0[59];
  v10 = v0[55];
  v11 = v0[56];
  v13 = v0[51];
  v12 = v0[52];
  v14 = v0[48];
  v15 = v0[45];
  v18 = v0[74];
  v19 = v0[42];
  v20 = v0[39];
  v21 = v0[36];
  v22 = v0[35];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[28];
  (*(v0[61] + 8))(v0[62], v0[60]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_DA07C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 632);
  v10 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v6 = sub_DA6DC;
  }

  else
  {
    v7 = v4[78];
    v8 = v4[77];

    v4[81] = a1;
    v6 = sub_DA1E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_DA1E0()
{
  v1 = v0[65];
  v2 = v0[32];
  sub_12363C();
  v3 = sub_12503C();
  v0[10] = v3;
  v0[11] = sub_DDC84(&qword_15F930, &type metadata accessor for SiriTimePluginModel);
  v4 = sub_23B4C(v0 + 7);
  sub_12521C();
  (*(*(v3 - 8) + 104))(v4, enum case for SiriTimePluginModel.timerMulti(_:), v3);
  v5 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v6 = swift_task_alloc();
  v0[82] = v6;
  *v6 = v0;
  v6[1] = sub_DA384;
  v7 = v0[81];
  v8 = v0[62];
  v9 = v0[52];
  v10 = v0[32];
  v11 = v0[23];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v11, v10, v8, v0 + 7, v9, 0, 0, 0);
}

uint64_t sub_DA384()
{
  v1 = *v0;
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 648);
  v4 = *(*v0 + 256);
  v5 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_5CA8(v1 + 56, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_DA540, 0, 0);
}

uint64_t sub_DA540()
{
  v1 = v0[51];
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[60];
  v5 = v0[61];
  v6 = v0[59];
  v8 = v0[55];
  v7 = v0[56];
  v11 = v0[48];
  v12 = v0[45];
  v13 = v0[42];
  v14 = v0[39];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[28];
  (*(v0[50] + 8))(v0[52], v0[49]);
  (*(v5 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_DA6DC()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[65];
  v4 = v0[52];
  v5 = v0[49];
  v6 = v0[50];

  (*(v6 + 8))(v4, v5);
  v7 = v0[63];
  v8 = v0[59];
  v9 = v0[55];
  v10 = v0[56];
  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[48];
  v14 = v0[45];
  v17 = v0[80];
  v18 = v0[42];
  v19 = v0[39];
  v20 = v0[36];
  v21 = v0[35];
  v22 = v0[32];
  v23 = v0[31];
  v24 = v0[28];
  (*(v0[61] + 8))(v0[62], v0[60]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_DA8A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 696);
  v6 = *v2;
  *(v4 + 704) = a1;
  *(v4 + 712) = v1;

  v7 = *(v3 + 688);

  if (v1)
  {
    v8 = sub_DACB4;
  }

  else
  {
    v8 = sub_DAA0C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_DAA0C()
{
  v1 = v0;
  v2 = v0[31];
  sub_DDC08(v0[28]);
  sub_12363C();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v1[90] = v4;
  *v4 = v1;
  v4[1] = sub_DAB00;
  v5 = v1[88];
  v6 = v1[62];
  v7 = v1[51];
  v8 = v1[31];
  v9 = v1[23];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v8, v6, v7, 0);
}

uint64_t sub_DAB00()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *v1;
  *(*v1 + 728) = v0;

  v5 = v2[88];
  (*(v2[30] + 8))(v2[31], v2[29]);

  if (v0)
  {
    v6 = sub_DB02C;
  }

  else
  {
    v6 = sub_DAE7C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_DACB4()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  sub_DDC08(v0[28]);
  sub_E498(v2, v1);

  (*(v5 + 8))(v4, v6);
  v7 = v0[63];
  v8 = v0[59];
  v9 = v0[55];
  v10 = v0[56];
  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[48];
  v14 = v0[45];
  v17 = v0[89];
  v18 = v0[42];
  v19 = v0[39];
  v20 = v0[36];
  v21 = v0[35];
  v22 = v0[32];
  v23 = v0[31];
  v24 = v0[28];
  (*(v0[61] + 8))(v0[62], v0[60]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_DAE7C()
{
  v1 = v0[83];
  sub_E498(v0[84], v0[85]);

  v3 = v0[62];
  v2 = v0[63];
  v5 = v0[60];
  v4 = v0[61];
  v6 = v0[59];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[52];
  v12 = v0[48];
  v13 = v0[45];
  v14 = v0[42];
  v15 = v0[39];
  v16 = v0[36];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[31];
  v20 = v0[28];
  (*(v0[50] + 8))(v0[51], v0[49]);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_DB02C()
{
  v1 = v0[83];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[49];
  sub_E498(v0[84], v0[85]);

  (*(v3 + 8))(v2, v4);
  v5 = v0[63];
  v6 = v0[59];
  v7 = v0[55];
  v8 = v0[56];
  v10 = v0[51];
  v9 = v0[52];
  v11 = v0[48];
  v12 = v0[45];
  v15 = v0[91];
  v16 = v0[42];
  v17 = v0[39];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[28];
  (*(v0[61] + 8))(v0[62], v0[60]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_DB1E4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_123D1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a2 + 32);
  v13 = [v11 identifier];
  if (v13)
  {
    v19[1] = v11;
    v14 = v13;
    v15 = sub_125B9C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  sub_D1F0(v12, v15, v17, v10);

  sub_114918(v10, a3);
  return (*(v7 + 8))(v10, v6);
}