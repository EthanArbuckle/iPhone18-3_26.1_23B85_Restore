uint64_t sub_100001A04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_100003998(&qword_100035270, &qword_1000251E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v25 - v5);
  v25 = sub_100003998(&qword_100035278, &qword_1000251F0);
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v25);
  v10 = &v25 - v9;
  *v6 = static Alignment.bottom.getter();
  v6[1] = v11;
  v12 = sub_100003998(&qword_100035280, &qword_1000251F8);
  sub_100001E08(v2, v6 + *(v12 + 44));
  LocalizedStringKey.init(stringLiteral:)();
  v13 = sub_100003D8C(&qword_100035288, &qword_100035270, &qword_1000251E8);
  View.navigationTitle(_:)();

  sub_100003F00(v6, &qword_100035270, &qword_1000251E8);
  *&v31 = v3;
  *(&v31 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  v14 = v25;
  v15 = v26;
  View.assistiveAccessNavigationIcon(systemImage:)();
  (*(v7 + 8))(v10, v14);
  v16 = *v2;
  v30 = *(v2 + 16);
  v31 = v16;
  v17 = *(v2 + 32);
  v28 = *(v2 + 40);
  v29 = v17;
  v18 = swift_allocObject();
  v19 = *(v2 + 16);
  *(v18 + 1) = *v2;
  *(v18 + 2) = v19;
  *(v18 + 3) = *(v2 + 32);
  v20 = (v15 + *(sub_100003998(&qword_100035290, &qword_100025200) + 36));
  *v20 = sub_100003A2C;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  v21 = swift_allocObject();
  v22 = *(v2 + 16);
  v21[1] = *v2;
  v21[2] = v22;
  v21[3] = *(v2 + 32);
  v23 = (v15 + *(sub_100003998(&qword_100035298, &qword_100025208) + 36));
  *v23 = 0;
  v23[1] = 0;
  v23[2] = sub_100003A50;
  v23[3] = v21;
  sub_100004130(&v31, v27, &qword_1000352A0, &qword_100025210);
  sub_100004130(&v30, v27, &qword_1000352A8, &qword_100025218);
  sub_100004130(&v29, v27, &qword_1000352B0, &qword_100025220);
  sub_100004130(&v28, v27, &qword_1000352B8, &qword_100025228);
  sub_100004130(&v31, v27, &qword_1000352A0, &qword_100025210);
  sub_100004130(&v30, v27, &qword_1000352A8, &qword_100025218);
  sub_100004130(&v29, v27, &qword_1000352B0, &qword_100025220);
  return sub_100004130(&v28, v27, &qword_1000352B8, &qword_100025228);
}

uint64_t sub_100001E08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  (__chkstk_darwin)();
  v49 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = sub_100003998(&qword_1000352C0, &qword_100025240);
  v6 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v47[-v7];
  v51 = sub_100003998(&qword_1000352C8, &qword_100025248);
  v9 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v11 = &v47[-v10];
  v52 = sub_100003998(&qword_1000352D0, &qword_100025250);
  v12 = *(*(v52 - 8) + 64);
  v13 = (__chkstk_darwin)();
  v61 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v47[-v15];
  v17 = static Alignment.topTrailing.getter();
  v59 = v18;
  v60 = v17;
  v103 = *a1;
  v56 = *(&v103 + 1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = v95;
  v65 = v94;
  v66 = v96;
  v20 = v97;
  v68 = v98;
  v54 = v99;
  v67 = static Alignment.center.getter();
  v53 = v21;
  v102 = a1[1];
  v78 = a1[1];
  sub_100003998(&qword_1000352A8, &qword_100025218);
  State.wrappedValue.getter();
  if (v71 == 1)
  {
    v22 = static Color.black.getter();
  }

  else
  {
    v22 = static Color.clear.getter();
  }

  v64 = v22;
  KeyPath = swift_getKeyPath();
  v93 = v19;
  v92 = v20;
  v23 = *(a1 + 4);
  v100 = *(a1 + 5);
  v101 = v23;
  v24 = swift_allocObject();
  v25 = a1[1];
  v24[1] = *a1;
  v24[2] = v25;
  v24[3] = a1[2];
  sub_100004130(&v103, &v78, &qword_1000352A0, &qword_100025210);
  sub_100004130(&v102, &v78, &qword_1000352A8, &qword_100025218);
  sub_100004130(&v101, &v78, &qword_1000352B0, &qword_100025220);
  sub_100004130(&v100, &v78, &qword_1000352B8, &qword_100025228);
  v62 = v20;
  sub_100003998(&qword_1000352D8, &qword_100025288);
  v48 = v19;
  sub_100003D8C(&qword_1000352E0, &qword_1000352D8, &qword_100025288);
  Button.init(action:label:)();
  v26 = static Color.yellow.getter();
  v27 = swift_getKeyPath();
  v28 = &v8[*(v50 + 36)];
  *v28 = v27;
  v28[1] = v26;
  sub_100003CA8();
  View.accessibilityIdentifier(_:)();
  sub_100003F00(v8, &qword_1000352C0, &qword_100025240);
  v29 = v49;
  BorderedProminentButtonStyle.init()();
  sub_100003DD4();
  sub_10000375C(&qword_100035320, &type metadata accessor for BorderedProminentButtonStyle);
  v30 = v58;
  View.buttonStyle<A>(_:)();
  (*(v57 + 8))(v29, v30);
  sub_100003F00(v11, &qword_1000352C8, &qword_100025248);
  v31 = static Edge.Set.all.getter();
  v32 = &v16[*(v52 + 36)];
  *v32 = v31;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  v33 = v61;
  sub_100003E90(v16, v61);
  v35 = v59;
  v34 = v60;
  *&v71 = v60;
  *(&v71 + 1) = v59;
  v58 = v16;
  v36 = v56;
  *&v72 = v56;
  *(&v72 + 1) = v65;
  LOBYTE(v73) = v19;
  *(&v73 + 1) = *v70;
  DWORD1(v73) = *&v70[3];
  *(&v73 + 1) = v66;
  LOBYTE(v74) = v62;
  *(&v74 + 1) = *v69;
  DWORD1(v74) = *&v69[3];
  v37 = v53;
  v38 = v54;
  *(&v74 + 1) = v68;
  *&v75 = v54;
  *(&v75 + 1) = KeyPath;
  *&v76 = v64;
  *(&v76 + 1) = v67;
  v77 = v53;
  v39 = v75;
  v40 = v76;
  v41 = v55;
  *(v55 + 96) = v53;
  v41[4] = v39;
  v41[5] = v40;
  v42 = v71;
  v43 = v72;
  v44 = v74;
  v41[2] = v73;
  v41[3] = v44;
  *v41 = v42;
  v41[1] = v43;
  v45 = sub_100003998(&qword_100035328, &qword_1000252D0);
  sub_100003E90(v33, v41 + *(v45 + 48));
  sub_100004130(&v71, &v78, &qword_100035330, &qword_1000252D8);
  sub_100003F00(v58, &qword_1000352D0, &qword_100025250);
  sub_100003F00(v33, &qword_1000352D0, &qword_100025250);
  *&v78 = v34;
  *(&v78 + 1) = v35;
  v79 = v36;
  v80 = v65;
  v81 = v48;
  *v82 = *v70;
  *&v82[3] = *&v70[3];
  v83 = v66;
  v84 = v62;
  *v85 = *v69;
  *&v85[3] = *&v69[3];
  v86 = v68;
  v87 = v38;
  v88 = KeyPath;
  v89 = v64;
  v90 = v67;
  v91 = v37;
  return sub_100003F00(&v78, &qword_100035330, &qword_1000252D8);
}

uint64_t sub_1000024C4(__int128 *a1)
{
  v2 = (*(*(sub_100003998(&qword_100035540, &qword_100025230) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v14 - v3;
  v6 = *(a1 + 4);
  v5 = *(a1 + 5);
  v19 = v5;
  v20 = v6;
  *&v18 = v6;
  *(&v18 + 1) = v5;
  sub_100004130(&v20, &v17, &qword_1000352B0, &qword_100025220);
  sub_100004130(&v19, &v17, &qword_1000352B8, &qword_100025228);
  sub_100003998(&qword_100035348, &qword_1000252E8);
  State.wrappedValue.getter();
  if (v17)
  {
    sub_100003998(&qword_100035350, &qword_1000252F0);
    Task.cancel()();
  }

  v18 = *a1;
  sub_100008864();
  v16 = a1[1];
  v17 = v16;
  LOBYTE(v15) = 1;
  sub_100003998(&qword_1000352A8, &qword_100025218);
  State.wrappedValue.setter();
  v7 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
  [v7 impactOccurred];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  type metadata accessor for MainActor();
  sub_100004130(&v20, &v16, &qword_1000352B0, &qword_100025220);
  sub_100004130(&v19, &v16, &qword_1000352B8, &qword_100025228);
  sub_100004130(&v18, &v16, &qword_1000352A0, &qword_100025210);
  sub_100004130(&v17, &v16, &qword_1000352A8, &qword_100025218);
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  v11 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  *(v10 + 64) = a1[2];
  v12 = sub_100002B40(0, 0, v4, &unk_100025300, v10);
  *&v16 = v6;
  *(&v16 + 1) = v5;
  v15 = v12;

  State.wrappedValue.setter();

  sub_100003F00(&v20, &qword_1000352B0, &qword_100025220);
  return sub_100003F00(&v19, &qword_1000352B8, &qword_100025228);
}

uint64_t sub_1000027F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1000028A4;

  return static Task<>.sleep(nanoseconds:)(50000000);
}

uint64_t sub_1000028A4()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 48) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_100002ADC;
  }

  else
  {
    v8 = sub_100002A00;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100002A00()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  static Animation.spring(response:dampingFraction:blendDuration:)();
  *(swift_task_alloc() + 16) = v3;
  withAnimation<A>(_:_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100002ADC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_100002B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_100003998(&qword_100035540, &qword_100025230) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_100004130(a3, v23 - v9, &qword_100035540, &qword_100025230);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100003F00(v10, &qword_100035540, &qword_100025230);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_100003F00(a3, &qword_100035540, &qword_100025230);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003F00(a3, &qword_100035540, &qword_100025230);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100002DEC()
{
  sub_100003998(&qword_100035338, &qword_1000252E0);
  sub_100003F60();

  return Label.init(title:icon:)();
}

uint64_t sub_100002E84@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Color.black.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_100004018(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_100002F78@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Color.black.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_100002FE0(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035540, &qword_100025230);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = *(a1 + 8);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v6;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_100005F70(0, 0, v5, &unk_100025238, v10);
}

uint64_t sub_10000312C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_100001A04(a1);
}

uint64_t sub_100003174(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000031F0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003274@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000032BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000032EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003334(uint64_t a1)
{
  v2 = sub_10000375C(&qword_100035250, type metadata accessor for DeviceType);
  v3 = sub_10000375C(&qword_100035258, type metadata accessor for DeviceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000033F0(uint64_t a1)
{
  v2 = sub_10000375C(&qword_100035260, type metadata accessor for AVVideoCodecType);
  v3 = sub_10000375C(&qword_100035268, type metadata accessor for AVVideoCodecType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000034B0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000034F0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003548()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000035BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void sub_100003680(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000375C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000038C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000038D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100003920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003998(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000039E0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003A58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003B4C;

  return sub_100009004(a1, v4, v5, v6);
}

uint64_t sub_100003B4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003C48()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100003CA8()
{
  result = qword_1000352E8;
  if (!qword_1000352E8)
  {
    sub_1000039E0(&qword_1000352C0, &qword_100025240);
    sub_100003D8C(&qword_1000352F0, &qword_1000352F8, &qword_1000252C0);
    sub_100003D8C(&qword_100035300, &qword_100035308, &qword_1000252C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000352E8);
  }

  return result;
}

uint64_t sub_100003D8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000039E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003DD4()
{
  result = qword_100035310;
  if (!qword_100035310)
  {
    sub_1000039E0(&qword_1000352C8, &qword_100025248);
    sub_100003CA8();
    sub_10000375C(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035310);
  }

  return result;
}

uint64_t sub_100003E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000352D0, &qword_100025250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003F00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003998(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003F60()
{
  result = qword_100035340;
  if (!qword_100035340)
  {
    sub_1000039E0(&qword_100035338, &qword_1000252E0);
    sub_100003D8C(&qword_100035300, &qword_100035308, &qword_1000252C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035340);
  }

  return result;
}

uint64_t sub_100004018(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004028()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100004080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003B4C;

  return sub_1000027F0(a1, v4, v5, v1 + 32);
}

uint64_t sub_100004130(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003998(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004198()
{
  v2 = *(*(v0 + 16) + 16);
  sub_100003998(&qword_1000352A8, &qword_100025218);
  return State.wrappedValue.setter();
}

unint64_t sub_1000041FC()
{
  result = qword_100035358;
  if (!qword_100035358)
  {
    sub_1000039E0(&qword_100035298, &qword_100025208);
    sub_100004288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035358);
  }

  return result;
}

unint64_t sub_100004288()
{
  result = qword_100035360;
  if (!qword_100035360)
  {
    sub_1000039E0(&qword_100035290, &qword_100025200);
    sub_1000039E0(&qword_100035278, &qword_1000251F0);
    sub_1000039E0(&qword_100035270, &qword_1000251E8);
    sub_100003D8C(&qword_100035288, &qword_100035270, &qword_1000251E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035360);
  }

  return result;
}

__n128 sub_10000442C@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  type metadata accessor for CameraModel();
  sub_1000045E0();
  StateObject.wrappedValue.getter();
  v6 = ObservedObject.init(wrappedValue:)();
  v8 = v7;
  State.init(wrappedValue:)();
  sub_100003998(&qword_1000352B0, &qword_100025220);
  State.init(wrappedValue:)();
  result = v10;
  a1->n128_u64[0] = v6;
  a1->n128_u64[1] = v8;
  a1[1].n128_u8[0] = v10.n128_u8[0];
  a1[1].n128_u64[1] = v10.n128_u64[1];
  a1[2] = v10;
  return result;
}

__n128 sub_100004514(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100004528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100004570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000045E0()
{
  result = qword_100035368;
  if (!qword_100035368)
  {
    type metadata accessor for CameraModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035368);
  }

  return result;
}

unint64_t sub_10000463C()
{
  result = qword_100035370;
  if (!qword_100035370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035370);
  }

  return result;
}

uint64_t sub_100004724@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  type metadata accessor for CameraModel();
  sub_1000045E0();
  StateObject.wrappedValue.getter();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v7;
  return result;
}

unint64_t sub_1000047C8()
{
  result = qword_100035378;
  if (!qword_100035378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035378);
  }

  return result;
}

uint64_t sub_10000481C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = sub_100003998(&qword_100035388, &qword_100025618);
  v1 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v45 = &v36 - v2;
  v39 = sub_100003998(&qword_100035390, &qword_100025620);
  v44 = *(v39 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin(v39);
  v5 = &v36 - v4;
  v6 = sub_100003998(&qword_100035398, &qword_100025628);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  v8 = __chkstk_darwin(v6);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v36 - v10;
  v11 = sub_100003998(&qword_1000353A0, &qword_100025630);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v40 = sub_100003998(&qword_1000353A8, &qword_100025638);
  v38 = *(v40 - 8);
  v16 = v38;
  v17 = *(v38 + 64);
  v18 = __chkstk_darwin(v40);
  v48 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  sub_100003998(&qword_1000353B0, &qword_100025640);
  sub_100004FF0();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100003D8C(&qword_1000353D8, &qword_1000353A0, &qword_100025630);
  v22 = v21;
  v37 = v21;
  Scene.extendedLaunchTestName(_:)();
  (*(v12 + 8))(v15, v11);
  AssistiveAccess.init(content:)();
  sub_100003D8C(&qword_1000353E0, &qword_100035390, &qword_100025620);
  v23 = v49;
  v24 = v39;
  Scene.extendedLaunchTestName(_:)();
  (*(v44 + 8))(v5, v24);
  v25 = *(v16 + 16);
  v26 = v48;
  v27 = v40;
  v25(v48, v22, v40);
  v29 = v41;
  v28 = v42;
  v30 = *(v42 + 16);
  v31 = v43;
  v30(v41, v23, v43);
  v32 = v45;
  v25(v45, v26, v27);
  v30(&v32[*(v46 + 48)], v29, v31);
  _TupleScene.init(_:)();
  v33 = *(v28 + 8);
  v33(v49, v31);
  v34 = *(v38 + 8);
  v34(v37, v27);
  v33(v29, v31);
  return (v34)(v48, v27);
}

uint64_t sub_100004D78(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100004E44@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003998(&qword_1000353E8, &qword_100025680);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(sub_100003998(&qword_1000353B0, &qword_100025640) + 36));
  v4 = *(sub_100003998(&qword_1000353D0, &qword_100025648) + 28);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = type metadata accessor for ColorScheme();
  result = (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100004F70();
  static App.main()();
  return 0;
}

unint64_t sub_100004F70()
{
  result = qword_100035380;
  if (!qword_100035380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035380);
  }

  return result;
}

unint64_t sub_100004FF0()
{
  result = qword_1000353B8;
  if (!qword_1000353B8)
  {
    sub_1000039E0(&qword_1000353B0, &qword_100025640);
    sub_1000050A8();
    sub_100003D8C(&qword_1000353C8, &qword_1000353D0, &qword_100025648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000353B8);
  }

  return result;
}

unint64_t sub_1000050A8()
{
  result = qword_1000353C0;
  if (!qword_1000353C0)
  {
    type metadata accessor for ContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000353C0);
  }

  return result;
}

NSString sub_100005194()
{
  result = String._bridgeToObjectiveC()();
  qword_100037D90 = result;
  return result;
}

uint64_t sub_1000051CC(char a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 == 1 || (a1 != 2 ? (v4 = "frontCameraPhoto") : (v4 = "backCameraPhoto"), 0x8000000100026F20 != (v4 | 0x8000000000000000)))
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }

LABEL_9:
    v3 = 1;
LABEL_11:

    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_100005338(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6F746F68506172;
  v3 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000010;
    if (v3 == 2)
    {
      v4 = 0x8000000100026F20;
    }

    else
    {
      v4 = 0x8000000100026F40;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEF6F656469566172;
    }

    else
    {
      v4 = 0xEF6F746F68506172;
    }

    v5 = 0x656D61436B636162;
  }

  v6 = 0x8000000100026F40;
  if (a2 == 2)
  {
    v6 = 0x8000000100026F20;
  }

  if (a2)
  {
    v2 = 0xEF6F656469566172;
  }

  if (a2 <= 1u)
  {
    v7 = 0x656D61436B636162;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (v5 == v7 && v4 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100005478(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    goto LABEL_8;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return 1;
  }

  if (a1 > 1u)
  {
    v3 = a1 == 2 ? "backCameraPhoto" : "frontCameraPhoto";
    if (0x8000000100026F40 == (v3 | 0x8000000000000000))
    {
LABEL_8:

      return 1;
    }
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v5 & 1;
}

uint64_t sub_1000055FC(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    v2 = a1 == 2 ? "backCameraPhoto" : "frontCameraPhoto";
    if (0x8000000100026F20 == (v2 | 0x8000000000000000))
    {
LABEL_12:

      return 1;
    }
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if (a1 <= 1u || a1 != 3 && 0x8000000100026F40 != 0x8000000100026F20)
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v4 & 1;
    }

    goto LABEL_12;
  }

  return 1;
}

Swift::Int sub_1000057B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100005880()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000593C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100005A08@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000AA88(*a1);
  *a2 = result;
  return result;
}

void sub_100005A3C(unint64_t *a1@<X8>)
{
  v2 = 0xEF6F746F68506172;
  v3 = 0x8000000100026F20;
  if (*v1 != 2)
  {
    v3 = 0x8000000100026F40;
  }

  if (*v1)
  {
    v2 = 0xEF6F656469566172;
  }

  if (*v1 <= 1u)
  {
    v4 = 0x656D61436B636162;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v4;
  a1[1] = v2;
}

void sub_100005AF0(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v6[0]) != v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v6[0]) = 0;
    v3 = v1;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    [*&v3[OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoOutput] stopRecording];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_10000B230;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100006270;
    v6[3] = &unk_1000320C0;
    v5 = _Block_copy(v6);

    AudioServicesPlaySystemSoundWithCompletion(0x45Eu, v5);
    _Block_release(v5);
  }
}

uint64_t sub_100005D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100005DE8, v6, v5);
}

uint64_t sub_100005DE8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    AudioServicesDisposeSystemSoundID(0x45Du);
    sub_100008B94();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 56) = 1;
    static Published.subscript.setter();
  }

  else
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AAD4(v3, qword_100037DF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to play begin recording system sound", v6, 2u);
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100005F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_100035540, &qword_100025230);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100004130(a3, v27 - v11, &qword_100035540, &qword_100025230);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100003F00(v12, &qword_100035540, &qword_100025230);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100003F00(a3, &qword_100035540, &qword_100025230);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003F00(a3, &qword_100035540, &qword_100025230);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100006270(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000062B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003998(&qword_100035540, &qword_100025230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a1;
  sub_100005F70(0, 0, v8, a3, v11);
}

uint64_t sub_1000063D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000646C, v6, v5);
}

uint64_t sub_10000646C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    AudioServicesDisposeSystemSoundID(0x45Eu);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 56) = 1;
    static Published.subscript.setter();
  }

  else
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AAD4(v3, qword_100037DF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to play end recording system sound", v6, 2u);
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100006604()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_100006670(char a1)
{
  v2 = v1;
  v4 = sub_100003998(&qword_1000355B8, &qword_1000259E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50 - v7;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_beginRecordingSoundID] = 1117;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_endRecordingSoundID] = 1118;
  v9 = OBJC_IVAR____TtC13ClarityCamera11CameraModel__recordButtonEnabled;
  LOBYTE(v51) = 1;
  Published.init(initialValue:)();
  v10 = *(v5 + 32);
  v10(&v2[v9], v8, v4);
  v11 = OBJC_IVAR____TtC13ClarityCamera11CameraModel__isRecordingVideo;
  LOBYTE(v51) = 0;
  Published.init(initialValue:)();
  v10(&v2[v11], v8, v4);
  v12 = &v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSessionRuntimeErrorSubscription];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v13 = &unk_100037000;
  v14 = OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession;
  *&v2[v14] = [objc_allocWithZone(AVCaptureSession) init];
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_device] = 0;
  v15 = OBJC_IVAR____TtC13ClarityCamera11CameraModel_photoOutput;
  *&v2[v15] = [objc_allocWithZone(AVCapturePhotoOutput) init];
  v16 = OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoOutput;
  *&v2[v16] = [objc_allocWithZone(AVCaptureMovieFileOutput) init];
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoDeviceInput] = 0;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_audioDeviceInput] = 0;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_currentPhoto] = 0;
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_rotationCoordinator] = 0;
  v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode] = a1;
  v17 = objc_opt_self();
  v18 = [v17 currentDevice];
  v19 = [v18 orientation];

  v20 = static UIInterfaceOrientation.fromDeviceOrientation(_:)(v19);
  if (v21)
  {
    v22 = static UIInterfaceOrientation.window.getter();
    *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_lastSeenValidOrientation] = v22;
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000AAD4(v23, qword_100037DF0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = v22;
      v51 = v27;
      *v26 = 136315138;
      type metadata accessor for UIInterfaceOrientation(0);
      v28 = String.init<A>(describing:)();
      v30 = sub_100012614(v28, v29, &v51);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Initial orientation from window: %s", v26, 0xCu);
      sub_10000B154(v27);
      v13 = &unk_100037000;

LABEL_10:
    }
  }

  else
  {
    v31 = v20;
    *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_lastSeenValidOrientation] = v20;
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000AAD4(v32, qword_100037DF0);
    v24 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v31;
      v51 = v35;
      *v34 = 136315138;
      type metadata accessor for UIInterfaceOrientation(0);
      v36 = String.init<A>(describing:)();
      v38 = sub_100012614(v36, v37, &v51);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v24, v33, "Initial orientation from device: %s", v34, 0xCu);
      sub_10000B154(v35);
      v13 = &unk_100037000;

      goto LABEL_10;
    }
  }

  v39 = type metadata accessor for CameraModel();
  v52.receiver = v2;
  v52.super_class = v39;
  v40 = objc_msgSendSuper2(&v52, "init");
  v41 = [v17 currentDevice];
  [v41 beginGeneratingDeviceOrientationNotifications];

  v42 = objc_opt_self();
  v43 = [v42 defaultCenter];
  [v43 addObserver:v40 selector:"orientationChangedWithNotification:" name:UIDeviceOrientationDidChangeNotification object:0];

  v44 = [v42 defaultCenter];
  v45 = v13[437];
  v46 = *&v40[v45];
  v47 = v40;
  [v44 addObserver:v47 selector:"sessionWasInterruptedWithNotification:" name:AVCaptureSessionWasInterruptedNotification object:v46];

  v48 = [v42 defaultCenter];
  [v48 addObserver:v47 selector:"sessionInterruptionEndedWithNotification:" name:AVCaptureSessionInterruptionEndedNotification object:*&v40[v45]];

  return v47;
}

id sub_100006C80()
{
  v1 = v0;
  v2 = sub_100003998(&qword_100035540, &qword_100025230);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_100005F70(0, 0, v5, &unk_1000259F0, v8);

  v9 = type metadata accessor for CameraModel();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_100006DB8()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100006E4C, v2, v1);
}

uint64_t sub_100006E4C()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() currentDevice];
  [v2 endGeneratingDeviceOrientationNotifications];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for CameraModel()
{
  result = qword_100035508;
  if (!qword_100035508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000071C0()
{
  v0 = sub_100003998(&qword_100035568, &qword_1000258D8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v42 - v2;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&qword_100035570, &qword_1000258E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v42 - v12;
  v14 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v15 = [objc_opt_self() mainRunLoop];
  v43[0] = v15;
  v16 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  sub_10000B0C4(0, &qword_100035578, NSRunLoop_ptr);
  sub_10000B10C(&qword_100035580, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_10000AF88();
  Publisher.receive<A>(on:options:)();
  sub_100003F00(v3, &qword_100035568, &qword_1000258D8);

  (*(v5 + 8))(v8, v4);
  sub_10000AFF0();
  v17 = Publisher<>.sink(receiveValue:)();
  v18 = v42[1];
  v19 = v17;
  (*(v10 + 8))(v13, v9);
  v43[3] = type metadata accessor for AnyCancellable();
  v43[4] = &protocol witness table for AnyCancellable;
  v43[0] = v19;
  v20 = OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSessionRuntimeErrorSubscription;
  swift_beginAccess();
  sub_10000B054(v43, v18 + v20);
  swift_endAccess();
  sub_100003998(&qword_1000355A0, &qword_1000258F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000256E0;
  *(v21 + 32) = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  *(v21 + 40) = AVCaptureDeviceTypeBuiltInDualCamera;
  *(v21 + 48) = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  LOBYTE(v5) = *(v18 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode);
  v22 = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v23 = AVCaptureDeviceTypeBuiltInDualCamera;
  v24 = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v25 = AVMediaTypeVideo;
  if (sub_1000055FC(v5))
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  type metadata accessor for DeviceType(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = [objc_opt_self() discoverySessionWithDeviceTypes:isa mediaType:v25 position:v26];

  v29 = [v28 devices];
  sub_10000B0C4(0, &qword_1000355A8, AVCaptureDevice_ptr);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v30 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_17:

    if (qword_1000351F8 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v32 = v31;

    v33 = [objc_opt_self() defaultDeviceWithDeviceType:AVCaptureDeviceTypeMicrophone mediaType:AVMediaTypeAudio position:0];
    if (v33)
    {
      v34 = v33;
      sub_100007B20(v32, v33);

      v28 = v34;
    }

    else
    {
      if (qword_1000351F8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000AAD4(v35, qword_100037DF0);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Could not create microphone capture device", v38, 2u);
      }

      v32 = v36;
    }

    goto LABEL_20;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v30 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_18:
  v39 = type metadata accessor for Logger();
  sub_10000AAD4(v39, qword_100037DF0);
  v32 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v32, v40, "Could not find appropriate AVCaptureDevice", v41, 2u);
  }

LABEL_20:
}

void sub_1000078B0(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000351F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AAD4(v7, qword_100037DF0);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_10000B10C(&qword_1000355B0, &type metadata accessor for Notification);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_100012614(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Capture session runtime error: %s", v10, 0xCu);
    sub_10000B154(v11);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

void sub_100007B20(void *a1, void *a2)
{
  v5 = sub_100003998(&qword_100035540, &qword_100025230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v65 - v7;
  v9 = *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_device];
  *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_device] = a1;
  v10 = a1;

  v11 = *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession];
  [v11 beginConfiguration];
  v12 = objc_allocWithZone(AVCaptureDeviceInput);
  v66 = 0;
  v13 = v10;
  v14 = [v12 initWithDevice:v13 error:&v66];
  if (v14)
  {
    v15 = v14;
    v16 = v66;

    if (([v11 canAddInput:v15] & 1) == 0)
    {
      if (qword_1000351F8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000AAD4(v41, qword_100037DF0);
      v42 = v15;
      v43 = v2;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412546;
        *(v46 + 4) = v42;
        *(v46 + 12) = 2112;
        *(v46 + 14) = v11;
        *v47 = v15;
        v47[1] = v11;
        v48 = v42;
        v49 = v11;
        _os_log_impl(&_mh_execute_header, v44, v45, "Unable to add input %@ to session %@", v46, 0x16u);
        sub_100003998(&qword_100035548, &qword_100025890);
        swift_arrayDestroy();

LABEL_32:
        return;
      }

LABEL_30:

      goto LABEL_32;
    }

    v17 = *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoDeviceInput];
    *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoDeviceInput] = v15;
    v18 = v15;

    v65 = v18;
    [v11 addInput:v18];
    v19 = v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode];
    if ((sub_100005478(v19) & 1) == 0)
    {
      goto LABEL_7;
    }

    v20 = objc_allocWithZone(AVCaptureDeviceInput);
    v66 = 0;
    v13 = a2;
    v21 = [v20 initWithDevice:v13 error:&v66];
    if (v21)
    {
      v22 = v21;
      v23 = v66;

      if ([v11 canAddInput:v22])
      {
        v24 = *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_audioDeviceInput];
        *&v2[OBJC_IVAR____TtC13ClarityCamera11CameraModel_audioDeviceInput] = v22;
        v25 = v22;

        [v11 addInput:v25];
LABEL_7:
        v26 = sub_1000051CC(v19);
        v27 = &OBJC_IVAR____TtC13ClarityCamera11CameraModel_photoOutput;
        if ((v26 & 1) == 0)
        {
          v27 = &OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoOutput;
        }

        v28 = *&v2[*v27];
        if ([v11 canAddOutput:v28])
        {
          v29 = **(&off_1000322C8 + v19);
          [v11 setSessionPreset:v29];

          [v11 addOutput:v28];
          [v11 commitConfiguration];
          static TaskPriority.userInitiated.getter();
          v30 = type metadata accessor for TaskPriority();
          (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
          type metadata accessor for MainActor();
          v31 = v2;
          v32 = static MainActor.shared.getter();
          v33 = swift_allocObject();
          v33[2] = v32;
          v33[3] = &protocol witness table for MainActor;
          v33[4] = v31;
          sub_100005F70(0, 0, v8, &unk_1000258A0, v33);

          return;
        }

        if (qword_1000351F8 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000AAD4(v50, qword_100037DF0);
        v51 = v2;
        v52 = v28;
        v44 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v44, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412546;
          *(v54 + 4) = v52;
          *(v54 + 12) = 2112;
          *(v54 + 14) = v11;
          *v55 = v52;
          v55[1] = v11;
          v56 = v11;
          v57 = v52;
          _os_log_impl(&_mh_execute_header, v44, v53, "Unable to add output %@ to session %@", v54, 0x16u);
          sub_100003998(&qword_100035548, &qword_100025890);
          swift_arrayDestroy();

          return;
        }

        goto LABEL_31;
      }

      if (qword_1000351F8 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_10000AAD4(v59, qword_100037DF0);
      v52 = v22;
      v60 = v2;
      v44 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v44, v61))
      {
LABEL_31:

        goto LABEL_32;
      }

      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412546;
      *(v62 + 4) = v52;
      *(v62 + 12) = 2112;
      *(v62 + 14) = v11;
      *v63 = v22;
      v63[1] = v11;
      v42 = v52;
      v64 = v11;
      _os_log_impl(&_mh_execute_header, v44, v61, "Unable to add input %@ to session %@", v62, 0x16u);
      sub_100003998(&qword_100035548, &qword_100025890);
      swift_arrayDestroy();

      goto LABEL_30;
    }

    v58 = v66;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v34 = v66;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1000351F8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000AAD4(v35, qword_100037DF0);
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    swift_errorRetain();
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&_mh_execute_header, v36, v37, "Error setting up capture session: %@", v38, 0xCu);
    sub_100003F00(v39, &qword_100035548, &qword_100025890);
  }

  else
  {
  }
}

uint64_t sub_100008428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1000084C4, v6, v5);
}

uint64_t sub_1000084C4()
{
  [*(*(v0 + 16) + OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession) startRunning];

  return _swift_task_switch(sub_100008540, 0, 0);
}

uint64_t sub_100008540()
{
  v1 = *(v0 + 24);
  *(v0 + 56) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000085CC, v3, v2);
}

uint64_t sub_1000085CC()
{
  v1 = v0[7];
  v2 = v0[2];

  sub_1000086D4(v2);
  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_100008674, v3, v4);
}

uint64_t sub_100008674()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000086D4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1000351F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100037D90;
  sub_100003998(&qword_100035550, &qword_1000258C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000256F0;
  AnyHashable.init<A>(_:)();
  v5 = *(a1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode);
  *(inited + 96) = &type metadata for CameraModel.Mode;
  *(inited + 72) = v5;
  sub_10000AD9C(inited);
  swift_setDeallocating();
  sub_100003F00(inited + 32, &qword_100035558, &qword_1000258C8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:a1 userInfo:isa];
}

void sub_100008864()
{
  v1 = v0;
  v2 = [objc_allocWithZone(AVCapturePhotoSettings) init];
  v3 = *(v0 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_photoOutput);
  v4 = [v3 availablePhotoCodecTypes];
  type metadata accessor for AVVideoCodecType(0);
  v6 = v5;
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = AVVideoCodecTypeHEVC;
  v21[2] = &v22;
  LOBYTE(v4) = sub_10000A820(sub_10000AB0C, v21, v7);

  if (v4)
  {
    sub_100003998(&qword_100035528, &qword_100025878);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000256F0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = v6;
    *(inited + 40) = v9;
    *(inited + 48) = AVVideoCodecTypeHEVC;
    v10 = AVVideoCodecTypeHEVC;
    sub_10000A958(inited);
    swift_setDeallocating();
    sub_100003F00(inited + 32, &qword_100035530, &qword_100025880);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = [objc_opt_self() photoSettingsWithFormat:isa];

    v2 = v12;
  }

  v13 = *(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoDeviceInput);
  if (v13)
  {
    v14 = [v13 device];
    v15 = [v14 isFlashAvailable];

    if (v15)
    {
      [v2 setFlashMode:2];
    }
  }

  v16 = AVCapturePhotoSettings.availablePreviewPhotoPixelFormatTypes.getter();
  if (*(v16 + 16))
  {
    v17 = *(v16 + 32);

    sub_100003998(&qword_100035528, &qword_100025878);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1000256F0;
    *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v18 + 40) = v19;
    *(v18 + 72) = &type metadata for UInt32;
    *(v18 + 48) = v17;
    sub_10000A958(v18);
    swift_setDeallocating();
    sub_100003F00(v18 + 32, &qword_100035530, &qword_100025880);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 setPreviewPhotoFormat:v20];
  }

  else
  {
  }

  sub_100009C78(v3);
  [v3 capturePhotoWithSettings:v2 delegate:v1];
}

void sub_100008B94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  if ([*(&v0->isa + OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession) isRunning])
  {
    v37 = v1;
    v38 = v0;
    v14 = [objc_opt_self() defaultManager];
    v15 = [v14 URLsForDirectory:9 inDomains:1];
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v16 + 16))
    {
      (*(v7 + 16))(v11, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      UUID.init()();
      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v2 + 8))(v5, v37);
      v39[0] = v17;
      v39[1] = v19;
      v20._countAndFlagsBits = 1987013934;
      v20._object = 0xE400000000000000;
      String.append(_:)(v20);
      URL.appendingPathComponent(_:)();

      v21 = *(v7 + 8);
      v21(v11, v6);
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      v39[0] = 0;
      v25 = [v14 removeItemAtURL:v23 error:v39];

      if (v25)
      {
        v26 = v39[0];
      }

      else
      {
        v31 = v39[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v32 = v38;
      v33 = *(&v38->isa + OBJC_IVAR____TtC13ClarityCamera11CameraModel_videoOutput);
      sub_100009C78(v33);
      URL._bridgeToObjectiveC()(v34);
      v36 = v35;
      [v33 startRecordingToOutputFileURL:v35 recordingDelegate:v32];

      v21(v13, v6);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_1000351F8 != -1)
  {
LABEL_14:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000AAD4(v27, qword_100037DF0);
  v38 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v38, v28, "Capture session is not running on record video request", v29, 2u);
  }

  v30 = v38;
}

uint64_t sub_100009004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000909C, v6, v5);
}

uint64_t sub_10000909C()
{
  v2 = v0[2];
  v1 = v0[3];

  [*(v2 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession) stopRunning];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100009114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000091AC, v7, v6);
}

uint64_t sub_1000091AC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_currentPhoto);
  *(v3 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_currentPhoto) = v2;
  v5 = v2;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000092BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_100003998(&qword_100035540, &qword_100025230) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009390, v7, v6);
}

uint64_t sub_100009390()
{
  v1 = v0[5];
  v2 = v0[2];

  v3 = *(v2 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_currentPhoto);
  if (v3 && (v4 = [v3 fileDataRepresentation]) != 0)
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v4;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    static TaskPriority.userInitiated.getter();
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    sub_10000C0B8(v8, v10);
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v8;
    v13[5] = v10;
    sub_100005F70(0, 0, v6, &unk_1000259C0, v13);
    sub_10000C14C(v8, v10);
  }

  else
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AAD4(v14, qword_100037DF0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not get photo data representation", v17, 2u);
    }
  }

  v18 = v0[3];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000095C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000965C, v7, v6);
}

uint64_t sub_10000965C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v0[6] = sub_10000C264;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100009A28;
  v0[5] = &unk_1000321D8;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  sub_10000C0B8(v3, v2);

  [v4 requestAuthorization:v6];
  _Block_release(v6);
  v8 = v0[1];

  return v8();
}

void sub_100009790(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 == 3)
  {
    v5 = [objc_opt_self() sharedPhotoLibrary];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    aBlock[4] = sub_10000C2A4;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006270;
    aBlock[3] = &unk_100032228;
    v7 = _Block_copy(aBlock);
    sub_10000C0B8(a2, a3);

    [v5 performChanges:v7 completionHandler:0];
    _Block_release(v7);
  }

  else
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AAD4(v8, qword_100037DF0);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Library status is not authorized", v10, 2u);
    }
  }
}

void sub_10000998C()
{
  v0 = [objc_opt_self() creationRequestForAsset];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v0 addResourceWithType:1 data:isa options:0];
}

uint64_t sub_100009A28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100009C78(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_rotationCoordinator);
  if (v3)
  {
    [v3 videoRotationAngleForHorizonLevelCapture];
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_lastSeenValidOrientation);
  if (v5 == 2)
  {
    v4 = v4 + 180.0;
  }

  else
  {
    if (v5 == 3)
    {
      v6 = v4;
      v7 = (sub_1000055FC(*(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode)) & 1) == 0;
      v8 = 270.0;
      v9 = 90.0;
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_13;
      }

      v6 = v4;
      v7 = (sub_1000055FC(*(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_mode)) & 1) == 0;
      v8 = 90.0;
      v9 = 270.0;
    }

    if (!v7)
    {
      v8 = v9;
    }

    v4 = v6 + v8;
  }

LABEL_13:
  v10 = fmod(v4, 360.0);
  v11 = [a1 connectionWithMediaType:AVMediaTypeVideo];
  [v11 setVideoRotationAngle:v10];
}

void sub_100009EBC()
{
  sub_100009FA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100009FA0()
{
  if (!qword_100035518)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100035518);
    }
  }
}

uint64_t getEnumTagSinglePayload for CameraModel.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CameraModel.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000A170()
{
  result = qword_100035520;
  if (!qword_100035520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035520);
  }

  return result;
}

uint64_t sub_10000A1D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CameraModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000A224(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10000A2A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

void sub_10000A324(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  static Published.subscript.setter();
  sub_100005AF0(v4);
}

uint64_t sub_10000A3F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A4EC;

  return v7(a1);
}

uint64_t sub_10000A4EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10000A5E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000A6A0(a1, a2, v6);
}

unint64_t sub_10000A65C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000A758(a1, v4);
}

unint64_t sub_10000A6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000A758(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000AED8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000AF34(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10000A820(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10000A8C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_10000A958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003998(&qword_100035538, &qword_100025888);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004130(v4, &v13, &qword_100035530, &qword_100025880);
      v5 = v13;
      v6 = v14;
      result = sub_10000A5E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000AB2C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_10000AA88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100031B90, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000AAD4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

_OWORD *sub_10000AB2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000AB40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C4BC;

  return sub_100008428(a1, v4, v5, v6);
}

uint64_t sub_10000ABF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AC2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000C4BC;

  return sub_10000A3F4(a1, v5);
}

uint64_t sub_10000ACE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003B4C;

  return sub_10000A3F4(a1, v5);
}

unint64_t sub_10000AD9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003998(&qword_100035560, &qword_1000258D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004130(v4, v13, &qword_100035558, &qword_1000258C8);
      result = sub_10000A65C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000AB2C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10000AF88()
{
  result = qword_100035588;
  if (!qword_100035588)
  {
    sub_10000B0C4(255, &qword_100035578, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035588);
  }

  return result;
}

unint64_t sub_10000AFF0()
{
  result = qword_100035590;
  if (!qword_100035590)
  {
    sub_1000039E0(&qword_100035570, &qword_1000258E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035590);
  }

  return result;
}

uint64_t sub_10000B054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_100035598, &qword_1000258E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B0C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000B10C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000B154(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000B1F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B268(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B2BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C4BC;

  return sub_100005D50(a1, v4, v5, v6);
}

uint64_t sub_10000B370()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B3B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C4BC;

  return sub_1000063D4(a1, v4, v5, v6);
}

void sub_10000B464(void *a1, uint64_t a2)
{
  v5 = sub_100003998(&qword_100035540, &qword_100025230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v20 - v7;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AAD4(v9, qword_100037DF0);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v21, v10, "Error processing photo: %@", v11, 0xCu);
      sub_100003F00(v12, &qword_100035548, &qword_100025890);

      v14 = v21;
    }

    else
    {
    }
  }

  else
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    type metadata accessor for MainActor();
    v16 = v2;
    v17 = a1;
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v16;
    v19[5] = v17;
    sub_100005F70(0, 0, v8, &unk_1000259D0, v19);
  }
}

void sub_10000B730(uint64_t a1)
{
  v3 = sub_100003998(&qword_100035540, &qword_100025230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AAD4(v7, qword_100037DF0);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v18, v8, "Error capturing photo: %@", v9, 0xCu);
      sub_100003F00(v10, &qword_100035548, &qword_100025890);

      v12 = v18;
    }

    else
    {
    }
  }

  else
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    type metadata accessor for MainActor();
    v14 = v1;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;
    sub_100005F70(0, 0, v6, &unk_1000259B0, v16);
  }
}

void sub_10000B9E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AAD4(v2, qword_100037DF0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Error recording video: %@", v4, 0xCu);
      sub_100003F00(v5, &qword_100035548, &qword_100025890);
    }
  }

  else
  {
    URL.path(percentEncoded:)(1);
    oslog = String._bridgeToObjectiveC()();

    UISaveVideoAtPathToSavedPhotosAlbum(&oslog->isa, 0, 0, 0);
  }
}

void sub_10000BB78()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 orientation];

  v4 = static UIInterfaceOrientation.fromDeviceOrientation(_:)(v3);
  if (v5)
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AAD4(v6, qword_100037DF0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      type metadata accessor for UIDeviceOrientation(0);
      v10 = String.init<A>(describing:)();
      v12 = sub_100012614(v10, v11, &v23);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Not updating for non-interface orientation: %s", v8, 0xCu);
      sub_10000B154(v9);
    }

    else
    {
    }
  }

  else
  {
    v13 = v4;
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AAD4(v14, qword_100037DF0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      type metadata accessor for UIInterfaceOrientation(0);
      v19 = String.init<A>(describing:)();
      v21 = sub_100012614(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Updated orientation: %s", v17, 0xCu);
      sub_10000B154(v18);
    }

    *(v1 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_lastSeenValidOrientation) = v13;
  }
}

void sub_10000BE6C(void *a1, const char *a2)
{
  if (qword_1000351F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AAD4(v4, qword_100037DF0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_100003F00(v8, &qword_100035548, &qword_100025890);
  }
}

uint64_t sub_10000BFC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003B4C;

  return sub_1000092BC(a1, v4, v5, v6);
}

uint64_t sub_10000C0B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000C10C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000C14C(v0[4], v0[5]);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C14C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000C1A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000C4BC;

  return sub_1000095C4(a1, v4, v5, v7, v6);
}

uint64_t sub_10000C26C()
{
  sub_10000C14C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000C2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000998C();
}

uint64_t sub_10000C2AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C2F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000C4BC;

  return sub_100009114(a1, v4, v5, v7, v6);
}

uint64_t sub_10000C3B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C3EC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000C4BC;

  return sub_100006DB8();
}

__n128 sub_10000C4CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000C4D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000C520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10000C588@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v5 = sub_100003998(&qword_100035620, &qword_100025A88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v26 - v7);
  v9 = sub_100003998(&qword_100035628, &qword_100025A90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  *v8 = static Alignment.bottom.getter();
  v8[1] = v14;
  v15 = sub_100003998(&qword_100035630, &qword_100025A98);
  sub_10000C8A4(a1, a2, v8 + *(v15 + 44));
  LocalizedStringKey.init(stringLiteral:)();
  v16 = sub_100003D8C(&qword_100035638, &qword_100035620, &qword_100025A88);
  View.navigationTitle(_:)();

  sub_100003F00(v8, &qword_100035620, &qword_100025A88);
  v30 = v5;
  v31 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v29;
  View.assistiveAccessNavigationIcon(systemImage:)();
  (*(v10 + 8))(v13, v9);
  v18 = swift_allocObject();
  v20 = v27;
  v19 = v28;
  *(v18 + 16) = v27;
  *(v18 + 24) = v19;
  v21 = (v17 + *(sub_100003998(&qword_100035640, &qword_100025AA0) + 36));
  *v21 = sub_100003A2C;
  v21[1] = v18;
  v21[2] = 0;
  v21[3] = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v19;
  v23 = (v17 + *(sub_100003998(&qword_100035648, &qword_100025AA8) + 36));
  *v23 = 0;
  v23[1] = 0;
  v23[2] = sub_10000D60C;
  v23[3] = v22;
  v24 = v19;

  return v24;
}

uint64_t sub_10000C8A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v58 = type metadata accessor for BorderedProminentButtonStyle();
  v59 = *(v58 - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin(v58);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100003998(&qword_100035650, &qword_100025AB0);
  v8 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v10 = &v51 - v9;
  v54 = sub_100003998(&qword_100035658, &qword_100025AB8);
  v11 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v13 = &v51 - v12;
  v63 = sub_100003998(&qword_100035660, &qword_100025AC0);
  v60 = *(v63 - 8);
  v14 = *(v60 + 64);
  __chkstk_darwin(v63);
  v16 = &v51 - v15;
  v57 = sub_100003998(&qword_100035668, &qword_100025AC8);
  v17 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v55 = &v51 - v18;
  v56 = sub_100003998(&qword_100035670, &qword_100025AD0);
  v19 = *(*(v56 - 8) + 64);
  v20 = __chkstk_darwin(v56);
  v69 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v51 - v23;
  __chkstk_darwin(v22);
  v66 = &v51 - v25;
  v68 = static Alignment.topTrailing.getter();
  v67 = v26;
  v27 = a2;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v71 = v88;
  v61 = v90;
  v65 = v92;
  v64 = v93;
  v72 = v89;
  LOBYTE(v80[0]) = v89;
  v62 = v91;
  LOBYTE(v75) = v91;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = v27;
  v73 = a1;
  v74 = v27;
  v29 = v27;
  sub_100003998(&qword_100035678, &qword_100025AD8);
  sub_100003D8C(&qword_100035680, &qword_100035678, &qword_100025AD8);
  Button.init(action:label:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[*(v53 + 36)] = v80[0];
  sub_10000D6E0();
  View.accessibilityIdentifier(_:)();
  sub_100003F00(v10, &qword_100035650, &qword_100025AB0);
  BorderedProminentButtonStyle.init()();
  sub_10000D798();
  sub_10000D854(&qword_100035320, &type metadata accessor for BorderedProminentButtonStyle);
  v30 = v58;
  View.buttonStyle<A>(_:)();
  (*(v59 + 8))(v7, v30);
  sub_100003F00(v13, &qword_100035658, &qword_100025AB8);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v29;
  static Published.subscript.getter();

  if (LOBYTE(v80[0]) == 1)
  {
    v32 = static Color.red.getter();
  }

  else
  {
    v32 = static Color.green.getter();
  }

  v33 = v32;
  KeyPath = swift_getKeyPath();
  v80[0] = v33;
  v35 = AnyShapeStyle.init<A>(_:)();
  v36 = v55;
  (*(v60 + 32))(v55, v16, v63);
  v37 = (v36 + *(v57 + 36));
  *v37 = KeyPath;
  v37[1] = v35;
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  sub_10000D8AC(v36, v24, &qword_100035668, &qword_100025AC8);
  v38 = &v24[*(v56 + 36)];
  *v38 = KeyPath;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  v38[40] = 1;
  v39 = v66;
  sub_10000D8AC(v24, v66, &qword_100035670, &qword_100025AD0);
  v40 = v69;
  sub_10000D914(v39, v69);
  v41 = v68;
  *&v75 = v68;
  v42 = v67;
  *(&v75 + 1) = v67;
  v52 = v31;
  *&v76 = v31;
  *(&v76 + 1) = v71;
  LOBYTE(v77) = v72;
  *(&v77 + 1) = *v95;
  DWORD1(v77) = *&v95[3];
  v43 = v61;
  *(&v77 + 1) = v61;
  LOBYTE(v35) = v62;
  LOBYTE(v78) = v62;
  *(&v78 + 1) = *v94;
  DWORD1(v78) = *&v94[3];
  v44 = v65;
  v45 = v64;
  *(&v78 + 1) = v65;
  v79 = v64;
  v46 = v70;
  *(v70 + 64) = v64;
  v47 = v76;
  *v46 = v75;
  v46[1] = v47;
  v48 = v78;
  v46[2] = v77;
  v46[3] = v48;
  v49 = sub_100003998(&qword_1000356A8, &qword_100025BA8);
  sub_10000D914(v40, v46 + *(v49 + 48));
  sub_10000D984(&v75, v80);
  sub_100003F00(v39, &qword_100035670, &qword_100025AD0);
  sub_100003F00(v40, &qword_100035670, &qword_100025AD0);
  v80[0] = v41;
  v80[1] = v42;
  v80[2] = v52;
  v80[3] = v71;
  v81 = v72;
  *v82 = *v95;
  *&v82[3] = *&v95[3];
  v83 = v43;
  v84 = v35;
  *v85 = *v94;
  *&v85[3] = *&v94[3];
  v86 = v44;
  v87 = v45;
  return sub_100003F00(v80, &qword_1000356B0, &qword_100025BB0);
}

void sub_10000D158()
{
  withAnimation<A>(_:_:)();
  v0 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
  [v0 impactOccurred];
}

void sub_10000D1E8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;
  static Published.subscript.setter();
  sub_100005AF0(v4);
}

uint64_t sub_10000D300@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000D3E4@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10000D4A4(uint64_t a1, void *a2)
{
  v3 = sub_100003998(&qword_100035540, &qword_100025230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = a2;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_100005F70(0, 0, v6, &unk_100025238, v10);
}

uint64_t sub_10000D5D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D614()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10000D654()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000D158();
}

uint64_t sub_10000D65C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return Label.init(title:icon:)();
}

unint64_t sub_10000D6E0()
{
  result = qword_100035688;
  if (!qword_100035688)
  {
    sub_1000039E0(&qword_100035650, &qword_100025AB0);
    sub_100003D8C(&qword_100035690, &qword_100035698, &qword_100025B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035688);
  }

  return result;
}

unint64_t sub_10000D798()
{
  result = qword_1000356A0;
  if (!qword_1000356A0)
  {
    sub_1000039E0(&qword_100035658, &qword_100025AB8);
    sub_10000D6E0();
    sub_10000D854(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000356A0);
  }

  return result;
}

uint64_t sub_10000D854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D8AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003998(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000D914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_100035670, &qword_100025AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000356B0, &qword_100025BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D9F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10000D300(a1);
}

uint64_t sub_10000D9FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10000D3E4(a1);
}

unint64_t sub_10000DA24()
{
  result = qword_1000356B8;
  if (!qword_1000356B8)
  {
    sub_1000039E0(&qword_100035648, &qword_100025AA8);
    sub_10000DAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000356B8);
  }

  return result;
}

unint64_t sub_10000DAB0()
{
  result = qword_1000356C0;
  if (!qword_1000356C0)
  {
    sub_1000039E0(&qword_100035640, &qword_100025AA0);
    sub_1000039E0(&qword_100035628, &qword_100025A90);
    sub_1000039E0(&qword_100035620, &qword_100025A88);
    sub_100003D8C(&qword_100035638, &qword_100035620, &qword_100025A88);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000356C0);
  }

  return result;
}

uint64_t sub_10000DC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000356C8, &qword_100025BB8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000DC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000356C8, &qword_100025BB8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ContentView()
{
  result = qword_100035728;
  if (!qword_100035728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000DD60()
{
  sub_10000DDCC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000DDCC()
{
  if (!qword_100035738)
  {
    type metadata accessor for FinishLaunchTestAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100035738);
    }
  }
}

uint64_t sub_10000DE40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v65 = type metadata accessor for MultimodalListStyle.IconStyle();
  v3 = *(v65 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v65);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v57 - v7;
  v8 = sub_100003998(&qword_100035850, &qword_100025CC8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v57 - v12;
  v69 = type metadata accessor for MultimodalListStyle();
  v62 = *(v69 - 8);
  v14 = *(v62 + 64);
  __chkstk_darwin(v69);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100003998(&qword_1000357D8, &qword_100025C58);
  v60 = *(v67 - 8);
  v17 = *(v60 + 64);
  __chkstk_darwin(v67);
  v19 = &v57 - v18;
  v68 = sub_100003998(&qword_100035858, &qword_100025CD0);
  v64 = *(v68 - 8);
  v20 = *(v64 + 64);
  __chkstk_darwin(v68);
  v61 = &v57 - v21;
  v66 = sub_100003998(&qword_100035860, &qword_100025CD8);
  v22 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v24 = &v57 - v23;
  sub_10000B0C4(0, &qword_100035840, CLFCameraSettings_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [ObjCClassFromMetadata sharedInstance];
  v27 = sub_100012C20();

  v28 = *(v27 + 2);

  if (v28 == 1)
  {
    v30 = [ObjCClassFromMetadata sharedInstance];
    v31 = sub_100012C20();

    if (*(v31 + 2))
    {
      v32 = v31[32];

      sub_10000E6E0(v32, &v71);
      v33 = v72;
      v34 = BYTE2(v72);
      *v24 = v71;
      *(v24 + 8) = v33;
      v24[18] = v34;
      swift_storeEnumTagMultiPayload();
      sub_100003998(&qword_100035790, &qword_100025C40);
      sub_1000104EC();
      v35 = sub_100003D8C(&qword_1000357E0, &qword_1000357D8, &qword_100025C58);
      *&v71 = v67;
      *(&v71 + 1) = v69;
      v72 = v35;
      v73 = &protocol witness table for MultimodalListStyle;
      swift_getOpaqueTypeConformance2();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  __chkstk_darwin(v29);
  *(&v57 - 2) = v2;
  sub_100003998(&qword_100035868, &qword_100025CE0);
  sub_100010FFC();
  v57 = v19;
  List<>.init(content:)();
  sub_10000B0C4(0, &qword_100035898, CLFSettings_ptr);
  v37 = [swift_getObjCClassFromMetadata() sharedInstance];
  v38 = [v37 listLayout];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {

    v43 = &enum case for MultimodalListStyle.Layout.stack(_:);
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v43 = &enum case for MultimodalListStyle.Layout.grid(_:);
    if (v44)
    {
      v43 = &enum case for MultimodalListStyle.Layout.stack(_:);
    }
  }

  v45 = *v43;
  v46 = type metadata accessor for MultimodalListStyle.Layout();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v13, v45, v46);
  (*(v47 + 56))(v13, 0, 1, v46);
  v48 = v59;
  v49 = v65;
  (*(v3 + 104))(v59, enum case for MultimodalListStyle.IconStyle.circle(_:), v65);
  sub_100004130(v13, v58, &qword_100035850, &qword_100025CC8);
  (*(v3 + 16))(v63, v48, v49);
  MultimodalListStyle.init(layout:iconStyle:)();
  (*(v3 + 8))(v48, v49);
  sub_100003F00(v13, &qword_100035850, &qword_100025CC8);
  v50 = sub_100003D8C(&qword_1000357E0, &qword_1000357D8, &qword_100025C58);
  v51 = v61;
  v52 = v67;
  v53 = v69;
  v54 = v57;
  View.listStyle<A>(_:)();
  (*(v62 + 8))(v16, v53);
  (*(v60 + 8))(v54, v52);
  v55 = v64;
  v56 = v68;
  (*(v64 + 16))(v24, v51, v68);
  swift_storeEnumTagMultiPayload();
  sub_100003998(&qword_100035790, &qword_100025C40);
  sub_1000104EC();
  *&v71 = v52;
  *(&v71 + 1) = v53;
  v72 = v50;
  v73 = &protocol witness table for MultimodalListStyle;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v55 + 8))(v51, v56);
}

double sub_10000E6E0@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 1u)
  {
    sub_100010738();
    sub_10001078C();
  }

  else
  {
    sub_100010604();
    sub_100010658();
  }

  _ConditionalContent<>.init(storage:)();
  sub_100003998(&qword_1000357A0, &qword_100025C48);
  sub_100003998(&qword_1000357C0, &qword_100025C50);
  sub_100010578();
  sub_1000106AC();
  _ConditionalContent<>.init(storage:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 18) = v6;
  return result;
}

uint64_t sub_10000E940(uint64_t a1)
{
  v2 = type metadata accessor for ContentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000B0C4(0, &qword_100035840, CLFCameraSettings_ptr);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = sub_100012C20();

  v10[1] = v6;
  sub_100010EE4(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_100010C7C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_100003998(&qword_1000358A0, &qword_100025CF8);
  sub_100003998(&qword_100035880, &qword_100025CE8);
  sub_100003D8C(&qword_1000358A8, &qword_1000358A0, &qword_100025CF8);
  sub_100011080();
  sub_10001135C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10000EB3C(char *a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_100035890, &qword_100025CF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  v13 = *a1;
  v11 = a2;
  v12 = v13;
  sub_100003998(&qword_1000358B8, &qword_100025D00);
  sub_1000113BC();
  sub_1000107E0();
  NavigationLink<>.init<A>(value:label:)();
  sub_100003D8C(&qword_100035888, &qword_100035890, &qword_100025CF0);
  View.accessibilityIdentifier(_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000ED6C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100003998(&qword_1000358D0, &qword_100025D08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  v20 = a1;
  v21 = a2;
  v18 = a1;
  v19 = a2;
  sub_100003998(&qword_1000358E8, &qword_100025D18);
  sub_100003998(&qword_100035338, &qword_1000252E0);
  sub_10001094C(&qword_1000358F0, &qword_1000358E8, &qword_100025D18, sub_1000114F8);
  sub_100003F60();
  Label.init(title:icon:)();
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = static Color.yellow.getter();
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = static Color.green.getter();
LABEL_6:
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v22 = v12;
  v14 = AnyShapeStyle.init<A>(_:)();
  (*(v7 + 32))(a3, v10, v6);
  result = sub_100003998(&qword_1000358B8, &qword_100025D00);
  v16 = (a3 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  return result;
}

double sub_10000EF90@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5 & 1;
  sub_10001167C(v2, v3, v5 & 1);

  _ConditionalContent<>.init(storage:)();
  sub_100003998(&qword_100035900, &qword_100025D20);
  sub_1000114F8();
  _ConditionalContent<>.init(storage:)();
  sub_100004018(v2, v4, v6);

  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 33) = v11;
  return result;
}

uint64_t sub_10000F2A0@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = Image.init(_:bundle:)();
      goto LABEL_6;
    }

    v6 = Image.init(_:bundle:)();
LABEL_9:
    v4 = v6;
    v5 = static Color.white.getter();
    goto LABEL_10;
  }

  if (a1)
  {
    v6 = Image.init(systemName:)();
    goto LABEL_9;
  }

  v3 = Image.init(systemName:)();
LABEL_6:
  v4 = v3;
  v5 = static Color.black.getter();
LABEL_10:
  v7 = v5;
  result = swift_getKeyPath();
  *a2 = v4;
  a2[1] = result;
  a2[2] = v7;
  return result;
}

uint64_t sub_10000F394@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v20 = v1;
  sub_100003998(&qword_100035768, &qword_100025C28);
  v21 = sub_1000039E0(&qword_100035770, &qword_100025C30);
  v22 = &type metadata for NavigationStage;
  v23 = sub_1000039E0(&qword_100035778, &qword_100025C38);
  v24 = sub_1000103D0();
  v25 = sub_1000107E0();
  v26 = sub_100010834();
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  v7 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_100003998(&qword_100035820, &qword_100025CA0) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  sub_100010EE4(v1, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ContentView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_100010C7C(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v12 = (a1 + *(sub_100003998(&qword_100035828, &qword_100025CA8) + 36));
  *v12 = sub_100010CE0;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  v13 = [objc_opt_self() defaultCenter];
  if (qword_1000351F0 != -1)
  {
    swift_once();
  }

  v14 = sub_100003998(&qword_100035830, &qword_100025CB0);
  v15 = a1 + *(v14 + 52);
  NSNotificationCenter.publisher(for:object:)();

  sub_100010EE4(v2, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ContentView);
  v16 = swift_allocObject();
  result = sub_100010C7C(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v10);
  v18 = (a1 + *(v14 + 56));
  *v18 = sub_100010D40;
  v18[1] = v16;
  return result;
}

uint64_t sub_10000F6B4(uint64_t a1)
{
  v2 = type metadata accessor for ContentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003998(&qword_100035770, &qword_100025C30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000DE40(&v12 - v7);
  sub_100010EE4(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_100010C7C(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_100003998(&qword_100035778, &qword_100025C38);
  sub_1000103D0();
  sub_1000107E0();
  sub_100010834();
  View.navigationDestination<A, B>(for:destination:)();

  return sub_100010E7C(v8);
}

uint64_t sub_10000F894(_BYTE *a1)
{
  v2 = type metadata accessor for PhotoLibraryView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003998(&qword_100035848, &qword_100025CC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = *a1;
  if (v10 <= 1)
  {
    if (*a1)
    {
      *&v24 = sub_100012BC0;
      *(&v24 + 1) = 0;
      LOWORD(v25) = 256;
      sub_100010604();
      sub_100010658();
      _ConditionalContent<>.init(storage:)();
      if (BYTE1(v28))
      {
        v20 = 256;
      }

      else
      {
        v20 = 0;
      }

      v24 = v27;
      LOWORD(v25) = v20 | v28;
      BYTE2(v25) = 0;
      sub_100003998(&qword_1000357A0, &qword_100025C48);
      sub_100003998(&qword_1000357C0, &qword_100025C50);
      sub_100010578();
      sub_1000106AC();
      _ConditionalContent<>.init(storage:)();
      v13 = *(&v27 + 1);
      v12 = v27;
      v14 = BYTE2(v28);
      v15 = v28;
      v24 = v27;
      BYTE2(v25) = BYTE2(v28) != 0;
      LOWORD(v25) = v28;
      HIBYTE(v25) = 1;
    }

    else
    {
      *&v24 = sub_100004690;
      *(&v24 + 1) = 0;
      LOWORD(v25) = 0;
      sub_100010604();
      sub_100010658();
      _ConditionalContent<>.init(storage:)();
      if (BYTE1(v28))
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }

      v24 = v27;
      LOWORD(v25) = v16 | v28;
      BYTE2(v25) = 0;
      sub_100003998(&qword_1000357A0, &qword_100025C48);
      sub_100003998(&qword_1000357C0, &qword_100025C50);
      sub_100010578();
      sub_1000106AC();
      _ConditionalContent<>.init(storage:)();
      v13 = *(&v27 + 1);
      v12 = v27;
      v14 = BYTE2(v28);
      v15 = v28;
      v24 = v27;
      HIWORD(v25) = BYTE2(v28) != 0;
      LOWORD(v25) = v28;
    }

    sub_100010FC0(v12, v13, v15, v14, sub_1000116DC, sub_1000116DC);
    sub_100003998(&qword_100035790, &qword_100025C40);
    sub_1000104EC();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v28))
    {
      v21 = 0x1000000;
    }

    else
    {
      v21 = 0;
    }

    v24 = v27;
    v25 = v21 | v28 | (BYTE2(v28) << 16);
    v26 = 0;
  }

  else
  {
    if (v10 == 2)
    {
      *&v24 = sub_1000043F8;
      *(&v24 + 1) = 0;
      LOWORD(v25) = 0;
      sub_100010738();
      sub_10001078C();
      _ConditionalContent<>.init(storage:)();
      if (BYTE1(v28))
      {
        v17 = 256;
      }

      else
      {
        v17 = 0;
      }

      v24 = v27;
      LOWORD(v25) = v17 | v28;
      BYTE2(v25) = 1;
      sub_100003998(&qword_1000357A0, &qword_100025C48);
      sub_100003998(&qword_1000357C0, &qword_100025C50);
      sub_100010578();
      sub_1000106AC();
      _ConditionalContent<>.init(storage:)();
      v13 = *(&v27 + 1);
      v12 = v27;
      v14 = BYTE2(v28);
      v15 = v28;
      v24 = v27;
      HIWORD(v25) = BYTE2(v28) != 0;
      LOWORD(v25) = v28;
    }

    else
    {
      if (v10 != 3)
      {
        PhotoLibraryView.init()(v5);
        sub_100010EE4(v5, v9, type metadata accessor for PhotoLibraryView);
        swift_storeEnumTagMultiPayload();
        sub_100003998(&qword_100035800, &qword_100025C60);
        sub_10001094C(&qword_1000357F8, &qword_100035800, &qword_100025C60, sub_10001091C);
        sub_100011168(&qword_100035818, type metadata accessor for PhotoLibraryView);
        _ConditionalContent<>.init(storage:)();
        return sub_100010F4C(v5);
      }

      *&v24 = sub_1000046F0;
      *(&v24 + 1) = 0;
      LOWORD(v25) = 256;
      sub_100010738();
      sub_10001078C();
      _ConditionalContent<>.init(storage:)();
      if (BYTE1(v28))
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }

      v24 = v27;
      LOWORD(v25) = v11 | v28;
      BYTE2(v25) = 1;
      sub_100003998(&qword_1000357A0, &qword_100025C48);
      sub_100003998(&qword_1000357C0, &qword_100025C50);
      sub_100010578();
      sub_1000106AC();
      _ConditionalContent<>.init(storage:)();
      v13 = *(&v27 + 1);
      v12 = v27;
      v14 = BYTE2(v28);
      v15 = v28;
      v24 = v27;
      BYTE2(v25) = BYTE2(v28) != 0;
      LOWORD(v25) = v28;
      HIBYTE(v25) = 1;
    }

    sub_100010FC0(v12, v13, v15, v14, sub_1000116DC, sub_1000116DC);
    sub_100003998(&qword_100035790, &qword_100025C40);
    sub_1000104EC();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v28))
    {
      v18 = 0x1000000;
    }

    else
    {
      v18 = 0;
    }

    v24 = v27;
    v25 = v18 | v28 | (BYTE2(v28) << 16);
    v26 = 1;
  }

  sub_100003998(&qword_100035810, &qword_100025C68);
  sub_10001091C();
  _ConditionalContent<>.init(storage:)();
  v22 = v28;
  v23 = v29;
  *v9 = v27;
  *(v9 + 4) = v22;
  v9[20] = v23;
  swift_storeEnumTagMultiPayload();
  sub_100003998(&qword_100035800, &qword_100025C60);
  sub_10001094C(&qword_1000357F8, &qword_100035800, &qword_100025C60, sub_10001091C);
  sub_100011168(&qword_100035818, type metadata accessor for PhotoLibraryView);
  _ConditionalContent<>.init(storage:)();
  return sub_100010FC0(v12, v13, v15, v14, sub_1000116E0, sub_1000116E0);
}

uint64_t sub_1000100E8()
{
  v0 = type metadata accessor for FinishLaunchTestAction();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B0C4(0, &qword_100035840, CLFCameraSettings_ptr);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = sub_100012C20();

  v7 = *(v6 + 2);

  if (v7 >= 2)
  {
    sub_1000109C8(v4);
    FinishLaunchTestAction.callAsFunction()();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_100010214()
{
  v0 = type metadata accessor for FinishLaunchTestAction();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Notification.userInfo.getter();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v10[1] = 1701080941;
  v10[2] = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_10000A65C(v11), (v8 & 1) == 0))
  {

    sub_10000AF34(v11);
LABEL_8:
    v12 = 0u;
    v13 = 0u;
    return sub_100003F00(&v12, &qword_100035838, &qword_100025CB8);
  }

  sub_100010E08(*(v6 + 56) + 32 * v7, &v12);
  sub_10000AF34(v11);

  if (!*(&v13 + 1))
  {
    return sub_100003F00(&v12, &qword_100035838, &qword_100025CB8);
  }

  result = swift_dynamicCast();
  if (result)
  {
    sub_1000109C8(v4);
    FinishLaunchTestAction.callAsFunction()();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

unint64_t sub_1000103D0()
{
  result = qword_100035780;
  if (!qword_100035780)
  {
    sub_1000039E0(&qword_100035770, &qword_100025C30);
    sub_1000104EC();
    sub_1000039E0(&qword_1000357D8, &qword_100025C58);
    type metadata accessor for MultimodalListStyle();
    sub_100003D8C(&qword_1000357E0, &qword_1000357D8, &qword_100025C58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035780);
  }

  return result;
}

unint64_t sub_1000104EC()
{
  result = qword_100035788;
  if (!qword_100035788)
  {
    sub_1000039E0(&qword_100035790, &qword_100025C40);
    sub_100010578();
    sub_1000106AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035788);
  }

  return result;
}

unint64_t sub_100010578()
{
  result = qword_100035798;
  if (!qword_100035798)
  {
    sub_1000039E0(&qword_1000357A0, &qword_100025C48);
    sub_100010604();
    sub_100010658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035798);
  }

  return result;
}

unint64_t sub_100010604()
{
  result = qword_1000357A8;
  if (!qword_1000357A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357A8);
  }

  return result;
}

unint64_t sub_100010658()
{
  result = qword_1000357B0;
  if (!qword_1000357B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357B0);
  }

  return result;
}

unint64_t sub_1000106AC()
{
  result = qword_1000357B8;
  if (!qword_1000357B8)
  {
    sub_1000039E0(&qword_1000357C0, &qword_100025C50);
    sub_100010738();
    sub_10001078C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357B8);
  }

  return result;
}

unint64_t sub_100010738()
{
  result = qword_1000357C8;
  if (!qword_1000357C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357C8);
  }

  return result;
}

unint64_t sub_10001078C()
{
  result = qword_1000357D0;
  if (!qword_1000357D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357D0);
  }

  return result;
}

unint64_t sub_1000107E0()
{
  result = qword_1000357E8;
  if (!qword_1000357E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357E8);
  }

  return result;
}

unint64_t sub_100010834()
{
  result = qword_1000357F0;
  if (!qword_1000357F0)
  {
    sub_1000039E0(&qword_100035778, &qword_100025C38);
    sub_10001094C(&qword_1000357F8, &qword_100035800, &qword_100025C60, sub_10001091C);
    sub_100011168(&qword_100035818, type metadata accessor for PhotoLibraryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000357F0);
  }

  return result;
}

uint64_t sub_10001094C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000039E0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000109C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&qword_1000353E8, &qword_100025680);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100004130(v2, &v17 - v11, &qword_1000353E8, &qword_100025680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for FinishLaunchTestAction();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100010BC8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010BF4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010C20(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_100010C4C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_100010C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010CE0()
{
  v0 = *(*(type metadata accessor for ContentView() - 8) + 80);

  return sub_1000100E8();
}

uint64_t sub_100010D40()
{
  v0 = *(*(type metadata accessor for ContentView() - 8) + 80);

  return sub_100010214();
}

uint64_t sub_100010DB0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010DDC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100010E08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100010E7C(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035770, &qword_100025C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100010F4C(uint64_t a1)
{
  v2 = type metadata accessor for PhotoLibraryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010FB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_retain_x1();
  }

  else
  {
  }
}

uint64_t sub_100010FC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void))
{
  if (a4)
  {
    return a6(a1, a2, a3, (a3 >> 8) & 1);
  }

  else
  {
    return a5(a1, a2, a3, (a3 >> 8) & 1);
  }
}

uint64_t sub_100010FE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

unint64_t sub_100010FFC()
{
  result = qword_100035870;
  if (!qword_100035870)
  {
    sub_1000039E0(&qword_100035868, &qword_100025CE0);
    sub_100011080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035870);
  }

  return result;
}

unint64_t sub_100011080()
{
  result = qword_100035878;
  if (!qword_100035878)
  {
    sub_1000039E0(&qword_100035880, &qword_100025CE8);
    sub_100003D8C(&qword_100035888, &qword_100035890, &qword_100025CF0);
    sub_100011168(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035878);
  }

  return result;
}

uint64_t sub_100011168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000111B0()
{
  v1 = *(type metadata accessor for ContentView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100003998(&qword_1000353E8, &qword_100025680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for FinishLaunchTestAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000112C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10001135C()
{
  result = qword_1000358B0;
  if (!qword_1000358B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000358B0);
  }

  return result;
}

unint64_t sub_1000113BC()
{
  result = qword_1000358C0;
  if (!qword_1000358C0)
  {
    sub_1000039E0(&qword_1000358B8, &qword_100025D00);
    sub_100003D8C(&qword_1000358C8, &qword_1000358D0, &qword_100025D08);
    sub_100003D8C(&qword_1000358D8, &qword_1000358E0, &qword_100025D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000358C0);
  }

  return result;
}

double sub_1000114A0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  sub_10000EF90(v8);
  v4 = v9;
  v5 = v10;
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  return result;
}

unint64_t sub_1000114F8()
{
  result = qword_1000358F8;
  if (!qword_1000358F8)
  {
    sub_1000039E0(&qword_100035900, &qword_100025D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000358F8);
  }

  return result;
}

uint64_t sub_100011574@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000115A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000115CC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_1000115F8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_100011624@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100011650(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10001167C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_100011844()
{
  v6 = [*(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView) layer];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC13ClarityCamera11CameraModel_captureSession);
    }

    else
    {
      v4 = 0;
    }

    v5 = v6;
    [v2 setSession:v4];

    [v2 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
  }
}

id sub_100011A20()
{
  v1 = OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView;
  [*&v0[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView] setTranslatesAutoresizingMaskIntoConstraints:0];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  [result addSubview:*&v0[v1]];

  sub_100003998(&qword_100035980, &unk_100025DE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025D90;
  v5 = [*&v0[v1] widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = [result widthAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [*&v0[v1] heightAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = [result heightAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  v13 = [*&v0[v1] centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = result;
  v15 = [result centerXAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v4 + 48) = v16;
  v17 = [*&v0[v1] centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = objc_opt_self();
  v20 = [v18 centerYAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v4 + 56) = v21;
  sub_10000B0C4(0, &qword_100035988, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:isa];

  v23 = *&v0[v1];

  return [v23 setAccessibilityIgnoresInvertColors:1];
}

void sub_100011E24()
{
  v1 = *(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel);
  if (!v1)
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AAD4(v16, qword_100037DF0);
    v35 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v35, v17, "Attempted to update preview rotation angle, but no camera model was set.", v18, 2u);
    }

    goto LABEL_31;
  }

  v2 = OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_rotationCoordinator;
  v3 = *(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_rotationCoordinator);
  if (v3)
  {
    v4 = v1;
    goto LABEL_4;
  }

  v19 = *&v1[OBJC_IVAR____TtC13ClarityCamera11CameraModel_device];
  if (!v19)
  {
    v33 = qword_1000351F8;
    v21 = v1;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000AAD4(v34, qword_100037DF0);
    v35 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v30))
    {
      goto LABEL_30;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Device is nil";
    goto LABEL_29;
  }

  v20 = *(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView);
  v21 = v1;
  v22 = v19;
  v23 = [v20 layer];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
  }

  v25 = [objc_allocWithZone(AVCaptureDeviceRotationCoordinator) initWithDevice:v22 previewLayer:v24];

  v26 = *(v0 + v2);
  *(v0 + v2) = v25;
  v27 = v25;

  v28 = *&v21[OBJC_IVAR____TtC13ClarityCamera11CameraModel_rotationCoordinator];
  *&v21[OBJC_IVAR____TtC13ClarityCamera11CameraModel_rotationCoordinator] = v25;

  v3 = *(v0 + v2);
  if (!v3)
  {
    if (qword_1000351F8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000AAD4(v29, qword_100037DF0);
    v35 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v30))
    {
      goto LABEL_30;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Could not create rotation coordinator";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v35, v30, v32, v31, 2u);

LABEL_30:

    goto LABEL_31;
  }

LABEL_4:
  v35 = v3;
  static UIInterfaceOrientation.window.getter();
  v5 = [*(v0 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView) layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_7:

    goto LABEL_8;
  }

  v7 = [v6 connection];

  if (v7)
  {
    [v35 videoRotationAngleForHorizonLevelPreview];
    [v7 setVideoRotationAngle:?];
    v5 = v7;
    goto LABEL_7;
  }

LABEL_8:
  if (qword_1000351F8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AAD4(v8, qword_100037DF0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315138;
    type metadata accessor for UIInterfaceOrientation(0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100012614(v13, v14, &v36);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating AVCaptureVideoPreviewLayer orientation to %s", v11, 0xCu);
    sub_10000B154(v12);

    return;
  }

LABEL_31:
}

id sub_100012348(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView;
  type metadata accessor for PreviewView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel] = 0;
  *&v3[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_rotationCoordinator] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for PreviewViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_100012478(void *a1)
{
  v3 = OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_previewView;
  type metadata accessor for PreviewView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel] = 0;
  *&v1[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_rotationCoordinator] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PreviewViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10001255C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100012614(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000126E0(v11, 0, 0, 1, a1, a2);
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
    sub_100010E08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000B154(v11);
  return v7;
}

unint64_t sub_1000126E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000127EC(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_1000127EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100012838(a1, a2);
  sub_100012968(&off_100031B68);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100012838(uint64_t a1, unint64_t a2)
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

  v6 = sub_100012A54(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100012A54(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100012968(uint64_t result)
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

  result = sub_100012AC8(result, v12, 1, v3);
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

void *sub_100012A54(uint64_t a1, uint64_t a2)
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

  sub_100003998(&qword_100035978, "H:");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100012AC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_100035978, "H:");
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

char *sub_100012C20()
{
  if ([v0 allowPhotoCapture])
  {
    v1 = sub_100012E40(0, 1, 1, &_swiftEmptyArrayStorage);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_100012E40((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v1[v3 + 32] = 0;
  }

  else
  {
    v1 = &_swiftEmptyArrayStorage;
  }

  if ([v0 allowSelfieCapture])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100012E40(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_100012E40((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    v1[v5 + 32] = 2;
  }

  if ([v0 allowVideoCapture])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100012E40(0, *(v1 + 2) + 1, 1, v1);
    }

    v7 = *(v1 + 2);
    v6 = *(v1 + 3);
    if (v7 >= v6 >> 1)
    {
      v1 = sub_100012E40((v6 > 1), v7 + 1, 1, v1);
    }

    *(v1 + 2) = v7 + 1;
    v1[v7 + 32] = 1;
  }

  if ([v0 allowSelfieVideoCapture])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100012E40(0, *(v1 + 2) + 1, 1, v1);
    }

    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v1 = sub_100012E40((v8 > 1), v9 + 1, 1, v1);
    }

    *(v1 + 2) = v9 + 1;
    v1[v9 + 32] = 3;
  }

  return v1;
}

char *sub_100012E40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_100035998, &qword_100025EC8);
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

char *sub_100012F50()
{
  v1 = *v0;
  type metadata accessor for PreviewViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *&v2[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel];
  *&v2[OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel] = v1;
  v4 = v1;

  sub_100011844();
  return v2;
}

void sub_100012FC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel);
  *(a1 + OBJC_IVAR____TtC13ClarityCamera21PreviewViewController_cameraModel) = v2;
  v4 = v2;

  sub_100011844();
}

uint64_t sub_10001307C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000131C4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000130E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000131C4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100013144()
{
  sub_1000131C4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100013170()
{
  result = qword_1000359A0;
  if (!qword_1000359A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000359A0);
  }

  return result;
}

unint64_t sub_1000131C4()
{
  result = qword_1000359A8;
  if (!qword_1000359A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000359A8);
  }

  return result;
}

uint64_t sub_100013218()
{
  v0 = type metadata accessor for Logger();
  sub_10001329C(v0, qword_100037DF0);
  sub_10000AAD4(v0, qword_100037DF0);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10001329C(uint64_t a1, uint64_t *a2)
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

uint64_t static UIInterfaceOrientation.window.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10000B0C4(0, &qword_100035A68, UIScene_ptr);
  sub_100013808();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 >= 2)
  {
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AAD4(v4, qword_100037E08);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34[0] = v8;
      *v7 = 136315138;
      v9 = Set.description.getter();
      v11 = sub_100012614(v9, v10, v34);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unexpectedly had multiple scenes: %s", v7, 0xCu);
      sub_10000B154(v8);
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v13 = v34[0];
    v12 = v34[1];
    v14 = v34[2];
    v15 = v34[3];
    v16 = v34[4];
  }

  else
  {
    v17 = -1 << *(v2 + 32);
    v12 = v2 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v2 + 56);

    v15 = 0;
    v13 = v2;
  }

  v20 = (v14 + 64) >> 6;
  if (v13 < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v21 = v15;
  v22 = v16;
  v23 = v15;
  if (!v16)
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_28;
      }

      v22 = *(v12 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_30;
  }

LABEL_21:
  v24 = (v22 - 1) & v22;
  v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  if (v25)
  {
    while (1)
    {
      sub_10000B0C4(0, &qword_100035A78, UIWindowScene_ptr);
      if ([v25 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        break;
      }

      v15 = v23;
      v16 = v24;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v25 = v33;
        v23 = v15;
        v24 = v16;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    sub_100013870();

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = [v31 effectiveGeometry];
      v29 = [v32 interfaceOrientation];

      goto LABEL_33;
    }
  }

  else
  {
LABEL_28:
    sub_100013870();
  }

  if (qword_100035A48 != -1)
  {
    goto LABEL_38;
  }

LABEL_30:
  v26 = type metadata accessor for Logger();
  sub_10000AAD4(v26, qword_100037E08);
  v25 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v25, v27, "Unexpectedly had no window scene.", v28, 2u);
  }

  v29 = 1;
LABEL_33:

  return v29;
}

unint64_t sub_100013808()
{
  result = qword_100035A70;
  if (!qword_100035A70)
  {
    sub_10000B0C4(255, &qword_100035A68, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035A70);
  }

  return result;
}

uint64_t static UIInterfaceOrientation.fromDeviceOrientation(_:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t variable initialization expression of PhotoLibraryView._finishedLaunching@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003998(&qword_1000353E8, &qword_100025680);

  return swift_storeEnumTagMultiPayload();
}

BOOL variable initialization expression of PhotoLibraryView.isPad()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

uint64_t sub_10001396C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001398C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100013A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100003998(&qword_100035A98, &qword_100026148);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  type metadata accessor for PlayerViewModel();
  sub_100013DDC();
  a3 &= 1u;
  v12 = *(StateObject.wrappedValue.getter() + 16);

  VideoPlayer<>.init(player:)();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  v14 = &v11[*(sub_100003998(&qword_100035AA8, &qword_100026150) + 36)];
  *v14 = sub_100013E40;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  v16 = &v11[*(sub_100003998(&qword_100035AB0, &qword_100026158) + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = sub_100013EA4;
  *(v16 + 3) = v15;
  v11[*(v8 + 36)] = 1;
  sub_100013ECC();
  sub_100013ECC();
  sub_100013ED4();
  View.accessibilityIdentifier(_:)();
  sub_1000140F8(v11);
  v17 = *(StateObject.wrappedValue.getter() + 24);

  v18 = *(StateObject.wrappedValue.getter() + 32);

  v19 = a4 + *(sub_100003998(&qword_100035AE8, &qword_100026168) + 36);
  *v19 = v17 / v18;
  *(v19 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  result = sub_100003998(&qword_100035AF0, &qword_1000261A0);
  v23 = (a4 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_1000141C8;
  v23[2] = v21;
  return result;
}

uint64_t sub_100013CE8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for PlayerViewModel();
  sub_100013DDC();
  [*(StateObject.wrappedValue.getter() + 16) *a4];
}

uint64_t sub_100013D70@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_100003998(&qword_100035A90, &qword_100026140);
  return sub_100013A1C(v3, v4, v5, a1 + *(v6 + 44));
}

unint64_t sub_100013DDC()
{
  result = qword_100035AA0;
  if (!qword_100035AA0)
  {
    type metadata accessor for PlayerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AA0);
  }

  return result;
}

uint64_t sub_100013E68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_100013E38();

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100013ED4()
{
  result = qword_100035AB8;
  if (!qword_100035AB8)
  {
    sub_1000039E0(&qword_100035A98, &qword_100026148);
    sub_100013F60();
    sub_1000140A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AB8);
  }

  return result;
}

unint64_t sub_100013F60()
{
  result = qword_100035AC0;
  if (!qword_100035AC0)
  {
    sub_1000039E0(&qword_100035AB0, &qword_100026158);
    sub_100013FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AC0);
  }

  return result;
}

unint64_t sub_100013FEC()
{
  result = qword_100035AC8;
  if (!qword_100035AC8)
  {
    sub_1000039E0(&qword_100035AA8, &qword_100026150);
    sub_100003D8C(&qword_100035AD0, &qword_100035AD8, &qword_100026160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AC8);
  }

  return result;
}

unint64_t sub_1000140A4()
{
  result = qword_100035AE0;
  if (!qword_100035AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AE0);
  }

  return result;
}

uint64_t sub_1000140F8(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035A98, &qword_100026148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014160@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001423C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RoundedRectangle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1000142FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RoundedRectangle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PhotoViewInternal()
{
  result = qword_100035B60;
  if (!qword_100035B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000143EC()
{
  sub_1000144E8(319, &qword_100035B70, &qword_100035B78, &qword_1000261C8);
  if (v0 <= 0x3F)
  {
    sub_1000144E8(319, &qword_100035B80, &qword_100035B88, qword_1000261D0);
    if (v1 <= 0x3F)
    {
      sub_10001453C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for RoundedRectangle();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000144E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000039E0(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10001453C()
{
  if (!qword_100035B90)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100035B90);
    }
  }
}

uint64_t sub_1000145A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003998(&qword_100035BD0, &qword_100026228);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = type metadata accessor for PhotoViewInternal();
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100003998(&qword_100035BD8, &qword_100026230);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v63 = *(v1 + 16);
  sub_100003998(&qword_100035BE0, &qword_100026238);
  State.wrappedValue.getter();
  v15 = *&v60[0];
  if (*&v60[0])
  {
    v42 = v11;
    v45 = *&v60[0];
    v46 = a1;
    v39 = static Color.clear.getter();
    v16 = static Alignment.center.getter();
    v43 = v7;
    v44 = v4;
    v37 = v16;
    v18 = v17;
    v19 = static Alignment.center.getter();
    v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = v20;
    sub_100014B80(v15, v2, &v63);
    v54 = v65;
    v55 = v66;
    v56 = v67;
    v57 = v68;
    v52 = v63;
    v53 = v64;
    v59 = v68;
    v58[2] = v65;
    v58[3] = v66;
    v58[4] = v67;
    v58[0] = v63;
    v58[1] = v64;
    v40 = v10;
    v38 = v2;
    sub_100004130(&v52, v60, &qword_100035C80, &qword_100026288);
    sub_100003F00(v58, &qword_100035C80, &qword_100026288);
    v66 = v54;
    v67 = v55;
    v68 = v56;
    v64 = v52;
    v65 = v53;
    *&v60[0] = v19;
    *(&v60[0] + 1) = v21;
    v60[1] = v52;
    v60[2] = v53;
    v60[4] = v55;
    v60[5] = v56;
    v60[3] = v54;
    *&v61 = v57;
    *(&v61 + 1) = v37;
    v62 = v18;
    v51 = 0;
    *&v50[54] = v54;
    *&v50[38] = v53;
    *&v50[22] = v52;
    *&v50[6] = v60[0];
    *&v50[118] = v18;
    *&v50[102] = v61;
    *&v50[86] = v56;
    *&v50[70] = v55;
    *&v63 = v19;
    *(&v63 + 1) = v21;
    v69 = v57;
    v70 = v37;
    v71 = v18;
    sub_100004130(v60, &v49, &qword_100035C40, &qword_100026268);
    sub_100003F00(&v63, &qword_100035C40, &qword_100026268);
    LOBYTE(v18) = v51;
    v22 = *(v47 + 36);
    v23 = &v14[*(sub_100003998(&qword_100035C10, &qword_100026250) + 36)];
    v24 = v38;
    sub_100015AAC(v38 + v22, v23, &type metadata accessor for RoundedRectangle);
    *(v23 + *(sub_100003998(&qword_100035C50, &qword_100026270) + 36)) = 256;
    v25 = *&v50[48];
    *(v14 + 82) = *&v50[64];
    v26 = *&v50[96];
    *(v14 + 98) = *&v50[80];
    *(v14 + 114) = v26;
    *(v14 + 8) = *&v50[110];
    *(v14 + 18) = *v50;
    v27 = *&v50[32];
    *(v14 + 34) = *&v50[16];
    *(v14 + 50) = v27;
    *v14 = v39;
    *(v14 + 1) = 0x3FF0000000000000;
    v14[16] = v18;
    v14[17] = 0;
    *(v14 + 66) = v25;
    v28 = &v14[*(sub_100003998(&qword_100035C00, &qword_100026248) + 36)];
    sub_100015AAC(v24 + v22, v28, &type metadata accessor for RoundedRectangle);
    *(v28 + *(sub_100003998(&qword_100035C60, &qword_100026278) + 36)) = 0;
    v29 = v41;
    sub_100015AAC(v24, v41, type metadata accessor for PhotoViewInternal);
    v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v31 = swift_allocObject();
    sub_1000155D8(v29, v31 + v30);
    v32 = v43;
    v33 = &v14[*(v42 + 36)];
    *v33 = 0;
    *(v33 + 1) = 0;
    *(v33 + 2) = sub_100015B14;
    *(v33 + 3) = v31;
    sub_100004130(v14, v32, &qword_100035BD8, &qword_100026230);
    swift_storeEnumTagMultiPayload();
    sub_100003998(&qword_100035BE8, &qword_100026240);
    sub_1000156BC();
    sub_1000159F4();
    _ConditionalContent<>.init(storage:)();

    return sub_100003F00(v14, &qword_100035BD8, &qword_100026230);
  }

  else
  {
    sub_100015AAC(v2, &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
    v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v36 = swift_allocObject();
    sub_1000155D8(&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
    *v7 = sub_10001563C;
    *(v7 + 1) = v36;
    *(v7 + 2) = 0x3FF0000000000000;
    *(v7 + 12) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100003998(&qword_100035BE8, &qword_100026240);
    sub_1000156BC();
    sub_1000159F4();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100014B80@<X0>(void *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1;
  Image.init(uiImage:)();
  (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
  v12 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v10, v6);
  v13 = Image.init(systemName:)();
  v14 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v16 = static Color.black.getter();
  v17 = [*a2 mediaType];
  v25 = 1;
  v18 = 1.0;
  if (v17 != 2)
  {
    v18 = 0.0;
  }

  *&v26 = v13;
  *(&v26 + 1) = KeyPath;
  *&v27 = v14;
  *(&v27 + 1) = v16;
  v28 = 0x402C000000000000;
  v29 = 0;
  *&v30 = 0;
  *(&v30 + 1) = v18;
  *&v24[6] = v26;
  *&v24[22] = v27;
  *&v24[38] = 0x402C000000000000uLL;
  *&v24[54] = v30;
  *a3 = v12;
  *(a3 + 8) = 0;
  *(a3 + 16) = 257;
  v19 = *&v24[16];
  *(a3 + 18) = *v24;
  v20 = *&v24[32];
  v21 = *&v24[48];
  *(a3 + 80) = *&v24[62];
  *(a3 + 66) = v21;
  *(a3 + 50) = v20;
  *(a3 + 34) = v19;
  v31[0] = v13;
  v31[1] = KeyPath;
  v31[2] = v14;
  v31[3] = v16;
  v31[5] = 0;
  v31[6] = 0;
  v31[4] = 0x402C000000000000;
  *&v31[7] = v18;

  sub_100004130(&v26, v23, &qword_100035C90, &qword_1000262C8);
  sub_100003F00(v31, &qword_100035C90, &qword_1000262C8);
}

uint64_t sub_100014DEC(uint64_t a1)
{
  v7 = *(a1 + 16);
  sub_100003998(&qword_100035BE0, &qword_100026238);
  State.wrappedValue.setter();
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  v4 = *(a1 + 40);
  sub_100003998(&qword_100035C88, &qword_100026290);
  State.wrappedValue.getter();
  v5 = [objc_opt_self() defaultManager];
  [v5 cancelImageRequest:0];

  return State.wrappedValue.setter();
}

uint64_t sub_100014EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotoViewInternal();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  ProgressView<>.init<>()();
  sub_100015AAC(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_1000155D8(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  (*(v7 + 32))(v15 + v14, v9, v6);
  result = sub_100003998(&qword_100035C98, &qword_1000262D0);
  v17 = (a3 + *(result + 36));
  *v17 = sub_100015D6C;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t sub_10001510C(uint64_t a1)
{
  v2 = type metadata accessor for PhotoViewInternal();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v34 = *a1;
  GeometryProxy.size.getter();
  v13 = v12;
  v14 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v15 = *(a1 + 48);
    GeometryProxy.size.getter();
    v17 = v16;
    v18 = *&v14;
  }

  else
  {
    v19 = *(a1 + 48);

    static os_log_type_t.fault.getter();
    v32 = v3;
    v20 = static Log.runtimeIssuesLog.getter();
    v33 = v11;
    v21 = v20;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000155CC(v14, 0);
    v22 = *(v7 + 8);
    v22(v10, v6);
    v18 = *&aBlock;
    GeometryProxy.size.getter();
    v17 = v23;

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v11 = v33;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000155CC(v14, 0);
    v22(v10, v6);
    v3 = v32;
    v15 = *&aBlock;
  }

  v25 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v25 setDeliveryMode:0];
  [v25 setNetworkAccessAllowed:1];
  [v25 setAllowSecondaryDegradedImage:1];
  sub_100015AAC(a1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  sub_1000155D8(v5, v27 + v26);
  v41 = sub_100015F54;
  v42 = v27;
  *&aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
  v38 = 1107296256;
  v39 = sub_100018F64;
  v40 = &unk_100032938;
  v28 = _Block_copy(&aBlock);

  LODWORD(v27) = [v11 requestImageForAsset:v34 targetSize:1 contentMode:v25 options:v28 resultHandler:{v13 * v18, v17 * v15}];
  _Block_release(v28);

  v29 = *(a1 + 36);
  v30 = *(a1 + 40);
  LODWORD(aBlock) = *(a1 + 32);
  BYTE4(aBlock) = v29;
  v38 = v30;
  v35 = v27;
  v36 = 0;
  sub_100003998(&qword_100035C88, &qword_100026290);
  return State.wrappedValue.setter();
}

void *sub_100015564(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = *(a3 + 16);
    v3 = result;
    sub_100003998(&qword_100035BE0, &qword_100026238);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000155CC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000155D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoViewInternal();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001563C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoViewInternal() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100014EFC(a1, v6, a2);
}

unint64_t sub_1000156BC()
{
  result = qword_100035BF0;
  if (!qword_100035BF0)
  {
    sub_1000039E0(&qword_100035BD8, &qword_100026230);
    sub_100015748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035BF0);
  }

  return result;
}

unint64_t sub_100015748()
{
  result = qword_100035BF8;
  if (!qword_100035BF8)
  {
    sub_1000039E0(&qword_100035C00, &qword_100026248);
    sub_100015800();
    sub_100003D8C(&qword_100035C58, &qword_100035C60, &qword_100026278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035BF8);
  }

  return result;
}

unint64_t sub_100015800()
{
  result = qword_100035C08;
  if (!qword_100035C08)
  {
    sub_1000039E0(&qword_100035C10, &qword_100026250);
    sub_1000158B8();
    sub_100003D8C(&qword_100035C48, &qword_100035C50, &qword_100026270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C08);
  }

  return result;
}

unint64_t sub_1000158B8()
{
  result = qword_100035C18;
  if (!qword_100035C18)
  {
    sub_1000039E0(&qword_100035C20, &qword_100026258);
    sub_100015970();
    sub_100003D8C(&qword_100035C38, &qword_100035C40, &qword_100026268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C18);
  }

  return result;
}

unint64_t sub_100015970()
{
  result = qword_100035C28;
  if (!qword_100035C28)
  {
    sub_1000039E0(&qword_100035C30, &qword_100026260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C28);
  }

  return result;
}

unint64_t sub_1000159F4()
{
  result = qword_100035C68;
  if (!qword_100035C68)
  {
    sub_1000039E0(&qword_100035BE8, &qword_100026240);
    sub_100003D8C(&qword_100035C70, &qword_100035C78, &qword_100026280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035C68);
  }

  return result;
}

uint64_t sub_100015AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100015B14()
{
  v1 = *(type metadata accessor for PhotoViewInternal() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100014DEC(v2);
}

uint64_t sub_100015B74@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100015BA0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100015BCC()
{
  v1 = (type metadata accessor for PhotoViewInternal() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  v12 = *(v11 + 24);

  v13 = *(v11 + 40);

  sub_1000155CC(*(v11 + 48), *(v11 + 56));
  v14 = v1[11];
  v15 = v14 + *(type metadata accessor for RoundedRectangle() + 20);
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100015D6C()
{
  v1 = *(type metadata accessor for PhotoViewInternal() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10001510C(v0 + v2);
}

uint64_t sub_100015E38()
{
  v1 = (type metadata accessor for PhotoViewInternal() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 24);

  v6 = *(v0 + v3 + 40);

  sub_1000155CC(*(v0 + v3 + 48), *(v0 + v3 + 56));
  v7 = v1[11];
  v8 = v7 + *(type metadata accessor for RoundedRectangle() + 20);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_100015F54(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PhotoViewInternal() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100015564(a1, a2, v6);
}

uint64_t sub_100015FD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100015FF0()
{
  result = qword_100035CA0;
  if (!qword_100035CA0)
  {
    sub_1000039E0(&qword_100035CA8, &qword_1000262D8);
    sub_1000156BC();
    sub_1000159F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035CA0);
  }

  return result;
}

__n128 sub_100016090(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000160AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1000160F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100016180(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_100018E08(a1);
}

uint64_t sub_1000161DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100016258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1000162D4()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100016314(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035CE8, &qword_1000263F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v16[-v4 - 8];
  v6 = sub_100003998(&qword_100035CF0, &qword_100026400);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16[-v8 - 8];
  v23 = *a1;
  if ([v23 mediaType] == 2)
  {
    sub_100016654();
    sub_100004130(v9, v5, &qword_100035CF0, &qword_100026400);
    swift_storeEnumTagMultiPayload();
    sub_100003998(&qword_100035CF8, &qword_100026408);
    sub_100018274();
    sub_100003D8C(&qword_100035D30, &qword_100035CF8, &qword_100026408);
    _ConditionalContent<>.init(storage:)();
    return sub_100003F00(v9, &qword_100035CF0, &qword_100026400);
  }

  else
  {
    v11 = *(a1 + 8);
    v21 = *(a1 + 16);
    v22 = v11;
    v12 = *(a1 + 24);
    v19 = *(a1 + 32);
    v20 = v12;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v13 = swift_allocObject();
    v14 = *(a1 + 16);
    *(v13 + 16) = *a1;
    *(v13 + 32) = v14;
    *(v13 + 48) = *(a1 + 32);
    *(v13 + 64) = *(a1 + 48);
    *v5 = sub_10001826C;
    v5[1] = v13;
    swift_storeEnumTagMultiPayload();
    sub_100018210(&v23, v16);
    sub_100004130(&v22, v16, &qword_100035B78, &qword_1000261C8);
    sub_100004130(&v21, v16, &qword_100035CB8, &qword_1000263D8);
    sub_100004130(&v20, v16, &qword_100035CC0, &qword_100026DF0);
    sub_100004130(&v19, v16, &qword_100035CC8, &qword_1000263E0);
    sub_100004130(&v17, v16, &qword_100035CD0, &qword_1000263E8);
    sub_100003998(&qword_100035CF8, &qword_100026408);
    sub_100018274();
    sub_100003D8C(&qword_100035D30, &qword_100035CF8, &qword_100026408);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100016654()
{
  v1 = v0;
  v2 = sub_100003998(&qword_100035D38, &qword_100026420);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v23[-1] - v4);
  v6 = sub_100003998(&qword_100035D10, &qword_100026410);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v23[-1] - v8);
  v10 = v0[3];
  v11 = v0[4];
  v24 = v10;
  v25 = v11;
  sub_100003998(&qword_100035D40, &qword_100026428);
  State.wrappedValue.getter();
  v12 = v23[0];
  if (v23[0])
  {
    *v9 = static Alignment.bottom.getter();
    v9[1] = v13;
    v14 = v9 + *(sub_100003998(&qword_100035D48, &qword_100026430) + 44);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v17 = *(sub_100003998(&qword_100035D50, &qword_100026438) + 36);

    sub_10001AB64(&v14[v17], v15, v16);
    *v14 = sub_100018414;
    *(v14 + 1) = v12;
    v14[16] = 0;
    sub_100004130(v9, v5, &qword_100035D10, &qword_100026410);
    swift_storeEnumTagMultiPayload();
    sub_100003998(&qword_100035D20, &qword_100026418);
    sub_100003D8C(&qword_100035D08, &qword_100035D10, &qword_100026410);
    sub_10001832C();
    _ConditionalContent<>.init(storage:)();

    return sub_100003F00(v9, &qword_100035D10, &qword_100026410);
  }

  else
  {
    v19 = *v1;
    v27 = v1[1];
    v28 = v19;
    v26 = v1[2];
    v29 = v10;
    v30 = v11;
    v24 = v1[5];
    LOBYTE(v25) = *(v1 + 48);
    v20 = swift_allocObject();
    v21 = *(v1 + 1);
    *(v20 + 16) = *v1;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(v1 + 2);
    *(v20 + 64) = *(v1 + 48);
    *v5 = sub_10001840C;
    v5[1] = v20;
    v5[2] = 0;
    v5[3] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100018210(&v28, v23);
    sub_100004130(&v27, v23, &qword_100035B78, &qword_1000261C8);
    sub_100004130(&v26, v23, &qword_100035CB8, &qword_1000263D8);
    sub_100004130(&v29, v23, &qword_100035CC0, &qword_100026DF0);
    sub_100004130(&v30, v23, &qword_100035CC8, &qword_1000263E0);
    sub_100004130(&v24, v23, &qword_100035CD0, &qword_1000263E8);
    sub_100003998(&qword_100035D20, &qword_100026418);
    sub_100003D8C(&qword_100035D08, &qword_100035D10, &qword_100026410);
    sub_10001832C();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100016A20(uint64_t *a1)
{
  if (qword_100035A48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AAD4(v2, qword_100037E08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting asset for video", v5, 2u);
  }

  v6 = [objc_allocWithZone(PHVideoRequestOptions) init];
  [v6 setNetworkAccessAllowed:1];
  v7 = [objc_opt_self() defaultManager];
  v8 = *a1;
  v22 = a1[1];
  v23 = v8;
  v9 = a1[2];
  v20 = a1[3];
  v21 = v9;
  v10 = a1[5];
  v19 = a1[4];
  v17 = v10;
  v18 = *(a1 + 48);
  v11 = swift_allocObject();
  v12 = *(a1 + 1);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 2);
  *(v11 + 64) = *(a1 + 48);
  aBlock[4] = sub_10001841C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018F64;
  aBlock[3] = &unk_100032A88;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  sub_100018210(&v23, v15);
  sub_100004130(&v22, v15, &qword_100035B78, &qword_1000261C8);
  sub_100004130(&v21, v15, &qword_100035CB8, &qword_1000263D8);
  sub_100004130(&v20, v15, &qword_100035CC0, &qword_100026DF0);
  sub_100004130(&v19, v15, &qword_100035CC8, &qword_1000263E0);
  sub_100004130(&v17, v15, &qword_100035CD0, &qword_1000263E8);

  [v7 requestPlayerItemForVideo:v8 options:v14 resultHandler:v13];
  _Block_release(v13);
}

void sub_100016CEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = qword_100035A48;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AAD4(v6, qword_100037E08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Got player item", v9, 2u);
    }

    v10 = *a3;
    v11 = v5;
    v12 = [v10 pixelWidth];
    v13 = [v10 pixelHeight];
    type metadata accessor for PlayerViewModel();
    v14 = swift_allocObject();
    v15 = [objc_allocWithZone(AVPlayer) initWithPlayerItem:v11];

    *(v14 + 16) = v15;
    *(v14 + 24) = v12;
    *(v14 + 32) = v13;
    v16 = *(a3 + 32);
    v36[0] = *(a3 + 24);
    v40 = v14;
    v41 = v16;
    v32 = v36[0];
    v33 = v16;
    sub_100004130(v36, &v39, &qword_100035CC0, &qword_100026DF0);
    sub_100004130(&v41, &v39, &qword_100035CC8, &qword_1000263E0);
    sub_100003998(&qword_100035D40, &qword_100026428);
    State.wrappedValue.setter();

    sub_100003F00(v36, &qword_100035CC0, &qword_100026DF0);
    sub_100003F00(&v41, &qword_100035CC8, &qword_1000263E0);
  }

  else
  {
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000AAD4(v18, qword_100037E08);
    v19 = *a3;
    v40 = *(a3 + 8);
    v41 = v19;
    v20 = *(a3 + 16);
    v38 = *(a3 + 24);
    v39 = v20;
    v21 = *(a3 + 40);
    v37 = *(a3 + 32);
    v32 = v21;
    LOBYTE(v33) = *(a3 + 48);
    sub_100018210(&v41, v36);
    sub_100004130(&v40, v36, &qword_100035B78, &qword_1000261C8);
    sub_100004130(&v39, v36, &qword_100035CB8, &qword_1000263D8);
    sub_100004130(&v38, v36, &qword_100035CC0, &qword_100026DF0);
    sub_100004130(&v37, v36, &qword_100035CC8, &qword_1000263E0);
    sub_100004130(&v32, v36, &qword_100035CD0, &qword_1000263E8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_10001843C(&v41);
    sub_100003F00(&v40, &qword_100035B78, &qword_1000261C8);
    v24 = v23;
    sub_100003F00(&v39, &qword_100035CB8, &qword_1000263D8);
    sub_100003F00(&v38, &qword_100035CC0, &qword_100026DF0);
    sub_100003F00(&v37, &qword_100035CC8, &qword_1000263E0);
    sub_100003F00(&v32, &qword_100035CD0, &qword_1000263E8);

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v41;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = a2;
      v36[0] = v28;
      *v26 = 138412546;
      *(v26 + 4) = v25;
      *v27 = v25;
      *(v26 + 12) = 2080;
      sub_100018210(&v41, v34);

      sub_100003998(&qword_100035D58, &qword_100026440);
      v29 = String.init<A>(describing:)();
      v31 = sub_100012614(v29, v30, v36);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v24, "Could not get playerItem for %@. Info: %s", v26, 0x16u);
      sub_100003F00(v27, &qword_100035548, &qword_100025890);

      sub_10000B154(v28);
    }
  }
}

uint64_t sub_1000171F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  v5(a2, v6);
}

uint64_t sub_1000172A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100003998(&qword_100035D60, &qword_100026448);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v24[-v10 - 8];
  sub_1000175FC(a2, &v24[-v10 - 8]);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = &v11[*(v8 + 36)];
  v13 = v28;
  *v12 = v27;
  v12[1] = v13;
  v12[2] = v29;
  GeometryProxy.size.getter();
  v25 = v14;
  v26 = v15;
  v16 = *a2;
  v35 = *(a2 + 8);
  v36 = v16;
  v17 = *(a2 + 16);
  v33 = *(a2 + 24);
  v34 = v17;
  v18 = *(a2 + 40);
  v32 = *(a2 + 32);
  v31 = *(a2 + 48);
  v30 = v18;
  (*(v6 + 16))(&v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v5);
  v19 = (*(v6 + 80) + 65) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = *(a2 + 16);
  *(v20 + 16) = *a2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a2 + 32);
  *(v20 + 64) = *(a2 + 48);
  (*(v6 + 32))(v20 + v19, &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v5);
  sub_100018210(&v36, v24);
  sub_100004130(&v35, v24, &qword_100035B78, &qword_1000261C8);
  sub_100004130(&v34, v24, &qword_100035CB8, &qword_1000263D8);
  sub_100004130(&v33, v24, &qword_100035CC0, &qword_100026DF0);
  sub_100004130(&v32, v24, &qword_100035CC8, &qword_1000263E0);
  sub_100004130(&v30, v24, &qword_100035CD0, &qword_1000263E8);
  type metadata accessor for CGSize(0);
  sub_1000185E4();
  sub_10001897C(&qword_100035DC8, type metadata accessor for CGSize);
  View.onChange<A>(of:initial:_:)();

  return sub_100003F00(v11, &qword_100035D60, &qword_100026448);
}

uint64_t sub_1000175FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&qword_100035D98, &qword_100026460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = sub_100003998(qword_100035DD0, &qword_100026478);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v23 - v15;
  v24 = *(a1 + 8);
  sub_100003998(&qword_100035BE0, &qword_100026238);
  State.wrappedValue.getter();
  if (v26)
  {
    v17 = v26;
    v23[1] = a2;
    v18 = v17;
    Image.init(uiImage:)();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v8, v4);
    v24 = v19;
    v25 = 1;
    sub_100003998(&qword_100035DB8, &qword_100026470);
    sub_1000188F8();
    View.accessibilityIdentifier(_:)();

    [v18 size];
    sub_10001AB64(&v12[*(v9 + 36)], v20, v21);
    sub_100004130(v12, v16, &qword_100035D98, &qword_100026460);
    swift_storeEnumTagMultiPayload();
    sub_100018780();
    sub_1000183B8();
    _ConditionalContent<>.init(storage:)();

    return sub_100003F00(v12, &qword_100035D98, &qword_100026460);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100018780();
    sub_1000183B8();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100017938(double *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  GeometryProxy.size.getter();
  v9 = v8;
  v10 = a1[5];
  v35 = v10;
  v36 = *(a1 + 48);
  if (v36 == 1)
  {
    v11 = v10;
    GeometryProxy.size.getter();
    v13 = v12;
    v14 = v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = v7;
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100003F00(&v35, &qword_100035CD0, &qword_1000263E8);
    v16 = *(v3 + 8);
    v16(v6, v2);
    v14 = *aBlock;
    GeometryProxy.size.getter();
    v13 = v17;

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v7 = v27;
    sub_100003F00(&v35, &qword_100035CD0, &qword_1000263E8);
    v16(v6, v2);
    v11 = *aBlock;
  }

  v34 = *a1;
  v19 = *&v34;
  v20 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v20 setDeliveryMode:0];
  [v20 setNetworkAccessAllowed:1];
  [v20 setAllowSecondaryDegradedImage:1];
  v21 = *(a1 + 1);
  v32 = *(a1 + 2);
  v33 = v21;
  v22 = *(a1 + 3);
  v30 = *(a1 + 4);
  v31 = v22;
  v23 = swift_allocObject();
  v24 = *(a1 + 1);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a1 + 2);
  *(v23 + 64) = *(a1 + 48);
  aBlock[4] = sub_100018A28;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018F64;
  aBlock[3] = &unk_100032B00;
  v25 = _Block_copy(aBlock);
  sub_100004130(&v35, v28, &qword_100035CD0, &qword_1000263E8);
  sub_100018210(&v34, v28);
  sub_100004130(&v33, v28, &qword_100035B78, &qword_1000261C8);
  sub_100004130(&v32, v28, &qword_100035CB8, &qword_1000263D8);
  sub_100004130(&v31, v28, &qword_100035CC0, &qword_100026DF0);
  sub_100004130(&v30, v28, &qword_100035CC8, &qword_1000263E0);

  [v7 requestImageForAsset:v19 targetSize:0 contentMode:v20 options:v25 resultHandler:{v9 * v14, v13 * v11}];
  _Block_release(v25);
}

uint64_t sub_100017D7C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v3 = a1;
  sub_100003998(&qword_100035BE0, &qword_100026238);
  return State.wrappedValue.setter();
}

uint64_t sub_100017DD4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100017E48@<X0>(uint64_t a1@<X8>)
{
  ProgressView<>.init<>()();
  v2 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100003998(&qword_100035E58, &qword_100026610);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_100017EAC()
{
  sub_100003998(&qword_100035E58, &qword_100026610);
  sub_100018C30();

  return Label.init(title:icon:)();
}

uint64_t sub_100017F44@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = sub_100003998(&qword_100035CB0, &qword_1000263D0);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - v4;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v24 = *v1;
  v6 = v24;
  v25 = v8;
  v11 = v1[4];
  v10 = v1[5];
  v26 = v7;
  v27 = v11;
  v28 = v9;
  v29 = v10;
  v30 = *(v1 + 48);
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  v13 = v1[5];
  *(v12 + 48) = v11;
  *(v12 + 56) = v13;
  *(v12 + 64) = *(v1 + 48);
  v22 = sub_100018208;
  v23 = v12;
  sub_100018210(&v24, v21);
  sub_100004130(&v26, v21, &qword_100035B78, &qword_1000261C8);
  sub_100004130(&v25, v21, &qword_100035CB8, &qword_1000263D8);
  sub_100004130(&v28, v21, &qword_100035CC0, &qword_100026DF0);
  sub_100004130(&v27, v21, &qword_100035CC8, &qword_1000263E0);
  sub_100004130(&v29, v21, &qword_100035CD0, &qword_1000263E8);
  LocalizedStringKey.init(stringLiteral:)();
  v14 = sub_100003998(&qword_100035CD8, &qword_1000263F0);
  v15 = sub_100003D8C(&qword_100035CE0, &qword_100035CD8, &qword_1000263F0);
  View.navigationTitle(_:)();

  v22 = v14;
  v23 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  View.assistiveAccessNavigationIcon(systemImage:)();
  return (*(v2 + 8))(v5, v16);
}

unint64_t sub_100018274()
{
  result = qword_100035D00;
  if (!qword_100035D00)
  {
    sub_1000039E0(&qword_100035CF0, &qword_100026400);
    sub_100003D8C(&qword_100035D08, &qword_100035D10, &qword_100026410);
    sub_10001832C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D00);
  }

  return result;
}

unint64_t sub_10001832C()
{
  result = qword_100035D18;
  if (!qword_100035D18)
  {
    sub_1000039E0(&qword_100035D20, &qword_100026418);
    sub_1000183B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D18);
  }

  return result;
}

unint64_t sub_1000183B8()
{
  result = qword_100035D28;
  if (!qword_100035D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D28);
  }

  return result;
}

uint64_t sub_100018424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018490()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  sub_1000155CC(*(v0 + 56), *(v0 + 64));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100018580()
{
  v1 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);

  sub_100017938((v0 + 16));
}

unint64_t sub_1000185E4()
{
  result = qword_100035D68;
  if (!qword_100035D68)
  {
    sub_1000039E0(&qword_100035D60, &qword_100026448);
    sub_100018670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D68);
  }

  return result;
}

unint64_t sub_100018670()
{
  result = qword_100035D70;
  if (!qword_100035D70)
  {
    sub_1000039E0(&qword_100035D78, &qword_100026450);
    sub_1000186F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D70);
  }

  return result;
}

unint64_t sub_1000186F4()
{
  result = qword_100035D80;
  if (!qword_100035D80)
  {
    sub_1000039E0(&qword_100035D88, &qword_100026458);
    sub_100018780();
    sub_1000183B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D80);
  }

  return result;
}

unint64_t sub_100018780()
{
  result = qword_100035D90;
  if (!qword_100035D90)
  {
    sub_1000039E0(&qword_100035D98, &qword_100026460);
    sub_10001883C();
    sub_10001897C(&qword_100035DC0, type metadata accessor for PinchToZoomModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D90);
  }

  return result;
}

unint64_t sub_10001883C()
{
  result = qword_100035DA0;
  if (!qword_100035DA0)
  {
    sub_1000039E0(&qword_100035DA8, &qword_100026468);
    sub_1000188F8();
    sub_10001897C(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035DA0);
  }

  return result;
}

unint64_t sub_1000188F8()
{
  result = qword_100035DB0;
  if (!qword_100035DB0)
  {
    sub_1000039E0(&qword_100035DB8, &qword_100026470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035DB0);
  }

  return result;
}

uint64_t sub_10001897C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000189C4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  sub_1000155CC(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100018A40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100018A88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100018AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100018B24()
{
  sub_1000039E0(&qword_100035CB0, &qword_1000263D0);
  sub_1000039E0(&qword_100035CD8, &qword_1000263F0);
  sub_100003D8C(&qword_100035CE0, &qword_100035CD8, &qword_1000263F0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100018C30()
{
  result = qword_100035E60;
  if (!qword_100035E60)
  {
    sub_1000039E0(&qword_100035E58, &qword_100026610);
    sub_100003D8C(&qword_100035E68, &qword_100035E70, &qword_100026618);
    sub_100003D8C(&qword_100035300, &qword_100035308, &qword_1000252C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E60);
  }

  return result;
}

uint64_t sub_100018D14@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100018D40(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_100018D6C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  type metadata accessor for _UIHostingView();
  a1();
  return _UIHostingView.__allocating_init(rootView:)();
}

uint64_t sub_100018E08(void *a1)
{
  v1 = *(*(*((swift_isaMask & *a1) + class metadata base offset for _UIHostingView) - 8) + 64);
  v2 = __chkstk_darwin(a1);
  v3(v2);
  return dispatch thunk of _UIHostingView.rootView.setter();
}

uint64_t sub_100018F68()
{
  v0 = type metadata accessor for Logger();
  sub_10001329C(v0, qword_100037E08);
  sub_10000AAD4(v0, qword_100037E08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100018FEC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignposter();
  sub_10001329C(v5, qword_100037E20);
  sub_10000AAD4(v5, qword_100037E20);
  if (qword_100035A48 != -1)
  {
    swift_once();
  }

  v6 = sub_10000AAD4(v0, qword_100037E08);
  (*(v1 + 16))(v4, v6, v0);
  return OSSignposter.init(logger:)();
}

id sub_10001917C(int64_t a1, uint64_t a2, int64_t a3, id a4)
{
  result = [a4 count];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [a4 count];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [a4 count];
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_10001925C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_100019274(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

id sub_1000192A0@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  *a1 = result;
  return result;
}

void (*sub_1000192D4(void *a1, void *a2))(uint64_t a1)
{
  v4 = [*v2 objectAtIndexedSubscript:*a2];
  *a1 = v4;
  a1[1] = v4;
  return sub_100019330;
}

uint64_t sub_100019338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  result = [*v2 count];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;

  return v7;
}

unint64_t sub_1000193B8@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_100019430@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*v3 count];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_10001948C@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_10001917C(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

id sub_1000194C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = [*v2 count];
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = [v5 count];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return (v4 - v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100019538(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_100019554(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100019570(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_10001958C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1000195A4(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

int64_t sub_1000195CC()
{
  v1 = *v0;
  v2 = [v1 count];
  result = [v1 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v1 count];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100019644()
{
  v1 = *v0;
  v2 = sub_100019C10(*v0);

  return v2;
}

void *sub_100019680(void *result, uint64_t a2, unint64_t a3, id a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3;
    v9 = (a3 - 1);
    while (1)
    {
      if (v7 == [a4 count])
      {
        a3 = v7;
        goto LABEL_13;
      }

      *(a2 + 8 * v7) = [a4 objectAtIndexedSubscript:v7];
      if (v9 == v7)
      {
        break;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_100019774()
{
  result = qword_100035E98;
  if (!qword_100035E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E98);
  }

  return result;
}

unint64_t sub_100019808()
{
  result = qword_100035EB0;
  if (!qword_100035EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035EB0);
  }

  return result;
}

unint64_t sub_1000198A4()
{
  result = qword_100035EC8;
  if (!qword_100035EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035EC8);
  }

  return result;
}

unint64_t sub_100019974()
{
  result = qword_100035EE0;
  if (!qword_100035EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035EE0);
  }

  return result;
}

uint64_t sub_100019A00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000039E0(&qword_100035EA8, &qword_1000266F8);
    sub_100019808();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019AC0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000039E0(&qword_100035EC0, &qword_100026700);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100019B38()
{
  result = qword_100035EF8;
  if (!qword_100035EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035EF8);
  }

  return result;
}

void *sub_100019B8C(uint64_t a1, uint64_t a2)
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

  sub_100003998(&qword_100035F00, &qword_100026898);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_100019C10(void *a1)
{
  v2 = [a1 count];
  result = [a1 count];
  if (result < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  result = [a1 count];
  if (v2 < 0 || result < v2)
  {
    goto LABEL_14;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = sub_100019B8C(v2, 0);
  v5 = a1;
  if ([v5 count])
  {
    v6 = 0;
    v7 = v2 - 1;
    while (1)
    {
      v4[v6 + 4] = [v5 objectAtIndexedSubscript:v6];
      if (v7 == v6)
      {
        break;
      }

      if (++v6 == [v5 count])
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  return v4;
}

uint64_t sub_100019D58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003998(&qword_100035F08, &qword_100026920);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v40 = sub_100003998(&qword_100035F10, &qword_100026928);
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v40);
  v14 = &v38 - v13;
  v42 = 0;
  v15 = a1;
  sub_100003998(&qword_100035B78, &qword_1000261C8);
  State.init(wrappedValue:)();
  *(v10 + 1) = v44;
  LODWORD(v42) = 0;
  BYTE4(v42) = 1;
  sub_100003998(&qword_100035B88, qword_1000261D0);
  State.init(wrappedValue:)();
  v16 = BYTE4(v44);
  v17 = *(&v44 + 1);
  *(v10 + 8) = v44;
  v10[36] = v16;
  *(v10 + 5) = v17;
  *(v10 + 6) = swift_getKeyPath();
  v10[56] = 0;
  v18 = &v10[*(type metadata accessor for PhotoViewInternal() + 36)];
  v19 = *(type metadata accessor for RoundedRectangle() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v18 = _Q0;
  *v10 = v15;
  v10[8] = 0;
  v27 = [v15 localIdentifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = &v10[*(v7 + 52)];
  *v31 = v28;
  v31[1] = v30;
  static AccessibilityChildBehavior.ignore.getter();
  v32 = sub_10001A1D0();
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v6, v39);
  sub_10001A234(v10);
  *&v44 = sub_10001A414(v15);
  *(&v44 + 1) = v33;
  v34._countAndFlagsBits = 8236;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = sub_10001A4F4(v15);
  String.append(_:)(v35);

  v42 = v7;
  v43 = v32;
  swift_getOpaqueTypeConformance2();
  sub_10001A29C();
  v36 = v40;
  View.accessibilityLabel<A>(_:)();

  return (*(v11 + 8))(v14, v36);
}

uint64_t sub_10001A128@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10001A154@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10001A1D0()
{
  result = qword_100035F18;
  if (!qword_100035F18)
  {
    sub_1000039E0(&qword_100035F08, &qword_100026920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F18);
  }

  return result;
}

uint64_t sub_10001A234(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035F08, &qword_100026920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001A29C()
{
  result = qword_100035F20;
  if (!qword_100035F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F20);
  }

  return result;
}

unint64_t sub_10001A2F4()
{
  result = qword_100035F28;
  if (!qword_100035F28)
  {
    sub_1000039E0(&qword_100035F30, &qword_100026960);
    sub_1000039E0(&qword_100035F08, &qword_100026920);
    sub_10001A1D0();
    swift_getOpaqueTypeConformance2();
    sub_10001A3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F28);
  }

  return result;
}

unint64_t sub_10001A3BC()
{
  result = qword_100035318;
  if (!qword_100035318)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035318);
  }

  return result;
}

uint64_t sub_10001A414(void *a1)
{
  v1 = [a1 mediaType];
  if (v1 == 1)
  {
    v2 = 1414482000;
  }

  else
  {
    if (v1 != 2)
    {
      return 0;
    }

    v2 = 1162103126;
  }

  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x80000001000274D0;
  v4._countAndFlagsBits = v2 & 0xFFFF0000FFFFFFFFLL | 0x4F00000000;
  v4._object = 0xE500000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10001A4F4(void *a1)
{
  v2 = sub_100003998(&qword_100035F38, &qword_100026968);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 creationDate];
  if (v14)
  {
    v15 = v14;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  sub_10001A774(v6, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001A7E4(v8);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (qword_100035A58 != -1)
    {
      swift_once();
    }

    v17 = qword_100037E38;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v19 = [v17 stringFromDate:isa];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 8))(v13, v9);
    return v20;
  }
}

uint64_t sub_10001A774(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_100035F38, &qword_100026968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A7E4(uint64_t a1)
{
  v2 = sub_100003998(&qword_100035F38, &qword_100026968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001A84C(uint64_t *a1@<X8>)
{
  v3 = [*v1 localIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

Swift::Int sub_10001A8A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001A90C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001A94C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10001AA6C();
  return static NSObject.== infix(_:_:)() & 1;
}

void sub_10001A990()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  qword_100037E38 = v0;
}

unint64_t sub_10001AA18()
{
  result = qword_100035F40;
  if (!qword_100035F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F40);
  }

  return result;
}

unint64_t sub_10001AA6C()
{
  result = qword_100035F48;
  if (!qword_100035F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035F48);
  }

  return result;
}

uint64_t sub_10001AAB8()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10001AB14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_10001AB64@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = type metadata accessor for ScrollPosition();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  *a1 = a2;
  *(a1 + 8) = a3;
  v25 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v14 = *(&v28 + 1);
  *(a1 + 16) = v28;
  *(a1 + 24) = v14;
  v25 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v15 = *(&v28 + 1);
  *(a1 + 32) = v28;
  *(a1 + 40) = v15;
  v16 = type metadata accessor for PinchToZoomModifier();
  v17 = v16[7];
  ScrollPosition.init<A>(idType:)();
  (*(v7 + 16))(v11, v13, v6);
  State.init(wrappedValue:)();
  (*(v7 + 8))(v13, v6);
  v18 = a1 + v16[8];
  type metadata accessor for CGPoint(0);
  v25 = 0;
  v26 = 0;
  State.init(wrappedValue:)();
  v19 = v29;
  *v18 = v28;
  *(v18 + 16) = v19;
  v20 = a1 + v16[9];
  v25 = 0;
  v26 = 0;
  v27 = 1;
  sub_100003998(&qword_100035FF8, &qword_100026AB0);
  State.init(wrappedValue:)();
  v21 = v29;
  v22 = v30;
  result = *&v28;
  *v20 = v28;
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(a1 + v16[10]) = 0x3FF3333333333333;
  return result;
}

uint64_t type metadata accessor for PinchToZoomModifier()
{
  result = qword_100036060;
  if (!qword_100036060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001AE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100003998(&qword_100036000, &qword_100026AB8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10001AEE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100003998(&qword_100036000, &qword_100026AB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001AF98()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_10001B0A4();
    if (v1 <= 0x3F)
    {
      sub_10001B0F4(319, &qword_100036078, &type metadata accessor for ScrollPosition);
      if (v2 <= 0x3F)
      {
        sub_10001B0F4(319, &qword_100036080, type metadata accessor for CGPoint);
        if (v3 <= 0x3F)
        {
          sub_10001B148();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10001B0A4()
{
  if (!qword_100036070)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100036070);
    }
  }
}

void sub_10001B0F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001B148()
{
  if (!qword_100036088)
  {
    sub_1000039E0(&qword_100035FF8, &qword_100026AB0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100036088);
    }
  }
}

uint64_t sub_10001B1C8(double a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_100003998(&qword_100036178, &qword_100026BA0);
  State.wrappedValue.setter();
  result = State.wrappedValue.getter();
  if (a1 < 1.0)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10001B2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_100003998(&qword_1000360D0, &qword_100026B28);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v20 - v4);
  v6 = type metadata accessor for PinchToZoomModifier();
  v20[0] = *(v6 - 8);
  v7 = *(v20[0] + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100003998(&qword_1000360D8, &qword_100026B30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - v11;
  sub_10001CF5C();
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  v14 = [v13 allowPinchToZoom];

  v15 = *(v9 + 16);
  if (v14)
  {
    v15(v12, v21, v8);
    sub_10001CFA8(v20[1], v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = (v10 + *(v20[0] + 80) + v16) & ~*(v20[0] + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v16, v12, v8);
    sub_10001D1D0(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    *v5 = sub_10001D234;
    v5[1] = v18;
  }

  else
  {
    v15(v5, v21, v8);
  }

  swift_storeEnumTagMultiPayload();
  sub_100003998(&qword_1000360E0, &qword_100026B38);
  sub_100003D8C(&qword_1000360E8, &qword_1000360E0, &qword_100026B38);
  sub_100003D8C(&qword_1000360F0, &qword_1000360D8, &qword_100026B30);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10001B600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v105 = a4;
  v106 = a1;
  v98 = type metadata accessor for MagnifyGesture();
  v97 = *(v98 - 8);
  v5 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100003998(&qword_1000360F8, &qword_100026B40);
  v100 = *(v101 - 8);
  v7 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = &v77 - v8;
  v104 = sub_100003998(&qword_100036100, &qword_100026B48);
  v103 = *(v104 - 8);
  v9 = *(v103 + 64);
  __chkstk_darwin(v104);
  v102 = &v77 - v10;
  v93 = type metadata accessor for ScrollIndicatorVisibility();
  v92 = *(v93 - 8);
  v11 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003998(&qword_100036108, &qword_100026B50);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v84 = &v77 - v15;
  v81 = type metadata accessor for PinchToZoomModifier();
  v16 = *(v81 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v81);
  v83 = v18;
  v109 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003998(&qword_100036110, &qword_100026B58);
  v79 = *(v19 - 8);
  v20 = *(v79 + 64);
  __chkstk_darwin(v19);
  v22 = &v77 - v21;
  v86 = sub_100003998(&qword_100036118, &qword_100026B60);
  v80 = *(v86 - 8);
  v23 = *(v80 + 64);
  __chkstk_darwin(v86);
  v25 = &v77 - v24;
  v90 = sub_100003998(&qword_100036120, &qword_100026B68);
  v87 = *(v90 - 8);
  v26 = *(v87 + 64);
  __chkstk_darwin(v90);
  v85 = &v77 - v27;
  v107 = sub_100003998(&qword_100036128, &qword_100026B70);
  v89 = *(v107 - 8);
  v28 = *(v89 + 64);
  __chkstk_darwin(v107);
  v88 = &v77 - v29;
  v95 = sub_100003998(&qword_100036130, &qword_100026B78);
  v94 = *(v95 - 8);
  v30 = *(v94 + 64);
  __chkstk_darwin(v95);
  v108 = &v77 - v31;
  v78 = sub_100003998(&qword_100036138, &qword_100026B80);
  inited = swift_initStackObject();
  v77 = xmmword_100026A90;
  *(inited + 16) = xmmword_100026A90;
  v33 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v33;
  v34 = static Axis.Set.vertical.getter();
  *(inited + 33) = v34;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v33)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  v35 = Axis.Set.init(rawValue:)();
  if (v35 != v34)
  {
    v35 = Axis.Set.init(rawValue:)();
  }

  __chkstk_darwin(v35);
  *(&v77 - 4) = a2;
  v36 = v110;
  v37 = v106;
  *(&v77 - 3) = v110;
  v76 = v37;
  sub_100003998(&qword_100036140, &qword_100026B88);
  v38 = sub_1000039E0(&qword_100036148, &qword_100026B90);
  v39 = sub_10001D330();
  v111 = v38;
  v112 = v39;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  type metadata accessor for CGPoint(0);
  v41 = v40;
  v42 = v109;
  sub_10001CFA8(v36, v109);
  v43 = *(v16 + 80);
  v44 = (v43 + 16) & ~v43;
  v45 = v44 + v83;
  v83 = v43;
  v82 = v45;
  v46 = swift_allocObject();
  v106 = v44;
  sub_10001D1D0(v42, v46 + v44);
  v47 = sub_100003D8C(&qword_100036168, &qword_100036110, &qword_100026B58);
  v48 = sub_10001D540(&qword_100036170, type metadata accessor for CGPoint);
  v76 = v48;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v79 + 8))(v22, v19);
  v49 = *(v81 + 28);
  sub_100003998(&qword_100036000, &qword_100026AB8);
  v50 = v84;
  State.projectedValue.getter();
  v111 = v19;
  v112 = v41;
  v113 = v47;
  v114 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v85;
  v53 = v86;
  View.scrollPosition(_:anchor:)();
  sub_100003F00(v50, &qword_100036108, &qword_100026B50);
  (*(v80 + 8))(v25, v53);
  v54 = v91;
  static ScrollIndicatorVisibility.hidden.getter();
  v55 = swift_initStackObject();
  *(v55 + 16) = v77;
  LOBYTE(v41) = static Axis.Set.vertical.getter();
  *(v55 + 32) = v41;
  v56 = static Axis.Set.horizontal.getter();
  *(v55 + 33) = v56;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v41)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v56)
  {
    Axis.Set.init(rawValue:)();
  }

  v111 = v53;
  v112 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v88;
  v59 = v90;
  View.scrollIndicators(_:axes:)();
  (*(v92 + 8))(v54, v93);
  (*(v87 + 8))(v52, v59);
  v60 = v110;
  v61 = *(v110 + 40);
  v111 = *(v110 + 32);
  v112 = v61;
  sub_100003998(&qword_100036178, &qword_100026BA0);
  State.wrappedValue.getter();
  v111 = v59;
  v112 = v57;
  v93 = swift_getOpaqueTypeConformance2();
  v62 = v107;
  View.scrollDisabled(_:)();
  (*(v89 + 8))(v58, v62);
  v63 = v96;
  MagnifyGesture.init(minimumScaleDelta:)();
  v64 = v109;
  sub_10001CFA8(v60, v109);
  v65 = swift_allocObject();
  v66 = v106;
  sub_10001D1D0(v64, v65 + v106);
  sub_10001D540(&qword_100036180, &type metadata accessor for MagnifyGesture);
  sub_10001D540(&qword_100036188, &type metadata accessor for MagnifyGesture.Value);
  v67 = v99;
  v68 = v98;
  Gesture<>.onChanged(_:)();

  (*(v97 + 8))(v63, v68);
  sub_10001CFA8(v60, v64);
  v69 = swift_allocObject();
  sub_10001D1D0(v64, v69 + v66);
  sub_100003D8C(&qword_100036190, &qword_1000360F8, &qword_100026B40);
  v70 = v102;
  v71 = v101;
  Gesture.onEnded(_:)();

  (*(v100 + 8))(v67, v71);
  static GestureMask.all.getter();
  v111 = v107;
  v112 = v93;
  swift_getOpaqueTypeConformance2();
  sub_100003D8C(&qword_100036198, &qword_100036100, &qword_100026B48);
  v72 = v95;
  v73 = v104;
  v74 = v108;
  View.highPriorityGesture<A>(_:including:)();
  (*(v103 + 8))(v70, v73);
  return (*(v94 + 8))(v74, v72);
}