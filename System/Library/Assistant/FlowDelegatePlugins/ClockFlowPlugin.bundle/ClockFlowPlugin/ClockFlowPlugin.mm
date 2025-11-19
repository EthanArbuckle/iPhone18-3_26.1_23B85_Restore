uint64_t sub_1A80(uint64_t a1, uint64_t a2)
{
  v5 = sub_15370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(sub_1DE4(&qword_20AA8, &unk_15E20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  sub_1E2C(a1, v12);
  (*(v6 + 16))(v9, a2, v5);
  v15 = sub_15320();
  (*(v6 + 8))(a2, v5);
  sub_1E9C(a1);
  return v15;
}

uint64_t sub_1C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_15370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_15330();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t sub_1D18()
{
  sub_15350();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShowClockCATsSimple()
{
  result = qword_20A58;
  if (!qword_20A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DE4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DE4(&qword_20AA8, &unk_15E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E9C(uint64_t a1)
{
  v2 = sub_1DE4(&qword_20AA8, &unk_15E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F04()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20AB0);
  sub_2CE8(v0, qword_20AB0);
  return sub_15450();
}

void ShowClockIntentHandler.confirm(intent:completion:)(uint64_t a1, void (*a2)(char *))
{
  v3 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
  v4 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  *&v3[v4] = 1;
  [v3 setUserActivity:0];
  a2(v3);
}

uint64_t ShowClockIntentHandler.handle(intent:completion:)(void *a1, void (*a2)(char *), uint64_t a3)
{
  v78 = a2;
  v79 = a3;
  v4 = sub_1DE4(&qword_20AC8, &unk_15E40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v73 = &v70 - v6;
  v7 = sub_1DE4(&qword_20AD0, &qword_16080);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v72 = &v70 - v9;
  v10 = sub_1DE4(&qword_20AD8, &qword_15E50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v70 - v12;
  v14 = sub_14C20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v80 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  v21 = sub_1DE4(&qword_20AE0, &qword_15E58);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v70 - v23;
  v25 = sub_14C40();
  v76 = *(v25 - 8);
  v26 = *(v76 + 64);
  v27 = __chkstk_darwin(v25);
  v75 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v77 = &v70 - v29;
  v30 = sub_14D00();
  v81 = *(v30 - 8);
  v82 = v30;
  v31 = *(v81 + 64);
  __chkstk_darwin(v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_209F0 != -1)
  {
    swift_once();
  }

  v34 = sub_15540();
  v74 = sub_2CE8(v34, qword_20AB0);
  v35 = sub_15530();
  v36 = sub_155F0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v71 = v13;
    *v37 = 0;
    _os_log_impl(&dword_0, v35, v36, "ShowClockIntentHandler.handle() is called", v37, 2u);
    v13 = v71;
  }

  sub_14CD0();
  v38 = [a1 offset];
  if (v38)
  {
    v39 = v80;
    v40 = v38;
    sub_14BE0();

    v41 = *(v15 + 32);
    v41(v13, v39, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    v41(v20, v13, v14);
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    (*(v81 + 56))(v72, 1, 1, v82);
    v42 = sub_14D10();
    (*(*(v42 - 8) + 56))(v73, 1, 1, v42);
    sub_14C10();
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_2D20(v13, &qword_20AD8, &qword_15E50);
    }
  }

  v43 = v75;
  sub_15380();
  sub_14CC0();
  v44 = v76;
  v45 = *(v76 + 8);
  v45(v43, v25);
  v48 = *(v15 + 8);
  v47 = (v15 + 8);
  v46 = v48;
  v48(v20, v14);
  if ((*(v44 + 48))(v24, 1, v25) == 1)
  {
    v49 = v33;
    sub_2D20(v24, &qword_20AE0, &qword_15E58);
    v50 = sub_15530();
    v51 = sub_155E0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "Failed to calucate the date.", v52, 2u);
    }

    v53 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
    v54 = OBJC_IVAR___ShowClockIntentResponse_code;
    swift_beginAccess();
    *&v53[v54] = 5;
    [v53 setUserActivity:0];
    v78(v53);
  }

  else
  {
    (*(v44 + 32))(v77, v24, v25);
    v55 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
    v56 = OBJC_IVAR___ShowClockIntentResponse_code;
    swift_beginAccess();
    *&v55[v56] = 4;
    [v55 setUserActivity:0];
    sub_1DE4(&qword_20AE8, &unk_15E60);
    v76 = v25;
    v57 = sub_14CE0();
    v58 = *(v57 - 8);
    v73 = v33;
    v59 = v58;
    v75 = v45;
    v60 = *(v58 + 72);
    v61 = *(v58 + 80);
    v74 = v46;
    v62 = (v61 + 32) & ~v61;
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_15E30;
    v64 = v63 + v62;
    v72 = v47;
    v65 = *(v59 + 104);
    v65(v64, enum case for Calendar.Component.year(_:), v57);
    v65(v64 + v60, enum case for Calendar.Component.month(_:), v57);
    v71 = v14;
    v65(v64 + 2 * v60, enum case for Calendar.Component.day(_:), v57);
    v65(v64 + 3 * v60, enum case for Calendar.Component.hour(_:), v57);
    v65(v64 + 4 * v60, enum case for Calendar.Component.minute(_:), v57);
    v65(v64 + 5 * v60, enum case for Calendar.Component.second(_:), v57);
    v65(v64 + 6 * v60, enum case for Calendar.Component.weekday(_:), v57);
    v65(v64 + 7 * v60, enum case for Calendar.Component.weekOfMonth(_:), v57);
    v65(v64 + 8 * v60, enum case for Calendar.Component.weekOfYear(_:), v57);
    sub_2D80(v63);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v66 = v80;
    v67 = v77;
    v49 = v73;
    sub_14CA0();

    isa = sub_14BD0().super.isa;
    v74(v66, v71);
    [v55 setDateTime:isa];

    v78(v55);
    (v75)(v67, v76);
  }

  return (*(v81 + 8))(v49, v82);
}

id ShowClockIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShowClockIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowClockIntentHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id ShowClockIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowClockIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2CE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2D20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1DE4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_2D80(uint64_t a1)
{
  v2 = sub_14CE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1DE4(&qword_20B18, &qword_15E88);
    v10 = sub_15640();
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
      sub_3B94(&qword_20B20);
      v18 = sub_15570();
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
          sub_3B94(&qword_20B28);
          v25 = sub_15580();
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

uint64_t sub_309C(void *a1, uint64_t a2)
{
  v79 = a2;
  v3 = sub_1DE4(&qword_20AC8, &unk_15E40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v74 = v71 - v5;
  v6 = sub_1DE4(&qword_20AD0, &qword_16080);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v73 = v71 - v8;
  v9 = sub_1DE4(&qword_20AD8, &qword_15E50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v71 - v11;
  v13 = sub_14C20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v80 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v71 - v18;
  v20 = sub_1DE4(&qword_20AE0, &qword_15E58);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v71 - v22;
  v24 = sub_14C40();
  v77 = *(v24 - 8);
  v25 = *(v77 + 64);
  v26 = __chkstk_darwin(v24);
  v76 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v78 = v71 - v28;
  v29 = sub_14D00();
  v30 = *(v29 - 8);
  v81 = v29;
  v82 = v30;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_209F0 != -1)
  {
    swift_once();
  }

  v34 = sub_15540();
  v75 = sub_2CE8(v34, qword_20AB0);
  v35 = sub_15530();
  v36 = sub_155F0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v72 = v12;
    *v37 = 0;
    _os_log_impl(&dword_0, v35, v36, "ShowClockIntentHandler.handle() is called", v37, 2u);
    v12 = v72;
  }

  sub_14CD0();
  v38 = [a1 offset];
  if (v38)
  {
    v39 = v80;
    v40 = v38;
    sub_14BE0();

    v41 = *(v14 + 32);
    v41(v12, v39, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v41(v19, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    (*(v82 + 56))(v73, 1, 1, v81);
    v42 = sub_14D10();
    (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
    sub_14C10();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_2D20(v12, &qword_20AD8, &qword_15E50);
    }
  }

  v43 = v76;
  sub_15380();
  sub_14CC0();
  v44 = v77;
  v45 = *(v77 + 8);
  v45(v43, v24);
  v48 = *(v14 + 8);
  v47 = v14 + 8;
  v46 = v48;
  v48(v19, v13);
  if ((*(v44 + 48))(v23, 1, v24) == 1)
  {
    sub_2D20(v23, &qword_20AE0, &qword_15E58);
    v49 = sub_15530();
    v50 = sub_155E0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "Failed to calucate the date.", v51, 2u);
    }

    v52 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
    v53 = OBJC_IVAR___ShowClockIntentResponse_code;
    swift_beginAccess();
    *&v52[v53] = 5;
    [v52 setUserActivity:0];
    (*(v79 + 16))(v79, v52);

    v54 = v33;
  }

  else
  {
    (*(v44 + 32))(v78, v23, v24);
    v55 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
    v56 = OBJC_IVAR___ShowClockIntentResponse_code;
    swift_beginAccess();
    v76 = v55;
    *&v55[v56] = 4;
    [v55 setUserActivity:0];
    sub_1DE4(&qword_20AE8, &unk_15E60);
    v77 = v24;
    v57 = v80;
    v75 = v46;
    v58 = sub_14CE0();
    v59 = *(v58 - 8);
    v72 = v33;
    v60 = v59;
    v61 = *(v59 + 72);
    v62 = *(v59 + 80);
    v73 = v13;
    v63 = (v62 + 32) & ~v62;
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_15E30;
    v74 = v45;
    v65 = *(v60 + 104);
    v65(v64 + v63, enum case for Calendar.Component.year(_:), v58);
    v65(v64 + v63 + v61, enum case for Calendar.Component.month(_:), v58);
    v71[1] = v47;
    v65(v64 + v63 + 2 * v61, enum case for Calendar.Component.day(_:), v58);
    v65(v64 + v63 + 3 * v61, enum case for Calendar.Component.hour(_:), v58);
    v65(v64 + v63 + 4 * v61, enum case for Calendar.Component.minute(_:), v58);
    v65(v64 + v63 + 5 * v61, enum case for Calendar.Component.second(_:), v58);
    v65(v64 + v63 + 6 * v61, enum case for Calendar.Component.weekday(_:), v58);
    v65(v64 + v63 + 7 * v61, enum case for Calendar.Component.weekOfMonth(_:), v58);
    v65(v64 + v63 + 8 * v61, enum case for Calendar.Component.weekOfYear(_:), v58);
    sub_2D80(v64);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v66 = v78;
    v67 = v72;
    sub_14CA0();

    isa = sub_14BD0().super.isa;
    v75(v57, v73);
    v69 = v76;
    [v76 setDateTime:isa];

    (*(v79 + 16))(v79, v69);
    (v74)(v66, v77);
    v54 = v67;
  }

  return (*(v82 + 8))(v54, v81);
}

uint64_t sub_3B94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_14CE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_3BD8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_3C3C()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20B90);
  sub_2CE8(v0, qword_20B90);
  return sub_15450();
}

uint64_t sub_3C88(uint64_t a1)
{
  if (qword_209F8 != -1)
  {
    swift_once();
  }

  v2 = sub_15540();
  sub_2CE8(v2, qword_20B90);
  v3 = sub_15530();
  v4 = sub_155F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "ClockFlowPlugin: called findFlowForX()", v5, 2u);
  }

  if (_s15ClockFlowPlugin0aB7FactoryV04makeB4From5parse07SiriKitB003AnyB0CSgAF5ParseO_tF_0(a1))
  {
    sub_14E60();
  }

  else
  {
    v7 = sub_15530();
    v8 = sub_155E0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "ClockFlowPlugin unable to handle input parse", v9, 2u);
    }

    v10 = sub_15500();
    v12[3] = v10;
    v12[4] = &protocol witness table for ABCReport;
    v11 = sub_41C0(v12);
    (*(*(v10 - 8) + 104))(v11, enum case for ABCReport.clockParseRejection(_:), v10);
    sub_15490();
    sub_4224(v12);
    return sub_14E50();
  }
}

void sub_3EE4(uint64_t *a1@<X8>)
{
  type metadata accessor for ClockFlowPlugin();
  v2 = swift_allocObject();
  sub_152F0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_152E0();

  *a1 = v2;
}

uint64_t sub_3FF0(uint64_t a1)
{
  result = _s15ClockFlowPlugin0aB7FactoryV04makeB4From5parse07SiriKitB003AnyB0CSgAF5ParseO_tF_0(a1);
  if (!result)
  {
    if (qword_209F8 != -1)
    {
      swift_once();
    }

    v2 = sub_15540();
    sub_2CE8(v2, qword_20B90);
    v3 = sub_15530();
    v4 = sub_155E0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "ClockFlowPlugin unable to handle input parse", v5, 2u);
    }

    v6 = sub_15500();
    v12[3] = v6;
    v12[4] = &protocol witness table for ABCReport;
    v7 = sub_41C0(v12);
    (*(*(v6 - 8) + 104))(v7, enum case for ABCReport.clockParseRejection(_:), v6);
    sub_15490();
    sub_4224(v12);
    v8 = sub_154F0();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v12[0] = sub_154E0();
    sub_4270(&qword_20C58, 255, &type metadata accessor for NoOpFlow);
    v11 = sub_14E40();

    return v11;
  }

  return result;
}

uint64_t *sub_41C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_4224(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4270(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 sub_42B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_42CC(uint64_t a1, int a2)
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

uint64_t sub_4314(uint64_t result, int a2, int a3)
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

uint64_t sub_436C()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20C60);
  sub_2CE8(v0, qword_20C60);
  return sub_15450();
}

uint64_t sub_43B8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_15030();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = *(*(sub_15370() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v8 = sub_14F80();
  v3[25] = v8;
  v9 = *(v8 - 8);
  v3[26] = v9;
  v10 = *(v9 + 64) + 15;
  v3[27] = swift_task_alloc();
  v11 = sub_14F00();
  v3[28] = v11;
  v12 = *(v11 - 8);
  v3[29] = v12;
  v13 = *(v12 + 64) + 15;
  v3[30] = swift_task_alloc();
  v14 = sub_153A0();
  v3[31] = v14;
  v15 = *(v14 - 8);
  v3[32] = v15;
  v16 = *(v15 + 64) + 15;
  v3[33] = swift_task_alloc();
  v17 = sub_15440();
  v3[34] = v17;
  v18 = *(v17 - 8);
  v3[35] = v18;
  v19 = *(v18 + 64) + 15;
  v3[36] = swift_task_alloc();
  v20 = sub_15540();
  v3[37] = v20;
  v21 = *(v20 - 8);
  v3[38] = v21;
  v22 = *(v21 + 64) + 15;
  v3[39] = swift_task_alloc();
  v23 = sub_153E0();
  v3[40] = v23;
  v24 = *(v23 - 8);
  v3[41] = v24;
  v25 = *(v24 + 64) + 15;
  v3[42] = swift_task_alloc();
  v26 = sub_153F0();
  v3[43] = v26;
  v27 = *(v26 - 8);
  v3[44] = v27;
  v28 = *(v27 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v29 = sub_14CE0();
  v3[47] = v29;
  v30 = *(v29 - 8);
  v3[48] = v30;
  v31 = *(v30 + 64) + 15;
  v3[49] = swift_task_alloc();
  v32 = *(*(sub_1DE4(&qword_20AC8, &unk_15E40) - 8) + 64) + 15;
  v3[50] = swift_task_alloc();
  v33 = *(*(sub_1DE4(&qword_20AD0, &qword_16080) - 8) + 64) + 15;
  v3[51] = swift_task_alloc();
  v34 = sub_14C20();
  v3[52] = v34;
  v35 = *(v34 - 8);
  v3[53] = v35;
  v36 = *(v35 + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v37 = sub_14D00();
  v3[57] = v37;
  v38 = *(v37 - 8);
  v3[58] = v38;
  v39 = *(v38 + 64) + 15;
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v40 = *(*(sub_1DE4(&qword_20AE0, &qword_15E58) - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v41 = sub_14C40();
  v3[68] = v41;
  v42 = *(v41 - 8);
  v3[69] = v42;
  v43 = *(v42 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v44 = sub_1DE4(&qword_20AD8, &qword_15E50);
  v3[74] = v44;
  v45 = *(*(v44 - 8) + 64) + 15;
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();

  return _swift_task_switch(sub_4A28, 0, 0);
}

uint64_t sub_4A28()
{
  v194 = v0;
  if (qword_20A00 != -1)
  {
    swift_once();
  }

  v1 = sub_2CE8(v0[37], qword_20C60);
  v0[77] = v1;
  v189 = v1;
  v2 = sub_15530();
  v3 = sub_155F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ShowClock.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  v5 = v0[19];

  sub_1DE4(&qword_20C88, &unk_16088);
  v176 = sub_15010();
  v0[78] = v176;
  v6 = sub_14FF0();
  v0[79] = v6;
  v7 = sub_15530();
  v8 = sub_155F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v193[0] = v10;
    *v9 = 136315138;
    v11 = [v6 dateTime];
    if (v11)
    {
      v12 = v0[76];
      v13 = v11;
      sub_14BE0();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = v0[74];
    (*(v0[53] + 56))(v0[76], v14, 1, v0[52]);
    v16 = sub_155B0();
    v18 = sub_12BB4(v16, v17, v193);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_0, v7, v8, "DateTime: %s", v9, 0xCu);
    sub_4224(v10);
  }

  v19 = v0[73];
  v20 = v0[61];
  sub_15380();
  sub_14CD0();
  v159 = v6;
  v21 = [v6 dateTime];
  v22 = v0[75];
  if (v21)
  {
    v24 = v0[55];
    v23 = v0[56];
    v26 = v0[52];
    v25 = v0[53];
    v27 = v21;
    sub_14BE0();

    v28 = *(v25 + 32);
    v28(v22, v24, v26);
    (*(v25 + 56))(v22, 0, 1, v26);
    v28(v23, v22, v26);
  }

  else
  {
    v29 = v0[57];
    v30 = v0[58];
    v31 = v0[56];
    v33 = v0[52];
    v32 = v0[53];
    v35 = v0[50];
    v34 = v0[51];
    (*(v32 + 56))(v0[75], 1, 1, v33);
    (*(v30 + 56))(v34, 1, 1, v29);
    v36 = sub_14D10();
    (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
    sub_14C10();
    if ((*(v32 + 48))(v22, 1, v33) != 1)
    {
      sub_2D20(v0[75], &qword_20AD8, &qword_15E50);
    }
  }

  v191 = v0[69];
  v185 = v0[68];
  v37 = v0[67];
  v39 = v0[60];
  v38 = v0[61];
  v41 = v0[57];
  v40 = v0[58];
  v42 = v0[56];
  v44 = v0[52];
  v43 = v0[53];
  v45 = v0[48];
  v178 = v0[49];
  v181 = v0[66];
  v170 = v0[47];
  sub_14CB0();
  v173 = *(v43 + 8);
  v173(v42, v44);
  v183 = *(v40 + 8);
  v183(v38, v41);
  sub_14CD0();
  v168 = enum case for Calendar.Component.weekOfYear(_:);
  v166 = *(v45 + 104);
  v166(v178);
  sub_93F4(v37, v181);
  v46 = *(v191 + 48);
  v0[80] = v46;
  v0[81] = (v191 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v47 = v46(v181, 1, v185);
  v186 = v46;
  if (v47 == 1)
  {
    v48 = v0[68];
    v49 = v0[66];
    (*(v0[69] + 16))(v0[72], v0[73], v48);
    if (v46(v49, 1, v48) != 1)
    {
      sub_2D20(v0[66], &qword_20AE0, &qword_15E58);
    }
  }

  else
  {
    (*(v0[69] + 32))(v0[72], v0[66], v0[68]);
  }

  v50 = v0[72];
  v51 = v0[69];
  v52 = v0[68];
  v162 = v0[64];
  v164 = v0[67];
  v54 = v0[59];
  v53 = v0[60];
  v55 = v0[57];
  v56 = v0[48];
  v57 = v0[49];
  v58 = v0[47];
  v157 = sub_14CF0();
  v59 = *(v51 + 8);
  v0[82] = v59;
  v0[83] = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v179 = v59;
  v59(v50, v52);
  v60 = *(v56 + 8);
  v56 += 8;
  v60(v57, v58);
  v183(v53, v55);
  sub_14CD0();
  sub_1DE4(&qword_20AE8, &unk_15E60);
  v61 = *(v56 + 64);
  v62 = (*(v56 + 72) + 32) & ~*(v56 + 72);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_15F30;
  v64 = v63 + v62;
  (v166)(v64, enum case for Calendar.Component.calendar(_:), v58);
  (v166)(v64 + v61, enum case for Calendar.Component.yearForWeekOfYear(_:), v58);
  (v166)(v64 + 2 * v61, v168, v58);
  sub_2D80(v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_93F4(v164, v162);
  if (v186(v162, 1, v52) == 1)
  {
    v65 = v0[68];
    v66 = v0[64];
    (*(v0[69] + 16))(v0[71], v0[73], v65);
    if (v186(v66, 1, v65) != 1)
    {
      sub_2D20(v0[64], &qword_20AE0, &qword_15E58);
    }
  }

  else
  {
    (*(v0[69] + 32))(v0[71], v0[64], v0[68]);
  }

  v67 = v0[71];
  v68 = v0[68];
  v171 = v0[67];
  v69 = v0[65];
  v70 = v0[63];
  v71 = v0[59];
  v72 = v0[57];
  v73 = v0[54];
  v74 = v0[52];
  sub_14CA0();

  v179(v67, v68);
  v183(v71, v72);
  sub_14C00();
  v173(v73, v74);
  v75 = sub_15270();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  sub_15260();
  sub_93F4(v171, v70);
  if (v186(v70, 1, v68) == 1)
  {
    sub_2D20(v0[63], &qword_20AE0, &qword_15E58);
  }

  else
  {
    v78 = v0[68];
    v79 = v0[63];
    sub_14C30();
    v179(v79, v78);
  }

  sub_15250();

  v80 = sub_15240();
  v0[84] = v80;

  v81 = sub_15530();
  v82 = sub_155F0();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_0, v81, v82, "Hitting RF path for ShowClock flow.", v83, 2u);
  }

  v84 = v0[46];
  v86 = v0[41];
  v85 = v0[42];
  v88 = v0[39];
  v87 = v0[40];
  v89 = v0[37];
  v90 = v0[38];

  v91 = enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:);
  v92 = *(v86 + 104);
  v0[85] = v92;
  v0[86] = (v86 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v92(v85, v91, v87);
  v93 = *(v90 + 16);
  v0[87] = v93;
  v0[88] = (v90 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v93(v88, v189, v89);
  mach_absolute_time();
  sub_15400();
  v94 = [v176 clockRequestType];
  if (!v94)
  {
    goto LABEL_31;
  }

  v95 = v94;
  v96 = sub_155A0();
  v98 = v97;

  v99 = sub_11198(v96, v98);
  if (v99 <= 1)
  {
    if (v99)
    {
LABEL_41:
      v122 = v0[24];
      type metadata accessor for ShowClockCATPatternsExecutor(0);
      sub_15360();
      v0[106] = sub_152A0();
      v117 = "HandledResponse(rchRecord:)";
      sub_1DE4(&qword_20CA8, &qword_160A8);
      v118 = swift_allocObject();
      v0[107] = v118;
      *(v118 + 16) = xmmword_15F40;
      *(v118 + 32) = 1702125924;
      *(v118 + 40) = 0xE400000000000000;
      *(v118 + 72) = sub_15280();
      *(v118 + 48) = v80;
      v123 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v192 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      swift_retain_n();
      v120 = swift_task_alloc();
      v0[108] = v120;
      *v120 = v0;
      v121 = sub_7214;
LABEL_42:
      v120[1] = v121;

      return v192(0xD000000000000027, v117 | 0x8000000000000000, v118);
    }

    v111 = v0[35];
    v110 = v0[36];
    v112 = v0[34];
    sub_15430();
    v113 = sub_15410();
    (*(v111 + 8))(v110, v112);
    if (v113)
    {
      v114 = sub_15530();
      v115 = sub_155F0();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_0, v114, v115, "showTime flow SMART", v116, 2u);
      }

      if (qword_20A08 != -1)
      {
        swift_once();
      }

      v117 = "HandledResponseShowDate";

      sub_1DE4(&qword_20CA8, &qword_160A8);
      v118 = swift_allocObject();
      v0[89] = v118;
      *(v118 + 16) = xmmword_15F40;
      *(v118 + 32) = 1701669236;
      *(v118 + 40) = 0xE400000000000000;
      *(v118 + 72) = sub_15280();
      *(v118 + 48) = v80;
      v119 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v192 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v120 = swift_task_alloc();
      v0[90] = v120;
      *v120 = v0;
      v121 = sub_5D54;
      goto LABEL_42;
    }

    v148 = v0[24];
    v149 = v0[19];
    type metadata accessor for ShowClockCATPatternsExecutor(0);
    sub_15360();
    v0[98] = sub_152A0();
    v150 = swift_task_alloc();
    v0[99] = v150;
    *(v150 + 16) = v80;
    *(v150 + 24) = v149;
    v151 = swift_task_alloc();
    v0[100] = v151;
    *v151 = v0;
    v151[1] = sub_6D84;

    return sub_9E0C(sub_951C, v150);
  }

  else
  {
    if (v99 != 2)
    {
      if (v99 != 3)
      {
LABEL_31:
        v100 = v176;
        v101 = sub_15530();
        v102 = sub_155E0();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v193[0] = v104;
          *v103 = 136315138;
          v105 = [v100 clockRequestType];
          if (v105)
          {
            v106 = v105;
            v107 = sub_155A0();
            v109 = v108;
          }

          else
          {
            v107 = 0;
            v109 = 0;
          }

          v0[16] = v107;
          v0[17] = v109;
          sub_1DE4(&qword_20CA0, &qword_160A0);
          v130 = sub_155B0();
          v132 = sub_12BB4(v130, v131, v193);

          *(v103 + 4) = v132;
          _os_log_impl(&dword_0, v101, v102, "ShowClock.HandleIntentStrategy fail to parse clockRequestType from %s", v103, 0xCu);
          sub_4224(v104);
        }

        v133 = v0[73];
        v134 = v0[68];
        v135 = v0[67];
        v136 = v0[46];
        v137 = v0[43];
        v138 = v0[44];
        sub_1DE4(&qword_20C90, &qword_16098);
        sub_9464();
        swift_allocError();
        swift_willThrow();

        (*(v138 + 8))(v136, v137);
        sub_2D20(v135, &qword_20AE0, &qword_15E58);
        v179(v133, v134);
        v139 = v0[76];
        v140 = v0[75];
        v141 = v0[73];
        v142 = v0[72];
        v143 = v0[71];
        v144 = v0[70];
        v145 = v0[67];
        v146 = v0[66];
        v152 = v0[64];
        v153 = v0[63];
        v154 = v0[62];
        v155 = v0[61];
        v156 = v0[60];
        v158 = v0[59];
        v160 = v0[56];
        v161 = v0[55];
        v163 = v0[54];
        v165 = v0[51];
        v167 = v0[50];
        v169 = v0[49];
        v172 = v0[46];
        v174 = v0[45];
        v175 = v0[42];
        v177 = v0[39];
        v180 = v0[36];
        v182 = v0[33];
        v184 = v0[30];
        v187 = v0[27];
        v188 = v0[24];
        v190 = v0[23];
        sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

        v147 = v0[1];

        return v147();
      }

      goto LABEL_41;
    }

    v125 = v0[65];
    v126 = v0[24];
    v127 = v0[20];
    type metadata accessor for ShowClockCATPatternsExecutor(0);
    sub_15360();
    v0[102] = sub_152A0();
    v128 = swift_task_alloc();
    v0[103] = v128;
    v128[2] = v80;
    v128[3] = v157;
    v128[4] = v127;
    v128[5] = v125;
    v129 = swift_task_alloc();
    v0[104] = v129;
    *v129 = v0;
    v129[1] = sub_6FCC;

    return sub_9AB0(sub_9510, v128);
  }
}

uint64_t sub_5D54(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 720);
  v9 = *v2;
  v3[91] = a1;
  v3[92] = v1;

  if (v1)
  {
    v5 = sub_62B8;
  }

  else
  {
    v6 = v3[89];
    v7 = v3[84];

    v5 = sub_5E80;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_5E80()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[68];
  v4 = v0[62];
  sub_93F4(v0[67], v4);
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v0[77];
    sub_2D20(v0[62], &qword_20AE0, &qword_15E58);
    v6 = sub_15530();
    v7 = sub_155E0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Can NOT retrieve Date for showTime response.", v8, 2u);
    }

    v9 = v0[91];
    v10 = v0[84];
    v53 = v0[82];
    v55 = v0[83];
    v11 = v0[79];
    v12 = v0[78];
    v49 = v0[68];
    v51 = v0[73];
    v13 = v0[67];
    v14 = v0[46];
    v15 = v0[43];
    v16 = v0[44];

    sub_1DE4(&qword_20C90, &qword_16098);
    sub_9464();
    swift_allocError();
    swift_willThrow();

    (*(v16 + 8))(v14, v15);
    sub_2D20(v13, &qword_20AE0, &qword_15E58);
    v53(v51, v49);
    v17 = v0[76];
    v18 = v0[75];
    v19 = v0[73];
    v20 = v0[72];
    v21 = v0[71];
    v22 = v0[70];
    v23 = v0[67];
    v24 = v0[66];
    v31 = v0[64];
    v32 = v0[63];
    v33 = v0[62];
    v34 = v0[61];
    v35 = v0[60];
    v36 = v0[59];
    v37 = v0[56];
    v38 = v0[55];
    v39 = v0[54];
    v40 = v0[51];
    v41 = v0[50];
    v42 = v0[49];
    v43 = v0[46];
    v44 = v0[45];
    v45 = v0[42];
    v46 = v0[39];
    v47 = v0[36];
    v48 = v0[33];
    v50 = v0[30];
    v52 = v0[27];
    v54 = v0[24];
    v56 = v0[23];
    sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

    v25 = v0[1];

    return v25();
  }

  else
  {
    (*(v0[69] + 32))(v0[70], v0[62], v0[68]);
    v27 = swift_task_alloc();
    v0[93] = v27;
    *v27 = v0;
    v27[1] = sub_6564;
    v28 = v0[84];
    v29 = v0[70];
    v30 = v0[33];

    return sub_BAA0(v30, v29, v28);
  }
}

uint64_t sub_62B8()
{
  v1 = v0[89];
  v2 = v0[84];
  v42 = v0[82];
  v44 = v0[83];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[73];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[46];
  v9 = v0[43];
  v10 = v0[44];

  (*(v10 + 8))(v8, v9);
  sub_2D20(v7, &qword_20AE0, &qword_15E58);
  v42(v5, v6);
  v45 = v0[92];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[73];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v17 = v0[67];
  v18 = v0[66];
  v21 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[54];
  v30 = v0[51];
  v31 = v0[50];
  v32 = v0[49];
  v33 = v0[46];
  v34 = v0[45];
  v35 = v0[42];
  v36 = v0[39];
  v37 = v0[36];
  v38 = v0[33];
  v39 = v0[30];
  v40 = v0[27];
  v41 = v0[24];
  v43 = v0[23];
  sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

  v19 = v0[1];

  return v19();
}

uint64_t sub_6564()
{
  v2 = *(*v1 + 744);
  v5 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = sub_7B1C;
  }

  else
  {
    v3 = sub_6678;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_6678()
{
  v23 = v0[87];
  v24 = v0[88];
  v20 = v0[85];
  v21 = v0[86];
  v22 = v0[77];
  v25 = v0[45];
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[27];
  sub_14EF0();
  sub_14F70();
  v10 = sub_153B0();
  v0[5] = v10;
  v0[6] = sub_9524();
  v11 = sub_41C0(v0 + 2);
  (*(v5 + 16))(v11, v6, v8);
  (*(*(v10 - 8) + 104))(v11, enum case for SiriClockSnippetModels.timeView(_:), v10);
  v20(v1, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v3);
  v23(v2, v22, v4);
  mach_absolute_time();
  sub_15400();
  v12 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v13 = swift_task_alloc();
  v0[95] = v13;
  *v13 = v0;
  v13[1] = sub_686C;
  v14 = v0[91];
  v15 = v0[45];
  v16 = v0[30];
  v17 = v0[27];
  v18 = v0[18];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v18, v16, v17, v0 + 2, v15, 0, 0, 0);
}

uint64_t sub_686C()
{
  v1 = *v0;
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 352);
  v5 = *(*v0 + 344);
  v13 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v7 = *(*v0 + 224);
  v8 = *(*v0 + 216);
  v9 = *(*v0 + 208);
  v10 = *(*v0 + 200);
  v14 = *v0;

  v11 = *(v4 + 8);
  *(v1 + 768) = v11;
  *(v1 + 776) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v5);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v13, v7);
  sub_2D20(v1 + 16, &qword_20CB8, qword_160B0);

  return _swift_task_switch(sub_6AB0, 0, 0);
}

uint64_t sub_6AB0()
{
  v43 = *(v0 + 768);
  v45 = *(v0 + 776);
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v47 = *(v0 + 584);
  v35 = *(v0 + 560);
  v6 = *(v0 + 544);
  v39 = *(v0 + 368);
  v41 = *(v0 + 536);
  v37 = *(v0 + 344);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  v9 = *(v0 + 248);

  (*(v7 + 8))(v8, v9);
  v3(v35, v6);
  v43(v39, v37);
  sub_2D20(v41, &qword_20AE0, &qword_15E58);
  v3(v47, v6);
  v10 = *(v0 + 608);
  v11 = *(v0 + 600);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v20 = *(v0 + 512);
  v21 = *(v0 + 504);
  v22 = *(v0 + 496);
  v23 = *(v0 + 488);
  v24 = *(v0 + 480);
  v25 = *(v0 + 472);
  v26 = *(v0 + 448);
  v27 = *(v0 + 440);
  v28 = *(v0 + 432);
  v29 = *(v0 + 408);
  v30 = *(v0 + 400);
  v31 = *(v0 + 392);
  v32 = *(v0 + 368);
  v33 = *(v0 + 360);
  v34 = *(v0 + 336);
  v36 = *(v0 + 312);
  v38 = *(v0 + 288);
  v40 = *(v0 + 264);
  v42 = *(v0 + 240);
  v44 = *(v0 + 216);
  v46 = *(v0 + 192);
  v48 = *(v0 + 184);
  sub_2D20(*(v0 + 520), &qword_20AE0, &qword_15E58);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_6D84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[100];
  v6 = *v2;
  v4[101] = v1;

  v7 = v3[99];
  v8 = v3[98];

  if (v1)
  {
    v9 = sub_7DD4;
  }

  else
  {
    v9 = sub_6EDC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_6EDC()
{
  v1 = v0[8];
  v2 = v0[30];
  v3 = v0[23];
  v0[110] = v1;
  v1;
  sub_14EF0();
  sub_15020();
  v4 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v5 = swift_task_alloc();
  v0[111] = v5;
  *v5 = v0;
  v5[1] = sub_7700;
  v6 = v0[46];
  v7 = v0[23];
  v8 = v0[18];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v8, v7, v6);
}

uint64_t sub_6FCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[104];
  v6 = *v2;
  v4[105] = v1;

  v7 = v3[103];
  v8 = v3[102];

  if (v1)
  {
    v9 = sub_8070;
  }

  else
  {
    v9 = sub_7124;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_7124()
{
  v1 = v0[11];
  v2 = v0[30];
  v3 = v0[23];
  v0[110] = v1;
  v1;
  sub_14EF0();
  sub_15020();
  v4 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v5 = swift_task_alloc();
  v0[111] = v5;
  *v5 = v0;
  v5[1] = sub_7700;
  v6 = v0[46];
  v7 = v0[23];
  v8 = v0[18];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v8, v7, v6);
}

uint64_t sub_7214(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = v1;
  v5 = v3[108];
  v6 = *v2;
  v4[109] = v1;

  v7 = v3[107];

  if (v1)
  {
    v8 = sub_7454;
  }

  else
  {
    v8 = sub_7350;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_7350()
{
  v1 = v0[106];
  v2 = v0[84];

  v3 = v0[14];
  v4 = v0[30];
  v5 = v0[23];
  v0[110] = v3;
  v3;
  sub_14EF0();
  sub_15020();
  v6 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v7 = swift_task_alloc();
  v0[111] = v7;
  *v7 = v0;
  v7[1] = sub_7700;
  v8 = v0[46];
  v9 = v0[23];
  v10 = v0[18];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v10, v9, v8);
}

uint64_t sub_7454()
{
  v1 = v0[106];
  v2 = v0[84];
  v42 = v0[82];
  v44 = v0[83];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[73];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[46];
  v9 = v0[43];
  v10 = v0[44];

  (*(v10 + 8))(v8, v9);
  sub_2D20(v7, &qword_20AE0, &qword_15E58);
  v42(v5, v6);
  v45 = v0[109];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[73];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v17 = v0[67];
  v18 = v0[66];
  v21 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[54];
  v30 = v0[51];
  v31 = v0[50];
  v32 = v0[49];
  v33 = v0[46];
  v34 = v0[45];
  v35 = v0[42];
  v36 = v0[39];
  v37 = v0[36];
  v38 = v0[33];
  v39 = v0[30];
  v40 = v0[27];
  v41 = v0[24];
  v43 = v0[23];
  sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

  v19 = v0[1];

  return v19();
}

uint64_t sub_7700()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = v0;

  v5 = v2[110];
  (*(v2[22] + 8))(v2[23], v2[21]);

  if (v0)
  {
    v6 = sub_830C;
  }

  else
  {
    v6 = sub_7880;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_7880()
{
  v1 = *(v0 + 672);
  v40 = *(v0 + 656);
  v42 = *(v0 + 664);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 584);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 368);
  v8 = *(v0 + 344);
  v9 = *(v0 + 352);

  (*(v9 + 8))(v7, v8);
  sub_2D20(v6, &qword_20AE0, &qword_15E58);
  v40(v4, v5);
  v10 = *(v0 + 608);
  v11 = *(v0 + 600);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v20 = *(v0 + 512);
  v21 = *(v0 + 504);
  v22 = *(v0 + 496);
  v23 = *(v0 + 488);
  v24 = *(v0 + 480);
  v25 = *(v0 + 472);
  v26 = *(v0 + 448);
  v27 = *(v0 + 440);
  v28 = *(v0 + 432);
  v29 = *(v0 + 408);
  v30 = *(v0 + 400);
  v31 = *(v0 + 392);
  v32 = *(v0 + 368);
  v33 = *(v0 + 360);
  v34 = *(v0 + 336);
  v35 = *(v0 + 312);
  v36 = *(v0 + 288);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  v39 = *(v0 + 216);
  v41 = *(v0 + 192);
  v43 = *(v0 + 184);
  sub_2D20(*(v0 + 520), &qword_20AE0, &qword_15E58);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_7B1C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v6 = *(v0 + 560);
  v7 = *(v0 + 544);
  v42 = *(v0 + 536);
  v44 = *(v0 + 584);
  v40 = *(v0 + 368);
  v9 = *(v0 + 344);
  v8 = *(v0 + 352);

  v3(v6, v7);
  (*(v8 + 8))(v40, v9);
  sub_2D20(v42, &qword_20AE0, &qword_15E58);
  v3(v44, v7);
  v45 = *(v0 + 752);
  v10 = *(v0 + 608);
  v11 = *(v0 + 600);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v20 = *(v0 + 512);
  v21 = *(v0 + 504);
  v22 = *(v0 + 496);
  v23 = *(v0 + 488);
  v24 = *(v0 + 480);
  v25 = *(v0 + 472);
  v26 = *(v0 + 448);
  v27 = *(v0 + 440);
  v28 = *(v0 + 432);
  v29 = *(v0 + 408);
  v30 = *(v0 + 400);
  v31 = *(v0 + 392);
  v32 = *(v0 + 368);
  v33 = *(v0 + 360);
  v34 = *(v0 + 336);
  v35 = *(v0 + 312);
  v36 = *(v0 + 288);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  v39 = *(v0 + 216);
  v41 = *(v0 + 192);
  v43 = *(v0 + 184);
  sub_2D20(*(v0 + 520), &qword_20AE0, &qword_15E58);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_7DD4()
{
  v1 = v0[84];
  v43 = v0[83];
  v2 = v0[82];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[73];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[46];
  v9 = v0[43];
  v10 = v0[44];

  (*(v10 + 8))(v8, v9);
  sub_2D20(v7, &qword_20AE0, &qword_15E58);
  v2(v5, v6);
  v44 = v0[101];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[73];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v17 = v0[67];
  v18 = v0[66];
  v21 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[54];
  v30 = v0[51];
  v31 = v0[50];
  v32 = v0[49];
  v33 = v0[46];
  v34 = v0[45];
  v35 = v0[42];
  v36 = v0[39];
  v37 = v0[36];
  v38 = v0[33];
  v39 = v0[30];
  v40 = v0[27];
  v41 = v0[24];
  v42 = v0[23];
  sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

  v19 = v0[1];

  return v19();
}

uint64_t sub_8070()
{
  v1 = v0[84];
  v43 = v0[83];
  v2 = v0[82];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[73];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[46];
  v9 = v0[43];
  v10 = v0[44];

  (*(v10 + 8))(v8, v9);
  sub_2D20(v7, &qword_20AE0, &qword_15E58);
  v2(v5, v6);
  v44 = v0[105];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[73];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v17 = v0[67];
  v18 = v0[66];
  v21 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[54];
  v30 = v0[51];
  v31 = v0[50];
  v32 = v0[49];
  v33 = v0[46];
  v34 = v0[45];
  v35 = v0[42];
  v36 = v0[39];
  v37 = v0[36];
  v38 = v0[33];
  v39 = v0[30];
  v40 = v0[27];
  v41 = v0[24];
  v42 = v0[23];
  sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

  v19 = v0[1];

  return v19();
}

uint64_t sub_830C()
{
  v1 = *(v0 + 672);
  v41 = *(v0 + 656);
  v43 = *(v0 + 664);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 584);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 368);
  v8 = *(v0 + 344);
  v9 = *(v0 + 352);

  (*(v9 + 8))(v7, v8);
  sub_2D20(v6, &qword_20AE0, &qword_15E58);
  v41(v4, v5);
  v44 = *(v0 + 896);
  v10 = *(v0 + 608);
  v11 = *(v0 + 600);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v20 = *(v0 + 512);
  v21 = *(v0 + 504);
  v22 = *(v0 + 496);
  v23 = *(v0 + 488);
  v24 = *(v0 + 480);
  v25 = *(v0 + 472);
  v26 = *(v0 + 448);
  v27 = *(v0 + 440);
  v28 = *(v0 + 432);
  v29 = *(v0 + 408);
  v30 = *(v0 + 400);
  v31 = *(v0 + 392);
  v32 = *(v0 + 368);
  v33 = *(v0 + 360);
  v34 = *(v0 + 336);
  v35 = *(v0 + 312);
  v36 = *(v0 + 288);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  v39 = *(v0 + 216);
  v40 = *(v0 + 192);
  v42 = *(v0 + 184);
  sub_2D20(*(v0 + 520), &qword_20AE0, &qword_15E58);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_85B4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_15480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DE4(&qword_20CC0, &unk_16160);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for ShowClockIntentHandledResponseShowTimeParameters(0);
  v14 = *(v13 + 24);
  v15 = *(a1 + v14);

  *(a1 + v14) = a2;
  sub_152D0();
  sub_1DE4(&qword_20C88, &unk_16088);
  sub_15000();
  v16 = sub_152C0();
  v17 = *a1;

  *a1 = v16;
  (*(v5 + 104))(v8, enum case for PunchOutApp.clock(_:), v4);
  sub_15460();
  (*(v5 + 8))(v8, v4);
  return sub_957C(v12, a1 + *(v13 + 20));
}

uint64_t sub_8784(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DE4(&qword_20AE0, &qword_15E58);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  v13 = *a1;

  *a1 = a2;
  a1[2] = a3;
  *(a1 + 24) = 0;
  v14 = objc_allocWithZone(NSUserDefaults);
  v15 = sub_15590();
  v16 = [v14 initWithSuiteName:v15];

  if (v16)
  {
    v17 = sub_15590();
    v18 = [v16 BOOLForKey:v17];
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 25) = v18;
  v19 = sub_15270();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_15260();
  sub_93F4(a5, v12);
  v22 = sub_14C40();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v12, 1, v22) == 1)
  {
    sub_2D20(v12, &qword_20AE0, &qword_15E58);
  }

  else
  {
    sub_14C30();
    (*(v23 + 8))(v12, v22);
  }

  sub_15250();

  v24 = sub_15240();

  v25 = *(a1 + 1);

  *(a1 + 1) = v24;
  return result;
}

uint64_t sub_89F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_8ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_8B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_8C44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_8CEC;

  return sub_43B8(a1, a2);
}

uint64_t sub_8CEC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_8E20, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_8E20()
{
  v0[3] = v0[5];
  sub_1DE4(&qword_20C80, &unk_16070);
  sub_154A0();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_8EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_9074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_9138;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_9138()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_922C(uint64_t a1, void *a2)
{
  v4 = sub_14EC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  sub_14EE0();
  v8 = objc_allocWithZone(type metadata accessor for ShowClockIntentHandler());

  [v8 init];
  type metadata accessor for ShowClockIntent();
  v9 = a2;
  sub_14EB0();
  v10 = sub_14ED0();
  (*(v5 + 8))(v7, v4);

  v11 = *(v2 + 8);

  return v11(v10);
}

unint64_t sub_939C()
{
  result = qword_20C78;
  if (!qword_20C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20C78);
  }

  return result;
}

uint64_t sub_93F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DE4(&qword_20AE0, &qword_15E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_9464()
{
  result = qword_20C98;
  if (!qword_20C98)
  {
    sub_94C8(&qword_20C90, &qword_16098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20C98);
  }

  return result;
}

uint64_t sub_94C8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_9524()
{
  result = qword_20CB0;
  if (!qword_20CB0)
  {
    sub_153B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20CB0);
  }

  return result;
}

uint64_t sub_957C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DE4(&qword_20CC0, &unk_16160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_95F0()
{
  v0 = sub_15370();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for ShowClockCATsSimple();
  sub_15360();
  result = sub_15340();
  qword_21228 = result;
  return result;
}

uint64_t sub_96DC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1DE4(&qword_20CA8, &qword_160A8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_160D0;
  *(v8 + 32) = 0x44746E6572727563;
  *(v8 + 40) = 0xEB00000000657461;
  if (a1)
  {
    v9 = sub_15280();
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v10;
  *(v8 + 72) = v9;
  strcpy((v8 + 80), "weekStartDate");
  *(v8 + 94) = -4864;
  if (a2)
  {
    v11 = sub_15280();
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v12;
  *(v8 + 120) = v11;
  *(v8 + 128) = 0x626D754E6B656577;
  *(v8 + 136) = 0xEA00000000007265;
  if (a4)
  {
    a3 = 0;
    v13 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  else
  {
    v13 = &type metadata for Double;
  }

  *(v8 + 144) = a3;
  *(v8 + 168) = v13;
  *(v8 + 176) = 0xD000000000000011;
  *(v8 + 184) = 0x8000000000016900;
  if (HIBYTE(a4) == 2)
  {
    v14 = 0;
    *(v8 + 192) = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  else
  {
    *(v8 + 192) = HIBYTE(a4) & 1;
    v14 = &type metadata for Bool;
  }

  *(v8 + 216) = v14;

  return v8;
}

uint64_t sub_987C()
{
  v1 = sub_1DE4(&qword_20CC0, &unk_16160);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  sub_1DE4(&qword_20CA8, &qword_160A8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_15F30;
  *(v5 + 32) = 7368801;
  *(v5 + 40) = 0xE300000000000000;
  v6 = *v0;
  if (*v0)
  {
    v7 = sub_152D0();
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
  *(v5 + 80) = 0x7463416B636F6C63;
  *(v5 + 88) = 0xEB000000006E6F69;
  v9 = type metadata accessor for ShowClockIntentHandledResponseShowTimeParameters(0);
  sub_A4AC(v0 + *(v9 + 20), v4, &qword_20CC0, &unk_16160);
  v10 = sub_15310();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {

    sub_2D20(v4, &qword_20CC0, &unk_16160);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v10;
    v12 = sub_41C0((v5 + 96));
    (*(v11 + 32))(v12, v4, v10);
  }

  *(v5 + 128) = 1701669236;
  *(v5 + 136) = 0xE400000000000000;
  v13 = *(v0 + *(v9 + 24));
  if (v13)
  {
    v14 = sub_15280();
  }

  else
  {
    v14 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  *(v5 + 144) = v13;
  *(v5 + 168) = v14;

  return v5;
}

uint64_t sub_9AB0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return _swift_task_switch(sub_9AD4, 0, 0);
}

uint64_t sub_9AD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 513;
  v1(v0 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  v6 = sub_96DC(v3, v4, v5, *(v0 + 40) | (*(v0 + 41) << 8));
  *(v0 + 88) = v6;
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_9BE4;
  v9 = *(v0 + 64);

  return v11(0xD000000000000027, 0x80000000000168D0, v6);
}

uint64_t sub_9BE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v8 = sub_9DA0;
  }

  else
  {
    *(v4 + 112) = a1;
    v8 = sub_9D30;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_9D30()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[14];

  return v3(v4);
}

uint64_t sub_9DA0()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_9E0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ShowClockIntentHandledResponseShowTimeParameters(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_9EA4, 0, 0);
}

uint64_t sub_9EA4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  *v1 = 0;
  v5 = *(v2 + 20);
  v6 = sub_15310();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[*(v2 + 24)] = 0;
  v4(v1);
  v7 = sub_987C();
  v0[7] = v7;
  v8 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_9FE8;
  v10 = v0[4];

  return v12(0xD000000000000027, 0x8000000000016840, v7);
}

uint64_t sub_9FE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_A1A8;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_A134;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_A134()
{
  sub_A450(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_A1A8()
{
  sub_A450(v0[6]);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_A218(uint64_t a1, uint64_t a2)
{
  v5 = sub_15370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DE4(&qword_20AA8, &unk_15E20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_A4AC(a1, v13, &qword_20AA8, &unk_15E20);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_15290();
  (*(v6 + 8))(a2, v5);
  sub_2D20(a1, &qword_20AA8, &unk_15E20);
  return v16;
}

uint64_t sub_A3C0()
{
  sub_152B0();

  return swift_deallocClassInstance();
}

uint64_t sub_A418(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A450(uint64_t a1)
{
  v2 = type metadata accessor for ShowClockIntentHandledResponseShowTimeParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A4AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1DE4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_A528(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1DE4(&qword_20CC0, &unk_16160);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_A604(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1DE4(&qword_20CC0, &unk_16160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A6B4()
{
  sub_A7A4(319, &qword_20D80, &type metadata accessor for SirikitApp);
  if (v0 <= 0x3F)
  {
    sub_A7A4(319, &qword_20D88, &type metadata accessor for SpeakableString);
    if (v1 <= 0x3F)
    {
      sub_A7A4(319, &unk_20D90, &type metadata accessor for DialogCalendar);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_A7A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_15630();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_A818()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20DC8);
  sub_2CE8(v0, qword_20DC8);
  return sub_15450();
}

uint64_t sub_A864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_20A10 != -1)
  {
    swift_once();
  }

  v4 = sub_15540();
  sub_2CE8(v4, qword_20DC8);
  v5 = sub_15530();
  v6 = sub_155F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "ClockIntents.FlowStrategy.actionForInput() called.", v7, 2u);
  }

  return sub_CB64(a1, a2);
}

uint64_t sub_A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  *v6 = v3;
  v6[1] = sub_AA2C;

  return (sub_B220)(a1, v7, v8);
}

uint64_t sub_AA2C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_AB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_95EC;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_95EC;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_95EC;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_AD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_95EC;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_AE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_9138;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_95EC;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_B010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  *v7 = v3;
  v7[1] = sub_B0D0;

  return sub_B6F8(a1, a2, v8);
}

uint64_t sub_B0D0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_B220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_B244, 0, 0);
}

uint64_t sub_B244()
{
  if (qword_20A10 != -1)
  {
    swift_once();
  }

  v1 = sub_15540();
  v0[5] = sub_2CE8(v1, qword_20DC8);
  v2 = sub_15530();
  v3 = sub_155F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ClockIntents.FlowStrategy.makeIntentFromParse() called.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_B3AC;
  v6 = v0[2];

  return sub_11DB0(v6);
}

uint64_t sub_B3AC(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  *(v4 + 56) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_B4E0, 0, 0);
  }
}

uint64_t sub_B4E0()
{
  v19 = v0;
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[7];
    if (swift_dynamicCastUnknownClass())
    {
      v4 = v0[1];

      return v4();
    }
  }

  v6 = v0[5];
  v7 = sub_15530();
  v8 = sub_155E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_15710();
    v14 = sub_12BB4(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v7, v8, "Intent is nil, or cannot cast converted intent to IntentType %s", v10, 0xCu);
    sub_4224(v11);
  }

  v15 = v0[3];
  v16 = v0[4];
  type metadata accessor for ClockIntents.FlowError();
  swift_getWitnessTable();
  swift_allocError();
  sub_154A0();
  swift_willThrow();
  v17 = v0[1];

  return v17();
}

uint64_t sub_B6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_14EC0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_B7BC, 0, 0);
}

uint64_t sub_B7BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_14EE0();
  v7 = objc_allocWithZone(type metadata accessor for ShowClockIntentHandler());

  [v7 init];
  v8 = v6;
  sub_14EB0();
  v9 = sub_14ED0();
  (*(v2 + 8))(v1, v4);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_B8F0()
{
  v0 = sub_153D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SiriTimeAppBundleId.clockApp(_:), v0);
  v5 = sub_153C0();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_21240 = v5;
  *algn_21248 = v7;
  return result;
}

uint64_t sub_B9F0()
{
  if (qword_20A18 != -1)
  {
    swift_once();
  }

  v0 = sub_15520();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  result = sub_15510();
  qword_21250 = result;
  return result;
}

uint64_t sub_BAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = *(*(sub_1DE4(&qword_20AA8, &unk_15E20) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = sub_15480();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = sub_14C90();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v11 = *(*(sub_1DE4(&qword_20CC0, &unk_16160) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v12 = sub_15310();
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();
  v15 = sub_14C40();
  v3[22] = v15;
  v16 = *(v15 - 8);
  v3[23] = v16;
  v17 = *(v16 + 64) + 15;
  v3[24] = swift_task_alloc();
  v18 = sub_14C70();
  v3[25] = v18;
  v19 = *(v18 - 8);
  v3[26] = v19;
  v20 = *(v19 + 64) + 15;
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_BD44, 0, 0);
}

uint64_t sub_BD44()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[9];
  sub_14C60();
  v0[6] = sub_14C50();
  v0[7] = v8;
  v0[28] = v8;
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_BE54;

  return sub_C364();
}

uint64_t sub_BE54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[29];
  v10 = *v3;
  v5[30] = v2;

  if (v2)
  {
    v7 = v5[28];
    (*(v5[23] + 8))(v5[24], v5[22]);

    v8 = sub_C1D4;
  }

  else
  {
    v8 = sub_BF94;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_BF94()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[10];
  sub_15230();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_C8E0(v0[18]);
  }

  else
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    (*(v6 + 32))(v5, v0[18], v7);
    sub_15300();
    (*(v6 + 8))(v5, v7);
  }

  if (qword_20A28 != -1)
  {
    swift_once();
  }

  v22 = v0[4];
  v23 = v0[3];
  v20 = v0[6];
  v21 = v0[28];
  v8 = v0[24];
  v24 = v0[27];
  v25 = v0[21];
  v9 = v0[17];
  v26 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  v13 = v0[13];
  v12 = v0[14];
  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[8];
  v17 = sub_2CE8(v11, qword_20E60);
  (*(v10 + 16))(v9, v17, v11);
  (*(v13 + 104))(v12, enum case for PunchOutApp.clock(_:), v14);
  sub_15470();
  (*(v13 + 8))(v12, v14);
  sub_15390();

  v18 = v0[1];

  return v18();
}

uint64_t sub_C1D4()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v7 = v0[11];

  v8 = v0[1];
  v9 = v0[30];

  return v8();
}

uint64_t sub_C28C()
{
  v0 = sub_14C90();
  sub_3BD8(v0, qword_20E60);
  sub_2CE8(v0, qword_20E60);
  return sub_14C80();
}

uint64_t sub_C2D8()
{
  v0 = sub_15370();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for ShowClockCATs_Async();
  sub_15360();
  result = sub_152A0();
  qword_20E78 = result;
  return result;
}

uint64_t sub_C364()
{
  v1 = sub_14F60();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_14FA0();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = sub_14FC0();
  v0[8] = v7;
  v8 = *(v7 - 8);
  v0[9] = v8;
  v9 = *(v8 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_C4D8, 0, 0);
}

uint64_t sub_C4D8()
{
  if (qword_20A30 != -1)
  {
    swift_once();
  }

  v1 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v5 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_C5DC;
  v3 = *(v0 + 56);

  return v5(v3, 0xD000000000000020, 0x8000000000016980, &_swiftEmptyArrayStorage);
}

uint64_t sub_C5DC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_C864;
  }

  else
  {
    v3 = sub_C6F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_C6F0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_14F90();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    (*(v6 + 16))(v5, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    sub_14FB0();
    (*(v6 + 8))(v5, v7);
    v11 = sub_14F50();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
  }

  else
  {

    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = v0[10];
  v15 = v0[7];
  v16 = v0[4];

  v17 = v0[1];

  return v17(v11, v13);
}

uint64_t sub_C864()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_C8E0(uint64_t a1)
{
  v2 = sub_1DE4(&qword_20CC0, &unk_16160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ShowClockCATs_Async()
{
  result = qword_20E80;
  if (!qword_20E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C9D4(uint64_t a1, uint64_t a2)
{
  v5 = sub_15370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DE4(&qword_20AA8, &unk_15E20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_1E2C(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_15290();
  (*(v6 + 8))(a2, v5);
  sub_1E9C(a1);
  return v16;
}

uint64_t sub_CB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_15050();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_15060();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  sub_15040();
  v16 = sub_CF70(v15);
  v34 = *(v9 + 8);
  v34(v15, v8);
  if ((v16 & 1) == 0)
  {
    return sub_14F20();
  }

  v32 = a2;
  sub_15040();
  v17 = (*(v9 + 88))(v13, v8);
  if (v17 == enum case for Parse.NLv4IntentOnly(_:) || v17 == enum case for Parse.uso(_:))
  {
    v34(v13, v8);
    return sub_14F10();
  }

  else
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v20 = sub_15540();
    sub_2CE8(v20, qword_20ED0);
    v21 = v33;
    (*(v33 + 16))(v7, a1, v4);
    v22 = sub_15530();
    v23 = sub_155E0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v30 = v24;
      v31 = swift_slowAlloc();
      v35 = v31;
      *v24 = 136315138;
      sub_15040();
      v25 = sub_155B0();
      v27 = v26;
      (*(v21 + 8))(v7, v4);
      v28 = sub_12BB4(v25, v27, &v35);

      v29 = v30;
      *(v30 + 1) = v28;
      _os_log_impl(&dword_0, v22, v23, "Received unexpected NL parse: %s", v29, 0xCu);
      sub_4224(v31);
    }

    else
    {

      (*(v21 + 8))(v7, v4);
    }

    sub_14F20();
    return (v34)(v13, v8);
  }
}

uint64_t sub_CF24()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20ED0);
  sub_2CE8(v0, qword_20ED0);
  return sub_15450();
}

uint64_t sub_CF70(uint64_t a1)
{
  v2 = sub_150A0();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_15080();
  v54 = *(v6 - 1);
  v55 = v6;
  v7 = *(v54 + 8);
  __chkstk_darwin(v6);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_15060();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v19 = (&v51 - v18);
  v20 = *(v10 + 16);
  v20(&v51 - v18, a1, v9);
  v21 = (*(v10 + 88))(v19, v9);
  if (v21 == enum case for Parse.NLv3IntentOnly(_:))
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v22 = sub_15540();
    sub_2CE8(v22, qword_20ED0);
    v23 = sub_15530();
    v24 = sub_155E0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "On-Device Clock received an NLv3 parse – this is unsupported", v25, 2u);
    }

    (*(v10 + 8))(v19, v9);
  }

  else if (v21 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v10 + 96))(v19, v9);
    v28 = *v19;
    swift_getObjectType();
    if (sub_15600())
    {
      v26 = sub_D6E4();
      swift_unknownObjectRelease();

      return v26 & 1;
    }

    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v43 = sub_15540();
    sub_2CE8(v43, qword_20ED0);
    v44 = sub_15530();
    v45 = sub_155E0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "ClockFlowUtils.makeIntentFromParse USO task is empty", v46, 2u);
    }

    swift_unknownObjectRelease();
  }

  else if (v21 == enum case for Parse.uso(_:))
  {
    (*(v10 + 96))(v19, v9);
    v30 = v53;
    v29 = v54;
    v31 = v55;
    (*(v54 + 4))(v53, v19, v55);
    sub_15070();
    v32 = sub_15090();
    (*(v52 + 8))(v5, v2);
    if (v32)
    {
      v26 = sub_D6E4();

      v29[1](v30, v31);
      return v26 & 1;
    }

    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v47 = sub_15540();
    sub_2CE8(v47, qword_20ED0);
    v48 = sub_15530();
    v49 = sub_155E0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "ClockFlowUtils.makeIntentFromParse USO task is empty", v50, 2u);
    }

    v29[1](v30, v31);
  }

  else
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v33 = sub_15540();
    sub_2CE8(v33, qword_20ED0);
    v20(v17, a1, v9);
    v34 = sub_15530();
    v35 = sub_155E0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v54 = v36;
      v55 = swift_slowAlloc();
      v56 = v55;
      *v36 = 136315138;
      v20(v14, v17, v9);
      v37 = sub_155B0();
      v39 = v38;
      v40 = *(v10 + 8);
      v40(v17, v9);
      v41 = sub_12BB4(v37, v39, &v56);

      v42 = v54;
      *(v54 + 1) = v41;
      _os_log_impl(&dword_0, v34, v35, "Received invalid timer parse: %s", v42, 0xCu);
      sub_4224(v55);
    }

    else
    {

      v40 = *(v10 + 8);
      v40(v17, v9);
    }

    v40(v19, v9);
  }

  v26 = 0;
  return v26 & 1;
}

uint64_t sub_D6E4()
{
  v158 = sub_15100();
  v160 = *(v158 - 8);
  v0 = *(v160 + 64);
  __chkstk_darwin(v158);
  v150 = &v147[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v152 = sub_1DE4(&qword_20EE8, &qword_16360);
  v2 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v156 = &v147[-v3];
  v4 = sub_1DE4(&qword_20EF0, &qword_16368);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v154 = &v147[-v6];
  v7 = sub_1DE4(&qword_20EF8, &qword_16370);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v155 = &v147[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v163 = &v147[-v12];
  v13 = __chkstk_darwin(v11);
  v157 = &v147[-v14];
  __chkstk_darwin(v13);
  v153 = &v147[-v15];
  v16 = sub_15160();
  v17 = *(v16 - 8);
  v161 = v16;
  v162 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v151 = &v147[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1DE4(&qword_20F00, &qword_16378);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v159 = &v147[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v147[-v24];
  v26 = sub_1DE4(&qword_20F08, &qword_16380);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v147[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v28);
  v33 = &v147[-v32];
  v34 = __chkstk_darwin(v31);
  v36 = &v147[-v35];
  v37 = __chkstk_darwin(v34);
  v39 = &v147[-v38];
  v40 = __chkstk_darwin(v37);
  v42 = &v147[-v41];
  __chkstk_darwin(v40);
  v44 = &v147[-v43];
  v45 = sub_1DE4(&qword_20AD8, &qword_15E50);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v147[-v47];
  sub_15130();
  if (!v167)
  {
    sub_2D20(&v166, &qword_20F10, &qword_16388);
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v51 = sub_15540();
    sub_2CE8(v51, qword_20ED0);
    v52 = sub_15530();
    v53 = sub_155F0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v52, v53, "Task is invalid, returning isValidClockTask = false", v54, 2u);
    }

    return 0;
  }

  sub_10EF0(&v166, v168);
  sub_10F00(v168, &v166);
  sub_151E0();
  if (swift_dynamicCast())
  {
    v149 = v164[0];
    v49 = sub_10F5C();
    if (v49 > 1)
    {
      if (v49 != 2)
      {
        if (v49 == 3)
        {
LABEL_6:
          sub_4224(v168);

          return 1;
        }

        if (qword_20A38 != -1)
        {
          swift_once();
        }

        v77 = sub_15540();
        sub_2CE8(v77, qword_20ED0);
        sub_10F00(v168, &v166);
        v56 = sub_15530();
        v78 = sub_155E0();
        if (os_log_type_enabled(v56, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v165 = v80;
          *v79 = 136315138;
          sub_10F00(&v166, v164);
          v81 = sub_155B0();
          v83 = v82;
          sub_4224(&v166);
          v84 = sub_12BB4(v81, v83, &v165);

          *(v79 + 4) = v84;
          v85 = "Receiving unsupported clock request type: %s";
LABEL_40:
          _os_log_impl(&dword_0, v56, v78, v85, v79, 0xCu);
          sub_4224(v80);

LABEL_41:

          goto LABEL_124;
        }

LABEL_42:

LABEL_43:

        sub_4224(&v166);
        goto LABEL_124;
      }

      sub_15220();
      if (!v166)
      {
        goto LABEL_62;
      }

      v70 = sub_15170();

      v71 = v163;
      if (!v70)
      {
LABEL_63:
        sub_15220();
        if (!v166 || (v108 = sub_15180(), , !v108))
        {
LABEL_114:
          sub_15220();

          if (v166)
          {
            v145 = sub_15140();

            if (v145)
            {

              if (qword_20A38 != -1)
              {
                swift_once();
              }

              v146 = sub_15540();
              sub_2CE8(v146, qword_20ED0);
              v56 = sub_15530();
              v134 = sub_155E0();
              if (os_log_type_enabled(v56, v134))
              {
LABEL_97:
                v135 = swift_slowAlloc();
                *v135 = 0;
                _os_log_impl(&dword_0, v56, v134, "ClockFlowPlugin does not support arbitrary date offset values", v135, 2u);

                goto LABEL_41;
              }

              goto LABEL_122;
            }
          }

          goto LABEL_120;
        }

        if (sub_150D0() && (v109 = sub_150B0(), , v109))
        {
          v110 = v154;
          sub_151C0();

          v111 = sub_151D0();
          v112 = (*(*(v111 - 8) + 48))(v110, 1, v111);
          v114 = v156;
          v113 = v157;
          v115 = v155;
          if (v112 != 1)
          {

            sub_2D20(v110, &qword_20EF0, &qword_16368);
            goto LABEL_114;
          }
        }

        else
        {
          v116 = sub_151D0();
          v110 = v154;
          (*(*(v116 - 8) + 56))(v154, 1, 1, v116);
          v114 = v156;
          v113 = v157;
          v115 = v155;
        }

        sub_2D20(v110, &qword_20EF0, &qword_16368);
        v162 = v108;
        sub_150F0();
        v117 = v160;
        v118 = v158;
        (*(v160 + 104))(v71, enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:), v158);
        (*(v117 + 56))(v71, 0, 1, v118);
        v119 = *(v152 + 48);
        sub_A4AC(v113, v114, &qword_20EF8, &qword_16370);
        sub_A4AC(v71, v114 + v119, &qword_20EF8, &qword_16370);
        v120 = *(v117 + 48);
        if (v120(v114, 1, v118) == 1)
        {
          sub_2D20(v71, &qword_20EF8, &qword_16370);
          sub_2D20(v113, &qword_20EF8, &qword_16370);
          if (v120(v114 + v119, 1, v118) == 1)
          {
            sub_2D20(v114, &qword_20EF8, &qword_16370);
LABEL_113:

            goto LABEL_114;
          }
        }

        else
        {
          sub_A4AC(v114, v115, &qword_20EF8, &qword_16370);
          if (v120(v114 + v119, 1, v118) != 1)
          {
            v141 = v160;
            v142 = v150;
            (*(v160 + 32))(v150, v114 + v119, v118);
            sub_11150(&qword_20F18, &type metadata accessor for UsoEntity_common_Date.DefinedValues);
            v143 = sub_15580();
            v144 = *(v141 + 8);
            v144(v142, v118);
            sub_2D20(v163, &qword_20EF8, &qword_16370);
            sub_2D20(v157, &qword_20EF8, &qword_16370);
            v144(v115, v118);
            sub_2D20(v114, &qword_20EF8, &qword_16370);
            if (v143)
            {
              goto LABEL_113;
            }

LABEL_76:

            if (qword_20A38 != -1)
            {
              swift_once();
            }

            v121 = sub_15540();
            sub_2CE8(v121, qword_20ED0);
            v56 = sub_15530();
            v98 = sub_155E0();
            if (os_log_type_enabled(v56, v98))
            {
              v99 = swift_slowAlloc();
              *v99 = 0;
              v100 = "ClockFlowPlugin does not support arbitrary date references";
              goto LABEL_80;
            }

            goto LABEL_59;
          }

          sub_2D20(v163, &qword_20EF8, &qword_16370);
          sub_2D20(v113, &qword_20EF8, &qword_16370);
          (*(v160 + 8))(v115, v118);
        }

        sub_2D20(v114, &qword_20EE8, &qword_16360);
        goto LABEL_76;
      }

      v153 = v70;
      sub_15150();
      v72 = v161;
      v73 = v162;
      (*(v162 + 104))(v33, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v161);
      (*(v73 + 56))(v33, 0, 1, v72);
      v74 = *(v20 + 48);
      v75 = v159;
      sub_A4AC(v36, v159, &qword_20F08, &qword_16380);
      sub_A4AC(v33, &v75[v74], &qword_20F08, &qword_16380);
      v76 = *(v73 + 48);
      if (v76(v75, 1, v72) == 1)
      {
        sub_2D20(v33, &qword_20F08, &qword_16380);
        v75 = v159;
        sub_2D20(v36, &qword_20F08, &qword_16380);
        if (v76(&v75[v74], 1, v72) == 1)
        {
          sub_2D20(v75, &qword_20F08, &qword_16380);
LABEL_61:

LABEL_62:
          v71 = v163;
          goto LABEL_63;
        }
      }

      else
      {
        sub_A4AC(v75, v30, &qword_20F08, &qword_16380);
        v96 = v75;
        if (v76(&v75[v74], 1, v72) != 1)
        {
          v104 = v162;
          v105 = v96 + v74;
          v106 = v151;
          (*(v162 + 32))(v151, v105, v72);
          sub_11150(&qword_20F20, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues);
          v148 = sub_15580();
          v107 = *(v104 + 8);
          v107(v106, v72);
          sub_2D20(v33, &qword_20F08, &qword_16380);
          sub_2D20(v36, &qword_20F08, &qword_16380);
          v107(v30, v72);
          sub_2D20(v96, &qword_20F08, &qword_16380);
          if (v148)
          {
            goto LABEL_61;
          }

LABEL_48:

          if (qword_20A38 != -1)
          {
            swift_once();
          }

          v97 = sub_15540();
          sub_2CE8(v97, qword_20ED0);
          v56 = sub_15530();
          v98 = sub_155E0();
          if (os_log_type_enabled(v56, v98))
          {
            v99 = swift_slowAlloc();
            *v99 = 0;
            v100 = "ClockFlowPlugin does not support offset anchors that are not 'now'";
LABEL_80:
            _os_log_impl(&dword_0, v56, v98, v100, v99, 2u);

            goto LABEL_123;
          }

LABEL_59:

LABEL_123:

          goto LABEL_124;
        }

        sub_2D20(v33, &qword_20F08, &qword_16380);
        sub_2D20(v36, &qword_20F08, &qword_16380);
        (*(v162 + 8))(v30, v72);
      }

      sub_2D20(v75, &qword_20F00, &qword_16378);
      goto LABEL_48;
    }

    if (!v49)
    {
      sub_F348(v48);
      v64 = sub_14C20();
      v65 = (*(*(v64 - 8) + 48))(v48, 1, v64);
      sub_2D20(v48, &qword_20AD8, &qword_15E50);
      if (v65 != 1)
      {
        if (qword_20A38 != -1)
        {
          swift_once();
        }

        v91 = sub_15540();
        sub_2CE8(v91, qword_20ED0);
        sub_10F00(v168, &v166);
        v56 = sub_15530();
        v78 = sub_155E0();
        if (os_log_type_enabled(v56, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v165 = v80;
          *v79 = 136315138;
          sub_10F00(&v166, v164);
          v92 = sub_155B0();
          v94 = v93;
          sub_4224(&v166);
          v95 = sub_12BB4(v92, v94, &v165);

          *(v79 + 4) = v95;
          v85 = "Receiving unsupported clock date offset: %s";
          goto LABEL_40;
        }

        goto LABEL_42;
      }

      if (qword_20A38 != -1)
      {
        swift_once();
      }

      v66 = sub_15540();
      sub_2CE8(v66, qword_20ED0);
      v67 = sub_15530();
      v68 = sub_155F0();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_0, v67, v68, "ClockFlowPlugin accepting clock input as valid current time input", v69, 2u);

LABEL_121:
        sub_4224(v168);
        return 1;
      }

LABEL_120:

      goto LABEL_121;
    }

    sub_15220();
    if (!v166)
    {
      goto LABEL_84;
    }

    v86 = sub_15170();

    if (!v86)
    {
      goto LABEL_84;
    }

    sub_15150();
    v87 = v161;
    v88 = v162;
    (*(v162 + 104))(v42, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v161);
    (*(v88 + 56))(v42, 0, 1, v87);
    v89 = *(v20 + 48);
    sub_A4AC(v44, v25, &qword_20F08, &qword_16380);
    sub_A4AC(v42, &v25[v89], &qword_20F08, &qword_16380);
    v90 = *(v88 + 48);
    if (v90(v25, 1, v87) == 1)
    {
      sub_2D20(v42, &qword_20F08, &qword_16380);
      sub_2D20(v44, &qword_20F08, &qword_16380);
      if (v90(&v25[v89], 1, v87) == 1)
      {
        sub_2D20(v25, &qword_20F08, &qword_16380);
LABEL_83:

LABEL_84:
        sub_15220();
        if (v166)
        {
          v126 = sub_15180();

          if (v126)
          {
            v127 = v153;
            sub_150F0();
            if ((*(v160 + 48))(v127, 1, v158) == 1)
            {

              sub_2D20(v127, &qword_20EF8, &qword_16370);
              if (qword_20A38 != -1)
              {
                swift_once();
              }

              v128 = sub_15540();
              sub_2CE8(v128, qword_20ED0);
              v129 = sub_15530();
              v130 = sub_155E0();
              if (os_log_type_enabled(v129, v130))
              {
                v131 = swift_slowAlloc();
                *v131 = 0;
                _os_log_impl(&dword_0, v129, v130, "ClockFlowPlugin does not support arbitrary date references", v131, 2u);
              }

              else
              {
              }

              goto LABEL_123;
            }

            sub_2D20(v127, &qword_20EF8, &qword_16370);
          }
        }

        sub_15220();
        if (!v166 || (v132 = sub_15140(), , !v132))
        {
          sub_15210();

          if (!v166)
          {
            goto LABEL_6;
          }

          v136 = sub_15180();

          if (!v136)
          {
            goto LABEL_6;
          }

          if (sub_15120() || sub_150C0() || sub_15110())
          {

            if (qword_20A38 != -1)
            {
              swift_once();
            }

            v137 = sub_15540();
            sub_2CE8(v137, qword_20ED0);
            v138 = sub_15530();
            v139 = sub_155F0();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              *v140 = 0;
              _os_log_impl(&dword_0, v138, v139, "ClockFlowPlugin accepting clock input as valid dayOfWeek/dayOfMonth/year input", v140, 2u);

              goto LABEL_120;
            }
          }

          goto LABEL_120;
        }

        if (qword_20A38 != -1)
        {
          swift_once();
        }

        v133 = sub_15540();
        sub_2CE8(v133, qword_20ED0);
        v56 = sub_15530();
        v134 = sub_155E0();
        if (os_log_type_enabled(v56, v134))
        {
          goto LABEL_97;
        }

LABEL_122:

        goto LABEL_123;
      }
    }

    else
    {
      sub_A4AC(v25, v39, &qword_20F08, &qword_16380);
      if (v90(&v25[v89], 1, v87) != 1)
      {
        v122 = v162;
        v123 = &v25[v89];
        v124 = v151;
        (*(v162 + 32))(v151, v123, v87);
        sub_11150(&qword_20F20, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues);
        LODWORD(v163) = sub_15580();
        v125 = *(v122 + 8);
        v125(v124, v87);
        sub_2D20(v42, &qword_20F08, &qword_16380);
        sub_2D20(v44, &qword_20F08, &qword_16380);
        v125(v39, v87);
        sub_2D20(v25, &qword_20F08, &qword_16380);
        if (v163)
        {
          goto LABEL_83;
        }

LABEL_55:

        if (qword_20A38 != -1)
        {
          swift_once();
        }

        v101 = sub_15540();
        sub_2CE8(v101, qword_20ED0);
        v56 = sub_15530();
        v102 = sub_155E0();
        if (!os_log_type_enabled(v56, v102))
        {
          goto LABEL_59;
        }

        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_0, v56, v102, "ClockFlowPlugin does not support offset anchors that are not 'now'", v103, 2u);

        goto LABEL_122;
      }

      sub_2D20(v42, &qword_20F08, &qword_16380);
      sub_2D20(v44, &qword_20F08, &qword_16380);
      (*(v162 + 8))(v39, v87);
    }

    sub_2D20(v25, &qword_20F00, &qword_16378);
    goto LABEL_55;
  }

  if (qword_20A38 != -1)
  {
    swift_once();
  }

  v55 = sub_15540();
  sub_2CE8(v55, qword_20ED0);
  sub_10F00(v168, &v166);
  v56 = sub_15530();
  v57 = sub_155E0();
  if (!os_log_type_enabled(v56, v57))
  {
    goto LABEL_43;
  }

  v58 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v165 = v59;
  *v58 = 136315138;
  sub_10F00(&v166, v164);
  v60 = sub_155B0();
  v62 = v61;
  sub_4224(&v166);
  v63 = sub_12BB4(v60, v62, &v165);

  *(v58 + 4) = v63;
  _os_log_impl(&dword_0, v56, v57, "Receiving unsupported uso task: %s", v58, 0xCu);
  sub_4224(v59);

LABEL_124:
  sub_4224(v168);
  return 0;
}

uint64_t sub_F348@<X0>(char *a1@<X8>)
{
  v108 = a1;
  v1 = sub_1DE4(&qword_20F28, &qword_16390);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v97 = &v92 - v3;
  v4 = sub_15200();
  v99 = *(v4 - 8);
  v5 = *(v99 + 64);
  __chkstk_darwin(v4);
  v98 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_15160();
  v103 = *(v7 - 8);
  v104 = v7;
  v8 = *(v103 + 64);
  __chkstk_darwin(v7);
  v93 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DE4(&qword_20F00, &qword_16378);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v92 - v12;
  v14 = sub_1DE4(&qword_20F08, &qword_16380);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v96 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v92 - v19;
  __chkstk_darwin(v18);
  v105 = &v92 - v21;
  v22 = sub_1DE4(&qword_20AC8, &unk_15E40);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v101 = &v92 - v24;
  v25 = sub_1DE4(&qword_20AD0, &qword_16080);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v100 = &v92 - v27;
  v28 = sub_14C20();
  v29 = *(v28 - 8);
  v106 = v28;
  v107 = v29;
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v95 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v94 = &v92 - v34;
  __chkstk_darwin(v33);
  v102 = &v92 - v35;
  v36 = sub_1DE4(&qword_20EF8, &qword_16370);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v92 - v38;
  v40 = sub_15100();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v45 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v92 - v46;
  sub_15220();
  v48 = v109;
  if (!v109)
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v53 = sub_15540();
    sub_2CE8(v53, qword_20ED0);
    v54 = sub_15530();
    v55 = sub_155F0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "ClockFlowPlugin task contains no reference", v56, 2u);
    }

    return (*(v107 + 56))(v108, 1, 1, v106);
  }

  v92 = v4;
  if (!sub_15180())
  {
    v102 = v48;
    if (sub_15170())
    {
      v57 = v105;
      sub_15150();

      v59 = v103;
      v58 = v104;
    }

    else
    {
      v59 = v103;
      v58 = v104;
      v57 = v105;
      (*(v103 + 56))(v105, 1, 1, v104);
    }

    (*(v59 + 104))(v20, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v58);
    (*(v59 + 56))(v20, 0, 1, v58);
    v61 = *(v10 + 48);
    sub_A4AC(v57, v13, &qword_20F08, &qword_16380);
    sub_A4AC(v20, &v13[v61], &qword_20F08, &qword_16380);
    v62 = *(v59 + 48);
    if (v62(v13, 1, v58) == 1)
    {
      sub_2D20(v20, &qword_20F08, &qword_16380);
      sub_2D20(v57, &qword_20F08, &qword_16380);
      if (v62(&v13[v61], 1, v58) == 1)
      {
        sub_2D20(v13, &qword_20F08, &qword_16380);
        v63 = v92;
        goto LABEL_30;
      }
    }

    else
    {
      v64 = v96;
      sub_A4AC(v13, v96, &qword_20F08, &qword_16380);
      if (v62(&v13[v61], 1, v58) != 1)
      {
        v65 = &v13[v61];
        v66 = v93;
        (*(v59 + 32))(v93, v65, v58);
        sub_11150(&qword_20F20, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues);
        v67 = sub_15580();
        v68 = *(v59 + 8);
        v68(v66, v58);
        sub_2D20(v20, &qword_20F08, &qword_16380);
        sub_2D20(v105, &qword_20F08, &qword_16380);
        v68(v64, v58);
        sub_2D20(v13, &qword_20F08, &qword_16380);
        v63 = v92;
        if (v67)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      }

      sub_2D20(v20, &qword_20F08, &qword_16380);
      sub_2D20(v105, &qword_20F08, &qword_16380);
      (*(v59 + 8))(v64, v58);
    }

    sub_2D20(v13, &qword_20F00, &qword_16378);
    v63 = v92;
LABEL_27:
    if (sub_15170())
    {

LABEL_39:
      if (qword_20A38 != -1)
      {
        swift_once();
      }

      v80 = sub_15540();
      sub_2CE8(v80, qword_20ED0);
      v81 = sub_15530();
      v82 = sub_155F0();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_0, v81, v82, "ClockFlowPlugin Could not find reference offset", v83, 2u);
      }

      goto LABEL_44;
    }

LABEL_30:
    if (sub_151A0())
    {
      v69 = v97;
      sub_151F0();

      v70 = v99;
      v71 = (*(v99 + 48))(v69, 1, v63);
      v72 = v98;
      if (v71 != 1)
      {
        (*(v70 + 32))(v98, v69, v63);
LABEL_36:
        if (sub_15140())
        {
          v73 = v95;
          sub_151B0();

          (*(v70 + 8))(v72, v63);
          v75 = v106;
          v74 = v107;
          v76 = *(v107 + 32);
          v77 = v94;
          v76(v94, v73, v106);
          v78 = v108;
          v76(v108, v77, v75);
          return (*(v74 + 56))(v78, 0, 1, v75);
        }

        (*(v70 + 8))(v72, v63);
        goto LABEL_39;
      }
    }

    else
    {
      v70 = v99;
      v69 = v97;
      (*(v99 + 56))(v97, 1, 1, v63);
      v72 = v98;
    }

    (*(v70 + 104))(v72, enum case for UsoEntity_common_OffsetDirection.DefinedValues.common_OffsetDirection_After(_:), v63);
    if ((*(v70 + 48))(v69, 1, v63) != 1)
    {
      sub_2D20(v69, &qword_20F28, &qword_16390);
    }

    goto LABEL_36;
  }

  sub_150F0();
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    sub_2D20(v39, &qword_20EF8, &qword_16370);
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v49 = sub_15540();
    sub_2CE8(v49, qword_20ED0);
    v50 = sub_15530();
    v51 = sub_155E0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "ClockFlowPlugin does not yet support arbitrary absolute date references", v52, 2u);
    }

    goto LABEL_9;
  }

  (*(v41 + 32))(v47, v39, v40);
  (*(v41 + 16))(v45, v47, v40);
  v60 = (*(v41 + 88))(v45, v40);
  if (v60 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_Tomorrow(_:) || v60 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_DayBeforeYesterday(_:) || v60 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_DayAfterTomorrow(_:))
  {
    goto LABEL_47;
  }

  if (v60 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:))
  {
    (*(v41 + 8))(v47, v40);
LABEL_9:

LABEL_44:

    return (*(v107 + 56))(v108, 1, 1, v106);
  }

  if (v60 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_Yesterday(_:))
  {
LABEL_47:
    v84 = sub_14D00();
    (*(*(v84 - 8) + 56))(v100, 1, 1, v84);
    v85 = sub_14D10();
    (*(*(v85 - 8) + 56))(v101, 1, 1, v85);
    v86 = v102;
    sub_14C10();
    sub_14BF0();

    (*(v41 + 8))(v47, v40);
    v88 = v107;
    v87 = v108;
    v89 = v86;
    v90 = v106;
    (*(v107 + 32))(v108, v89, v106);
    return (*(v88 + 56))(v87, 0, 1, v90);
  }

  else
  {
    v91 = *(v41 + 8);
    v91(v47, v40);

    (*(v107 + 56))(v108, 1, 1, v106);
    return (v91)(v45, v40);
  }
}

uint64_t sub_105F8@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_1DE4(&qword_20AC8, &unk_15E40);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v48 - v3;
  v5 = sub_1DE4(&qword_20AD0, &qword_16080);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v48 - v7;
  v9 = sub_14C20();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DE4(&qword_20EF0, &qword_16368);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v48 - v15;
  v17 = sub_151D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v48 - v23;
  sub_15220();
  if (!v53)
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v39 = sub_15540();
    sub_2CE8(v39, qword_20ED0);
    v40 = sub_15530();
    v41 = sub_155F0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "ClockFlowPlugin task contains no reference", v42, 2u);
    }

    return (*(v50 + 56))(v52, 1, 1, v51);
  }

  v49 = v24;
  if (!sub_15180() || (v25 = sub_150D0(), , !v25) || (v26 = sub_150B0(), , !v26))
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_9;
  }

  sub_151C0();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_9:
    sub_2D20(v16, &qword_20EF0, &qword_16368);
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v35 = sub_15540();
    sub_2CE8(v35, qword_20ED0);
    v36 = sub_15530();
    v37 = sub_155F0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Could not find listPosition in ClockFlowPlugin task", v38, 2u);
    }

    goto LABEL_14;
  }

  v27 = v49;
  (*(v18 + 32))(v49, v16, v17);
  (*(v18 + 16))(v22, v27, v17);
  v28 = (*(v18 + 88))(v22, v17);
  if (v28 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Previous(_:))
  {
LABEL_7:
    v29 = sub_14D00();
    (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
    v30 = sub_14D10();
    (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
    sub_14C10();
    sub_14BC0();

    (*(v18 + 8))(v27, v17);
    v32 = v50;
    v31 = v51;
    v33 = v52;
    (*(v50 + 32))(v52, v12, v51);
    return (*(v32 + 56))(v33, 0, 1, v31);
  }

  if (v28 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Current(_:))
  {
    (*(v18 + 8))(v27, v17);
LABEL_14:

    return (*(v50 + 56))(v52, 1, 1, v51);
  }

  if (v28 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
  {
    goto LABEL_7;
  }

  if (qword_20A38 != -1)
  {
    swift_once();
  }

  v43 = sub_15540();
  sub_2CE8(v43, qword_20ED0);
  v44 = sub_15530();
  v45 = sub_155E0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "ClockFlowPlugin does not yet support arbitrary absolute date references", v46, 2u);
    v27 = v49;
  }

  v47 = *(v18 + 8);
  v47(v27, v17);
  (*(v50 + 56))(v52, 1, 1, v51);
  return (v47)(v22, v17);
}

_OWORD *sub_10EF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10F00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10F5C()
{
  v0 = sub_15440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15210();
  if (v14 && (v5 = sub_15180(), , v5) && (v6 = sub_150E0(), , v6))
  {

    return 3;
  }

  else
  {
    sub_15210();
    if (v14 && (v8 = sub_15190(), , v8))
    {

      return 0;
    }

    else
    {
      sub_15210();
      if (!v14)
      {
        goto LABEL_13;
      }

      v9 = sub_15180();

      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = sub_150D0();

      if (v10 && (, sub_15430(), v11 = sub_15420(), (*(v1 + 8))(v4, v0), v11))
      {
        return 2;
      }

      else
      {
LABEL_13:
        sub_15210();
        if (v14 && (v12 = sub_15180(), , v12))
        {

          return 1;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_11150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11198(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1CE68;
  v6._object = a2;
  v4 = sub_15670(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_111E4()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20F30);
  sub_2CE8(v0, qword_20F30);
  return sub_15450();
}

id sub_11230(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DE4(&qword_20AD8, &qword_15E50);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v71 - v9;
  v11 = sub_14C20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v71 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - v21;
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  v25 = [objc_allocWithZone(v2) init];
  if (!a1)
  {
    goto LABEL_9;
  }

  sub_15130();
  if (!v84)
  {

    sub_2D20(&v83, &qword_20F10, &qword_16388);
LABEL_9:
    if (qword_20A40 != -1)
    {
      swift_once();
    }

    v27 = sub_15540();
    sub_2CE8(v27, qword_20F30);
    v28 = sub_15530();
    v29 = sub_155F0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Task is nil, returning empty ShowClockIntent", v30, 2u);
    }

    return 0;
  }

  sub_10EF0(&v83, v85);
  sub_10F00(v85, &v83);
  sub_151E0();
  if (swift_dynamicCast())
  {
    v78 = v12;
    v26 = v81[0];
    v79 = sub_10F5C();
    v77 = v19;
    v80 = v26;
    if (v79 <= 1u)
    {
      if (v79)
      {

LABEL_27:
        sub_F348(v10);
        v42 = v78;
        if ((*(v78 + 48))(v10, 1, v11) == 1)
        {
          sub_2D20(v10, &qword_20AD8, &qword_15E50);
        }

        else
        {
          (*(v42 + 32))(v24, v10, v11);
          if (qword_20A40 != -1)
          {
            swift_once();
          }

          v43 = sub_15540();
          sub_2CE8(v43, qword_20F30);
          (*(v42 + 16))(v22, v24, v11);
          v44 = sub_15530();
          LODWORD(v75) = sub_155F0();
          v45 = v42;
          if (os_log_type_enabled(v44, v75))
          {
            v46 = swift_slowAlloc();
            v72 = v46;
            v74 = swift_slowAlloc();
            *&v83 = v74;
            *v46 = 136315138;
            sub_125EC();
            v73 = v44;
            v47 = sub_15680();
            v49 = v48;
            v76 = *(v45 + 8);
            v76(v22, v11);
            v50 = sub_12BB4(v47, v49, &v83);

            v51 = v72;
            *(v72 + 1) = v50;
            v52 = v73;
            _os_log_impl(&dword_0, v73, v75, "Using date component offset: %s", v51, 0xCu);
            sub_4224(v74);
          }

          else
          {

            v76 = *(v42 + 8);
            v76(v22, v11);
          }

          isa = sub_14BD0().super.isa;
          [v25 setOffset:isa];

          v76(v24, v11);
        }

LABEL_35:
        if (v79 == 2)
        {
        }

        else
        {
          v54 = sub_15690();

          if ((v54 & 1) == 0)
          {
LABEL_46:
            v70 = sub_15590();

            [v25 setClockRequestType:v70];

            sub_4224(v85);
            return v25;
          }
        }

        sub_105F8(v8);
        v55 = v78;
        if ((*(v78 + 48))(v8, 1, v11) == 1)
        {
          sub_2D20(v8, &qword_20AD8, &qword_15E50);
        }

        else
        {
          v56 = v77;
          (*(v55 + 32))(v77, v8, v11);
          if (qword_20A40 != -1)
          {
            swift_once();
          }

          v57 = sub_15540();
          sub_2CE8(v57, qword_20F30);
          (*(v55 + 16))(v16, v56, v11);
          v58 = sub_15530();
          v59 = sub_155F0();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v75 = v60;
            v76 = swift_slowAlloc();
            *&v83 = v76;
            *v60 = 136315138;
            sub_125EC();
            v61 = sub_15680();
            v63 = v62;
            v64 = v16;
            v65 = *(v55 + 8);
            v65(v64, v11);
            v66 = sub_12BB4(v61, v63, &v83);
            v56 = v77;

            v67 = v75;
            *(v75 + 1) = v66;
            _os_log_impl(&dword_0, v58, v59, "Using date component offset: %s", v67, 0xCu);
            sub_4224(v76);
          }

          else
          {

            v68 = v16;
            v65 = *(v55 + 8);
            v65(v68, v11);
          }

          v69 = sub_14BD0().super.isa;
          [v25 setOffset:v69];

          v65(v56, v11);
        }

        goto LABEL_46;
      }

LABEL_23:
      v41 = sub_15690();

      if ((v41 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    if (v79 == 2 || v79 == 3)
    {
      goto LABEL_23;
    }

    sub_4224(v85);
  }

  else
  {
    if (qword_20A40 != -1)
    {
      swift_once();
    }

    v31 = sub_15540();
    sub_2CE8(v31, qword_20F30);
    sub_10F00(v85, &v83);
    v32 = sub_15530();
    v33 = sub_155E0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v82 = v35;
      *v34 = 136315138;
      sub_10F00(&v83, v81);
      v36 = sub_155B0();
      v38 = v37;
      sub_4224(&v83);
      v39 = sub_12BB4(v36, v38, &v82);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_0, v32, v33, "Receiving unsupported uso task: %s", v34, 0xCu);
      sub_4224(v35);
    }

    else
    {

      sub_4224(&v83);
    }

    sub_4224(v85);
  }

  return 0;
}

uint64_t sub_11DB0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_150A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_15080();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_15060();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_11F40, 0, 0);
}

uint64_t sub_11F40()
{
  v69 = v0;
  if (qword_20A40 != -1)
  {
    swift_once();
  }

  v1 = sub_15540();
  sub_2CE8(v1, qword_20F30);
  v2 = sub_15530();
  v3 = sub_155F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ClockFlowUtils.makeIntentFromParse() called.", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  v9 = *(v7 + 16);
  v9(v5, v8, v6);
  v10 = (*(v7 + 88))(v5, v6);
  if (v10 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v11 = v0[13];
    (*(v0[10] + 96))(v11, v0[9]);
    v12 = *v11;
    swift_getObjectType();
    v13 = sub_15600();
    if (v13)
    {
      v14 = v13;
      type metadata accessor for ShowClockIntent();
      v15 = sub_11230(v14);
      swift_unknownObjectRelease();
LABEL_11:
      v28 = v0[12];
      v27 = v0[13];
      v29 = v0[11];
      v30 = v0[8];
      v31 = v0[5];

      v32 = v0[1];

      return v32(v15);
    }

    v47 = sub_15530();
    v48 = sub_155E0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "ClockFlowUtils.makeIntentFromParse USO task is empty", v49, 2u);
    }

    sub_1DE4(&qword_20C90, &qword_16098);
    sub_9464();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else if (v10 == enum case for Parse.uso(_:))
  {
    v16 = v0[13];
    v18 = v0[7];
    v17 = v0[8];
    v20 = v0[5];
    v19 = v0[6];
    v21 = v0[3];
    v22 = v0[4];
    (*(v0[10] + 96))(v16, v0[9]);
    (*(v18 + 32))(v17, v16, v19);
    sub_15070();
    v23 = sub_15090();
    (*(v22 + 8))(v20, v21);
    if (v23)
    {
      v25 = v0[7];
      v24 = v0[8];
      v26 = v0[6];
      type metadata accessor for ShowClockIntent();
      v15 = sub_11230(v23);
      (*(v25 + 8))(v24, v26);
      goto LABEL_11;
    }

    v54 = sub_15530();
    v55 = sub_155E0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "ClockFlowUtils.makeIntentFromParse USO task is empty", v56, 2u);
    }

    v58 = v0[7];
    v57 = v0[8];
    v59 = v0[6];

    sub_1DE4(&qword_20C90, &qword_16098);
    sub_9464();
    swift_allocError();
    swift_willThrow();
    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v9(v0[12], v0[2], v0[9]);
    v34 = sub_15530();
    v35 = sub_155E0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[12];
    if (v36)
    {
      v67 = v35;
      v38 = v0[10];
      v39 = v0[11];
      v40 = v0[9];
      v41 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68 = v66;
      *v41 = 136315138;
      v9(v39, v37, v40);
      v42 = sub_155B0();
      v44 = v43;
      v45 = *(v38 + 8);
      v45(v37, v40);
      v46 = sub_12BB4(v42, v44, &v68);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_0, v34, v67, "ClockFlowUtils.makeIntentFromParse Received unsupported parse: %s", v41, 0xCu);
      sub_4224(v66);
    }

    else
    {
      v50 = v0[9];
      v51 = v0[10];

      v45 = *(v51 + 8);
      v45(v37, v50);
    }

    v52 = v0[13];
    v53 = v0[9];
    sub_1DE4(&qword_20C90, &qword_16098);
    sub_9464();
    swift_allocError();
    swift_willThrow();
    v45(v52, v53);
  }

  v61 = v0[12];
  v60 = v0[13];
  v62 = v0[11];
  v63 = v0[8];
  v64 = v0[5];

  v65 = v0[1];

  return v65();
}

unint64_t sub_125EC()
{
  result = qword_20F48[0];
  if (!qword_20F48[0])
  {
    sub_14C20();
    result = swift_getWitnessTable();
    atomic_store(result, qword_20F48);
  }

  return result;
}

uint64_t sub_12674(unsigned int *a1, int a2)
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

_WORD *sub_126C4(_WORD *result, int a2, int a3)
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

Swift::Int sub_1277C()
{
  sub_156E0();
  sub_156F0(0);
  return sub_15700();
}

Swift::Int sub_127E8()
{
  sub_156E0();
  sub_156F0(0);
  return sub_15700();
}

uint64_t sub_1283C()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_21050);
  sub_2CE8(v0, qword_21050);
  return sub_15450();
}

uint64_t sub_12888(uint64_t *a1)
{
  type metadata accessor for ShowClockIntent();
  type metadata accessor for ShowClockIntentResponse();
  sub_14E20();
  if (qword_20A20 != -1)
  {
    swift_once();
  }

  sub_14DF0();
  sub_1DE4(&qword_21068, &qword_16488);
  sub_14E10();
  if (qword_20A48 != -1)
  {
    swift_once();
  }

  v2 = sub_15540();
  sub_2CE8(v2, qword_21050);
  v3 = sub_15530();
  v4 = sub_155F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "AppResolution completion set.", v5, 2u);
  }

  sub_12A58(a1, v7);
  sub_12ABC();
  sub_14DE0();
  sub_14E00();
  sub_4224(a1);
  return sub_12B10(v7);
}

uint64_t sub_12A58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_12ABC()
{
  result = qword_21070;
  if (!qword_21070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21070);
  }

  return result;
}

uint64_t sub_12B68()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_21078);
  sub_2CE8(v0, qword_21078);
  return sub_15450();
}

uint64_t sub_12BB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_12C80(v11, 0, 0, 1, a1, a2);
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
    sub_10F00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4224(v11);
  return v7;
}

unint64_t sub_12C80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_12D8C(a5, a6);
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
    result = sub_15660();
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

char *sub_12D8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_12DD8(a1, a2);
  sub_12F08(&off_1CE40);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_12DD8(uint64_t a1, unint64_t a2)
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

  v6 = sub_12FF4(v5, 0);
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

  result = sub_15660();
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
        v10 = sub_155C0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_12FF4(v10, 0);
        result = sub_15650();
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

uint64_t sub_12F08(uint64_t result)
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

  result = sub_13068(result, v12, 1, v3);
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

void *sub_12FF4(uint64_t a1, uint64_t a2)
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

  sub_1DE4(&qword_21130, &qword_164E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_13068(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DE4(&qword_21130, &qword_164E8);
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

uint64_t sub_1315C()
{
  v0 = sub_1DE4(&qword_21138, &unk_164F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v24[-1] - v3;
  v5 = sub_1DE4(&qword_21068, &qword_16488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24[-1] - v11;
  if (qword_20A50 != -1)
  {
    swift_once();
  }

  v13 = sub_15540();
  sub_2CE8(v13, qword_21078);
  v14 = sub_15530();
  v15 = sub_155F0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "ClockFlowFactory: making showClockFlow.", v16, 2u);
  }

  sub_154D0();
  sub_154C0();
  sub_154B0();

  sub_12888(v24);
  (*(v6 + 16))(v10, v12, v5);
  v17 = sub_1DE4(&qword_21140, &qword_16500);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_14E30();

  sub_1DE4(&qword_21148, &qword_16508);
  sub_1391C(&qword_21150, &qword_21148, &qword_16508);
  sub_14F40();
  v20 = sub_14F30();
  (*(v1 + 8))(v4, v0);
  v24[0] = v20;
  sub_1DE4(&qword_21158, &unk_16510);
  sub_1391C(&qword_21160, &qword_21158, &unk_16510);
  v21 = sub_14E40();

  (*(v6 + 8))(v12, v5);
  return v21;
}

uint64_t _s15ClockFlowPlugin0aB7FactoryV04makeB4From5parse07SiriKitB003AnyB0CSgAF5ParseO_tF_0(uint64_t a1)
{
  v2 = sub_15060();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v34 - v9;
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  if (qword_20A50 != -1)
  {
    swift_once();
  }

  v13 = sub_15540();
  v14 = sub_2CE8(v13, qword_21078);
  v38 = *(v3 + 16);
  v38(v12, a1, v2);
  v36 = v14;
  v15 = sub_15530();
  v16 = sub_155D0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = a1;
    v20 = v19;
    v39 = v19;
    *v18 = 136315138;
    v38(v10, v12, v2);
    v21 = sub_155B0();
    v34 = v7;
    v23 = v22;
    v24 = *(v37 + 8);
    v24(v12, v2);
    v25 = sub_12BB4(v21, v23, &v39);
    v7 = v34;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_0, v15, v16, "Making flow from parse: %s", v18, 0xCu);
    sub_4224(v20);
    a1 = v35;

    v3 = v37;

    v26 = v24;
  }

  else
  {

    v26 = *(v3 + 8);
    v26(v12, v2);
  }

  v38(v7, a1, v2);
  v27 = (*(v3 + 88))(v7, v2);
  if (v27 == enum case for Parse.NLv4IntentOnly(_:) || v27 == enum case for Parse.uso(_:))
  {
    v26(v7, v2);
    if (sub_CF70(a1))
    {
      return sub_1315C();
    }
  }

  else
  {
    v30 = sub_15530();
    v31 = sub_155E0();
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v30, v31, "ClockFlowPlugin cannot make flow from the provided parse. Exiting.", v33, 2u);
    }

    v26(v7, v2);
  }

  return 0;
}

uint64_t sub_1391C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_94C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TimeSuggestionsCATsSimple()
{
  result = qword_21168;
  if (!qword_21168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_139F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_15370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DE4(&qword_20AA8, &unk_15E20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_1E2C(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_15320();
  (*(v6 + 8))(a2, v5);
  sub_1E9C(a1);
  return v16;
}

uint64_t sub_13B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_15370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_15330();
  (*(v5 + 8))(a2, v4);
  return v11;
}

char *ShowClockIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id ShowClockIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowClockIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id ShowClockIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowClockIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ShowClockIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_15590();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ShowClockIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_15590();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ShowClockIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id ShowClockIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_15590();

  v8 = sub_15590();

  if (a5)
  {
    v9.super.isa = sub_15550().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id ShowClockIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_15590();

  v8 = sub_15590();

  if (a5)
  {
    v9.super.isa = sub_15550().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ShowClockIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_142F0()
{
  v1 = *v0;
  sub_156E0();
  sub_156F0(v1);
  return sub_15700();
}

Swift::Int sub_14364()
{
  v1 = *v0;
  sub_156E0();
  sub_156F0(v1);
  return sub_15700();
}

unint64_t sub_143A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_14A70(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ShowClockIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ShowClockIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id ShowClockIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowClockIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id ShowClockIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id ShowClockIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowClockIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ShowClockIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id ShowClockIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowClockIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1481C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ShowClockIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ShowClockIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_15550().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id ShowClockIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_15550().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowClockIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_14A38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_14A70(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_14AA8()
{
  result = qword_211C0;
  if (!qword_211C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_211C0);
  }

  return result;
}

uint64_t sub_14AFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ShowClockIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_14B54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ShowClockIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}