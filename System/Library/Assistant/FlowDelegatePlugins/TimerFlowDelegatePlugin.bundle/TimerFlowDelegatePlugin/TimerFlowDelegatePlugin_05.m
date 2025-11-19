void sub_8F8EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6970756F72476F6ELL;
  v4 = 0x65737561506C6C61;
  v5 = 0xEC0000006E6F6974;
  if (v2 == 5)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v4 = 0x61727544656D6173;
  }

  v6 = 0xEA00000000006563;
  v7 = 0x69766544656D6173;
  if (v2 != 3)
  {
    v7 = 0x696E6E75526C6C61;
    v6 = 0xEA0000000000676ELL;
  }

  if (*v1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE90000000000006CLL;
  v9 = 0x6562614C656D6173;
  if (v2 != 1)
  {
    v9 = 0x6D6F6F52656D6173;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA0000000000676ELL;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_8F9D8()
{
  v1 = *v0;
  v2 = 0x6970756F72476F6ELL;
  v3 = 0x65737561506C6C61;
  if (v1 != 5)
  {
    v3 = 0x61727544656D6173;
  }

  v4 = 0x69766544656D6173;
  if (v1 != 3)
  {
    v4 = 0x696E6E75526C6C61;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6562614C656D6173;
  if (v1 != 1)
  {
    v5 = 0x6D6F6F52656D6173;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_8FAC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_905D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_8FAF4(uint64_t a1)
{
  v2 = sub_902E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8FB30(uint64_t a1)
{
  v2 = sub_902E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8FB6C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_8FBC8(void *a1)
{
  v3 = v1;
  v5 = sub_5AE8(&qword_1611C8, &qword_128B48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_23B08(a1, a1[3]);
  sub_902E0();
  sub_1262AC();
  v11 = v3[24];
  v19[15] = 0;
  sub_12617C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[25];
  v19[14] = 1;
  sub_12617C();
  v13 = v3[26];
  v19[13] = 2;
  sub_12617C();
  v14 = v3[27];
  v19[12] = 3;
  sub_12617C();
  v15 = v3[28];
  v19[11] = 4;
  sub_12617C();
  v16 = v3[29];
  v19[10] = 5;
  sub_12617C();
  v18 = v3[30];
  v19[9] = 6;
  sub_12617C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_8FE0C(uint64_t *a1)
{
  v4 = sub_5AE8(&qword_1611B8, &qword_128B40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  *(v1 + 16) = 0;
  v9 = a1[4];
  sub_23B08(a1, a1[3]);
  sub_902E0();
  sub_12629C();
  if (v2)
  {

    type metadata accessor for TimerTimerGrouping();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    *(v1 + 24) = sub_12615C() & 1;
    v18 = 1;
    *(v1 + 25) = sub_12615C() & 1;
    v17 = 2;
    *(v1 + 26) = sub_12615C() & 1;
    v16 = 3;
    *(v1 + 27) = sub_12615C() & 1;
    v15 = 4;
    *(v1 + 28) = sub_12615C() & 1;
    v14 = 5;
    *(v1 + 29) = sub_12615C() & 1;
    v13 = 6;
    v11 = sub_12615C();
    (*(v5 + 8))(v8, v4);
    *(v1 + 30) = v11 & 1;
  }

  sub_5BB0(a1);
  return v1;
}

void *sub_900AC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_900F4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_90140())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_901BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TimerTimerGrouping();
  v5 = swift_allocObject();
  result = sub_8FE0C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_902A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimerTimerGrouping();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_902E0()
{
  result = qword_1611C0;
  if (!qword_1611C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1611C0);
  }

  return result;
}

uint64_t sub_90334(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  *(v1 + 27) = a1[19];
  *(v1 + 28) = a1[20];
  *(v1 + 29) = a1[21];
  *(v1 + 30) = a1[22];
  return v1;
}

uint64_t getEnumTagSinglePayload for TimerTimerGrouping.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerTimerGrouping.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_904CC()
{
  result = qword_1611D0;
  if (!qword_1611D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1611D0);
  }

  return result;
}

unint64_t sub_90524()
{
  result = qword_1611D8;
  if (!qword_1611D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1611D8);
  }

  return result;
}

unint64_t sub_9057C()
{
  result = qword_1611E0;
  if (!qword_1611E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1611E0);
  }

  return result;
}

uint64_t sub_905D0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_157CC8;
  v6._object = a2;
  v4 = sub_12613C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for DeleteTimerCATPatternsExecutor()
{
  result = qword_1611E8;
  if (!qword_1611E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_906A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_906C8, 0, 0);
}

uint64_t sub_906C8()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "deletedTimers");
  *(v2 + 46) = -4864;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FD8;
  v5 = v0[3];

  return v7(0xD000000000000019, 0x800000000012DC80, v2);
}

uint64_t sub_90818(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for TimeSuggestionsCATs_Async()
{
  result = qword_161238;
  if (!qword_161238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_90A34(uint64_t a1, uint64_t a2)
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

uint64_t sub_90BF4(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v7 = sub_124FAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *a2, v7);
  v12 = sub_124F9C();
  v14 = v13;
  result = (*(v8 + 8))(v11, v7);
  *a3 = v12;
  *a4 = v14;
  return result;
}

uint64_t sub_90D00()
{
  if (qword_15EE98 != -1)
  {
    swift_once();
  }

  v0 = qword_15EEA0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = sub_12549C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  result = sub_12548C();
  qword_167678 = result;
  return result;
}

uint64_t sub_90E0C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161288);
  sub_5B30(v0, qword_161288);
  return sub_1257AC();
}

uint64_t sub_90E58()
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

  sub_5AE8(&qword_1612A8, &qword_128EA0);
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
      if (qword_15EEB0 != -1)
      {
        swift_once();
      }

      v18 = sub_125ABC();
      sub_5B30(v18, qword_161288);
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
  if (qword_15EEB0 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_161288);
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

uint64_t sub_91170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  if (qword_15EEB0 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_161288);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "DeleteTimer.NeedsConfirmationStrategy.actionForInput() called)", v15, 2u);
  }

  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = sub_90E58();
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
  sub_376BC(a1, v11, 0, v7, a2);
  sub_5CA8(v7, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v11, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_91430(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_91538, 0, 0);
}

uint64_t sub_91538()
{
  if (qword_15EEB0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_161288);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DeleteTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  v5 = *(v0 + 72);

  sub_5AE8(&qword_1612A8, &qword_128EA0);
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
    *(v0 + 128) = 3;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    v20 = *(v0 + 8);
    goto LABEL_28;
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = [objc_allocWithZone(sub_12561C()) init];
  [v11 setTargetTimer:v10];
  if ((sub_90E58() & 1) == 0)
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
    v21 = sub_125AAC();
    v22 = sub_125DFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Received explicit 'everywhere' confirmation to include remote timers for pauseMultiple", v23, 2u);
    }

    v24 = [v11 targetTimer];
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = v24;
    v26 = 1;
    goto LABEL_24;
  }

  if (v12 == 2)
  {
    goto LABEL_15;
  }

  v28 = *(v0 + 112);
  v27 = *(v0 + 120);
  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  sub_12377C();
  v31 = sub_12375C();
  v56 = *(v30 + 8);
  v56(v28, v29);
  v32 = sub_125AAC();
  v33 = sub_125DFC();
  v34 = os_log_type_enabled(v32, v33);
  if ((v31 & 1) == 0)
  {
    if (v34)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v32, v33, "Defaulting confirmation to reject for no/cancel", v47, 2u);
    }

    v55 = *(v0 + 120);
    v49 = *(v0 + 88);
    v48 = *(v0 + 96);
    v50 = *(v0 + 56);

    v51 = enum case for ConfirmationResponse.rejected(_:);
    v52 = sub_123A1C();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v49, v51, v52);
    (*(v53 + 56))(v49, 0, 1, v52);
    v54 = v11;
    sub_125EDC();

    sub_123AEC();
    v56(v55, v48);
    goto LABEL_27;
  }

  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v32, v33, "Confirming use only local timers for pauseMultiple", v35, 2u);
  }

  v16 = [v11 targetTimer];
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_23:
  v25 = v16;
  v26 = 0;
LABEL_24:
  sub_8BAC();
  isa = sub_125EEC(v26).super.super.isa;
  [v25 setShouldMatchRemote:isa];

LABEL_25:
  (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
LABEL_26:
  v37 = *(v0 + 88);
  v38 = *(v0 + 56);
  v39 = enum case for ConfirmationResponse.confirmed(_:);
  v40 = sub_123A1C();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v37, v39, v40);
  (*(v41 + 56))(v37, 0, 1, v40);
  v42 = v11;
  sub_125EDC();

  sub_123AEC();
LABEL_27:
  v44 = *(v0 + 112);
  v43 = *(v0 + 120);
  v45 = *(v0 + 88);

  v20 = *(v0 + 8);
LABEL_28:

  return v20();
}

uint64_t sub_91C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_5AE8(&unk_162190, &unk_128500) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_124EDC() - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = sub_125ABC();
  v3[12] = v6;
  v7 = *(v6 - 8);
  v3[13] = v7;
  v8 = *(v7 + 64) + 15;
  v3[14] = swift_task_alloc();
  v9 = sub_124FFC();
  v3[15] = v9;
  v10 = *(v9 - 8);
  v3[16] = v10;
  v11 = *(v10 + 64) + 15;
  v3[17] = swift_task_alloc();
  v12 = sub_12501C();
  v3[18] = v12;
  v13 = *(v12 - 8);
  v3[19] = v13;
  v14 = *(v13 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v15 = sub_12392C();
  v3[23] = v15;
  v16 = *(v15 - 8);
  v3[24] = v16;
  v17 = *(v16 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v18 = sub_1250BC();
  v3[27] = v18;
  v19 = *(v18 - 8);
  v3[28] = v19;
  v20 = *(v19 + 64) + 15;
  v3[29] = swift_task_alloc();
  v21 = sub_12368C();
  v3[30] = v21;
  v22 = *(v21 - 8);
  v3[31] = v22;
  v23 = *(v22 + 64) + 15;
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_91F88, 0, 0);
}

uint64_t sub_91F88()
{
  if (qword_15EEB0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[12], qword_161288);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DeleteTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  v5 = v0[8];

  sub_8B50(v5, (v0 + 2));
  sub_1257EC();
  if (swift_dynamicCast())
  {
    v6 = v0[32];
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[27];
    v10 = v0[6];
    v0[33] = v10;
    sub_12362C();
    sub_1250AC();
    v11 = sub_12506C();
    (*(v8 + 8))(v7, v9);
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = [v10 shouldMatchAny];
    sub_8BAC();
    v13.super.super.isa = sub_125EFC(1).super.super.isa;
    if (v12)
    {
      v14 = sub_125F0C();

      if ((v14 & 1) == 0)
      {
        goto LABEL_11;
      }

      v15 = v0[9];
      sub_5AE8(&qword_1612A8, &qword_128EA0);
      v16 = sub_123B4C();
      v13.super.super.isa = [v16 targetingInfo];

      if (!v13.super.super.isa)
      {
        v50 = v0[22];
        v52 = v0[16];
        v51 = v0[17];
        v54 = v0[14];
        v53 = v0[15];
        v55 = v0[12];
        v56 = v0[13];
        v57 = v0[11];
        sub_FFF04(10, v0[26]);
        (*(v52 + 104))(v51, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v53);
        (*(v56 + 16))(v54, v1, v55);
        mach_absolute_time();
        sub_12502C();
        type metadata accessor for DeleteTimerCATsSimple();
        sub_124ECC();
        v0[34] = sub_124E7C();
        v58 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v63 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
        v59 = swift_task_alloc();
        v0[35] = v59;
        *v59 = v0;
        v59[1] = sub_926B0;
        v31 = _swiftEmptyArrayStorage;
        v30 = 0x800000000012DDC0;
        v29 = 0xD000000000000021;
        goto LABEL_19;
      }
    }

LABEL_11:
    v17 = [v10 device];
    if (v17)
    {
      v18 = v0[25];
      v19 = v0[16];
      v20 = v0[17];
      v22 = v0[14];
      v21 = v0[15];
      v23 = v0[13];
      v60 = v0[12];
      v62 = v0[21];
      v24 = v0[11];

      sub_FFAE8(10);
      (*(v19 + 104))(v20, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v21);
      (*(v23 + 16))(v22, v1, v60);
      mach_absolute_time();
      sub_12502C();
      type metadata accessor for TimerBaseCATsSimple();
      sub_124ECC();
      v0[39] = sub_124E7C();
      v25 = sub_113D6C(0, 0);
      v0[40] = v25;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v26 = swift_allocObject();
      v0[41] = v26;
      *(v26 + 16) = xmmword_126CB0;
      *(v26 + 32) = 0x72656D6974;
      *(v26 + 40) = 0xE500000000000000;
      *(v26 + 72) = type metadata accessor for TimerTimer(0);
      *(v26 + 48) = v25;
      v27 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v63 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v28 = swift_task_alloc();
      v0[42] = v28;
      *v28 = v0;
      v28[1] = sub_92C30;
      v29 = 0xD000000000000023;
      v30 = 0x800000000012DD90;
      v31 = v26;
LABEL_19:

      return v63(v29, v30, v31);
    }

LABEL_16:
    v44 = v0[20];
    v45 = v0[14];
    v46 = v0[12];
    v47 = v0[13];
    (*(v0[16] + 104))(v0[17], enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v0[15]);
    (*(v47 + 16))(v45, v1, v46);
    mach_absolute_time();
    sub_12502C();
    if (qword_15F030 != -1)
    {
      swift_once();
    }

    v48 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v63 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
    v49 = swift_task_alloc();
    v0[46] = v49;
    *v49 = v0;
    v49[1] = sub_931D8;
    v31 = _swiftEmptyArrayStorage;
    v29 = 0xD000000000000024;
    v30 = 0x800000000012DD60;
    goto LABEL_19;
  }

  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_84CC();
  swift_allocError();
  *v32 = 1;
  swift_willThrow();
  v33 = v0[32];
  v34 = v0[29];
  v36 = v0[25];
  v35 = v0[26];
  v38 = v0[21];
  v37 = v0[22];
  v39 = v0[20];
  v40 = v0[17];
  v41 = v0[14];
  v61 = v0[11];
  v64 = v0[10];

  v42 = v0[1];

  return v42();
}

uint64_t sub_926B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_92AC8, 0, 0);
  }

  else
  {
    v7 = v4[34];

    v4[37] = a1;
    v8 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
    v9 = swift_task_alloc();
    v4[38] = v9;
    *v9 = v6;
    v9[1] = sub_92860;
    v10 = v4[32];
    v11 = v4[26];
    v12 = v4[22];
    v13 = v4[7];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v13, v10, v11, v12, 0, 0, 0, 0);
  }
}

uint64_t sub_92860()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v4 = *v0;

  return _swift_task_switch(sub_92974, 0, 0);
}

uint64_t sub_92974()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 200);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  v17 = *(v0 + 80);
  (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
  (*(v6 + 8))(v5, v7);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_92AC8()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v24 = v0[32];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v10 = v0[18];
  v9 = v0[19];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v24, v4);
  v11 = v0[32];
  v12 = v0[29];
  v14 = v0[25];
  v13 = v0[26];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[14];
  v20 = v0[11];
  v23 = v0[10];
  v25 = v0[36];

  v21 = v0[1];

  return v21();
}

uint64_t sub_92C30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_9305C, 0, 0);
  }

  else
  {
    v8 = v4[40];
    v7 = v4[41];
    v9 = v4[39];

    v4[44] = a1;
    v10 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
    v11 = swift_task_alloc();
    v4[45] = v11;
    *v11 = v6;
    v11[1] = sub_92DF4;
    v12 = v4[32];
    v13 = v4[25];
    v14 = v4[21];
    v15 = v4[7];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v15, v12, v13, v14, 0, 0, 0, 0);
  }
}

uint64_t sub_92DF4()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return _swift_task_switch(sub_92F08, 0, 0);
}

uint64_t sub_92F08()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  v17 = *(v0 + 80);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  (*(v5 + 8))(v4, v6);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_9305C()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[33];
  v5 = v0[31];
  v24 = v0[30];
  v26 = v0[32];
  v6 = v0[24];
  v23 = v0[25];
  v7 = v0[23];
  v8 = v0[21];
  v10 = v0[18];
  v9 = v0[19];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v23, v7);
  (*(v5 + 8))(v26, v24);
  v11 = v0[32];
  v12 = v0[29];
  v14 = v0[25];
  v13 = v0[26];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[14];
  v20 = v0[11];
  v25 = v0[10];
  v27 = v0[43];

  v21 = v0[1];

  return v21();
}

uint64_t sub_931D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_9350C;
  }

  else
  {
    v5 = sub_932EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_932EC()
{
  (*(v0[24] + 56))(v0[10], 1, 1, v0[23]);
  v1 = swift_task_alloc();
  v0[49] = v1;
  *v1 = v0;
  v1[1] = sub_933B0;
  v2 = v0[47];
  v3 = v0[20];
  v4 = v0[10];
  v5 = v0[7];

  return sub_F2BE4(v5, 2, v4, v3);
}

uint64_t sub_933B0()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 376);
  sub_5CA8(*(v2 + 80), &unk_162190, &unk_128500);

  if (v0)
  {
    v6 = sub_93778;
  }

  else
  {
    v6 = sub_93648;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_9350C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  v19 = *(v0 + 80);
  v20 = *(v0 + 384);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_93648()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 80);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_93778()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  v19 = *(v0 + 80);
  v20 = *(v0 + 400);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_938B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_91430(a1, a2, a3);
}

uint64_t sub_93968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_4EA0;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_93A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_93AD8;

  return sub_91C70(a1, a2, a3);
}

uint64_t sub_93AD8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_93C0C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_93C0C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_93CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t sub_93DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t sub_93E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_93F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_93FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_503C;

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_940D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_5D08;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_941B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_5D08;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_94298()
{
  result = qword_1612A0;
  if (!qword_1612A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1612A0);
  }

  return result;
}

uint64_t type metadata accessor for SearchForTimersCATs_Async()
{
  result = qword_1612B0;
  if (!qword_1612B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_94378(uint64_t a1, uint64_t a2)
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

uint64_t sub_94508()
{
  v1 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_label;
  v2 = sub_124E4C();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_type, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_state, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_remainingTime) = 0;
  *(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_duration) = 0;
  v3(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_action, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_roomName, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_deviceName, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_targetDeviceType, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isInRespondingRoom) = 0;
  *(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueAcrossGroup) = 0;
  *(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueInRoom) = 0;
  *(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isOnlyMatchingTimerInRoom) = 0;
  v3(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_timerIDString, 1, 1, v2);
  return v0;
}

uint64_t sub_946C8()
{
  sub_96AC8(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_label);
  sub_96AC8(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_type);
  sub_96AC8(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_state);
  v1 = *(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_remainingTime);

  v2 = *(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_duration);

  sub_96AC8(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_action);
  sub_96AC8(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_roomName);
  sub_96AC8(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_deviceName);
  sub_96AC8(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_targetDeviceType);
  sub_96AC8(v0 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_timerIDString);
  return v0;
}

uint64_t sub_94798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v75 = a3;
  v5 = sub_5AE8(&unk_15F170, &unk_126E00);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v73 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v72 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v72 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v72 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v72 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v72 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v72 - v25;
  __chkstk_darwin(v24);
  v28 = &v72 - v27;
  if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1261BC() & 1) != 0)
  {
    sub_23A98(v74 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_label, v28);
    v29 = sub_124E4C();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {
      v31 = v28;
LABEL_6:
      result = sub_96AC8(v31);
LABEL_7:
      v33 = v75;
      *v75 = 0u;
      *(v33 + 1) = 0u;
      return result;
    }

    v34 = v75;
    v75[3] = v29;
    v35 = sub_23B4C(v34);
    return (*(v30 + 32))(v35, v28, v29);
  }

  if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1261BC() & 1) != 0)
  {
    sub_23A98(v74 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_type, v26);
    v36 = sub_124E4C();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v26, 1, v36) == 1)
    {
      v31 = v26;
      goto LABEL_6;
    }

    v38 = v75;
    v75[3] = v36;
    v39 = sub_23B4C(v38);
    return (*(v37 + 32))(v39, v26, v36);
  }

  if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1261BC() & 1) != 0)
  {
    sub_23A98(v74 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_state, v23);
    v40 = sub_124E4C();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v23, 1, v40) == 1)
    {
      v31 = v23;
      goto LABEL_6;
    }

    v42 = v75;
    v75[3] = v40;
    v43 = sub_23B4C(v42);
    return (*(v41 + 32))(v43, v23, v40);
  }

  result = 0x6E696E69616D6572;
  if (a1 == 0x6E696E69616D6572 && a2 == 0xED0000656D695467 || (result = sub_1261BC(), (result & 1) != 0))
  {
    v44 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_remainingTime;
LABEL_27:
    v45 = *(v74 + v44);
    if (!v45)
    {
      goto LABEL_7;
    }

    v46 = sub_124D7C();
    v47 = v75;
    v75[3] = v46;
    *v47 = v45;
  }

  result = 0x6E6F697461727564;
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (result = sub_1261BC(), (result & 1) != 0))
  {
    v44 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration;
    goto LABEL_27;
  }

  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1261BC() & 1) != 0)
  {
    sub_23A98(v74 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_action, v20);
    v48 = sub_124E4C();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v20, 1, v48) == 1)
    {
      v31 = v20;
      goto LABEL_6;
    }

    v50 = v75;
    v75[3] = v48;
    v51 = sub_23B4C(v50);
    return (*(v49 + 32))(v51, v20, v48);
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1261BC() & 1) != 0)
  {
    sub_23A98(v74 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_roomName, v17);
    v52 = sub_124E4C();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v17, 1, v52) == 1)
    {
      v31 = v17;
      goto LABEL_6;
    }

    v54 = v75;
    v75[3] = v52;
    v55 = sub_23B4C(v54);
    return (*(v53 + 32))(v55, v17, v52);
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_1261BC() & 1) != 0)
  {
    sub_23A98(v74 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_deviceName, v14);
    v56 = sub_124E4C();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v14, 1, v56) == 1)
    {
      v31 = v14;
      goto LABEL_6;
    }

    v58 = v75;
    v75[3] = v56;
    v59 = sub_23B4C(v58);
    return (*(v57 + 32))(v59, v14, v56);
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x800000000012C0B0 != a2) && (sub_1261BC() & 1) == 0)
    {
      result = 0xD000000000000012;
      if (a1 == 0xD000000000000012 && 0x800000000012C0D0 == a2 || (result = sub_1261BC(), (result & 1) != 0))
      {
        v64 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom;
      }

      else
      {
        result = 0xD000000000000018;
        if (a1 == 0xD000000000000018 && 0x800000000012C0F0 == a2 || (result = sub_1261BC(), (result & 1) != 0))
        {
          v64 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isLabelUniqueAcrossGroup;
        }

        else
        {
          result = 0xD000000000000013;
          if (a1 == 0xD000000000000013 && 0x800000000012C110 == a2 || (result = sub_1261BC(), (result & 1) != 0))
          {
            v64 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isLabelUniqueInRoom;
          }

          else
          {
            result = 0xD000000000000019;
            if (a1 != 0xD000000000000019 || 0x800000000012C130 != a2)
            {
              result = sub_1261BC();
              if ((result & 1) == 0)
              {
                if (a1 != 0x53444972656D6974 || a2 != 0xED0000676E697274)
                {
                  result = sub_1261BC();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }

                v67 = v73;
                sub_23A98(v74 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_timerIDString, v73);
                v68 = sub_124E4C();
                v69 = *(v68 - 8);
                if ((*(v69 + 48))(v67, 1, v68) == 1)
                {
                  v31 = v73;
                  goto LABEL_6;
                }

                v70 = v75;
                v75[3] = v68;
                v71 = sub_23B4C(v70);
                return (*(v69 + 32))(v71, v73, v68);
              }
            }

            v64 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isOnlyMatchingTimerInRoom;
          }
        }
      }

      v65 = v75;
      v66 = *(v74 + v64);
      v75[3] = &type metadata for Bool;
      *v65 = v66;
      return result;
    }

    sub_23A98(v74 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_targetDeviceType, v11);
    v60 = sub_124E4C();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v11, 1, v60) == 1)
    {
      v31 = v11;
      goto LABEL_6;
    }

    v62 = v75;
    v75[3] = v60;
    v63 = sub_23B4C(v62);
    return (*(v61 + 32))(v63, v11, v60);
  }
}

unint64_t sub_951EC(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6574617473;
      break;
    case 3:
      result = 0x6E696E69616D6572;
      break;
    case 4:
      result = 0x6E6F697461727564;
      break;
    case 5:
      result = 0x6E6F69746361;
      break;
    case 6:
      result = 0x656D614E6D6F6F72;
      break;
    case 7:
      result = 0x614E656369766564;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0x53444972656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_953C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_951EC(*a1);
  v5 = v4;
  if (v3 == sub_951EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1261BC();
  }

  return v8 & 1;
}

Swift::Int sub_9544C()
{
  v1 = *v0;
  sub_12626C();
  sub_951EC(v1);
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_954B0()
{
  sub_951EC(*v0);
  sub_125BFC();
}

Swift::Int sub_95504()
{
  v1 = *v0;
  sub_12626C();
  sub_951EC(v1);
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_95564@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_97058(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_95594@<X0>(unint64_t *a1@<X8>)
{
  result = sub_951EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_955DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_97058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_95610(uint64_t a1)
{
  v2 = sub_96A74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9564C(uint64_t a1)
{
  v2 = sub_96A74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_95688()
{
  sub_96AC8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_label);
  sub_96AC8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_type);
  sub_96AC8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_state);
  v1 = *(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_remainingTime);

  v2 = *(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);

  sub_96AC8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_action);
  sub_96AC8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_roomName);
  sub_96AC8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_deviceName);
  sub_96AC8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_targetDeviceType);
  sub_96AC8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_timerIDString);
  return v0;
}

uint64_t sub_95760(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_957E4()
{
  sub_95D2C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_958A0(void *a1)
{
  v3 = v1;
  v5 = sub_5AE8(&qword_1617C8, &qword_129018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_23B08(a1, a1[3]);
  sub_96A74();
  sub_1262AC();
  LOBYTE(v19) = 0;
  sub_124E4C();
  sub_96A2C(&qword_1617D0, &type metadata accessor for SpeakableString);
  sub_12616C();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_12616C();
    LOBYTE(v19) = 2;
    sub_12616C();
    v19 = *(v3 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_remainingTime);
    v18 = 3;
    v11 = sub_124D7C();
    sub_96A2C(&qword_1617D8, &type metadata accessor for DialogDuration);
    v17 = v11;
    sub_12616C();
    v19 = *(v3 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
    v18 = 4;
    sub_12616C();
    LOBYTE(v19) = 5;
    sub_12616C();
    LOBYTE(v19) = 6;
    sub_12616C();
    LOBYTE(v19) = 7;
    sub_12616C();
    LOBYTE(v19) = 8;
    sub_12616C();
    v12 = *(v3 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom);
    LOBYTE(v19) = 9;
    sub_12617C();
    v13 = *(v3 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isLabelUniqueAcrossGroup);
    LOBYTE(v19) = 10;
    sub_12617C();
    v14 = *(v3 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isLabelUniqueInRoom);
    LOBYTE(v19) = 11;
    sub_12617C();
    v15 = *(v3 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isOnlyMatchingTimerInRoom);
    LOBYTE(v19) = 12;
    sub_12617C();
    LOBYTE(v19) = 13;
    sub_12616C();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_95D2C()
{
  if (!qword_15FD00)
  {
    sub_124E4C();
    v0 = sub_125F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_15FD00);
    }
  }
}

void sub_95DAC()
{
  sub_95D2C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_95E64(uint64_t *a1)
{
  v3 = sub_5AE8(&unk_15F170, &unk_126E00);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v48 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v49 = v45 - v8;
  v9 = __chkstk_darwin(v7);
  v50 = v45 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v45 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v45 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v45 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v45 - v21;
  __chkstk_darwin(v20);
  v51 = v45 - v23;
  v52 = sub_5AE8(&qword_1617A8, &qword_129010);
  v24 = *(v52 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v52);
  v54 = a1;
  v55 = v1;
  *(v1 + 16) = 0;
  v26 = a1[3];
  v27 = a1[4];
  v28 = a1;
  v30 = v45 - v29;
  sub_23B08(v28, v26);
  sub_96A74();
  v31 = v53;
  sub_12629C();
  if (v31)
  {
    v44 = v55;

    type metadata accessor for TimerTimer(0);
    v36 = *(*v44 + 48);
    v37 = *(*v44 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = v19;
    v46 = v13;
    v47 = v16;
    v53 = v24;
    v33 = sub_124E4C();
    LOBYTE(v57) = 0;
    v34 = sub_96A2C(&qword_1617B8, &type metadata accessor for SpeakableString);
    v35 = v51;
    sub_12614C();
    v39 = v55;
    sub_96B30(v35, v55 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_label);
    LOBYTE(v57) = 1;
    sub_12614C();
    sub_96B30(v22, v39 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_type);
    LOBYTE(v57) = 2;
    v51 = 0;
    sub_12614C();
    v45[1] = v34;
    v45[2] = v33;
    sub_96B30(v32, v39 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_state);
    sub_124D7C();
    v56 = 3;
    sub_96A2C(&qword_1617C0, &type metadata accessor for DialogDuration);
    sub_12614C();
    *(v39 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_remainingTime) = v57;
    v56 = 4;
    sub_12614C();
    *(v39 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration) = v57;
    LOBYTE(v57) = 5;
    v40 = v47;
    sub_12614C();
    sub_96B30(v40, v39 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_action);
    LOBYTE(v57) = 6;
    v41 = v46;
    sub_12614C();
    sub_96B30(v41, v39 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_roomName);
    LOBYTE(v57) = 7;
    v42 = v50;
    sub_12614C();
    sub_96B30(v42, v39 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_deviceName);
    LOBYTE(v57) = 8;
    v43 = v49;
    sub_12614C();
    sub_96B30(v43, v39 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_targetDeviceType);
    LOBYTE(v57) = 9;
    *(v55 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom) = sub_12615C() & 1;
    LOBYTE(v57) = 10;
    *(v55 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isLabelUniqueAcrossGroup) = sub_12615C() & 1;
    LOBYTE(v57) = 11;
    *(v55 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isLabelUniqueInRoom) = sub_12615C() & 1;
    LOBYTE(v57) = 12;
    *(v55 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isOnlyMatchingTimerInRoom) = sub_12615C() & 1;
    LOBYTE(v57) = 13;
    sub_12614C();
    (*(v53 + 8))(v30, v52);
    v44 = v55;
    sub_96B30(v48, v55 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_timerIDString);
  }

  sub_5BB0(v54);
  return v44;
}

uint64_t sub_9691C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for TimerTimer(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_95E64(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_96A2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_96A74()
{
  result = qword_1617B0;
  if (!qword_1617B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1617B0);
  }

  return result;
}

uint64_t sub_96AC8(uint64_t a1)
{
  v2 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_96B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_96BA0(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_label;
  swift_beginAccess();
  sub_23A98(a1 + v3, v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_label);
  v4 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_type;
  swift_beginAccess();
  sub_23A98(a1 + v4, v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_type);
  v5 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_state;
  swift_beginAccess();
  sub_23A98(a1 + v5, v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_state);
  *(v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_remainingTime) = *(a1 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_remainingTime);
  *(v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration) = *(a1 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_duration);
  v6 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_action;
  swift_beginAccess();
  sub_23A98(a1 + v6, v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_action);
  v7 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_roomName;
  swift_beginAccess();
  sub_23A98(a1 + v7, v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_roomName);
  v8 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_deviceName;
  swift_beginAccess();
  sub_23A98(a1 + v8, v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_deviceName);
  v9 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_targetDeviceType;
  swift_beginAccess();
  sub_23A98(a1 + v9, v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_targetDeviceType);
  *(v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom) = *(a1 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isInRespondingRoom);
  *(v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isLabelUniqueAcrossGroup) = *(a1 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueAcrossGroup);
  *(v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isLabelUniqueInRoom) = *(a1 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueInRoom);
  *(v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isOnlyMatchingTimerInRoom) = *(a1 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isOnlyMatchingTimerInRoom);
  v10 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_timerIDString;
  swift_beginAccess();
  sub_23A98(a1 + v10, v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_timerIDString);

  return v1;
}

uint64_t getEnumTagSinglePayload for TimerTimer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerTimer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_96F54()
{
  result = qword_1617E0;
  if (!qword_1617E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1617E0);
  }

  return result;
}

unint64_t sub_96FAC()
{
  result = qword_1617E8;
  if (!qword_1617E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1617E8);
  }

  return result;
}

unint64_t sub_97004()
{
  result = qword_1617F0;
  if (!qword_1617F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1617F0);
  }

  return result;
}

uint64_t sub_97058(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_157D90;
  v6._object = a2;
  v4 = sub_12613C(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_970B4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1617F8);
  sub_5B30(v0, qword_1617F8);
  return sub_1257AC();
}

uint64_t sub_97100()
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

  sub_5AE8(&qword_161818, &qword_1292C0);
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
      if (qword_15EEB8 != -1)
      {
        swift_once();
      }

      v18 = sub_125ABC();
      sub_5B30(v18, qword_1617F8);
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
  if (qword_15EEB8 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_1617F8);
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

uint64_t sub_97418@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  if (qword_15EEB8 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  sub_5B30(v12, qword_1617F8);
  v13 = sub_125AAC();
  v14 = sub_125DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "ResumeTimer.NeedsConfirmationStrategy.actionForInput() called)", v15, 2u);
  }

  v16 = sub_12532C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = sub_97100();
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
  sub_3A67C(a1, v11, 0, v7, a2);
  sub_5CA8(v7, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v11, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_976D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_977E0, 0, 0);
}

uint64_t sub_977E0()
{
  if (qword_15EEB8 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_1617F8);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResumeTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  v5 = *(v0 + 72);

  sub_5AE8(&qword_161818, &qword_1292C0);
  v6 = sub_123B5C();
  v7 = [v6 itemToConfirm];
  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (!swift_dynamicCast())
  {
    v20 = *(v0 + 112);
    v19 = *(v0 + 120);
    v21 = *(v0 + 88);
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();

    v23 = *(v0 + 8);
    goto LABEL_28;
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = [v10 shouldMatchAny];
  v12 = [objc_allocWithZone(sub_12564C()) init];
  [v10 setShouldMatchAny:v11];
  v13 = v10;
  [v12 setTargetTimer:v13];

  if ((sub_97100() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_9D860(*(v0 + 64), 1, *(v0 + 120));
  v14 = sub_A8C70();
  if (v14 <= 1)
  {
    if (v14)
    {
      v15 = sub_125AAC();
      v16 = sub_125DFC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_0, v15, v16, "Received explicit 'here' confirmation – only local timers for pauseMultiple", v17, 2u);
      }

      v18 = [v12 targetTimer];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_15:
    v24 = sub_125AAC();
    v25 = sub_125DFC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Received explicit 'everywhere' confirmation to include remote timers for pauseMultiple", v26, 2u);
    }

    v27 = [v12 targetTimer];
    if (!v27)
    {
      goto LABEL_25;
    }

    v28 = v27;
    v29 = 1;
    goto LABEL_24;
  }

  if (v14 == 2)
  {
    goto LABEL_15;
  }

  v31 = *(v0 + 112);
  v30 = *(v0 + 120);
  v32 = *(v0 + 96);
  v33 = *(v0 + 104);
  sub_12377C();
  v58 = sub_12375C();
  v57 = *(v33 + 8);
  v57(v31, v32);
  v34 = sub_125AAC();
  v35 = sub_125DFC();
  v36 = os_log_type_enabled(v34, v35);
  if ((v58 & 1) == 0)
  {
    if (v36)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v34, v35, "Defaulting confirmation to reject for no/cancel", v49, 2u);
    }

    v59 = *(v0 + 120);
    v50 = *(v0 + 88);
    v56 = *(v0 + 96);
    v51 = *(v0 + 56);

    v52 = enum case for ConfirmationResponse.rejected(_:);
    v53 = sub_123A1C();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v50, v52, v53);
    (*(v54 + 56))(v50, 0, 1, v53);
    v55 = v12;
    sub_125EDC();

    sub_123AEC();
    v57(v59, v56);
    goto LABEL_27;
  }

  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v34, v35, "Confirming use only local timers for pauseMultiple", v37, 2u);
  }

  v18 = [v12 targetTimer];
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_23:
  v28 = v18;
  v29 = 0;
LABEL_24:
  sub_8BAC();
  isa = sub_125EEC(v29).super.super.isa;
  [v28 setShouldMatchRemote:isa];

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
  v44 = v12;
  sub_125EDC();

  sub_123AEC();
LABEL_27:
  v46 = *(v0 + 112);
  v45 = *(v0 + 120);
  v47 = *(v0 + 88);

  v23 = *(v0 + 8);
LABEL_28:

  return v23();
}

uint64_t sub_97F40(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_98260, 0, 0);
}

uint64_t sub_98260()
{
  if (qword_15EEB8 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[17], qword_1617F8);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResumeTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  v5 = v0[14];

  sub_5AE8(&qword_161818, &qword_1292C0);
  v6 = sub_123B5C();
  v0[39] = v6;
  v7 = sub_123B4C();
  v0[40] = v7;
  v8 = [v6 itemToConfirm];
  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (swift_dynamicCast())
  {
    v9 = v0[38];
    v11 = v0[34];
    v10 = v0[35];
    v12 = v0[33];
    v13 = v0[12];
    v0[41] = v13;
    sub_12362C();
    sub_1250AC();
    v14 = sub_12506C();
    (*(v11 + 8))(v10, v12);
    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = [v13 shouldMatchAny];
    sub_8BAC();
    v16.super.super.isa = sub_125EFC(1).super.super.isa;
    if (v15)
    {
      v17 = sub_125F0C();

      if ((v17 & 1) == 0)
      {
        goto LABEL_11;
      }

      v16.super.super.isa = [v7 targetingInfo];
      if (!v16.super.super.isa)
      {
        v64 = v0[27];
        v66 = v0[21];
        v65 = v0[22];
        v68 = v0[19];
        v67 = v0[20];
        v69 = v0[17];
        v70 = v0[18];
        v71 = v0[16];
        sub_FFF04(8, v0[32]);
        (*(v66 + 104))(v65, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v67);
        (*(v70 + 16))(v68, v1, v69);
        mach_absolute_time();
        sub_12502C();
        type metadata accessor for ResumeTimerCATsSimple();
        sub_124ECC();
        v0[42] = sub_124E7C();
        v72 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v78 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
        v73 = swift_task_alloc();
        v0[43] = v73;
        *v73 = v0;
        v73[1] = sub_98B60;
        v59 = _swiftEmptyArrayStorage;
        v60 = 0x800000000012E030;
        v31 = 0xD000000000000021;
        goto LABEL_26;
      }
    }

LABEL_11:
    v18 = [v13 device];
    if (v18)
    {
      v19 = v0[31];
      v20 = v0[21];
      v21 = v0[22];
      v23 = v0[19];
      v22 = v0[20];
      v24 = v0[18];
      v75 = v0[17];
      v77 = v0[26];
      v25 = v0[16];

      sub_FFAE8(8);
      (*(v20 + 104))(v21, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v22);
      (*(v24 + 16))(v23, v1, v75);
      mach_absolute_time();
      sub_12502C();
      type metadata accessor for TimerBaseCATsSimple();
      sub_124ECC();
      v0[47] = sub_124E7C();
      v26 = sub_113D6C(0, 0);
      v0[48] = v26;
      v27 = "ntConfirmationPrompt";
      sub_5AE8(&qword_15F180, &unk_126E10);
      v28 = swift_allocObject();
      v0[49] = v28;
      *(v28 + 16) = xmmword_126CB0;
      *(v28 + 32) = 0x72656D6974;
      *(v28 + 40) = 0xE500000000000000;
      *(v28 + 72) = type metadata accessor for TimerTimer(0);
      *(v28 + 48) = v26;
      v29 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v78 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v30 = swift_task_alloc();
      v0[50] = v30;
      *v30 = v0;
      v30[1] = sub_99124;
      v31 = 0xD000000000000023;
LABEL_25:
      v60 = v27 | 0x8000000000000000;
      v59 = v28;
LABEL_26:

      return v78(v31, v60, v59);
    }

LABEL_16:
    v45 = v0[30];
    v46 = v0[25];
    v48 = v0[21];
    v47 = v0[22];
    v50 = v0[19];
    v49 = v0[20];
    v51 = v0[17];
    v52 = v0[18];
    sub_FFAE8(8);
    (*(v48 + 104))(v47, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v49);
    (*(v52 + 16))(v50, v1, v51);
    mach_absolute_time();
    sub_12502C();
    v53 = [v13 shouldMatchAny];
    sub_8BAC();
    v54.super.super.isa = sub_125EFC(1).super.super.isa;
    isa = v54.super.super.isa;
    if (v53)
    {
      v56 = sub_125F0C();

      if (v56)
      {
        if (qword_15F048 != -1)
        {
          swift_once();
        }

        v57 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
        v78 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
        v58 = swift_task_alloc();
        v0[54] = v58;
        *v58 = v0;
        v58[1] = sub_99710;
        v59 = _swiftEmptyArrayStorage;
        v31 = 0xD000000000000024;
        v60 = 0x800000000012E000;
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (qword_15F048 != -1)
    {
      swift_once();
    }

    v61 = sub_113D6C(0, 0);
    v0[56] = v61;
    v27 = "temToConfirm:resolveRecord:)";
    sub_5AE8(&qword_15F180, &unk_126E10);
    v28 = swift_allocObject();
    v0[57] = v28;
    *(v28 + 16) = xmmword_126CB0;
    *(v28 + 32) = 0x72656D6974;
    *(v28 + 40) = 0xE500000000000000;
    *(v28 + 72) = type metadata accessor for TimerTimer(0);
    *(v28 + 48) = v61;
    v62 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
    v78 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v63 = swift_task_alloc();
    v0[58] = v63;
    *v63 = v0;
    v63[1] = sub_99A7C;
    v31 = 0xD000000000000026;
    goto LABEL_25;
  }

  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_84CC();
  swift_allocError();
  *v32 = 3;
  swift_willThrow();

  v33 = v0[38];
  v34 = v0[35];
  v36 = v0[31];
  v35 = v0[32];
  v37 = v0[30];
  v39 = v0[26];
  v38 = v0[27];
  v40 = v0[25];
  v41 = v0[22];
  v42 = v0[19];
  v74 = v0[16];
  v76 = v0[15];

  v43 = v0[1];

  return v43();
}

uint64_t sub_98B60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_98FA0, 0, 0);
  }

  else
  {
    v7 = v4[42];

    v4[45] = a1;
    v8 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
    v9 = swift_task_alloc();
    v4[46] = v9;
    *v9 = v6;
    v9[1] = sub_98D10;
    v10 = v4[38];
    v11 = v4[32];
    v12 = v4[27];
    v13 = v4[13];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v13, v10, v11, v12, 0, 0, 0, 0);
  }
}

uint64_t sub_98D10()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return _swift_task_switch(sub_98E24, 0, 0);
}

uint64_t sub_98E24()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  v12 = *(v0 + 256);
  v13 = *(v0 + 288);
  v14 = *(v0 + 280);
  v15 = *(v0 + 248);
  v16 = *(v0 + 240);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v17 = *(v0 + 208);
  v18 = *(v0 + 200);
  v9 = *(v0 + 184);
  v19 = *(v0 + 176);
  v20 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 120);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v2, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_98FA0()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[37];
  v25 = v0[36];
  v27 = v0[38];
  v23 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
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
  v28 = v0[44];

  v21 = v0[1];

  return v21();
}

uint64_t sub_99124(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_99574, 0, 0);
  }

  else
  {
    v8 = v4[48];
    v7 = v4[49];
    v9 = v4[47];

    v4[52] = a1;
    v10 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
    v11 = swift_task_alloc();
    v4[53] = v11;
    *v11 = v6;
    v11[1] = sub_992E8;
    v12 = v4[38];
    v13 = v4[31];
    v14 = v4[26];
    v15 = v4[13];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v15, v12, v13, v14, 0, 0, 0, 0);
  }
}

uint64_t sub_992E8()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v4 = *v0;

  return _swift_task_switch(sub_993FC, 0, 0);
}

uint64_t sub_993FC()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  v13 = *(v0 + 288);
  v14 = *(v0 + 280);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  v12 = *(v0 + 224);
  v7 = *(v0 + 208);
  v15 = *(v0 + 256);
  v16 = *(v0 + 216);
  v8 = *(v0 + 192);
  v17 = *(v0 + 240);
  v18 = *(v0 + 200);
  v9 = *(v0 + 184);
  v19 = *(v0 + 176);
  v20 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 120);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v12);
  (*(v4 + 8))(v2, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_99574()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[37];
  v27 = v0[36];
  v29 = v0[38];
  v25 = v0[31];
  v7 = v0[29];
  v23 = v0[39];
  v24 = v0[28];
  v8 = v0[26];
  v10 = v0[23];
  v9 = v0[24];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v25, v24);
  (*(v6 + 8))(v29, v27);
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
  v26 = v0[16];
  v28 = v0[15];
  v30 = v0[51];

  v21 = v0[1];

  return v21();
}

uint64_t sub_99710(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[6] = v2;
  v4[7] = a1;
  v4[8] = v1;
  v5 = v3[54];
  v8 = *v2;
  v4[55] = v1;

  if (v1)
  {
    v6 = sub_99904;
  }

  else
  {
    v6 = sub_9982C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_9982C()
{
  v1 = v0[7];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[60] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_99E08;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 5, v7, v6);
}

uint64_t sub_99904()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v23 = *(v0 + 288);
  v25 = *(v0 + 304);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v25, v23);
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
  v24 = *(v0 + 120);
  v26 = *(v0 + 440);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_99A7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[9] = v2;
  v4[10] = a1;
  v4[11] = v1;
  v5 = v3[58];
  v10 = *v2;
  v4[59] = v1;

  if (v1)
  {
    v6 = sub_99C80;
  }

  else
  {
    v8 = v4[56];
    v7 = v4[57];

    v6 = sub_99BA8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_99BA8()
{
  v1 = v0[10];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[60] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_99E08;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 5, v7, v6);
}

uint64_t sub_99C80()
{
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = v0[37];
  v26 = v0[36];
  v28 = v0[38];
  v7 = v0[29];
  v23 = v0[28];
  v24 = v0[30];
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v24, v23);
  (*(v6 + 8))(v28, v26);
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
  v25 = v0[16];
  v27 = v0[15];
  v29 = v0[59];

  v21 = v0[1];

  return v21();
}

uint64_t sub_99E08()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 480);
  sub_5CA8(*(v2 + 120), &unk_162190, &unk_128500);

  if (v0)
  {
    v6 = sub_9A0E8;
  }

  else
  {
    v6 = sub_99F64;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_99F64()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 296);
  v13 = *(v0 + 288);
  v14 = *(v0 + 280);
  v12 = *(v0 + 240);
  v15 = *(v0 + 256);
  v16 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v17 = *(v0 + 216);
  v18 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v19 = *(v0 + 176);
  v20 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 120);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v3, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_9A0E8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 320);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  v24 = *(v0 + 288);
  v26 = *(v0 + 304);
  v5 = *(v0 + 232);
  v22 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v22, v6);
  (*(v4 + 8))(v26, v24);
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
  v23 = *(v0 + 128);
  v25 = *(v0 + 120);
  v27 = *(v0 + 496);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_9A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_9A320;

  return sub_976D8(a1, a2, a3);
}

uint64_t sub_9A320()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_9A454, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_9A454()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_9A520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_9A5D0;

  return sub_97F40(a1, a2, a3);
}

uint64_t sub_9A5D0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_9A704, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_9A704()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

unint64_t sub_9A7D4()
{
  result = qword_161810;
  if (!qword_161810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161810);
  }

  return result;
}

uint64_t sub_9A890(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
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

void sub_9A934(uint64_t *a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v336 = a5;
  v366 = a4;
  v322 = a3;
  v330 = a2;
  v357 = a1;
  v365 = a6;
  v318 = sub_123CDC();
  v317 = *(v318 - 8);
  v6 = *(v317 + 64);
  __chkstk_darwin(v318);
  v337 = &v312 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_123DAC();
  v315 = *(v316 - 8);
  v8 = *(v315 + 64);
  __chkstk_darwin(v316);
  v314 = &v312 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_123D6C();
  v319 = *(v320 - 8);
  v10 = *(v319 + 64);
  v11 = __chkstk_darwin(v320);
  v312 = &v312 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v313 = &v312 - v14;
  __chkstk_darwin(v13);
  v321 = &v312 - v15;
  v323 = type metadata accessor for TimerNLv3Intent();
  v16 = *(*(v323 - 8) + 64);
  v17 = __chkstk_darwin(v323);
  v328 = &v312 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v335 = &v312 - v19;
  v327 = sub_124BCC();
  v326 = *(v327 - 8);
  v20 = *(v326 + 64);
  __chkstk_darwin(v327);
  v325 = &v312 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_123D3C();
  v343 = *(v339 - 8);
  v22 = *(v343 + 64);
  v23 = __chkstk_darwin(v339);
  v331 = &v312 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v340 = &v312 - v25;
  v342 = sub_12379C();
  v344 = *(v342 - 8);
  v26 = *(v344 + 64);
  __chkstk_darwin(v342);
  v329 = &v312 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_5AE8(&qword_15FFB8, &qword_127BD0);
  v28 = *(*(v341 - 8) + 64);
  __chkstk_darwin(v341);
  v347 = &v312 - v29;
  v30 = sub_5AE8(&qword_15FFC0, &qword_127BD8);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v334 = &v312 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v351 = &v312 - v35;
  __chkstk_darwin(v34);
  v352 = &v312 - v36;
  v37 = sub_12514C();
  v38 = *(v37 - 8);
  v39 = v38[8];
  __chkstk_darwin(v37);
  v350 = &v312 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_5AE8(&qword_15FFC8, &qword_127BE0);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41);
  v333 = &v312 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v345 = &v312 - v46;
  v47 = __chkstk_darwin(v45);
  v346 = &v312 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v312 - v50;
  __chkstk_darwin(v49);
  v53 = &v312 - v52;
  v54 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v324 = &v312 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v332 = &v312 - v59;
  v60 = __chkstk_darwin(v58);
  v338 = &v312 - v61;
  v62 = __chkstk_darwin(v60);
  v348 = &v312 - v63;
  v64 = __chkstk_darwin(v62);
  v356 = &v312 - v65;
  v66 = __chkstk_darwin(v64);
  v349 = &v312 - v67;
  v68 = __chkstk_darwin(v66);
  v354 = &v312 - v69;
  v70 = __chkstk_darwin(v68);
  v72 = &v312 - v71;
  v73 = __chkstk_darwin(v70);
  v75 = &v312 - v74;
  __chkstk_darwin(v73);
  v77 = &v312 - v76;
  v78 = v38[13];
  v353 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v358 = v78;
  v359 = v38 + 13;
  v78(&v312 - v76);
  v360 = v38[7];
  v361 = v38 + 7;
  v360(v77, 0, 1, v37);
  v364 = v41;
  v79 = *(v41 + 48);
  sub_E344(v366, v53, &unk_15F1B0, qword_126E30);
  sub_E344(v77, &v53[v79], &unk_15F1B0, qword_126E30);
  v355 = v38;
  v80 = v38[6];
  v81 = v80(v53, 1, v37);
  v362 = v80;
  v363 = v38 + 6;
  if (v81 == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    v82 = v80(&v53[v79], 1, v37);
    v83 = v357;
    if (v82 == 1)
    {
      sub_5CA8(v53, &unk_15F1B0, qword_126E30);
      v84 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_E344(v53, v75, &unk_15F1B0, qword_126E30);
  if (v80(&v53[v79], 1, v37) == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    (v355[1])(v75, v37);
    v83 = v357;
LABEL_6:
    sub_5CA8(v53, &qword_15FFC8, &qword_127BE0);
    v84 = 0;
    goto LABEL_8;
  }

  v85 = v355;
  v86 = v350;
  (v355[4])(v350, &v53[v79], v37);
  sub_A8580(&unk_15FFE0, &type metadata accessor for DecideAction.PromptExpectation);
  v84 = sub_125B7C();
  v87 = v85[1];
  v87(v86, v37);
  sub_5CA8(v77, &unk_15F1B0, qword_126E30);
  v87(v75, v37);
  sub_5CA8(v53, &unk_15F1B0, qword_126E30);
  v83 = v357;
LABEL_8:
  v88 = v354;
  v89 = sub_A4794(v83, v84 & 1);
  v90 = v356;
  if ((v89 & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v93 = sub_125ABC();
    sub_5B30(v93, qword_161820);
    v94 = sub_125AAC();
    v95 = sub_125DFC();
    if (!os_log_type_enabled(v94, v95))
    {
      goto LABEL_17;
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = "decideActionForInput(input:type:halInfo: ... no valid timer input";
    goto LABEL_16;
  }

  v358(v72, enum case for DecideAction.PromptExpectation.confirmation(_:), v37);
  v360(v72, 0, 1, v37);
  v91 = v364[12];
  sub_E344(v366, v51, &unk_15F1B0, qword_126E30);
  sub_E344(v72, &v51[v91], &unk_15F1B0, qword_126E30);
  v92 = v362;
  if (v362(v51, 1, v37) == 1)
  {
    sub_5CA8(v72, &unk_15F1B0, qword_126E30);
    if (v92(&v51[v91], 1, v37) == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  sub_E344(v51, v88, &unk_15F1B0, qword_126E30);
  if (v92(&v51[v91], 1, v37) == 1)
  {
    sub_5CA8(v72, &unk_15F1B0, qword_126E30);
    (v355[1])(v88, v37);
LABEL_20:
    sub_5CA8(v51, &qword_15FFC8, &qword_127BE0);
    v98 = v351;
    v99 = v352;
    v100 = v349;
    goto LABEL_21;
  }

  v115 = v88;
  v116 = v355;
  v117 = &v51[v91];
  v118 = v350;
  (v355[4])(v350, v117, v37);
  sub_A8580(&unk_15FFE0, &type metadata accessor for DecideAction.PromptExpectation);
  v119 = sub_125B7C();
  v120 = v116[1];
  v120(v118, v37);
  sub_5CA8(v72, &unk_15F1B0, qword_126E30);
  v120(v115, v37);
  v90 = v356;
  sub_5CA8(v51, &unk_15F1B0, qword_126E30);
  v98 = v351;
  v99 = v352;
  v100 = v349;
  if (v119)
  {
    goto LABEL_40;
  }

LABEL_21:
  v358(v100, v353, v37);
  v360(v100, 0, 1, v37);
  v101 = v364[12];
  v102 = v346;
  sub_E344(v366, v346, &unk_15F1B0, qword_126E30);
  sub_E344(v100, v102 + v101, &unk_15F1B0, qword_126E30);
  v103 = v362;
  if (v362(v102, 1, v37) == 1)
  {
    sub_5CA8(v100, &unk_15F1B0, qword_126E30);
    if (v103(v102 + v101, 1, v37) == 1)
    {
      v51 = v102;
LABEL_24:
      sub_5CA8(v51, &unk_15F1B0, qword_126E30);
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  sub_E344(v102, v90, &unk_15F1B0, qword_126E30);
  if (v103(v102 + v101, 1, v37) == 1)
  {
    sub_5CA8(v349, &unk_15F1B0, qword_126E30);
    (v355[1])(v90, v37);
LABEL_27:
    sub_5CA8(v102, &qword_15FFC8, &qword_127BE0);
    goto LABEL_28;
  }

  v132 = v355;
  v133 = v102 + v101;
  v134 = v350;
  (v355[4])(v350, v133, v37);
  sub_A8580(&unk_15FFE0, &type metadata accessor for DecideAction.PromptExpectation);
  v135 = sub_125B7C();
  v136 = v132[1];
  v136(v134, v37);
  sub_5CA8(v349, &unk_15F1B0, qword_126E30);
  v136(v90, v37);
  v98 = v351;
  v99 = v352;
  sub_5CA8(v102, &unk_15F1B0, qword_126E30);
  if (v135)
  {
LABEL_40:
    v137 = v348;
    v358(v348, v353, v37);
    v360(v137, 0, 1, v37);
    v138 = v364[12];
    v139 = v345;
    sub_E344(v366, v345, &unk_15F1B0, qword_126E30);
    sub_E344(v137, v139 + v138, &unk_15F1B0, qword_126E30);
    v140 = v362;
    if (v362(v139, 1, v37) == 1)
    {
      sub_5CA8(v137, &unk_15F1B0, qword_126E30);
      v141 = v140(v139 + v138, 1, v37);
      v142 = v365;
      if (v141 == 1)
      {
        sub_5CA8(v139, &unk_15F1B0, qword_126E30);
        v143 = 1;
LABEL_47:
        sub_9D860(v83, v143 & 1, v142);
        return;
      }
    }

    else
    {
      v144 = v338;
      sub_E344(v139, v338, &unk_15F1B0, qword_126E30);
      v145 = v140(v139 + v138, 1, v37);
      v142 = v365;
      if (v145 != 1)
      {
        v146 = v355;
        v147 = v139 + v138;
        v148 = v350;
        (v355[4])(v350, v147, v37);
        sub_A8580(&unk_15FFE0, &type metadata accessor for DecideAction.PromptExpectation);
        v143 = sub_125B7C();
        v149 = v146[1];
        v149(v148, v37);
        sub_5CA8(v348, &unk_15F1B0, qword_126E30);
        v149(v144, v37);
        sub_5CA8(v139, &unk_15F1B0, qword_126E30);
        goto LABEL_47;
      }

      sub_5CA8(v348, &unk_15F1B0, qword_126E30);
      (v355[1])(v144, v37);
    }

    sub_5CA8(v139, &qword_15FFC8, &qword_127BE0);
    v143 = 0;
    goto LABEL_47;
  }

LABEL_28:
  sub_9F55C(v99);
  sub_12376C();
  v104 = v344;
  v105 = v98;
  v106 = v98;
  v107 = v342;
  (*(v344 + 56))(v105, 0, 1, v342);
  v108 = *(v341 + 48);
  v109 = v99;
  v110 = v99;
  v111 = v347;
  sub_E344(v109, v347, &qword_15FFC0, &qword_127BD8);
  v112 = v111;
  sub_E344(v106, v111 + v108, &qword_15FFC0, &qword_127BD8);
  v113 = *(v104 + 48);
  if (v113(v112, 1, v107) == 1)
  {
    sub_5CA8(v106, &qword_15FFC0, &qword_127BD8);
    v114 = v347;
    sub_5CA8(v110, &qword_15FFC0, &qword_127BD8);
    if (v113(v114 + v108, 1, v107) == 1)
    {
      sub_5CA8(v114, &qword_15FFC0, &qword_127BD8);
      goto LABEL_53;
    }

    goto LABEL_35;
  }

  v121 = v334;
  sub_E344(v112, v334, &qword_15FFC0, &qword_127BD8);
  if (v113(v112 + v108, 1, v107) == 1)
  {
    sub_5CA8(v351, &qword_15FFC0, &qword_127BD8);
    v114 = v347;
    sub_5CA8(v352, &qword_15FFC0, &qword_127BD8);
    (*(v344 + 8))(v121, v107);
LABEL_35:
    sub_5CA8(v114, &qword_15FFB8, &qword_127BD0);
    v122 = v339;
    v123 = v337;
    v124 = v357;
    goto LABEL_36;
  }

  v151 = v344;
  v152 = v112 + v108;
  v153 = v329;
  (*(v344 + 32))(v329, v152, v107);
  sub_A8580(&qword_161880, &type metadata accessor for ActionForInput);
  v154 = sub_125B7C();
  v155 = *(v151 + 8);
  v155(v153, v107);
  sub_5CA8(v351, &qword_15FFC0, &qword_127BD8);
  sub_5CA8(v352, &qword_15FFC0, &qword_127BD8);
  v155(v121, v107);
  sub_5CA8(v112, &qword_15FFC0, &qword_127BD8);
  v122 = v339;
  v123 = v337;
  v124 = v357;
  if (v154)
  {
LABEL_53:
    v156 = v332;
    v358(v332, enum case for DecideAction.PromptExpectation.slot(_:), v37);
    v360(v156, 0, 1, v37);
    v157 = v364[12];
    v158 = v333;
    sub_E344(v366, v333, &unk_15F1B0, qword_126E30);
    sub_E344(v156, v158 + v157, &unk_15F1B0, qword_126E30);
    v159 = v362;
    if (v362(v158, 1, v37) == 1)
    {
      sub_5CA8(v156, &unk_15F1B0, qword_126E30);
      if (v159(v158 + v157, 1, v37) == 1)
      {
        sub_5CA8(v158, &unk_15F1B0, qword_126E30);
LABEL_74:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v186 = sub_125ABC();
        sub_5B30(v186, qword_161820);
        v187 = sub_125AAC();
        v188 = sub_125DFC();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          *v189 = 0;
          _os_log_impl(&dword_0, v187, v188, "Received cancel input slot prompt input – .cancel()", v189, 2u);
        }

        sub_12376C();
        return;
      }
    }

    else
    {
      v160 = v324;
      sub_E344(v158, v324, &unk_15F1B0, qword_126E30);
      if (v159(v158 + v157, 1, v37) != 1)
      {
        v181 = v355;
        v182 = v158 + v157;
        v183 = v350;
        (v355[4])(v350, v182, v37);
        sub_A8580(&unk_15FFE0, &type metadata accessor for DecideAction.PromptExpectation);
        v184 = sub_125B7C();
        v185 = v181[1];
        v185(v183, v37);
        sub_5CA8(v156, &unk_15F1B0, qword_126E30);
        v185(v160, v37);
        sub_5CA8(v158, &unk_15F1B0, qword_126E30);
        if (v184)
        {
          goto LABEL_74;
        }

        goto LABEL_59;
      }

      sub_5CA8(v156, &unk_15F1B0, qword_126E30);
      (v355[1])(v160, v37);
    }

    sub_5CA8(v158, &qword_15FFC8, &qword_127BE0);
LABEL_59:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v161 = sub_125ABC();
    sub_5B30(v161, qword_161820);
    v94 = sub_125AAC();
    v95 = sub_125DFC();
    if (!os_log_type_enabled(v94, v95))
    {
      goto LABEL_17;
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = "Received cancel input on non-confirmation, non-slot prompt input – .ignore()";
LABEL_16:
    _os_log_impl(&dword_0, v94, v95, v97, v96, 2u);

LABEL_17:

    sub_12378C();
    return;
  }

LABEL_36:
  v125 = v340;
  sub_123CCC();
  v126 = sub_A01A0(v125, v336, v336);
  v127 = *(v343 + 8);
  (v127)(v125, v122);
  if (!v126)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v150 = sub_125ABC();
    sub_5B30(v150, qword_161820);
    v94 = sub_125AAC();
    v95 = sub_125DFC();
    if (!os_log_type_enabled(v94, v95))
    {
      goto LABEL_17;
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = "Disallowing timer input based on allowed input types for current stack state.";
    goto LABEL_16;
  }

  v128 = v331;
  sub_123CCC();
  v129 = v343;
  v130 = (*(v343 + 88))(v128, v122);
  if (v130 != enum case for Parse.NLv3IntentOnly(_:))
  {
    v131 = v335;
    if (v130 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v366 = v127;
      (*(v343 + 96))(v128, v122);
      v162 = *(v128 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

      goto LABEL_65;
    }

    if (v130 == enum case for Parse.directInvocation(_:))
    {
      sub_12377C();
      goto LABEL_85;
    }

    if (v130 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v343 + 96))(v128, v122);
      v208 = *v128;
      if (v322)
      {
        v209 = *v128;
        swift_getObjectType();
        if (SIRINLUUserDialogAct.firstUsoTask.getter())
        {
          v210 = sub_C69B0();

          if (sub_B6264(v210) == 0x627265566F6ELL && v211 == 0xE600000000000000)
          {

LABEL_113:
            if (qword_15EED0 != -1)
            {
              swift_once();
            }

            v243 = sub_125ABC();
            sub_5B30(v243, qword_161820);
            swift_unknownObjectRetain();
            v244 = sub_125AAC();
            v245 = sub_125DFC();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v244, v245))
            {
              v246 = swift_slowAlloc();
              v247 = swift_slowAlloc();
              v367 = v208;
              v368 = v247;
              *v246 = 136315138;
              swift_unknownObjectRetain();
              sub_5AE8(&unk_160610, &unk_129CC0);
              v248 = sub_125BAC();
              v250 = sub_8530(v248, v249, &v368);

              *(v246 + 4) = v250;
              _os_log_impl(&dword_0, v244, v245, "decideActionForInput decide handle disambiguation userDialogAct: %s", v246, 0xCu);
              sub_5BB0(v247);
            }

            sub_12377C();
            swift_unknownObjectRelease();
            return;
          }

          v242 = sub_1261BC();

          if (v242)
          {
            goto LABEL_113;
          }
        }
      }

      v251 = v340;
      sub_123CCC();
      v252 = sub_A588C(v251, v330);
      (v127)(v251, v122);
      if (v252 && swift_dynamicCastUnknownClass())
      {
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v253 = sub_125ABC();
        sub_5B30(v253, qword_161820);
        v254 = sub_125AAC();
        v255 = sub_125DFC();
        if (os_log_type_enabled(v254, v255))
        {
          v256 = swift_slowAlloc();
          *v256 = 0;
          _os_log_impl(&dword_0, v254, v255, "decideActionForInput: Handling action for intent", v256, 2u);
        }

        sub_12377C();
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v257 = sub_125ABC();
        sub_5B30(v257, qword_161820);
        v258 = v252;
        v259 = sub_125AAC();
        v260 = sub_125DEC();

        if (os_log_type_enabled(v259, v260))
        {
          v261 = swift_slowAlloc();
          v368 = swift_slowAlloc();
          *v261 = 136315394;
          v262 = sub_12631C();
          v264 = sub_8530(v262, v263, &v368);

          *(v261 + 4) = v264;
          *(v261 + 12) = 2080;
          v367 = v252;
          v265 = v258;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v266 = sub_125BAC();
          v268 = sub_8530(v266, v267, &v368);

          *(v261 + 14) = v268;
          _os_log_impl(&dword_0, v259, v260, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v261, 0x16u);
          swift_arrayDestroy();
        }

        sub_12378C();
        swift_unknownObjectRelease();
      }

      return;
    }

    if (v130 != enum case for Parse.uso(_:))
    {
      if (v130 == enum case for Parse.ifClientAction(_:))
      {
        v216 = v340;
        sub_123CCC();
        v217 = sub_A588C(v216, v330);
        (v127)(v216, v122);
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v218 = sub_125ABC();
        sub_5B30(v218, qword_161820);
        v219 = v217;
        v220 = sub_125AAC();
        v221 = sub_125DFC();

        if (os_log_type_enabled(v220, v221))
        {
          v222 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          v367 = v217;
          v368 = v223;
          *v222 = 136315138;
          v224 = v219;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v225 = sub_125BAC();
          v227 = sub_8530(v225, v226, &v368);

          *(v222 + 4) = v227;
          _os_log_impl(&dword_0, v220, v221, "Handling ifClientAction for intent: %s", v222, 0xCu);
          sub_5BB0(v223);

          v122 = v339;
        }

        sub_12377C();
        v193 = v331;
        goto LABEL_86;
      }

      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v228 = sub_125ABC();
      sub_5B30(v228, qword_161820);
      v229 = v317;
      v230 = v124;
      v231 = v318;
      (*(v317 + 16))(v123, v230, v318);
      v232 = sub_125AAC();
      v233 = v123;
      v234 = sub_125DEC();
      if (os_log_type_enabled(v232, v234))
      {
        v235 = swift_slowAlloc();
        v364 = v235;
        v366 = swift_slowAlloc();
        v368 = v366;
        *v235 = 136315138;
        v236 = v229;
        sub_123CCC();
        v237 = sub_125BAC();
        v239 = v238;
        (*(v236 + 8))(v233, v231);
        v240 = sub_8530(v237, v239, &v368);

        v241 = v364;
        *(v364 + 1) = v240;
        _os_log_impl(&dword_0, v232, v234, "Received unsupported parse in decideActionForInput: %s", v241, 0xCu);
        sub_5BB0(v366);
        v122 = v339;

        v128 = v331;
      }

      else
      {

        (*(v229 + 8))(v233, v231);
      }

      sub_12378C();
LABEL_85:
      v193 = v128;
LABEL_86:
      (v127)(v193, v122);
      return;
    }

    (*(v343 + 96))(v128, v122);
    (*(v319 + 32))(v321, v128, v320);
    if (v322)
    {
      v212 = v314;
      sub_123D5C();
      v213 = sub_123D8C();
      (*(v315 + 8))(v212, v316);
      if (v213)
      {
        v214 = sub_C69B0();

        if (sub_B6264(v214) == 0x627265566F6ELL && v215 == 0xE600000000000000)
        {

LABEL_133:
          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v270 = sub_125ABC();
          sub_5B30(v270, qword_161820);
          v271 = v319;
          v272 = *(v319 + 16);
          v273 = v313;
          v274 = v320;
          v272(v313, v321, v320);
          v275 = sub_125AAC();
          v276 = sub_125DFC();
          if (os_log_type_enabled(v275, v276))
          {
            v277 = swift_slowAlloc();
            v278 = swift_slowAlloc();
            v368 = v278;
            *v277 = 136315138;
            v272(v312, v273, v274);
            v279 = sub_125BAC();
            v281 = v280;
            v282 = *(v271 + 8);
            v282(v273, v274);
            v283 = sub_8530(v279, v281, &v368);

            *(v277 + 4) = v283;
            _os_log_impl(&dword_0, v275, v276, "decideActionForInput decide handle disambiguation UsoParse: %s", v277, 0xCu);
            sub_5BB0(v278);
          }

          else
          {

            v282 = *(v271 + 8);
            v282(v273, v274);
          }

          sub_12377C();
          v282(v321, v274);
          return;
        }

        v269 = sub_1261BC();

        if (v269)
        {
          goto LABEL_133;
        }
      }
    }

    v284 = v340;
    sub_123CCC();
    v285 = sub_A588C(v284, v330);
    (v127)(v284, v122);
    if (v285 && (v286 = swift_dynamicCastUnknownClass()) != 0)
    {
      v287 = v286;
      v288 = qword_15EED0;
      v289 = v285;
      v290 = v320;
      if (v288 != -1)
      {
        swift_once();
      }

      v291 = sub_125ABC();
      sub_5B30(v291, qword_161820);
      v292 = v289;
      v293 = sub_125AAC();
      v294 = sub_125DFC();

      if (os_log_type_enabled(v293, v294))
      {
        v295 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        v367 = v287;
        v368 = v296;
        *v295 = 136315138;
        swift_getWitnessTable();
        v297 = sub_12618C();
        v299 = sub_8530(v297, v298, &v368);

        *(v295 + 4) = v299;
        _os_log_impl(&dword_0, v293, v294, "Handling action for intent: %s", v295, 0xCu);
        sub_5BB0(v296);
      }

      v300 = v319;
      sub_12377C();
    }

    else
    {
      v290 = v320;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v301 = sub_125ABC();
      sub_5B30(v301, qword_161820);
      v292 = v285;
      v302 = sub_125AAC();
      v303 = sub_125DEC();

      if (os_log_type_enabled(v302, v303))
      {
        v304 = swift_slowAlloc();
        v368 = swift_slowAlloc();
        *v304 = 136315394;
        v305 = sub_12631C();
        v307 = sub_8530(v305, v306, &v368);

        *(v304 + 4) = v307;
        *(v304 + 12) = 2080;
        v367 = v285;
        v308 = v292;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v309 = sub_125BAC();
        v311 = sub_8530(v309, v310, &v368);

        *(v304 + 14) = v311;
        _os_log_impl(&dword_0, v302, v303, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v304, 0x16u);
        swift_arrayDestroy();
      }

      v300 = v319;
      sub_12378C();
    }

    (*(v300 + 8))(v321, v290);
    return;
  }

  v366 = v127;
  (*(v129 + 96))(v128, v122);
  v131 = v335;
LABEL_65:
  v163 = *(v326 + 32);
  v164 = v325;
  v165 = v128;
  v166 = v327;
  v163(v325, v165, v327);
  v163(v131, v164, v166);
  v167 = v328;
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v168 = sub_125ABC();
  sub_5B30(v168, qword_161820);
  sub_9848(v131, v167);
  v169 = sub_125AAC();
  v170 = v167;
  v171 = sub_125DFC();
  if (os_log_type_enabled(v169, v171))
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v368 = v173;
    *v172 = 136315138;
    sub_A8580(&qword_161ED0, type metadata accessor for TimerNLv3Intent);
    v174 = sub_12618C();
    v176 = v175;
    sub_97EC(v170);
    v177 = sub_8530(v174, v176, &v368);

    *(v172 + 4) = v177;
    _os_log_impl(&dword_0, v169, v171, "TimerNLIntent: %s", v172, 0xCu);
    sub_5BB0(v173);

    v122 = v339;
  }

  else
  {

    sub_97EC(v170);
  }

  v178 = v366;
  v179 = v340;
  sub_123CCC();
  v180 = sub_A588C(v179, v330);
  (v178)(v179, v122);
  if (!v180)
  {
    v190 = sub_125AAC();
    v191 = sub_125DEC();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      *v192 = 0;
      _os_log_impl(&dword_0, v190, v191, "Unable to parse intent from parse", v192, 2u);
    }

    sub_12378C();
    goto LABEL_82;
  }

  if (swift_dynamicCastUnknownClass())
  {
    sub_12377C();

LABEL_82:
    sub_97EC(v335);
    return;
  }

  v194 = v180;
  v195 = sub_125AAC();
  v196 = sub_125DEC();

  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v368 = swift_slowAlloc();
    *v197 = 136315394;
    v198 = sub_12631C();
    v200 = sub_8530(v198, v199, &v368);

    *(v197 + 4) = v200;
    *(v197 + 12) = 2080;
    v201 = v194;
    v202 = [v201 description];
    v203 = sub_125B9C();
    v205 = v204;

    v206 = sub_8530(v203, v205, &v368);

    *(v197 + 14) = v206;
    _os_log_impl(&dword_0, v195, v196, "Flows stack receives unexpected from input. Expecting: %s, Generated: %s", v197, 0x16u);
    swift_arrayDestroy();
  }

  v207 = v335;
  sub_12378C();

  sub_97EC(v207);
}

uint64_t sub_9D860@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v217 = a2;
  v236 = a1;
  v234 = a3;
  v208 = sub_123CDC();
  v207 = *(v208 - 8);
  v3 = *(v207 + 64);
  __chkstk_darwin(v208);
  v206 = &v197 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1252AC();
  v210 = *(v211 - 8);
  v5 = *(v210 + 64);
  __chkstk_darwin(v211);
  v209 = &v197 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5AE8(&unk_161EC0, &unk_126E20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v197 - v9;
  v11 = sub_123A1C();
  v226 = *(v11 - 8);
  v12 = *(v226 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v197 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v216 = &v197 - v16;
  v17 = sub_123D1C();
  v18 = *(v17 - 8);
  v223 = v17;
  v224 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v202 = &v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v214 = &v197 - v23;
  __chkstk_darwin(v22);
  v225 = &v197 - v24;
  v25 = sub_123E4C();
  v26 = *(v25 - 8);
  v232 = v25;
  v233 = v26;
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v212 = &v197 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v222 = &v197 - v31;
  v32 = __chkstk_darwin(v30);
  v201 = &v197 - v33;
  __chkstk_darwin(v32);
  v227 = &v197 - v34;
  v205 = sub_123DAC();
  v204 = *(v205 - 8);
  v35 = *(v204 + 64);
  v36 = __chkstk_darwin(v205);
  v200 = &v197 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v203 = &v197 - v38;
  v213 = sub_123D6C();
  v215 = *(v213 - 8);
  v39 = *(v215 + 64);
  __chkstk_darwin(v213);
  v218 = &v197 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_1250BC();
  v220 = *(v221 - 8);
  v41 = *(v220 + 64);
  __chkstk_darwin(v221);
  v219 = &v197 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for TimerNLv3Intent();
  v43 = *(*(v230 - 8) + 64);
  v44 = __chkstk_darwin(v230);
  v229 = &v197 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v231 = &v197 - v46;
  v237 = sub_123D3C();
  v47 = *(v237 - 8);
  v48 = *(v47 + 64);
  v49 = __chkstk_darwin(v237);
  v199 = &v197 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v235 = &v197 - v51;
  v228 = sub_124BCC();
  v52 = *(v228 - 8);
  v53 = *(v52 + 64);
  __chkstk_darwin(v228);
  v55 = &v197 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v56 = sub_125ABC();
  v57 = sub_5B30(v56, qword_161820);
  v58 = sub_125AAC();
  v59 = sub_125DFC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v198 = v10;
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "TimerFlowUtils.validateConfirmation(input:isRoomConfirmation:)", v60, 2u);
    v10 = v198;
  }

  v61 = v235;
  sub_123CCC();
  v62 = v237;
  v63 = (*(v47 + 88))(v61, v237);
  if (v63 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v47 + 96))(v61, v62);
LABEL_9:
    v65 = *(v52 + 32);
    v66 = v228;
    v65(v55, v61, v228);
    v67 = v231;
    v65(v231, v55, v66);
    v68 = v229;
    sub_9848(v67, v229);
    v69 = sub_125AAC();
    v70 = sub_125DFC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v240 = v72;
      *v71 = 136315138;
      sub_A8580(&qword_161ED0, type metadata accessor for TimerNLv3Intent);
      v73 = sub_12618C();
      v75 = v74;
      sub_97EC(v68);
      v76 = sub_8530(v73, v75, &v240);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_0, v69, v70, "validateConfirmation: %s", v71, 0xCu);
      sub_5BB0(v72);
    }

    else
    {

      sub_97EC(v68);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
    sub_12428C();
    if (v240 - 1 >= 2)
    {
      if (v240)
      {
        sub_12378C();
      }

      else
      {
        sub_12377C();
      }
    }

    else
    {
      sub_12376C();
    }

    return sub_97EC(v67);
  }

  if (v63 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v47 + 96))(v61, v62);
    v64 = *(v61 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

    goto LABEL_9;
  }

  if (v63 != enum case for Parse.directInvocation(_:))
  {
    if (v63 != enum case for Parse.NLv4IntentOnly(_:))
    {
      if (v63 == enum case for Parse.uso(_:))
      {
        (*(v47 + 96))(v61, v62);
        v116 = v213;
        (*(v215 + 32))(v218, v61, v213);
        v117 = v203;
        sub_123D5C();
        v118 = sub_123D9C();
        v119 = *(v204 + 8);
        v120 = v205;
        v119(v117, v205);
        v121 = v219;
        sub_1250AC();
        LOBYTE(v117) = sub_12506C();
        result = (*(v220 + 8))(v121, v221);
        if ((v117 & 1) == 0 || (v217 & 1) == 0)
        {
          goto LABEL_52;
        }

        v122 = sub_125AAC();
        v123 = sub_125DFC();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&dword_0, v122, v123, "Searching for room confirmation", v124, 2u);
        }

        v125 = v200;
        sub_123D5C();
        v126 = sub_123D8C();
        result = (v119)(v125, v120);
        if (v126 && (v127 = sub_C8908(), result = , v127 != 3))
        {

          sub_12377C();
          return (*(v215 + 8))(v218, v116);
        }

        else
        {
LABEL_52:
          v197 = v57;
          v128 = 0;
          v129 = *(v118 + 16);
          v130 = v232;
          v131 = v201;
          v132 = v233;
          do
          {
            if (v129 == v128)
            {
              v155 = 0;
              v157 = v232;
              v156 = v233;
              do
              {
                if (v129 == v155)
                {
                  v176 = 0;
                  v178 = v232;
                  v177 = v233;
                  do
                  {
                    if (v129 == v176)
                    {
                      v185 = 0;
                      v187 = v232;
                      v186 = v233;
                      do
                      {
                        if (v129 == v185)
                        {

                          sub_12378C();
                          return (*(v215 + 8))(v218, v213);
                        }

                        if (v185 >= *(v118 + 16))
                        {
                          goto LABEL_123;
                        }

                        v188 = v212;
                        (*(v186 + 16))(v212, v118 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v185++, v187);
                        v189 = sub_123DFC();
                        result = (*(v186 + 8))(v188, v187);
                      }

                      while ((v189 & 1) == 0);

                      v181 = sub_125AAC();
                      v182 = sub_125DFC();
                      if (!os_log_type_enabled(v181, v182))
                      {
                        goto LABEL_100;
                      }

                      v183 = swift_slowAlloc();
                      *v183 = 0;
                      v184 = "validateConfirmation: USO parse userDialogActs contains hasCancelled; returning .cancel()";
                      goto LABEL_99;
                    }

                    if (v176 >= *(v118 + 16))
                    {
                      goto LABEL_122;
                    }

                    v179 = v222;
                    (*(v177 + 16))(v222, v118 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v176++, v178);
                    v180 = sub_123DEC();
                    result = (*(v177 + 8))(v179, v178);
                  }

                  while ((v180 & 1) == 0);

                  v181 = sub_125AAC();
                  v182 = sub_125DFC();
                  if (!os_log_type_enabled(v181, v182))
                  {
                    goto LABEL_100;
                  }

                  v183 = swift_slowAlloc();
                  *v183 = 0;
                  v184 = "validateConfirmation: USO parse userDialogActs contains hasRejected; returning .cancel()";
LABEL_99:
                  _os_log_impl(&dword_0, v181, v182, v184, v183, 2u);

LABEL_100:

                  sub_12376C();
                  return (*(v215 + 8))(v218, v213);
                }

                if (v155 >= *(v118 + 16))
                {
                  goto LABEL_121;
                }

                (*(v156 + 16))(v131, v118 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v155++, v157);
                v158 = sub_123E2C();
                result = (*(v156 + 8))(v131, v157);
              }

              while ((v158 & 1) == 0);

              v135 = sub_125AAC();
              v136 = sub_125DFC();
              if (!os_log_type_enabled(v135, v136))
              {
                goto LABEL_76;
              }

              v137 = swift_slowAlloc();
              *v137 = 0;
              v138 = "validateConfirmation: USO parse userDialogActs contains hasWantedToProceed; returning .handle()";
              goto LABEL_75;
            }

            if (v128 >= *(v118 + 16))
            {
              __break(1u);
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
              return result;
            }

            v133 = v227;
            (*(v132 + 16))(v227, v118 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v128++, v130);
            v134 = sub_123DDC();
            result = (*(v132 + 8))(v133, v130);
          }

          while ((v134 & 1) == 0);

          v135 = sub_125AAC();
          v136 = sub_125DFC();
          if (!os_log_type_enabled(v135, v136))
          {
            goto LABEL_76;
          }

          v137 = swift_slowAlloc();
          *v137 = 0;
          v138 = "validateConfirmation: USO parse userDialogActs contains hasAccepted; returning .handle()";
LABEL_75:
          _os_log_impl(&dword_0, v135, v136, v138, v137, 2u);

LABEL_76:

          sub_12377C();
          return (*(v215 + 8))(v218, v213);
        }
      }

      else
      {
        v139 = v207;
        v140 = v206;
        v141 = v208;
        (*(v207 + 16))(v206, v236, v208);
        v142 = sub_125AAC();
        v143 = sub_125DEC();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          v240 = v236;
          *v144 = 136315138;
          LODWORD(v233) = v143;
          sub_123CCC();
          v145 = v237;
          v146 = sub_125BAC();
          v148 = v147;
          (*(v139 + 8))(v140, v141);
          v149 = sub_8530(v146, v148, &v240);

          *(v144 + 4) = v149;
          _os_log_impl(&dword_0, v142, v233, "validateConfirmation: Received unsupported parse for confirmation: %s", v144, 0xCu);
          sub_5BB0(v236);
        }

        else
        {

          (*(v139 + 8))(v140, v141);
          v145 = v237;
        }

        sub_12378C();
        return (*(v47 + 8))(v61, v145);
      }
    }

    (*(v47 + 96))(v61, v62);
    v99 = *v61;
    v100 = v219;
    sub_1250AC();
    v101 = sub_12506C();
    (*(v220 + 8))(v100, v221);
    if (v101 && (v217 & 1) != 0)
    {
      v102 = sub_125AAC();
      v103 = sub_125DFC();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&dword_0, v102, v103, "Searching for room confirmation", v104, 2u);
      }

      swift_getObjectType();
      if (SIRINLUUserDialogAct.firstUsoTask.getter())
      {
        v105 = sub_C8908();

        if (v105 != 3)
        {
          goto LABEL_41;
        }
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      swift_unknownObjectRetain();
      v106 = sub_125AAC();
      v107 = sub_125DFC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v240 = v109;
        *v108 = 136315138;
        v238 = v99;
        swift_unknownObjectRetain();
        sub_5AE8(&unk_160610, &unk_129CC0);
        v110 = sub_125BAC();
        v112 = sub_8530(v110, v111, &v240);

        *(v108 + 4) = v112;
        _os_log_impl(&dword_0, v106, v107, "validateConfirmation: Received UserDialogAct - %s", v108, 0xCu);
        sub_5BB0(v109);
      }

LABEL_41:
      sub_12377C();
      return swift_unknownObjectRelease();
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v172 = sub_125AAC();
      v173 = sub_125DFC();
      if (!os_log_type_enabled(v172, v173))
      {
LABEL_105:

        sub_12376C();
        return swift_unknownObjectRelease();
      }

      v174 = swift_slowAlloc();
      *v174 = 0;
      v175 = "validateConfirmation: Received UserDialogAct - UserRejected";
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        sub_12378C();
        return swift_unknownObjectRelease();
      }

      v172 = sub_125AAC();
      v173 = sub_125DFC();
      if (!os_log_type_enabled(v172, v173))
      {
        goto LABEL_105;
      }

      v174 = swift_slowAlloc();
      *v174 = 0;
      v175 = "validateConfirmation: Received UserDialogAct - UserCancelled";
    }

    _os_log_impl(&dword_0, v172, v173, v175, v174, 2u);

    goto LABEL_105;
  }

  (*(v47 + 96))(v61, v62);
  v78 = v224;
  v77 = v225;
  v79 = v61;
  v80 = v223;
  (*(v224 + 32))(v225, v79, v223);
  sub_12527C();
  if ((*(v226 + 48))(v10, 1, v11) == 1)
  {
    sub_5CA8(v10, &unk_161EC0, &unk_126E20);
    v81 = sub_123D0C();
    if (!v81)
    {
LABEL_79:
      v159 = *(v78 + 16);
      v160 = v214;
      v159(v214, v225, v80);
      v161 = sub_125AAC();
      v162 = sub_125DFC();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = v80;
        v164 = swift_slowAlloc();
        v165 = v78;
        v166 = swift_slowAlloc();
        v240 = v166;
        *v164 = 136315138;
        v159(v202, v160, v163);
        v167 = sub_125BAC();
        v169 = v168;
        v170 = *(v165 + 8);
        v170(v160, v163);
        v171 = sub_8530(v167, v169, &v240);

        *(v164 + 4) = v171;
        _os_log_impl(&dword_0, v161, v162, "validateConfirmation: Request was not cancelled by user. Proceed with directInvocation %s", v164, 0xCu);
        sub_5BB0(v166);

        v80 = v163;
      }

      else
      {

        v170 = *(v78 + 8);
        v170(v160, v80);
      }

      sub_12377C();
      return (v170)(v225, v80);
    }

    v82 = v81;
    v83 = v78;
    v84 = v210;
    v85 = v209;
    v86 = v211;
    (*(v210 + 104))(v209, enum case for DirectInvocationUtils.Timer.UserInfoKey.buttonPressed(_:), v211);
    v87 = sub_12529C();
    v89 = v88;
    (*(v84 + 8))(v85, v86);
    if (*(v82 + 16))
    {
      v90 = sub_8AD8(v87, v89);
      v92 = v91;

      if (v92)
      {
        sub_8B50(*(v82 + 56) + 32 * v90, &v240);

        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_78:
          v78 = v83;
          goto LABEL_79;
        }

        v94 = v238;
        v93 = v239;

        v95._rawValue = &off_157950;
        v241._countAndFlagsBits = v94;
        v241._object = v93;
        v96 = sub_12613C(v95, v241);

        if (!v96)
        {
          v97 = 0;
LABEL_107:

          v190 = sub_125AAC();
          v191 = sub_125DFC();

          if (os_log_type_enabled(v190, v191))
          {
            v192 = swift_slowAlloc();
            v193 = swift_slowAlloc();
            v240 = v193;
            *v192 = 136315138;
            v194 = sub_8530(v94, v93, &v240);

            *(v192 + 4) = v194;
            _os_log_impl(&dword_0, v190, v191, "validateConfirmation: Received confirmation directInvocation, buttonPressed: %s", v192, 0xCu);
            sub_5BB0(v193);
          }

          else
          {
          }

          v195 = v225;
          if (v97)
          {
            v196 = sub_1261BC();

            if ((v196 & 1) == 0)
            {
              sub_12376C();
              return (*(v224 + 8))(v195, v80);
            }
          }

          else
          {
          }

          sub_12377C();
          return (*(v224 + 8))(v195, v80);
        }

        if (v96 == 1)
        {
          v97 = 1;
          goto LABEL_107;
        }
      }
    }

    else
    {
    }

    goto LABEL_78;
  }

  v113 = v226;
  v114 = v216;
  (*(v226 + 32))(v216, v10, v11);
  (*(v113 + 16))(v15, v114, v11);
  v115 = (*(v113 + 88))(v15, v11);
  if (v115 == enum case for ConfirmationResponse.confirmed(_:))
  {
    sub_12377C();
LABEL_60:
    (*(v226 + 8))(v114, v11);
    return (*(v78 + 8))(v77, v80);
  }

  if (v115 == enum case for ConfirmationResponse.rejected(_:))
  {
    sub_12376C();
    goto LABEL_60;
  }

  v150 = v77;
  v237 = v15;
  v151 = sub_125AAC();
  v152 = sub_125DEC();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_0, v151, v152, "validateConfirmation: Received an unknown, unhandled SiriKit confirmation, returning .ignore() for interaction", v153, 2u);
  }

  sub_12378C();
  v154 = *(v226 + 8);
  v154(v114, v11);
  (*(v78 + 8))(v150, v80);
  return (v154)(v237, v11);
}

uint64_t sub_9F510()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161820);
  sub_5B30(v0, qword_161820);
  return sub_1257AC();
}

uint64_t sub_9F55C@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v81 = sub_123E4C();
  v83 = *(v81 - 8);
  v1 = *(v83 + 64);
  v2 = __chkstk_darwin(v81);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v73 - v4;
  v6 = sub_123DAC();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  __chkstk_darwin(v6);
  v75 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_123D6C();
  v78 = *(v80 - 8);
  v9 = *(v78 + 64);
  __chkstk_darwin(v80);
  v79 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TimerNLv3Intent();
  v11 = *(*(v82 - 8) + 64);
  v12 = __chkstk_darwin(v82);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v73 - v15;
  v17 = sub_123D3C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_124BCC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  v27 = (*(v18 + 88))(v21, v17);
  if (v27 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v18 + 96))(v21, v17);
LABEL_5:
    v29 = *(v23 + 32);
    v29(v26, v21, v22);
    v29(v16, v26, v22);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v30 = sub_125ABC();
    sub_5B30(v30, qword_161820);
    sub_9848(v16, v14);
    v31 = sub_125AAC();
    v32 = sub_125DFC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v85 = v34;
      *v33 = 136315138;
      sub_A8580(&qword_161ED0, type metadata accessor for TimerNLv3Intent);
      v35 = sub_12618C();
      v37 = v36;
      sub_97EC(v14);
      v38 = sub_8530(v35, v37, &v85);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_0, v31, v32, "validateCancellation: %s", v33, 0xCu);
      sub_5BB0(v34);
    }

    else
    {

      sub_97EC(v14);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
    sub_12428C();
    if (v86 - 1 < 2)
    {
      v39 = v84;
      sub_12376C();
      sub_97EC(v16);
LABEL_14:
      v40 = sub_12379C();
      v41 = *(*(v40 - 8) + 56);
      v42 = v39;
      goto LABEL_15;
    }

    sub_97EC(v16);
LABEL_17:
    v40 = sub_12379C();
    v41 = *(*(v40 - 8) + 56);
    v42 = v84;
    v43 = 1;
    return v41(v42, v43, 1, v40);
  }

  if (v27 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v18 + 96))(v21, v17);
    v28 = *(v21 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

    goto LABEL_5;
  }

  if (v27 != enum case for Parse.directInvocation(_:))
  {
    if (v27 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v18 + 96))(v21, v17);
      v46 = *v21;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
          goto LABEL_17;
        }

        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v65 = sub_125ABC();
        sub_5B30(v65, qword_161820);
        v48 = sub_125AAC();
        v49 = sub_125DFC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          v51 = "validateCancellation: Received UserDialogAct - UserCancelled";
          goto LABEL_40;
        }

LABEL_41:

        v66 = v84;
        sub_12376C();
        swift_unknownObjectRelease();
        v40 = sub_12379C();
        v41 = *(*(v40 - 8) + 56);
        v42 = v66;
LABEL_15:
        v43 = 0;
        return v41(v42, v43, 1, v40);
      }

      if (qword_15EED0 == -1)
      {
LABEL_24:
        v47 = sub_125ABC();
        sub_5B30(v47, qword_161820);
        v48 = sub_125AAC();
        v49 = sub_125DFC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          v51 = "validateCancellation: Received UserDialogAct - UserRejected";
LABEL_40:
          _os_log_impl(&dword_0, v48, v49, v51, v50, 2u);

          goto LABEL_41;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v27 != enum case for Parse.uso(_:))
      {
        goto LABEL_20;
      }

      (*(v18 + 96))(v21, v17);
      v52 = v78;
      (*(v78 + 32))(v79, v21, v80);
      v53 = v75;
      sub_123D5C();
      v54 = sub_123D9C();
      (*(v76 + 8))(v53, v77);
      v55 = 0;
      v56 = *(v54 + 16);
      v57 = v83;
      while (1)
      {
        if (v56 == v55)
        {
          v67 = 0;
          v68 = v74;
          v69 = v83;
          do
          {
            if (v56 == v67)
            {
              (*(v52 + 8))(v79, v80);

              goto LABEL_17;
            }

            if (v67 >= *(v54 + 16))
            {
              goto LABEL_55;
            }

            v70 = v81;
            (*(v69 + 16))(v68, v54 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67++, v81);
            v71 = sub_123DFC();
            (*(v69 + 8))(v68, v70);
          }

          while ((v71 & 1) == 0);

          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v72 = sub_125ABC();
          sub_5B30(v72, qword_161820);
          v61 = sub_125AAC();
          v62 = sub_125DFC();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            v64 = "validateCancellation: USO parse userDialogActs contains hasCancelled; returning .cancel()";
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v55 >= *(v54 + 16))
        {
          break;
        }

        v58 = v81;
        (*(v57 + 16))(v5, v54 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v55++, v81);
        v59 = sub_123DEC();
        (*(v57 + 8))(v5, v58);
        if (v59)
        {

          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v60 = sub_125ABC();
          sub_5B30(v60, qword_161820);
          v61 = sub_125AAC();
          v62 = sub_125DFC();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            v64 = "validateCancellation: USO parse userDialogActs contains hasRejected; returning .cancel()";
LABEL_50:
            _os_log_impl(&dword_0, v61, v62, v64, v63, 2u);
          }

LABEL_51:

          v39 = v84;
          sub_12376C();
          (*(v52 + 8))(v79, v80);
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
    }

    swift_once();
    goto LABEL_24;
  }

LABEL_20:
  v45 = sub_12379C();
  (*(*(v45 - 8) + 56))(v84, 1, 1, v45);
  return (*(v18 + 8))(v21, v17);
}

BOOL sub_A01A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a3;
  v118 = a1;
  v119 = a2;
  v3 = sub_123DAC();
  v108 = *(v3 - 8);
  v109 = v3;
  v4 = *(v108 + 64);
  __chkstk_darwin(v3);
  v107 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_123D6C();
  v111 = *(v6 - 8);
  v112 = v6;
  v7 = *(v111 + 64);
  __chkstk_darwin(v6);
  v110 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1252AC();
  v105 = *(v9 - 8);
  v106 = v9;
  v10 = *(v105 + 64);
  __chkstk_darwin(v9);
  v104 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1252CC();
  v113 = *(v12 - 8);
  v13 = *(v113 + 64);
  __chkstk_darwin(v12);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_123D1C();
  v114 = *(v16 - 8);
  v115 = v16;
  v17 = *(v114 + 64);
  __chkstk_darwin(v16);
  v116 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TimerNLv3Intent();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_123D3C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_124BCC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v118, v23);
  v33 = (*(v24 + 88))(v27, v23);
  if (v33 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v24 + 96))(v27, v23);
LABEL_5:
    v35 = *(v29 + 32);
    v35(v32, v27, v28);
    v35(v22, v32, v28);
    if (qword_15EF50 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
    sub_12428C();
    sub_97EC(v22);
    v36 = byte_1292FA[SLOBYTE(v121[0])];
    v37 = v119;
    goto LABEL_8;
  }

  if (v33 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v24 + 96))(v27, v23);
    v34 = *(v27 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

    goto LABEL_5;
  }

  if (v33 == enum case for Parse.directInvocation(_:))
  {
    (*(v24 + 96))(v27, v23);
    v51 = v114;
    v50 = v115;
    (*(v114 + 32))(v116, v27, v115);
    v52 = sub_123CFC();
    v54 = v53;
    v55 = v113;
    (*(v113 + 104))(v15, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v12);
    v56 = sub_1252BC();
    v58 = v57;
    (*(v55 + 8))(v15, v12);
    v37 = v119;
    if (v52 == v56 && v54 == v58)
    {

LABEL_26:
      v36 = 10;
LABEL_27:
      (*(v51 + 8))(v116, v50);
LABEL_8:
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v38 = sub_125ABC();
      sub_5B30(v38, qword_161820);
      v39 = sub_125AAC();
      v40 = sub_125DFC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v121[0] = swift_slowAlloc();
        *v41 = 136315394;
        v120 = v37;
        swift_getMetatypeMetadata();
        v42 = sub_125BAC();
        v44 = sub_8530(v42, v43, v121);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        LOBYTE(v120) = v36;
        v45 = sub_125BAC();
        v47 = sub_8530(v45, v46, v121);

        *(v41 + 14) = v47;
        _os_log_impl(&dword_0, v39, v40, "Testing currentIntentType %s against input verb %s", v41, 0x16u);
        swift_arrayDestroy();
      }

      result = 1;
      switch(v36)
      {
        case 1:
        case 3:
        case 4:
        case 9:
          v49 = sub_1255EC();
          goto LABEL_38;
        case 2:
          goto LABEL_35;
        case 5:
          v49 = sub_12555C();
          goto LABEL_38;
        case 7:
        case 17:
        case 18:
          v49 = sub_12558C();
          goto LABEL_38;
        case 8:
          v49 = sub_12564C();
          goto LABEL_38;
        case 10:
          if (sub_1256CC() == v37)
          {
            return 1;
          }

LABEL_35:
          v49 = sub_12561C();
          goto LABEL_38;
        case 12:
          v49 = sub_12550C();
          goto LABEL_38;
        case 13:
        case 14:
          return result;
        default:
          v49 = sub_12568C();
LABEL_38:
          result = v49 == v37;
          break;
      }

      return result;
    }

    v61 = sub_1261BC();

    if (v61)
    {
      goto LABEL_26;
    }

    v68 = sub_123D0C();
    if (!v68)
    {
      goto LABEL_77;
    }

    v69 = v68;
    v71 = v105;
    v70 = v106;
    v72 = v104;
    (*(v105 + 104))(v104, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v106);
    v73 = sub_12529C();
    v75 = v74;
    (*(v71 + 8))(v72, v70);
    if (*(v69 + 16))
    {
      v76 = sub_8AD8(v73, v75);
      v78 = v77;

      if (v78)
      {
        sub_8B50(*(v69 + 56) + 32 * v76, v121);

        if (swift_dynamicCast())
        {
          v36 = sub_B66D0();
          if (v36 != 19)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
    }

LABEL_77:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v99 = sub_125ABC();
    sub_5B30(v99, qword_161820);
    v100 = sub_125AAC();
    v101 = sub_125DFC();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_0, v100, v101, "Unknown direct invocation payload (missing/unknown timer verb). Disallowing input.", v102, 2u);
    }

    (*(v51 + 8))(v116, v50);
    return 0;
  }

  v37 = v119;
  if (v33 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v24 + 96))(v27, v23);
    v59 = *v27;
    swift_getObjectType();
    if (SIRINLUUserDialogAct.firstUsoTask.getter())
    {
      v36 = sub_C69B0();
      if (sub_B6264(v36) == 1886352499 && v60 == 0xE400000000000000)
      {

        goto LABEL_53;
      }

      v83 = sub_1261BC();

      if (v83)
      {
LABEL_53:
        v84 = sub_C6BD8();
        swift_unknownObjectRelease();

        if ((v84 & 1) == 0)
        {
          goto LABEL_8;
        }

        return 1;
      }

      swift_unknownObjectRelease();
LABEL_83:

      goto LABEL_8;
    }

    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v79 = sub_125ABC();
    sub_5B30(v79, qword_161820);
    v80 = sub_125AAC();
    v81 = sub_125DFC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_0, v80, v81, "No USO task found on input. Deferring to later checks for parse validity.", v82, 2u);
    }

    swift_unknownObjectRelease();

    return 1;
  }

  else if (v33 == enum case for Parse.uso(_:))
  {
    (*(v24 + 96))(v27, v23);
    v63 = v110;
    v62 = v111;
    v64 = v112;
    (*(v111 + 32))(v110, v27, v112);
    v65 = v107;
    sub_123D5C();
    v66 = sub_32E7C();
    (*(v108 + 8))(v65, v109);
    if (v66)
    {
      v36 = sub_C69B0();
      if (sub_B6264(v36) == 1886352499 && v67 == 0xE400000000000000)
      {
      }

      else
      {
        v93 = sub_1261BC();

        if ((v93 & 1) == 0)
        {
          (*(v62 + 8))(v63, v64);
          goto LABEL_83;
        }
      }

      v94 = sub_C6BD8();

      (*(v62 + 8))(v63, v64);
      if ((v94 & 1) == 0)
      {
        goto LABEL_8;
      }

      return 1;
    }

    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v89 = sub_125ABC();
    sub_5B30(v89, qword_161820);
    v90 = sub_125AAC();
    v91 = sub_125DFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "No USO task found on input. Deferring to later checks for parse validity.", v92, 2u);
    }

    (*(v62 + 8))(v63, v64);
    return 1;
  }

  else if (v33 == enum case for Parse.ifClientAction(_:))
  {
    (*(v24 + 8))(v27, v23);
    return 1;
  }

  else if (v33 == enum case for Parse.empty(_:))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v85 = sub_125ABC();
    sub_5B30(v85, qword_161820);
    v86 = sub_125AAC();
    v87 = sub_125DFC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "Empty parse found while testing valid input. Disallowing empty input.", v88, 2u);
    }

    return 0;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v95 = sub_125ABC();
    sub_5B30(v95, qword_161820);
    v96 = sub_125AAC();
    v97 = sub_125DEC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "Unknown parse type found while testing input validity. Disallowing unknown input.", v98, 2u);
    }

    (*(v24 + 8))(v27, v23);
    return 0;
  }
}

void sub_A11D4(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v290 = a2;
  v301 = a1;
  v299 = a4;
  v5 = sub_5AE8(&unk_161EC0, &unk_126E20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v280 = &v263 - v7;
  v282 = sub_123A1C();
  v281 = *(v282 - 8);
  v8 = *(v281 + 64);
  v9 = __chkstk_darwin(v282);
  v279 = &v263 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v276 = &v263 - v11;
  v12 = sub_123D1C();
  v284 = *(v12 - 8);
  v285 = v12;
  v13 = *(v284 + 64);
  __chkstk_darwin(v12);
  v283 = &v263 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_123E4C();
  v291 = *(v15 - 8);
  v292 = v15;
  v16 = *(v291 + 64);
  v17 = __chkstk_darwin(v15);
  v286 = &v263 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v289 = &v263 - v20;
  __chkstk_darwin(v19);
  v267 = &v263 - v21;
  v270 = sub_123DAC();
  v275 = *(v270 - 8);
  v22 = *(v275 + 64);
  v23 = __chkstk_darwin(v270);
  v266 = &v263 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v269 = &v263 - v25;
  v273 = sub_123D6C();
  v26 = *(v273 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v273);
  v264 = &v263 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v265 = &v263 - v31;
  __chkstk_darwin(v30);
  v274 = &v263 - v32;
  v278 = sub_123CDC();
  v277 = *(v278 - 8);
  v33 = *(v277 + 64);
  v34 = __chkstk_darwin(v278);
  v268 = &v263 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v271 = &v263 - v36;
  v37 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v287 = &v263 - v39;
  v298 = type metadata accessor for TimerNLv3Intent();
  v40 = *(*(v298 - 8) + 64);
  v41 = __chkstk_darwin(v298);
  v296 = &v263 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v263 - v43;
  v45 = sub_123D3C();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v45);
  v288 = &v263 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v300 = &v263 - v50;
  v51 = sub_124BCC();
  v294 = *(v51 - 8);
  v295 = v51;
  v52 = *(v294 + 64);
  __chkstk_darwin(v51);
  v293 = &v263 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v54 = sub_125ABC();
  v55 = sub_5B30(v54, qword_161820);
  v56 = sub_125AAC();
  v57 = sub_125DDC();
  v58 = os_log_type_enabled(v56, v57);
  v297 = a3;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v272 = v26;
    v60 = v59;
    v61 = v44;
    v62 = v55;
    v63 = swift_slowAlloc();
    v302 = a3;
    v303 = v63;
    *v60 = 136315138;
    swift_getMetatypeMetadata();
    v64 = sub_125BAC();
    v66 = v45;
    v67 = sub_8530(v64, v65, &v303);

    *(v60 + 4) = v67;
    v45 = v66;
    _os_log_impl(&dword_0, v56, v57, "TimerFlowUtils.decideActionForDisambiguationInput with intent type: %s", v60, 0xCu);
    sub_5BB0(v63);
    v55 = v62;
    v44 = v61;

    v26 = v272;
  }

  v68 = sub_A4794(v301, 0);
  v69 = v300;
  if ((v68 & 1) == 0)
  {
    sub_12378C();
    return;
  }

  sub_123CCC();
  v70 = v46;
  v71 = (*(v46 + 88))(v69, v45);
  if (v71 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v46 + 96))(v69, v45);
    goto LABEL_11;
  }

  if (v71 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v46 + 96))(v69, v45);
    v72 = *&v69[*(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48)];

LABEL_11:
    v73 = v293;
    v74 = *(v294 + 32);
    v75 = v295;
    v74(v293, v69, v295);
    v74(v44, v73, v75);
    v300 = v44;
    v76 = v296;
    sub_9848(v44, v296);
    v77 = sub_125AAC();
    v78 = sub_125DFC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v295 = v55;
      v81 = v80;
      v303 = v80;
      *v79 = 136315138;
      sub_A8580(&qword_161ED0, type metadata accessor for TimerNLv3Intent);
      v82 = sub_12618C();
      v83 = v45;
      v85 = v84;
      sub_97EC(v76);
      v86 = sub_8530(v82, v85, &v303);
      v45 = v83;

      *(v79 + 4) = v86;
      _os_log_impl(&dword_0, v77, v78, "TimerNLIntent: %s", v79, 0xCu);
      sub_5BB0(v81);
    }

    else
    {

      sub_97EC(v76);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
    v87 = v300;
    sub_12428C();
    if (v303 > 1u)
    {
      if (v303 != 2)
      {
        v99 = v288;
        sub_123CCC();
        v100 = sub_12532C();
        v101 = v287;
        (*(*(v100 - 8) + 56))(v287, 1, 1, v100);
        v102 = sub_A588C(v99, v101);
        sub_5CA8(v101, &qword_15FFB0, &unk_1270A0);
        (*(v70 + 8))(v99, v45);
        if (v102)
        {
          if (swift_dynamicCastUnknownClass())
          {
            sub_12377C();
          }

          else
          {
            v127 = v277;
            v128 = v271;
            v129 = v278;
            (*(v277 + 16))(v271, v301, v278);
            v102 = v102;
            v130 = sub_125AAC();
            v131 = sub_125DEC();

            if (os_log_type_enabled(v130, v131))
            {
              v132 = v128;
              v133 = swift_slowAlloc();
              v301 = swift_slowAlloc();
              v303 = v301;
              *v133 = 136315650;
              sub_A8580(&unk_161858, &type metadata accessor for Input);
              v134 = sub_12618C();
              v136 = v135;
              (*(v127 + 8))(v132, v129);
              v137 = sub_8530(v134, v136, &v303);

              *(v133 + 4) = v137;
              *(v133 + 12) = 2080;
              v138 = sub_12631C();
              v140 = sub_8530(v138, v139, &v303);

              *(v133 + 14) = v140;
              *(v133 + 22) = 2080;
              v141 = v102;
              v142 = [v141 description];
              v143 = sub_125B9C();
              v145 = v144;

              v146 = sub_8530(v143, v145, &v303);

              *(v133 + 24) = v146;
              _os_log_impl(&dword_0, v130, v131, "Flows stack receives unexpected from input %s. Expecting: %s, Generated: %s", v133, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v127 + 8))(v128, v129);
            }

            sub_12378C();
          }
        }

        else
        {
          v112 = sub_125AAC();
          v113 = sub_125DEC();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_0, v112, v113, "Unable to parse intent from parse", v114, 2u);
          }

          sub_12378C();
        }

        v88 = v300;
        goto LABEL_69;
      }
    }

    else if (!v303 || (v290 & 1) != 0)
    {
      sub_12377C();
LABEL_22:
      v88 = v87;
LABEL_69:
      sub_97EC(v88);
      return;
    }

    sub_12376C();
    goto LABEL_22;
  }

  if (v71 == enum case for Parse.directInvocation(_:))
  {
    (*(v46 + 96))(v69, v45);
    v90 = v283;
    v89 = v284;
    v91 = v69;
    v92 = v285;
    (*(v284 + 32))(v283, v91, v285);
    v93 = v280;
    sub_12527C();
    v94 = v281;
    v95 = v282;
    if ((*(v281 + 48))(v93, 1, v282) == 1)
    {
      sub_5CA8(v93, &unk_161EC0, &unk_126E20);
      v96 = sub_125AAC();
      v97 = sub_125DFC();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_0, v96, v97, "Received confirmation directInvocation, buttonPressed", v98, 2u);
      }

      sub_12377C();
    }

    else
    {
      v115 = v276;
      (*(v94 + 32))(v276, v93, v95);
      v116 = v279;
      (*(v94 + 16))(v279, v115, v95);
      v117 = (*(v94 + 88))(v116, v95);
      if (v117 != enum case for ConfirmationResponse.confirmed(_:) && v117 != enum case for ConfirmationResponse.rejected(_:))
      {
        v161 = sub_125AAC();
        v162 = sub_125DEC();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          _os_log_impl(&dword_0, v161, v162, "Received an unknown, unhandled SiriKit confirmation, returning .ignore() for interaction", v163, 2u);
          v115 = v276;
        }

        sub_12378C();
        v164 = *(v94 + 8);
        v164(v115, v95);
        (*(v89 + 8))(v90, v92);
        v164(v279, v95);
        return;
      }

      sub_12377C();
      (*(v94 + 8))(v115, v95);
    }

    (*(v89 + 8))(v90, v92);
    return;
  }

  if (v71 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v46 + 96))(v69, v45);
    v103 = *v69;
    if (v290)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        swift_unknownObjectRetain();
        v104 = sub_125AAC();
        v105 = sub_125DFC();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v104, v105))
        {
LABEL_39:

          sub_12377C();
LABEL_62:
          swift_unknownObjectRelease();
          return;
        }

        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v302 = v103;
        v303 = v107;
        *v106 = 136315138;
        swift_unknownObjectRetain();
        sub_5AE8(&unk_160610, &unk_129CC0);
        v108 = sub_125BAC();
        v110 = sub_8530(v108, v109, &v303);

        *(v106 + 4) = v110;
        v111 = "Received UserDialogAct - %s";
LABEL_38:
        _os_log_impl(&dword_0, v104, v105, v111, v106, 0xCu);
        sub_5BB0(v107);

        goto LABEL_39;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v147 = sub_125AAC();
        v148 = sub_125DFC();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          *v149 = 0;
          _os_log_impl(&dword_0, v147, v148, "Received UserDialogAct - UserCancelled", v149, 2u);
        }

        sub_12376C();
        goto LABEL_62;
      }
    }

    swift_getObjectType();
    if (SIRINLUUserDialogAct.firstUsoTask.getter())
    {
      v174 = sub_C69B0();

      if (sub_B6264(v174) == 0x627265566F6ELL && v175 == 0xE600000000000000)
      {

LABEL_102:
        swift_unknownObjectRetain();
        v104 = sub_125AAC();
        v105 = sub_125DFC();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v104, v105))
        {
          goto LABEL_39;
        }

        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v302 = v103;
        v303 = v107;
        *v106 = 136315138;
        swift_unknownObjectRetain();
        sub_5AE8(&unk_160610, &unk_129CC0);
        v196 = sub_125BAC();
        v198 = sub_8530(v196, v197, &v303);

        *(v106 + 4) = v198;
        v111 = "decideActionForDisambiguationInput: decide handle disambiguation userDialogAct: %s";
        goto LABEL_38;
      }

      v195 = sub_1261BC();

      if (v195)
      {
        goto LABEL_102;
      }
    }

    v199 = v288;
    sub_123CCC();
    v200 = sub_12532C();
    v201 = v287;
    (*(*(v200 - 8) + 56))(v287, 1, 1, v200);
    v202 = sub_A588C(v199, v201);
    sub_5CA8(v201, &qword_15FFB0, &unk_1270A0);
    (*(v46 + 8))(v199, v45);
    if (v202 && (v203 = swift_dynamicCastUnknownClass()) != 0)
    {
      v204 = v203;
      v205 = v202;
      v206 = sub_125AAC();
      v207 = sub_125DFC();
      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v302 = v204;
        v303 = v209;
        *v208 = 136315138;
        swift_getWitnessTable();
        v210 = sub_12618C();
        v212 = sub_8530(v210, v211, &v303);

        *(v208 + 4) = v212;
        _os_log_impl(&dword_0, v206, v207, "decideActionForDisambiguationInput: Handling action for intent: %s", v208, 0xCu);
        sub_5BB0(v209);
      }

      sub_12377C();
      swift_unknownObjectRelease();
    }

    else
    {
      v213 = v202;
      v214 = sub_125AAC();
      v215 = sub_125DEC();

      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        *v216 = 136315394;
        v217 = sub_12631C();
        v219 = sub_8530(v217, v218, &v303);

        *(v216 + 4) = v219;
        *(v216 + 12) = 2080;
        v302 = v202;
        v220 = v213;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v221 = sub_125BAC();
        v223 = sub_8530(v221, v222, &v303);

        *(v216 + 14) = v223;
        _os_log_impl(&dword_0, v214, v215, "decideActionForDisambiguationInput: Intent from parse does not match IntentType. Expected %s, received %s", v216, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      swift_unknownObjectRelease();
    }

    return;
  }

  if (v71 != enum case for Parse.uso(_:))
  {
    v150 = v45;
    v151 = v277;
    v152 = v268;
    v153 = v278;
    (*(v277 + 16))(v268, v301, v278);
    v154 = sub_125AAC();
    v155 = sub_125DEC();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      v303 = v301;
      *v156 = 136315138;
      sub_123CCC();
      v157 = sub_125BAC();
      v159 = v158;
      (*(v151 + 8))(v152, v153);
      v160 = sub_8530(v157, v159, &v303);
      v69 = v300;

      *(v156 + 4) = v160;
      _os_log_impl(&dword_0, v154, v155, "Received unsupported parse for confirmation: %s", v156, 0xCu);
      sub_5BB0(v301);
    }

    else
    {

      (*(v151 + 8))(v152, v153);
    }

    sub_12378C();
    (*(v46 + 8))(v69, v150);
    return;
  }

  v295 = v55;
  v296 = v46;
  v118 = *(v46 + 96);
  v298 = v45;
  v118(v69, v45);
  v272 = v26;
  (*(v26 + 32))(v274, v69, v273);
  v119 = v269;
  sub_123D5C();
  v120 = sub_123D9C();
  v121 = *(v275 + 8);
  v275 += 8;
  v121(v119, v270);
  v122 = *(v120 + 16);
  v123 = (v291 + 8);
  if ((v290 & 1) == 0)
  {
    v165 = 0;
    v166 = v291;
    v167 = v292;
    while (v122 != v165)
    {
      if (v165 >= *(v120 + 16))
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        return;
      }

      v168 = v289;
      (*(v166 + 16))(v289, v120 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v165++, v167);
      v169 = sub_123DEC();
      (*(v166 + 8))(v168, v167);
      if (v169)
      {

        v170 = sub_125AAC();
        v171 = sub_125DFC();
        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          *v172 = 0;
          v173 = "USO parse userDialogActs contains hasRejected, and we're in a non-windowed config -- returning .cancel()!";
          goto LABEL_91;
        }

LABEL_92:

        sub_12376C();
        (*(v272 + 8))(v274, v273);
        return;
      }
    }

LABEL_85:
    v176 = 0;
    v177 = *(v120 + 16);
    v178 = v291;
    v179 = v292;
    while (v177 != v176)
    {
      if (v176 >= *(v120 + 16))
      {
        goto LABEL_126;
      }

      v180 = v286;
      (*(v178 + 16))(v286, v120 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v176++, v179);
      v181 = sub_123DFC();
      (*(v178 + 8))(v180, v179);
      if (v181)
      {

        v170 = sub_125AAC();
        v171 = sub_125DFC();
        if (!os_log_type_enabled(v170, v171))
        {
          goto LABEL_92;
        }

        v172 = swift_slowAlloc();
        *v172 = 0;
        v173 = "USO parse userDialogActs contains hasCancelled; returning .cancel()";
LABEL_91:
        _os_log_impl(&dword_0, v170, v171, v173, v172, 2u);

        goto LABEL_92;
      }
    }

    v188 = v266;
    v189 = v274;
    sub_123D5C();
    v190 = sub_123D8C();
    v121(v188, v270);
    v191 = v298;
    v192 = v273;
    if (v190)
    {
      v193 = sub_C69B0();

      if (sub_B6264(v193) == 0x627265566F6ELL && v194 == 0xE600000000000000)
      {

LABEL_113:
        v225 = v189;
        v226 = v272;
        v227 = *(v272 + 16);
        v228 = v265;
        v227(v265, v225, v192);
        v229 = sub_125AAC();
        v230 = sub_125DFC();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          v303 = v301;
          *v231 = 136315138;
          v227(v264, v228, v192);
          v232 = sub_125BAC();
          v234 = v233;
          v235 = *(v226 + 8);
          v235(v228, v192);
          v236 = sub_8530(v232, v234, &v303);

          *(v231 + 4) = v236;
          _os_log_impl(&dword_0, v229, v230, "decideActionForDisambiguationInput decide handle disambiguation UsoParse: %s", v231, 0xCu);
          sub_5BB0(v301);
        }

        else
        {

          v235 = *(v226 + 8);
          v235(v228, v192);
        }

        sub_12377C();
        v235(v274, v192);
        return;
      }

      v224 = sub_1261BC();

      if (v224)
      {
        goto LABEL_113;
      }
    }

    v237 = v288;
    sub_123CCC();
    v238 = sub_12532C();
    v239 = v287;
    (*(*(v238 - 8) + 56))(v287, 1, 1, v238);
    v240 = sub_A588C(v237, v239);
    sub_5CA8(v239, &qword_15FFB0, &unk_1270A0);
    (*(v296 + 8))(v237, v191);
    if (v240 && (v241 = swift_dynamicCastUnknownClass()) != 0)
    {
      v242 = v241;
      v243 = v240;
      v244 = sub_125AAC();
      v245 = sub_125DFC();
      if (os_log_type_enabled(v244, v245))
      {
        v246 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v302 = v242;
        v303 = v247;
        *v246 = 136315138;
        swift_getWitnessTable();
        v248 = sub_12618C();
        v250 = sub_8530(v248, v249, &v303);

        *(v246 + 4) = v250;
        _os_log_impl(&dword_0, v244, v245, "decideActionForDisambiguationInput: Handling action for intent: %s", v246, 0xCu);
        sub_5BB0(v247);
      }

      sub_12377C();
      (*(v272 + 8))(v274, v192);
    }

    else
    {
      v251 = v240;
      v252 = sub_125AAC();
      v253 = sub_125DEC();

      if (os_log_type_enabled(v252, v253))
      {
        v254 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        *v254 = 136315394;
        v255 = sub_12631C();
        v257 = sub_8530(v255, v256, &v303);

        *(v254 + 4) = v257;
        v258 = v274;
        *(v254 + 12) = 2080;
        v302 = v240;
        v259 = v251;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v260 = sub_125BAC();
        v262 = sub_8530(v260, v261, &v303);

        *(v254 + 14) = v262;
        _os_log_impl(&dword_0, v252, v253, "decideActionForDisambiguationInput: Intent from parse does not match IntentType. Expected %s, received %s", v254, 0x16u);
        swift_arrayDestroy();
        v189 = v258;
      }

      sub_12378C();
      (*(v272 + 8))(v189, v192);
    }

    return;
  }

  v124 = 0;
  v125 = v267;
  while (1)
  {
    if (v122 == v124)
    {
      goto LABEL_85;
    }

    if (v124 >= *(v120 + 16))
    {
      goto LABEL_127;
    }

    (*(v291 + 16))(v125, v120 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v124, v292);
    if (sub_123DDC() & 1) != 0 || (sub_123E2C())
    {
      break;
    }

    v126 = sub_123DEC();
    (*v123)(v125, v292);
    ++v124;
    if (v126)
    {

      goto LABEL_94;
    }
  }

  (*v123)(v125, v292);
LABEL_94:
  v182 = sub_125AAC();
  v183 = sub_125DFC();
  v184 = os_log_type_enabled(v182, v183);
  v185 = v273;
  v186 = v274;
  if (v184)
  {
    v187 = swift_slowAlloc();
    *v187 = 0;
    _os_log_impl(&dword_0, v182, v183, "USO parse userDialogActs contains hasAccepted, hasWantedToProceed or hasRejected; returning .handle() since these are window actions", v187, 2u);
  }

  sub_12377C();
  (*(v272 + 8))(v186, v185);
}

uint64_t sub_A34D4()
{
  v0 = sub_5AE8(&qword_161868, &qword_1292F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v21 - v2;
  sub_124BBC();
  v4 = sub_1242AC();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_5CA8(v3, &qword_161868, &qword_1292F0);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v6 = sub_125ABC();
    sub_5B30(v6, qword_161820);
    v7 = sub_125AAC();
    v8 = sub_125DFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Parse received is NOT a valid timer nlv3Intent: domainNode in nlv3Intent is nil", v9, 2u);
    }

    return 0;
  }

  v11 = sub_12429C();
  v13 = v12;
  (*(v5 + 8))(v3, v4);
  v14 = v11 == 0x72656D6974 && v13 == 0xE500000000000000;
  if (!v14 && (sub_1261BC() & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v15 = sub_125ABC();
    sub_5B30(v15, qword_161820);

    v16 = sub_125AAC();
    v17 = sub_125DFC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      v20 = sub_8530(v11, v13, &v22);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_0, v16, v17, "Parse received is NOT a valid timer nlv3Intent: received unexpected domain node %s", v18, 0xCu);
      sub_5BB0(v19);
    }

    else
    {
    }

    return 0;
  }

  return 1;
}

uint64_t sub_A3830()
{
  sub_12437C();
  sub_E344(v13, v11, &unk_161840, &qword_128110);
  if (v12)
  {
    sub_E344(v11, v10, &unk_161840, &qword_128110);
    sub_124A5C();
    if (swift_dynamicCast())
    {
      goto LABEL_15;
    }

    sub_12454C();
    if (swift_dynamicCast())
    {
      goto LABEL_15;
    }

    sub_12455C();
    if (swift_dynamicCast())
    {
      goto LABEL_15;
    }

    sub_1244AC();
    if (swift_dynamicCast())
    {
      goto LABEL_15;
    }

    sub_1245FC();
    if (swift_dynamicCast())
    {
      goto LABEL_15;
    }

    sub_1244CC();
    if (swift_dynamicCast() || (sub_1245BC(), swift_dynamicCast()) || (sub_1244DC(), swift_dynamicCast()) || (sub_12445C(), swift_dynamicCast()) || (sub_12472C(), swift_dynamicCast()) || (sub_1245DC(), swift_dynamicCast()) || (sub_12458C(), swift_dynamicCast()) || (sub_12459C(), swift_dynamicCast()))
    {
LABEL_15:
      sub_5CA8(v13, &unk_161840, &qword_128110);

      sub_5BB0(v10);
      v0 = 1;
      goto LABEL_29;
    }

    sub_5BB0(v10);
  }

  if ((sub_C6BD8() & 1) != 0 && sub_C66F0())
  {

    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v1 = sub_125ABC();
    sub_5B30(v1, qword_161820);
    v2 = sub_125AAC();
    v3 = sub_125DEC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Timer flow received non-timer NLv4 parse – but matches acceptable signature for sleep timer", v4, 2u);
    }

    sub_5CA8(v13, &unk_161840, &qword_128110);
    v0 = 1;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_161820);
    v6 = sub_125AAC();
    v7 = sub_125DEC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Timer flow received non-timer NLv4 parse", v8, 2u);
    }

    sub_5CA8(v13, &unk_161840, &qword_128110);
    v0 = 0;
  }

LABEL_29:
  sub_5CA8(v11, &unk_161840, &qword_128110);
  return v0;
}

uint64_t sub_A3C90(uint64_t a1, char a2)
{
  sub_12437C();
  sub_E344(v38, v36, &unk_161840, &qword_128110);
  if (!v37)
  {
    goto LABEL_28;
  }

  sub_E344(v36, v35, &unk_161840, &qword_128110);
  sub_12449C();
  if (swift_dynamicCast())
  {
    goto LABEL_13;
  }

  sub_12444C();
  if (swift_dynamicCast())
  {
    goto LABEL_13;
  }

  sub_12443C();
  if (swift_dynamicCast())
  {
    goto LABEL_13;
  }

  sub_12446C();
  if (swift_dynamicCast() || (sub_1244BC(), swift_dynamicCast()) || (sub_1244EC(), swift_dynamicCast()) || (sub_12456C(), swift_dynamicCast()) || (sub_1245AC(), swift_dynamicCast()) || (sub_1245CC(), swift_dynamicCast()) || (sub_12460C(), swift_dynamicCast()) || (sub_1245EC(), swift_dynamicCast()))
  {
LABEL_13:

    sub_5BB0(v35);
    sub_5CA8(v36, &unk_161840, &qword_128110);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v3 = sub_125ABC();
    sub_5B30(v3, qword_161820);
    sub_E344(v38, v36, &unk_161840, &qword_128110);
    v4 = sub_125AAC();
    v5 = sub_125DFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34[0] = v7;
      *v6 = 136315138;
      sub_E344(v36, v35, &unk_161840, &qword_128110);
      sub_5AE8(&unk_161840, &qword_128110);
      v8 = sub_125BAC();
      v10 = v9;
      sub_5CA8(v36, &unk_161840, &qword_128110);
      v11 = sub_8530(v8, v10, v34);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_0, v4, v5, "Received a valid NoEntity task: %s", v6, 0xCu);
      sub_5BB0(v7);
    }

    else
    {

      sub_5CA8(v36, &unk_161840, &qword_128110);
    }

    v12 = v38;
    goto LABEL_19;
  }

  sub_1246AC();
  if (!swift_dynamicCast())
  {
    sub_5BB0(v35);
LABEL_28:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v23 = sub_125ABC();
    sub_5B30(v23, qword_161820);
    sub_E344(v38, v35, &unk_161840, &qword_128110);
    v24 = sub_125AAC();
    v25 = sub_125DFC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v26 = 136315138;
      sub_E344(v35, v34, &unk_161840, &qword_128110);
      sub_5AE8(&unk_161840, &qword_128110);
      v28 = sub_125BAC();
      v30 = v29;
      sub_5CA8(v35, &unk_161840, &qword_128110);
      v31 = sub_8530(v28, v30, v32);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v24, v25, "Received an invalid NoEntity or not a NoEntity task: %s", v26, 0xCu);
      sub_5BB0(v27);
    }

    else
    {

      sub_5CA8(v35, &unk_161840, &qword_128110);
    }

    sub_5CA8(v38, &unk_161840, &qword_128110);
    goto LABEL_34;
  }

  if ((a2 & 1) != 0 && sub_C8908() != 3)
  {
    sub_5CA8(v38, &unk_161840, &qword_128110);
    sub_5BB0(v35);
    v12 = v36;
LABEL_19:
    sub_5CA8(v12, &unk_161840, &qword_128110);
    return 1;
  }

  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_161820);
  sub_E344(v38, v34, &unk_161840, &qword_128110);
  v15 = sub_125AAC();
  v16 = sub_125DFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    sub_E344(v34, v32, &unk_161840, &qword_128110);
    sub_5AE8(&unk_161840, &qword_128110);
    v19 = sub_125BAC();
    v21 = v20;
    sub_5CA8(v34, &unk_161840, &qword_128110);
    v22 = sub_8530(v19, v21, &v33);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v15, v16, "Received a UsoTask_noVerb_common_Setting task with no room confirmation (rejecting): %s", v17, 0xCu);
    sub_5BB0(v18);
  }

  else
  {

    sub_5CA8(v34, &unk_161840, &qword_128110);
  }

  sub_5CA8(v38, &unk_161840, &qword_128110);
  sub_5BB0(v35);
LABEL_34:
  sub_5CA8(v36, &unk_161840, &qword_128110);
  return 0;
}

uint64_t sub_A44BC()
{
  v12[0] = sub_124B9C();
  v12[1] = v0;
  strcpy(v10, "common_Alarm");
  HIBYTE(v10[6]) = 0;
  v10[7] = -5120;
  sub_A852C();
  v1 = sub_125F3C();

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  sub_12437C();
  sub_E344(v12, v10, &unk_161840, &qword_128110);
  if (v11)
  {
    sub_12453C();
    if (swift_dynamicCast())
    {
LABEL_9:

      if (sub_124B7C())
      {
        v3 = sub_1242DC();
        v4 = v3 != 0;
        if (v3)
        {
          v5 = sub_1243BC();

          sub_5CA8(v12, &unk_161840, &qword_128110);
          result = v5;
          if (!v5)
          {
            return result;
          }
        }

        else
        {
          sub_5CA8(v12, &unk_161840, &qword_128110);
        }

        return v4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_5CA8(v10, &unk_161840, &qword_128110);
  }

  sub_E344(v12, v10, &unk_161840, &qword_128110);
  if (!v11)
  {
    sub_5CA8(v10, &unk_161840, &qword_128110);
    goto LABEL_14;
  }

  sub_12457C();
  if (swift_dynamicCast())
  {
    goto LABEL_9;
  }

LABEL_14:
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_161820);
  v7 = sub_125AAC();
  v8 = sub_125DFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Timer domain rejecting Alarm parse we cannot support", v9, 2u);
  }

  sub_5CA8(v12, &unk_161840, &qword_128110);
  return 0;
}

uint64_t sub_A4794(uint64_t *a1, int a2)
{
  v102 = a2;
  v3 = sub_123CDC();
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = *(v114 + 64);
  __chkstk_darwin(v3);
  v113 = &v101[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_123D1C();
  v122 = *(v6 - 8);
  v123 = v6;
  v7 = *(v122 + 64);
  __chkstk_darwin(v6);
  v121 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = sub_123E8C();
  v105 = *(v106 - 8);
  v9 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_5AE8(&qword_160510, &qword_12B170);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v110 = &v101[-v13];
  v107 = sub_123D7C();
  v109 = *(v107 - 8);
  v14 = *(v109 + 64);
  v15 = __chkstk_darwin(v107);
  v103 = &v101[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v108 = &v101[-v17];
  v18 = sub_123E4C();
  v19 = *(v18 - 1);
  v124 = v18;
  v125 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v112 = &v101[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v24 = &v101[-v23];
  v25 = sub_123DAC();
  v116 = *(v25 - 8);
  v117 = v25;
  v26 = *(v116 + 64);
  v27 = __chkstk_darwin(v25);
  v111 = &v101[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v30 = &v101[-v29];
  v31 = sub_123D6C();
  v118 = *(v31 - 8);
  v119 = v31;
  v32 = *(v118 + 64);
  __chkstk_darwin(v31);
  v120 = &v101[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_123D3C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  __chkstk_darwin(v37);
  v39 = &v101[-v38];
  v40 = sub_124BCC();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v101[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_123CCC();
  v45 = (*(v35 + 88))(v39, v34);
  if (v45 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v35 + 96))(v39, v34);
LABEL_5:
    (*(v41 + 32))(v44, v39, v40);
    v47 = sub_A34D4();
    (*(v41 + 8))(v44, v40);
    return v47 & 1;
  }

  if (v45 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v35 + 96))(v39, v34);
    v46 = *(v39 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

    goto LABEL_5;
  }

  if (v45 == enum case for Parse.directInvocation(_:))
  {
    (*(v35 + 96))(v39, v34);
    v50 = v121;
    v49 = v122;
    v51 = v123;
    (*(v122 + 32))(v121, v39, v123);
    v52 = sub_12526C();
    (*(v49 + 8))(v50, v51);
    v47 = v52 ^ 1;
    return v47 & 1;
  }

  if (v45 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v35 + 96))(v39, v34);
    v53 = *v39;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      swift_unknownObjectRelease();
      v47 = 1;
      return v47 & 1;
    }

    swift_getObjectType();
    v89 = SIRINLUUserDialogAct.firstUsoTask.getter();
    if (v89)
    {
      v90 = v89;
      if (sub_A3830() & 1) != 0 || (sub_A3C90(v90, v102 & 1))
      {
        swift_unknownObjectRelease();

        v47 = 1;
      }

      else
      {
        v47 = sub_A44BC();
        swift_unknownObjectRelease();
      }

      return v47 & 1;
    }

    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v91 = sub_125ABC();
    sub_5B30(v91, qword_161820);
    v92 = sub_125AAC();
    v93 = sub_125DFC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_0, v92, v93, "NLv4IntentOnly parse received is NOT valid timer input: not able to get timerTask", v94, 2u);
    }

    swift_unknownObjectRelease();

LABEL_49:
    v47 = 0;
    return v47 & 1;
  }

  if (v45 != enum case for Parse.uso(_:))
  {
    if (v45 == enum case for Parse.ifClientAction(_:))
    {
      (*(v35 + 8))(v39, v34);
      v47 = 1;
      return v47 & 1;
    }

    if (qword_15EED0 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

  (*(v35 + 96))(v39, v34);
  (*(v118 + 32))(v120, v39, v119);
  sub_123D5C();
  v34 = sub_123D9C();
  v54 = *(v116 + 8);
  v35 = v116 + 8;
  v54(v30, v117);
  v39 = 0;
  v55 = *(v34 + 16);
  a1 = v124;
  v56 = (v125 + 8);
  while (v55 != v39)
  {
    if (v39 >= *(v34 + 16))
    {
      __break(1u);
      goto LABEL_71;
    }

    (*(v125 + 16))(v24, v34 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v39, a1);
    if (sub_123DDC() & 1) != 0 || (sub_123DFC() & 1) != 0 || (sub_123DEC())
    {

      (*v56)(v24, v124);
      goto LABEL_27;
    }

    v57 = sub_123E2C();
    a1 = v124;
    (*v56)(v24, v124);
    v39 = (v39 + 1);
    if (v57)
    {

LABEL_27:
      (*(v118 + 8))(v120, v119);
      v47 = 1;
      return v47 & 1;
    }
  }

  v71 = v111;
  sub_123D5C();
  a1 = v71;
  v72 = sub_123D9C();
  v39 = v124;
  v73 = v72;
  v54(v71, v117);
  v34 = *(v73 + 16);
  v74 = v112;
  if (v34)
  {
    v75 = 0;
    while (v75 < *(v73 + 16))
    {
      (*(v125 + 16))(v74, v73 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v75, v39);
      a1 = v74;
      if (sub_123DBC())
      {

        v77 = v110;
        (*(v125 + 32))(v110, v74, v39);
        v76 = 0;
        goto LABEL_40;
      }

      ++v75;
      (*v56)(v74, v39);
      if (v34 == v75)
      {
        goto LABEL_38;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
LABEL_29:
    v58 = sub_125ABC();
    sub_5B30(v58, qword_161820);
    v60 = v113;
    v59 = v114;
    v61 = v115;
    (*(v114 + 16))(v113, a1, v115);
    v62 = sub_125AAC();
    v63 = sub_125DFC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      LODWORD(v125) = v63;
      v65 = v60;
      v66 = v64;
      v124 = swift_slowAlloc();
      v126 = v124;
      *v66 = 136315138;
      sub_123CCC();
      v67 = sub_125BAC();
      v69 = v68;
      (*(v59 + 8))(v65, v61);
      v70 = sub_8530(v67, v69, &v126);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_0, v62, v125, "Parse received is NOT valid timer input: %s", v66, 0xCu);
      sub_5BB0(v124);
    }

    else
    {

      (*(v59 + 8))(v60, v61);
    }

    (*(v35 + 8))(v39, v34);
    goto LABEL_49;
  }

LABEL_38:

  v76 = 1;
  v77 = v110;
LABEL_40:
  v79 = v124;
  v78 = v125;
  (*(v125 + 56))(v77, v76, 1, v124);
  if ((*(v78 + 48))(v77, 1, v79) == 1)
  {
    sub_5CA8(v77, &qword_160510, &qword_12B170);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v83 = sub_125ABC();
    sub_5B30(v83, qword_161820);
    v84 = sub_125AAC();
    v85 = sub_125DEC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_0, v84, v85, "Failed to parse userParse. Not valid timer input.", v86, 2u);
    }

LABEL_48:
    (*(v118 + 8))(v120, v119);
    goto LABEL_49;
  }

  v80 = v104;
  sub_123E0C();
  (*v56)(v77, v79);
  v81 = v103;
  sub_123E5C();
  (*(v105 + 8))(v80, v106);
  v82 = v107;
  (*(v109 + 32))(v108, v81, v107);
  sub_123F0C();
  v87 = sub_12424C();
  if (!(v87 >> 62))
  {
    if (*(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_52;
    }

LABEL_74:

    if (qword_15EED0 == -1)
    {
LABEL_75:
      v97 = sub_125ABC();
      sub_5B30(v97, qword_161820);
      v98 = sub_125AAC();
      v99 = sub_125DEC();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_0, v98, v99, "USO tasks graph has no tasks. Not valid timer input.", v100, 2u);
      }

      (*(v109 + 8))(v108, v82);
      goto LABEL_48;
    }

LABEL_80:
    swift_once();
    goto LABEL_75;
  }

  v95 = v87;
  v96 = sub_1260FC();
  v87 = v95;
  if (!v96)
  {
    goto LABEL_74;
  }

LABEL_52:
  if ((v87 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8)))
    {
      v88 = *(v87 + 32);

      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_80;
  }

  v88 = sub_125FFC();
LABEL_55:

  if (sub_A3830() & 1) != 0 || (sub_A3C90(v88, v102 & 1))
  {
    v47 = 1;
  }

  else
  {
    v47 = sub_A44BC();
  }

  (*(v109 + 8))(v108, v82);
  (*(v118 + 8))(v120, v119);
  return v47 & 1;
}

id sub_A588C(uint64_t a1, uint64_t a2)
{
  v398 = a1;
  v376 = sub_1252AC();
  v380 = *(v376 - 8);
  v3 = *(v380 + 64);
  v4 = __chkstk_darwin(v376);
  v351 = &v350 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v352 = &v350 - v7;
  v8 = __chkstk_darwin(v6);
  v360 = &v350 - v9;
  v10 = __chkstk_darwin(v8);
  v353 = &v350 - v11;
  v12 = __chkstk_darwin(v10);
  v361 = &v350 - v13;
  v14 = __chkstk_darwin(v12);
  v356 = &v350 - v15;
  v16 = __chkstk_darwin(v14);
  v355 = &v350 - v17;
  __chkstk_darwin(v16);
  v374 = &v350 - v18;
  v382 = sub_1252CC();
  v388 = *(v382 - 8);
  v19 = *(v388 + 64);
  v20 = __chkstk_darwin(v382);
  v364 = &v350 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v365 = &v350 - v23;
  v24 = __chkstk_darwin(v22);
  v372 = &v350 - v25;
  __chkstk_darwin(v24);
  v378 = &v350 - v26;
  v387 = sub_123D1C();
  v27 = *(v387 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v387);
  v31 = &v350 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v375 = &v350 - v33;
  v34 = __chkstk_darwin(v32);
  v373 = &v350 - v35;
  v36 = __chkstk_darwin(v34);
  v354 = &v350 - v37;
  __chkstk_darwin(v36);
  v39 = &v350 - v38;
  v368 = sub_123DAC();
  v367 = *(v368 - 8);
  v40 = *(v367 + 64);
  __chkstk_darwin(v368);
  v366 = &v350 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = sub_123D6C();
  v370 = *(v371 - 8);
  v42 = *(v370 + 64);
  __chkstk_darwin(v371);
  v369 = &v350 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_12532C();
  v395 = *(v44 - 8);
  v396 = v44;
  v45 = *(v395 + 64);
  v46 = __chkstk_darwin(v44);
  v359 = &v350 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v377 = &v350 - v49;
  __chkstk_darwin(v48);
  v384 = &v350 - v50;
  v389 = type metadata accessor for TimerNLv3Intent();
  v51 = *(*(v389 - 8) + 64);
  v52 = __chkstk_darwin(v389);
  v386 = &v350 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v392 = &v350 - v54;
  v55 = sub_124BCC();
  v393 = *(v55 - 8);
  v394 = v55;
  v56 = *(v393 + 64);
  v57 = __chkstk_darwin(v55);
  v385 = &v350 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v391 = &v350 - v59;
  v400 = sub_123D3C();
  v397 = *(v400 - 1);
  v60 = *(v397 + 64);
  v61 = __chkstk_darwin(v400);
  v358 = &v350 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __chkstk_darwin(v61);
  v362 = &v350 - v64;
  __chkstk_darwin(v63);
  v399 = (&v350 - v65);
  v66 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v67 = *(*(v66 - 8) + 64);
  v68 = __chkstk_darwin(v66);
  v70 = &v350 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v68);
  v383 = &v350 - v72;
  v73 = __chkstk_darwin(v71);
  v390 = &v350 - v74;
  v75 = __chkstk_darwin(v73);
  v77 = &v350 - v76;
  __chkstk_darwin(v75);
  v79 = &v350 - v78;
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v80 = sub_125ABC();
  v81 = sub_5B30(v80, qword_161820);
  sub_E344(a2, v79, &qword_15FFB0, &unk_1270A0);
  v381 = v81;
  v82 = sub_125AAC();
  v83 = sub_125DFC();
  v84 = os_log_type_enabled(v82, v83);
  v357 = v31;
  v363 = v70;
  if (v84)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v379 = v27;
    v87 = v86;
    *&v403 = v86;
    *v85 = 136315138;
    sub_E344(v79, v77, &qword_15FFB0, &unk_1270A0);
    v88 = sub_125BAC();
    v90 = v89;
    sub_5CA8(v79, &qword_15FFB0, &unk_1270A0);
    v91 = sub_8530(v88, v90, &v403);

    *(v85 + 4) = v91;
    _os_log_impl(&dword_0, v82, v83, "TimerFlowUtils makeIntentFromParse() called with halInfo: %s", v85, 0xCu);
    sub_5BB0(v87);
    v27 = v379;
  }

  else
  {

    sub_5CA8(v79, &qword_15FFB0, &unk_1270A0);
  }

  v93 = v397;
  v92 = v398;
  v94 = *(v397 + 16);
  v95 = v399;
  v96 = v400;
  v94(v399, v398, v400);
  v97 = (*(v93 + 88))(v95, v96);
  if (v97 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v93 + 96))(v95, v96);
    v99 = v393;
    v98 = v394;
    v100 = v391;
    (*(v393 + 32))(v391, v95, v394);
    v101 = v392;
    (*(v99 + 16))(v392, v100, v98);
    v102 = v390;
    sub_E344(a2, v390, &qword_15FFB0, &unk_1270A0);
    v104 = v395;
    v103 = v396;
    if ((*(v395 + 48))(v102, 1, v396) == 1)
    {
      sub_5CA8(v102, &qword_15FFB0, &unk_1270A0);
      v105 = sub_E1A4C();
LABEL_26:
      sub_97EC(v101);
      (*(v99 + 8))(v100, v98);
      return v105;
    }

    v108 = v384;
    (*(v104 + 32))(v384, v102, v103);
    v105 = sub_1252DC();
    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
    sub_12428C();
    if (!v403)
    {
      sub_30B8C(0, &qword_160620, NSNumber_ptr);
      isa = sub_125EFC(1).super.super.isa;
      [v105 setSkipConfirmation:isa];
    }

    goto LABEL_25;
  }

  if (v97 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v93 + 96))(v95, v96);
    v106 = *(v95 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));
    v99 = v393;
    v98 = v394;
    v100 = v385;
    (*(v393 + 32))(v385, v95, v394);
    v101 = v386;
    (*(v99 + 16))(v386, v100, v98);
    v107 = v383;
    sub_E344(a2, v383, &qword_15FFB0, &unk_1270A0);
    v104 = v395;
    v103 = v396;
    if ((*(v395 + 48))(v107, 1, v396) == 1)
    {
      sub_5CA8(v107, &qword_15FFB0, &unk_1270A0);
      v105 = sub_123D2C();

      goto LABEL_26;
    }

    v108 = v377;
    (*(v104 + 32))(v377, v107, v103);
    v105 = sub_1252DC();
    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent);
    sub_12428C();
    if (!v403)
    {
      sub_30B8C(0, &qword_160620, NSNumber_ptr);
      v120 = sub_125EFC(1).super.super.isa;
      [v105 setSkipConfirmation:v120];
    }

LABEL_25:
    (*(v104 + 8))(v108, v103);
    goto LABEL_26;
  }

  if (v97 != enum case for Parse.directInvocation(_:))
  {
    if (v97 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v93 + 96))(v95, v96);
      v122 = sub_33F74(*v95, a2);
      if (v122)
      {
        v105 = v122;
        swift_unknownObjectRelease();
        return v105;
      }

      v167 = sub_125AAC();
      v168 = sub_125DEC();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        _os_log_impl(&dword_0, v167, v168, "Failed to parse timer NLv4Intent from userDialogAct", v169, 2u);
      }

      swift_unknownObjectRelease();
    }

    else if (v97 == enum case for Parse.uso(_:))
    {
      (*(v93 + 96))(v95, v96);
      v150 = v370;
      v151 = v369;
      v152 = v95;
      v153 = v371;
      (*(v370 + 32))(v369, v152, v371);
      v154 = v366;
      sub_123D5C();
      v155 = sub_32E7C();
      if (v155)
      {
        v105 = sub_33650(v155, a2);

        (*(v367 + 8))(v154, v368);
        if (v105)
        {
          (*(v150 + 8))(v151, v153);
          return v105;
        }
      }

      else
      {
        (*(v367 + 8))(v154, v368);
      }

      v216 = sub_125AAC();
      v217 = sub_125DEC();
      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&dword_0, v216, v217, "Failed to parse timer intent from USO parse", v218, 2u);
      }

      (*(v150 + 8))(v151, v153);
    }

    else
    {
      if (v97 == enum case for Parse.ifClientAction(_:))
      {
        (*(v93 + 8))(v95, v96);
        v105 = [objc_allocWithZone(sub_1255EC()) init];
        [v105 setType:1];
        sub_1255DC();
        v164 = objc_allocWithZone(INSpeakableString);
        v165 = sub_125B8C();
        v166 = [v164 initWithSpokenPhrase:v165];

        [v105 setLabel:v166];
        return v105;
      }

      v206 = v362;
      v94(v362, v92, v96);
      v207 = sub_125AAC();
      v208 = sub_125DEC();
      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        *&v403 = v210;
        *v209 = 136315138;
        v94(v358, v206, v400);
        v211 = sub_125BAC();
        v213 = v212;
        v214 = *(v93 + 8);
        v214(v206, v400);
        v215 = sub_8530(v211, v213, &v403);

        *(v209 + 4) = v215;
        _os_log_impl(&dword_0, v207, v208, "Received an unsupported parse: %s", v209, 0xCu);
        sub_5BB0(v210);
        v96 = v400;

        v95 = v399;
      }

      else
      {

        v214 = *(v93 + 8);
        v214(v206, v96);
      }

      v214(v95, v96);
    }

    return 0;
  }

  v398 = a2;
  (*(v93 + 96))(v95, v96);
  (*(v27 + 32))(v39, v95, v387);
  v350 = v39;
  v110 = sub_123CFC();
  v112 = v111;
  v113 = v388;
  v114 = v378;
  v115 = v382;
  v400 = *(v388 + 104);
  (v400)(v378, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v382);
  v116 = sub_1252BC();
  v118 = v117;
  v119 = *(v113 + 8);
  v388 = v113 + 8;
  v119(v114, v115);
  if (v110 == v116 && v112 == v118)
  {

    goto LABEL_32;
  }

  v123 = sub_1261BC();

  if (v123)
  {
LABEL_32:
    v124 = v350;
    v125 = sub_123D0C();
    if (!v125)
    {
      goto LABEL_55;
    }

    v126 = v125;
    v127 = v380;
    v128 = *(v380 + 104);
    v129 = v374;
    v130 = v376;
    v128(v374, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v376);
    v131 = sub_12529C();
    v133 = v132;
    v134 = *(v127 + 8);
    v380 = v127 + 8;
    v134(v129, v130);
    if (*(v126 + 16))
    {
      v135 = sub_8AD8(v131, v133);
      v137 = v136;

      if (v137)
      {
        sub_8B50(*(v126 + 56) + 32 * v135, &v403);
        if (swift_dynamicCast())
        {
          v138 = sub_B66D0();
          if (v138 == 1)
          {
            v281 = v355;
            v282 = v376;
            v128(v355, enum case for DirectInvocationUtils.Timer.UserInfoKey.usoEntity(_:), v376);
            v283 = sub_12529C();
            v285 = v284;
            v134(v281, v282);
            if (*(v126 + 16))
            {
              v286 = sub_8AD8(v283, v285);
              v287 = v350;
              if (v288)
              {
                sub_8B50(*(v126 + 56) + 32 * v286, &v403);
              }

              else
              {
                v403 = 0u;
                v404 = 0u;
              }
            }

            else
            {
              v403 = 0u;
              v404 = 0u;
              v287 = v350;
            }

            if (*(&v404 + 1))
            {
              if (swift_dynamicCast())
              {
                v298 = v401;
                v297 = v402;
                v299 = sub_122DFC();
                v300 = *(v299 + 48);
                v301 = *(v299 + 52);
                swift_allocObject();
                sub_122DEC();
                sub_124BDC();
                sub_A8580(&qword_161850, &type metadata accessor for UsoEntity);
                sub_122DDC();

                sub_12434C();

                sub_12448C();

                v334 = v403;
                if (v403)
                {
                  sub_1255EC();
                  v105 = sub_F2998(v334, 1);

                  sub_E498(v298, v297);

                  (*(v27 + 8))(v287, v387);
                  return v105;
                }

                sub_E498(v298, v297);
              }
            }

            else
            {
              sub_5CA8(&v403, &unk_161840, &qword_128110);
            }

            v302 = sub_125AAC();
            v303 = sub_125DEC();
            if (os_log_type_enabled(v302, v303))
            {
              v304 = swift_slowAlloc();
              *v304 = 0;
              _os_log_impl(&dword_0, v302, v303, "The userData has a malformed or missing usoEntity to create.", v304, 2u);
            }

            (*(v27 + 8))(v287, v387);
            return 0;
          }

          if (v138 != 2)
          {
            if (v138 != 19)
            {

              v139 = *(v27 + 16);
              v140 = v354;
              v124 = v350;
              v139(v354, v350, v387);
              v141 = sub_125AAC();
              v142 = sub_125DEC();
              if (os_log_type_enabled(v141, v142))
              {
                v143 = swift_slowAlloc();
                v400 = swift_slowAlloc();
                *&v403 = v400;
                *v143 = 136315138;
                v144 = v387;
                v139(v373, v140, v387);
                v145 = sub_125BAC();
                v147 = v146;
                v148 = *(v27 + 8);
                v148(v140, v144);
                v149 = sub_8530(v145, v147, &v403);

                *(v143 + 4) = v149;
                _os_log_impl(&dword_0, v141, v142, "Unsupported verb or userData for undo direct invocation: %s", v143, 0xCu);
                sub_5BB0(v400);

                v148(v124, v144);
                return 0;
              }

LABEL_57:

              v181 = *(v27 + 8);
              v182 = v387;
              v181(v140, v387);
              v181(v124, v182);
              return 0;
            }

            goto LABEL_54;
          }

          v274 = v356;
          v275 = v376;
          v128(v356, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v376);
          v276 = sub_12529C();
          v278 = v277;
          v134(v274, v275);
          if (*(v126 + 16) && (v279 = sub_8AD8(v276, v278), (v280 & 1) != 0))
          {
            sub_8B50(*(v126 + 56) + 32 * v279, &v403);
          }

          else
          {
            v403 = 0u;
            v404 = 0u;
          }

          v289 = v350;

          if (*(&v404 + 1))
          {
            if (swift_dynamicCast())
            {
              v105 = [objc_allocWithZone(sub_12561C()) init];
              sub_1257EC();
              v290 = sub_1147F8();
              [v105 setTargetTimer:v290];

              v291 = [v105 targetTimer];
              if (v291)
              {
                v292 = v291;
                sub_30B8C(0, &qword_160620, NSNumber_ptr);
                v293 = sub_125EEC(0).super.super.isa;
                [v292 setShouldMatchAny:v293];
              }

              (*(v27 + 8))(v289, v387);
              return v105;
            }
          }

          else
          {
            sub_5CA8(&v403, &unk_161840, &qword_128110);
          }

          v294 = sub_125AAC();
          v295 = sub_125DEC();
          if (os_log_type_enabled(v294, v295))
          {
            v296 = swift_slowAlloc();
            *v296 = 0;
            _os_log_impl(&dword_0, v294, v295, "The userData has a malformed or missing timerId to delete.", v296, 2u);
          }

          (*(v27 + 8))(v289, v387);
          return 0;
        }
      }
    }

    else
    {
    }

LABEL_54:

    v124 = v350;
LABEL_55:
    v170 = *(v27 + 16);
    v140 = v375;
    v170(v375, v124, v387);
    v141 = sub_125AAC();
    v171 = sub_125DEC();
    if (os_log_type_enabled(v141, v171))
    {
      v172 = swift_slowAlloc();
      v379 = v27;
      v173 = v387;
      v174 = v172;
      v175 = swift_slowAlloc();
      *&v403 = v175;
      *v174 = 136315138;
      v170(v373, v140, v173);
      v176 = sub_125BAC();
      v178 = v177;
      v179 = *(v379 + 8);
      v179(v140, v173);
      v180 = sub_8530(v176, v178, &v403);

      *(v174 + 4) = v180;
      _os_log_impl(&dword_0, v141, v171, "Malformed userData for direct invocation: %s", v174, 0xCu);
      sub_5BB0(v175);

      v179(v350, v173);
      return 0;
    }

    goto LABEL_57;
  }

  v379 = v27;
  v156 = sub_123CFC();
  v158 = v157;
  v159 = v372;
  v160 = v382;
  (v400)(v372, enum case for DirectInvocationUtils.Timer.URI.disambiguation(_:), v382);
  v161 = sub_1252BC();
  v163 = v162;
  v119(v159, v160);
  if (v156 == v161 && v158 == v163)
  {
  }

  else
  {
    v183 = sub_1261BC();

    if ((v183 & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  v184 = sub_123D0C();
  if (!v184)
  {
LABEL_80:
    v403 = 0u;
    v404 = 0u;
    goto LABEL_81;
  }

  v185 = v184;
  v186 = v380;
  v187 = v361;
  v188 = v376;
  v399 = *(v380 + 104);
  (v399)(v361, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v376);
  v189 = sub_12529C();
  v191 = v190;
  v192 = *(v186 + 8);
  v192(v187, v188);
  if (!*(v185 + 16))
  {

    goto LABEL_79;
  }

  v193 = sub_8AD8(v189, v191);
  v195 = v194;

  if ((v195 & 1) == 0)
  {
LABEL_79:

    goto LABEL_80;
  }

  sub_8B50(*(v185 + 56) + 32 * v193, &v403);

  if (!*(&v404 + 1))
  {
LABEL_81:
    sub_5CA8(&v403, &unk_161840, &qword_128110);
    goto LABEL_82;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v196 = sub_B66D0(), v196 == 19))
  {
LABEL_82:
    v219 = sub_123CFC();
    v221 = v220;
    v222 = v365;
    v223 = v382;
    (v400)(v365, enum case for DirectInvocationUtils.Timer.URI.handleVerbAction(_:), v382);
    v224 = sub_1252BC();
    v226 = v225;
    v119(v222, v223);
    if (v219 == v224 && v221 == v226)
    {
    }

    else
    {
      v227 = sub_1261BC();

      if ((v227 & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    v228 = sub_123D0C();
    if (!v228)
    {
      goto LABEL_97;
    }

    v229 = v228;
    v230 = v380;
    v231 = v360;
    v232 = v376;
    v399 = *(v380 + 104);
    (v399)(v360, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v376);
    v233 = sub_12529C();
    v235 = v234;
    v236 = *(v230 + 8);
    v380 = v230 + 8;
    v236(v231, v232);
    if (*(v229 + 16))
    {
      v237 = sub_8AD8(v233, v235);
      v239 = v238;

      if (v239)
      {
        sub_8B50(*(v229 + 56) + 32 * v237, &v403);

        if (!*(&v404 + 1))
        {
          goto LABEL_98;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_99;
        }

        v240 = sub_B66D0();
        if (v240 == 19)
        {
          goto LABEL_99;
        }

        if (sub_B6264(v240) == 0x657461657263 && v241 == 0xE600000000000000)
        {
        }

        else
        {
          v305 = sub_1261BC();

          if ((v305 & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        v306 = sub_123D0C();
        if (v306)
        {
          v307 = v306;
          v308 = v352;
          v309 = v376;
          (v399)(v352, enum case for DirectInvocationUtils.Timer.UserInfoKey.duration(_:), v376);
          v310 = sub_12529C();
          v312 = v311;
          v236(v308, v309);
          if (*(v307 + 16) && (v313 = sub_8AD8(v310, v312), (v314 & 1) != 0))
          {
            sub_8B50(*(v307 + 56) + 32 * v313, &v403);
          }

          else
          {
            v403 = 0u;
            v404 = 0u;
          }

          if (*(&v404 + 1))
          {
            sub_30B8C(0, &qword_160620, NSNumber_ptr);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_99;
            }

            v324 = v401;
            v335 = sub_125AAC();
            v336 = sub_125DFC();
            if (os_log_type_enabled(v335, v336))
            {
              v337 = swift_slowAlloc();
              *v337 = 0;
              _os_log_impl(&dword_0, v335, v336, "Timer domain handling create timer action valid duration", v337, 2u);
            }

            v338 = sub_123D0C();
            if (v338)
            {
              v339 = v338;
              v340 = v351;
              v341 = v376;
              (v399)(v351, enum case for DirectInvocationUtils.Timer.UserInfoKey.label(_:), v376);
              v342 = sub_12529C();
              v344 = v343;
              v236(v340, v341);
              if (*(v339 + 16) && (v345 = sub_8AD8(v342, v344), (v346 & 1) != 0))
              {
                sub_8B50(*(v339 + 56) + 32 * v345, &v403);
              }

              else
              {
                v403 = 0u;
                v404 = 0u;
              }

              if (*(&v404 + 1))
              {
                v347 = swift_dynamicCast();
                if (v347)
                {
                  v348 = v401;
                }

                else
                {
                  v348 = 0;
                }

                if (v347)
                {
                  v349 = v402;
                }

                else
                {
                  v349 = 0;
                }

                goto LABEL_172;
              }
            }

            else
            {
              v403 = 0u;
              v404 = 0u;
            }

            sub_5CA8(&v403, &unk_161840, &qword_128110);
            v348 = 0;
            v349 = 0;
LABEL_172:
            sub_1255EC();
            [v324 doubleValue];
            v105 = sub_F1FAC(v348, v349);
LABEL_173:

            (*(v379 + 8))(v350, v387);
            return v105;
          }

LABEL_98:
          sub_5CA8(&v403, &unk_161840, &qword_128110);
          goto LABEL_99;
        }

LABEL_97:
        v403 = 0u;
        v404 = 0u;
        goto LABEL_98;
      }
    }

    else
    {
    }

    goto LABEL_97;
  }

  LODWORD(v397) = v196;
  v197 = sub_123D0C();
  if (!v197)
  {
    goto LABEL_80;
  }

  v198 = v197;
  v199 = v353;
  v200 = v376;
  (v399)(v353, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v376);
  v201 = sub_12529C();
  v203 = v202;
  v192(v199, v200);
  if (*(v198 + 16) && (v204 = sub_8AD8(v201, v203), (v205 & 1) != 0))
  {
    sub_8B50(*(v198 + 56) + 32 * v204, &v403);
  }

  else
  {
    v403 = 0u;
    v404 = 0u;
  }

  if (!*(&v404 + 1))
  {
    goto LABEL_81;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_82;
  }

  sub_1257EC();
  v315 = sub_1147F8();
  v105 = sub_340DC(v315, v397);

  if (v105)
  {
    v316 = sub_125AAC();
    v317 = sub_125DDC();
    if (os_log_type_enabled(v316, v317))
    {
      v318 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      *&v403 = v319;
      *v318 = 136315138;
      LOBYTE(v401) = v397;
      v320 = sub_125BAC();
      v322 = sub_8530(v320, v321, &v403);

      *(v318 + 4) = v322;
      _os_log_impl(&dword_0, v316, v317, "Making intent for verb: %s", v318, 0xCu);
      sub_5BB0(v319);
    }

    v323 = v105;
    v324 = sub_125AAC();
    v325 = sub_125DDC();

    if (os_log_type_enabled(v324, v325))
    {
      v326 = swift_slowAlloc();
      v327 = swift_slowAlloc();
      *&v403 = v327;
      *v326 = 136315138;
      v328 = v323;
      v329 = [v328 description];
      v330 = sub_125B9C();
      v332 = v331;

      v333 = sub_8530(v330, v332, &v403);

      *(v326 + 4) = v333;
      _os_log_impl(&dword_0, v324, v325, "Intent: %s", v326, 0xCu);
      sub_5BB0(v327);
    }

    goto LABEL_173;
  }

LABEL_99:
  v242 = sub_123CFC();
  v244 = v243;
  v245 = v364;
  v246 = v382;
  (v400)(v364, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v382);
  v247 = sub_1252BC();
  v249 = v248;
  v119(v245, v246);
  if (v242 == v247 && v244 == v249)
  {

    v250 = v379;
    v252 = v395;
    v251 = v396;
  }

  else
  {
    v253 = sub_1261BC();

    v250 = v379;
    v252 = v395;
    v251 = v396;
    if ((v253 & 1) == 0)
    {
      v261 = *(v379 + 16);
      v262 = v357;
      v263 = v350;
      v264 = v387;
      v261(v357, v350, v387);
      v265 = sub_125AAC();
      v266 = sub_125DEC();
      if (os_log_type_enabled(v265, v266))
      {
        v267 = swift_slowAlloc();
        v400 = swift_slowAlloc();
        *&v403 = v400;
        *v267 = 136315138;
        v261(v373, v262, v264);
        v268 = sub_125BAC();
        v270 = v269;
        v271 = *(v250 + 8);
        v271(v262, v264);
        v272 = sub_8530(v268, v270, &v403);

        *(v267 + 4) = v272;
        _os_log_impl(&dword_0, v265, v266, "Timer received an unsupported direct invocation: %s", v267, 0xCu);
        sub_5BB0(v400);

        v271(v263, v264);
      }

      else
      {

        v273 = *(v250 + 8);
        v273(v262, v264);
        v273(v263, v264);
      }

      return 0;
    }
  }

  v254 = v363;
  sub_E344(v398, v363, &qword_15FFB0, &unk_1270A0);
  v255 = (*(v252 + 48))(v254, 1, v251);
  v256 = v350;
  if (v255 == 1)
  {
    sub_5CA8(v254, &qword_15FFB0, &unk_1270A0);
    v257 = sub_125AAC();
    v258 = sub_125DEC();
    if (os_log_type_enabled(v257, v258))
    {
      v259 = swift_slowAlloc();
      *v259 = 0;
      _os_log_impl(&dword_0, v257, v258, "TimerToDismiss is empty or remoteDevice is nil, falling back to cancel timer.", v259, 2u);
    }

    v105 = [objc_allocWithZone(sub_12561C()) init];
  }

  else
  {
    v260 = v359;
    (*(v252 + 32))(v359, v254, v251);
    v105 = sub_1252DC();
    (*(v252 + 8))(v260, v251);
  }

  (*(v250 + 8))(v256, v387);
  return v105;
}

unint64_t sub_A852C()
{
  result = qword_161870;
  if (!qword_161870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161870);
  }

  return result;
}

uint64_t sub_A8580(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A85C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_12352C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_12532C();
  v10 = *(v9 - 8);
  v66 = v9;
  v67 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v62 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v59 - v19;
  __chkstk_darwin(v18);
  v22 = &v59 - v21;
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v23 = sub_125ABC();
  v24 = sub_5B30(v23, qword_161820);
  v64 = a3;
  sub_E344(a3, v22, &qword_15FFB0, &unk_1270A0);
  v65 = v24;
  v25 = sub_125AAC();
  v26 = sub_125DFC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v61 = v5;
    v28 = v27;
    v29 = swift_slowAlloc();
    v60 = v6;
    v30 = v29;
    v68 = v29;
    *v28 = 136315138;
    sub_E344(v22, v20, &qword_15FFB0, &unk_1270A0);
    v31 = sub_125BAC();
    v33 = v32;
    sub_5CA8(v22, &qword_15FFB0, &unk_1270A0);
    v34 = sub_8530(v31, v33, &v68);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_0, v25, v26, "makeIntentExecutionBehavior: Deciding execution behavior with halInfo: %s", v28, 0xCu);
    sub_5BB0(v30);
    v6 = v60;

    v5 = v61;
  }

  else
  {

    sub_5CA8(v22, &qword_15FFB0, &unk_1270A0);
  }

  sub_E344(v64, v17, &qword_15FFB0, &unk_1270A0);
  v36 = v66;
  v35 = v67;
  if ((*(v67 + 48))(v17, 1, v66) == 1)
  {
    sub_5CA8(v17, &qword_15FFB0, &unk_1270A0);
LABEL_16:
    v44 = sub_125AAC();
    v45 = sub_125DFC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "makeIntentExecutionBehavior: No eligible devices for remote execution found. Continuing local execution.", v46, 2u);
    }

    sub_12356C();

    sub_12574C();
    sub_30B8C(0, &qword_161888, INIntent_ptr);
    v47 = a2;
    v48 = v63;
    sub_12351C();
    v49 = sub_12355C();
    (*(v6 + 8))(v48, v5);
    return v49;
  }

  v37 = v62;
  (*(v35 + 32))();
  v38 = sub_1252EC();
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = sub_125F7C();

    if (!v39)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = *(v38 + 16);

    if (!v40)
    {
LABEL_15:
      (*(v35 + 8))(v37, v36);
      goto LABEL_16;
    }
  }

  v41 = sub_1251FC();
  if (!v41)
  {
    goto LABEL_15;
  }

  v42 = v41;
  sub_1252FC();
  if (v43)
  {

    goto LABEL_15;
  }

  v51 = v42;
  v52 = sub_125AAC();
  v53 = sub_125DFC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v68 = v55;
    *v54 = 136315138;
    v56 = sub_12594C();
    v58 = sub_8530(v56, v57, &v68);

    *(v54 + 4) = v58;
    v36 = v66;
    _os_log_impl(&dword_0, v52, v53, "makeIntentExecutionBehavior: Handle on target device: %s", v54, 0xCu);
    sub_5BB0(v55);
  }

  sub_12356C();
  v49 = sub_12354C();

  (*(v67 + 8))(v37, v36);
  return v49;
}

uint64_t sub_A8C70()
{
  v0 = sub_123DAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_123D6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_123D3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_123CCC();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    swift_getObjectType();
    if (SIRINLUUserDialogAct.firstUsoTask.getter())
    {
      v17 = sub_C8908();

      swift_unknownObjectRelease();
      return v17;
    }

    swift_unknownObjectRelease();
  }

  else if (v15 == enum case for Parse.uso(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v6 + 32))(v9, v14, v5);
    sub_123D5C();
    v19 = sub_123D8C();
    (*(v1 + 8))(v4, v0);
    if (v19)
    {
      v20 = sub_C8908();

      (*(v6 + 8))(v9, v5);
      return v20;
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  return 3;
}

uint64_t type metadata accessor for DismissTimerCATsSimple()
{
  result = qword_161890;
  if (!qword_161890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A9028(uint64_t a1, uint64_t a2)
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

uint64_t sub_A91B0(uint64_t a1, uint64_t a2)
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

Swift::Int sub_A9354(unsigned __int8 a1)
{
  sub_12626C();
  sub_12627C(a1);
  return sub_12628C();
}

Swift::Int sub_A93B8()
{
  sub_12626C();
  sub_A932C(v2, *v0);
  return sub_12628C();
}

uint64_t getEnumTagSinglePayload for CircuitBreakerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CircuitBreakerError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int sub_A950C()
{
  sub_12626C();
  sub_12627C(0);
  return sub_12628C();
}

Swift::Int sub_A9578()
{
  sub_12626C();
  sub_12627C(0);
  return sub_12628C();
}

uint64_t sub_A95BC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_5AE8(&qword_161B50, &qword_129580);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_5AE8(&unk_15F170, &unk_126E00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_5CA8(a1, &qword_161B50, &qword_129580);
    v15 = *v3;
    v16 = sub_8C3C(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_AB7E0();
        v21 = v26;
      }

      sub_96B30(*(v21 + 56) + *(v11 + 72) * v18, v9);
      sub_AB1CC(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_5CA8(v9, &qword_161B50, &qword_129580);
  }

  else
  {
    sub_96B30(a1, v14);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_AB440(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_A97F0()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161A60);
  sub_5B30(v0, qword_161A60);
  return sub_1257AC();
}

uint64_t sub_A983C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a1;
  v33 = a3;
  v3 = sub_125A9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_125ABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_124FFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_12501C();
  v31 = *(v18 - 8);
  v32 = v18;
  v19 = *(v31 + 64);
  __chkstk_darwin(v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for SiriTimeMeasurement.LogDescription.bobcatTimers(_:), v13);
  if (qword_15EED8 != -1)
  {
    swift_once();
  }

  v22 = sub_5B30(v8, qword_161A60);
  (*(v9 + 16))(v12, v22, v8);
  mach_absolute_time();
  sub_12502C();
  sub_125E3C();
  v23 = sub_12579C();
  sub_125A8C();
  sub_125A7C();

  v24 = *(v4 + 8);
  v24(v7, v3);
  v25 = sub_23B08(v29, v29[3]);
  sub_ABA04(v30, *v25);
  sub_125E2C();
  v26 = sub_12579C();
  sub_125A8C();
  sub_125A7C();

  v24(v7, v3);
  sub_12500C();
  sub_124E2C();
  return (*(v31 + 8))(v21, v32);
}

uint64_t sub_A9C7C()
{
  sub_AD09C(&qword_161B88, &type metadata accessor for ContinuousClock);
  result = sub_12620C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_A9D14()
{
  v1 = v0;
  sub_23B08(v1 + 4, v1[7]);
  sub_1260DC();
  sub_A9C7C();
  swift_beginAccess();
  sub_1262DC();
  swift_endAccess();
  v2 = v0[9];
  v3 = v0[10];
  result = sub_1262CC();
  if (result)
  {
    if (qword_15EED8 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_161A60);

    v6 = sub_125AAC();
    v7 = sub_125DEC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v17[0] = swift_slowAlloc();
      *v8 = 136315394;
      v9 = v1[9];
      v10 = v1[10];
      v11 = sub_1262BC();
      v13 = sub_8530(v11, v12, v17);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v14 = sub_1262BC();
      v16 = sub_8530(v14, v15, v17);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_0, v6, v7, "Exceeded max total time, %s > %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    sub_AD048();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_A9F90()
{
  sub_5BB0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_A9FEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), char a4)
{
  v6 = sub_5AE8(&qword_161B50, &qword_129580);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v13 - v9;
  a3(v8);
  v11 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  return sub_A95BC(v10, a4);
}

void sub_AA0E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_5AE8(&qword_161B48, &qword_129578);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v39 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = sub_5AE8(&unk_15F170, &unk_126E00);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v39 - v18;
  sub_E344(a1, v15, &qword_161B48, &qword_129578);
  sub_96B30(&v15[*(v3 + 48)], v19);
  v20 = sub_124E4C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_5CA8(v19, &unk_15F170, &unk_126E00);
    if (qword_15EED8 != -1)
    {
      swift_once();
    }

    v22 = sub_125ABC();
    sub_5B30(v22, qword_161A60);
    sub_E344(a1, v10, &qword_161B48, &qword_129578);
    v23 = sub_125AAC();
    v24 = sub_125DEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315138;
      sub_E344(v10, v7, &qword_161B48, &qword_129578);
      v27 = 0x53736574756E696DLL;
      v28 = 0xEE0073646E6F6365;
      if (*v7 != 2)
      {
        v27 = 0xD000000000000020;
        v28 = 0x800000000012C180;
      }

      v29 = 0x73646E6F636573;
      if (!*v7)
      {
        v29 = 0x746C7561666564;
      }

      if (*v7 <= 1u)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (*v7 <= 1u)
      {
        v31 = 0xE700000000000000;
      }

      else
      {
        v31 = v28;
      }

      v32 = *(v3 + 48);
      sub_5CA8(v10, &qword_161B48, &qword_129578);
      sub_5CA8(&v7[v32], &unk_15F170, &unk_126E00);
      v33 = sub_8530(v30, v31, &v40);

      *(v25 + 4) = v33;
      _os_log_impl(&dword_0, v23, v24, "No print value for dialog candidate %s", v25, 0xCu);
      sub_5BB0(v26);
    }

    else
    {

      sub_5CA8(v10, &qword_161B48, &qword_129578);
    }

    v37 = v39;
    *(v39 + 32) = 0;
    *v37 = 0u;
    v37[1] = 0u;
  }

  else
  {
    sub_124E3C();
    (*(v21 + 8))(v19, v20);
    v34 = sub_125A1C();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_125A0C();
    sub_E344(a1, v13, &qword_161B48, &qword_129578);
    *v13;
    v38 = *(v3 + 48);
    sub_1259DC();

    sub_5CA8(&v13[v38], &unk_15F170, &unk_126E00);
    sub_1259EC();

    sub_1259FC();
  }
}