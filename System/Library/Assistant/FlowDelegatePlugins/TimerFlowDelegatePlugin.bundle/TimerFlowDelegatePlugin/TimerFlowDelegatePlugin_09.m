uint64_t sub_F5E54(void *a1)
{
  *a1 = sub_DE8D8();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_F5EE0()
{
  result = qword_162A28;
  if (!qword_162A28)
  {
    sub_5B68(&qword_162450, &qword_12A830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A28);
  }

  return result;
}

unint64_t sub_F5F44()
{
  result = qword_162A30;
  if (!qword_162A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A30);
  }

  return result;
}

unint64_t sub_F5F98()
{
  result = qword_162A38;
  if (!qword_162A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A38);
  }

  return result;
}

unint64_t sub_F5FEC()
{
  result = qword_162A40;
  if (!qword_162A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A40);
  }

  return result;
}

unint64_t sub_F6040()
{
  result = qword_162A48;
  if (!qword_162A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A48);
  }

  return result;
}

uint64_t sub_F61E4(uint64_t *a1, uint64_t a2)
{
  v21 = a2;
  v19 = _s20HandleIntentStrategyVMa_6();
  v3 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s21ConfirmIntentStrategyVMa_0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1256CC();
  sub_1256AC();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_160118, &qword_127E10);
  sub_1233AC();
  sub_2F488(a1, v8);
  v9 = *(v5 + 20);
  v10 = sub_12532C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = &v8[v9];
  v18 = v8;
  v14 = v21;
  v12(v13, v21, v10);
  sub_F65BC(&qword_162A50, _s21ConfirmIntentStrategyVMa_0);
  sub_12336C();
  sub_1233BC();
  v15 = v20;
  sub_2F488(a1, v20);
  v12((v15 + *(v19 + 20)), v14, v10);
  sub_F65BC(&qword_162A58, _s20HandleIntentStrategyVMa_6);
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v22);
  sub_5AE8(&qword_162A60, &unk_12B568);
  sub_F6604();
  sub_12337C();
  sub_1233CC();
  (*(v11 + 8))(v14, v10);
  sub_5BB0(a1);
  sub_F6668(v22);
  sub_F66D0(v15, _s20HandleIntentStrategyVMa_6);
  return sub_F66D0(v18, _s21ConfirmIntentStrategyVMa_0);
}

BOOL sub_F6558()
{
  sub_5AE8(&qword_1621A0, &unk_12A210);
  v0 = sub_123A9C();
  sub_12569C();

  v1 = sub_1256BC();
  return v1 == sub_1256BC();
}

uint64_t sub_F65BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_F6604()
{
  result = qword_162A68;
  if (!qword_162A68)
  {
    sub_5B68(&qword_162A60, &unk_12B568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A68);
  }

  return result;
}

uint64_t sub_F6668(uint64_t a1)
{
  v2 = sub_5AE8(&qword_162A60, &unk_12B568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F66D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *UndoCreateTimerFlow.__allocating_init()()
{
  v0 = sub_12587C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_12586C();
  v4 = [objc_allocWithZone(MTTimerManager) init];
  TimerFlow = type metadata accessor for UndoCreateTimerFlow();
  v6 = *(TimerFlow + 48);
  v7 = *(TimerFlow + 52);
  v8 = swift_allocObject();

  return sub_FC520(v3, v4, v8);
}

uint64_t type metadata accessor for UndoCreateTimerFlow()
{
  result = qword_162AB8;
  if (!qword_162AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_F6804()
{
  v1 = v0;
  v2 = sub_122F6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1257EC();
  v7 = [v1 timerID];
  sub_122F4C();

  sub_122F3C();
  (*(v3 + 8))(v6, v2);
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_125B8C();

  v10 = sub_125B8C();
  v11 = [v8 initWithIdentifier:v9 displayString:v10];

  [v1 type];
  [v11 setType:sub_125DCC()];
  v12 = [v1 state];
  v13 = 0;
  if (v12 <= 4)
  {
    v13 = qword_12B6A0[v12];
  }

  [v11 setState:v13];
  [v1 duration];
  v15 = [objc_allocWithZone(NSNumber) initWithDouble:v14];
  [v11 setDuration:v15];

  [v1 remainingTime];
  v17 = [objc_allocWithZone(NSNumber) initWithDouble:v16];
  [v11 setRemainingTime:v17];

  v18 = [v1 title];
  [v11 setLabel:v18];

  return v11;
}

uint64_t sub_F6A9C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162A70);
  sub_5B30(v0, qword_162A70);
  return sub_1257AC();
}

uint64_t UndoCreateTimerFlow.on(input:)()
{
  v0 = sub_5AE8(&qword_160838, &qword_128330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v71 = &v67 - v2;
  v3 = sub_1252CC();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  __chkstk_darwin(v3);
  v73 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1252AC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v76 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v67 - v11;
  v13 = sub_123D1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_123D3C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  if ((*(v19 + 88))(v22, v18) != enum case for Parse.directInvocation(_:))
  {
    (*(v19 + 8))(v22, v18);
    return 0;
  }

  (*(v19 + 96))(v22, v18);
  (*(v14 + 32))(v17, v22, v13);
  v23 = sub_123D0C();
  v24 = v17;
  if (!v23)
  {
    (*(v14 + 8))(v17, v13);
    return 0;
  }

  v25 = v23;
  v69 = v24;
  v70 = v13;
  v26 = v7[13];
  v26(v12, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v6);
  v27 = sub_12529C();
  v29 = v28;
  v30 = v7[1];
  v30(v12, v6);
  if (!*(v25 + 16))
  {

    goto LABEL_11;
  }

  v31 = sub_8AD8(v27, v29);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_8B50(*(v25 + 56) + 32 * v31, v79);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v34 = sub_B66D0();
  if (v34 == 19)
  {
    goto LABEL_7;
  }

  v68 = v34;
  v36 = v76;
  v26(v76, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v6);
  v37 = sub_12529C();
  v39 = v38;
  v30(v36, v6);
  if (!*(v25 + 16))
  {

    goto LABEL_11;
  }

  v40 = sub_8AD8(v37, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
LABEL_11:

    (*(v14 + 8))(v69, v70);
    return 0;
  }

  sub_8B50(*(v25 + 56) + 32 * v40, v79);
  v43 = swift_dynamicCast();
  v44 = v69;
  if ((v43 & 1) == 0)
  {
LABEL_7:
    (*(v14 + 8))(v69, v70);

    return 0;
  }

  v45 = v25;
  v67 = v77;
  v76 = v78;
  v46 = sub_123CFC();
  v48 = v47;
  v49 = v73;
  v50 = v74;
  v51 = v75;
  (*(v74 + 104))(v73, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v75);
  v52 = sub_1252BC();
  v54 = v53;
  (*(v50 + 8))(v49, v51);
  if (v46 == v52 && v48 == v54)
  {
  }

  else
  {
    v55 = sub_1261BC();

    if ((v55 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (sub_B6264(v68) != 0x6574656C6564 || v56 != 0xE600000000000000)
  {
    v57 = sub_1261BC();

    if (v57)
    {
      goto LABEL_27;
    }

LABEL_32:
    (*(v14 + 8))(v44, v70);

    return 0;
  }

LABEL_27:
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v58 = sub_125ABC();
  sub_5B30(v58, qword_162A70);
  v59 = sub_125AAC();
  v60 = sub_125DFC();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "UndoCreateTimerFlow: accepting input.", v61, 2u);
  }

  v62 = v72;
  v63 = *(v72 + 88);
  v64 = v76;
  *(v72 + 80) = v67;
  *(v62 + 88) = v64;

  v65 = v71;
  sub_F58F4(v45, v71);

  (*(v14 + 8))(v44, v70);
  v66 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction;
  swift_beginAccess();
  sub_FC65C(v65, v62 + v66);
  swift_endAccess();
  return 1;
}

uint64_t UndoCreateTimerFlow.execute(completion:)()
{
  type metadata accessor for UndoCreateTimerFlow();
  sub_FF214(&qword_160630, type metadata accessor for UndoCreateTimerFlow);
  return sub_12344C();
}

uint64_t UndoCreateTimerFlow.execute()(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(sub_5AE8(&qword_160838, &qword_128330) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = sub_12372C();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v7 = sub_122EDC();
  v2[21] = v7;
  v8 = *(v7 - 8);
  v2[22] = v8;
  v9 = *(v8 + 64) + 15;
  v2[23] = swift_task_alloc();
  v10 = sub_122F6C();
  v2[24] = v10;
  v11 = *(v10 - 8);
  v2[25] = v11;
  v12 = *(v11 + 64) + 15;
  v2[26] = swift_task_alloc();
  v13 = sub_1250BC();
  v2[27] = v13;
  v14 = *(v13 - 8);
  v2[28] = v14;
  v15 = *(v14 + 64) + 15;
  v2[29] = swift_task_alloc();
  v16 = sub_124FCC();
  v2[30] = v16;
  v17 = *(v16 - 8);
  v2[31] = v17;
  v18 = *(v17 + 64) + 15;
  v2[32] = swift_task_alloc();
  v19 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v20 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v21 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v22 = sub_12370C();
  v2[36] = v22;
  v23 = *(v22 - 8);
  v2[37] = v23;
  v24 = *(v23 + 64) + 15;
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_F7704, 0, 0);
}

uint64_t sub_F7704()
{
  (*(*(v0 + 296) + 104))(*(v0 + 304), enum case for ActivityType.correction(_:), *(v0 + 288));
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = sub_124FDC();
  sub_5B30(v2, qword_167878);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v102 = *(v0 + 128);
  v104 = *(v0 + 288);
  v11 = sub_124FEC();
  v12 = sub_5B30(v11, qword_167890);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v7, v12, v11);
  (*(v13 + 56))(v7, 0, 1, v11);
  (*(v9 + 56))(v8, 1, 1, v10);
  sub_124FBC();
  sub_5CA8(v8, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v7, &qword_15F6F0, &unk_128340);
  sub_5CA8(v6, &qword_15F6F8, &qword_1271D0);
  (*(v5 + 8))(v4, v104);
  if (!*(v102 + 88))
  {
    if (qword_15EFF0 != -1)
    {
LABEL_63:
      swift_once();
    }

    v36 = sub_125ABC();
    sub_5B30(v36, qword_162A70);
    v37 = sub_125AAC();
    v38 = sub_125DEC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "UndoCreateTimerFlow: No timer id to delete! This should never happen.", v39, 2u);
    }

    v41 = *(v0 + 248);
    v40 = *(v0 + 256);
    v42 = *(v0 + 240);

    (*(v41 + 104))(v40, enum case for SiriTimeEventSender.ReasonDescription.noTimerToDelete(_:), v42);
    v43 = swift_task_alloc();
    *(v0 + 312) = v43;
    *v43 = v0;
    v43[1] = sub_F836C;
    v44 = *(v0 + 256);

    return sub_FC6CC(v44);
  }

  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  v16 = *(v0 + 216);
  sub_1250AC();
  v17 = sub_12504C();
  *(v0 + 464) = v17;
  (*(v15 + 8))(v14, v16);
  *(v0 + 104) = 0;
  if (!v17)
  {
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v45 = sub_125ABC();
    *(v0 + 320) = sub_5B30(v45, qword_162A70);
    v46 = sub_125AAC();
    v47 = sub_125DFC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "UndoCreateTimerFlow: Single-timer handling", v48, 2u);
    }

    v49 = *(v0 + 128);

    sub_2F488(v49 + 32, v0 + 16);
    v50 = *(v0 + 40);
    v51 = *(v0 + 48);
    sub_23B08((v0 + 16), v50);
    v52 = async function pointer to dispatch thunk of SiriTimerManagerIOS.currentTimer()[1];
    v53 = swift_task_alloc();
    *(v0 + 328) = v53;
    *v53 = v0;
    v53[1] = sub_F85B0;

    return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v50, v51);
  }

  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v18 = sub_125ABC();
  *(v0 + 352) = sub_5B30(v18, qword_162A70);
  v19 = sub_125AAC();
  v20 = sub_125DFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "UndoCreateTimerFlow: Multi-timer handling", v21, 2u);
  }

  v22 = *(v0 + 128);

  v23 = *(v22 + 72);
  *(v0 + 360) = v23;
  v24 = v23;
  v25 = [v24 timers];
  *(v0 + 368) = v25;
  if (v25)
  {
    v26 = v25;
    v27 = swift_task_alloc();
    *(v0 + 376) = v27;
    *(v27 + 16) = v26;
    v28 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v29 = swift_task_alloc();
    *(v0 + 384) = v29;
    v30 = sub_5AE8(&qword_160868, qword_12B5A0);
    *v29 = v0;
    v29[1] = sub_F8BF4;
    v31 = sub_7CDC0;
    v32 = (v0 + 112);
    v33 = 0x800000000012D4F0;
    v34 = 0xD000000000000010;
    v35 = v27;
LABEL_13:

    return withCheckedContinuation<A>(isolation:function:_:)(v32, 0, 0, v34, v33, v31, v35, v30);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v54 = sub_1260FC();
    v100 = v18;
    if (v54)
    {
      goto LABEL_31;
    }

LABEL_65:
    v95 = *(v0 + 352);

    v96 = sub_125AAC();
    v97 = sub_125DEC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "UndoCreateTimerFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timers to delete.", v98, 2u);
    }

    v88 = swift_task_alloc();
    *(v0 + 392) = v88;
    *v88 = v0;
    v89 = sub_F92A4;
    goto LABEL_68;
  }

  v54 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  v100 = v18;
  if (!v54)
  {
    goto LABEL_65;
  }

LABEL_31:
  v55 = 0;
  v103 = (*(v0 + 200) + 8);
  v101 = (*(v0 + 176) + 8);
  while (1)
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v56 = sub_125FFC();
    }

    else
    {
      if (v55 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_62;
      }

      v56 = _swiftEmptyArrayStorage[v55 + 4];
    }

    v57 = v56;
    v58 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v59 = *(v0 + 208);
    v60 = *(v0 + 192);
    v61 = *(v0 + 128);
    v62 = [v56 timerID];
    sub_122F4C();

    v63 = sub_122F3C();
    v65 = v64;
    (*v103)(v59, v60);
    v66 = *(v61 + 88);
    if (v66)
    {
      if (v63 == *(v61 + 80) && v66 == v65)
      {
LABEL_52:
        v78 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
        v79 = v100;

        goto LABEL_54;
      }

      v68 = sub_1261BC();

      if (v68)
      {
        break;
      }
    }

    else
    {
    }

    v69 = *(v0 + 184);
    v70 = *(v0 + 168);
    v71 = *(v0 + 128);
    v72 = [v57 timerURL];
    sub_122EBC();

    v73 = sub_122E9C();
    v75 = v74;
    (*v101)(v69, v70);
    v76 = *(v71 + 88);
    if (!v76)
    {

      goto LABEL_33;
    }

    if (v73 == *(v71 + 80) && v76 == v75)
    {
      goto LABEL_52;
    }

    v77 = sub_1261BC();

    if (v77)
    {
      break;
    }

LABEL_33:

    ++v55;
    if (v58 == v54)
    {
      goto LABEL_65;
    }
  }

  v78 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
  v79 = v100;
LABEL_54:

  *(v0 + 104) = v57;
  v80 = v57;
  v81 = sub_F6804();

  *(v0 + 400) = v81;
  *(v0 + 408) = v80;
  v82 = v81;
  [v82 state];
  v83 = sub_1258BC();
  v84 = sub_1258BC();

  if (v83 != v84)
  {
    v90 = *(v0 + 464);
    v91 = *(v0 + 128);
    v92 = swift_allocObject();
    *(v0 + 416) = v92;
    *(v92 + 16) = 1;
    v93 = swift_task_alloc();
    *(v0 + 424) = v93;
    *(v93 + 16) = v90;
    *(v93 + 24) = v91;
    *(v93 + 32) = v92;
    *(v93 + 40) = v0 + 104;
    v94 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v32 = swift_task_alloc();
    *(v0 + 432) = v32;
    *v32 = v0;
    v32[1] = sub_F93A0;
    v31 = sub_FEDE4;
    v34 = 0x2865747563657865;
    v30 = &type metadata for () + 8;
    v33 = 0xE900000000000029;
    v35 = v93;
    goto LABEL_13;
  }

  if (v78[510] != -1)
  {
    swift_once();
  }

  sub_5B30(v79, qword_162A70);
  v85 = sub_125AAC();
  v86 = sub_125DFC();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_0, v85, v86, "UndoCreateTimerFlow: Timer has an unknown state (meaning there's no timer set on phone): No timers to delete.", v87, 2u);
  }

  v88 = swift_task_alloc();
  *(v0 + 456) = v88;
  *v88 = v0;
  v89 = sub_F9B40;
LABEL_68:
  v88[1] = v89;

  return sub_FDA68();
}

uint64_t sub_F836C()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_F84C4, 0, 0);
}

uint64_t sub_F84C4()
{
  v1 = v0[15];
  sub_12383C();
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_F85B0(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_F86B0, 0, 0);
}

uint64_t sub_F86B0()
{
  v1 = *(v0 + 336);
  v2 = v1;
  sub_5BB0((v0 + 16));
  if (!v1)
  {
    v12 = *(v0 + 320);
    v13 = sub_125AAC();
    v14 = sub_125DEC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "UndoCreateTimerFlow: siriTimerManager.currentTimer get nil result: no timers to delete.", v15, 2u);
    }

    v10 = swift_task_alloc();
    *(v0 + 344) = v10;
    *v10 = v0;
    v11 = sub_F8A04;
    goto LABEL_11;
  }

  *(v0 + 400) = v2;
  *(v0 + 408) = 0;
  v3 = v2;
  [v3 state];
  v4 = sub_1258BC();
  v5 = sub_1258BC();

  if (v4 == v5)
  {
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v6 = sub_125ABC();
    sub_5B30(v6, qword_162A70);
    v7 = sub_125AAC();
    v8 = sub_125DFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "UndoCreateTimerFlow: Timer has an unknown state (meaning there's no timer set on phone): No timers to delete.", v9, 2u);
    }

    v10 = swift_task_alloc();
    *(v0 + 456) = v10;
    *v10 = v0;
    v11 = sub_F9B40;
LABEL_11:
    v10[1] = v11;

    return sub_FDA68();
  }

  v17 = *(v0 + 464);
  v18 = *(v0 + 128);
  v19 = swift_allocObject();
  *(v0 + 416) = v19;
  *(v19 + 16) = 1;
  v20 = swift_task_alloc();
  *(v0 + 424) = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  *(v20 + 40) = v0 + 104;
  v21 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v22 = swift_task_alloc();
  *(v0 + 432) = v22;
  *v22 = v0;
  v22[1] = sub_F93A0;

  return withCheckedContinuation<A>(isolation:function:_:)(v22, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_FEDE4, v20, &type metadata for () + 8);
}

uint64_t sub_F8A04()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_F8B00, 0, 0);
}

uint64_t sub_F8B00()
{
  v1 = v0[42];
  v2 = v0[15];
  sub_12383C();

  v3 = v0[38];
  v4 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[20];
  v12 = v0[17];

  v13 = v0[1];

  return v13();
}

uint64_t sub_F8BF4()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return _swift_task_switch(sub_F8D0C, 0, 0);
}

uint64_t sub_F8D0C()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
LABEL_36:
    v3 = sub_1260FC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_37:
    v44 = *(v0 + 352);

    v45 = sub_125AAC();
    v46 = sub_125DEC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "UndoCreateTimerFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timers to delete.", v47, 2u);
    }

    v36 = swift_task_alloc();
    *(v0 + 392) = v36;
    *v36 = v0;
    v37 = sub_F92A4;
LABEL_40:
    v36[1] = v37;

    return sub_FDA68();
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_37;
  }

LABEL_3:
  v4 = 0;
  v49 = v3;
  v50 = (*(v0 + 176) + 8);
  v51 = (*(v0 + 200) + 8);
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_125FFC();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_35;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = *(v0 + 128);
    v11 = [v5 timerID];
    sub_122F4C();

    v12 = sub_122F3C();
    v14 = v13;
    (*v51)(v8, v9);
    v15 = *(v10 + 88);
    if (!v15)
    {

      goto LABEL_18;
    }

    if (v12 == *(v10 + 80) && v15 == v14)
    {
      break;
    }

    v17 = sub_1261BC();

    if (v17)
    {
      goto LABEL_25;
    }

LABEL_18:
    v18 = *(v0 + 184);
    v19 = *(v0 + 168);
    v20 = *(v0 + 128);
    v21 = [v6 timerURL];
    sub_122EBC();

    v22 = sub_122E9C();
    v24 = v23;
    (*v50)(v18, v19);
    v25 = *(v20 + 88);
    if (v25)
    {
      if (v22 == *(v20 + 80) && v25 == v24)
      {
        break;
      }

      v26 = sub_1261BC();

      if (v26)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    ++v4;
    if (v7 == v49)
    {
      goto LABEL_37;
    }
  }

LABEL_25:

  *(v0 + 104) = v6;
  v27 = v6;
  v28 = sub_F6804();

  *(v0 + 400) = v28;
  *(v0 + 408) = v27;
  v29 = v28;
  [v29 state];
  v30 = sub_1258BC();
  v31 = sub_1258BC();

  if (v30 == v31)
  {
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v32 = sub_125ABC();
    sub_5B30(v32, qword_162A70);
    v33 = sub_125AAC();
    v34 = sub_125DFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "UndoCreateTimerFlow: Timer has an unknown state (meaning there's no timer set on phone): No timers to delete.", v35, 2u);
    }

    v36 = swift_task_alloc();
    *(v0 + 456) = v36;
    *v36 = v0;
    v37 = sub_F9B40;
    goto LABEL_40;
  }

  v38 = *(v0 + 464);
  v39 = *(v0 + 128);
  v40 = swift_allocObject();
  *(v0 + 416) = v40;
  *(v40 + 16) = 1;
  v41 = swift_task_alloc();
  *(v0 + 424) = v41;
  *(v41 + 16) = v38;
  *(v41 + 24) = v39;
  *(v41 + 32) = v40;
  *(v41 + 40) = v0 + 104;
  v42 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v43 = swift_task_alloc();
  *(v0 + 432) = v43;
  *v43 = v0;
  v43[1] = sub_F93A0;

  return withCheckedContinuation<A>(isolation:function:_:)(v43, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_FEDE4, v41, &type metadata for () + 8);
}

uint64_t sub_F92A4()
{
  v1 = *(*v0 + 392);
  v3 = *v0;

  return _swift_task_switch(sub_F84C4, 0, 0);
}

uint64_t sub_F93A0()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_F94B8, 0, 0);
}

uint64_t sub_F94B8()
{
  v1 = v0[52];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v2 = swift_task_alloc();
    v0[55] = v2;
    *v2 = v0;
    v2[1] = sub_F9604;
    v3 = v0[50];
    v4 = v0[16];

    return sub_FA81C(v3);
  }

  else
  {
    (*(v0[31] + 104))(v0[32], enum case for SiriTimeEventSender.ReasonDescription.failedToDeleteTimer(_:), v0[30]);
    v6 = swift_task_alloc();
    v0[56] = v6;
    *v6 = v0;
    v6[1] = sub_F98E0;
    v7 = v0[32];

    return sub_FC6CC(v7);
  }
}

uint64_t sub_F9604()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return _swift_task_switch(sub_F9700, 0, 0);
}

uint64_t sub_F9700()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction;
  swift_beginAccess();
  sub_E344(v4 + v5, v3, &qword_160838, &qword_128330);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_5CA8(*(v0 + 136), &qword_160838, &qword_128330);
    v6 = *(v0 + 416);
    v7 = *(v0 + 400);
    v8 = *(v0 + 120);
    sub_12383C();
  }

  else
  {
    v9 = *(v0 + 416);
    v10 = *(v0 + 400);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    (*(v12 + 32))(v11, *(v0 + 136), v13);
    sub_12384C();

    (*(v12 + 8))(v11, v13);
  }

  v15 = *(v0 + 304);
  v16 = *(v0 + 272);
  v17 = *(v0 + 280);
  v19 = *(v0 + 256);
  v18 = *(v0 + 264);
  v20 = *(v0 + 232);
  v21 = *(v0 + 208);
  v22 = *(v0 + 184);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_F98E0()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_F9A38, 0, 0);
}

uint64_t sub_F9A38()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 120);
  sub_12383C();

  v4 = *(v0 + 304);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 160);
  v13 = *(v0 + 136);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_F9B40()
{
  v1 = *(*v0 + 456);
  v3 = *v0;

  return _swift_task_switch(sub_F9C3C, 0, 0);
}

uint64_t sub_F9C3C()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[15];
  sub_12383C();

  v4 = v0[38];
  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[29];
  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[17];

  v14 = v0[1];

  return v14();
}

void sub_F9D34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  if (a2)
  {
    v15 = [*(a3 + 72) removeTimer:*a5];
    if (v15)
    {
      v16 = v15;
      v31 = a4;
      v30 = *(v11 + 16);
      v30(v14, a1, v10);
      v17 = *(v11 + 80);
      v18 = swift_allocObject();
      v29 = *(v11 + 32);
      v29(v18 + ((v17 + 16) & ~v17), v14, v10);
      v36 = sub_FF030;
      v37 = v18;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v28 = &v34;
      v34 = sub_105C48;
      v35 = &unk_159FF0;
      v19 = _Block_copy(&aBlock);
      v20 = v16;

      v21 = [v20 addSuccessBlock:v19];
      _Block_release(v19);

      v30(v14, a1, v10);
      v22 = swift_allocObject();
      *(v22 + 16) = v31;
      v29(v22 + ((v17 + 24) & ~v17), v14, v10);
      v36 = sub_FF194;
      v37 = v22;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_105C50;
      v35 = &unk_15A040;
      v23 = _Block_copy(&aBlock);

      v24 = v20;

      v25 = [v24 addFailureBlock:v23];

      _Block_release(v23);
    }
  }

  else
  {
    sub_2F488(a3 + 32, &aBlock);
    sub_23B08(&aBlock, v35);
    (*(v11 + 16))(v14, a1, v10);
    v26 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    (*(v11 + 32))(v27 + v26, v14, v10);

    sub_1257FC();

    sub_5BB0(&aBlock);
  }
}

uint64_t sub_FA12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_12571C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_160AD8, &qword_1284F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v27 - v11;
  sub_E344(a1, v27 - v11, &qword_160AD8, &qword_1284F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    swift_beginAccess();
    *(a2 + 16) = 0;
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v13 = sub_125ABC();
    sub_5B30(v13, qword_162A70);
    v14 = sub_125AAC();
    v15 = sub_125DEC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "UndoCreateTimerFlow: delete failed", v16, 2u);
    }

    v17 = sub_12547C();
    v27[3] = v17;
    v27[4] = &protocol witness table for ABCReport;
    v18 = sub_23B4C(v27);
    sub_FF214(&qword_160AE0, &type metadata accessor for TimerOperationError);
    swift_allocError();
    (*(v5 + 16))(v19, v8, v4);
    *v18 = sub_122E7C();
    v20 = enum case for ErrorSubType.managerReturnedError(_:);
    v21 = sub_12515C();
    (*(*(v21 - 8) + 104))(v18, v20, v21);
    (*(*(v17 - 8) + 104))(v18, enum case for ABCReport.timerUndoHandle(_:), v17);
    sub_1251AC();
    (*(v5 + 8))(v8, v4);
    sub_5BB0(v27);
  }

  else
  {
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v22 = sub_125ABC();
    sub_5B30(v22, qword_162A70);
    v23 = sub_125AAC();
    v24 = sub_125DFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "UndoCreateTimerFlow: timer stopped completion", v25, 2u);
    }
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_FA58C()
{
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v0 = sub_125ABC();
  sub_5B30(v0, qword_162A70);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "UndoCreateTimerFlow: removed mtTimer successfully", v3, 2u);
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_FA688(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = 0;
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v3 = sub_125ABC();
  sub_5B30(v3, qword_162A70);
  swift_errorRetain();
  v4 = sub_125AAC();
  v5 = sub_125DFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "UndoCreateTimerFlow: remove mtTimer failed with error %@", v6, 0xCu);
    sub_5CA8(v7, &unk_160540, &unk_1295A0);
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_FA81C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v5 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_12370C();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = sub_125ABC();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = sub_124FFC();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v15 = sub_12501C();
  v2[26] = v15;
  v16 = *(v15 - 8);
  v2[27] = v16;
  v17 = *(v16 + 64) + 15;
  v2[28] = swift_task_alloc();
  v18 = sub_12368C();
  v2[29] = v18;
  v19 = *(v18 - 8);
  v2[30] = v19;
  v20 = *(v19 + 64) + 15;
  v2[31] = swift_task_alloc();
  v21 = sub_12392C();
  v2[32] = v21;
  v22 = *(v21 - 8);
  v2[33] = v22;
  v23 = *(v22 + 64) + 15;
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_FAB50, 0, 0);
}

uint64_t sub_FAB50()
{
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[20], qword_162A70);
  v0[35] = v1;
  v21 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoCreateTimerFlow.makeAndPublishSuccess() called", v4, 2u);
  }

  v5 = v0[34];
  v6 = v0[31];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  v18 = v0[20];
  v12 = v0[12];
  v19 = v0[13];
  v20 = v0[28];

  sub_12391C();
  sub_12361C();
  v13 = sub_113D6C(0, 0);
  v0[36] = v13;
  (*(v8 + 104))(v7, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v9);
  (*(v11 + 16))(v10, v21, v18);
  mach_absolute_time();
  sub_12502C();
  v14 = *(v19 + 24);
  sub_5AE8(&qword_160810, &unk_127420);
  v15 = swift_allocObject();
  v0[37] = v15;
  *(v15 + 16) = xmmword_126EB0;
  *(v15 + 32) = v13;

  v16 = swift_task_alloc();
  v0[38] = v16;
  *v16 = v0;
  v16[1] = sub_FADA4;

  return sub_906A8(v15);
}

uint64_t sub_FADA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 296);
  v7 = *v2;
  v4[39] = a1;
  v4[40] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_FB5EC, 0, 0);
  }

  else
  {
    v8 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v9 = swift_task_alloc();
    v4[41] = v9;
    *v9 = v7;
    v9[1] = sub_FAF64;
    v10 = v4[34];
    v11 = v4[31];
    v12 = v4[28];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v4 + 2, v11, v10, v12, 0);
  }
}

uint64_t sub_FAF64()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_FBA24;
  }

  else
  {
    v3 = sub_FB078;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_FB078()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_FB13C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_FB13C()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_FBE6C;
  }

  else
  {
    v3 = sub_FB250;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_FB250()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_5BB0(v0 + 7);
  (*(v2 + 104))(v1, enum case for ActivityType.completed(_:), v3);
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v4 = v0[16];
  v5 = sub_124FDC();
  sub_5B30(v5, qword_167878);
  v6 = sub_12353C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v30 = v0[39];
  v31 = v0[36];
  v7 = v0[33];
  v37 = v0[32];
  v38 = v0[34];
  v8 = v0[30];
  v35 = v0[29];
  v36 = v0[31];
  v9 = v0[27];
  v33 = v0[26];
  v34 = v0[28];
  v10 = v0[18];
  v29 = v0[19];
  v11 = v0[16];
  v32 = v0[17];
  v13 = v0[14];
  v12 = v0[15];
  v14 = sub_124FEC();
  v15 = sub_5B30(v14, qword_167890);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v12, v15, v14);
  (*(v16 + 56))(v12, 0, 1, v14);
  v17 = sub_124FCC();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  sub_124FBC();

  sub_5CA8(v13, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v12, &qword_15F6F0, &unk_128340);
  sub_5CA8(v11, &qword_15F6F8, &qword_1271D0);
  (*(v10 + 8))(v29, v32);
  sub_5BB0(v0 + 2);
  (*(v9 + 8))(v34, v33);
  (*(v8 + 8))(v36, v35);
  (*(v7 + 8))(v38, v37);
  v18 = v0[34];
  v19 = v0[31];
  v20 = v0[28];
  v21 = v0[25];
  v22 = v0[22];
  v23 = v0[19];
  v25 = v0[15];
  v24 = v0[16];
  v26 = v0[14];

  v27 = v0[1];

  return v27();
}

uint64_t sub_FB5EC()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  v39 = v0[40];
  (*(v0[18] + 104))(v0[19], enum case for ActivityType.failed(_:), v0[17]);
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_167878);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v38 = v0[35];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = sub_124FEC();
  v11 = sub_5B30(v10, qword_167890);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  v13 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v14 = sub_124FCC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  sub_124FBC();
  sub_5CA8(v9, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v8, &qword_15F6F0, &unk_128340);
  sub_5CA8(v7, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v5, v6);
  v16 = sub_125AAC();
  v17 = sub_125DEC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[36];
  v21 = v0[33];
  v20 = v0[34];
  v23 = v0[31];
  v22 = v0[32];
  v25 = v0[29];
  v24 = v0[30];
  if (v18)
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v16, v17, "UndoCreateTimerFlow: Error publishing Success output.", v26, 2u);
  }

  (*(v24 + 8))(v23, v25);
  (*(v21 + 8))(v20, v22);
  v27 = v0[34];
  v28 = v0[31];
  v29 = v0[28];
  v30 = v0[25];
  v31 = v0[22];
  v32 = v0[19];
  v34 = v0[15];
  v33 = v0[16];
  v35 = v0[14];

  v36 = v0[1];

  return v36();
}

uint64_t sub_FBA24()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);

  (*(v2 + 8))(v1, v3);
  v42 = *(v0 + 336);
  (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for ActivityType.failed(_:), *(v0 + 136));
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 128);
  v5 = sub_124FDC();
  sub_5B30(v5, qword_167878);
  v6 = sub_12353C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 280);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = sub_124FEC();
  v14 = sub_5B30(v13, qword_167890);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  v16 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v17 = sub_124FCC();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v12, v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  sub_124FBC();
  sub_5CA8(v12, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v11, &qword_15F6F0, &unk_128340);
  sub_5CA8(v10, &qword_15F6F8, &qword_1271D0);
  (*(v7 + 8))(v8, v9);
  v19 = sub_125AAC();
  v20 = sub_125DEC();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 288);
  v24 = *(v0 + 264);
  v23 = *(v0 + 272);
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);
  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  if (v21)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v19, v20, "UndoCreateTimerFlow: Error publishing Success output.", v29, 2u);
  }

  (*(v27 + 8))(v26, v28);
  (*(v24 + 8))(v23, v25);
  v30 = *(v0 + 272);
  v31 = *(v0 + 248);
  v32 = *(v0 + 224);
  v33 = *(v0 + 200);
  v34 = *(v0 + 176);
  v35 = *(v0 + 152);
  v37 = *(v0 + 120);
  v36 = *(v0 + 128);
  v38 = *(v0 + 112);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_FBE6C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);

  sub_5BB0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));
  v42 = *(v0 + 352);
  (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for ActivityType.failed(_:), *(v0 + 136));
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 128);
  v5 = sub_124FDC();
  sub_5B30(v5, qword_167878);
  v6 = sub_12353C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 280);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = sub_124FEC();
  v14 = sub_5B30(v13, qword_167890);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  v16 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v17 = sub_124FCC();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v12, v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  sub_124FBC();
  sub_5CA8(v12, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v11, &qword_15F6F0, &unk_128340);
  sub_5CA8(v10, &qword_15F6F8, &qword_1271D0);
  (*(v7 + 8))(v8, v9);
  v19 = sub_125AAC();
  v20 = sub_125DEC();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 288);
  v24 = *(v0 + 264);
  v23 = *(v0 + 272);
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);
  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  if (v21)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v19, v20, "UndoCreateTimerFlow: Error publishing Success output.", v29, 2u);
  }

  (*(v27 + 8))(v26, v28);
  (*(v24 + 8))(v23, v25);
  v30 = *(v0 + 272);
  v31 = *(v0 + 248);
  v32 = *(v0 + 224);
  v33 = *(v0 + 200);
  v34 = *(v0 + 176);
  v35 = *(v0 + 152);
  v37 = *(v0 + 120);
  v36 = *(v0 + 128);
  v38 = *(v0 + 112);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t UndoCreateTimerFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_5BB0((v0 + 32));

  v3 = *(v0 + 88);

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction, &qword_160838, &qword_128330);
  return v0;
}

uint64_t UndoCreateTimerFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_5BB0((v0 + 32));

  v3 = *(v0 + 88);

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction, &qword_160838, &qword_128330);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_FC3E8()
{
  v2 = *v0;
  type metadata accessor for UndoCreateTimerFlow();
  return sub_12344C();
}

uint64_t sub_FC448(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return UndoCreateTimerFlow.execute()(a1);
}

uint64_t sub_FC4E4()
{
  type metadata accessor for UndoCreateTimerFlow();

  return sub_12347C();
}

char *sub_FC520(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_124EDC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v12 = sub_12587C();
  v13 = &protocol witness table for SiriTimerManagerImpl;
  *&v11 = a1;
  type metadata accessor for DeleteTimerCATs_Async();
  sub_124ECC();
  *(a3 + 2) = sub_124DBC();
  type metadata accessor for DeleteTimerCATPatternsExecutor();
  sub_124ECC();
  *(a3 + 3) = sub_124DBC();
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction;
  v9 = sub_12372C();
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  sub_7D780(&v11, (a3 + 32));
  *(a3 + 9) = a2;
  return a3;
}

uint64_t sub_FC65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_160838, &qword_128330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_FC6CC(uint64_t a1)
{
  v1[12] = a1;
  v2 = *(*(sub_124EDC() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = sub_125ABC();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = sub_124FFC();
  v1[17] = v6;
  v7 = *(v6 - 8);
  v1[18] = v7;
  v8 = *(v7 + 64) + 15;
  v1[19] = swift_task_alloc();
  v9 = sub_12501C();
  v1[20] = v9;
  v10 = *(v9 - 8);
  v1[21] = v10;
  v11 = *(v10 + 64) + 15;
  v1[22] = swift_task_alloc();
  v12 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v13 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v14 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v15 = sub_12370C();
  v1[26] = v15;
  v16 = *(v15 - 8);
  v1[27] = v16;
  v17 = *(v16 + 64) + 15;
  v1[28] = swift_task_alloc();
  v18 = sub_12392C();
  v1[29] = v18;
  v19 = *(v18 - 8);
  v1[30] = v19;
  v20 = *(v19 + 64) + 15;
  v1[31] = swift_task_alloc();
  v21 = sub_12368C();
  v1[32] = v21;
  v22 = *(v21 - 8);
  v1[33] = v22;
  v23 = *(v22 + 64) + 15;
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_FCA2C, 0, 0);
}

uint64_t sub_FCA2C()
{
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[14], qword_162A70);
  v0[35] = v1;
  v36 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoCreateTimerFlow.makeAndPublishGenericFailure() called", v4, 2u);
  }

  v5 = v0[34];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[26];

  sub_12364C();
  sub_12391C();
  (*(v8 + 104))(v7, enum case for ActivityType.failed(_:), v9);
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v10 = v0[25];
  v11 = sub_124FDC();
  sub_5B30(v11, qword_167878);
  v12 = sub_12353C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v13 = v0[27];
  v14 = v0[25];
  v28 = v0[28];
  v29 = v0[26];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[18];
  v30 = v0[19];
  v31 = v0[17];
  v32 = v0[16];
  v18 = v0[15];
  v33 = v0[14];
  v34 = v0[22];
  v19 = v0[12];
  v35 = v0[13];
  v20 = sub_124FEC();
  v21 = sub_5B30(v20, qword_167890);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v15, v21, v20);
  (*(v22 + 56))(v15, 0, 1, v20);
  v23 = sub_124FCC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v16, v19, v23);
  (*(v24 + 56))(v16, 0, 1, v23);
  sub_124FBC();
  sub_5CA8(v16, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v15, &qword_15F6F0, &unk_128340);
  sub_5CA8(v14, &qword_15F6F8, &qword_1271D0);
  (*(v13 + 8))(v28, v29);
  (*(v17 + 104))(v30, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v31);
  (*(v18 + 16))(v32, v36, v33);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[36] = sub_124DBC();
  v25 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v37 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_FCEF8;

  return v37(0x73614272656D6974, 0xEF726F7272652365, _swiftEmptyArrayStorage);
}

uint64_t sub_FCEF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  v4[38] = a1;
  v4[39] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_FD1AC, 0, 0);
  }

  else
  {
    v7 = v4[36];

    v8 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v9 = swift_task_alloc();
    v4[40] = v9;
    *v9 = v6;
    v9[1] = sub_FD098;
    v10 = v4[34];
    v11 = v4[31];
    v12 = v4[22];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v4 + 2, v10, v11, v12, 0);
  }
}

uint64_t sub_FD098()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_FD6B0;
  }

  else
  {
    v3 = sub_FD380;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_FD1AC()
{
  v1 = v0[36];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  (*(v3 + 8))(v2, v4);
  v5 = v0[39];
  v6 = v0[35];
  v7 = sub_125AAC();
  v8 = sub_125DEC();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[31];
  v12 = v0[32];
  v15 = v0[29];
  v14 = v0[30];
  if (v9)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v7, v8, "UndoCreateTimerFlow: Error publishing GenericFailure.", v16, 2u);
  }

  (*(v14 + 8))(v13, v15);
  (*(v11 + 8))(v10, v12);
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[28];
  v21 = v0[24];
  v20 = v0[25];
  v23 = v0[22];
  v22 = v0[23];
  v24 = v0[19];
  v25 = v0[16];
  v26 = v0[13];

  v27 = v0[1];

  return v27();
}

uint64_t sub_FD380()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_FD444;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_FD444()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_FD884;
  }

  else
  {
    v3 = sub_FD558;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_FD558()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v9 = *(v0 + 160);

  sub_5BB0((v0 + 16));
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));
  v10 = *(v0 + 272);
  v11 = *(v0 + 248);
  v12 = *(v0 + 224);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *(v0 + 152);
  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_FD6B0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 328);
  v5 = *(v0 + 280);
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  if (v8)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoCreateTimerFlow: Error publishing GenericFailure.", v15, 2u);
  }

  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);
  v16 = *(v0 + 272);
  v17 = *(v0 + 248);
  v18 = *(v0 + 224);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 152);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_FD884()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);

  sub_5BB0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  if (v8)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoCreateTimerFlow: Error publishing GenericFailure.", v15, 2u);
  }

  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);
  v16 = *(v0 + 272);
  v17 = *(v0 + 248);
  v18 = *(v0 + 224);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 152);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_FDA68()
{
  v1 = *(*(sub_124EDC() - 8) + 64) + 15;
  v0[12] = swift_task_alloc();
  v2 = sub_125ABC();
  v0[13] = v2;
  v3 = *(v2 - 8);
  v0[14] = v3;
  v4 = *(v3 + 64) + 15;
  v0[15] = swift_task_alloc();
  v5 = sub_124FFC();
  v0[16] = v5;
  v6 = *(v5 - 8);
  v0[17] = v6;
  v7 = *(v6 + 64) + 15;
  v0[18] = swift_task_alloc();
  v8 = sub_12501C();
  v0[19] = v8;
  v9 = *(v8 - 8);
  v0[20] = v9;
  v10 = *(v9 + 64) + 15;
  v0[21] = swift_task_alloc();
  v11 = sub_12392C();
  v0[22] = v11;
  v12 = *(v11 - 8);
  v0[23] = v12;
  v13 = *(v12 + 64) + 15;
  v0[24] = swift_task_alloc();
  v14 = sub_12368C();
  v0[25] = v14;
  v15 = *(v14 - 8);
  v0[26] = v15;
  v16 = *(v15 + 64) + 15;
  v0[27] = swift_task_alloc();
  v17 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v0[28] = swift_task_alloc();
  v18 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v0[29] = swift_task_alloc();
  v19 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v0[30] = swift_task_alloc();
  v20 = sub_12370C();
  v0[31] = v20;
  v21 = *(v20 - 8);
  v0[32] = v21;
  v22 = *(v21 + 64) + 15;
  v0[33] = swift_task_alloc();

  return _swift_task_switch(sub_FDDC4, 0, 0);
}

uint64_t sub_FDDC4()
{
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[13], qword_162A70);
  v0[34] = v1;
  v36 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoCreateTimerFlow.makeAndPublishFailureResponseTimerNotFound() called", v4, 2u);
  }

  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];

  (*(v6 + 104))(v5, enum case for ActivityType.failed(_:), v7);
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v8 = v0[30];
  v9 = sub_124FDC();
  sub_5B30(v9, qword_167878);
  v10 = sub_12353C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v11 = v0[32];
  v12 = v0[30];
  v14 = v0[28];
  v13 = v0[29];
  v26 = v0[33];
  v27 = v0[27];
  v28 = v0[31];
  v29 = v0[24];
  v15 = v0[17];
  v30 = v0[18];
  v31 = v0[16];
  v32 = v0[15];
  v16 = v0[14];
  v33 = v0[13];
  v34 = v0[21];
  v35 = v0[12];
  v17 = sub_124FEC();
  v18 = sub_5B30(v17, qword_167890);
  v19 = *(v17 - 8);
  (*(v19 + 16))(v13, v18, v17);
  (*(v19 + 56))(v13, 0, 1, v17);
  v20 = enum case for SiriTimeEventSender.ReasonDescription.timerNotFound(_:);
  v21 = sub_124FCC();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v14, v20, v21);
  (*(v22 + 56))(v14, 0, 1, v21);
  sub_124FBC();
  sub_5CA8(v14, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v13, &qword_15F6F0, &unk_128340);
  sub_5CA8(v12, &qword_15F6F8, &qword_1271D0);
  (*(v11 + 8))(v26, v28);
  sub_12364C();
  sub_12391C();
  (*(v15 + 104))(v30, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v31);
  (*(v16 + 16))(v32, v36, v33);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[35] = sub_124DBC();
  v23 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v37 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v24 = swift_task_alloc();
  v0[36] = v24;
  *v24 = v0;
  v24[1] = sub_FE294;

  return v37(0xD000000000000012, 0x800000000012C5A0, _swiftEmptyArrayStorage);
}

uint64_t sub_FE294(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  v4[37] = a1;
  v4[38] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_FE548, 0, 0);
  }

  else
  {
    v7 = v4[35];

    v8 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v9 = swift_task_alloc();
    v4[39] = v9;
    *v9 = v6;
    v9[1] = sub_FE434;
    v10 = v4[27];
    v11 = v4[24];
    v12 = v4[21];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v4 + 2, v10, v11, v12, 0);
  }
}

uint64_t sub_FE434()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_FEA3C;
  }

  else
  {
    v3 = sub_FE70C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_FE548()
{
  v1 = v0[35];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v11 = v0[38];
  v12 = v0[34];
  v13 = sub_125AAC();
  v14 = sub_125DEC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "UndoCreateTimerFlow: Error publishing FailureResponseTimerNotFound.", v15, 2u);
  }

  v16 = v0[33];
  v17 = v0[29];
  v18 = v0[30];
  v20 = v0[27];
  v19 = v0[28];
  v21 = v0[24];
  v22 = v0[21];
  v23 = v0[18];
  v24 = v0[15];
  v25 = v0[12];

  v26 = v0[1];

  return v26();
}

uint64_t sub_FE70C()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_FE7D0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_FE7D0()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_FEC00;
  }

  else
  {
    v3 = sub_FE8E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_FE8E4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);

  sub_5BB0((v0 + 16));
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));
  v10 = *(v0 + 264);
  v11 = *(v0 + 232);
  v12 = *(v0 + 240);
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v15 = *(v0 + 192);
  v16 = *(v0 + 168);
  v17 = *(v0 + 144);
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_FEA3C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 320);
  v11 = *(v0 + 272);
  v12 = sub_125AAC();
  v13 = sub_125DEC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "UndoCreateTimerFlow: Error publishing FailureResponseTimerNotFound.", v14, 2u);
  }

  v15 = *(v0 + 264);
  v16 = *(v0 + 232);
  v17 = *(v0 + 240);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 192);
  v21 = *(v0 + 168);
  v22 = *(v0 + 144);
  v23 = *(v0 + 120);
  v24 = *(v0 + 96);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_FEC00()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);

  sub_5BB0((v0 + 16));
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));
  v10 = *(v0 + 336);
  v11 = *(v0 + 272);
  v12 = sub_125AAC();
  v13 = sub_125DEC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "UndoCreateTimerFlow: Error publishing FailureResponseTimerNotFound.", v14, 2u);
  }

  v15 = *(v0 + 264);
  v16 = *(v0 + 232);
  v17 = *(v0 + 240);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 192);
  v21 = *(v0 + 168);
  v22 = *(v0 + 144);
  v23 = *(v0 + 120);
  v24 = *(v0 + 96);

  v25 = *(v0 + 8);

  return v25();
}

void sub_FEDFC()
{
  sub_FEEC0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_FEEC0()
{
  if (!qword_1608B0)
  {
    sub_12372C();
    v0 = sub_125F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1608B0);
    }
  }
}

uint64_t sub_FEF1C(uint64_t a1)
{
  v3 = *(*(sub_5AE8(&qword_162BF8, &unk_12B690) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_FA12C(a1, v4);
}

uint64_t sub_FEF9C()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_FF030()
{
  v0 = *(*(sub_5AE8(&qword_162BF8, &unk_12B690) - 8) + 80);

  return sub_FA58C();
}

uint64_t sub_FF0AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_FF0C4()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_FF194(uint64_t a1)
{
  v3 = *(*(sub_5AE8(&qword_162BF8, &unk_12B690) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_FA688(a1, v4);
}

uint64_t sub_FF214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_FF26C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&qword_162C28, &qword_12B6D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v66 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = v62 - v8;
  v9 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v62 - v11;
  v78 = sub_125B4C();
  v67 = *(v78 - 8);
  v13 = *(v67 + 64);
  v14 = __chkstk_darwin(v78);
  v71 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = v62 - v16;
  v62[1] = a2;
  sub_12391C();
  v17 = sub_125B0C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  result = sub_125AFC();
  v68 = result;
  if (a1 >> 62)
  {
    result = sub_1260FC();
    v22 = result;
  }

  else
  {
    v22 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v62[0] = a1 >> 62;
  if (v22)
  {
    if (v22 < 1)
    {
      __break(1u);
      goto LABEL_43;
    }

    v23 = 0;
    v83 = 0;
    v79 = a1 & 0xC000000000000001;
    v72 = (v67 + 56);
    v69 = (v67 + 32);
    v65 = (v67 + 16);
    v64 = v67 + 8;
    v77 = _swiftEmptyArrayStorage;
    *&v21 = 136315138;
    v63 = v21;
    v76 = a1;
    v73 = v22;
    v74 = v12;
    do
    {
      if (v79)
      {
        v24 = sub_125FFC();
      }

      else
      {
        v24 = *(a1 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = sub_1153C8();
      if (sub_12438C())
      {

        v27 = [v25 identifier];
        if (v27)
        {
          v28 = v27;
          v29 = sub_125B9C();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0;
        }

        v81 = v25;
        v82 = v23;
        v84[0] = v29;
        v84[1] = v31;
        sub_5AE8(&qword_162000, &qword_129F18);
        v80 = sub_125BAC();
        if (qword_15EE98 != -1)
        {
          swift_once();
        }

        v40 = sub_125ADC();
        v41 = *(*(v40 - 8) + 56);
        v41(v75, 1, 1, v40);
        sub_1257EC();

        v42 = v81;
        v43 = v74;
        v44 = v42;
        v45 = v83;
        sub_125B2C();
        if (v45)
        {

          (*v72)(v43, 1, 1, v78);
          sub_5CA8(v43, &qword_15F5F0, &unk_12AAA0);
          v83 = 0;
          a1 = v76;
        }

        else
        {
          v46 = v44;
          v83 = 0;
          v47 = v78;
          (*v72)(v43, 0, 1, v78);
          v48 = v70;
          v49 = *v69;
          (*v69)(v70, v43, v47);
          v50 = v66;
          sub_125AEC();
          v41(v50, 0, 1, v40);
          sub_125B3C();
          (*v65)(v71, v48, v47);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v77 = sub_CDB78(0, v77[2] + 1, 1, v77);
          }

          v53 = v77[2];
          v52 = v77[3];
          if (v53 >= v52 >> 1)
          {
            v77 = sub_CDB78(v52 > 1, v53 + 1, 1, v77);
          }

          v54 = v67;
          v55 = v78;
          (*(v67 + 8))(v70, v78);
          v56 = v77;
          v77[2] = (v53 + 1);
          v49(v56 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v53, v71, v55);
        }

        v22 = v73;
        v23 = v82;
      }

      else
      {
        if (qword_15F058 != -1)
        {
          swift_once();
        }

        v32 = sub_125ABC();
        sub_5B30(v32, qword_162FF0);

        v33 = sub_125AAC();
        v34 = sub_125DEC();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v84[0] = v36;
          *v35 = v63;
          v84[2] = v26;
          sub_12466C();

          v37 = sub_125BAC();
          v39 = sub_8530(v37, v38, v84);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_0, v33, v34, "Fail to build uso entity %s", v35, 0xCu);
          sub_5BB0(v36);

          a1 = v76;
        }
      }

      ++v23;
    }

    while (v22 != v23);
  }

  else
  {
    v77 = _swiftEmptyArrayStorage;
  }

  sub_12387C();
  if (v62[0])
  {
    v57 = sub_1260FC();
  }

  else
  {
    v57 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v57)
  {
LABEL_40:

    sub_1238BC();
    sub_103160(a1);
    sub_12388C();
  }

  v84[0] = _swiftEmptyArrayStorage;
  result = sub_12606C();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v58 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v59 = sub_125FFC();
      }

      else
      {
        v59 = *(a1 + 8 * v58 + 32);
      }

      v60 = v59;
      ++v58;
      sub_11585C();

      sub_12603C();
      v61 = *(v84[0] + 16);
      sub_12607C();
      sub_12608C();
      sub_12604C();
    }

    while (v57 != v58);
    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_FFAE8(char a1)
{
  v2 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_123ECC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_12391C();
  sub_102588(a1);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_5CA8(v5, &qword_162C18, &qword_12B6C8);
  }

  else
  {
    (*(v7 + 32))(v16, v5, v6);
    if (qword_15F008 != -1)
    {
      swift_once();
    }

    v17 = sub_125ABC();
    sub_5B30(v17, qword_162C00);
    v18 = *(v7 + 16);
    v18(v14, v16, v6);
    v19 = sub_125AAC();
    v20 = sub_125DFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = v20;
      v22 = v21;
      v29 = swift_slowAlloc();
      v31 = v29;
      *v22 = 136315138;
      v18(v11, v14, v6);
      v28 = sub_125BAC();
      v24 = v23;
      v25 = *(v7 + 8);
      v25(v14, v6);
      v26 = sub_8530(v28, v24, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_0, v19, v30, "Submitting NLv4 dialog act: %s", v22, 0xCu);
      sub_5BB0(v29);
    }

    else
    {

      v25 = *(v7 + 8);
      v25(v14, v6);
    }

    sub_12385C();
    v25(v16, v6);
  }

  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_1238FC();
  return sub_1238EC();
}

uint64_t sub_FFF04@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v160 = sub_123ECC();
  v159 = *(v160 - 8);
  v4 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_123EFC();
  v157 = *(v161 - 8);
  v6 = *(v157 + 64);
  v7 = __chkstk_darwin(v161);
  v154 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v156 = &v133 - v9;
  v166 = sub_12452C();
  v165 = *(v166 - 8);
  v10 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_123D7C();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v167 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v170 = &v133 - v17;
  __chkstk_darwin(v16);
  v175 = &v133 - v18;
  v19 = sub_123E8C();
  v179 = *(v19 - 8);
  v180 = v19;
  v20 = *(v179 + 64);
  v21 = __chkstk_darwin(v19);
  v169 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v171 = &v133 - v24;
  v25 = __chkstk_darwin(v23);
  v173 = &v133 - v26;
  __chkstk_darwin(v25);
  v178 = &v133 - v27;
  v182 = sub_123E4C();
  v177 = *(v182 - 8);
  v28 = v177[8];
  v29 = __chkstk_darwin(v182);
  v153 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v168 = &v133 - v32;
  v33 = __chkstk_darwin(v31);
  v162 = &v133 - v34;
  v35 = __chkstk_darwin(v33);
  v174 = &v133 - v36;
  __chkstk_darwin(v35);
  v181 = &v133 - v37;
  v176 = sub_12407C();
  v183 = *(v176 - 8);
  v38 = v183[8];
  v39 = __chkstk_darwin(v176);
  v172 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v184 = &v133 - v41;
  v42 = sub_5AE8(&qword_162038, &qword_129F28);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v133 - v44;
  v155 = a2;
  sub_FFAE8(a1);
  v46 = sub_103C24(&enum case for UsoEntity_common_UserEntity.DefinedValues.common_UserEntity_Everywhere(_:));
  v47 = sub_103C24(&enum case for UsoEntity_common_UserEntity.DefinedValues.common_UserEntity_Here(_:));
  v186 = _swiftEmptyArrayStorage;
  v48 = sub_5AE8(&qword_160810, &unk_127420);
  v49 = swift_allocObject();
  v185 = xmmword_126EB0;
  *(v49 + 16) = xmmword_126EB0;
  *(v49 + 32) = v46;
  v50 = sub_12422C();
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v53 = v51 + 56;
  v52(v45, 1, 1, v50);

  v54 = sub_1241EC();

  sub_5CA8(v45, &qword_162038, &qword_129F28);
  v163 = v48;
  v55 = swift_allocObject();
  *(v55 + 16) = v185;
  *(v55 + 32) = v47;
  v52(v45, 1, 1, v50);

  v56 = sub_1241EC();

  sub_5CA8(v45, &qword_162038, &qword_129F28);
  v57 = v184;
  sub_124B6C();
  v144 = v53;
  v148 = v52;
  v143 = v45;
  v145 = v50;
  v150 = v46;
  v151 = v47;
  v149 = v56;
  v152 = v54;
  v147 = sub_30B8C(0, &qword_162C40, USOSerializedGraph_ptr);
  v58 = sub_125E1C();
  v59 = v183[1];
  ++v183;
  v146 = v59;
  v59(v57, v176);
  v60 = [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask:v58];
  sub_125C3C();
  if (*(&dword_10 + (v186 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v186 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v130 = v58;
    v131 = *(&dword_10 + (v186 & 0xFFFFFFFFFFFFFF8));
    sub_125C9C();
    v58 = v130;
  }

  sub_125CCC();
  v184 = v186;
  v61 = v181;
  sub_123E3C();
  v62 = v178;
  sub_123E7C();
  sub_123F1C();
  v63 = v179;
  v141 = v60;
  v142 = v58;
  sub_123E6C();
  v140 = *(v63 + 16);
  v140(v173, v62, v180);
  sub_123E1C();
  v64 = v177;
  v65 = v177[2];
  v139 = v177 + 2;
  v138 = v65;
  (v65)(v174, v61, v182);
  v66 = sub_CDCD4(0, 1, 1, _swiftEmptyArrayStorage);
  v68 = *(v66 + 16);
  v67 = *(v66 + 24);
  if (v68 >= v67 >> 1)
  {
    v66 = sub_CDCD4(v67 > 1, v68 + 1, 1, v66);
  }

  v175 = v66;
  *(v66 + 16) = v68 + 1;
  v70 = v64[4];
  v69 = v64 + 4;
  v71 = (*(v69 + 48) + 32) & ~*(v69 + 48);
  v72 = v69[5];
  v73 = v182;
  v70(v66 + v71 + v72 * v68, v174, v182);
  v74 = v172;
  sub_124B6C();
  v134 = v72;
  v135 = v69;
  v136 = v71;
  v137 = v70;
  v174 = (v63 + 16);
  v75 = sub_125E1C();
  v146(v74, v176);
  v76 = objc_allocWithZone(SIRINLUUserStatedTask);
  v184 = v75;
  v77 = [v76 initWithTask:v75];
  sub_125C3C();
  if (*(&dword_10 + (v186 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v186 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v132 = *(&dword_10 + (v186 & 0xFFFFFFFFFFFFFF8));
    sub_125C9C();
  }

  sub_125CCC();

  v78 = v171;
  sub_123E7C();
  sub_123F1C();
  v79 = v148;
  v183 = v77;
  sub_123E6C();
  v80 = v180;
  v140(v173, v78, v180);
  v81 = v181;
  sub_123E1C();
  v82 = v73;
  v83 = v162;
  v84 = v82;
  v138(v162, v81);
  v85 = v175;
  v87 = *(v175 + 16);
  v86 = *(v175 + 24);
  if (v87 >= v86 >> 1)
  {
    v85 = sub_CDCD4(v86 > 1, v87 + 1, 1, v175);
  }

  v88 = v137;
  v89 = v136;
  v90 = v134;
  v175 = v85;
  *(v85 + 16) = v87 + 1;
  v88(v85 + v89 + v87 * v90, v83, v84);
  v91 = sub_124A9C();
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  swift_allocObject();
  v94 = sub_124A8C();
  v95 = sub_12478C();
  v96 = *(v95 + 48);
  v97 = *(v95 + 52);
  swift_allocObject();
  v98 = sub_12477C();
  v99 = sub_12497C();
  v100 = *(v99 + 48);
  v101 = *(v99 + 52);
  swift_allocObject();
  sub_12496C();
  v102 = v165;
  v103 = v164;
  v104 = v166;
  (*(v165 + 104))(v164, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v166);
  sub_12495C();
  (*(v102 + 8))(v103, v104);

  sub_12447C();

  sub_123FCC();
  v105 = swift_allocObject();
  *(v105 + 16) = v185;
  *(v105 + 32) = v94;
  v106 = v143;
  v79(v143, 1, 1, v145);

  v107 = sub_1241EC();

  sub_5CA8(v106, &qword_162038, &qword_129F28);
  v108 = v168;
  sub_123E3C();
  v109 = v169;
  sub_123E7C();
  sub_123F1C();
  v110 = v175;
  *&v185 = v107;
  sub_123E6C();
  v140(v173, v109, v80);
  sub_123E1C();
  v111 = v153;
  (v138)(v153, v108, v182);
  v113 = *(v110 + 16);
  v112 = *(v110 + 24);
  v114 = v110;
  v176 = v98;
  v172 = v94;
  if (v113 >= v112 >> 1)
  {
    v114 = sub_CDCD4(v112 > 1, v113 + 1, 1, v110);
  }

  v115 = v160;
  v116 = v158;
  v117 = v157;
  v118 = v137;
  v119 = v136;
  v120 = v134;
  *(v114 + 16) = v113 + 1;
  v118(v114 + v119 + v113 * v120, v111, v182);
  v121 = v156;
  sub_123EEC();
  sub_123EDC();
  sub_123EBC();
  (*(v117 + 16))(v154, v121, v161);
  sub_123EAC();
  sub_5AE8(&qword_162C48, &qword_12B6E8);
  v122 = v159;
  v123 = *(v159 + 72);
  v124 = (*(v159 + 80) + 32) & ~*(v159 + 80);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_126CB0;
  (*(v122 + 16))(v125 + v124, v116, v115);
  sub_12389C();

  (*(v122 + 8))(v116, v115);
  (*(v117 + 8))(v121, v161);
  v126 = *(v179 + 8);
  v126(v169, v80);
  v127 = v177[1];
  v128 = v182;
  v127(v168, v182);
  v126(v171, v80);
  v126(v178, v80);
  return (v127)(v181, v128);
}

uint64_t sub_101208@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  LOBYTE(v5) = a2;
  v8 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v77 = &v67 - v10;
  v11 = sub_125B4C();
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  v13 = __chkstk_darwin(v11);
  v81 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v75 = &v67 - v15;
  v16 = sub_122F6C();
  v78 = *(v16 - 8);
  v79 = v16;
  v17 = *(v78 + 64);
  __chkstk_darwin(v16);
  v73 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v67 - v21;
  v82 = sub_123ECC();
  v72 = *(v82 - 8);
  v23 = *(v72 + 64);
  v24 = __chkstk_darwin(v82);
  v67 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v68 = &v67 - v27;
  __chkstk_darwin(v26);
  v29 = &v67 - v28;
  sub_12391C();
  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_5AE8(&qword_162048, &qword_129F38);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_127990;
  *(v30 + 32) = 0xD00000000000001CLL;
  *(v30 + 40) = 0x800000000012C320;
  *(v30 + 48) = 0xD00000000000001BLL;
  *(v30 + 56) = 0x800000000012C030;
  *(v30 + 64) = 0xD000000000000020;
  *(v30 + 72) = 0x800000000012F070;
  *(v30 + 80) = 0xD00000000000001BLL;
  *(v30 + 88) = 0x800000000012C340;
  v71 = a3;
  v74 = a1;
  v80 = v29;
  if ((a3 & 1) == 0)
  {
    goto LABEL_4;
  }

  v29 = a4;
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_125FEC(20);

  v84 = 0xD000000000000012;
  v85 = 0x800000000012F0A0;
  v86._countAndFlagsBits = sub_125BDC();
  sub_125C0C(v86);

  a3 = v84;
  a1 = v85;
  a4 = *(v30 + 16);
  v31 = *(v30 + 24);
  v32 = (a4 + 1);
  if (a4 >= v31 >> 1)
  {
    goto LABEL_44;
  }

LABEL_3:
  *(v30 + 16) = v32;
  v33 = v30 + 16 * a4;
  *(v33 + 32) = a3;
  *(v33 + 40) = a1;
  a4 = v29;
  sub_1238EC();
  a1 = v74;
  v29 = v80;
LABEL_4:

  v69 = v30;
  sub_1238FC();
  sub_103160(a1);
  sub_12388C();
  sub_12390C();
  v70 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v34 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_6;
  }

  while (1)
  {
    v34 = sub_1260FC();
LABEL_6:
    v83 = v11;
    if (v34)
    {
      v84 = _swiftEmptyArrayStorage;
      v32 = &v84;
      sub_12606C();
      if (v34 < 0)
      {
        __break(1u);
LABEL_44:
        v30 = sub_CD9E0((v31 > 1), v32, 1, v30);
        goto LABEL_3;
      }

      v35 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v36 = sub_125FFC();
        }

        else
        {
          v36 = *(a1 + 8 * v35 + 32);
        }

        v37 = v36;
        ++v35;
        sub_1153C8();
        sub_103DC8(v5);

        sub_12603C();
        v38 = v84[2];
        sub_12607C();
        sub_12608C();
        sub_12604C();
        v11 = v83;
      }

      while (v34 != v35);
      v29 = v80;
    }

    sub_123E9C();

    v39 = v72;
    v40 = v82;
    if ((*(v72 + 48))(v22, 1, v82) == 1)
    {
      sub_5CA8(v22, &qword_162C18, &qword_12B6C8);
    }

    else
    {
      (*(v39 + 32))(v29, v22, v40);
      if (qword_15F008 != -1)
      {
        swift_once();
      }

      v41 = sub_125ABC();
      sub_5B30(v41, qword_162C00);
      v5 = *(v39 + 16);
      v42 = v68;
      v5(v68, v29, v40);
      v43 = sub_125AAC();
      v71 = sub_125DFC();
      if (os_log_type_enabled(v43, v71))
      {
        v44 = swift_slowAlloc();
        v45 = v42;
        v46 = v39;
        v47 = swift_slowAlloc();
        v84 = v47;
        *v44 = 136315138;
        v5(v67, v45, v82);
        v48 = sub_125BAC();
        v50 = v49;
        v51 = *(v46 + 8);
        LOBYTE(v5) = v46 + 8;
        v51(v45, v82);
        v52 = sub_8530(v48, v50, &v84);
        v11 = v83;

        *(v44 + 4) = v52;
        _os_log_impl(&dword_0, v43, v71, "Submitting Timer Disambiguation NLv4 dialog act: %s", v44, 0xCu);
        sub_5BB0(v47);
        v29 = v80;

        v40 = v82;
      }

      else
      {

        v51 = *(v39 + 8);
        LOBYTE(v5) = v39 + 8;
        v51(v42, v40);
      }

      sub_12385C();
      v51(v29, v40);
      a1 = v74;
    }

    v22 = v77;
    v53 = v78;
    v54 = v79;
    v55 = v73;
    sub_122F5C();
    v80 = sub_122F3C();
    v82 = v56;
    (*(v53 + 8))(v55, v54);
    if (v70)
    {
      break;
    }

    a3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    v73 = a4;
    if (!a3)
    {
      goto LABEL_39;
    }

LABEL_24:
    v29 = 0;
    v30 = a1;
    v78 = a1 & 0xFFFFFFFFFFFFFF8;
    v79 = a1 & 0xC000000000000001;
    a4 = v76 + 48;
    a1 = v76 + 32;
    v57 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v79)
      {
        v58 = sub_125FFC();
      }

      else
      {
        if (v29 >= *(v78 + 16))
        {
          goto LABEL_41;
        }

        v58 = *(v30 + 8 * v29 + 32);
      }

      v59 = v58;
      v5 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        break;
      }

      sub_114E08(v80, v82, v29, 0, v22);

      if ((*a4)(v22, 1, v11) == 1)
      {
        sub_5CA8(v22, &qword_15F5F0, &unk_12AAA0);
      }

      else
      {
        v60 = v22;
        v61 = *a1;
        v62 = v75;
        (*a1)(v75, v60, v11);
        v61(v81, v62, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_CDB78(0, v57[2] + 1, 1, v57);
        }

        v64 = v57[2];
        v63 = v57[3];
        if (v64 >= v63 >> 1)
        {
          v57 = sub_CDB78(v63 > 1, v64 + 1, 1, v57);
        }

        v57[2] = (v64 + 1);
        v65 = v57 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v64;
        v11 = v83;
        v61(v65, v81, v83);
        v22 = v77;
      }

      ++v29;
      if (v5 == a3)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  a3 = sub_1260FC();
  v73 = a4;
  if (a3)
  {
    goto LABEL_24;
  }

LABEL_39:

  return sub_12387C();
}

uint64_t sub_101C5C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), void (*a4)(uint64_t))
{
  v7 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v46 - v9;
  v11 = sub_123ECC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v50 = &v46 - v17;
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  sub_12391C();
  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_1238FC();
  sub_1238EC();
  v20 = a2(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  a3();
  v23 = sub_12466C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_12465C();
  v27 = sub_1247EC();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_1247DC();
  sub_12463C();

  a4(v26);
  sub_1251CC();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_5CA8(v10, &qword_162C18, &qword_12B6C8);
  }

  (*(v12 + 32))(v19, v10, v11);
  v31 = v19;
  if (qword_15F008 != -1)
  {
    swift_once();
  }

  v32 = sub_125ABC();
  sub_5B30(v32, qword_162C00);
  v33 = *(v12 + 16);
  v34 = v50;
  v48 = v31;
  v33(v50, v31, v11);
  v35 = sub_125AAC();
  v36 = sub_125DFC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v37 = 136315138;
    v33(v49, v34, v11);
    v38 = sub_125BAC();
    v39 = v34;
    v40 = v38;
    v42 = v41;
    v43 = *(v12 + 8);
    v43(v39, v11);
    v44 = sub_8530(v40, v42, &v51);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_0, v35, v36, "Submitting NLv4 dialog act: %s", v37, 0xCu);
    sub_5BB0(v47);
  }

  else
  {

    v43 = *(v12 + 8);
    v43(v34, v11);
  }

  v45 = v48;
  sub_12385C();
  return (v43)(v45, v11);
}

uint64_t sub_102100()
{
  v0 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v32 - v2;
  v4 = sub_123ECC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v32 - v11;
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  sub_12391C();
  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_1238FC();
  sub_1238EC();
  v15 = sub_1249AC();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_12499C();
  v18 = sub_12466C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_12465C();
  sub_12473C();
  sub_1251CC();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_5CA8(v3, &qword_162C18, &qword_12B6C8);
  }

  (*(v5 + 32))(v14, v3, v4);
  if (qword_15F008 != -1)
  {
    swift_once();
  }

  v22 = sub_125ABC();
  sub_5B30(v22, qword_162C00);
  v23 = *(v5 + 16);
  v34 = v14;
  v23(v12, v14, v4);
  v24 = sub_125AAC();
  v25 = sub_125DFC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v26 = 136315138;
    v23(v9, v12, v4);
    v32 = sub_125BAC();
    v28 = v27;
    v29 = *(v5 + 8);
    v29(v12, v4);
    v30 = sub_8530(v32, v28, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v24, v25, "Submitting NLv4 dialog act: %s", v26, 0xCu);
    sub_5BB0(v33);
  }

  else
  {

    v29 = *(v5 + 8);
    v29(v12, v4);
  }

  v31 = v34;
  sub_12385C();
  return (v29)(v31, v4);
}

uint64_t sub_10253C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162C00);
  sub_5B30(v0, qword_162C00);
  return sub_1257AC();
}

uint64_t sub_102588(char a1)
{
  switch(a1)
  {
    case 1:
      goto LABEL_9;
    case 2:
    case 10:
      v18 = sub_1249CC();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      sub_1249BC();
      break;
    case 3:
      v24 = sub_124ABC();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      sub_124AAC();
      break;
    case 4:
      v30 = sub_124A7C();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_124A6C();
      break;
    case 5:
      v21 = sub_1248BC();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      sub_1248AC();
      break;
    case 7:
    case 17:
    case 18:
      v4 = sub_1248DC();
      v5 = *(v4 + 48);
      v6 = *(v4 + 52);
      swift_allocObject();
      sub_1248CC();
      break;
    case 8:
      v33 = sub_124A0C();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      sub_1249FC();
      break;
    case 9:
      v36 = sub_1248FC();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      sub_1248EC();
      break;
    case 12:
      v27 = sub_124A2C();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      sub_124A1C();
      break;
    case 13:
    case 14:
    case 15:
      if (qword_15F008 != -1)
      {
        swift_once();
      }

      v7 = sub_125ABC();
      sub_5B30(v7, qword_162C00);
      v8 = sub_125AAC();
      v9 = sub_125DEC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v40 = v11;
        *v10 = 136315138;
        v12 = sub_125BAC();
        v14 = sub_8530(v12, v13, &v40);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_0, v8, v9, "Unsupported verb for confirmTimer: %s", v10, 0xCu);
        sub_5BB0(v11);
      }

LABEL_9:
      v15 = sub_1249AC();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      sub_12499C();
      break;
    default:
      v1 = sub_124ADC();
      v2 = *(v1 + 48);
      v3 = *(v1 + 52);
      swift_allocObject();
      sub_124ACC();
      break;
  }

  sub_1251DC();
}

uint64_t sub_1028BC()
{
  v0 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v34 - v2;
  v4 = sub_123ECC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - v11;
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  sub_12391C();
  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_1238FC();
  sub_1238EC();
  v15 = sub_1249AC();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_12499C();
  v18 = sub_12466C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_12465C();
  sub_12464C();
  sub_12473C();
  sub_1251CC();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_5CA8(v3, &qword_162C18, &qword_12B6C8);
  }

  (*(v5 + 32))(v14, v3, v4);
  v22 = v14;
  if (qword_15F008 != -1)
  {
    swift_once();
  }

  v23 = sub_125ABC();
  sub_5B30(v23, qword_162C00);
  v24 = *(v5 + 16);
  v25 = v12;
  v36 = v22;
  v24(v12, v22, v4);
  v26 = sub_125AAC();
  v27 = sub_125DFC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v28 = 136315138;
    v24(v9, v25, v4);
    v34 = sub_125BAC();
    v30 = v29;
    v31 = *(v5 + 8);
    v31(v25, v4);
    v32 = sub_8530(v34, v30, &v37);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_0, v26, v27, "Submitting NLv4 dialog act: %s", v28, 0xCu);
    sub_5BB0(v35);
  }

  else
  {

    v31 = *(v5 + 8);
    v31(v12, v4);
  }

  v33 = v36;
  sub_12385C();
  return (v31)(v33, v4);
}

uint64_t sub_102D14(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_CDB28(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (*(v3 + 24) >> 1) - *(v3 + 16);
  result = sub_1236AC();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = *(v3 + 16);
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    *(v3 + 16) = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_102E40(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1260FC();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1260FC();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_102F30(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_102FD0(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_102F30(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1260FC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_12600C();
  *v1 = result;
  return result;
}

uint64_t sub_102FD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1260FC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1260FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_104184();
          for (i = 0; i != v6; ++i)
          {
            sub_5AE8(&qword_162C30, &qword_12B6E0);
            v9 = sub_BA7CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id *sub_103160(unint64_t a1)
{
  v2 = sub_123BAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  __chkstk_darwin(v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5AE8(&qword_162C20, &qword_12B6D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v66 - v12;
  v13 = sub_12374C();
  isa = v13[-1].isa;
  v14 = *(isa + 8);
  v15 = __chkstk_darwin(v13);
  v82 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v77 = (&v66 - v18);
  v19 = __chkstk_darwin(v17);
  *&v76 = &v66 - v20;
  __chkstk_darwin(v19);
  v22 = (&v66 - v21);
  v86 = sub_1236AC();
  v80 = *(v86 - 1);
  v23 = *(v80 + 8);
  v24 = __chkstk_darwin(v86);
  v75 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v81 = &v66 - v26;
  v27 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1260FC())
  {
    v66 = v27;
    v78 = v13;
    v70 = v11;
    v67 = v6;
    v68 = v3;
    v69 = v2;
    v3 = 0;
    v88 = a1 & 0xFFFFFFFFFFFFFF8;
    v89 = a1 & 0xC000000000000001;
    v74 = "com.apple.siri.nl.TimerNewTime";
    v85 = (isa + 32);
    v72 = (isa + 8);
    v73 = (isa + 16);
    v28 = (v80 + 32);
    v83 = a1;
    v84 = _swiftEmptyArrayStorage;
    v27 = i;
    do
    {
      if (v89)
      {
        v30 = sub_125FFC();
      }

      else
      {
        if (v3 >= *(v88 + 16))
        {
          goto LABEL_46;
        }

        v30 = *(a1 + 8 * v3 + 32);
      }

      v13 = v30;
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v31 = [v30 label];
      if (v31)
      {
        v2 = v31;
        v32 = sub_125B9C();
        v34 = v33;

        v35 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v35 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          v36 = v76;
          sub_12373C();
          v37 = v36;
          v38 = v78;
          (*v85)(v22, v37, v78);
          sub_BDA9C(v79);
          (*v73)(v77, v22, v38);
          v6 = v75;
          sub_12369C();

          (*v72)(v22, v38);
          v39 = *v28;
          (*v28)(v81, v6, v86);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1 = v83;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v84 = sub_CDB28(0, v84[2] + 1, 1, v84);
          }

          v2 = v84[2];
          v41 = v84[3];
          v13 = (v2 + 1);
          if (v2 >= v41 >> 1)
          {
            v84 = sub_CDB28(v41 > 1, v2 + 1, 1, v84);
          }

          v42 = v84;
          v84[2] = v13;
          v39(v42 + ((v80[80] + 32) & ~v80[80]) + *(v80 + 9) * v2, v81, v86);
        }

        else
        {

          a1 = v83;
        }

        v27 = i;
      }

      else
      {
      }

      v3 = (v3 + 1);
    }

    while (v11 != v27);
    v27 = 0;
    v79 = "tput(resolveRecord:)";
    v3 = isa;
    v80 = isa + 48;
    v81 = isa + 56;
    v86 = _swiftEmptyArrayStorage;
    *&v29 = 136315138;
    v76 = v29;
    v6 = v70;
    v43 = v78;
    while (1)
    {
      if (v89)
      {
        v44 = sub_125FFC();
      }

      else
      {
        if (v27 >= *(v88 + 16))
        {
          goto LABEL_48;
        }

        v44 = *(a1 + 8 * v27 + 32);
      }

      v11 = v44;
      v45 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v46 = [v44 identifier];
      if (v46)
      {
        v13 = v46;
        v2 = sub_125B9C();
        v22 = v47;

        sub_12373C();
        v48 = 0;
      }

      else
      {
        if (qword_15EF10 != -1)
        {
          swift_once();
        }

        v49 = sub_125ABC();
        sub_5B30(v49, qword_161FC8);
        v50 = v11;
        v13 = sub_125AAC();
        v22 = sub_125DEC();

        if (os_log_type_enabled(v13, v22))
        {
          v2 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v90 = v77;
          *v2 = v76;
          v51 = v50;
          v52 = [v51 description];
          v53 = sub_125B9C();
          v55 = v54;

          v56 = sub_8530(v53, v55, &v90);
          v43 = v78;
          v6 = v70;

          *(v2 + 4) = v56;
          v3 = isa;
          _os_log_impl(&dword_0, v13, v22, "Error making descriptive hint for timer. Missing identifier: %s", v2, 0xCu);
          v22 = v77;
          sub_5BB0(v77);
        }

        v48 = 1;
        a1 = v83;
      }

      (*v81)(v6, v48, 1, v43);

      if ((*v80)(v6, 1, v43) == 1)
      {
        sub_5CA8(v6, &qword_162C20, &qword_12B6D0);
      }

      else
      {
        v13 = *v85;
        (*v85)(v82, v6, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_CDB50(0, v86[2] + 1, 1, v86);
        }

        v2 = v86[2];
        v57 = v86[3];
        v11 = (v2 + 1);
        if (v2 >= v57 >> 1)
        {
          v86 = sub_CDB50(v57 > 1, v2 + 1, 1, v86);
        }

        v58 = v86;
        v86[2] = v11;
        (v13)(v58 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 9) * v2, v82, v43);
      }

      ++v27;
      if (v45 == i)
      {
        v2 = v69;
        v3 = v68;
        v6 = v67;
        if (v66)
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v84 = _swiftEmptyArrayStorage;
  v86 = _swiftEmptyArrayStorage;
  if (v27)
  {
LABEL_51:
    v59 = sub_1260FC();
  }

  else
  {
LABEL_44:
    v59 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v59 != v86[2])
  {
    if (qword_15F008 != -1)
    {
      swift_once();
    }

    v60 = sub_125ABC();
    sub_5B30(v60, qword_162C00);
    v61 = sub_125AAC();
    v62 = sub_125DEC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "makeTimerDisplayHints: Incorrect label value count during conversion of timer hints", v63, 2u);
    }
  }

  sub_123B8C();
  v64 = sub_123B9C();

  (*(v3 + 1))(v6, v2);
  v90 = v84;
  sub_102D14(v64);
  return v90;
}

uint64_t sub_103C24(unsigned int *a1)
{
  v2 = sub_123F9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_12403C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_12402C();
  v10 = *(v7 + 48);
  v11 = *(v7 + 52);
  swift_allocObject();
  sub_12402C();
  (*(v3 + 104))(v6, *a1, v2);
  sub_12401C();
  (*(v3 + 8))(v6, v2);

  sub_12400C();

  v12 = sub_124A9C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_124A8C();

  sub_123FBC();

  return v15;
}

uint64_t sub_103DC8(char a1)
{
  if (qword_15F008 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_162C00);
  v3 = sub_125AAC();
  v4 = sub_125DFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v56 = v6;
    *v5 = 136315138;
    v7 = sub_B6264(a1);
    v9 = sub_8530(v7, v8, &v56);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "In timerNLBuilder(for:commonTimer:), verb = %s", v5, 0xCu);
    sub_5BB0(v6);
  }

  switch(a1)
  {
    case 1:
      v41 = sub_1249AC();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();
      return sub_12499C();
    case 2:
      v32 = sub_1249CC();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v17 = sub_1249BC();
      goto LABEL_21;
    case 3:
      v35 = sub_124ABC();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      return sub_124AAC();
    case 4:
      v28 = sub_124A7C();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      return sub_124A6C();
    case 5:
      v53 = sub_1248BC();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      v17 = sub_1248AC();
      goto LABEL_21;
    case 6:
    case 13:
      v18 = sub_124A4C();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = sub_124A3C();
      sub_124AEC();
      return v21;
    case 7:
    case 17:
    case 18:
      v10 = sub_1248DC();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_1248CC();
      goto LABEL_17;
    case 8:
      v22 = sub_124A0C();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v17 = sub_1249FC();
      goto LABEL_21;
    case 9:
      v25 = sub_1248FC();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v21 = sub_1248EC();
      sub_12473C();
      return v21;
    case 10:
      v47 = sub_12483C();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      v17 = sub_12482C();
      goto LABEL_21;
    case 11:
    case 15:
    case 16:
      v14 = sub_124ADC();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_124ACC();
      goto LABEL_21;
    case 12:
      v44 = sub_124A2C();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();
      v13 = sub_124A1C();
LABEL_17:
      v21 = v13;
      sub_124AFC();
      break;
    case 14:
      v50 = sub_1249EC();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      v21 = sub_1249DC();
      sub_123FCC();
      break;
    default:
      v38 = sub_124B5C();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      v17 = sub_124B4C();
LABEL_21:
      v21 = v17;
      sub_12490C();
      break;
  }

  return v21;
}

unint64_t sub_104184()
{
  result = qword_162C38;
  if (!qword_162C38)
  {
    sub_5B68(&qword_162C30, &qword_12B6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162C38);
  }

  return result;
}

uint64_t sub_104248()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_129770;
  *(v7 + 32) = 7368801;
  *(v7 + 40) = 0xE300000000000000;
  v8 = *v0;
  if (*v0)
  {
    v9 = sub_124DEC();
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
  }

  *(v7 + 48) = v10;
  *(v7 + 72) = v9;
  *(v7 + 80) = 0x6E69577473726966;
  *(v7 + 88) = 0xEF657A6953776F64;
  if (v0[2])
  {
    v11 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
    v12 = 0;
  }

  else
  {
    v12 = v0[1];
    v11 = &type metadata for Double;
  }

  *(v7 + 96) = v12;
  *(v7 + 120) = v11;
  strcpy((v7 + 128), "isConclusion");
  *(v7 + 141) = 0;
  *(v7 + 142) = -5120;
  *(v7 + 144) = *(v0 + 17);
  *(v7 + 168) = &type metadata for Bool;
  strcpy((v7 + 176), "isFirstWindow");
  *(v7 + 190) = -4864;
  *(v7 + 192) = *(v0 + 18);
  *(v7 + 216) = &type metadata for Bool;
  strcpy((v7 + 224), "isLastWindow");
  *(v7 + 237) = 0;
  *(v7 + 238) = -5120;
  *(v7 + 240) = *(v0 + 19);
  *(v7 + 264) = &type metadata for Bool;
  *(v7 + 272) = 0xD000000000000016;
  *(v7 + 280) = 0x800000000012E240;
  *(v7 + 288) = *(v0 + 20);
  *(v7 + 312) = &type metadata for Bool;
  *(v7 + 320) = 0x6D6F727065527369;
  *(v7 + 328) = 0xEA00000000007470;
  *(v7 + 336) = *(v0 + 21);
  *(v7 + 360) = &type metadata for Bool;
  *(v7 + 368) = 0x736D657469;
  *(v7 + 376) = 0xE500000000000000;
  v13 = v0[3];
  v14 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v7 + 384) = v13;
  *(v7 + 408) = v14;
  *(v7 + 416) = 0xD000000000000013;
  *(v7 + 424) = 0x800000000012E260;
  if (v0[5])
  {
    v15 = 0;
    *(v7 + 440) = 0;
    *(v7 + 448) = 0;
    v16 = 0;
  }

  else
  {
    v16 = v0[4];
    v15 = &type metadata for Double;
  }

  *(v7 + 432) = v16;
  *(v7 + 456) = v15;
  *(v7 + 464) = 0x6574496C61746F74;
  *(v7 + 472) = 0xEA0000000000736DLL;
  if (v0[7])
  {
    v17 = 0;
    *(v7 + 488) = 0;
    *(v7 + 496) = 0;
    v18 = 0;
  }

  else
  {
    v18 = v0[6];
    v17 = &type metadata for Double;
  }

  *(v7 + 480) = v18;
  *(v7 + 504) = v17;
  *(v7 + 512) = 0x6174614477656976;
  *(v7 + 520) = 0xE800000000000000;
  v19 = type metadata accessor for TimerBaseDisambiguationParameters(0);
  sub_E344(v0 + v19[14], v6, &unk_15F170, &unk_126E00);
  v20 = sub_124E4C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v6, 1, v20) == 1)
  {

    sub_5CA8(v6, &unk_15F170, &unk_126E00);
    *(v7 + 528) = 0u;
    *(v7 + 544) = 0u;
  }

  else
  {
    *(v7 + 552) = v20;
    v23 = sub_23B4C((v7 + 528));
    (*(v21 + 32))(v23, v6, v20);
  }

  *(v7 + 560) = 0xD000000000000018;
  *(v7 + 568) = 0x800000000012F140;
  v24 = v31;
  sub_E344(v0 + v19[15], v31, &unk_15F170, &unk_126E00);
  if (v22(v24, 1, v20) == 1)
  {
    sub_5CA8(v24, &unk_15F170, &unk_126E00);
    *(v7 + 576) = 0u;
    *(v7 + 592) = 0u;
  }

  else
  {
    *(v7 + 600) = v20;
    v25 = sub_23B4C((v7 + 576));
    (*(v21 + 32))(v25, v24, v20);
  }

  *(v7 + 608) = 0x6953776F646E6977;
  *(v7 + 616) = 0xEA0000000000657ALL;
  v26 = (v0 + v19[16]);
  if (v26[1])
  {
    v27 = 0;
    *(v7 + 632) = 0u;
    v28 = 0;
  }

  else
  {
    v28 = *v26;
    v27 = &type metadata for Double;
  }

  *(v7 + 624) = v28;
  *(v7 + 648) = v27;
  return v7;
}

uint64_t sub_104778(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for TimerBaseAppNotInstalledParameters(0);
  v2[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_104850, 0, 0);
}

uint64_t sub_104850()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v20 = v0[4];
  v4 = v0[3];
  v5 = sub_124E4C();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 1, 1, v5);
  v7 = *(v1 + 20);
  *(v2 + v7) = 0;
  v8 = v4[4];
  sub_23B08(v4, v4[3]);
  sub_12543C();
  sub_22A1C(v3, v2);
  v9 = v4[4];
  sub_23B08(v4, v4[3]);
  v10 = sub_12544C();
  *(v2 + v7) = v10;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v11 = swift_allocObject();
  v0[8] = v11;
  *(v11 + 16) = xmmword_1270C0;
  *(v11 + 32) = 0xD000000000000014;
  *(v11 + 40) = 0x800000000012F100;
  sub_E344(v2, v20, &unk_15F170, &unk_126E00);
  v12 = (*(v6 + 48))(v20, 1, v5);
  v13 = v0[4];
  if (v12 == 1)
  {
    sub_5CA8(v0[4], &unk_15F170, &unk_126E00);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v5;
    v14 = sub_23B4C((v11 + 48));
    (*(v6 + 32))(v14, v13, v5);
  }

  *(v11 + 80) = 0x656369766564;
  *(v11 + 88) = 0xE600000000000000;
  v15 = 0;
  if (v10)
  {
    v15 = sub_124EAC();
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
  v17[1] = sub_104B18;
  v18 = v0[2];

  return v21(0xD000000000000019, 0x800000000012F120, v11);
}

uint64_t sub_104B18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_104CF4;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_104C64;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_104C64()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_105290(v0[7]);

  v3 = v0[1];
  v4 = v0[11];

  return v3(v4);
}

uint64_t sub_104CF4()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_105290(v0[7]);

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_104D80(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_104DA4, 0, 0);
}

uint64_t sub_104DA4()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 24) = 1;
  v1(v0 + 16);
  v3 = *(v0 + 16);
  LODWORD(v2) = *(v0 + 24);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  v5 = v4;
  *(v0 + 56) = v4;
  *(v4 + 16) = xmmword_126CB0;
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x800000000012C9C0;
  if (v2 == 1)
  {
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    v3 = 0;
  }

  else
  {
    v6 = &type metadata for Double;
  }

  *(v4 + 48) = v3;
  *(v4 + 72) = v6;
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_104F10;
  v9 = *(v0 + 48);

  return v11(0xD000000000000012, 0x800000000012C9A0, v5);
}

uint64_t sub_104F10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_10505C;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_105040;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10505C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1050C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_105290(uint64_t a1)
{
  v2 = type metadata accessor for TimerBaseAppNotInstalledParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_105320(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1053F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1054A0()
{
  sub_1058B0(319, &unk_15FE30, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_AE4FC();
    if (v1 <= 0x3F)
    {
      sub_1058B0(319, &unk_1602C8, type metadata accessor for TimerTimer, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1058B0(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_105620(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_105708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1057CC()
{
  sub_1058B0(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1058B0(319, &unk_162DC8, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1058B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_105914()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162DF8);
  sub_5B30(v0, qword_162DF8);
  return sub_12578C();
}

id sub_105960@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_10598C(a1);
  *a2 = v4;
  return result;
}

id sub_10598C(id result)
{
  if (result >> 62)
  {
    v9 = result;
    if (sub_1260FC() >= 2)
    {
      goto LABEL_3;
    }

    v1 = sub_1260FC();
    result = v9;
  }

  else
  {
    v1 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v1 > 1)
    {
LABEL_3:
      if (qword_15F010 != -1)
      {
        swift_once();
      }

      v2 = sub_125ABC();
      sub_5B30(v2, qword_162DF8);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_0, v3, v4, "Disambiguation selection returned multiple choices. Using original targetTimer with shouldMatchAny = true", v5, 2u);
      }

      v6 = [v11 targetTimer];
      if (!v6)
      {
        goto LABEL_17;
      }

      v7 = v6;
      sub_8BAC();
      v8.super.super.isa = sub_125EEC(1).super.super.isa;
      [v7 setShouldMatchAny:v8.super.super.isa];

      goto LABEL_16;
    }
  }

  if (v1)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      v10 = sub_125FFC();
    }

    else
    {
      if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v10 = *(result + 4);
    }

    v8.super.super.isa = v10;
    [v11 setTargetTimer:v10];
LABEL_16:
  }

LABEL_17:

  return v11;
}

uint64_t RecreateDeletedTimerFlow.__allocating_init()()
{
  v0 = sub_12587C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_12586C();
  v4 = [objc_allocWithZone(MTTimerManager) init];
  v5 = type metadata accessor for RecreateDeletedTimerFlow();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();

  return sub_10EFA0(v3, v4, v8);
}

uint64_t type metadata accessor for RecreateDeletedTimerFlow()
{
  result = qword_162E58;
  if (!qword_162E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_105C58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_105CC4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162E10);
  sub_5B30(v0, qword_162E10);
  return sub_1257AC();
}

uint64_t RecreateDeletedTimerFlow.on(input:)()
{
  v0 = sub_5AE8(&qword_160838, &qword_128330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v92 = &v83 - v2;
  v3 = sub_1252CC();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  __chkstk_darwin(v3);
  v94 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1252AC();
  v6 = *(v98 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v98);
  v97 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v26 = v15;
  v27 = v19;
  if (!v25)
  {
    (*(v16 + 8))(v19, v15);
    return 0;
  }

  v28 = v25;
  v91 = v27;
  v29 = v6;
  v30 = *(v6 + 104);
  v31 = v98;
  v89 = v30;
  v30(v14, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v98);
  v32 = sub_12529C();
  v34 = v33;
  v35 = *(v29 + 8);
  v90 = v29 + 8;
  v88 = v35;
  v35(v14, v31);
  if (!*(v28 + 16))
  {
    goto LABEL_10;
  }

  v36 = sub_8AD8(v32, v34);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_11:

    (*(v16 + 8))(v91, v15);
    return 0;
  }

  sub_8B50(*(v28 + 56) + 32 * v36, v101);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v39 = sub_B66D0();
  if (v39 == 19)
  {
    goto LABEL_7;
  }

  v87 = v39;
  v89(v12, enum case for DirectInvocationUtils.Timer.UserInfoKey.usoEntity(_:), v31);
  v41 = sub_12529C();
  v43 = v42;
  v88(v12, v31);
  if (!*(v28 + 16))
  {
LABEL_10:

    goto LABEL_11;
  }

  v44 = sub_8AD8(v41, v43);
  v46 = v45;

  if ((v46 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_8B50(*(v28 + 56) + 32 * v44, v101);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    (*(v16 + 8))(v91, v15);

    return 0;
  }

  v48 = v99;
  v47 = v100;
  v49 = sub_122DFC();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_122DEC();
  sub_124BDC();
  sub_10FA4C(&qword_161850, &type metadata accessor for UsoEntity);
  v86 = v47;
  sub_122DDC();
  v85 = v48;

  sub_12434C();

  sub_12448C();

  if (!v101[0])
  {
    (*(v16 + 8))(v91, v15);

    sub_E498(v85, v86);
LABEL_26:

    return 0;
  }

  v84 = v101[0];
  v52 = v97;
  v89(v97, enum case for DirectInvocationUtils.Timer.UserInfoKey.paused(_:), v31);
  v53 = sub_12529C();
  v55 = v54;
  v88(v52, v31);
  if (!*(v28 + 16))
  {

    sub_E498(v85, v86);

LABEL_29:

    v71 = v91;

    (*(v16 + 8))(v71, v26);
    return 0;
  }

  v56 = sub_8AD8(v53, v55);
  v58 = v57;

  v60 = v85;
  v59 = v86;
  if ((v58 & 1) == 0)
  {

    sub_E498(v60, v59);
    goto LABEL_29;
  }

  sub_8B50(*(v28 + 56) + 32 * v56, v101);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v16 + 8))(v91, v15);

    sub_E498(v60, v59);

    goto LABEL_26;
  }

  v98 = v28;
  LODWORD(v97) = v99;
  v61 = sub_123CFC();
  v63 = v62;
  v64 = v94;
  v65 = v95;
  v66 = v96;
  (*(v95 + 104))(v94, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v96);
  v67 = sub_1252BC();
  v69 = v68;
  (*(v65 + 8))(v64, v66);
  if (v61 == v67 && v63 == v69)
  {

    v70 = v98;
  }

  else
  {
    v72 = sub_1261BC();

    v70 = v98;
    if ((v72 & 1) == 0)
    {
LABEL_40:
      (*(v16 + 8))(v91, v26);
      sub_E498(v85, v86);

      goto LABEL_26;
    }
  }

  if (sub_B6264(v87) != 0x657461657263 || v73 != 0xE600000000000000)
  {
    v74 = sub_1261BC();

    if (v74)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

LABEL_36:
  v75 = v93;
  v76 = *(v93 + 88);
  *(v93 + 88) = v84;

  *(v75 + 96) = v97;
  v77 = v92;
  sub_F58F4(v70, v92);

  v78 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction;
  swift_beginAccess();
  sub_7CC5C(v77, v75 + v78, &qword_160838, &qword_128330);
  swift_endAccess();
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v79 = sub_125ABC();
  sub_5B30(v79, qword_162E10);
  v80 = sub_125AAC();
  v81 = sub_125DFC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_0, v80, v81, "RecreateDeletedTimerFlow accepting input.", v82, 2u);

    sub_E498(v85, v86);
  }

  else
  {

    sub_E498(v85, v86);
  }

  (*(v16 + 8))(v91, v26);
  return 1;
}

uint64_t RecreateDeletedTimerFlow.execute()(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = *(*(sub_5AE8(&qword_160838, &qword_128330) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v4 = sub_12372C();
  v2[24] = v4;
  v5 = *(v4 - 8);
  v2[25] = v5;
  v6 = *(v5 + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = sub_124FCC();
  v2[27] = v7;
  v8 = *(v7 - 8);
  v2[28] = v8;
  v9 = *(v8 + 64) + 15;
  v2[29] = swift_task_alloc();
  v10 = sub_1250BC();
  v2[30] = v10;
  v11 = *(v10 - 8);
  v2[31] = v11;
  v12 = *(v11 + 64) + 15;
  v2[32] = swift_task_alloc();
  v13 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v14 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v15 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v16 = sub_12370C();
  v2[36] = v16;
  v17 = *(v16 - 8);
  v2[37] = v17;
  v18 = *(v17 + 64) + 15;
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_106ADC, 0, 0);
}

uint64_t sub_106ADC()
{
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_162E10);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In RecreateDeletedTimerFlow async execute()", v4, 2u);
  }

  v5 = v0[37];
  v6 = v0[38];
  v7 = v0[36];

  (*(v5 + 104))(v6, enum case for ActivityType.correction(_:), v7);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v8 = v0[35];
  v9 = sub_124FDC();
  sub_5B30(v9, qword_1678B8);
  v10 = sub_12353C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v11 = v0[37];
  v12 = v0[38];
  v13 = v0[35];
  v15 = v0[33];
  v14 = v0[34];
  v17 = v0[27];
  v16 = v0[28];
  v60 = v0[22];
  v61 = v0[36];
  v18 = sub_124FEC();
  v19 = sub_5B30(v18, qword_1678D0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v14, v19, v18);
  (*(v20 + 56))(v14, 0, 1, v18);
  (*(v16 + 56))(v15, 1, 1, v17);
  sub_124FBC();
  sub_5CA8(v15, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v14, &qword_15F6F0, &unk_128340);
  sub_5CA8(v13, &qword_15F6F8, &qword_1271D0);
  (*(v11 + 8))(v12, v61);
  v21 = *(v60 + 88);
  v0[39] = v21;
  if (!v21)
  {
    v33 = sub_125AAC();
    v34 = sub_125DEC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "timerUsoEntity is nil! RecreateDeletedTimerFlow execute() has no timer to recreate.", v35, 2u);
    }

    v37 = v0[28];
    v36 = v0[29];
    v38 = v0[27];

    (*(v37 + 104))(v36, enum case for SiriTimeEventSender.ReasonDescription.noTimerToCreate(_:), v38);
    v39 = swift_task_alloc();
    v0[50] = v39;
    *v39 = v0;
    v40 = sub_107CD0;
    goto LABEL_22;
  }

  v22 = v0[31];
  v23 = v0[32];
  v24 = v0[30];
  v25 = swift_allocObject();
  v0[40] = v25;
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v0[41] = v26;
  *(v26 + 16) = 0;

  sub_1250AC();
  v27 = sub_12504C();
  (*(v22 + 8))(v23, v24);
  v28 = v0[22];
  if (v27)
  {
    v29 = swift_task_alloc();
    v0[42] = v29;
    v29[2] = v28;
    v29[3] = v21;
    v29[4] = v25;
    v29[5] = v26;
    v30 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v31 = swift_task_alloc();
    v0[43] = v31;
    *v31 = v0;
    v31[1] = sub_1072B4;
    v32 = sub_10F158;
LABEL_27:

    return withCheckedContinuation<A>(isolation:function:_:)(v31, 0, 0, 0x2865747563657865, 0xE900000000000029, v32, v29, &type metadata for () + 8);
  }

  sub_2F488(v28 + 40, (v0 + 2));
  v41 = v0[6];
  sub_23B08(v0 + 2, v0[5]);
  v42 = sub_12583C();
  if (!v42)
  {
    sub_5BB0(v0 + 2);
LABEL_26:
    v58 = v0[22];
    v29 = swift_task_alloc();
    v0[45] = v29;
    v29[2] = v58;
    v29[3] = v21;
    v29[4] = v26;
    v29[5] = v25;
    v59 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v31 = swift_task_alloc();
    v0[46] = v31;
    *v31 = v0;
    v31[1] = sub_1076A8;
    v32 = sub_10F14C;
    goto LABEL_27;
  }

  sub_5BB0(v0 + 2);
  v43 = sub_125AAC();
  v44 = sub_125DFC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "We have an existing valid timer. This is unexpected. Attempting to stop current timer.", v45, 2u);
  }

  sub_2F488(v28 + 40, (v0 + 7));
  v46 = v0[11];
  sub_23B08(v0 + 7, v0[10]);
  v47 = sub_12580C();
  sub_5BB0(v0 + 7);
  if (v47)
  {
    goto LABEL_26;
  }

  v48 = sub_125AAC();
  v49 = sub_125DEC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_0, v48, v49, "Failed to stop current timer using siriTimerManager.stopCurrentTimerSync", v50, 2u);
  }

  v52 = v0[28];
  v51 = v0[29];
  v53 = v0[27];

  (*(v52 + 104))(v51, enum case for SiriTimeEventSender.ReasonDescription.failedToStopCurrentTimer(_:), v53);
  v39 = swift_task_alloc();
  v0[44] = v39;
  *v39 = v0;
  v40 = sub_107550;
LABEL_22:
  v39[1] = v40;
  v54 = v0[29];
  v55 = v0[21];
  v56 = v0[22];

  return sub_1094BC(v55, v54);
}

uint64_t sub_1072B4()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return _swift_task_switch(sub_1073CC, 0, 0);
}

uint64_t sub_1073CC()
{
  v1 = v0[41];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[47] = v2;
  if (v2)
  {
    v3 = v0[40];
    swift_beginAccess();
    v4 = *(v3 + 16);
    v5 = v2;
    v6 = swift_task_alloc();
    v0[48] = v6;
    *v6 = v0;
    v6[1] = sub_1077C0;
    v7 = v0[22];

    return sub_10A1F4(v5, v4);
  }

  else
  {
    (*(v0[28] + 104))(v0[29], enum case for SiriTimeEventSender.ReasonDescription.failedToCreateTimer(_:), v0[27]);
    v9 = swift_task_alloc();
    v0[49] = v9;
    *v9 = v0;
    v9[1] = sub_107A98;
    v10 = v0[29];
    v11 = v0[21];
    v12 = v0[22];

    return sub_1094BC(v11, v10);
  }
}

uint64_t sub_107550()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 216);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10FBF4, 0, 0);
}

uint64_t sub_1076A8()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return _swift_task_switch(sub_10FBE8, 0, 0);
}

uint64_t sub_1077C0()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return _swift_task_switch(sub_1078BC, 0, 0);
}

uint64_t sub_1078BC()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction;
  swift_beginAccess();
  sub_E344(v4 + v5, v3, &qword_160838, &qword_128330);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = v0[47];
  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[39];
  if (v6 == 1)
  {
    v11 = v0[23];
    v12 = v0[21];

    sub_5CA8(v11, &qword_160838, &qword_128330);
    sub_12383C();
  }

  else
  {
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[24];
    v16 = v0[21];
    (*(v14 + 32))(v13, v0[23], v15);
    sub_12384C();

    (*(v14 + 8))(v13, v15);
  }

  v17 = v0[38];
  v18 = v0[34];
  v19 = v0[35];
  v21 = v0[32];
  v20 = v0[33];
  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[23];

  v25 = v0[1];

  return v25();
}

uint64_t sub_107A98()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 216);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_107BF0, 0, 0);
}

uint64_t sub_107BF0()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];

  v4 = v0[38];
  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[29];
  v10 = v0[26];
  v11 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_107CD0()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 224);
  v5 = *(*v0 + 216);
  v6 = *v0;

  (*(v4 + 8))(v3, v5);
  v7 = v1[38];
  v8 = v1[35];
  v9 = v1[34];
  v10 = v1[33];
  v11 = v1[32];
  v12 = v1[29];
  v13 = v1[26];
  v14 = v1[23];

  v15 = *(v6 + 8);

  return v15();
}

void sub_107EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v7 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  if (*(a2 + 96))
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if (sub_12430C())
  {
    sub_1243FC();
    v14 = v13;
  }

  else
  {
    [objc_opt_self() defaultDuration];
    v14 = v15;
  }

  v47 = [objc_allocWithZone(MTMutableTimer) initWithState:v12 duration:v14];
  sub_12432C();
  if (v16 && (sub_125BDC(), , v17 = objc_allocWithZone(INSpeakableString), v18 = sub_125B8C(), , v19 = [v17 initWithSpokenPhrase:v18], v18, v19))
  {
    v20 = [v19 spokenPhrase];

    if (!v20)
    {
      sub_125B9C();
      v20 = sub_125B8C();
    }
  }

  else
  {
    v20 = 0;
  }

  [v47 setTitle:v20];

  v21 = [*(a2 + 80) addTimer:v47];
  if (v21)
  {
    v22 = v21;
    v23 = *(v8 + 16);
    v41 = v8 + 16;
    v43 = v9;
    v44 = v23;
    v23(v11, a1, v7);
    v42 = a1;
    v24 = v7;
    v25 = *(v8 + 80);
    v39 = v11;
    v26 = swift_allocObject();
    v27 = v45;
    *(v26 + 2) = v47;
    *(v26 + 3) = v27;
    *(v26 + 4) = a2;
    v38 = a2;
    *(v26 + 5) = v46;
    v40 = *(v8 + 32);
    v40(&v26[(v25 + 48) & ~v25], v11, v24);
    v52 = sub_10F73C;
    v53 = v26;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_105C48;
    v51 = &unk_15A170;
    v28 = _Block_copy(&aBlock);
    v29 = v22;
    v30 = v47;

    v31 = [v29 addSuccessBlock:v28];
    _Block_release(v28);

    v32 = v39;
    v44(v39, v42, v24);
    v33 = swift_allocObject();
    v40((v33 + ((v25 + 16) & ~v25)), v32, v24);
    v52 = sub_10F86C;
    v53 = v33;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_105C50;
    v51 = &unk_15A1C0;
    v34 = _Block_copy(&aBlock);
    v35 = v29;

    v36 = [v35 addFailureBlock:v34];

    _Block_release(v34);
  }

  else
  {
    v37 = v47;
  }
}

uint64_t sub_1083EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v9 = sub_125ABC();
  sub_5B30(v9, qword_162E10);
  v10 = a2;
  v11 = sub_125AAC();
  v12 = sub_125DFC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v13 = 136315138;
    v14 = [v10 timerIDString];
    v24 = a4;
    v15 = sub_125B9C();
    v17 = v16;

    v18 = sub_8530(v15, v17, &v25);

    *(v13 + 4) = v18;
    a4 = v24;
    _os_log_impl(&dword_0, v11, v12, "RecreateDeletedTimerFlow: Added mtTimer successfully with ID %s", v13, 0xCu);
    sub_5BB0(v23);
  }

  v19 = *(a4 + 96);
  swift_beginAccess();
  *(a3 + 16) = v19;
  v20 = sub_FF264();
  swift_beginAccess();
  v21 = *(a5 + 16);
  *(a5 + 16) = v20;

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_108614()
{
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v0 = sub_125ABC();
  sub_5B30(v0, qword_162E10);
  swift_errorRetain();
  v1 = sub_125AAC();
  v2 = sub_125DEC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "RecreateDeletedTimerFlow: Added mtTimer failed with error %@", v3, 0xCu);
    sub_5CA8(v4, &unk_160540, &unk_1295A0);
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_108784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v18 = a1;
  v7 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  sub_2F488(a2 + 40, v22);
  v20 = v22[4];
  v19 = sub_23B08(v22, v22[3]);
  sub_1255EC();

  v13 = sub_F2998(v12, 1);

  (*(v8 + 16))(v11, v18, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a2;
  *(v15 + 4) = v21;
  (*(v8 + 32))(&v15[v14], v11, v7);

  sub_12582C();

  return sub_5BB0(v22);
}

void sub_10896C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v45 = a4;
  v46 = a3;
  v7 = sub_12571C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v44 = *(v47 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v47);
  v43 = v42 - v13;
  v14 = sub_5AE8(&qword_160AE8, &qword_1284F8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v42 - v16);
  sub_E344(a1, v42 - v16, &qword_160AE8, &qword_1284F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v17, v7);
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    v18 = sub_125ABC();
    sub_5B30(v18, qword_162E10);
    v19 = sub_125AAC();
    v20 = sub_125DFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "Failed to create timer", v21, 2u);
    }

    sub_125D1C();
    v22 = sub_12547C();
    v50 = v22;
    v51 = &protocol witness table for ABCReport;
    v23 = sub_23B4C(v49);
    sub_10FA4C(&qword_160AE0, &type metadata accessor for TimerOperationError);
    swift_allocError();
    (*(v8 + 16))(v24, v11, v7);
    *v23 = sub_122E7C();
    v25 = enum case for ErrorSubType.managerReturnedError(_:);
    v26 = sub_12515C();
    (*(*(v26 - 8) + 104))(v23, v25, v26);
    (*(*(v22 - 8) + 104))(v23, enum case for ABCReport.timerUndoHandle(_:), v22);
    sub_1251AC();
    (*(v8 + 8))(v11, v7);
    sub_5BB0(v49);
  }

  else
  {
    v27 = *v17;
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    v28 = sub_125ABC();
    sub_5B30(v28, qword_162E10);
    v29 = sub_125AAC();
    v30 = sub_125DFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Successfully created", v31, 2u);
    }

    swift_beginAccess();
    v32 = *(a2 + 16);
    *(a2 + 16) = v27;
    v33 = v27;

    if (v46[96] == 1)
    {
      sub_2F488((v46 + 40), v49);
      v46 = v51;
      v42[1] = sub_23B08(v49, v50);
      sub_8BAC();
      v34 = v33;
      isa = sub_125EEC(0).super.super.isa;
      v36 = [objc_allocWithZone(sub_12555C()) init];
      [v34 setShouldMatchAny:isa];
      [v36 setTargetTimer:v34];

      v38 = v43;
      v37 = v44;
      v39 = v47;
      (*(v44 + 16))(v43, v48, v47);
      v40 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v45;
      (*(v37 + 32))(v41 + v40, v38, v39);

      sub_12581C();

      sub_5BB0(v49);
    }

    else
    {

      sub_125D1C();
    }
  }
}

uint64_t sub_108FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_12571C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_160AD8, &qword_1284F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v28[-1] - v11;
  sub_E344(a1, &v28[-1] - v11, &qword_160AD8, &qword_1284F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    v13 = sub_125ABC();
    sub_5B30(v13, qword_162E10);
    v14 = sub_125AAC();
    v15 = sub_125DFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "failed to pause the created timer", v16, 2u);
    }

    v17 = sub_12547C();
    v28[3] = v17;
    v28[4] = &protocol witness table for ABCReport;
    v18 = sub_23B4C(v28);
    sub_10FA4C(&qword_160AE0, &type metadata accessor for TimerOperationError);
    swift_allocError();
    (*(v5 + 16))(v19, v8, v4);
    *v18 = sub_122E7C();
    v20 = enum case for ErrorSubType.managerReturnedError(_:);
    v21 = sub_12515C();
    (*(*(v21 - 8) + 104))(v18, v20, v21);
    (*(*(v17 - 8) + 104))(v18, enum case for ABCReport.timerUndoHandle(_:), v17);
    sub_1251AC();
    (*(v5 + 8))(v8, v4);
    sub_5BB0(v28);
  }

  else
  {
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    v22 = sub_125ABC();
    sub_5B30(v22, qword_162E10);
    v23 = sub_125AAC();
    v24 = sub_125DFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Successfully paused", v25, 2u);
    }

    swift_beginAccess();
    *(a2 + 16) = 1;
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t RecreateDeletedTimerFlow.execute(completion:)()
{
  type metadata accessor for RecreateDeletedTimerFlow();
  sub_10FA4C(&qword_160638, type metadata accessor for RecreateDeletedTimerFlow);
  return sub_12344C();
}

uint64_t sub_1094BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
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

  return _swift_task_switch(sub_1097F4, 0, 0);
}

uint64_t sub_1097F4()
{
  (*(v0[24] + 104))(v0[25], enum case for ActivityType.failed(_:), v0[23]);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_1678B8);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[22];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[15];
  v32 = v0[16];
  v30 = v0[23];
  v31 = v0[14];
  v10 = v0[3];
  v11 = sub_124FEC();
  v12 = sub_5B30(v11, qword_1678D0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v7, v12, v11);
  (*(v13 + 56))(v7, 0, 1, v11);
  v14 = sub_124FCC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8, v10, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  sub_124FBC();
  sub_5CA8(v8, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v7, &qword_15F6F0, &unk_128340);
  sub_5CA8(v6, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v5, v30);
  (*(v9 + 104))(v32, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v31);
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v16 = v0[19];
  v17 = v0[16];
  v19 = v0[12];
  v18 = v0[13];
  v20 = v0[11];
  v21 = v0[4];
  v22 = sub_5B30(v20, qword_162E10);
  v0[26] = v22;
  (*(v19 + 16))(v18, v22, v20);
  mach_absolute_time();
  sub_12502C();
  v23 = *(v21 + 32);
  v24 = sub_124EAC();
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v25 = sub_124E9C();
  v0[27] = v25;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v26 = swift_allocObject();
  *(v26 + 32) = 0x656369766564;
  *(v26 + 40) = 0xE600000000000000;
  *(v26 + 72) = v24;
  v27 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v33 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0[28] = v26;
  *(v26 + 16) = xmmword_126CB0;
  *(v26 + 48) = v25;

  v28 = swift_task_alloc();
  v0[29] = v28;
  *v28 = v0;
  v28[1] = sub_109C90;

  return v33(0xD000000000000011, 0x800000000012C010, v26);
}

uint64_t sub_109C90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *(*v2 + 224);
  v7 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v8 = sub_10A078;
  }

  else
  {
    *(v4 + 248) = a1;
    v8 = sub_109DDC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_109DDC()
{
  v1 = v0[27];
  v2 = v0[10];
  v3 = v0[7];

  sub_12364C();
  sub_12391C();
  v4 = async function pointer to PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)[1];
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_109EA4;
  v6 = v0[31];
  v7 = v0[19];
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[2];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v10, v8, v9, v7);
}

uint64_t sub_109EA4()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
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

uint64_t sub_10A078()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  (*(v4 + 8))(v3, v5);
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Failed to produce Incomplete response.", v8, 2u);
  }

  v9 = v0[30];
  v10 = v0[2];

  sub_12383C();

  v11 = v0[25];
  v12 = v0[21];
  v13 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10A1F4(uint64_t a1, char a2)
{
  v5 = *(*(sub_5AE8(&qword_15F6E8, &unk_1271C0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_5AE8(&qword_15F6F0, &unk_128340) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = *(*(sub_5AE8(&qword_15F6F8, &qword_1271D0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_12370C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v11 = swift_task_alloc();
  v2[18] = v11;
  *v11 = v2;
  v11[1] = sub_10A3A4;

  return sub_10B10C((v2 + 2), a1, a2);
}

uint64_t sub_10A3A4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10A96C;
  }

  else
  {
    v3 = sub_10A4B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10A4B8()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_10A57C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_10A57C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10AD34;
  }

  else
  {
    v3 = sub_10A690;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10A690()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_5BB0(v0 + 7);
  (*(v2 + 104))(v1, enum case for ActivityType.completed(_:), v3);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v4 = v0[14];
  v5 = sub_124FDC();
  sub_5B30(v5, qword_1678B8);
  v6 = sub_12353C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = sub_124FEC();
  v14 = sub_5B30(v13, qword_1678D0);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  v16 = sub_124FCC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_124FBC();
  sub_5CA8(v12, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v11, &qword_15F6F0, &unk_128340);
  sub_5CA8(v10, &qword_15F6F8, &qword_1271D0);
  (*(v8 + 8))(v7, v9);
  sub_5BB0(v0 + 2);
  v17 = v0[17];
  v18 = v0[13];
  v19 = v0[14];
  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10A96C()
{
  v26 = v0[19];
  (*(v0[16] + 104))(v0[17], enum case for ActivityType.failed(_:), v0[15]);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_1678B8);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = sub_124FEC();
  v11 = sub_5B30(v10, qword_1678D0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  v13 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v14 = sub_124FCC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  sub_124FBC();
  sub_5CA8(v9, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v8, &qword_15F6F0, &unk_128340);
  sub_5CA8(v7, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v5, v6);
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v16 = sub_125ABC();
  sub_5B30(v16, qword_162E10);
  v17 = sub_125AAC();
  v18 = sub_125DEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Error producing and submitting output", v19, 2u);
  }

  v20 = v0[17];
  v21 = v0[13];
  v22 = v0[14];
  v23 = v0[12];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10AD34()
{
  sub_5BB0(v0 + 2);
  sub_5BB0(v0 + 7);
  v26 = v0[21];
  (*(v0[16] + 104))(v0[17], enum case for ActivityType.failed(_:), v0[15]);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_1678B8);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = sub_124FEC();
  v11 = sub_5B30(v10, qword_1678D0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  v13 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v14 = sub_124FCC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  sub_124FBC();
  sub_5CA8(v9, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v8, &qword_15F6F0, &unk_128340);
  sub_5CA8(v7, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v5, v6);
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v16 = sub_125ABC();
  sub_5B30(v16, qword_162E10);
  v17 = sub_125AAC();
  v18 = sub_125DEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Error producing and submitting output", v19, 2u);
  }

  v20 = v0[17];
  v21 = v0[13];
  v22 = v0[14];
  v23 = v0[12];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10B10C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 392) = a2;
  *(v4 + 400) = v3;
  *(v4 + 960) = a3;
  *(v4 + 384) = a1;
  TimerHandledOnWatchParameters = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  *(v4 + 408) = TimerHandledOnWatchParameters;
  v6 = *(*(TimerHandledOnWatchParameters - 8) + 64) + 15;
  *(v4 + 416) = swift_task_alloc();
  v7 = sub_123B3C();
  *(v4 + 424) = v7;
  v8 = *(v7 - 8);
  *(v4 + 432) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  v10 = sub_12503C();
  *(v4 + 456) = v10;
  v11 = *(v10 - 8);
  *(v4 + 464) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 472) = swift_task_alloc();
  v13 = sub_12368C();
  *(v4 + 480) = v13;
  v14 = *(v13 - 8);
  *(v4 + 488) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();
  v16 = sub_1260DC();
  *(v4 + 512) = v16;
  v17 = *(v16 - 8);
  *(v4 + 520) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 528) = swift_task_alloc();
  v19 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  v20 = sub_1250BC();
  *(v4 + 552) = v20;
  v21 = *(v20 - 8);
  *(v4 + 560) = v21;
  v22 = *(v21 + 64) + 15;
  *(v4 + 568) = swift_task_alloc();
  v23 = sub_125ABC();
  *(v4 + 576) = v23;
  v24 = *(v23 - 8);
  *(v4 + 584) = v24;
  v25 = *(v24 + 64) + 15;
  *(v4 + 592) = swift_task_alloc();
  v26 = sub_124FFC();
  *(v4 + 600) = v26;
  v27 = *(v26 - 8);
  *(v4 + 608) = v27;
  v28 = *(v27 + 64) + 15;
  *(v4 + 616) = swift_task_alloc();
  v29 = sub_12501C();
  *(v4 + 624) = v29;
  v30 = *(v29 - 8);
  *(v4 + 632) = v30;
  v31 = *(v30 + 64) + 15;
  *(v4 + 640) = swift_task_alloc();
  v32 = sub_12392C();
  *(v4 + 648) = v32;
  v33 = *(v32 - 8);
  *(v4 + 656) = v33;
  v34 = *(v33 + 64) + 15;
  *(v4 + 664) = swift_task_alloc();
  v35 = sub_124F2C();
  *(v4 + 672) = v35;
  v36 = *(v35 - 8);
  *(v4 + 680) = v36;
  v37 = *(v36 + 64) + 15;
  *(v4 + 688) = swift_task_alloc();
  v38 = sub_124F1C();
  *(v4 + 696) = v38;
  v39 = *(v38 - 8);
  *(v4 + 704) = v39;
  v40 = *(v39 + 64) + 15;
  *(v4 + 712) = swift_task_alloc();

  return _swift_task_switch(sub_10B624, 0, 0);
}

uint64_t sub_10B624()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 960);
  v9 = *(v0 + 392);
  (*(v2 + 104))(v1, enum case for TipKitSiriTimeSource.timerPlugin(_:), v3);
  (*(v5 + 104))(v4, enum case for TipKitSiriTimeContext.timerCreatedWithSiri(_:), v6);
  sub_12537C();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  *(v0 + 720) = sub_5AE8(&qword_160810, &unk_127420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126EB0;
  *(inited + 32) = v9;
  v9;
  sub_FF26C(inited, v7);
  swift_setDeallocating();
  v11 = *(inited + 16);
  swift_arrayDestroy();
  sub_124D9C();
  v12 = sub_124D8C();
  v13 = sub_113D6C(0, v12);

  *(v0 + 368) = v13;
  if (v8 == 1)
  {
    v14 = *(v0 + 392);
    v15 = sub_10F2B8();

    *(v0 + 368) = v15;
    v13 = v15;
  }

  else if (*(*(v0 + 400) + 96) == 1)
  {
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 576), qword_162E10);
    v16 = sub_125AAC();
    v17 = sub_125DFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Created the timer but its running even though it should have been paused.", v18, 2u);
    }
  }

  *(v0 + 728) = v13;
  v19 = [*(v0 + 392) identifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_125B9C();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(v0 + 736) = v23;
  sub_12573C();
  sub_12572C();
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);
  sub_23B08((v0 + 56), v24);
  v26 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
  v27 = swift_task_alloc();
  *(v0 + 744) = v27;
  *v27 = v0;
  v27[1] = sub_10B9B0;

  return dispatch thunk of SessionManaging.sessionIDString(for:)(v21, v23, v24, v25);
}

uint64_t sub_10B9B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 744);
  v5 = *(*v2 + 736);
  v7 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = a2;

  return _swift_task_switch(sub_10BB00, 0, 0);
}

uint64_t sub_10BB00()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  sub_5BB0((v0 + 56));
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v5 = *(v0 + 128);
  sub_23B08((v0 + 96), *(v0 + 120));
  v6 = sub_1235DC();
  *(v0 + 961) = v6 & 1;
  v7 = v6 & (v1 != 0);
  sub_5BB0((v0 + 96));
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 640);
  v9 = *(v0 + 616);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v12 = *(v0 + 576);
  v13 = sub_5B30(v12, qword_162E10);
  (*(v11 + 16))(v10, v13, v12);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  v14 = *(v0 + 168);
  sub_23B08((v0 + 136), *(v0 + 160));
  LOBYTE(v8) = sub_1235DC();
  sub_5BB0((v0 + 136));
  if (v7 & 1 | ((v8 & 1) == 0))
  {
    v15 = [*(v0 + 392) type];
    if (v15 < 2)
    {
      v16 = *(v0 + 568);
      v17 = *(v0 + 560);
      v18 = *(v0 + 552);
      sub_1250AC();
      v19 = sub_12504C();
      (*(v17 + 8))(v16, v18);
      if (v19)
      {
        v20 = *(*(v0 + 400) + 16);
        v21 = *(*(v0 + 728) + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
        v22 = *(v0 + 544);
        if (v21)
        {
          v23 = *(v0 + 528);
          v117 = *(*(v0 + 400) + 16);
          v24 = *(v0 + 520);
          v25 = *(v0 + 512);

          sub_1260CC();
          *(v0 + 280) = v25;
          *(v0 + 288) = &off_1592B0;
          v26 = sub_23B4C((v0 + 256));
          (*(v24 + 16))(v26, v23, v25);
          v114 = type metadata accessor for DefaultCircuitBreaker();
          v27 = swift_allocObject();
          v28 = *(v0 + 280);
          v29 = sub_23C74(v0 + 256, v28);
          v30 = *(v28 - 8);
          v31 = *(v30 + 64) + 15;
          v112 = v22;
          v32 = swift_task_alloc();
          (*(v30 + 16))(v32, v29, v28);
          *(v27 + 56) = v25;
          *(v27 + 64) = &off_1592B0;
          v33 = sub_23B4C((v27 + 32));
          (*(v24 + 32))(v33, v32, v25);
          *(v27 + 72) = sub_1262EC();
          *(v27 + 80) = v34;
          *(v27 + 16) = xmmword_129E00;
          sub_5BB0((v0 + 256));

          (*(v24 + 8))(v23, v25);
          *(v0 + 240) = v114;
          *(v0 + 248) = &off_1592C0;
          *(v0 + 216) = v27;
          sub_A983C(v21, (v0 + 216), v112);

          sub_5BB0((v0 + 216));
          v35 = sub_124E4C();
          (*(*(v35 - 8) + 56))(v112, 0, 1, v35);
        }

        else
        {
          v105 = sub_124E4C();
          (*(*(v105 - 8) + 56))(v22, 1, 1, v105);
        }

        v106 = *(v0 + 728);
        v107 = swift_task_alloc();
        *(v0 + 768) = v107;
        *v107 = v0;
        v107[1] = sub_10C77C;
        v108 = *(v0 + 544);

        return sub_8ED04(v106, v108);
      }

      v67 = *(*(v0 + 400) + 32);
      v68 = &dword_127A18;
      v69 = 0x3FFFFFFFFFFC261CLL;
      v70 = swift_task_alloc();
      *(v0 + 800) = v70;
      *v70 = v0;
      v71 = sub_10CD78;
      goto LABEL_20;
    }

    if (v15 == &dword_0 + 2)
    {
      v67 = *(*(v0 + 400) + 32);
      v68 = &dword_127A20;
      v69 = 0x3FFFFFFFFFFC289ELL;
      v70 = swift_task_alloc();
      *(v0 + 840) = v70;
      *v70 = v0;
      v71 = sub_10D38C;
LABEL_20:
      v70[1] = v71;

      return (&v68[v69])(v67, v0 + 368);
    }

    v82 = *(*(v0 + 400) + 32);
    v83 = sub_124EAC();
    sub_12523C();
    sub_12522C();

    v84 = sub_124E9C();
    *(v0 + 856) = v84;
    sub_5AE8(&qword_15F180, &unk_126E10);
    v85 = swift_allocObject();
    *(v0 + 864) = v85;
    *(v85 + 16) = xmmword_126CB0;
    *(v85 + 32) = 0x656369766564;
    *(v85 + 40) = 0xE600000000000000;
    *(v85 + 72) = v83;
    *(v85 + 48) = v84;
    v86 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v87 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);

    v88 = swift_task_alloc();
    *(v0 + 872) = v88;
    *v88 = v0;
    v88[1] = sub_10D63C;
    v63 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v87);
    v65 = 0x800000000012C010;
    v64 = 0xD000000000000011;
    v66 = v85;
    goto LABEL_23;
  }

  v36 = *(v0 + 720);
  v37 = *(v0 + 392);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_126EB0;
  *(v38 + 32) = v37;
  v39 = v37;
  v40 = sub_648C8(v38, 13);
  *(v0 + 888) = v40;

  if (v40)
  {
    v41 = objc_opt_self();
    *(v0 + 376) = 0;
    v42 = [v41 archivedDataWithRootObject:v40 requiringSecureCoding:1 error:v0 + 376];
    v43 = *(v0 + 376);
    if (v42)
    {
      v44 = v42;
      v118 = *(v0 + 728);
      v45 = *(v0 + 536);
      v47 = *(v0 + 408);
      v46 = *(v0 + 416);
      v48 = *(v0 + 400);
      v49 = v43;
      v50 = sub_122EFC();
      v52 = v51;

      *(v0 + 896) = v50;
      *(v0 + 904) = v52;
      v115 = *(v48 + 32);
      sub_E430(v50, v52);
      *v46 = 0;
      *(v46 + 1) = 0;
      v53 = *(v47 + 24);
      v54 = sub_124E4C();
      v55 = *(*(v54 - 8) + 56);
      v55(&v46[v53], 1, 1, v54);
      v56 = *(v47 + 28);
      v55(&v46[v56], 1, 1, v54);
      sub_122EEC(0);
      sub_124E1C();
      v55(v45, 0, 1, v54);
      sub_7CC5C(v45, &v46[v56], &unk_15F170, &unk_126E00);
      *(v46 + 1) = v118;
      sub_124DEC();
      v57 = qword_15EEA8;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 416);

      *v58 = sub_124DDC();
      v59 = sub_30F60();
      *(v0 + 912) = v59;
      v60 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v61 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v62 = swift_task_alloc();
      *(v0 + 920) = v62;
      *v62 = v0;
      v62[1] = sub_10DAE8;
      v63 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v61);
      v64 = 0xD00000000000001ALL;
      v65 = 0x800000000012CF70;
      v66 = v59;
LABEL_23:

      return v63(v64, v65, v66);
    }

    v89 = *(v0 + 760);
    v90 = *(v0 + 728);
    v91 = *(v0 + 640);
    v92 = *(v0 + 632);
    v93 = *(v0 + 624);
    v94 = v43;

    sub_122E8C();

    swift_willThrow();
    (*(v92 + 8))(v91, v93);
  }

  else
  {
    v72 = *(v0 + 760);

    v73 = sub_125AAC();
    v74 = sub_125DFC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "Could not get timer action from timer.", v75, 2u);
    }

    v76 = *(v0 + 728);
    v77 = *(v0 + 640);
    v78 = *(v0 + 632);
    v79 = *(v0 + 624);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v80 = 1;
    swift_willThrow();
    (*(v78 + 8))(v77, v79);
  }

  v95 = *(v0 + 712);
  v96 = *(v0 + 688);
  v97 = *(v0 + 640);
  v98 = *(v0 + 616);
  v99 = *(v0 + 592);
  v100 = *(v0 + 568);
  v101 = *(v0 + 544);
  v102 = *(v0 + 536);
  v109 = *(v0 + 528);
  v110 = *(v0 + 504);
  v111 = *(v0 + 496);
  v103 = *(v0 + 472);
  v113 = *(v0 + 448);
  v116 = *(v0 + 440);
  v119 = *(v0 + 416);
  (*(*(v0 + 656) + 8))(*(v0 + 664), *(v0 + 648));

  v104 = *(v0 + 8);

  return v104();
}

uint64_t sub_10C77C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[96];
  v10 = *v2;
  v3[97] = a1;
  v3[98] = v1;

  if (v1)
  {
    v5 = v3[95];
    v6 = v3[91];
    sub_5CA8(v3[68], &unk_15F170, &unk_126E00);

    v7 = sub_10E510;
  }

  else
  {
    v8 = v3[91];
    sub_5CA8(v3[68], &unk_15F170, &unk_126E00);

    v7 = sub_10C91C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10C91C()
{
  v1 = *(v0 + 961);
  v2 = *(v0 + 760);
  v3 = *(v0 + 504);
  sub_12361C();
  if (v1 != 1 || v2 == 0)
  {
    v6 = *(v0 + 464);
    v5 = *(v0 + 472);
    v7 = *(v0 + 456);
    v8 = *(v0 + 392);
    sub_5AE8(&qword_15F940, &unk_127410);
    v9 = *(sub_124F4C() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_126CB0;
    sub_1135FC(v12 + v11);
    sub_12521C();
    (*(v6 + 104))(v5, enum case for SiriTimePluginModel.timerMulti(_:), v7);
    *(v0 + 200) = v7;
    *(v0 + 208) = sub_10FA4C(&qword_15F930, &type metadata accessor for SiriTimePluginModel);
    v13 = sub_23B4C((v0 + 176));
    (*(v6 + 32))(v13, v5, v7);
  }

  else
  {
    *(v0 + 208) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
  }

  v14 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v15 = swift_task_alloc();
  *(v0 + 792) = v15;
  *v15 = v0;
  v15[1] = sub_10CB98;
  v16 = *(v0 + 776);
  v17 = *(v0 + 760);
  v18 = *(v0 + 752);
  v19 = *(v0 + 664);
  v20 = *(v0 + 640);
  v21 = *(v0 + 504);
  v22 = *(v0 + 384);

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v22, v21, v19, v0 + 176, v20, v18, v17, 0xD000000000000013);
}

uint64_t sub_10CB98()
{
  v1 = *v0;
  v2 = *(*v0 + 792);
  v3 = *(*v0 + 776);
  v4 = *(*v0 + 760);
  v5 = *(*v0 + 504);
  v6 = *(*v0 + 488);
  v7 = *(*v0 + 480);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  sub_5CA8(v1 + 176, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_10FBF8, 0, 0);
}

uint64_t sub_10CD78(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 800);
  v8 = *v2;
  v3[101] = a1;
  v3[102] = v1;

  if (v1)
  {
    v5 = v3[95];

    v6 = sub_10E6CC;
  }

  else
  {
    v6 = sub_10CECC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10CECC()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[83];
  v4 = v0[62];
  v5 = v0[56];
  sub_12361C();
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  sub_123B0C();

  v7 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v8 = swift_task_alloc();
  v0[103] = v8;
  *v8 = v0;
  v8[1] = sub_10D018;
  v9 = v0[101];
  v10 = v0[80];
  v11 = v0[56];
  v12 = v0[48];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v12, v11, v10);
}

uint64_t sub_10D018()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;
  *(*v1 + 832) = v0;

  v5 = v2[101];
  (*(v2[54] + 8))(v2[56], v2[53]);

  if (v0)
  {
    v6 = sub_10E888;
  }

  else
  {
    v6 = sub_10D1CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10D1CC()
{
  v1 = v0[91];
  v2 = v0[89];
  v3 = v0[86];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[81];
  v7 = v0[77];
  v8 = v0[74];
  v12 = v0[71];
  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[63];
  v17 = v0[62];
  v9 = v0[59];
  v18 = v0[56];
  v19 = v0[55];
  v20 = v0[52];
  (*(v0[79] + 8))(v0[80], v0[78]);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10D38C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[37] = v2;
  v4[38] = a1;
  v4[39] = v1;
  v5 = v3[105];
  v9 = *v2;
  v4[106] = v1;

  if (v1)
  {
    v6 = v4[95];

    v7 = sub_10E354;
  }

  else
  {
    v7 = sub_10D4E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10D4E4()
{
  v1 = v0[38];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[83];
  v5 = v0[62];
  v6 = v0[55];
  v0[117] = v1;
  v1;
  sub_12361C();
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v2;
  sub_123B0C();

  v8 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v9 = swift_task_alloc();
  v0[118] = v9;
  *v9 = v0;
  v9[1] = sub_10DFD8;
  v10 = v0[80];
  v11 = v0[55];
  v12 = v0[48];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v12, v11, v10);
}

uint64_t sub_10D63C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[40] = v2;
  v4[41] = a1;
  v4[42] = v1;
  v5 = v3[109];
  v6 = *v2;
  v4[110] = v1;

  v7 = v3[108];
  if (v1)
  {
    v8 = v4[95];

    v9 = sub_10D91C;
  }

  else
  {

    v9 = sub_10D7BC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10D7BC()
{
  v1 = v0[107];

  v2 = v0[41];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[83];
  v6 = v0[62];
  v7 = v0[55];
  v0[117] = v2;
  v2;
  sub_12361C();
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  sub_123B0C();

  v9 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v10 = swift_task_alloc();
  v0[118] = v10;
  *v10 = v0;
  v10[1] = sub_10DFD8;
  v11 = v0[80];
  v12 = v0[55];
  v13 = v0[48];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v13, v12, v11);
}

uint64_t sub_10D91C()
{
  v1 = v0[107];
  v2 = v0[91];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];

  (*(v4 + 8))(v3, v5);

  v6 = v0[89];
  v7 = v0[86];
  v8 = v0[80];
  v9 = v0[77];
  v10 = v0[74];
  v11 = v0[71];
  v12 = v0[68];
  v13 = v0[67];
  v17 = v0[110];
  v18 = v0[66];
  v19 = v0[63];
  v20 = v0[62];
  v14 = v0[59];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[52];
  (*(v0[82] + 8))(v0[83], v0[81]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10DAE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[43] = v2;
  v4[44] = a1;
  v4[45] = v1;
  v5 = v3[115];
  v6 = *v2;
  v4[116] = v1;

  v7 = v3[114];

  if (v1)
  {
    v8 = sub_10DDD8;
  }

  else
  {
    v8 = sub_10DC50;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10DC50()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  sub_10F25C(v0[52]);
  sub_E498(v2, v1);

  sub_E498(v2, v1);
  v4 = v0[44];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[83];
  v8 = v0[62];
  v9 = v0[55];
  v0[117] = v4;
  v4;
  sub_12361C();
  v10 = swift_task_alloc();
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v5;
  sub_123B0C();

  v11 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v12 = swift_task_alloc();
  v0[118] = v12;
  *v12 = v0;
  v12[1] = sub_10DFD8;
  v13 = v0[80];
  v14 = v0[55];
  v15 = v0[48];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v15, v14, v13);
}

uint64_t sub_10DDD8()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[95];
  v5 = v0[91];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  sub_10F25C(v0[52]);
  sub_E498(v2, v1);

  sub_E498(v2, v1);

  (*(v7 + 8))(v6, v8);

  v9 = v0[89];
  v10 = v0[86];
  v11 = v0[80];
  v12 = v0[77];
  v13 = v0[74];
  v14 = v0[71];
  v15 = v0[68];
  v16 = v0[67];
  v20 = v0[116];
  v21 = v0[66];
  v22 = v0[63];
  v23 = v0[62];
  v17 = v0[59];
  v24 = v0[56];
  v25 = v0[55];
  v26 = v0[52];
  (*(v0[82] + 8))(v0[83], v0[81]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10DFD8()
{
  v2 = *v1;
  v3 = *(*v1 + 944);
  v4 = *v1;
  *(*v1 + 952) = v0;

  v5 = v2[117];
  (*(v2[54] + 8))(v2[55], v2[53]);

  if (v0)
  {
    v6 = sub_10EA44;
  }

  else
  {
    v6 = sub_10E18C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10E18C()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 688);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 616);
  v8 = *(v0 + 592);
  v12 = *(v0 + 568);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 528);
  v16 = *(v0 + 504);
  v17 = *(v0 + 496);
  v9 = *(v0 + 472);
  v18 = *(v0 + 448);
  v19 = *(v0 + 440);
  v20 = *(v0 + 416);
  (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));

  (*(v5 + 8))(v4, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10E354()
{
  v1 = v0[91];
  (*(v0[79] + 8))(v0[80], v0[78]);

  v2 = v0[89];
  v3 = v0[86];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[74];
  v7 = v0[71];
  v8 = v0[68];
  v9 = v0[67];
  v13 = v0[106];
  v14 = v0[66];
  v15 = v0[63];
  v16 = v0[62];
  v10 = v0[59];
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[52];
  (*(v0[82] + 8))(v0[83], v0[81]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10E510()
{
  v1 = v0[91];
  (*(v0[79] + 8))(v0[80], v0[78]);

  v2 = v0[89];
  v3 = v0[86];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[74];
  v7 = v0[71];
  v8 = v0[68];
  v9 = v0[67];
  v13 = v0[98];
  v14 = v0[66];
  v15 = v0[63];
  v16 = v0[62];
  v10 = v0[59];
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[52];
  (*(v0[82] + 8))(v0[83], v0[81]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10E6CC()
{
  v1 = v0[91];
  (*(v0[79] + 8))(v0[80], v0[78]);

  v2 = v0[89];
  v3 = v0[86];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[74];
  v7 = v0[71];
  v8 = v0[68];
  v9 = v0[67];
  v13 = v0[102];
  v14 = v0[66];
  v15 = v0[63];
  v16 = v0[62];
  v10 = v0[59];
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[52];
  (*(v0[82] + 8))(v0[83], v0[81]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10E888()
{
  v1 = v0[91];
  (*(v0[79] + 8))(v0[80], v0[78]);

  v2 = v0[89];
  v3 = v0[86];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[74];
  v7 = v0[71];
  v8 = v0[68];
  v9 = v0[67];
  v13 = v0[104];
  v14 = v0[66];
  v15 = v0[63];
  v16 = v0[62];
  v10 = v0[59];
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[52];
  (*(v0[82] + 8))(v0[83], v0[81]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10EA44()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 712);
  v6 = *(v0 + 688);
  v7 = *(v0 + 640);
  v8 = *(v0 + 616);
  v9 = *(v0 + 592);
  v10 = *(v0 + 568);
  v11 = *(v0 + 544);
  v12 = *(v0 + 536);
  v16 = *(v0 + 952);
  v17 = *(v0 + 528);
  v18 = *(v0 + 504);
  v19 = *(v0 + 496);
  v13 = *(v0 + 472);
  v20 = *(v0 + 448);
  v21 = *(v0 + 440);
  v22 = *(v0 + 416);
  (*(*(v0 + 656) + 8))(*(v0 + 664), *(v0 + 648));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10EC10(uint64_t a1, uint64_t a2)
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

uint64_t RecreateDeletedTimerFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_5BB0((v0 + 40));

  v4 = *(v0 + 88);

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction, &qword_160838, &qword_128330);
  return v0;
}

uint64_t RecreateDeletedTimerFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_5BB0((v0 + 40));

  v4 = *(v0 + 88);

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction, &qword_160838, &qword_128330);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10EE68()
{
  v2 = *v0;
  type metadata accessor for RecreateDeletedTimerFlow();
  return sub_12344C();
}

uint64_t sub_10EEC8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return RecreateDeletedTimerFlow.execute()(a1);
}

uint64_t sub_10EF64()
{
  type metadata accessor for RecreateDeletedTimerFlow();

  return sub_12347C();
}

uint64_t sub_10EFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_124EDC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v12 = sub_12587C();
  v13 = &protocol witness table for SiriTimerManagerImpl;
  *&v11 = a1;
  type metadata accessor for CreateTimerCATsSimple();
  sub_124ECC();
  *(a3 + 16) = sub_124E7C();
  type metadata accessor for CreateTimerCATs_Async();
  sub_124ECC();
  *(a3 + 24) = sub_124DBC();
  type metadata accessor for CreateTimerCATPatternsExecutor(0);
  sub_124ECC();
  *(a3 + 32) = sub_124DBC();
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction;
  v9 = sub_12372C();
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  sub_7D780(&v11, a3 + 40);
  *(a3 + 80) = a2;
  return a3;
}

uint64_t sub_10F114()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10F16C()
{
  sub_FEEC0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10F23C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_10EC10(a1, v1[2]);
}

uint64_t sub_10F25C(uint64_t a1)
{
  TimerHandledOnWatchParameters = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  (*(*(TimerHandledOnWatchParameters - 8) + 8))(a1, TimerHandledOnWatchParameters);
  return a1;
}

uint64_t sub_10F2B8()
{
  v0 = sub_5AE8(&unk_15F170, &unk_126E00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v27 - v2;
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v4 = sub_125ABC();
  sub_5B30(v4, qword_162E10);
  v5 = sub_125AAC();
  v6 = sub_125DFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Producing dialog to indicate we created a paused timer.", v7, 2u);
  }

  sub_124D9C();
  v8 = sub_124D8C();
  v9 = sub_113D6C(0, v8);

  v10 = type metadata accessor for TimerTimer.Builder(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_94508();
  v14 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_label;
  v15 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_label;
  swift_beginAccess();
  sub_10F5E4(v9 + v14, v13 + v15);
  swift_endAccess();
  v16 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_type;
  v17 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_type;
  swift_beginAccess();
  sub_10F5E4(v9 + v16, v13 + v17);
  swift_endAccess();
  sub_1258AC();
  v18 = sub_124E4C();
  (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
  v19 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_state;
  swift_beginAccess();
  sub_7CC5C(v3, v13 + v19, &unk_15F170, &unk_126E00);
  swift_endAccess();
  v20 = *(v13 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_remainingTime);
  *(v13 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_remainingTime) = *(v9 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_remainingTime);

  v21 = *(v13 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_duration);
  *(v13 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_duration) = *(v9 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);

  v22 = type metadata accessor for TimerTimer(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_96BA0(v13);

  return v25;
}

uint64_t sub_10F5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10F654()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  v8 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10F73C(uint64_t a1)
{
  v3 = *(*(sub_5AE8(&qword_162BF8, &unk_12B690) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];

  return sub_1083EC(a1, v4, v5, v6, v7);
}

uint64_t sub_10F7C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10F7D8()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10F86C()
{
  v0 = *(*(sub_5AE8(&qword_162BF8, &unk_12B690) - 8) + 80);

  return sub_108614();
}

uint64_t sub_10F8E8()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10F9C8(uint64_t a1)
{
  v3 = *(sub_5AE8(&qword_162BF8, &unk_12B690) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_10896C(a1, v4, v5, v6, v7);
}

uint64_t sub_10FA4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10FA94()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10FB64(uint64_t a1)
{
  v3 = *(*(sub_5AE8(&qword_162BF8, &unk_12B690) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_108FC8(a1, v4);
}

uint64_t sub_10FBF8()
{

  return sub_10D1CC();
}

uint64_t sub_10FCD4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
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

uint64_t static Transformer<>.timerToAlarmParseTransformer.getter()
{
  sub_123D3C();

  return sub_124C8C();
}

uint64_t sub_10FDD4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162FD0);
  sub_5B30(v0, qword_162FD0);
  return sub_1257AC();
}

unint64_t sub_10FE20@<X0>(char *a1@<X0>, void (**a2)(char *, char *)@<X8>)
{
  v359 = a1;
  v321 = sub_123E8C();
  v320 = *(v321 - 8);
  v3 = *(v320 + 64);
  __chkstk_darwin(v321);
  v319 = &v299 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = sub_123E4C();
  v5 = *(v334 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v334);
  v333 = &v299 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123DAC();
  v332 = *(v8 - 8);
  v9 = *(v332 + 64);
  __chkstk_darwin(v8);
  v331 = &v299 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5AE8(&qword_160510, &qword_12B170);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v330 = &v299 - v13;
  v326 = sub_123D7C();
  v325 = *(v326 - 8);
  v14 = *(v325 + 64);
  v15 = __chkstk_darwin(v326);
  v318 = &v299 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v327 = &v299 - v17;
  v340 = sub_123D6C();
  v339 = *(v340 - 8);
  v18 = v339[8];
  v19 = __chkstk_darwin(v340);
  v317 = &v299 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v328 = &v299 - v22;
  __chkstk_darwin(v21);
  v342 = &v299 - v23;
  v337 = sub_122E6C();
  v338 = *(v337 - 8);
  v24 = *(v338 + 64);
  v25 = __chkstk_darwin(v337);
  v303 = &v299 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v299 - v27;
  v329 = sub_123D1C();
  v322 = *(v329 - 8);
  v29 = *(v322 + 64);
  v30 = __chkstk_darwin(v329);
  v308 = &v299 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v315 = &v299 - v33;
  __chkstk_darwin(v32);
  v316 = &v299 - v34;
  v35 = sub_5AE8(&qword_162FE8, qword_12B9A0);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v304 = &v299 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v335 = &v299 - v40;
  v41 = __chkstk_darwin(v39);
  v313 = &v299 - v42;
  v43 = __chkstk_darwin(v41);
  v312 = &v299 - v44;
  __chkstk_darwin(v43);
  v324 = &v299 - v45;
  v46 = sub_5AE8(&qword_160568, &unk_1280F0);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v345 = &v299 - v48;
  v341 = sub_12418C();
  v343 = *(v341 - 8);
  v49 = *(v343 + 64);
  v50 = __chkstk_darwin(v341);
  v305 = &v299 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v310 = &v299 - v53;
  __chkstk_darwin(v52);
  v336 = &v299 - v54;
  v55 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55 - 8);
  v344 = &v299 - v57;
  v58 = sub_12412C();
  v59 = *(v58 - 8);
  v349 = v58;
  v350 = v59;
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  v62 = &v299 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TimerNLv3Intent();
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v354 = &v299 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_124BCC();
  v346 = *(v66 - 8);
  v347 = v66;
  v67 = *(v346 + 64);
  __chkstk_darwin(v66);
  v351 = &v299 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_123D3C();
  v356 = *(v69 - 8);
  v70 = *(v356 + 64);
  v71 = __chkstk_darwin(v69);
  v307 = &v299 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v302 = &v299 - v74;
  v75 = __chkstk_darwin(v73);
  v306 = &v299 - v76;
  v77 = __chkstk_darwin(v75);
  v314 = &v299 - v78;
  v79 = __chkstk_darwin(v77);
  v309 = &v299 - v80;
  v81 = __chkstk_darwin(v79);
  v311 = &v299 - v82;
  v83 = __chkstk_darwin(v81);
  v323 = &v299 - v84;
  __chkstk_darwin(v83);
  v357 = (&v299 - v85);
  if (qword_15F040 != -1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    v86 = sub_125ABC();
    v353 = sub_5B30(v86, qword_162FD0);
    v87 = sub_125AAC();
    v88 = sub_125DFC();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v352 = v8;
      *v89 = 0;
      _os_log_impl(&dword_0, v87, v88, "Transforming timer parse to alarm parse", v89, 2u);
      v8 = v352;
    }

    v355 = a2;

    v91 = v356;
    v90 = v357;
    v92 = *(v356 + 16);
    v352 = v356 + 16;
    v92(v357, v359, v69);
    v93 = (*(v91 + 88))(v90, v69);
    if (v93 == enum case for Parse.NLv3IntentOnly(_:))
    {
      v94 = v92;
      v95 = *(v91 + 96);
      v348 = v69;
      v95(v90, v69);
      v97 = v346;
      v96 = v347;
      v98 = v90;
      v99 = v351;
      (*(v346 + 32))(v351, v98, v347);
      (*(v97 + 16))(v354, v99, v96);
      if (qword_15EF78 != -1)
      {
        swift_once();
      }

      v100 = sub_F24A0();
      v101 = v344;
      v357 = v100;
      sub_12428C();
      v102 = v349;
      v103 = v350;
      v104 = (*(v350 + 48))(v101, 1, v349);
      v105 = v345;
      if (v104 == 1)
      {
        sub_5CA8(v101, &qword_15FF90, &unk_127BC0);
        v106 = v94;
      }

      else
      {
        v342 = v63;
        (*(v103 + 32))(v62, v101, v102);
        v114 = v105;
        v115 = v102;
        sub_1240EC();
        v116 = v343;
        v117 = v341;
        v118 = (*(v343 + 48))(v114, 1, v341);
        v301 = v94;
        if (v118 != 1)
        {
          v133 = v62;
          v134 = v336;
          (*(v116 + 32))(v336, v114, v117);
          v135 = sub_12417C();
          v136 = v117;
          v119 = v348;
          if (v137)
          {
            (*(v116 + 8))(v134, v136);
            (*(v350 + 8))(v133, v349);
          }

          else
          {
            v148 = v135;
            v149 = sub_12416C();
            v150 = v350;
            if ((v151 & 1) == 0)
            {
              v344 = v149;
              v187 = v343;
              v188 = *(v343 + 16);
              v189 = v310;
              v188(v310, v134, v136);
              v190 = sub_125AAC();
              v191 = sub_125DFC();
              v192 = os_log_type_enabled(v190, v191);
              v345 = v148;
              if (v192)
              {
                v193 = swift_slowAlloc();
                LODWORD(v340) = v191;
                v194 = v193;
                v339 = swift_slowAlloc();
                v360 = v339;
                *v194 = 136315138;
                v188(v305, v189, v136);
                v195 = sub_125BAC();
                v197 = v196;
                v359 = *(v187 + 8);
                (v359)(v189, v136);
                v198 = sub_8530(v195, v197, &v360);

                *(v194 + 4) = v198;
                _os_log_impl(&dword_0, v190, v340, "Converting to alarmTime from timerTime %s", v194, 0xCu);
                sub_5BB0(v339);
              }

              else
              {

                v359 = *(v187 + 8);
                (v359)(v189, v136);
              }

              v215 = v338;
              v216 = v324;
              sub_1240FC();
              v217 = sub_124EFC();

              v218 = v356;
              if (v217)
              {
                sub_124C0C();

                v219 = v337;
              }

              else
              {
                v219 = v337;
                (*(v215 + 56))(v216, 1, 1, v337);
              }

              v220 = v312;
              sub_112E98(v216, v312);
              v221 = *(v215 + 48);
              v222 = v221(v220, 1, v219);
              v300 = v133;
              if (v222 == 1)
              {
                sub_5CA8(v220, &qword_162FE8, qword_12B9A0);
              }

              else
              {
                v223 = v218;
                v224 = sub_122E4C();
                v226 = v225;
                (*(v215 + 8))(v220, v219);
                v227 = v345;
                if ((v226 & 1) == 0)
                {
                  v227 = v224;
                }

                v218 = v223;
                v345 = v227;
              }

              v228 = v311;
              v229 = v313;
              sub_112E98(v216, v313);
              if (v221(v229, 1, v219) == 1)
              {
                sub_5CA8(v229, &qword_162FE8, qword_12B9A0);
              }

              else
              {
                sub_122E5C();
                (*(v338 + 8))(v229, v219);
              }

              v230 = v348;
              v231 = v329;
              v232 = v322;
              v233 = v316;
              if (qword_15EF60 != -1)
              {
                swift_once();
              }

              sub_12428C();
              sub_12528C();

              v234 = v323;
              (*(v232 + 16))(v323, v233, v231);
              (*(v218 + 104))(v234, enum case for Parse.directInvocation(_:), v230);
              v235 = v218;
              v236 = v301;
              v301(v228, v234, v230);
              v237 = sub_125AAC();
              v238 = sub_125DFC();
              if (os_log_type_enabled(v237, v238))
              {
                v239 = swift_slowAlloc();
                v240 = swift_slowAlloc();
                v360 = v240;
                *v239 = 136315138;
                v236(v309, v228, v348);
                v241 = sub_125BAC();
                v242 = v232;
                v244 = v243;
                (*(v356 + 8))(v228, v348);
                v245 = sub_8530(v241, v244, &v360);

                *(v239 + 4) = v245;
                _os_log_impl(&dword_0, v237, v238, "Inference reformed alarm parse: %s", v239, 0xCu);
                sub_5BB0(v240);
                v230 = v348;

                (*(v242 + 8))(v316, v329);
                v235 = v356;
                sub_5CA8(v324, &qword_162FE8, qword_12B9A0);
                (v359)(v336, v341);
                v246 = v323;
                (*(v350 + 8))(v300, v349);
                sub_97EC(v354);
                (*(v346 + 8))(v351, v347);
                v247 = v355;
              }

              else
              {

                (*(v235 + 8))(v228, v230);
                (*(v232 + 8))(v233, v329);
                sub_5CA8(v324, &qword_162FE8, qword_12B9A0);
                (v359)(v336, v341);
                (*(v350 + 8))(v300, v349);
                sub_97EC(v354);
                (*(v346 + 8))(v351, v347);
                v247 = v355;
                v246 = v323;
              }

              return (*(v235 + 32))(v247, v246, v230);
            }

            (*(v343 + 8))(v134, v136);
            (*(v150 + 8))(v133, v349);
          }

          v106 = v301;
          goto LABEL_16;
        }

        (*(v103 + 8))(v62, v115);
        sub_5CA8(v114, &qword_160568, &unk_1280F0);
        v106 = v301;
      }

      v119 = v348;
LABEL_16:
      v120 = sub_125AAC();
      v121 = sub_125DEC();
      v122 = os_log_type_enabled(v120, v121);
      v123 = v355;
      if (v122)
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_0, v120, v121, "Not able to parse alarm time from timer NLv3 intent", v124, 2u);
      }

      sub_97EC(v354);
      (*(v97 + 8))(v351, v96);
      v125 = v123;
      v126 = v359;
      v127 = v119;
      return v106(v125, v126, v127);
    }

    if (v93 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v91 + 96))(v90, v69);
      v107 = *v90;
      swift_getObjectType();
      v108 = SIRINLUUserDialogAct.firstUsoTask.getter();
      if (v108)
      {
        v109 = v108;
        v110 = v335;
        sub_1128A4(v108, v335);
        v111 = v338;
        v112 = v337;
        v113 = (*(v338 + 48))(v110, 1, v337);
        v348 = v69;
        if (v113 == 1)
        {
          sub_5CA8(v110, &qword_162FE8, qword_12B9A0);
        }

        else
        {
          (*(v111 + 32))(v28, v110, v112);
          sub_122E4C();
          if ((v147 & 1) == 0)
          {
            sub_122E5C();
            if ((v178 & 1) == 0)
            {
              v359 = v28;
              if (sub_C6CBC())
              {
                sub_12432C();
                v209 = v315;
                if (v210)
                {
                  v357 = v107;
                  sub_125BDC();

                  v211 = objc_allocWithZone(INSpeakableString);
                  v212 = sub_125B8C();

                  v213 = [v211 initWithSpokenPhrase:v212];

                  if (v213)
                  {
                    v214 = [v213 spokenPhrase];

                    sub_125B9C();
                  }

                  v91 = v356;
                }

                else
                {
                }
              }

              else
              {
                v209 = v315;
              }

              sub_12528C();

              v264 = v322;
              v265 = v314;
              (*(v322 + 16))(v314, v209, v329);
              v266 = v348;
              (*(v91 + 104))(v265, enum case for Parse.directInvocation(_:), v348);
              v267 = v306;
              v92(v306, v265, v266);
              v268 = sub_125AAC();
              v269 = sub_125DFC();
              if (os_log_type_enabled(v268, v269))
              {
                v270 = swift_slowAlloc();
                v271 = swift_slowAlloc();
                v360 = v271;
                *v270 = 136315138;
                v92(v309, v267, v348);
                v272 = sub_125BAC();
                v274 = v273;
                (*(v356 + 8))(v267, v348);
                v275 = sub_8530(v272, v274, &v360);
                v91 = v356;

                *(v270 + 4) = v275;
                _os_log_impl(&dword_0, v268, v269, "Reformed alarm parse: %s", v270, 0xCu);
                sub_5BB0(v271);

                v266 = v348;

                swift_unknownObjectRelease();

                (*(v322 + 8))(v315, v329);
              }

              else
              {

                swift_unknownObjectRelease();

                (*(v91 + 8))(v267, v266);
                (*(v264 + 8))(v315, v329);
              }

              (*(v338 + 8))(v359, v337);
              return (*(v91 + 32))(v355, v314, v266);
            }
          }

          (*(v111 + 8))(v28, v112);
        }

        v179 = sub_125AAC();
        v180 = sub_125DEC();

        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v360 = v182;
          *v181 = 136315138;
          v361 = v109;
          sub_124BAC();

          v183 = sub_125BAC();
          v357 = v107;
          v185 = sub_8530(v183, v184, &v360);

          *(v181 + 4) = v185;
          _os_log_impl(&dword_0, v179, v180, "Could not get valid dateComponents from task: %s", v181, 0xCu);
          sub_5BB0(v182);

          v186 = v355;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();

          v186 = v355;
        }

        v144 = v186;
        v145 = v359;
        v146 = v348;
      }

      else
      {
        v141 = sub_125AAC();
        v142 = sub_125DEC();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_0, v141, v142, "Timer to alarm transformer: NLv4Intent has no task in userDialogAct.", v143, 2u);
        }

        swift_unknownObjectRelease();

        v144 = v355;
        v145 = v359;
        v146 = v69;
      }

      return (v92)(v144, v145, v146);
    }

    if (v93 != enum case for Parse.uso(_:))
    {
      v138 = sub_125AAC();
      v139 = sub_125DEC();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&dword_0, v138, v139, "Transformer should only be called for NLv4 parse. Check the caller to make sure it's not mis-used.", v140, 2u);
      }

      v92(v355, v359, v69);
      return (*(v91 + 8))(v357, v69);
    }

    v301 = v92;
    (*(v91 + 96))(v90, v69);
    (v339[4])(v342, v90, v340);
    v129 = v331;
    sub_123D5C();
    v63 = sub_123D9C();
    (*(v332 + 8))(v129, v8);
    v28 = *(v63 + 16);
    v62 = v334;
    v130 = v333;
    if (!v28)
    {
      break;
    }

    v8 = 0;
    a2 = (v5 + 8);
    while (v8 < *(v63 + 16))
    {
      (*(v5 + 16))(v130, v63 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v62);
      if (sub_123DBC())
      {

        v132 = v330;
        (*(v5 + 32))(v330, v130, v62);
        v131 = 0;
        goto LABEL_41;
      }

      ++v8;
      (*a2)(v130, v62);
      if (v28 == v8)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_112:
    swift_once();
  }

LABEL_26:

  v131 = 1;
  v132 = v330;
LABEL_41:
  (*(v5 + 56))(v132, v131, 1, v62);
  v152 = (*(v5 + 48))(v132, 1, v62);
  v153 = v132;
  v154 = v355;
  v155 = v339;
  v156 = v340;
  v157 = v5;
  v158 = v342;
  if (v152 == 1)
  {
    sub_5CA8(v132, &qword_160510, &qword_12B170);
    goto LABEL_45;
  }

  v159 = v319;
  sub_123E0C();
  (*(v157 + 8))(v153, v62);
  v160 = v318;
  sub_123E5C();
  (*(v320 + 8))(v159, v321);
  v161 = v325;
  v162 = v327;
  v163 = v326;
  (*(v325 + 32))(v327, v160, v326);
  v164 = v358;
  v165 = sub_123F0C();
  v358 = v164;
  if (!v164)
  {
    v357 = v165;
    result = sub_12424C();
    v199 = v301;
    if (result >> 62)
    {
      v298 = result;
      v200 = sub_1260FC();
      result = v298;
    }

    else
    {
      v200 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v201 = v356;
    v202 = v308;
    v203 = v307;
    if (!v200)
    {

      v248 = sub_125AAC();
      v249 = sub_125DEC();
      if (os_log_type_enabled(v248, v249))
      {
        v250 = swift_slowAlloc();
        *v250 = 0;
        _os_log_impl(&dword_0, v248, v249, "Timer to alarm transformer: USO graph has no tasks.", v250, 2u);
      }

      (*(v325 + 8))(v327, v326);
      (v155[1])(v342, v340);
      return v199(v154, v359, v69);
    }

    if ((result & 0xC000000000000001) != 0)
    {
      v204 = sub_125FFC();
    }

    else
    {
      if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v204 = *(result + 32);
    }

    v205 = v304;
    sub_1128A4(v204, v304);
    v206 = v338;
    v207 = v337;
    v208 = (*(v338 + 48))(v205, 1, v337);
    v348 = v69;
    if (v208 == 1)
    {
      sub_5CA8(v205, &qword_162FE8, qword_12B9A0);
LABEL_97:
      v255 = v339;
      v256 = v327;

      v257 = sub_125AAC();
      v258 = sub_125DEC();

      if (os_log_type_enabled(v257, v258))
      {
        v259 = swift_slowAlloc();
        v260 = swift_slowAlloc();
        v360 = v260;
        *v259 = 136315138;
        v361 = v204;
        sub_124BAC();

        v261 = sub_125BAC();
        v263 = sub_8530(v261, v262, &v360);
        v106 = v301;

        *(v259 + 4) = v263;
        _os_log_impl(&dword_0, v257, v258, "Could not get valid dateComponents from task: %s", v259, 0xCu);
        sub_5BB0(v260);

        v154 = v355;

        (*(v325 + 8))(v256, v326);
        (v255[1])(v342, v340);
      }

      else
      {

        (*(v325 + 8))(v256, v326);
        (v255[1])(v342, v340);
        v106 = v301;
      }

      v125 = v154;
      v126 = v359;
      v127 = v348;
      return v106(v125, v126, v127);
    }

    v251 = v205;
    v252 = v303;
    (*(v206 + 32))(v303, v251, v207);
    sub_122E4C();
    if (v253)
    {
      (*(v206 + 8))(v252, v207);
      goto LABEL_97;
    }

    sub_122E5C();
    if (v254)
    {
      (*(v338 + 8))(v252, v337);
      v154 = v355;
      goto LABEL_97;
    }

    if (sub_C6CBC())
    {
      sub_12432C();
      v276 = v302;
      if (v277)
      {
        sub_125BDC();

        v278 = objc_allocWithZone(INSpeakableString);
        v279 = sub_125B8C();

        v280 = [v278 initWithSpokenPhrase:v279];

        if (v280)
        {
          v281 = [v280 spokenPhrase];

          sub_125B9C();
        }

        v282 = v322;
        v201 = v356;
        v202 = v308;
        v203 = v307;
        goto LABEL_116;
      }
    }

    else
    {
      v276 = v302;
    }

    v282 = v322;
LABEL_116:
    sub_12528C();

    (*(v282 + 16))(v276, v202, v329);
    v283 = v348;
    (*(v201 + 104))(v276, enum case for Parse.directInvocation(_:), v348);
    v284 = v276;
    v285 = v301;
    v301(v203, v284, v283);
    v286 = sub_125AAC();
    v287 = sub_125DFC();
    if (os_log_type_enabled(v286, v287))
    {
      v288 = swift_slowAlloc();
      v289 = swift_slowAlloc();
      v360 = v289;
      *v288 = 136315138;
      v285(v309, v203, v348);
      v290 = sub_125BAC();
      v291 = v203;
      v292 = v290;
      v294 = v293;
      (*(v356 + 8))(v291, v348);
      v295 = sub_8530(v292, v294, &v360);
      v201 = v356;

      *(v288 + 4) = v295;
      _os_log_impl(&dword_0, v286, v287, "Reformed alarm parse: %s", v288, 0xCu);
      sub_5BB0(v289);

      v283 = v348;

      v296 = *(v282 + 8);
      v297 = v302;
      v296(v308, v329);
      (*(v338 + 8))(v303, v337);
      (*(v325 + 8))(v327, v326);
      (v339[1])(v342, v340);
    }

    else
    {

      (*(v201 + 8))(v203, v283);
      (*(v282 + 8))(v202, v329);
      (*(v338 + 8))(v303, v337);
      (*(v325 + 8))(v327, v326);
      (v339[1])(v342, v340);
      v297 = v302;
    }

    return (*(v201 + 32))(v355, v297, v283);
  }

  (*(v161 + 8))(v162, v163);
  v358 = 0;
LABEL_45:
  v166 = v155[2];
  v167 = v328;
  v166(v328, v158, v156);
  v168 = sub_125AAC();
  v169 = sub_125DEC();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v348 = v69;
    v357 = v171;
    v360 = v171;
    *v170 = 136315138;
    v166(v317, v167, v156);
    v172 = sub_125BAC();
    v174 = v173;
    v175 = v155[1];
    v175(v167, v156);
    v176 = sub_8530(v172, v174, &v360);

    *(v170 + 4) = v176;
    _os_log_impl(&dword_0, v168, v169, "Timer to alarm transformer: Failed to parse usoParse: %s", v170, 0xCu);
    sub_5BB0(v357);
    v69 = v348;

    v175(v342, v156);
  }

  else
  {

    v177 = v155[1];
    v177(v167, v156);
    v177(v158, v156);
  }

  return (v301)(v355, v359, v69);
}

uint64_t sub_1128A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_5AE8(&qword_162FE8, qword_12B9A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v11 = sub_122E6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_C6CBC() || (v16 = sub_12433C(), , !v16))
  {
    if (qword_15F040 != -1)
    {
      swift_once();
    }

    v22 = sub_125ABC();
    sub_5B30(v22, qword_162FD0);

    v23 = sub_125AAC();
    v24 = sub_125DEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = a1;
      v44 = v26;
      *v25 = 136315138;
      sub_124BAC();

      v27 = sub_125BAC();
      v29 = sub_8530(v27, v28, &v44);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "Transformer is invalid: uso graph don't have valid endTime %s.", v25, 0xCu);
      sub_5BB0(v26);
    }

    goto LABEL_21;
  }

  sub_1243AC();
  v17 = sub_124EFC();

  if (!v17)
  {
LABEL_16:
    if (qword_15F040 != -1)
    {
      swift_once();
    }

    v30 = sub_125ABC();
    sub_5B30(v30, qword_162FD0);

    v23 = sub_125AAC();
    v31 = sub_125DEC();

    if (os_log_type_enabled(v23, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v16;
      v44 = v33;
      *v32 = 136315138;
      sub_1243EC();

      v34 = sub_125BAC();
      v36 = sub_8530(v34, v35, &v44);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v23, v31, "Transformer is invalid: failed to resolve alarm time from %s.", v32, 0xCu);
      sub_5BB0(v33);

      return (*(v12 + 56))(a2, 1, 1, v11);
    }

LABEL_21:

    return (*(v12 + 56))(a2, 1, 1, v11);
  }

  v18 = sub_124BFC(1, 0);
  if (!v18)
  {

    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_15:
    sub_5CA8(v10, &qword_162FE8, qword_12B9A0);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v18 startDateComponents];

  if (v20)
  {
    sub_122E3C();

    v21 = *(v12 + 56);
    v21(v8, 0, 1, v11);
  }

  else
  {
    v21 = *(v12 + 56);
    v21(v8, 1, 1, v11);
  }

  sub_112F08(v8, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    goto LABEL_15;
  }

  v38 = v10;
  v39 = *(v12 + 32);
  v39(v15, v38, v11);
  sub_122E4C();
  if (v40)
  {
    (*(v12 + 8))(v15, v11);

    goto LABEL_16;
  }

  sub_122E5C();
  v42 = v41;

  if (v42)
  {
    (*(v12 + 8))(v15, v11);
    goto LABEL_16;
  }

  v39(a2, v15, v11);
  return (v21)(a2, 0, 1, v11);
}