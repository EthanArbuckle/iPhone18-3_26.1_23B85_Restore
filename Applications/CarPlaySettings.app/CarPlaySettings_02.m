uint64_t sub_100058AA0()
{
  swift_getAssociatedTypeWitness();
  sub_10003B1B8(&qword_1001003C0);
  type metadata accessor for ModifiedContent();
  sub_10003B1B8(&qword_1001003C8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for _ContentShapeModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100058C34()
{
  v0 = sub_100030C14(&qword_1000FFFE0);
  __chkstk_darwin(v0);
  v2 = &v14 - v1;
  v3 = type metadata accessor for TintShapeStyle();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  TintShapeStyle.init()();
  v10 = ButtonStyleConfiguration.isPressed.getter();
  v11 = *(v4 + 16);
  if (v10)
  {
    v11(v2, v9, v3);
    *&v2[*(v0 + 36)] = 2;
    sub_10003D450(&qword_1000FFFE8, &qword_1000FFFE0);
  }

  else
  {
    v11(v7, v9, v3);
  }

  v12 = AnyShapeStyle.init<A>(_:)();
  (*(v4 + 8))(v9, v3);
  return v12;
}

unint64_t sub_100058E24()
{
  result = qword_100100410;
  if (!qword_100100410)
  {
    sub_10003B1B8(&qword_1001003C8);
    sub_100058EDC();
    sub_10003D450(&qword_100100288, &qword_1001001F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100410);
  }

  return result;
}

unint64_t sub_100058EDC()
{
  result = qword_100100418;
  if (!qword_100100418)
  {
    sub_10003B1B8(&qword_100100408);
    sub_100058F94();
    sub_10003D450(&qword_100100280, &unk_100100850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100418);
  }

  return result;
}

unint64_t sub_100058F94()
{
  result = qword_100100420;
  if (!qword_100100420)
  {
    sub_10003B1B8(&qword_100100400);
    sub_10005907C(&qword_1001006C0, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_10003D450(&qword_1001003F8, &qword_1001003C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100420);
  }

  return result;
}

uint64_t sub_10005907C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000590C4()
{
  v1 = sub_100030C14(&qword_100100428);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100059158(void *a1)
{
  sub_100030C14(&qword_100100428);
  v2 = a1;
  sub_100030C14(&qword_100100428);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100059200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100059218()
{
  result = qword_100100438;
  if (!qword_100100438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100438);
  }

  return result;
}

uint64_t sub_10005926C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100031970(a1, a2);
  }

  return a1;
}

double sub_100059284()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for CARThemeLayoutSelector(0) + 20));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  static os_log_type_t.fault.getter();
  v8 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_10003E550(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_100059400@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100059454()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CARThemeLayoutSelector(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003E550(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1000595D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006B5F0();
  *a1 = result & 1;
  return result;
}

id sub_100059628()
{
  v1 = *(v0 + *(type metadata accessor for CARThemeLayoutSelector(0) + 28));

  return v1;
}

uint64_t sub_10005965C()
{
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100448);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000596C4()
{
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100448);
  return Binding.wrappedValue.setter();
}

void (*sub_100059730(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CARThemeLayoutSelector(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v9 = v8;
  v4[11] = sub_100030C14(&qword_100100448);
  Binding.wrappedValue.getter();
  return sub_1000597F8;
}

void sub_1000597F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    Binding.wrappedValue.setter();
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  free(v2);
}

uint64_t sub_1000598BC()
{
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100448);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_100059928()
{
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_100059990()
{
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100450);
  return Binding.wrappedValue.setter();
}

void (*sub_100059A0C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CARThemeLayoutSelector(0) + 36));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v9 = v5[2];
  v8 = v5[3];
  v4[14] = v9;
  v4[15] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;

  v4[16] = sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  return sub_100059AD8;
}

void sub_100059AD8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    Binding.wrappedValue.setter();
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  free(v2);
}

uint64_t sub_100059BB0()
{
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100450);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_100059C1C()
{
  v1 = *(v0 + *(type metadata accessor for CARThemeLayoutSelector(0) + 40));

  return v1;
}

uint64_t sub_100059C5C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for CARThemeLayoutSelector(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  __chkstk_darwin(v2);
  v18[1] = v5;
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030C14(&qword_100100458);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100030C14(&unk_100100460);
  sub_100059F5C(v1, &v9[*(v10 + 44)]);
  v19 = type metadata accessor for CARThemeLayoutSelector;
  sub_10005DBC0(v1, v6, type metadata accessor for CARThemeLayoutSelector);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1000621A8(v6, v12 + v11, type metadata accessor for CARThemeLayoutSelector);
  v13 = &v9[*(v7 + 36)];
  *v13 = sub_10005A7F0;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v14 = v1 + *(v3 + 44);
  v15 = *(v14 + 8);
  v23 = *v14;
  v24 = v15;
  v25 = *(v14 + 16);
  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  v23 = v21;
  v24 = v22;
  sub_10005DBC0(v1, v6, v19);
  v16 = swift_allocObject();
  sub_1000621A8(v6, v16 + v11, type metadata accessor for CARThemeLayoutSelector);
  sub_100030C14(&unk_100101970);
  sub_10005AE94();
  sub_100061A0C(&unk_100100488);
  View.onChange<A>(of:initial:_:)();

  return sub_10003970C(v9, &qword_100100458);
}

uint64_t sub_100059F5C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)@<X8>)
{
  v44 = a2;
  v41 = sub_100030C14(&qword_100100728);
  v3 = __chkstk_darwin(v41);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = &v39 - v5;
  v52 = type metadata accessor for CARThemeLayoutSelector(0);
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v52);
  v39 = a1;
  sub_10005DBC0(a1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CARThemeLayoutSelector);
  v8 = *(v6 + 80);
  v42 = swift_allocObject();
  sub_1000621A8(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + ((v8 + 16) & ~v8), type metadata accessor for CARThemeLayoutSelector);
  sub_10005DBC0(a1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CARThemeLayoutSelector);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (v8 + 32) & ~v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  v12 = v39;
  sub_1000621A8(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CARThemeLayoutSelector);
  sub_10005DBC0(v12, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CARThemeLayoutSelector);
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_1000621A8(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10, type metadata accessor for CARThemeLayoutSelector);
  sub_100030C14(&qword_100100730);
  Binding.init(get:set:)();
  Binding.init(_:)();
  v15 = *(&v53 + 1);
  if (*(&v53 + 1))
  {
    v16 = v53;
    v17 = v54;
    v18 = *(v12 + *(v52 + 28));

    v19 = [v18 layouts];
    sub_1000317B8(0, &qword_100100660);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1000806F8(v16, v15, v17, v21, 1, v60);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v15 = v60[0];
    v22 = v60[1];
    v23 = v60[2];
    v51 = v61;
    v52 = v60[3];
    v49 = v63;
    v50 = v62;
    v47 = v65;
    v48 = v64;
    v46 = v66;
    v40 = v67;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    v40 = 0;
  }

  v24 = v43;
  sub_10005A508(v43);
  v25 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = v24 + *(v41 + 36);
  *v26 = v25;
  *(v26 + 8) = v27;
  *(v26 + 16) = v28;
  *(v26 + 24) = v29;
  *(v26 + 32) = v30;
  *(v26 + 40) = 0;
  v31 = v45;
  sub_10003976C(v24, v45, &qword_100100728);
  v32 = v44;
  v33 = v42;
  *v44 = sub_100060C30;
  v32[1] = v33;
  *&v53 = v15;
  *(&v53 + 1) = v22;
  *&v54 = v23;
  *(&v54 + 1) = v52;
  *&v55 = v51;
  *(&v55 + 1) = v50;
  *&v56 = v49;
  *(&v56 + 1) = v48;
  *&v57 = v47;
  *(&v57 + 1) = v46;
  v34 = v40;
  v58 = v40;
  v32[12] = v40;
  v35 = v56;
  *(v32 + 3) = v55;
  *(v32 + 4) = v35;
  *(v32 + 5) = v57;
  v36 = v54;
  *(v32 + 1) = v53;
  *(v32 + 2) = v36;
  v37 = sub_100030C14(&qword_100100738);
  sub_10003976C(v31, v32 + *(v37 + 64), &qword_100100728);

  sub_10003976C(&v53, v59, &qword_100100740);
  sub_10003970C(v24, &qword_100100728);
  sub_10003970C(v31, &qword_100100728);
  v59[0] = v15;
  v59[1] = v22;
  v59[2] = v23;
  v59[3] = v52;
  v59[4] = v51;
  v59[5] = v50;
  v59[6] = v49;
  v59[7] = v48;
  v59[8] = v47;
  v59[9] = v46;
  v59[10] = v34;
  sub_10003970C(v59, &qword_100100740);
}

uint64_t sub_10005A508@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v2 = type metadata accessor for CARThemeLayoutSelector(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005AF4C();
  v23[0] = LocalizedStringKey.init(stringLiteral:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_10005AF4C();
  v13 = 0x80000001000BD550;
  v14 = 0xD000000000000013;
  if (v12)
  {
    v14 = 0x676E697265657473;
    v13 = 0xED00006C65656877;
  }

  if (v12 < 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v12 < 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  sub_10005DBC0(v1, v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CARThemeLayoutSelector);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  sub_1000621A8(v5, v18 + v17, type metadata accessor for CARThemeLayoutSelector);
  sub_10003F298(v23[0], v7, v9 & 1, v11, v15, v16, sub_100061158, v18, v32);
  v19 = sub_10005AF4C();
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19 & 1;
  v24 = v32[0];
  v25 = v32[1];
  v26 = v32[2];
  v27 = v32[3];
  *&v28 = KeyPath;
  *(&v28 + 1) = sub_1000611C4;
  v29 = v21;
  sub_100030C14(&qword_100100748);
  sub_1000611DC();
  View.accessibilityIdentifier(_:)();
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = v28;
  v31 = v29;
  v30[0] = v24;
  v30[1] = v25;
  return sub_10003970C(v30, &qword_100100748);
}

uint64_t sub_10005A7F0()
{
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100448);
  Binding.wrappedValue.getter();
  v0 = [v2 currentLayoutID];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100030C14(&qword_100100450);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10005A914()
{
  v1 = type metadata accessor for CARThemeLayoutSelector(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_10003E550(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  sub_10003E550(*(v3 + v1[6]), *(v3 + v1[6] + 8));

  v5 = v3 + v1[8];

  return swift_deallocObject();
}

void sub_10005AAB4()
{
  v1 = type metadata accessor for CARThemeLayoutSelector(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = v2 + *(v1 + 36);
  v4 = *(v3 + 8);
  v34[0] = *v3;
  v34[1] = v4;
  v35 = *(v3 + 16);
  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  v5 = v33;
  if (v33)
  {
    v6 = [*(v2 + *(v1 + 28)) layouts];
    sub_1000317B8(0, &qword_100100660);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 4;
      while (1)
      {
        v10 = v9 - 4;
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v11 = *(v7 + 8 * v9);
        }

        v12 = v11;
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [v11 identifier];
        v15 = v5;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = v16;
        v5 = v15;
        if (v19 == v32 && v15 == v18)
        {

LABEL_18:

          v22 = [v12 displayName];

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          goto LABEL_23;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_18;
        }

        ++v9;
        if (v13 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    v23 = 0;
    v25 = 0;
LABEL_23:
    sub_1000317B8(0, &qword_1000FF690);

    v26 = static OS_os_log.default.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v28 = 136446466;
      if (v25)
      {
        v29 = v23;
      }

      else
      {
        v29 = 0x6E776F6E6B6E55;
      }

      if (!v25)
      {
        v25 = 0xE700000000000000;
      }

      v30 = sub_100037824(v29, v25, v34);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2082;
      v31 = sub_100037824(v32, v5, v34);

      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "Viewing layout %{public}s (%{public}s)", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

unint64_t sub_10005AE94()
{
  result = qword_100100470;
  if (!qword_100100470)
  {
    sub_10003B1B8(&qword_100100458);
    sub_10003D450(&qword_100100478, &qword_100100480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100470);
  }

  return result;
}

uint64_t sub_10005AF4C()
{
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100448);
  Binding.wrappedValue.getter();
  v0 = [v9 currentLayoutID];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  if (!v10)
  {

    return 128;
  }

  if (v1 == v9 && v10 == v3)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 128;
    }
  }

  v6 = sub_10005B5B0();
  if (v6 && (v7 = v6, v8 = [v6 isCustomizable], v7, !v8))
  {
    return 129;
  }

  else
  {
    return sub_100059454() & 1;
  }
}

void sub_10005B0E8()
{
  v1 = v0;
  v2 = type metadata accessor for CARThemeLayoutSelector(0);
  v3 = v0 + v2[9];
  v4 = *(v3 + 8);
  v44 = *v3;
  v45 = v4;
  v46 = *(v3 + 16);
  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  if (v43)
  {
    v5 = v42;
    v6 = sub_10005B5B0();
    if (v6)
    {
      v7 = v6;
      v8 = sub_10005AF4C();
      if (v8 < 0)
      {
        sub_1000317B8(0, &qword_1000FF690);
        v22 = v7;
        v23 = static OS_os_log.default.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v25 = 136446466;
          v26 = [v22 displayName];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = sub_100037824(v27, v29, &v44);

          *(v25 + 4) = v30;
          *(v25 + 12) = 2082;
          v31 = [v22 identifier];
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35 = sub_100037824(v32, v34, &v44);

          *(v25 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v23, v24, "Selecting layout %{public}s (%{public}s)", v25, 0x16u);
          swift_arrayDestroy();
        }

        v36 = (v1 + v2[8]);
        v38 = v36[1];
        v39 = v36[2];
        v44 = *v36;
        v37 = v44;
        v45 = v38;
        *&v46 = v39;
        sub_100030C14(&qword_100100448);
        Binding.wrappedValue.getter();
        v40 = String._bridgeToObjectiveC()();

        [v42 themeDataWithCurrentLayoutID:v40];

        v44 = v37;
        v45 = v38;
        *&v46 = v39;

        v41 = v39;
        Binding.wrappedValue.setter();
      }

      else
      {
        if ((v8 & 1) == 0)
        {
          sub_1000317B8(0, &qword_1000FF690);
          v7 = v7;
          v9 = static OS_os_log.default.getter();
          v10 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v11 = 136446466;
            v12 = [v7 displayName];
            v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v15 = v14;

            v16 = sub_100037824(v13, v15, &v44);

            *(v11 + 4) = v16;
            *(v11 + 12) = 2082;
            v17 = [v7 identifier];
            v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v19;

            v21 = sub_100037824(v18, v20, &v44);

            *(v11 + 14) = v21;
            v5 = v42;
            _os_log_impl(&_mh_execute_header, v9, v10, "Customizing layout %{public}s (%{public}s)", v11, 0x16u);
            swift_arrayDestroy();
          }

          (*(v1 + v2[10]))(v5);
        }
      }
    }

    else
    {
    }
  }
}

void *sub_10005B5B0()
{
  v1 = type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  if (v17)
  {
    v2 = [*(v0 + *(v1 + 28)) layouts];
    sub_1000317B8(0, &qword_100100660);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 identifier];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        if (v10 == v16 && v17 == v12)
        {

          return v7;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {

          return v7;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

uint64_t sub_10005B7D4@<X0>(uint64_t a1@<X1>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = type metadata accessor for CARThemeLayoutSelector(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  GeometryProxy.size.getter();
  v9 = v8 * 2.66666667;
  GeometryProxy.size.getter();
  v11 = v10 + -112.0;
  if (v11 < v9)
  {
    v9 = v11;
  }

  GeometryProxy.size.getter();
  v13 = (v12 - v9) * 0.5;
  sub_10005DBC0(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CARThemeLayoutSelector);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0x4030000000000000;
  result = sub_1000621A8(v7, v17 + v14, type metadata accessor for CARThemeLayoutSelector);
  *(v17 + v15) = v9;
  *(v17 + v16) = v9 * 0.375;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;
  *a2 = sub_10006159C;
  a2[1] = v17;
  return result;
}

uint64_t sub_10005B984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v83 = a1;
  v89 = a3;
  v10 = type metadata accessor for CARThemeLayoutSelector(0);
  v11 = *(v10 - 8);
  v72 = v10 - 8;
  v85 = v11;
  __chkstk_darwin(v10 - 8);
  v87 = v12;
  v88 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ScrollViewProxy();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = v13;
  v82 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ContentMarginPlacement();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  v15 = *(v65 - 8);
  v16 = __chkstk_darwin(v65);
  v62 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v59 - v18;
  v66 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100030C14(&qword_100100770);
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v23 = &v59 - v22;
  v69 = sub_100030C14(&qword_100100778);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v90 = &v59 - v24;
  v68 = sub_100030C14(&qword_100100780);
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v59 - v25;
  v74 = sub_100030C14(&qword_100100788);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v60 = &v59 - v26;
  v77 = sub_100030C14(&qword_100100790);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v59 - v27;
  static Axis.Set.horizontal.getter();
  v91 = a4;
  v92 = a2;
  v93 = a5;
  v94 = a6;
  sub_100030C14(&qword_100100798);
  v28 = sub_10003B1B8(&qword_1001007A0);
  v29 = sub_10003D450(&qword_1001007A8, &qword_1001007A0);
  v98 = v28;
  v99 = v29;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  static ViewAlignedScrollTargetBehavior.LimitBehavior.always.getter();
  v30 = v65;
  (*(v15 + 16))(v62, v19, v65);
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  (*(v15 + 8))(v19, v30);
  v31 = sub_10003D450(&qword_1001007B0, &qword_100100770);
  v32 = v61;
  v33 = v66;
  View.scrollTargetBehavior<A>(_:)();
  (*(v67 + 8))(v21, v33);
  (*(v63 + 8))(v23, v32);
  v34 = *(v72 + 44);
  v72 = a2;
  v35 = a2 + v34;
  v36 = *(v35 + 8);
  v98 = *v35;
  v99 = v36;
  v100 = *(v35 + 16);
  sub_100030C14(&qword_100100450);
  Binding.projectedValue.getter();
  v98 = v95;
  v99 = v96;
  v100 = v97;
  static UnitPoint.center.getter();
  v95 = v32;
  v96 = v33;
  *&v97 = v31;
  *(&v97 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v64;
  v39 = v60;
  v40 = v69;
  v41 = v90;
  View.scrollPosition<A>(id:anchor:)();

  v42 = v68;

  (*(v70 + 8))(v41, v40);
  v98 = v40;
  v99 = &type metadata for String;
  *&v100 = OpaqueTypeConformance2;
  *(&v100 + 1) = &protocol witness table for String;
  v43 = swift_getOpaqueTypeConformance2();
  View.scrollClipDisabled(_:)();
  (*(v71 + 8))(v38, v42);
  sub_100030C14(&qword_1001007B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A31F0;
  LOBYTE(v19) = static Edge.Set.leading.getter();
  *(inited + 32) = v19;
  v45 = static Edge.Set.trailing.getter();
  *(inited + 33) = v45;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v45)
  {
    Edge.Set.init(rawValue:)();
  }

  v46 = v78;
  static ContentMarginPlacement.automatic.getter();
  v98 = v42;
  v99 = v43;
  swift_getOpaqueTypeConformance2();
  v47 = v75;
  v48 = v74;
  View.contentMargins(_:_:for:)();
  (*(v79 + 8))(v46, v80);
  (*(v73 + 8))(v39, v48);
  v49 = v84;
  v50 = v82;
  v51 = v86;
  (*(v84 + 16))(v82, v83, v86);
  v52 = v88;
  sub_10005DBC0(v72, v88, type metadata accessor for CARThemeLayoutSelector);
  v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v54 = (v81 + *(v85 + 80) + v53) & ~*(v85 + 80);
  v55 = swift_allocObject();
  (*(v49 + 32))(v55 + v53, v50, v51);
  sub_1000621A8(v52, v55 + v54, type metadata accessor for CARThemeLayoutSelector);
  v56 = v89;
  (*(v76 + 32))(v89, v47, v77);
  result = sub_100030C14(&qword_1001007C0);
  v58 = (v56 + *(result + 36));
  *v58 = sub_100061898;
  v58[1] = v55;
  v58[2] = 0;
  v58[3] = 0;
  return result;
}

uint64_t sub_10005C59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v22[0] = a2;
  v9 = type metadata accessor for CARThemeLayoutSelector(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v13 = sub_100030C14(&qword_1001007A0);
  __chkstk_darwin(v13);
  v15 = (v22 - v14);
  *v15 = static VerticalAlignment.center.getter();
  v15[1] = a3;
  *(v15 + 16) = 0;
  sub_100030C14(&qword_1001007D0);
  v16 = [*(a1 + *(v10 + 36)) layouts];
  sub_1000317B8(0, &qword_100100660);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22[1] = v17;
  sub_10005DBC0(a1, v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CARThemeLayoutSelector);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1000621A8(v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18, type metadata accessor for CARThemeLayoutSelector);
  *(v20 + v19) = a4;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  sub_100030C14(&qword_1001007D8);
  sub_100030C14(&qword_1001007E0);
  sub_10003D450(&qword_1001007E8, &qword_1001007D8);
  sub_10003D450(&qword_1001007F0, &qword_1001007E0);
  sub_100061CDC();
  ForEach<>.init(_:content:)();
  sub_10003D450(&qword_1001007A8, &qword_1001007A0);
  View.scrollTargetLayout(isEnabled:)();
  return sub_10003970C(v15, &qword_1001007A0);
}

uint64_t sub_10005C904@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v34 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030C14(&qword_100100800);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v35 = sub_100030C14(&qword_100100808);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v33 - v10;
  v36 = sub_100030C14(&qword_100100810);
  __chkstk_darwin(v36);
  v13 = &v33 - v12;
  v14 = *a1;
  sub_10005CD94(v14, v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = &v9[*(v7 + 36)];
  v16 = v42;
  *v15 = v41;
  *(v15 + 1) = v16;
  *(v15 + 2) = v43;
  static AccessibilityChildBehavior.ignore.getter();
  v17 = sub_100061D44();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v34);
  sub_10003970C(v9, &qword_100100800);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
  v19 = [v14 displayName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v23);

  v24._countAndFlagsBits = 0x656D65685420;
  v24._object = 0xE600000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
  LocalizedStringKey.init(stringInterpolation:)();
  v39 = v7;
  v40 = v17;
  swift_getOpaqueTypeConformance2();
  v25 = v35;
  View.accessibilityLabel(_:)();

  (*(v37 + 8))(v11, v25);
  v26 = v38;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10003970C(v13, &qword_100100810);
  v27 = [v14 identifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  result = sub_100030C14(&qword_1001007E0);
  v32 = (v26 + *(result + 52));
  *v32 = v28;
  v32[1] = v30;
  return result;
}

uint64_t sub_10005CD94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v4 = type metadata accessor for ColorScheme();
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CARThemeLayoutSelector(0);
  v74 = *(v6 - 8);
  __chkstk_darwin(v6);
  v75 = v7;
  v76 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CARLayoutPreviewButton(0);
  __chkstk_darwin(v8);
  v10 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_100030C14(&qword_100100838);
  __chkstk_darwin(v77);
  v78 = v6;
  v79 = &v73 - v11;
  v12 = *(v6 + 32);
  v80 = v2;
  v13 = (v2 + v12);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v88 = *v13;
  v89 = v15;
  *&v90 = v16;
  sub_100030C14(&qword_100100448);
  Binding.wrappedValue.getter();
  v17 = v86;
  v18 = [v86 wallpaperForLayout];

  sub_100030C14(&qword_100100670);
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = a1;
  v20 = [a1 identifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (*(v19 + 16))
  {
    v24 = sub_1000305EC(v21, v23);
    v26 = v25;

    if (v26)
    {
      v73 = *(*(v19 + 56) + 8 * v24);
      swift_unknownObjectRetain();

      goto LABEL_6;
    }
  }

  else
  {
  }

  v73 = 0;
LABEL_6:
  v88 = v14;
  v89 = v15;
  *&v90 = v16;
  Binding.wrappedValue.getter();
  v27 = v86;
  v28 = [v86 paletteIDForLayout];

  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = [v85 identifier];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (*(v29 + 16))
  {
    v34 = sub_1000305EC(v31, v33);
    v36 = v35;

    v37 = v80;
    v38 = v78;
    if (v36)
    {
      v39 = (*(v29 + 56) + 16 * v34);
      v41 = *v39;
      v40 = v39[1];
    }

    else
    {

      v41 = 0;
      v40 = 0;
    }
  }

  else
  {

    v41 = 0;
    v40 = 0;
    v37 = v80;
    v38 = v78;
  }

  v42 = v76;
  sub_10005DBC0(v37, v76, type metadata accessor for CARThemeLayoutSelector);
  v43 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v44 = (v75 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  sub_1000621A8(v42, v45 + v43, type metadata accessor for CARThemeLayoutSelector);
  v46 = v85;
  *(v45 + v44) = v85;
  *v10 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  *(v10 + v8[5]) = v46;
  *(v10 + v8[6]) = v73;
  v47 = (v10 + v8[7]);
  *v47 = v41;
  v47[1] = v40;
  v48 = (v10 + v8[8]);
  *v48 = sub_10006211C;
  v48[1] = v45;
  v49 = v37 + *(v38 + 36);
  v50 = *(v49 + 8);
  v88 = *v49;
  v89 = v50;
  v90 = *(v49 + 16);
  v51 = v46;
  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  v53 = v86;
  v52 = v87;
  v54 = [v51 identifier];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  if (!v52)
  {

    v59 = v81;
    v58 = v82;
    v60 = v79;
    goto LABEL_18;
  }

  v59 = v81;
  v58 = v82;
  v60 = v79;
  if (v53 == v55 && v52 == v57)
  {
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    LOBYTE(v52) = 0;
    if ((v61 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  LOBYTE(v52) = sub_10005AF4C();
LABEL_18:
  KeyPath = swift_getKeyPath();
  v63 = swift_allocObject();
  *(v63 + 16) = v52 & 1;
  sub_1000621A8(v10, v60, type metadata accessor for CARLayoutPreviewButton);
  v64 = (v60 + *(v77 + 36));
  *v64 = KeyPath;
  v64[1] = sub_1000622E8;
  v64[2] = v63;
  v65 = [*(v37 + *(v38 + 28)) requiresDarkAppearance];
  v66 = v83;
  if (v65)
  {
    (*(v58 + 104))(v59, enum case for ColorScheme.dark(_:), v83);
  }

  else
  {
    sub_10005DC2C(v59);
  }

  v67 = swift_getKeyPath();
  v68 = sub_100030C14(&qword_100100828);
  v69 = v84;
  v70 = (v84 + *(v68 + 36));
  v71 = sub_100030C14(&unk_100100850);
  (*(v58 + 32))(v70 + *(v71 + 28), v59, v66);
  *v70 = v67;
  return sub_10004D640(v60, v69, &qword_100100838);
}

uint64_t CRSUIClusterThemePalette.id.getter()
{
  v1 = [v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_10005D548(uint64_t a1, void *a2)
{
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100450);
  v3 = Binding.wrappedValue.getter();
  if (!v11)
  {
    goto LABEL_7;
  }

  v4 = [a2 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v10 == v5 && v11 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
LABEL_7:
      __chkstk_darwin(v3);
      static Animation.default.getter();
      withAnimation<A>(_:_:)();

      return;
    }
  }

  sub_10005B0E8();
}

int *sub_10005D6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_10004D640(a1, a8, &qword_1000FF4F0);
  result = type metadata accessor for CARLayoutPreviewButton(0);
  *(a8 + result[5]) = a2;
  *(a8 + result[6]) = a3;
  v16 = (a8 + result[7]);
  *v16 = a4;
  v16[1] = a5;
  v17 = (a8 + result[8]);
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t sub_10005D780(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005D7B8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

__n128 sub_10005D8F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __n128 a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_10004D640(a1, a9, &qword_1000FF4F0);
  v22 = type metadata accessor for CARThemeLayoutSelector(0);
  v23 = a9 + v22[5];
  *v23 = a2;
  *(v23 + 8) = a3 & 1;
  v24 = a9 + v22[6];
  *v24 = a4;
  *(v24 + 8) = a5 & 1;
  *(a9 + v22[7]) = a6;
  v25 = (a9 + v22[8]);
  *v25 = a7;
  v25[1] = a8;
  v25[2] = a10;
  v26 = (a9 + v22[9]);
  result = a11;
  *v26 = a11;
  v26[1].n128_u64[0] = a12;
  v26[1].n128_u64[1] = a13;
  v28 = (a9 + v22[10]);
  *v28 = a14;
  v28[1] = a15;
  return result;
}

__n128 sub_10005DA00()
{
  v0 = type metadata accessor for RoundedRectangle();
  sub_100060BCC(v0, qword_1001053A0);
  v1 = sub_10005DB08(v0, qword_1001053A0);
  v2 = *(v0 + 20);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = type metadata accessor for RoundedCornerStyle();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #20.0 }

  *v1 = result;
  return result;
}

uint64_t sub_10005DAA4()
{
  if (qword_100103080 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for RoundedRectangle();

  return sub_10005DB08(v0, qword_1001053A0);
}

uint64_t sub_10005DB08(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10005DB40@<X0>(uint64_t a1@<X8>)
{
  if (qword_100103080 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RoundedRectangle();
  v3 = sub_10005DB08(v2, qword_1001053A0);
  return sub_10005DBC0(v3, a1, &type metadata accessor for RoundedRectangle);
}

uint64_t sub_10005DBC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005DC2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1000FF4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003976C(v2, &v14 - v9, &qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10005DE2C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);

  return swift_storeEnumTagMultiPayload();
}

id sub_10005DE8C()
{
  v1 = *(v0 + *(type metadata accessor for CARLayoutPreviewButton(0) + 20));

  return v1;
}

uint64_t sub_10005DEC0()
{
  type metadata accessor for CARLayoutPreviewButton(0);

  return swift_unknownObjectRetain();
}

uint64_t sub_10005DEF4()
{
  v1 = *(v0 + *(type metadata accessor for CARLayoutPreviewButton(0) + 28));

  return v1;
}

uint64_t sub_10005DF34()
{
  v1 = *(v0 + *(type metadata accessor for CARLayoutPreviewButton(0) + 32));

  return v1;
}

uint64_t sub_10005DF74()
{
  v1 = sub_100030C14(&qword_100100498);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  type metadata accessor for CARLayoutPreviewButton(0);
  v7 = v0;

  sub_100030C14(&qword_1001004A0);
  sub_10005E2C4();
  Button.init(action:label:)();
  sub_10003D450(&qword_100100520, &qword_100100498);
  sub_10005E654();
  View.buttonStyle<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10005E118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CARLayoutPreviewButton(0);
  sub_10005E6A8(*(a1 + *(v4 + 20)), a1, a2);
  if (qword_100103080 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for RoundedRectangle();
  v6 = sub_10005DB08(v5, qword_1001053A0);
  v7 = a2 + *(sub_100030C14(&qword_1001004C8) + 36);
  sub_10005DBC0(v6, v7, &type metadata accessor for RoundedRectangle);
  *(v7 + *(sub_100030C14(&qword_100100508) + 36)) = 256;
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = a2 + *(sub_100030C14(&qword_1001004B8) + 36);
  sub_10005E9A8(v11);
  v12 = (v11 + *(sub_100030C14(&qword_100100518) + 36));
  *v12 = v8;
  v12[1] = v10;
  v13 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_100030C14(&qword_1001004A0);
  v23 = a2 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

unint64_t sub_10005E2C4()
{
  result = qword_1001004A8;
  if (!qword_1001004A8)
  {
    sub_10003B1B8(&qword_1001004A0);
    sub_10005E350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001004A8);
  }

  return result;
}

unint64_t sub_10005E350()
{
  result = qword_1001004B0;
  if (!qword_1001004B0)
  {
    sub_10003B1B8(&qword_1001004B8);
    sub_10005E408();
    sub_10003D450(&qword_100100510, &qword_100100518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001004B0);
  }

  return result;
}

unint64_t sub_10005E408()
{
  result = qword_1001004C0;
  if (!qword_1001004C0)
  {
    sub_10003B1B8(&qword_1001004C8);
    sub_10005E4C0();
    sub_10003D450(&qword_100100500, &qword_100100508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001004C0);
  }

  return result;
}

unint64_t sub_10005E4C0()
{
  result = qword_1001004D0;
  if (!qword_1001004D0)
  {
    sub_10003B1B8(&qword_1001004D8);
    sub_10005E544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001004D0);
  }

  return result;
}

unint64_t sub_10005E544()
{
  result = qword_1001004E0;
  if (!qword_1001004E0)
  {
    sub_10003B1B8(&qword_1001004E8);
    sub_1000606A4(&qword_1001004F0, type metadata accessor for CARThemeLayoutPreview);
    sub_10005E600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001004E0);
  }

  return result;
}

unint64_t sub_10005E600()
{
  result = qword_1001004F8;
  if (!qword_1001004F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001004F8);
  }

  return result;
}

unint64_t sub_10005E654()
{
  result = qword_100100528;
  if (!qword_100100528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100528);
  }

  return result;
}

uint64_t sub_10005E6A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100030C14(&qword_100100720);
  __chkstk_darwin(v6);
  v8 = (v27 - v7);
  v9 = sub_100030C14(&qword_1000FF4F0);
  __chkstk_darwin(v9 - 8);
  v11 = v27 - v10;
  v12 = type metadata accessor for CARThemeLayoutPreview();
  __chkstk_darwin(v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 preview];
  if (v15)
  {
    v16 = v15;
    v27[1] = a3;
    v17 = type metadata accessor for CARLayoutPreviewButton(0);
    v18 = *(a2 + *(v17 + 24));
    if (v18)
    {
      v19 = (a2 + *(v17 + 28));
      v20 = v19[1];
      if (v20)
      {
        v21 = *v19;
        swift_unknownObjectRetain_n();

        v22 = v16;
        sub_10003C7C4();
        sub_10003C828(v11, v22, v18, v21, v20, v14);
        sub_10005DBC0(v14, v8, type metadata accessor for CARThemeLayoutPreview);
        swift_storeEnumTagMultiPayload();
        sub_1000606A4(&qword_1001004F0, type metadata accessor for CARThemeLayoutPreview);
        sub_10005E600();
        _ConditionalContent<>.init(storage:)();

        swift_unknownObjectRelease();
        return sub_100060B6C(v14, type metadata accessor for CARThemeLayoutPreview);
      }
    }
  }

  v24 = a1;
  *v8 = nullsub_9(v24, v25, v26);
  swift_storeEnumTagMultiPayload();
  sub_1000606A4(&qword_1001004F0, type metadata accessor for CARThemeLayoutPreview);
  sub_10005E600();
  return _ConditionalContent<>.init(storage:)();
}

double sub_10005E9A8@<D0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v32 - v6;
  v8 = type metadata accessor for RoundedRectangle._Inset();
  __chkstk_darwin(v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100030C14(&qword_1001006F8);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - v12;
  if (qword_100103080 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for RoundedRectangle();
  v15 = sub_10005DB08(v14, qword_1001053A0);
  sub_10005DBC0(v15, v10, &type metadata accessor for RoundedRectangle);
  *&v10[*(v8 + 20)] = 0xBFE0000000000000;
  sub_10005DC2C(v7);
  v33 = *(v2 + 104);
  v33(v5, enum case for ColorScheme.dark(_:), v1);
  v16 = static ColorScheme.== infix(_:_:)();
  v17 = *(v2 + 8);
  v17(v5, v1);
  v34 = v1;
  v32[1] = v2 + 8;
  v17(v7, v1);
  if (v16)
  {
    static Color.white.getter();
  }

  else
  {
    static Color.black.getter();
  }

  v18 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_10005DBC0(v10, v13, &type metadata accessor for RoundedRectangle._Inset);
  v19 = &v13[*(sub_100030C14(&qword_100100700) + 36)];
  v20 = v37;
  *v19 = v36;
  *(v19 + 1) = v20;
  *(v19 + 4) = v38;
  v21 = sub_100030C14(&qword_100100708);
  *&v13[*(v21 + 52)] = v18;
  *&v13[*(v21 + 56)] = 256;
  v22 = static Alignment.center.getter();
  v24 = v23;
  sub_100060B6C(v10, &type metadata accessor for RoundedRectangle._Inset);
  v25 = &v13[*(sub_100030C14(&qword_100100710) + 36)];
  *v25 = v22;
  v25[1] = v24;
  sub_10005DC2C(v7);
  v26 = v34;
  v33(v5, enum case for ColorScheme.light(_:), v34);
  v27 = static ColorScheme.== infix(_:_:)();
  v17(v5, v26);
  v17(v7, v26);
  if (v27)
  {
    static Color.black.getter();
    v28 = Color.opacity(_:)();
  }

  else
  {
    v28 = static Color.clear.getter();
  }

  v29 = v35;
  sub_10004D640(v13, v35, &qword_1001006F8);
  v30 = v29 + *(sub_100030C14(&qword_100100718) + 36);
  *v30 = v28;
  result = 16.0;
  *(v30 + 8) = xmmword_1000A33F0;
  *(v30 + 24) = 0x4024000000000000;
  return result;
}

uint64_t sub_10005EE14()
{
  v1 = sub_100030C14(&qword_100100498);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  v7 = v0;

  sub_100030C14(&qword_1001004A0);
  sub_10005E2C4();
  Button.init(action:label:)();
  sub_10003D450(&qword_100100520, &qword_100100498);
  sub_10005E654();
  View.buttonStyle<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10005EFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v6 = 0.96;
  }

  else
  {
    v6 = 1.0;
  }

  static UnitPoint.center.getter();
  v8 = v7;
  v10 = v9;
  (*(v3 + 32))(a1, v5, v2);
  result = sub_100030C14(&unk_100100530);
  v12 = a1 + *(result + 36);
  *v12 = v6;
  *(v12 + 8) = v6;
  *(v12 + 16) = v8;
  *(v12 + 24) = v10;
  return result;
}

void sub_10005F0E0()
{
  v0 = type metadata accessor for UUID();
  v47 = v0;
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030C14(&qword_1000FFC10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000A3400;
  UUID.init()();
  UUID.uuidString.getter();
  v46 = *(v1 + 8);
  v46(v3, v0);
  v5 = objc_allocWithZone(CRSUIClusterThemeLayout);
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();
  v45 = sub_1000317B8(0, &qword_1000FF7D0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v43[1] = sub_1000317B8(0, &qword_1001006F0);
  v9 = Array._bridgeToObjectiveC()().super.isa;
  v10 = [v5 initWithIdentifier:v6 displayName:v7 palettes:isa wallpapers:v9 preview:0];

  *(v4 + 32) = v10;
  v44 = v4;
  UUID.init()();
  UUID.uuidString.getter();
  v11 = v47;
  v46(v3, v47);
  v12 = objc_allocWithZone(CRSUIClusterThemeLayout);
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();
  v15 = Array._bridgeToObjectiveC()().super.isa;
  v16 = Array._bridgeToObjectiveC()().super.isa;
  v17 = [v12 initWithIdentifier:v13 displayName:v14 palettes:v15 wallpapers:v16 preview:0];

  *(v4 + 40) = v17;
  UUID.init()();
  UUID.uuidString.getter();
  v18 = v11;
  v19 = v46;
  v46(v3, v18);
  v20 = objc_allocWithZone(CRSUIClusterThemeLayout);
  v21 = String._bridgeToObjectiveC()();

  v22 = String._bridgeToObjectiveC()();
  v23 = Array._bridgeToObjectiveC()().super.isa;
  v24 = Array._bridgeToObjectiveC()().super.isa;
  v25 = [v20 initWithIdentifier:v21 displayName:v22 palettes:v23 wallpapers:v24 preview:0];

  *(v44 + 48) = v25;
  UUID.init()();
  UUID.uuidString.getter();
  v19(v3, v47);
  v26 = objc_allocWithZone(CRSUIClusterThemeLayout);
  v27 = String._bridgeToObjectiveC()();

  v28 = String._bridgeToObjectiveC()();
  v29 = Array._bridgeToObjectiveC()().super.isa;
  v30 = Array._bridgeToObjectiveC()().super.isa;
  v31 = [v26 initWithIdentifier:v27 displayName:v28 palettes:v29 wallpapers:v30 preview:0];

  v32 = v44;
  *(v44 + 56) = v31;
  UUID.init()();
  UUID.uuidString.getter();
  v19(v3, v47);
  v33 = objc_allocWithZone(CRSUIClusterThemeLayout);
  v34 = String._bridgeToObjectiveC()();

  v35 = String._bridgeToObjectiveC()();
  v36 = Array._bridgeToObjectiveC()().super.isa;
  v37 = Array._bridgeToObjectiveC()().super.isa;
  v38 = [v33 initWithIdentifier:v34 displayName:v35 palettes:v36 wallpapers:v37 preview:0];

  *(v32 + 64) = v38;
  v39 = objc_allocWithZone(CRSUIClusterThemeDisplay);
  v40 = String._bridgeToObjectiveC()();
  sub_1000317B8(0, &qword_100100660);
  v41 = Array._bridgeToObjectiveC()().super.isa;

  v42 = [v39 initWithIdentifier:v40 displayType:1 size:0 requiresDarkAppearance:v41 layouts:{1920.0, 720.0}];

  qword_1001053B8 = v42;
}

uint64_t *sub_10005F6F0()
{
  if (qword_100103088 != -1)
  {
    swift_once();
  }

  return &qword_1001053B8;
}

void sub_10005F764()
{
  sub_100060850(&_swiftEmptyArrayStorage);
  sub_100060964(&_swiftEmptyArrayStorage);
  sub_100060A68(&_swiftEmptyArrayStorage);
  v0 = objc_allocWithZone(CRDisplayThemeData);
  v1 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100030C14(&qword_100100670);
  v3 = Dictionary._bridgeToObjectiveC()().super.isa;

  type metadata accessor for CRHomeScreenStyleData();
  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v0 initWithCurrentLayoutID:v1 paletteIDForLayout:isa wallpaperForLayout:v3 homeScreenStyleForLayout:v4];

  qword_1001053C0 = v5;
}

uint64_t *sub_10005F8AC()
{
  if (qword_100103090 != -1)
  {
    swift_once();
  }

  return &qword_1001053C0;
}

id sub_10005F920(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

__n128 sub_10005F980@<Q0>(uint64_t *a1@<X8>)
{
  if (qword_100103088 != -1)
  {
    swift_once();
  }

  v2 = qword_100103090[0];
  v3 = qword_1001053B8;
  if (v2 != -1)
  {
    swift_once();
  }

  v13.n128_u64[0] = qword_1001053C0;
  sub_1000317B8(0, &qword_1000FF328);
  static Binding.constant(_:)();
  sub_100030C14(&unk_100101970);
  static Binding.constant(_:)();
  *a1 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = type metadata accessor for CARThemeLayoutSelector(0);
  v7 = a1 + v6[5];
  *v7 = KeyPath;
  v7[8] = 0;
  v8 = a1 + v6[6];
  *v8 = v5;
  v8[8] = 0;
  *(a1 + v6[7]) = v3;
  v9 = a1 + v6[8];
  *v9 = v16;
  result = v13;
  *(v9 + 8) = v17;
  v11 = (a1 + v6[9]);
  *v11 = v13;
  v11[1].n128_u64[0] = v14;
  v11[1].n128_u64[1] = v15;
  v12 = (a1 + v6[10]);
  *v12 = nullsub_9;
  v12[1] = 0;
  return result;
}

unint64_t sub_10005FBC0()
{
  result = qword_100100540;
  if (!qword_100100540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100540);
  }

  return result;
}

uint64_t sub_10005FC38(uint64_t a1)
{
  v2 = sub_100060734();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_10005FC84(uint64_t a1)
{
  v2 = sub_100060734();

  return static PreviewProvider._platform.getter(a1, v2);
}

void sub_10005FCDC(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_10005FD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030C14(&qword_1000FF4F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005FE24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030C14(&qword_1000FF4F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_10005FEE8()
{
  sub_10003D010();
  if (v0 <= 0x3F)
  {
    sub_100060414(319, &qword_1001005A8, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100060414(319, &qword_1001005B0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000317B8(319, &qword_1000FF320);
        if (v3 <= 0x3F)
        {
          sub_100060068();
          if (v4 <= 0x3F)
          {
            sub_1000603B0(319, &qword_100101B90, &unk_100101970, &unk_1000A1CC0, &type metadata accessor for Binding);
            if (v5 <= 0x3F)
            {
              sub_1000440A4();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100060068()
{
  if (!qword_1001005C0)
  {
    sub_1000317B8(255, &qword_1000FF328);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1001005C0);
    }
  }
}

uint64_t sub_1000600E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030C14(&qword_1000FF4F0);
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

    return (v10 + 1);
  }
}

uint64_t sub_1000601C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030C14(&qword_1000FF4F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100060284()
{
  sub_10003D010();
  if (v0 <= 0x3F)
  {
    sub_1000317B8(319, &qword_100100660);
    if (v1 <= 0x3F)
    {
      sub_1000603B0(319, &qword_100100668, &qword_100100670, &unk_1000A3720, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100060414(319, &unk_100100678, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000440A4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000603B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10003B1B8(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100060414(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100060484()
{
  sub_10003B1B8(&qword_100100458);
  sub_10003B1B8(&unk_100101970);
  sub_10005AE94();
  sub_100061A0C(&unk_100100488);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100060538()
{
  sub_10003B1B8(&qword_100100498);
  sub_10003D450(&qword_100100520, &qword_100100498);
  sub_10005E654();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000605E8()
{
  result = qword_1001006B8;
  if (!qword_1001006B8)
  {
    sub_10003B1B8(&unk_100100530);
    sub_1000606A4(&qword_1001006C0, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001006B8);
  }

  return result;
}

uint64_t sub_1000606A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100060734()
{
  result = qword_1001006D0;
  if (!qword_1001006D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001006D0);
  }

  return result;
}

uint64_t sub_100060788(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_100060850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030C14(&qword_1001006E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000305EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100060964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030C14(&qword_1001006E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000305EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100060A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030C14(&qword_1001006D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000305EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_100060B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_100060BCC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100060C30@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(type metadata accessor for CARThemeLayoutSelector(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10005B7D4(v4, a1);
}

uint64_t sub_100060CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CARThemeLayoutSelector(0);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  v5 = [*(v4 + *(v3 + 28)) layouts];
  sub_1000317B8(0, &qword_100100660);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11[2] = v4;
  sub_10005D7B8(sub_1000612E8, v11, v6);
  v8 = v7;
  LOBYTE(v4) = v9;

  *a1 = v8;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100060DB0()
{
  v1 = type metadata accessor for CARThemeLayoutSelector(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_10003E550(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  sub_10003E550(*(v3 + v1[6]), *(v3 + v1[6] + 8));

  v5 = v3 + v1[8];

  return swift_deallocObject();
}

void sub_100060F58(uint64_t a1)
{
  v3 = type metadata accessor for CARThemeLayoutSelector(0);
  if ((*(a1 + 8) & 1) == 0)
  {
    v4 = v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
    v5 = *a1;
    v6 = *(v4 + *(v3 + 28));
    v7 = [v6 layouts];
    sub_1000317B8(0, &qword_100100660);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5 >= v9)
    {
      return;
    }

    v10 = [v6 layouts];
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v11 & 0xC000000000000001) == 0)
    {
      if (v5 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v12 = *(v11 + 8 * v5 + 32);
      goto LABEL_8;
    }

LABEL_12:
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v13 = v12;

    v14 = [v13 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100030C14(&qword_100100450);
    Binding.wrappedValue.setter();
  }
}

unint64_t sub_1000611DC()
{
  result = qword_100100750;
  if (!qword_100100750)
  {
    sub_10003B1B8(&qword_100100748);
    sub_100061294();
    sub_10003D450(&qword_100100760, &qword_100100768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100750);
  }

  return result;
}

unint64_t sub_100061294()
{
  result = qword_100101C00;
  if (!qword_100101C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101C00);
  }

  return result;
}

uint64_t sub_1000612E8(id *a1)
{
  v1 = [*a1 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  if (v9)
  {
    if (v2 == v8 && v9 == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1000613E8()
{
  v1 = type metadata accessor for CARThemeLayoutSelector(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_10003E550(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  sub_10003E550(*(v3 + v1[6]), *(v3 + v1[6] + 8));

  v5 = v3 + v1[8];

  return swift_deallocObject();
}

uint64_t sub_10006159C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CARThemeLayoutSelector(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10005B984(a1, v2 + v6, a2, v9, v8, v10);
}

uint64_t sub_100061674()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for CARThemeLayoutSelector(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v7;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v0 + v7, v9);
  }

  else
  {
  }

  sub_10003E550(*(v8 + v5[5]), *(v8 + v5[5] + 8));
  sub_10003E550(*(v8 + v5[6]), *(v8 + v5[6] + 8));

  v10 = v8 + v5[8];

  return swift_deallocObject();
}

uint64_t sub_100061898()
{
  type metadata accessor for ScrollViewProxy();
  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  sub_100030C14(&unk_100101970);
  sub_100061A0C(&qword_1001007C8);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_100061A0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10003B1B8(&unk_100101970);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100061A78()
{
  v1 = type metadata accessor for CARThemeLayoutSelector(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_10003E550(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  sub_10003E550(*(v3 + v1[6]), *(v3 + v1[6] + 8));

  v5 = v3 + v1[8];

  return swift_deallocObject();
}

uint64_t sub_100061C24@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CARThemeLayoutSelector(0);

  return sub_10005C904(a1, a2);
}

unint64_t sub_100061CDC()
{
  result = qword_1001007F8;
  if (!qword_1001007F8)
  {
    sub_1000317B8(255, &qword_100100660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007F8);
  }

  return result;
}

unint64_t sub_100061D44()
{
  result = qword_100100818;
  if (!qword_100100818)
  {
    sub_10003B1B8(&qword_100100800);
    sub_100061DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100818);
  }

  return result;
}

unint64_t sub_100061DD0()
{
  result = qword_100100820;
  if (!qword_100100820)
  {
    sub_10003B1B8(&qword_100100828);
    sub_100061E88();
    sub_10003D450(&qword_100100280, &unk_100100850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100820);
  }

  return result;
}

unint64_t sub_100061E88()
{
  result = qword_100100830;
  if (!qword_100100830)
  {
    sub_10003B1B8(&qword_100100838);
    sub_1000606A4(&unk_100100840, type metadata accessor for CARLayoutPreviewButton);
    sub_10003D450(&qword_100100760, &qword_100100768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100830);
  }

  return result;
}

uint64_t sub_100061F70()
{
  v1 = type metadata accessor for CARThemeLayoutSelector(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10003E550(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  sub_10003E550(*(v4 + v1[6]), *(v4 + v1[6] + 8));

  v7 = v4 + v1[8];

  return swift_deallocObject();
}

void sub_10006211C()
{
  v1 = *(type metadata accessor for CARThemeLayoutSelector(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10005D548(v0 + v2, v3);
}

uint64_t sub_1000621A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100062210()
{
  v1 = [*(v0 + 24) identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for CARThemeLayoutSelector(0);
  sub_100030C14(&qword_100100450);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10006235C(unsigned __int8 a1)
{
  v1 = 0x737961776C61;
  v2 = 0x746867696CLL;
  if (a1 != 2)
  {
    v2 = 1802658148;
  }

  if (a1)
  {
    v1 = 1869903201;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100062470(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 1802658148;
  }

  return 0x7261656C63;
}

id sub_1000624D0(char a1)
{
  v1 = [objc_opt_self() *off_1000DC9C8[a1]];

  return v1;
}

uint64_t sub_100062528(void *a1, unsigned __int8 a2)
{
  if (a2 >= 2u)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v4 != [a1 styleType])
  {
    return 0;
  }

  v5 = off_1000DC9B0[a2];
  v6 = [a1 styleVariant];
  v7 = v5[2];
  v8 = 4;
  do
  {
    v9 = v7-- != 0;
    v10 = v9;
    if (!v9)
    {
      break;
    }

    v11 = v5[v8++];
  }

  while (v11 != v6);

  return v10;
}

id sub_1000625D0(char a1)
{
  v2 = objc_allocWithZone(CRHomeScreenStyleData);
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 2;
      v4 = 1;
      goto LABEL_7;
    }

    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = 2;
LABEL_7:

  return [v2 initWithStyleType:v3 styleVariant:v4];
}

Swift::Int sub_100062678(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000626C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100062708()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10006274C()
{
  if ([v0 styleType] == 1)
  {
    return 2;
  }

  else
  {
    return [v0 styleVariant] < 2;
  }
}

uint64_t sub_10006279C()
{
  result = [v0 styleVariant];
  if (!result)
  {
    return 1;
  }

  if (result != 2)
  {
    if (result == 1)
    {
      if ([v0 styleType] == 2)
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

id sub_100062808(char a1)
{
  v3 = [v1 styleType];
  v4 = qword_1000A3FD0[a1];
  v5 = objc_allocWithZone(CRHomeScreenStyleData);

  return [v5 initWithStyleType:v3 styleVariant:v4];
}

uint64_t sub_100062878@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000628FC()
{
  type metadata accessor for IconStylePickerView();
  sub_100030C14(&qword_100100860);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_100062964()
{
  type metadata accessor for IconStylePickerView();
  sub_100030C14(&qword_100100860);
  return Binding.wrappedValue.setter();
}

void (*sub_1000629D0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for IconStylePickerView() + 24));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v9 = v8;
  v4[11] = sub_100030C14(&qword_100100860);
  Binding.wrappedValue.getter();
  return sub_1000597F8;
}

uint64_t sub_100062A98()
{
  type metadata accessor for IconStylePickerView();
  sub_100030C14(&qword_100100860);
  Binding.projectedValue.getter();
  return v1;
}

_UNKNOWN **sub_100062B04()
{
  type metadata accessor for IconStylePickerView();
  sub_100030C14(&qword_100100860);
  Binding.wrappedValue.getter();
  if ([v2 styleType] == 1)
  {

    return &off_1000DC598;
  }

  else
  {
    v1 = [v2 styleVariant];

    if (v1 >= 2)
    {
      return &_swiftEmptyArrayStorage;
    }

    else
    {
      return &off_1000DC570;
    }
  }
}

uint64_t sub_100062C0C@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v71 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v71);
  v69 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for _ShapeSet();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v70 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Material._GlassVariant();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Material();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100030C14(&qword_100100868);
  __chkstk_darwin(v58);
  v8 = &v56 - v7;
  v9 = sub_100030C14(&qword_100100870);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_100030C14(&qword_100100878);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  v16 = sub_100030C14(&qword_100100880);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v57 = &v56 - v18;
  v59 = sub_100030C14(&qword_100100888) - 8;
  __chkstk_darwin(v59);
  v60 = &v56 - v19;
  v62 = sub_100030C14(&qword_100100890);
  __chkstk_darwin(v62);
  v61 = &v56 - v20;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0x4030000000000000;
  v8[16] = 0;
  v21 = sub_100030C14(&qword_100100898);
  sub_1000634A8(v1, &v8[*(v21 + 44)]);
  sub_10003D450(&qword_1001008A0, &qword_100100868);
  View.accessibilityIdentifier(_:)();
  sub_10003970C(v8, &qword_100100868);
  v22 = static Edge.Set.top.getter();
  sub_100062B04();

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10004D640(v11, v15, &qword_100100870);
  v31 = &v15[*(v13 + 44)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v57;
  sub_10004D640(v15, v57, &qword_100100878);
  v42 = v41 + *(v17 + 44);
  *v42 = v32;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v43 = v60;
  sub_10004D640(v41, v60, &qword_100100880);
  v44 = (v43 + *(v59 + 44));
  v45 = v80;
  v44[4] = v79;
  v44[5] = v45;
  v44[6] = v81;
  v46 = v76;
  *v44 = v75;
  v44[1] = v46;
  v47 = v78;
  v44[2] = v77;
  v44[3] = v47;
  if (qword_1001033E0 != -1)
  {
    swift_once();
  }

  v48 = sub_10005DB08(v71, qword_1001053C8);
  v49 = v61;
  v50 = &v61[*(v62 + 36)];
  sub_100068108(v48, v50, &type metadata accessor for RoundedRectangle);
  *(v50 + *(sub_100030C14(&qword_100100508) + 36)) = 256;
  sub_10004D640(v43, v49, &qword_100100888);
  v51 = v63;
  static Material._GlassVariant.regular.getter();
  v52 = v66;
  static Material._glass(_:)();
  (*(v64 + 8))(v51, v65);
  sub_100030C14(&qword_1000FF7E8);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1000A1FF0;
  sub_100068108(v48, v69, &type metadata accessor for RoundedRectangle);
  sub_100068B0C(&qword_1001008A8, &type metadata accessor for RoundedRectangle);
  *(v53 + 32) = AnyShape.init<A>(_:)();
  v54 = v70;
  _ShapeSet.init(shapes:smoothness:)();
  sub_100066840();
  View.materialEffect(_:in:)();
  (*(v72 + 8))(v54, v73);
  (*(v67 + 8))(v52, v68);
  return sub_10003970C(v49, &qword_100100890);
}

uint64_t sub_1000634A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v130 = a2;
  v120 = type metadata accessor for OpacityTransition();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v115 = v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for MoveTransition();
  v114 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100030C14(&qword_100100A60);
  v116 = *(v119 - 8);
  v5 = __chkstk_darwin(v119);
  v112 = v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v113 = v106 - v7;
  v132 = sub_100030C14(&qword_100100A68);
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v110 = (v106 - v8);
  v9 = sub_100030C14(&qword_100100A70);
  v10 = __chkstk_darwin(v9 - 8);
  v129 = v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v133 = v106 - v12;
  v131 = type metadata accessor for IconStylePickerView();
  v13 = *(v131 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v131);
  v15 = sub_100030C14(&qword_100100A78);
  __chkstk_darwin(v15 - 8);
  v17 = v106 - v16;
  v18 = sub_100030C14(&qword_100100A80);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v123 = v106 - v20;
  v21 = sub_100030C14(&qword_100100A88);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v124 = v106 - v23;
  v126 = sub_100030C14(&qword_100100A90) - 8;
  v24 = __chkstk_darwin(v126);
  v127 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v125 = v106 - v27;
  __chkstk_darwin(v26);
  v134 = v106 - v28;
  *v17 = static VerticalAlignment.top.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v121 = *(sub_100030C14(&qword_100100A98) + 44);
  *&v139 = &off_1000DC530;
  swift_getKeyPath();
  sub_100068108(a1, v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconStylePickerView);
  v29 = *(v13 + 80);
  v30 = (v29 + 16) & ~v29;
  v108 = v14;
  v106[1] = v29;
  v31 = swift_allocObject();
  v107 = v30;
  v109 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068174(v109, v31 + v30);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1000681D8;
  *(v32 + 24) = v31;
  sub_100030C14(&qword_100100AA0);
  sub_100030C14(&qword_100100AA8);
  sub_1000682CC();
  sub_10003D450(&qword_100100AC8, &qword_100100AA8);
  ForEach<>.init(_:id:content:)();
  static Alignment.center.getter();
  v33 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v34 = v123;
  sub_10004D640(v17, v123, &qword_100100A78);
  v35 = (v34 + *(v19 + 44));
  v36 = v144;
  v35[4] = v143;
  v35[5] = v36;
  v35[6] = v145;
  v37 = v140;
  *v35 = v139;
  v35[1] = v37;
  v38 = v142;
  v35[2] = v141;
  v35[3] = v38;
  v39 = static Edge.Set.leading.getter();
  v40 = v131;
  v41 = v122;
  v42 = (v122 + *(v131 + 28));
  v43 = *v42;
  v44 = v42[1];
  v135 = v43;
  *&v136 = v44;
  sub_100030C14(&qword_100100AD0);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v34;
  v54 = v124;
  sub_10004D640(v53, v124, &qword_100100A80);
  v55 = v54 + *(v22 + 44);
  *v55 = v39;
  *(v55 + 8) = v46;
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  *(v55 + 32) = v52;
  *(v55 + 40) = 0;
  v56 = static Edge.Set.trailing.getter();
  v57 = (v41 + *(v40 + 32));
  v58 = *v57;
  v59 = v57[1];
  v135 = v58;
  *&v136 = v59;
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v125;
  sub_10004D640(v54, v125, &qword_100100A88);
  v69 = v68 + *(v126 + 44);
  *v69 = v56;
  *(v69 + 8) = v61;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v67;
  *(v69 + 40) = 0;
  sub_10004D640(v68, v134, &qword_100100A90);
  v70 = v41;
  v71 = sub_100062B04()[2];

  if (v71 >= 2)
  {
    v72 = static VerticalAlignment.top.getter();
    v73 = v110;
    *v110 = v72;
    *(v73 + 8) = 0x4028000000000000;
    *(v73 + 16) = 0;
    v126 = *(sub_100030C14(&qword_100100AE0) + 44);
    v135 = sub_100062B04();
    swift_getKeyPath();
    v74 = v109;
    sub_100068108(v41, v109, type metadata accessor for IconStylePickerView);
    v75 = v107;
    v76 = swift_allocObject();
    sub_100068174(v74, v76 + v75);
    sub_100030C14(&qword_100100AE8);
    sub_100030C14(&qword_100100AF0);
    sub_10003D450(&qword_100100AF8, &qword_100100AE8);
    sub_10003D450(&qword_100100B00, &qword_100100AF0);
    ForEach<>.init(_:id:content:)();
    v77 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = v73 + *(sub_100030C14(&qword_100100B08) + 36);
    *v86 = v77;
    *(v86 + 8) = v79;
    *(v86 + 16) = v81;
    *(v86 + 24) = v83;
    *(v86 + 32) = v85;
    *(v86 + 40) = 0;
    v87 = v70 + *(v131 + 24);
    v135 = *v87;
    v136 = *(v87 + 8);
    sub_100030C14(&qword_100100860);
    Binding.wrappedValue.getter();
    v88 = v138;
    *(v73 + *(sub_100030C14(&qword_100100B10) + 36)) = v88;
    v89 = v111;
    MoveTransition.init(edge:)();
    v90 = v115;
    OpacityTransition.init()();
    v91 = sub_100068B0C(&qword_100100B18, &type metadata accessor for MoveTransition);
    v92 = sub_100068B0C(&qword_100100B20, &type metadata accessor for OpacityTransition);
    v93 = v113;
    v94 = v117;
    v95 = v120;
    Transition.combined<A>(with:)();
    (*(v118 + 8))(v90, v95);
    (*(v114 + 8))(v89, v94);
    v96 = v116;
    v97 = v119;
    (*(v116 + 16))(v112, v93, v119);
    v135 = v94;
    *&v136 = v95;
    *(&v136 + 1) = v91;
    v137 = v92;
    swift_getOpaqueTypeConformance2();
    v98 = AnyTransition.init<A>(_:)();
    (*(v96 + 8))(v93, v97);
    *(v73 + *(v132 + 36)) = v98;
    sub_10004D640(v73, v133, &qword_100100A68);
    v33 = 0;
  }

  v99 = v133;
  (*(v128 + 56))(v133, v33, 1, v132);
  v100 = v134;
  v101 = v127;
  sub_10003976C(v134, v127, &qword_100100A90);
  v102 = v129;
  sub_10003976C(v99, v129, &qword_100100A70);
  v103 = v130;
  sub_10003976C(v101, v130, &qword_100100A90);
  v104 = sub_100030C14(&qword_100100AD8);
  sub_10003976C(v102, v103 + *(v104 + 48), &qword_100100A70);
  sub_10003970C(v99, &qword_100100A70);
  sub_10003970C(v100, &qword_100100A90);
  sub_10003970C(v102, &qword_100100A70);
  return sub_10003970C(v101, &qword_100100A90);
}

uint64_t sub_100064318@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a1;
  v71 = a4;
  v6 = a2;
  v67 = sub_100030C14(&qword_100100B60);
  __chkstk_darwin(v67);
  v66 = (&v55 - v7);
  v8 = type metadata accessor for IconStylePickerView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100030C14(&qword_100100B30);
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  v58 = sub_100030C14(&qword_100100B68);
  __chkstk_darwin(v58);
  v17 = &v55 - v16;
  v18 = sub_100030C14(&qword_100100B70);
  v62 = *(v18 - 8);
  v63 = v18;
  __chkstk_darwin(v18);
  v61 = &v55 - v19;
  v60 = sub_100030C14(&qword_100100B78);
  v20 = __chkstk_darwin(v60);
  v65 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v59 = &v55 - v23;
  __chkstk_darwin(v22);
  v64 = &v55 - v24;
  v25 = a3 + *(v9 + 32);
  v73 = *v25;
  v74 = *(v25 + 8);
  sub_100030C14(&qword_100100860);
  Binding.wrappedValue.getter();
  v26 = v72;
  if (v6 >= 2)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  if (v27 == [v72 styleType])
  {
    v28 = v10;
    v29 = off_1000DC9B0[a2];
    v30 = [v26 styleVariant];
    v31 = v29[2];
    v32 = 4;
    do
    {
      v33 = v31-- != 0;
      v34 = v33;
      if (!v33)
      {
        break;
      }

      v35 = v29[v32++];
    }

    while (v35 != v30);

    v10 = v28;
  }

  else
  {
    v34 = 0;
  }

  v69 = a3;
  sub_100068108(a3, &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconStylePickerView);
  v36 = *(v10 + 80);
  v55 = ~v36;
  v37 = (v36 + 16) & ~v36;
  v68 = v11;
  v38 = swift_allocObject();
  v39 = sub_100068174(&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
  *(v38 + v37 + v11) = a2;
  __chkstk_darwin(v39);
  sub_100030C14(&qword_100100B38);
  sub_10006877C();
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_10003D450(&qword_100100B50, &qword_100100B30);
  v40 = v57;
  View.accessibilityLabel(_:)();

  v41 = (*(v56 + 8))(v15, v40);
  __chkstk_darwin(v41);
  v42 = v69;
  type metadata accessor for AsyncIconLayer();
  sub_100068B0C(&qword_100100B80, type metadata accessor for AsyncIconLayer);
  sub_10003F128();
  v43 = v66;
  sub_10004FBDC(sub_100064CB0, 0, v34, sub_100068B00, v66);
  sub_100068B54();
  sub_10003D450(&qword_100100B90, &qword_100100B60);
  v44 = v61;
  View.buttonStyle<A>(_:)();
  sub_10003970C(v43, &qword_100100B60);
  sub_10003970C(v17, &qword_100100B68);
  sub_100068108(v42, v12, type metadata accessor for IconStylePickerView);
  v45 = (v36 + 24) & v55;
  v46 = swift_allocObject();
  v47 = v70;
  *(v46 + 16) = v70;
  sub_100068174(v12, v46 + v45);
  v48 = v59;
  (*(v62 + 32))(v59, v44, v63);
  v49 = (v48 + *(v60 + 36));
  *v49 = sub_1000650A0;
  v49[1] = 0;
  v49[2] = sub_100068DAC;
  v49[3] = v46;
  v50 = v64;
  sub_10004D640(v48, v64, &qword_100100B78);
  v51 = v65;
  sub_10003976C(v50, v65, &qword_100100B78);
  v52 = v71;
  sub_10003976C(v51, v71, &qword_100100B78);
  v53 = v52 + *(sub_100030C14(&qword_100100B98) + 48);
  *v53 = 0;
  *(v53 + 8) = v47 < 2;
  *(v53 + 9) = v47 > 1;
  sub_10003970C(v50, &qword_100100B78);
  return sub_10003970C(v51, &qword_100100B78);
}

uint64_t sub_100064B8C(uint64_t a1)
{
  if (qword_1001033E8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return withAnimation<A>(_:_:)();
}

uint64_t *sub_100064C58()
{
  if (qword_1001033E8 != -1)
  {
    swift_once();
  }

  return &qword_1001053E0;
}

uint64_t sub_100064CB4(char a1)
{
  v2 = type metadata accessor for Capsule();
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoundedRectangle();
  v6 = __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = *(v6 + 20);
    v10 = enum case for RoundedCornerStyle.continuous(_:);
    v11 = type metadata accessor for RoundedCornerStyle();
    (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
    __asm { FMOV            V0.2D, #16.0 }

    *v8 = _Q0;
    sub_100068B0C(&qword_1001008A8, &type metadata accessor for RoundedRectangle);
  }

  else
  {
    v17 = enum case for RoundedCornerStyle.continuous(_:);
    v18 = type metadata accessor for RoundedCornerStyle();
    (*(*(v18 - 8) + 104))(v4, v17, v18);
    sub_100068B0C(&qword_1000FF858, &type metadata accessor for Capsule);
  }

  return AnyShape.init<A>(_:)();
}

int *sub_100064EA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() *off_1000DC9C8[a1]];
  v11 = a2 + *(type metadata accessor for IconStylePickerView() + 20);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = *v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000622E0(v12, 0);
    (*(v7 + 8))(v9, v6);
    v13 = *&v16[1];
  }

  return sub_10007497C(0xD000000000000015, 0x80000001000BD570, v10, a3, 40.0, 40.0, v13, 10.4);
}

uint64_t sub_1000650A0@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

_BYTE *sub_1000650FC@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x737961776C61;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (*result != 2)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  if (*result)
  {
    v3 = 1869903201;
    v2 = 0xE400000000000000;
  }

  if (*result <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*result > 1u)
  {
    v2 = v4;
  }

  *a2 = v6;
  a2[1] = v2;
  return result;
}

uint64_t sub_100065160@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v50 = sub_100030C14(&qword_100100B28);
  __chkstk_darwin(v50);
  v49 = &v42[-v5];
  v6 = type metadata accessor for IconStylePickerView();
  v7 = v6 - 8;
  v44 = *(v6 - 8);
  v8 = *(v44 + 64);
  __chkstk_darwin(v6);
  v45 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100030C14(&qword_100100B30);
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v11 = &v42[-v10];
  v12 = *a1;
  v13 = *(v7 + 32);
  v46 = a2;
  v14 = (a2 + v13);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v53 = *v14;
  v54 = v16;
  v55 = v17;
  sub_100030C14(&qword_100100860);
  Binding.wrappedValue.getter();
  v18 = v52;
  v19 = [v52 styleVariant];
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = [v18 styleType];

      if (v20 == 2)
      {
        v21 = v12 == 0;
      }

      else
      {
        v21 = v12 == 3;
      }
    }

    else
    {

      v21 = v12 == 2;
    }

    v22 = v21;
    v43 = v22;
    if (v12 <= 1)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v43 = v12 == 1;
    if (v12 <= 1)
    {
LABEL_10:
      if (v12)
      {
        v23 = 0xE400000000000000;
        v24 = 1869903201;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x737961776C61;
      }

      goto LABEL_17;
    }
  }

  if (v12 == 2)
  {
    v23 = 0xE500000000000000;
    v24 = 0x746867696CLL;
  }

  else
  {
    v23 = 0xE400000000000000;
    v24 = 1802658148;
  }

LABEL_17:
  v53 = v15;
  v54 = v16;
  v55 = v17;
  Binding.wrappedValue.getter();
  v25 = v52;
  if ([v52 styleType] == 1)
  {

    v26 = 0xE500000000000000;
    v27 = 0x7261656C63;
  }

  else
  {
    v28 = [v25 styleVariant];

    if (v28 >= 2)
    {
      v27 = 0x746C7561666564;
    }

    else
    {
      v27 = 1802658148;
    }

    if (v28 >= 2)
    {
      v26 = 0xE700000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }
  }

  v53 = v24;
  v54 = v23;

  v29._countAndFlagsBits = v27;
  v29._object = v26;
  String.append(_:)(v29);

  v30 = v53;
  v31 = v54;
  v32 = v45;
  sub_100068108(v46, v45, type metadata accessor for IconStylePickerView);
  v33 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v34 = swift_allocObject();
  v35 = sub_100068174(v32, v34 + v33);
  *(v34 + v33 + v8) = v12;
  __chkstk_darwin(v35);
  v36 = v43;
  sub_100030C14(&qword_100100B38);
  sub_10006877C();
  Button.init(action:label:)();
  sub_10003F128();
  v37 = v49;
  sub_10004FBDC(sub_10006907C, 0, v36, nullsub_9, v49);
  sub_10003D450(&qword_100100B50, &qword_100100B30);
  sub_10003D450(&qword_100100B58, &qword_100100B28);
  v38 = v51;
  v39 = v48;
  View.buttonStyle<A>(_:)();
  sub_10003970C(v37, &qword_100100B28);
  (*(v47 + 8))(v11, v39);
  result = sub_100030C14(&qword_100100AF0);
  v41 = (v38 + *(result + 52));
  *v41 = v30;
  v41[1] = v31;
  return result;
}

uint64_t sub_100065700@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Capsule();
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoundedRectangle();
  v8 = __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *(v8 + 20);
    v12 = enum case for RoundedCornerStyle.continuous(_:);
    v13 = type metadata accessor for RoundedCornerStyle();
    (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
    __asm { FMOV            V0.2D, #16.0 }

    *v10 = _Q0;
    sub_100068B0C(&qword_1001008A8, &type metadata accessor for RoundedRectangle);
  }

  else
  {
    v19 = enum case for RoundedCornerStyle.continuous(_:);
    v20 = type metadata accessor for RoundedCornerStyle();
    (*(*(v20 - 8) + 104))(v6, v19, v20);
    sub_100068B0C(&qword_1000FF858, &type metadata accessor for Capsule);
  }

  result = AnyShape.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_10006592C()
{
  if (qword_1001033E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for RoundedRectangle();

  return sub_10005DB08(v0, qword_1001053C8);
}

int64x2_t sub_1000659DC()
{
  v0 = type metadata accessor for RoundedRectangle();
  sub_100060BCC(v0, qword_1001053C8);
  v1 = sub_10005DB08(v0, qword_1001053C8);
  v2 = *(v0 + 20);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = type metadata accessor for RoundedCornerStyle();
  (*(*(v4 - 8) + 104))(&v1->i8[v2], v3, v4);
  result = vdupq_n_s64(0x4044000000000000uLL);
  *v1 = result;
  return result;
}

uint64_t sub_100065A84@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001033E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RoundedRectangle();
  v3 = sub_10005DB08(v2, qword_1001053C8);
  return sub_100068108(v3, a1, &type metadata accessor for RoundedRectangle);
}

uint64_t sub_100065B04()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_1001053E0 = result;
  return result;
}

uint64_t sub_100065B3C()
{
  if (qword_1001033E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100065B98@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v52[1] = a2;
  v55 = a3;
  v4 = sub_100030C14(&qword_1001008D8);
  __chkstk_darwin(v4);
  v6 = v52 - v5;
  v7 = sub_100030C14(&qword_1001008E0);
  __chkstk_darwin(v7);
  v9 = v52 - v8;
  v10 = sub_100030C14(&qword_1001008E8);
  __chkstk_darwin(v10 - 8);
  v12 = v52 - v11;
  v53 = sub_100030C14(&qword_1001008F0);
  __chkstk_darwin(v53);
  v14 = v52 - v13;
  v54 = sub_100030C14(&qword_1001008F8);
  __chkstk_darwin(v54);
  v16 = v52 - v15;
  v17 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v19 = sub_100030C14(&qword_100100900);
  (*(*(v19 - 8) + 16))(v6, a1, v19);
  v20 = &v6[*(v4 + 36)];
  *v20 = KeyPath;
  v20[1] = v17;
  static Font.Weight.medium.getter();
  sub_100066CA4();
  View.fontWeight(_:)();
  sub_10003970C(v6, &qword_1001008D8);
  v21 = swift_getKeyPath();
  v22 = &v9[*(sub_100030C14(&qword_100100918) + 36)];
  *v22 = v21;
  v22[1] = 0x3FE8A3D70A3D70A4;
  v23 = swift_getKeyPath();
  v24 = &v9[*(sub_100030C14(&qword_100100920) + 36)];
  *v24 = v23;
  *(v24 + 1) = 2;
  v24[16] = 0;
  v25 = swift_getKeyPath();
  v26 = &v9[*(sub_100030C14(&qword_100100928) + 36)];
  *v26 = v25;
  v26[8] = 1;
  *&v9[*(v7 + 36)] = 256;
  LocalizedStringKey.init(stringLiteral:)();
  v27 = Text.init(_:tableName:bundle:comment:)();
  v29 = v28;
  LOBYTE(KeyPath) = v30;
  sub_100066E30();
  View.accessibilityValue(_:)();
  sub_10003D4EC(v27, v29, KeyPath & 1);

  sub_10003970C(v9, &qword_1001008E0);
  v31 = &v14[*(v53 + 36)];
  sub_100030C14(&qword_100100970);
  static ContentTransition.interpolate.getter();
  *v31 = swift_getKeyPath();
  sub_10004D640(v12, v14, &qword_1001008E8);
  LOBYTE(v31) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10004D640(v14, v16, &qword_1001008F0);
  v40 = &v16[*(v54 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v31) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v55;
  sub_10004D640(v16, v55, &qword_1001008F8);
  result = sub_100030C14(&qword_100100978);
  v51 = v49 + *(result + 36);
  *v51 = v31;
  *(v51 + 8) = v42;
  *(v51 + 16) = v44;
  *(v51 + 24) = v46;
  *(v51 + 32) = v48;
  *(v51 + 40) = 0;
  return result;
}

double sub_1000660C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for IconStylePickerView();
  v9 = a4 + v8[5];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = (a4 + v8[6]);
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v11 = (a4 + v8[7]);
  State.init(wrappedValue:)();
  *v11 = v14;
  *(v11 + 1) = v15;
  v12 = (a4 + v8[8]);
  State.init(wrappedValue:)();
  result = v14;
  *v12 = v14;
  *(v12 + 1) = v15;
  return result;
}

void sub_1000661DC()
{
  v0 = kISImageDescriptorCarLauncher;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed:v2];

  [v3 size];
  v5 = v4;
  v7 = v6;

  qword_1001053E8 = v5;
  unk_1001053F0 = v7;
}

uint64_t *sub_100066270()
{
  if (qword_1001033F0 != -1)
  {
    swift_once();
  }

  return &qword_1001053E8;
}

double sub_1000662C0()
{
  if (qword_1001033F0 != -1)
  {
    swift_once();
  }

  return *&qword_1001053E8;
}

uint64_t sub_100066324()
{
  if (qword_1001033F0 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1000663B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v19 = a1;
  v20 = a3;
  swift_getWitnessTable();
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = *(a2 + 16);
  type metadata accessor for _ValueTransactionModifier();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  WitnessTable = swift_getWitnessTable();
  sub_1000529C8(v3, v5, v6, WitnessTable, v11);
  v15 = swift_getWitnessTable();
  v21 = WitnessTable;
  v22 = v15;
  swift_getWitnessTable();
  v16 = *(v8 + 16);
  v16(v13, v11, v7);
  v17 = *(v8 + 8);
  v17(v11, v7);
  v16(v20, v13, v7);
  return (v17)(v13, v7);
}

double sub_100066658@<D0>(uint64_t *a1@<X8>)
{
  v9 = [objc_allocWithZone(CRHomeScreenStyleData) initWithStyleType:2 styleVariant:2];
  type metadata accessor for CRHomeScreenStyleData();
  static Binding.constant(_:)();

  v2 = type metadata accessor for IconStylePickerView();
  a1[3] = v2;
  a1[4] = sub_100068B0C(&qword_100100A58, type metadata accessor for IconStylePickerView);
  v3 = sub_10004D1E8(a1);
  *v3 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  v4 = v3 + v2[5];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v3 + v2[6];
  *v5 = v11;
  *(v5 + 8) = v12;
  v6 = (v3 + v2[7]);
  State.init(wrappedValue:)();
  *v6 = v9;
  v6[1] = v10;
  v7 = (v3 + v2[8]);
  State.init(wrappedValue:)();
  result = *&v9;
  *v7 = v9;
  v7[1] = v10;
  return result;
}

uint64_t type metadata accessor for IconStylePickerView()
{
  result = qword_1001037B0;
  if (!qword_1001037B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100066840()
{
  result = qword_1001008B0;
  if (!qword_1001008B0)
  {
    sub_10003B1B8(&qword_100100890);
    sub_1000668F8();
    sub_10003D450(&qword_100100500, &qword_100100508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008B0);
  }

  return result;
}

unint64_t sub_1000668F8()
{
  result = qword_1001008B8;
  if (!qword_1001008B8)
  {
    sub_10003B1B8(&qword_100100888);
    sub_100066984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008B8);
  }

  return result;
}

unint64_t sub_100066984()
{
  result = qword_1001008C0;
  if (!qword_1001008C0)
  {
    sub_10003B1B8(&qword_100100880);
    sub_100066A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008C0);
  }

  return result;
}

unint64_t sub_100066A10()
{
  result = qword_1001008C8;
  if (!qword_1001008C8)
  {
    sub_10003B1B8(&qword_100100878);
    sub_100066A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008C8);
  }

  return result;
}

unint64_t sub_100066A9C()
{
  result = qword_1001008D0;
  if (!qword_1001008D0)
  {
    sub_10003B1B8(&qword_100100870);
    sub_10003D450(&qword_1001008A0, &qword_100100868);
    sub_100068B0C(&qword_100100038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001008D0);
  }

  return result;
}

uint64_t sub_100066BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

unint64_t sub_100066CA4()
{
  result = qword_100100908;
  if (!qword_100100908)
  {
    sub_10003B1B8(&qword_1001008D8);
    sub_10003D450(&qword_100100910, &qword_100100900);
    sub_10003D450(&qword_1000FF928, &qword_1000FF930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100908);
  }

  return result;
}

uint64_t sub_100066D88@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100066DDC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100066E30()
{
  result = qword_100100930;
  if (!qword_100100930)
  {
    sub_10003B1B8(&qword_1001008E0);
    sub_100066EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100930);
  }

  return result;
}

unint64_t sub_100066EBC()
{
  result = qword_100100938;
  if (!qword_100100938)
  {
    sub_10003B1B8(&qword_100100928);
    sub_100066F74();
    sub_10003D450(&qword_100100960, &qword_100100968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100938);
  }

  return result;
}

unint64_t sub_100066F74()
{
  result = qword_100100940;
  if (!qword_100100940)
  {
    sub_10003B1B8(&qword_100100920);
    sub_10006702C();
    sub_10003D450(&qword_1000FFFC8, &qword_1000FFFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100940);
  }

  return result;
}

unint64_t sub_10006702C()
{
  result = qword_100100948;
  if (!qword_100100948)
  {
    sub_10003B1B8(&qword_100100918);
    sub_10003B1B8(&qword_1001008D8);
    sub_100066CA4();
    swift_getOpaqueTypeConformance2();
    sub_10003D450(&qword_100100950, &qword_100100958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100948);
  }

  return result;
}

unint64_t sub_100067124()
{
  result = qword_100100980;
  if (!qword_100100980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100980);
  }

  return result;
}

unint64_t sub_10006717C()
{
  result = qword_100100988;
  if (!qword_100100988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100988);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconStyleConfiguration(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IconStyleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for IconStyleConfiguration.Variant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IconStyleConfiguration.Variant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000674BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030C14(&qword_1000FF4F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006759C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030C14(&qword_1000FF4F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100067664()
{
  sub_1000677B0(319, &qword_1001005A0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100067814(319, &qword_1001005A8, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000677B0(319, &qword_1001009E8, &type metadata accessor for CRHomeScreenStyleData, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_100067814(319, &unk_1001009F0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000677B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100067814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CGFloat);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IconStylePickerView.Specs.LabelModifier(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IconStylePickerView.Specs.LabelModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000679F8()
{
  sub_10003B1B8(&qword_100100890);
  sub_100066840();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100067A60()
{
  result = qword_100100A30;
  if (!qword_100100A30)
  {
    sub_10003B1B8(&qword_100100978);
    sub_100067AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100A30);
  }

  return result;
}

unint64_t sub_100067AEC()
{
  result = qword_100100A38;
  if (!qword_100100A38)
  {
    sub_10003B1B8(&qword_1001008F8);
    sub_100067B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100A38);
  }

  return result;
}

unint64_t sub_100067B78()
{
  result = qword_100100A40;
  if (!qword_100100A40)
  {
    sub_10003B1B8(&qword_1001008F0);
    sub_100067C30();
    sub_10003D450(&qword_100100A50, &qword_100100970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100A40);
  }

  return result;
}

unint64_t sub_100067C30()
{
  result = qword_100100A48;
  if (!qword_100100A48)
  {
    sub_10003B1B8(&qword_1001008E8);
    sub_100066E30();
    sub_100068B0C(&qword_100100038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100A48);
  }

  return result;
}

uint64_t sub_100067CF4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100067D64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100067EA4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_100068108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100068174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconStylePickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000681D8@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for IconStylePickerView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100064318(a1, a2, v8, a3);
}

uint64_t sub_100068260()
{

  return swift_deallocObject();
}

unint64_t sub_1000682CC()
{
  result = qword_100100AB0;
  if (!qword_100100AB0)
  {
    sub_10003B1B8(&qword_100100AA0);
    sub_10003D450(&qword_100100AB8, &qword_100100AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100AB0);
  }

  return result;
}

uint64_t sub_10006837C()
{
  v1 = type metadata accessor for IconStylePickerView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1000622E0(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));
  v5 = v3 + *(v1 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000684EC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IconStylePickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100065160(a1, v6, a2);
}

uint64_t sub_100068570()
{
  v1 = *(type metadata accessor for IconStylePickerView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + *(v1 + 64));
  sub_100030C14(&qword_100100860);
  Binding.wrappedValue.getter();
  [objc_allocWithZone(CRHomeScreenStyleData) initWithStyleType:objc_msgSend(v4 styleVariant:{"styleType"), qword_1000A3FD0[v2]}];

  return Binding.wrappedValue.setter();
}

uint64_t sub_1000686AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 17);
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
  return result;
}

unint64_t sub_10006877C()
{
  result = qword_100100B40;
  if (!qword_100100B40)
  {
    sub_10003B1B8(&qword_100100B38);
    sub_100068808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100B40);
  }

  return result;
}

unint64_t sub_100068808()
{
  result = qword_100100B48;
  if (!qword_100100B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100B48);
  }

  return result;
}

uint64_t sub_10006885C()
{
  v1 = type metadata accessor for IconStylePickerView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1000622E0(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));
  v5 = v3 + *(v1 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000689C8()
{
  v1 = *(type metadata accessor for IconStylePickerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100064B8C(v2);
}

uint64_t sub_100068A48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 17);
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100068B0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100068B54()
{
  result = qword_100100B88;
  if (!qword_100100B88)
  {
    sub_10003B1B8(&qword_100100B68);
    sub_10003D450(&qword_100100B50, &qword_100100B30);
    sub_100068B0C(&qword_100100038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100B88);
  }

  return result;
}

uint64_t sub_100068C3C()
{
  v1 = type metadata accessor for IconStylePickerView();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1000622E0(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));
  v5 = v3 + *(v1 + 24);

  return swift_deallocObject();
}

uint64_t sub_100068DAC()
{
  result = type metadata accessor for IconStylePickerView();
  v2 = *(v0 + 16);
  if (v2 == 2 || !v2)
  {
    sub_100030C14(&qword_100100AD0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100068E88()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(CRHomeScreenStyleData);
  if (!v1)
  {
    v3 = 2;
LABEL_6:
    v4 = 2;
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  v3 = 2;
  v4 = 1;
LABEL_7:
  [v2 initWithStyleType:v3 styleVariant:v4];
  type metadata accessor for IconStylePickerView();
  sub_100030C14(&qword_100100860);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100068F50()
{
  type metadata accessor for AnimationsDisabledModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for _ValueTransactionModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id variable initialization expression of CARAssetsManager.observers()
{
  v0 = [objc_opt_self() hashTableWithOptions:5];

  return v0;
}

id CARAssetsManager.observers.getter()
{
  v1 = OBJC_IVAR____TtC15CarPlaySettings16CARAssetsManager_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CARAssetsManager.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15CarPlaySettings16CARAssetsManager_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100069288()
{
  result = [objc_allocWithZone(type metadata accessor for CARAssetsManager()) init];
  static CARAssetsManager.sharedInstance = result;
  return result;
}

uint64_t *CARAssetsManager.sharedInstance.unsafeMutableAddressor()
{
  if (qword_1001038D0 != -1)
  {
    swift_once();
  }

  return &static CARAssetsManager.sharedInstance;
}

id static CARAssetsManager.sharedInstance.getter()
{
  if (qword_1001038D0 != -1)
  {
    swift_once();
  }

  v1 = static CARAssetsManager.sharedInstance;

  return v1;
}

uint64_t variable initialization expression of CARAssetsManager.assetLibraryManager()
{
  type metadata accessor for CAUAssetLibraryManager();
  swift_allocObject();
  return CAUAssetLibraryManager.init()();
}

uint64_t CARAssetsManager.isDarkModeAppearanceOnly.getter()
{
  v0 = type metadata accessor for CAUFeatureConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CAUFeatureConfiguration.Settings();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (v8)
  {
    v9 = v8;
    CAUAssetLibrary.featureConfiguration()();

    CAUFeatureConfiguration.settings.getter();
    (*(v1 + 8))(v3, v0);
    v10 = CAUFeatureConfiguration.Settings.darkModeOnly.getter();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void *variable initialization expression of CARAssetsManager.subscribers()
{
  if (!(&_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_100069CDC(&_swiftEmptyArrayStorage);
}

id sub_100069624()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15CarPlaySettings16CARAssetsManager_observers;
  *&v1[v2] = [objc_opt_self() hashTableWithOptions:5];
  v3 = OBJC_IVAR____TtC15CarPlaySettings16CARAssetsManager_assetLibraryManager;
  type metadata accessor for CAUAssetLibraryManager();
  swift_allocObject();
  *&v1[v3] = CAUAssetLibraryManager.init()();
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = sub_100069CDC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC15CarPlaySettings16CARAssetsManager_subscribers] = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CARAssetsManager();
  return objc_msgSendSuper2(&v6, "init");
}

void CARAssetsManager.addObserver(_:)(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x68))();
  [v3 addObject:a1];
}

Swift::Void __swiftcall CARAssetsManager.setup()()
{
  v0 = sub_100030C14(&qword_100100BB0);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  v3 = sub_100030C14(&qword_100100BB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  v7 = sub_100030C14(&qword_100100BC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  dispatch thunk of CAUAssetLibraryManager.$assetLibrary.getter();
  v11 = [objc_opt_self() mainRunLoop];
  v13[1] = v11;
  v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_100069F70();
  sub_10003D450(&qword_100100BD0, &qword_100100BB8);
  sub_10006A214(&qword_100100BD8, sub_100069F70);
  Publisher.receive<A>(on:options:)();
  sub_100069FBC(v2);

  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10003D450(&qword_100100BE0, &qword_100100BC0);
  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

id CARAssetsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARAssetsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100069CDC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100030C14(&qword_100100C20);
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
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10006A214(&qword_100100C28, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10006A214(&unk_100100C30, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

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

unint64_t sub_100069F70()
{
  result = qword_100100BC8;
  if (!qword_100100BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100100BC8);
  }

  return result;
}

uint64_t sub_100069FBC(uint64_t a1)
{
  v2 = sub_100030C14(&qword_100100BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A024()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void *sub_10006A05C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*((swift_isaMask & *result) + 0x68))();

    v3 = [v2 allObjects];
    sub_100030C14(&qword_100100C18);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 4; ; ++j)
      {
        v7 = j - 4;
        if ((v4 & 0xC000000000000001) == 0)
        {
          break;
        }

        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = __OFADD__(v7, 1);
        v10 = j - 3;
        if (v9)
        {
          goto LABEL_12;
        }

LABEL_8:
        [v8 assetsManagerReady];
        swift_unknownObjectRelease();
        if (v10 == i)
        {
        }
      }

      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v4 + 8 * j);
      swift_unknownObjectRetain();
      v9 = __OFADD__(v7, 1);
      v10 = j - 3;
      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

uint64_t sub_10006A214(unint64_t *a1, void (*a2)(uint64_t))
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

id IconCustomizationPanel.cellSpecifier.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_10001C80C(v0);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_allocWithZone(ISIcon);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithType:v3];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(CARSettingsCellSpecifier);

  v7 = String._bridgeToObjectiveC()();

  v12[4] = sub_10006A4EC;
  v12[5] = v5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10006B034;
  v12[3] = &unk_1000DCA30;
  v8 = _Block_copy(v12);

  v9 = [v6 initWithTitle:v7 image:0 icon:v4 accessoryType:1 actionBlock:v8];
  _Block_release(v8);

  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  return v9;
}

uint64_t sub_10006A4B4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_10006A4EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong panelController];

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      [v2 pushPanel:v3];
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall IconCustomizationPanel.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_100030C14(&qword_100100C40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v59 - v7;
  v9 = type metadata accessor for IconCustomizationPanel();
  v66.receiver = v0;
  v66.super_class = v9;
  objc_msgSendSuper2(&v66, "viewDidLoad");
  v10 = [v0 panelController];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for IconCustomizationModel();
    v12 = swift_unknownObjectRetain();
    v13 = sub_100033EFC(v12);
    v62 = v2;
    v14 = *&v0[OBJC_IVAR___CARIconCustomizationPanel_iconCustomizationModel];
    *&v0[OBJC_IVAR___CARIconCustomizationPanel_iconCustomizationModel] = v13;
    v15 = v13;

    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    v59 = v11;
    swift_unknownObjectRetain();
    sub_10008D9D0(sub_10006B144, v16, &v67);
    v72 = v68;
    v73 = BYTE8(v68);
    v70 = v67;
    v71 = BYTE8(v67);
    v63 = v67;
    v64 = v68;
    v65 = v69;
    sub_10006B154();
    v61 = v3;
    sub_100031B0C();
    View.environment<A>(_:)();
    v60 = v15;

    sub_10003970C(&v70, &qword_100100C60);
    sub_10003970C(&v72, &qword_100100C68);

    (*(v61 + 16))(v6, v8, v62);
    v17 = objc_allocWithZone(sub_100030C14(&qword_100100C70));
    v18 = UIHostingController.init(rootView:)();
    [v18 willMoveToParentViewController:v1];
    v19 = [v1 view];
    if (v19)
    {
      v20 = v19;
      v21 = v18;
      v22 = [v21 view];
      if (v22)
      {
        v23 = v22;
        [v20 addSubview:v22];

        [v21 didMoveToParentViewController:v1];
        v24 = [v21 view];
        if (v24)
        {
          v25 = v24;
          [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

          v26 = [v21 view];
          if (v26)
          {
            v27 = v26;
            v28 = [objc_opt_self() clearColor];
            [v27 setBackgroundColor:v28];

            sub_100030C14(&qword_1000FFC10);
            v29 = swift_allocObject();
            *(v29 + 16) = xmmword_1000A26D0;
            v30 = [v1 view];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 leadingAnchor];

              v33 = [v21 view];
              if (v33)
              {
                v34 = v33;
                v35 = [v33 leadingAnchor];

                v36 = [v32 constraintEqualToAnchor:v35];
                *(v29 + 32) = v36;
                v37 = [v1 view];
                if (v37)
                {
                  v38 = v37;
                  v39 = [v37 trailingAnchor];

                  v40 = [v21 view];
                  if (v40)
                  {
                    v41 = v40;
                    v42 = [v40 trailingAnchor];

                    v43 = [v39 constraintEqualToAnchor:v42];
                    *(v29 + 40) = v43;
                    v44 = [v1 view];
                    if (v44)
                    {
                      v45 = v44;
                      v46 = [v44 topAnchor];

                      v47 = [v21 view];
                      if (v47)
                      {
                        v48 = v47;
                        v49 = [v47 topAnchor];

                        v50 = [v46 constraintEqualToAnchor:v49];
                        *(v29 + 48) = v50;
                        v51 = [v1 view];
                        if (v51)
                        {
                          v52 = v51;
                          v53 = [v51 bottomAnchor];

                          v54 = [v21 view];
                          if (v54)
                          {
                            v55 = objc_opt_self();
                            v56 = [v54 bottomAnchor];

                            v57 = [v53 constraintEqualToAnchor:v56];
                            *(v29 + 56) = v57;
                            sub_10006B1A8();
                            isa = Array._bridgeToObjectiveC()().super.isa;

                            [v55 activateConstraints:isa];
                            swift_unknownObjectRelease();

                            (*(v61 + 8))(v8, v62);
                            return;
                          }

LABEL_27:
                          __break(1u);
                          return;
                        }

LABEL_26:
                        __break(1u);
                        goto LABEL_27;
                      }

LABEL_25:
                      __break(1u);
                      goto LABEL_26;
                    }

LABEL_24:
                    __break(1u);
                    goto LABEL_25;
                  }

LABEL_23:
                  __break(1u);
                  goto LABEL_24;
                }

LABEL_22:
                __break(1u);
                goto LABEL_23;
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
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

Swift::Void __swiftcall IconCustomizationPanel.viewWillAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for IconCustomizationPanel();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1);
  v3 = *&v1[OBJC_IVAR___CARIconCustomizationPanel_iconCustomizationModel];
  if (v3)
  {
    v4 = v3;
    sub_100036998();
  }
}

id IconCustomizationPanel.navigationItem.getter()
{
  v0 = objc_allocWithZone(UINavigationItem);

  return [v0 init];
}

Swift::Void __swiftcall IconCustomizationPanel.invalidate()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IconCustomizationPanel();
  objc_msgSendSuper2(&v3, "invalidate");
  v1 = *&v0[OBJC_IVAR___CARIconCustomizationPanel_iconCustomizationModel];
  if (v1)
  {
    v2 = v1;
    sub_100037484();
  }
}

id CARWallpaperPreviewPanel.__allocating_init(panelController:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithPanelController:a1];
  swift_unknownObjectRelease();
  return v2;
}

id IconCustomizationPanel.init(panelController:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CARIconCustomizationPanel_iconCustomizationModel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for IconCustomizationPanel();
  v3 = objc_msgSendSuper2(&v5, "initWithPanelController:", a1);
  swift_unknownObjectRelease();
  return v3;
}

id IconCustomizationPanel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconCustomizationPanel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006B034(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v5 = a2;
    sub_1000393B0(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  swift_unknownObjectRetain();
  v3(v7);

  return sub_10003970C(v7, &unk_100100CA0);
}

uint64_t sub_10006B0D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006B10C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_10006B154()
{
  result = qword_100100C50;
  if (!qword_100100C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100C50);
  }

  return result;
}

unint64_t sub_10006B1A8()
{
  result = qword_100100390;
  if (!qword_100100390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100100390);
  }

  return result;
}

uint64_t sub_10006B1F4(void *a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2);
  v14 = 0;
  State.init(wrappedValue:)();
  v7 = v11;
  v8 = v12;
  v11 = a1;
  LOBYTE(v12) = v7;
  v13 = v8;
  v9 = a1;
  return ModifiedContent.init(content:modifier:)();
}

uint64_t sub_10006B308@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = [objc_opt_self() defaultCenter];
  v11 = sub_100030C14(&qword_100100CB0);
  NSNotificationCenter.publisher(for:object:)();

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  v13 = sub_100030C14(&qword_100100CB8);
  (*(*(v13 - 8) + 16))(a5, a1, v13);
  v14 = (a5 + *(v11 + 56));
  *v14 = sub_10006B900;
  v14[1] = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  v16 = (a5 + *(sub_100030C14(&qword_100100CC0) + 36));
  *v16 = sub_10006B900;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  KeyPath = swift_getKeyPath();
  swift_retain_n();
  v18 = a2;
  sub_100030C14(&qword_100100208);
  State.wrappedValue.getter();
  result = sub_100030C14(&qword_100100CC8);
  v20 = a5 + *(result + 36);
  *v20 = KeyPath;
  *(v20 + 8) = v21;
  return result;
}

uint64_t sub_10006B50C(void *a1)
{
  v2 = [a1 limitUserInterfaces];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 BOOLValue];

    if (v4)
    {
      v5 = [a1 configuration];
      [v5 limitableUserInterfaces];
    }
  }

  sub_100030C14(&qword_100100208);
  return State.wrappedValue.setter();
}

uint64_t sub_10006B5F0()
{
  sub_10006B62C();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_10006B62C()
{
  result = qword_1001038E0;
  if (!qword_1001038E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001038E0);
  }

  return result;
}

uint64_t (*sub_10006B6E0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10006B62C();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_10006B748;
}

uint64_t sub_10006B780()
{
  type metadata accessor for ModifiedContent();
  sub_10006B7E4();
  return swift_getWitnessTable();
}

unint64_t sub_10006B7E4()
{
  result = qword_1001038E8[0];
  if (!qword_1001038E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001038E8);
  }

  return result;
}

uint64_t sub_10006B848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10006B890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006B910()
{

  return swift_deallocObject();
}

unint64_t sub_10006B954()
{
  result = qword_100100CD0;
  if (!qword_100100CD0)
  {
    sub_10003B1B8(&qword_100100CC8);
    sub_10006BA0C();
    sub_10003D450(&qword_100100CE8, &unk_100100CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100CD0);
  }

  return result;
}

unint64_t sub_10006BA0C()
{
  result = qword_100100CD8;
  if (!qword_100100CD8)
  {
    sub_10003B1B8(&qword_100100CC0);
    sub_10003D450(&qword_100100CE0, &qword_100100CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100CD8);
  }

  return result;
}

uint64_t sub_10006BACC()
{
  sub_100030C14(&qword_100100D00);
  Binding.wrappedValue.getter();
  return v1;
}

void (*sub_10006BB70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x60uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[9] = a4;
  v9[10] = a5;
  v9[8] = a3;
  *v9 = a3;
  v9[1] = a4;
  v9[2] = a5;

  v11 = a5;
  v10[11] = sub_100030C14(&qword_100100D00);
  Binding.wrappedValue.getter();
  return sub_10006BC38;
}

uint64_t sub_10006BC3C()
{
  sub_100030C14(&qword_100100D00);
  Binding.projectedValue.getter();
  return v1;
}

char *sub_10006BC90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;

  sub_100030C14(&qword_100100D00);
  Binding.wrappedValue.getter();
  v6 = objc_allocWithZone(type metadata accessor for CARPaletteSelectorView());
  v7 = sub_10006CA5C(a2, v9[5], 30.0, 30.0, 16.0, 3.0, 3.0, 16.0);
  v9[3] = type metadata accessor for CARThemePaletteSelector.Coordinator();
  v9[4] = &off_1000DCB70;
  sub_100030C14(&qword_100100D08);
  UIViewRepresentableContext.coordinator.getter();
  (*((swift_isaMask & *v7) + 0xA8))(v9);
  return v7;
}

void sub_10006BE70(void *a1)
{
  sub_100030C14(&qword_100100D00);
  Binding.wrappedValue.getter();
  sub_100030C14(&qword_100100D08);
  UIViewRepresentableContext.transaction.getter();
  v2 = Transaction.disablesAnimations.getter();

  (*((swift_isaMask & *a1) + 0xD8))(v3, (v2 & 1) == 0);
}

id sub_10006BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  sub_100030C14(&qword_100100D00);
  Binding.projectedValue.getter();
  v4 = type metadata accessor for CARThemePaletteSelector.Coordinator();
  v8 = v11;
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV15CarPlaySettings23CARThemePaletteSelector11Coordinator__selectedPalette];
  *v6 = v10;
  *(v6 + 8) = v8;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_10006BFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCV15CarPlaySettings23CARThemePaletteSelector11Coordinator__selectedPalette];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_10006C040()
{
  sub_100030C14(&qword_100100D00);
  Binding.wrappedValue.getter();
  return v1;
}

void (*sub_10006C108(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + OBJC_IVAR____TtCV15CarPlaySettings23CARThemePaletteSelector11Coordinator__selectedPalette;
  v6 = *(v1 + OBJC_IVAR____TtCV15CarPlaySettings23CARThemePaletteSelector11Coordinator__selectedPalette);
  v4[8] = v6;
  v7 = *(v5 + 8);
  v4[9] = v7;
  v8 = *(v5 + 16);
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v9 = v8;
  v4[11] = sub_100030C14(&qword_100100D00);
  Binding.wrappedValue.getter();
  return sub_100073F8C;
}

uint64_t sub_10006C1D4()
{
  sub_100030C14(&qword_100100D00);
  Binding.projectedValue.getter();
  return v1;
}

id sub_10006C23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtCV15CarPlaySettings23CARThemePaletteSelector11Coordinator__selectedPalette];
  *v4 = a1;
  *(v4 + 1) = a2;
  *(v4 + 2) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CARThemePaletteSelector.Coordinator();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_10006C284(void *a1)
{
  v4 = *((swift_isaMask & *v1) + 0x60);
  v2 = a1;

  return v4(v2);
}

char *sub_10006C404()
{
  v1 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);

  sub_100030C14(&qword_100100D00);
  Binding.wrappedValue.getter();
  v2 = objc_allocWithZone(type metadata accessor for CARPaletteSelectorView());
  v3 = sub_10006CA5C(v1, v9, 30.0, 30.0, 16.0, 3.0, 3.0, 16.0);
  v7 = type metadata accessor for CARThemePaletteSelector.Coordinator();
  v8 = &off_1000DCB70;
  sub_100030C14(&qword_100100D08);
  UIViewRepresentableContext.coordinator.getter();
  (*((swift_isaMask & *v3) + 0xA8))(&v5);
  return v3;
}

void sub_10006C518(void *a1)
{
  sub_100030C14(&qword_100100D00);
  Binding.wrappedValue.getter();
  sub_100030C14(&qword_100100D08);
  UIViewRepresentableContext.transaction.getter();
  v2 = Transaction.disablesAnimations.getter();

  (*((swift_isaMask & *a1) + 0xD8))(v3, (v2 & 1) == 0);
}

id sub_10006C5F8@<X0>(void *a1@<X8>)
{
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  sub_100030C14(&qword_100100D00);
  Binding.projectedValue.getter();
  v3 = type metadata accessor for CARThemePaletteSelector.Coordinator();
  v7 = v10;
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV15CarPlaySettings23CARThemePaletteSelector11Coordinator__selectedPalette];
  *v5 = v9;
  *(v5 + 8) = v7;
  v8.receiver = v4;
  v8.super_class = v3;
  result = objc_msgSendSuper2(&v8, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10006C6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100072D48();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10006C704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100072D48();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10006C768()
{
  sub_100072D48();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double sub_10006C7E8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10006C7F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_delegate;
  swift_beginAccess();
  return sub_10003976C(v1 + v3, a1, &qword_100100D48);
}

uint64_t sub_10006C860(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_delegate;
  swift_beginAccess();
  sub_10006D760(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10006C920()
{
  v1 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_selectedPalette;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10006C974(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_selectedPalette;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10006C9CC()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id sub_10006CA14()
{
  v0 = objc_allocWithZone(UIStackView);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

char *sub_10006CA5C(unint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = &v8[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_delegate];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_scrollView;
  *&v8[v17] = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView;
  *&v8[v18] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v118 = v8;
  if (a1 >> 62)
  {
LABEL_48:
    v119 = a1 & 0xFFFFFFFFFFFFFF8;
    v120 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v119 = a1 & 0xFFFFFFFFFFFFFF8;
    v120 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v120 == v19)
    {
      goto LABEL_43;
    }

    if (v20)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(v119 + 16))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 8 * v19 + 32);
    }

    v23 = v22;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_44;
    }

    v24 = a1;
    v25 = [v22 identifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = [a2 identifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (v26 == v30 && v28 == v32)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v19;
    a1 = v24;
    if (v21)
    {
      goto LABEL_14;
    }
  }

LABEL_14:

  v123[0] = sub_100072A88(v33);
  sub_100071864(v123);

  v34 = v123[0];
  if (v123[0] < 0 || (v123[0] & 0x4000000000000000) != 0)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *(v123[0] + 16);
  }

  v36 = 0;
  a1 = v34 & 0xC000000000000001;
  v117 = v35;
  while (1)
  {
    if (v35 == v36)
    {
      v36 = 0;
      v41 = 1;
      goto LABEL_29;
    }

    if (a1)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v34 + 16))
      {
        goto LABEL_45;
      }

      v37 = *(v34 + 8 * v36 + 32);
    }

    v38 = v37;
    v39 = [v37 isProminent];

    if (!v39)
    {
      break;
    }

    if (__OFADD__(v36++, 1))
    {
      goto LABEL_46;
    }
  }

  v41 = v36 == 0;
LABEL_29:
  *&v118[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_palettes] = v34;
  v42 = &v118[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorPosition];
  *v42 = v36;
  v116 = v41;
  v42[8] = v41;
  *&v118[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_selectedPalette] = a2;
  v43 = &v118[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_pageSize];
  *v43 = a3;
  v43[1] = a4;
  *&v118[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_pageSpacing] = a5;
  *&v118[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_selectionRingWidth] = a6;
  v44 = &v118[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorSize];
  *v44 = a7;
  v44[1] = a8;
  v45 = type metadata accessor for CARPaletteSelectorView();
  v122.receiver = v118;
  v122.super_class = v45;

  v115 = a2;
  v46 = objc_msgSendSuper2(&v122, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v47 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_scrollView;
  v48 = *&v46[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_scrollView];
  v49 = v46;
  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v46[v47] setClipsToBounds:0];
  [*&v46[v47] setPagingEnabled:1];
  [*&v46[v47] setDelegate:v49];
  v50 = *&v46[v47];
  v51 = v49;
  [v51 addSubview:v50];
  a2 = objc_opt_self();
  sub_100030C14(&qword_1000FFC10);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1000A26D0;
  v53 = [*&v46[v47] centerXAnchor];
  v54 = [v51 centerXAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v52 + 32) = v55;
  v56 = [*&v46[v47] centerYAnchor];
  v57 = [v51 centerYAnchor];

  v58 = [v56 constraintEqualToAnchor:v57];
  *(v52 + 40) = v58;
  v59 = [*&v46[v47] widthAnchor];
  v60 = [v59 constraintEqualToConstant:a3 + a5];

  *(v52 + 48) = v60;
  v61 = v47;
  v62 = [*&v46[v47] heightAnchor];
  v63 = [v62 constraintEqualToConstant:a4];

  *(v52 + 56) = v63;
  v118 = sub_1000317B8(0, &qword_100100390);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 activateConstraints:isa];

  v65 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView;
  [*&v51[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v51[v65] setDistribution:3];
  [*&v51[v65] setAlignment:3];
  [*&v51[v65] setSpacing:a5];
  v66 = v61;
  v67 = v46;
  [*&v46[v66] addSubview:*&v51[v65]];
  a7 = 0.5;
  a8 = a5 * 0.5;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1000A26D0;
  v69 = [*&v51[v65] topAnchor];
  v70 = *&v46[v66];
  v71 = v66;
  v72 = [v70 topAnchor];
  v73 = [v69 constraintEqualToAnchor:v72];

  *(v68 + 32) = v73;
  v74 = [*&v51[v65] bottomAnchor];
  v75 = [*&v67[v71] bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v68 + 40) = v76;
  v77 = [*&v51[v65] leadingAnchor];
  v78 = [*&v67[v71] leadingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:a5 * 0.5];

  *(v68 + 48) = v79;
  v80 = [*&v51[v65] trailingAnchor];
  v81 = [*&v67[v71] trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:-(a5 * 0.5)];

  *(v68 + 56) = v82;
  v83 = Array._bridgeToObjectiveC()().super.isa;

  [a2 activateConstraints:v83];

  v84 = type metadata accessor for CARPaletteSelectorView.SelectionRingView();
  v85 = objc_allocWithZone(v84);
  v86 = OBJC_IVAR____TtCC15CarPlaySettings22CARPaletteSelectorViewP33_ABAA97FD5F3EB8BD1002BD19D9BB143117SelectionRingView_shapeLayer;
  *&v85[v86] = [objc_allocWithZone(CAShapeLayer) init];
  *&v85[OBJC_IVAR____TtCC15CarPlaySettings22CARPaletteSelectorViewP33_ABAA97FD5F3EB8BD1002BD19D9BB143117SelectionRingView_strokeWidth] = a6;
  v124.receiver = v85;
  v124.super_class = v84;
  v87 = v84;
  v88 = objc_msgSendSuper2(&v124, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v89 = OBJC_IVAR____TtCC15CarPlaySettings22CARPaletteSelectorViewP33_ABAA97FD5F3EB8BD1002BD19D9BB143117SelectionRingView_shapeLayer;
  v90 = *&v88[OBJC_IVAR____TtCC15CarPlaySettings22CARPaletteSelectorViewP33_ABAA97FD5F3EB8BD1002BD19D9BB143117SelectionRingView_shapeLayer];
  v91 = v88;
  [v90 setLineWidth:a6];
  v92 = *&v88[v89];
  v93 = objc_opt_self();
  v94 = v92;
  v95 = [v93 clearColor];
  v96 = [v95 CGColor];

  [v94 setFillColor:v96];
  v97 = [v91 layer];
  [v97 addSublayer:*&v88[v89]];

  sub_100071148();
  sub_100030C14(&unk_100100EA0);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1000A1FF0;
  *(v98 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v98 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v123[3] = v87;
  v123[0] = v91;
  UIView.registerForTraitChanges(_:target:action:)();

  swift_unknownObjectRelease();
  sub_100038D70(v123);
  v99 = v91;
  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v51 addSubview:v99];
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1000A26D0;
  v101 = [v99 centerXAnchor];
  v102 = [v51 centerXAnchor];

  v103 = [v101 constraintEqualToAnchor:v102];
  *(v100 + 32) = v103;
  v104 = [v99 centerYAnchor];
  v105 = [v51 centerYAnchor];

  v106 = [v104 constraintEqualToAnchor:v105];
  *(v100 + 40) = v106;
  v107 = [v99 widthAnchor];
  a6 = a6 * 4.0;
  v108 = [v107 constraintEqualToConstant:a6 + a3];

  *(v100 + 48) = v108;
  v109 = [v99 heightAnchor];

  a1 = [v109 constraintEqualToConstant:a6 + a4];
  *(v100 + 56) = a1;
  v110 = Array._bridgeToObjectiveC()().super.isa;

  [a2 activateConstraints:v110];

  if (v117)
  {
    v111 = 0;
    while (1)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v111 >= *(v34 + 16))
        {
          goto LABEL_42;
        }

        v112 = *(v34 + 8 * v111 + 32);
      }

      a1 = v112;
      v113 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        break;
      }

      sub_10006E794(v112);

      ++v111;
      if (v113 == v117)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_38:

  if (!v116)
  {
    sub_10006EA28(v36);
  }

  [v51 layoutIfNeeded];
  sub_10006ED38(v115, 0);

  return v51;
}

uint64_t sub_10006D760(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_100100D48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10006D7D0()
{
  v1 = v0 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_delegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_scrollView;
  *(v0 + v2) = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10006D994(void *a1, char a2)
{
  v4 = (*((swift_isaMask & *v2) + 0xB8))();
  v5 = [v4 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v32 = a1;
  v9 = [a1 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v15 = *(v30 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_palettes);
      if (v15 >> 62)
      {
LABEL_28:
        v31 = v15 & 0xFFFFFFFFFFFFFF8;
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = v15 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = 0;
      while (v16 != v17)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(v31 + 16))
          {
            goto LABEL_27;
          }

          v19 = *(v15 + 8 * v17 + 32);
        }

        v20 = v19;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v21 = [v19 identifier];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = [v32 identifier];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v22 == v26 && v24 == v28)
        {

LABEL_23:

          sub_10006ED38(v32, a2 & 1);
          return;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v17;
        if (v18)
        {
          goto LABEL_23;
        }
      }
    }
  }
}

id sub_10006DC78(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = *&v3[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_scrollView];
  [v7 frame];
  MinX = CGRectGetMinX(v39);
  [v7 contentOffset];
  v10 = MinX - v9;
  [v7 frame];
  MinY = CGRectGetMinY(v40);
  [v7 contentOffset];
  v13 = MinY - v12;
  [v7 contentSize];
  v41.size.width = v14;
  v41.size.height = v15;
  v41.origin.x = v10;
  v41.origin.y = v13;
  v37.x = a2;
  v37.y = a3;
  if (CGRectContainsPoint(v41, v37))
  {
    v16 = [*&v3[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView] arrangedSubviews];
    sub_1000317B8(0, &qword_100100D70);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = v7;
    if (v17 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v19 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        [v20 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [v21 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v38.x = v31;
        v38.y = v32;
        v42.origin.x = v24;
        v42.origin.y = v26;
        v42.size.width = v28;
        v42.size.height = v30;
        if (CGRectContainsPoint(v42, v38))
        {

          return v21;
        }

        ++v19;
        if (v22 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    return v35;
  }

  else
  {
    v36.receiver = v3;
    v36.super_class = type metadata accessor for CARPaletteSelectorView();
    return objc_msgSendSuper2(&v36, "hitTest:withEvent:", a1, a2, a3);
  }
}

void sub_10006E04C(void *a1)
{
  [a1 contentOffset];
  v21 = sub_10006F000(v2);
  v3 = [v21 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *((swift_isaMask & *v1) + 0xB8);
  v8 = v7();
  v9 = [v8 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v4 == v10 && v6 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
    }

    else
    {
      v15 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_selectedPalette;
      swift_beginAccess();
      v16 = *(v1 + v15);
      *(v1 + v15) = v21;
      v17 = v21;

      (*((swift_isaMask & *v1) + 0xA0))(v25);
      if (v25[3])
      {
        sub_10004EC58(v25, v22);
        sub_100072B40(v25);
        v18 = v23;
        v19 = v24;
        sub_100039470(v22, v23);
        v20 = v7();
        (*(v19 + 8))(v20, v18, v19);

        sub_100038D70(v22);
      }

      else
      {

        sub_100072B40(v25);
      }
    }
  }
}

void sub_10006E32C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorPosition + 8))
  {
    return;
  }

  v2 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorPosition);
  [a1 contentOffset];
  v5 = v4;
  v6 = [*(v1 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView) arrangedSubviews];
  sub_1000317B8(0, &qword_100100D70);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = *(v7 + 8 * v2 + 32);
LABEL_6:
  v9 = v8;

  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v15;
  v20.size.height = v17;
  if (CGRectGetMinX(v20) <= v5)
  {
    v18 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorSize) + *(v1 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_pageSpacing);
  }

  else
  {
    v18 = 0.0;
  }

  [a1 _setPagingOrigin:{v18, 0.0}];
}

void sub_10006E54C(void *a1)
{
  v2 = v1;
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *((swift_isaMask & *v2) + 0xB8);
  v9 = v8();
  v10 = [v9 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v5 == v11 && v7 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      v16 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_selectedPalette;
      swift_beginAccess();
      v17 = *(v2 + v16);
      *(v2 + v16) = a1;
      v18 = a1;

      (*((swift_isaMask & *v2) + 0xA0))(v25);
      if (v25[3])
      {
        sub_10004EC58(v25, v22);
        sub_100072B40(v25);
        v19 = v23;
        v20 = v24;
        sub_100039470(v22, v23);
        v21 = v8();
        (*(v20 + 8))(v21, v19, v20);

        sub_100038D70(v22);
      }

      else
      {
        sub_100072B40(v25);
      }

      sub_10006ED38(v18, 1);
    }
  }
}

void sub_10006E794(void *a1)
{
  v3 = type metadata accessor for CARPaletteSelectorView.Swatch();
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *v6 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  *(v6 + v4[7]) = a1;
  v8 = (v6 + v4[8]);
  *v8 = sub_100072E38;
  v8[1] = v7;
  v9 = v6 + v4[9];
  v10 = v1;
  v11 = a1;
  *v9 = static HierarchicalShapeStyle.primary.getter();
  *(v9 + 2) = 256;
  v12 = objc_allocWithZone(sub_100030C14(&qword_100100E98));
  v13 = _UIHostingView.init(rootView:)();
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v10[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView] addArrangedSubview:v13];
  v14 = objc_opt_self();
  sub_100030C14(&qword_1000FFC10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000A4210;
  v16 = [v13 widthAnchor];
  v17 = &v10[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_pageSize];
  v18 = [v16 constraintEqualToConstant:*&v10[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_pageSize]];

  *(v15 + 32) = v18;
  v19 = [v13 heightAnchor];

  v20 = [v19 constraintEqualToConstant:v17[1]];
  *(v15 + 40) = v20;
  sub_1000317B8(0, &qword_100100390);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:isa];
}

void sub_10006EA28(uint64_t a1)
{
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v3 layer];
  v5 = v1 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorSize;
  v6 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorSize);
  [v4 setCornerRadius:v6 * 0.5];

  v7 = objc_allocWithZone(UIColor);
  v17[4] = sub_10006ECCC;
  v17[5] = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000717FC;
  v17[3] = &unk_1000DCC80;
  v8 = _Block_copy(v17);
  v9 = [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  [v3 setBackgroundColor:v9];

  [*(v1 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView) insertArrangedSubview:v3 atIndex:a1];
  v10 = objc_opt_self();
  sub_100030C14(&qword_1000FFC10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000A4210;
  v12 = [v3 widthAnchor];
  v13 = [v12 constraintEqualToConstant:v6];

  *(v11 + 32) = v13;
  v14 = [v3 heightAnchor];
  v15 = [v14 constraintEqualToConstant:*(v5 + 8)];

  *(v11 + 40) = v15;
  sub_1000317B8(0, &qword_100100390);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 activateConstraints:isa];
}

id sub_10006ECCC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray2Color;
  }

  v4 = [v2 *v3];

  return v4;
}

void sub_10006ED38(void *a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_palettes);
  if (v3 >> 62)
  {
LABEL_28:
    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    v29 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    if (v29 == v4)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v27 + 16))
      {
        goto LABEL_27;
      }

      v5 = *(v3 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = [v5 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
      goto LABEL_17;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_18;
    }
  }

  while (!__OFADD__(v4++, 1));
  __break(1u);
LABEL_17:

LABEL_18:
  v18 = (v4 >= *(v26 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorPosition)) & ~*(v26 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorPosition + 8);
  v19 = [*(v26 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView) arrangedSubviews];
  sub_1000317B8(0, &qword_100100D70);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v4 + v18;
  if (__OFADD__(v4, v18))
  {
    __break(1u);
    goto LABEL_30;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_23;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v22 = *(v20 + 8 * v21 + 32);
LABEL_23:
  v30 = v22;

  [v30 frame];
  MinX = CGRectGetMinX(v32);
  v24 = *(v26 + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_scrollView);
  [v24 contentOffset];
  [v24 setContentOffset:a2 & 1 animated:MinX];
}

id sub_10006F000(CGFloat a1)
{
  v5 = 0.0;
  v6 = &selRef_addStateUpdateListener_withCompletionHandler_;
  if (v2[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorPosition + 8])
  {
    goto LABEL_8;
  }

  v7 = *&v2[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorPosition];
  v3 = [*&v2[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView] arrangedSubviews];
  sub_1000317B8(0, &qword_100100D70);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

  for (i = *(v8 + 8 * v7 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v1 = i;

    [v1 *(v6 + 1696)];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v28.origin.x = v11;
    v28.origin.y = v13;
    v28.size.width = v15;
    v28.size.height = v17;
    if (CGRectGetMinX(v28) <= a1)
    {
      v5 = *&v2[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_separatorSize] + *&v2[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_pageSpacing];
    }

LABEL_8:
    [*&v2[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_scrollView] *(v6 + 1696)];
    a1 = floor((a1 - v5) / CGRectGetWidth(v29));
    if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (a1 <= -9.22337204e18)
    {
      goto LABEL_34;
    }

    if (a1 >= 9.22337204e18)
    {
      goto LABEL_35;
    }

    v1 = *&v2[OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_palettes];
    v3 = (v1 >> 62);
    if (!(v1 >> 62))
    {
      v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_38;
      }

      goto LABEL_13;
    }

LABEL_36:
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_13:
    if (v6 >= (a1 & ~(a1 >> 63)))
    {
      v19 = a1 & ~(a1 >> 63);
    }

    else
    {
      v19 = v6;
    }

    result = [v2 effectiveUserInterfaceLayoutDirection];
    if (!result)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_46;
      }

      if (v6 < 0)
      {
        __break(1u);
      }

      else if (v19 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = (v1 + 8 * v19);
        goto LABEL_30;
      }

      __break(1u);
      return result;
    }

    if (v3)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v21 - v19;
    if (__OFSUB__(v21, v19))
    {
      goto LABEL_39;
    }

    v24 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
      goto LABEL_40;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_46;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    if (v24 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v22 = (v1 + 8 * v24);
LABEL_30:
  v25 = *(v22 + 4);

  return v25;
}

uint64_t sub_10006F2F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1000FF4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003976C(v2, &v14 - v9, &qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10006F4F8@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v60 = type metadata accessor for AccessibilityTraits();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CARPaletteSelectorView.Swatch();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v13 = sub_100030C14(&qword_100100F68);
  v44 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v48 = sub_100030C14(&qword_100100F70);
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v17 = &v43 - v16;
  v47 = sub_100030C14(&qword_100100F78);
  v18 = __chkstk_darwin(v47);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v46 = &v43 - v21;
  v22 = sub_100030C14(&qword_100100F80);
  v23 = *(v22 - 8);
  v52 = v22;
  v53 = v23;
  __chkstk_darwin(v22);
  v45 = &v43 - v24;
  v43 = v1;
  sub_100073388(v1, &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_10007351C(&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v61 = v1;
  sub_100030C14(&qword_100100F88);
  sub_100073770();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v27 = sub_10003D450(&qword_100101048, &qword_100100F68);
  v28 = sub_100073DD8(&unk_100101050, &type metadata accessor for PlainButtonStyle);
  v29 = v49;
  View.buttonStyle<A>(_:)();
  (*(v50 + 8))(v8, v29);
  (*(v44 + 8))(v15, v13);
  v30 = [*(v43 + *(v10 + 28)) displayName];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v66 = v31;
  v67 = v33;
  v62 = v13;
  v63 = v29;
  v64 = v27;
  v65 = v28;
  swift_getOpaqueTypeConformance2();
  sub_10003D498();
  v34 = v48;
  View.accessibilityLabel<A>(_:)();

  (*(v51 + 8))(v17, v34);
  v35 = v46;
  v36 = v47;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10003970C(v20, &qword_100100F78);
  v37 = v54;
  static AccessibilityChildBehavior.ignore.getter();
  v38 = sub_100073C5C();
  v39 = v45;
  View.accessibilityElement(children:)();
  (*(v55 + 8))(v37, v56);
  sub_10003970C(v35, &qword_100100F78);
  v40 = v57;
  static AccessibilityTraits.isButton.getter();
  v62 = v36;
  v63 = v38;
  swift_getOpaqueTypeConformance2();
  v41 = v52;
  View.accessibilityAddTraits(_:)();
  (*(v58 + 8))(v40, v60);
  return (*(v53 + 8))(v39, v41);
}

double sub_10006FC9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CARPaletteSelectorView.Swatch();
  v9 = *(a1 + *(v8 + 20));
  v10 = [v9 colorScheme];
  v11 = [v10 colorScheme];

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v25 = [v9 colorScheme];
      v26 = [v25 linearGradient];

      if (v26)
      {
        v27 = [v26 colors];
        sub_1000317B8(0, &qword_100100D78);
        v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = [v26 locations];
        sub_1000317B8(0, &unk_100100D80);
        v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000713F8(v28, v30);

        [v26 startPoint];
        [v26 startPoint];
        [v26 endPoint];
        [v26 endPoint];
        Gradient.init(stops:)();
        LinearGradient.init(gradient:startPoint:endPoint:)();
        *v63 = v71;
        *&v63[8] = v72;
        *&v63[24] = v73;
        *&v63[40] = 256;
        v63[42] = 0;
        sub_100030C14(&qword_100101000);
        sub_100030C14(&qword_100101010);
        sub_10003D450(&qword_100100FF8, &qword_100101000);
        sub_10003D450(&qword_100101008, &qword_100101010);
        _ConditionalContent<>.init(storage:)();
      }

      else
      {
        v41 = (a1 + *(v8 + 28));
        v42 = *v41;
        v43 = *(v41 + 4);
        v44 = *(v41 + 5);
        v21 = v43 == 0;
        v45 = &_mh_execute_header;
        if (v21)
        {
          v45 = 0;
        }

        v46 = v45 | v42;
        v21 = v44 == 0;
        v47 = 0x10000000000;
        if (v21)
        {
          v47 = 0;
        }

        *v63 = v46 | v47;
        memset(&v63[8], 0, 34);
        v63[42] = 1;
        sub_100030C14(&qword_100101000);
        sub_100030C14(&qword_100101010);
        sub_10003D450(&qword_100100FF8, &qword_100101000);
        sub_10003D450(&qword_100101008, &qword_100101010);
        _ConditionalContent<>.init(storage:)();
      }

      BYTE2(v68) = BYTE2(v68) != 0;
      HIBYTE(v68) = 1;
      sub_100030C14(&qword_100100FE0);
      sub_100030C14(&qword_100100FF0);
      sub_10003D450(&qword_100100FD8, &qword_100100FE0);
      sub_100073A48();
      _ConditionalContent<>.init(storage:)();
      if (v63[43])
      {
        v48 = 0x1000000;
      }

      else
      {
        v48 = 0;
      }

      v65 = *v63;
      v66 = *&v63[16];
      v67 = *&v63[32];
      v68 = v48 | *&v63[40] | (v63[42] << 16);
      v69 = 0;
      sub_100030C14(&qword_100100FD0);
      sub_100030C14(&unk_100101020);
      sub_100073990();
      sub_100073B28(&qword_100101018, &unk_100101020, &unk_1000A45A8, sub_100073BD8);
      _ConditionalContent<>.init(storage:)();
      v49 = &_mh_execute_header;
      if (!v62)
      {
        BYTE4(v49) = 0;
      }

      *v63 = v58;
      *&v63[16] = v59;
      *&v63[32] = v60;
      *&v63[40] = v61;
      v63[44] = BYTE4(v49);
      v64 = 0;
      sub_100030C14(&qword_100100FC0);
      sub_100030C14(&qword_100101010);
      sub_1000738D8();
      sub_10003D450(&qword_100101008, &qword_100101010);
      goto LABEL_49;
    }

    if (v11 != 3)
    {
      if (v11 != 4)
      {
        goto LABEL_29;
      }

LABEL_10:
      v15 = (a1 + *(v8 + 28));
      v16 = *v15;
      v17 = *(v15 + 4);
      v18 = *(v15 + 5);
      if (v17)
      {
        v19 = &_mh_execute_header;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19 | v16;
      v21 = v18 == 0;
      v22 = 0x10000000000;
      if (v21)
      {
        v22 = 0;
      }

      *v63 = v20 | v22;
      *&v63[8] = 0;
      *&v63[16] = 0;
      v63[18] = 1;
      sub_100030C14(&qword_100101030);
      sub_100030C14(&qword_100101010);
      sub_100073BD8();
      sub_10003D450(&qword_100101008, &qword_100101010);
      _ConditionalContent<>.init(storage:)();
      v23 = 0x10000;
      if (!BYTE2(v66))
      {
        v23 = 0;
      }

      v67 = 0;
      v66 = v23 | v66;
      v68 = 0;
      v69 = 1;
      sub_100030C14(&qword_100100FD0);
      sub_100030C14(&unk_100101020);
      sub_100073990();
      sub_100073B28(&qword_100101018, &unk_100101020, &unk_1000A45A8, sub_100073BD8);
      _ConditionalContent<>.init(storage:)();
      if (v62)
      {
        v24 = &_mh_execute_header;
      }

      else
      {
        BYTE4(v24) = 0;
      }

      *v63 = v58;
      *&v63[16] = v59;
      *&v63[32] = v60;
      *&v63[40] = v61;
      v63[44] = BYTE4(v24);
      v64 = 0;
      sub_100030C14(&qword_100100FC0);
      sub_1000738D8();
      goto LABEL_49;
    }

    Image.init(_:bundle:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v31 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    *v63 = v31;
    *&v63[8] = 0;
    *&v63[16] = 1;
    v63[18] = 0;

    sub_100030C14(&qword_100101030);
    sub_100030C14(&qword_100101010);
    sub_100073BD8();
    sub_10003D450(&qword_100101008, &qword_100101010);
    _ConditionalContent<>.init(storage:)();
    v32 = 0x10000;
    if (!BYTE2(v66))
    {
      v32 = 0;
    }

    v67 = 0;
    v66 = v32 | v66;
    v68 = 0;
    v69 = 1;
    sub_100030C14(&qword_100100FD0);
    sub_100030C14(&unk_100101020);
    sub_100073990();
    sub_100073B28(&qword_100101018, &unk_100101020, &unk_1000A45A8, sub_100073BD8);
    _ConditionalContent<>.init(storage:)();
    v33 = &_mh_execute_header;
    if (!v62)
    {
      BYTE4(v33) = 0;
    }

    *v63 = v58;
    *&v63[16] = v59;
    *&v63[32] = v60;
    *&v63[40] = v61;
    v63[44] = BYTE4(v33);
    v64 = 0;
    sub_100030C14(&qword_100100FC0);
    sub_1000738D8();
LABEL_57:
    _ConditionalContent<>.init(storage:)();

    goto LABEL_58;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  if (v11 == 1)
  {
    v12 = [v9 colorScheme];
    v13 = [v12 color];

    if (v13)
    {
      v14 = Color.init(_:)();
    }

    else
    {
      v14 = static Color.primary.getter();
    }

    *&v65 = v14;
    *(&v65 + 1) = 256;
    v67 = 0;
    v66 = 0uLL;
    v68 = 0;

    sub_100030C14(&qword_100100FE0);
    sub_100030C14(&qword_100100FF0);
    sub_10003D450(&qword_100100FD8, &qword_100100FE0);
    sub_100073A48();
    _ConditionalContent<>.init(storage:)();
    if (v63[43])
    {
      v50 = 0x1000000;
    }

    else
    {
      v50 = 0;
    }

    v65 = *v63;
    v66 = *&v63[16];
    v67 = *&v63[32];
    v68 = v50 | *&v63[40] | (v63[42] << 16);
    v69 = 0;
    sub_100030C14(&qword_100100FD0);
    sub_100030C14(&unk_100101020);
    sub_100073990();
    sub_100073B28(&qword_100101018, &unk_100101020, &unk_1000A45A8, sub_100073BD8);
    _ConditionalContent<>.init(storage:)();
    v51 = &_mh_execute_header;
    if (!v62)
    {
      BYTE4(v51) = 0;
    }

    *v63 = v58;
    *&v63[16] = v59;
    *&v63[32] = v60;
    *&v63[40] = v61;
    v63[44] = BYTE4(v51);
    v64 = 0;
    sub_100030C14(&qword_100100FC0);
    sub_100030C14(&qword_100101010);
    sub_1000738D8();
    sub_10003D450(&qword_100101008, &qword_100101010);
    goto LABEL_57;
  }

LABEL_29:
  v34 = (a1 + *(v8 + 28));
  v35 = *v34;
  v36 = *(v34 + 4);
  v37 = *(v34 + 5);
  v21 = v36 == 0;
  v38 = &_mh_execute_header;
  if (v21)
  {
    v38 = 0;
  }

  v39 = v38 | v35;
  v21 = v37 == 0;
  v40 = 0x10000000000;
  if (v21)
  {
    v40 = 0;
  }

  *v63 = v39 | v40;
  memset(&v63[8], 0, 37);
  v64 = 1;
  sub_100030C14(&qword_100100FC0);
  sub_100030C14(&qword_100101010);
  sub_1000738D8();
  sub_10003D450(&qword_100101008, &qword_100101010);
LABEL_49:
  _ConditionalContent<>.init(storage:)();
LABEL_58:
  result = *&v65;
  v53 = v66;
  v54 = v67;
  v55 = v68 | (v69 << 32);
  v56 = v70;
  *a2 = v65;
  *(a2 + 16) = v53;
  *(a2 + 32) = v54;
  *(a2 + 40) = v55;
  *(a2 + 44) = BYTE4(v55);
  *(a2 + 45) = v56;
  return result;
}

double sub_100070B74@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 colors];
  sub_1000317B8(0, &qword_100100D78);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [v1 locations];
  sub_1000317B8(0, &unk_100100D80);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000713F8(v4, v6);

  [v1 startPoint];
  [v1 startPoint];
  [v1 endPoint];
  [v1 endPoint];
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

double sub_100070CEC@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v22 - v7;
  v9 = static HierarchicalShapeStyle.primary.getter();
  sub_10006F2F8(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
  v10 = static ColorScheme.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v8, v2);
  if (v10)
  {
    v12 = 0.1;
  }

  else
  {
    v12 = 0.15;
  }

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v13 = *&v22[1];
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = static Alignment.center.getter();
  v19 = v18;
  KeyPath = swift_getKeyPath();
  *a1 = v13 * 0.5;
  *(a1 + 8) = v13;
  result = v23;
  *(a1 + 16) = v23;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 48) = v9;
  *(a1 + 52) = v12;
  *(a1 + 56) = 256;
  *(a1 + 64) = v17;
  *(a1 + 72) = v19;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = 0;
  return result;
}

id sub_100070EF8()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CARPaletteSelectorView.SelectionRingView();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v0 bounds];
  MidX = CGRectGetMidX(v13);
  [v0 bounds];
  MidY = CGRectGetMidY(v14);
  v3 = *&v0[OBJC_IVAR____TtCC15CarPlaySettings22CARPaletteSelectorViewP33_ABAA97FD5F3EB8BD1002BD19D9BB143117SelectionRingView_strokeWidth] * 0.5;
  [v0 bounds];
  Width = CGRectGetWidth(v15);
  [v0 bounds];
  Height = CGRectGetHeight(v16);
  if (Height >= Width)
  {
    Height = Width;
  }

  v6 = Height * 0.5 - v3;
  if (v6 > v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *&v0[OBJC_IVAR____TtCC15CarPlaySettings22CARPaletteSelectorViewP33_ABAA97FD5F3EB8BD1002BD19D9BB143117SelectionRingView_shapeLayer];
  v9 = [objc_opt_self() bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v7 clockwise:{0.0, 6.28318531}];
  v10 = [v9 CGPath];

  [v8 setPath:v10];
  [v0 frame];
  return [v8 setFrame:{0.0, 0.0}];
}

void sub_100071148()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = &selRef_whiteColor;
  if (v2 != 2)
  {
    v4 = &selRef_systemGray2Color;
  }

  v5 = [v3 *v4];
  v6 = *&v0[OBJC_IVAR____TtCC15CarPlaySettings22CARPaletteSelectorViewP33_ABAA97FD5F3EB8BD1002BD19D9BB143117SelectionRingView_shapeLayer];
  v7 = [v5 CGColor];
  [v6 setStrokeColor:v7];
}

id sub_100071344(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000713F8(unint64_t a1, unint64_t a2)
{
  v40 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
LABEL_3:
    v38 = a2 >> 62;
    if (a2 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    sub_1000728D4(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
LABEL_64:

      __break(1u);
      return;
    }

    v36 = a2;
    if (!v7)
    {
      break;
    }

    v39 = a1 & 0xC000000000000001;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v37 = a2 & 0xC000000000000001;
    v10 = 4;
    v35 = v7;
    while (1)
    {
      v11 = v40 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v10 - 4;
      if (v10 - 4 == v11)
      {
        break;
      }

      if (v39)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v13 = *(a1 + 8 * v10);
      }

      v2 = v13;
      if (v38)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *(v9 + 16);
      }

      if (v12 == v14)
      {
        goto LABEL_64;
      }

      if (v37)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v9 + 16))
        {
          goto LABEL_56;
        }

        v15 = *(a2 + 8 * v10);
      }

      v16 = v15;
      v17 = v2;
      Color.init(_:)();
      [v16 floatValue];
      v2 = Gradient.Stop.init(color:location:)();
      v19 = v18;

      v21 = *(&_swiftEmptyArrayStorage + 2);
      v20 = *(&_swiftEmptyArrayStorage + 3);
      if (v21 >= v20 >> 1)
      {
        sub_1000728D4((v20 > 1), v21 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v21 + 1;
      v22 = &_swiftEmptyArrayStorage + 16 * v21;
      *(v22 + 4) = v2;
      *(v22 + 5) = v19;
      ++v10;
      --v7;
      a2 = v36;
      if (!v7)
      {
        v7 = v35;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1 & 0xC000000000000001;
  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v37 = a2 & 0xC000000000000001;
LABEL_32:
  v23 = v7 + 4;
  if (!v40)
  {
LABEL_33:
    v24 = *(v8 + 16);
    goto LABEL_35;
  }

  while (1)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
LABEL_35:
    v25 = v23 - 4;
    if (v23 - 4 == v24)
    {
      break;
    }

    if (v39)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v8 + 16))
      {
        goto LABEL_58;
      }

      v26 = *(a1 + 8 * v23);
    }

    v2 = v26;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_57;
    }

    if (v38)
    {
      if (v25 == _CocoaArrayWrapper.endIndex.getter())
      {
LABEL_53:

        return;
      }
    }

    else if (v25 == *(v9 + 16))
    {
      goto LABEL_53;
    }

    if (v37)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v9 + 16))
      {
        goto LABEL_59;
      }

      v27 = *(a2 + 8 * v23);
    }

    v28 = v27;
    v29 = v2;
    Color.init(_:)();
    [v28 floatValue];
    v2 = Gradient.Stop.init(color:location:)();
    v31 = v30;

    v33 = *(&_swiftEmptyArrayStorage + 2);
    v32 = *(&_swiftEmptyArrayStorage + 3);
    if (v33 >= v32 >> 1)
    {
      sub_1000728D4((v32 > 1), v33 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v33 + 1;
    v34 = &_swiftEmptyArrayStorage + 16 * v33;
    *(v34 + 4) = v2;
    *(v34 + 5) = v31;
    ++v23;
    a2 = v36;
    if (!v40)
    {
      goto LABEL_33;
    }
  }
}

id sub_1000717FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_100071864(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100073010(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100071968(v6);
  return specialized ContiguousArray._endMutation()();
}

void *sub_1000718E0(uint64_t a1, uint64_t a2)
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

  sub_100030C14(&qword_1000FFC10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_100071968(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000317B8(0, &qword_1000FF7D0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100071BBC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100071A7C(0, v2, 1, a1);
  }
}

void sub_100071A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v20 = a3;
    v7 = *(v4 + 8 * a3);
    v18 = v6;
    v19 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 isProminent];
      if (v11 == [v10 isProminent])
      {
        v13 = [v9 sortIndex];
        v14 = [v10 sortIndex];

        if (v13 >= v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v12 = [v9 isProminent];

        if (!v12)
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      v15 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v15;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v20 + 1;
        v5 = v19 + 8;
        v6 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100071BBC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_102:
    v6 = a3;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v98 = *(v8 + 2);
      if (v98 >= 2)
      {
        while (*v6)
        {
          v99 = v8;
          v8 = (v98 - 1);
          v100 = *&v99[16 * v98];
          v101 = *&v99[16 * v98 + 24];
          sub_100072344((*v6 + 8 * v100), (*v6 + 8 * *&v99[16 * v98 + 16]), (*v6 + 8 * v101), v7);
          if (v5)
          {
            goto LABEL_112;
          }

          if (v101 < v100)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = sub_100072764(v99);
          }

          if (v98 - 2 >= *(v99 + 2))
          {
            goto LABEL_128;
          }

          v102 = &v99[16 * v98];
          *v102 = v100;
          *(v102 + 1) = v101;
          sub_1000726D8(v98 - 1);
          v8 = v99;
          v98 = *(v99 + 2);
          if (v98 <= 1)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_138;
      }

LABEL_112:

      return;
    }

LABEL_134:
    v8 = sub_100072764(v8);
    goto LABEL_104;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v9 = &off_1000F7000;
LABEL_4:
  v10 = v7;
  v7 = (v7 + 1);
  v110 = v8;
  if (v7 < v6)
  {
    v105 = v10;
    v108 = *a3;
    v11 = *(*a3 + 8 * v10);
    v12 = *(*a3 + 8 * v7);
    v13 = v11;
    v14 = [v12 v9[291]];
    if (v14 == [v13 v9[291]])
    {
      v15 = [v12 sortIndex];
      v16 = v5;
      v17 = [v13 sortIndex];

      v18 = v15 < v17;
      v5 = v16;
      v19 = v18;
      v111 = v19;
    }

    else
    {
      v111 = [v12 v9[291]];
    }

    v10 = v105;
    v7 = (v105 + 2);
    if (v105 + 2 < v6)
    {
      v20 = v5;
      v21 = (v108 + 8 * v105 + 16);
      do
      {
        v23 = *(v21 - 1);
        v24 = *v21;
        v25 = v23;
        v26 = [v24 isProminent];
        if (v26 == [v25 isProminent])
        {
          v27 = [v24 sortIndex];
          v28 = [v25 sortIndex];

          if (((v111 ^ (v27 >= v28)) & 1) == 0)
          {
LABEL_17:
            v5 = v20;
            v8 = v110;
            goto LABEL_19;
          }
        }

        else
        {
          v22 = [v24 isProminent];

          if (v111 != v22)
          {
            goto LABEL_17;
          }
        }

        ++v21;
        v7 = (v7 + 1);
        v8 = v110;
      }

      while (v6 != v7);
      v7 = v6;
      v5 = v20;
LABEL_19:
      v10 = v105;
    }

    v9 = &off_1000F7000;
    if (v111)
    {
      if (v7 < v10)
      {
        goto LABEL_131;
      }

      v29 = v7;
      if (v10 < v7)
      {
        v30 = 8 * v7 - 8;
        v31 = 8 * v10;
        v32 = v10;
        do
        {
          v29 = (v29 - 1);
          if (v32 != v29)
          {
            v34 = *a3;
            if (!*a3)
            {
              goto LABEL_137;
            }

            v33 = *(v34 + v31);
            *(v34 + v31) = *(v34 + v30);
            *(v34 + v30) = v33;
          }

          v32 = (v32 + 1);
          v30 -= 8;
          v31 += 8;
        }

        while (v32 < v29);
      }
    }
  }

  v35 = a3[1];
  if (v7 >= v35)
  {
    goto LABEL_51;
  }

  if (__OFSUB__(v7, v10))
  {
    goto LABEL_130;
  }

  if (v7 - v10 >= a4)
  {
    goto LABEL_51;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_132;
  }

  if (v10 + a4 >= v35)
  {
    v36 = a3[1];
  }

  else
  {
    v36 = (v10 + a4);
  }

  if (v36 < v10)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v7 == v36)
  {
    goto LABEL_51;
  }

  v37 = v7;
  v103 = v5;
  v38 = *a3;
  v39 = *a3 + 8 * v7 - 8;
  v106 = v10;
  v40 = v10 - v7;
  v41 = v37;
  v109 = v36;
LABEL_40:
  v112 = v41;
  v42 = *(v38 + 8 * v41);
  v43 = v40;
  v44 = v39;
  while (1)
  {
    v45 = *v44;
    v46 = v42;
    v6 = v45;
    LODWORD(v45) = [v46 v9[291]];
    if (v45 == [v6 v9[291]])
    {
      v48 = [v46 sortIndex];
      v49 = [v6 sortIndex];

      v18 = v48 < v49;
      v9 = &off_1000F7000;
      if (!v18)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v47 = [v46 v9[291]];

      if (!v47)
      {
        goto LABEL_39;
      }
    }

    if (!v38)
    {
      break;
    }

    v50 = *v44;
    v42 = *(v44 + 8);
    *v44 = v42;
    *(v44 + 8) = v50;
    v44 -= 8;
    if (__CFADD__(v43++, 1))
    {
LABEL_39:
      v41 = (v112 + 1);
      v39 += 8;
      --v40;
      if ((v112 + 1) != v109)
      {
        goto LABEL_40;
      }

      v7 = v109;
      v5 = v103;
      v8 = v110;
      v10 = v106;
LABEL_51:
      if (v7 < v10)
      {
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100072778(0, *(v8 + 2) + 1, 1, v8);
      }

      v53 = *(v8 + 2);
      v52 = *(v8 + 3);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v8 = sub_100072778((v52 > 1), v53 + 1, 1, v8);
      }

      *(v8 + 2) = v54;
      v55 = &v8[16 * v53];
      *(v55 + 4) = v10;
      *(v55 + 5) = v7;
      v6 = *a1;
      if (!*a1)
      {
        goto LABEL_139;
      }

      if (v53)
      {
        while (1)
        {
          v56 = v54 - 1;
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v57 = *(v8 + 4);
            v58 = *(v8 + 5);
            v67 = __OFSUB__(v58, v57);
            v59 = v58 - v57;
            v60 = v67;
LABEL_71:
            if (v60)
            {
              goto LABEL_118;
            }

            v73 = &v8[16 * v54];
            v75 = *v73;
            v74 = *(v73 + 1);
            v76 = __OFSUB__(v74, v75);
            v77 = v74 - v75;
            v78 = v76;
            if (v76)
            {
              goto LABEL_121;
            }

            v79 = &v8[16 * v56 + 32];
            v81 = *v79;
            v80 = *(v79 + 1);
            v67 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v67)
            {
              goto LABEL_124;
            }

            if (__OFADD__(v77, v82))
            {
              goto LABEL_125;
            }

            if (v77 + v82 >= v59)
            {
              if (v59 < v82)
              {
                v56 = v54 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          v83 = &v8[16 * v54];
          v85 = *v83;
          v84 = *(v83 + 1);
          v67 = __OFSUB__(v84, v85);
          v77 = v84 - v85;
          v78 = v67;
LABEL_85:
          if (v78)
          {
            goto LABEL_120;
          }

          v86 = &v8[16 * v56];
          v88 = *(v86 + 4);
          v87 = *(v86 + 5);
          v67 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v67)
          {
            goto LABEL_123;
          }

          if (v89 < v77)
          {
            goto LABEL_3;
          }

LABEL_92:
          v94 = v56 - 1;
          if (v56 - 1 >= v54)
          {
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          if (!*a3)
          {
            goto LABEL_136;
          }

          v95 = *&v8[16 * v94 + 32];
          v96 = *&v8[16 * v56 + 40];
          sub_100072344((*a3 + 8 * v95), (*a3 + 8 * *&v8[16 * v56 + 32]), (*a3 + 8 * v96), v6);
          if (v5)
          {
            goto LABEL_112;
          }

          if (v96 < v95)
          {
            goto LABEL_114;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100072764(v8);
          }

          if (v94 >= *(v8 + 2))
          {
            goto LABEL_115;
          }

          v97 = &v8[16 * v94];
          *(v97 + 4) = v95;
          *(v97 + 5) = v96;
          sub_1000726D8(v56);
          v54 = *(v8 + 2);
          if (v54 <= 1)
          {
            goto LABEL_3;
          }
        }

        v61 = &v8[16 * v54 + 32];
        v62 = *(v61 - 64);
        v63 = *(v61 - 56);
        v67 = __OFSUB__(v63, v62);
        v64 = v63 - v62;
        if (v67)
        {
          goto LABEL_116;
        }

        v66 = *(v61 - 48);
        v65 = *(v61 - 40);
        v67 = __OFSUB__(v65, v66);
        v59 = v65 - v66;
        v60 = v67;
        if (v67)
        {
          goto LABEL_117;
        }

        v68 = &v8[16 * v54];
        v70 = *v68;
        v69 = *(v68 + 1);
        v67 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v67)
        {
          goto LABEL_119;
        }

        v67 = __OFADD__(v59, v71);
        v72 = v59 + v71;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v72 >= v64)
        {
          v90 = &v8[16 * v56 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v67 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v67)
          {
            goto LABEL_126;
          }

          if (v59 < v93)
          {
            v56 = v54 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_71;
      }

LABEL_3:
      v6 = a3[1];
      v9 = &off_1000F7000;
      if (v7 >= v6)
      {
        goto LABEL_102;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}