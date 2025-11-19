uint64_t *sub_1000885F4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10008866C()
{
  result = qword_100359F68;
  if (!qword_100359F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359F68);
  }

  return result;
}

uint64_t sub_1000886C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100088708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100088784@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  if (*v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 24))(v14, v5, v6);
    *a1 = static VerticalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v7 = a1 + *(sub_1000040A8(&qword_100359F70) + 44);
    *v7 = static HorizontalAlignment.center.getter();
    *(v7 + 8) = 0x402C000000000000;
    *(v7 + 16) = 0;
    sub_1000040A8(&qword_100359F78);
    sub_100088900(v1, v14);
    v8 = swift_allocObject();
    v9 = *(v2 + 48);
    *(v8 + 48) = *(v2 + 32);
    *(v8 + 64) = v9;
    *(v8 + 80) = *(v2 + 64);
    v10 = *(v2 + 16);
    *(v8 + 16) = *v2;
    *(v8 + 32) = v10;
    v11 = (v7 + *(sub_1000040A8(&qword_100359F80) + 36));
    *v11 = sub_100089220;
    v11[1] = v8;
    sub_100009108(v2, &v13);
    return sub_100008964(v14);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100088900(uint64_t result, uint64_t a2)
{
  v20 = result;
  v2 = *(result + 24);
  v3 = *(v2 + 136);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = (v3 + 40 + 16 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v9 = *(v7 - 1);
        v10 = *v7;
        v5 = v8 + 1;
        if (v10 != 1)
        {
          break;
        }

        v11 = *(v2 + 152);
        if (!v11 || ((result = *(v9 + 16), result == *(v11 + 16)) ? (v12 = *(v9 + 24) == *(v11 + 24)) : (v12 = 0), !v12 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
        {

          break;
        }

        v7 += 16;
        ++v8;
        if (v4 == v5)
        {
          goto LABEL_21;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *&v21[0] = v6;
      if ((result & 1) == 0)
      {
        result = sub_100187294(0, v6[2] + 1, 1);
        v6 = *&v21[0];
      }

      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_100187294((v13 > 1), v14 + 1, 1);
        v6 = *&v21[0];
      }

      v6[2] = v14 + 1;
      v15 = &v6[2 * v14];
      v15[4] = v9;
      *(v15 + 40) = v10;
    }

    while (v4 - 1 != v8);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

LABEL_21:
  v22 = v6;
  swift_getKeyPath();
  sub_1000089B0(a2, v21);
  v16 = swift_allocObject();
  v17 = *(v20 + 48);
  *(v16 + 48) = *(v20 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(v20 + 64);
  v18 = *(v20 + 16);
  *(v16 + 16) = *v20;
  *(v16 + 32) = v18;
  sub_100008A18(v21, v16 + 88);
  sub_100009108(v20, v21);
  sub_1000040A8(&qword_100356648);
  sub_1000040A8(&qword_100359F90);
  sub_100009274(&qword_100356658, &qword_100356648);
  sub_10002CCE8();
  sub_100089294();
  return ForEach<>.init(_:id:content:)();
}

__n128 sub_100088B84@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1[8] == 1)
  {
    v4 = *a1;
    v5 = *(*a1 + 32);
    v33 = *(a2 + 48);
    v34.n128_u64[0] = *(a2 + 64);

    sub_1000040A8(&qword_100359F88);
    State.wrappedValue.getter();
    v7 = v18;
    v8 = *v19;
    v9 = swift_allocObject();
    v10 = *(a2 + 48);
    *(v9 + 48) = *(a2 + 32);
    *(v9 + 64) = v10;
    v11 = *(a2 + 64);
    v12 = *(a2 + 16);
    *(v9 + 16) = *a2;
    *(v9 + 32) = v12;
    *(v9 + 80) = v11;
    *(v9 + 88) = v4;
    sub_100009108(a2, &v33);
    sub_100089408(v4, 1);
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    v18 = EnvironmentObject.init()();
    *v19 = v13;
    *&v19[8] = v5;
    *&v19[16] = v7;
    *&v19[24] = v8;
    *&v19[32] = sub_1000893E0;
    *&v19[40] = v9;
    sub_100089414(&v18);
  }

  else
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v25 = 1;
    *&v24[55] = v29;
    *&v24[71] = v30;
    *&v24[87] = v31;
    *&v24[103] = v32;
    *&v24[7] = v26;
    *&v24[23] = v27;
    *&v24[39] = v28;
    v18 = 0;
    v19[0] = 1;
    v20 = *&v24[48];
    *&v19[33] = *&v24[32];
    *&v19[17] = *&v24[16];
    *&v19[1] = *v24;
    *&v23[15] = *(&v32 + 1);
    *v23 = *&v24[96];
    v22 = *&v24[80];
    v21 = *&v24[64];
    sub_100089374(&v18);
  }

  sub_1000040A8(&qword_100356680);
  sub_100089320();
  sub_10002CE1C();
  _ConditionalContent<>.init(storage:)();
  v14 = v40;
  *(a3 + 96) = v39;
  *(a3 + 112) = v14;
  *(a3 + 128) = v41;
  v15 = v36;
  *(a3 + 32) = v35;
  *(a3 + 48) = v15;
  v16 = v38;
  *(a3 + 64) = v37;
  *(a3 + 80) = v16;
  result = v34;
  *a3 = v33;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_100088E04(uint64_t a1)
{
  v3 = *(v1 + 24);
  if ((sub_1000BB344(v3, a1, 0) & 1) == 0)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381E48);
    sub_100009108(v1, v12);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    sub_100009164(v1);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v12[0] = swift_slowAlloc();
      *v7 = 136446723;
      v8 = sub_1000B9A7C();
      v10 = sub_10017C9E8(v8, v9, v12);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2081;
      *(v7 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), v12);
      *(v7 + 22) = 2081;
      *(v7 + 24) = sub_10017C9E8(*(v3 + 16), *(v3 + 24), v12);
      _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] QuestionnaireBodyView: failed to record %{private}s answer for %{private}s", v7, 0x20u);
      swift_arrayDestroy();
    }
  }

  return (*(v1 + 32))();
}

uint64_t sub_100088FE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381ED8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136446210;
    *&v15 = v3;
    *(&v15 + 1) = v4;
    type metadata accessor for CGSize(0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Button icon size requested: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  v15 = *(a2 + 48);
  v16 = *(a2 + 64);
  v14[0] = v3;
  v14[1] = v4;
  sub_1000040A8(&qword_100359F88);
  return State.wrappedValue.setter();
}

uint64_t sub_1000891C8()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100089228()
{

  sub_100008964(v0 + 88);

  return _swift_deallocObject(v0, 128, 7);
}

unint64_t sub_100089294()
{
  result = qword_100359F98;
  if (!qword_100359F98)
  {
    sub_100008CF0(&qword_100359F90);
    sub_100089320();
    sub_10002CE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359F98);
  }

  return result;
}

unint64_t sub_100089320()
{
  result = qword_100359FA0;
  if (!qword_100359FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359FA0);
  }

  return result;
}

uint64_t sub_100089380()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100089408(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_100089460()
{
  v1 = v0;
  v2 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1000040A8(&qword_10035A080);
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 32) = PassthroughSubject.init()();
  *(v0 + 40) = [objc_allocWithZone(type metadata accessor for StewieStateSource()) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  *(v0 + 48) = v8;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  v9 = qword_100353A10;
  swift_retain_n();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381C80);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136446210;
    v25 = v1;

    v15 = String.init<A>(describing:)();
    v17 = sub_10017C9E8(v15, v16, v24);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] init", v13, 0xCu);
    sub_100008964(v14);
  }

  v24[0] = *(v1[5] + OBJC_IVAR____TtC8SOSBuddy17StewieStateSource_stateDidChange);
  sub_10000F574();

  v18 = static OS_dispatch_queue.main.getter();
  v25 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_1000040A8(&qword_100355E08);
  sub_100009274(&qword_10035A088, &qword_100355E08);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v4, &unk_10035CF50);

  sub_100009274(&qword_10035A090, &qword_10035A080);

  v20 = v23;
  Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v7, v20);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_100089984(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v22 = *(a1 + 32);
  v23 = v3;
  v24 = *(a1 + 64);
  v25 = *(a1 + 80);
  v4 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v4;
  v18 = v3;
  v19 = v24;
  v16 = v4;
  v17 = v22;
  v20 = v25;
  v15 = v21[0];
  v14 = *(a2 + 136);
  v5 = *(a2 + 120);
  v6 = *(a2 + 88);
  v13[3] = *(a2 + 104);
  v13[4] = v5;
  v7 = *(a2 + 56);
  v13[1] = *(a2 + 72);
  v13[2] = v6;
  v13[0] = v7;
  sub_10008A64C(v21, v26);
  sub_100027B5C(v13, v26);
  sub_100089E48(&v15);
  v8 = *(a2 + 104);
  v26[2] = *(a2 + 88);
  v26[3] = v8;
  v26[4] = *(a2 + 120);
  v9 = *(a2 + 72);
  v26[0] = *(a2 + 56);
  v26[1] = v9;
  v10 = v18;
  *(a2 + 88) = v17;
  *(a2 + 104) = v10;
  *(a2 + 120) = v19;
  v11 = v16;
  *(a2 + 56) = v15;
  v27 = *(a2 + 136);
  *(a2 + 136) = v20;
  *(a2 + 72) = v11;
  sub_100008FA0(v26, &unk_10035CEF0);
  sub_10008A0DC(v13);
  return sub_100008FA0(v13, &unk_10035CEF0);
}

uint64_t sub_100089AB4()
{

  return sub_10008A6A8(*(v0 + 56), *(v0 + 64));
}

uint64_t sub_100089B0C()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  sub_10008A6A8(*(v1 + 56), *(v1 + 64));
  return v1;
}

uint64_t sub_100089CEC()
{
  sub_100089B0C();

  return swift_deallocClassInstance();
}

void sub_100089D44()
{
  if ((sub_10001E0FC() & 1) == 0)
  {
    if (qword_100353AC0 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000F53C(v0, qword_100381E90);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to start source", v2, 2u);
    }
  }
}

uint64_t sub_100089E48(uint64_t a1)
{
  v3 = *(v1 + 104);
  v52[2] = *(v1 + 88);
  v52[3] = v3;
  v52[4] = *(v1 + 120);
  v53 = *(v1 + 136);
  v4 = *(v1 + 72);
  v52[0] = *(v1 + 56);
  v52[1] = v4;
  v5 = v52[0];
  v6 = *(v1 + 88);
  v7 = *(v1 + 120);
  v47 = *(v1 + 104);
  v48 = v7;
  v49 = *(v1 + 136);
  v45 = *(v1 + 72);
  v46 = v6;
  v9 = *a1;
  v8 = *(a1 + 8);
  if (*(&v52[0] + 1))
  {
    if (v8)
    {
      *&v24 = *a1;
      *(&v24 + 1) = v8;
      v10 = *(a1 + 64);
      v27 = *(a1 + 48);
      v28 = v10;
      v29 = *(a1 + 80);
      v11 = *(a1 + 32);
      v25 = *(a1 + 16);
      v26 = v11;
      v37 = v29;
      v35 = v27;
      v36 = v10;
      v33 = v25;
      v34 = v11;
      v32 = v24;
      v12 = *(v1 + 88);
      v13 = *(v1 + 120);
      v50[3] = *(v1 + 104);
      v50[4] = v13;
      v51 = *(v1 + 136);
      v50[1] = *(v1 + 72);
      v50[2] = v12;
      v50[0] = v52[0];
      v14 = sub_10001F4B0(v50, &v32);
      sub_100027B5C(v52, v30);
      sub_100027B5C(a1, v30);
      sub_100008FA0(&v24, &unk_10035CEF0);
      v30[0] = v5;
      v30[3] = v47;
      v30[4] = v48;
      v31 = v49;
      v30[2] = v46;
      v30[1] = v45;
      result = sub_100008FA0(v30, &unk_10035CEF0);
      if (v14)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    v32 = *&v52[0];
    v22 = *(v1 + 88);
    v23 = *(v1 + 120);
    v35 = *(v1 + 104);
    v36 = v23;
    v37 = *(v1 + 136);
    v33 = *(v1 + 72);
    v34 = v22;
    sub_100027B5C(v52, v50);
    sub_100027B5C(a1, v50);
    return sub_100008FA0(&v32, &unk_10035CEF0);
  }

  v32 = v52[0];
  v16 = *(v1 + 88);
  v17 = *(v1 + 120);
  v35 = *(v1 + 104);
  v36 = v17;
  v18 = *(v1 + 136);
  v33 = *(v1 + 72);
  v34 = v16;
  v37 = v18;
  v38 = v9;
  v19 = *(a1 + 80);
  v39 = v8;
  v44 = v19;
  v20 = *(a1 + 64);
  v42 = *(a1 + 48);
  v43 = v20;
  v21 = *(a1 + 32);
  v40 = *(a1 + 16);
  v41 = v21;
  sub_100027B5C(v52, v50);
  sub_100027B5C(a1, v50);
  sub_100008FA0(&v32, &qword_10035A098);
LABEL_7:
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  return Subject<>.send()();
}

uint64_t sub_10008A0DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 104);
  v75[2] = *(v1 + 88);
  v75[3] = v4;
  v75[4] = *(v1 + 120);
  v76 = *(v1 + 136);
  v5 = *(v1 + 72);
  v75[0] = *(v1 + 56);
  v75[1] = v5;
  v6 = v75[0];
  v7 = *(v1 + 88);
  v8 = *(v1 + 120);
  v44 = *(v1 + 104);
  v45 = v8;
  v46 = *(v1 + 136);
  v42 = *(v1 + 72);
  v43 = v7;
  v10 = *a1;
  v9 = *(a1 + 8);
  if (!*(&v75[0] + 1))
  {
    if (!v9)
    {
      v60 = *&v75[0];
      v40 = *(v1 + 88);
      v41 = *(v1 + 120);
      v63 = *(v1 + 104);
      v64 = v41;
      v65 = *(v1 + 136);
      v61 = *(v1 + 72);
      v62 = v40;
      sub_100027B5C(v75, v73);
      sub_100027B5C(a1, v73);
      return sub_100008FA0(&v60, &unk_10035CEF0);
    }

    goto LABEL_6;
  }

  if (!v9)
  {
LABEL_6:
    v15 = *(v1 + 88);
    v16 = *(v1 + 120);
    v63 = *(v1 + 104);
    v64 = v16;
    v61 = *(v1 + 72);
    v62 = v15;
    v17 = *(a1 + 48);
    v71 = *(a1 + 64);
    v70 = v17;
    v18 = *(a1 + 16);
    v69 = *(a1 + 32);
    v60 = v75[0];
    v65 = *(v1 + 136);
    v66 = v10;
    v19 = *(a1 + 80);
    v67 = v9;
    v72 = v19;
    v68 = v18;
    sub_100027B5C(v75, v73);
    sub_100027B5C(a1, v73);
    sub_100008FA0(&v60, &qword_10035A098);
    goto LABEL_7;
  }

  *&v47 = *a1;
  *(&v47 + 1) = v9;
  v11 = *(a1 + 64);
  v50 = *(a1 + 48);
  v51 = v11;
  v52 = *(a1 + 80);
  v12 = *(a1 + 32);
  v48 = *(a1 + 16);
  v49 = v12;
  v65 = v52;
  v63 = v50;
  v64 = v11;
  v61 = v48;
  v62 = v12;
  v60 = v47;
  v73[2] = *(v1 + 88);
  v73[3] = *(v1 + 104);
  v73[4] = *(v1 + 120);
  v74 = *(v1 + 136);
  v73[1] = *(v1 + 72);
  v73[0] = v75[0];
  v13 = sub_10001F4B0(v73, &v60);
  sub_100027B5C(v75, &v54);
  sub_100027B5C(a1, &v54);
  sub_100008FA0(&v47, &unk_10035CEF0);
  v54 = v6;
  v57 = v44;
  v58 = v45;
  v59 = v46;
  v55 = v42;
  v56 = v43;
  result = sub_100008FA0(&v54, &unk_10035CEF0);
  if (v13)
  {
    return result;
  }

LABEL_7:
  if (qword_100353AC0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000F53C(v20, qword_100381E90);
  sub_100027B5C(a1, &v54);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_100008FA0(a1, &unk_10035CEF0);

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v23 = 136446466;
    v24 = *(a1 + 48);
    v56 = *(a1 + 32);
    v57 = v24;
    v58 = *(a1 + 64);
    v59 = *(a1 + 80);
    v25 = *(a1 + 16);
    v54 = *a1;
    v55 = v25;
    sub_100027B5C(a1, &v47);
    sub_1000040A8(&unk_10035CEF0);
    v26 = String.init<A>(describing:)();
    v28 = sub_10017C9E8(v26, v27, &v53);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    v29 = *(v2 + 104);
    v56 = *(v2 + 88);
    v57 = v29;
    v58 = *(v2 + 120);
    v59 = *(v2 + 136);
    v30 = *(v2 + 72);
    v54 = *(v2 + 56);
    v55 = v30;
    v31 = *(v2 + 104);
    v49 = *(v2 + 88);
    v50 = v31;
    v51 = *(v2 + 120);
    v52 = *(v2 + 136);
    v32 = *(v2 + 72);
    v47 = *(v2 + 56);
    v48 = v32;
    sub_100027B5C(&v54, &v42);
    v33 = String.init<A>(describing:)();
    v35 = sub_10017C9E8(v33, v34, &v53);

    *(v23 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v21, v22, "state changed from: %{public}s to: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  result = Subject<>.send()();
  if (*(v2 + 64))
  {
    v36 = *(v2 + 88);
    v37 = *(a1 + 8);

    if (!v37)
    {
      if (!v36)
      {
        return result;
      }

      goto LABEL_22;
    }

    v38 = *(a1 + 32);

    if (v36)
    {
      if (v38)
      {
        v39 = sub_100204870(v36, v38);

        if (v39)
        {
          return result;
        }

        return Subject<>.send()();
      }

LABEL_22:

      return Subject<>.send()();
    }
  }

  else
  {
    if (!*(a1 + 8))
    {
      return result;
    }

    v38 = *(a1 + 32);
  }

  if (v38)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10008A6A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10008A72C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008B8BC(*a1);
  *a2 = result;
  return result;
}

BOOL sub_10008A764(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return a1[2] == a2[2];
  }

  return result;
}

id sub_10008A7A0()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__publisher;
  *&v0[v1] = [objc_allocWithZone(STStewieStatusDomainPublisher) init];
  v2 = &v0[OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__lastReportedState];
  v2[2] = 0;
  *v2 = 2;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for StatusBarAgent();
  v3 = objc_msgSendSuper2(&v19, "init");
  v4 = qword_100353A10;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381C80);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v11 = v5;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10017C9E8(v13, v15, &v18);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] init", v9, 0xCu);
    sub_100008964(v10);
  }

  else
  {
  }

  return v5;
}

id sub_10008A9B8()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for StatusBarAgent();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_10008ABBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_100353A10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_10000F53C(v11, qword_100381C80);
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = a2;
    aBlock[0] = v16;
    v17 = a1;
    v18 = v16;
    *v15 = 136446210;
    v19 = v12;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10017C9E8(v21, v23, aBlock);

    *(v15 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] start", v15, 0xCu);
    sub_100008964(v18);
    a1 = v17;
    a2 = v30;
  }

  v25 = *&v12[OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__publisher];
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  aBlock[4] = sub_10008B84C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008137C;
  aBlock[3] = &unk_10032B6E8;
  v27 = _Block_copy(aBlock);

  [v25 handleUserInteractionsWithBlock:v27];
  _Block_release(v27);
  sub_10008B264(0);
  return 1;
}

uint64_t sub_10008AF08(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_100353AB8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E78);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Status pill tapped", v6, 2u);
  }

  return a2();
}

void sub_10008AFFC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = v8;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10017C9E8(v15, v17, &v20);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] stop", v11, 0xCu);
    sub_100008964(v12);
  }
}

uint64_t sub_10008B264(uint64_t result)
{
  v2 = v1;
  v3 = result;
  LODWORD(v4) = result & 0x100;
  v5 = OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__lastReportedState;
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__lastReportedState) == 2 || ((result ^ *(v1 + OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__lastReportedState)) & 1) != 0 || ((v4 != 0) != ((*(v1 + OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__lastReportedState) & 0x100) == 0) ? (v6 = BYTE2(result) == (*(v1 + OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__lastReportedState) | (*(v1 + OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__lastReportedState + 2) << 16)) >> 16) : (v6 = 0), !v6))
  {
    if (qword_100353AB8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381E78);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    LODWORD(v10) = HIWORD(v3);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v11 = 136446210;
      v24 = v9;
      v12 = v4 >> 8;
      v13 = String.init<A>(describing:)();
      v10 = v5;
      v15 = v2;
      v16 = v4;
      v4 = sub_10017C9E8(v13, v14, aBlock);

      *(v11 + 4) = v4;
      LOWORD(v4) = v16;
      v2 = v15;
      v5 = v10;
      LOBYTE(v10) = BYTE2(v3);
      LOBYTE(v17) = v12;
      _os_log_impl(&_mh_execute_header, v8, v24, "Updating state: %{public}s", v11, 0xCu);
      sub_100008964(v25);

      v18 = v3 & 1;
    }

    else
    {

      v18 = v3 & 1;
      v17 = v4 >> 8;
    }

    v19 = *(v2 + OBJC_IVAR____TtC8SOSBuddy14StatusBarAgent__publisher);
    v20 = swift_allocObject();
    v20[16] = v18;
    v20[17] = v17;
    v20[18] = v10;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_10008B750;
    *(v21 + 24) = v20;
    aBlock[4] = sub_10008B7D4;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008B6F4;
    aBlock[3] = &unk_10032B698;
    v22 = _Block_copy(aBlock);

    [v19 updateVolatileDataWithBlock:v22];
    _Block_release(v22);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      v23 = v2 + v5;
      *(v23 + 2) = v10;
      *v23 = v3 & 1 | v4;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for StatusBarAgent.State(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StatusBarAgent.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for StatusBarAgent.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_10008B6F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_10008B750(void *a1)
{
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  [a1 setStewieActive:v3];
  [a1 setStewieConnected:v4];

  return [a1 setStewieSignalStrengthBars:v5];
}

uint64_t sub_10008B7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008B814()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10008B868()
{
  result = qword_10035A0D8;
  if (!qword_10035A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035A0D8);
  }

  return result;
}

unint64_t sub_10008B8BC(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

BOOL sub_10008B8D4()
{
  if (*(*(v0 + 56) + 16))
  {
    return 0;
  }

  if (*(v0 + 32) == 2)
  {
    return 0;
  }

  return *(v0 + 64) != 6;
}

uint64_t sub_10008B90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  isUniquelyReferenced_nonNull_native = v6;
  v8 = v5;
  v9 = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v10 = *(a3 + 16);
  *(v5 + 32) = *a3;
  *(v5 + 48) = v10;
  *(v5 + 64) = *(a3 + 32);
  *(v5 + 80) = *(a3 + 48);
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  if (a5 >> 62)
  {
    goto LABEL_50;
  }

  v11 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v11)
  {
    v40 = isUniquelyReferenced_nonNull_native;
    v41 = v8;
    v12 = 0;
    v43 = v9 & 0xFFFFFFFFFFFFFF8;
    v44 = v9 & 0xC000000000000001;
    v13 = &_swiftEmptyDictionarySingleton;
    v42 = v9;
    while (1)
    {
      if (v44)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v12 >= *(v43 + 16))
        {
          goto LABEL_46;
        }

        v14 = *(v9 + 8 * v12 + 32);

        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          v11 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if (v13[2])
      {
        v15 = *(v14 + 16);
        v16 = *(v14 + 24);

        sub_100186A08(v15, v16);
        LOBYTE(v15) = v17;

        if (v15)
        {
LABEL_37:

          v36 = *(v14 + 16);
          v35 = *(v14 + 24);
          sub_100091C0C();
          swift_allocError();
          *v37 = v36;
          *(v37 + 8) = v35;
          *(v37 + 16) = 0;
          *(v37 + 24) = 0;
          *(v37 + 32) = 1;
          swift_willThrow();

          v38 = 0;
          v8 = v41;
LABEL_39:

          if (v38)
          {
          }

          swift_deallocPartialClassInstance();
          return v8;
        }
      }

      v45 = v8;
      v8 = v11;
      v18 = *(v14 + 16);
      v19 = *(v14 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v13;
      v21 = sub_100186A08(v18, v19);
      v22 = v13[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_47;
      }

      v9 = v20;
      if (v13[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v20 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_100091A9C();
          if ((v9 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_10008F4B8(v24, isUniquelyReferenced_nonNull_native);
        v25 = sub_100186A08(v18, v19);
        if ((v9 & 1) != (v26 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v21 = v25;
        if ((v9 & 1) == 0)
        {
LABEL_19:
          v13 = v47;
          v47[(v21 >> 6) + 8] |= 1 << v21;
          v27 = (v13[6] + 16 * v21);
          *v27 = v18;
          v27[1] = v19;
          *(v13[7] + 8 * v21) = v14;

          v28 = v13[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_48;
          }

          v13[2] = v30;
          goto LABEL_6;
        }
      }

      v13 = v47;
      *(v47[7] + 8 * v21) = v14;

LABEL_6:
      ++v12;
      v11 = v8;
      v9 = v42;
      if (v45 == v8)
      {
        v32 = 0;
        v8 = v41;
        *(v41 + 104) = v13;
        v47 = &_swiftEmptyDictionarySingleton;
        isUniquelyReferenced_nonNull_native = v40;
        while (1)
        {
          if (v44)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v34 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v32 >= *(v43 + 16))
            {
              goto LABEL_49;
            }

            v33 = *(v42 + 8 * v32 + 32);

            v34 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          v46 = v33;
          sub_10008BD78(&v47, &v46);
          if (v40)
          {
            break;
          }

          ++v32;
          if (v34 == v11)
          {
            v31 = v47;
            goto LABEL_42;
          }
        }

        v38 = 1;
        goto LABEL_39;
      }
    }
  }

  v31 = &_swiftEmptyDictionarySingleton;
  *(v8 + 104) = &_swiftEmptyDictionarySingleton;
LABEL_42:

  *(v8 + 112) = v31;
  sub_1000FA810();
  if (isUniquelyReferenced_nonNull_native)
  {
  }

  return v8;
}

uint64_t sub_10008BD78(uint64_t result, uint64_t *a2)
{
  v2 = result;
  isUniquelyReferenced_nonNull_native = *a2;
  v4 = *(*a2 + 40);
  if (v4 >> 62)
  {
LABEL_32:
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v34 = v4;
      v35 = v4 & 0xC000000000000001;
      v31 = v4 & 0xFFFFFFFFFFFFFF8;
      v32 = v2;
      v33 = v5;
      do
      {
        if (v35)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v6 >= *(v31 + 16))
          {
            goto LABEL_31;
          }

          v8 = *(v4 + 8 * v6 + 32);

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        if (*(*v2 + 16))
        {
          v10 = *(v8 + 16);
          v11 = *(v8 + 24);

          sub_100186A08(v10, v11);
          LOBYTE(v10) = v12;

          if (v10)
          {
            v29 = *(v8 + 16);
            v28 = *(v8 + 24);
            sub_100091C0C();
            swift_allocError();
            *v30 = v29;
            *(v30 + 8) = v28;
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            *(v30 + 32) = 1;
            swift_willThrow();
          }
        }

        v36 = v9;
        v13 = *(v8 + 16);
        v14 = *(v8 + 24);
        v4 = v8;

        v15 = isUniquelyReferenced_nonNull_native;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v37 = *v2;
        v18 = sub_100186A08(v13, v14);
        v19 = *(v16 + 16);
        v20 = (v17 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_29;
        }

        v2 = v17;
        if (*(v16 + 24) >= v21)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v15;
            if (v17)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_100091A9C();
            isUniquelyReferenced_nonNull_native = v15;
            if (v2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_10008F4B8(v21, isUniquelyReferenced_nonNull_native);
          v22 = sub_100186A08(v13, v14);
          if ((v2 & 1) != (v23 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v18 = v22;
          isUniquelyReferenced_nonNull_native = v15;
          if (v2)
          {
LABEL_4:

            v7 = v37;
            *(v37[7] + 8 * v18) = isUniquelyReferenced_nonNull_native;

            goto LABEL_5;
          }
        }

        v7 = v37;
        v37[(v18 >> 6) + 8] |= 1 << v18;
        v24 = (v37[6] + 16 * v18);
        *v24 = v13;
        v24[1] = v14;
        *(v37[7] + 8 * v18) = isUniquelyReferenced_nonNull_native;

        v25 = v37[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_30;
        }

        v37[2] = v27;
LABEL_5:
        v2 = v32;
        *v32 = v7;
        ++v6;
        v4 = v34;
      }

      while (v36 != v33);
    }
  }

  return result;
}

uint64_t sub_10008C06C()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10008C120()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_10008C19C()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_10008C21C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_10008C294(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v2 == v3) & ~v4;
  }

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10008C2EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v10 = *(v8 + 16) == a1 && *(v8 + 24) == a2;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v8;
      }

      ++v7;
      if (v9 == i)
      {
        return 0;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v8 = *(v5 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t sub_10008C3F8()
{

  return v0;
}

uint64_t sub_10008C494()
{
  sub_10008C3F8();

  return swift_deallocClassInstance();
}

uint64_t sub_10008C4EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10008C570()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10008C5D4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

Swift::Int sub_10008C5E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10008C640()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10008C688(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

BOOL sub_10008C730(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        return v4 == v6;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * v5 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = (*(*v7 + 80))(a1);

    v5 = v6 + 1;
  }

  while ((v8 & 1) != 0);
  return v4 == v6;
}

BOOL sub_10008C858(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        return v4 != v6;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * v5 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = (*(*v7 + 80))(a1);

    v5 = v6 + 1;
  }

  while ((v8 & 1) == 0);
  return v4 != v6;
}

uint64_t sub_10008C980(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_6:
    v6 = (*(*v5 + 80))(a1);

    return (v6 & 1) == 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008CA78(uint64_t a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 16);
  swift_beginAccess();
  sub_10003F3D8(a1 + 48, v12);
  v6 = *(*(a1 + 344) + 104);
  if (*(v6 + 16) && (v7 = sub_100186A08(v4, v3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    v10 = sub_10025A174(v12, v9, v5);
  }

  else
  {
    v10 = 0;
  }

  sub_10003F434(v12);
  return v10 & 1;
}

uint64_t sub_10008CB40()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10008CBB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  sub_10003F3D8(a1 + 48, v6);
  LOBYTE(a1) = sub_100259F84(v6, v4, v3);
  sub_10003F434(v6);
  return a1 & 1;
}

uint64_t getEnumTagSinglePayload for BuiltInCondition.Operation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BuiltInCondition.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10008CE88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008CED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10008CF9C()
{
  result = qword_10035AA78;
  if (!qword_10035AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AA78);
  }

  return result;
}

unint64_t sub_10008D024()
{
  result = qword_10035AA90;
  if (!qword_10035AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AA90);
  }

  return result;
}

unint64_t sub_10008D07C()
{
  result = qword_10035AA98;
  if (!qword_10035AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AA98);
  }

  return result;
}

unint64_t sub_10008D104()
{
  result = qword_10035AAB0;
  if (!qword_10035AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AAB0);
  }

  return result;
}

unint64_t sub_10008D18C()
{
  result = qword_10035AAC8;
  if (!qword_10035AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AAC8);
  }

  return result;
}

unint64_t sub_10008D214()
{
  result = qword_10035AAE0;
  if (!qword_10035AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AAE0);
  }

  return result;
}

unint64_t sub_10008D29C()
{
  result = qword_10035AAF8;
  if (!qword_10035AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AAF8);
  }

  return result;
}

unint64_t sub_10008D324()
{
  result = qword_10035AB10;
  if (!qword_10035AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AB10);
  }

  return result;
}

uint64_t sub_10008D408(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008D44C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB80);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008D6DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10036A050);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_10008D95C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10036A0C0);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008DBEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10036A080);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 72 * v20;
      if (v35)
      {
        v43 = *(v22 + 16);
        v42 = *(v22 + 24);
        v41 = *(v22 + 32);
        v39 = *v22;
        v40 = *(v22 + 40);
        v37 = *(v22 + 8);
        v38 = *(v22 + 48);
        v36 = *(v22 + 56);
        v23 = *(v22 + 64);
      }

      else
      {
        v24 = *(v22 + 64);
        v26 = *(v22 + 32);
        v25 = *(v22 + 48);
        v45 = *(v22 + 16);
        v46 = v26;
        v47 = v25;
        v48 = v24;
        v44 = *v22;
        v42 = *(&v45 + 1);
        v43 = v45;
        v40 = *(&v26 + 1);
        v41 = v26;
        v23 = v24;
        v38 = v25;
        v39 = v44;
        v36 = *(&v25 + 1);
        v37 = *(&v44 + 1);
        sub_1000823C8(&v44, v49);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 72 * v15;
      *v16 = v39;
      *(v16 + 8) = v37;
      *(v16 + 16) = v43;
      *(v16 + 24) = v42;
      *(v16 + 32) = v41;
      *(v16 + 40) = v40;
      *(v16 + 48) = v38;
      *(v16 + 56) = v36;
      *(v16 + 64) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10008DF38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&unk_10036A0D0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008E1DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB78);
  v32 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v33 = *v22;
      v23 = *(v22 + 8);
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v33;
      *(v16 + 8) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008E48C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB70);
  v32 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008E734(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB68);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1000456C8(v24, v34);
      }

      else
      {
        sub_100048F80(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000456C8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10008E9EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&unk_10036A030);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008EC84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10036A020);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_1000456C8(v21, v30);
      }

      else
      {
        sub_100048F80(v21, v30);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_1000456C8(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10008EF18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&unk_10036A010);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v38 = *v22;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v37 = *(v22 + 25);
      v25 = *(v22 + 32);
      if ((v36 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v38;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      *(v16 + 25) = v37;
      *(v16 + 32) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008F1E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB58);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *v25;
      v38 = *(v25 + 8);
      v37 = *(v25 + 24);
      if ((v36 & 1) == 0)
      {

        sub_10000F480(v26, v38);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v26;
      *(v17 + 8) = v38;
      *(v17 + 24) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008F4B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB30);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008F760(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB50);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008FA04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10036A090);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10008FC68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB38);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 72 * v21;
      if (v38)
      {
        v39 = *(v25 + 8);
        v41 = *v25;
        v42 = *(v25 + 16);
        v40 = *(v25 + 24);
        v45 = *(v25 + 48);
        v26 = *(v25 + 64);
        v43 = *(v25 + 40);
        v44 = *(v25 + 56);
      }

      else
      {
        v26 = *(v25 + 64);
        v27 = *(v25 + 16);
        v28 = *(v25 + 48);
        *&v48[16] = *(v25 + 32);
        v49 = v28;
        *v48 = v27;
        v47 = *v25;
        v50 = v26;
        v44 = *(&v28 + 1);
        v45 = v28;
        v42 = v27;
        v43 = *&v48[24];
        v40 = *&v48[8];
        v39 = *(&v47 + 1);
        v41 = v47;

        sub_100092850(&v47, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v41;
      *(v17 + 8) = v39;
      *(v17 + 16) = v42;
      *(v17 + 24) = v40;
      *(v17 + 40) = v43;
      *(v17 + 48) = v45;
      *(v17 + 56) = v44;
      *(v17 + 64) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10008FFCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB40);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100090274(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000040A8(&qword_10035AB60);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1000456C8((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_100048F80(*(v9 + 56) + 32 * v23, v44);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1000456C8(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100090614(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040A8(&qword_10035AB48);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1000908BC()
{
  v1 = v0;
  sub_1000040A8(&qword_10035AB80);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100090A20()
{
  v1 = v0;
  sub_1000040A8(&qword_10036A050);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100090B6C()
{
  v1 = v0;
  sub_1000040A8(&qword_10036A0C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100090CC8()
{
  v1 = v0;
  sub_1000040A8(&qword_10036A080);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        v19 = *(v2 + 56) + 72 * v17;
        v21 = *(v19 + 16);
        v20 = *(v19 + 32);
        v22 = *(v19 + 48);
        v32 = *(v19 + 64);
        v31 = v22;
        v28 = *v19;
        v29 = v21;
        v30 = v20;
        *(*(v4 + 48) + v17) = v18;
        v23 = *(v4 + 56) + 72 * v17;
        *v23 = v28;
        v24 = v29;
        v25 = v30;
        v26 = v31;
        *(v23 + 64) = v32;
        *(v23 + 32) = v25;
        *(v23 + 48) = v26;
        *(v23 + 16) = v24;
        result = sub_1000823C8(&v28, v27);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100090E7C()
{
  v1 = v0;
  sub_1000040A8(&unk_10036A0D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100090FFC()
{
  v1 = v0;
  sub_1000040A8(&qword_10035AB78);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100091174()
{
  v1 = v0;
  sub_1000040A8(&qword_10035AB70);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000912E4()
{
  v1 = v0;
  sub_1000040A8(&qword_10035AB68);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100048F80(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000456C8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_100091488()
{
  v1 = v0;
  sub_1000040A8(&unk_10036A030);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000915EC()
{
  v1 = v0;
  sub_1000040A8(&qword_10036A020);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_100048F80(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1000456C8(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100091768()
{
  v1 = v0;
  sub_1000040A8(&unk_10036A010);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 25);
        v22 = *(v18 + 32);
        v23 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 40 * v17;
        *v24 = v23;
        *(v24 + 16) = v19;
        *(v24 + 24) = v20;
        *(v24 + 25) = v21;
        *(v24 + 32) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000918FC()
{
  v1 = v0;
  sub_1000040A8(&qword_10035AB58);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 24);
        v25 = (*(v4 + 48) + v18);
        v27 = *(v22 + 8);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v27;
        *(v26 + 24) = v24;

        result = sub_10000F480(v23, v27);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100091A9C()
{
  v1 = v0;
  sub_1000040A8(&qword_10035AB30);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_100091C0C()
{
  result = qword_10035AB28;
  if (!qword_10035AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AB28);
  }

  return result;
}

id sub_100091C60()
{
  v1 = v0;
  sub_1000040A8(&qword_10035AB50);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100091DCC()
{
  v1 = v0;
  sub_1000040A8(&qword_10036A090);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100091F18()
{
  v1 = v0;
  sub_1000040A8(&qword_10035AB38);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;

        result = sub_100092850(&v32, v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000920DC()
{
  v1 = v0;
  sub_1000040A8(&qword_10035AB40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10009224C()
{
  v1 = v0;
  v26 = type metadata accessor for CodingUserInfoKey();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040A8(&qword_10035AB60);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_100048F80(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1000456C8(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1000924D0(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_100187294(0, v4, 0);
      v5 = 0;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v35 = v3 + 32;
      v7 = v2;
      v37 = v2 >> 62;
      v38 = v2 & 0xC000000000000001;
      v8 = v3 + 32;
      v36 = v4;
      do
      {
        v9 = (v8 + 16 * v5);
        v11 = *v9;
        v10 = v9[1];
        if (*v9 == 45 && v10 == 0xE100000000000000)
        {
          v13 = 0;
          v14 = v5;
        }

        else if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v13 = 0;
          v14 = v5;
        }

        else
        {
          if (v37)
          {
            v2 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v2 = *(v6 + 16);
          }

          if (v2)
          {
            v15 = 0;
            do
            {
              if (v38)
              {
                v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v16 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
                  goto LABEL_51;
                }
              }

              else
              {
                if (v15 >= *(v6 + 16))
                {
                  goto LABEL_52;
                }

                v14 = *(v7 + 8 * v15 + 32);

                v16 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
LABEL_51:
                  __break(1u);
LABEL_52:
                  __break(1u);
LABEL_53:
                  v21 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_38;
                }
              }

              v17 = *(v14 + 16) == v11 && *(v14 + 24) == v10;
              if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                v13 = 1;
                goto LABEL_30;
              }

              ++v15;
            }

            while (v16 != v2);
          }

          v13 = 0;
          v14 = v5;
LABEL_30:
          v8 = v35;
          v4 = v36;
        }

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_100187294((v18 > 1), v19 + 1, 1);
        }

        ++v5;
        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v14;
        *(v20 + 40) = v13;
      }

      while (v5 != v4);
    }

    return _swiftEmptyArrayStorage;
  }

  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:
  if (!v21)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100187294(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v23 = 0;
      do
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          v28 = v24;
          sub_100187294((v25 > 1), v26 + 1, 1);
          v24 = v28;
        }

        ++v23;
        _swiftEmptyArrayStorage[2] = v26 + 1;
        v27 = &_swiftEmptyArrayStorage[2 * v26];
        v27[4] = v24;
        *(v27 + 40) = 1;
      }

      while (v21 != v23);
    }

    else
    {
      v29 = (v2 + 32);
      v30 = _swiftEmptyArrayStorage[2];
      v31 = 2 * v30;
      do
      {
        v32 = *v29;
        v33 = _swiftEmptyArrayStorage[3];

        if (v30 >= v33 >> 1)
        {
          sub_100187294((v33 > 1), v30 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v30 + 1;
        v34 = &_swiftEmptyArrayStorage[v31];
        v34[4] = v32;
        *(v34 + 40) = 1;
        v31 += 2;
        ++v29;
        ++v30;
        --v21;
      }

      while (v21);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

unint64_t sub_100092908()
{
  result = qword_10035AB98;
  if (!qword_10035AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AB98);
  }

  return result;
}

uint64_t sub_10009298C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000929E4()
{
  result = qword_10035ABB0;
  if (!qword_10035ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035ABB0);
  }

  return result;
}

uint64_t sub_100092AB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = 1;
    if (sub_100071A54(1, *(v3 + 200)))
    {
      type metadata accessor for BannerAppearanceModel();
      sub_100092BD4(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
      v4 = EnvironmentObject.init()();
      v6 = v5;
      type metadata accessor for UIMetrics();
      sub_100092BD4(&qword_100354D40, type metadata accessor for UIMetrics);
      result = EnvironmentObject.init()();
    }

    else
    {
      v6 = 0;
      result = 0;
      v8 = 0;
    }

    *a1 = v4;
    a1[1] = v6;
    a1[2] = result;
    a1[3] = v8;
  }

  else
  {
    type metadata accessor for BannerAppearanceModel();
    sub_100092BD4(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100092BD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100092C2C()
{
  result = qword_10035ABB8;
  if (!qword_10035ABB8)
  {
    sub_100008CF0(&qword_10035ABC0);
    sub_100092CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035ABB8);
  }

  return result;
}

unint64_t sub_100092CB0()
{
  result = qword_10035ABC8;
  if (!qword_10035ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035ABC8);
  }

  return result;
}

__n64 ConnectionAssistantCamera.projectUV(point:)(float32x4_t a1)
{
  v2 = ConnectionAssistantCamera.projectNormalized(point:)(a1);
  if ((v4 & 1) == 0)
  {
    result.n64_u32[0] = v2;
    if (*v1 && (v5 = v1[1]) != 0)
    {
      v6 = *v1 / v5;
      if (v6 >= 1.0)
      {
        result.n64_f32[0] = v6 * *&v2;
      }

      v7 = *(&v2 + 1);
      if (v6 < 1.0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = *(&v2 + 1);
    }

    v6 = 1.0;
LABEL_10:
    result.n64_f32[1] = v7 / v6;
  }

  return result;
}

float ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 && a2)
  {
    v3 = a3;
    if (a1 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = a1;
    }

    return ((1.0 / v4) * v3) + ((1.0 / v4) * v3);
  }

  else
  {
    v5 = a3;
    return v5 + v5;
  }
}

__n64 ConnectionAssistantCamera.Viewport.aspectFillScale.getter(uint64_t a1, uint64_t a2)
{
  v2 = 1.0;
  result.n64_u32[0] = 1.0;
  if (a1)
  {
    result.n64_u32[0] = 1.0;
    if (a2)
    {
      v4 = a1 / a2;
      v2 = fminf(v4, 1.0);
      result.n64_f32[0] = fmaxf(v4, 1.0);
    }
  }

  result.n64_f32[1] = 1.0 / v2;
  return result;
}

float ConnectionAssistantCamera.Viewport.aspect.getter(uint64_t a1, uint64_t a2)
{
  result = 1.0;
  if (a1)
  {
    if (a2)
    {
      return a1 / a2;
    }
  }

  return result;
}

double ConnectionAssistantCamera.Viewport.mtlViewport.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  result = 0.0;
  *(a3 + 32) = xmmword_10027F380;
  return result;
}

unint64_t ConnectionAssistantCamera.projectNormalized(point:)(float32x4_t a1)
{
  v2 = vaddq_f32(v1[15], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1[12], a1.f32[0]), v1[13], *a1.f32, 1), v1[14], a1, 2));
  v3 = vmulq_f32(v2, xmmword_10027F390);
  if ((v3.f32[2] + vaddv_f32(*v3.f32)) < v1[2].f32[1])
  {
    return 0;
  }

  v5 = vaddq_f32(v1[19], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1[16], v2.f32[0]), v1[17], *v2.f32, 1), v1[18], v2, 2));
  return vdivq_f32(v5, vdupq_laneq_s32(v5, 3)).u64[0];
}

double ConnectionAssistantCamera.projectToViewport(point:)(float32x4_t a1)
{
  v2 = ConnectionAssistantCamera.projectNormalized(point:)(a1);
  result = 0.0;
  if ((v4 & 1) == 0)
  {
    v5.f32[0] = *&v2 + 1.0;
    v5.f32[1] = 1.0 - *(&v2 + 1);
    *&result = *&vdivq_f64(vcvtq_f64_f32(vmul_f32(vmul_f32(v5, vcvt_f32_f64(vcvtq_f64_s64(*v1))), 0x3F0000003F000000)), vdupq_lane_s64(v1[1].i64[0], 0));
  }

  return result;
}

uint64_t sub_100093084(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s8SOSBuddy25ConnectionAssistantCameraV23__derived_struct_equalsySbAC_ACtFZ_0(v4, __dst) & 1;
}

uint64_t _s8SOSBuddy25ConnectionAssistantCameraV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (*(a1 + 8) == *(a2 + 8) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && (v3 = vmovn_s32(vceqq_f32(*(a1 + 48), *(a2 + 48))), (v3.i8[0] & 1) != 0) && (v3.i16[1] & v3.i16[2] & 1) != 0 && (v4 = vmovn_s32(vceqq_f32(*(a1 + 64), *(a2 + 64))), (v4.i8[0] & 1) != 0) && (v4.i16[1] & v4.i16[2] & 1) != 0 && (v5 = vmovn_s32(vceqq_f32(*(a1 + 80), *(a2 + 80))), (v5.i8[0] & 1) != 0) && (v5.i16[1] & v5.i16[2] & 1) != 0 && (v6 = vmovn_s32(vceqq_f32(*(a1 + 96), *(a2 + 96))), (v6.i8[0] & 1) != 0) && (v6.i16[1] & v6.i16[2] & 1) != 0 && (v7 = vmovn_s32(vceqq_f32(*(a1 + 112), *(a2 + 112))), (v7.i8[0] & 1) != 0) && (v7.i16[1] & v7.i16[2] & 1) != 0 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 144), *(a2 + 144)), vceqq_f32(*(a1 + 128), *(a2 + 128))), vandq_s8(vceqq_f32(*(a1 + 160), *(a2 + 160)), vceqq_f32(*(a1 + 176), *(a2 + 176))))) & 0x80000000) != 0 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 208), *(a2 + 208)), vceqq_f32(*(a1 + 192), *(a2 + 192))), vandq_s8(vceqq_f32(*(a1 + 224), *(a2 + 224)), vceqq_f32(*(a1 + 240), *(a2 + 240))))) & 0x80000000) != 0 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 272), *(a2 + 272)), vceqq_f32(*(a1 + 256), *(a2 + 256))), vandq_s8(vceqq_f32(*(a1 + 288), *(a2 + 288)), vceqq_f32(*(a1 + 304), *(a2 + 304))))) & 0x80000000) != 0))
  {
    return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 336), *(a2 + 336)), vceqq_f32(*(a1 + 320), *(a2 + 320))), vandq_s8(vceqq_f32(*(a1 + 352), *(a2 + 352)), vceqq_f32(*(a1 + 368), *(a2 + 368))))) >> 31;
  }

  else
  {
    return 0;
  }
}

uint64_t _s8SOSBuddy25ConnectionAssistantCameraV8ViewportV4size5scaleAESo6CGSizeV_12CoreGraphics7CGFloatVtcfC_0(double a1, double a2, double a3)
{
  v3 = a1 * a3;
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = a2 * a3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 9.22337204e18)
  {
    return v3 & ~(v3 >> 63);
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_1000933B0(int32x4_t a1, float a2)
{
  v2 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
  v3 = vmlaq_f32(vmulq_f32(a1, xmmword_10027F3A0), xmmword_10027F390, v2);
  v4 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v5 = vmulq_f32(v3, v3);
  v6 = sqrtf(v5.f32[1] + (v5.f32[2] + v5.f32[0]));
  if (v6 >= 0.00000011921)
  {
    v25 = v4;
  }

  else
  {
    v7 = vmlaq_f32(vmulq_f32(a1, xmmword_100278460), xmmword_100278470, v2);
    v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v9 = vmulq_f32(v7, v7);
    v9.f32[0] = sqrtf(v9.f32[1] + (v9.f32[2] + v9.f32[0]));
    v25 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(0x3400000034000000uLL, v9), 0), v4, v8);
    if (v9.f32[0] >= 0.00000011921)
    {
      v6 = v9.f32[0];
    }
  }

  if (v6 == 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = v6;
  }

  v11 = __sincosf_stret(a2 * 0.5);
  v12 = vmulq_n_f32(a1, v11.__sinval);
  v13 = v12;
  v13.i32[3] = LODWORD(v11.__cosval);
  v14 = vmulq_f32(v13, xmmword_100278430);
  v15 = vnegq_f32(v14);
  v16 = vtrn2q_s32(v14, vtrn1q_s32(v14, v15));
  v17 = vmulq_n_f32(vextq_s8(v14, v15, 8uLL), *&v25.i32[1] / v10);
  v18 = vrev64q_s32(v14);
  v18.i32[0] = v15.i32[1];
  v18.i32[3] = v15.i32[2];
  v19 = vmlaq_n_f32(vmlaq_n_f32(v17, vextq_s8(v16, v16, 8uLL), *v25.i32 / v10), v18, *&v25.i32[2] / v10);
  v20 = vnegq_f32(v19);
  v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
  v22 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v19, v20, 8uLL), *v12.f32, 1), vextq_s8(v21, v21, 8uLL), v12.f32[0]);
  v23 = vrev64q_s32(v19);
  v23.i32[0] = v20.i32[1];
  v23.i32[3] = v20.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v19, v13, 3), v23, v12, 2), v22).u64[0];
  return result;
}

float32x4_t sub_100093528@<Q0>(float *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, float a7@<S2>, float32x2_t a8@<D3>, float a9@<S4>, double a10@<D5>)
{
  if (a2)
  {
    v18 = a3 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v18)
  {
    v20 = 0.17633;
  }

  else
  {
    v21 = a2 / a3;
    if (v21 < 1.0)
    {
      v22 = atanf(0.17633 / v21);
      v23 = v22 + v22;
      v24 = 0.34907;
      if ((LODWORD(v23) & 0x7FFFFF) != 0)
      {
        v25 = 0.34907;
      }

      else
      {
        v25 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v26 = v23;
      }

      else
      {
        v26 = v25;
      }

      *&v27 = v26;
      if (v26 < 0.34907)
      {
        goto LABEL_28;
      }

LABEL_27:
      *&v27 = v24;
      goto LABEL_28;
    }

    v20 = v21 * 0.17633;
  }

  v28 = atanf(v20);
  v29 = v28 + v28;
  v26 = 0.34907;
  if ((LODWORD(v29) & 0x7FFFFF) != 0)
  {
    v30 = 0.34907;
  }

  else
  {
    v30 = v29;
  }

  if ((~LODWORD(v29) & 0x7F800000) != 0)
  {
    v24 = v29;
  }

  else
  {
    v24 = v30;
  }

  *&v27 = 0.34907;
  if (v24 <= 0.34907)
  {
    goto LABEL_27;
  }

LABEL_28:
  v77 = *&v27;
  v31 = a1[17];
  *v32.i64 = ConnectionAssistantEarth.direction(for:)(a5, a6);
  v82 = v32;
  v83 = *a1;
  v33 = vmulq_f32(v32, v32);
  v34 = v32;
  *&v35 = v33.f32[2] + vaddv_f32(*v33.f32);
  *v32.f32 = vrsqrte_f32(v35);
  *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v35, vmul_f32(*v32.f32, *v32.f32)));
  v84 = vmulq_n_f32(v34, vmul_f32(*v32.f32, vrsqrts_f32(v35, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
  *v36.i64 = sub_1000933B0(v84, a9);
  if (v19)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = a2 / a3;
  }

  v38 = v36;
  v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL), vnegq_f32(v36)), v84, vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL));
  v40 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
  v41 = vmulq_f32(v39, v39);
  *&v42 = v41.f32[1] + (v41.f32[2] + v41.f32[0]);
  *v41.f32 = vrsqrte_f32(v42);
  *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
  v43 = vmulq_n_f32(v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
  v81 = v43;
  v80 = v38;
  v43.i32[1] = v38.i32[1];
  v71 = vsub_f32(0, *v43.f32);
  v41.i64[0] = __PAIR64__(v71.u32[0], v38.u32[0]);
  v41.f32[2] = 0.0 - v84.f32[0];
  v41.i32[3] = 0;
  v72 = v41;
  v70 = v38.u32[1];
  v85 = v38.u32[2];
  v44 = tanf(v24 * 0.5);
  v45 = (v44 + v44) * a7;
  v47 = (LODWORD(v45) & 0x7FFFFF) != 0 && (~LODWORD(v45) & 0x7F800000) == 0 || v45 == 0.0;
  v48 = (v31 + v31) / v45;
  if (v47)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = v48;
  }

  v69 = v49;
  v50 = vmuls_lane_f32(v49, v82, 2);
  v51 = vsub_f32(0, vzip1_s32(*&vextq_s8(v80, v80, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
  v73 = v51.u32[1];
  v52 = v85;
  v52.i32[1] = v51.i32[1];
  v52.f32[2] = 0.0 - v84.f32[2];
  v86 = v52;
  v53 = (v31 + v31) * vaddv_f32(vmul_f32(v51, a8));
  *&v74 = v53 + (*(&v83 + 2) - v50);
  v54 = tanf(v26 * 0.5);
  LODWORD(v55) = 0;
  *(&v55 + 1) = 1.0 / v54;
  v75 = v55;
  v76 = COERCE_UNSIGNED_INT((1.0 / v54) / v37);
  v56 = tanf(v77 * 0.5);
  v57 = vsub_f32(0, __PAIR64__(v81.u32[1], v80.u32[0]));
  v58 = v70;
  v58.i32[1] = v57.i32[1];
  v59 = -1.0 / v56;
  *&v60 = __PAIR64__(v57.u32[1], v71.u32[0]);
  v58.f32[2] = 0.0 - v84.f32[1];
  v61 = vmul_n_f32(vadd_f32(vmul_f32(vrev64_s32(a8), v71), vmul_f32(v57, a8)), v31 + v31);
  *&v62 = vadd_f32(v61, vsub_f32(*&v83, vmul_n_f32(*v82.f32, v69)));
  result = vaddq_f32(vmlaq_f32(vmlaq_f32(v72, 0, v58), 0, v86), 0);
  v64 = vmulq_f32(v72, 0);
  v65 = vaddq_f32(vmlaq_f32(vaddq_f32(v58, v64), 0, v86), 0);
  v66 = vaddq_f32(vaddq_f32(v86, vmlaq_f32(v64, 0, v58)), 0);
  *(&v60 + 1) = v73;
  *(&v62 + 1) = v74;
  *&v67 = vadd_f32(*&v83, v61);
  *(&v67 + 2) = *(&v83 + 2) + v53;
  HIDWORD(v67) = 0;
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = a10;
  *(a4 + 24) = v24;
  *(a4 + 28) = v26;
  *(a4 + 32) = v59;
  *(a4 + 36) = 0x42C800003A83126FLL;
  *(a4 + 48) = v62;
  *(a4 + 64) = v67;
  v68 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v72, 0.0 - *&v62), v58, 0.0 - *(&v62 + 1)), v86, 0.0 - *&v74), xmmword_1002784A0);
  *(a4 + 80) = v84;
  *(a4 + 96) = v80;
  *(a4 + 112) = v60;
  *(a4 + 128) = v72;
  *(a4 + 144) = v58;
  *(a4 + 160) = v86;
  *(a4 + 176) = xmmword_1002784A0;
  *(a4 + 192) = result;
  *(a4 + 208) = v65;
  *(a4 + 224) = v66;
  *(a4 + 240) = v68;
  *(a4 + 256) = v76;
  *(a4 + 272) = v75;
  *(a4 + 288) = xmmword_10027F3B0;
  *(a4 + 304) = xmmword_10027F3C0;
  *(a4 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, result.f32[0]), v75, *result.f32, 1), xmmword_10027F3B0, result, 2), xmmword_10027F3C0, result, 3);
  *(a4 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v65.f32[0]), v75, *v65.f32, 1), xmmword_10027F3B0, v65, 2), xmmword_10027F3C0, v65, 3);
  *(a4 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v66.f32[0]), v75, *v66.f32, 1), xmmword_10027F3B0, v66, 2), xmmword_10027F3C0, v66, 3);
  *(a4 + 368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v68.f32[0]), v75, *v68.f32, 1), xmmword_10027F3B0, v68, 2), xmmword_10027F3C0, v68, 3);
  return result;
}

uint64_t sub_100093A30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 384))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100093A50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 384) = v3;
  return result;
}

NSString sub_100093B00()
{
  result = String._bridgeToObjectiveC()();
  qword_100381C48 = result;
  return result;
}

NSString sub_100093B38()
{
  result = String._bridgeToObjectiveC()();
  qword_100381C50 = result;
  return result;
}

NSString sub_100093B70()
{
  result = String._bridgeToObjectiveC()();
  qword_100381C58 = result;
  return result;
}

NSString sub_100093BA4()
{
  result = String._bridgeToObjectiveC()();
  qword_100381C60 = result;
  return result;
}

uint64_t sub_100093C08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
    if (v4)
    {
      if (*(v4 + 16))
      {
      }
    }

    swift_getKeyPath();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;

    sub_1000040A8(&qword_10035ABD0);
    sub_1000040A8(&qword_10035ABD8);
    sub_10009451C();
    sub_100094850(&qword_10035ABE8, &qword_10035ABD8, &unk_10027F560, sub_100094580);
    return ForEach<>.init(_:id:content:)();
  }

  else
  {
    type metadata accessor for TryOutModel();
    sub_100094438();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100093D84@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(*result + 16);
  if (v5 == 4)
  {
    type metadata accessor for TryOutTranscriptFooterItem(0);
    if (swift_dynamicCastClass())
    {
      swift_retain_n();
    }

    sub_1000040A8(&qword_10035AC08);
    sub_1000040A8(&qword_10035AC58);
    sub_100094638();
    sub_100094850(&qword_10035AC50, &qword_10035AC58, &unk_10027F590, sub_1000948CC);
    _ConditionalContent<>.init(storage:)();

    v11 = v19;
    v12 = v20;
    v13 = v21;
    if (v23)
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 | v22;
  }

  else
  {
    if (v5 == 2)
    {
      type metadata accessor for TryOutTranscriptMessageItem(0);
      v8 = swift_dynamicCastClass();
      v18 = a4;
      if (v8)
      {
        v9 = swift_allocObject();
        v9[2] = a2;
        v9[3] = a3;
        v9[4] = v8;

        swift_retain_n();
        v10 = sub_100094A50;
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      v17 = v10;
      sub_100094920(v8, v10, v9, 0);
      sub_1000040A8(&qword_10035AC18);
      sub_1000040A8(&qword_10035AC30);
      sub_100094850(&qword_10035AC10, &qword_10035AC18, &unk_10027F578, sub_10009471C);
      sub_100094850(&qword_10035AC28, &qword_10035AC30, &unk_10027F580, sub_100094770);
      _ConditionalContent<>.init(storage:)();
      sub_100094984(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v22);
      sub_1000040A8(&qword_10035AC08);
      sub_1000040A8(&qword_10035AC58);
      sub_100094638();
      sub_100094850(&qword_10035AC50, &qword_10035AC58, &unk_10027F590, sub_1000948CC);
      _ConditionalContent<>.init(storage:)();
      sub_100094990(v8, v17, v9, 0);
      sub_100094A04(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v22);
      result = sub_100094990(v8, v17, v9, 0);
    }

    else
    {
      if (v5 != 1)
      {
        v13 = 0;
        v11 = 0uLL;
        v15 = -256;
        v12 = 0uLL;
        goto LABEL_22;
      }

      type metadata accessor for TryOutTranscriptStatusItem(0);
      v18 = a4;
      if (swift_dynamicCastClass())
      {
        swift_retain_n();
      }

      sub_1000040A8(&qword_10035AC18);
      sub_1000040A8(&qword_10035AC30);
      sub_100094850(&qword_10035AC10, &qword_10035AC18, &unk_10027F578, sub_10009471C);
      sub_100094850(&qword_10035AC28, &qword_10035AC30, &unk_10027F580, sub_100094770);
      _ConditionalContent<>.init(storage:)();
      sub_100094984(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v22);
      sub_1000040A8(&qword_10035AC08);
      sub_1000040A8(&qword_10035AC58);
      sub_100094638();
      sub_100094850(&qword_10035AC50, &qword_10035AC58, &unk_10027F590, sub_1000948CC);
      _ConditionalContent<>.init(storage:)();

      sub_100094A04(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v22);
    }

    v11 = v19;
    v12 = v20;
    v13 = v21;
    if (v23)
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    v15 = v16 | v22;
    a4 = v18;
  }

LABEL_22:
  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 32) = v13;
  *(a4 + 40) = v15;
  return result;
}

uint64_t sub_10009437C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
    if (v3 && *(v3 + 16))
    {

      sub_100041930(a3);
    }
  }

  else
  {
    type metadata accessor for TryOutModel();
    sub_100094438();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_100094438()
{
  result = qword_100357990;
  if (!qword_100357990)
  {
    type metadata accessor for TryOutModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357990);
  }

  return result;
}

uint64_t sub_100094490@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000944DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10009451C()
{
  result = qword_10035ABE0;
  if (!qword_10035ABE0)
  {
    sub_100008CF0(&qword_10035ABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035ABE0);
  }

  return result;
}

unint64_t sub_100094580()
{
  result = qword_10035ABF0;
  if (!qword_10035ABF0)
  {
    sub_100008CF0(&qword_10035ABF8);
    sub_100094638();
    sub_100094850(&qword_10035AC50, &qword_10035AC58, &unk_10027F590, sub_1000948CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035ABF0);
  }

  return result;
}

unint64_t sub_100094638()
{
  result = qword_10035AC00;
  if (!qword_10035AC00)
  {
    sub_100008CF0(&qword_10035AC08);
    sub_100094850(&qword_10035AC10, &qword_10035AC18, &unk_10027F578, sub_10009471C);
    sub_100094850(&qword_10035AC28, &qword_10035AC30, &unk_10027F580, sub_100094770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC00);
  }

  return result;
}

unint64_t sub_10009471C()
{
  result = qword_10035AC20;
  if (!qword_10035AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC20);
  }

  return result;
}

unint64_t sub_100094770()
{
  result = qword_10035AC38;
  if (!qword_10035AC38)
  {
    sub_100008CF0(&qword_10035AC40);
    sub_1000947FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC38);
  }

  return result;
}

unint64_t sub_1000947FC()
{
  result = qword_10035AC48;
  if (!qword_10035AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC48);
  }

  return result;
}

uint64_t sub_100094850(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000948CC()
{
  result = qword_10035AC60;
  if (!qword_10035AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC60);
  }

  return result;
}

uint64_t sub_100094920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    sub_10001D9B4(a2);

    return sub_10001D9B4(a4);
  }

  return result;
}

uint64_t sub_100094984(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_100094920(result, a2, a3, a4);
  }

  else
  {
  }
}

uint64_t sub_100094990(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    sub_1000949F4(a2);

    return sub_1000949F4(a4);
  }

  return result;
}

uint64_t sub_1000949F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100094A04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_100094990(result, a2, a3, a4);
  }

  else
  {
  }
}

uint64_t sub_100094A10()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100094A60()
{
  result = qword_10035AC68;
  if (!qword_10035AC68)
  {
    sub_100008CF0(&qword_10035AC70);
    sub_100094850(&qword_10035ABE8, &qword_10035ABD8, &unk_10027F560, sub_100094580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC68);
  }

  return result;
}

unint64_t sub_100094B24()
{
  result = qword_10035AC78;
  if (!qword_10035AC78)
  {
    sub_100008CF0(&qword_10035AC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC78);
  }

  return result;
}

unint64_t sub_100094B9C()
{
  result = qword_10035AC88;
  if (!qword_10035AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC88);
  }

  return result;
}

uint64_t sub_100094BF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100094C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100094CA0()
{
  Hasher._combine(_:)(*v0);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v1 = *(v0 + 11);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100094D94()
{
  Hasher.init(_seed:)();
  sub_100094CA0();
  return Hasher._finalize()();
}

Swift::Int sub_100094DD8()
{
  Hasher.init(_seed:)();
  sub_100094CA0();
  return Hasher._finalize()();
}

uint64_t sub_100094E20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_100094F2C(v9, v10) & 1;
}

unint64_t sub_100094E80()
{
  result = qword_10035AC90;
  if (!qword_10035AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC90);
  }

  return result;
}

unint64_t sub_100094ED8()
{
  result = qword_10035AC98;
  if (!qword_10035AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AC98);
  }

  return result;
}

uint64_t sub_100094F2C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[8];
  v7 = a2[8];
  if (v6)
  {
    if (!v7 || (a1[7] != a2[7] || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (a1[9] == a2[9] && a1[10] == a2[10] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = a1[11];
    v10 = a2[11];
    if (v9)
    {
      if (v10)
      {
        sub_100095090();
        v11 = v10;
        v12 = v9;
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_100095090()
{
  result = qword_10035ACA0;
  if (!qword_10035ACA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10035ACA0);
  }

  return result;
}

Swift::Int sub_1000950DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009521C(uint64_t a1)
{
  *(v1 + 24) = 2;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 89) = 151126530;
  *(v1 + 93) = 2;
  v3 = OBJC_IVAR____TtC8SOSBuddy23AnalyticsStateRetention__data;
  v4 = _s8SOSBuddy4DataVMa_0(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + 16) = a1;
  return v1;
}

void sub_1000952C4()
{
  v1 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  sub_1001DDADC(&v7 - v2);
  v4 = type metadata accessor for TransmissionProgress(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  sub_100008FA0(v3, &qword_100354FD8);
  v6 = *(v0 + 91);
  if (v6 == 2 || (((v5 != 1) ^ v6) & 1) != 0)
  {
    *(v0 + 91) = v5 != 1;
    sub_1000956CC();
  }
}

void sub_1000953D8(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 136);
  v3 = *(v1 + 92);
  if (v3 == 9)
  {
    if (v2 == 9)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v3 != v2)
  {
LABEL_3:
    *(v1 + 92) = v2;
    sub_1000956CC();
  }
}

void sub_100095408(uint64_t a1)
{
  v2 = *(a1 + 58);
  v3 = sub_100071A54(0, *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions));
  v4 = *(v1 + 89);
  if (v4 == 2)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

LABEL_6:
    v5 = *(v1 + 90);
    if (v5 != 2 && ((v3 ^ v5) & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v2 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  *(v1 + 89) = v2;
  *(v1 + 90) = v3 & 1;

  sub_1000956CC();
}

void sub_1000954A0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = sub_100071A54(5, *(v2 + 48));
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 93) = v3 & 1;

  sub_1000956CC();
}

void sub_1000954E8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = sub_1000040A8(qword_10035AFC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (!*(a1 + 8) || (*a1 == 5 ? (v7 = *(a1 + 17) == 1) : (v7 = 0), !v7))
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;

    *(v1 + 80) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 88) = 1;
    *(v1 + 89) = 151126530;
    *(v1 + 93) = 2;
    v8 = _s8SOSBuddy4DataVMa_0(0);
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = OBJC_IVAR____TtC8SOSBuddy23AnalyticsStateRetention__data;
    swift_beginAccess();
    sub_100096BD0(v6, v1 + v9);
    swift_endAccess();
    return;
  }

  v11 = sub_100109A94(v3);
  v12 = v10;
  v13 = *(v1 + 40);
  if (v13)
  {
    if (v10 && (*(v1 + 32) == v11 && v13 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      return;
    }
  }

  else if (!v10)
  {
    return;
  }

  *(v1 + 32) = v11;
  *(v1 + 40) = v12;

  sub_1000956CC();
}

void sub_1000956CC()
{
  v1 = sub_1000040A8(qword_10035AFC8);
  __chkstk_darwin(v1 - 8);
  v3 = &v34[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v34[-v5];
  v7 = _s8SOSBuddy4DataVMa_0(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v34[-v13];
  v15 = *(v0 + 40);
  if (v15)
  {
    v16 = *(v0 + 24);
    if (v16 != 2)
    {
      v17 = *(v0 + 89);
      if (v17 != 2)
      {
        v18 = *(v0 + 90);
        if (v18 != 2)
        {
          v38 = *(v0 + 91);
          if (v38 != 2)
          {
            v36 = *(v0 + 32);
            v37 = v12;
            v19 = sub_1000960B0();
            if (v19 != 7)
            {
              v35 = v19;

              static DispatchTime.now()();
              v20 = *(v0 + 80);
              v21 = *(v0 + 88);
              v22 = v37;
              v23 = &v14[v37[5]];
              *v23 = v36;
              v23[1] = v15;
              v24 = &v14[v22[6]];
              v25 = *(v0 + 64);
              *v24 = *(v0 + 48);
              *(v24 + 1) = v25;
              *(v24 + 4) = v20;
              v24[40] = v21;
              v14[v22[7]] = v16 & 1;
              v14[v22[8]] = (v17 & 1) == 0;
              v14[v22[9]] = v18 & 1;
              v14[v22[10]] = v38 & 1;
              v26 = v22;
              v14[v22[11]] = v35;
              v27 = OBJC_IVAR____TtC8SOSBuddy23AnalyticsStateRetention__data;
              swift_beginAccess();
              sub_100096AFC(v0 + v27, v6);
              if ((*(v8 + 48))(v6, 1, v26) == 1)
              {
                sub_100008FA0(v6, qword_10035AFC8);
                sub_100096B6C(v14, v3);
                (*(v8 + 56))(v3, 0, 1, v37);
                swift_beginAccess();
                v28 = v0 + v27;
              }

              else
              {
                v29 = v0;
                v30 = v17 & 1;
                sub_100096B6C(v6, v10);
                v31 = v37;
                if (v10[v37[8]] != v30 && v10[v37[9]] == (v18 & 1) && v10[v37[10]] == (v38 & 1))
                {
                  v32 = sub_10025DBAC(v35, v10[v37[11]]);
                  v31 = v37;
                  if (v32)
                  {
                    sub_100096C40(v10);
                    sub_100096C40(v14);
                    return;
                  }
                }

                v33 = sub_100095AB0();
                sub_10017EEA8(6, v33);

                sub_100096C40(v10);
                sub_100096B6C(v14, v3);
                (*(v8 + 56))(v3, 0, 1, v31);
                swift_beginAccess();
                v28 = v29 + v27;
              }

              sub_100096BD0(v3, v28);
              swift_endAccess();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100095AB0()
{
  v1 = v0;
  sub_1000040A8(&qword_100358320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10027F770;
  strcpy((inited + 32), "requestReason");
  *(inited + 46) = -4864;
  v3 = _s8SOSBuddy4DataVMa_0(0);
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  v4 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() < v4 && (v5 = DispatchTime.uptimeNanoseconds.getter(), result = DispatchTime.uptimeNanoseconds.getter(), v5 < result))
  {
    __break(1u);
  }

  else
  {
    *(inited + 72) = UInt64._bridgeToObjectiveC()();
    *(inited + 80) = 0xD000000000000010;
    *(inited + 88) = 0x800000010029ADA0;
    sub_100096C9C();
    *(inited + 96) = NSString.init(stringLiteral:)();
    strcpy((inited + 104), "currGPSState");
    *(inited + 117) = 0;
    *(inited + 118) = -5120;
    *(inited + 120) = Bool._bridgeToObjectiveC()();
    strcpy((inited + 128), "prevGPSState");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    *(inited + 144) = Bool._bridgeToObjectiveC()();
    *(inited + 152) = 0xD000000000000012;
    *(inited + 160) = 0x800000010029ADC0;
    v7 = String._bridgeToObjectiveC()();

    *(inited + 168) = v7;
    *(inited + 176) = 0xD000000000000013;
    *(inited + 184) = 0x800000010029ADE0;
    v8 = String._bridgeToObjectiveC()();

    *(inited + 192) = v8;
    strcpy((inited + 200), "currIsOriented");
    *(inited + 215) = -18;
    *(inited + 216) = Bool._bridgeToObjectiveC()();
    strcpy((inited + 224), "prevIsOriented");
    *(inited + 239) = -18;
    *(inited + 240) = Bool._bridgeToObjectiveC()();
    strcpy((inited + 248), "currUserAction");
    *(inited + 263) = -18;
    v9 = String._bridgeToObjectiveC()();

    *(inited + 264) = v9;
    strcpy((inited + 272), "prevUserAction");
    *(inited + 287) = -18;
    v10 = String._bridgeToObjectiveC()();

    *(inited + 288) = v10;
    v11 = sub_10025663C(inited);
    swift_setDeallocating();
    sub_1000040A8(&qword_100358328);
    swift_arrayDestroy();
    if ((*(v1 + *(v3 + 24) + 40) & 1) == 0)
    {
      isa = Double._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1001894D4(isa, 0x76656C4572727563, 0xED00006E6F697461, isUniquelyReferenced_nonNull_native);
    }

    return v11;
  }

  return result;
}

uint64_t sub_1000960B0()
{
  v1 = *(v0 + 92);
  if (v1 > 4)
  {
    if (*(v0 + 92) <= 6u)
    {
      if (v1 == 5)
      {
        v3 = *(v0 + 93);
        if (v3 == 2 || (v3 & 1) == 0)
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if (v1 - 7 < 2)
      {
        return 1;
      }

      return 7;
    }
  }

  else
  {
    if (*(v0 + 92) > 1u)
    {
      if (v1 - 2 >= 2)
      {
        return 4;
      }

      return 1;
    }

    if (*(v0 + 92))
    {
      return 6;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100096140()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy23AnalyticsStateRetention__data, qword_10035AFC8);

  return swift_deallocClassInstance();
}

void sub_1000961EC()
{
  sub_1000962BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000962BC()
{
  if (!qword_10035ACE8)
  {
    _s8SOSBuddy4DataVMa_0(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10035ACE8);
    }
  }
}

uint64_t sub_100096348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009641C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DispatchTime();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000964D8()
{
  type metadata accessor for DispatchTime();
  if (v0 <= 0x3F)
  {
    sub_10006DA28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for AnalyticsStateRetentionConnectionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnalyticsStateRetentionConnectionState(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_1000966D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  *(v2 + 48) = *a1;
  *(v2 + 64) = v3;
  result = *(a1 + 25);
  *(v2 + 73) = result;
  return result;
}

void sub_10009679C(int a1)
{
  v2 = *v1;
  v3 = *(v2 + 24);
  if (v3 == 2 || ((v3 ^ a1) & 1) != 0)
  {
    *(v2 + 24) = a1 & 1;
    sub_1000956CC();
  }
}

uint64_t sub_1000967F4()
{
  String.hash(into:)();
}

unint64_t sub_100096928@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100096AB0(*a1);
  *a2 = result;
  return result;
}

void sub_100096958(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEA00000000004547;
    v9 = 0xEC000000434E5953;
    v10 = 0x5F544F4E5F544153;
    if (v2 != 1)
    {
      v10 = 0xD000000000000014;
      v9 = 0x8000000100294640;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x4154554F5F544153;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001002946A0;
    v4 = 0xD000000000000018;
    if (v2 == 5)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x80000001002946C0;
    }

    v5 = 0xD000000000000014;
    v6 = 0x8000000100294660;
    if (v2 != 3)
    {
      v5 = 0xD000000000000016;
      v6 = 0x8000000100294680;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_100096A5C()
{
  result = qword_10035AFC0;
  if (!qword_10035AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035AFC0);
  }

  return result;
}

unint64_t sub_100096AB0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100322170, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100096AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(qword_10035AFC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096B6C(uint64_t a1, uint64_t a2)
{
  v4 = _s8SOSBuddy4DataVMa_0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(qword_10035AFC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096C40(uint64_t a1)
{
  v2 = _s8SOSBuddy4DataVMa_0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100096C9C()
{
  result = qword_100358330;
  if (!qword_100358330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100358330);
  }

  return result;
}

uint64_t sub_100096CE8()
{
  if (*v0)
  {
    return 0x657372616F632ELL;
  }

  else
  {
    return 0x657369636572702ELL;
  }
}

uint64_t sub_100096D24()
{
  _StringGuts.grow(_:)(28);
  v0._countAndFlagsBits = 0x616E6964726F6F63;
  v0._object = 0xEC000000203A6574;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x617275636361202CLL;
  v1._object = 0xEC000000203A7963;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100096E2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100096F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100096FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000970F0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000972C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v16 = a2;
  v2 = *(a1 + 16);
  v15[0] = a1;
  sub_100008CF0(&qword_10035B050);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v15[1] = &protocol conformance descriptor for VStack<A>;
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  sub_100008CF0(&qword_10035B058);
  v4 = *(a1 + 24);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_100008CF0(&qword_10035B068);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_100009274(&qword_10035B070, &qword_10035B068);
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v15 - v10;
  v17 = v2;
  v18 = v4;
  v19 = *(v15[0] + 32);
  v20 = v15[2];
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v12 = *(v6 + 16);
  v12(v11, v8, v5);
  v13 = *(v6 + 8);
  v13(v8, v5);
  v12(v16, v11, v5);
  return (v13)(v11, v5);
}

uint64_t sub_100097794@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a5;
  v90 = a4;
  v91 = a1;
  v96 = a6;
  sub_100008CF0(&qword_10035B068);
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v102 = type metadata accessor for TupleView();
  v87 = *(v102 - 8);
  __chkstk_darwin(v102);
  v86 = &v76 - v10;
  v82 = *(a3 - 1);
  __chkstk_darwin(v11);
  v81 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v9;
  v85 = *(v9 - 8);
  __chkstk_darwin(v13);
  v84 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v76 - v16;
  v80 = *(a2 - 1);
  __chkstk_darwin(v17);
  v79 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v8;
  v98 = *(v8 - 8);
  __chkstk_darwin(v19);
  v83 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v97 = &v76 - v22;
  sub_100008CF0(&qword_10035B050);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  sub_100008CF0(&qword_10035B058);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v23 = type metadata accessor for ZStack();
  v78 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v100 = v26;
  v27 = type metadata accessor for ModifiedContent();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  v93 = type metadata accessor for _ConditionalContent();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v99 = &v76 - v34;
  v35 = a2;
  v121 = a2;
  v122 = a3;
  v94 = a3;
  v36 = v90;
  v123 = v90;
  v124 = v101;
  type metadata accessor for AXConditionalContentWithPanelView();
  v37 = v91;
  v38 = sub_1000985DC();
  if (v38)
  {
    v98 = v33;
    __chkstk_darwin(v38);
    v39 = v94;
    *(&v76 - 6) = v35;
    *(&v76 - 5) = v39;
    v40 = v101;
    *(&v76 - 4) = v36;
    *(&v76 - 3) = v40;
    *(&v76 - 2) = v37;
    static Alignment.center.getter();
    ZStack.init(alignment:content:)();
    v41 = v100;
    v42 = swift_getWitnessTable();
    sub_10002BE68();
    (*(v78 + 8))(v25, v41);
    v43 = sub_100009274(&qword_10035B070, &qword_10035B068);
    v103 = v42;
    v104 = v43;
    swift_getWitnessTable();
    v44 = *(v28 + 16);
    v45 = v98;
    v44(v98, v30, v27);
    v46 = *(v28 + 8);
    v46(v30, v27);
    v44(v30, v45, v27);
    swift_getWitnessTable();
    sub_100096F00(v30, v27);
    v46(v30, v27);
    v46(v45, v27);
  }

  else
  {
    v47 = v79;
    (*(v37 + 16))();
    v78 = v27;
    v48 = v83;
    sub_10002BE68();
    (*(v80 + 8))(v47, v35);
    v49 = sub_100009274(&qword_10035B070, &qword_10035B068);
    v119 = v36;
    v120 = v49;
    v50 = v49;
    WitnessTable = v49;
    v79 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
    v51 = v89;
    v80 = swift_getWitnessTable();
    v52 = v98;
    v76 = *(v98 + 2);
    v76(v97, v48, v51);
    v90 = *(v52 + 1);
    v98 = v52 + 8;
    v53 = (v90)(v48, v51);
    v54 = v81;
    (*(v37 + 32))(v53);
    v55 = v84;
    v56 = v94;
    v57 = v101;
    sub_10002BE68();
    (*(v82 + 8))(v54, v56);
    v117 = v57;
    v118 = v50;
    v58 = v88;
    v101 = swift_getWitnessTable();
    v59 = v85;
    v60 = *(v85 + 16);
    v61 = v95;
    v60(v95, v55, v58);
    v62 = *(v59 + 8);
    v62(v55, v58);
    v76(v48, v97, v51);
    v115 = 0;
    v116 = 1;
    v121 = v48;
    v122 = &v115;
    v60(v55, v61, v58);
    v123 = v55;
    v114[0] = v51;
    v114[1] = &type metadata for Spacer;
    v114[2] = v58;
    v111 = v80;
    v112 = &protocol witness table for Spacer;
    v113 = v101;
    v63 = v86;
    sub_1000970F0(&v121, 3uLL, v114);
    v62(v55, v58);
    v64 = v48;
    v65 = v78;
    v66 = v90;
    v90(v64, v51);
    v109 = swift_getWitnessTable();
    v110 = WitnessTable;
    swift_getWitnessTable();
    v67 = v102;
    swift_getWitnessTable();
    sub_100096FF8(v63, v65, v67);
    (*(v87 + 8))(v63, v67);
    v62(v95, v58);
    v66(v97, v51);
  }

  v68 = swift_getWitnessTable();
  v69 = sub_100009274(&qword_10035B070, &qword_10035B068);
  v107 = v68;
  v108 = v69;
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v105 = v70;
  v106 = v71;
  v72 = v93;
  swift_getWitnessTable();
  v73 = v92;
  v74 = v99;
  (*(v92 + 16))(v96, v99, v72);
  return (*(v73 + 8))(v74, v72);
}

uint64_t sub_1000985DC()
{
  if (*v0)
  {
    v1 = *(*v0 + 112);
    v2 = UIContentSizeCategory.isAccessibilityCategory.getter();

    return v2 & 1;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100099F58(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100098678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a6;
  sub_100008CF0(&qword_10035B058);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  v52 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v50 = type metadata accessor for VStack();
  v56 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v39 - v11;
  v55 = type metadata accessor for ModifiedContent();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = &v39 - v14;
  sub_100008CF0(&qword_10035B050);
  v40 = a2;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v46 = &protocol conformance descriptor for VStack<A>;
  swift_getWitnessTable();
  v15 = type metadata accessor for ScrollView();
  v58 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v17;
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v44 = &v39 - v19;
  static Axis.Set.vertical.getter();
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a1;
  ScrollView.init(_:showsIndicators:content:)();
  v21 = v15;
  v45 = swift_getWitnessTable();
  v22 = v58;
  v42 = *(v58 + 16);
  v43 = v58 + 16;
  v42(v20, v17, v15);
  v23 = *(v22 + 8);
  v58 = v22 + 8;
  v47 = v23;
  v23(v17, v15);
  v59 = v40;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a1;
  static HorizontalAlignment.center.getter();
  v24 = v49;
  VStack.init(alignment:spacing:content:)();
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  v25 = v50;
  v26 = swift_getWitnessTable();
  v27 = v48;
  View.ignoresSafeArea(_:edges:)();
  (*(v56 + 8))(v24, v25);
  v72[2] = v26;
  v72[3] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v28 = v55;
  v56 = swift_getWitnessTable();
  v29 = v54;
  v30 = *(v54 + 16);
  v31 = v53;
  v30(v53, v27, v28);
  v32 = *(v29 + 8);
  v33 = v27;
  v32(v27, v28);
  v34 = v41;
  v35 = v44;
  v42(v41, v44, v21);
  v72[0] = v34;
  v30(v33, v31, v28);
  v72[1] = v33;
  v71[0] = v21;
  v71[1] = v28;
  v69 = v45;
  v70 = v56;
  sub_1000970F0(v72, 2uLL, v71);
  v32(v31, v28);
  v36 = v35;
  v37 = v47;
  v47(v36, v21);
  v32(v33, v28);
  return v37(v34, v21);
}