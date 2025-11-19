void sub_100002164(id a1)
{
  qword_100456A00 = objc_opt_new();

  _objc_release_x1();
}

Class sub_1000025D8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100456A18)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000271C;
    v4[4] = &unk_10041E240;
    v4[5] = v4;
    v5 = off_10041E228;
    v6 = 0;
    qword_100456A18 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100456A18)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CACPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1002D8428();
  }

  qword_100456A10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000271C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100456A18 = result;
  return result;
}

uint64_t sub_100002790()
{
  type metadata accessor for AXEntityManager();
  result = swift_initStaticObject();
  qword_100519C88 = result;
  return result;
}

uint64_t sub_1000027BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 96) = a4;
  v5 = sub_1002D8A20();
  *(v4 + 16) = v5;
  v6 = *(v5 - 8);
  *(v4 + 24) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 32) = swift_task_alloc();
  *(v4 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100002888, 0, 0);
}

uint64_t sub_100002888()
{
  if (*(v0 + 96) == 1)
  {
    *(v0 + 48) = sub_1002D89B0();
    v1 = async function pointer to AXGuestPassService.beginGuestPassTransfer()[1];
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1000029DC;

    return AXGuestPassService.beginGuestPassTransfer()();
  }

  else
  {
    v3 = [objc_opt_self() sharedInstance];
    [v3 setGuestPassSessionCCWidgetIsActive:0];

    *(v0 + 72) = sub_1002D89B0();
    v4 = async function pointer to AXGuestPassService.endGuestPassSession()[1];
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_100002B28;

    return AXGuestPassService.endGuestPassSession()();
  }
}

uint64_t sub_1000029DC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100002C74, 0, 0);
  }

  else
  {

    v5 = *(v3 + 32);
    v4 = *(v3 + 40);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_100002B28()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100002DF8, 0, 0);
  }

  else
  {

    v5 = *(v3 + 32);
    v4 = *(v3 + 40);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_100002C74()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  sub_1002D89E0();
  swift_errorRetain();
  v3 = sub_1002D8A00();
  v4 = sub_1002D8DE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error beginning guest pass transfer from control center: %@", v7, 0xCu);
    sub_1000031B4(v8);
  }

  else
  {
    v10 = *(v0 + 64);
  }

  (*(*(v0 + 24) + 8))(*(v0 + 40), *(v0 + 16));
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100002DF8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  sub_1002D89E0();
  swift_errorRetain();
  v3 = sub_1002D8A00();
  v4 = sub_1002D8DE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error ending guest pass session from control center: %@", v7, 0xCu);
    sub_1000031B4(v8);
  }

  else
  {
    v10 = *(v0 + 88);
  }

  (*(*(v0 + 24) + 8))(*(v0 + 32), *(v0 + 16));
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100002F80()
{
  v1 = sub_1002D8A20();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10000303C, 0, 0);
}

uint64_t sub_10000303C()
{
  v1 = [objc_opt_self() server];
  if (v1)
  {
    v2 = v1;
    [v1 launchAccessibilityReader];
  }

  else
  {
    v3 = v0[4];
    sub_1002D89F0();
    v4 = sub_1002D8A00();
    v5 = sub_1002D8DE0();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "AXSpringBoardServer.server() is nil - cannot launch accessibility reader.", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
  }

  v11 = v0[4];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000031B4(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043BD08, &qword_1002E04E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000321C(uint64_t *a1, uint64_t *a2)
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

void sub_100003264(char a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGesturesSoundOption:qword_1002D9F00[a1]];
}

uint64_t sub_1000032E0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 selectedComfortSound];

  result = [v1 respondsToSelector:"soundGroup"];
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = [v1 soundGroup];
  result = swift_unknownObjectRelease();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  LODWORD(result) = sub_10001EE80(v3);
  if (result == 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_100003390(char a1)
{
  _AXSInvertColorsSetEnabled();
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 classicInvertColors];

  if (v4)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    v5 = [v2 sharedInstance];
    [v5 setClassicInvertColors:0];
  }

  else if ((a1 & 1) == 0)
  {
    return;
  }

  v6 = [v2 sharedInstance];
  [v6 setLastSmartInvertColorsEnablement:CFAbsoluteTimeGetCurrent()];
}

uint64_t sub_1000034A0()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_1002D8910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = sub_1002D8840();
  sub_10001EDF0(v11, qword_100519C90);
  sub_10001EDB8(v11, qword_100519C90);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1002D8830();
}

uint64_t sub_100003740()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA30, &unk_1002F76C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v55 = v40 - v1;
  v2 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = v40 - v3;
  v5 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002D8910();
  v49 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000321C(&qword_10043CC10, &qword_1002DFAC8);
  v19 = sub_10000321C(&qword_10043CC18, &unk_1002DFAD0);
  v52 = v19;
  v20 = *(v19 - 8);
  v53 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002D9F20;
  v45 = *(v19 + 48);
  v46 = v22;
  *(v22 + v21) = 0;
  v23 = v22 + v21;
  sub_1002D8CE0();
  v51 = "CONTROLLER_COLOR_WHITE";
  sub_1000B4F14(v10);
  sub_1002D8980();
  sub_1002D8920();
  v50 = *(v15 + 56);
  v57 = v15 + 56;
  v42 = v4;
  v50(v4, 1, 1, v14);
  v56 = sub_1002D86B0();
  v24 = *(v56 - 8);
  v54 = *(v24 + 56);
  v47 = v24 + 56;
  v25 = v55;
  v54(v55, 1, 1, v56);
  v48 = v23;
  sub_1002D86E0();
  v27 = v52;
  v26 = v53;
  v45 = *(v52 + 48);
  *(v23 + v53) = 1;
  v40[2] = v13;
  sub_1002D8CE0();
  v41 = v10;
  sub_1000B4F14(v10);
  v43 = v7;
  sub_1002D8980();
  v40[1] = v18;
  sub_1002D8920();
  v28 = v42;
  v30 = v49;
  v29 = v50;
  v50(v42, 1, 1, v49);
  v54(v25, 1, 1, v56);
  sub_1002D86E0();
  v31 = 2 * v26;
  v45 = 2 * v26;
  v32 = v48;
  v44 = *(v27 + 48);
  *(v48 + v31) = 2;
  sub_1002D8CE0();
  v33 = v41;
  sub_1000B4F14(v41);
  sub_1002D8980();
  sub_1002D8920();
  v29(v28, 1, 1, v30);
  v34 = v55;
  v35 = v54;
  v54(v55, 1, 1, v56);
  sub_1002D86E0();
  v36 = (v32 + v45 + v53);
  v37 = *(v52 + 48);
  *v36 = 3;
  sub_1002D8CE0();
  sub_1000B4F14(v33);
  sub_1002D8980();
  sub_1002D8920();
  v50(v28, 1, 1, v49);
  v35(v34, 1, 1, v56);
  sub_1002D86E0();
  v38 = sub_100026F04(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519CA8 = v38;
  return result;
}

unint64_t sub_100003E4C()
{
  result = qword_10043BD10;
  if (!qword_10043BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD10);
  }

  return result;
}

Swift::Int sub_100003EA0()
{
  sub_1002D8E50();
  sub_1002D8D40();

  return sub_1002D8E70();
}

unint64_t sub_100003FBC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EAA4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100003FEC()
{
  result = qword_10043BD18;
  if (!qword_10043BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD18);
  }

  return result;
}

unint64_t sub_100004044()
{
  result = qword_10043BD20;
  if (!qword_10043BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD20);
  }

  return result;
}

unint64_t sub_10000409C()
{
  result = qword_10043BD28;
  if (!qword_10043BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD28);
  }

  return result;
}

unint64_t sub_1000040FC()
{
  result = qword_10043BD30;
  if (!qword_10043BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD30);
  }

  return result;
}

unint64_t sub_100004154()
{
  result = qword_10043BD38;
  if (!qword_10043BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD38);
  }

  return result;
}

unint64_t sub_1000041AC()
{
  result = qword_10043BD40;
  if (!qword_10043BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD40);
  }

  return result;
}

unint64_t sub_100004204()
{
  result = qword_10043BD48;
  if (!qword_10043BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD48);
  }

  return result;
}

unint64_t sub_10000425C()
{
  result = qword_10043BD50;
  if (!qword_10043BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD50);
  }

  return result;
}

unint64_t sub_1000042EC()
{
  result = qword_10043BD58;
  if (!qword_10043BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD58);
  }

  return result;
}

uint64_t sub_100004340(uint64_t a1)
{
  v2 = sub_1000042EC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004390()
{
  result = qword_10043BD60;
  if (!qword_10043BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD60);
  }

  return result;
}

unint64_t sub_1000043E8()
{
  result = qword_10043BD68;
  if (!qword_10043BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD68);
  }

  return result;
}

uint64_t sub_100004464(uint64_t a1)
{
  v2 = sub_10000425C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000044E0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004538()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_1002D8910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = sub_1002D8840();
  sub_10001EDF0(v11, qword_100519CB0);
  sub_10001EDB8(v11, qword_100519CB0);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1002D8830();
}

uint64_t sub_1000047D4()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA30, &unk_1002F76C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v70 = &v51 - v1;
  v2 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v63 = &v51 - v3;
  v4 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8910();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000321C(&qword_10043CC00, &qword_1002DFAB8);
  v18 = sub_10000321C(&qword_10043CC08, &qword_1002DFAC0);
  v62 = v18;
  v19 = *(v18 - 8);
  v67 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002D9F30;
  v22 = (v21 + v20);
  v54 = *(v18 + 48);
  v55 = v21;
  *v22 = 0;
  sub_1002D8CE0();
  v68 = "CONTROLLER_COLOR_WHITE";
  sub_1000B4F14(v9);
  sub_1002D8980();
  v23 = v17;
  sub_1002D8920();
  v61 = *(v14 + 56);
  v66 = v13;
  v61(v63, 1, 1, v13);
  v59 = v14 + 56;
  v64 = sub_1002D86B0();
  v24 = *(v64 - 8);
  v69 = *(v24 + 56);
  v25 = v24 + 56;
  v69(v70, 1, 1, v64);
  v60 = v22;
  sub_1002D86E0();
  v26 = v67;
  v27 = v62;
  v54 = *(v62 + 48);
  v22[v67] = 1;
  v28 = v12;
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  v65 = v6;
  sub_1002D8980();
  v29 = v9;
  sub_1002D8920();
  v30 = v63;
  v31 = v61;
  v61(v63, 1, 1, v66);
  v32 = v70;
  v58 = v25;
  v69(v70, 1, 1, v64);
  sub_1002D86E0();
  v54 = 2 * v26;
  v33 = v60;
  v34 = *(v27 + 48);
  v52 = &v60[2 * v26];
  v53 = v34;
  *v52 = 2;
  v56 = v28;
  sub_1002D8CE0();
  v57 = v29;
  sub_1000B4F14(v29);
  sub_1002D8980();
  sub_1002D8920();
  v31(v30, 1, 1, v66);
  v35 = v32;
  v36 = v64;
  v69(v35, 1, 1, v64);
  sub_1002D86E0();
  v37 = &v33[v54 + v67];
  v38 = v62;
  v54 = *(v62 + 48);
  *v37 = 3;
  sub_1002D8CE0();
  sub_1000B4F14(v57);
  sub_1002D8980();
  v51 = v23;
  sub_1002D8920();
  v39 = v66;
  v40 = v61;
  v61(v30, 1, 1, v66);
  v41 = v69;
  v69(v70, 1, 1, v36);
  sub_1002D86E0();
  v54 = 4 * v67;
  v42 = v60;
  v43 = *(v38 + 48);
  v52 = &v60[4 * v67];
  v53 = v43;
  *v52 = 4;
  sub_1002D8CE0();
  v44 = v57;
  sub_1000B4F14(v57);
  sub_1002D8980();
  sub_1002D8920();
  v45 = v63;
  v40(v63, 1, 1, v39);
  v46 = v70;
  v47 = v64;
  v41(v70, 1, 1, v64);
  sub_1002D86E0();
  v48 = &v42[v54 + v67];
  v67 = *(v62 + 48);
  *v48 = 5;
  sub_1002D8CE0();
  sub_1000B4F14(v44);
  sub_1002D8980();
  sub_1002D8920();
  v61(v45, 1, 1, v66);
  v69(v46, 1, 1, v47);
  sub_1002D86E0();
  v49 = sub_1000270E0(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519CC8 = v49;
  return result;
}

unint64_t sub_100005108()
{
  result = qword_10043BD80;
  if (!qword_10043BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD80);
  }

  return result;
}

uint64_t sub_100005194@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EAC4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000051D4()
{
  result = qword_10043BD88;
  if (!qword_10043BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD88);
  }

  return result;
}

unint64_t sub_10000522C()
{
  result = qword_10043BD90;
  if (!qword_10043BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD90);
  }

  return result;
}

unint64_t sub_100005284()
{
  result = qword_10043BD98;
  if (!qword_10043BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BD98);
  }

  return result;
}

unint64_t sub_1000052D8()
{
  result = qword_10043BDA0;
  if (!qword_10043BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDA0);
  }

  return result;
}

unint64_t sub_10000533C()
{
  result = qword_10043BDA8;
  if (!qword_10043BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDA8);
  }

  return result;
}

unint64_t sub_100005394()
{
  result = qword_10043BDB0;
  if (!qword_10043BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDB0);
  }

  return result;
}

unint64_t sub_1000053EC()
{
  result = qword_10043BDB8;
  if (!qword_10043BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDB8);
  }

  return result;
}

unint64_t sub_100005444()
{
  result = qword_10043BDC0;
  if (!qword_10043BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDC0);
  }

  return result;
}

unint64_t sub_1000054D8()
{
  result = qword_10043BDC8;
  if (!qword_10043BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDC8);
  }

  return result;
}

uint64_t sub_10000552C(uint64_t a1)
{
  v2 = sub_1000054D8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000557C()
{
  result = qword_10043BDD0;
  if (!qword_10043BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDD0);
  }

  return result;
}

unint64_t sub_1000055D4()
{
  result = qword_10043BDD8;
  if (!qword_10043BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDD8);
  }

  return result;
}

uint64_t sub_100005650(uint64_t a1)
{
  v2 = sub_100005444();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000056E8()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA30, &unk_1002F76C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v33 = v28 - v1;
  v2 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v32 = v28 - v3;
  v4 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v35 = sub_1002D8910();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  sub_10000321C(&qword_10043CBF0, &qword_1002DFAA8);
  v13 = sub_10000321C(&qword_10043CBF8, &qword_1002DFAB0);
  v36 = v13;
  v14 = *(v13 - 8);
  v31 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v30 = v16;
  *(v16 + 16) = xmmword_1002D9F40;
  v34 = v16 + v15;
  v28[1] = *(v13 + 48);
  *(v16 + v15) = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  v28[0] = v6;
  sub_1002D8980();
  sub_1002D8920();
  v17 = *(v11 + 56);
  v28[2] = v11 + 56;
  v29 = v17;
  v18 = v32;
  v17(v32, 1, 1, v35);
  v19 = sub_1002D86B0();
  v20 = *(*(v19 - 8) + 56);
  v21 = v33;
  v20(v33, 1, 1, v19);
  v22 = v34;
  v23 = v18;
  v24 = v21;
  sub_1002D86E0();
  v25 = (v22 + v31);
  v31 = *(v36 + 48);
  *v25 = 0;
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  sub_1002D8980();
  sub_1002D8920();
  v29(v23, 1, 1, v35);
  v20(v24, 1, 1, v19);
  sub_1002D86E0();
  v26 = sub_1000272BC(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519CE8 = v26;
  return result;
}

uint64_t sub_100005C0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x776F646E6957;
  }

  else
  {
    v4 = 0x657263736C6C7546;
  }

  if (v3)
  {
    v5 = 0xEA00000000006E65;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x776F646E6957;
  }

  else
  {
    v6 = 0x657263736C6C7546;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xEA00000000006E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1002D8E40();
  }

  return v9 & 1;
}

unint64_t sub_100005CB8()
{
  result = qword_10043BDF0;
  if (!qword_10043BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDF0);
  }

  return result;
}

Swift::Int sub_100005D0C()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_100005D90()
{
  *v0;
  sub_1002D8D40();
}

Swift::Int sub_100005E00()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_100005E80@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10041E380;
  v8._object = v3;
  v5 = sub_1002D8E30(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100005EE0(uint64_t *a1@<X8>)
{
  v2 = 0x657263736C6C7546;
  if (*v1)
  {
    v2 = 0x776F646E6957;
  }

  v3 = 0xEA00000000006E65;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100005F24()
{
  result = qword_10043BDF8;
  if (!qword_10043BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BDF8);
  }

  return result;
}

unint64_t sub_100005F7C()
{
  result = qword_10043BE00;
  if (!qword_10043BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE00);
  }

  return result;
}

unint64_t sub_100005FD4()
{
  result = qword_10043BE08;
  if (!qword_10043BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE08);
  }

  return result;
}

unint64_t sub_100006034()
{
  result = qword_10043BE10;
  if (!qword_10043BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE10);
  }

  return result;
}

unint64_t sub_10000608C()
{
  result = qword_10043BE18;
  if (!qword_10043BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE18);
  }

  return result;
}

unint64_t sub_1000060E4()
{
  result = qword_10043BE20;
  if (!qword_10043BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE20);
  }

  return result;
}

unint64_t sub_10000613C()
{
  result = qword_10043BE28;
  if (!qword_10043BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE28);
  }

  return result;
}

unint64_t sub_100006194()
{
  result = qword_10043BE30;
  if (!qword_10043BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE30);
  }

  return result;
}

unint64_t sub_100006224()
{
  result = qword_10043BE38;
  if (!qword_10043BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE38);
  }

  return result;
}

uint64_t sub_100006278(uint64_t a1)
{
  v2 = sub_100006224();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000062C8()
{
  result = qword_10043BE40;
  if (!qword_10043BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE40);
  }

  return result;
}

unint64_t sub_100006320()
{
  result = qword_10043BE48;
  if (!qword_10043BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE48);
  }

  return result;
}

uint64_t sub_10000639C(uint64_t a1)
{
  v2 = sub_100006194();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100006434(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v7 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v11 = sub_1002D8910();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = sub_1002D8840();
  sub_10001EDF0(v14, a2);
  sub_10001EDB8(v14, a2);
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  sub_1002D8980();
  sub_1002D8920();
  (*(v12 + 56))(v5, 1, 1, v11);
  return sub_1002D8830();
}

uint64_t sub_1000066D0()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA30, &unk_1002F76C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v33 = &v26 - v1;
  v2 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v31 = &v26 - v3;
  v4 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v40 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_1002D8910();
  v38 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  sub_10000321C(&qword_10043CBE0, &qword_1002DFA98);
  v13 = sub_10000321C(&qword_10043CBE8, &qword_1002DFAA0);
  v29 = v13;
  v14 = *(*(v13 - 8) + 72);
  v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v30 = 2 * v14;
  v16 = swift_allocObject();
  v32 = v16;
  *(v16 + 16) = xmmword_1002D9F50;
  v17 = v16 + v15;
  v27 = *(v13 + 48);
  *(v16 + v15) = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v8);
  sub_1002D8980();
  sub_1002D8920();
  v18 = *(v11 + 56);
  v37 = v11 + 56;
  v39 = v18;
  v19 = v31;
  v18(v31, 1, 1, v10);
  v35 = sub_1002D86B0();
  v20 = *(v35 - 8);
  v34 = *(v20 + 56);
  v36 = v20 + 56;
  v21 = v33;
  v34(v33, 1, 1, v35);
  sub_1002D86E0();
  v22 = v29;
  v27 = *(v29 + 48);
  v28 = v17;
  *(v17 + v14) = 0;
  sub_1002D8CE0();
  sub_1000B4F14(v8);
  sub_1002D8980();
  sub_1002D8920();
  v39(v19, 1, 1, v38);
  v34(v21, 1, 1, v35);
  sub_1002D86E0();
  v23 = *(v22 + 48);
  *(v17 + v30) = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v8);
  sub_1002D8980();
  sub_1002D8920();
  v39(v19, 1, 1, v38);
  v34(v21, 1, 1, v35);
  sub_1002D86E0();
  v24 = sub_1000274A4(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519D08 = v24;
  return result;
}

uint64_t sub_100006CF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x776F646E6957;
  if (v2 != 1)
  {
    v3 = 0x64656B636F44;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x657263736C6C7546;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA00000000006E65;
  }

  v6 = 0x776F646E6957;
  if (*a2 != 1)
  {
    v6 = 0x64656B636F44;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x657263736C6C7546;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xEA00000000006E65;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1002D8E40();
  }

  return v9 & 1;
}

unint64_t sub_100006DEC()
{
  result = qword_10043BE60;
  if (!qword_10043BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE60);
  }

  return result;
}

Swift::Int sub_100006E40()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_100006EE0()
{
  *v0;
  *v0;
  sub_1002D8D40();
}

Swift::Int sub_100006F6C()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_100007008@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EAEC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100007038(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E65;
  v4 = 0x776F646E6957;
  if (v2 != 1)
  {
    v4 = 0x64656B636F44;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x657263736C6C7546;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_100007098()
{
  result = qword_10043BE68;
  if (!qword_10043BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE68);
  }

  return result;
}

unint64_t sub_1000070F0()
{
  result = qword_10043BE70;
  if (!qword_10043BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE70);
  }

  return result;
}

unint64_t sub_100007148()
{
  result = qword_10043BE78;
  if (!qword_10043BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE78);
  }

  return result;
}

unint64_t sub_10000719C()
{
  result = qword_10043BE80;
  if (!qword_10043BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE80);
  }

  return result;
}

unint64_t sub_1000071F4()
{
  result = qword_10043BE88;
  if (!qword_10043BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE88);
  }

  return result;
}

unint64_t sub_10000724C()
{
  result = qword_10043BE90;
  if (!qword_10043BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE90);
  }

  return result;
}

unint64_t sub_1000072A4()
{
  result = qword_10043BE98;
  if (!qword_10043BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BE98);
  }

  return result;
}

unint64_t sub_1000072FC()
{
  result = qword_10043BEA0;
  if (!qword_10043BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BEA0);
  }

  return result;
}

unint64_t sub_10000738C()
{
  result = qword_10043BEA8;
  if (!qword_10043BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BEA8);
  }

  return result;
}

uint64_t sub_1000073E0(uint64_t a1)
{
  v2 = sub_10000738C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007430()
{
  result = qword_10043BEB0;
  if (!qword_10043BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BEB0);
  }

  return result;
}

unint64_t sub_100007488()
{
  result = qword_10043BEB8;
  if (!qword_10043BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BEB8);
  }

  return result;
}

uint64_t sub_100007504(uint64_t a1)
{
  v2 = sub_1000072FC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100007590()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_1002D8910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = sub_1002D8840();
  sub_10001EDF0(v11, qword_100519D10);
  sub_10001EDB8(v11, qword_100519D10);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1002D8830();
}

uint64_t sub_100007830()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA30, &unk_1002F76C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v52 = v41 - v1;
  v2 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v43 = v41 - v3;
  v4 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8910();
  v47 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  sub_10000321C(&qword_10043CBD0, &qword_1002DFA88);
  v16 = sub_10000321C(&qword_10043CBD8, &qword_1002DFA90);
  v49 = v16;
  v17 = *(v16 - 8);
  v50 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v44 = v19;
  *(v19 + 16) = xmmword_1002D9F20;
  v42 = *(v16 + 48);
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  v46 = v6;
  sub_1002D8980();
  v21 = v9;
  sub_1002D8920();
  v22 = *(v14 + 56);
  v53 = v14 + 56;
  v54 = v22;
  v23 = v43;
  v22(v43, 1, 1, v13);
  v24 = sub_1002D86B0();
  v25 = *(v24 - 8);
  v45 = *(v25 + 56);
  v41[3] = v25 + 56;
  v26 = v52;
  v51 = v24;
  v45(v52, 1, 1, v24);
  v48 = v20;
  v27 = v23;
  sub_1002D86E0();
  v28 = v49;
  v29 = v50;
  v42 = *(v49 + 48);
  *(v20 + v50) = 1;
  v41[1] = v12;
  sub_1002D8CE0();
  v41[0] = v21;
  sub_1000B4F14(v21);
  sub_1002D8980();
  sub_1002D8920();
  v30 = v27;
  v31 = v27;
  v32 = v47;
  v54(v31, 1, 1, v47);
  v33 = v45;
  v45(v26, 1, 1, v24);
  sub_1002D86E0();
  v34 = 2 * v29;
  v42 = 2 * v29;
  v35 = v48;
  v41[2] = *(v28 + 48);
  *(v48 + v34) = 2;
  sub_1002D8CE0();
  v36 = v41[0];
  sub_1000B4F14(v41[0]);
  sub_1002D8980();
  sub_1002D8920();
  v54(v30, 1, 1, v32);
  v37 = v52;
  v33(v52, 1, 1, v51);
  sub_1002D86E0();
  v38 = *(v49 + 48);
  *(v35 + v42 + v50) = 3;
  sub_1002D8CE0();
  sub_1000B4F14(v36);
  sub_1002D8980();
  sub_1002D8920();
  v54(v30, 1, 1, v47);
  v45(v37, 1, 1, v51);
  sub_1002D86E0();
  v39 = sub_10002768C(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519D28 = v39;
  return result;
}

unint64_t sub_100007F68()
{
  result = qword_10043BED0;
  if (!qword_10043BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BED0);
  }

  return result;
}

Swift::Int sub_100007FBC()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_100008068()
{
  *v0;
  *v0;
  *v0;
  sub_1002D8D40();
}

Swift::Int sub_100008100()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_1000081A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EB38(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000081D8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368532;
  v4 = 0xE400000000000000;
  v5 = 1952867660;
  if (*v1 != 2)
  {
    v5 = 0x7468676952;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D6F74746F42;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100008244()
{
  result = qword_10043BED8;
  if (!qword_10043BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BED8);
  }

  return result;
}

unint64_t sub_10000829C()
{
  result = qword_10043BEE0;
  if (!qword_10043BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BEE0);
  }

  return result;
}

unint64_t sub_1000082F4()
{
  result = qword_10043BEE8;
  if (!qword_10043BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BEE8);
  }

  return result;
}

unint64_t sub_100008348()
{
  result = qword_10043BEF0;
  if (!qword_10043BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BEF0);
  }

  return result;
}

unint64_t sub_1000083A0()
{
  result = qword_10043BEF8;
  if (!qword_10043BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BEF8);
  }

  return result;
}

unint64_t sub_1000083F8()
{
  result = qword_10043BF00;
  if (!qword_10043BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF00);
  }

  return result;
}

unint64_t sub_100008450()
{
  result = qword_10043BF08;
  if (!qword_10043BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF08);
  }

  return result;
}

unint64_t sub_1000084A8()
{
  result = qword_10043BF10;
  if (!qword_10043BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF10);
  }

  return result;
}

unint64_t sub_100008538()
{
  result = qword_10043BF18;
  if (!qword_10043BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF18);
  }

  return result;
}

uint64_t sub_10000858C(uint64_t a1)
{
  v2 = sub_100008538();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000085DC()
{
  result = qword_10043BF20;
  if (!qword_10043BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF20);
  }

  return result;
}

unint64_t sub_100008634()
{
  result = qword_10043BF28;
  if (!qword_10043BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF28);
  }

  return result;
}

uint64_t sub_1000086B0(uint64_t a1)
{
  v2 = sub_1000084A8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000873C()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_1002D8910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = sub_1002D8840();
  sub_10001EDF0(v11, qword_100519D30);
  sub_10001EDB8(v11, qword_100519D30);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1002D8830();
}

uint64_t sub_1000089DC()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA30, &unk_1002F76C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v75 = &v56 - v1;
  v2 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v70 = &v56 - v3;
  v4 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8910();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000321C(&qword_10043CBC0, &qword_1002DFA78);
  v18 = sub_10000321C(&qword_10043CBC8, &qword_1002DFA80);
  v68 = v18;
  v19 = *(v18 - 8);
  v69 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002D9F30;
  v22 = (v21 + v20);
  v59 = *(v18 + 48);
  v60 = v21;
  *v22 = 0;
  sub_1002D8CE0();
  v74 = "ZOOM_LENS_EFFECT_NONE";
  sub_1000B4F14(v9);
  sub_1002D8980();
  v23 = v17;
  v24 = v6;
  sub_1002D8920();
  v25 = *(v14 + 56);
  v72 = v14 + 56;
  v73 = v25;
  v66 = v13;
  v25(v70, 1, 1, v13);
  v71 = sub_1002D86B0();
  v26 = *(v71 - 8);
  v65 = *(v26 + 56);
  v27 = v26 + 56;
  v28 = v75;
  v65(v75, 1, 1, v71);
  v67 = v22;
  v29 = v28;
  sub_1002D86E0();
  v30 = v68;
  v31 = v69;
  v59 = *(v68 + 48);
  v22[v69] = 1;
  sub_1002D8CE0();
  v63 = v9;
  sub_1000B4F14(v9);
  v64 = v24;
  sub_1002D8980();
  sub_1002D8920();
  v32 = v70;
  v33 = v66;
  v73(v70, 1, 1, v66);
  v62 = v27;
  v34 = v65;
  v65(v29, 1, 1, v71);
  sub_1002D86E0();
  v59 = 2 * v31;
  v35 = v67;
  v36 = *(v30 + 48);
  v57 = &v67[2 * v31];
  v58 = v36;
  *v57 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v63);
  sub_1002D8980();
  sub_1002D8920();
  v37 = v32;
  v73(v32, 1, 1, v33);
  v38 = v71;
  v34(v75, 1, 1, v71);
  sub_1002D86E0();
  v39 = v69;
  v40 = &v35[v59 + v69];
  v41 = v68;
  v42 = *(v68 + 48);
  v58 = v40;
  v59 = v42;
  *v40 = 3;
  v61 = v12;
  sub_1002D8CE0();
  sub_1000B4F14(v63);
  sub_1002D8980();
  v56 = v23;
  sub_1002D8920();
  v43 = v37;
  v44 = v66;
  v45 = v73;
  v73(v43, 1, 1, v66);
  v46 = v65;
  v65(v75, 1, 1, v38);
  sub_1002D86E0();
  v59 = 4 * v39;
  v47 = v67;
  v48 = *(v41 + 48);
  v57 = &v67[4 * v39];
  v58 = v48;
  *v57 = 4;
  sub_1002D8CE0();
  v49 = v63;
  sub_1000B4F14(v63);
  sub_1002D8980();
  sub_1002D8920();
  v50 = v70;
  v45(v70, 1, 1, v44);
  v51 = v75;
  v52 = v71;
  v46(v75, 1, 1, v71);
  sub_1002D86E0();
  v53 = *(v68 + 48);
  v47[v59 + v69] = 5;
  sub_1002D8CE0();
  sub_1000B4F14(v49);
  sub_1002D8980();
  sub_1002D8920();
  v73(v50, 1, 1, v66);
  v65(v51, 1, 1, v52);
  sub_1002D86E0();
  v54 = sub_100027874(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519D48 = v54;
  return result;
}

unint64_t sub_1000092F4()
{
  result = qword_10043BF40;
  if (!qword_10043BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF40);
  }

  return result;
}

uint64_t sub_100009350()
{
  *v0;
  *v0;
  *v0;
  sub_1002D8D40();
}

uint64_t sub_10000945C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EB84(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000948C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736270;
  v5 = 0xEC00000073726F6CLL;
  v6 = 0x6F43747265766E49;
  v7 = 0xE900000000000074;
  v8 = 0x73756A6441657548;
  if (v2 != 4)
  {
    v8 = 0x746867694C776F4CLL;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00006574696857;
  v10 = 0x646E416B63616C42;
  if (v2 != 1)
  {
    v10 = 0xD000000000000015;
    v9 = 0x8000000100354300;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100009564()
{
  result = qword_10043BF48;
  if (!qword_10043BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF48);
  }

  return result;
}

unint64_t sub_1000095BC()
{
  result = qword_10043BF50;
  if (!qword_10043BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF50);
  }

  return result;
}

unint64_t sub_100009614()
{
  result = qword_10043BF58;
  if (!qword_10043BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF58);
  }

  return result;
}

unint64_t sub_100009668()
{
  result = qword_10043BF60;
  if (!qword_10043BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF60);
  }

  return result;
}

unint64_t sub_1000096C0()
{
  result = qword_10043BF68;
  if (!qword_10043BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF68);
  }

  return result;
}

unint64_t sub_100009718()
{
  result = qword_10043BF70;
  if (!qword_10043BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF70);
  }

  return result;
}

unint64_t sub_100009770()
{
  result = qword_10043BF78;
  if (!qword_10043BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF78);
  }

  return result;
}

unint64_t sub_1000097C8()
{
  result = qword_10043BF80;
  if (!qword_10043BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF80);
  }

  return result;
}

unint64_t sub_100009858()
{
  result = qword_10043BF88;
  if (!qword_10043BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF88);
  }

  return result;
}

uint64_t sub_1000098AC(uint64_t a1)
{
  v2 = sub_100009858();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000098FC()
{
  result = qword_10043BF90;
  if (!qword_10043BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF90);
  }

  return result;
}

unint64_t sub_100009954()
{
  result = qword_10043BF98;
  if (!qword_10043BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BF98);
  }

  return result;
}

uint64_t sub_1000099D0(uint64_t a1)
{
  v2 = sub_1000097C8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100009A5C()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_1002D8910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = sub_1002D8840();
  sub_10001EDF0(v11, qword_100519D50);
  sub_10001EDB8(v11, qword_100519D50);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1002D8830();
}

uint64_t sub_100009D00()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA30, &unk_1002F76C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v35 = v29 - v1;
  v2 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v42 = v29 - v3;
  v4 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v41 = sub_1002D8910();
  v9 = *(v41 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_10000321C(&qword_10043CBB0, &qword_1002DFA68);
  v11 = sub_10000321C(&qword_10043CBB8, &qword_1002DFA70);
  v32 = v11;
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v33 = 2 * v12;
  v14 = swift_allocObject();
  v34 = v14;
  *(v14 + 16) = xmmword_1002D9F50;
  v30 = *(v11 + 48);
  *(v14 + v13) = 0;
  v15 = v14 + v13;
  sub_1002D8CE0();
  v29[0] = v7;
  sub_1000B4F14(v7);
  sub_1002D8980();
  v29[1] = "ZoomPanStyleTitleContinuous";
  sub_1002D8920();
  v16 = *(v9 + 56);
  v39 = v9 + 56;
  v40 = v16;
  v16(v42, 1, 1, v41);
  v37 = sub_1002D86B0();
  v17 = *(v37 - 8);
  v36 = *(v17 + 56);
  v38 = v17 + 56;
  v18 = v35;
  v36(v35, 1, 1, v37);
  sub_1002D86E0();
  v19 = (v15 + v12);
  v20 = v15;
  v31 = v15;
  v21 = v32;
  v30 = *(v32 + 48);
  *v19 = 1;
  sub_1002D8CE0();
  v22 = v29[0];
  sub_1000B4F14(v29[0]);
  sub_1002D8980();
  sub_1002D8920();
  v23 = v41;
  v24 = v42;
  v40(v42, 1, 1, v41);
  v36(v18, 1, 1, v37);
  v25 = v24;
  sub_1002D86E0();
  v26 = (v20 + v33);
  v33 = *(v21 + 48);
  *v26 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v22);
  sub_1002D8980();
  sub_1002D8920();
  v40(v25, 1, 1, v23);
  v36(v18, 1, 1, v37);
  sub_1002D86E0();
  v27 = sub_100027A5C(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519D68 = v27;
  return result;
}

unint64_t sub_10000A31C()
{
  result = qword_10043BFB0;
  if (!qword_10043BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFB0);
  }

  return result;
}

uint64_t *sub_10000A3A4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_10000A3CC()
{
  result = qword_10043BFB8;
  if (!qword_10043BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFB8);
  }

  return result;
}

unint64_t sub_10000A424()
{
  result = qword_10043BFC0;
  if (!qword_10043BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFC0);
  }

  return result;
}

unint64_t sub_10000A47C()
{
  result = qword_10043BFC8;
  if (!qword_10043BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFC8);
  }

  return result;
}

unint64_t sub_10000A4DC()
{
  result = qword_10043BFD0;
  if (!qword_10043BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFD0);
  }

  return result;
}

unint64_t sub_10000A534()
{
  result = qword_10043BFD8;
  if (!qword_10043BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFD8);
  }

  return result;
}

unint64_t sub_10000A58C()
{
  result = qword_10043BFE0;
  if (!qword_10043BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFE0);
  }

  return result;
}

unint64_t sub_10000A5E4()
{
  result = qword_10043BFE8;
  if (!qword_10043BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFE8);
  }

  return result;
}

unint64_t sub_10000A63C()
{
  result = qword_10043BFF0;
  if (!qword_10043BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFF0);
  }

  return result;
}

unint64_t sub_10000A6CC()
{
  result = qword_10043BFF8;
  if (!qword_10043BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043BFF8);
  }

  return result;
}

uint64_t sub_10000A720(uint64_t a1)
{
  v2 = sub_10000A6CC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000A770()
{
  result = qword_10043C000;
  if (!qword_10043C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C000);
  }

  return result;
}

unint64_t sub_10000A7C8()
{
  result = qword_10043C008;
  if (!qword_10043C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C008);
  }

  return result;
}

uint64_t sub_10000A844(uint64_t a1)
{
  v2 = sub_10000A63C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000A8D0()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_1002D8910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = sub_1002D8840();
  sub_10001EDF0(v11, qword_100519D70);
  sub_10001EDB8(v11, qword_100519D70);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1002D8830();
}

uint64_t sub_10000AB74()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA30, &unk_1002F76C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v78 = v60 - v1;
  v2 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = v60 - v3;
  v5 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002D8910();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000321C(&qword_10043CBA0, &qword_1002DFA58);
  v19 = sub_10000321C(&qword_10043CBA8, &qword_1002DFA60);
  v75 = v19;
  v20 = *(v19 - 8);
  v68 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v63 = 8 * v68;
  v22 = swift_allocObject();
  v64 = v22;
  *(v22 + 16) = xmmword_1002D9F60;
  v71 = v22 + v21;
  v62 = *(v19 + 48);
  *(v22 + v21) = 0;
  sub_1002D8CE0();
  v76 = v10;
  sub_1000B4F14(v10);
  v77 = v7;
  sub_1002D8980();
  sub_1002D8920();
  v73 = *(v15 + 56);
  v74 = v14;
  v66 = v4;
  v67 = v15 + 56;
  v23 = v14;
  v73(v4, 1, 1, v14);
  v24 = sub_1002D86B0();
  v25 = *(v24 - 8);
  v69 = *(v25 + 56);
  v26 = v25 + 56;
  v65 = v24;
  v69(v78, 1, 1, v24);
  v72 = v26;
  v27 = v71;
  sub_1002D86E0();
  v28 = v68;
  v62 = *(v75 + 48);
  *(v27 + v68) = 1;
  v70 = v13;
  sub_1002D8CE0();
  sub_1000B4F14(v76);
  sub_1002D8980();
  sub_1002D8920();
  v73(v66, 1, 1, v23);
  v29 = v69;
  v69(v78, 1, 1, v24);
  v30 = v18;
  sub_1002D86E0();
  v62 = 2 * v28;
  v31 = v71;
  v32 = v75;
  v61 = *(v75 + 48);
  *(v71 + 2 * v28) = 2;
  sub_1002D8CE0();
  v33 = v76;
  sub_1000B4F14(v76);
  sub_1002D8980();
  sub_1002D8920();
  v34 = v66;
  v35 = v74;
  v73(v66, 1, 1, v74);
  v36 = v65;
  v29(v78, 1, 1, v65);
  sub_1002D86E0();
  v37 = v68;
  v38 = *(v32 + 48);
  v61 = v31 + v62 + v68;
  v62 = v38;
  *v61 = 3;
  sub_1002D8CE0();
  sub_1000B4F14(v33);
  sub_1002D8980();
  sub_1002D8920();
  v39 = v73;
  v73(v34, 1, 1, v35);
  v40 = v78;
  v69(v78, 1, 1, v36);
  sub_1002D86E0();
  v62 = 4 * v37;
  v41 = v71;
  v61 = *(v32 + 48);
  *(v71 + 4 * v37) = 4;
  sub_1002D8CE0();
  sub_1000B4F14(v76);
  sub_1002D8980();
  sub_1002D8920();
  v42 = v66;
  v39(v66, 1, 1, v74);
  v43 = v65;
  v44 = v69;
  v69(v40, 1, 1, v65);
  v45 = v42;
  sub_1002D86E0();
  v46 = v68;
  v47 = (v41 + v62 + v68);
  v62 = *(v75 + 48);
  *v47 = 5;
  sub_1002D8CE0();
  sub_1000B4F14(v76);
  sub_1002D8980();
  v60[1] = v30;
  sub_1002D8920();
  v48 = v73;
  v73(v45, 1, 1, v74);
  v49 = v43;
  v50 = v44;
  v44(v78, 1, 1, v49);
  sub_1002D86E0();
  v51 = v71;
  v52 = v75;
  v53 = *(v75 + 48);
  v61 = v71 + 6 * v46;
  v62 = v53;
  *v61 = 6;
  sub_1002D8CE0();
  sub_1000B4F14(v76);
  sub_1002D8980();
  sub_1002D8920();
  v54 = v66;
  v48(v66, 1, 1, v74);
  v55 = v78;
  v56 = v65;
  v50(v78, 1, 1, v65);
  sub_1002D86E0();
  v57 = *(v52 + 48);
  *(v51 + v63 - v68) = 7;
  sub_1002D8CE0();
  sub_1000B4F14(v76);
  sub_1002D8980();
  sub_1002D8920();
  v73(v54, 1, 1, v74);
  v69(v55, 1, 1, v56);
  sub_1002D86E0();
  v58 = sub_100027C38(v64);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519D88 = v58;
  return result;
}

unint64_t sub_10000B6F8()
{
  result = qword_10043C020;
  if (!qword_10043C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C020);
  }

  return result;
}

unint64_t sub_10000B74C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EAB4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10000B77C()
{
  result = qword_10043C028;
  if (!qword_10043C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C028);
  }

  return result;
}

unint64_t sub_10000B7D4()
{
  result = qword_10043C030;
  if (!qword_10043C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C030);
  }

  return result;
}

unint64_t sub_10000B82C()
{
  result = qword_10043C038;
  if (!qword_10043C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C038);
  }

  return result;
}

unint64_t sub_10000B880()
{
  result = qword_10043C040;
  if (!qword_10043C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C040);
  }

  return result;
}

unint64_t sub_10000B8D8()
{
  result = qword_10043C048;
  if (!qword_10043C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C048);
  }

  return result;
}

unint64_t sub_10000B930()
{
  result = qword_10043C050;
  if (!qword_10043C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C050);
  }

  return result;
}

unint64_t sub_10000B988()
{
  result = qword_10043C058;
  if (!qword_10043C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C058);
  }

  return result;
}

unint64_t sub_10000B9E0()
{
  result = qword_10043C060;
  if (!qword_10043C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C060);
  }

  return result;
}

unint64_t sub_10000BA70()
{
  result = qword_10043C068;
  if (!qword_10043C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C068);
  }

  return result;
}

uint64_t sub_10000BAC4(uint64_t a1)
{
  v2 = sub_10000BA70();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000BB14()
{
  result = qword_10043C070;
  if (!qword_10043C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C070);
  }

  return result;
}

unint64_t sub_10000BB6C()
{
  result = qword_10043C078;
  if (!qword_10043C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C078);
  }

  return result;
}

uint64_t sub_10000BBE8(uint64_t a1)
{
  v2 = sub_10000B9E0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000BC74()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_1002D8910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = sub_1002D8840();
  sub_10001EDF0(v11, qword_100519D90);
  sub_10001EDB8(v11, qword_100519D90);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1002D8830();
}

uint64_t sub_10000BF18()
{
  v0 = (*(*(sub_10000321C(&qword_10043CA30, &unk_1002F76C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v29 = v25 - v1;
  v2 = (*(*(sub_10000321C(&qword_10043CA38, &qword_1002DF8F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v27 = v25 - v3;
  v4 = *(*(sub_1002D8990() - 8) + 64);
  __chkstk_darwin();
  v36 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_1002D8900() - 8) + 64);
  __chkstk_darwin();
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_1002D8CF0() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_1002D8910();
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  sub_10000321C(&qword_10043CB90, &qword_1002DFA48);
  v13 = sub_10000321C(&qword_10043CB98, &qword_1002DFA50);
  v14 = *(*(v13 - 8) + 72);
  v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v26 = 2 * v14;
  v16 = swift_allocObject();
  v28 = v16;
  *(v16 + 16) = xmmword_1002D9F50;
  v17 = v16 + v15;
  v25[0] = *(v13 + 48);
  *(v16 + v15) = 0;
  sub_1002D8CE0();
  sub_1000B4F14(v8);
  sub_1002D8980();
  sub_1002D8920();
  v18 = *(v11 + 56);
  v33 = v11 + 56;
  v35 = v18;
  v19 = v27;
  v18(v27, 1, 1, v10);
  v31 = sub_1002D86B0();
  v20 = *(v31 - 8);
  v30 = *(v20 + 56);
  v32 = v20 + 56;
  v21 = v29;
  v30(v29, 1, 1, v31);
  sub_1002D86E0();
  v25[0] = *(v13 + 48);
  v25[1] = v17;
  *(v17 + v14) = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v8);
  sub_1002D8980();
  sub_1002D8920();
  v35(v19, 1, 1, v34);
  v30(v21, 1, 1, v31);
  sub_1002D86E0();
  v22 = *(v13 + 48);
  *(v17 + v26) = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v8);
  sub_1002D8980();
  sub_1002D8920();
  v35(v19, 1, 1, v34);
  v30(v21, 1, 1, v31);
  sub_1002D86E0();
  v23 = sub_100027E14(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519DA8 = v23;
  return result;
}

unint64_t sub_10000C53C()
{
  result = qword_10043C090;
  if (!qword_10043C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C090);
  }

  return result;
}

unint64_t sub_10000C594()
{
  result = qword_10043C098;
  if (!qword_10043C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C098);
  }

  return result;
}

unint64_t sub_10000C5EC()
{
  result = qword_10043C0A0;
  if (!qword_10043C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0A0);
  }

  return result;
}

unint64_t sub_10000C644()
{
  result = qword_10043C0A8;
  if (!qword_10043C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0A8);
  }

  return result;
}

unint64_t sub_10000C698()
{
  result = qword_10043C0B0;
  if (!qword_10043C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0B0);
  }

  return result;
}

unint64_t sub_10000C6F0()
{
  result = qword_10043C0B8;
  if (!qword_10043C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0B8);
  }

  return result;
}

unint64_t sub_10000C748()
{
  result = qword_10043C0C0;
  if (!qword_10043C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0C0);
  }

  return result;
}

unint64_t sub_10000C7A0()
{
  result = qword_10043C0C8;
  if (!qword_10043C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0C8);
  }

  return result;
}

unint64_t sub_10000C7F8()
{
  result = qword_10043C0D0;
  if (!qword_10043C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0D0);
  }

  return result;
}

unint64_t sub_10000C888()
{
  result = qword_10043C0D8;
  if (!qword_10043C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0D8);
  }

  return result;
}

uint64_t sub_10000C8DC(uint64_t a1)
{
  v2 = sub_10000C888();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000C92C()
{
  result = qword_10043C0E0;
  if (!qword_10043C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0E0);
  }

  return result;
}

unint64_t sub_10000C984()
{
  result = qword_10043C0E8;
  if (!qword_10043C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C0E8);
  }

  return result;
}

uint64_t sub_10000CA00(uint64_t a1)
{
  v2 = sub_10000C7F8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000CAB4()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v38 = &v31 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = &v31 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002D8900();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8CF0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1002D8910();
  v44 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000321C(&qword_10043CB80, &qword_1002DFA38);
  v18 = sub_10000321C(&qword_10043CB88, &qword_1002DFA40);
  v39 = v18;
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v35 = 2 * v19;
  v21 = swift_allocObject();
  v37 = v21;
  *(v21 + 16) = xmmword_1002D9F50;
  v22 = v21 + v20;
  v32 = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_1002D8CE0();
  v33 = "AUDIO_DUCKING_OFF";
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v23 = *(v16 + 56);
  v43 = v16 + 56;
  v45 = v23;
  v24 = v36;
  v23(v36, 1, 1, v15);
  v41 = sub_1002D86B0();
  v25 = *(v41 - 8);
  v40 = *(v25 + 56);
  v42 = v25 + 56;
  v26 = v38;
  v40(v38, 1, 1, v41);
  v31 = v22;
  sub_1002D86E0();
  v27 = v39;
  v32 = *(v39 + 48);
  *(v22 + v19) = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v45(v24, 1, 1, v44);
  v40(v26, 1, 1, v41);
  sub_1002D86E0();
  v28 = (v31 + v35);
  v35 = *(v27 + 48);
  *v28 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v45(v24, 1, 1, v44);
  v40(v26, 1, 1, v41);
  sub_1002D86E0();
  v29 = sub_100027FF0(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519DC8 = v29;
  return result;
}

unint64_t sub_10000D0CC()
{
  result = qword_10043C100;
  if (!qword_10043C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C100);
  }

  return result;
}

unint64_t sub_10000D124()
{
  result = qword_10043C108;
  if (!qword_10043C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C108);
  }

  return result;
}

unint64_t sub_10000D17C()
{
  result = qword_10043C110;
  if (!qword_10043C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C110);
  }

  return result;
}

unint64_t sub_10000D1D4()
{
  result = qword_10043C118;
  if (!qword_10043C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C118);
  }

  return result;
}

unint64_t sub_10000D228()
{
  result = qword_10043C120;
  if (!qword_10043C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C120);
  }

  return result;
}

unint64_t sub_10000D280()
{
  result = qword_10043C128;
  if (!qword_10043C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C128);
  }

  return result;
}

unint64_t sub_10000D2D8()
{
  result = qword_10043C130;
  if (!qword_10043C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C130);
  }

  return result;
}

unint64_t sub_10000D330()
{
  result = qword_10043C138;
  if (!qword_10043C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C138);
  }

  return result;
}

unint64_t sub_10000D388()
{
  result = qword_10043C140;
  if (!qword_10043C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C140);
  }

  return result;
}

unint64_t sub_10000D418()
{
  result = qword_10043C148;
  if (!qword_10043C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C148);
  }

  return result;
}

uint64_t sub_10000D46C(uint64_t a1)
{
  v2 = sub_10000D418();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000D4BC()
{
  result = qword_10043C150;
  if (!qword_10043C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C150);
  }

  return result;
}

unint64_t sub_10000D514()
{
  result = qword_10043C158;
  if (!qword_10043C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C158);
  }

  return result;
}

uint64_t sub_10000D590(uint64_t a1)
{
  v2 = sub_10000D388();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000D648()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v61 = v44 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v62 = v44 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002D8900();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002D8CF0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1002D8910();
  v53 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000321C(&qword_10043CB70, &qword_1002DFA28);
  v23 = sub_10000321C(&qword_10043CB78, &qword_1002DFA30);
  v24 = *(v23 - 8);
  v58 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1002D9F20;
  v47 = *(v23 + 48);
  v48 = v26;
  v50 = v23;
  *(v26 + v25) = 0;
  v27 = v26 + v25;
  sub_1002D8CE0();
  v57 = "AUDIO_DUCKING_OFF";
  sub_1000B4F14(v13);
  v52 = v9;
  sub_1002D8980();
  v28 = v13;
  sub_1002D8920();
  v29 = *(v19 + 56);
  v54 = v19 + 56;
  v55 = v29;
  v29(v62, 1, 1, v18);
  v60 = sub_1002D86B0();
  v30 = *(v60 - 8);
  v59 = *(v30 + 56);
  v51 = v30 + 56;
  v31 = v61;
  v59(v61, 1, 1, v60);
  v56 = v27;
  sub_1002D86E0();
  v32 = v58;
  v47 = *(v23 + 48);
  *(v27 + v58) = 1;
  v44[1] = v17;
  sub_1002D8CE0();
  v49 = v28;
  sub_1000B4F14(v28);
  sub_1002D8980();
  v44[0] = v22;
  sub_1002D8920();
  v33 = v53;
  v34 = v55;
  v55(v62, 1, 1, v53);
  v59(v31, 1, 1, v60);
  sub_1002D86E0();
  v47 = 2 * v32;
  v35 = v56;
  v36 = *(v50 + 48);
  v45 = (v56 + 2 * v32);
  v46 = v36;
  *v45 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v49);
  sub_1002D8980();
  sub_1002D8920();
  v37 = v62;
  v34(v62, 1, 1, v33);
  v38 = v60;
  v39 = v61;
  v40 = v59;
  v59(v61, 1, 1, v60);
  sub_1002D86E0();
  v41 = (v35 + v47 + v58);
  v58 = *(v50 + 48);
  *v41 = 3;
  sub_1002D8CE0();
  sub_1000B4F14(v49);
  sub_1002D8980();
  sub_1002D8920();
  v55(v37, 1, 1, v53);
  v40(v39, 1, 1, v38);
  sub_1002D86E0();
  v42 = sub_1000281CC(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519DE8 = v42;
  return result;
}

unint64_t sub_10000DD64()
{
  result = qword_10043C170;
  if (!qword_10043C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C170);
  }

  return result;
}

unint64_t sub_10000DDBC()
{
  result = qword_10043C178;
  if (!qword_10043C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C178);
  }

  return result;
}

unint64_t sub_10000DE14()
{
  result = qword_10043C180;
  if (!qword_10043C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C180);
  }

  return result;
}

unint64_t sub_10000DE6C()
{
  result = qword_10043C188;
  if (!qword_10043C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C188);
  }

  return result;
}

unint64_t sub_10000DEC0()
{
  result = qword_10043C190;
  if (!qword_10043C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C190);
  }

  return result;
}

unint64_t sub_10000DF18()
{
  result = qword_10043C198;
  if (!qword_10043C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C198);
  }

  return result;
}

unint64_t sub_10000DF70()
{
  result = qword_10043C1A0;
  if (!qword_10043C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1A0);
  }

  return result;
}

unint64_t sub_10000DFC8()
{
  result = qword_10043C1A8;
  if (!qword_10043C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1A8);
  }

  return result;
}

unint64_t sub_10000E020()
{
  result = qword_10043C1B0;
  if (!qword_10043C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1B0);
  }

  return result;
}

unint64_t sub_10000E0B0()
{
  result = qword_10043C1B8;
  if (!qword_10043C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1B8);
  }

  return result;
}

uint64_t sub_10000E104(uint64_t a1)
{
  v2 = sub_10000E0B0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000E154()
{
  result = qword_10043C1C0;
  if (!qword_10043C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1C0);
  }

  return result;
}

unint64_t sub_10000E1AC()
{
  result = qword_10043C1C8;
  if (!qword_10043C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1C8);
  }

  return result;
}

uint64_t sub_10000E228(uint64_t a1)
{
  v2 = sub_10000E020();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000E2B4()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_1002D8990();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1002D8900();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1002D8CF0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1002D8840();
  sub_10001EDF0(v15, qword_100519DF0);
  sub_10001EDB8(v15, qword_100519DF0);
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  sub_1002D8980();
  sub_1002D8920();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1002D8830();
}

uint64_t sub_10000E550()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v61 = &v43 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v62 = &v43 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002D8900();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002D8CF0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1002D8910();
  v53 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000321C(&qword_10043CB60, &qword_1002DFA18);
  v21 = sub_10000321C(&qword_10043CB68, &qword_1002DFA20);
  v22 = *(v21 - 8);
  v58 = *(v22 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002D9F20;
  v47 = *(v21 + 48);
  v48 = v24;
  v50 = v21;
  *(v24 + v23) = 0;
  v25 = v24 + v23;
  sub_1002D8CE0();
  v57 = "AUDIO_DUCKING_OFF";
  v26 = v13;
  sub_1000B4F14(v13);
  v52 = v9;
  sub_1002D8980();
  sub_1002D8920();
  v27 = *(v19 + 56);
  v54 = v19 + 56;
  v55 = v27;
  v27(v62, 1, 1, v18);
  v60 = sub_1002D86B0();
  v28 = *(v60 - 8);
  v59 = *(v28 + 56);
  v51 = v28 + 56;
  v29 = v61;
  v59(v61, 1, 1, v60);
  v56 = v25;
  sub_1002D86E0();
  v30 = v58;
  v47 = *(v21 + 48);
  *(v25 + v58) = 1;
  v49 = v17;
  sub_1002D8CE0();
  v44 = v26;
  sub_1000B4F14(v26);
  sub_1002D8980();
  sub_1002D8920();
  v31 = v53;
  v32 = v55;
  v55(v62, 1, 1, v53);
  v59(v29, 1, 1, v60);
  sub_1002D86E0();
  v47 = 2 * v30;
  v33 = v56;
  v34 = *(v50 + 48);
  v45 = (v56 + 2 * v30);
  v46 = v34;
  *v45 = 2;
  sub_1002D8CE0();
  v35 = v44;
  sub_1000B4F14(v44);
  sub_1002D8980();
  sub_1002D8920();
  v36 = v62;
  v32(v62, 1, 1, v31);
  v37 = v60;
  v38 = v61;
  v39 = v59;
  v59(v61, 1, 1, v60);
  sub_1002D86E0();
  v40 = (v33 + v47 + v58);
  v58 = *(v50 + 48);
  *v40 = 3;
  sub_1002D8CE0();
  sub_1000B4F14(v35);
  sub_1002D8980();
  sub_1002D8920();
  v55(v36, 1, 1, v53);
  v39(v38, 1, 1, v37);
  sub_1002D86E0();
  v41 = sub_1000283A8(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519E08 = v41;
  return result;
}

unint64_t sub_10000EC64()
{
  result = qword_10043C1E0;
  if (!qword_10043C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1E0);
  }

  return result;
}

unint64_t sub_10000ECBC()
{
  result = qword_10043C1E8;
  if (!qword_10043C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1E8);
  }

  return result;
}

unint64_t sub_10000ED14()
{
  result = qword_10043C1F0;
  if (!qword_10043C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1F0);
  }

  return result;
}

unint64_t sub_10000ED6C()
{
  result = qword_10043C1F8;
  if (!qword_10043C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C1F8);
  }

  return result;
}

unint64_t sub_10000EDC0()
{
  result = qword_10043C200;
  if (!qword_10043C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C200);
  }

  return result;
}

unint64_t sub_10000EE18()
{
  result = qword_10043C208;
  if (!qword_10043C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C208);
  }

  return result;
}

unint64_t sub_10000EE70()
{
  result = qword_10043C210;
  if (!qword_10043C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C210);
  }

  return result;
}

unint64_t sub_10000EEC8()
{
  result = qword_10043C218;
  if (!qword_10043C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C218);
  }

  return result;
}

unint64_t sub_10000EF20()
{
  result = qword_10043C220;
  if (!qword_10043C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C220);
  }

  return result;
}

unint64_t sub_10000EFB0()
{
  result = qword_10043C228;
  if (!qword_10043C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C228);
  }

  return result;
}

uint64_t sub_10000F004(uint64_t a1)
{
  v2 = sub_10000EFB0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000F054()
{
  result = qword_10043C230;
  if (!qword_10043C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C230);
  }

  return result;
}

unint64_t sub_10000F0AC()
{
  result = qword_10043C238;
  if (!qword_10043C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C238);
  }

  return result;
}

uint64_t sub_10000F128(uint64_t a1)
{
  v2 = sub_10000EF20();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000F1B4()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_1002D8990();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1002D8900();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1002D8CF0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1002D8840();
  sub_10001EDF0(v15, qword_100519E10);
  sub_10001EDB8(v15, qword_100519E10);
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  sub_1002D8980();
  sub_1002D8920();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1002D8830();
}

uint64_t sub_10000F454()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v38 = &v31 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = &v31 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002D8900();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8CF0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1002D8910();
  v44 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000321C(&qword_10043CB50, &qword_1002DFA08);
  v18 = sub_10000321C(&qword_10043CB58, &qword_1002DFA10);
  v39 = v18;
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v35 = 2 * v19;
  v21 = swift_allocObject();
  v37 = v21;
  *(v21 + 16) = xmmword_1002D9F50;
  v22 = v21 + v20;
  v32 = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_1002D8CE0();
  v33 = "AUDIO_DUCKING_OFF";
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v23 = *(v16 + 56);
  v43 = v16 + 56;
  v45 = v23;
  v24 = v36;
  v23(v36, 1, 1, v15);
  v41 = sub_1002D86B0();
  v25 = *(v41 - 8);
  v40 = *(v25 + 56);
  v42 = v25 + 56;
  v26 = v38;
  v40(v38, 1, 1, v41);
  v31 = v22;
  sub_1002D86E0();
  v27 = v39;
  v32 = *(v39 + 48);
  *(v22 + v19) = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v45(v24, 1, 1, v44);
  v40(v26, 1, 1, v41);
  sub_1002D86E0();
  v28 = (v31 + v35);
  v35 = *(v27 + 48);
  *v28 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v45(v24, 1, 1, v44);
  v40(v26, 1, 1, v41);
  sub_1002D86E0();
  v29 = sub_100028584(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519E28 = v29;
  return result;
}

unint64_t sub_10000FA6C()
{
  result = qword_10043C250;
  if (!qword_10043C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C250);
  }

  return result;
}

unint64_t sub_10000FAC4()
{
  result = qword_10043C258;
  if (!qword_10043C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C258);
  }

  return result;
}

unint64_t sub_10000FB1C()
{
  result = qword_10043C260;
  if (!qword_10043C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C260);
  }

  return result;
}

unint64_t sub_10000FB74()
{
  result = qword_10043C268;
  if (!qword_10043C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C268);
  }

  return result;
}

unint64_t sub_10000FBC8()
{
  result = qword_10043C270;
  if (!qword_10043C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C270);
  }

  return result;
}

unint64_t sub_10000FC20()
{
  result = qword_10043C278;
  if (!qword_10043C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C278);
  }

  return result;
}

unint64_t sub_10000FC78()
{
  result = qword_10043C280;
  if (!qword_10043C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C280);
  }

  return result;
}

unint64_t sub_10000FCD0()
{
  result = qword_10043C288;
  if (!qword_10043C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C288);
  }

  return result;
}

unint64_t sub_10000FD28()
{
  result = qword_10043C290;
  if (!qword_10043C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C290);
  }

  return result;
}

unint64_t sub_10000FDB8()
{
  result = qword_10043C298;
  if (!qword_10043C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C298);
  }

  return result;
}

uint64_t sub_10000FE0C(uint64_t a1)
{
  v2 = sub_10000FDB8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000FE5C()
{
  result = qword_10043C2A0;
  if (!qword_10043C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2A0);
  }

  return result;
}

unint64_t sub_10000FEB4()
{
  result = qword_10043C2A8;
  if (!qword_10043C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2A8);
  }

  return result;
}

uint64_t sub_10000FF30(uint64_t a1)
{
  v2 = sub_10000FD28();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000FFE8()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v43 = v35 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v42 = v35 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002D8900();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002D8CF0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1002D8910();
  v36 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v35[0] = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000321C(&qword_10043CB40, &qword_1002DF9F8);
  v20 = sub_10000321C(&qword_10043CB48, &qword_1002DFA00);
  v45 = v20;
  v21 = *(v20 - 8);
  v41 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v40 = v23;
  *(v23 + 16) = xmmword_1002D9F40;
  v44 = v23 + v22;
  v38 = *(v20 + 48);
  *(v23 + v22) = 0;
  sub_1002D8CE0();
  v39 = "AUDIO_DUCKING_OFF";
  sub_1000B4F14(v13);
  v35[1] = v9;
  sub_1002D8980();
  sub_1002D8920();
  v24 = *(v17 + 56);
  v35[2] = v17 + 56;
  v37 = v24;
  v25 = v42;
  v24(v42, 1, 1, v16);
  v26 = sub_1002D86B0();
  v27 = *(*(v26 - 8) + 56);
  v28 = v43;
  v27(v43, 1, 1, v26);
  v29 = v44;
  v30 = v25;
  v31 = v28;
  sub_1002D86E0();
  v32 = (v29 + v41);
  v41 = *(v45 + 48);
  *v32 = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v13);
  sub_1002D8980();
  sub_1002D8920();
  v37(v30, 1, 1, v36);
  v27(v31, 1, 1, v26);
  sub_1002D86E0();
  v33 = sub_100028760(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519E48 = v33;
  return result;
}

unint64_t sub_100010528()
{
  result = qword_10043C2C0;
  if (!qword_10043C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2C0);
  }

  return result;
}

Swift::Int sub_10001057C()
{
  v1 = *v0;
  sub_1002D8E50();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_1002D8E60(v2);
  return sub_1002D8E70();
}

void sub_1000105CC()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  sub_1002D8E60(v1);
}

Swift::Int sub_100010604()
{
  v1 = *v0;
  sub_1002D8E50();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_1002D8E60(v2);
  return sub_1002D8E70();
}

void *sub_100010650@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_100010670(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t sub_10001068C()
{
  result = qword_10043C2C8;
  if (!qword_10043C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2C8);
  }

  return result;
}

unint64_t sub_1000106E4()
{
  result = qword_10043C2D0;
  if (!qword_10043C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2D0);
  }

  return result;
}

unint64_t sub_10001073C()
{
  result = qword_10043C2D8;
  if (!qword_10043C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2D8);
  }

  return result;
}

unint64_t sub_100010790()
{
  result = qword_10043C2E0;
  if (!qword_10043C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2E0);
  }

  return result;
}

unint64_t sub_1000107E8()
{
  result = qword_10043C2E8;
  if (!qword_10043C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2E8);
  }

  return result;
}

unint64_t sub_100010840()
{
  result = qword_10043C2F0;
  if (!qword_10043C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2F0);
  }

  return result;
}

unint64_t sub_100010898()
{
  result = qword_10043C2F8;
  if (!qword_10043C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C2F8);
  }

  return result;
}

unint64_t sub_1000108F0()
{
  result = qword_10043C300;
  if (!qword_10043C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C300);
  }

  return result;
}

unint64_t sub_100010980()
{
  result = qword_10043C308;
  if (!qword_10043C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C308);
  }

  return result;
}

uint64_t sub_1000109D4(uint64_t a1)
{
  v2 = sub_100010980();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100010A24()
{
  result = qword_10043C310;
  if (!qword_10043C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C310);
  }

  return result;
}

unint64_t sub_100010A7C()
{
  result = qword_10043C318;
  if (!qword_10043C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C318);
  }

  return result;
}

uint64_t sub_100010AF8(uint64_t a1)
{
  v2 = sub_1000108F0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100010B84()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_1002D8990();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1002D8900();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1002D8CF0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1002D8840();
  sub_10001EDF0(v15, qword_100519E50);
  sub_10001EDB8(v15, qword_100519E50);
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  sub_1002D8980();
  sub_1002D8920();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1002D8830();
}

uint64_t sub_100010E20()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v40 = v34 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v47 = v34 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1002D8900();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1002D8CF0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v46 = sub_1002D8910();
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v46);
  sub_10000321C(&qword_10043CB30, &qword_1002DF9E8);
  v16 = sub_10000321C(&qword_10043CB38, &qword_1002DF9F0);
  v37 = v16;
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v38 = 2 * v17;
  v19 = swift_allocObject();
  v39 = v19;
  *(v19 + 16) = xmmword_1002D9F50;
  v35 = *(v16 + 48);
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_1002D8CE0();
  v34[0] = v11;
  sub_1000B4F14(v11);
  sub_1002D8980();
  v34[1] = "AUDIO_DUCKING_OFF";
  sub_1002D8920();
  v21 = *(v14 + 56);
  v44 = v14 + 56;
  v45 = v21;
  v21(v47, 1, 1, v46);
  v42 = sub_1002D86B0();
  v22 = *(v42 - 8);
  v41 = *(v22 + 56);
  v43 = v22 + 56;
  v23 = v40;
  v41(v40, 1, 1, v42);
  sub_1002D86E0();
  v24 = (v20 + v17);
  v25 = v20;
  v36 = v20;
  v26 = v37;
  v35 = *(v37 + 48);
  *v24 = 1;
  sub_1002D8CE0();
  v27 = v34[0];
  sub_1000B4F14(v34[0]);
  sub_1002D8980();
  sub_1002D8920();
  v28 = v46;
  v29 = v47;
  v45(v47, 1, 1, v46);
  v41(v23, 1, 1, v42);
  v30 = v29;
  sub_1002D86E0();
  v31 = (v25 + v38);
  v38 = *(v26 + 48);
  *v31 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v27);
  sub_1002D8980();
  sub_1002D8920();
  v45(v30, 1, 1, v28);
  v41(v23, 1, 1, v42);
  sub_1002D86E0();
  v32 = sub_10002893C(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519E68 = v32;
  return result;
}

unint64_t sub_10001143C()
{
  result = qword_10043C330;
  if (!qword_10043C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C330);
  }

  return result;
}

unint64_t sub_100011494()
{
  result = qword_10043C338;
  if (!qword_10043C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C338);
  }

  return result;
}

unint64_t sub_1000114EC()
{
  result = qword_10043C340;
  if (!qword_10043C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C340);
  }

  return result;
}

unint64_t sub_100011544()
{
  result = qword_10043C348;
  if (!qword_10043C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C348);
  }

  return result;
}

unint64_t sub_100011598()
{
  result = qword_10043C350;
  if (!qword_10043C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C350);
  }

  return result;
}

unint64_t sub_1000115F0()
{
  result = qword_10043C358;
  if (!qword_10043C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C358);
  }

  return result;
}

unint64_t sub_100011648()
{
  result = qword_10043C360;
  if (!qword_10043C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C360);
  }

  return result;
}

unint64_t sub_1000116A0()
{
  result = qword_10043C368;
  if (!qword_10043C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C368);
  }

  return result;
}

unint64_t sub_1000116F8()
{
  result = qword_10043C370;
  if (!qword_10043C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C370);
  }

  return result;
}

unint64_t sub_100011788()
{
  result = qword_10043C378;
  if (!qword_10043C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C378);
  }

  return result;
}

uint64_t sub_1000117DC(uint64_t a1)
{
  v2 = sub_100011788();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001182C()
{
  result = qword_10043C380;
  if (!qword_10043C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C380);
  }

  return result;
}

unint64_t sub_100011884()
{
  result = qword_10043C388;
  if (!qword_10043C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C388);
  }

  return result;
}

uint64_t sub_100011900(uint64_t a1)
{
  v2 = sub_1000116F8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000119B8()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v40 = v33 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v38 = v33 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002D8900();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002D8CF0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1002D8910();
  v45 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000321C(&qword_10043CB20, &qword_1002DF9D8);
  v19 = sub_10000321C(&qword_10043CB28, &qword_1002DF9E0);
  v36 = v19;
  v20 = *(*(v19 - 8) + 72);
  v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v37 = 2 * v20;
  v22 = swift_allocObject();
  v39 = v22;
  *(v22 + 16) = xmmword_1002D9F50;
  v23 = *(v19 + 48);
  v34 = v22 + v21;
  v35 = v23;
  *(v22 + v21) = 0;
  sub_1002D8CE0();
  sub_1000B4F14(v13);
  v33[1] = v9;
  sub_1002D8980();
  sub_1002D8920();
  v24 = *(v17 + 56);
  v44 = v17 + 56;
  v46 = v24;
  v25 = v38;
  v24(v38, 1, 1, v16);
  v42 = sub_1002D86B0();
  v26 = *(v42 - 8);
  v41 = *(v26 + 56);
  v43 = v26 + 56;
  v27 = v40;
  v41(v40, 1, 1, v42);
  v28 = v34;
  sub_1002D86E0();
  v29 = v36;
  v35 = *(v36 + 48);
  *(v28 + v20) = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v13);
  sub_1002D8980();
  sub_1002D8920();
  v46(v25, 1, 1, v45);
  v41(v27, 1, 1, v42);
  sub_1002D86E0();
  v30 = (v28 + v37);
  v37 = *(v29 + 48);
  *v30 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v13);
  sub_1002D8980();
  sub_1002D8920();
  v46(v25, 1, 1, v45);
  v41(v27, 1, 1, v42);
  sub_1002D86E0();
  v31 = sub_100028B18(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519E88 = v31;
  return result;
}

unint64_t sub_100011FC8()
{
  result = qword_10043C3A0;
  if (!qword_10043C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3A0);
  }

  return result;
}

unint64_t sub_100012020()
{
  result = qword_10043C3A8;
  if (!qword_10043C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3A8);
  }

  return result;
}

unint64_t sub_100012078()
{
  result = qword_10043C3B0;
  if (!qword_10043C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3B0);
  }

  return result;
}

unint64_t sub_1000120D0()
{
  result = qword_10043C3B8;
  if (!qword_10043C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3B8);
  }

  return result;
}

unint64_t sub_100012124()
{
  result = qword_10043C3C0;
  if (!qword_10043C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3C0);
  }

  return result;
}

unint64_t sub_10001217C()
{
  result = qword_10043C3C8;
  if (!qword_10043C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3C8);
  }

  return result;
}

unint64_t sub_1000121D4()
{
  result = qword_10043C3D0;
  if (!qword_10043C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3D0);
  }

  return result;
}

unint64_t sub_10001222C()
{
  result = qword_10043C3D8;
  if (!qword_10043C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3D8);
  }

  return result;
}

unint64_t sub_100012284()
{
  result = qword_10043C3E0;
  if (!qword_10043C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3E0);
  }

  return result;
}

unint64_t sub_100012314()
{
  result = qword_10043C3E8;
  if (!qword_10043C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3E8);
  }

  return result;
}

uint64_t sub_100012368(uint64_t a1)
{
  v2 = sub_100012314();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000123B8()
{
  result = qword_10043C3F0;
  if (!qword_10043C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3F0);
  }

  return result;
}

unint64_t sub_100012410()
{
  result = qword_10043C3F8;
  if (!qword_10043C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C3F8);
  }

  return result;
}

uint64_t sub_10001248C(uint64_t a1)
{
  v2 = sub_100012284();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100012544()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v43 = v35 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v42 = v35 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002D8900();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002D8CF0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1002D8910();
  v36 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v35[0] = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000321C(&qword_10043CB10, &qword_1002DF9C8);
  v20 = sub_10000321C(&qword_10043CB18, &qword_1002DF9D0);
  v45 = v20;
  v21 = *(v20 - 8);
  v41 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v40 = v23;
  *(v23 + 16) = xmmword_1002D9F40;
  v44 = v23 + v22;
  v38 = *(v20 + 48);
  *(v23 + v22) = 0;
  sub_1002D8CE0();
  v39 = "AUDIO_DUCKING_OFF";
  sub_1000B4F14(v13);
  v35[1] = v9;
  sub_1002D8980();
  sub_1002D8920();
  v24 = *(v17 + 56);
  v35[2] = v17 + 56;
  v37 = v24;
  v25 = v42;
  v24(v42, 1, 1, v16);
  v26 = sub_1002D86B0();
  v27 = *(*(v26 - 8) + 56);
  v28 = v43;
  v27(v43, 1, 1, v26);
  v29 = v44;
  v30 = v25;
  v31 = v28;
  sub_1002D86E0();
  v32 = (v29 + v41);
  v41 = *(v45 + 48);
  *v32 = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v13);
  sub_1002D8980();
  sub_1002D8920();
  v37(v30, 1, 1, v36);
  v27(v31, 1, 1, v26);
  sub_1002D86E0();
  v33 = sub_100028CF4(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519EA8 = v33;
  return result;
}

unint64_t sub_100012A6C()
{
  result = qword_10043C410;
  if (!qword_10043C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C410);
  }

  return result;
}

Swift::Int sub_100012AC0()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8E60(v1);
  return sub_1002D8E70();
}

Swift::Int sub_100012B08()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8E60(v1);
  return sub_1002D8E70();
}

void *sub_100012B4C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_100012B70()
{
  result = qword_10043C418;
  if (!qword_10043C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C418);
  }

  return result;
}

unint64_t sub_100012BC8()
{
  result = qword_10043C420;
  if (!qword_10043C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C420);
  }

  return result;
}

unint64_t sub_100012C20()
{
  result = qword_10043C428;
  if (!qword_10043C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C428);
  }

  return result;
}

unint64_t sub_100012C74()
{
  result = qword_10043C430;
  if (!qword_10043C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C430);
  }

  return result;
}

unint64_t sub_100012CCC()
{
  result = qword_10043C438;
  if (!qword_10043C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C438);
  }

  return result;
}

unint64_t sub_100012D24()
{
  result = qword_10043C440;
  if (!qword_10043C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C440);
  }

  return result;
}

unint64_t sub_100012D7C()
{
  result = qword_10043C448;
  if (!qword_10043C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C448);
  }

  return result;
}

unint64_t sub_100012DD4()
{
  result = qword_10043C450;
  if (!qword_10043C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C450);
  }

  return result;
}

unint64_t sub_100012E64()
{
  result = qword_10043C458;
  if (!qword_10043C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C458);
  }

  return result;
}

uint64_t sub_100012EB8(uint64_t a1)
{
  v2 = sub_100012E64();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100012F08()
{
  result = qword_10043C460;
  if (!qword_10043C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C460);
  }

  return result;
}

unint64_t sub_100012F60()
{
  result = qword_10043C468;
  if (!qword_10043C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C468);
  }

  return result;
}

uint64_t sub_100012FDC(uint64_t a1)
{
  v2 = sub_100012DD4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100013094(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a4;
  v5 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5 - 8);
  v8 = v22 - v7;
  v9 = sub_1002D8990();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1002D8900();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1002D8CF0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_1002D8910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = sub_1002D8840();
  sub_10001EDF0(v20, a2);
  sub_10001EDB8(v20, a2);
  sub_1002D8CE0();
  sub_1000B4F14(v14);
  sub_1002D8980();
  sub_1002D8920();
  (*(v18 + 56))(v8, 1, 1, v17);
  return sub_1002D8830();
}

uint64_t sub_100013324()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v40 = v34 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v47 = v34 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1002D8900();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1002D8CF0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v46 = sub_1002D8910();
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v46);
  sub_10000321C(&qword_10043CB00, &qword_1002DF9B8);
  v16 = sub_10000321C(&qword_10043CB08, &qword_1002DF9C0);
  v37 = v16;
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v38 = 2 * v17;
  v19 = swift_allocObject();
  v39 = v19;
  *(v19 + 16) = xmmword_1002D9F50;
  v35 = *(v16 + 48);
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_1002D8CE0();
  v34[0] = v11;
  sub_1000B4F14(v11);
  sub_1002D8980();
  v34[1] = "AUDIO_DUCKING_OFF";
  sub_1002D8920();
  v21 = *(v14 + 56);
  v44 = v14 + 56;
  v45 = v21;
  v21(v47, 1, 1, v46);
  v42 = sub_1002D86B0();
  v22 = *(v42 - 8);
  v41 = *(v22 + 56);
  v43 = v22 + 56;
  v23 = v40;
  v41(v40, 1, 1, v42);
  sub_1002D86E0();
  v24 = (v20 + v17);
  v25 = v20;
  v36 = v20;
  v26 = v37;
  v35 = *(v37 + 48);
  *v24 = 1;
  sub_1002D8CE0();
  v27 = v34[0];
  sub_1000B4F14(v34[0]);
  sub_1002D8980();
  sub_1002D8920();
  v28 = v46;
  v29 = v47;
  v45(v47, 1, 1, v46);
  v41(v23, 1, 1, v42);
  v30 = v29;
  sub_1002D86E0();
  v31 = (v25 + v38);
  v38 = *(v26 + 48);
  *v31 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v27);
  sub_1002D8980();
  sub_1002D8920();
  v45(v30, 1, 1, v28);
  v41(v23, 1, 1, v42);
  sub_1002D86E0();
  v32 = sub_100028ED0(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519EC8 = v32;
  return result;
}

unint64_t sub_100013940()
{
  result = qword_10043C480;
  if (!qword_10043C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C480);
  }

  return result;
}

unint64_t sub_100013998()
{
  result = qword_10043C488;
  if (!qword_10043C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C488);
  }

  return result;
}

unint64_t sub_1000139F0()
{
  result = qword_10043C490;
  if (!qword_10043C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C490);
  }

  return result;
}

unint64_t sub_100013A48()
{
  result = qword_10043C498;
  if (!qword_10043C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C498);
  }

  return result;
}

unint64_t sub_100013A9C()
{
  result = qword_10043C4A0;
  if (!qword_10043C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4A0);
  }

  return result;
}

unint64_t sub_100013AF4()
{
  result = qword_10043C4A8;
  if (!qword_10043C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4A8);
  }

  return result;
}

unint64_t sub_100013B4C()
{
  result = qword_10043C4B0;
  if (!qword_10043C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4B0);
  }

  return result;
}

unint64_t sub_100013BA4()
{
  result = qword_10043C4B8;
  if (!qword_10043C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4B8);
  }

  return result;
}

unint64_t sub_100013BFC()
{
  result = qword_10043C4C0;
  if (!qword_10043C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4C0);
  }

  return result;
}

unint64_t sub_100013C8C()
{
  result = qword_10043C4C8;
  if (!qword_10043C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4C8);
  }

  return result;
}

uint64_t sub_100013CE0(uint64_t a1)
{
  v2 = sub_100013C8C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100013D30()
{
  result = qword_10043C4D0;
  if (!qword_10043C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4D0);
  }

  return result;
}

unint64_t sub_100013D88()
{
  result = qword_10043C4D8;
  if (!qword_10043C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4D8);
  }

  return result;
}

uint64_t sub_100013E04(uint64_t a1)
{
  v2 = sub_100013BFC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100013E90()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_1002D8990();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1002D8900();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1002D8CF0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1002D8840();
  sub_10001EDF0(v15, qword_100519ED0);
  sub_10001EDB8(v15, qword_100519ED0);
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  sub_1002D8980();
  sub_1002D8920();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1002D8830();
}

uint64_t sub_100014130()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v40 = v34 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v47 = v34 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1002D8900();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1002D8CF0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v46 = sub_1002D8910();
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v46);
  sub_10000321C(&qword_10043CAF0, &qword_1002DF9A8);
  v16 = sub_10000321C(&qword_10043CAF8, &qword_1002DF9B0);
  v37 = v16;
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v38 = 2 * v17;
  v19 = swift_allocObject();
  v39 = v19;
  *(v19 + 16) = xmmword_1002D9F50;
  v35 = *(v16 + 48);
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_1002D8CE0();
  v34[0] = v11;
  sub_1000B4F14(v11);
  sub_1002D8980();
  v34[1] = "STATUS_CELLS_POSITION_OFF";
  sub_1002D8920();
  v21 = *(v14 + 56);
  v44 = v14 + 56;
  v45 = v21;
  v21(v47, 1, 1, v46);
  v42 = sub_1002D86B0();
  v22 = *(v42 - 8);
  v41 = *(v22 + 56);
  v43 = v22 + 56;
  v23 = v40;
  v41(v40, 1, 1, v42);
  sub_1002D86E0();
  v24 = (v20 + v17);
  v25 = v20;
  v36 = v20;
  v26 = v37;
  v35 = *(v37 + 48);
  *v24 = 1;
  sub_1002D8CE0();
  v27 = v34[0];
  sub_1000B4F14(v34[0]);
  sub_1002D8980();
  sub_1002D8920();
  v28 = v46;
  v29 = v47;
  v45(v47, 1, 1, v46);
  v41(v23, 1, 1, v42);
  v30 = v29;
  sub_1002D86E0();
  v31 = (v25 + v38);
  v38 = *(v26 + 48);
  *v31 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v27);
  sub_1002D8980();
  sub_1002D8920();
  v45(v30, 1, 1, v28);
  v41(v23, 1, 1, v42);
  sub_1002D86E0();
  v32 = sub_1000290AC(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519EE8 = v32;
  return result;
}

unint64_t sub_10001474C()
{
  result = qword_10043C4F0;
  if (!qword_10043C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4F0);
  }

  return result;
}

unint64_t sub_1000147A4()
{
  result = qword_10043C4F8;
  if (!qword_10043C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C4F8);
  }

  return result;
}

unint64_t sub_1000147FC()
{
  result = qword_10043C500;
  if (!qword_10043C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C500);
  }

  return result;
}

unint64_t sub_100014854()
{
  result = qword_10043C508;
  if (!qword_10043C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C508);
  }

  return result;
}

unint64_t sub_1000148A8()
{
  result = qword_10043C510;
  if (!qword_10043C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C510);
  }

  return result;
}

unint64_t sub_100014900()
{
  result = qword_10043C518;
  if (!qword_10043C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C518);
  }

  return result;
}

unint64_t sub_100014958()
{
  result = qword_10043C520;
  if (!qword_10043C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C520);
  }

  return result;
}

unint64_t sub_1000149B0()
{
  result = qword_10043C528;
  if (!qword_10043C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C528);
  }

  return result;
}

unint64_t sub_100014A08()
{
  result = qword_10043C530;
  if (!qword_10043C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C530);
  }

  return result;
}

unint64_t sub_100014A98()
{
  result = qword_10043C538;
  if (!qword_10043C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C538);
  }

  return result;
}

uint64_t sub_100014AEC(uint64_t a1)
{
  v2 = sub_100014A98();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100014B3C()
{
  result = qword_10043C540;
  if (!qword_10043C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C540);
  }

  return result;
}

unint64_t sub_100014B94()
{
  result = qword_10043C548;
  if (!qword_10043C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C548);
  }

  return result;
}

uint64_t sub_100014C10(uint64_t a1)
{
  v2 = sub_100014A08();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100014C9C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_1002D8990();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1002D8900();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1002D8CF0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1002D8840();
  sub_10001EDF0(v15, qword_100519EF0);
  sub_10001EDB8(v15, qword_100519EF0);
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  sub_1002D8980();
  sub_1002D8920();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1002D8830();
}

uint64_t sub_100014F3C()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v41 = v34 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v39 = v34 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1002D8900();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1002D8CF0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1002D8910();
  v17 = *(v16 - 8);
  v46 = v16;
  v47 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000321C(&qword_10043CAE0, &qword_1002DF998);
  v19 = sub_10000321C(&qword_10043CAE8, &qword_1002DF9A0);
  v42 = v19;
  v20 = *(*(v19 - 8) + 72);
  v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v38 = 2 * v20;
  v22 = swift_allocObject();
  v40 = v22;
  *(v22 + 16) = xmmword_1002D9F50;
  v23 = v22 + v21;
  v24 = *(v19 + 48);
  *(v22 + v21) = 0;
  sub_1002D8CE0();
  v37 = "SOUND_OPTION_SPEAK_AND_SOUND";
  sub_1000B4F14(v11);
  sub_1002D8980();
  sub_1002D8920();
  v36 = *(v47 + 56);
  v47 += 56;
  v25 = v39;
  v36(v39, 1, 1, v16);
  v44 = sub_1002D86B0();
  v26 = *(v44 - 8);
  v43 = *(v26 + 56);
  v45 = v26 + 56;
  v27 = v41;
  v43(v41, 1, 1, v44);
  v35 = v23;
  sub_1002D86E0();
  v28 = v42;
  v29 = *(v42 + 48);
  v34[0] = v15;
  v34[1] = v29;
  *(v23 + v20) = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v11);
  sub_1002D8980();
  sub_1002D8920();
  v30 = v36;
  v36(v25, 1, 1, v46);
  v43(v27, 1, 1, v44);
  sub_1002D86E0();
  v31 = (v35 + v38);
  v38 = *(v28 + 48);
  *v31 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v11);
  sub_1002D8980();
  sub_1002D8920();
  v30(v25, 1, 1, v46);
  v43(v27, 1, 1, v44);
  sub_1002D86E0();
  v32 = sub_100029288(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519F08 = v32;
  return result;
}

unint64_t sub_100015528()
{
  result = qword_10043C560;
  if (!qword_10043C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C560);
  }

  return result;
}

unint64_t sub_100015580()
{
  result = qword_10043C568;
  if (!qword_10043C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C568);
  }

  return result;
}

unint64_t sub_1000155D8()
{
  result = qword_10043C570;
  if (!qword_10043C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C570);
  }

  return result;
}

unint64_t sub_100015630()
{
  result = qword_10043C578;
  if (!qword_10043C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C578);
  }

  return result;
}

unint64_t sub_100015684()
{
  result = qword_10043C580;
  if (!qword_10043C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C580);
  }

  return result;
}

unint64_t sub_1000156DC()
{
  result = qword_10043C588;
  if (!qword_10043C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C588);
  }

  return result;
}

unint64_t sub_100015734()
{
  result = qword_10043C590;
  if (!qword_10043C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C590);
  }

  return result;
}

unint64_t sub_10001578C()
{
  result = qword_10043C598;
  if (!qword_10043C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C598);
  }

  return result;
}

unint64_t sub_1000157E4()
{
  result = qword_10043C5A0;
  if (!qword_10043C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5A0);
  }

  return result;
}

unint64_t sub_100015874()
{
  result = qword_10043C5A8;
  if (!qword_10043C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5A8);
  }

  return result;
}

uint64_t sub_1000158C8(uint64_t a1)
{
  v2 = sub_100015874();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100015918()
{
  result = qword_10043C5B0;
  if (!qword_10043C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5B0);
  }

  return result;
}

unint64_t sub_100015970()
{
  result = qword_10043C5B8;
  if (!qword_10043C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5B8);
  }

  return result;
}

uint64_t sub_1000159EC(uint64_t a1)
{
  v2 = sub_1000157E4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100015A78()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_1002D8990();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1002D8900();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1002D8CF0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1002D8840();
  sub_10001EDF0(v15, qword_100519F10);
  sub_10001EDB8(v15, qword_100519F10);
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  sub_1002D8980();
  sub_1002D8920();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1002D8830();
}

uint64_t sub_100015D14()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v70 = v52 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v61 = v52 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002D8900();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002D8CF0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1002D8910();
  v64 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000321C(&qword_10043CAD0, &qword_1002DF988);
  v21 = sub_10000321C(&qword_10043CAD8, &qword_1002DF990);
  v65 = v21;
  v22 = *(*(v21 - 8) + 72);
  v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
  v55 = 4 * v22;
  v24 = swift_allocObject();
  v56 = v24;
  *(v24 + 16) = xmmword_1002D9F70;
  v25 = v24 + v23;
  v26 = *(v21 + 48);
  v58 = v17;
  v59 = v26;
  *(v24 + v23) = 0;
  sub_1002D8CE0();
  sub_1000B4F14(v13);
  v62 = v9;
  sub_1002D8980();
  v27 = v13;
  sub_1002D8920();
  v28 = *(v19 + 56);
  v66 = v19 + 56;
  v69 = v28;
  v29 = v61;
  v28(v61, 1, 1, v18);
  v67 = sub_1002D86B0();
  v30 = *(v67 - 8);
  v60 = *(v30 + 56);
  v68 = v30 + 56;
  v31 = v70;
  v60(v70, 1, 1, v67);
  v63 = v25;
  v32 = v31;
  sub_1002D86E0();
  v33 = v22;
  v34 = v65;
  v53 = *(v65 + 48);
  v54 = v22;
  *(v25 + v22) = 1;
  sub_1002D8CE0();
  v59 = "ComfortSound_Stream";
  v57 = v27;
  sub_1000B4F14(v27);
  sub_1002D8980();
  sub_1002D8920();
  v35 = v64;
  v69(v29, 1, 1, v64);
  v36 = v60;
  v60(v32, 1, 1, v67);
  sub_1002D86E0();
  v53 = 2 * v33;
  v37 = *(v34 + 48);
  v52[0] = v63 + 2 * v33;
  v52[1] = v37;
  *v52[0] = 2;
  sub_1002D8CE0();
  v38 = v57;
  sub_1000B4F14(v57);
  sub_1002D8980();
  v39 = v38;
  sub_1002D8920();
  v40 = v69;
  v69(v29, 1, 1, v35);
  v41 = v67;
  v36(v70, 1, 1, v67);
  sub_1002D86E0();
  v42 = v63;
  v43 = v65;
  v44 = *(v65 + 48);
  v53 += v63 + v54;
  v54 = v44;
  *v53 = 3;
  sub_1002D8CE0();
  sub_1000B4F14(v39);
  sub_1002D8980();
  sub_1002D8920();
  v45 = v61;
  v40(v61, 1, 1, v64);
  v46 = v70;
  v47 = v41;
  v48 = v60;
  v60(v70, 1, 1, v47);
  sub_1002D86E0();
  v49 = *(v43 + 48);
  *(v42 + v55) = 4;
  sub_1002D8CE0();
  sub_1000B4F14(v57);
  sub_1002D8980();
  sub_1002D8920();
  v69(v45, 1, 1, v64);
  v48(v46, 1, 1, v67);
  sub_1002D86E0();
  v50 = sub_100029464(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519F28 = v50;
  return result;
}

unint64_t sub_100016528()
{
  result = qword_10043C5D0;
  if (!qword_10043C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5D0);
  }

  return result;
}

unint64_t sub_10001657C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EC3C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000165AC()
{
  result = qword_10043C5D8;
  if (!qword_10043C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5D8);
  }

  return result;
}

unint64_t sub_100016604()
{
  result = qword_10043C5E0;
  if (!qword_10043C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5E0);
  }

  return result;
}

unint64_t sub_10001665C()
{
  result = qword_10043C5E8;
  if (!qword_10043C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5E8);
  }

  return result;
}

unint64_t sub_1000166B0()
{
  result = qword_10043C5F0;
  if (!qword_10043C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5F0);
  }

  return result;
}

unint64_t sub_100016708()
{
  result = qword_10043C5F8;
  if (!qword_10043C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C5F8);
  }

  return result;
}

unint64_t sub_100016760()
{
  result = qword_10043C600;
  if (!qword_10043C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C600);
  }

  return result;
}

unint64_t sub_1000167B8()
{
  result = qword_10043C608;
  if (!qword_10043C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C608);
  }

  return result;
}

unint64_t sub_100016810()
{
  result = qword_10043C610;
  if (!qword_10043C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C610);
  }

  return result;
}

unint64_t sub_1000168A0()
{
  result = qword_10043C618;
  if (!qword_10043C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C618);
  }

  return result;
}

uint64_t sub_1000168F4(uint64_t a1)
{
  v2 = sub_1000168A0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100016944()
{
  result = qword_10043C620;
  if (!qword_10043C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C620);
  }

  return result;
}

unint64_t sub_10001699C()
{
  result = qword_10043C628;
  if (!qword_10043C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C628);
  }

  return result;
}

uint64_t sub_100016A18(uint64_t a1)
{
  v2 = sub_100016810();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100016AD0()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v69 = &v56 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v56 - v5;
  v7 = sub_1002D8990();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1002D8900();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1002D8CF0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1002D8910();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10000321C(&qword_10043CAC0, &qword_1002DF978);
  v22 = sub_10000321C(&qword_10043CAC8, &qword_1002DF980);
  v23 = *(v22 - 8);
  v73 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002D9F30;
  v26 = (v25 + v24);
  v61 = *(v22 + 48);
  v62 = v25;
  *v26 = 0;
  sub_1002D8CE0();
  v75 = "ComfortSound_PinkNoise";
  sub_1000B4F14(v14);
  v72 = v10;
  sub_1002D8980();
  sub_1002D8920();
  v27 = *(v20 + 56);
  v71 = v20 + 56;
  v65 = v19;
  v66 = v27;
  v27(v6, 1, 1, v19);
  v64 = sub_1002D86B0();
  v28 = *(v64 - 8);
  v68 = *(v28 + 56);
  v70 = v28 + 56;
  v29 = v69;
  v68(v69, 1, 1, v64);
  v74 = v26;
  sub_1002D86E0();
  v30 = v73;
  v67 = v22;
  v31 = *(v22 + 48);
  v60 = &v26[v73];
  v61 = v31;
  *v60 = 1;
  v63 = v18;
  sub_1002D8CE0();
  v57 = v14;
  sub_1000B4F14(v14);
  sub_1002D8980();
  sub_1002D8920();
  v58 = v6;
  v32 = v6;
  v33 = v65;
  v34 = v66;
  v66(v32, 1, 1, v65);
  v35 = v64;
  v68(v29, 1, 1, v64);
  sub_1002D86E0();
  v61 = 2 * v30;
  v36 = *(v22 + 48);
  v59 = &v74[2 * v30];
  v60 = v36;
  *v59 = 2;
  sub_1002D8CE0();
  v37 = v57;
  sub_1000B4F14(v57);
  sub_1002D8980();
  v38 = v37;
  sub_1002D8920();
  v39 = v58;
  v34(v58, 1, 1, v33);
  v40 = v69;
  v41 = v35;
  v42 = v68;
  v68(v69, 1, 1, v41);
  sub_1002D86E0();
  v43 = v74;
  v44 = v67;
  v45 = *(v67 + 48);
  v60 = &v74[v61 + v73];
  v61 = v45;
  *v60 = 3;
  sub_1002D8CE0();
  sub_1000B4F14(v38);
  sub_1002D8980();
  sub_1002D8920();
  v47 = v65;
  v46 = v66;
  v66(v39, 1, 1, v65);
  v48 = v64;
  v42(v40, 1, 1, v64);
  sub_1002D86E0();
  v61 = 4 * v73;
  v60 = *(v44 + 48);
  v43[v61] = 4;
  sub_1002D8CE0();
  sub_1000B4F14(v38);
  sub_1002D8980();
  sub_1002D8920();
  v46(v39, 1, 1, v47);
  v49 = v69;
  v50 = v48;
  v51 = v68;
  v68(v69, 1, 1, v50);
  v52 = v49;
  sub_1002D86E0();
  v53 = &v74[v61 + v73];
  v73 = *(v67 + 48);
  *v53 = 5;
  sub_1002D8CE0();
  sub_1000B4F14(v38);
  sub_1002D8980();
  sub_1002D8920();
  v66(v39, 1, 1, v65);
  v51(v52, 1, 1, v64);
  sub_1002D86E0();
  v54 = sub_100029640(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519F48 = v54;
  return result;
}

unint64_t sub_1000173CC()
{
  result = qword_10043C640;
  if (!qword_10043C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C640);
  }

  return result;
}

unint64_t sub_100017424()
{
  result = qword_10043C648;
  if (!qword_10043C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C648);
  }

  return result;
}

unint64_t sub_10001747C()
{
  result = qword_10043C650;
  if (!qword_10043C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C650);
  }

  return result;
}

unint64_t sub_1000174D4()
{
  result = qword_10043C658;
  if (!qword_10043C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C658);
  }

  return result;
}

unint64_t sub_100017528()
{
  result = qword_10043C660;
  if (!qword_10043C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C660);
  }

  return result;
}

unint64_t sub_100017580()
{
  result = qword_10043C668;
  if (!qword_10043C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C668);
  }

  return result;
}

unint64_t sub_1000175D8()
{
  result = qword_10043C670;
  if (!qword_10043C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C670);
  }

  return result;
}

unint64_t sub_100017630()
{
  result = qword_10043C678;
  if (!qword_10043C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C678);
  }

  return result;
}

unint64_t sub_100017688()
{
  result = qword_10043C680;
  if (!qword_10043C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C680);
  }

  return result;
}

unint64_t sub_100017718()
{
  result = qword_10043C688;
  if (!qword_10043C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C688);
  }

  return result;
}

uint64_t sub_10001776C(uint64_t a1)
{
  v2 = sub_100017718();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000177BC()
{
  result = qword_10043C690;
  if (!qword_10043C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C690);
  }

  return result;
}

unint64_t sub_100017814()
{
  result = qword_10043C698;
  if (!qword_10043C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C698);
  }

  return result;
}

uint64_t sub_100017890(uint64_t a1)
{
  v2 = sub_100017688();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100017944()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v40 = v34 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v47 = v34 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1002D8900();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1002D8CF0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v46 = sub_1002D8910();
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v46);
  sub_10000321C(&qword_10043CAB0, &qword_1002DF968);
  v16 = sub_10000321C(&qword_10043CAB8, &qword_1002DF970);
  v37 = v16;
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v38 = 2 * v17;
  v19 = swift_allocObject();
  v39 = v19;
  *(v19 + 16) = xmmword_1002D9F50;
  v35 = *(v16 + 48);
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_1002D8CE0();
  v34[0] = v11;
  sub_1000B4F14(v11);
  sub_1002D8980();
  v34[1] = "HOME_CLICK_SPEED_DEFAULT";
  sub_1002D8920();
  v21 = *(v14 + 56);
  v44 = v14 + 56;
  v45 = v21;
  v21(v47, 1, 1, v46);
  v42 = sub_1002D86B0();
  v22 = *(v42 - 8);
  v41 = *(v22 + 56);
  v43 = v22 + 56;
  v23 = v40;
  v41(v40, 1, 1, v42);
  sub_1002D86E0();
  v24 = (v20 + v17);
  v25 = v20;
  v36 = v20;
  v26 = v37;
  v35 = *(v37 + 48);
  *v24 = 1;
  sub_1002D8CE0();
  v27 = v34[0];
  sub_1000B4F14(v34[0]);
  sub_1002D8980();
  sub_1002D8920();
  v28 = v46;
  v29 = v47;
  v45(v47, 1, 1, v46);
  v41(v23, 1, 1, v42);
  v30 = v29;
  sub_1002D86E0();
  v31 = (v25 + v38);
  v38 = *(v26 + 48);
  *v31 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v27);
  sub_1002D8980();
  sub_1002D8920();
  v45(v30, 1, 1, v28);
  v41(v23, 1, 1, v42);
  sub_1002D86E0();
  v32 = sub_10002981C(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519F68 = v32;
  return result;
}

unint64_t sub_100017F60()
{
  result = qword_10043C6B0;
  if (!qword_10043C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6B0);
  }

  return result;
}

unint64_t sub_100017FB8()
{
  result = qword_10043C6B8;
  if (!qword_10043C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6B8);
  }

  return result;
}

unint64_t sub_100018010()
{
  result = qword_10043C6C0;
  if (!qword_10043C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6C0);
  }

  return result;
}

unint64_t sub_100018068()
{
  result = qword_10043C6C8;
  if (!qword_10043C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6C8);
  }

  return result;
}

unint64_t sub_1000180BC()
{
  result = qword_10043C6D0;
  if (!qword_10043C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6D0);
  }

  return result;
}

unint64_t sub_100018114()
{
  result = qword_10043C6D8;
  if (!qword_10043C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6D8);
  }

  return result;
}

unint64_t sub_10001816C()
{
  result = qword_10043C6E0;
  if (!qword_10043C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6E0);
  }

  return result;
}

unint64_t sub_1000181C4()
{
  result = qword_10043C6E8;
  if (!qword_10043C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6E8);
  }

  return result;
}

unint64_t sub_10001821C()
{
  result = qword_10043C6F0;
  if (!qword_10043C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6F0);
  }

  return result;
}

unint64_t sub_1000182AC()
{
  result = qword_10043C6F8;
  if (!qword_10043C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C6F8);
  }

  return result;
}

uint64_t sub_100018300(uint64_t a1)
{
  v2 = sub_1000182AC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100018350()
{
  result = qword_10043C700;
  if (!qword_10043C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C700);
  }

  return result;
}

unint64_t sub_1000183A8()
{
  result = qword_10043C708;
  if (!qword_10043C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C708);
  }

  return result;
}

uint64_t sub_100018424(uint64_t a1)
{
  v2 = sub_10001821C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000184B0()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1002D8910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1002D8840();
  sub_10001EDF0(v7, qword_100519F70);
  sub_10001EDB8(v7, qword_100519F70);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100018620()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v45 = &v36 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002D8900();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8CF0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1002D8910();
  v49 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000321C(&qword_10043CAA0, &qword_1002DF958);
  v18 = sub_10000321C(&qword_10043CAA8, &qword_1002DF960);
  v46 = v18;
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v42 = 2 * v19;
  v21 = swift_allocObject();
  v44 = v21;
  *(v21 + 16) = xmmword_1002D9F50;
  v22 = v21 + v20;
  v41 = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_1002D8CE0();
  v36 = v12;
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v23 = *(v16 + 56);
  v47 = v16 + 56;
  v48 = v23;
  v24 = v43;
  v23(v43, 1, 1, v15);
  v25 = sub_1002D86B0();
  v26 = *(v25 - 8);
  v37 = *(v26 + 56);
  v27 = v26 + 56;
  v28 = v45;
  v39 = v25;
  v37(v45, 1, 1, v25);
  v40 = v27;
  v38 = v22;
  sub_1002D86E0();
  v29 = v46;
  v41 = *(v46 + 48);
  *(v22 + v19) = 1;
  sub_1002D8CE0();
  v30 = v36;
  sub_1000B4F14(v36);
  sub_1002D8980();
  sub_1002D8920();
  v48(v24, 1, 1, v49);
  v31 = v25;
  v32 = v37;
  v37(v28, 1, 1, v31);
  sub_1002D86E0();
  v33 = (v38 + v42);
  v42 = *(v29 + 48);
  *v33 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v30);
  sub_1002D8980();
  sub_1002D8920();
  v48(v24, 1, 1, v49);
  v32(v28, 1, 1, v39);
  sub_1002D86E0();
  v34 = sub_1000299F8(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519F88 = v34;
  return result;
}

unint64_t sub_100018C6C()
{
  result = qword_10043C720;
  if (!qword_10043C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C720);
  }

  return result;
}

Swift::Int sub_100018CC0()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8E60(qword_1002DFAE0[v1]);
  return sub_1002D8E70();
}

Swift::Int sub_100018D48()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8E60(qword_1002DFAE0[v1]);
  return sub_1002D8E70();
}

void *sub_100018D94@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2030100u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100018DD8()
{
  result = qword_10043C728;
  if (!qword_10043C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C728);
  }

  return result;
}

unint64_t sub_100018E30()
{
  result = qword_10043C730;
  if (!qword_10043C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C730);
  }

  return result;
}

unint64_t sub_100018E88()
{
  result = qword_10043C738;
  if (!qword_10043C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C738);
  }

  return result;
}

unint64_t sub_100018EDC()
{
  result = qword_10043C740;
  if (!qword_10043C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C740);
  }

  return result;
}

unint64_t sub_100018F34()
{
  result = qword_10043C748;
  if (!qword_10043C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C748);
  }

  return result;
}

unint64_t sub_100018F8C()
{
  result = qword_10043C750;
  if (!qword_10043C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C750);
  }

  return result;
}

unint64_t sub_100018FE4()
{
  result = qword_10043C758;
  if (!qword_10043C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C758);
  }

  return result;
}

unint64_t sub_10001903C()
{
  result = qword_10043C760;
  if (!qword_10043C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C760);
  }

  return result;
}

unint64_t sub_1000190CC()
{
  result = qword_10043C768;
  if (!qword_10043C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C768);
  }

  return result;
}

uint64_t sub_100019120(uint64_t a1)
{
  v2 = sub_1000190CC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100019170()
{
  result = qword_10043C770;
  if (!qword_10043C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C770);
  }

  return result;
}

unint64_t sub_1000191C8()
{
  result = qword_10043C778;
  if (!qword_10043C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C778);
  }

  return result;
}

uint64_t sub_100019244(uint64_t a1)
{
  v2 = sub_10001903C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000192F8()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v40 = v34 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v47 = v34 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1002D8900();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1002D8CF0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v46 = sub_1002D8910();
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v46);
  sub_10000321C(&qword_10043CA90, &qword_1002DF948);
  v16 = sub_10000321C(&qword_10043CA98, &qword_1002DF950);
  v37 = v16;
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v38 = 2 * v17;
  v19 = swift_allocObject();
  v39 = v19;
  *(v19 + 16) = xmmword_1002D9F50;
  v35 = *(v16 + 48);
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_1002D8CE0();
  v34[0] = v11;
  sub_1000B4F14(v11);
  sub_1002D8980();
  v34[1] = "TAP_BEHAVIOR_DEFAULT_LABEL";
  sub_1002D8920();
  v21 = *(v14 + 56);
  v44 = v14 + 56;
  v45 = v21;
  v21(v47, 1, 1, v46);
  v42 = sub_1002D86B0();
  v22 = *(v42 - 8);
  v41 = *(v22 + 56);
  v43 = v22 + 56;
  v23 = v40;
  v41(v40, 1, 1, v42);
  sub_1002D86E0();
  v24 = (v20 + v17);
  v25 = v20;
  v36 = v20;
  v26 = v37;
  v35 = *(v37 + 48);
  *v24 = 1;
  sub_1002D8CE0();
  v27 = v34[0];
  sub_1000B4F14(v34[0]);
  sub_1002D8980();
  sub_1002D8920();
  v28 = v46;
  v29 = v47;
  v45(v47, 1, 1, v46);
  v41(v23, 1, 1, v42);
  v30 = v29;
  sub_1002D86E0();
  v31 = (v25 + v38);
  v38 = *(v26 + 48);
  *v31 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v27);
  sub_1002D8980();
  sub_1002D8920();
  v45(v30, 1, 1, v28);
  v41(v23, 1, 1, v42);
  sub_1002D86E0();
  v32 = sub_100029BD4(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519FA8 = v32;
  return result;
}

unint64_t sub_100019914()
{
  result = qword_10043C790;
  if (!qword_10043C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C790);
  }

  return result;
}

unint64_t sub_10001996C()
{
  result = qword_10043C798;
  if (!qword_10043C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C798);
  }

  return result;
}

unint64_t sub_1000199C4()
{
  result = qword_10043C7A0;
  if (!qword_10043C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7A0);
  }

  return result;
}

unint64_t sub_100019A1C()
{
  result = qword_10043C7A8;
  if (!qword_10043C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7A8);
  }

  return result;
}

unint64_t sub_100019A70()
{
  result = qword_10043C7B0;
  if (!qword_10043C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7B0);
  }

  return result;
}

unint64_t sub_100019AC8()
{
  result = qword_10043C7B8;
  if (!qword_10043C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7B8);
  }

  return result;
}

unint64_t sub_100019B20()
{
  result = qword_10043C7C0;
  if (!qword_10043C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7C0);
  }

  return result;
}

unint64_t sub_100019B78()
{
  result = qword_10043C7C8;
  if (!qword_10043C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7C8);
  }

  return result;
}

unint64_t sub_100019BD0()
{
  result = qword_10043C7D0;
  if (!qword_10043C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7D0);
  }

  return result;
}

unint64_t sub_100019C60()
{
  result = qword_10043C7D8;
  if (!qword_10043C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7D8);
  }

  return result;
}

uint64_t sub_100019CB4(uint64_t a1)
{
  v2 = sub_100019C60();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100019D04()
{
  result = qword_10043C7E0;
  if (!qword_10043C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7E0);
  }

  return result;
}

unint64_t sub_100019D5C()
{
  result = qword_10043C7E8;
  if (!qword_10043C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C7E8);
  }

  return result;
}

uint64_t sub_100019DD8(uint64_t a1)
{
  v2 = sub_100019BD0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100019E64()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_1002D8990();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1002D8900();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1002D8CF0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1002D8840();
  sub_10001EDF0(v15, qword_100519FB0);
  sub_10001EDB8(v15, qword_100519FB0);
  sub_1002D8CE0();
  sub_1000B4F14(v9);
  sub_1002D8980();
  sub_1002D8920();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1002D8830();
}

uint64_t sub_10001A108()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v45 = &v36 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002D8900();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8CF0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1002D8910();
  v49 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000321C(&qword_10043CA80, &qword_1002DF938);
  v18 = sub_10000321C(&qword_10043CA88, &qword_1002DF940);
  v46 = v18;
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v42 = 2 * v19;
  v21 = swift_allocObject();
  v44 = v21;
  *(v21 + 16) = xmmword_1002D9F50;
  v22 = v21 + v20;
  v41 = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_1002D8CE0();
  v36 = v12;
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v23 = *(v16 + 56);
  v47 = v16 + 56;
  v48 = v23;
  v24 = v43;
  v23(v43, 1, 1, v15);
  v25 = sub_1002D86B0();
  v26 = *(v25 - 8);
  v37 = *(v26 + 56);
  v27 = v26 + 56;
  v28 = v45;
  v39 = v25;
  v37(v45, 1, 1, v25);
  v40 = v27;
  v38 = v22;
  sub_1002D86E0();
  v29 = v46;
  v41 = *(v46 + 48);
  *(v22 + v19) = 1;
  sub_1002D8CE0();
  v30 = v36;
  sub_1000B4F14(v36);
  sub_1002D8980();
  sub_1002D8920();
  v48(v24, 1, 1, v49);
  v31 = v25;
  v32 = v37;
  v37(v28, 1, 1, v31);
  sub_1002D86E0();
  v33 = (v38 + v42);
  v42 = *(v29 + 48);
  *v33 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v30);
  sub_1002D8980();
  sub_1002D8920();
  v48(v24, 1, 1, v49);
  v32(v28, 1, 1, v39);
  sub_1002D86E0();
  v34 = sub_100029DB0(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519FC8 = v34;
  return result;
}

unint64_t sub_10001A754()
{
  result = qword_10043C800;
  if (!qword_10043C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C800);
  }

  return result;
}

Swift::Int sub_10001A7A8()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8E60(qword_1002DFAF8[v1]);
  return sub_1002D8E70();
}

Swift::Int sub_10001A830()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8E60(qword_1002DFAF8[v1]);
  return sub_1002D8E70();
}

_BYTE *sub_10001A87C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x20001u >> (8 * *result);
  if (*result >= 3uLL)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_10001A8C0()
{
  result = qword_10043C808;
  if (!qword_10043C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C808);
  }

  return result;
}

unint64_t sub_10001A918()
{
  result = qword_10043C810;
  if (!qword_10043C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C810);
  }

  return result;
}

unint64_t sub_10001A970()
{
  result = qword_10043C818;
  if (!qword_10043C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C818);
  }

  return result;
}

unint64_t sub_10001A9C4()
{
  result = qword_10043C820;
  if (!qword_10043C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C820);
  }

  return result;
}

unint64_t sub_10001AA1C()
{
  result = qword_10043C828;
  if (!qword_10043C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C828);
  }

  return result;
}

unint64_t sub_10001AA74()
{
  result = qword_10043C830;
  if (!qword_10043C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C830);
  }

  return result;
}

unint64_t sub_10001AACC()
{
  result = qword_10043C838;
  if (!qword_10043C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C838);
  }

  return result;
}

unint64_t sub_10001AB24()
{
  result = qword_10043C840;
  if (!qword_10043C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C840);
  }

  return result;
}

unint64_t sub_10001ABB4()
{
  result = qword_10043C848;
  if (!qword_10043C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C848);
  }

  return result;
}

uint64_t sub_10001AC08(uint64_t a1)
{
  v2 = sub_10001ABB4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001AC58()
{
  result = qword_10043C850;
  if (!qword_10043C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C850);
  }

  return result;
}

unint64_t sub_10001ACB0()
{
  result = qword_10043C858;
  if (!qword_10043C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C858);
  }

  return result;
}

uint64_t sub_10001AD2C(uint64_t a1)
{
  v2 = sub_10001AB24();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001ADE4()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v45 = &v36 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002D8900();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8CF0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1002D8910();
  v49 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000321C(&qword_10043CA70, &qword_1002DF928);
  v18 = sub_10000321C(&qword_10043CA78, &qword_1002DF930);
  v46 = v18;
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v42 = 2 * v19;
  v21 = swift_allocObject();
  v44 = v21;
  *(v21 + 16) = xmmword_1002D9F50;
  v22 = v21 + v20;
  v41 = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_1002D8CE0();
  v36 = v12;
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v23 = *(v16 + 56);
  v47 = v16 + 56;
  v48 = v23;
  v24 = v43;
  v23(v43, 1, 1, v15);
  v25 = sub_1002D86B0();
  v26 = *(v25 - 8);
  v37 = *(v26 + 56);
  v27 = v26 + 56;
  v28 = v45;
  v39 = v25;
  v37(v45, 1, 1, v25);
  v40 = v27;
  v38 = v22;
  sub_1002D86E0();
  v29 = v46;
  v41 = *(v46 + 48);
  *(v22 + v19) = 1;
  sub_1002D8CE0();
  v30 = v36;
  sub_1000B4F14(v36);
  sub_1002D8980();
  sub_1002D8920();
  v48(v24, 1, 1, v49);
  v31 = v25;
  v32 = v37;
  v37(v28, 1, 1, v31);
  sub_1002D86E0();
  v33 = (v38 + v42);
  v42 = *(v29 + 48);
  *v33 = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v30);
  sub_1002D8980();
  sub_1002D8920();
  v48(v24, 1, 1, v49);
  v32(v28, 1, 1, v39);
  sub_1002D86E0();
  v34 = sub_100029F8C(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100519FE8 = v34;
  return result;
}

unint64_t sub_10001B40C()
{
  result = qword_10043C870;
  if (!qword_10043C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C870);
  }

  return result;
}

unint64_t sub_10001B464()
{
  result = qword_10043C878;
  if (!qword_10043C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C878);
  }

  return result;
}

unint64_t sub_10001B4BC()
{
  result = qword_10043C880;
  if (!qword_10043C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C880);
  }

  return result;
}

unint64_t sub_10001B514()
{
  result = qword_10043C888;
  if (!qword_10043C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C888);
  }

  return result;
}

unint64_t sub_10001B568()
{
  result = qword_10043C890;
  if (!qword_10043C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C890);
  }

  return result;
}

unint64_t sub_10001B5C0()
{
  result = qword_10043C898;
  if (!qword_10043C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C898);
  }

  return result;
}

unint64_t sub_10001B618()
{
  result = qword_10043C8A0;
  if (!qword_10043C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8A0);
  }

  return result;
}

unint64_t sub_10001B670()
{
  result = qword_10043C8A8;
  if (!qword_10043C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8A8);
  }

  return result;
}

unint64_t sub_10001B6C8()
{
  result = qword_10043C8B0;
  if (!qword_10043C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8B0);
  }

  return result;
}

unint64_t sub_10001B758()
{
  result = qword_10043C8B8;
  if (!qword_10043C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8B8);
  }

  return result;
}

uint64_t sub_10001B7AC(uint64_t a1)
{
  v2 = sub_10001B758();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001B7FC()
{
  result = qword_10043C8C0;
  if (!qword_10043C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8C0);
  }

  return result;
}

unint64_t sub_10001B854()
{
  result = qword_10043C8C8;
  if (!qword_10043C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8C8);
  }

  return result;
}

uint64_t sub_10001B8D0(uint64_t a1)
{
  v2 = sub_10001B6C8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001B988()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v34 = v30 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v32 = v30 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v41 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002D8900();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8CF0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1002D8910();
  v39 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000321C(&qword_10043CA60, &qword_1002DF918);
  v18 = sub_10000321C(&qword_10043CA68, &qword_1002DF920);
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v31 = 2 * v19;
  v21 = swift_allocObject();
  v33 = v21;
  *(v21 + 16) = xmmword_1002D9F50;
  v22 = v21 + v20;
  v30[0] = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v23 = *(v16 + 56);
  v38 = v16 + 56;
  v40 = v23;
  v24 = v32;
  v23(v32, 1, 1, v15);
  v36 = sub_1002D86B0();
  v25 = *(v36 - 8);
  v35 = *(v25 + 56);
  v37 = v25 + 56;
  v26 = v34;
  v35(v34, 1, 1, v36);
  sub_1002D86E0();
  v30[0] = *(v18 + 48);
  v30[1] = v22;
  *(v22 + v19) = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v40(v24, 1, 1, v39);
  v35(v26, 1, 1, v36);
  sub_1002D86E0();
  v27 = *(v18 + 48);
  *(v22 + v31) = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v40(v24, 1, 1, v39);
  v35(v26, 1, 1, v36);
  sub_1002D86E0();
  v28 = sub_10002A168(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10051A008 = v28;
  return result;
}

unint64_t sub_10001BFA0()
{
  result = qword_10043C8E0;
  if (!qword_10043C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8E0);
  }

  return result;
}

void *sub_10001BFF4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_10001C020()
{
  result = qword_10043C8E8;
  if (!qword_10043C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8E8);
  }

  return result;
}

unint64_t sub_10001C078()
{
  result = qword_10043C8F0;
  if (!qword_10043C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8F0);
  }

  return result;
}

unint64_t sub_10001C0D0()
{
  result = qword_10043C8F8;
  if (!qword_10043C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C8F8);
  }

  return result;
}

unint64_t sub_10001C124()
{
  result = qword_10043C900;
  if (!qword_10043C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C900);
  }

  return result;
}

unint64_t sub_10001C17C()
{
  result = qword_10043C908;
  if (!qword_10043C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C908);
  }

  return result;
}

unint64_t sub_10001C1D4()
{
  result = qword_10043C910;
  if (!qword_10043C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C910);
  }

  return result;
}

unint64_t sub_10001C22C()
{
  result = qword_10043C918;
  if (!qword_10043C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C918);
  }

  return result;
}

unint64_t sub_10001C284()
{
  result = qword_10043C920;
  if (!qword_10043C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C920);
  }

  return result;
}

unint64_t sub_10001C314()
{
  result = qword_10043C928;
  if (!qword_10043C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C928);
  }

  return result;
}

uint64_t sub_10001C368(uint64_t a1)
{
  v2 = sub_10001C314();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001C3B8()
{
  result = qword_10043C930;
  if (!qword_10043C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C930);
  }

  return result;
}

unint64_t sub_10001C410()
{
  result = qword_10043C938;
  if (!qword_10043C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C938);
  }

  return result;
}

uint64_t sub_10001C48C(uint64_t a1)
{
  v2 = sub_10001C284();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001C544()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v38 = &v31 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = &v31 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002D8900();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1002D8CF0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1002D8910();
  v43 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000321C(&qword_10043CA50, &qword_1002DF908);
  v18 = sub_10000321C(&qword_10043CA58, &qword_1002DF910);
  v34 = v18;
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v35 = 2 * v19;
  v21 = swift_allocObject();
  v37 = v21;
  *(v21 + 16) = xmmword_1002D9F50;
  v22 = v21 + v20;
  v32 = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v23 = *(v16 + 56);
  v42 = v16 + 56;
  v44 = v23;
  v24 = v36;
  v23(v36, 1, 1, v15);
  v40 = sub_1002D86B0();
  v25 = *(v40 - 8);
  v39 = *(v25 + 56);
  v41 = v25 + 56;
  v26 = v38;
  v39(v38, 1, 1, v40);
  sub_1002D86E0();
  v27 = v34;
  v32 = *(v34 + 48);
  v33 = v22;
  *(v22 + v19) = 1;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v44(v24, 1, 1, v43);
  v39(v26, 1, 1, v40);
  sub_1002D86E0();
  v28 = *(v27 + 48);
  *(v22 + v35) = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v12);
  sub_1002D8980();
  sub_1002D8920();
  v44(v24, 1, 1, v43);
  v39(v26, 1, 1, v40);
  sub_1002D86E0();
  v29 = sub_10002A344(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10051A028 = v29;
  return result;
}

unint64_t sub_10001CB74()
{
  result = qword_10043C950;
  if (!qword_10043C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C950);
  }

  return result;
}

Swift::Int sub_10001CBC8()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8E60(v1 + 1);
  return sub_1002D8E70();
}

Swift::Int sub_10001CC10()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1002D8E60(v1 + 1);
  return sub_1002D8E70();
}

unint64_t sub_10001CC58()
{
  result = qword_10043C958;
  if (!qword_10043C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C958);
  }

  return result;
}

unint64_t sub_10001CCB0()
{
  result = qword_10043C960;
  if (!qword_10043C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C960);
  }

  return result;
}

unint64_t sub_10001CD08()
{
  result = qword_10043C968;
  if (!qword_10043C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C968);
  }

  return result;
}

unint64_t sub_10001CD5C()
{
  result = qword_10043C970;
  if (!qword_10043C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C970);
  }

  return result;
}

unint64_t sub_10001CDB4()
{
  result = qword_10043C978;
  if (!qword_10043C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C978);
  }

  return result;
}

unint64_t sub_10001CE0C()
{
  result = qword_10043C980;
  if (!qword_10043C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C980);
  }

  return result;
}

unint64_t sub_10001CE64()
{
  result = qword_10043C988;
  if (!qword_10043C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C988);
  }

  return result;
}

unint64_t sub_10001CEBC()
{
  result = qword_10043C990;
  if (!qword_10043C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C990);
  }

  return result;
}

unint64_t sub_10001CF4C()
{
  result = qword_10043C998;
  if (!qword_10043C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C998);
  }

  return result;
}

uint64_t sub_10001CFA0(uint64_t a1)
{
  v2 = sub_10001CF4C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001CFF0()
{
  result = qword_10043C9A0;
  if (!qword_10043C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9A0);
  }

  return result;
}

unint64_t sub_10001D048()
{
  result = qword_10043C9A8;
  if (!qword_10043C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9A8);
  }

  return result;
}

uint64_t sub_10001D0C4(uint64_t a1)
{
  v2 = sub_10001CEBC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001D170(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1002D8910();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1002D8840();
  sub_10001EDF0(v10, a2);
  sub_10001EDB8(v10, a2);
  sub_1002D88F0();
  (*(v8 + 56))(v6, 1, 1, v7);
  return sub_1002D8830();
}

uint64_t sub_10001D2DC()
{
  v0 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v62 = v47 - v2;
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v49 = v47 - v5;
  v6 = sub_1002D8990();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002D8900();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002D8CF0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1002D8910();
  v54 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000321C(&qword_10043CA40, &qword_1002DF8F8);
  v21 = sub_10000321C(&qword_10043CA48, &qword_1002DF900);
  v63 = v21;
  v22 = *(v21 - 8);
  v58 = *(v22 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v50 = v24;
  *(v24 + 16) = xmmword_1002D9F20;
  v48 = *(v21 + 48);
  *(v24 + v23) = 0;
  v25 = v24 + v23;
  sub_1002D8CE0();
  sub_1000B4F14(v13);
  v53 = v9;
  sub_1002D8980();
  v52 = "sion15AXEntityManager";
  v26 = v13;
  sub_1002D8920();
  v27 = *(v19 + 56);
  v55 = v19 + 56;
  v56 = v27;
  v28 = v49;
  v27(v49, 1, 1, v18);
  v59 = sub_1002D86B0();
  v29 = *(v59 - 8);
  v60 = *(v29 + 56);
  v61 = v29 + 56;
  v30 = v62;
  v60(v62, 1, 1, v59);
  v57 = v25;
  v31 = v28;
  sub_1002D86E0();
  v32 = v58;
  v33 = v63;
  v48 = *(v63 + 48);
  *(v25 + v58) = 1;
  v47[0] = v17;
  sub_1002D8CE0();
  v51 = v26;
  sub_1000B4F14(v26);
  sub_1002D8980();
  sub_1002D8920();
  v34 = v31;
  v35 = v31;
  v36 = v54;
  v37 = v56;
  v56(v35, 1, 1, v54);
  v60(v30, 1, 1, v59);
  sub_1002D86E0();
  v38 = 2 * v32;
  v48 = 2 * v32;
  v39 = v57;
  v47[1] = *(v33 + 48);
  *(v57 + v38) = 2;
  sub_1002D8CE0();
  sub_1000B4F14(v51);
  sub_1002D8980();
  sub_1002D8920();
  v37(v34, 1, 1, v36);
  v40 = v62;
  v42 = v59;
  v41 = v60;
  v60(v62, 1, 1, v59);
  v43 = v40;
  sub_1002D86E0();
  v44 = (v39 + v48 + v58);
  v58 = *(v63 + 48);
  *v44 = 3;
  sub_1002D8CE0();
  sub_1000B4F14(v51);
  sub_1002D8980();
  sub_1002D8920();
  v56(v34, 1, 1, v54);
  v41(v43, 1, 1, v42);
  sub_1002D86E0();
  v45 = sub_10002A520(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10051A048 = v45;
  return result;
}

unint64_t sub_10001D9F0()
{
  result = qword_10043C9C0;
  if (!qword_10043C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9C0);
  }

  return result;
}

unint64_t sub_10001DA48()
{
  result = qword_10043C9C8;
  if (!qword_10043C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9C8);
  }

  return result;
}

unint64_t sub_10001DAA0()
{
  result = qword_10043C9D0;
  if (!qword_10043C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9D0);
  }

  return result;
}

unint64_t sub_10001DAF8()
{
  result = qword_10043C9D8;
  if (!qword_10043C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9D8);
  }

  return result;
}

unint64_t sub_10001DB4C()
{
  result = qword_10043C9E0;
  if (!qword_10043C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9E0);
  }

  return result;
}

unint64_t sub_10001DBA4()
{
  result = qword_10043C9E8;
  if (!qword_10043C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9E8);
  }

  return result;
}

unint64_t sub_10001DBFC()
{
  result = qword_10043C9F0;
  if (!qword_10043C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9F0);
  }

  return result;
}

unint64_t sub_10001DC54()
{
  result = qword_10043C9F8;
  if (!qword_10043C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043C9F8);
  }

  return result;
}

unint64_t sub_10001DCAC()
{
  result = qword_10043CA00;
  if (!qword_10043CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CA00);
  }

  return result;
}

uint64_t sub_10001DD24@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1002D8840();
  v6 = sub_10001EDB8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_10001DE2C()
{
  result = qword_10043CA08;
  if (!qword_10043CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CA08);
  }

  return result;
}

uint64_t sub_10001DE80(uint64_t a1)
{
  v2 = sub_10001DE2C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001DED0()
{
  result = qword_10043CA10;
  if (!qword_10043CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CA10);
  }

  return result;
}

unint64_t sub_10001DF28()
{
  result = qword_10043CA18;
  if (!qword_10043CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CA18);
  }

  return result;
}

uint64_t sub_10001DFA4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_10001E008(uint64_t a1)
{
  v2 = sub_10001DCAC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001E084(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000044E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColorFilterAppEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorFilterAppEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXAssistiveTouchCursorColorAppEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXAssistiveTouchCursorColorAppEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001E554(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_10001E5E4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10001E6A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10001E734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001E7F4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_10001E884(uint64_t result, unsigned int a2, unsigned int a3)
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