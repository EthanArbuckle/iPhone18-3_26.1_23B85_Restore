void sub_1000B1B3C(uint64_t a1, double a2, double a3)
{
  v5 = type metadata accessor for AlarmPresentationState.Mode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlarmPresentationState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OpaqueAlarm();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = (&v42 - v20);
  sub_1000B42E0(a1, &v42 - v20, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000B4390(v21, type metadata accessor for OpaqueAlarm);
      return;
    }

    v45 = v6;
    v26 = *v21;
    v27 = [*v21 state];

    if (v27 != 3)
    {
      return;
    }
  }

  else
  {
    v43 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v44 = a1;
    (*(v11 + 32))(v14, v21, v10);
    v23 = v6;
    AlarmPresentationState.mode.getter();
    v24 = AlarmPresentationState.Mode.isCountingDown.getter();
    v45 = v23;
    (*(v23 + 8))(v9, v5);
    (*(v11 + 8))(v14, v10);
    v25 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    a1 = v44;
    (*(*(v25 - 8) + 8))(v21 + v43, v25);
    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  sub_1000B42E0(a1, v19, type metadata accessor for OpaqueAlarm);
  v28 = swift_getEnumCaseMultiPayload();
  if (!v28)
  {
    v29 = a1;
    v30 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v11 + 32))(v14, v19, v10);
    AlarmPresentationState.mode.getter();
    AlarmPresentationState.Mode.totalDuration.getter();
    v32 = v31;
    (*(v45 + 8))(v9, v5);
    (*(v11 + 8))(v14, v10);
    v33 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v34 = v19 + v30;
    a1 = v29;
    (*(*(v33 - 8) + 8))(v34, v33);
    if (v32 == 0.0)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v28 == 1)
  {
    sub_1000B4390(v19, type metadata accessor for OpaqueAlarm);
    return;
  }

  v39 = *v19;
  [*v19 duration];
  v41 = v40;

  if (v41 != 0.0)
  {
LABEL_11:
    v35 = a3 / sub_10008AEC0();
    v36 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 32));
    v38 = v36[1];
    v49 = *v36;
    v37 = v49;
    v50 = v38;

    sub_1000032D4(&qword_100114238, &qword_1000D2C30);
    State.wrappedValue.getter();
    v46 = v35 + v51;
    v47 = v37;
    v48 = v38;
    State.wrappedValue.setter();
  }
}

uint64_t sub_1000B204C(uint64_t a1)
{
  sub_10008AB30();
  v2 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 32));
  v4 = *v2;
  v5 = v2[1];
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  return State.wrappedValue.setter();
}

void sub_1000B20F0(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v29 - v8;
  v10 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10008B160() & 1) != 0 || (sub_100088B60())
  {
    sub_100089408(v13);
    v19 = *(v15 + 48);
    if (v19(v13, 1, v14) == 1)
    {
      static Date.now.getter();
      if (v19(v13, 1, v14) != 1)
      {
        sub_10002D02C(v13, &qword_100115E40, &unk_1000D1280);
      }
    }

    else
    {
      (*(v15 + 32))(v18, v13, v14);
    }

    static Locale.current.getter();
    Date.timeIntervalSince(_:)();
    v21 = v20;
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v23.i64[0] = v21;
    v24 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v23);

    if (v24)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 8))(v9, v2);
      (*(v15 + 8))(v18, v14);
      return;
    }

    __break(1u);
  }

  else
  {
    v25 = sub_1000AB604();
    static Locale.current.getter();
    v26 = Locale._bridgeToObjectiveC()().super.isa;
    *v27.i64 = v25;
    v28 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, v26, v27);

    if (v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 8))(v7, v2);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1000B2488@<X0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  if (sub_100088B60())
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
    if (qword_1001136F8 != -1)
    {
      swift_once();
    }

    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v4._countAndFlagsBits = 32;
    v4._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
    LocalizedStringKey.init(stringInterpolation:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  static Color.secondary.getter();
  v10 = Text.foregroundColor(_:)();
  v32 = v11;
  v31 = v12;

  sub_100025B0C(v5, v7, v9 & 1);

  sub_1000890A8();
  sub_100025FB4();
  StringProtocol.localizedUppercase.getter();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v18 = Text.foregroundColor(_:)();
  v20 = v19;
  v22 = v21;
  sub_100025B0C(v13, v15, v17 & 1);

  v23 = static Text.+ infix(_:_:)();
  v25 = v24;
  v27 = v26;
  v30 = v28;
  sub_100025B0C(v18, v20, v22 & 1);

  sub_100025B0C(v10, v32, v31 & 1);

  *a1 = v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v30;
  return result;
}

uint64_t sub_1000B2760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v59 = sub_1000032D4(&qword_100119410, &qword_1000D7558);
  v3 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v5 = &v57 - v4;
  v6 = type metadata accessor for LinearTimerTimelineCountdown();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for MediumActionButton(0);
  v9 = *(*(v8 - 1) + 64);
  v10 = __chkstk_darwin(v8);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v57 - v12;
  v14 = sub_1000032D4(&qword_100119418, &qword_1000D7560);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v57 - v19;
  v62 = a1;
  if (sub_10008B160())
  {
    v57 = static Color.white.getter();
    if (qword_100113758 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Material();
    v22 = sub_10002D08C(v21, qword_10011F798);
    (*(*(v21 - 8) + 16))(&v13[v8[6]], v22, v21);
    if (qword_100113768 != -1)
    {
      swift_once();
    }

    v65 = xmmword_10011F7F0;
    v66 = unk_10011F800;
    v67 = xmmword_10011F810;
    v63 = xmmword_10011F7D0;
    v64 = unk_10011F7E0;
    v23 = v8[8];
    v24 = enum case for BlendMode.screen(_:);
    v25 = type metadata accessor for BlendMode();
    (*(*(v25 - 8) + 104))(&v13[v23], v24, v25);
    sub_1000B42E0(v62, &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinearTimerTimelineCountdown);
    v26 = *(v58 + 80);
    v27 = swift_allocObject();
    sub_1000B3678(&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + ((v26 + 16) & ~v26), type metadata accessor for LinearTimerTimelineCountdown);
    *v13 = 0x69662E6573756170;
    *(v13 + 1) = 0xEA00000000006C6CLL;
    *(v13 + 2) = v57;
    v28 = &v13[v8[7]];
    v29 = v67;
    v28[3] = v66;
    v28[4] = v29;
    v30 = v65;
    v28[1] = v64;
    v28[2] = v30;
    *v28 = v63;
    v13[v8[9]] = 0;
    v31 = &v13[v8[10]];
    *v31 = sub_1000B46B8;
    v31[1] = v27;
    sub_1000B42E0(v13, v5, type metadata accessor for MediumActionButton);
    swift_storeEnumTagMultiPayload();
    sub_1000B4348(&qword_100115260, type metadata accessor for MediumActionButton);
    _ConditionalContent<>.init(storage:)();
    sub_1000B4390(v13, type metadata accessor for MediumActionButton);
  }

  else
  {
    v57 = static Color.white.getter();
    if (qword_100113758 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Material();
    v33 = sub_10002D08C(v32, qword_10011F798);
    (*(*(v32 - 8) + 16))(&v13[v8[6]], v33, v32);
    if (qword_100113768 != -1)
    {
      swift_once();
    }

    v65 = xmmword_10011F7F0;
    v66 = unk_10011F800;
    v67 = xmmword_10011F810;
    v63 = xmmword_10011F7D0;
    v64 = unk_10011F7E0;
    v34 = v8[8];
    v35 = enum case for BlendMode.screen(_:);
    v36 = type metadata accessor for BlendMode();
    (*(*(v36 - 8) + 104))(&v13[v34], v35, v36);
    sub_1000B42E0(v62, &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinearTimerTimelineCountdown);
    v26 = *(v58 + 80);
    v37 = swift_allocObject();
    sub_1000B3678(&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + ((v26 + 16) & ~v26), type metadata accessor for LinearTimerTimelineCountdown);
    *v13 = 0x6C69662E79616C70;
    *(v13 + 1) = 0xE90000000000006CLL;
    *(v13 + 2) = v57;
    v38 = &v13[v8[7]];
    v39 = v67;
    v38[3] = v66;
    v38[4] = v39;
    v40 = v65;
    v38[1] = v64;
    v38[2] = v40;
    *v38 = v63;
    v13[v8[9]] = 0;
    v41 = &v13[v8[10]];
    *v41 = sub_1000B42C8;
    v41[1] = v37;
    sub_1000B42E0(v13, v5, type metadata accessor for MediumActionButton);
    swift_storeEnumTagMultiPayload();
    sub_1000B4348(&qword_100115260, type metadata accessor for MediumActionButton);
    _ConditionalContent<>.init(storage:)();
    sub_1000B4390(v13, type metadata accessor for MediumActionButton);
  }

  v42 = static Color.white.getter();
  if (qword_100113760 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Material();
  v44 = sub_10002D08C(v43, qword_10011F7B0);
  (*(*(v43 - 8) + 16))(&v13[v8[6]], v44, v43);
  if (qword_100113770 != -1)
  {
    swift_once();
  }

  v65 = xmmword_10011F840;
  v66 = unk_10011F850;
  v67 = xmmword_10011F860;
  v63 = xmmword_10011F820;
  v64 = *algn_10011F830;
  v45 = v8[8];
  v46 = enum case for BlendMode.sourceAtop(_:);
  v47 = type metadata accessor for BlendMode();
  (*(*(v47 - 8) + 104))(&v13[v45], v46, v47);
  sub_1000B42E0(v62, &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinearTimerTimelineCountdown);
  v48 = swift_allocObject();
  sub_1000B3678(&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + ((v26 + 16) & ~v26), type metadata accessor for LinearTimerTimelineCountdown);
  *v13 = 0x6B72616D78;
  *(v13 + 1) = 0xE500000000000000;
  *(v13 + 2) = v42;
  v49 = &v13[v8[7]];
  v50 = v67;
  v49[3] = v66;
  v49[4] = v50;
  v51 = v65;
  v49[1] = v64;
  v49[2] = v51;
  *v49 = v63;
  v13[v8[9]] = 1;
  v52 = &v13[v8[10]];
  *v52 = sub_1000B43F0;
  v52[1] = v48;
  sub_10002CFC4(v20, v18, &qword_100119418, &qword_1000D7560);
  v53 = v60;
  sub_1000B42E0(v13, v60, type metadata accessor for MediumActionButton);
  v54 = v61;
  sub_10002CFC4(v18, v61, &qword_100119418, &qword_1000D7560);
  v55 = sub_1000032D4(&qword_100119420, &qword_1000D7568);
  sub_1000B42E0(v53, v54 + *(v55 + 48), type metadata accessor for MediumActionButton);
  sub_1000B4390(v13, type metadata accessor for MediumActionButton);
  sub_10002D02C(v20, &qword_100119418, &qword_1000D7560);
  sub_1000B4390(v53, type metadata accessor for MediumActionButton);
  return sub_10002D02C(v18, &qword_100119418, &qword_1000D7560);
}

uint64_t sub_1000B3140(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for LinearTimerTimelineCountdown();
  v5 = sub_100025B1C((a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 24));
  v6 = sub_100088DE4();
  v7 = *v5;
  a2(v6);
}

uint64_t sub_1000B31B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B42E0(v3, v7, type metadata accessor for LinearTimerTimelineCountdown);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1000B3678(v7, v9 + v8, type metadata accessor for LinearTimerTimelineCountdown);
  sub_1000B42E0(v3, v7, type metadata accessor for LinearTimerTimelineCountdown);
  v10 = swift_allocObject();
  result = sub_1000B3678(v7, v10 + v8, type metadata accessor for LinearTimerTimelineCountdown);
  *a2 = sub_1000B333C;
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_1000B33BC;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_1000B333C(uint64_t a1)
{
  v3 = *(type metadata accessor for LinearTimerTimelineCountdown() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000AB8CC(a1, v4);
}

unint64_t sub_1000B33D4()
{
  result = qword_1001191A0;
  if (!qword_1001191A0)
  {
    sub_10001C820(&qword_100119190, &qword_1000D7210);
    sub_1000B3460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001191A0);
  }

  return result;
}

unint64_t sub_1000B3460()
{
  result = qword_1001191A8;
  if (!qword_1001191A8)
  {
    sub_10001C820(&qword_1001191B0, &qword_1000D7220);
    sub_10002DAD8(&qword_1001191B8, &qword_1001191C0, &unk_1000D7228);
    sub_10002DAD8(&qword_100114A08, &qword_100114A10, &qword_1000D6DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001191A8);
  }

  return result;
}

unint64_t sub_1000B3544()
{
  result = qword_1001191C8;
  if (!qword_1001191C8)
  {
    sub_10001C820(&qword_100119180, &qword_1000D7200);
    sub_10002DAD8(&qword_1001191D0, &qword_1001191D8, &qword_1000D7238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001191C8);
  }

  return result;
}

uint64_t sub_1000B3678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B36F8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LinearTimerTimelineCountdown() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000B3824()
{
  result = qword_1001192B0;
  if (!qword_1001192B0)
  {
    sub_10001C820(&qword_1001192A0, &qword_1000D7318);
    sub_1000B38B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192B0);
  }

  return result;
}

unint64_t sub_1000B38B0()
{
  result = qword_1001192B8;
  if (!qword_1001192B8)
  {
    sub_10001C820(&qword_100119298, &qword_1000D7310);
    sub_1000B3968();
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192B8);
  }

  return result;
}

unint64_t sub_1000B3968()
{
  result = qword_1001192C0;
  if (!qword_1001192C0)
  {
    sub_10001C820(&qword_100119290, &qword_1000D7308);
    sub_1000B39F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192C0);
  }

  return result;
}

unint64_t sub_1000B39F4()
{
  result = qword_1001192C8;
  if (!qword_1001192C8)
  {
    sub_10001C820(&qword_100119288, &qword_1000D7300);
    sub_1000B3A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192C8);
  }

  return result;
}

unint64_t sub_1000B3A80()
{
  result = qword_1001192D0;
  if (!qword_1001192D0)
  {
    sub_10001C820(&qword_100119280, &qword_1000D72F8);
    sub_1000B3B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192D0);
  }

  return result;
}

unint64_t sub_1000B3B0C()
{
  result = qword_1001192D8;
  if (!qword_1001192D8)
  {
    sub_10001C820(&qword_100119278, &qword_1000D72F0);
    sub_10001C820(&qword_1001192E0, &qword_1000D7328);
    sub_1000B3BD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192D8);
  }

  return result;
}

unint64_t sub_1000B3BD4()
{
  result = qword_1001192E8;
  if (!qword_1001192E8)
  {
    sub_10001C820(&qword_1001192E0, &qword_1000D7328);
    sub_1000B3C8C();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192E8);
  }

  return result;
}

unint64_t sub_1000B3C8C()
{
  result = qword_1001192F0;
  if (!qword_1001192F0)
  {
    sub_10001C820(&qword_1001192F8, &qword_1000D7330);
    sub_1000B3D44();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192F0);
  }

  return result;
}

unint64_t sub_1000B3D44()
{
  result = qword_100119300;
  if (!qword_100119300)
  {
    sub_10001C820(&qword_100119308, &qword_1000D7338);
    sub_1000B3DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119300);
  }

  return result;
}

unint64_t sub_1000B3DD0()
{
  result = qword_100119310;
  if (!qword_100119310)
  {
    sub_10001C820(&qword_100119318, &unk_1000D7340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119310);
  }

  return result;
}

uint64_t sub_1000B3EFC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B3F50(double a1)
{
  if (a1 >= 0.0 && a1 < 600.0)
  {
    if (qword_1001136E8 != -1)
    {
      swift_once();
    }

    v3 = &qword_10011F720;
  }

  else if (a1 >= 600.0 && a1 < 3600.0)
  {
    if (qword_1001136E0 != -1)
    {
      swift_once();
    }

    v3 = &qword_10011F718;
  }

  else if (a1 < 3600.0 || a1 >= 36000.0)
  {
    if (qword_1001136D0 != -1)
    {
      swift_once();
    }

    v3 = &qword_10011F708;
  }

  else
  {
    if (qword_1001136D8 != -1)
    {
      swift_once();
    }

    v3 = &qword_10011F710;
  }

  return *v3;
}

void sub_1000B40A8(double a1, double a2)
{
  v5 = *(type metadata accessor for LinearTimerTimelineCountdown() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1000B1B3C(v6, a1, a2);
}

uint64_t sub_1000B4120()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B4158(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_1000B4184()
{
  result = qword_1001193E8;
  if (!qword_1001193E8)
  {
    sub_10001C820(&qword_100119338, &qword_1000D7470);
    sub_1000B4210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193E8);
  }

  return result;
}

unint64_t sub_1000B4210()
{
  result = qword_1001193F0;
  if (!qword_1001193F0)
  {
    sub_10001C820(&qword_1001193E0, &qword_1000D7540);
    sub_10002DAD8(&qword_1001193F8, &qword_100119400, &qword_1000D7548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193F0);
  }

  return result;
}

uint64_t sub_1000B42E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B4348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B4390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B4408()
{
  v1 = type metadata accessor for LinearTimerTimelineCountdown();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  type metadata accessor for OpaqueAlarm();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AlarmPresentationState();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  sub_100017D28((v5 + v1[5]));
  sub_100017D28((v5 + v1[6]));
  v10 = v1[7];
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Font.Context();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v5 + v1[8] + 8);

  v14 = *(v5 + v1[9] + 8);

  v15 = *(v5 + v1[10] + 8);

  v16 = *(v5 + v1[11] + 8);

  v17 = *(v5 + v1[12] + 8);

  v18 = *(v5 + v1[13] + 8);

  v19 = *(v5 + v1[14] + 8);

  v20 = *(v5 + v1[15] + 8);

  v21 = *(v5 + v1[16] + 8);

  v22 = *(v5 + v1[17] + 8);

  v23 = *(v5 + v1[18] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000B46D4()
{
  result = qword_100119428;
  if (!qword_100119428)
  {
    sub_10001C820(&qword_100119430, &qword_1000D7570);
    sub_1000B4760();
    sub_10002C11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119428);
  }

  return result;
}

unint64_t sub_1000B4760()
{
  result = qword_100119438;
  if (!qword_100119438)
  {
    sub_10001C820(&qword_100119440, &qword_1000D7578);
    sub_10002DAD8(&qword_100119448, &unk_100119450, &qword_1000D7580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119438);
  }

  return result;
}

void sub_1000B4E30()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for TimerApertureElementController(0);
  objc_msgSendSuper2(&v13, "viewDidLoad");
  if (*&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
  {
    v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v3 = qword_1001135F8;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_1000BFDFC(&unk_100119820, type metadata accessor for TimerApertureElementController);
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.registerObserver(_:for:)();
    sub_10004E3D4(&v11);
  }

  v4 = objc_opt_self();
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v5 = [v1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v11 = v6;
  v12 = v8;
  v9._object = 0x80000001000DB920;
  v9._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:v10];

  sub_1000B6878();
  sub_1000B8D68();
}

char *sub_1000B5050(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v66 = a3;
  v7 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v65[-v9];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_observerId];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  *v16 = v17;
  v16[1] = v19;
  v20 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_maximumLayoutMode] = 4;
  v21 = [objc_opt_self() mtURLForSection:4];
  v67 = a1;
  v68 = a2;
  if (v21)
  {
    v22 = v21;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v10, v23, 1, v24);
  sub_1000573D0(v10, &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL]);
  v25 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier];
  *v25 = 0xD000000000000015;
  *(v25 + 1) = 0x80000001000D7F20;
  v26 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_timerObserverIdentifier];
  *v26 = 0xD00000000000001ELL;
  *(v26 + 1) = 0x80000001000D7580;
  v27 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v28 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = objc_allocWithZone(ObjCClassFromMetadata);
  v31 = v27;
  *&v4[v28] = [v30 init];
  v32 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView;
  *&v4[v32] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v33 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView;
  *&v4[v33] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v34 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_keyColor;
  *&v4[v34] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingOffset] = 0x401C000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_interButtonPadding] = 0x4024000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_buttonSize] = 0x4049000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelBottomPadding] = 0x4035000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelToCountdownPadding] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButtonToLabelPadding] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer] = 0;
  v35 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation;
  v36 = type metadata accessor for TimerAnimationCountdown(0);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  v40 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v41 = type metadata accessor for OpaqueAlarm();
  v42 = *(*(v41 - 8) + 56);
  v42(v39 + v40, 1, 1, v41);
  v43 = (v39 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  *&v4[v35] = v39;
  v44 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation;
  v45 = *(v36 + 48);
  v46 = *(v36 + 52);
  v47 = swift_allocObject();
  *(v47 + 16) = 0u;
  *(v47 + 32) = 0u;
  v42(v47 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, 1, 1, v41);
  v48 = (v47 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v48 = 0;
  v48[1] = 0xE000000000000000;
  *&v4[v44] = v47;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton] = 0;
  v49 = type metadata accessor for TimerApertureElementController(0);
  v73.receiver = v4;
  v73.super_class = v49;
  v50 = objc_msgSendSuper2(&v73, "init");
  v51 = &v50[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  v52 = *&v50[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];
  v54 = v67;
  v53 = v68;
  *v51 = v67;
  *(v51 + 1) = v53;
  v55 = v50;

  if (v66)
  {
    *&v55[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = 2;
  }

  v56 = objc_opt_self();
  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v57 = [v55 description];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v61._countAndFlagsBits = v58;
  v61._object = v60;
  String.append(_:)(v61);

  v62._object = 0x80000001000DA500;
  v62._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v62);
  v69 = v54;
  v70 = v53;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  _print_unlocked<A, B>(_:_:)();

  v63 = String._bridgeToObjectiveC()();

  [v56 logInfo:v63];

  return v55;
}

id sub_1000B56FC(void *a1)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_observerId];
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  *v12 = v13;
  v12[1] = v15;
  v16 = &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = 9;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_maximumLayoutMode] = 4;
  v17 = [objc_opt_self() mtURLForSection:4];
  if (v17)
  {
    v18 = v17;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(v6, v19, 1, v20);
  sub_1000573D0(v6, &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL]);
  v21 = &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier];
  *v21 = 0xD000000000000015;
  *(v21 + 1) = 0x80000001000D7F20;
  v22 = &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_timerObserverIdentifier];
  *v22 = 0xD00000000000001ELL;
  *(v22 + 1) = 0x80000001000D7580;
  v23 = SBUISystemApertureElementIdentifierTimer;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v24 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = objc_allocWithZone(ObjCClassFromMetadata);
  v27 = v23;
  *&v2[v24] = [v26 init];
  v28 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView;
  *&v2[v28] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView;
  *&v2[v29] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v30 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_keyColor;
  *&v2[v30] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingOffset] = 0x401C000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingPadding] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_interButtonPadding] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_buttonSize] = 0x4049000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelBottomPadding] = 0x4035000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelToCountdownPadding] = 0x4014000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButtonToLabelPadding] = 0x4028000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer] = 0;
  v31 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation;
  v32 = type metadata accessor for TimerAnimationCountdown(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  *(v35 + 16) = 0u;
  *(v35 + 32) = 0u;
  v36 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v37 = type metadata accessor for OpaqueAlarm();
  v38 = *(*(v37 - 8) + 56);
  v38(v35 + v36, 1, 1, v37);
  v39 = (v35 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  *&v2[v31] = v35;
  v40 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation;
  v41 = *(v32 + 48);
  v42 = *(v32 + 52);
  v43 = swift_allocObject();
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0u;
  v38(v43 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, 1, 1, v37);
  v44 = (v43 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  *&v2[v40] = v43;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton] = 0;
  v45 = type metadata accessor for TimerApertureElementController(0);
  v51.receiver = v2;
  v51.super_class = v45;
  v46 = v50;
  v47 = objc_msgSendSuper2(&v51, "initWithCoder:", v50);

  if (v47)
  {
  }

  return v47;
}

id sub_1000B5C9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v55 = a3;
  v53[1] = a1;
  v6 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v53 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_observerId];
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  *v15 = v16;
  v15[1] = v18;
  v19 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_maximumLayoutMode] = 4;
  v20 = [objc_opt_self() mtURLForSection:4];
  v54 = a2;
  if (v20)
  {
    v21 = v20;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v9, v22, 1, v23);
  sub_1000573D0(v9, &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL]);
  v24 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier];
  *v24 = 0xD000000000000015;
  *(v24 + 1) = 0x80000001000D7F20;
  v25 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_timerObserverIdentifier];
  *v25 = 0xD00000000000001ELL;
  *(v25 + 1) = 0x80000001000D7580;
  v26 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v27 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = objc_allocWithZone(ObjCClassFromMetadata);
  v30 = v26;
  *&v4[v27] = [v29 init];
  v31 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView;
  *&v4[v31] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView;
  *&v4[v32] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v33 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_keyColor;
  *&v4[v33] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingOffset] = 0x401C000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_interButtonPadding] = 0x4024000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_buttonSize] = 0x4049000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelBottomPadding] = 0x4035000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelToCountdownPadding] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButtonToLabelPadding] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer] = 0;
  v34 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation;
  v35 = type metadata accessor for TimerAnimationCountdown(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0u;
  v39 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v40 = type metadata accessor for OpaqueAlarm();
  v41 = *(*(v40 - 8) + 56);
  v41(v38 + v39, 1, 1, v40);
  v42 = (v38 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  *&v4[v34] = v38;
  v43 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation;
  v44 = *(v35 + 48);
  v45 = *(v35 + 52);
  v46 = swift_allocObject();
  *(v46 + 16) = 0u;
  *(v46 + 32) = 0u;
  v41(v46 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, 1, 1, v40);
  v47 = (v46 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v47 = 0;
  v47[1] = 0xE000000000000000;
  *&v4[v43] = v46;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton] = 0;
  if (v54)
  {
    v48 = String._bridgeToObjectiveC()();
  }

  else
  {
    v48 = 0;
  }

  v49 = type metadata accessor for TimerApertureElementController(0);
  v56.receiver = v4;
  v56.super_class = v49;
  v50 = v55;
  v51 = objc_msgSendSuper2(&v56, "initWithNibName:bundle:", v48, v55);

  return v51;
}

id sub_1000B62A0()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(40);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v15[0] = v4;
  v15[1] = v6;
  v7._object = 0x80000001000DC2D0;
  v7._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:v8];

  if (*&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
  {
    v9 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v10 = qword_1001135F8;
    v11 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];

    if (v10 != -1)
    {
      swift_once();
    }

    sub_1000BFDFC(&unk_100119820, type metadata accessor for TimerApertureElementController);
    v12 = v1;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();

    sub_10004E3D4(v15);
  }

  v13 = type metadata accessor for TimerApertureElementController(0);
  v16.receiver = v1;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

void sub_1000B6674(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for TimerApertureElementController(0);
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1);
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(18);
  v5 = [v2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v14[0] = v6;
  v14[1] = v8;
  v9._object = 0x80000001000DC2B0;
  v9._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:v10];

  if (*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
  {
    v11 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v12 = qword_1001135F8;
    v13 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];

    if (v12 != -1)
    {
      swift_once();
    }

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v14);
    if (v11)
    {
      sub_1000B6F8C(v11);
    }
  }
}

void sub_1000B6878()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v53 - v4);
  v6 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView];
  if (!v6)
  {
    return;
  }

  type metadata accessor for TimerApertureElementController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v6 setAccessibilityLabel:v11];

  v55 = v6;
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 addSubview:v55];

  v14 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
  v15 = sub_1000BE460(2u);
  if (v15)
  {
    v16 = v15;
    v17 = objc_opt_self();
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v18 = [v1 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v58 = v19;
    v59 = v21;
    v22._object = 0x80000001000DA4B0;
    v22._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    [v17 logInfo:v23];

    v24 = v16;
    [v55 addSubview:v24];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = objc_opt_self();
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000D24B0;
    v27 = [v24 leadingAnchor];
    v28 = [v55 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-2.0];

    *(v26 + 32) = v29;
    v30 = [v24 trailingAnchor];

    v31 = [v55 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v33 = [v24 topAnchor];

    v34 = [v55 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v26 + 48) = v35;
    v36 = [v24 bottomAnchor];

    v37 = [v55 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v26 + 56) = v38;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 activateConstraints:isa];

    v40 = &v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v41 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];
    if (v41)
    {
      v42 = *v40;
      v43 = qword_1001135F8;

      if (v43 != -1)
      {
        swift_once();
      }

      v56 = v42;
      v57 = v41;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.getEntry(for:)();

      sub_10004E3D4(&v58);
      if (v56)
      {
        *v5 = v56;
        v44 = type metadata accessor for OpaqueAlarm();
        swift_storeEnumTagMultiPayload();
        (*(*(v44 - 8) + 56))(v5, 0, 1, v44);
        v45 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
        swift_beginAccess();
        sub_10004EC60(v5, v14 + v45, &qword_100114D70, &unk_1000D20E0);
        swift_endAccess();
      }

      return;
    }

    v52 = v55;
  }

  else
  {
    v46 = objc_opt_self();
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v47 = [v1 description];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v58 = v48;
    v59 = v50;
    v51._countAndFlagsBits = 0xD00000000000002CLL;
    v51._object = 0x80000001000DC1F0;
    String.append(_:)(v51);
    v54 = String._bridgeToObjectiveC()();

    [v46 logInfo:v54];

    v52 = v54;
  }
}

void sub_1000B6F8C(void *a1)
{
  v2 = v1;
  v4 = [a1 isFiring];
  v5 = 9;
  if (v4)
  {
    v5 = 2;
  }

  v6 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors];
  *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = v5;
  if (v6 != v5)
  {
    [objc_msgSend(v1 "systemApertureElementContext")];
    swift_unknownObjectRelease();
  }

  v7 = objc_opt_self();
  _StringGuts.grow(_:)(49);
  v8 = [v1 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._object = 0x80000001000DC1D0;
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v13);
  v14 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost;
  v26 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost];
  sub_1000032D4(&qword_100119808, &qword_1000D7730);
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 0x646573756170202CLL;
  v15._object = 0xEF203A74736F6820;
  String.append(_:)(v15);
  v16 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost;
  v27 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost];
  sub_1000032D4(&unk_100119810, qword_1000D7738);
  _print_unlocked<A, B>(_:_:)();
  v17 = String._bridgeToObjectiveC()();

  [v7 logInfo:v17];

  if ([a1 state] == 2)
  {
    v18 = *&v2[v14];
    v19 = v18;
    sub_1000BBA84(v18);

    sub_1000B8524(a1);
    sub_1000B72C4(a1);
  }

  else if ([a1 state] == 3)
  {
    v20 = *&v2[v16];
    v21 = v20;
    sub_1000BBA84(v20);

    sub_1000B7B24(a1);
    sub_1000B76F4(a1);
  }

  else if ([a1 isFiring])
  {
    v22 = *&v2[v16];
    v23 = v22;
    sub_1000BBA84(v22);

    v24 = *&v2[v14];
    v25 = v24;
    sub_1000BBA84(v24);
  }

  if (*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode] == 4)
  {
    if ([a1 isFiring])
    {
      sub_1000BBDA8();
      sub_1000BAD90(a1);
    }

    else
    {
      sub_1000BBC60();
      sub_1000BA4C8(a1);
    }
  }
}

void sub_1000B72C4(void *a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v42 - v6);
  v8 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
  *(&v42 - v6) = a1;
  v9 = type metadata accessor for OpaqueAlarm();
  swift_storeEnumTagMultiPayload();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  v12 = a1;
  v42 = v8;
  sub_10004EC60(v7, v8 + v11, &qword_100114D70, &unk_1000D20E0);
  swift_endAccess();
  v13 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
  *v7 = v12;
  swift_storeEnumTagMultiPayload();
  v10(v7, 0, 1, v9);
  v14 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  v15 = v12;
  sub_10004EC60(v7, v13 + v14, &qword_100114D70, &unk_1000D20E0);
  swift_endAccess();
  v16 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode];
  v17 = objc_opt_self();
  if (v16 == 3)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v24 = [v2 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v43 = v25;
    v44 = v27;
    v28._object = 0x80000001000DC170;
    v28._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v28);
    v29 = String._bridgeToObjectiveC()();

    [v17 logInfo:v29];

    sub_1000BF040();
  }

  else if (v16 == 2)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v18 = [v2 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v43 = v19;
    v44 = v21;
    v22._object = 0x80000001000DC1A0;
    v22._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    [v17 logInfo:v23];

    sub_1000BF040();
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v30 = [v2 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0xD000000000000036;
    v35._object = 0x80000001000DC130;
    String.append(_:)(v35);
    v36 = String._bridgeToObjectiveC()();

    [v17 logInfo:v36];

    v37 = v42;
    v38 = *(v42 + 40);
    if (v38)
    {
      [v38 invalidate];
      v39 = *(v37 + 40);
      *(v37 + 40) = 0;
    }

    v40 = *(v13 + 40);
    if (v40)
    {
      [v40 invalidate];
      v41 = *(v13 + 40);
      *(v13 + 40) = 0;
    }
  }
}

void sub_1000B76F4(void *a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v42 - v6);
  v8 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
  *(&v42 - v6) = a1;
  v9 = type metadata accessor for OpaqueAlarm();
  swift_storeEnumTagMultiPayload();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  v12 = a1;
  v42 = v8;
  sub_10004EC60(v7, v8 + v11, &qword_100114D70, &unk_1000D20E0);
  swift_endAccess();
  v13 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
  *v7 = v12;
  swift_storeEnumTagMultiPayload();
  v10(v7, 0, 1, v9);
  v14 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  v15 = v12;
  sub_10004EC60(v7, v13 + v14, &qword_100114D70, &unk_1000D20E0);
  swift_endAccess();
  v16 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode];
  v17 = objc_opt_self();
  if (v16 == 3)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v24 = [v2 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v43 = v25;
    v44 = v27;
    v28._object = 0x80000001000DC0D0;
    v28._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v28);
    v29 = String._bridgeToObjectiveC()();

    [v17 logInfo:v29];

    sub_1000BE9EC();
  }

  else if (v16 == 2)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v18 = [v2 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v43 = v19;
    v44 = v21;
    v22._object = 0x80000001000DC100;
    v22._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    [v17 logInfo:v23];

    sub_1000BE9EC();
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v30 = [v2 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0xD000000000000038;
    v35._object = 0x80000001000DC090;
    String.append(_:)(v35);
    v36 = String._bridgeToObjectiveC()();

    [v17 logInfo:v36];

    v37 = v42;
    v38 = *(v42 + 40);
    if (v38)
    {
      [v38 invalidate];
      v39 = *(v37 + 40);
      *(v37 + 40) = 0;
    }

    v40 = *(v13 + 40);
    if (v40)
    {
      [v40 invalidate];
      v41 = *(v13 + 40);
      *(v13 + 40) = 0;
    }
  }
}

void sub_1000B7B24(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v92 - v10;
  v12 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v92 - v17;
  v19 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost;
  v20 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost];
  if (v20)
  {
    v21 = [v20 parentViewController];
    if (v21)
    {

      return;
    }
  }

  v93 = v11;
  v94 = v9;
  v95 = v5;
  v96 = v4;
  v22 = objc_opt_self();
  v97 = a1;
  v98 = 0;
  v23 = v22;
  v99 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v24 = [v2 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v98 = v25;
  v99 = v27;
  v28._object = 0x80000001000DC070;
  v28._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v28);
  v29 = String._bridgeToObjectiveC()();

  v30 = v23;
  v31 = v97;
  [v30 logInfo:v29];

  sub_10004F058(&v18[*(v12 + 20)]);
  v32 = [objc_opt_self() mtOrange];
  *&v18[*(v12 + 24)] = Color.init(uiColor:)();
  v33 = swift_allocObject();
  *(v33 + 16) = v2;
  *(v33 + 24) = &off_100103958;
  *v18 = sub_10002555C;
  *(v18 + 1) = v33;
  v18[16] = 0;
  v34 = objc_allocWithZone(sub_1000032D4(&qword_100119800, &qword_1000D3978));
  *&v34[*((swift_isaMask & *v34) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000C02AC(v18, v16, type metadata accessor for TimerRunningCompressedTrailingView);
  v35 = v2;
  v36 = UIHostingController.init(rootView:)();
  sub_1000C0314(v18, type metadata accessor for TimerRunningCompressedTrailingView);
  v37 = *&v2[v19];
  *&v2[v19] = v36;
  v38 = v36;

  v39 = [v38 view];
  if (!v39)
  {
    __break(1u);
    goto LABEL_26;
  }

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!*&v2[v19])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v35 addChildViewController:?];
  v40 = *&v2[v19];
  if (!v40)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v40 didMoveToParentViewController:v35];
  v41 = *&v35[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
  if (v41)
  {
    v42 = *&v2[v19];
    if (v42)
    {
      v43 = [v42 view];
      if (v43)
      {
        v44 = v43;
        [v41 addSubview:v43];

        v45 = v93;
        sub_10004F058(v93);
        v46 = v94;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v47 = v96;
        v48 = *(v95 + 8);
        v48(v46, v96);
        v48(v45, v47);
        sub_10008BEF0();
        v49 = String._bridgeToObjectiveC()();

        [v41 setAccessibilityLabel:v49];

        v50 = v41;
        v51 = [v35 view];
        if (v51)
        {
          v52 = v51;
          [v51 addSubview:v50];

          [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
          v53 = *&v2[v19];
          if (v53)
          {
            v54 = [v53 view];
            if (v54)
            {
              v55 = v54;
              sub_1000032D4(&qword_100115480, &qword_1000D2510);
              v56 = swift_allocObject();
              *(v56 + 16) = xmmword_1000D24C0;
              v57 = [v55 leadingAnchor];
              v58 = [v50 leadingAnchor];
              v59 = [v57 constraintEqualToAnchor:v58];

              *(v56 + 32) = v59;
              v60 = [v55 trailingAnchor];
              v61 = [v50 trailingAnchor];
              v62 = [v60 constraintEqualToAnchor:v61];

              *(v56 + 40) = v62;
              v63 = [v55 topAnchor];
              v64 = [v50 topAnchor];
              v65 = [v63 constraintEqualToAnchor:v64];

              *(v56 + 48) = v65;
              v66 = [v55 bottomAnchor];
              v67 = [v50 bottomAnchor];
              v68 = [v66 constraintEqualToAnchor:v67];

              *(v56 + 56) = v68;
              v69 = [v50 trailingAnchor];
              v70 = [v35 view];
              if (v70)
              {
                v71 = v70;
                v72 = [v70 trailingAnchor];

                v73 = [v69 constraintEqualToAnchor:v72];
                *(v56 + 64) = v73;
                v74 = [v50 topAnchor];
                v75 = [v35 view];
                if (v75)
                {
                  v76 = v75;
                  v77 = [v75 topAnchor];

                  v78 = [v74 constraintEqualToAnchor:v77];
                  *(v56 + 72) = v78;
                  v79 = [v50 leadingAnchor];
                  v80 = [v35 view];
                  if (v80)
                  {
                    v81 = v80;
                    v82 = [v80 SBUISA_systemApertureObstructedAreaLayoutGuide];

                    v83 = [v82 trailingAnchor];
                    v84 = [v79 constraintEqualToAnchor:v83];

                    *(v56 + 80) = v84;
                    v85 = [v50 bottomAnchor];
                    v86 = [v35 view];
                    if (v86)
                    {
                      v87 = v86;
                      v88 = objc_opt_self();
                      v89 = [v87 bottomAnchor];

                      v90 = [v85 constraintEqualToAnchor:v89];
                      *(v56 + 88) = v90;
                      sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                      isa = Array._bridgeToObjectiveC()().super.isa;

                      [v88 activateConstraints:isa];

                      v31 = v97;
                      goto LABEL_20;
                    }

LABEL_36:
                    __break(1u);
                    return;
                  }

LABEL_35:
                  __break(1u);
                  goto LABEL_36;
                }

LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_20:
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    [objc_msgSend(v35 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    sub_1000BD5A0(v31);
  }
}

void sub_1000B8524(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost;
  v5 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost];
  if (v5)
  {
    v6 = [v5 parentViewController];
    if (v6)
    {

      return;
    }
  }

  v7 = objc_opt_self();
  _StringGuts.grow(_:)(25);
  v8 = [v1 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._object = 0x80000001000DC050;
  v12._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v7 logInfo:{v13, v9, v11}];

  [a1 remainingTime];
  v15 = v14;
  sub_10004F3B0();
  v17 = v16;
  v19 = v18;
  v20 = [objc_opt_self() mtOrange];
  v21 = Color.init(uiColor:)();
  v22 = objc_allocWithZone(sub_1000032D4(&qword_1001197F8, &unk_1000D7720));
  v78 = v17;
  v79 = v19;
  *(v22 + *((swift_isaMask & *v22) + qword_10011F398 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v23 = UIHostingController.init(rootView:)();
  v24 = *&v2[v4];
  *&v2[v4] = v23;
  v25 = v23;

  v26 = [v25 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_27;
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!*&v2[v4])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v2 addChildViewController:?];
  v27 = *&v2[v4];
  if (!v27)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v27 didMoveToParentViewController:v2];
  v28 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
  if (!v28)
  {
    goto LABEL_20;
  }

  v29 = *&v2[v4];
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = [v29 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  [v28 addSubview:v30];

  sub_10004F3B0();
  v32 = String._bridgeToObjectiveC()();

  [v28 setAccessibilityLabel:v32];

  v33 = v28;
  v34 = [v2 view];
  if (!v34)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v35 = v34;
  [v34 addSubview:v33];

  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = *&v2[v4];
  if (!v36)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v37 = [v36 view];
  if (!v37)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v38 = v37;
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000D24C0;
  v40 = [v38 leadingAnchor];
  v41 = [v33 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v39 + 32) = v42;
  v43 = [v38 trailingAnchor];
  v44 = [v33 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v39 + 40) = v45;
  v46 = [v38 topAnchor];
  v47 = [v33 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v39 + 48) = v48;
  v49 = [v38 bottomAnchor];
  v50 = [v33 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v39 + 56) = v51;
  v52 = [v33 trailingAnchor];
  v53 = [v2 view];
  if (!v53)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v54 = v53;
  v55 = [v53 trailingAnchor];

  v56 = [v52 constraintEqualToAnchor:v55];
  *(v39 + 64) = v56;
  v57 = [v33 topAnchor];
  v58 = [v2 view];
  if (!v58)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v59 = v58;
  v60 = [v58 topAnchor];

  v61 = [v57 constraintEqualToAnchor:v60];
  *(v39 + 72) = v61;
  v62 = [v33 leadingAnchor];
  v63 = [v2 view];
  if (!v63)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v64 = v63;
  v65 = [v63 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v66 = [v65 trailingAnchor];
  v67 = [v62 constraintEqualToAnchor:v66];

  *(v39 + 80) = v67;
  v68 = [v33 bottomAnchor];
  v69 = [v2 view];
  if (!v69)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v70 = v69;
  v71 = objc_opt_self();
  v72 = [v70 bottomAnchor];

  v73 = [v68 constraintEqualToAnchor:v72];
  *(v39 + 88) = v73;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v71 activateConstraints:isa];

LABEL_20:
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    [objc_msgSend(v2 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    v75 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer;
    v76 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer];
    if (v76)
    {
      [v76 invalidate];
      v77 = *&v2[v75];
      *&v2[v75] = 0;
    }
  }
}

void sub_1000B8D68()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v53 - v4);
  v6 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView];
  if (!v6)
  {
    return;
  }

  type metadata accessor for TimerApertureElementController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v6 setAccessibilityLabel:v11];

  v55 = v6;
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 addSubview:v55];

  v14 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
  v15 = sub_1000BE460(0);
  if (v15)
  {
    v16 = v15;
    v17 = objc_opt_self();
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v18 = [v1 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v58 = v19;
    v59 = v21;
    v22._object = 0x80000001000DA4B0;
    v22._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    [v17 logInfo:v23];

    v24 = v16;
    [v55 addSubview:v24];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = objc_opt_self();
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000D24B0;
    v27 = [v24 leadingAnchor];
    v28 = [v55 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v26 + 32) = v29;
    v30 = [v24 trailingAnchor];

    v31 = [v55 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v33 = [v24 topAnchor];

    v34 = [v55 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v26 + 48) = v35;
    v36 = [v24 bottomAnchor];

    v37 = [v55 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v26 + 56) = v38;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 activateConstraints:isa];

    v40 = &v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v41 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];
    if (v41)
    {
      v42 = *v40;
      v43 = qword_1001135F8;

      if (v43 != -1)
      {
        swift_once();
      }

      v56 = v42;
      v57 = v41;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.getEntry(for:)();

      sub_10004E3D4(&v58);
      if (v56)
      {
        *v5 = v56;
        v44 = type metadata accessor for OpaqueAlarm();
        swift_storeEnumTagMultiPayload();
        (*(*(v44 - 8) + 56))(v5, 0, 1, v44);
        v45 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
        swift_beginAccess();
        sub_10004EC60(v5, v14 + v45, &qword_100114D70, &unk_1000D20E0);
        swift_endAccess();
      }

      return;
    }

    v52 = v55;
  }

  else
  {
    v46 = objc_opt_self();
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v47 = [v1 description];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v58 = v48;
    v59 = v50;
    v51._countAndFlagsBits = 0xD00000000000002CLL;
    v51._object = 0x80000001000DA480;
    String.append(_:)(v51);
    v54 = String._bridgeToObjectiveC()();

    [v46 logInfo:v54];

    v52 = v54;
  }
}

void sub_1000B9474(void *a1)
{
  v3 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton])
  {
    sub_1000B9E20();
    sub_1000B9B44();
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1000D3860;
    v5 = *&v1[v3];
    if (v5)
    {
      v6 = [v5 leadingAnchor];
      v7 = [v1 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 leadingAnchor];

        v10 = [v6 constraintEqualToAnchor:v9 constant:16.0];
        *(v4 + 32) = v10;
        v11 = *&v1[v3];
        if (v11)
        {
          v12 = [v11 trailingAnchor];
          v13 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton;
          v14 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton];
          if (v14)
          {
            v15 = [v14 leadingAnchor];
            v16 = [v12 constraintEqualToAnchor:v15 constant:-10.0];

            *(v4 + 40) = v16;
            v17 = *&v1[v3];
            if (v17)
            {
              v18 = [v17 widthAnchor];
              v19 = *&v1[v3];
              if (v19)
              {
                v20 = [v19 heightAnchor];
                v21 = [v18 constraintEqualToAnchor:v20];

                *(v4 + 48) = v21;
                v22 = *&v1[v3];
                if (v22)
                {
                  v23 = [v22 widthAnchor];
                  v24 = *&v1[v13];
                  if (v24)
                  {
                    v25 = [v24 widthAnchor];
                    v26 = [v23 constraintEqualToAnchor:v25];

                    *(v4 + 56) = v26;
                    v27 = *&v1[v3];
                    if (v27)
                    {
                      v28 = [v27 widthAnchor];
                      v29 = *&v1[v13];
                      if (v29)
                      {
                        v30 = [v29 heightAnchor];
                        v31 = [v28 constraintEqualToAnchor:v30];

                        *(v4 + 64) = v31;
                        v32 = *&v1[v13];
                        if (v32)
                        {
                          v33 = [v32 trailingAnchor];
                          v34 = [v1 view];
                          if (v34)
                          {
                            v35 = v34;
                            v36 = [v34 SBUISA_systemApertureObstructedAreaLayoutGuide];

                            v37 = [v36 leadingAnchor];
                            v38 = [v33 constraintLessThanOrEqualToAnchor:v37];

                            *(v4 + 72) = v38;
                            v39 = *&v1[v3];
                            if (v39)
                            {
                              v40 = [v39 topAnchor];
                              v41 = [v1 view];
                              if (v41)
                              {
                                v42 = v41;
                                v43 = [v41 topAnchor];

                                v44 = [v40 constraintEqualToAnchor:v43 constant:17.0];
                                *(v4 + 80) = v44;
                                v45 = *&v1[v3];
                                if (v45)
                                {
                                  v46 = [v45 bottomAnchor];
                                  v47 = [v1 view];
                                  if (v47)
                                  {
                                    v48 = v47;
                                    v49 = [v47 bottomAnchor];

                                    v50 = [v46 constraintEqualToAnchor:v49 constant:-17.0];
                                    *(v4 + 88) = v50;
                                    v51 = *&v1[v13];
                                    if (v51)
                                    {
                                      v52 = [v51 topAnchor];
                                      v53 = [v1 view];
                                      if (v53)
                                      {
                                        v54 = v53;
                                        v55 = [v53 topAnchor];

                                        v56 = [v52 constraintEqualToAnchor:v55 constant:17.0];
                                        *(v4 + 96) = v56;
                                        v57 = *&v1[v13];
                                        if (v57)
                                        {
                                          v58 = [v57 bottomAnchor];
                                          v59 = [v1 view];
                                          if (v59)
                                          {
                                            v60 = v59;
                                            v61 = objc_opt_self();
                                            v62 = [v60 bottomAnchor];

                                            v63 = [v58 constraintEqualToAnchor:v62 constant:-17.0];
                                            *(v4 + 104) = v63;
                                            sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                                            isa = Array._bridgeToObjectiveC()().super.isa;

                                            [v61 activateConstraints:isa];

                                            goto LABEL_23;
                                          }

LABEL_47:
                                          __break(1u);
                                          return;
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

LABEL_39:
                          __break(1u);
                          goto LABEL_40;
                        }

LABEL_38:
                        __break(1u);
                        goto LABEL_39;
                      }

LABEL_37:
                      __break(1u);
                      goto LABEL_38;
                    }

LABEL_36:
                    __break(1u);
                    goto LABEL_37;
                  }

LABEL_35:
                  __break(1u);
                  goto LABEL_36;
                }

LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_23:
  v65 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage];
  if (v65)
  {
    v66 = v65;
    [a1 state];
    v67 = String._bridgeToObjectiveC()();

    [v66 setState:v67];
  }
}

void sub_1000B9B44()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  v4 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = UIButton.init(configuration:primaryAction:)();
  v6 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton;
  v7 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton];
  *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton] = v5;
  v8 = v5;

  v9 = [v8 layer];
  [v9 setCornerRadius:25.0];

  v10 = *&v1[v6];
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = [v10 layer];
  [v11 setMasksToBounds:1];

  v12 = *&v1[v6];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!*&v1[v6])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  [v13 addSubview:?];

  v15 = [objc_opt_self() sbui_systemApertureControlConfiguration];
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

  if (v17)
  {
    if (qword_100113670 != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v18 = [v17 imageWithSymbolConfiguration:qword_10011F6A8];

      v19 = *&v1[v6];
      if (v19)
      {
        break;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      swift_once();
    }
  }

  else
  {
    v18 = 0;
    v19 = *&v1[v6];
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  [v19 setImage:v18 forState:0];
  v20 = *&v1[v6];
  if (v20)
  {
    [v20 addTarget:v1 action:"stopAction" forControlEvents:64];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1000B9E20()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  v4 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = UIButton.init(configuration:primaryAction:)();
  v6 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton;
  v7 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton];
  *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton] = v5;
  v8 = v5;

  v9 = [v8 layer];
  [v9 setCornerRadius:25.0];

  v10 = *&v1[v6];
  if (!v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = [v10 layer];
  [v11 setMasksToBounds:1];

  v12 = *&v1[v6];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = *&v1[v6];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 mtOrange];
  v17 = [v16 colorWithAlphaComponent:0.35];

  [v15 setBackgroundColor:v17];
  v18 = *&v1[v6];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v18 addTarget:v1 action:"playPausedAction" forControlEvents:64];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!*&v1[v6])
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v19;
  [v19 addSubview:?];

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23 = objc_allocWithZone(BSUICAPackageView);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 initWithPackageName:v24 inBundle:v22];

  v26 = objc_opt_self();
  if (!v25)
  {
    _StringGuts.grow(_:)(50);
    v51 = [v1 description];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55._countAndFlagsBits = 0xD000000000000030;
    v55._object = 0x80000001000D80F0;
    String.append(_:)(v55);
    v50 = String._bridgeToObjectiveC()();

    [v26 logInfo:{v50, v52, v54}];
    goto LABEL_13;
  }

  _StringGuts.grow(_:)(30);
  v27 = [v1 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31._object = 0x80000001000DA4B0;
  v31._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v31);
  v32 = String._bridgeToObjectiveC()();

  [v26 logInfo:{v32, v28, v30}];

  v33 = *&v1[v6];
  if (!v33)
  {
    goto LABEL_20;
  }

  v34 = v25;
  [v33 addSubview:v34];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v34 setUserInteractionEnabled:0];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000D24B0;
  v36 = [v34 widthAnchor];
  v37 = [v36 constraintEqualToConstant:23.0];

  *(v35 + 32) = v37;
  v38 = [v34 heightAnchor];

  v39 = [v38 constraintEqualToConstant:23.0];
  *(v35 + 40) = v39;
  v40 = [v34 centerXAnchor];

  v41 = *&v1[v6];
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = [v41 centerXAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];

  *(v35 + 48) = v43;
  v44 = [v34 centerYAnchor];

  v45 = *&v1[v6];
  if (v45)
  {
    v46 = objc_opt_self();
    v47 = [v45 centerYAnchor];
    v48 = [v44 constraintEqualToAnchor:v47];

    *(v35 + 56) = v48;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 activateConstraints:isa];

    v50 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage];
    *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage] = v25;
LABEL_13:

    return;
  }

LABEL_22:
  __break(1u);
}

void sub_1000BA4C8(void *a1)
{
  v2 = v1;
  sub_1000B9474(a1);
  v4 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost])
  {
    v5 = objc_allocWithZone(sub_1000032D4(&qword_1001197D8, &qword_1000D7710));
    v85 = sub_1000A9C68;
    v86 = 0;
    v87 = 0;
    v88 = a1;
    LOBYTE(v89) = 0;
    *&v5[*((swift_isaMask & *v5) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    v6 = a1;
    v7 = UIHostingController.init(rootView:)();
    v8 = [v7 view];
    if (!v8)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v9 = v8;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [v7 view];
    if (!v10)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = v10;
    v12 = [v10 layer];

    [v12 setAllowsHitTesting:0];
    [v2 addChildViewController:v7];
    v13 = [v2 view];
    if (!v13)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v14 = v13;
    v15 = [v7 view];

    if (!v15)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    [v14 addSubview:v15];

    [v7 didMoveToParentViewController:v2];
    v16 = *&v2[v4];
    *&v2[v4] = v7;
  }

  v17 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost])
  {
LABEL_15:
    v41 = *&v2[v4];
    if (v41)
    {
      v42 = [v41 view];
      if (v42)
      {
        v43 = v42;
        v44 = *&v2[v17];
        if (v44)
        {
          v45 = [v44 view];
          if (v45)
          {
            v46 = v45;
            v47 = [v2 view];
            if (v47)
            {
              v48 = v47;
              v82 = a1;
              v83 = v4;
              v84 = [v47 SBUISA_systemApertureObstructedAreaLayoutGuide];

              sub_1000032D4(&qword_100115480, &qword_1000D2510);
              v49 = swift_allocObject();
              *(v49 + 16) = xmmword_1000D5170;
              v50 = [v46 bottomAnchor];
              v51 = [v2 view];
              if (v51)
              {
                v52 = v51;
                v53 = [v51 bottomAnchor];

                v54 = [v50 constraintEqualToAnchor:v53 constant:-21.0];
                *(v49 + 32) = v54;
                v55 = [v46 leadingAnchor];
                v56 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton];
                if (v56)
                {
                  v57 = [v56 trailingAnchor];
                  v58 = [v55 constraintGreaterThanOrEqualToAnchor:v57 constant:12.0];

                  *(v49 + 40) = v58;
                  v59 = [v43 leadingAnchor];
                  v60 = [v84 trailingAnchor];
                  v61 = [v59 constraintGreaterThanOrEqualToAnchor:v60];

                  *(v49 + 48) = v61;
                  v62 = [v43 leadingAnchor];
                  v63 = [v46 trailingAnchor];
                  v64 = [v62 constraintEqualToAnchor:v63 constant:5.0];

                  *(v49 + 56) = v64;
                  v65 = [v43 trailingAnchor];
                  v66 = [v2 view];
                  if (v66)
                  {
                    v67 = v66;
                    v68 = objc_opt_self();
                    v69 = [v67 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

                    v70 = [v69 trailingAnchor];
                    v71 = [v65 constraintEqualToAnchor:v70];

                    *(v49 + 64) = v71;
                    v72 = [v43 lastBaselineAnchor];
                    v73 = [v46 lastBaselineAnchor];
                    v74 = [v72 constraintEqualToAnchor:v73];

                    *(v49 + 72) = v74;
                    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v68 activateConstraints:isa];

                    [v46 setNeedsUpdateConstraints];
                    v76 = *&v2[v83];
                    if (v76)
                    {
                      v77 = v82;
                      v78 = v76;
                      v79 = dispatch thunk of UIHostingController.rootView.modify();
                      v81 = *(v80 + 24);
                      *(v80 + 24) = v77;

                      v79(&v85, 0);
                      return;
                    }

                    goto LABEL_33;
                  }

LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v18 = [a1 displayTitle];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v85 = v19;
  v86 = v21;
  sub_100025FB4();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (qword_100113690 != -1)
  {
    swift_once();
  }

  v29 = qword_10011F6C8;
  v30 = objc_allocWithZone(sub_1000032D4(&qword_1001197E8, &qword_1000D7718));
  v85 = v22;
  v86 = v24;
  v87 = v26 & 1;
  v88 = v28;
  v89 = v29;
  *(v30 + *((swift_isaMask & *v30) + qword_10011F398 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();

  v31 = UIHostingController.init(rootView:)();
  v32 = [v31 view];
  if (!v32)
  {
    goto LABEL_36;
  }

  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = [v31 view];
  if (!v34)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v35 = v34;
  v36 = [v34 layer];

  [v36 setAllowsHitTesting:0];
  [v2 addChildViewController:v31];
  v37 = [v2 view];
  if (!v37)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v38 = v37;
  v39 = [v31 view];

  if (v39)
  {
    [v38 addSubview:v39];

    [v31 didMoveToParentViewController:v2];
    v40 = *&v2[v17];
    *&v2[v17] = v31;

    goto LABEL_15;
  }

LABEL_41:
  __break(1u);
}

void sub_1000BAD90(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(48);
  v5 = [v1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v112 = v6;
  v113 = v8;
  v9._object = 0x80000001000DC020;
  v9._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v9);
  v10 = [a1 timerIDString];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15 = String._bridgeToObjectiveC()();

  [v4 logInfo:v15];

  v16 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost;
  if (!*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost])
  {
    if (qword_100113628 != -1)
    {
      swift_once();
    }

    v17 = qword_10011F500;
    v114 = type metadata accessor for TimerCoordinator();
    v115 = &off_100102388;
    v113 = v17;
    v18 = objc_opt_self();

    v19 = [v18 mtOrange];
    v20 = Color.init(uiColor:)();
    v21 = [v18 mtOrange];
    Color.init(uiColor:)();
    v22 = Color.opacity(_:)();

    v23 = static Color.white.getter();
    static Color.white.getter();
    v24 = Color.opacity(_:)();

    v117 = &type metadata for StandardSessionUiConfig;
    v118 = &off_1001035E8;
    v25 = swift_allocObject();
    v25[2] = v20;
    v25[3] = v22;
    v25[4] = v23;
    v25[5] = v24;
    v116 = v25;
    v112 = a1;
    v26 = objc_allocWithZone(sub_1000032D4(&qword_1001197B8, &qword_1000D76F0));
    *&v26[*((swift_isaMask & *v26) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_1000A4684(&v112, v111);
    v27 = a1;
    v28 = UIHostingController.init(rootView:)();
    sub_1000C0220(&v112);
    v29 = v28;
    v30 = [v29 view];
    if (!v30)
    {
      goto LABEL_38;
    }

    v31 = v30;
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    [v2 addChildViewController:v29];
    v32 = [v2 view];
    if (!v32)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v33 = v32;
    v34 = [v29 view];

    if (!v34)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    [v33 addSubview:v34];

    [v29 didMoveToParentViewController:v2];
    v35 = *&v2[v16];
    *&v2[v16] = v29;
  }

  v36 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost])
  {
LABEL_14:
    v49 = *&v2[v16];
    if (v49)
    {
      v50 = [v49 view];
      if (v50)
      {
        v51 = v50;
        v52 = *&v2[v36];
        if (v52)
        {
          v53 = [v52 view];
          if (v53)
          {
            v54 = v53;
            v55 = [v2 view];
            if (v55)
            {
              v56 = v55;
              v110 = [v55 SBUISA_systemApertureObstructedAreaLayoutGuide];

              v57 = [v2 view];
              if (v57)
              {
                v58 = v57;
                v109 = [v57 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

                sub_1000032D4(&qword_100115480, &qword_1000D2510);
                v59 = swift_allocObject();
                *(v59 + 16) = xmmword_1000D59F0;
                v60 = [v51 leadingAnchor];
                v61 = [v2 view];
                if (v61)
                {
                  v62 = v61;
                  v63 = [v61 leadingAnchor];

                  v64 = [v60 constraintEqualToAnchor:v63 constant:16.0];
                  *(v59 + 32) = v64;
                  v65 = [v51 centerYAnchor];
                  v66 = [v2 view];
                  if (v66)
                  {
                    v67 = v66;
                    v68 = [v66 centerYAnchor];

                    v69 = [v65 constraintEqualToAnchor:v68];
                    *(v59 + 40) = v69;
                    v70 = [v51 trailingAnchor];
                    v71 = [v110 leadingAnchor];
                    v72 = [v70 constraintEqualToAnchor:v71];

                    *(v59 + 48) = v72;
                    v112 = v59;
                    v73 = v109;
                    [v109 layoutFrame];
                    [v54 sizeThatFits:{1.79769313e308, CGRectGetHeight(v119)}];
                    v75 = v74;
                    v76 = [v2 view];
                    if (v76)
                    {
                      v77 = v76;
                      [v76 SBUISA_maximumAccessoryViewWidth];
                      v79 = v78;

                      if (v75 <= v79)
                      {
                        inited = swift_initStackObject();
                        *(inited + 16) = xmmword_1000D59F0;
                        v98 = [v54 leadingAnchor];
                        v82 = v110;
                        v99 = [v110 trailingAnchor];
                        v100 = [v98 constraintEqualToAnchor:v99];

                        *(inited + 32) = v100;
                        v101 = [v54 centerYAnchor];
                        v102 = [v51 centerYAnchor];
                        v103 = [v101 constraintEqualToAnchor:v102];

                        *(inited + 40) = v103;
                        v104 = [v54 trailingAnchor];
                        v105 = [v109 trailingAnchor];
                        v106 = [v104 constraintEqualToAnchor:v105];

                        *(inited + 48) = v106;
                        v96 = inited;
                        goto LABEL_27;
                      }

                      v80 = swift_initStackObject();
                      *(v80 + 16) = xmmword_1000D24B0;
                      v81 = [v54 topAnchor];
                      v82 = v110;
                      v83 = [v110 bottomAnchor];
                      v84 = [v81 constraintEqualToAnchor:v83];

                      *(v80 + 32) = v84;
                      v85 = [v54 leadingAnchor];
                      v86 = [v51 trailingAnchor];
                      v87 = [v85 constraintEqualToAnchor:v86 constant:12.0];

                      *(v80 + 40) = v87;
                      v88 = [v54 bottomAnchor];
                      v89 = [v2 view];
                      if (v89)
                      {
                        v90 = v89;
                        v91 = [v89 bottomAnchor];

                        v92 = [v88 constraintEqualToAnchor:v91 constant:-21.0];
                        *(v80 + 48) = v92;
                        v93 = [v54 trailingAnchor];
                        v73 = v109;
                        v94 = [v109 trailingAnchor];
                        v95 = [v93 constraintEqualToAnchor:v94];

                        *(v80 + 56) = v95;
                        v96 = v80;
LABEL_27:
                        sub_1000BB994(v96);
                        v107 = objc_opt_self();
                        sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                        isa = Array._bridgeToObjectiveC()().super.isa;

                        [v107 activateConstraints:isa];

                        return;
                      }

                      goto LABEL_37;
                    }

LABEL_36:
                    __break(1u);
LABEL_37:
                    __break(1u);
LABEL_38:
                    __break(1u);
                    goto LABEL_39;
                  }

LABEL_35:
                  __break(1u);
                  goto LABEL_36;
                }

LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v37 = objc_allocWithZone(sub_1000032D4(&qword_1001197C0, &unk_1000D76F8));
  v112 = a1;
  *&v37[*((swift_isaMask & *v37) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v38 = a1;
  v39 = UIHostingController.init(rootView:)();
  v40 = [v39 view];
  if (!v40)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v41 = v40;
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = [v39 view];
  if (!v42)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v43 = v42;
  v44 = [v42 layer];

  [v44 setAllowsHitTesting:0];
  [v2 addChildViewController:v39];
  v45 = [v2 view];
  if (!v45)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v46 = v45;
  v47 = [v39 view];

  if (v47)
  {
    [v46 addSubview:v47];

    [v39 didMoveToParentViewController:v2];
    v48 = *&v2[v36];
    *&v2[v36] = v39;

    goto LABEL_14;
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_1000BB994(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1000BFEF4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000BFF94(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

void sub_1000BBA84(void *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._countAndFlagsBits = 0x6E69766F6D657220;
  v6._object = 0xEA00000000002067;
  String.append(_:)(v6);
  v7 = [v4 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12 = String._bridgeToObjectiveC()();

  [v3 logInfo:v12];

  v17 = v4;
  v13 = [v17 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v13 superview];

  v16 = v17;
  if (v15)
  {

    v16 = [v17 view];
    if (v16)
    {
      [v16 removeFromSuperview];
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:

  [v17 removeFromParentViewController];
}

void sub_1000BBC60()
{
  v1 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost];
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

    [v3 didMoveToParentViewController:0];
    [v0 removeChildViewController:v3];

    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v7 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost;
  v8 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost];
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

  [v9 didMoveToParentViewController:0];
  [v0 removeChildViewController:v9];

  v12 = *&v0[v7];
  *&v0[v7] = 0;
}

void sub_1000BBDA8()
{
  v1 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_15;
    }

    v5 = v4;
    [v4 removeFromSuperview];

    [v3 didMoveToParentViewController:0];
    [v0 removeChildViewController:v3];

    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v7 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost;
  v8 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost];
  if (v8)
  {
    v9 = v8;
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];

      [v9 didMoveToParentViewController:0];
      [v0 removeChildViewController:v9];

      v12 = *&v0[v7];
      *&v0[v7] = 0;

      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_7:
  v13 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton;
  v14 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v0[v13];
    *&v0[v13] = 0;
  }

  v16 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton;
  v17 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton];
  if (v17)
  {
    [v17 removeFromSuperview];
    v18 = *&v0[v16];
    *&v0[v16] = 0;
  }
}

void sub_1000BBF38()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(27);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._object = 0x80000001000D8250;
  v7._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:{v8, v4, v6}];

  v9 = &v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  v10 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = *v9;
  v12 = qword_1001135F8;
  v13 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];

  if (v12 != -1)
  {
    swift_once();
  }

  v51 = v11;
  v52 = v10;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v48);
  v14 = v50;
  if (v50)
  {
    if ([v50 state] == 2)
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);
      v15 = [v1 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v48 = v16;
      v49 = v18;
      v19._countAndFlagsBits = 0x6E696D7573657220;
      v19._object = 0xEF72656D69742067;
      String.append(_:)(v19);
      v20 = String._bridgeToObjectiveC()();

      [v2 logInfo:v20];

      v21 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage];
      if (v21)
      {
        v22 = v21;
        v23 = String._bridgeToObjectiveC()();
        [v22 setState:v23];
      }

      if (qword_100113628 != -1)
      {
        swift_once();
      }

      v24 = [v14 timerIDString];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      sub_1000790AC(v25, v27);
    }

    else
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v35 = [v1 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v48 = v36;
      v49 = v38;
      v39._countAndFlagsBits = 0x676E697375617020;
      v39._object = 0xEE0072656D697420;
      String.append(_:)(v39);
      v40 = String._bridgeToObjectiveC()();

      [v2 logInfo:v40];

      v41 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage];
      if (v41)
      {
        v42 = v41;
        v43 = String._bridgeToObjectiveC()();
        [v42 setState:v43];
      }

      if (qword_100113628 != -1)
      {
        swift_once();
      }

      v44 = [v14 timerIDString];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      sub_100078B44(v45, v47);
    }
  }

  else
  {
LABEL_11:
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v28 = [v1 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v48 = v29;
    v49 = v31;
    v32._countAndFlagsBits = 0xD000000000000022;
    v32._object = 0x80000001000DBFF0;
    String.append(_:)(v32);
    v33 = *(v9 + 1);
    v51 = *v9;
    v52 = v33;

    sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    v14 = String._bridgeToObjectiveC()();

    [v2 logInfo:v14];
  }
}

void sub_1000BC4BC()
{
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(32);
  v2 = [v0 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._object = 0x80000001000DBFD0;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v6);
  v7 = &v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  v14 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  v15 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];

  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9 = String._bridgeToObjectiveC()();

  [v1 logInfo:{v9, v14, v15, v3, v5}];

  v10 = v7[1];
  if (v10)
  {
    v11 = *v7;
    v12 = qword_100113628;
    v13 = v7[1];

    if (v12 != -1)
    {
      swift_once();
    }

    sub_100079614(v11, v10);
  }
}

void sub_1000BC698(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = objc_opt_self();
  _StringGuts.grow(_:)(21);
  v9 = [v3 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._object = 0x80000001000DC250;
  v13._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v8 logInfo:{v14, v10, v12}];

  v19.receiver = v3;
  v19.super_class = type metadata accessor for TimerApertureElementController(0);
  objc_msgSendSuper2(&v19, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  v18[4] = sub_1000C03AC;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000C1628;
  v18[3] = &unk_100103B20;
  v16 = _Block_copy(v18);
  v17 = v4;

  [a1 animateAlongsideTransition:v16 completion:0];
  _Block_release(v16);
}

void sub_1000BC870(uint64_t a1, char *a2)
{
  v3 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode;
  v4 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode];
  v5 = objc_opt_self();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      _StringGuts.grow(_:)(31);
      v30 = [a2 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v73 = v31;
      v74 = v33;
      v34._object = 0x80000001000D9F40;
      v34._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v34);
      v35 = String._bridgeToObjectiveC()();

      [v5 logInfo:v35];

      sub_1000BBDA8();
      sub_1000BD41C();
      v36 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
      v37 = *(v36 + 40);
      if (v37)
      {
        [v37 invalidate];
        v38 = *(v36 + 40);
        *(v36 + 40) = 0;
      }

      v39 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
      if (v40)
      {
        [v40 setHidden:1];
      }

      v41 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView];
      if (v41)
      {

        [v41 setHidden:0];
      }

      return;
    }

    if (v4 != 3)
    {
      if (v4 == 4)
      {
        _StringGuts.grow(_:)(30);
        v6 = [a2 description];
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        v73 = v7;
        v74 = v9;
        v10._countAndFlagsBits = 0xD00000000000001CLL;
        v10._object = 0x80000001000D9F00;
        String.append(_:)(v10);
        v11 = String._bridgeToObjectiveC()();

        [v5 logInfo:v11];

        v12 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
        v13 = *(v12 + 40);
        if (v13)
        {
          [v13 invalidate];
          v14 = *(v12 + 40);
          *(v12 + 40) = 0;
        }

        v15 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
        v16 = *(v15 + 40);
        if (v16)
        {
          [v16 invalidate];
          v17 = *(v15 + 40);
          *(v15 + 40) = 0;
        }

        v18 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView];
        if (v18)
        {
          [v18 setHidden:1];
        }

        v19 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
        if (v19)
        {
          [v19 setHidden:1];
        }

        v20 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView];
        if (v20)
        {
          [v20 setHidden:1];
        }

        if (*&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
        {
          v21 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
          v22 = qword_1001135F8;
          v23 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];

          if (v22 != -1)
          {
            swift_once();
          }

          AnyHashable.init<A>(_:)();
          dispatch thunk of DataStore.getEntry(for:)();
          sub_10004E3D4(&v73);
          if (v21)
          {
            if (*&a2[v3] == 4)
            {
              if ([v21 isFiring])
              {
                sub_1000BBDA8();
                sub_1000BAD90(v21);
              }

              else
              {
                sub_1000BBC60();
                sub_1000BA4C8(v21);
              }
            }
          }
        }

        return;
      }

      goto LABEL_48;
    }

    _StringGuts.grow(_:)(31);
    v42 = [a2 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v73 = v43;
    v74 = v45;
    v46._object = 0x80000001000D9F20;
    v46._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v46);
    v47 = String._bridgeToObjectiveC()();

    [v5 logInfo:v47];

    sub_1000BBDA8();
    sub_1000BD428();
    v48 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
    v49 = *(v48 + 40);
    if (v49)
    {
      [v49 invalidate];
      v50 = *(v48 + 40);
      *(v48 + 40) = 0;
    }

    v51 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView];
    if (v51)
    {
      [v51 setHidden:0];
    }

    v52 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
    if (v52)
    {
      [v52 setHidden:0];
    }

    v53 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView];
    if (v53)
    {
      [v53 setHidden:1];
    }

    v72 = [objc_msgSend(a2 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    if (!v72)
    {
      return;
    }

    if ([v72 isUserInitiated])
    {
      sub_1000BD124();
    }

LABEL_47:
    v59 = v72;
LABEL_53:

    return;
  }

  if (!v4)
  {
    _StringGuts.grow(_:)(31);
    v54 = [a2 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v73 = v55;
    v74 = v57;
    v58._object = 0x80000001000D9F60;
    v58._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v58);
    v72 = String._bridgeToObjectiveC()();

    [v5 logInfo:v72];
    goto LABEL_47;
  }

  if (v4 == 1)
  {
    _StringGuts.grow(_:)(32);
    v24 = [a2 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v73 = v25;
    v74 = v27;
    v28._countAndFlagsBits = 0xD00000000000001ELL;
    v28._object = 0x80000001000D9EE0;
    String.append(_:)(v28);
    v29 = String._bridgeToObjectiveC()();

    [v5 logInfo:v29];

    sub_1000BBDA8();
    goto LABEL_49;
  }

LABEL_48:
  v73 = 0;
  v74 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v60 = [a2 description];
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64._countAndFlagsBits = v61;
  v64._object = v63;
  String.append(_:)(v64);

  v65._countAndFlagsBits = 0xD000000000000034;
  v65._object = 0x80000001000DC270;
  String.append(_:)(v65);
  v66 = String._bridgeToObjectiveC()();

  [v5 logInfo:v66];

LABEL_49:
  v67 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
  v68 = *(v67 + 40);
  if (v68)
  {
    [v68 invalidate];
    v69 = *(v67 + 40);
    *(v67 + 40) = 0;
  }

  v70 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
  v71 = *(v70 + 40);
  if (v71)
  {
    [v71 invalidate];
    v59 = *(v70 + 40);
    *(v70 + 40) = 0;
    goto LABEL_53;
  }
}

void sub_1000BD124()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(25);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v28 = v4;
  v29 = v6;
  v7._object = 0x80000001000D9BB0;
  v7._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:v8];

  if (*&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
  {
    v9 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v10 = qword_1001135F8;
    v11 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];

    if (v10 != -1)
    {
      swift_once();
    }

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(&v28);
    v12 = v9;
    if (v9)
    {
      if ([v9 isFiring])
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        v13 = [v1 description];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v28 = v14;
        v29 = v16;
        v17._countAndFlagsBits = 0xD000000000000020;
        v17._object = 0x80000001000DBFA0;
        String.append(_:)(v17);
        v18 = [v12 timerIDString];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22._countAndFlagsBits = v19;
        v22._object = v21;
        String.append(_:)(v22);

        v23 = String._bridgeToObjectiveC()();

        [v2 logInfo:v23];

        if (qword_100113628 != -1)
        {
          swift_once();
        }

        v24 = [v12 timerIDString];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        sub_100079E30(v25, v27);
      }
    }
  }
}

void sub_1000BD434(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8))
  {
    v3 = v1;
    v4 = *(v1 + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId);
    v5 = qword_1001135F8;

    if (v5 != -1)
    {
      swift_once();
    }

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v8);
    if (v4)
    {
      v6 = [v4 state];
      v7 = *(v3 + *a1);
      if (v6 == 2)
      {
        sub_1000BF040();
      }

      else
      {
        sub_1000BE9EC();
      }
    }
  }
}

void sub_1000BD5A0(void *a1)
{
  v2 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer])
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v11[4] = sub_1000BFEEC;
    v11[5] = v5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100082B6C;
    v11[3] = &unk_100103A80;
    v6 = _Block_copy(v11);
    v7 = v1;
    v8 = a1;

    v9 = [v4 scheduledTimerWithTimeInterval:1 repeats:v6 block:1.0];
    _Block_release(v6);
    v10 = *&v1[v2];
    *&v1[v2] = v9;
  }
}

uint64_t sub_1000BD6C4(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
  if (v11)
  {
    sub_10004F058(&v15 - v9);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v12 = *(v4 + 8);
    v12(v8, v3);
    v12(v10, v3);
    sub_10008BEF0();
    v13 = String._bridgeToObjectiveC()();

    [v11 setAccessibilityLabel:v13];
  }

  [objc_msgSend(a2 "systemApertureElementContext")];
  return swift_unknownObjectRelease();
}

void sub_1000BD894()
{
  sub_1000BF780(319, &qword_100119590, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000BD9C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B00C(a1, &aBlock);
  sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
  sub_10002BB3C(0, &qword_100115DB8, MTTimer_ptr);
  if (swift_dynamicCast())
  {
    v61 = v10;
    v62 = v9;
    v63 = v5;

    v14 = objc_opt_self();
    aBlock = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v15 = [v2 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD000000000000033;
    v20._object = 0x80000001000DA400;
    String.append(_:)(v20);
    v21 = [v2 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26 = String._bridgeToObjectiveC()();

    [v14 logInfo:v26];

    v27 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];
    if (v27)
    {
      v28 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
      v29 = qword_1001135F8;
      v30 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];

      if (v29 != -1)
      {
        swift_once();
      }

      v70 = v28;
      v71 = v27;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.getEntry(for:)();
      sub_10004E3D4(&aBlock);
      v31 = v70;
      if (v70)
      {
        aBlock = 0;
        v65 = 0xE000000000000000;
        _StringGuts.grow(_:)(18);
        v32 = [v2 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        aBlock = v33;
        v65 = v35;
        v36._object = 0x80000001000DA460;
        v36._countAndFlagsBits = 0xD000000000000010;
        String.append(_:)(v36);
        v37 = String._bridgeToObjectiveC()();

        [v14 logInfo:v37];

        sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
        v60 = static OS_dispatch_queue.main.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = v2;
        *(v38 + 24) = v31;
        v68 = sub_1000BFDBC;
        v69 = v38;
        aBlock = _NSConcreteStackBlock;
        v65 = 1107296256;
        v66 = sub_10004B270;
        v67 = &unk_100103990;
        v39 = _Block_copy(&aBlock);
        v40 = v2;
        v41 = v31;

        static DispatchQoS.unspecified.getter();
        aBlock = &_swiftEmptyArrayStorage;
        sub_1000BFDFC(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000032D4(&unk_100115D90, qword_1000D3C00);
        sub_10002DAD8(&qword_100116270, &unk_100115D90, qword_1000D3C00);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v42 = v60;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v39);

        (*(v63 + 8))(v8, v4);
        (*(v61 + 8))(v13, v62);
        return;
      }
    }

    aBlock = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    v55 = [v2 description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    aBlock = v56;
    v65 = v58;
    v59._countAndFlagsBits = 0xD000000000000011;
    v59._object = 0x80000001000DA440;
    String.append(_:)(v59);
    v54 = String._bridgeToObjectiveC()();

    [v14 logInfo:v54];
  }

  else
  {
    v43 = objc_opt_self();
    aBlock = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v44 = [v2 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    aBlock = v45;
    v65 = v47;
    v48._countAndFlagsBits = 0xD000000000000027;
    v48._object = 0x80000001000DA3D0;
    String.append(_:)(v48);
    v49 = [v2 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53._countAndFlagsBits = v50;
    v53._object = v52;
    String.append(_:)(v53);

    v54 = String._bridgeToObjectiveC()();

    [v43 logInfo:v54];
  }
}

uint64_t sub_1000BE0EC()
{
  v1 = (*v0 + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_observerId);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1000BE12C()
{
  v1 = [v0 systemApertureElementContext];
  v4[4] = Frame.timestamp.getter;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10004B270;
  v4[3] = &unk_1001039B8;
  v2 = _Block_copy(v4);
  [v1 setElementNeedsUpdateWithCoordinatedAnimations:v2];
  _Block_release(v2);
  return swift_unknownObjectRelease();
}

id sub_1000BE408()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimerApertureAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000BE460(unsigned __int8 a1)
{
  v2 = v1;
  v4 = 0xD000000000000013;
  v5 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8 = objc_allocWithZone(BSUICAPackageView);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithPackageName:v9 inBundle:v7];

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 publishedObjectWithName:v11];

    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35 = v33;
    v36 = v34;
    if (*(&v34 + 1))
    {
      sub_10002BB3C(0, &qword_100119798, CAShapeLayer_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_18:
        v27 = objc_opt_self();
        *&v35 = 0;
        *(&v35 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        type metadata accessor for TimerAnimationCountdown(0);
        _print_unlocked<A, B>(_:_:)();
        v28._countAndFlagsBits = 0xD000000000000026;
        v28._object = 0x80000001000DBF40;
        String.append(_:)(v28);
        v15 = String._bridgeToObjectiveC()();

        [v27 logInfo:v15];
        goto LABEL_19;
      }

      v16 = String._bridgeToObjectiveC()();
      v17 = [v10 publishedObjectWithName:v16];

      if (v17)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
      }

      v35 = v33;
      v36 = v34;
      if (*(&v34 + 1))
      {
        sub_10002BB3C(0, &qword_1001197A0, CALayer_ptr);
        if (swift_dynamicCast())
        {
          v18 = objc_opt_self();
          *&v35 = 0;
          *(&v35 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(43);
          type metadata accessor for TimerAnimationCountdown(0);
          _print_unlocked<A, B>(_:_:)();
          v19._countAndFlagsBits = 0xD000000000000029;
          v19._object = 0x80000001000DBF70;
          String.append(_:)(v19);
          v20 = String._bridgeToObjectiveC()();

          [v18 logInfo:v20];

          v21 = v2[2];
          v2[2] = v10;
          v22 = v10;

          v23 = v2[3];
          v2[3] = v32;
          v24 = v32;

          v25 = v2[4];
          v2[4] = v32;
          v15 = v32;

          if (a1 > 1u)
          {
            if (a1 != 2)
            {
              v26 = 0x80000001000D7DE0;
              goto LABEL_24;
            }
          }

          else if (a1)
          {
            v26 = 0xED00006465737561;
            v4 = 0x702D6F6E696D6F64;
LABEL_24:
            v30 = (v2 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
            v31 = *(v2 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier + 8);
            *v30 = v4;
            v30[1] = v26;

            sub_1000BF2B0(0.0);

            goto LABEL_19;
          }

          v26 = 0xE600000000000000;
          v4 = 0x646573756170;
          goto LABEL_24;
        }

        goto LABEL_18;
      }
    }

    sub_10002D02C(&v35, &qword_100119790, &unk_1000D76E0);
    goto LABEL_18;
  }

  v13 = objc_opt_self();
  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  type metadata accessor for TimerAnimationCountdown(0);
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 0xD00000000000002CLL;
  v14._object = 0x80000001000DBF10;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  [v13 logInfo:v15];
  v10 = 0;
LABEL_19:

  return v10;
}

void sub_1000BE9EC()
{
  v1 = v0;
  v2 = type metadata accessor for OpaqueAlarm();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = *(v1 + 40);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(v1 + 40);
    *(v1 + 40) = 0;
  }

  v13 = [objc_opt_self() displayLinkWithTarget:v1 selector:"updateCountdownAnimation"];
  v14 = *(v1 + 40);
  *(v1 + 40) = v13;
  v15 = v13;

  if (v15)
  {
    v16 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
    swift_beginAccess();
    sub_10002CFC4(v1 + v16, v10, &qword_100114D70, &unk_1000D20E0);
    if ((*(v3 + 48))(v10, 1, v2))
    {
      sub_10002D02C(v10, &qword_100114D70, &unk_1000D20E0);
    }

    else
    {
      sub_1000C02AC(v10, v6, type metadata accessor for OpaqueAlarm);
      sub_10002D02C(v10, &qword_100114D70, &unk_1000D20E0);
      v18 = sub_10008AEC0();
      sub_1000C0314(v6, type metadata accessor for OpaqueAlarm);
      if (v18 >= 0.0 && v18 < 10.0)
      {
        v17 = 30;
        goto LABEL_22;
      }

      if (v18 < 10.0 || v18 >= 45.0)
      {
        if (v18 >= 240.0 || v18 < 45.0)
        {
          v17 = 1;
        }

        else
        {
          v17 = 5;
        }

        goto LABEL_22;
      }
    }

    v17 = 10;
LABEL_22:
    [v15 setPreferredFramesPerSecond:v17];
  }

  v22 = *(v1 + 40);
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 currentRunLoop];
    [v24 addToRunLoop:v25 forMode:NSRunLoopCommonModes];
  }
}

void sub_1000BECF4()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for OpaqueAlarm();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002CFC4(v1 + v11, v5, &qword_100114D70, &unk_1000D20E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002D02C(v5, &qword_100114D70, &unk_1000D20E0);
    v12 = objc_opt_self();
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v19 = v1;
    type metadata accessor for TimerAnimationCountdown(0);
    _print_unlocked<A, B>(_:_:)();
    v13._object = 0x80000001000DBEA0;
    v13._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v13);
    v14 = String._bridgeToObjectiveC()();

    [v12 logInfo:v14];
  }

  else
  {
    sub_10004DF2C(v5, v10);
    if (sub_10008B160())
    {
      sub_10008AB30();
      sub_1000BF2B0(v15);
    }

    else
    {
      v16 = objc_opt_self();
      v20 = 0;
      v21 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v19 = v1;
      type metadata accessor for TimerAnimationCountdown(0);
      _print_unlocked<A, B>(_:_:)();
      v17._countAndFlagsBits = 0xD000000000000036;
      v17._object = 0x80000001000DBED0;
      String.append(_:)(v17);
      v18 = String._bridgeToObjectiveC()();

      [v16 logInfo:v18];
    }

    sub_1000C0314(v10, type metadata accessor for OpaqueAlarm);
  }
}

void sub_1000BF040()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for OpaqueAlarm();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 40);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(v1 + 40);
    *(v1 + 40) = 0;
  }

  v13 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002CFC4(v1 + v13, v5, &qword_100114D70, &unk_1000D20E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002D02C(v5, &qword_100114D70, &unk_1000D20E0);
    v14 = objc_opt_self();
    v18[1] = 0;
    v18[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v18[0] = v1;
    type metadata accessor for TimerAnimationCountdown(0);
    _print_unlocked<A, B>(_:_:)();
    v15._object = 0x80000001000DBEA0;
    v15._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v15);
    v16 = String._bridgeToObjectiveC()();

    [v14 logInfo:v16];
  }

  else
  {
    sub_10004DF2C(v5, v10);
    sub_10008AB30();
    sub_1000BF2B0(v17);
    sub_1000C0314(v10, type metadata accessor for OpaqueAlarm);
  }
}

void sub_1000BF2B0(double a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for OpaqueAlarm();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[3];
  if (v13)
  {
    [v13 setStrokeStart:a1 * 0.9299 + 0.07];
  }

  v14 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002CFC4(v2 + v14, v7, &qword_100114D70, &unk_1000D20E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002D02C(v7, &qword_100114D70, &unk_1000D20E0);
    v15 = v2[2];
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_10004DF2C(v7, v12);
  if ((sub_10008A09C() & 1) == 0)
  {
    sub_1000C0314(v12, type metadata accessor for OpaqueAlarm);
    v15 = v2[2];
    if (!v15)
    {
LABEL_6:
      [objc_opt_self() setDisableActions:1];
      v18 = v2[4];
      if (v18)
      {
        v19 = objc_opt_self();
        v20 = v18;
        [v19 radFromDeg:a1 * 342.0 + 18.0];
        CATransform3DMakeRotation(&v29, v21, 0.0, 0.0, 1.0);
        [v20 setTransform:&v29];
      }

      return;
    }

LABEL_5:
    v16 = v15;
    v17 = String._bridgeToObjectiveC()();
    [v16 setState:v17];

    goto LABEL_6;
  }

  v22 = v2[2];
  if (v22)
  {
    v23 = v2 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier;
    v24 = *(v2 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
    v25 = *(v23 + 1);
    v26 = v22;

    v27 = String._bridgeToObjectiveC()();

    [v26 setState:v27];
  }

  sub_1000C0314(v12, type metadata accessor for OpaqueAlarm);
}

uint64_t sub_1000BF5EC()
{
  sub_10002D02C(v0 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, &qword_100114D70, &unk_1000D20E0);
  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier + 8);

  v2 = *(*v0 + 12);
  v3 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_1000BF6BC()
{
  sub_1000BF780(319, &unk_1001195F8, type metadata accessor for OpaqueAlarm);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000BF780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000BFD7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000BFDBC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1000B6F8C(v1);
}

uint64_t sub_1000BFDE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BFDFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BFE44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BFE8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BFEC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000BFEF4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
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
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000BFF94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10002DAD8(&qword_1001197D0, &qword_1001197C8, &qword_1000D7708);
          for (i = 0; i != v6; ++i)
          {
            sub_1000032D4(&qword_1001197C8, &qword_1000D7708);
            v9 = sub_1000C0148(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
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

void (*sub_1000C0148(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000C01C8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C01D0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C0274()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C02AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C0314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C0374()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000C0524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000C058C(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  _StringGuts.grow(_:)(61);
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  v7._object = 0x80000001000DC360;
  String.append(_:)(v7);
  v8 = [a2 role];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13 = String._bridgeToObjectiveC()();

  [v6 logInfo:v13];

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = objc_allocWithZone(UIWindow);
    v17 = a1;
    v18 = [v16 initWithWindowScene:v15];
    v19 = [objc_allocWithZone(UIViewController) init];
    v20 = [v19 view];
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = v20;
    v22 = [objc_opt_self() redColor];
    [v21 setBackgroundColor:v22];

    [v18 setRootViewController:v19];
    [v18 makeKeyAndVisible];

    v23 = *(v3 + OBJC_IVAR____TtC10ClockAngel20DefaultSceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC10ClockAngel20DefaultSceneDelegate_window) = v18;
  }

  else
  {
    _StringGuts.grow(_:)(49);

    v24 = [a1 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29 = String._bridgeToObjectiveC()();

    [v6 logError:v29];
    v23 = v29;
  }
}

id sub_1000C0854()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
}

uint64_t sub_1000C08A4()
{
  result = static Font.Weight.light.getter();
  qword_10011F690 = v1;
  return result;
}

uint64_t sub_1000C08E8()
{
  result = static Font.Weight.medium.getter();
  qword_10011F6A0 = v1;
  return result;
}

id sub_1000C0908()
{
  result = [objc_opt_self() configurationWithPointSize:6 weight:16.0];
  qword_10011F6A8 = result;
  return result;
}

uint64_t sub_1000C094C()
{
  result = static Font.Weight.light.getter();
  qword_10011F6B0 = v1;
  return result;
}

uint64_t sub_1000C09B4()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for Font.TextStyle.body(_:), v9);
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  sub_1000C0C50(v8);
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, enum case for Font.Leading.tight(_:), v0);
  v15 = Font.leading(_:)();

  result = (*(v1 + 8))(v4, v0);
  qword_10011F6C8 = v15;
  return result;
}

uint64_t sub_1000C0C50(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C0CDC(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  v5 = (*(*(sub_1000032D4(&qword_100113E08, &qword_1000D10F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin();
  v8 = &v12 - v7;
  a2(v6);
  v9 = type metadata accessor for Font.Design();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = static Font.system(size:weight:design:)();
  result = sub_1000C0C50(v8);
  *a3 = v10;
  return result;
}

uint64_t sub_1000C0EF8(CGFloat a1, uint64_t a2, uint64_t *a3)
{
  v5 = String._bridgeToObjectiveC()();
  CTFontCreateWithNameAndOptions(v5, a1, 0, 0x20000uLL);

  result = Font.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_1000C0FA0(uint64_t a1, void (*a2)(uint64_t), unsigned int *a3, uint64_t *a4)
{
  v7 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v17 - v10;
  a2(v9);
  v12 = *a3;
  v13 = type metadata accessor for Font.Design();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = static Font.system(size:weight:design:)();
  result = sub_1000C0C50(v11);
  *a4 = v15;
  return result;
}

uint64_t sub_1000C10DC()
{
  result = Image.init(systemName:)();
  qword_10011F730 = result;
  return result;
}

uint64_t sub_1000C110C()
{
  result = Image.init(systemName:)();
  qword_10011F738 = result;
  return result;
}

uint64_t sub_1000C1158()
{
  result = static Animation.easeInOut(duration:)();
  qword_10011F748 = result;
  return result;
}

uint64_t sub_1000C1208(uint64_t a1, uint64_t *a2)
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  v3 = Animation.delay(_:)();

  *a2 = v3;
  return result;
}

uint64_t sub_1000C127C(uint64_t a1, uint64_t *a2)
{
  static Animation.easeInOut(duration:)();
  v3 = Animation.delay(_:)();

  *a2 = v3;
  return result;
}

uint64_t sub_1000C1300()
{
  static AnyTransition.move(edge:)();
  static AnyTransition.scale.getter();
  v0 = AnyTransition.combined(with:)();

  qword_10011F788 = v0;
  return result;
}

uint64_t sub_1000C1380()
{
  sub_1000C15C4();
  result = VerticalAlignment.init(_:)();
  qword_10011F790 = result;
  return result;
}

void sub_1000C1410(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Material();
  sub_1000C1560(v3, a2);
  sub_10002D08C(v3, a2);
  type metadata accessor for TimerCompressedController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Material.coreMaterial(bundle:provider:)();
}

double sub_1000C14E0()
{
  xmmword_10011F7D0 = xmmword_1000D7770;
  unk_10011F7E0 = xmmword_1000D7780;
  xmmword_10011F7F0 = xmmword_1000D7790;
  unk_10011F800 = xmmword_1000D77A0;
  result = 0.0;
  xmmword_10011F810 = xmmword_1000D77B0;
  return result;
}

double sub_1000C1520()
{
  xmmword_10011F820 = xmmword_1000D77C0;
  *algn_10011F830 = xmmword_1000D77D0;
  xmmword_10011F840 = xmmword_1000D77E0;
  unk_10011F850 = xmmword_1000D77F0;
  result = 0.0;
  xmmword_10011F860 = xmmword_1000D77B0;
  return result;
}

uint64_t *sub_1000C1560(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000C15C4()
{
  result = qword_100119860;
  if (!qword_100119860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119860);
  }

  return result;
}

uint64_t sub_1000C1628(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000C1688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

id sub_1000C1C34()
{
  v1 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor);
LABEL_8:
    v11 = v2;
    return v3;
  }

  result = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = [result view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v6 = [result bottomAnchor];

  result = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = [result view];
  if (result)
  {
    v7 = result;
    v8 = [result topAnchor];

    v9 = [v6 constraintEqualToAnchor:v8];
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1000C1D5C()
{
  v1 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor];
LABEL_7:
    v12 = v2;
    return v3;
  }

  result = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = [result view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  v6 = [result bottomAnchor];

  result = [v0 view];
  if (result)
  {
    v7 = result;
    v8 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

    v9 = [v8 bottomAnchor];
    v10 = [v6 constraintEqualToAnchor:v9];

    v11 = *&v0[v1];
    *&v0[v1] = v10;
    v3 = v10;

    v2 = 0;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1000C1E90()
{
  sub_1000C29F8();
  sub_1000C1EBC();

  sub_1000C3274();
}

void sub_1000C1EBC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView;
  if (*&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView])
  {
    goto LABEL_16;
  }

  v3 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel];
  type metadata accessor for ObservableStopwatchModel();
  sub_10006548C();

  v4 = ObservedObject.init(wrappedValue:)();
  v6 = v5;
  v7 = objc_allocWithZone(sub_1000032D4(&qword_100119A50, &qword_1000D7A48));
  *&v100.m11 = v4;
  v100.m12 = v6;
  *&v100.m13 = xmmword_1000D7900;
  *(v7 + *((swift_isaMask & *v7) + qword_10011F398 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = UIHostingController.init(rootView:)();
  v9 = *&v1[v2];
  *&v1[v2] = v8;
  v10 = v8;

  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_26;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!*&v1[v2])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v1 addChildViewController:?];
  v12 = *&v1[v2];
  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v12 didMoveToParentViewController:v1];
  v13 = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView];
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = *&v1[v2];
  if (!v14)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v16 = v15;
  [v13 addSubview:v15];

  v17 = v13;
  v18 = [v1 view];
  if (!v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v18;
  [v18 addSubview:v17];

  v20 = *&v1[v2];
  if (!v20)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v21 = [v20 view];
  if (!v21)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v22 = v21;
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000D24C0;
  v24 = [v17 leadingAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = v25;
  v27 = [v25 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v28 = [v27 trailingAnchor];
  v29 = [v24 constraintEqualToAnchor:v28];

  *(v23 + 32) = v29;
  v30 = [v17 trailingAnchor];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v23 + 40) = v34;
  v35 = [v17 topAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = v36;
  v38 = [v36 topAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v23 + 48) = v39;
  v40 = [v17 bottomAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v42 = v41;
  v43 = objc_opt_self();
  v44 = [v42 bottomAnchor];

  v45 = [v40 constraintEqualToAnchor:v44];
  *(v23 + 56) = v45;
  v46 = [v22 leadingAnchor];
  v47 = [v17 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v23 + 64) = v48;
  v49 = [v22 trailingAnchor];
  v50 = [v17 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v23 + 72) = v51;
  v52 = [v22 topAnchor];
  v53 = [v17 topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v23 + 80) = v54;
  v55 = [v22 bottomAnchor];
  v56 = [v17 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v23 + 88) = v57;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];

LABEL_16:
  if (*&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedLeadingView])
  {
    return;
  }

  v59 = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView];
  if (!v59)
  {
    return;
  }

  v60 = v59;
  v61 = [v1 view];
  if (!v61)
  {
    goto LABEL_29;
  }

  v62 = v61;
  [v61 addSubview:v60];

  v63 = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation];
  v64 = sub_1000C5FC0();
  if (v64)
  {
    v65 = v64;
    v66 = objc_opt_self();
    _StringGuts.grow(_:)(45);
    v67 = [v1 description];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71._object = 0x80000001000DC6B0;
    v71._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v71);
    v72 = String._bridgeToObjectiveC()();

    [v66 logInfo:{v72, v68, v70}];

    v73 = v65;
    [v60 addSubview:v73];
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    v74 = objc_opt_self();
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1000D24B0;
    v76 = [v73 leadingAnchor];
    v77 = [v60 leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:-2.0];

    *(v75 + 32) = v78;
    v79 = [v73 trailingAnchor];

    v80 = [v60 trailingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];

    *(v75 + 40) = v81;
    v82 = [v73 topAnchor];

    v83 = [v60 topAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];

    *(v75 + 48) = v84;
    v85 = [v73 bottomAnchor];

    v86 = [v60 bottomAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];

    *(v75 + 56) = v87;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    v88 = Array._bridgeToObjectiveC()().super.isa;

    [v74 activateConstraints:v88];

    [objc_opt_self() setDisableActions:1];
    v89 = *(v63 + 32);
    if (v89)
    {
      v90 = objc_opt_self();
      v91 = v89;
      [v90 radFromDeg:357.0];
      CATransform3DMakeRotation(&v100, v92, 0.0, 0.0, 1.0);
      [v91 setTransform:&v100];
    }
  }

  else
  {
    v93 = objc_opt_self();
    _StringGuts.grow(_:)(53);
    v94 = [v1 description];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98._countAndFlagsBits = v95;
    v98._object = v97;
    String.append(_:)(v98);

    v99._countAndFlagsBits = 0xD000000000000033;
    v99._object = 0x80000001000DC670;
    String.append(_:)(v99);
    v73 = String._bridgeToObjectiveC()();

    [v93 logInfo:v73];
  }
}

void sub_1000C29F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView;
  if (!*&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView])
  {
    v3 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel];
    v77 = &type metadata for ApertureConfig;
    v78 = &off_100101EB8;
    type metadata accessor for ObservableStopwatchModel();
    sub_10006548C();

    v75 = ObservedObject.init(wrappedValue:)();
    v76 = v4;
    v5 = objc_allocWithZone(sub_1000032D4(&unk_100119A40, &qword_1000D5228));
    *&v5[*((swift_isaMask & *v5) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_1000819D0(&v75, v74);
    v6 = UIHostingController.init(rootView:)();
    sub_100081A2C(&v75);
    v7 = v6;
    v8 = [v7 view];
    if (!v8)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v9 = v8;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [v7 view];
    if (!v10)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v11 = v10;
    v12 = [v10 layer];

    [v12 setAllowsHitTesting:0];
    [v1 addChildViewController:v7];
    v13 = [v1 view];
    if (!v13)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v14 = v13;
    v15 = [v7 view];

    if (!v15)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    [v14 addSubview:v15];

    [v7 didMoveToParentViewController:v1];
    v16 = *&v1[v2];
    *&v1[v2] = v7;
  }

  v17 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView;
  if (*&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView])
  {
LABEL_13:
    v32 = [v1 view];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 SBUISA_systemApertureObstructedAreaLayoutGuide];

      v35 = [v34 leadingAnchor];
      sub_100031224();

      v36 = [v1 view];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 SBUISA_systemApertureObstructedAreaLayoutGuide];

        sub_1000032D4(&qword_100115480, &qword_1000D2510);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1000D5170;
        v40 = *&v1[v2];
        if (v40)
        {
          v41 = [v40 view];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 leadingAnchor];

            v73 = v38;
            v44 = [v38 trailingAnchor];
            v45 = [v43 constraintEqualToAnchor:v44];

            *(v39 + 32) = v45;
            v46 = *&v1[v2];
            if (v46)
            {
              v47 = [v46 view];
              if (v47)
              {
                v48 = v47;
                v49 = [v47 trailingAnchor];

                v50 = [v1 view];
                if (v50)
                {
                  v51 = v50;
                  v52 = [v50 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

                  v53 = [v52 trailingAnchor];
                  v54 = [v49 constraintEqualToAnchor:v53 constant:-1.0];

                  *(v39 + 40) = v54;
                  *(v39 + 48) = sub_1000C1C34();
                  v55 = *&v1[v17];
                  if (v55)
                  {
                    v56 = [v55 view];
                    if (v56)
                    {
                      v57 = v56;
                      v58 = [v56 leadingAnchor];

                      v59 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
                      if (v59)
                      {
                        v60 = [v59 trailingAnchor];
                        v61 = [v58 constraintEqualToAnchor:v60];

                        *(v39 + 56) = v61;
                        v62 = *&v1[v17];
                        if (v62)
                        {
                          v63 = [v62 view];
                          if (v63)
                          {
                            v64 = v63;
                            v65 = [v63 trailingAnchor];

                            v66 = [v1 view];
                            if (v66)
                            {
                              v67 = v66;
                              v68 = objc_opt_self();
                              v69 = [v67 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

                              v70 = [v69 trailingAnchor];
                              v71 = [v65 constraintEqualToAnchor:v70 constant:2.0];

                              *(v39 + 64) = v71;
                              *(v39 + 72) = sub_1000C1D5C();
                              sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                              isa = Array._bridgeToObjectiveC()().super.isa;

                              [v68 activateConstraints:isa];

                              return;
                            }

                            goto LABEL_39;
                          }

LABEL_38:
                          __break(1u);
LABEL_39:
                          __break(1u);
                          goto LABEL_40;
                        }

LABEL_37:
                        __break(1u);
                        goto LABEL_38;
                      }

LABEL_36:
                      __break(1u);
                      goto LABEL_37;
                    }

LABEL_35:
                    __break(1u);
                    goto LABEL_36;
                  }

LABEL_34:
                  __break(1u);
                  goto LABEL_35;
                }

LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v18 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel];
  v77 = &type metadata for ApertureConfig;
  v78 = &off_100101EB8;
  type metadata accessor for ObservableStopwatchModel();
  sub_10006548C();

  v75 = ObservedObject.init(wrappedValue:)();
  v76 = v19;
  v20 = objc_allocWithZone(sub_1000032D4(&unk_100117520, &unk_1000D5230));
  *&v20[*((swift_isaMask & *v20) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_100081A80(&v75, v74);
  v21 = UIHostingController.init(rootView:)();
  sub_100081ADC(&v75);
  v22 = v21;
  v23 = [v22 view];
  if (!v23)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v24 = v23;
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [v22 view];
  if (!v25)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = v25;
  v27 = [v25 layer];

  [v27 setAllowsHitTesting:0];
  [v1 addChildViewController:v22];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v29 = v28;
  v30 = [v22 view];

  if (v30)
  {
    [v29 addSubview:v30];

    [v22 didMoveToParentViewController:v1];
    v31 = *&v1[v17];
    *&v1[v17] = v22;

    goto LABEL_13;
  }

LABEL_47:
  __break(1u);
}

void sub_1000C3274()
{
  v1 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalView];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:v3];

      v6 = *&v2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation];
      v7 = sub_1000C5FC0();
      if (v7)
      {
        v8 = v7;
        v9 = objc_opt_self();
        _StringGuts.grow(_:)(38);
        v10 = [v2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v11._object = 0x80000001000DC640;
        v11._countAndFlagsBits = 0xD000000000000024;
        String.append(_:)(v11);
        v12 = String._bridgeToObjectiveC()();

        [v9 logInfo:v12];

        v13 = v8;
        [v3 addSubview:v13];
        [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
        v14 = objc_opt_self();
        sub_1000032D4(&qword_100115480, &qword_1000D2510);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1000D24B0;
        v16 = [v13 leadingAnchor];
        v17 = [v3 leadingAnchor];
        v18 = [v16 constraintEqualToAnchor:v17];

        *(v15 + 32) = v18;
        v19 = [v13 trailingAnchor];

        v20 = [v3 trailingAnchor];
        v21 = [v19 constraintEqualToAnchor:v20];

        *(v15 + 40) = v21;
        v22 = [v13 topAnchor];

        v23 = [v3 topAnchor];
        v24 = [v22 constraintEqualToAnchor:v23];

        *(v15 + 48) = v24;
        v25 = [v13 bottomAnchor];

        v26 = [v3 bottomAnchor];
        v27 = [v25 constraintEqualToAnchor:v26];

        *(v15 + 56) = v27;
        sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v14 activateConstraints:isa];

        v3 = v13;
      }

      else
      {
        v28 = objc_opt_self();
        _StringGuts.grow(_:)(50);
        v29 = [v2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v30._countAndFlagsBits = 0xD000000000000030;
        v30._object = 0x80000001000DC600;
        String.append(_:)(v30);
        isa = String._bridgeToObjectiveC()();

        [v28 logInfo:isa];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000C3700(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = objc_opt_self();
  _StringGuts.grow(_:)(21);
  v9 = [v3 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._object = 0x80000001000DC250;
  v13._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v8 logInfo:{v14, v10, v12}];

  v19.receiver = v3;
  v19.super_class = type metadata accessor for StopwatchApertureController();
  objc_msgSendSuper2(&v19, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  v18[4] = sub_1000C64F4;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000C1628;
  v18[3] = &unk_100103D60;
  v16 = _Block_copy(v18);
  v17 = v4;

  [a1 animateAlongsideTransition:v16 completion:0];
  _Block_release(v16);
}

void sub_1000C4010()
{
  v1 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (*&v48.a > 1)
  {
    v7 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView;
    v8 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView];
    if (v8)
    {
      v9 = [v8 view];
      if (v9)
      {
        v10 = v9;
        [v9 alpha];
        v12 = v11;

        if (v12 != 0.0)
        {
          return;
        }

        v13 = sub_1000C1C34();
        [v13 setConstant:1.0];

        v14 = sub_1000C1D5C();
        [v14 setConstant:4.0];

        v15 = swift_allocObject();
        *(v15 + 16) = v0;
        v16 = objc_allocWithZone(UIViewPropertyAnimator);
        *&v48.tx = sub_1000C64BC;
        *&v48.ty = v15;
        *&v48.a = _NSConcreteStackBlock;
        *&v48.b = 1107296256;
        *&v48.c = sub_10004B270;
        *&v48.d = &unk_100103C20;
        v17 = _Block_copy(&v48);
        v18 = v0;

        v19 = [v16 initWithDuration:v17 dampingRatio:0.5 animations:1.0];
        _Block_release(v17);
        [v19 startAnimation];

        v20 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
        v21 = String._bridgeToObjectiveC()();
        [v20 setName:v21];

        isa = Double._bridgeToObjectiveC()().super.super.isa;
        [v20 setValue:isa forKey:kCAFilterInputRadius];

        v23 = Bool._bridgeToObjectiveC()().super.super.isa;
        [v20 setValue:v23 forKey:kCAFilterInputNormalizeEdges];

        v24 = Bool._bridgeToObjectiveC()().super.super.isa;
        [v20 setValue:v24 forKey:kCAFilterInputHardEdges];

        v25 = String._bridgeToObjectiveC()();
        [v20 setValue:v25 forKey:kCAFilterInputQuality];

        v26 = String._bridgeToObjectiveC()();
        [v20 setValue:v26 forKey:kCAFilterInputIntermediateBitDepth];

        v27 = *&v0[v7];
        if (v27)
        {
          v28 = [v27 view];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 layer];

            sub_1000032D4(&qword_100114138, &unk_1000D1420);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1000D08B0;
            *(v31 + 56) = sub_10002BB3C(0, &unk_100119A30, CAFilter_ptr);
            *(v31 + 32) = v20;
            v6 = v20;
            v32 = Array._bridgeToObjectiveC()().super.isa;

            [v30 setFilters:v32];

            v33 = *&v0[v7];
            if (v33)
            {
              v34 = [v33 view];
              if (v34)
              {
                v35 = v34;
                CGAffineTransformMakeScale(&v48, 0.9, 0.9);
                [v35 setTransform:&v48];

                v36 = swift_allocObject();
                *(v36 + 16) = v18;
                v37 = objc_allocWithZone(UIViewPropertyAnimator);
                *&v48.tx = sub_1000C64DC;
                *&v48.ty = v36;
                *&v48.a = _NSConcreteStackBlock;
                *&v48.b = 1107296256;
                *&v48.c = sub_10004B270;
                *&v48.d = &unk_100103C70;
                v38 = _Block_copy(&v48);
                v39 = v18;

                v40 = [v37 initWithDuration:v38 dampingRatio:0.4 animations:1.0];
                _Block_release(v38);
                [v40 startAnimationAfterDelay:0.06];

                v41 = objc_opt_self();
                v42 = swift_allocObject();
                *(v42 + 16) = v39;
                *&v48.tx = sub_1000C64E4;
                *&v48.ty = v42;
                *&v48.a = _NSConcreteStackBlock;
                *&v48.b = 1107296256;
                *&v48.c = sub_10004B270;
                *&v48.d = &unk_100103CC0;
                v43 = _Block_copy(&v48);
                v44 = v39;

                v45 = swift_allocObject();
                *(v45 + 16) = v44;
                *&v48.tx = sub_1000C64EC;
                *&v48.ty = v45;
                *&v48.a = _NSConcreteStackBlock;
                *&v48.b = 1107296256;
                *&v48.c = sub_1000C1688;
                *&v48.d = &unk_100103D10;
                v46 = _Block_copy(&v48);
                v47 = v44;

                [v41 _animateUsingSpringWithDampingRatio:0 response:v43 tracking:v46 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
                _Block_release(v46);
                _Block_release(v43);
                goto LABEL_13;
              }

LABEL_22:
              __break(1u);
              return;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v2 = sub_1000C1C34();
  [v2 setConstant:2.0];

  v3 = sub_1000C1D5C();
  [v3 setConstant:1.0];

  v4 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView];
  if (!v4)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = [v4 view];
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  [v5 setAlpha:0.0];
LABEL_13:
}

void sub_1000C4774(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [a1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

void sub_1000C4814(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView;
  v3 = *(a1 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = [v3 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 setAlpha:1.0];

  v6 = *(a1 + v2);
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    v9 = *&CGAffineTransformIdentity.c;
    v10[0] = *&CGAffineTransformIdentity.a;
    v10[1] = v9;
    v10[2] = *&CGAffineTransformIdentity.tx;
    [v7 setTransform:v10];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1000C48E0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView);
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
    return;
  }

  v3 = v2;
  v4 = [v2 layer];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v4 setValue:isa forKeyPath:v6];
}

void sub_1000C49B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = [v3 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 layer];

  [v6 setFilters:0];
}

uint64_t sub_1000C4A50(char a1, char a2, double a3, double a4, long double a5, double a6)
{
  v30.receiver = v6;
  v30.super_class = type metadata accessor for StopwatchApertureController();
  objc_msgSendSuper2(&v30, "didUpdateCurrentInterval:adjustedCurrentInterval:totalInterval:adjustedTotalInterval:isStopwatchRunning:isStopwatchStopped:", a1 & 1, a2 & 1, a3, a4, a5, a6);
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D7910;
  v14 = *&v6[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation];
  *(inited + 32) = v14;
  *(inited + 40) = *&v6[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation];
  v15 = 60.0;
  v16 = fmod(a5, 60.0);

  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  while (1)
  {
    v15 = 360.0 - v16 / v15 * 360.0;
    [objc_opt_self() setDisableActions:1];
    v17 = *(v14 + 32);
    if (v17)
    {
      v18 = objc_opt_self();
      v19 = v17;
      [v18 radFromDeg:v15];
      CATransform3DMakeRotation(&v28, v20, 0.0, 0.0, 1.0);
      v29 = v28;
      [v19 setTransform:&v28];
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v21 = *(inited + 40);

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  [objc_opt_self() setDisableActions:1];
  v22 = *(v21 + 32);
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    [v23 radFromDeg:v15];
    CATransform3DMakeRotation(&v28, v25, 0.0, 0.0, 1.0);
    v29 = v28;
    [v24 setTransform:&v28];
  }

  swift_setDeallocating();
  v26 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t sub_1000C4EA0(SEL *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for StopwatchApertureController();
  objc_msgSendSuper2(&v14, *a1);
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D7910;
  v4 = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation];
  *(inited + 32) = v4;
  *(inited + 40) = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation];

  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v5;
      v7 = String._bridgeToObjectiveC()();
      [v6 setState:v7];
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);

      v9 = *(v8 + 16);
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  v9 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 16);
  if (v9)
  {
LABEL_9:
    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    [v10 setState:v11];
  }

LABEL_10:

  swift_setDeallocating();
  v12 = *(inited + 16);
  return swift_arrayDestroy();
}

char *sub_1000C50E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_presentationBehaviors) = 9;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_activeLayoutMode) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_contentRole) = 2;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_preferredLayoutMode) = 3;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_maximumLayoutMode) = 4;
  v9 = [objc_opt_self() mtURLForSection:3];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  sub_1000573D0(v8, v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL);
  v13 = (v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier);
  *v13 = 0xD000000000000015;
  v13[1] = 0x80000001000D7F20;
  v14 = (v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_timerObserverIdentifier);
  *v14 = 0xD00000000000001ELL;
  v14[1] = 0x80000001000DC6E0;
  v15 = SBUISystemApertureElementIdentifierTimer;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_elementIdentifier) = SBUISystemApertureElementIdentifierTimer;
  v16 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_allocWithZone(ObjCClassFromMetadata);
  v19 = v15;
  *(v2 + v16) = [v18 init];
  v20 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView;
  *(v2 + v20) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v21 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalView;
  *(v2 + v21) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v22 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_keyColor;
  *(v2 + v22) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedLeadingView) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor) = 0;
  v23 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v24 = swift_allocObject();
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0x404E000000000000;
  *(v2 + v23) = v24;
  v25 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation;
  v26 = swift_allocObject();
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0x404E000000000000;
  *(v2 + v25) = v26;
  return sub_10002DC6C(a1, a2);
}

id sub_1000C5430(void *a1)
{
  v3 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_presentationBehaviors] = 9;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_maximumLayoutMode] = 4;
  v7 = [objc_opt_self() mtURLForSection:3];
  if (v7)
  {
    v8 = v7;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  }

  sub_1000573D0(v6, &v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL]);
  v11 = &v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier];
  *v11 = 0xD000000000000015;
  *(v11 + 1) = 0x80000001000D7F20;
  v12 = &v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_timerObserverIdentifier];
  *v12 = 0xD00000000000001ELL;
  *(v12 + 1) = 0x80000001000DC6E0;
  v13 = SBUISystemApertureElementIdentifierTimer;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v14 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_allocWithZone(ObjCClassFromMetadata);
  v17 = v13;
  *&v1[v14] = [v16 init];
  v18 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView;
  *&v1[v18] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v19 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalView;
  *&v1[v19] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v20 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_keyColor;
  *&v1[v20] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedLeadingView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor] = 0;
  v21 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v22 = swift_allocObject();
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0x404E000000000000;
  *&v1[v21] = v22;
  v23 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation;
  v24 = swift_allocObject();
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0x404E000000000000;
  *&v1[v23] = v24;
  v25 = type metadata accessor for StopwatchApertureController();
  v28.receiver = v1;
  v28.super_class = v25;
  v26 = objc_msgSendSuper2(&v28, "initWithCoder:", a1);

  if (v26)
  {
  }

  return v26;
}

id sub_1000C57D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_presentationBehaviors] = 9;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_maximumLayoutMode] = 4;
  v10 = [objc_opt_self() mtURLForSection:3];
  if (v10)
  {
    v11 = v10;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  sub_1000573D0(v9, &v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL]);
  v14 = &v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier];
  *v14 = 0xD000000000000015;
  *(v14 + 1) = 0x80000001000D7F20;
  v15 = &v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_timerObserverIdentifier];
  *v15 = 0xD00000000000001ELL;
  *(v15 + 1) = 0x80000001000DC6E0;
  v16 = SBUISystemApertureElementIdentifierTimer;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v17 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_allocWithZone(ObjCClassFromMetadata);
  v20 = v16;
  *&v3[v17] = [v19 init];
  v21 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView;
  *&v3[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v22 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalView;
  *&v3[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_keyColor;
  *&v3[v23] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedLeadingView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor] = 0;
  v24 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v25 = swift_allocObject();
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0x404E000000000000;
  *&v3[v24] = v25;
  v26 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation;
  v27 = swift_allocObject();
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0x404E000000000000;
  *&v3[v26] = v27;
  if (a2)
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for StopwatchApertureController();
  v32.receiver = v3;
  v32.super_class = v29;
  v30 = objc_msgSendSuper2(&v32, "initWithNibName:bundle:", v28, a3);

  return v30;
}

uint64_t sub_1000C5BD4()
{
  sub_10002D02C(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL, &unk_100119A20, &qword_1000D1DC0);
  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier + 8);

  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_timerObserverIdentifier + 8);

  v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation);

  v4 = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation);
}

id sub_1000C5D0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopwatchApertureController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StopwatchApertureController()
{
  result = qword_1001198D0;
  if (!qword_1001198D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C5EDC()
{
  sub_100056DFC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_1000C5FC0()
{
  v1 = v0;
  v2 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5 = objc_allocWithZone(BSUICAPackageView);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithPackageName:v6 inBundle:v4];

  if (!v7)
  {
    v10 = objc_opt_self();
    v27.m11 = 0.0;
    v27.m12 = -2.68156159e154;
    _StringGuts.grow(_:)(52);
    *&v29 = v1;
    type metadata accessor for StopwatchRunningAnimation();
    _print_unlocked<A, B>(_:_:)();
    v11._countAndFlagsBits = 0xD000000000000032;
    v11._object = 0x80000001000DC590;
    String.append(_:)(v11);
    v12 = String._bridgeToObjectiveC()();

    [v10 logInfo:{v12, *&v27.m11}];
    v7 = 0;
    goto LABEL_12;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 publishedObjectWithName:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  *&v27.m11 = v29;
  *&v27.m13 = v30;
  if (!*(&v30 + 1))
  {
    sub_10002D02C(&v27, &qword_100119790, &unk_1000D76E0);
    goto LABEL_11;
  }

  sub_10002BB3C(0, &qword_1001197A0, CALayer_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v24 = objc_opt_self();
    v27.m11 = 0.0;
    v27.m12 = -2.68156159e154;
    _StringGuts.grow(_:)(40);
    *&v29 = v1;
    type metadata accessor for StopwatchRunningAnimation();
    _print_unlocked<A, B>(_:_:)();
    v25._countAndFlagsBits = 0xD000000000000026;
    v25._object = 0x80000001000DBF40;
    String.append(_:)(v25);
    v12 = String._bridgeToObjectiveC()();

    [v24 logInfo:v12];
    goto LABEL_12;
  }

  v13 = v28;
  v14 = objc_opt_self();
  v27.m11 = 0.0;
  v27.m12 = -2.68156159e154;
  _StringGuts.grow(_:)(33);
  *&v29 = v1;
  type metadata accessor for StopwatchRunningAnimation();
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  v15._object = 0x80000001000DC5D0;
  String.append(_:)(v15);
  v16 = String._bridgeToObjectiveC()();

  [v14 logInfo:{v16, *&v27.m11, *&v27.m13}];

  v17 = v1[2];
  v1[2] = v7;
  v18 = v7;

  v19 = v1[4];
  v1[4] = v13;
  v12 = v13;

  [objc_opt_self() setDisableActions:1];
  v20 = v1[4];
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = v20;
    [v21 radFromDeg:360.0];
    CATransform3DMakeRotation(&v27, v23, 0.0, 0.0, 1.0);
    [v22 setTransform:&v27];
  }

LABEL_12:

  return v7;
}

uint64_t sub_1000C6408()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C6484()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C64C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.accessibilityLabel(_:)()
{
  return View.accessibilityLabel(_:)();
}

{
  return View.accessibilityLabel(_:)();
}