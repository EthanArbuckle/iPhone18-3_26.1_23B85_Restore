uint64_t sub_100077D10(void *a1)
{
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(26);
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v3._object = 0x80000001000DAC70;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  v4 = [a1 alarmIDString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8236;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v10 = [a1 debugDescription];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15 = String._bridgeToObjectiveC()();

  [v2 logDebug:v15];

  return sub_10007E92C(a1, &AlarmPresentationState.init(_:), &qword_100113600, &qword_10011F3B0);
}

uint64_t sub_100077F04(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_100077F54()
{
  v1 = v0;
  v2 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for TimerViewModel();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 16) = TimerViewModel.init()();
  v9 = objc_allocWithZone(MTTimerManager);

  v10 = [v9 init];
  dispatch thunk of TimerViewModel.setupManager(_:)();

  v11 = objc_opt_self();
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v12._countAndFlagsBits = 0x696C616974696E49;
  v12._object = 0xED000020676E697ALL;
  String.append(_:)(v12);
  v19 = v0;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v13._countAndFlagsBits = 774778400;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v11 logInfo:v14];

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;

  sub_100075B64(0, 0, v5, &unk_1000D5010, v16);

  return v1;
}

uint64_t sub_1000781A8()
{
  v1 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100078274;
  v3 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100078274()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_100078370, 0, 0);
}

uint64_t sub_100078384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_100078438;

  return sub_1000786AC(a5, a6);
}

uint64_t sub_100078438(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100078538, 0, 0);
}

uint64_t sub_100078538()
{
  v1 = v0[9];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = objc_opt_self();
    _StringGuts.grow(_:)(41);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v0[4] = v4;
    type metadata accessor for TimerCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001000DAEA0;
    v6._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v3;
    v7._object = v2;
    String.append(_:)(v7);
    v8 = v0[2];
    v9 = v0[3];
    v10 = String._bridgeToObjectiveC()();

    [v5 logInfo:v10];

    sub_10007E92C(v1, &AlarmPresentationState.init(_:), &qword_1001135F8, &qword_10011F3A8);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000786AC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_1000786D0, 0, 0);
}

uint64_t sub_1000786D0()
{
  v0[8] = *(v0[7] + 16);
  v1 = async function pointer to TimerViewModel.getTimer(_:)[1];

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100078780;
  v4 = v0[5];
  v3 = v0[6];

  return TimerViewModel.getTimer(_:)(v4, v3);
}

uint64_t sub_100078780(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 72);
  v7 = *v2;

  v8 = *(v4 + 64);
  if (v1)
  {

    v9 = sub_100078A0C;
  }

  else
  {

    *(v5 + 80) = a1;
    v9 = sub_1000788D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000788D4()
{
  v1 = v0[10];
  if (!v1)
  {
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[5];
    v5 = objc_opt_self();
    _StringGuts.grow(_:)(34);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v0[4] = v3;
    type metadata accessor for TimerCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001000DAF60;
    v6._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v4;
    v7._object = v2;
    String.append(_:)(v7);
    v8 = v0[2];
    v9 = v0[3];
    v10 = String._bridgeToObjectiveC()();

    [v5 logError:v10];
  }

  v11 = v0[1];

  return v11(v1);
}

uint64_t sub_100078A0C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(34);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x80000001000DAF60;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v3;
  v6._object = v1;
  String.append(_:)(v6);
  v7 = v0[2];
  v8 = v0[3];
  v9 = String._bridgeToObjectiveC()();

  [v4 logError:v9];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_100078B44(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v18 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000DAF30;
  v11._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v10 logInfo:v13];

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_100075E54(0, 0, v9, &unk_1000D5120, v15);
}

uint64_t sub_100078D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_1000032D4(&unk_100115E10, &qword_1000D27F0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_100078DC4, 0, 0);
}

uint64_t sub_100078DC4()
{
  v0[6] = *(v0[2] + 16);
  v1 = async function pointer to TimerViewModel.pauseResumeTimer(_:)[1];

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_100078E74;
  v4 = v0[3];
  v3 = v0[4];

  return TimerViewModel.pauseResumeTimer(_:)(v4, v3);
}

uint64_t sub_100078E74()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10007F054;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100078F90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100078F90()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_100075B64(0, 0, v2, &unk_1000D5128, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000790AC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v18 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000DAF00;
  v11._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v10 logInfo:v13];

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_100075E54(0, 0, v9, &unk_1000D5108, v15);
}

uint64_t sub_10007928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_1000032D4(&unk_100115E10, &qword_1000D27F0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007932C, 0, 0);
}

uint64_t sub_10007932C()
{
  v0[6] = *(v0[2] + 16);
  v1 = async function pointer to TimerViewModel.pauseResumeTimer(_:)[1];

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000793DC;
  v4 = v0[3];
  v3 = v0[4];

  return TimerViewModel.pauseResumeTimer(_:)(v4, v3);
}

uint64_t sub_1000793DC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10007F054;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1000794F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000794F8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_100075B64(0, 0, v2, &unk_1000D5110, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100079614(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v18 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000DAED0;
  v11._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v10 logInfo:v13];

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_100075E54(0, 0, v9, &unk_1000D50F8, v15);
}

uint64_t sub_1000797F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100079818, 0, 0);
}

uint64_t sub_100079818()
{
  v0[5] = *(v0[2] + 16);
  v1 = async function pointer to TimerViewModel.stopTimer(_:)[1];

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100076D68;
  v4 = v0[3];
  v3 = v0[4];

  return TimerViewModel.stopTimer(_:)(v4, v3);
}

uint64_t sub_1000798C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v18 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000DAE70;
  v11._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v10 logInfo:v13];

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_100075E54(0, 0, v9, &unk_1000D50D8, v15);
}

uint64_t sub_100079AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_1000032D4(&unk_100115E10, &qword_1000D27F0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_100079B48, 0, 0);
}

uint64_t sub_100079B48()
{
  v0[6] = *(v0[2] + 16);
  v1 = async function pointer to TimerViewModel.repeatTimer(_:)[1];

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_100079BF8;
  v4 = v0[3];
  v3 = v0[4];

  return TimerViewModel.repeatTimer(_:)(v4, v3);
}

uint64_t sub_100079BF8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10007F054;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100079D14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100079D14()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_100075B64(0, 0, v2, &unk_1000D3288, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100079E30(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v18 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000DAE40;
  v11._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v10 logInfo:v13];

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_100075E54(0, 0, v9, &unk_1000D50C8, v15);
}

uint64_t sub_10007A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10007A034, 0, 0);
}

uint64_t sub_10007A034()
{
  v0[5] = *(v0[2] + 16);
  v1 = async function pointer to TimerViewModel.dismissTimer(_:)[1];

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100076D68;
  v4 = v0[3];
  v3 = v0[4];

  return TimerViewModel.dismissTimer(_:)(v4, v3);
}

uint64_t sub_10007A0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(sub_1000032D4(&unk_100115E10, &qword_1000D27F0) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_10007A180, 0, 0);
}

uint64_t sub_10007A180()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_10007AC90(v1, &unk_1000D5048, v6);
  sub_10002D02C(v1, &unk_100115E10, &qword_1000D27F0);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_10007AC90(v1, &unk_1000D5058, v7);
  sub_10002D02C(v1, &unk_100115E10, &qword_1000D27F0);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_10007AC90(v1, &unk_1000D5068, v8);
  sub_10002D02C(v1, &unk_100115E10, &qword_1000D27F0);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_10007AC90(v1, &unk_1000D5078, v9);
  sub_10002D02C(v1, &unk_100115E10, &qword_1000D27F0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10007A410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = *(*(sub_1000032D4(&unk_100115DA0, &unk_1000D3220) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for AlarmPresentationState();
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v8 = *(v7 + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = sub_1000032D4(&qword_100117470, &qword_1000D5090);
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v11 = *(v10 + 64) + 15;
  v4[21] = swift_task_alloc();
  v12 = sub_1000032D4(&qword_100117478, &qword_1000D5098);
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v14 = *(v13 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10007A5D8, 0, 0);
}

uint64_t sub_10007A5D8()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = *(v0[14] + 16);

  TimerViewModel.timersUpdatedStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[25] = 0;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_10007A6E8;
  v8 = v0[24];
  v9 = v0[22];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v9);
}

uint64_t sub_10007A6E8()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_10007A7E4, 0, 0);
}

uint64_t sub_10007A7E4()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      v44 = v1;
      v45 = v1 & 0xC000000000000001;
      v5 = v0[25];
      v42 = i;
      v43 = v2;
      while (1)
      {
        if (v45)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_25;
          }

          v11 = *(v1 + 8 * v4 + 32);
        }

        v12 = v11;
        v13 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v14 = v0[14];
        v15 = objc_opt_self();
        v0[9] = 0;
        v0[10] = 0xE000000000000000;
        _StringGuts.grow(_:)(41);
        v16 = v0[10];
        v0[7] = v0[9];
        v0[8] = v16;
        v0[12] = v14;
        type metadata accessor for TimerCoordinator();
        _print_unlocked<A, B>(_:_:)();
        v17._object = 0x80000001000DAD40;
        v17._countAndFlagsBits = 0xD000000000000025;
        String.append(_:)(v17);
        v18 = [v12 timerIDString];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22._countAndFlagsBits = v19;
        v22._object = v21;
        String.append(_:)(v22);

        v23 = v0[7];
        v24 = v0[8];
        v25 = String._bridgeToObjectiveC()();

        [v15 logInfo:v25];

        v0[5] = &type metadata for ClockFeatureFlags;
        v0[6] = sub_10004DECC();
        *(v0 + 16) = 0;
        LOBYTE(v24) = isFeatureEnabled(_:)();
        sub_100017D28(v0 + 2);
        if (v24)
        {
          v6 = v0[15];
          v7 = v12;
          AlarmPresentationState.init(_:)();
          if (v5)
          {
            v8 = v0[16];
            v9 = v0[17];
            v10 = v0[15];

            (*(v9 + 56))(v10, 1, 1, v8);
            sub_10002D02C(v10, &unk_100115DA0, &unk_1000D3220);
          }

          else
          {
            v27 = v0[17];
            v26 = v0[18];
            v29 = v0[15];
            v28 = v0[16];
            (*(v27 + 56))(v29, 0, 1, v28);
            (*(v27 + 32))(v26, v29, v28);
            if (qword_100113608 != -1)
            {
              swift_once();
            }

            v31 = v0[17];
            v30 = v0[18];
            v32 = v0[16];
            dispatch thunk of DataStore.updateEntry(_:)();

            (*(v31 + 8))(v30, v32);
          }

          v5 = 0;
        }

        else
        {
          if (qword_1001135F8 != -1)
          {
            swift_once();
          }

          v0[13] = v12;
          dispatch thunk of DataStore.updateEntry(_:)();
        }

        v2 = v43;
        v1 = v44;
        ++v4;
        if (v13 == v42)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v5 = v0[25];
LABEL_28:

    v0[25] = v5;
    v38 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v39 = swift_task_alloc();
    v0[26] = v39;
    *v39 = v0;
    v39[1] = sub_10007A6E8;
    v40 = v0[24];
    v41 = v0[22];

    return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v41);
  }

  else
  {
    v33 = v0[21];
    v34 = v0[18];
    v35 = v0[15];
    (*(v0[23] + 8))(v0[24], v0[22]);

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_10007AC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  sub_10007E254(a1, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10002D02C(v11, &unk_100115E10, &qword_1000D27F0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_10007AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_1000032D4(&qword_100117470, &qword_1000D5090);
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v7 = *(v6 + 64) + 15;
  v4[30] = swift_task_alloc();
  v8 = sub_1000032D4(&qword_100117478, &qword_1000D5098);
  v4[31] = v8;
  v9 = *(v8 - 8);
  v4[32] = v9;
  v10 = *(v9 + 64) + 15;
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10007AFCC, 0, 0);
}

uint64_t sub_10007AFCC()
{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = *(v0[27] + 16);

  TimerViewModel.timersRemovedStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_10007B0D4;
  v8 = v0[33];
  v9 = v0[31];

  return AsyncStream.Iterator.next(isolation:)(v0 + 25, 0, 0, v9);
}

uint64_t sub_10007B0D4()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_10007B1D0, 0, 0);
}

uint64_t sub_10007B1D0()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      v35 = v2;
      v36 = v1 & 0xC000000000000001;
      v33 = v1;
      v34 = i;
      while (1)
      {
        if (v36)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_22;
          }

          v7 = *(v1 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v10 = v0[27];
        v11 = objc_opt_self();
        v0[19] = 0;
        v0[20] = 0xE000000000000000;
        _StringGuts.grow(_:)(41);
        v12 = v0[20];
        v0[17] = v0[19];
        v0[18] = v12;
        v0[26] = v10;
        type metadata accessor for TimerCoordinator();
        _print_unlocked<A, B>(_:_:)();
        v13._object = 0x80000001000DAD10;
        v13._countAndFlagsBits = 0xD000000000000025;
        String.append(_:)(v13);
        v14 = [v8 timerIDString];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18._countAndFlagsBits = v15;
        v18._object = v17;
        String.append(_:)(v18);

        v19 = v0[17];
        v20 = v0[18];
        v21 = String._bridgeToObjectiveC()();

        [v11 logInfo:v21];

        v22 = [v8 timerIDString];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v0[5] = &type metadata for ClockFeatureFlags;
        v0[6] = sub_10004DECC();
        *(v0 + 16) = 0;
        LOBYTE(v22) = isFeatureEnabled(_:)();
        sub_100017D28(v0 + 2);
        if (v22)
        {
          if (qword_100113608 != -1)
          {
            swift_once();
          }

          v0[23] = v23;
          v0[24] = v25;
          v5 = v0 + 12;
        }

        else
        {
          if (qword_1001135F8 != -1)
          {
            swift_once();
          }

          v0[21] = v23;
          v0[22] = v25;
          v5 = v0 + 7;
        }

        AnyHashable.init<A>(_:)();
        dispatch thunk of DataStore.clear(for:)();
        v6 = v5;
        v1 = v33;

        sub_10004E3D4(v6);
        ++v4;
        v2 = v35;
        if (v9 == v34)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    v29 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v30 = swift_task_alloc();
    v0[34] = v30;
    *v30 = v0;
    v30[1] = sub_10007B0D4;
    v31 = v0[33];
    v32 = v0[31];

    return AsyncStream.Iterator.next(isolation:)(v0 + 25, 0, 0, v32);
  }

  else
  {
    v26 = v0[30];
    (*(v0[32] + 8))(v0[33], v0[31]);

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_10007B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = *(*(sub_1000032D4(&unk_100115DA0, &unk_1000D3220) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for AlarmPresentationState();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = sub_1000032D4(&qword_100117470, &qword_1000D5090);
  v4[20] = v9;
  v10 = *(v9 - 8);
  v4[21] = v10;
  v11 = *(v10 + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = sub_1000032D4(&qword_100117478, &qword_1000D5098);
  v4[23] = v12;
  v13 = *(v12 - 8);
  v4[24] = v13;
  v14 = *(v13 + 64) + 15;
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10007B7B8, 0, 0);
}

uint64_t sub_10007B7B8()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = *(v0[15] + 16);

  TimerViewModel.timersAddedStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[26] = 0;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_10007B8C8;
  v8 = v0[25];
  v9 = v0[23];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v9);
}

uint64_t sub_10007B8C8()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_10007B9C4, 0, 0);
}

uint64_t sub_10007B9C4()
{
  v2 = (v0 + 88);
  v1 = *(v0 + 88);
  if (!v1)
  {
    v53 = *(v0 + 176);
    v54 = *(v0 + 152);
    v55 = *(v0 + 128);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v56 = *(v0 + 8);

    return v56();
  }

  v3 = *(v0 + 120);
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  *(v0 + 96) = v3;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v6._object = 0x80000001000DACE0;
  v6._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v6);
  v7 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v65 = v2;
    v61 = v7;
    if (i)
    {
      v2[2] = &_swiftEmptyArrayStorage;
      v9 = sub_10007DE94(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(v9, v10, v11, v12);
      }

      v13 = 0;
      v14 = v2[2];
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v1 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = [v15 timerIDString];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v65[2] = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_10007DE94((v21 > 1), v22 + 1, 1);
          v14 = v65[2];
        }

        ++v13;
        *(v14 + 16) = v22 + 1;
        v23 = v14 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (i != v13);
    }

    v24 = objc_opt_self();
    v25 = Array.description.getter();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29 = *(v0 + 56);
    v30 = *(v0 + 64);
    v31 = String._bridgeToObjectiveC()();

    [v24 logInfo:v31];

    if (v61)
    {
      break;
    }

    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v65;
    if (!v7)
    {
      goto LABEL_36;
    }

LABEL_15:
    v33 = 0;
    v2 = v32 - 9;
    v34 = v1 & 0xC000000000000001;
    v63 = v1;
    v64 = v1 & 0xFFFFFFFFFFFFFF8;
    v35 = *(v0 + 208);
    v62 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v34)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v64 + 16))
        {
          goto LABEL_41;
        }

        v42 = *(v1 + 8 * v33 + 32);
      }

      v43 = v42;
      v44 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      *(v0 + 40) = &type metadata for ClockFeatureFlags;
      *(v0 + 48) = sub_10004DECC();
      *(v0 + 16) = 0;
      v45 = isFeatureEnabled(_:)();
      sub_100017D28(v2);
      if (v45)
      {
        v36 = v7;
        v37 = *(v0 + 128);
        v38 = v43;
        AlarmPresentationState.init(_:)();
        if (v35)
        {
          v40 = *(v0 + 136);
          v39 = *(v0 + 144);
          v41 = *(v0 + 128);

          (*(v39 + 56))(v41, 1, 1, v40);
          sub_10002D02C(v41, &unk_100115DA0, &unk_1000D3220);
        }

        else
        {
          v46 = *(v0 + 144);
          v47 = *(v0 + 152);
          v49 = *(v0 + 128);
          v48 = *(v0 + 136);
          (*(v46 + 56))(v49, 0, 1, v48);
          (*(v46 + 32))(v47, v49, v48);
          if (qword_100113608 != -1)
          {
            swift_once();
          }

          v50 = *(v0 + 144);
          v51 = *(v0 + 152);
          v52 = *(v0 + 136);
          dispatch thunk of DataStore.updateEntry(_:)();

          (*(v50 + 8))(v51, v52);
        }

        v35 = 0;
        v7 = v36;
        v34 = v62;
        v1 = v63;
      }

      else
      {
        if (qword_1001135F8 != -1)
        {
          swift_once();
        }

        v65[3] = v43;
        dispatch thunk of DataStore.updateEntry(_:)();
      }

      ++v33;
      if (v44 == v7)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  v32 = v65;
  if (v7)
  {
    goto LABEL_15;
  }

LABEL_36:
  v35 = *(v0 + 208);
LABEL_37:

  *(v0 + 208) = v35;
  v58 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v59 = swift_task_alloc();
  *(v0 + 216) = v59;
  *v59 = v0;
  v59[1] = sub_10007B8C8;
  v60 = *(v0 + 200);
  v12 = *(v0 + 184);
  v9 = v65;
  v10 = 0;
  v11 = 0;

  return AsyncStream.Iterator.next(isolation:)(v9, v10, v11, v12);
}

uint64_t sub_10007BF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = *(*(sub_1000032D4(&unk_100115DA0, &unk_1000D3220) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for AlarmPresentationState();
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v8 = *(v7 + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = sub_1000032D4(&qword_100117460, &qword_1000D5080);
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v11 = *(v10 + 64) + 15;
  v4[21] = swift_task_alloc();
  v12 = sub_1000032D4(&qword_100117468, &qword_1000D5088);
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v14 = *(v13 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10007C140, 0, 0);
}

uint64_t sub_10007C140()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = *(v0[14] + 16);

  TimerViewModel.timerFiredStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[25] = 0;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_10007C250;
  v8 = v0[24];
  v9 = v0[22];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v9);
}

uint64_t sub_10007C250()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_10007C34C, 0, 0);
}

uint64_t sub_10007C34C()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[14];
    v3 = objc_opt_self();
    v0[9] = 0;
    v0[10] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v4 = v0[10];
    v0[7] = v0[9];
    v0[8] = v4;
    v0[12] = v2;
    type metadata accessor for TimerCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v5._object = 0x80000001000DACB0;
    v5._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v5);
    v6 = [v1 timerIDString];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11 = v0[7];
    v12 = v0[8];
    v13 = String._bridgeToObjectiveC()();

    [v3 logInfo:v13];

    v0[5] = &type metadata for ClockFeatureFlags;
    v14 = sub_10004DECC();
    *(v0 + 16) = 0;
    v0[6] = v14;
    LOBYTE(v3) = isFeatureEnabled(_:)();
    sub_100017D28(v0 + 2);
    if (v3)
    {
      v15 = v0[25];
      v16 = v0[15];
      v17 = v1;
      AlarmPresentationState.init(_:)();
      if (v15)
      {
        v18 = v0[16];
        v19 = v0[17];
        v20 = v0[15];

        (*(v19 + 56))(v20, 1, 1, v18);
        sub_10002D02C(v20, &unk_100115DA0, &unk_1000D3220);
      }

      else
      {
        v28 = v0[17];
        v27 = v0[18];
        v30 = v0[15];
        v29 = v0[16];
        (*(v28 + 56))(v30, 0, 1, v29);
        (*(v28 + 32))(v27, v30, v29);
        if (qword_100113608 != -1)
        {
          swift_once();
        }

        v32 = v0[17];
        v31 = v0[18];
        v33 = v0[16];
        dispatch thunk of DataStore.updateEntry(_:)();
        (*(v32 + 8))(v31, v33);
      }

      v26 = 0;
    }

    else
    {
      if (qword_1001135F8 != -1)
      {
        swift_once();
      }

      v0[13] = v1;
      dispatch thunk of DataStore.updateEntry(_:)();

      v26 = v0[25];
    }

    v0[25] = v26;
    v34 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v35 = swift_task_alloc();
    v0[26] = v35;
    *v35 = v0;
    v35[1] = sub_10007C250;
    v36 = v0[24];
    v37 = v0[22];

    return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v37);
  }

  else
  {
    v21 = v0[21];
    v22 = v0[18];
    v23 = v0[15];
    (*(v0[23] + 8))(v0[24], v0[22]);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_10007C764()
{
  type metadata accessor for AlarmAndTimerCoordinator();
  v0 = swift_allocObject();
  type metadata accessor for AlarmManager();
  result = static AlarmManager.shared.getter();
  *(v0 + 16) = result;
  qword_10011F508 = v0;
  return result;
}

uint64_t sub_10007C7B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 168) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for Alarm.State();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v10 = *(*(sub_1000032D4(&qword_100117488, &qword_1000D50B8) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v11 = type metadata accessor for Alarm();
  *(v6 + 96) = v11;
  v12 = *(v11 - 8);
  *(v6 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10007C91C, 0, 0);
}

uint64_t sub_10007C91C()
{
  if (*(v0 + 168))
  {
    goto LABEL_9;
  }

  v1 = *(v0 + 24);
  if (v1 != 1)
  {
    if (!v1)
    {
      if (qword_100113620 != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 16);
      v3 = UUID.uuidString.getter();
      v5 = v4;
      *(v0 + 120) = v4;
      v6 = swift_task_alloc();
      *(v0 + 128) = v6;
      *v6 = v0;
      v6[1] = sub_10007CD3C;

      return sub_1000765F0(v3, v5);
    }

LABEL_9:
    v8 = *(v0 + 40);
    if (v8)
    {
      v9 = *(*(v0 + 48) + 16);
      v10 = AlarmManager.allAlarms.getter();
      v16 = v10;
      if (*(v10 + 16) && (v17 = sub_100068450(*(v0 + 32), v8), (v18 & 1) != 0))
      {
        v19 = *(v0 + 96);
        v20 = *(v0 + 104);
        v21 = *(v0 + 88);
        v22 = *(v0 + 16);
        v23 = *(*(v16 + 56) + 8 * v17);

        *(swift_task_alloc() + 16) = v22;
        sub_100075990(sub_10007E77C, v23, v21);

        if ((*(v20 + 48))(v21, 1, v19) != 1)
        {
          v25 = *(v0 + 104);
          v24 = *(v0 + 112);
          v26 = *(v0 + 96);
          v28 = *(v0 + 72);
          v27 = *(v0 + 80);
          v29 = *(v0 + 56);
          v30 = *(v0 + 64);
          (*(v25 + 32))(v24, *(v0 + 88), v26);
          Alarm.state.getter();
          (*(v30 + 104))(v28, enum case for Alarm.State.alerting(_:), v29);
          v31 = static Alarm.State.== infix(_:_:)();
          v32 = *(v30 + 8);
          v32(v28, v29);
          v32(v27, v29);
          (*(v25 + 8))(v24, v26);
LABEL_23:
          v33 = *(v0 + 112);
          v35 = *(v0 + 80);
          v34 = *(v0 + 88);
          v36 = *(v0 + 72);

          v37 = *(v0 + 8);

          return v37(v31 & 1);
        }
      }

      else
      {

        (*(*(v0 + 104) + 56))(*(v0 + 88), 1, 1, *(v0 + 96));
      }

      sub_10002D02C(*(v0 + 88), &qword_100117488, &qword_1000D50B8);
    }

    v31 = 0;
    goto LABEL_23;
  }

  if (qword_100113628 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 16);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v0 + 144) = v13;
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = sub_10007CF10;

  return sub_1000786AC(v12, v14);
}

uint64_t sub_10007CD3C(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10007CE5C, 0, 0);
}

uint64_t sub_10007CE5C()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = [*(v0 + 136) isFiring];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_10007CF10(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10007D030, 0, 0);
}

uint64_t sub_10007D030()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 160) isFiring];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_10007D0E4()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Alarm.id.getter();
  v5 = static UUID.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void sub_10007D234(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AlarmActionType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 0xD000000000000015 && 0x80000001000D7F20 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = objc_opt_self();
    v18[1] = 0;
    v18[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v12._countAndFlagsBits = 0xD000000000000030;
    v12._object = 0x80000001000DADE0;
    String.append(_:)(v12);
    type metadata accessor for UUID();
    sub_10007E734(&qword_100118110, 255, &type metadata accessor for UUID);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 0xD000000000000010;
    v14._object = 0x80000001000DAE20;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a2;
    v15._object = a3;
    String.append(_:)(v15);
    v18[0] = String._bridgeToObjectiveC()();

    [v11 logError:v18[0]];
    v16 = v18[0];
  }

  else
  {
    v17 = *(v3 + 16);
    (*(v7 + 104))(v10, enum case for AlarmActionType.secondary(_:), v6);
    AlarmManager.executeIntent(id:ownerID:actionType:)();
    (*(v7 + 8))(v10, v6);
  }
}

void sub_10007D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    goto LABEL_7;
  }

  if (a4 != 1)
  {
    if (!a4)
    {
      v6 = objc_opt_self();
      _StringGuts.grow(_:)(49);

      type metadata accessor for UUID();
      sub_10007E734(&qword_100118110, 255, &type metadata accessor for UUID);
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      v11 = String._bridgeToObjectiveC()();

      [v6 logError:v11];

      return;
    }

LABEL_7:
    v8 = *(v5 + 16);
    AlarmManager.pause(id:ownerID:)();
    return;
  }

  if (qword_100113628 != -1)
  {
    swift_once();
  }

  v9 = UUID.uuidString.getter();
  sub_100078B44(v9, v10);
}

void sub_10007D6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    goto LABEL_7;
  }

  if (a4 != 1)
  {
    if (!a4)
    {
      v6 = objc_opt_self();
      _StringGuts.grow(_:)(50);

      type metadata accessor for UUID();
      sub_10007E734(&qword_100118110, 255, &type metadata accessor for UUID);
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      v11 = String._bridgeToObjectiveC()();

      [v6 logError:v11];

      return;
    }

LABEL_7:
    v8 = *(v5 + 16);
    AlarmManager.resume(id:ownerID:)();
    return;
  }

  if (qword_100113628 != -1)
  {
    swift_once();
  }

  v9 = UUID.uuidString.getter();
  sub_1000790AC(v9, v10);
}

uint64_t sub_10007D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t), void (*a7)(uint64_t), unsigned int *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v25 = a7;
  v26 = a6;
  v27 = a9;
  v16 = type metadata accessor for AlarmActionType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    goto LABEL_7;
  }

  if (a4 == 1)
  {
    if (qword_100113628 != -1)
    {
      swift_once();
    }

    v24 = UUID.uuidString.getter();
    v25(v24);
    goto LABEL_11;
  }

  if (a4)
  {
LABEL_7:
    v22 = *(v9 + 16);
    (*(v17 + 104))(v20, *a8, v16);
    AlarmManager.executeIntent(id:ownerID:actionType:)();
    (*(v17 + 8))(v20, v16);
    return v27(a1, a2, a3);
  }

  if (qword_100113620 != -1)
  {
    swift_once();
  }

  v21 = UUID.uuidString.getter();
  v26(v21);
LABEL_11:
}

uint64_t sub_10007DBAC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007F0A0;

  return v7(a1);
}

uint64_t sub_10007DCA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007DD9C;

  return v7(a1);
}

uint64_t sub_10007DD9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_10007DE94(char *a1, int64_t a2, char a3)
{
  result = sub_10007DEB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007DEB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000032D4(&qword_100117480, &qword_1000D50A0);
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

unint64_t sub_10007DFC0(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v4 = *(v1 + 8 * i + 32);
        }

        v5 = v4;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = [v4 alarmIDString];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v8[3] = &type metadata for ClockFeatureFlags;
        v8[4] = sub_10004DECC();
        LOBYTE(v8[0]) = 0;
        LOBYTE(v7) = isFeatureEnabled(_:)();
        sub_100017D28(v8);
        if (v7)
        {
          if (qword_100113608 == -1)
          {
            goto LABEL_5;
          }

LABEL_14:
          swift_once();
          goto LABEL_5;
        }

        if (qword_100113600 != -1)
        {
          goto LABEL_14;
        }

LABEL_5:
        AnyHashable.init<A>(_:)();
        dispatch thunk of DataStore.clear(for:)();

        result = sub_10004E3D4(v8);
        if (v6 == v2)
        {
          return result;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = _CocoaArrayWrapper.endIndex.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10007E1A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_100078188(a1, v4, v5, v6);
}

uint64_t sub_10007E254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E2C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007E2FC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10004F014;

  return sub_10007A0E4(a1, a2, v2);
}

uint64_t sub_10007E3A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10007A410(a1, v4, v5, v6);
}

uint64_t sub_10007E45C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10007AE98(a1, v4, v5, v6);
}

uint64_t sub_10007E510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10007B5F0(a1, v4, v5, v6);
}

uint64_t sub_10007E5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10007BF78(a1, v4, v5, v6);
}

uint64_t sub_10007E67C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004F014;

  return sub_10007DCA4(a1, v5);
}

uint64_t sub_10007E734(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10007E79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_10007A010(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007E864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100079AA8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007E92C(void *a1, void (*a2)(void *), void *a3, uint64_t *a4)
{
  v8 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21[-1] - v10;
  v12 = type metadata accessor for AlarmPresentationState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = &type metadata for ClockFeatureFlags;
  v21[4] = sub_10004DECC();
  LOBYTE(v21[0]) = 0;
  v17 = isFeatureEnabled(_:)();
  sub_100017D28(v21);
  if (v17)
  {
    a2(a1);
    (*(v13 + 56))(v11, 0, 1, v12);
    (*(v13 + 32))(v16, v11, v12);
    if (qword_100113608 != -1)
    {
      swift_once();
    }

    dispatch thunk of DataStore.updateEntry(_:)();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v18 = *a4;
    v21[0] = a1;
    return dispatch thunk of DataStore.updateEntry(_:)();
  }
}

uint64_t sub_10007EBA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_1000797F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007EC6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_10007928C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007ED34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100078D24(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007EDFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_1000774EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007EEC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100031D4C;

  return sub_100077084(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007EF8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100076C80(a1, v4, v5, v6, v7, v8);
}

void sub_10007F0C0()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_40;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  [v3 setBackgroundColor:v5];

  v6 = OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView])
  {
    v7 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel];
    v101 = &type metadata for StandbyConfig;
    v102 = &off_100101E48;
    type metadata accessor for ObservableStopwatchModel();
    sub_10006548C();

    v99 = ObservedObject.init(wrappedValue:)();
    v100 = v8;
    v9 = objc_allocWithZone(sub_1000032D4(&unk_100119A40, &qword_1000D5228));
    *&v9[*((swift_isaMask & *v9) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_1000819D0(&v99, v98);
    v10 = UIHostingController.init(rootView:)();
    sub_100081A2C(&v99);
    v11 = v10;
    v12 = [v11 view];
    if (!v12)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v13 = v12;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [v11 view];
    if (!v14)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v15 = v14;
    v16 = [v14 layer];

    [v16 setAllowsHitTesting:0];
    v17 = [v11 view];
    if (!v17)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v18 = v17;
    v19 = [v4 clearColor];
    [v18 setBackgroundColor:v19];

    [v1 addChildViewController:v11];
    v20 = [v1 view];
    if (!v20)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v21 = v20;
    v22 = [v11 view];

    if (!v22)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    [v21 addSubview:v22];

    [v11 didMoveToParentViewController:v1];
    v23 = *&v1[v6];
    *&v1[v6] = v11;
  }

  v24 = OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView;
  v25 = *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView];
  if (v25)
  {
    goto LABEL_16;
  }

  v26 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel];
  v101 = &type metadata for StandbyConfig;
  v102 = &off_100101E48;
  type metadata accessor for ObservableStopwatchModel();
  sub_10006548C();

  v99 = ObservedObject.init(wrappedValue:)();
  v100 = v27;
  v28 = objc_allocWithZone(sub_1000032D4(&unk_100117520, &unk_1000D5230));
  *&v28[*((swift_isaMask & *v28) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_100081A80(&v99, v98);
  v29 = UIHostingController.init(rootView:)();
  sub_100081ADC(&v99);
  v30 = v29;
  v31 = [v30 view];
  if (!v31)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v32 = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = [v30 view];
  if (!v33)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v34 = v33;
  v35 = [v33 layer];

  [v35 setAllowsHitTesting:0];
  v36 = [v30 view];
  if (!v36)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v37 = v36;
  v38 = [v4 clearColor];
  [v37 setBackgroundColor:v38];

  [v1 addChildViewController:v30];
  v39 = [v1 view];
  if (!v39)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v40 = v39;
  v41 = [v30 view];

  if (!v41)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  [v40 addSubview:v41];

  [v30 didMoveToParentViewController:v1];
  v42 = *&v1[v24];
  *&v1[v24] = v30;

  v25 = *&v1[v24];
  if (v25)
  {
LABEL_16:
    v43 = [v25 view];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 leadingAnchor];

      sub_100081B30();
      sub_1000032D4(&qword_100115480, &qword_1000D2510);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1000D5170;
      v47 = *&v1[v24];
      if (v47)
      {
        v48 = [v47 view];
        if (v48)
        {
          v49 = v48;
          v50 = [v48 leadingAnchor];

          v51 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
          if (v51)
          {
            v52 = [v51 trailingAnchor];
            v53 = [v50 constraintEqualToAnchor:v52 constant:17.0];

            *(v46 + 32) = v53;
            v54 = *&v1[v24];
            if (v54)
            {
              v55 = [v54 view];
              if (v55)
              {
                v56 = v55;
                v57 = [v55 trailingAnchor];

                v58 = [v1 view];
                if (v58)
                {
                  v59 = v58;
                  v60 = [v58 trailingAnchor];

                  v61 = [v57 constraintEqualToAnchor:v60 constant:-56.0];
                  *(v46 + 40) = v61;
                  v62 = *&v1[v24];
                  if (v62)
                  {
                    v63 = [v62 view];
                    if (v63)
                    {
                      v64 = v63;
                      v65 = [v63 centerYAnchor];

                      v66 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton];
                      if (v66)
                      {
                        v67 = [v66 centerYAnchor];
                        v68 = [v65 constraintEqualToAnchor:v67];

                        *(v46 + 48) = v68;
                        v69 = *&v1[v6];
                        if (v69)
                        {
                          v70 = [v69 view];
                          if (v70)
                          {
                            v71 = v70;
                            v72 = [v70 trailingAnchor];

                            v73 = *&v1[v24];
                            if (v73)
                            {
                              v74 = [v73 view];
                              if (v74)
                              {
                                v75 = v74;
                                v76 = [v74 trailingAnchor];

                                v77 = [v72 constraintEqualToAnchor:v76];
                                *(v46 + 56) = v77;
                                v78 = *&v1[v6];
                                if (v78)
                                {
                                  v79 = [v78 view];
                                  if (v79)
                                  {
                                    v80 = v79;
                                    v81 = [v79 leadingAnchor];

                                    v82 = *&v1[v24];
                                    if (v82)
                                    {
                                      v83 = [v82 view];
                                      if (v83)
                                      {
                                        v84 = v83;
                                        v85 = [v83 leadingAnchor];

                                        v86 = [v81 constraintEqualToAnchor:v85];
                                        *(v46 + 64) = v86;
                                        v87 = *&v1[v6];
                                        if (v87)
                                        {
                                          v88 = [v87 view];
                                          if (v88)
                                          {
                                            v89 = v88;
                                            v90 = [v88 bottomAnchor];

                                            v91 = *&v1[v24];
                                            if (v91)
                                            {
                                              v92 = [v91 view];
                                              if (v92)
                                              {
                                                v93 = v92;
                                                v94 = objc_opt_self();
                                                v95 = [v93 topAnchor];

                                                v96 = [v90 constraintEqualToAnchor:v95];
                                                *(v46 + 72) = v96;
                                                sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                                                isa = Array._bridgeToObjectiveC()().super.isa;

                                                [v94 activateConstraints:isa];

                                                return;
                                              }

                                              goto LABEL_61;
                                            }

LABEL_60:
                                            __break(1u);
LABEL_61:
                                            __break(1u);
                                            goto LABEL_62;
                                          }

LABEL_59:
                                          __break(1u);
                                          goto LABEL_60;
                                        }

LABEL_58:
                                        __break(1u);
                                        goto LABEL_59;
                                      }

LABEL_57:
                                      __break(1u);
                                      goto LABEL_58;
                                    }

LABEL_56:
                                    __break(1u);
                                    goto LABEL_57;
                                  }

LABEL_55:
                                  __break(1u);
                                  goto LABEL_56;
                                }

LABEL_54:
                                __break(1u);
                                goto LABEL_55;
                              }

LABEL_53:
                              __break(1u);
                              goto LABEL_54;
                            }

LABEL_52:
                            __break(1u);
                            goto LABEL_53;
                          }

LABEL_51:
                          __break(1u);
                          goto LABEL_52;
                        }

LABEL_50:
                        __break(1u);
                        goto LABEL_51;
                      }

LABEL_49:
                      __break(1u);
                      goto LABEL_50;
                    }

LABEL_48:
                    __break(1u);
                    goto LABEL_49;
                  }

LABEL_47:
                  __break(1u);
                  goto LABEL_48;
                }

LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
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

LABEL_72:
  __break(1u);
}

void sub_10007FB00()
{
  v1 = v0;
  v2 = [objc_opt_self() buttonWithType:0];
  v3 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton;
  v4 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton];
  *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = [objc_opt_self() systemGray4Color];
  [v5 setBackgroundColor:v6];

  v7 = *&v1[v3];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v1[v3];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  *(swift_allocObject() + 16) = v8;
  v9 = v8;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = v9;
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v12 addAction:v10 forControlEvents:{17, 0, 0, 0, sub_100082004, v11}];
  [v12 addAction:v13 forControlEvents:352];

  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 configurationWithPointSize:54.0];
  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() systemImageNamed:v18 withConfiguration:v17];

  [v16 setImage:v19 forState:0];
  v20 = *&v1[v3];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v20 setAdjustsImageWhenHighlighted:0];
  v21 = *&v1[v3];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = [v21 layer];
  [v22 setCornerRadius:57.0];

  v23 = *&v1[v3];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 mtOrange];
  [v25 setTintColor:v26];

  v27 = *&v1[v3];
  if (!v27)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = v27;
  v29 = [v24 mtOrange];
  v30 = [v29 colorWithAlphaComponent:0.35];

  [v28 setBackgroundColor:v30];
  v31 = *&v1[v3];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v31 addTarget:v1 action:"playPausedAction" forControlEvents:64];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!*&v1[v3])
  {
LABEL_25:
    __break(1u);
    return;
  }

  v33 = v32;
  [v32 addSubview:?];
}

void sub_10007FF74()
{
  v1 = v0;
  v2 = [objc_opt_self() buttonWithType:0];
  v3 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
  v4 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
  *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = *&v1[v3];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemGray4Color];
  [v8 setBackgroundColor:v9];

  v10 = *&v1[v3];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  *(swift_allocObject() + 16) = v10;
  v11 = v10;
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = v11;
  v30 = v13;
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v14 addAction:v12 forControlEvents:{17, 0, 0, 0, sub_100081998, v30}];
  [v14 addAction:v15 forControlEvents:352];

  v16 = *&v1[v3];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = [v16 layer];
  [v17 setCornerRadius:57.0];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!*&v1[v3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  [v18 addSubview:?];

  v20 = objc_allocWithZone(type metadata accessor for SpinnyResetView());
  v21 = sub_10005F050(0.0, 0.0, 114.0, 114.0, 54.0, 54.0);
  v22 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView;
  v23 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView];
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView] = v21;

  v24 = *&v1[v3];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  v26 = v1;
  v27 = v24;
  v31 = v25;
  v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v27 addAction:v28 forControlEvents:{64, 0, 0, 0, sub_1000819A0, v31}];

  v29 = *&v1[v3];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!*&v1[v22])
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v29 addSubview:?];
}

void sub_100080344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  if (v2)
  {
    if ((*(v2 + OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode) & 1) == 0)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      v4 = objc_allocWithZone(UIViewPropertyAnimator);
      v8[4] = sub_100031BEC;
      v8[5] = v3;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10004B270;
      v8[3] = &unk_1001027A8;
      v5 = _Block_copy(v8);
      v6 = v2;

      v7 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:1.0];
      _Block_release(v5);
      [v7 startAnimation];
    }

    sub_10002E7E0();
  }

  else
  {
    __break(1u);
  }
}

void sub_100080494()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v2)
  {
    v3 = v2;
    v4 = dispatch thunk of StopwatchViewModel.getStopwatch()();

    v5 = [v4 state];
    if (v5 == 1)
    {
      v6 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton);
      if (v6)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      return;
    }
  }

  v6 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton);
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_6:
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 configurationWithPointSize:54.0];
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  [v8 setImage:v11 forState:0];
}

void sub_100080654()
{
  v1 = *&v0[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  [v3 setHidden:v9 < 2];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v5 setNeedsLayout];

  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_10008079C(void *a1)
{
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_glyphSize] = 0x404B000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_safeAreaPadding] = 0x404E000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_trailingEdgePadding] = 0x404C000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StopwatchStandbyController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100080874(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_glyphSize] = 0x404B000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_safeAreaPadding] = 0x404E000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_trailingEdgePadding] = 0x404C000000000000;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for StopwatchStandbyController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

void sub_100080954()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView);
}

void sub_100080A20()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation];
  v3 = sub_1000C5FC0();
  if (!v3)
  {
    v28 = objc_opt_self();
    _StringGuts.grow(_:)(58);
    v29 = [v1 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0xD000000000000038;
    v34._object = 0x80000001000DB170;
    String.append(_:)(v34);
    isa = String._bridgeToObjectiveC()();

    [v28 logInfo:isa];
    goto LABEL_7;
  }

  v4 = v3;
  [v4 setAccessibilityIgnoresInvertColors:1];
  v5 = objc_opt_self();
  _StringGuts.grow(_:)(50);
  v6 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._object = 0x80000001000DB1B0;
  v7._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v5 logInfo:v8];

  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 addSubview:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000D24B0;
  v12 = [v4 topAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor:v15 constant:4.0];
  *(v11 + 32) = v16;
  v17 = [v4 widthAnchor];
  v18 = [v17 constraintEqualToConstant:32.0];

  *(v11 + 40) = v18;
  v19 = [v4 heightAnchor];
  v20 = [v4 widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v11 + 48) = v21;
  v22 = [v4 centerXAnchor];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 centerXAnchor];

  v27 = [v22 constraintEqualToAnchor:v26];
  *(v11 + 56) = v27;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];

LABEL_7:
}

void sub_100080E9C(char a1, char a2, double a3, double a4, long double a5, double a6)
{
  v20.receiver = v6;
  v20.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  objc_msgSendSuper2(&v20, "didUpdateCurrentInterval:adjustedCurrentInterval:totalInterval:adjustedTotalInterval:isStopwatchRunning:isStopwatchStopped:", a1 & 1, a2 & 1, a3, a4, a5, a6);
  v13 = *&v6[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation];
  [objc_opt_self() setDisableActions:1];
  v14 = *(v13 + 32);
  if (v14)
  {
    v15 = 360.0 - fmod(a5, 60.0) / 60.0 * 360.0;
    v16 = objc_opt_self();
    v17 = v14;
    [v16 radFromDeg:v15];
    CATransform3DMakeRotation(&v19, v18, 0.0, 0.0, 1.0);
    [v17 setTransform:&v19];
  }
}

void sub_100081060()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  objc_msgSendSuper2(&v4, "didPauseLapTimer");
  v1 = *(*&v0[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation] + 16);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 setState:v3];
  }
}

void sub_100081134()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  objc_msgSendSuper2(&v4, "didResumeLapTimer");
  v1 = *(*&v0[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation] + 16);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 setState:v3];
  }
}

char *sub_10008120C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0x404E000000000000;
  *(v2 + v5) = v6;
  *(v2 + OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_elementSize) = 0x4040000000000000;
  *(v2 + OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_topMargin) = 0x4010000000000000;

  return sub_10002DC6C(a1, a2);
}

id sub_1000812A0(void *a1)
{
  v3 = OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_elementSize] = 0x4040000000000000;
  *(v4 + 48) = 0x404E000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_topMargin] = 0x4010000000000000;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_100081380(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_elementSize] = 0x4040000000000000;
  *(v7 + 48) = 0x404E000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_topMargin] = 0x4010000000000000;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

uint64_t sub_10008147C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return a5(v7, v9, a4);
}

id sub_100081518(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100081584(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v12 = sub_1000819C8;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10004B270;
  v11 = &unk_100102870;
  v5 = _Block_copy(&v8);
  v6 = a2;

  v12 = Frame.timestamp.getter;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000C1688;
  v11 = &unk_100102898;
  v7 = _Block_copy(&v8);
  [v3 _animateUsingSpringWithDampingRatio:1 response:v5 tracking:v7 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v7);
  _Block_release(v5);
}

id sub_100081700(void *a1)
{
  CGAffineTransformMakeScale(&v3, 0.9, 0.9);
  [a1 setTransform:&v3];
  return [a1 setAlpha:0.75];
}

void sub_100081774(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v12 = sub_1000819C0;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10004B270;
  v11 = &unk_1001027F8;
  v5 = _Block_copy(&v8);
  v6 = a2;

  v12 = Frame.timestamp.getter;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000C1688;
  v11 = &unk_100102820;
  v7 = _Block_copy(&v8);
  [v3 _animateUsingSpringWithDampingRatio:1 response:v5 tracking:v7 dampingRatioSmoothing:1.0 responseSmoothing:0.4 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v7);
  _Block_release(v5);
}

id sub_1000818EC(void *a1)
{
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  [a1 setTransform:v4];
  return [a1 setAlpha:1.0];
}

uint64_t sub_100081958()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000819A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100081B30()
{
  v1 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton;
  if (!*&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton])
  {
    sub_10007FB00();
    sub_10007FF74();
  }

  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D24C0;
  v3 = *&v0[v1];
  if (!v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = [v3 leadingAnchor];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5;
  v7 = [v5 leadingAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:60.0];
  *(v2 + 32) = v8;
  v9 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
  v10 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = [v10 leadingAnchor];
  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:20.0];

  *(v2 + 40) = v14;
  v15 = *&v0[v9];
  if (!v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = [v15 bottomAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = [v17 bottomAnchor];

  v20 = [v16 constraintEqualToAnchor:v19 constant:-60.0];
  *(v2 + 48) = v20;
  v21 = *&v0[v1];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = [v21 centerYAnchor];
  v23 = *&v0[v9];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = [v23 centerYAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];

  *(v2 + 56) = v25;
  v26 = *&v0[v1];
  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = [v26 widthAnchor];
  v28 = *&v0[v1];
  if (!v28)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = [v28 heightAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];

  *(v2 + 64) = v30;
  v31 = *&v0[v1];
  if (!v31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = [v31 widthAnchor];
  v33 = *&v0[v9];
  if (!v33)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = [v33 widthAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];

  *(v2 + 72) = v35;
  v36 = *&v0[v1];
  if (!v36)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v37 = [v36 widthAnchor];
  v38 = *&v0[v9];
  if (!v38)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v39 = [v38 heightAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];

  *(v2 + 80) = v40;
  v41 = *&v0[v1];
  if (!v41)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v42 = objc_opt_self();
  v43 = [v41 widthAnchor];
  v44 = [v43 constraintEqualToConstant:114.0];

  *(v2 + 88) = v44;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];
}

id sub_1000821B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100082220()
{
  v1 = OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___interface;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___interface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___interface);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() interfaceWithIdentifier:v4];

    [v5 setClientMessagingExpectation:0];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1000822E4()
{
  result = [objc_allocWithZone(type metadata accessor for ClockAngelConnectionManager()) init];
  qword_10011F510 = result;
  return result;
}

void sub_100082314()
{
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *&v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_publicListener] = 0;
  *&v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection] = 0;
  v19 = OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connectionManagerQueue;
  sub_100068040();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10008337C();
  sub_1000032D4(&unk_1001165E0, &qword_1000D3BA0);
  sub_1000833D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *&v0[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = &v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_reloadLayout];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___interface] = 0;
  *&v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___timerManager] = 0;
  v10 = type metadata accessor for ClockAngelConnectionManager();
  v24.receiver = v0;
  v24.super_class = v10;
  v11 = objc_msgSendSuper2(&v24, "init");
  v22 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100083438;
  *(v12 + 24) = &v21;
  aBlock[4] = sub_100083474;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100083470;
  aBlock[3] = &unk_100102AA0;
  v13 = _Block_copy(aBlock);
  v14 = objc_opt_self();
  v15 = v11;

  v16 = [v14 listenerWithConfigurator:v13];
  _Block_release(v13);

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v17 = *&v15[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_publicListener];
    *&v15[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_publicListener] = v16;
    v18 = v16;

    if (v18)
    {
      [v18 activate];

      return;
    }
  }

  __break(1u);
}

id sub_1000826E4(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

void sub_1000827C8(void *a1, char *a2)
{
  [a1 setTargetQueue:*&a2[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connectionManagerQueue]];
  v4 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v4];

  v5 = sub_100082220();
  [a1 setInterface:v5];

  [a1 setInterfaceTarget:a2];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v19 = sub_100083364;
  v20 = v6;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100082B6C;
  v18 = &unk_1001029B0;
  v7 = _Block_copy(&v15);
  v8 = a2;

  [a1 setActivationHandler:v7];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v19 = sub_10008336C;
  v20 = v9;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100082B6C;
  v18 = &unk_100102A00;
  v10 = _Block_copy(&v15);
  v11 = v8;

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v19 = sub_100083374;
  v20 = v12;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100082B6C;
  v18 = &unk_100102A50;
  v13 = _Block_copy(&v15);
  v14 = v11;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
}

void sub_100082A74(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  _StringGuts.grow(_:)(28);
  v4 = [a2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5._object = 0x80000001000DB4A0;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v5);
  v6 = String._bridgeToObjectiveC()();

  [v3 logInfo:v6];
}

void sub_100082B6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100082BD4(uint64_t a1, char *a2)
{
  v3 = objc_opt_self();
  _StringGuts.grow(_:)(30);
  v4 = [a2 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._object = 0x80000001000DB480;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  [v3 logInfo:{v9, v5, v7}];

  v10 = *&a2[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection];
  *&a2[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection] = 0;
}

id sub_100082CDC(void *a1, void *a2)
{
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(30);
  v5 = [a2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._object = 0x80000001000DB460;
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:{v10, v6, v8}];

  return [a1 activate];
}

uint64_t sub_100082DE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_100082ED0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClockAngelConnectionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100082FB8(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 hasEntitlement:v4];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_10008330C;
    *(v7 + 24) = v6;
    v22[4] = sub_100083324;
    v22[5] = v7;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_100083470;
    v22[3] = &unk_100102960;
    v8 = _Block_copy(v22);
    v9 = v1;

    [a1 configureConnection:v8];
    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
      v10 = *&v9[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection];
      *&v9[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection] = a1;
      v11 = a1;
    }
  }

  else
  {
    v12 = objc_opt_self();
    _StringGuts.grow(_:)(53);
    v13._countAndFlagsBits = 0x202D20726F727265;
    v13._object = 0xE900000000000022;
    String.append(_:)(v13);
    v14 = [a1 remoteProcess];
    v15 = [v14 description];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD00000000000002ALL;
    v20._object = 0x80000001000DB3C0;
    String.append(_:)(v20);
    v21 = String._bridgeToObjectiveC()();

    [v12 logError:v21];

    [a1 invalidate];
  }
}

uint64_t sub_1000832D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100083324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10008334C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10008337C()
{
  result = qword_1001176E0;
  if (!qword_1001176E0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001176E0);
  }

  return result;
}

unint64_t sub_1000833D4()
{
  result = qword_1001176F0;
  if (!qword_1001176F0)
  {
    sub_10001C820(&unk_1001165E0, &qword_1000D3BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001176F0);
  }

  return result;
}

uint64_t sub_10008348C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008355C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100083634()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000836E8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v55 = a2;
  v3 = type metadata accessor for Font._StylisticAlternative();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v49[-v9];
  v11 = sub_1000032D4(&qword_100117860, &qword_1000D5320);
  v12 = *(v11 - 8);
  v53 = v11 - 8;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v49[-v14];
  v54 = sub_1000032D4(&qword_100117868, &qword_1000D5328);
  v16 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v18 = &v49[-v17];
  v19 = type metadata accessor for TimelineCountupView(0);
  v20 = v19[6];
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 16))(&v15[v20], v2, v21);
  v22 = type metadata accessor for RunningCountupView(0);
  v23 = *(v2 + v22[6]);
  KeyPath = swift_getKeyPath();
  *&v15[v19[5]] = swift_getKeyPath();
  sub_1000032D4(&qword_100117870, &qword_1000D5390);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ObservableStopwatchModel();
  sub_1000868D0(&qword_100116B20, type metadata accessor for ObservableStopwatchModel);
  v25 = EnvironmentObject.init()();
  v27 = v26;
  *v15 = KeyPath;
  v15[8] = 0;
  LOBYTE(KeyPath) = v50;
  v15[v19[7]] = v50;
  *&v15[v19[8]] = v23;
  v28 = &v15[v19[9]];
  static Calendar.current.getter();
  *&v15[v19[10]] = 1;
  v29 = &v15[v19[11]];
  *v29 = v25;
  v29[1] = v27;
  v30 = v2;
  v31 = *(v2 + v22[7]);
  v32 = type metadata accessor for Font.Design();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v10, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  v34 = v51;
  v33 = v52;
  (*(v51 + 104))(v6, enum case for Font._StylisticAlternative.three(_:), v52);
  v35 = Font._stylisticAlternative(_:)();

  (*(v34 + 8))(v6, v33);
  v36 = swift_getKeyPath();
  v37 = &v15[*(sub_1000032D4(&qword_100117878, &qword_1000D53C8) + 36)];
  *v37 = v36;
  v37[1] = v35;
  v38 = *(v30 + v22[8]);
  v39 = swift_getKeyPath();
  v40 = &v15[*(sub_1000032D4(&qword_100117880, &qword_1000D5400) + 36)];
  *v40 = v39;
  v40[1] = v38;
  v41 = swift_getKeyPath();
  v42 = &v15[*(sub_1000032D4(&qword_100117888, &qword_1000D5438) + 36)];
  *v42 = v41;
  v42[8] = 1;
  v43 = swift_getKeyPath();
  v44 = &v15[*(v53 + 44)];
  *v44 = v43;
  *(v44 + 1) = 1;
  v44[16] = 0;
  if (KeyPath)
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 0.4;
  }

  v46 = swift_getKeyPath();
  sub_100086498(v15, v18);
  v47 = &v18[*(v54 + 36)];
  *v47 = v46;
  v47[1] = v45;
  sub_100086508();

  View.accessibilityIdentifier(_:)();
  return sub_10002D02C(v18, &qword_100117868, &qword_1000D5328);
}

uint64_t sub_100083C2C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000295C4(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_100083D74@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100117870, &qword_1000D5390);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TimelineCountupView(0);
  sub_10002CFC4(v1 + *(v12 + 20), v11, &qword_100117870, &qword_1000D5390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for Locale();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100083FA8@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v47 = type metadata accessor for Locale();
  v45 = *(v47 - 8);
  v2 = *(v45 + 64);
  __chkstk_darwin(v47);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000032D4(&qword_100117990, &qword_1000D5530);
  v5 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v49 = (&v41 - v6);
  v7 = type metadata accessor for TimelineCountupView(0);
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v46 = type metadata accessor for StopwatchTimelineSchedule(0);
  v9 = *(*(v46 - 8) + 64);
  v10 = __chkstk_darwin(v46);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v50 = sub_1000032D4(&qword_100117998, &qword_1000D5538);
  v48 = *(v50 - 8);
  v14 = *(v48 + 64);
  __chkstk_darwin(v50);
  v44 = &v41 - v15;
  v16 = (v1 + *(v7 + 44));
  if (*v16)
  {
    v17 = v1;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v53 == 2)
    {
      v18 = *(v7 + 24);
      v19 = *(v46 + 20);
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 16))(&v13[v19], v17 + v18, v20);
      *v13 = 0x3F91111111111111;
      sub_100087244(v17, &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineCountupView);
      v21 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v22 = swift_allocObject();
      sub_1000883A0(&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for TimelineCountupView);
      sub_100087244(v13, v43, type metadata accessor for StopwatchTimelineSchedule);
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1000871C4;
      *(v23 + 24) = v22;
      sub_1000032D4(&qword_1001179A0, &unk_1000D55D0);
      sub_1000868D0(&qword_1001179B8, type metadata accessor for StopwatchTimelineSchedule);
      sub_100086F90();
      v24 = v44;
      TimelineView<>.init(_:content:)();
      sub_100088AE8(v13, type metadata accessor for StopwatchTimelineSchedule);
      v25 = v48;
      v26 = v50;
      (*(v48 + 16))(v49, v24, v50);
      swift_storeEnumTagMultiPayload();
      sub_100086F0C();
      _ConditionalContent<>.init(storage:)();
      return (*(v25 + 8))(v24, v26);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v28 = v53;
      static Locale.current.getter();
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v30 = (*(v45 + 8))(v4, v47);
      v30.i64[0] = v28;
      v31 = sub_1000022A8(0, 1, 1, 1, 0, 1, 0, isa, v30);

      if (v31)
      {
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v34 = 0xE200000000000000;
        v32 = 11565;
      }

      v53 = v32;
      v54 = v34;
      sub_100025FB4();
      v35 = Text.init<A>(_:)();
      v36 = v49;
      *v49 = v35;
      v36[1] = v37;
      *(v36 + 16) = v38 & 1;
      v36[3] = v39;
      *(v36 + 16) = 256;
      swift_storeEnumTagMultiPayload();
      sub_1000032D4(&qword_1001179A0, &unk_1000D55D0);
      sub_100086F0C();
      sub_100086F90();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v40 = v16[1];
    type metadata accessor for ObservableStopwatchModel();
    sub_1000868D0(&qword_100116B20, type metadata accessor for ObservableStopwatchModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100084694@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032D4(&qword_1001179C0, &qword_1000D7040);
  TimelineView.Context.date.getter();
  v7 = sub_1000847C8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_100025FB4();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 256;
  return result;
}

uint64_t sub_1000847C8()
{
  v22[0] = type metadata accessor for Locale();
  v1 = *(v22[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v22[0]);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100083D74(v4);
  v5 = sub_100083C2C();
  v6 = type metadata accessor for TimelineCountupView(0);
  v7 = (v0 + v6[11]);
  if (*v7)
  {
    v8 = v6[6];
    v9 = *(v0 + v6[7]);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v10 = *&v22[1];
    Date.timeIntervalSince(_:)();
    if (v10 <= 0.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10 + v11;
    }

    if (v5)
    {
      isa = Locale._bridgeToObjectiveC()().super.isa;
      *v14.i64 = v12;
      v15 = sub_100002848(0, 1, 1, 1, 0, 1, v9, isa, v14);

      if (v15)
      {
LABEL_9:
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v1 + 8))(v4, v22[0]);
        return v19;
      }

      __break(1u);
    }

    v16 = sub_100002E3C(v12);
    v17 = Locale._bridgeToObjectiveC()().super.isa;
    *v18.i64 = v16;
    v15 = sub_1000022A8(0, 1, 1, 1, 0, 1, v9, v17, v18);

    if (v15)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v21 = v7[1];
  type metadata accessor for ObservableStopwatchModel();
  sub_1000868D0(&qword_100116B20, type metadata accessor for ObservableStopwatchModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100084A68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries(0) + 20);
  sub_10002CFC4(v2 + v11, v10, &qword_100115E40, &unk_1000D1280);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_10002D02C(v10, &qword_100115E40, &unk_1000D1280);
    return (*(v13 + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v13 + 32))(a1, v10, v12);
    v15 = *v2;
    Date.addingTimeInterval(_:)();
    v16 = *(v13 + 56);
    v16(v8, 0, 1, v12);
    sub_100088408(v8, v2 + v11);
    return (v16)(a1, 0, 1, v12);
  }
}

uint64_t sub_100084C90()
{
  v1 = sub_1000872EC(v0, type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries, type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries, type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries);
  sub_100088AE8(v0, type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries);
  return v1;
}

uint64_t sub_100084D7C(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v24 = a5;
  v10 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for Date();
  v25 = *(v14 - 8);
  v15 = *(v25 + 64);
  result = __chkstk_darwin(v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_1000883A0(v5, a1, a4);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v22 = a1;
    v23 = a4;
    a1 = (v25 + 48);
    v19 = (v25 + 32);
    a4 = 1;
    while (1)
    {
      v24(result);
      if ((*a1)(v13, 1, v14) == 1)
      {
        break;
      }

      v20 = *v19;
      (*v19)(v18, v13, v14);
      result = (v20)(a2, v18, v14);
      if (a3 == a4)
      {
        goto LABEL_12;
      }

      a2 += *(v25 + 72);
      if (__OFADD__(a4++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_10002D02C(v13, &qword_100115E40, &unk_1000D1280);
    a3 = a4 - 1;
LABEL_12:
    a1 = v22;
    a4 = v23;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100084FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = a1;
  v3 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Calendar.SearchDirection();
  v48 = *(v60 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v60);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Calendar.MatchingPolicy();
  v46 = *(v58 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v58);
  v57 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v59 = &v44 - v12;
  v62 = type metadata accessor for Calendar();
  v13 = *(v62 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v62);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DateComponents();
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = *(v63 + 64);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v44 = *(v22 + 56);
  v45 = (v22 + 56);
  v44(a2, 1, 1, v21);
  static Calendar.current.getter();
  sub_1000032D4(&qword_100117A90, &unk_1000D56B0);
  v23 = type metadata accessor for Calendar.Component();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000D08B0;
  (*(v24 + 104))(v27 + v26, enum case for Calendar.Component.second(_:), v23);
  sub_10008B828(v27);
  swift_setDeallocating();
  v28 = v27 + v26;
  v29 = v54;
  (*(v24 + 8))(v28, v23);
  v30 = v53;
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  v31 = *(v13 + 8);
  v32 = v62;
  v31(v16, v62);
  v33 = type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry(0);
  (*(v63 + 16))(v30 + v33[6], v20, v64);
  v34 = v33[5];
  v55 = v22;
  v56 = v21;
  (*(v22 + 16))(v30 + v34, v29, v21);
  v35 = v30 + v33[7];
  Date.addingTimeInterval(_:)();
  static Calendar.current.getter();
  v61 = v20;
  LOBYTE(v33) = Calendar.date(_:matchesComponents:)();
  v47 = v13 + 8;
  v31(v16, v32);
  if (v33)
  {
    (*(v63 + 8))(v61, v64);
    sub_10002D02C(v30, &qword_100115E40, &unk_1000D1280);
    v36 = v56;
    (*(v55 + 32))(v30, v29, v56);
    return (v44)(v30, 0, 1, v36);
  }

  else
  {
    static Calendar.current.getter();
    v38 = v46;
    (*(v46 + 104))(v57, enum case for Calendar.MatchingPolicy.nextTime(_:), v58);
    v40 = v48;
    v39 = v49;
    (*(v48 + 104))(v49, enum case for Calendar.SearchDirection.forward(_:), v60);
    v45 = v31;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    (*(v51 + 104))(v50, enum case for Calendar.RepeatedTimePolicy.first(_:), v52);
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v55 + 8))(v29, v56);
    (*(v42 + 8))(v41, v43);
    (*(v40 + 8))(v39, v60);
    (*(v38 + 8))(v57, v58);
    v45(v16, v62);
    (*(v63 + 8))(v61, v64);
    return sub_100088408(v59, v30);
  }
}

uint64_t sub_1000856A8@<X0>(char *a1@<X8>)
{
  v79 = a1;
  v2 = type metadata accessor for Calendar.SearchDirection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v71 = *(v78 - 8);
  v6 = *(v71 + 64);
  __chkstk_darwin(v78);
  v70 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar.MatchingPolicy();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  __chkstk_darwin(v8);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Calendar();
  v67 = *(v69 - 8);
  v11 = *(v67 + 64);
  __chkstk_darwin(v69);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v68 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v77 = &v58 - v19;
  v20 = __chkstk_darwin(v18);
  v73 = &v58 - v21;
  __chkstk_darwin(v20);
  v23 = &v58 - v22;
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v66 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v58 - v29;
  v80 = v1;
  sub_10002CFC4(v1, v23, &qword_100115E40, &unk_1000D1280);
  v31 = *(v25 + 48);
  if (v31(v23, 1, v24) == 1)
  {
    sub_10002D02C(v23, &qword_100115E40, &unk_1000D1280);
    return (*(v25 + 56))(v79, 1, 1, v24);
  }

  else
  {
    v63 = v31;
    v64 = v3;
    v65 = v2;
    v33 = *(v25 + 32);
    v33(v30, v23, v24);
    v34 = type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry(0);
    v35 = *(v34 + 28);
    sub_1000868D0(&qword_100117BE0, &type metadata accessor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v59 = v35;
      v62 = v33;
      v60 = v25 + 32;
      v36 = v13;
      static Calendar.current.getter();
      v61 = *(v34 + 24);
      (*(v75 + 104))(v74, enum case for Calendar.MatchingPolicy.nextTime(_:), v76);
      v38 = v70;
      v37 = v71;
      v39 = v72;
      (*(v71 + 104))(v70, enum case for Calendar.RepeatedTimePolicy.first(_:), v78);
      v41 = v64;
      v40 = v65;
      (*(v64 + 104))(v39, enum case for Calendar.SearchDirection.forward(_:), v65);
      v61 = v30;
      v42 = v74;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*(v41 + 8))(v39, v40);
      (*(v37 + 8))(v38, v78);
      v43 = v42;
      v44 = v77;
      (*(v75 + 8))(v43, v76);
      (*(v67 + 8))(v36, v69);
      v45 = v68;
      sub_10002CFC4(v44, v68, &qword_100115E40, &unk_1000D1280);
      if (v63(v45, 1, v24) == 1)
      {
        sub_10002D02C(v44, &qword_100115E40, &unk_1000D1280);
        sub_10002D02C(v45, &qword_100115E40, &unk_1000D1280);
        v46 = v80;
        sub_10002D02C(v80, &qword_100115E40, &unk_1000D1280);
        v47 = *(v25 + 56);
        v47(v46, 1, 1, v24);
        v48 = v79;
        v62(v79, v61, v24);
      }

      else
      {
        v52 = v66;
        v53 = v45;
        v54 = v62;
        v62(v66, v53, v24);
        v55 = v59;
        if (static Date.< infix(_:_:)())
        {
          (*(v25 + 8))(v52, v24);
          sub_10002D02C(v44, &qword_100115E40, &unk_1000D1280);
          v56 = v80;
          sub_10002D02C(v80, &qword_100115E40, &unk_1000D1280);
          (*(v25 + 16))(v56, v56 + v55, v24);
          v47 = *(v25 + 56);
          v47(v56, 0, 1, v24);
        }

        else
        {
          v57 = v73;
          Date.addingTimeInterval(_:)();
          (*(v25 + 8))(v52, v24);
          sub_10002D02C(v44, &qword_100115E40, &unk_1000D1280);
          v47 = *(v25 + 56);
          v47(v57, 0, 1, v24);
          sub_100088408(v57, v80);
        }

        v48 = v79;
        v54(v79, v61, v24);
      }

      return (v47)(v48, 0, 1, v24);
    }

    else
    {
      v49 = v73;
      Date.addingTimeInterval(_:)();
      v50 = *(v25 + 56);
      v50(v49, 0, 1, v24);
      sub_100088408(v49, v80);
      v51 = v79;
      v33(v79, v30, v24);
      return v50(v51, 0, 1, v24);
    }
  }
}

uint64_t sub_100085F74()
{
  v1 = sub_100087804(v0, type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry, type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry, sub_1000856A8, type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry);
  sub_100088AE8(v0, type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry);
  return v1;
}

void *sub_10008604C(uint64_t a1)
{
  v35 = a1;
  v1 = type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimelineScheduleMode();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for TimelineScheduleMode.normal(_:), v14);
  v19 = static TimelineScheduleMode.== infix(_:_:)();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v20 = *v34;
    (*(v6 + 16))(v9, v35, v5);
    v21 = *(v10 + 20);
    v22 = *(v6 + 56);
    v22(&v13[v21], 1, 1, v5);
    sub_10002D02C(&v13[v21], &qword_100115E40, &unk_1000D1280);
    (*(v6 + 32))(&v13[v21], v9, v5);
    v22(&v13[v21], 0, 1, v5);
    *v13 = v20;
    v23 = sub_1000032D4(&qword_100117A88, &qword_1000D56A8);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    v27 = type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries;
    v28 = v26 + *(*v26 + class metadata base offset for _SequenceBox + 16);
    v29 = v13;
  }

  else
  {
    (*(v6 + 16))(v9, v35, v5);
    sub_100084FAC(v9, v4);
    v30 = sub_1000032D4(&qword_100117A80, &unk_1000D5698);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v26 = swift_allocObject();
    v27 = type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry;
    v28 = v26 + *(*v26 + class metadata base offset for _SequenceBox + 16);
    v29 = v4;
  }

  sub_1000883A0(v29, v28, v27);
  return v26;
}

void *sub_100086438@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_10008604C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100086498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100117860, &qword_1000D5320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100086508()
{
  result = qword_100117890;
  if (!qword_100117890)
  {
    sub_10001C820(&qword_100117868, &qword_1000D5328);
    sub_1000865C0();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117890);
  }

  return result;
}

unint64_t sub_1000865C0()
{
  result = qword_100117898;
  if (!qword_100117898)
  {
    sub_10001C820(&qword_100117860, &qword_1000D5320);
    sub_100086678();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117898);
  }

  return result;
}

unint64_t sub_100086678()
{
  result = qword_1001178A0;
  if (!qword_1001178A0)
  {
    sub_10001C820(&qword_100117888, &qword_1000D5438);
    sub_100086730();
    sub_10002DAD8(&qword_100114C48, &qword_100114C50, &qword_1000D54B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178A0);
  }

  return result;
}

unint64_t sub_100086730()
{
  result = qword_1001178A8;
  if (!qword_1001178A8)
  {
    sub_10001C820(&qword_100117880, &qword_1000D5400);
    sub_1000867E8();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178A8);
  }

  return result;
}

unint64_t sub_1000867E8()
{
  result = qword_1001178B0;
  if (!qword_1001178B0)
  {
    sub_10001C820(&qword_100117878, &qword_1000D53C8);
    sub_1000868D0(&qword_1001178B8, type metadata accessor for TimelineCountupView);
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178B0);
  }

  return result;
}

uint64_t sub_1000868D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008692C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000032D4(&qword_1001178C0, &qword_1000D54B8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = type metadata accessor for Calendar();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[11]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100086AA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000032D4(&qword_1001178C0, &qword_1000D54B8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Date();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = type metadata accessor for Calendar();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[9];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_100086C00()
{
  sub_100086D1C();
  if (v0 <= 0x3F)
  {
    sub_100088658(319, &qword_100117930, &type metadata accessor for Locale, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Calendar();
        if (v3 <= 0x3F)
        {
          sub_100086D6C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100086D1C()
{
  if (!qword_100114488)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100114488);
    }
  }
}

void sub_100086D6C()
{
  if (!qword_100117938)
  {
    type metadata accessor for ObservableStopwatchModel();
    sub_1000868D0(&qword_100116B20, type metadata accessor for ObservableStopwatchModel);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100117938);
    }
  }
}

unint64_t sub_100086E04()
{
  result = qword_100117980;
  if (!qword_100117980)
  {
    sub_10001C820(&qword_100117988, &qword_1000D54D8);
    sub_100086508();
    sub_1000868D0(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117980);
  }

  return result;
}

unint64_t sub_100086F0C()
{
  result = qword_1001179A8;
  if (!qword_1001179A8)
  {
    sub_10001C820(&qword_100117998, &qword_1000D5538);
    sub_100086F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001179A8);
  }

  return result;
}

unint64_t sub_100086F90()
{
  result = qword_1001179B0;
  if (!qword_1001179B0)
  {
    sub_10001C820(&qword_1001179A0, &unk_1000D55D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001179B0);
  }

  return result;
}

uint64_t sub_100087014()
{
  v1 = type metadata accessor for TimelineCountupView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1000295C4(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  sub_1000032D4(&qword_100117870, &qword_1000D5390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Locale();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[6];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[9];
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = *(v5 + v1[11]);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_1000871C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for TimelineCountupView(0) - 8) + 80);

  return sub_100084694(a1);
}

uint64_t sub_100087244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000872EC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v65 = a4;
  v7 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v76 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v75 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  v20 = a2(0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = (&v64 - v23);
  v25 = *(v14 + 80);
  sub_100087244(a1, &v64 - v23, a3);
  v26 = *(v21 + 28);
  sub_10002CFC4(v24 + v26, v12, &qword_100115E40, &unk_1000D1280);
  v27 = *(v14 + 48);
  v28 = v12;
  v77 = v13;
  v73 = v27;
  v74 = v14 + 48;
  v29 = &_swiftEmptyArrayStorage;
  if (v27(v12, 1, v13) == 1)
  {
    v79 = 0;
    v30 = v12;
LABEL_28:
    sub_10002D02C(v30, &qword_100115E40, &unk_1000D1280);
    result = sub_100088AE8(v24, v65);
    v61 = v29[3];
    if (v61 < 2)
    {
      return v29;
    }

    v62 = v61 >> 1;
    v57 = __OFSUB__(v62, v79);
    v63 = v62 - v79;
    if (!v57)
    {
      v29[2] = v63;
      return v29;
    }
  }

  else
  {
    v78 = v14;
    v79 = 0;
    v67 = v25;
    v68 = (v25 + 32) & ~v25;
    v31 = &_swiftEmptyArrayStorage + v68;
    v33 = v14 + 32;
    v32 = *(v14 + 32);
    v34 = &_swiftEmptyArrayStorage;
    v35 = v28;
    v36 = v77;
    v71 = v35;
    v72 = (v14 + 56);
    v69 = v26;
    v70 = v24;
    v66 = v32;
    while (1)
    {
      v37 = v75;
      v32(v75);
      v38 = *v24;
      v39 = v76;
      Date.addingTimeInterval(_:)();
      (*v72)(v39, 0, 1, v36);
      sub_100088408(v39, v24 + v26);
      result = (v32)(v19, v37, v36);
      v41 = v19;
      v42 = v79;
      if (v79)
      {
        v29 = v34;
        v43 = v71;
        v36 = v77;
      }

      else
      {
        v44 = v34[3];
        if (((v44 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v45 = v33;
        v46 = v44 & 0xFFFFFFFFFFFFFFFELL;
        if (v46 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v46;
        }

        sub_1000032D4(&qword_100117BD8, &qword_1000D5828);
        v48 = *(v78 + 72);
        v49 = v68;
        v29 = swift_allocObject();
        result = j__malloc_size(v29);
        if (!v48)
        {
          goto LABEL_34;
        }

        v50 = result - v49;
        if (result - v49 == 0x8000000000000000 && v48 == -1)
        {
          goto LABEL_35;
        }

        v52 = v50 / v48;
        v29[2] = v47;
        v29[3] = 2 * (v50 / v48);
        v53 = v29 + v49;
        v54 = v34[3] >> 1;
        v55 = v54 * v48;
        v33 = v45;
        v36 = v77;
        if (v34[2])
        {
          if (v29 < v34 || v53 >= v34 + v68 + v55)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v29 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34[2] = 0;
        }

        v31 = &v53[v55];
        v42 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - v54;

        v43 = v71;
        v32 = v66;
      }

      v57 = __OFSUB__(v42, 1);
      v58 = v42 - 1;
      v59 = v78;
      if (v57)
      {
        break;
      }

      v79 = v58;
      (v32)(v31, v41, v36);
      v31 += *(v59 + 72);
      v19 = v41;
      v26 = v69;
      v24 = v70;
      sub_10002CFC4(v70 + v69, v43, &qword_100115E40, &unk_1000D1280);
      v60 = v73(v43, 1, v36);
      v30 = v43;
      v34 = v29;
      if (v60 == 1)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100087804(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v55 = a5;
  v9 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v54 - v19;
  v21 = *(v14 + 80);
  v22 = sub_100087244(a1, &v54 - v19, a3);
  v61 = a4;
  v62 = v20;
  a4(v22);
  v59 = *(v14 + 48);
  v60 = v14 + 48;
  v23 = &_swiftEmptyArrayStorage;
  if (v59(v12, 1, v13) != 1)
  {
    v24 = 0;
    v56 = v21;
    v58 = (v21 + 32) & ~v21;
    v32 = &_swiftEmptyArrayStorage + v58;
    v33 = *(v14 + 32);
    v34 = &_swiftEmptyArrayStorage;
    v35 = v57;
    v63 = v14 + 32;
    v25 = v12;
    while (1)
    {
      v38 = v25;
      v39 = v33;
      result = (v33)(v35);
      if (v24)
      {
        v23 = v34;
        v30 = __OFSUB__(v24--, 1);
        if (v30)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v40 = v34[3];
        if (((v40 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v41 = v40 & 0xFFFFFFFFFFFFFFFELL;
        if (v41 <= 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = v41;
        }

        sub_1000032D4(&qword_100117BD8, &qword_1000D5828);
        v43 = v14;
        v44 = *(v14 + 72);
        v45 = v58;
        v23 = swift_allocObject();
        result = j__malloc_size(v23);
        if (!v44)
        {
          goto LABEL_34;
        }

        v46 = result - v45;
        if (result - v45 == 0x8000000000000000 && v44 == -1)
        {
          goto LABEL_35;
        }

        v48 = v46 / v44;
        v23[2] = v42;
        v23[3] = 2 * (v46 / v44);
        v49 = v23 + v45;
        v50 = v34[3] >> 1;
        v51 = v50 * v44;
        if (v34[2])
        {
          if (v23 < v34 || v49 >= v34 + v58 + v51)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34[2] = 0;
        }

        v32 = &v49[v51];
        v53 = (v48 & 0x7FFFFFFFFFFFFFFFLL) - v50;

        v14 = v43;
        v35 = v57;
        v30 = __OFSUB__(v53, 1);
        v24 = v53 - 1;
        if (v30)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      v36 = v39(v32, v35, v13);
      v32 += *(v14 + 72);
      v61(v36);
      v37 = v59(v38, 1, v13);
      v33 = v39;
      v25 = v38;
      v34 = v23;
      if (v37 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v24 = 0;
  v25 = v12;
LABEL_3:
  v26 = v25;
  sub_100088AE8(v62, v55);
  result = sub_10002D02C(v26, &qword_100115E40, &unk_1000D1280);
  v28 = v23[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v30 = __OFSUB__(v29, v24);
    v31 = v29 - v24;
    if (v30)
    {
      goto LABEL_36;
    }

    v23[2] = v31;
  }

  return v23;
}

uint64_t sub_100087C14(uint64_t a1, char *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v11 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = type metadata accessor for Date();
  v44 = *(v17 - 8);
  v18 = *(v44 + 64);
  v19 = __chkstk_darwin(v17);
  v42 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v19);
  v41 = &v34 - v22;
  v45 = a2;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    sub_1000883A0(v5, a1, a4);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4;
    v23 = *(a5(0) + 20);
    v39 = a3;
    v40 = (v44 + 48);
    v37 = (v44 + 56);
    v38 = v44 + 32;
    v24 = 1;
    v36 = v16;
    v25 = (v44 + 32);
    while (1)
    {
      sub_10002CFC4(v5 + v23, v16, &qword_100115E40, &unk_1000D1280);
      if ((*v40)(v16, 1, v17) == 1)
      {
        sub_10002D02C(v16, &qword_100115E40, &unk_1000D1280);
        a3 = v24 - 1;
        a4 = v35;
        goto LABEL_13;
      }

      v26 = v5;
      v27 = *v25;
      v28 = v42;
      (*v25)(v42, v16, v17);
      v29 = *v26;
      v30 = v43;
      Date.addingTimeInterval(_:)();
      (*v37)(v30, 0, 1, v17);
      v31 = v26;
      sub_100088408(v30, v26 + v23);
      a4 = v41;
      v27(v41, v28, v17);
      v32 = v45;
      a1 = v17;
      v27(v45, a4, v17);
      a3 = v39;
      if (v39 == v24)
      {
        break;
      }

      v45 = &v32[*(v44 + 72)];
      v33 = __OFADD__(v24++, 1);
      v5 = v31;
      v16 = v36;
      if (v33)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v35;
    v5 = v31;
LABEL_13:
    a1 = v34;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100087F38@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000032D4(&qword_1001179C0, &qword_1000D7040);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = sub_1000032D4(&qword_1001179C8, &qword_1000D55E0);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v18, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    *a3 = v18;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
    *(a3 + 33) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000880AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100088194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100088210()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100088290()
{
  result = qword_100117A60;
  if (!qword_100117A60)
  {
    sub_10001C820(&qword_100117A68, &qword_1000D5650);
    sub_100086F0C();
    sub_100086F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117A60);
  }

  return result;
}

uint64_t sub_1000883A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100088408(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100088524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1000885AC()
{
  sub_100088658(319, &qword_100117B00, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100088658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000886D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DateComponents();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100088830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for DateComponents();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_100088988()
{
  sub_100088658(319, &qword_100117B00, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DateComponents();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100088AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100088B60()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpaqueAlarm();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v14);
  if (swift_getEnumCaseMultiPayload())
  {
    v15 = *v14;
    v16 = [*v14 isFiring];
  }

  else
  {
    v17 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v7 + 32))(v10, v14, v6);
    AlarmPresentationState.mode.getter();
    v16 = AlarmPresentationState.Mode.isAlerting.getter();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v18 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v18 - 8) + 8))(v14 + v17, v18);
  }

  return v16 & 1;
}

uint64_t sub_100088DE4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpaqueAlarm();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v16 = *v14;
    if (EnumCaseMultiPayload == 1)
    {
      v17 = [*v14 alarmIDString];
    }

    else
    {
      v17 = [*v14 timerIDString];
    }

    v21 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v7 + 32))(v10, v14, v6);
    AlarmPresentationState.alarmID.getter();
    v19 = UUID.uuidString.getter();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v20 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v20 - 8) + 8))(v14 + v18, v20);
  }

  return v19;
}

uint64_t sub_1000890A8()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v26 = *(v1 - 8);
  v2 = *(v26 + 64);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AlarmPresentationState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OpaqueAlarm();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v17);
  if (swift_getEnumCaseMultiPayload())
  {
    v18 = *v17;
    v23 = [*v17 displayTitle];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v19 = v26;
    v20 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v10 + 32))(v13, v17, v9);
    (*(v27 + 32))(v8, v17 + v20, v5);
    v21 = AlarmPresentationState.alarmLabel.getter();
    if (v22)
    {
      v24 = v21;
    }

    else
    {
      AlarmPresentationState.mode.getter();
      v24 = sub_10000AAEC(v4);
      (*(v19 + 8))(v4, v1);
    }

    (*(v27 + 8))(v8, v5);
    (*(v10 + 8))(v13, v9);
  }

  return v24;
}

uint64_t sub_100089408@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v50 = &v49 - v5;
  v6 = type metadata accessor for AlarmPresentationState.Mode();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AlarmPresentationState();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OpaqueAlarm();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v53, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v23;
      v26 = [*v23 isSnoozed];
      v27 = v54;
      if (v26)
      {
        v28 = [v25 snoozeFireDate];
        if (v28)
        {
          v29 = v50;
          v30 = v28;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v31 = 0;
          v25 = v30;
        }

        else
        {
          v31 = 1;
          v29 = v50;
        }

        v46 = type metadata accessor for Date();
        (*(*(v46 - 8) + 56))(v29, v31, 1, v46);
        v47 = v29;
      }

      else
      {
        v39 = [v25 nextFireDate];
        if (v39)
        {
          v40 = v51;
          v41 = v39;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = 0;
          v25 = v41;
        }

        else
        {
          v42 = 1;
          v40 = v51;
        }

        v48 = type metadata accessor for Date();
        (*(*(v48 - 8) + 56))(v40, v42, 1, v48);
        v47 = v40;
      }

      return sub_10003174C(v47, v27);
    }

    else
    {
      v35 = *v23;
      v36 = v54;
      sub_10004F058(v54);

      v37 = type metadata accessor for Date();
      return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v23, v15);
    AlarmPresentationState.mode.getter();
    v32 = v52;
    if ((*(v52 + 88))(v9, v6) == enum case for AlarmPresentationState.Mode.countdown(_:))
    {
      (*(v32 + 96))(v9, v6);
      (*(v11 + 32))(v14, v9, v10);
      v33 = v54;
      AlarmPresentationState.Mode.Countdown.fireDate.getter();
      (*(v11 + 8))(v14, v10);
      (*(v16 + 8))(v19, v15);
      v34 = 0;
    }

    else
    {
      (*(v16 + 8))(v19, v15);
      (*(v32 + 8))(v9, v6);
      v34 = 1;
      v33 = v54;
    }

    v43 = type metadata accessor for Date();
    (*(*(v43 - 8) + 56))(v33, v34, 1, v43);
    v44 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v45 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    return (*(*(v45 - 8) + 8))(v23 + v44, v45);
  }
}

uint64_t sub_1000899F0(char a1)
{
  if (a1 == 5)
  {
    v2 = 1;
LABEL_8:

    return v2 & 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if (a1 == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_8;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_100089C28(char a1)
{
  if (!a1)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_100089E54(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    v3 = 1;
LABEL_9:

    return v3 & 1;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 <= 2u || a1 > 4u || a1 == 3)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_9;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_10008A09C()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpaqueAlarm();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10005EECC(v14);
      v16 = 0;
    }

    else
    {
      v19 = *v14;
      v20 = [*v14 state];

      v16 = v20 == 2;
    }
  }

  else
  {
    v17 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v7 + 32))(v10, v14, v6);
    AlarmPresentationState.mode.getter();
    v16 = AlarmPresentationState.Mode.isPaused.getter();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v18 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v18 - 8) + 8))(v14 + v17, v18);
  }

  return v16 & 1;
}

uint64_t sub_10008A33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v34 = a2;
  v37 = a1;
  v3 = type metadata accessor for Date();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateComponents();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar.Identifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar();
  v29 = *(v16 - 8);
  v30 = v16;
  v17 = *(v29 + 64);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for Calendar.Identifier.gregorian(_:), v11);
  Calendar.init(identifier:)();
  (*(v12 + 8))(v15, v11);
  sub_1000032D4(&qword_100117A90, &unk_1000D56B0);
  v20 = type metadata accessor for Calendar.Component();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000D5830;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, enum case for Calendar.Component.minute(_:), v20);
  v26(v25 + v22, enum case for Calendar.Component.hour(_:), v20);
  v26(v25 + 2 * v22, enum case for Calendar.Component.weekday(_:), v20);
  v26(v25 + 3 * v22, enum case for Calendar.Component.weekdayOrdinal(_:), v20);
  v26(v25 + 4 * v22, enum case for Calendar.Component.month(_:), v20);
  v26(v25 + 5 * v22, enum case for Calendar.Component.year(_:), v20);
  sub_10008B828(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Date.init(timeIntervalSinceReferenceDate:)();
  Calendar.dateComponents(_:from:)();

  (*(v35 + 8))(v6, v36);
  result = v37;
  if (v37 < 0)
  {
    __break(1u);
  }

  else
  {
    DateComponents.hour.setter();
    result = v34;
    if ((v34 & 0x8000000000000000) == 0)
    {
      DateComponents.minute.setter();
      Calendar.date(from:)();
      (*(v31 + 8))(v10, v32);
      return (*(v29 + 8))(v19, v30);
    }
  }

  __break(1u);
  return result;
}

id sub_10008A81C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v5 setAllowedUnits:a2];
  result = [v5 setUnitsStyle:1];
  *a3 = v5;
  return result;
}

uint64_t sub_10008A8C8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10008AA00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008C8C8(*a1);
  *a2 = result;
  return result;
}

void sub_10008AA30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00746361706D6FLL;
  v4 = 0x43746E6569626D41;
  v5 = 0x657263536B636F4CLL;
  v6 = 0xEA00000000006E65;
  if (v2 != 5)
  {
    v5 = 0x726F707075736E55;
    v6 = 0xEB00000000646574;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656E6E6142;
  if (v2 != 3)
  {
    v8 = 0x657263536C6C7546;
    v7 = 0xEA00000000006E65;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEB000000006C6C75;
  v10 = 0x46746E6569626D41;
  if (v2 != 1)
  {
    v10 = 0x6572757472657041;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

void sub_10008AB30()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for AlarmPresentationState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OpaqueAlarm();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }

    else
    {
      v23 = *v17;
      sub_10004F268();
    }
  }

  else
  {
    v25 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v10 + 32))(v13, v17, v9);
    AlarmPresentationState.mode.getter();
    AlarmPresentationState.Mode.totalDuration.getter();
    v20 = v19;
    v21 = *(v2 + 8);
    v21(v8, v1);
    if (v20 > 0.0)
    {
      AlarmPresentationState.mode.getter();
      AlarmPresentationState.Mode.remainingTime.getter();
      v21(v8, v1);
      AlarmPresentationState.mode.getter();
      AlarmPresentationState.Mode.totalDuration.getter();
      v21(v6, v1);
    }

    (*(v10 + 8))(v13, v9);
    v22 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v22 - 8) + 8))(v17 + v25, v22);
  }
}

double sub_10008AEC0()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpaqueAlarm();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10005EECC(v14);
      return 0.0;
    }

    else
    {
      v20 = *v14;
      [*v14 duration];
      v16 = v21;
    }
  }

  else
  {
    v17 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v7 + 32))(v10, v14, v6);
    AlarmPresentationState.mode.getter();
    AlarmPresentationState.Mode.totalDuration.getter();
    v16 = v18;
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v19 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v19 - 8) + 8))(v14 + v17, v19);
  }

  return v16;
}

uint64_t sub_10008B160()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpaqueAlarm();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10005EECC(v14);
      v16 = 0;
    }

    else
    {
      v19 = *v14;
      v20 = [*v14 state];

      v16 = v20 == 3;
    }
  }

  else
  {
    v17 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v7 + 32))(v10, v14, v6);
    AlarmPresentationState.mode.getter();
    v16 = AlarmPresentationState.Mode.isCountingDown.getter();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v18 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v18 - 8) + 8))(v14 + v17, v18);
  }

  return v16 & 1;
}

id sub_10008B400()
{
  result = [objc_allocWithZone(MTStopwatchManager) init];
  qword_10011F528 = result;
  return result;
}

uint64_t type metadata accessor for OpaqueAlarm()
{
  result = qword_100117DB8;
  if (!qword_100117DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008B4F4()
{
  sub_10008B59C();
  if (v0 <= 0x3F)
  {
    sub_10002BB3C(319, &qword_100115DB0, MTAlarm_ptr);
    if (v1 <= 0x3F)
    {
      sub_10002BB3C(319, &qword_100115DB8, MTTimer_ptr);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10008B59C()
{
  if (!qword_100117DC8)
  {
    type metadata accessor for AlarmPresentationState();
    sub_10001C820(&qword_1001139D0, &unk_1000D08C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117DC8);
    }
  }
}

uint64_t getEnumTagSinglePayload for Destination(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Destination(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10008B77C()
{
  result = qword_100117DF8;
  if (!qword_100117DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117DF8);
  }

  return result;
}

unint64_t sub_10008B7D4()
{
  result = qword_100117E00;
  if (!qword_100117E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E00);
  }

  return result;
}

void *sub_10008B828(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1000032D4(&qword_100117E08, &qword_1000D59D0);
    v10 = static _SetStorage.allocate(capacity:)();
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
      sub_10008C914(&qword_100117E10, &type metadata accessor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
          sub_10008C914(&qword_100117E18, &type metadata accessor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
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

uint64_t sub_10008BB48(void *a1)
{
  v1 = a1;
  v2 = static UISceneSessionRole.activityAmbientCompact.getter();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

    v7 = 0;
    goto LABEL_12;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v9 = v1;
  v10 = static UISceneSessionRole.activityAmbient.getter();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_10:
    v7 = 1;
LABEL_11:
    v1 = v9;
    goto LABEL_12;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_10;
  }

  v9 = v9;
  v17 = static UISceneSessionRole.activitySystemAperture.getter();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {

LABEL_17:
    v7 = 2;
    goto LABEL_11;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_17;
  }

  v9 = v9;
  v23 = static UISceneSessionRole.activityBanner.getter();
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

LABEL_22:
    v7 = 3;
    goto LABEL_11;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_22;
  }

  v9 = v9;
  v29 = static UISceneSessionRole.activityModalFullScreen.getter();
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {

LABEL_27:
    v7 = 4;
    goto LABEL_11;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_27;
  }

  v35 = static UISceneSessionRole.activityListItem.getter();
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    v7 = 5;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  v1 = v35;
LABEL_12:

  return v7;
}

uint64_t sub_10008BEF0()
{
  v0 = type metadata accessor for DateComponents();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = *(v51 + 64);
  __chkstk_darwin(v0);
  v46 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  Date.init()();
  Date.addingTimeInterval(_:)();
  static Calendar.current.getter();
  sub_1000032D4(&qword_100117A90, &unk_1000D56B0);
  v14 = type metadata accessor for Calendar.Component();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = 2 * v16;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000D5840;
  v20 = v19 + v17;
  v21 = *(v15 + 104);
  v21(v20, enum case for Calendar.Component.hour(_:), v14);
  v22 = v20 + v16;
  v23 = v11;
  v24 = v46;
  v21(v22, enum case for Calendar.Component.minute(_:), v14);
  v25 = v20 + v18;
  v26 = v6;
  v21(v25, enum case for Calendar.Component.second(_:), v14);
  sub_10008B828(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:to:)();

  v27 = DateComponents.hour.getter();
  if (v28 & 1) != 0 || (v29 = v27, v30 = DateComponents.minute.getter(), (v31) || (v32 = v30, v33 = DateComponents.second.getter(), (v34))
  {
    v35 = 0x30303A30303A3030;
  }

  else
  {
    v39 = v33;
    if (v29)
    {
      v53 = v29;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v40;
      v41._countAndFlagsBits = 58;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      v53 = v32;
      v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v42);
    }

    else
    {
      v53 = v32;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v43;
    }

    v44._countAndFlagsBits = 58;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v53 = v39;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v45);

    v35 = v54;
  }

  (*(v51 + 8))(v24, v52);
  (*(v49 + 8))(v26, v50);
  v36 = v48;
  v37 = *(v47 + 8);
  v37(v23, v48);
  v37(v13, v36);
  return v35;
}

unint64_t sub_10008C3BC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000032D4(&qword_100117E28, &qword_1000D59E8);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_10008C914(&qword_100117E30, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10008C914(&qword_100117E38, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_10008C650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000032D4(&qword_100117E20, &unk_1000D59D8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      v12 = ActivitySceneHardwareButtonPressType.rawValue.getter();
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v3 + 32));
      for (i = result & v14; ; i = (i + 1) & v14)
      {
        v16 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v16) == 0)
        {
          break;
        }

        v17 = *(*(v3 + 48) + 8 * i);
        v18 = ActivitySceneHardwareButtonPressType.rawValue.getter();
        result = ActivitySceneHardwareButtonPressType.rawValue.getter();
        if (v18 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v16;
      *(*(v3 + 48) + 8 * i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10008C790(uint64_t a1, double a2)
{
  if (a2 <= 36000.0)
  {
    if (a2 <= 600.0)
    {
      goto LABEL_11;
    }

    if (qword_100113648 != -1)
    {
      swift_once();
    }

    v3 = [qword_10011F520 stringFromTimeInterval:?];
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_100113640 != -1)
    {
      swift_once();
    }

    v3 = [qword_10011F518 stringFromTimeInterval:?];
    if (!v3)
    {
LABEL_11:

      return a1;
    }
  }

  v4 = v3;
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return a1;
}

unint64_t sub_10008C8C8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000FF7F0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008C914(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10008CA74(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for AlarmPresentationState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = __chkstk_darwin(v13);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    goto LABEL_13;
  }

  v19 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] != 1)
  {
    goto LABEL_13;
  }

  v52 = result;
  v20 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v20)
  {
    (*(v14 + 56))(v12, 1, 1, v52);
LABEL_10:
    result = sub_10002D02C(v12, &unk_100115DA0, &unk_1000D3220);
    goto LABEL_13;
  }

  v51 = v5;
  v21 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v22 = qword_100113608;

  if (v22 != -1)
  {
    swift_once();
  }

  v53 = v21;
  v54 = v20;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v55);
  if ((*(v14 + 48))(v12, 1, v52) == 1)
  {
    goto LABEL_10;
  }

  (*(v14 + 32))(v18, v12, v52);
  v50 = objc_opt_self();
  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v23 = [v2 description];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD00000000000002CLL;
  v28._object = 0x80000001000DB9A0;
  String.append(_:)(v28);
  v53 = 0;
  type metadata accessor for SBUISystemApertureLayoutMode(0);
  _print_unlocked<A, B>(_:_:)();
  v29._countAndFlagsBits = 2113056;
  v29._object = 0xE300000000000000;
  String.append(_:)(v29);
  v53 = *&v2[v19];
  _print_unlocked<A, B>(_:_:)();
  v30 = String._bridgeToObjectiveC()();

  [v50 logInfo:v30];

  AlarmPresentationState.mode.getter();
  LOBYTE(v23) = AlarmPresentationState.Mode.isAlerting.getter();
  v31 = *(v51 + 8);
  v31(v8, v4);
  sub_10008FAEC(v23 & 1);
  AlarmPresentationState.mode.getter();
  LOBYTE(v23) = AlarmPresentationState.Mode.isAlerting.getter();
  v31(v8, v4);
  if (v23)
  {
    sub_1000922D8();
    sub_100090B64();
  }

  else
  {
    sub_100093DFC(v18);
  }

  result = (*(v14 + 8))(v18, v52);
LABEL_13:
  if (*&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] == -1)
  {
    v32 = objc_opt_self();
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v33 = [v2 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v55 = v34;
    v56 = v36;
    v37._object = 0x80000001000DB950;
    v37._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v37);
    v38 = String._bridgeToObjectiveC()();

    [v32 logInfo:v38];

    sub_100092418();
    v39 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
    if (v39)
    {
      [v39 removeFromSuperview];
    }

    v40 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
    if (v40)
    {
      [v40 removeFromSuperview];
    }

    result = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
    if (result)
    {
      result = [result removeFromSuperview];
    }

    v41 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
    if (v41)
    {
      v42 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
      v55 = 0;
      v56 = 0xE000000000000000;

      _StringGuts.grow(_:)(37);
      v43 = [v2 description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v55 = v44;
      v56 = v46;
      v47._countAndFlagsBits = 0xD000000000000021;
      v47._object = 0x80000001000DB970;
      String.append(_:)(v47);

      v48._countAndFlagsBits = v42;
      v48._object = v41;
      String.append(_:)(v48);

      v49 = String._bridgeToObjectiveC()();

      [v32 logInfo:v49];

      if (qword_100113608 != -1)
      {
        swift_once();
      }

      sub_100025228(&unk_100118140, type metadata accessor for AlarmKitApertureElementController);
      v53 = v42;
      v54 = v41;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.deregisterObserver(_:for:)();
      return sub_10004E3D4(&v55);
    }
  }

  return result;
}

id sub_10008D6CC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = 9;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_maximumLayoutMode] = 4;
  v7 = SBUISystemApertureElementIdentifierTimer;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preventsInteractiveDismissal] = 1;
  v8 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_allocWithZone(ObjCClassFromMetadata);
  v11 = v7;
  *&v1[v8] = [v10 init];
  v12 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView;
  *&v1[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView;
  *&v1[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints] = &_swiftEmptyArrayStorage;
  v14 = &v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  v17 = &v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observerId];
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v3 + 8))(v6, v2);
  *v17 = v18;
  v17[1] = v20;
  v21 = &v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
  v23 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v23 - 8) + 56))(&v1[v22], 1, 1, v23);
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_secondaryLabelPadding] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_labelToButtonPadding] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_timerAlertLabelPadding] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer] = 0;
  v24 = type metadata accessor for AlarmKitApertureElementController(0);
  v26.receiver = v1;
  v26.super_class = v24;
  return objc_msgSendSuper2(&v26, "init");
}

void sub_10008DA7C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v141 = a3;
  v7 = type metadata accessor for AlarmPresentationState.Mode();
  v136 = *(v7 - 8);
  v8 = *(v136 + 64);
  __chkstk_darwin(v7);
  v135 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v130 = &v123 - v12;
  v13 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v134 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v131 = &v123 - v17;
  v18 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v133 = &v123 - v21;
  v22 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v138 = &v123 - v24;
  v25 = type metadata accessor for AlarmPresentationState();
  v26 = *(v25 - 8);
  v139 = v25;
  v140 = v26;
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v132 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v137 = &v123 - v30;
  v31 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v123 - v36;
  v38 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  if (!*&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8])
  {
    v39 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
    swift_beginAccess();
    v128 = a1;
    v127 = v7;
    sub_10002CFC4(&v4[v39], v37, &qword_100115E38, &qword_1000D3280);
    v40 = (*(v19 + 48))(v37, 1, v18);
    v129 = a2;
    v41 = v40;
    v42 = v37;
    v43 = v128;
    sub_10002D02C(v42, &qword_100115E38, &qword_1000D3280);
    v44 = v41 == 1;
    v45 = v129;
    if (v44)
    {
      v46 = v38[1];
      *v38 = v43;
      v38[1] = v45;

      v47 = *(v19 + 16);
      v125 = v19 + 16;
      v124 = v47;
      v47(v35, v141, v18);
      v126 = v19;
      v48 = v18;
      (*(v19 + 56))(v35, 0, 1, v18);
      swift_beginAccess();
      sub_10004EC60(v35, &v4[v39], &qword_100115E38, &qword_1000D3280);
      swift_endAccess();
      if (qword_100113608 != -1)
      {
        swift_once();
      }

      sub_100025228(&unk_100118140, type metadata accessor for AlarmKitApertureElementController);
      v142 = v43;
      v143 = v45;

      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.registerObserver(_:for:)();
      sub_10004E3D4(&v144);
      v49 = v38[1];
      if (v49)
      {
        v142 = *v38;
        v143 = v49;

        AnyHashable.init<A>(_:)();
        v50 = v138;
        dispatch thunk of DataStore.getEntry(for:)();
        sub_10004E3D4(&v144);
        v52 = v139;
        v51 = v140;
        if ((*(v140 + 48))(v50, 1, v139) != 1)
        {
          v53 = *(v51 + 32);
          v54 = v137;
          v53(v137, v50, v52);
          v55 = v132;
          (*(v51 + 16))(v132, v54, v52);
          v56 = v133;
          v124(v133, v141, v48);
          v57 = *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode];
          v58 = type metadata accessor for AlarmPresentationStateViewModel(0);
          v59 = *(v58 + 48);
          v60 = *(v58 + 52);
          v61 = swift_allocObject();
          ObservationRegistrar.init()();
          v53((v61 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState), v55, v52);
          (*(v126 + 32))(v61 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v56, v48);
          *(v61 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode) = v57;
          v62 = *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel];
          *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel] = v61;

          v63 = AlarmPresentationState.bundleID.getter();
          v64 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier];
          v65 = *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier + 8];
          *v64 = v63;
          v64[1] = v66;

          v67 = AlarmPresentationState.bundleID.getter();
          v69 = v134;
          v70 = v127;
          if (v68)
          {
            if (v67 == 0xD000000000000015 && v68 == 0x80000001000D7F20)
            {

              goto LABEL_17;
            }

            v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v80)
            {
LABEL_17:
              v81 = v131;
              AlarmAttributes.metadata.getter();
              v82 = type metadata accessor for MTAlarmCustomContent();
              v83 = *(v82 - 8);
              if ((*(v83 + 48))(v81, 1, v82) == 1)
              {
                sub_10002D02C(v81, &unk_100118100, &qword_1000D1250);
LABEL_26:
                v70 = v127;
                goto LABEL_32;
              }

              v84 = MTAlarmCustomContent.type.getter();
              if (v84 == 1)
              {
                v87 = 4;
                v85 = v130;
              }

              else
              {
                v85 = v130;
                if (v84)
                {
                  (*(v83 + 8))(v131, v82);
                  goto LABEL_26;
                }

                v86 = MTAlarmCustomContent.isSleepAlarm.getter();
                if (v86 == 2 || (v86 & 1) == 0)
                {
                  v87 = 1;
                }

                else
                {
                  v87 = 2;
                }
              }

              (*(v83 + 8))(v131, v82);
              v88 = [objc_opt_self() mtURLForSection:v87];
              if (v88)
              {
                v89 = v88;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v90 = 0;
              }

              else
              {
                v90 = 1;
              }

              v70 = v127;
              v91 = type metadata accessor for URL();
              (*(*(v91 - 8) + 56))(v85, v90, 1, v91);
              v92 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
              swift_beginAccess();
              sub_10004EC60(v85, &v4[v92], &unk_100119A20, &qword_1000D1DC0);
              swift_endAccess();
            }
          }

LABEL_32:
          AlarmAttributes.metadata.getter();
          v93 = type metadata accessor for MTAlarmCustomContent();
          v94 = *(v93 - 8);
          if ((*(v94 + 48))(v69, 1, v93) == 1)
          {
            sub_10002D02C(v69, &unk_100118100, &qword_1000D1250);
            v79 = v129;
          }

          else
          {
            MTAlarmCustomContent.type.getter();
            (*(v94 + 8))(v69, v93);
            v95 = AlarmType.rawValue.getter();
            v96 = AlarmType.rawValue.getter();
            v79 = v129;
            if (v95 == v96)
            {
              v97 = type metadata accessor for TimerAnimationCountdown(0);
              v98 = *(v97 + 48);
              v99 = *(v97 + 52);
              v100 = swift_allocObject();
              *(v100 + 16) = 0u;
              *(v100 + 32) = 0u;
              v101 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
              v102 = type metadata accessor for OpaqueAlarm();
              v103 = *(*(v102 - 8) + 56);
              v103(v100 + v101, 1, 1, v102);
              v104 = (v100 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
              *v104 = 0;
              v104[1] = 0xE000000000000000;
              v105 = *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation];
              *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation] = v100;

              v106 = *(v97 + 48);
              v107 = *(v97 + 52);
              v108 = swift_allocObject();
              *(v108 + 16) = 0u;
              *(v108 + 32) = 0u;
              v103(v108 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, 1, 1, v102);
              v54 = v137;
              v70 = v127;
              v109 = (v108 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
              *v109 = 0;
              v109[1] = 0xE000000000000000;
              v52 = v139;
              v110 = *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation];
              *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation] = v108;
            }
          }

          sub_100090298();
          v111 = v135;
          AlarmPresentationState.mode.getter();
          v112 = AlarmPresentationState.Mode.isAlerting.getter();
          v113 = *(v136 + 8);
          v113(v111, v70);
          sub_10008FAEC(v112 & 1);
          AlarmPresentationState.mode.getter();
          v114 = AlarmPresentationState.Mode.isAlerting.getter();
          v113(v111, v70);
          sub_10008FAEC(v114 & 1);
          AlarmPresentationState.mode.getter();
          v115 = AlarmPresentationState.Mode.isAlerting.getter();
          v113(v111, v70);
          if (v115)
          {
            sub_1000922D8();
            sub_100090B64();
          }

          else
          {
            sub_100093DFC(v54);
          }

          [objc_msgSend(v4 "systemApertureElementContext")];
          swift_unknownObjectRelease();
          (*(v140 + 8))(v54, v52);
          goto LABEL_40;
        }
      }

      else
      {
        v50 = v138;
        (*(v140 + 56))(v138, 1, 1, v139);
      }

      sub_10002D02C(v50, &unk_100115DA0, &unk_1000D3220);
      v79 = v129;
LABEL_40:
      v116 = objc_opt_self();
      v144 = 0;
      v145 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v117 = [v4 description];
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;

      v144 = v118;
      v145 = v120;
      v121._countAndFlagsBits = 0xD000000000000019;
      v121._object = 0x80000001000DB8C0;
      String.append(_:)(v121);
      v122._countAndFlagsBits = v128;
      v122._object = v79;
      String.append(_:)(v122);
      v78 = String._bridgeToObjectiveC()();

      [v116 logInfo:v78];
      goto LABEL_13;
    }
  }

  v71 = objc_opt_self();
  v144 = 0;
  v145 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v72 = [v4 description];
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  v76._countAndFlagsBits = v73;
  v76._object = v75;
  String.append(_:)(v76);

  v77._countAndFlagsBits = 0xD00000000000003CLL;
  v77._object = 0x80000001000DB8E0;
  String.append(_:)(v77);
  v78 = String._bridgeToObjectiveC()();

  [v71 logError:v78];
LABEL_13:
}

id sub_10008E8CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = 9;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_maximumLayoutMode] = 4;
  v9 = SBUISystemApertureElementIdentifierTimer;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preventsInteractiveDismissal] = 1;
  v10 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_allocWithZone(ObjCClassFromMetadata);
  v13 = v9;
  *&v2[v10] = [v12 init];
  v14 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView;
  *&v2[v14] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView;
  *&v2[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints] = &_swiftEmptyArrayStorage;
  v16 = &v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  v19 = &v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observerId];
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v5 + 8))(v8, v4);
  *v19 = v20;
  v19[1] = v22;
  v23 = &v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
  v25 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v25 - 8) + 56))(&v2[v24], 1, 1, v25);
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_secondaryLabelPadding] = 0x4014000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_labelToButtonPadding] = 0x402E000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_timerAlertLabelPadding] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer] = 0;
  v26 = type metadata accessor for AlarmKitApertureElementController(0);
  v29.receiver = v2;
  v29.super_class = v26;
  v27 = objc_msgSendSuper2(&v29, "initWithCoder:", a1);

  if (v27)
  {
  }

  return v27;
}

id sub_10008ECB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v33[1] = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_maximumLayoutMode] = 4;
  v12 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preventsInteractiveDismissal] = 1;
  v13 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_allocWithZone(ObjCClassFromMetadata);
  v16 = v12;
  *&v4[v13] = [v15 init];
  v17 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView;
  *&v4[v17] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v18 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView;
  *&v4[v18] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints] = &_swiftEmptyArrayStorage;
  v19 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observerId];
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  (*(v8 + 8))(v11, v7);
  *v22 = v23;
  v22[1] = v25;
  v26 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
  v28 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v28 - 8) + 56))(&v4[v27], 1, 1, v28);
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_secondaryLabelPadding] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_labelToButtonPadding] = 0x402E000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_timerAlertLabelPadding] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer] = 0;
  if (a2)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v30 = type metadata accessor for AlarmKitApertureElementController(0);
  v34.receiver = v4;
  v34.super_class = v30;
  v31 = objc_msgSendSuper2(&v34, "initWithNibName:bundle:", v29, a3);

  return v31;
}

id sub_10008F0F0()
{
  v1 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
    v3 = objc_opt_self();

    _StringGuts.grow(_:)(32);
    v4 = [v0 description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v14[0] = v5;
    v14[1] = v7;
    v8._object = 0x80000001000DB9D0;
    v8._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v8);

    v9._countAndFlagsBits = v2;
    v9._object = v1;
    String.append(_:)(v9);

    v10 = String._bridgeToObjectiveC()();

    [v3 logInfo:v10];

    if (qword_100113608 != -1)
    {
      swift_once();
    }

    sub_100025228(&unk_100118140, type metadata accessor for AlarmKitApertureElementController);
    v11 = v0;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();

    sub_10004E3D4(v14);
  }

  v12 = type metadata accessor for AlarmKitApertureElementController(0);
  v15.receiver = v0;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, "dealloc");
}

void sub_10008F4C8()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AlarmKitApertureElementController(0);
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(40);
  v2 = [v0 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._object = 0x80000001000DB920;
  v6._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v1 logInfo:{v7, v3, v5}];
}

uint64_t sub_10008F614(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for AlarmPresentationState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v37 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AlarmKitApertureElementController(0);
  v42.receiver = v2;
  v42.super_class = v16;
  objc_msgSendSuper2(&v42, "viewWillAppear:", a1 & 1);
  v17 = objc_opt_self();
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v18 = [v2 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v40 = v19;
  v41 = v21;
  v22._countAndFlagsBits = 0x6C69577765697620;
  v22._object = 0xEF7261657070416CLL;
  String.append(_:)(v22);
  v23 = String._bridgeToObjectiveC()();

  [v17 logInfo:v23];

  v24 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v24)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_10002D02C(v11, &unk_100115DA0, &unk_1000D3220);
  }

  v25 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v26 = qword_100113608;
  v27 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];

  if (v26 != -1)
  {
    swift_once();
  }

  v38 = v25;
  v39 = v24;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v40);
  v28 = (*(v13 + 48))(v11, 1, v12);
  v29 = v37;
  if (v28 == 1)
  {
    return sub_10002D02C(v11, &unk_100115DA0, &unk_1000D3220);
  }

  (*(v13 + 32))(v37, v11, v12);
  AlarmPresentationState.mode.getter();
  v30 = AlarmPresentationState.Mode.isAlerting.getter();
  v31 = v36;
  v32 = *(v35 + 8);
  v32(v7, v36);
  sub_10008FAEC(v30 & 1);
  AlarmPresentationState.mode.getter();
  v33 = AlarmPresentationState.Mode.isAlerting.getter();
  v32(v7, v31);
  if (v33)
  {
    sub_1000922D8();
    sub_100090B64();
  }

  else
  {
    sub_100093DFC(v29);
  }

  return (*(v13 + 8))(v29, v12);
}

void sub_10008FAEC(char a1)
{
  if ((a1 & 1) == 0)
  {
    v9 = *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors];
    *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = 9;
    if (v9 != 9)
    {
      [objc_msgSend(v1 "systemApertureElementContext")];

      swift_unknownObjectRelease();
    }

    return;
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_10002BB3C(0, &qword_100118128, UIScene_ptr);
  sub_1000967CC();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v4 + 56);

    v7 = 0;
  }

  v27 = v6;
  v13 = (v6 + 64) >> 6;
  v29 = v4;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v16 = v30) == 0))
    {
LABEL_47:
      v25 = 2;
LABEL_48:
      sub_100096834();

      v26 = *&v28[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors];
      *&v28[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = v25;
      if (v26 != v25)
      {
        [objc_msgSend(v28 "systemApertureElementContext")];
        swift_unknownObjectRelease();
      }

      return;
    }

LABEL_22:
    v17 = [v16 session];
    v18 = [v17 role];

    v19 = sub_10008BB48(v18);
    if (v19 == 5)
    {
      v20 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_36;
      }

      if (v19 <= 2u || v19 > 4u || v19 == 3)
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_36;
        }

        if (v19)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
LABEL_36:
            v20 = 1;
            v4 = v29;
            goto LABEL_44;
          }

          if (v19 > 3u)
          {
            v4 = v29;
            goto LABEL_42;
          }

          if (v19 != 1)
          {
            v4 = v29;
LABEL_42:
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
            goto LABEL_43;
          }

          v20 = 1;
          v4 = v29;
        }

        else
        {
          v20 = 1;
          v4 = v29;
        }
      }

      else
      {
        v20 = 1;
        v4 = v29;
      }
    }

LABEL_43:

LABEL_44:
    v24 = [v16 activationState];

    if ((v20 & 1) != 0 && !v24)
    {
      v25 = 8;
      goto LABEL_48;
    }
  }

  v14 = v7;
  v15 = v8;
  if (v8)
  {
LABEL_18:
    v8 = (v15 - 1) & v15;
    v16 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_47;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v13)
    {
      goto LABEL_47;
    }

    v15 = *(v5 + 8 * v7);
    ++v14;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

id sub_100090298()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v74 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v65 - v6;
  v8 = type metadata accessor for AlarmPresentationState.Mode();
  v76 = *(v8 - 8);
  v9 = *(v76 + 64);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v73 = *(v75 - 8);
  v12 = *(v73 + 64);
  __chkstk_darwin(v75);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v65 - v17;
  v19 = type metadata accessor for AlarmPresentationState();
  v20 = *(*(v19 - 8) + 64);
  result = __chkstk_darwin(v19);
  v25 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
  if (v25)
  {
    v26 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel];
    if (v26)
    {
      v66 = v2;
      v27 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
      if (!v27)
      {
        (*(v24 + 56))(v18, 1, 1);
        return sub_10002D02C(v18, &unk_100115DA0, &unk_1000D3220);
      }

      v65 = v1;
      v70 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v71 = v24;
      v72 = v22;
      v68 = v0;
      v28 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
      v29 = qword_100113608;
      v67 = v25;
      v69 = v26;

      if (v29 != -1)
      {
        swift_once();
      }

      v77 = v28;
      v78 = v27;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.getEntry(for:)();
      sub_10004E3D4(&v79);
      v31 = v71;
      v30 = v72;
      if ((*(v71 + 48))(v18, 1, v72) == 1)
      {

        return sub_10002D02C(v18, &unk_100115DA0, &unk_1000D3220);
      }

      (*(v31 + 32))(v70, v18, v30);
      v32 = *&v68[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation];
      v77 = v69;
      type metadata accessor for AlarmPresentationStateViewModel(0);

      State.init(wrappedValue:)();
      v34 = v79;
      v33 = v80;
      v35 = objc_allocWithZone(sub_1000032D4(&unk_1001180F0, &qword_1000D5BB8));
      v79 = v34;
      v80 = v33;
      v81 = v32;
      v82 = 2;
      *&v35[*((swift_isaMask & *v35) + qword_10011F398 + 16) + 8] = 0;
      swift_unknownObjectWeakInit();
      v36 = UIHostingController.init(rootView:)();
      v37 = v67;
      v67 = v36;
      sub_10009669C(v36, v25, 0);
      AlarmPresentationState.mode.getter();
      v38 = v76;
      if ((*(v76 + 88))(v11, v8) == enum case for AlarmPresentationState.Mode.countdown(_:))
      {
        (*(v38 + 96))(v11, v8);
        v39 = v73;
        v40 = v11;
        v41 = v75;
        (*(v73 + 32))(v14, v40, v75);
        AlarmPresentationState.Mode.Countdown.fireDate.getter();
        v42 = v74;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v43 = v65;
        v44 = *(v66 + 8);
        v44(v42, v65);
        v44(v7, v43);
        sub_10008BEF0();
        v45 = String._bridgeToObjectiveC()();

        [v37 setAccessibilityLabel:v45];

        (*(v39 + 8))(v14, v41);
      }

      else
      {
        (*(v38 + 8))(v11, v8);
      }

      result = [v68 view];
      v46 = v67;
      if (result)
      {
        v47 = result;
        [result addSubview:v37];

        result = [v46 view];
        if (result)
        {
          v48 = result;
          v49 = objc_opt_self();
          sub_1000032D4(&qword_100115480, &qword_1000D2510);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1000D24B0;
          v51 = [v48 leadingAnchor];
          v52 = [v37 leadingAnchor];
          v53 = v37;
          v54 = [v51 constraintEqualToAnchor:v52];

          *(v50 + 32) = v54;
          v55 = [v48 trailingAnchor];
          v56 = [v53 trailingAnchor];
          v57 = [v55 constraintEqualToAnchor:v56];

          *(v50 + 40) = v57;
          v58 = [v48 topAnchor];
          v59 = [v53 topAnchor];
          v60 = [v58 constraintEqualToAnchor:v59];

          *(v50 + 48) = v60;
          v61 = [v48 bottomAnchor];
          v62 = [v53 bottomAnchor];
          v63 = [v61 constraintEqualToAnchor:v62];

          *(v50 + 56) = v63;
          sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v49 activateConstraints:isa];

          return (*(v71 + 8))(v70, v72);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

id sub_100090B64()
{
  v1 = v0;
  v2 = type metadata accessor for AlarmPresentationState.Mode();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v76 - v14;
  v16 = type metadata accessor for AlarmPresentationState();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v21 = *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v21)
  {
    (*(v20 + 56))(v15, 1, 1);
    return sub_10002D02C(v15, &unk_100115DA0, &unk_1000D3220);
  }

  v77 = v3;
  v78 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v20;
  v80 = v18;
  v22 = *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v23 = qword_100113608;

  if (v23 != -1)
  {
    swift_once();
  }

  v81 = v22;
  v82 = v21;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v83);
  v24 = v79;
  v25 = v80;
  if ((*(v79 + 48))(v15, 1, v80) == 1)
  {
    return sub_10002D02C(v15, &unk_100115DA0, &unk_1000D3220);
  }

  v26 = v78;
  (*(v24 + 32))(v78, v15, v25);
  v27 = *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel];
  if (!v27)
  {
    return (*(v24 + 8))(v26, v25);
  }

  v28 = objc_opt_self();
  v83 = 0;
  v84 = 0xE000000000000000;
  v76 = v27;

  _StringGuts.grow(_:)(40);

  v83 = 0xD000000000000026;
  v84 = 0x80000001000DB890;
  AlarmPresentationState.alarmID.getter();
  sub_100025228(&qword_100118110, &type metadata accessor for UUID);
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  (*(v8 + 8))(v11, v7);
  v30 = String._bridgeToObjectiveC()();

  [v28 logInfo:v30];

  v31 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost])
  {
    v81 = v76;
    type metadata accessor for AlarmPresentationStateViewModel(0);

    State.init(wrappedValue:)();
    v32 = v83;
    v33 = v84;
    v34 = objc_allocWithZone(sub_1000032D4(&qword_100118118, &qword_1000D5BC0));
    v83 = v32;
    v84 = v33;
    v85 = 512;
    *&v34[*((swift_isaMask & *v34) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    v35 = UIHostingController.init(rootView:)();
    v36 = [v1 view];
    v37 = sub_10009669C(v35, v36, 1);

    v38 = *&v1[v31];
    *&v1[v31] = v37;
  }

  AlarmPresentationState.mode.getter();
  v39 = AlarmPresentationState.Mode.isAlerting.getter();
  (v77)[1](v6, v2);
  if ((v39 & 1) == 0)
  {
    v40 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel;
    if (!*&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel])
    {
      v81 = v76;
      type metadata accessor for AlarmPresentationStateViewModel(0);

      State.init(wrappedValue:)();
      v41 = v83;
      v42 = v84;
      v43 = objc_allocWithZone(sub_1000032D4(&qword_100118120, qword_1000D5BC8));
      v83 = v41;
      v84 = v42;
      *&v43[*((swift_isaMask & *v43) + qword_10011F398 + 16) + 8] = 0;
      swift_unknownObjectWeakInit();
      v44 = UIHostingController.init(rootView:)();
      v45 = [v1 view];
      v46 = sub_10009669C(v44, v45, 0);

      v47 = *&v1[v40];
      *&v1[v40] = v46;
    }
  }

  v48 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost])
  {
    v81 = v76;
    type metadata accessor for AlarmPresentationStateViewModel(0);

    State.init(wrappedValue:)();
    v49 = v83;
    v50 = v84;
    v51 = objc_allocWithZone(sub_1000032D4(&qword_100118118, &qword_1000D5BC0));
    v83 = v49;
    v84 = v50;
    v85 = 513;
    *&v51[*((swift_isaMask & *v51) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    v52 = UIHostingController.init(rootView:)();
    v53 = [v1 view];
    v54 = sub_10009669C(v52, v53, 1);

    v55 = *&v1[v48];
    *&v1[v48] = v54;
  }

  result = *&v1[v31];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  result = [result view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v57 = result;
  result = *&v1[v48];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = [result view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v58 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v59 = result;
  v60 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1000D59F0;
  v77 = v57;
  v62 = [v57 leadingAnchor];
  result = [v1 view];
  if (result)
  {
    v63 = result;
    v64 = [result leadingAnchor];

    v65 = [v62 constraintEqualToAnchor:v64 constant:16.0];
    *(v61 + 32) = v65;
    v66 = [v58 leadingAnchor];
    v67 = v60;
    v68 = [v60 trailingAnchor];
    v69 = [v66 constraintEqualToAnchor:v68];

    *(v61 + 40) = v69;
    v70 = [v58 centerYAnchor];
    result = [v1 view];
    if (result)
    {
      v71 = result;
      v72 = objc_opt_self();
      v73 = [v71 centerYAnchor];

      v74 = [v70 constraintEqualToAnchor:v73];
      *(v61 + 48) = v74;
      sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v72 activateConstraints:isa];

      sub_1000915E4();

      return (*(v79 + 8))(v78, v80);
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_1000915E4()
{
  v1 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v111 - v3;
  v5 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v111 - v8;
  v10 = type metadata accessor for AlarmPresentationState.Mode();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v111 - v17;
  v19 = type metadata accessor for AlarmPresentationState();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v24 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v24)
  {
    (*(v23 + 56))(v18, 1, 1);
    return sub_10002D02C(v18, &unk_100115DA0, &unk_1000D3220);
  }

  v118 = v4;
  v119 = v11;
  v117 = v6;
  v120 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v23;
  v122 = v21;
  v25 = v0;
  v26 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v27 = qword_100113608;

  if (v27 != -1)
  {
    swift_once();
  }

  v123 = v26;
  v124 = v24;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(v125);
  v29 = v121;
  v28 = v122;
  if ((*(v121 + 48))(v18, 1, v122) == 1)
  {
    return sub_10002D02C(v18, &unk_100115DA0, &unk_1000D3220);
  }

  v30 = v120;
  (*(v29 + 32))(v120, v18, v28);
  v31 = v25;
  v32 = *&v25[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost];
  if (!v32)
  {
    return (*(v29 + 8))(v30, v28);
  }

  v33 = *(v31 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost);
  if (!v33)
  {
    return (*(v29 + 8))(v30, v28);
  }

  v116 = *(v31 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel);
  if (!v116)
  {
    return (*(v29 + 8))(v30, v28);
  }

  v34 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints;
  v35 = *(v31 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints);
  if (v35 >> 62)
  {
    if (v35 < 0)
    {
      v110 = *(v31 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints);
    }

    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = v33;
  if (v36)
  {
    v114 = objc_opt_self();
    v37 = *(v31 + v34);
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    v38 = v32;
    v39 = v33;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v114 deactivateConstraints:isa];

    v41 = *(v31 + v34);
    *(v31 + v34) = &_swiftEmptyArrayStorage;
  }

  else
  {
    v43 = v32;
    v44 = v33;
  }

  result = [v32 view];
  v113 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_42;
  }

  v45 = v115;
  result = [v115 view];
  v114 = result;
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = [v31 view];
  if (!result)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v46 = result;
  v112 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  AlarmPresentationState.mode.getter();
  LOBYTE(v46) = AlarmPresentationState.Mode.isAlerting.getter();
  v119[1](v14, v10);
  if ((v46 & 1) == 0)
  {
    v65 = *(v31 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel);
    v47 = v113;
    v64 = v114;
    if (!v65)
    {
LABEL_37:
      v107 = objc_opt_self();
      v108 = *(v31 + v34);
      sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

      v109 = Array._bridgeToObjectiveC()().super.isa;

      [v107 activateConstraints:v109];

      return (*(v121 + 8))(v120, v122);
    }

    v118 = v34;
    v119 = v32;
    v111 = v65;
    result = [v111 view];
    if (result)
    {
      v66 = result;
      sub_1000032D4(&qword_100115480, &qword_1000D2510);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1000D5170;
      v68 = [v47 trailingAnchor];
      v69 = [v66 leadingAnchor];
      v70 = [v68 constraintEqualToAnchor:v69];

      *(v67 + 32) = v70;
      v117 = v66;
      v71 = [v66 trailingAnchor];
      v72 = v114;
      v73 = [v114 leadingAnchor];
      v74 = [v71 constraintEqualToAnchor:v73];

      *(v67 + 40) = v74;
      v75 = [v47 trailingAnchor];
      v76 = [v112 leadingAnchor];
      v77 = [v75 constraintEqualToAnchor:v76];

      *(v67 + 48) = v77;
      v78 = [v47 centerYAnchor];
      result = [v31 view];
      if (result)
      {
        v79 = result;
        v80 = [result centerYAnchor];

        v81 = [v78 constraintEqualToAnchor:v80];
        *(v67 + 56) = v81;
        v82 = [v117 firstBaselineAnchor];
        v83 = [v72 firstBaselineAnchor];
        v84 = [v82 constraintEqualToAnchor:v83];

        *(v67 + 64) = v84;
        v85 = [v72 trailingAnchor];
        result = [v31 view];
        if (result)
        {
          v86 = result;
          v87 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

          v88 = [v87 trailingAnchor];
          v89 = [v85 constraintEqualToAnchor:v88];

          *(v67 + 72) = v89;
          v47 = v113;
          v64 = v114;
LABEL_36:
          v34 = v118;
          v106 = *&v118[v31];
          *&v118[v31] = v67;

          v32 = v119;
          v45 = v115;
          goto LABEL_37;
        }

        goto LABEL_49;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  result = [v31 view];
  v47 = v113;
  if (!result)
  {
    goto LABEL_44;
  }

  v48 = result;
  v49 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

  [v49 layoutFrame];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  v126.origin.x = v51;
  v126.origin.y = v53;
  v126.size.width = v55;
  v126.size.height = v57;
  [v47 sizeThatFits:{1.79769313e308, CGRectGetHeight(v126)}];
  v59 = v58;
  v60 = v117;
  (*(v117 + 2))(v9, v116 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v5);
  v61 = v118;
  AlarmAttributes.metadata.getter();
  v60[1](v9, v5);
  v62 = type metadata accessor for MTAlarmCustomContent();
  if ((*(*(v62 - 8) + 48))(v61, 1, v62))
  {
    sub_10002D02C(v61, &unk_100118100, &qword_1000D1250);
    v63 = 0.0;
    v64 = v114;
    goto LABEL_33;
  }

  MTAlarmCustomContent.type.getter();
  sub_10002D02C(v61, &unk_100118100, &qword_1000D1250);
  v90 = AlarmType.rawValue.getter();
  v91 = AlarmType.rawValue.getter();
  v63 = 0.0;
  v64 = v114;
  if (v90 != v91)
  {
LABEL_33:
    v118 = v34;
    v119 = v32;
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1000D59F0;
    v95 = [v47 trailingAnchor];
    v96 = [v64 leadingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96];

    *(v67 + 32) = v97;
    v98 = [v47 centerYAnchor];
    result = [v31 view];
    if (result)
    {
      v99 = result;
      v100 = [result centerYAnchor];

      v101 = [v98 constraintEqualToAnchor:v100 constant:v63];
      *(v67 + 40) = v101;
      v102 = [v64 trailingAnchor];
      result = [v31 view];
      if (result)
      {
        v103 = result;
        v104 = [result trailingAnchor];

        v105 = [v102 constraintEqualToAnchor:v104 constant:-16.0];
        *(v67 + 48) = v105;
        goto LABEL_36;
      }

      goto LABEL_46;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = [v31 view];
  if (result)
  {
    v92 = result;
    [result SBUISA_maximumAccessoryViewWidth];
    v94 = v93;

    if (v94 > v59)
    {
      v63 = 0.0;
    }

    else
    {
      v63 = 8.0;
    }

    goto LABEL_33;
  }

LABEL_50:
  __break(1u);
  return result;
}

void sub_1000922D8()
{
  v1 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_11;
    }

    v5 = v4;
    [v4 removeFromSuperview];

    [v3 removeFromParentViewController];
    [v0 removeChildViewController:v3];

    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v7 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost;
  v8 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v9 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  [v9 removeFromParentViewController];
  [v0 removeChildViewController:v9];

  v12 = *&v0[v7];
  *&v0[v7] = 0;
}

void sub_100092418()
{
  v1 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_14;
    }

    v5 = v4;
    [v4 removeFromSuperview];

    [v3 removeFromParentViewController];
    [v0 removeChildViewController:v3];

    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v7 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel;
  v8 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v9 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  [v9 removeFromParentViewController];
  [v0 removeChildViewController:v9];

  v12 = *&v0[v7];
  *&v0[v7] = 0;

LABEL_7:
  v13 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost;
  v14 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [v15 view];
  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 removeFromSuperview];

  [v15 removeFromParentViewController];
  [v0 removeChildViewController:v15];

  v18 = *&v0[v13];
  *&v0[v13] = 0;
}

void sub_1000925C4(uint64_t a1, char *a2)
{
  v3 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode;
  v4 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_38;
      }

      v12 = objc_opt_self();
      _StringGuts.grow(_:)(32);
      v13 = [a2 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14._countAndFlagsBits = 0xD00000000000001ELL;
      v14._object = 0x80000001000D9EE0;
      String.append(_:)(v14);
      v15 = String._bridgeToObjectiveC()();

      [v12 logInfo:v15];

      sub_100092418();
    }

    else
    {
      v31 = objc_opt_self();
      _StringGuts.grow(_:)(31);
      v32 = [a2 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v33._object = 0x80000001000D9F60;
      v33._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v33);
      v34 = String._bridgeToObjectiveC()();

      [v31 logInfo:v34];
    }

    v35 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
    if (v35)
    {
      [v35 setHidden:1];
    }

    v36 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
    if (v36)
    {
      [v36 setHidden:1];
    }

    v37 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
    if (v37)
    {
      [v37 setHidden:1];
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v16 = objc_opt_self();
        _StringGuts.grow(_:)(31);
        v17 = [a2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v18._object = 0x80000001000D9F40;
        v18._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v18);
        v19 = String._bridgeToObjectiveC()();

        [v16 logInfo:v19];

        sub_100092418();
        v20 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
        if (v20)
        {
          [v20 setHidden:1];
        }

        v21 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
        if (v21)
        {
          [v21 setHidden:1];
        }

        v22 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
        if (v22)
        {
          [v22 setHidden:0];
        }

        break;
      case 3:
        v23 = objc_opt_self();
        _StringGuts.grow(_:)(31);
        v24 = [a2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v25._object = 0x80000001000D9F20;
        v25._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v25);
        v26 = String._bridgeToObjectiveC()();

        [v23 logInfo:v26];

        sub_100092418();
        v27 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
        if (v27)
        {
          [v27 setHidden:0];
        }

        v28 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
        if (v28)
        {
          [v28 setHidden:0];
        }

        v29 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
        if (v29)
        {
          [v29 setHidden:1];
        }

        v30 = [objc_msgSend(a2 "systemApertureElementContext")];
        swift_unknownObjectRelease();
        if (v30)
        {
          if ([v30 isUserInitiated])
          {
            sub_100092FFC();
          }
        }

        break;
      case 4:
        v5 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
        if (v5)
        {
          [v5 setHidden:1];
        }

        v6 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
        if (v6)
        {
          [v6 setHidden:1];
        }

        v7 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
        if (v7)
        {
          [v7 setHidden:1];
        }

        v8 = objc_opt_self();
        _StringGuts.grow(_:)(30);
        v9 = [a2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v10._countAndFlagsBits = 0xD00000000000001CLL;
        v10._object = 0x80000001000D9F00;
        String.append(_:)(v10);
        v11 = String._bridgeToObjectiveC()();

        [v8 logInfo:v11];

        sub_100090B64();
        break;
      default:
LABEL_38:
        v38 = objc_opt_self();
        _StringGuts.grow(_:)(35);
        v39 = [a2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v40._countAndFlagsBits = 0xD000000000000021;
        v40._object = 0x80000001000D9EB0;
        String.append(_:)(v40);
        v41 = String._bridgeToObjectiveC()();

        [v38 logInfo:v41];

        break;
    }
  }

  v42 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel];
  if (v42)
  {
    if (*(v42 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode) != *&a2[v3])
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}