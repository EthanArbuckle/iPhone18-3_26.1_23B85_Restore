uint64_t sub_1001CFD14@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v65 = a1;
  v68 = a2;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SmallAwardsCardView();
  v7 = (a1 + *(v64 + 32));
  v8 = v7[1];
  v116 = *v7;
  v117 = v8;
  v63 = sub_10000FCBC();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v71 = v14;
  static Font.caption2.getter();
  v62 = enum case for Font.Leading.tight(_:);
  v61 = *(v4 + 104);
  v59 = v3;
  v61(v6);
  Font.leading(_:)();

  v60 = *(v4 + 8);
  v60(v6, v3);
  v66 = Text.font(_:)();
  v67 = v15;
  v72 = v16;
  v18 = v17;

  sub_10004642C(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v71) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v69 = v18 & 1;
  LOBYTE(v116) = v18 & 1;
  LOBYTE(v100[0]) = 0;
  v27 = (v65 + *(v64 + 36));
  v28 = v27[1];
  v116 = *v27;
  v117 = v28;

  v29 = Text.init<A>(_:)();
  v31 = v30;
  LOBYTE(v9) = v32;
  static Font.caption2.getter();
  v33 = v59;
  (v61)(v6, v62, v59);
  Font.leading(_:)();

  v60(v6, v33);
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v4) = v37;
  v39 = v38;

  sub_10004642C(v29, v31, v9 & 1);

  v40 = swift_getKeyPath();
  LODWORD(v29) = static HierarchicalShapeStyle.secondary.getter();
  LOBYTE(v9) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v41 = v4 & 1;
  LOBYTE(v116) = v4 & 1;
  v42 = v66;
  v43 = v67;
  *&v90 = v66;
  *(&v90 + 1) = v72;
  LOBYTE(v91) = v69;
  *(&v91 + 1) = *v89;
  DWORD1(v91) = *&v89[3];
  *(&v91 + 1) = v67;
  *&v92 = KeyPath;
  BYTE8(v92) = 1;
  HIDWORD(v92) = *&v88[3];
  *(&v92 + 9) = *v88;
  LOBYTE(v93) = v71;
  DWORD1(v93) = *&v87[3];
  *(&v93 + 1) = *v87;
  *(&v93 + 1) = v20;
  *&v94[0] = v22;
  *(&v94[0] + 1) = v24;
  *&v94[1] = v26;
  BYTE8(v94[1]) = 0;
  v73 = v90;
  v74 = v91;
  *(v77 + 9) = *(v94 + 9);
  v75 = v92;
  v76 = v93;
  *&v95 = v34;
  *(&v95 + 1) = v36;
  LOBYTE(v96) = v41;
  DWORD1(v96) = *(v86 + 3);
  *(&v96 + 1) = v86[0];
  *(&v96 + 1) = v39;
  *&v97 = v40;
  BYTE8(v97) = 1;
  BYTE11(v97) = v85;
  *(&v97 + 9) = v84;
  HIDWORD(v97) = v29;
  LOBYTE(v98) = v9;
  DWORD1(v98) = *&v83[3];
  *(&v98 + 1) = *v83;
  *(&v98 + 1) = v44;
  *&v99[0] = v45;
  *(&v99[0] + 1) = v46;
  *&v99[1] = v47;
  BYTE8(v99[1]) = 0;
  v77[0] = v94[0];
  v78 = v95;
  v79 = v96;
  *(v82 + 9) = *(v99 + 9);
  v81 = v98;
  v82[0] = v99[0];
  v80 = v97;
  v48 = v90;
  v49 = v91;
  v50 = v93;
  v51 = v68;
  v68[2] = v92;
  v51[3] = v50;
  *v51 = v48;
  v51[1] = v49;
  v52 = v77[0];
  v53 = v77[1];
  v54 = v79;
  v51[6] = v78;
  v51[7] = v54;
  v51[4] = v52;
  v51[5] = v53;
  v55 = v80;
  v56 = v81;
  v57 = v82[0];
  *(v51 + 169) = *(v82 + 9);
  v51[9] = v56;
  v51[10] = v57;
  v51[8] = v55;
  v100[0] = v34;
  v100[1] = v36;
  v101 = v41;
  *v102 = v86[0];
  *&v102[3] = *(v86 + 3);
  v103 = v39;
  v104 = v40;
  v105 = 1;
  v106 = v84;
  v107 = v85;
  v108 = v29;
  v109 = v9;
  *v110 = *v83;
  *&v110[3] = *&v83[3];
  v111 = v44;
  v112 = v45;
  v113 = v46;
  v114 = v47;
  v115 = 0;
  sub_10001B104(&v90, &v116, &qword_1008DE058);
  sub_10001B104(&v95, &v116, &qword_1008E00C8);
  sub_10000EA04(v100, &qword_1008E00C8);
  v116 = v42;
  v117 = v72;
  v118 = v69;
  *v119 = *v89;
  *&v119[3] = *&v89[3];
  v120 = v43;
  v121 = KeyPath;
  v122 = 1;
  *v123 = *v88;
  *&v123[3] = *&v88[3];
  v124 = v71;
  *v125 = *v87;
  *&v125[3] = *&v87[3];
  v126 = v20;
  v127 = v22;
  v128 = v24;
  v129 = v26;
  v130 = 0;
  return sub_10000EA04(&v116, &qword_1008DE058);
}

uint64_t sub_1001D02D4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001D0380;

  return sub_1001D051C();
}

uint64_t sub_1001D0380()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001D04BC, v1, v0);
}

uint64_t sub_1001D04BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D051C()
{
  v1[21] = v0;
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_1001D05B4, v3, v2);
}

uint64_t sub_1001D05B4()
{
  v1 = v0[21];
  v2 = type metadata accessor for SmallAwardsCardView();
  v0[25] = v2;
  v3 = *(v1 + *(v2 + 28));
  v0[26] = v3;
  if (v3 && (v4 = *(v1 + *(v2 + 40))) != 0)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001D0758;
    v5 = swift_continuation_init();
    v0[17] = sub_100140278(&qword_1008E0028);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001D09D8;
    v0[13] = &unk_10084B2B0;
    v0[14] = v5;
    [v4 thumbnailImageForAchievement:v3 size:v0 + 10 completion:{90.0, 90.0}];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1001D0758()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_1001D0860, v2, v1);
}

uint64_t sub_1001D0860()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 144);

  if (v2)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 168);
    [v2 size];
    v6 = v5 + *(v3 + 56);
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    *(v0 + 80) = *v6;
    *(v0 + 96) = v7;
    *(v0 + 104) = v8;
    *(v0 + 144) = v9;
    *(v0 + 152) = v10;
    *(v0 + 160) = 0;
    sub_100140278(&qword_1008E0030);
    State.wrappedValue.setter();
    v11 = v2;
    v12 = Image.init(uiImage:)();
    v13 = (v5 + *(v3 + 60));
    v14 = v13[1];
    *(v0 + 80) = *v13;
    *(v0 + 88) = v14;
    *(v0 + 144) = v12;

    sub_100140278(&qword_1008E0038);
    State.wrappedValue.setter();
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001D09D8(uint64_t a1, void *a2)
{
  v3 = sub_1000066AC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1001D0A3C()
{
  v47 = type metadata accessor for DynamicTypeSize();
  v50 = *(v47 - 8);
  v1 = __chkstk_darwin(v47);
  v49 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v48 = &v43 - v3;
  v4 = type metadata accessor for LocalCoordinateSpace();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GeometryProxy();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&unk_1008DC740);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v52 = type metadata accessor for SmallAwardsCardView();
  sub_100140278(&qword_1008DC7F0);
  v51 = v0;
  Binding.wrappedValue.getter();
  v17 = *(v8 + 48);
  v18 = v17(v16, 1, v7);
  v44 = v6;
  v45 = v4;
  if (v18)
  {
    sub_10000EA04(v16, &unk_1008DC740);
  }

  else
  {
    (*(v8 + 16))(v10, v16, v7);
    sub_10000EA04(v16, &unk_1008DC740);
    static CoordinateSpaceProtocol<>.local.getter();
    GeometryProxy.frame<A>(in:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    (*(v46 + 8))(v6, v4);
    (*(v8 + 8))(v10, v7);
    v53.origin.x = v20;
    v53.origin.y = v22;
    v53.size.width = v24;
    v53.size.height = v26;
    CGRectGetHeight(v53);
  }

  sub_100140278(&qword_1008DC6B0);
  State.wrappedValue.getter();
  if (v17(v14, 1, v7))
  {
    sub_10000EA04(v14, &unk_1008DC740);
  }

  else
  {
    (*(v8 + 16))(v10, v14, v7);
    sub_10000EA04(v14, &unk_1008DC740);
    v27 = v44;
    static CoordinateSpaceProtocol<>.local.getter();
    v28 = v45;
    GeometryProxy.frame<A>(in:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    (*(v46 + 8))(v27, v28);
    (*(v8 + 8))(v10, v7);
    v54.origin.x = v30;
    v54.origin.y = v32;
    v54.size.width = v34;
    v54.size.height = v36;
    CGRectGetHeight(v54);
  }

  v37 = v48;
  sub_10005491C(v48);
  v39 = v49;
  v38 = v50;
  v40 = v47;
  (*(v50 + 104))(v49, enum case for DynamicTypeSize.xxLarge(_:), v47);
  sub_10005BD44(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v41 = *(v38 + 8);
  v41(v39, v40);
  return (v41)(v37, v40);
}

uint64_t sub_1001D1004()
{
  type metadata accessor for SmallAwardsCardView();
  sub_100140278(&qword_1008DDBB8);
  return State.wrappedValue.setter();
}

uint64_t sub_1001D1078()
{
  type metadata accessor for SmallAwardsCardView();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_1001D02D4();
}

unint64_t sub_1001D1144()
{
  result = qword_1008E00A8;
  if (!qword_1008E00A8)
  {
    sub_100141EEC(&qword_1008E0090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E00A8);
  }

  return result;
}

uint64_t sub_1001D134C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001D13D0()
{
  result = qword_1008E0108;
  if (!qword_1008E0108)
  {
    sub_100141EEC(&qword_1008E0018);
    sub_1000758B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0108);
  }

  return result;
}

unint64_t sub_1001D1460(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      v3 = [objc_opt_self() mainBundle];
      v4 = String._bridgeToObjectiveC()();
      v5 = [v3 localizedStringForKey:v4 value:0 table:0];
LABEL_11:
      v6 = v5;

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v2;
    }

    [a1 isMuted];
    v3 = ActivitySharingBundle();
LABEL_8:
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    [a1 canSeeMyActivityData];
    v3 = ActivitySharingBundle();
    goto LABEL_8;
  }

  if (a2 != 3)
  {
    v3 = ActivitySharingBundle();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];
    goto LABEL_11;
  }

  return 0xD000000000000014;
}

uint64_t sub_1001D1720()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001D17A8()
{

  v1 = OBJC_IVAR____TtC10FitnessApp26DashboardCardCellViewCache__fitnessPlusUpNextCardCurrentPage;
  v2 = sub_100140278(&qword_1008DBEE8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC10FitnessApp26DashboardCardCellViewCache__fitnessPlusUpNextCardImageMap;
  v5 = sub_100140278(&qword_1008E0310);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC10FitnessApp26DashboardCardCellViewCache__friendsHighlightCardCurrentPage, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D18E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DashboardCardCellViewCache();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001D1924@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1001D19A4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1001D1A1C()
{
  result = qword_1008E0318;
  if (!qword_1008E0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0318);
  }

  return result;
}

unint64_t sub_1001D1A74()
{
  result = qword_1008E0320;
  if (!qword_1008E0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0320);
  }

  return result;
}

unint64_t sub_1001D1B4C()
{
  result = qword_1008E0328;
  if (!qword_1008E0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0328);
  }

  return result;
}

uint64_t sub_1001D1BA0()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_1009251E8);
  sub_10001AC90(v0, qword_1009251E8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1001D1C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[135] = a5;
  v5[134] = a1;
  v6 = type metadata accessor for IntentDialog();
  v5[136] = v6;
  v5[137] = *(v6 - 8);
  v5[138] = swift_task_alloc();
  sub_100140278(&unk_1008EB5B0);
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[142] = v7;
  v5[143] = *(v7 - 8);
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  sub_100140278(&unk_1008DB8A0);
  v5[147] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[148] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[149] = v9;
  v5[150] = v8;

  return _swift_task_switch(sub_1001D1E30, v9, v8);
}

uint64_t sub_1001D1E30()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 840);
  EntityProperty.wrappedValue.getter();

  if (*(v0 + 1320) != 1)
  {
    IntentParameter.wrappedValue.getter();
    v6 = *(v0 + 848);
    *(v0 + 1296) = v6;
    v7 = *(v0 + 856);
    *(v0 + 1304) = v7;
    *(v0 + 864) = v6;
    *(v0 + 872) = v7;
    v8 = swift_task_alloc();
    *(v0 + 1312) = v8;
    v9 = sub_1001D3A20();
    *v8 = v0;
    v8[1] = sub_1001D2FD0;
    v10 = *(v0 + 1112);
LABEL_9:

    return URLRepresentableEntity.urlRepresentation.getter(v10, &type metadata for AwardEntity, v9);
  }

  IntentParameter.wrappedValue.getter();
  v2 = *(v0 + 936);
  v3 = [v2 relevantEarnedInstance];
  if (v3 && (v4 = v3, v5 = [v3 externalIdentifier], v4, v5))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();
  }

  else
  {
    v11 = *(v0 + 1176);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  v13 = *(v0 + 1176);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000EA04(v13, &unk_1008DB8A0);
    IntentParameter.wrappedValue.getter();
    v16 = *(v0 + 944);
    *(v0 + 1272) = v16;
    v17 = *(v0 + 952);
    *(v0 + 1280) = v17;
    *(v0 + 960) = v16;
    *(v0 + 968) = v17;
    v18 = swift_task_alloc();
    *(v0 + 1288) = v18;
    v9 = sub_1001D3A20();
    *v18 = v0;
    v18[1] = sub_1001D2C00;
    v10 = *(v0 + 1120);
    goto LABEL_9;
  }

  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v15 + 8))(v13, v14);
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v22 = AppDependency.__allocating_init(key:manager:)();
  *(v0 + 1208) = v22;
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  *(v0 + 1216) = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  v23 = AppDependency.__allocating_init(key:manager:)();
  *(v0 + 1224) = v23;
  sub_100140278(&qword_1008DCF58);
  inited = swift_initStackObject();
  *(v0 + 1232) = inited;
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = v19;
  *(inited + 40) = v21;
  v25 = swift_task_alloc();
  *(v0 + 1240) = v25;
  *v25 = v0;
  v25[1] = sub_1001D22E0;

  return sub_100207400(inited, v22, v23);
}

uint64_t sub_1001D22E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[156] = a1;
  v4[157] = v1;

  v5 = v3[154];
  if (v1)
  {
    swift_setDeallocating();
    sub_100045B78(v5 + 32);

    v6 = v4[150];
    v7 = v4[149];
    v8 = sub_1001D269C;
  }

  else
  {

    swift_setDeallocating();
    sub_100045B78(v5 + 32);
    v6 = v4[150];
    v7 = v4[149];
    v8 = sub_1001D24C0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1001D24C0()
{
  v1 = *(v0 + 1248);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 80);
    *(v0 + 48) = *(v1 + 64);
    *(v0 + 64) = v4;
    *(v0 + 16) = v2;
    *(v0 + 32) = v3;
    v5 = *(v1 + 96);
    v6 = *(v1 + 112);
    v7 = *(v1 + 144);
    *(v0 + 112) = *(v1 + 128);
    *(v0 + 128) = v7;
    *(v0 + 80) = v5;
    *(v0 + 96) = v6;
    v8 = *(v1 + 160);
    v9 = *(v1 + 176);
    v10 = *(v1 + 208);
    *(v0 + 176) = *(v1 + 192);
    *(v0 + 192) = v10;
    *(v0 + 144) = v8;
    *(v0 + 160) = v9;
    v11 = *(v1 + 224);
    v12 = *(v1 + 240);
    v13 = *(v1 + 272);
    *(v0 + 240) = *(v1 + 256);
    *(v0 + 256) = v13;
    *(v0 + 208) = v11;
    *(v0 + 224) = v12;
    sub_1001C6FE0(v0 + 16, v0 + 272);

    v14 = *(v0 + 224);
    *(v0 + 720) = *(v0 + 208);
    *(v0 + 736) = v14;
    v15 = *(v0 + 256);
    *(v0 + 752) = *(v0 + 240);
    *(v0 + 768) = v15;
    v16 = *(v0 + 160);
    *(v0 + 656) = *(v0 + 144);
    *(v0 + 672) = v16;
    v17 = *(v0 + 192);
    *(v0 + 688) = *(v0 + 176);
    *(v0 + 704) = v17;
    v18 = *(v0 + 96);
    *(v0 + 592) = *(v0 + 80);
    *(v0 + 608) = v18;
    v19 = *(v0 + 128);
    *(v0 + 624) = *(v0 + 112);
    *(v0 + 640) = v19;
    v20 = *(v0 + 32);
    *(v0 + 528) = *(v0 + 16);
    *(v0 + 544) = v20;
    v21 = *(v0 + 64);
    *(v0 + 560) = *(v0 + 48);
    *(v0 + 576) = v21;
    v22 = swift_task_alloc();
    *(v0 + 1264) = v22;
    v23 = sub_1001C7160();
    *v22 = v0;
    v22[1] = sub_1001D2778;
    v24 = *(v0 + 1128);
    v25 = &type metadata for WorkoutEntity;
  }

  else
  {

    IntentParameter.wrappedValue.getter();
    v26 = *(v0 + 944);
    *(v0 + 1272) = v26;
    v27 = *(v0 + 952);
    *(v0 + 1280) = v27;
    *(v0 + 960) = v26;
    *(v0 + 968) = v27;
    v28 = swift_task_alloc();
    *(v0 + 1288) = v28;
    v23 = sub_1001D3A20();
    *v28 = v0;
    v28[1] = sub_1001D2C00;
    v24 = *(v0 + 1120);
    v25 = &type metadata for AwardEntity;
  }

  return URLRepresentableEntity.urlRepresentation.getter(v24, v25, v23);
}

uint64_t sub_1001D269C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D2778()
{
  v1 = *v0;

  v2 = *(v1 + 1200);
  v3 = *(v1 + 1192);

  return _swift_task_switch(sub_1001D2898, v3, v2);
}

uint64_t sub_1001D2898()
{
  super_class = v0[71].super_class;
  receiver = v0[71].receiver;
  v3 = v0[70].super_class;
  if ((*(super_class + 6))(v3, 1, receiver) == 1)
  {
    sub_10000EA04(v3, &unk_1008EB5B0);
    sub_1001C7018(&v0[1]);
    IntentParameter.wrappedValue.getter();
    v4 = v0[59].receiver;
    v0[79].super_class = v4;
    v5 = v0[59].super_class;
    v0[80].receiver = v5;
    v0[60].receiver = v4;
    v0[60].super_class = v5;
    v6 = swift_task_alloc();
    v0[80].super_class = v6;
    v7 = sub_1001D3A20();
    *v6 = v0;
    *(v6 + 1) = sub_1001D2C00;
    v8 = v0[70].receiver;

    return URLRepresentableEntity.urlRepresentation.getter(v8, &type metadata for AwardEntity, v7);
  }

  else
  {
    v9 = v0[73].receiver;

    (*(super_class + 4))(v9, v3, receiver);
    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v10 = v0[73].receiver;
    v11 = v0[71].super_class;
    v21 = v0[71].receiver;
    v12 = v0[69].receiver;
    v13 = v0[68].super_class;
    v14 = v0[68].receiver;
    v15 = type metadata accessor for NavigatorContext();
    v16 = objc_allocWithZone(v15);
    v16[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    v0[64].receiver = v16;
    v0[64].super_class = v15;
    v17 = objc_msgSendSuper2(v0 + 64, "init");
    sub_1004DA120(v10, v17);

    IntentParameter.wrappedValue.getter();
    v18 = v0[65].super_class;
    v0[66].receiver = v0[65].receiver;
    v0[66].super_class = v18;
    IntentDialog.init(stringLiteral:)();
    sub_100140278(&qword_1008E0358);
    sub_1001D3A74();
    static IntentResult.result<A>(value:dialog:)();
    sub_1001C7018(&v0[1]);
    (*(v13 + 1))(v12, v14);

    (*(v11 + 1))(v10, v21);

    v19 = v0->super_class;

    return v19();
  }
}

uint64_t sub_1001D2C00()
{
  v1 = *v0;

  v2 = *(v1 + 1200);
  v3 = *(v1 + 1192);

  return _swift_task_switch(sub_1001D2D20, v3, v2);
}

uint64_t sub_1001D2D20()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1120);

  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 1280);
  if (v4 == 1)
  {
    sub_10000EA04(*(v0 + 1120), &unk_1008EB5B0);
  }

  else
  {
    (*(*(v0 + 1144) + 32))(*(v0 + 1160), *(v0 + 1120), *(v0 + 1136));

    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 1160);
    v7 = *(v0 + 1144);
    v8 = *(v0 + 1136);
    v9 = type metadata accessor for NavigatorContext();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 1008) = v10;
    *(v0 + 1016) = v9;
    v11 = objc_msgSendSuper2((v0 + 1008), "init");
    sub_1004DA120(v6, v11);

    (*(v7 + 8))(v6, v8);
  }

  v12 = *(v0 + 1104);
  v13 = *(v0 + 1096);
  v14 = *(v0 + 1088);
  IntentParameter.wrappedValue.getter();
  v15 = *(v0 + 984);
  *(v0 + 992) = *(v0 + 976);
  *(v0 + 1000) = v15;
  IntentDialog.init(stringLiteral:)();
  sub_100140278(&qword_1008E0358);
  sub_1001D3A74();
  static IntentResult.result<A>(value:dialog:)();
  (*(v13 + 8))(v12, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001D2FD0()
{
  v1 = *v0;

  v2 = *(v1 + 1200);
  v3 = *(v1 + 1192);

  return _swift_task_switch(sub_1001D30F0, v3, v2);
}

uint64_t sub_1001D30F0()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1112);

  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 1304);
  if (v4 == 1)
  {
    sub_10000EA04(*(v0 + 1112), &unk_1008EB5B0);
  }

  else
  {
    (*(*(v0 + 1144) + 32))(*(v0 + 1152), *(v0 + 1112), *(v0 + 1136));

    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 1152);
    v7 = *(v0 + 1144);
    v8 = *(v0 + 1136);
    v9 = type metadata accessor for NavigatorContext();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 912) = v10;
    *(v0 + 920) = v9;
    v11 = objc_msgSendSuper2((v0 + 912), "init");
    sub_1004DA120(v6, v11);

    (*(v7 + 8))(v6, v8);
  }

  v12 = *(v0 + 1104);
  v13 = *(v0 + 1096);
  v14 = *(v0 + 1088);
  IntentParameter.wrappedValue.getter();
  v15 = *(v0 + 888);
  *(v0 + 896) = *(v0 + 880);
  *(v0 + 904) = v15;
  IntentDialog.init(stringLiteral:)();
  sub_100140278(&qword_1008E0358);
  sub_1001D3A74();
  static IntentResult.result<A>(value:dialog:)();
  (*(v13 + 8))(v12, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001D33A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA5E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10001AC90(v2, qword_1009251E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001D3448(uint64_t a1)
{
  v4 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_1001D1C38(a1, v5, v6, v7, v4);
}

uint64_t sub_1001D34E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001D3638();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1001D3514(uint64_t a1)
{
  v2 = sub_1001D1B4C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1001D3550(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001D3598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001D35E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(&qword_1008E0338);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001D3638()
{
  v19 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v19 - 8);
  __chkstk_darwin(v19);
  v18 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100140278(&qword_1008DD130);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  static AppDependencyManager.shared.getter();
  v17 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  static AppDependencyManager.shared.getter();
  v16 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008E0348);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = type metadata accessor for IntentDialog();
  v20 = 0uLL;
  v14 = *(*(v13 - 8) + 56);
  v14(v7, 1, 1, v13);
  v14(v5, 1, 1, v13);
  (*(v0 + 104))(v18, enum case for InputConnectionBehavior.default(_:), v19);
  sub_10007151C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  return v17;
}

unint64_t sub_1001D3A20()
{
  result = qword_1008E0350;
  if (!qword_1008E0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0350);
  }

  return result;
}

unint64_t sub_1001D3A74()
{
  result = qword_1008E0360;
  if (!qword_1008E0360)
  {
    sub_100141EEC(&qword_1008E0358);
    sub_10006E15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0360);
  }

  return result;
}

id sub_1001D3B38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingViewControllerFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D3C20()
{
  v0 = type metadata accessor for SleepingSampleDataType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v43 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  __chkstk_darwin(v6);
  v47 = &v41 - v7;
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for OvernightMetricsViewModel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1002E13B4();
  sub_1001D427C();
  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v15 = OvernightMetricsViewModel.visibleDataTypes.getter();
  result = (*(v12 + 8))(v14, v11);
  v17 = v15;
  v18 = *(v15 + 16);
  v49 = v15;
  v50 = v1;
  v46 = v18;
  if (v18)
  {
    v19 = 0;
    v41 = (v1 + 8);
    v44 = (v1 + 16);
    v45 = (v1 + 32);
    v48 = _swiftEmptyArrayStorage;
    v20 = v1;
    v21 = v51;
    while (v19 < *(v17 + 16))
    {
      v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v25 = *(v20 + 72);
      (*(v20 + 16))(v10, v17 + v24 + v25 * v19++, v0);
      v26 = *(v21 + 16);
      v27 = v21 + v24;
      v28 = v26 + 1;
      while (--v28)
      {
        sub_10007FF70(&qword_1008E0508, &type metadata accessor for SleepingSampleDataType);
        v27 += v25;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          result = (*v41)(v10, v0);
          goto LABEL_6;
        }
      }

      v42 = *v45;
      v42(v47, v10, v0);
      v30 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100185D80(0, v30[2] + 1, 1);
        v30 = v52;
      }

      v23 = v30[2];
      v22 = v30[3];
      if (v23 >= v22 >> 1)
      {
        sub_100185D80(v22 > 1, v23 + 1, 1);
        v30 = v52;
      }

      v30[2] = v23 + 1;
      v48 = v30;
      result = (v42)(v30 + v24 + v23 * v25, v47, v0);
LABEL_6:
      v20 = v50;
      v21 = v51;
      v17 = v49;
      if (v19 == v46)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v48 = _swiftEmptyArrayStorage;
  v20 = v1;
  v21 = v51;
LABEL_15:
  v47 = *(v21 + 16);
  if (v47)
  {
    v31 = 0;
    v45 = (v20 + 32);
    v46 = v20 + 16;
    v44 = (v20 + 8);
    v32 = _swiftEmptyArrayStorage;
    while (v31 < *(v21 + 16))
    {
      v33 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v34 = *(v20 + 72);
      (*(v20 + 16))(v5, v21 + v33 + v34 * v31++, v0);
      v35 = v17 + v33;
      v36 = *(v17 + 16) + 1;
      do
      {
        if (!--v36)
        {
          result = (*v44)(v5, v0);
          goto LABEL_18;
        }

        sub_10007FF70(&qword_1008E0508, &type metadata accessor for SleepingSampleDataType);
        v35 += v34;
      }

      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
      v37 = *v45;
      (*v45)(v43, v5, v0);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v32;
      if ((v38 & 1) == 0)
      {
        sub_100185D80(0, v32[2] + 1, 1);
        v32 = v52;
      }

      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        sub_100185D80(v39 > 1, v40 + 1, 1);
        v32 = v52;
      }

      v32[2] = v40 + 1;
      result = (v37)(v32 + v33 + v40 * v34, v43, v0);
LABEL_18:
      v20 = v50;
      v21 = v51;
      v17 = v49;
      if (v31 == v47)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    __break(1u);
    return result;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_29:

  v52 = v32;
  sub_10019F028(v48);
  return v52;
}

uint64_t sub_1001D427C()
{
  v1 = v0;
  v2 = type metadata accessor for GregorianDayRange();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__stackedChartSleepingSampleViewModelProviderHolder))
  {
    v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__stackedChartSleepingSampleViewModelProviderHolder);
  }

  else
  {
    type metadata accessor for SleepingSampleViewModelProvider();
    v7 = *(v0 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_healthStore);
    swift_getKeyPath();
    v13 = v1;
    v8 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v9, v2);
    v6 = SleepingSampleViewModelProvider.__allocating_init(healthStore:dayRange:debugIdentifier:)();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12[-2] = v1;
    v12[-1] = v6;
    v12[2] = v1;

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    dispatch thunk of SleepingSampleViewModelProvider.startQuery()();
  }

  return v6;
}

uint64_t sub_1001D4520()
{
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001D45C4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1001D467C()
{
  v1 = v0;
  v2 = type metadata accessor for GregorianDayRange();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__stackedChartTrainingLoadViewModelProviderHolder))
  {
    v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__stackedChartTrainingLoadViewModelProviderHolder);
  }

  else
  {
    type metadata accessor for TrainingLoadViewModelProvider();
    swift_getKeyPath();
    v12 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v7, v2);
    v8 = *(v1 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_healthStore);
    v6 = TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:)();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = v6;
    v11[2] = v1;

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    dispatch thunk of TrainingLoadViewModelProvider.startQuery(isFaking:)();
  }

  return v6;
}

uint64_t sub_1001D4904@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v4 = type metadata accessor for GregorianDayRange();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1001D49FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v5 = type metadata accessor for GregorianDayRange();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1001D4AF4(uint64_t a1)
{
  v2 = type metadata accessor for GregorianDayRange();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1001D4BC0(v4);
}

uint64_t sub_1001D4BC0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v18 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v2 + v10, v4);
  sub_10007FF70(&qword_1008E0500, &type metadata accessor for GregorianDayRange);
  v19 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v9, v4);
  if (a1)
  {
    v11(v9, v19, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v10, v9, v4);
    swift_endAccess();
    swift_getKeyPath();
    v20 = v2;
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = v18;
    v11(v18, v2 + v10, v4);
    sub_1001DA000(v13);
    v12(v13, v4);
    v12(v9, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15 = v19;
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v15;
    v20 = v2;
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v12)(v19, v4);
}

uint64_t sub_1001D4F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  v14[0] = *(v5 + 16);
  (v14[0])(v14 - v9, a2, v4);
  v11 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v11, v10, v4);
  swift_endAccess();
  swift_getKeyPath();
  v14[1] = a1;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  (v14[0])(v8, a1 + v11, v4);
  sub_1001DA000(v8);
  v12 = *(v5 + 8);
  v12(v8, v4);
  return (v12)(v10, v4);
}

uint64_t sub_1001D51E4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001D5290;

  return sub_10007F2A4();
}

uint64_t sub_1001D5290()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001E0470, v1, v0);
}

uint64_t sub_1001D53CC()
{
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter);
}

uint64_t sub_1001D547C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1001D5568(uint64_t a1, int a2)
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  v8 = &v2[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter];
  if (sub_1001DF414(*&v2[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter], *&v2[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter + 8], a1, a2))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-4] = v2;
    v15[-3] = a1;
    LOWORD(v15[-2]) = a2;
    v15[1] = v2;
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v8 = a1;
    *(v8 + 4) = a2;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = v2;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    sub_10026E198(0, 0, v7, &unk_1006DBDF0, v14);
  }
}

uint64_t sub_1001D5794(char *a1, uint64_t a2, __int16 a3)
{
  v6 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = &a1[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter];
  *v9 = a2;
  *(v9 + 4) = a3;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = a1;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_10026E198(0, 0, v8, &unk_1006DBDF8, v13);
}

void *sub_1001D58E8()
{
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__lastAnchor);
  v2 = v1;
  return v1;
}

id sub_1001D5998@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__lastAnchor);
  *a2 = v4;

  return v4;
}

void sub_1001D5A58(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__lastAnchor;
  v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__lastAnchor);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000059F8(0, &qword_1008E04D8);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1001D5BF0()
{
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1001D5CB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1001D5DA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities;
  swift_beginAccess();

  sub_1001DEB80(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001D5EF4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1001D5FB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__activitySummaries;

  v5 = sub_10031B404(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001D6128()
{
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001D61E0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1001D62B8()
{
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001D63C4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1001D6464@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1001D6540(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001D664C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1001D6700@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1001D6804(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001D6908()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;

  sub_10026E7AC(0, 0, v2, &unk_1006DBE08, v7);
}

uint64_t sub_1001D6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001D6B1C, v6, v5);
}

uint64_t sub_1001D6B1C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1001DC074();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1001D6CA0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v64 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchTime();
  v61 = *(v70 - 8);
  v5 = __chkstk_darwin(v70);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v55 - v7;
  v8 = sub_100140278(&unk_1008DB8A0);
  v9 = __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = type metadata accessor for Logger();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = __chkstk_darwin(v14);
  v69 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v19 = *&v0[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_observer];
  if (v19)
  {
    v20 = v19;
    static WOLog.trainingLoad.getter();
    v21 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v57 = v23;
      v58 = v22;
      v24 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v24 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = sub_10000AFDC(v25, v26, aBlock);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = [v21 activationUUID];
      if (v28)
      {
        v29 = v28;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = type metadata accessor for UUID();
      (*(*(v31 - 8) + 56))(v11, v30, 1, v31);
      sub_100015E80(v11, v13, &unk_1008DB8A0);
      v32 = Optional.description.getter();
      v34 = v33;
      sub_10000EA04(v13, &unk_1008DB8A0);
      v35 = sub_10000AFDC(v32, v34, aBlock);

      *(v24 + 14) = v35;
      v22 = v58;
      _os_log_impl(&_mh_execute_header, v58, v57, "%s Clearing Old HKWorkoutEffortRelationshipQuery with activation uuid %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    (*(v71 + 8))(v18, v72);
    [*&v1[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_healthStore] stopQuery:v21];
  }

  swift_getKeyPath();
  aBlock[0] = v1;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__retryCountOfEffortRelationshipQuery;
  v37 = *&v1[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__retryCountOfEffortRelationshipQuery];
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v37 >= *&v1[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__maxRepeatCountOfEffortRelationshipQueryBeforeDelaying])
  {
    v38 = v69;
    static WOLog.trainingLoad.getter();
    v39 = v1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v42 = 136315394;
      v43 = _typeName(_:qualified:)();
      v45 = sub_10000AFDC(v43, v44, aBlock);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2048;
      swift_getKeyPath();
      v73 = v39;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v46 = *&v1[v36];

      *(v42 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s Delaying Retrying Effort relationship query. Retry count %ld ", v42, 0x16u);
      sub_100005A40(v58);

      (*(v71 + 8))(v69, v72);
    }

    else
    {

      (*(v71 + 8))(v38, v72);
    }

    swift_getKeyPath();
    aBlock[0] = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*&v1[v36] * 10) >> 64 == (10 * *&v1[v36]) >> 63)
    {
      sub_1000059F8(0, &qword_1008E3FD0);
      v47 = static OS_dispatch_queue.main.getter();
      v48 = v59;
      static DispatchTime.now()();
      v49 = v60;
      + infix(_:_:)();
      v72 = *(v61 + 8);
      v72(v48, v70);
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1001DF348;
      aBlock[5] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10084B540;
      v51 = _Block_copy(aBlock);

      v52 = v62;
      static DispatchQoS.unspecified.getter();
      v73 = _swiftEmptyArrayStorage;
      sub_10007FF70(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50);
      sub_10002621C();
      v53 = v64;
      v54 = v67;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v51);

      (*(v66 + 8))(v53, v54);
      (*(v63 + 8))(v52, v65);
      v72(v49, v70);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1001D76E4();
  }
}

void sub_1001D7690()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001D76E4();
  }
}

void sub_1001D76E4()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v64 = *(v1 - 8);
  v65 = v1;
  __chkstk_darwin(v1);
  v63 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DayIndex();
  v5 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for GregorianDayRange();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v57 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v16 = type metadata accessor for Date();
  v67 = *(v16 - 8);
  v68 = v16;
  __chkstk_darwin(v16);
  v69 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v56 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider___observationRegistrar;
  aBlock[0] = v0;
  v55 = sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v19 = *(v11 + 16);
  v53 = v10;
  v19(v15, v0 + v18, v10);
  GregorianDayRange.dayIndexRange.getter();
  v20 = v11 + 8;
  v21 = *(v11 + 8);
  v54 = v20;
  v21(v15, v10);
  v23 = v58;
  v22 = v59;
  (*(v5 + 16))(v58, v9, v59);
  sub_10000EA04(v9, &qword_1008E04A8);
  swift_getKeyPath();
  aBlock[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v24 = v0;

  v25 = v0 + v18;
  v26 = v57;
  v27 = v53;
  v19(v57, v25, v53);
  v28 = v60;
  GregorianDayRange.gregorianCalendar.getter();
  v21(v26, v27);
  DayIndex.startDate(in:)();
  (*(v61 + 8))(v28, v62);
  (*(v5 + 8))(v23, v22);
  sub_1000059F8(0, &unk_1008E4070);
  sub_100140278(&unk_1008E4E50);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1006D46C0;
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v29 + 56) = sub_1000059F8(0, &qword_1008E04E0);
  *(v29 + 64) = sub_1001DF1F0();
  *(v29 + 32) = isa;
  v31 = NSPredicate.init(format:_:)();
  v32 = v63;
  static WOLog.trainingLoad.getter();
  v33 = v31;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v62 = v24;
    v39 = v38;
    aBlock[0] = v38;
    *v36 = 136315394;
    v40 = ObjectType;
    v41 = _typeName(_:qualified:)();
    v43 = sub_10000AFDC(v41, v42, aBlock);

    *(v36 + 4) = v43;
    *(v36 + 12) = 2112;
    *(v36 + 14) = v33;
    *v37 = v33;
    v44 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s Starting an HKWorkoutEffortRelationshipQuery with predicate %@", v36, 0x16u);
    sub_10000EA04(v37, &unk_1008DB8B0);

    sub_100005A40(v39);
    v24 = v62;

    (*(v64 + 8))(v32, v65);
  }

  else
  {

    (*(v64 + 8))(v32, v65);
    v40 = ObjectType;
  }

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v40;
  v47 = objc_allocWithZone(HKWorkoutEffortRelationshipQuery);
  aBlock[4] = sub_10001F3FC;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F328;
  aBlock[3] = &unk_10084B4F0;
  v48 = _Block_copy(aBlock);

  v49 = [v47 initWithPredicate:v33 anchor:0 options:0 resultsHandler:v48];
  _Block_release(v48);

  v50 = *(v24 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_observer);
  *(v24 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_observer) = v49;
  v51 = v49;

  if (v51)
  {
    [*(v24 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_healthStore) executeQuery:v51];

    (*(v67 + 8))(v69, v68);
  }

  else
  {
    (*(v67 + 8))(v69, v68);
  }
}

uint64_t sub_1001D7FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  v9 = type metadata accessor for Logger();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[25] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[26] = v11;
  v8[27] = v10;

  return _swift_task_switch(sub_1001D80C0, v11, v10);
}

uint64_t sub_1001D80C0()
{
  v55 = v0;
  if (v0[15])
  {
    swift_errorRetain();

    static WOLog.trainingLoad.getter();
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    v3 = os_log_type_enabled(v1, v2);
    v52 = v0[24];
    v4 = v0[20];
    v5 = v0[21];
    if (v3)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v54[0] = v8;
      *v6 = 136315394;
      v9 = _typeName(_:qualified:)();
      v50 = v4;
      v11 = sub_10000AFDC(v9, v10, v54);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v12;
      *v7 = v12;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s Effort Association Updated in Fitness with error: %@. Re-establishing query", v6, 0x16u);
      sub_10000EA04(v7, &unk_1008DB8B0);

      sub_100005A40(v8);

      (*(v5 + 8))(v52, v50);
    }

    else
    {

      (*(v5 + 8))(v52, v4);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      swift_getKeyPath();
      v0[12] = v28;
      sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[13] = v28;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v30 = *&v28[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__retryCountOfEffortRelationshipQuery];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        __break(1u);
        return result;
      }

      *&v28[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__retryCountOfEffortRelationshipQuery] = v32;
      v0[14] = v28;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      sub_1001D6CA0();
    }

    else
    {
    }

    goto LABEL_19;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  v0[28] = v13;
  if (!v13)
  {
LABEL_16:

    static WOLog.trainingLoad.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v39 = v0[21];
    v38 = v0[22];
    v40 = v0[20];
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54[0] = v42;
      *v41 = 136315138;
      v43 = _typeName(_:qualified:)();
      v45 = sub_10000AFDC(v43, v44, v54);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s Effort Association Updated in Fitness, relationships or self is nil. Exiting without updating efforts", v41, 0xCu);
      sub_100005A40(v42);
    }

    (*(v39 + 8))(v38, v40);
LABEL_19:

    v46 = v0[1];

    return v46();
  }

  v14 = v13;
  v15 = v0[17];
  if (!v15)
  {

    goto LABEL_16;
  }

  static WOLog.trainingLoad.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[23];
  v21 = v0[20];
  v20 = v0[21];
  if (v18)
  {
    v53 = v0[20];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v54[0] = v23;
    *v22 = 136315138;
    v24 = _typeName(_:qualified:)();
    v51 = v19;
    v26 = sub_10000AFDC(v24, v25, v54);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Effort Association Updated in Fitness successfully", v22, 0xCu);
    sub_100005A40(v23);

    (*(v20 + 8))(v51, v53);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
  }

  if (*&v14[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__retryCountOfEffortRelationshipQuery])
  {
    swift_getKeyPath();
    v47 = swift_task_alloc();
    *(v47 + 16) = v14;
    *(v47 + 24) = 0;
    v0[11] = v14;
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v48 = swift_task_alloc();
  v0[29] = v48;
  *v48 = v0;
  v48[1] = sub_1001D87CC;
  v49 = v0[18];

  return sub_1001D8970(v15, v49);
}

uint64_t sub_1001D87CC()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_1001D88EC, v3, v2);
}

uint64_t sub_1001D88EC()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D8970(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = swift_getObjectType();
  v4 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for DispatchPredicate();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[25] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001D8B38, v8, v7);
}

uint64_t sub_1001D8B38()
{
  v82 = v0;
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[23];

  sub_1000059F8(0, &qword_1008E3FD0);
  *v2 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v3);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v2, v3);
  if ((v5 & 1) == 0)
  {
    goto LABEL_54;
  }

  v6 = v0[12];
  v7 = v0[13];
  swift_getKeyPath();
  v0[5] = v7;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__lastAnchor;
  v73 = v7;
  v9 = *(v7 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__lastAnchor);
  if (!v6)
  {
    if (!v9)
    {
      goto LABEL_47;
    }

    goto LABEL_7;
  }

  if (!v9 || (v10 = v0[12], sub_1000059F8(0, &qword_1008E04D8), v11 = v9, v12 = v10, v13 = static NSObject.== infix(_:_:)(), v11, v12, (v13 & 1) == 0))
  {
LABEL_7:
    v14 = v0[12];
    v15 = v0[13];
    static WOLog.trainingLoad.getter();
    v16 = v14;
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    if (v20)
    {
      v80 = v0[21];
      v24 = v0[13];
      v74 = v0[12];
      v25 = swift_slowAlloc();
      v71 = v19;
      v26 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v81 = v76;
      *v25 = 136315650;
      v27 = _typeName(_:qualified:)();
      v78 = v23;
      v29 = sub_10000AFDC(v27, v28, &v81);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2112;
      swift_getKeyPath();
      v0[10] = v24;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v30 = *(v73 + v8);
      *(v25 + 14) = v30;
      *(v25 + 22) = 2112;
      *(v25 + 24) = v16;
      *v26 = v30;
      v26[1] = v74;
      v31 = v16;
      v32 = v30;
      _os_log_impl(&_mh_execute_header, v18, v71, "%s Effort Association Anchor updated from %@ to %@, updating efforts.", v25, 0x20u);
      sub_100140278(&unk_1008DB8B0);
      swift_arrayDestroy();

      sub_100005A40(v76);

      (*(v22 + 8))(v80, v78);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v33 = v0[12];
    v1 = v0[11];
    v34 = v16;
    sub_1001D5A58(v33);
    if (v1 >> 62)
    {
      goto LABEL_55;
    }

    v35 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
LABEL_44:
      v62 = v0[13];
      if (*(v62 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutEffortCacheIsPopulated) == 1)
      {
        *(v62 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutEffortCacheIsPopulated) = 1;
      }

      else
      {
        swift_getKeyPath();
        v63 = swift_task_alloc();
        *(v63 + 16) = v62;
        *(v63 + 24) = 1;
        v0[9] = v62;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      goto LABEL_47;
    }

LABEL_12:
    v36 = 0;
    v37 = v0[16];
    v38 = v1 & 0xC000000000000001;
    v66 = v0[11] + 32;
    v67 = v1 & 0xFFFFFFFFFFFFFF8;
    v68 = (v37 + 8);
    v69 = (v37 + 16);
    v1 = &selRef_unitFormatString;
    v72 = v35;
    v70 = v38;
    while (1)
    {
      while (1)
      {
        if (v38)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= *(v67 + 16))
          {
            goto LABEL_53;
          }

          v39 = *(v66 + 8 * v36);
        }

        v40 = v39;
        if (__OFADD__(v36++, 1))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v35 = _CocoaArrayWrapper.endIndex.getter();
          if (!v35)
          {
            goto LABEL_44;
          }

          goto LABEL_12;
        }

        v42 = [v39 workout];
        v43 = [v42 *(v1 + 688)];

        if (v43 != 84)
        {
          break;
        }

        if (v36 == v35)
        {
          goto LABEL_44;
        }
      }

      v44 = [v40 samples];
      if (v44)
      {
        break;
      }

LABEL_40:
      v53 = v0[17];
      v54 = v0[18];
      v55 = v0[15];
      v56 = [v40 workout];
      v57 = [v40 activity];
      EffortUtilities.WorkoutAndActivityKey.init(workout:activity:)();
      (*v69)(v53, v54, v55);
      type metadata accessor for EffortUtilities();
      v58 = static EffortUtilities.effortSampleCollection(for:)();

      v59 = dispatch thunk of EffortSampleCollection.preferredSample.getter();

      if (v59)
      {
        v75 = [v59 quantity];
      }

      else
      {
        v75 = 1;
      }

      v60 = v0[17];
      v77 = v0[15];
      v79 = v0[18];
      v61 = v0[13];
      swift_getKeyPath();
      v0[6] = v61;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[7] = v61;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_100559B18(v75, v60);
      swift_endAccess();
      v0[8] = v61;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      (*v68)(v79, v77);
      v35 = v72;
      v38 = v70;
      v1 = 0x1008BC000;
      if (v36 == v72)
      {
        goto LABEL_44;
      }
    }

    v45 = v44;
    sub_1000059F8(0, &qword_1008E04D0);
    v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = _swiftEmptyArrayStorage;
    if (v46 >> 62)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
      if (v47)
      {
LABEL_23:
        v48 = 0;
        do
        {
          v49 = v48;
          while (1)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v49 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_51;
              }

              v50 = *(v46 + 8 * v49 + 32);
            }

            v51 = v50;
            v48 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            objc_opt_self();
            v52 = swift_dynamicCastObjCClass();
            if (v52)
            {
              break;
            }

            ++v49;
            if (v48 == v47)
            {
              goto LABEL_39;
            }
          }

          v1 = v52;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v48 != v47);
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        goto LABEL_23;
      }
    }

LABEL_39:

    goto LABEL_40;
  }

LABEL_47:

  v64 = v0[1];

  return v64();
}

void *sub_1001D9444(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2;
  v11 = a1;
  EffortUtilities.WorkoutAndActivityKey.init(workout:activity:)();
  swift_getKeyPath();
  v20[1] = v3;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_1004C5AEC(v9);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      v17 = *(v7 + 8);
      v18 = v16;
      v17(v9, v6);

      return v16;
    }
  }

  (*(v7 + 8))(v9, v6);
  return 0;
}

uint64_t sub_1001D9610()
{
  v61 = type metadata accessor for Calendar.Identifier();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &ViewModelProvider - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100140278(&qword_1008E0490);
  __chkstk_darwin(v2 - 8);
  v69 = &ViewModelProvider - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v68 = &ViewModelProvider - v5;
  v77 = type metadata accessor for Calendar();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &ViewModelProvider - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DayIndex();
  v85 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &ViewModelProvider - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100140278(&qword_1008E04A8) - 8;
  __chkstk_darwin(v71);
  v9 = &ViewModelProvider - v8;
  v82 = type metadata accessor for GregorianDayRange();
  v10 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &ViewModelProvider - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &ViewModelProvider - v13;
  v75 = type metadata accessor for Date();
  v83 = *(v75 - 8);
  __chkstk_darwin(v75);
  v70 = &ViewModelProvider - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v74 = &ViewModelProvider - v17;
  Date.init()();
  swift_getKeyPath();
  v78 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider___observationRegistrar;
  v87 = v0;
  v18 = sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  v81 = v0;
  swift_beginAccess();
  v20 = *(v10 + 16);
  v21 = v82;
  v20(v14, v0 + v19, v82);
  GregorianDayRange.dayIndexRange.getter();
  v22 = *(v10 + 8);
  v80 = v10 + 8;
  v58 = v14;
  v23 = v14;
  v24 = v73;
  v22(v23, v21);
  v25 = v72;
  v26 = *(v85 + 16);
  v27 = &v9[*(v71 + 44)];
  v63 = v85 + 16;
  v62 = v26;
  v26(v72, v27, v24);
  v71 = v9;
  sub_10000EA04(v9, &qword_1008E04A8);
  swift_getKeyPath();
  v86 = v81;
  v28 = v81;
  v67 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = v19;
  v29 = v79;
  v30 = v82;
  v65 = v20;
  v20(v79, v28 + v19, v82);
  v31 = v76;
  GregorianDayRange.gregorianCalendar.getter();
  v32 = v30;
  v64 = v22;
  v22(v29, v30);
  v33 = v70;
  v34 = v25;
  DayIndex.startDate(in:)();
  v35 = *(v84 + 8);
  v84 += 8;
  v35(v31, v77);
  v36 = v24;
  (*(v85 + 8))(v34, v24);
  v37 = v74;
  LOBYTE(v24) = Date.isSameDay(as:)();
  v39 = v83 + 8;
  v38 = *(v83 + 8);
  v40 = v33;
  v41 = v75;
  v38(v40, v75);
  v83 = v39;
  result = (v38)(v37, v41);
  if ((v24 & 1) == 0)
  {
    v72 = v38;
    v70 = v35;
    ViewModelProvider = type metadata accessor for TrainingLoadViewModelProvider();
    swift_getKeyPath();
    v43 = v81;
    v86 = v81;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v44 = v79;
    v45 = v32;
    v65(v79, v43 + v66, v32);
    v46 = v71;
    GregorianDayRange.dayIndexRange.getter();
    v64(v44, v45);
    v47 = v68;
    v62(v68, v46, v36);
    v48 = *(v85 + 56);
    v48(v47, 0, 1, v36);
    v49 = v69;
    v48(v69, 1, 1, v36);
    v50 = sub_1003EE600(v47, v49);
    sub_10000EA04(v49, &qword_1008E0490);
    sub_10000EA04(v47, &qword_1008E0490);
    result = sub_10000EA04(v46, &qword_1008E04A8);
    if (__OFSUB__(v50, 1))
    {
      __break(1u);
    }

    else
    {
      v51 = v74;
      static Date.now.getter();
      v52 = v60;
      v53 = v59;
      v54 = v61;
      (*(v60 + 104))(v59, enum case for Calendar.Identifier.gregorian(_:), v61);
      v55 = v76;
      Calendar.init(identifier:)();
      (*(v52 + 8))(v53, v54);
      v56 = v58;
      static TrainingLoadViewModelProvider.createDayRange(now:days:gregorianCalendar:)();
      (v70)(v55, v77);
      (v72)(v51, v75);
      return sub_1001D4BC0(v56);
    }
  }

  return result;
}

uint64_t sub_1001D9ED4()
{
  swift_getKeyPath();
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001DA000(uint64_t a1)
{
  v89 = a1;
  v2 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v2 - 8);
  v81 = &v64 - v3;
  v4 = type metadata accessor for Calendar();
  __chkstk_darwin(v4 - 8);
  v73 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100140278(&qword_1008E04C8);
  v6 = __chkstk_darwin(v72);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v64 - v8;
  v84 = type metadata accessor for DayIndex();
  v9 = *(v84 - 8);
  v10 = __chkstk_darwin(v84);
  v78 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = &v64 - v12;
  v13 = sub_100140278(&qword_1008E0490);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v64 - v17;
  v80 = sub_100140278(&qword_1008E04A8);
  v19 = __chkstk_darwin(v80);
  v77 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v83 = &v64 - v22;
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v25 = type metadata accessor for GregorianDayRange();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v67 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v64 - v29;
  v88 = &v64 - v29;
  v74 = *(v1 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_trainingLoadViewModelProvider);
  dispatch thunk of TrainingLoadViewModelProvider.dayRange.getter();
  GregorianDayRange.dayIndexRange.getter();
  v86 = v26;
  v87 = v25;
  v31 = *(v26 + 8);
  v66 = v26 + 8;
  v65 = v31;
  v31(v30, v25);
  v32 = v9 + 16;
  v33 = *(v9 + 16);
  v34 = v84;
  v33(v18, v24, v84);
  v70 = v9;
  v35 = *(v9 + 56);
  v35(v18, 0, 1, v34);
  v35(v16, 1, 1, v34);
  v82 = sub_1003EE600(v18, v16);
  sub_10000EA04(v16, &qword_1008E0490);
  sub_10000EA04(v18, &qword_1008E0490);
  v68 = v24;
  v36 = v24;
  v37 = v34;
  sub_10000EA04(v36, &qword_1008E04A8);
  v38 = v83;
  GregorianDayRange.dayIndexRange.getter();
  v75 = v33;
  v76 = v32;
  v33(v18, v38, v34);
  v35(v18, 0, 1, v34);
  v35(v16, 1, 1, v34);
  v39 = v85;
  v40 = sub_1003EE600(v18, v16);
  sub_10000EA04(v16, &qword_1008E0490);
  sub_10000EA04(v18, &qword_1008E0490);
  sub_10000EA04(v38, &qword_1008E04A8);
  if (v82 == v40)
  {
    v41 = (v86 + 16);
    v82 = *(v86 + 16);
    v82(v88, v89, v87);
    dispatch thunk of TrainingLoadViewModelProvider.dayRange.setter();
    GregorianDayRange.dayIndexRange.getter();
    v42 = v80;
    v43 = v75;
    v75(v79, v38 + *(v80 + 36), v37);
    sub_10000EA04(v38, &qword_1008E04A8);
    v44 = v77;
    GregorianDayRange.dayIndexRange.getter();
    v45 = v78;
    v43(v78, v44 + *(v42 + 36), v37);
    sub_10000EA04(v44, &qword_1008E04A8);
    sub_10007FF70(&qword_1008E04C0, &type metadata accessor for DayIndex);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v47 = v70;
    v83 = v41;
    v48 = *(v70 + 32);
    v49 = v69;
    v48(v69, v79, v37);
    v50 = v72;
    v48((v49 + *(v72 + 48)), v45, v37);
    v51 = v71;
    sub_10001B104(v49, v71, &qword_1008E04C8);
    v52 = *(v50 + 48);
    v53 = v68;
    v48(v68, v51, v37);
    v54 = *(v47 + 8);
    v54(v51 + v52, v37);
    sub_100015E80(v49, v51, &qword_1008E04C8);
    v48(&v53[*(v80 + 36)], (v51 + *(v50 + 48)), v37);
    v54(v51, v37);
    GregorianDayRange.gregorianCalendar.getter();
    v55 = v88;
    GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
    v39 = v85;
    v56 = v87;
    v82(v67, v55, v87);
    dispatch thunk of SleepingSampleViewModelProvider.dayRange.setter();
    v65(v55, v56);
  }

  swift_getKeyPath();
  v90 = v39;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = v89;
  v58 = v87;
  if (*&v39[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__stackedChartSleepingSampleViewModelProviderHolder])
  {
    (*(v86 + 16))(v88, v89, v87);

    dispatch thunk of SleepingSampleViewModelProvider.dayRange.setter();
  }

  swift_getKeyPath();
  v90 = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*&v39[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__stackedChartTrainingLoadViewModelProviderHolder])
  {
    (*(v86 + 16))(v88, v57, v58);

    dispatch thunk of TrainingLoadViewModelProvider.dayRange.setter();
  }

  sub_1001DC074();
  v59 = type metadata accessor for TaskPriority();
  v60 = v81;
  (*(*(v59 - 8) + 56))(v81, 1, 1, v59);
  type metadata accessor for MainActor();
  v61 = v39;
  v62 = static MainActor.shared.getter();
  v63 = swift_allocObject();
  v63[2] = v62;
  v63[3] = &protocol witness table for MainActor;
  v63[4] = v61;
  sub_10026E198(0, 0, v60, &unk_1006DBCB0, v63);
}

uint64_t sub_1001DAA3C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001D0380;

  return sub_10007F2A4();
}

uint64_t sub_1001DAAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v70 = a3;
  v4 = type metadata accessor for Calendar();
  __chkstk_darwin(v4 - 8);
  v72 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100140278(&qword_1008E04C8);
  __chkstk_darwin(v79);
  v75 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = v62 - v8;
  v9 = type metadata accessor for DayIndex();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v62 - v14;
  __chkstk_darwin(v16);
  v82 = v62 - v17;
  v18 = type metadata accessor for GregorianDayRange();
  v67 = *(v18 - 8);
  v68 = v18;
  __chkstk_darwin(v18);
  v66 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v65 = v62 - v21;
  __chkstk_darwin(v22);
  v78 = v62 - v23;
  v24 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v24);
  v26 = v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v76 = v62 - v28;
  __chkstk_darwin(v29);
  v81 = v62 - v30;
  GregorianDayRange.dayIndexRange.getter();
  GregorianDayRange.dayIndexRange.getter();
  v31 = v10[2];
  v31(v15, v26, v9);
  sub_10000EA04(v26, &qword_1008E04A8);
  DayIndex.init(integerLiteral:)();
  static DayIndex.+ infix(_:_:)();
  v71 = v10;
  v32 = v10[1];
  v32(v12, v9);
  v73 = v32;
  v32(v15, v9);
  v80 = a1;
  GregorianDayRange.dayIndexRange.getter();
  v74 = v24;
  v33 = &v26[*(v24 + 36)];
  v63 = v31;
  v64 = v10 + 2;
  v31(v15, v33, v9);
  sub_10000EA04(v26, &qword_1008E04A8);
  v34 = sub_10007FF70(&qword_1008E04C0, &type metadata accessor for DayIndex);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v62[1] = v34;
    v36 = *(v71 + 4);
    v37 = v77;
    v36(v77, v82, v9);
    v38 = v79;
    v36((v37 + *(v79 + 48)), v15, v9);
    v39 = v75;
    sub_10001B104(v37, v75, &qword_1008E04C8);
    v40 = *(v38 + 48);
    v41 = v76;
    v36(v76, v39, v9);
    v42 = v39 + v40;
    v43 = v73;
    v73(v42, v9);
    sub_100015E80(v37, v39, &qword_1008E04C8);
    v44 = v74;
    v45 = &v41[*(v74 + 36)];
    v46 = v39 + *(v38 + 48);
    v71 = v36;
    v36(v45, v46, v9);
    v43(v39, v9);
    GregorianDayRange.gregorianCalendar.getter();
    GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
    DayIndex.init(integerLiteral:)();
    static DayIndex.+ infix(_:_:)();
    v43(v15, v9);
    v47 = *(v44 + 36);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v48 = v77;
      v49 = v71;
      v71(v77, v82, v9);
      v50 = v79;
      v63(v48 + *(v79 + 48), v81 + v47, v9);
      v51 = v75;
      sub_10001B104(v48, v75, &qword_1008E04C8);
      v52 = *(v50 + 48);
      v53 = v76;
      v49(v76, v51, v9);
      v54 = v51 + v52;
      v55 = v73;
      v73(v54, v9);
      sub_100015E80(v48, v51, &qword_1008E04C8);
      v49((v53 + *(v74 + 36)), v51 + *(v50 + 48), v9);
      v56 = v55(v51, v9);
      __chkstk_darwin(v56);
      v57 = v80;
      v62[-2] = v80;
      sub_1003E80B4(sub_1001E03F8, &v62[-4]);
      v59 = v67;
      v58 = v68;
      v60 = *(v67 + 16);
      v60(v65, v57, v68);
      v61 = v78;
      v60(v66, v78, v58);
      TrainingLoadViewModel.chartPoints.getter();
      TrainingLoadChart.Configuration.init(dayRangeOfData:viewPortDayRange:points:keyDates:)();
      sub_10000EA04(v53, &qword_1008E04A8);
      (*(v59 + 8))(v61, v58);
      return sub_10000EA04(v81, &qword_1008E04A8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DB2C4@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for Calendar();
  __chkstk_darwin(v3 - 8);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100140278(&qword_1008E04C8);
  __chkstk_darwin(v78);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v62 - v7;
  v8 = type metadata accessor for DayIndex();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  __chkstk_darwin(v15);
  v81 = &v62 - v16;
  v17 = type metadata accessor for GregorianDayRange();
  v67 = *(v17 - 8);
  v68 = v17;
  __chkstk_darwin(v17);
  v66 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v65 = &v62 - v20;
  __chkstk_darwin(v21);
  v77 = &v62 - v22;
  v23 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v75 = &v62 - v27;
  __chkstk_darwin(v28);
  v80 = &v62 - v29;
  GregorianDayRange.dayIndexRange.getter();
  GregorianDayRange.dayIndexRange.getter();
  v30 = *(v9 + 16);
  v30(v14, v25, v8);
  sub_10000EA04(v25, &qword_1008E04A8);
  DayIndex.init(integerLiteral:)();
  static DayIndex.+ infix(_:_:)();
  v70 = v9;
  v31 = *(v9 + 8);
  v31(v11, v8);
  v72 = v31;
  v31(v14, v8);
  v79 = a1;
  GregorianDayRange.dayIndexRange.getter();
  v73 = v23;
  v32 = &v25[*(v23 + 36)];
  v63 = v30;
  v64 = v9 + 16;
  v30(v14, v32, v8);
  sub_10000EA04(v25, &qword_1008E04A8);
  v33 = sub_10007FF70(&qword_1008E04C0, &type metadata accessor for DayIndex);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v35 = *(v70 + 32);
    v36 = v76;
    v35(v76, v81, v8);
    v70 = v33;
    v37 = v78;
    v35((v36 + *(v78 + 48)), v14, v8);
    v38 = v74;
    sub_10001B104(v36, v74, &qword_1008E04C8);
    v39 = *(v37 + 48);
    v40 = v75;
    v35(v75, v38, v8);
    v41 = v38 + v39;
    v42 = v72;
    v72(v41, v8);
    sub_100015E80(v36, v38, &qword_1008E04C8);
    v43 = v73;
    v44 = &v40[*(v73 + 36)];
    v45 = v38 + *(v37 + 48);
    v62 = v35;
    v35(v44, v45, v8);
    v42(v38, v8);
    GregorianDayRange.gregorianCalendar.getter();
    GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
    DayIndex.init(integerLiteral:)();
    static DayIndex.+ infix(_:_:)();
    v42(v14, v8);
    v46 = *(v43 + 36);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v47 = v76;
      v48 = v62;
      v62(v76, v81, v8);
      v49 = v78;
      v63(v47 + *(v78 + 48), v80 + v46, v8);
      v50 = v74;
      sub_10001B104(v47, v74, &qword_1008E04C8);
      v51 = *(v49 + 48);
      v52 = v75;
      v48(v75, v50, v8);
      v53 = v50 + v51;
      v54 = v72;
      v72(v53, v8);
      sub_100015E80(v47, v50, &qword_1008E04C8);
      v48((v52 + *(v73 + 36)), v50 + *(v49 + 48), v8);
      v55 = v54(v50, v8);
      __chkstk_darwin(v55);
      v56 = v79;
      *(&v62 - 2) = v79;
      sub_1003E80B4(sub_1001DF0C4, (&v62 - 4));
      v57 = v67;
      v58 = *(v67 + 16);
      v59 = v56;
      v60 = v68;
      v58(v65, v59, v68);
      v61 = v77;
      v58(v66, v77, v60);
      TrainingLoadChart.Configuration.init(dayRangeOfData:viewPortDayRange:points:keyDates:)();
      sub_10000EA04(v52, &qword_1008E04A8);
      (*(v57 + 8))(v61, v60);
      return sub_10000EA04(v80, &qword_1008E04A8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DBA94()
{
  v0 = type metadata accessor for Calendar();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  GregorianDayRange.gregorianCalendar.getter();
  DayIndex.startDate(in:)();
  return (*(v1 + 8))(v3, v0);
}

BOOL sub_1001DBB88()
{
  v0 = type metadata accessor for SleepingSampleDataType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SleepingSampleViewModel.dataType.getter();
  sub_10007FF70(&qword_1008E0510, &type metadata accessor for SleepingSampleDataType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  return v5[3] == v5[1];
}

BOOL sub_1001DBCDC(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for Calendar();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for GregorianDayRange();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v27 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = a1[3];
  v17 = a1[4];
  sub_1000066AC(a1, v16);
  (*(v17 + 32))(v16, v17);
  swift_getKeyPath();
  v31 = a3;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v19 = a3 + v18;
  v20 = v25;
  (*(v7 + 16))(v9, v19, v25);
  v21 = v26;
  GregorianDayRange.gregorianCalendar.getter();
  (*(v7 + 8))(v9, v20);
  DayIndex.startDate(in:)();
  (*(v28 + 8))(v21, v29);
  sub_10007FF70(&qword_1008E4080, &type metadata accessor for Date);
  LOBYTE(v18) = dispatch thunk of static Comparable.< infix(_:_:)();
  v22 = *(v27 + 8);
  v22(v13, v10);
  v22(v15, v10);
  return (v18 & 1) == 0;
}

uint64_t sub_1001DC074()
{
  v125 = sub_100140278(&qword_1008DF220);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v132 = &v120 - v0;
  v1 = sub_100140278(&qword_1008DE590);
  v2 = __chkstk_darwin(v1 - 8);
  v152 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v155 = &v120 - v5;
  __chkstk_darwin(v4);
  v157 = &v120 - v6;
  v159 = type metadata accessor for Calendar();
  v161 = *(v159 - 8);
  __chkstk_darwin(v159);
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Date();
  v156 = *(v130 - 8);
  __chkstk_darwin(v130);
  v160 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100140278(&qword_1008E0488);
  __chkstk_darwin(v142);
  v143 = &v120 - v9;
  v10 = sub_100140278(&qword_1008E0490);
  v11 = __chkstk_darwin(v10 - 8);
  v133 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v134 = &v120 - v14;
  v15 = __chkstk_darwin(v13);
  v141 = &v120 - v16;
  __chkstk_darwin(v15);
  v154 = &v120 - v17;
  v18 = sub_100140278(&qword_1008E0498);
  __chkstk_darwin(v18 - 8);
  v162 = &v120 - v19;
  v168 = sub_100140278(&qword_1008E04A0);
  __chkstk_darwin(v168);
  v165 = &v120 - v20;
  v140 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v140);
  v22 = &v120 - v21;
  v148 = type metadata accessor for GregorianDayRange();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v139 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DayIndex();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v151 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v158 = &v120 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v120 - v31;
  v33 = __chkstk_darwin(v30);
  v122 = &v120 - v34;
  __chkstk_darwin(v33);
  v146 = &v120 - v35;
  v36 = type metadata accessor for Logger();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Pulling new activity summaries from the cache", v42, 2u);
  }

  (*(v37 + 8))(v39, v36);
  v171 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  v145 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider___observationRegistrar;
  v170 = v149;
  v43 = v149;
  v144 = sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  v137 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v45 = v147;
  v136 = *(v147 + 16);
  v135 = v147 + 16;
  v46 = v43 + v44;
  v47 = v139;
  v48 = v148;
  v136(v139, v46, v148);
  GregorianDayRange.dayIndexRange.getter();
  v138 = *(v45 + 8);
  v138(v47, v48);
  v49 = *(v140 + 36);
  v126 = v25[2];
  v50 = v122;
  v126(v122, &v22[v49], v24);
  sub_10000EA04(v22, &qword_1008E04A8);
  DayIndex.init(integerLiteral:)();
  static DayIndex.- infix(_:_:)();
  v51 = v25[1];
  v51(v32, v24);
  v166 = v51;
  v167 = v25 + 1;
  v51(v50, v24);
  swift_getKeyPath();
  v169 = v149;
  v52 = v149;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = v52 + v137;
  v54 = v148;
  v136(v47, v53, v148);
  GregorianDayRange.dayIndexRange.getter();
  v147 = v45 + 8;
  v138(v47, v54);
  v55 = v165;
  sub_10001B104(v22, v165, &qword_1008E04A8);
  v56 = *(v168 + 36);
  v123 = v25 + 2;
  v126((v55 + v56), v22, v24);
  sub_10000EA04(v22, &qword_1008E04A8);
  v58 = v25[7];
  v57 = v25 + 7;
  v168 = v56;
  v163 = v58;
  v58(v55 + v56, 0, 1, v24);
  v59 = (v25 + 6);
  v129 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_activityDataProvider;
  v164 = v57;
  v150 = (v57 - 3);
  v128 = (v161 + 1);
  v127 = (v156 + 8);
  v153 = _swiftEmptyArrayStorage;
  v121 = _swiftEmptyArrayStorage;
  v60 = v143;
  v61 = v154;
  v161 = v59;
  while (1)
  {
    v63 = v141;
    v163(v61, 1, 1, v24);
    v64 = *(v142 + 48);
    sub_10001B104(v165 + v168, v60, &qword_1008E0490);
    sub_10001B104(v61, v60 + v64, &qword_1008E0490);
    v65 = *v59;
    if ((*v59)(v60, 1, v24) == 1)
    {
      sub_10000EA04(v61, &qword_1008E0490);
      if (v65(v60 + v64, 1, v24) == 1)
      {
        sub_10000EA04(v165, &qword_1008E04A0);
        v115 = &qword_1008E0490;
        v116 = v60;
LABEL_35:
        sub_10000EA04(v116, v115);
        v163(v162, 1, 1, v24);
        v117 = v149;
        sub_1001D5FB8(v121);
        v118 = sub_10052E6A4(v153);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v120 - 2) = v117;
        *(&v120 - 1) = v118;
        v169 = v117;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return v166(v146, v24);
      }

      goto LABEL_13;
    }

    sub_10001B104(v60, v63, &qword_1008E0490);
    if (v65(v60 + v64, 1, v24) == 1)
    {
      sub_10000EA04(v154, &qword_1008E0490);
      v166(v63, v24);
LABEL_13:
      sub_10000EA04(v60, &qword_1008E0488);
      goto LABEL_15;
    }

    v66 = v60 + v64;
    v67 = v60;
    v68 = v122;
    (*v150)(v122, v66, v24);
    sub_10007FF70(&qword_1008E04B0, &type metadata accessor for DayIndex);
    v69 = dispatch thunk of static Equatable.== infix(_:_:)();
    v70 = v166;
    v166(v68, v24);
    sub_10000EA04(v154, &qword_1008E0490);
    v70(v63, v24);
    sub_10000EA04(v67, &qword_1008E0490);
    if (v69)
    {
      v115 = &qword_1008E04A0;
      v116 = v165;
      goto LABEL_35;
    }

LABEL_15:
    v71 = v165;
    v72 = v24;
    v73 = v168;
    v74 = v134;
    sub_10001B104(v165 + v168, v134, &qword_1008E0490);
    result = (v65)(v74, 1, v72);
    if (result == 1)
    {
      goto LABEL_37;
    }

    v76 = *v150;
    (*v150)(v162, v74, v72);
    v77 = v71 + v73;
    v78 = v133;
    v24 = v72;
    sub_100015E80(v77, v133, &qword_1008E0490);
    result = (v65)(v78, 1, v72);
    if (result == 1)
    {
      break;
    }

    v156 = v76;
    (v76)(v158, v78, v72);
    sub_10007FF70(&qword_1008E04B0, &type metadata accessor for DayIndex);
    v79 = v158;
    v80 = dispatch thunk of static Equatable.== infix(_:_:)();
    v81 = v151;
    v82 = v71;
    if (v80)
    {
      v166(v79, v72);
      v83 = 1;
      v84 = v168;
    }

    else
    {
      v169 = 1;
      sub_10007FF70(&qword_1008E04B8, &type metadata accessor for DayIndex);
      v84 = v168;
      dispatch thunk of Strideable.advanced(by:)();
      v166(v79, v72);
      v83 = 0;
    }

    v85 = v82 + v84;
    v86 = v163;
    v163(v85, v83, 1, v72);
    v87 = v162;
    v86(v162, 0, 1, v72);
    (v156)(v81, v87, v72);
    swift_getKeyPath();
    v88 = v149;
    v169 = v149;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v89 = v139;
    v90 = v148;
    v136(v139, v88 + v137, v148);
    v91 = v131;
    GregorianDayRange.gregorianCalendar.getter();
    v138(v89, v90);
    DayIndex.startDate(in:)();
    (*v128)(v91, v159);
    v92 = *(v88 + v129);
    v93.super.isa = Date._bridgeToObjectiveC()().super.isa;
    if (qword_1008DA540 != -1)
    {
      swift_once();
    }

    sub_10001AC90(v159, qword_100924FE8);
    isa = Calendar._bridgeToObjectiveC()().super.isa;
    v95 = _HKActivityCacheDateComponentsFromDate();

    if (v95)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v96 = 0;
    }

    else
    {
      v96 = 1;
    }

    v97 = type metadata accessor for DateComponents();
    v98 = *(v97 - 8);
    v99 = v155;
    (*(v98 + 56))(v155, v96, 1, v97);
    v100 = v157;
    sub_100015E80(v99, v157, &qword_1008DE590);
    v101 = v100;
    v102 = v152;
    sub_10001B104(v101, v152, &qword_1008DE590);
    v103 = (*(v98 + 48))(v102, 1, v97);
    v104 = 0;
    if (v103 != 1)
    {
      v105 = v152;
      v104 = DateComponents._bridgeToObjectiveC()().super.isa;
      v81 = v151;
      (*(v98 + 8))(v105, v97);
    }

    v106 = _HKCacheIndexFromDateComponents();

    sub_10000EA04(v157, &qword_1008DE590);
    v107 = [*(v92 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:v106];
    sub_10007FF70(&qword_1008E04C0, &type metadata accessor for DayIndex);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v60 = v143;
      v59 = v161;
      v61 = v154;
      if (!v107)
      {
        goto LABEL_33;
      }

LABEL_5:
      v62 = v107;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v127)(v160, v130);
      v166(v81, v24);
      v121 = v171;
    }

    else
    {
      v108 = *(v125 + 48);
      v109 = v132;
      v126(v132, v81, v24);
      *(v109 + v108) = v107;
      v110 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v143;
      v59 = v161;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v153 = sub_1001A1FC4(0, v153[2] + 1, 1, v153);
      }

      v113 = v153[2];
      v112 = v153[3];
      if (v113 >= v112 >> 1)
      {
        v153 = sub_1001A1FC4(v112 > 1, v113 + 1, 1, v153);
      }

      v114 = v153;
      v153[2] = v113 + 1;
      sub_100015E80(v132, v114 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v113, &qword_1008DF220);
      v61 = v154;
      if (v107)
      {
        goto LABEL_5;
      }

LABEL_33:
      (*v127)(v160, v130);
      v166(v81, v24);
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

id sub_1001DD650()
{
  if (*&v0[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_observer])
  {
    [*&v0[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_healthStore] stopQuery:?];
  }

  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BalanceDataProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001DD8DC()
{
  result = type metadata accessor for GregorianDayRange();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001DDA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v38);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v14 = &v26 - v13;
  v27 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v31 = *a4;
    v16 = v31 + 40 * a3;
    v17 = a1 - a3;
LABEL_5:
    v29 = v16;
    v30 = a3;
    v28 = v17;
    while (1)
    {
      sub_100007C5C(v16, &v35);
      sub_100007C5C(v16 - 40, v32);
      v18 = v36;
      v19 = v37;
      sub_1000066AC(&v35, v36);
      (*(v19 + 32))(v18, v19);
      v20 = v33;
      v21 = v34;
      sub_1000066AC(v32, v33);
      (*(v21 + 32))(v20, v21);
      LOBYTE(v20) = static Date.> infix(_:_:)();
      v22 = *v15;
      v23 = v38;
      (*v15)(v10, v38);
      v22(v14, v23);
      sub_100005A40(v32);
      result = sub_100005A40(&v35);
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v16 = v29 + 40;
        v17 = v28 - 1;
        if (v30 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      sub_1001AB740(v16, &v35);
      v24 = *(v16 - 24);
      *v16 = *(v16 - 40);
      *(v16 + 16) = v24;
      *(v16 + 32) = *(v16 - 8);
      result = sub_1001AB740(&v35, v16 - 40);
      v16 -= 40;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001DDC94(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v123 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v123);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v121 = &v109 - v13;
  v14 = *(a3 + 8);
  v114 = a3;
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_133;
    }

    a4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_127:
      result = sub_1001A99A4(a4);
    }

    v130 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      a4 = 40;
      while (1)
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v106 = *(result + 16 * v104);
        v107 = result;
        a3 = *(result + 16 * (v104 - 1) + 40);
        sub_1001DE638((v105 + 40 * v106), (v105 + 40 * *(result + 16 * (v104 - 1) + 32)), (v105 + 40 * a3), v5);
        if (v6)
        {
        }

        if (a3 < v106)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1001A99A4(v107);
        }

        if (v104 - 2 >= *(v107 + 2))
        {
          goto LABEL_121;
        }

        v108 = &v107[16 * v104];
        *v108 = v106;
        *(v108 + 1) = a3;
        v130 = v107;
        sub_1001A9918(v104 - 1);
        result = v130;
        v104 = *(v130 + 16);
        a3 = v114;
        if (v104 <= 1)
        {
        }
      }
    }
  }

  v15 = 0;
  v120 = (v12 + 8);
  v16 = _swiftEmptyArrayStorage;
  v111 = a4;
  while (1)
  {
    v113 = v16;
    if (v15 + 1 >= v14)
    {
      v36 = v15 + 1;
    }

    else
    {
      v118 = v14;
      v110 = v6;
      v17 = *a3;
      sub_100007C5C(*a3 + 40 * (v15 + 1), &v127);
      v5 = 40 * v15;
      v18 = v17 + 40 * v15;
      sub_100007C5C(v18, v124);
      v19 = v128;
      v20 = v129;
      sub_1000066AC(&v127, v128);
      v21 = v121;
      (*(v20 + 32))(v19, v20);
      v23 = v125;
      v22 = v126;
      sub_1000066AC(v124, v125);
      v24 = v122;
      (*(v22 + 32))(v23, v22);
      LODWORD(v119) = static Date.> infix(_:_:)();
      v25 = v15;
      v26 = *v120;
      a4 = v123;
      (*v120)(v24, v123);
      v26(v21, a4);
      sub_100005A40(v124);
      result = sub_100005A40(&v127);
      v109 = v25;
      v27 = v25 + 2;
      v28 = v18 + 80;
      while (v118 != v27)
      {
        sub_100007C5C(v28, &v127);
        sub_100007C5C(v28 - 40, v124);
        v30 = v128;
        v29 = v129;
        sub_1000066AC(&v127, v128);
        v31 = v121;
        (*(v29 + 32))(v30, v29);
        v32 = v125;
        v33 = v126;
        sub_1000066AC(v124, v125);
        v34 = v122;
        (*(v33 + 32))(v32, v33);
        a4 = static Date.> infix(_:_:)() & 1;
        v35 = v123;
        v26(v34, v123);
        v26(v31, v35);
        sub_100005A40(v124);
        result = sub_100005A40(&v127);
        ++v27;
        v28 += 40;
        if ((v119 & 1) != a4)
        {
          v36 = v27 - 1;
          goto LABEL_11;
        }
      }

      v36 = v118;
      v6 = v110;
      a3 = v114;
      v15 = v109;
      if ((v119 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v36 < v109)
      {
        goto LABEL_124;
      }

      if (v109 < v36)
      {
        v37 = 40 * v36 - 40;
        v118 = v36;
        v38 = v36;
        v39 = v109;
        do
        {
          if (v39 != --v38)
          {
            v44 = *v114;
            if (!*v114)
            {
              goto LABEL_130;
            }

            v40 = v44 + v5;
            v41 = v44 + v37;
            sub_1001AB740((v44 + v5), &v127);
            v42 = *(v41 + 32);
            v43 = *(v41 + 16);
            *v40 = *v41;
            *(v40 + 16) = v43;
            *(v40 + 32) = v42;
            result = sub_1001AB740(&v127, v41);
          }

          ++v39;
          v37 -= 40;
          v5 += 40;
        }

        while (v39 < v38);
        a3 = v114;
        a4 = v111;
        v36 = v118;
      }

      else
      {
LABEL_20:
        a4 = v111;
      }
    }

    v45 = *(a3 + 8);
    if (v36 < v45)
    {
      if (__OFSUB__(v36, v15))
      {
        goto LABEL_123;
      }

      if (v36 - v15 < a4)
      {
        if (__OFADD__(v15, a4))
        {
          goto LABEL_125;
        }

        if ((v15 + a4) >= v45)
        {
          v46 = *(a3 + 8);
        }

        else
        {
          v46 = v15 + a4;
        }

        if (v46 < v15)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v36 != v46)
        {
          break;
        }
      }
    }

    v47 = v36;
    if (v36 < v15)
    {
      goto LABEL_122;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v113;
    }

    else
    {
      result = sub_1001A1D54(0, *(v113 + 2) + 1, 1, v113);
      v16 = result;
    }

    a4 = *(v16 + 2);
    v48 = *(v16 + 3);
    v49 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_1001A1D54((v48 > 1), a4 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v49;
    v50 = &v16[16 * a4];
    *(v50 + 4) = v15;
    *(v50 + 5) = v47;
    v51 = *v112;
    if (!*v112)
    {
      goto LABEL_132;
    }

    v115 = v47;
    if (a4)
    {
      while (1)
      {
        v5 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v16 + 4);
          v53 = *(v16 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_51:
          if (v55)
          {
            goto LABEL_111;
          }

          v68 = &v16[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_114;
          }

          v74 = &v16[16 * v5 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_118;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v5 = v49 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v78 = &v16[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_65:
        if (v73)
        {
          goto LABEL_113;
        }

        v81 = &v16[16 * v5];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_116;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v49)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v89 = v16;
        v90 = *&v16[16 * a4 + 32];
        v91 = *&v16[16 * v5 + 40];
        sub_1001DE638((*a3 + 40 * v90), (*a3 + 40 * *&v16[16 * v5 + 32]), (*a3 + 40 * v91), v51);
        if (v6)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1001A99A4(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_108;
        }

        v92 = &v89[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v130 = v89;
        result = sub_1001A9918(v5);
        v16 = v130;
        v49 = *(v130 + 16);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v16[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_109;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_110;
      }

      v63 = &v16[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_112;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_115;
      }

      if (v67 >= v59)
      {
        v85 = &v16[16 * v5 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_119;
        }

        if (v54 < v88)
        {
          v5 = v49 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v14 = *(a3 + 8);
    v15 = v115;
    a4 = v111;
    if (v115 >= v14)
    {
      goto LABEL_93;
    }
  }

  v110 = v6;
  v119 = *a3;
  v5 = v119 + 40 * v36;
  v109 = v15;
  v93 = v15 - v36;
  v115 = v46;
LABEL_83:
  v117 = v5;
  v118 = v36;
  v116 = v93;
  while (1)
  {
    sub_100007C5C(v5, &v127);
    sub_100007C5C(v5 - 40, v124);
    v94 = v128;
    v95 = v129;
    sub_1000066AC(&v127, v128);
    v96 = v121;
    (*(v95 + 32))(v94, v95);
    v97 = v125;
    v98 = v126;
    sub_1000066AC(v124, v125);
    v99 = v122;
    (*(v98 + 32))(v97, v98);
    a4 = static Date.> infix(_:_:)();
    v100 = *v120;
    v101 = v123;
    (*v120)(v99, v123);
    v100(v96, v101);
    sub_100005A40(v124);
    result = sub_100005A40(&v127);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v36 = v118 + 1;
      v5 = v117 + 40;
      v47 = v115;
      v93 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_83;
      }

      v6 = v110;
      a3 = v114;
      v15 = v109;
      if (v115 < v109)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v119)
    {
      break;
    }

    sub_1001AB740(v5, &v127);
    v102 = *(v5 - 24);
    *v5 = *(v5 - 40);
    *(v5 + 16) = v102;
    *(v5 + 32) = *(v5 - 8);
    sub_1001AB740(&v127, v5 - 40);
    v5 -= 40;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_1001DE638(char *a1, char *a2, char *a3, char *a4)
{
  v74 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v74);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v58 - v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[40 * v14] <= a4)
    {
      v34 = v11;
      memmove(a4, a2, 40 * v14);
      v11 = v34;
    }

    v17 = &a4[40 * v14];
    v15 = a4;
    if (a3 - a2 < 40)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v35 = a2;
    if (a2 <= a1)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v60 = v4;
    v61 = (v11 + 8);
    v65 = a1;
    v62 = a4;
    while (1)
    {
      v59 = v35;
      v36 = (v35 - 40);
      v37 = (v17 - 40);
      v38 = a3 - 40;
      v63 = v35 - 40;
      while (1)
      {
        v64 = v38;
        v41 = v38 + 40;
        sub_100007C5C(v37, v71);
        sub_100007C5C(v36, v68);
        v42 = v72;
        v43 = v73;
        sub_1000066AC(v71, v72);
        v44 = v66;
        (*(v43 + 32))(v42, v43);
        v45 = v69;
        v46 = v70;
        sub_1000066AC(v68, v69);
        v47 = v67;
        (*(v46 + 32))(v45, v46);
        v48 = static Date.> infix(_:_:)();
        v49 = *v61;
        v50 = v74;
        (*v61)(v47, v74);
        v49(v44, v50);
        sub_100005A40(v68);
        sub_100005A40(v71);
        if (v48)
        {
          break;
        }

        v15 = v62;
        v51 = v64;
        if (v41 != (v37 + 40))
        {
          v52 = *v37;
          v53 = *(v37 + 16);
          *(v64 + 32) = *(v37 + 32);
          *v51 = v52;
          v51[1] = v53;
        }

        v39 = v37 - 40;
        v38 = v51 - 40;
        v40 = v37 > v15;
        v37 -= 40;
        v36 = v63;
        if (!v40)
        {
          v17 = (v39 + 40);
          v33 = v59;
          goto LABEL_35;
        }
      }

      v17 = (v37 + 40);
      v15 = v62;
      v33 = v63;
      a3 = v64;
      if (v41 != v59)
      {
        v54 = *v63;
        v55 = *(v63 + 1);
        *(v64 + 32) = *(v63 + 4);
        *a3 = v54;
        *(a3 + 1) = v55;
      }

      if (v17 > v15)
      {
        v35 = v33;
        if (v33 > v65)
        {
          continue;
        }
      }

      v17 = (v37 + 40);
      goto LABEL_35;
    }
  }

  v15 = a4;
  if (a4 != a1 || &a1[40 * v13] <= a4)
  {
    v16 = v11;
    memmove(a4, a1, 40 * v13);
    v11 = v16;
  }

  v17 = &a4[40 * v13];
  if (a2 - a1 < 40 || (v18 = a2, a2 >= a3))
  {
    v33 = a1;
    goto LABEL_35;
  }

  v60 = v4;
  v19 = (v11 + 8);
  v64 = v17;
  do
  {
    v65 = a1;
    sub_100007C5C(v18, v71);
    sub_100007C5C(v15, v68);
    v20 = v72;
    v21 = v73;
    sub_1000066AC(v71, v72);
    v22 = v66;
    (*(v21 + 32))(v20, v21);
    v23 = v69;
    v24 = v70;
    sub_1000066AC(v68, v69);
    v25 = v67;
    (*(v24 + 32))(v23, v24);
    LOBYTE(v23) = static Date.> infix(_:_:)();
    v26 = *v19;
    v27 = v74;
    (*v19)(v25, v74);
    v26(v22, v27);
    sub_100005A40(v68);
    sub_100005A40(v71);
    if (v23)
    {
      v28 = v18;
      v29 = v65;
      v30 = v65 == v18;
      v18 += 40;
      if (v30)
      {
        goto LABEL_14;
      }

LABEL_13:
      v31 = *v28;
      v32 = *(v28 + 1);
      *(v29 + 4) = *(v28 + 4);
      *v29 = v31;
      *(v29 + 1) = v32;
      goto LABEL_14;
    }

    v28 = v15;
    v29 = v65;
    v30 = v65 == v15;
    v15 += 40;
    if (!v30)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v29 + 40;
    v17 = v64;
  }

  while (v15 < v64 && v18 < a3);
  v33 = a1;
LABEL_35:
  v56 = (v17 - v15) / 40;
  if (v33 != v15 || v33 >= &v15[40 * v56])
  {
    memmove(v33, v15, 40 * v56);
  }

  return 1;
}

void sub_1001DEB80(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
  v50 = *(v57 - 8);
  v4 = __chkstk_darwin(v57);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v46 - v6;
  v7 = sub_100140278(&qword_1008E04F0);
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v51 = &v46 - v9;
    v52 = v10;
    v56 = a2;
    v11 = 0;
    v12 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    v16 = (v13 + 63) >> 6;
    v46 = v50 + 16;
    v47 = a1;
    v54 = (v50 + 32);
    v48 = (v50 + 8);
    while (v15)
    {
      v55 = (v15 - 1) & v15;
      v17 = __clz(__rbit64(v15)) | (v11 << 6);
LABEL_17:
      v24 = v47;
      v26 = v49;
      v25 = v50;
      v27 = v57;
      (*(v50 + 16))(v49, *(v47 + 48) + *(v50 + 72) * v17, v57);
      v28 = *(*(v24 + 56) + 8 * v17);
      v29 = sub_100140278(&qword_1008E04F8);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v21 = v52;
      v31(v52, v26, v27);
      *(v21 + v30) = v28;
      (*(*(v29 - 8) + 56))(v21, 0, 1, v29);
      v32 = v28;
      v20 = v51;
LABEL_18:
      sub_100015E80(v21, v20, &qword_1008E04F0);
      v33 = sub_100140278(&qword_1008E04F8);
      if ((*(*(v33 - 8) + 48))(v20, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = v53;
      v36 = v57;
      (*v54)(v53, v20, v57);
      v37 = *(v20 + v34);
      v38 = sub_1004C5AEC(v35);
      v40 = v39;
      (*v48)(v35, v36);
      v15 = v55;
      if ((v40 & 1) == 0)
      {
LABEL_26:

        return;
      }

      v41 = *(*(v56 + 56) + 8 * v38);
      if (v41)
      {
        if (!v37)
        {
          return;
        }

        sub_1000059F8(0, &unk_1008DEED8);
        v42 = v41;
        v43 = v37;
        v44 = static NSObject.== infix(_:_:)();

        if ((v44 & 1) == 0)
        {
          return;
        }
      }

      else if (v37)
      {
        goto LABEL_26;
      }
    }

    if (v16 <= v11 + 1)
    {
      v18 = v11 + 1;
    }

    else
    {
      v18 = v16;
    }

    v19 = v18 - 1;
    v20 = v51;
    v21 = v52;
    while (1)
    {
      v22 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v22 >= v16)
      {
        v45 = sub_100140278(&qword_1008E04F8);
        (*(*(v45 - 8) + 56))(v21, 1, 1, v45);
        v55 = 0;
        v11 = v19;
        goto LABEL_18;
      }

      v23 = *(v12 + 8 * v22);
      ++v11;
      if (v23)
      {
        v55 = (v23 - 1) & v23;
        v17 = __clz(__rbit64(v23)) | (v22 << 6);
        v11 = v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001DF03C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1001DF0E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_1001DAA3C();
}

unint64_t sub_1001DF1F0()
{
  result = qword_1008E51E0;
  if (!qword_1008E51E0)
  {
    sub_1000059F8(255, &qword_1008E04E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E51E0);
  }

  return result;
}

uint64_t sub_1001DF258(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002BBC0;

  return sub_1001D7FAC(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1001DF3D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__lastAnchor);
  *(v1 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__lastAnchor) = v2;
  v4 = v2;
}

uint64_t sub_1001DF414(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (BYTE1(a2) <= 3u)
  {
    if (BYTE1(a2) == 2)
    {
      if ((a4 & 0xFF00) != 0x200)
      {
        return 1;
      }
    }

    else
    {
      if (BYTE1(a2) != 3)
      {
        goto LABEL_18;
      }

      if ((a4 & 0xFF00) != 0x300)
      {
        return 1;
      }
    }

LABEL_16:
    v4 = 0;
    return v4 & 1;
  }

  switch(BYTE1(a2))
  {
    case 4u:
      if ((a4 & 0xFF00) != 0x400)
      {
        return 1;
      }

      goto LABEL_16;
    case 5u:
      if ((a4 & 0xFF00) != 0x500)
      {
        return 1;
      }

      goto LABEL_16;
    case 6u:
      if ((a4 & 0xFF00) != 0x600)
      {
        return 1;
      }

      goto LABEL_16;
  }

LABEL_18:
  if (BYTE1(a4) - 2 < 5 || a1 != a3)
  {
    return 1;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      return 1;
    }
  }

  else
  {
    v4 = 1;
    if (a4 == 2 || ((a4 ^ a2) & 1) != 0)
    {
      return v4 & 1;
    }
  }

  return (BYTE1(a4) ^ BYTE1(a2)) & 1;
}

uint64_t sub_1001DF500()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1001D51E4();
}

uint64_t sub_1001DF5F0(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

char *sub_1001DF634(void *a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v6 = v5;
  v92 = a5;
  v93 = a2;
  v91 = sub_100140278(&qword_1008E04C8);
  v10 = __chkstk_darwin(v91);
  v90 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v85 - v12;
  v101 = type metadata accessor for DayIndex();
  v105 = *(v101 - 8);
  v13 = __chkstk_darwin(v101);
  v100 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v109 = &v85 - v15;
  v106 = sub_100140278(&qword_1008E04A8);
  v16 = __chkstk_darwin(v106);
  v99 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v103 = &v85 - v19;
  __chkstk_darwin(v18);
  v88 = &v85 - v20;
  v102 = type metadata accessor for Calendar.Identifier();
  v98 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Calendar();
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Date();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for GregorianDayRange();
  v107 = *(v110 - 8);
  v26 = __chkstk_darwin(v110);
  v104 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = (&v85 - v29);
  __chkstk_darwin(v28);
  v32 = &v85 - v31;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__isFetchingWorkouts) = 1;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__stackedChartSleepingSampleViewModelProviderHolder) = 0;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__stackedChartTrainingLoadViewModelProviderHolder) = 0;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsInDayRange) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyListForTheWeek) = _swiftEmptyArrayStorage;
  v33 = v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter;
  *v33 = 0;
  *(v33 + 8) = 768;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__lastAnchor) = 0;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities) = &_swiftEmptyDictionarySingleton;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__activitySummaries) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__activitySummariesForTheWeek) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_observer) = 0;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__retryCountOfEffortRelationshipQuery) = 0;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__maxRepeatCountOfEffortRelationshipQueryBeforeDelaying) = 3;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutEffortCacheIsPopulated) = 0;
  ObservationRegistrar.init()();
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_healthStore) = a1;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_historyDataProvider) = a3;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_activityDataProvider) = a4;
  type metadata accessor for TrainingLoadViewModelProvider();
  v94 = a1;
  v34 = a3;
  v35 = a4;
  static Date.now.getter();
  v36 = v98;
  v37 = v96;
  v38 = v102;
  v98[13](v96, enum case for Calendar.Identifier.gregorian(_:), v102);
  Calendar.init(identifier:)();
  (v36[1])(v37, v38);
  static TrainingLoadViewModelProvider.createDayRange(now:days:gregorianCalendar:)();
  v39 = *(v111 + 8);
  v96 = v23;
  v111 += 8;
  v98 = v39;
  (v39)(v23, v108);
  v95[1](v25, v97);
  v40 = v107 + 16;
  v41 = *(v107 + 16);
  v42 = v110;
  v41(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange, v32, v110);
  v87 = v40;
  v86 = v41;
  v41(v30, v32, v42);
  v43 = v94;
  v44 = v32;
  v95 = v30;
  v94 = v43;
  v45 = TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:)();
  v97 = v6;
  *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_trainingLoadViewModelProvider) = v45;
  v46 = v100;
  v102 = v45;

  v47 = v103;
  GregorianDayRange.dayIndexRange.getter();
  v48 = v106;
  v49 = v105 + 16;
  v50 = *(v105 + 16);
  v51 = &v47[*(v106 + 36)];
  v52 = v47;
  v53 = v101;
  v50(v109, v51, v101);
  v54 = &qword_1008E04A8;
  sub_10000EA04(v52, &qword_1008E04A8);
  v55 = v99;
  v103 = v44;
  GregorianDayRange.dayIndexRange.getter();
  v50(v46, v55 + *(v48 + 36), v53);
  sub_10000EA04(v55, &qword_1008E04A8);
  sub_10007FF70(&qword_1008E04C0, &type metadata accessor for DayIndex);
  v56 = v109;
  v57 = v53;
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v58 = v105;
    v59 = *(v105 + 32);
    v60 = v89;
    v59(v89, v56, v53);
    v61 = v91;
    v59((v60 + *(v91 + 48)), v46, v53);
    v62 = v90;
    sub_10001B104(v60, v90, &qword_1008E04C8);
    v63 = *(v61 + 48);
    v64 = v88;
    v59(v88, v62, v53);
    v65 = *(v58 + 8);
    v65(v62 + v63, v53);
    sub_100015E80(v60, v62, &qword_1008E04C8);
    v59(&v64[*(v106 + 36)], (v62 + *(v61 + 48)), v53);
    v65(v62, v53);
    GregorianDayRange.gregorianCalendar.getter();
    v66 = v104;
    GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
    type metadata accessor for SleepingSampleViewModelProvider();
    v86(v95, v66, v110);
    v67 = v94;
    v68 = SleepingSampleViewModelProvider.__allocating_init(healthStore:dayRange:debugIdentifier:)();
    v69 = v97;
    *(v97 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_overnightSleepingSampleViewModelProvider) = v68;

    dispatch thunk of TrainingLoadViewModelProvider.startQuery(isFaking:)();
    dispatch thunk of SleepingSampleViewModelProvider.startQuery()();
    v70 = type metadata accessor for BalanceDataProvider();
    v113.receiver = v69;
    v113.super_class = v70;
    v71 = objc_msgSendSuper2(&v113, "init");
    v54 = *&v71[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_historyDataProvider];
    v72 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_100076AC8;
    *(v49 + 24) = v72;
    v48 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
    swift_beginAccess();
    v50 = *(v54 + v48);
    v57 = v71;
    v55 = v54;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v54 + v48) = v50;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v50 = sub_1001A1E7C(0, *(v50 + 2) + 1, 1, v50);
  *(v54 + v48) = v50;
LABEL_3:
  v75 = *(v50 + 2);
  v74 = *(v50 + 3);
  if (v75 >= v74 >> 1)
  {
    v50 = sub_1001A1E7C((v74 > 1), v75 + 1, 1, v50);
  }

  *(v50 + 2) = v75 + 1;
  v76 = (v50 + 16 * v75);
  v76[4] = sub_100077508;
  v76[5] = v49;
  *(v54 + v48) = v50;
  swift_endAccess();

  sub_1001D6CA0();
  v77 = [objc_opt_self() defaultCenter];
  v78 = [objc_opt_self() mainQueue];
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001E02E4;
  aBlock[5] = v79;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026F8C;
  aBlock[3] = &unk_10084B5E0;
  v80 = _Block_copy(aBlock);

  v81 = [v77 addObserverForName:@"ActivitySummaryCacheChangedNotification" object:0 queue:v78 usingBlock:v80];
  _Block_release(v80);
  swift_unknownObjectRelease();

  sub_1001DC074();

  (v98)(v93, v108);
  v82 = *(v107 + 8);
  v83 = v110;
  v82(v104, v110);
  v82(v103, v83);
  return v57;
}

uint64_t sub_1001E02EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1001D6A84(a1, v4, v5, v6);
}

id sub_1001E04A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHAwardsDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E06C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = (*v5 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v10 = v9[3];
  v11 = v9[4];
  sub_1000066AC(v9, v10);
  return a5(a1, a2, v10, v11);
}

uint64_t sub_1001E07A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = (*v4 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v8 = v7[3];
  v9 = v7[4];
  sub_1000066AC(v7, v8);
  return a4(a1, v8, v9);
}

uint64_t sub_1001E0810()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 achievementsForWorkoutIdentifier:v2];

  sub_1001E0AAC();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1001E09E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = (*v3 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v6 = v5[3];
  v7 = v5[4];
  sub_1000066AC(v5, v6);
  return a3(v6, v7) & 1;
}

uint64_t sub_1001E0A54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = (*v3 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v6 = v5[3];
  v7 = v5[4];
  sub_1000066AC(v5, v6);
  return a3(v6, v7);
}

unint64_t sub_1001E0AAC()
{
  result = qword_1008E8750;
  if (!qword_1008E8750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E8750);
  }

  return result;
}

id sub_1001E0AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  v6 = sub_100005994(v12);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  v7 = type metadata accessor for CHAwardsDataProvider();
  v8 = objc_allocWithZone(v7);
  sub_100007C5C(v12, v8 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_100005A40(v12);
  return v9;
}

char *sub_1001E0BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_insetContentView;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_achievementCellContentView;
  v9 = [objc_allocWithZone(type metadata accessor for AchievementCellContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v8] = v9;
  v10 = *&v9[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_achievementBadgeView];
  *&v3[OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_achievementBadgeView] = v10;
  v11 = v10;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v22.receiver = v3;
  v22.super_class = type metadata accessor for AchievementsListTableViewCell();
  v13 = objc_msgSendSuper2(&v22, "initWithStyle:reuseIdentifier:", a1, v12);

  v14 = OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_insetContentView;
  v15 = *&v13[OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_insetContentView];
  v16 = v13;
  v17 = v15;
  v18 = sub_1004313A0();
  [v17 setBackgroundColor:v18];

  v19 = [*&v13[v14] layer];
  [v19 setCornerRadius:sub_1004313CC()];

  [*&v13[v14] addSubview:*&v16[OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_achievementCellContentView]];
  v20 = [v16 contentView];

  [v20 addSubview:*&v13[v14]];
  sub_1001E0E58();

  return v16;
}

void sub_1001E0E58()
{
  v1 = v0;
  swift_getObjectType();
  v36 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D68B0;
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_insetContentView];
  v4 = [v3 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:sub_1004313D0()];
  *(v2 + 32) = v7;
  v8 = [v3 leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  sub_1004313D0();
  v12 = [v8 constraintEqualToAnchor:v10 constant:v11];

  *(v2 + 40) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  sub_1004313D0();
  v17 = [v13 constraintEqualToAnchor:v15 constant:-v16];

  *(v2 + 48) = v17;
  v18 = [v3 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  sub_1004313D0();
  v22 = [v18 constraintEqualToAnchor:v20 constant:-v21];

  *(v2 + 56) = v22;
  v23 = *&v1[OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_achievementCellContentView];
  v24 = [v23 topAnchor];
  v25 = [v3 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v2 + 64) = v26;
  v27 = [v23 bottomAnchor];
  v28 = [v3 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v2 + 72) = v29;
  v30 = [v23 leadingAnchor];
  v31 = [v3 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v2 + 80) = v32;
  v33 = [v23 trailingAnchor];
  v34 = [v3 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v2 + 88) = v35;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

void sub_1001E1430()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 __systemImageNamedSwift:v1];

  if (v2)
  {
    if (qword_1008DA600 != -1)
    {
      swift_once();
    }

    v3 = qword_1008E0560;
    v4 = [v2 imageWithSymbolConfiguration:v3];
  }

  else
  {
    v4 = 0;
  }

  qword_1008E0550 = v4;
}

void sub_1001E152C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleSubheadline;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008E0558 = v2;
}

id sub_1001E1598()
{
  result = [objc_opt_self() _configurationWithPointSize:13.0];
  qword_1008E0560 = result;
  return result;
}

char *sub_1001E15D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_templateUniqueName];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_achievementBadgeView;
  v12 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v11] = v12;
  v13 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_labelStackView;
  v14 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setAxis:1];
  v15 = UIStackView.withAlignment(_:)();

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v13] = v15;
  v16 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_titleLabel;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v17 setLineBreakMode:0];
  [v17 setNumberOfLines:0];
  if (qword_1008DA5F8 != -1)
  {
    swift_once();
  }

  v18 = UILabel.withFont(_:)();

  v19 = objc_opt_self();
  v20 = [v19 labelColor];
  v21 = UILabel.withTextColor(_:)();

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v16] = v21;
  v22 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_detailLabel;
  v23 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v23 setLineBreakMode:0];
  [v23 setNumberOfLines:0];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v22] = v23;
  v24 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_chevronImageView;
  v25 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v26 = [v19 tertiaryLabelColor];
  [v25 setTintColor:v26];

  if (qword_1008DA5F0 != -1)
  {
    swift_once();
  }

  [v25 setImage:qword_1008E0550];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v5[v24] = v25;
  v33.receiver = v5;
  v33.super_class = type metadata accessor for AchievementCellContentView();
  v27 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_labelStackView;
  v29 = *&v27[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_labelStackView];
  v30 = *&v27[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_titleLabel];
  v31 = v27;
  [v29 addArrangedSubview:v30];
  [*&v27[v28] addArrangedSubview:*&v31[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_detailLabel]];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_achievementBadgeView]];
  [v31 addSubview:*&v27[v28]];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_chevronImageView]];
  sub_1001E1A1C();

  return v31;
}

void sub_1001E1A1C()
{
  v42 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006DBF20;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_achievementBadgeView];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintGreaterThanOrEqualToAnchor:v4 constant:12.0];

  *(v1 + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:sub_1000B7B88()];

  *(v1 + 40) = v8;
  v9 = [v2 centerYAnchor];
  v10 = [v0 centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v1 + 48) = v11;
  v12 = [v2 bottomAnchor];
  v13 = [v0 bottomAnchor];
  v14 = [v12 constraintLessThanOrEqualToAnchor:v13 constant:-12.0];

  *(v1 + 56) = v14;
  v15 = [v2 heightAnchor];
  v16 = [v15 constraintEqualToConstant:62.0];

  *(v1 + 64) = v16;
  v17 = [v2 widthAnchor];
  v18 = [v17 constraintEqualToConstant:62.0];

  *(v1 + 72) = v18;
  v19 = *&v0[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_labelStackView];
  v20 = [v19 topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21 constant:12.0];

  *(v1 + 80) = v22;
  v23 = [v19 leadingAnchor];
  v24 = [v2 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:8.0];

  *(v1 + 88) = v25;
  v26 = [v19 centerYAnchor];
  v27 = [v2 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v1 + 96) = v28;
  v29 = [v19 trailingAnchor];
  v30 = *&v0[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_chevronImageView];
  v31 = [v30 leadingAnchor];
  v32 = [v29 constraintLessThanOrEqualToAnchor:v31];

  *(v1 + 104) = v32;
  v33 = [v19 bottomAnchor];
  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintLessThanOrEqualToAnchor:v34 constant:-12.0];

  *(v1 + 112) = v35;
  v36 = [v30 centerYAnchor];
  v37 = [v0 centerYAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v1 + 120) = v38;
  v39 = [v30 trailingAnchor];
  v40 = [v0 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-sub_1000B7B88()];

  *(v1 + 128) = v41;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];
}

void sub_1001E1FE8(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v77 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v3[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_titleLabel];
  v16 = [a3 titleForAchievement:{a1, v12}];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = a1;
    v19 = v14;
    v20 = v4;
    v21 = v11;
    v22 = v10;
    v23 = a2;
    v24 = v18;
    v26 = v25;

    aBlock = v24;
    v83 = v26;
    v80 = 10;
    v81 = 0xE100000000000000;
    v78 = 32;
    v79 = 0xE100000000000000;
    sub_10000FCBC();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v27 = String._bridgeToObjectiveC()();
    a2 = v23;
    v10 = v22;
    v11 = v21;
    v4 = v20;
    v14 = v19;
    a1 = v71;
  }

  else
  {
    v27 = 0;
  }

  [v15 setText:v27];

  v28 = [a3 achievedShortDescriptionForAchievement:a1];
  if (v28)
  {
    v29 = v28;
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 0xD000000000000026 && 0x8000000100748010 == v30)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
      }

      else
      {
        v71 = a2;
        sub_100140278(&unk_1008E7FB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1006D1F70;
        *(inited + 32) = NSFontAttributeName;
        v70[1] = inited + 32;
        v33 = qword_1008DA5F8;
        v34 = NSFontAttributeName;
        if (v33 != -1)
        {
          swift_once();
        }

        v35 = qword_1008E0558;
        v36 = sub_1000059F8(0, &qword_1008F73C0);
        *(inited + 40) = v35;
        *(inited + 64) = v36;
        *(inited + 72) = NSForegroundColorAttributeName;
        v37 = objc_opt_self();
        v38 = v35;
        v39 = NSForegroundColorAttributeName;
        v40 = [v37 secondaryLabelColor];
        *(inited + 104) = sub_1000059F8(0, &qword_1008E7FC0);
        *(inited + 80) = v40;
        sub_1004C9200(inited);
        swift_setDeallocating();
        sub_100140278(&unk_1008EE730);
        swift_arrayDestroy();
        v41 = *&v4[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_detailLabel];
        v42 = objc_allocWithZone(NSAttributedString);
        type metadata accessor for Key(0);
        sub_100045C68(&qword_1008E7FD0, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v44 = [v42 initWithString:v29 attributes:isa];

        [v41 setAttributedText:v44];
        a2 = v71;
      }
    }
  }

  v45 = [a1 template];
  v46 = [v45 uniqueName];

  if (v46)
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = &v4[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_templateUniqueName];
  *v50 = v47;
  v50[1] = v49;

  if (![a2 hasCachedThumbnailImageForAchievement:a1 size:{62.0, 62.0}])
  {
    sub_1000059F8(0, &qword_1008E3FD0);
    (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
    v54 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v14, v10);
    v55 = swift_allocObject();
    v55[1].i64[0] = a2;
    v55[1].i64[1] = a1;
    v55[2] = vdupq_n_s64(0x404F000000000000uLL);
    v55[3].i64[0] = v4;
    v86 = sub_1001E2F44;
    v87 = v55;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_1000449A8;
    v85 = &unk_10084B6A8;
    v56 = _Block_copy(&aBlock);
    v57 = a2;
    v58 = a1;
    v59 = v4;
    v60 = v72;
    static DispatchQoS.unspecified.getter();
    v80 = _swiftEmptyArrayStorage;
    sub_100045C68(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    v61 = v74;
    v62 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v56);

    (*(v76 + 8))(v61, v62);
    (*(v73 + 8))(v60, v75);

    v53 = v50[1];
    if (!v53)
    {
      return;
    }

    goto LABEL_20;
  }

  v51 = *&v4[OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_achievementBadgeView];
  v52 = [a2 thumbnailImageForAchievement:a1 size:{62.0, 62.0}];
  [v51 setImage:v52];

  v53 = v50[1];
  if (v53)
  {
LABEL_20:
    v63 = *v50;

    [a1 unearned];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
    aBlock = v63;
    v83 = v53;
    v67._countAndFlagsBits = 95;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    v68._countAndFlagsBits = v64;
    v68._object = v66;
    String.append(_:)(v68);

    v69 = String._bridgeToObjectiveC()();

    [v4 setAccessibilityIdentifier:v69];
  }
}

uint64_t sub_1001E293C(void *a1, void *a2, double a3, double a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  __chkstk_darwin(v24);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 thumbnailImageForAchievement:a2 size:{a3, a4}];
  sub_1000059F8(0, &qword_1008E3FD0);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a2;
  v18[4] = v15;
  aBlock[4] = sub_1001E2F54;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084B720;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  v21 = v15;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045C68(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v24);
}

void sub_1001E2C74(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_templateUniqueName);
    v6 = *(Strong + OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_templateUniqueName + 8);
    v8 = Strong;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v9 = [a2 template];
  v10 = [v9 uniqueName];

  if (!v10)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (!v6)
  {
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_16:

    return;
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  if (v7 == v11 && v6 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return;
    }
  }

LABEL_18:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_achievementBadgeView);

    [v18 setImage:a3];
  }
}

id sub_1001E2E3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001E2F60()
{
  v1 = OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_insetContentView;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_achievementCellContentView;
  v4 = [objc_allocWithZone(type metadata accessor for AchievementCellContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001E304C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_templateUniqueName);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_achievementBadgeView;
  v4 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v3) = v4;
  v5 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_labelStackView;
  v6 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setAxis:1];
  v7 = UIStackView.withAlignment(_:)();

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_titleLabel;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setLineBreakMode:0];
  [v9 setNumberOfLines:0];
  if (qword_1008DA5F8 != -1)
  {
    swift_once();
  }

  v10 = UILabel.withFont(_:)();

  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  v13 = UILabel.withTextColor(_:)();

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v8) = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_detailLabel;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setLineBreakMode:0];
  [v15 setNumberOfLines:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v14) = v15;
  v16 = OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_chevronImageView;
  v17 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = [v11 tertiaryLabelColor];
  [v17 setTintColor:v18];

  if (qword_1008DA5F0 != -1)
  {
    swift_once();
  }

  [v17 setImage:qword_1008E0550];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v16) = v17;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001E3390@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v76 = type metadata accessor for SleepingSampleChartLollipopView();
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = v3;
  v80 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008E0600);
  __chkstk_darwin(v4 - 8);
  v77 = &v71 - v5;
  v6 = sub_100140278(&qword_1008E06C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v71 - v7;
  v9 = sub_100140278(&qword_1008E06C8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v71 - v11;
  v71 = sub_100140278(&qword_1008E06D0);
  __chkstk_darwin(v71);
  v14 = &v71 - v13;
  v73 = sub_100140278(&qword_1008E06D8);
  __chkstk_darwin(v73);
  v16 = &v71 - v15;
  v72 = sub_100140278(&qword_1008E06E0);
  __chkstk_darwin(v72);
  v18 = &v71 - v17;
  v74 = sub_100140278(&qword_1008E06E8);
  __chkstk_darwin(v74);
  v20 = &v71 - v19;
  v75 = sub_100140278(&qword_1008E06F0);
  __chkstk_darwin(v75);
  v22 = &v71 - v21;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = &v8[*(sub_100140278(&qword_1008E06F8) + 44)];
  v81 = v2;
  sub_1001E3BC0(v2, v23);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v8, v12, &qword_1008E06C0);
  v24 = &v12[*(v10 + 44)];
  v25 = v88;
  *(v24 + 4) = v87;
  *(v24 + 5) = v25;
  *(v24 + 6) = v89;
  v26 = v84;
  *v24 = v83;
  *(v24 + 1) = v26;
  v27 = v86;
  *(v24 + 2) = v85;
  *(v24 + 3) = v27;
  sub_100140278(&qword_1008E0700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  v29 = static Edge.Set.top.getter();
  *(inited + 32) = v29;
  v30 = static Edge.Set.horizontal.getter();
  *(inited + 33) = v30;
  v31 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_100015E80(v12, v14, &qword_1008E06C8);
  v40 = &v14[*(v71 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_100015E80(v14, v16, &qword_1008E06D0);
  v50 = &v16[*(v73 + 36)];
  *v50 = v41;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = static Color.black.getter();
  sub_100015E80(v16, v18, &qword_1008E06D8);
  *&v18[*(v72 + 36)] = v51;
  v52 = v81;
  v53 = v77;
  sub_10001B104(v81 + *(v76 + 28), v77, &qword_1008E0600);
  v54 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
  {
    sub_10000EA04(v53, &qword_1008E0600);
    v55 = static Color.gray.getter();
  }

  else
  {
    v55 = *(v53 + *(v54 + 24));

    sub_10014C324(v53);
  }

  v56 = static Edge.Set.all.getter();
  sub_100015E80(v18, v20, &qword_1008E06E0);
  v57 = &v20[*(v74 + 36)];
  *v57 = v55;
  v57[8] = v56;
  v58 = &v22[*(v75 + 36)];
  v59 = *(type metadata accessor for RoundedRectangle() + 20);
  v60 = enum case for RoundedCornerStyle.continuous(_:);
  v61 = type metadata accessor for RoundedCornerStyle();
  (*(*(v61 - 8) + 104))(&v58[v59], v60, v61);
  __asm { FMOV            V0.2D, #8.0 }

  *v58 = _Q0;
  *&v58[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
  sub_100015E80(v20, v22, &qword_1008E06E8);
  v67 = v80;
  sub_1001E4CC4(v52, v80);
  v68 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v69 = swift_allocObject();
  sub_1001E4D28(v67, v69 + v68);
  sub_1001E4DEC();
  View.onTapGesture(count:perform:)();

  return sub_100086788(v22);
}

uint64_t sub_1001E3BC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a1;
  v60 = a2;
  v3 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v3 - 8);
  v53 = v46 - v4;
  v55 = sub_100140278(&qword_1008E0768);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = v46 - v5;
  v56 = sub_100140278(&qword_1008E0770);
  v64 = *(v56 - 8);
  v6 = __chkstk_darwin(v56);
  v54 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = v46 - v8;
  v9 = type metadata accessor for AttributedString();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v61 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100140278(&qword_1008E0778);
  v63 = *(v52 - 8);
  v11 = __chkstk_darwin(v52);
  v51 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v65 = v46 - v13;
  sub_1001E4330(a1, &v78);
  v14 = v78;
  v15 = v79;
  v47 = v79;
  v48 = *(&v78 + 1);
  v16 = v80;
  v46[1] = v80;
  v17 = BYTE8(v80);
  v18 = static Font.caption2.getter();
  KeyPath = swift_getKeyPath();
  v71 = v17;
  v78 = v14;
  v79 = v15;
  *&v80 = v16;
  BYTE8(v80) = v17;
  *v81 = KeyPath;
  *&v81[8] = v18;
  static Font.Weight.medium.getter();
  sub_100140278(&qword_1008E0780);
  sub_1001E51AC();
  View.fontWeight(_:)();

  sub_10017A8F0(v48, v47, SBYTE8(v15));

  v20 = type metadata accessor for SleepingSampleChartLollipopView();
  v21 = v49;
  v22 = v61;
  sub_10055267C(v49 + *(v20 + 24), v61);
  v23 = static VerticalAlignment.center.getter();
  v70 = 0;
  sub_1001E4584(v22, v21, &v78);
  v74 = v80;
  v75[0] = *v81;
  *(v75 + 9) = *&v81[9];
  v72 = v78;
  v73 = v79;
  v76[2] = v80;
  v77[0] = *v81;
  *(v77 + 9) = *&v81[9];
  v76[0] = v78;
  v76[1] = v79;
  sub_10001B104(&v72, &v66, &qword_1008E07B0);
  sub_10000EA04(v76, &qword_1008E07B0);
  *(&v69[1] + 7) = v73;
  *(&v69[2] + 7) = v74;
  *(&v69[3] + 7) = v75[0];
  v69[4] = *(v75 + 9);
  *(v69 + 7) = v72;
  LOBYTE(v21) = v70;
  v24 = static Font.body.getter();
  v25 = swift_getKeyPath();
  *(&v67[1] + 1) = v69[1];
  *(&v67[2] + 1) = v69[2];
  *(&v67[3] + 1) = v69[3];
  v66 = v23;
  LOBYTE(v67[0]) = v21;
  *(&v67[4] + 1) = v69[4];
  *(v67 + 1) = v69[0];
  *(&v67[5] + 1) = v25;
  v68 = v24;
  static Font.Weight.medium.getter();
  v26 = sub_100140278(&qword_1008E07B8);
  v27 = sub_1001E5314();
  v28 = v50;
  View.fontWeight(_:)();
  *&v81[16] = v67[3];
  v82 = v67[4];
  v83 = v67[5];
  v84 = v68;
  v78 = v66;
  v79 = v67[0];
  v80 = v67[1];
  *v81 = v67[2];
  sub_10000EA04(&v78, &qword_1008E07B8);
  v29 = enum case for Font.Design.rounded(_:);
  v30 = type metadata accessor for Font.Design();
  v31 = *(v30 - 8);
  v32 = v53;
  (*(v31 + 104))(v53, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  *&v66 = v26;
  *(&v66 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v33 = v62;
  v34 = v55;
  View.fontDesign(_:)();
  sub_10000EA04(v32, &qword_1008DC448);
  (*(v57 + 8))(v28, v34);
  v35 = *(v63 + 16);
  v36 = v51;
  v37 = v52;
  v35(v51, v65, v52);
  v38 = *(v64 + 16);
  v39 = v54;
  v40 = v56;
  v38(v54, v33, v56);
  v41 = v60;
  v35(v60, v36, v37);
  v42 = sub_100140278(&qword_1008E07D8);
  v38(&v41[*(v42 + 48)], v39, v40);
  v43 = *(v64 + 8);
  v43(v62, v40);
  v44 = *(v63 + 8);
  v44(v65, v37);
  v43(v39, v40);
  v44(v36, v37);
  return (*(v58 + 8))(v61, v59);
}

uint64_t sub_1001E4330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SleepingSampleDataType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SleepingSampleViewModel.dataType.getter();
  v8 = SleepingSampleDataType.preferredImage.getter();
  (*(v5 + 8))(v7, v4);
  if (*(a1 + *(type metadata accessor for SleepingSampleChartLollipopView() + 32)) == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v23 = Text.init(_:tableName:bundle:comment:)();
    v24 = v9;
    v25 = v10 & 1;
    v26 = v11;
    v27 = 0;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v23 = Text.init(_:tableName:bundle:comment:)();
    v24 = v13;
    v25 = v12 & 1;
    v26 = v14;
    v27 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v21 = v28;
  v22 = v29;
  *a2 = v8;
  *(a2 + 8) = v15;
  *(a2 + 24) = v16;
  *(a2 + 40) = v17;

  v18 = v21;
  v19 = v22;
  sub_10017A7AC(v21, *(&v21 + 1), v22);
  sub_10017A8F0(v18, *(&v18 + 1), v19);
}

uint64_t sub_1001E4584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Text.Scale();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SleepingSampleDataType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AttributedString();
  __chkstk_darwin(v12);
  (*(v14 + 16))(&v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v46 = Text.init(_:)();
  v47 = v15;
  v17 = v16;
  v45 = v18;
  SleepingSampleViewModel.dataType.getter();
  v19 = SleepingSampleViewModel.preferredAggregateValueUnit.getter();
  v20 = SleepingSampleDataType.localizedUnitString(for:)(v19);

  (*(v9 + 8))(v11, v8);
  if (!v20.value._object)
  {
    goto LABEL_5;
  }

  v21 = type metadata accessor for SleepingSampleChartLollipopView();
  if ((sub_100552AE8(a2 + *(v21 + 24)) & 1) == 0)
  {

LABEL_5:
    v28 = 0;
    v30 = 0;
    v34 = 0;
    v33 = 0;
    goto LABEL_6;
  }

  v48 = v20;
  sub_10000FCBC();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v27 = v42;
  static Text.Scale.secondary.getter();
  v28 = Text.textScale(_:isEnabled:)();
  v30 = v29;
  v41 = v31;
  v33 = v32;
  sub_10004642C(v22, v24, v26 & 1);

  (*(v43 + 8))(v27, v44);
  v34 = v41 & 1;
  sub_10006965C(v28, v30, v41 & 1);

LABEL_6:
  v35 = v45 & 1;
  LOBYTE(v48.value._countAndFlagsBits) = v45 & 1;
  v36 = v46;
  sub_10006965C(v46, v17, v45 & 1);
  v37 = v47;

  sub_1001E53F8(v28, v30, v34, v33);
  sub_1001E543C(v28, v30, v34, v33);
  v49 = 0;
  countAndFlagsBits = v48.value._countAndFlagsBits;
  *a3 = v36;
  *(a3 + 8) = v17;
  *(a3 + 16) = countAndFlagsBits;
  *(a3 + 24) = v37;
  *(a3 + 32) = v28;
  *(a3 + 40) = v30;
  *(a3 + 48) = v34;
  *(a3 + 56) = v33;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  sub_1001E543C(v28, v30, v34, v33);
  sub_10004642C(v36, v17, v35);
}

uint64_t sub_1001E4938()
{
  type metadata accessor for SleepingSampleChartLollipopView();

  sub_100140278(&qword_1008DDE80);
  Binding.wrappedValue.getter();
  Binding.wrappedValue.setter();
}

uint64_t sub_1001E4A00()
{
  if (qword_1008DA6C8 != -1)
  {
    swift_once();
  }

  v0 = qword_100925320;
  result = static VerticalAlignment.bottom.getter();
  *&xmmword_100925200 = v0;
  *(&xmmword_100925200 + 1) = result;
  return result;
}

uint64_t type metadata accessor for SleepingSampleChartLollipopView()
{
  result = qword_1008E0660;
  if (!qword_1008E0660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E4AD8()
{
  type metadata accessor for SleepingSampleViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DayIndex();
    if (v1 <= 0x3F)
    {
      sub_1001E4BB4();
      if (v2 <= 0x3F)
      {
        sub_1001E4C0C();
        if (v3 <= 0x3F)
        {
          sub_1001E4C5C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001E4BB4()
{
  if (!qword_1008E0670)
  {
    type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E0670);
    }
  }
}

void sub_1001E4C0C()
{
  if (!qword_1008E0678)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E0678);
    }
  }
}

unint64_t sub_1001E4C5C()
{
  result = qword_1008F73C0;
  if (!qword_1008F73C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008F73C0);
  }

  return result;
}

uint64_t sub_1001E4CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleChartLollipopView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E4D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleChartLollipopView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E4D8C()
{
  type metadata accessor for SleepingSampleChartLollipopView();

  return sub_1001E4938();
}

unint64_t sub_1001E4DEC()
{
  result = qword_1008E0708;
  if (!qword_1008E0708)
  {
    sub_100141EEC(&qword_1008E06F0);
    sub_1001E4EA4();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0708);
  }

  return result;
}

unint64_t sub_1001E4EA4()
{
  result = qword_1008E0710;
  if (!qword_1008E0710)
  {
    sub_100141EEC(&qword_1008E06E8);
    sub_1001E4F5C();
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0710);
  }

  return result;
}

unint64_t sub_1001E4F5C()
{
  result = qword_1008E0718;
  if (!qword_1008E0718)
  {
    sub_100141EEC(&qword_1008E06E0);
    sub_1001E5070(&qword_1008E0720, &qword_1008E06D8, &unk_1006DC038, sub_1001E5040);
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0718);
  }

  return result;
}

uint64_t sub_1001E5070(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001E50F4()
{
  result = qword_1008E0730;
  if (!qword_1008E0730)
  {
    sub_100141EEC(&qword_1008E06C8);
    sub_10014A6B0(&qword_1008E0738, &qword_1008E06C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0730);
  }

  return result;
}

unint64_t sub_1001E51AC()
{
  result = qword_1008E0788;
  if (!qword_1008E0788)
  {
    sub_100141EEC(&qword_1008E0780);
    sub_1001E5264();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0788);
  }

  return result;
}

unint64_t sub_1001E5264()
{
  result = qword_1008E0790;
  if (!qword_1008E0790)
  {
    sub_100141EEC(&qword_1008E0798);
    sub_10014A6B0(&qword_1008E07A0, &qword_1008E07A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0790);
  }

  return result;
}

unint64_t sub_1001E5314()
{
  result = qword_1008E07C0;
  if (!qword_1008E07C0)
  {
    sub_100141EEC(&qword_1008E07B8);
    sub_10014A6B0(&qword_1008E07C8, &qword_1008E07D0);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E07C0);
  }

  return result;
}

uint64_t sub_1001E53F8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10006965C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001E543C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10004642C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1001E54AC()
{
  result = qword_1008E07E0;
  if (!qword_1008E07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E07E0);
  }

  return result;
}

uint64_t sub_1001E5510(unint64_t a1, unint64_t a2)
{
  v59 = type metadata accessor for UUID();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v51 - v6;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  if (a1 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!(a2 >> 62))
    {
LABEL_3:
      if (v13 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a2 >> 62))
    {
      goto LABEL_3;
    }
  }

  if (v13 != _CocoaArrayWrapper.endIndex.getter())
  {
    return 0;
  }

LABEL_4:
  v53 = v9;
  v14 = _swiftEmptyArrayStorage;
  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_22:
    v35 = sub_1001AA77C(v14);

    v36 = v59;
    v51 = v17[2];
    if (!v51)
    {
LABEL_32:

      return 1;
    }

    v37 = 0;
    v57 = v35 + 56;
    v58 = v56 + 16;
    v38 = (v56 + 8);
    while (v37 < v17[2])
    {
      v39 = v17 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v55 = *(v56 + 72);
      v40 = *(v56 + 16);
      v41 = v53;
      v40(v53, &v39[v55 * v37], v36);
      if (!*(v35 + 16) || (v54 = v37, sub_10007183C(&qword_1008E4E10), v42 = dispatch thunk of Hashable._rawHashValue(seed:)(), v43 = -1 << *(v35 + 32), v44 = v42 & ~v43, ((*(v57 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0))
      {
LABEL_33:

        (*v38)(v41, v36);
        return 0;
      }

      ++v54;
      v45 = ~v43;
      while (1)
      {
        v46 = v35;
        v47 = *(v35 + 48) + v44 * v55;
        v48 = v52;
        v40(v52, v47, v36);
        sub_10007183C(&qword_1008EAFA0);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        v50 = *v38;
        (*v38)(v48, v36);
        if (v49)
        {
          break;
        }

        v44 = (v44 + 1) & v45;
        v41 = v53;
        v35 = v46;
        if (((*(v57 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      result = (v50)(v53, v36);
      v37 = v54;
      v35 = v46;
      if (v54 == v51)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v60 = _swiftEmptyArrayStorage;
  result = sub_1000679CC(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v60;
    v18 = a1;
    v54 = a1 & 0xC000000000000001;
    v55 = a2;
    v57 = v56 + 32;
    v58 = v13;
    do
    {
      if (v54)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v18 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = [v19 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000679CC(v22 > 1, v23 + 1, 1);
        v17 = v60;
      }

      ++v16;
      v17[2] = v23 + 1;
      v24 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v25 = *(v56 + 72);
      v26 = v17 + v24 + v25 * v23;
      v27 = *(v56 + 32);
      v27(v26, v12, v59);
    }

    while (v58 != v16);
    v60 = _swiftEmptyArrayStorage;
    sub_1000679CC(0, v58, 0);
    v28 = 0;
    v14 = v60;
    v54 = v55 & 0xC000000000000001;
    v29 = v51;
    do
    {
      if (v54)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v55 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = [v30 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = v14;
      v34 = v14[2];
      v33 = v14[3];
      if (v34 >= v33 >> 1)
      {
        sub_1000679CC(v33 > 1, v34 + 1, 1);
        v14 = v60;
      }

      ++v28;
      v14[2] = v34 + 1;
      v27(v14 + v24 + v25 * v34, v29, v59);
    }

    while (v58 != v28);
    goto LABEL_22;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1001E5AFC(uint64_t result)
{
  v1 = result;
  if (result > 10)
  {
    v2 = static os_log_type_t.error.getter();
    v3 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v2))
    {
      v4 = v3;
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_10000AFDC(0xD000000000000015, 0x80000001006DC1B0, &v7);
      *(v5 + 12) = 2048;
      *(v5 + 14) = v1;
      _os_log_impl(&_mh_execute_header, v4, v2, "%s Attempted to access section with index: %ld however index was out of range.", v5, 0x16u);
      sub_100005A40(v6);
    }

    return 11;
  }

  else if (result < 0)
  {
    __break(1u);
  }

  else
  {
    return *(&off_100842360 + result + 32);
  }

  return result;
}

void sub_1001E5C38(void *a1)
{
  type metadata accessor for ActivityTileSectionHeader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = String._bridgeToObjectiveC()();
  [a1 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v3];

  v4 = 0;
  do
  {
    v7 = *(&off_100842360 + v4 + 32);
    if (v7 <= 4)
    {
      if (*(&off_100842360 + v4 + 32) <= 1u)
      {
        if (*(&off_100842360 + v4 + 32))
        {
LABEL_2:
          type metadata accessor for DayViewMoveAndExerciseChartTableViewCell();
          goto LABEL_3;
        }

        type metadata accessor for DayViewActivityRingsTableViewCell();
      }

      else
      {
        if (v7 == 2)
        {
          goto LABEL_2;
        }

        if (v7 == 3)
        {
          type metadata accessor for DayViewStandChartTableViewCell();
        }

        else
        {
          type metadata accessor for DayViewStepsAndDistanceTableViewCell();
        }
      }
    }

    else if (*(&off_100842360 + v4 + 32) > 7u)
    {
      if (v7 == 8)
      {
        type metadata accessor for MindfulnessSessionListTableViewCell();
      }

      else if (v7 == 9)
      {
        type metadata accessor for AchievementsListTableViewCell();
      }

      else
      {
        type metadata accessor for AddToYourRingTableViewCell();
      }
    }

    else if (v7 == 5)
    {
      type metadata accessor for DayViewFlightsTableViewCell();
    }

    else if (v7 == 6)
    {
      type metadata accessor for DayViewRingsConfigurationCell();
    }

    else
    {
      type metadata accessor for WorkoutsListTableViewCell();
    }

LABEL_3:
    ++v4;
    v5 = swift_getObjCClassFromMetadata();
    _print_unlocked<A, B>(_:_:)();
    v6 = String._bridgeToObjectiveC()();

    [a1 registerClass:v5 forCellReuseIdentifier:v6];
  }

  while (v4 != 11);
}

uint64_t getEnumTagSinglePayload for ChartableMetric(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChartableMetric(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001E5F7C()
{
  result = qword_1008E0848;
  if (!qword_1008E0848)
  {
    sub_100141EEC(&qword_1008E0850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0848);
  }

  return result;
}

unint64_t sub_1001E5FE4()
{
  result = qword_1008E0858;
  if (!qword_1008E0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0858);
  }

  return result;
}

Swift::Int sub_1001E6090()
{
  Hasher.init()();
  Hasher._combine(_:)(*(v0 + OBJC_IVAR___CHMindfulnessSessionsStatistics_sessionCount));
  v1 = *(v0 + OBJC_IVAR___CHMindfulnessSessionsStatistics_totalDuration);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  return Hasher.finalize()();
}

id sub_1001E6130()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindfulnessSessionsStatistics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_1001E6188@<X0>(Swift::Int *a1@<X8>)
{
  result = sub_1001E6090();
  *a1 = result;
  return result;
}

Swift::Int sub_1001E62F4()
{
  v1 = v0;
  Hasher.init()();
  v2 = type metadata accessor for FitnessPlusSampleContentCard();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = *(v3 + 16);
  sub_100035B30(*v3, *(v3 + 16));
  String.hash(into:)();

  if (!v5 || v5 == 2)
  {
    Hasher._combine(_:)(v4);
  }

  else if (v5 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + v2[6]));
  Hasher._combine(_:)(*(v1 + v2[7]));
  return Hasher.finalize()();
}

uint64_t sub_1001E63DC()
{
  type metadata accessor for FitnessPlusSampleContentCard();
  _print_unlocked<A, B>(_:_:)();
  v0._countAndFlagsBits = 58;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_100071140();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0;
}

uint64_t sub_1001E651C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001E65B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001E65FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1001E6668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v73 = a4;
  v4 = type metadata accessor for ScrollIndicatorVisibility();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008E0940);
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v59 = &v58 - v7;
  v8 = sub_100140278(&qword_1008E0948);
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = __chkstk_darwin(v8);
  v70 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v58 - v11;
  v12 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v12 - 8);
  v14 = &v58 - v13;
  v15 = type metadata accessor for Font.TextStyle();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  (*(v16 + 104))(v18, enum case for Font.TextStyle.footnote(_:), v15);
  v24 = type metadata accessor for Font.Design();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  static Font.system(_:design:weight:)();
  sub_10000EA04(v14, &qword_1008DC448);
  v25 = v15;
  v26 = v59;
  (*(v16 + 8))(v18, v25);
  v27 = v60;
  v28 = Text.font(_:)();
  v76 = v29;
  v77 = v28;
  LOBYTE(v14) = v30;
  v78 = v31;

  sub_10004642C(v19, v21, v23 & 1);

  v75 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v74 = v14 & 1;
  LOBYTE(v88[0]) = v14 & 1;
  LOBYTE(v82) = 0;
  v64 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  static Axis.Set.horizontal.getter();
  v79 = v61;
  v80 = v62;
  v81 = v63;
  sub_100140278(&qword_1008E0950);
  sub_10014A6B0(&qword_1008E0958, &qword_1008E0950);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.hidden.getter();
  sub_100140278(&qword_1008E0960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  LOBYTE(v21) = static Axis.Set.vertical.getter();
  *(inited + 32) = v21;
  v42 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v42;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v21)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v42)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_10014A6B0(&qword_1008E0968, &qword_1008E0940);
  v43 = v69;
  v44 = v66;
  View.scrollIndicators(_:axes:)();
  (*(v67 + 8))(v27, v68);
  (*(v65 + 8))(v26, v44);
  v46 = v70;
  v45 = v71;
  v47 = *(v71 + 16);
  v48 = v72;
  v47(v70, v43, v72);
  *&v82 = v77;
  *(&v82 + 1) = v76;
  LOBYTE(v83) = v74;
  *(&v83 + 1) = *v103;
  DWORD1(v83) = *&v103[3];
  *(&v83 + 1) = v78;
  LOBYTE(v84) = v75;
  *(&v84 + 1) = *v102;
  DWORD1(v84) = *&v102[3];
  *(&v84 + 1) = v33;
  *&v85 = v35;
  *(&v85 + 1) = v37;
  *&v86 = v39;
  BYTE8(v86) = 0;
  HIDWORD(v86) = *(v104 + 3);
  *(&v86 + 9) = v104[0];
  *&v87 = KeyPath;
  v68 = KeyPath;
  v49 = v64;
  *(&v87 + 1) = v64;
  v50 = v83;
  v51 = v73;
  *v73 = v82;
  v51[1] = v50;
  v52 = v84;
  v53 = v85;
  v54 = v87;
  v51[4] = v86;
  v51[5] = v54;
  v51[2] = v52;
  v51[3] = v53;
  v55 = sub_100140278(&qword_1008E0970);
  v47(v51 + *(v55 + 48), v46, v48);
  sub_1001E71E4(&v82, v88);
  v56 = *(v45 + 8);
  v56(v43, v48);
  v56(v46, v48);
  v88[0] = v77;
  v88[1] = v76;
  v89 = v74;
  *v90 = *v103;
  *&v90[3] = *&v103[3];
  v91 = v78;
  v92 = v75;
  *v93 = *v102;
  *&v93[3] = *&v102[3];
  v94 = v33;
  v95 = v35;
  v96 = v37;
  v97 = v39;
  v98 = 0;
  *&v99[3] = *(v104 + 3);
  *v99 = v104[0];
  v100 = v68;
  v101 = v49;
  return sub_10000EA04(v88, &qword_1008E0978);
}

uint64_t sub_1001E6E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4024000000000000;
  *(a4 + 16) = 0;
  if (a1)
  {
    sub_100140278(&qword_1008E0980);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    swift_getKeyPath();
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = a3;

    sub_100140278(&qword_1008E0988);
    sub_10014A6B0(&qword_1008E0990, &qword_1008E0988);
    sub_1001E7260();
    sub_1001E72B4();
    return ForEach<>.init(_:id:content:)();
  }

  else
  {
    type metadata accessor for ReachableContactsDataSource();
    sub_1001E7308(&qword_1008DC048, type metadata accessor for ReachableContactsDataSource);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v16 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  type metadata accessor for ActivitySharingFriendListDataProvider();
  sub_1001E7308(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);

  v10 = v5;

  v11 = EnvironmentObject.init()();
  v13 = v12;
  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator();
  sub_1001E7308(&qword_1008EB690, type metadata accessor for ActivitySharingFriendDetailAlertCoordinator);
  result = EnvironmentObject.init()();
  *a3 = v11;
  a3[1] = v13;
  a3[2] = result;
  a3[3] = v15;
  a3[4] = a2;
  a3[5] = v10;
  a3[6] = v6;
  a3[7] = v7;
  a3[8] = v16;
  a3[9] = v8;
  a3[10] = v9;
  return result;
}

uint64_t sub_1001E7170@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = sub_100140278(&qword_1008E0938);
  return sub_1001E6668(v3, v4, v5, (a1 + *(v6 + 44)));
}

uint64_t sub_1001E71E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E0978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001E7260()
{
  result = qword_1008E0998;
  if (!qword_1008E0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0998);
  }

  return result;
}

unint64_t sub_1001E72B4()
{
  result = qword_1008E09A0;
  if (!qword_1008E09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E09A0);
  }

  return result;
}

uint64_t sub_1001E7308(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001E73C0()
{
  result = qword_1008E09B8;
  if (!qword_1008E09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E09B8);
  }

  return result;
}

double sub_1001E7414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0 / 0.0;
  }

  if (v1 < 4)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_8:
    v8 = v1 - v2;
    v9 = (a1 + 16 * v2 + 40);
    do
    {
      v3 = v3 + *(v9 - 1) * *v9;
      v9 += 2;
      --v8;
    }

    while (v8);
    goto LABEL_10;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v5 = (a1 + 64);
  v3 = 0.0;
  v6 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7 = v5 - 4;
    v19 = vld2q_f64(v7);
    v20 = vld2q_f64(v5);
    v19.val[0] = vmulq_f64(v19.val[0], v19.val[1]);
    v20.val[0] = vmulq_f64(v20.val[0], v20.val[1]);
    v3 = v3 + v19.val[0].f64[0] + v19.val[0].f64[1] + v20.val[0].f64[0] + v20.val[0].f64[1];
    v5 += 8;
    v6 -= 4;
  }

  while (v6);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v1 == 1)
  {
    v10 = 0;
    v11 = 0.0;
  }

  else
  {
    v10 = v1 & 0x7FFFFFFFFFFFFFFELL;
    v12 = (a1 + 56);
    v11 = 0.0;
    v13 = v1 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v14 = *(v12 - 2);
      v15 = *v12;
      v12 += 4;
      v11 = v11 + v14 + v15;
      v13 -= 2;
    }

    while (v13);
    if (v1 == v10)
    {
      return v3 / v11;
    }
  }

  v16 = v1 - v10;
  v17 = (a1 + 16 * v10 + 40);
  do
  {
    v18 = *v17;
    v17 += 2;
    v11 = v11 + v18;
    --v16;
  }

  while (v16);
  return v3 / v11;
}

uint64_t type metadata accessor for MindfulnessItemView()
{
  result = qword_1008E0A20;
  if (!qword_1008E0A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E7590()
{
  type metadata accessor for MindfulnessSessionViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MindfulnessSessionFormattingManager();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FitnessAppContext();
      if (v2 <= 0x3F)
      {
        sub_1001E767C();
        if (v3 <= 0x3F)
        {
          sub_1001E76CC();
          if (v4 <= 0x3F)
          {
            sub_1001E7730();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1001E767C()
{
  if (!qword_1008E0A30)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E0A30);
    }
  }
}

void sub_1001E76CC()
{
  if (!qword_1008DFFB0)
  {
    sub_100141EEC(&qword_1008DC850);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DFFB0);
    }
  }
}

void sub_1001E7730()
{
  if (!qword_1008E0A38)
  {
    type metadata accessor for AttributedString();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E0A38);
    }
  }
}

uint64_t sub_1001E77A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MindfulnessItemView();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = v4;
  v44 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v37[-v14];
  v38 = *(v1 + 24);
  sub_100140278(&qword_1008E09C0);
  v39 = v15;
  State.wrappedValue.getter();
  v16 = *v1;
  v45 = v1;
  v40 = v13;
  sub_100556540(v13);
  v17 = objc_opt_self();
  v41 = v16;
  MindfulnessSessionViewModel.endDate.getter();
  v18.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  if (qword_1008DADD8 != -1)
  {
    swift_once();
  }

  v19 = [v17 formattedListStringForDate:v18.super.isa font:qword_1008F2CD0];

  v20 = [v19 string];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  v24 = sub_100140278(&qword_1008E0A80);
  v25 = a1 + v24[15];
  *v25 = xmmword_1006DC5B0;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(a1 + v24[9]) = v38;
  v26 = *(v10 + 16);
  v27 = v39;
  v26(a1 + v24[10], v39, v9);
  v28 = v40;
  v26(a1 + v24[11], v40, v9);
  v29 = (a1 + v24[12]);
  *v29 = v21;
  v29[1] = v23;
  *(a1 + v24[13]) = 0;
  v30 = v45;
  sub_1001E7C50(v45);
  v31 = *(v10 + 8);
  v31(v28, v9);
  v31(v27, v9);
  sub_100140278(&qword_1008E0A88);
  MindfulnessSessionViewModel.uuid.getter();
  v32 = v44;
  sub_1001E9998(v30, v44);
  v33 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v34 = swift_allocObject();
  sub_1001E99FC(v32, v34 + v33);
  v35 = (a1 + *(sub_100140278(&qword_1008E0A90) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v35 = &unk_1006DC6A0;
  v35[1] = v34;
  return result;
}

uint64_t sub_1001E7C50(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E0AA8);
  __chkstk_darwin(v2);
  v4 = &v26[-v3];
  v5 = sub_100140278(&qword_1008E0AB0);
  __chkstk_darwin(v5);
  v7 = &v26[-v6];
  v8 = *(*(a1 + 16) + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
  v9 = sub_100698958();

  if ((v9 & 1) != 0 && (v37[0] = *(a1 + 48), sub_100140278(&qword_1008E0038), State.wrappedValue.getter(), (v10 = v32) != 0))
  {
    v11 = v7 + *(v5 + 36);
    v12 = *(type metadata accessor for RoundedRectangle() + 20);
    v13 = enum case for RoundedCornerStyle.continuous(_:);
    v14 = type metadata accessor for RoundedCornerStyle();
    (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
    __asm { FMOV            V0.2D, #4.0 }

    *v11 = _Q0;
    *&v11[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
    *v7 = v10;
    sub_10001B104(v7, v4, &qword_1008E0AB0);
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E0AC0);
    sub_1001E9D3C();
    sub_10014A6B0(&qword_1008E0AD0, &qword_1008E0AC0);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v7, &qword_1008E0AB0);
  }

  else
  {
    v21 = static Alignment.center.getter();
    v23 = v22;
    sub_1001E88AC(a1, &v27);
    v34 = v29;
    v35 = v30;
    v36 = v31;
    v32 = v27;
    v33 = v28;
    v37[2] = v29;
    v37[3] = v30;
    v37[4] = v31;
    v37[0] = v27;
    v37[1] = v28;
    sub_10001B104(&v32, v26, &qword_1008E0AB8);
    sub_10000EA04(v37, &qword_1008E0AB8);
    *v4 = v21;
    *(v4 + 1) = v23;
    v24 = v35;
    *(v4 + 3) = v34;
    *(v4 + 4) = v24;
    *(v4 + 5) = v36;
    v25 = v33;
    *(v4 + 1) = v32;
    *(v4 + 2) = v25;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E0AC0);
    sub_1001E9D3C();
    sub_10014A6B0(&qword_1008E0AD0, &qword_1008E0AC0);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1001E7FF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001E8088, v3, v2);
}

uint64_t sub_1001E8088()
{

  sub_1001E80F0();
  sub_1001E8510();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E80F0()
{
  v1 = type metadata accessor for MindfulnessItemView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1 - 8);
  v5 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v23[-v6];
  if (*(v0 + 24))
  {
    v8 = 48.0;
  }

  else
  {
    v8 = 34.0;
  }

  sub_1001E9998(v0, &v23[-v6]);
  sub_1001E9998(v7, v5);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_1001E99FC(v7, v10 + v9);
  v11 = MindfulnessSessionViewModel.sourceRevision.getter();
  v12 = [v11 source];

  LODWORD(v11) = [v12 _hasFirstPartyBundleID];
  if (v11)
  {
    v13 = sub_1005587DC();
    sub_1001AC3CC();
    v14 = static NSObject.== infix(_:_:)();
    if (v14)
    {
      if (v13)
      {
        __chkstk_darwin(v14);
        *&v23[-16] = v5;
        *&v23[-8] = v13;
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }

    else
    {
    }
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1001E9C20;
    *(v15 + 24) = v10;

    v16 = MindfulnessSessionViewModel.sourceRevision.getter();
    v17 = [v16 source];

    LOBYTE(v16) = [v17 _isAppleWatch];
    if (v16)
    {
      v18 = sub_1005588A8(v8);
      v19 = objc_opt_self();
      v28 = sub_1001E9CBC;
      v29 = v15;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_100212B08;
      v27 = &unk_10084BAA8;
      v20 = _Block_copy(&aBlock);

      [v19 fetchWatchIconWithParameters:v18 completion:v20];
    }

    else
    {
      v18 = sub_1005589F8(v8);
      v21 = objc_opt_self();
      v28 = sub_1001E9CBC;
      v29 = v15;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_100212B08;
      v27 = &unk_10084BA80;
      v20 = _Block_copy(&aBlock);

      [v21 fetchPhoneIconWithParameters:v18 completion:v20];
    }

    _Block_release(v20);
  }

  return sub_1001E9CC4(v5);
}

void sub_1001E8510()
{
  v1 = v0;
  v2 = type metadata accessor for MindfulnessItemView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = dispatch thunk of MindfulnessSessionViewModel.sessionType.getter();
  if ((v8 & 1) != 0 || v7 != 3)
  {
    goto LABEL_17;
  }

  v9 = MindfulnessSessionViewModel.mindfulnessSessions.getter();
  if (v9 >> 62)
  {
    v25 = v9;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v25;
    if (v26)
    {
      goto LABEL_5;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  v12 = [v11 metadata];
  if (v12)
  {
    v13 = v12;
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v14 + 16))
    {
      v17 = sub_100066F20(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_10000B1B4(*(v14 + 56) + 32 * v17, v35);

        sub_1001AA76C(v35, v36);
        *&v35[0] = 0;
        *(&v35[0] + 1) = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v20 = v35[0];
        v21 = *(*(v1 + 16) + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
        sub_1001E9998(v1, v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
        v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
        v23 = swift_allocObject();
        sub_1001E99FC(v5, v23 + v22);
        v24 = v21;
        sub_100415C1C(v20, *(&v20 + 1), sub_1001E9B44, v23);

        sub_100005A40(v36);
        return;
      }
    }

    else
    {
    }
  }

LABEL_17:
  v27 = *(v1 + 16);
  v28 = OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider;
  v29 = *(v27 + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
  v30 = sub_100698958();

  if (v30)
  {
    v31 = *(v27 + v28);
    sub_1001E9998(v1, v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v33 = swift_allocObject();
    sub_1001E99FC(v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
    v34 = v31;
    sub_10017282C(v6, sub_1001E9B2C, v33, v34);
  }
}

void sub_1001E88AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100140278(&qword_1008E0AD8);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - v4;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100433CAC();
  v11 = [v10 gradientDarkColor];
  v12 = [v10 gradientDarkColor];
  v32[1] = *(a1 + 24);
  v13 = FIUICircularGradientImage();

  if (v13)
  {
    v14 = Image.init(uiImage:)();

    v15 = *(a1 + 40);
    v40 = *(a1 + 32);
    v41 = v15;
    sub_100140278(&qword_1008E0AA0);
    State.wrappedValue.getter();
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    Image.resizable(capInsets:resizingMode:)();

    (*(v7 + 8))(v9, v6);
    v16 = MindfulnessSessionViewModel.sourceRevision.getter();
    v17 = [v16 source];

    LODWORD(v16) = [v17 _hasFirstPartyBundleID];
    v18 = type metadata accessor for Image.TemplateRenderingMode();
    v19 = *(v18 - 8);
    v20 = &enum case for Image.TemplateRenderingMode.template(_:);
    if (!v16)
    {
      v20 = &enum case for Image.TemplateRenderingMode.original(_:);
    }

    (*(*(v18 - 8) + 104))(v5, *v20, v18);
    (*(v19 + 56))(v5, 0, 1, v18);
    v21 = Image.renderingMode(_:)();

    sub_10000EA04(v5, &qword_1008E0AD8);
    v22 = MindfulnessSessionViewModel.sourceRevision.getter();
    v23 = [v22 source];

    v24 = [v23 _hasFirstPartyBundleID];
    v25 = 0;
    if (!v24)
    {
      goto LABEL_7;
    }

    if ([objc_opt_self() fiui_meditationTeal])
    {
      v25 = Color.init(uiColor:)();
LABEL_7:
      KeyPath = swift_getKeyPath();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v38 = v21;
      *(&v38 + 1) = KeyPath;
      *v39 = v25;
      v27 = v35;
      *&v39[8] = v35;
      v28 = v36;
      *&v39[24] = v36;
      v29 = v37;
      *&v39[40] = v37;
      v30 = v33;
      *(v33 + 8) = v38;
      v31 = *&v39[16];
      *(v30 + 24) = *v39;
      *(v30 + 40) = v31;
      *(v30 + 56) = *&v39[32];
      *v30 = v14;
      *(v30 + 72) = *&v39[48];
      v40 = v21;
      v41 = KeyPath;
      v42 = v25;
      v44 = v28;
      v45 = v29;
      v43 = v27;

      sub_10001B104(&v38, &v34, &qword_1008E0AE0);
      sub_10000EA04(&v40, &qword_1008E0AE0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001E8D5C(void *a1)
{
  sub_1001AC3CC();
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    if (a1)
    {
      __chkstk_darwin(result);
      v3 = a1;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }
  }

  return result;
}

uint64_t sub_1001E8E2C(uint64_t a1, void *a2)
{
  v2 = a2;
  Image.init(uiImage:)();
  sub_100140278(&qword_1008E0AA0);
  return State.wrappedValue.setter();
}

uint64_t sub_1001E8E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-v5];
  v7 = type metadata accessor for Trainer();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001AC3CC();
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    sub_10001B104(a1, v6, &unk_1008E9B20);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_10000EA04(v6, &unk_1008E9B20);
    }

    else
    {
      v12 = (*(v8 + 32))(v10, v6, v7);
      __chkstk_darwin(v12);
      *&v13[-16] = a2;
      *&v13[-8] = v10;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();

      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_1001E90B8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v18 - v12;
  v18[0] = a1;
  v14 = *a1;
  v15 = type metadata accessor for Trainer();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, a2, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  sub_1005577DC(v14, v6);
  AttributedString.init(_:)();
  if (qword_1008DADB8 != -1)
  {
    swift_once();
  }

  v18[3] = qword_1008F2CB0;
  sub_10005F988();

  AttributedString.subscript.setter();
  sub_10000EA04(v6, &unk_1008E9B20);
  type metadata accessor for MindfulnessItemView();
  (*(v8 + 16))(v11, v13, v7);
  sub_100140278(&qword_1008E09C0);
  State.wrappedValue.setter();
  return (*(v8 + 8))(v13, v7);
}

void sub_1001E936C(void *a1, void **a2)
{
  v4 = type metadata accessor for MindfulnessItemView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  if (a1)
  {
    __chkstk_darwin(v7);
    *&v17[-16] = a2;
    *&v17[-8] = a1;
    v8 = a1;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    v9 = *(a2[2] + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
    CGSize.init(uniform:)();
    sub_1001E9998(a2, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    sub_1001E99FC(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
    sub_100419358(v8, sub_1001E9BEC, v11);
  }

  else
  {
    static os_log_type_t.error.getter();
    v12 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006D1F70;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_10000A788();
    *(v13 + 32) = 0xD000000000000010;
    *(v13 + 40) = 0x800000010074C4C0;
    v14 = *a2;
    *(v13 + 96) = type metadata accessor for MindfulnessSessionViewModel();
    *(v13 + 104) = sub_1001E9EDC(&qword_1008E0A98, &type metadata accessor for MindfulnessSessionViewModel);
    *(v13 + 72) = v14;
    v15 = v12;
    v16 = v14;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1001E9694(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = [*(a2 + OBJC_IVAR___CHCatalogItemViewModel_title) string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  type metadata accessor for MindfulnessItemView();
  (*(v5 + 16))(v8, v10, v4);
  sub_100140278(&qword_1008E09C0);
  State.wrappedValue.setter();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1001E987C(uint64_t result)
{
  if (result)
  {
    v1 = __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_1001E992C(uint64_t a1, void *a2)
{
  v2 = a2;
  Image.init(uiImage:)();
  sub_100140278(&qword_1008E0038);
  return State.wrappedValue.setter();
}

uint64_t sub_1001E9998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MindfulnessItemView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E99FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MindfulnessItemView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E9A60()
{
  v2 = *(type metadata accessor for MindfulnessItemView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BACC;

  return sub_1001E7FF0(v0 + v3);
}

uint64_t sub_1001E9B44(uint64_t a1)
{
  v3 = *(type metadata accessor for MindfulnessItemView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1001E8E94(a1, v4);
}

uint64_t sub_1001E9C38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MindfulnessItemView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1001E9CC4(uint64_t a1)
{
  v2 = type metadata accessor for MindfulnessItemView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001E9D3C()
{
  result = qword_1008E0AC8;
  if (!qword_1008E0AC8)
  {
    sub_100141EEC(&qword_1008E0AB0);
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0AC8);
  }

  return result;
}

unint64_t sub_1001E9DF4()
{
  result = qword_1008E0AE8;
  if (!qword_1008E0AE8)
  {
    sub_100141EEC(&qword_1008E0A90);
    sub_10014A6B0(&qword_1008E0AF0, &qword_1008E0A88);
    sub_1001E9EDC(&qword_1008DB010, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0AE8);
  }

  return result;
}

uint64_t sub_1001E9EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001E9F44()
{
  v0 = sub_100140278(&qword_1008DE590);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v18 - v5;
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Calendar();
  sub_10001AC90(v10, qword_100924FE8);
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  v12 = _HKActivityCacheDateComponentsFromDate();

  if (v12)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for DateComponents();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for DateComponents();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_10003BE9C(v6, v8);
  sub_100038088(v8, v3);
  type metadata accessor for DateComponents();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v3, 1, v13) != 1)
  {
    v15 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v3, v13);
  }

  v16 = _HKCacheIndexFromDateComponents();

  sub_1001EA1C4(v8);
  return v16;
}

uint64_t sub_1001EA1C4(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DE590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LoadHistoryItemView()
{
  result = qword_1008E0B60;
  if (!qword_1008E0B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001EA2A0()
{
  sub_1001EA394();
  if (v0 <= 0x3F)
  {
    sub_1000059F8(319, &unk_1008DC348);
    if (v1 <= 0x3F)
    {
      type metadata accessor for StackFormattingManager();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SeymourCatalogItemDataProvider();
        if (v3 <= 0x3F)
        {
          sub_1001EA3F8();
          if (v4 <= 0x3F)
          {
            sub_1001EA450();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001EA394()
{
  result = qword_1008E0B70;
  if (!qword_1008E0B70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1008E0B70);
  }

  return result;
}

void sub_1001EA3F8()
{
  if (!qword_1008E0B78)
  {
    type metadata accessor for BalanceDataProvider();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E0B78);
    }
  }
}

void sub_1001EA450()
{
  if (!qword_1008E0B80)
  {
    sub_100141EEC(&unk_1008EE8E0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E0B80);
    }
  }
}

void sub_1001EA4D0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008E0AF8 = v2;
}

void *sub_1001EA53C(void *a1)
{
  v4 = sub_100140278(&qword_1008DF280);
  v65 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v66 = &v55 - v9;
  __chkstk_darwin(v8);
  v56 = &v55 - v10;
  v64 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for EnvironmentValues();
  v13 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 workoutActivityType] != 82)
  {
    v49 = v1[8];
    if (*(v1 + 72) == 1)
    {
      v50 = v49;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v51 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v52 = v57;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v49, 0);
      (v13[1])(v52, v58);
      v50 = v67;
    }

    v53 = sub_1001D9444(a1, 0);

    if (v53)
    {
      v1 = v53;
      AppleExertionScale.init(quantity:)();
      v13 = sub_1001A200C(0, 1, 1, _swiftEmptyArrayStorage);
      v2 = v13[2];
      v16 = v13[3];
      v11 = v2 + 1;
      if (v2 < v16 >> 1)
      {
LABEL_37:

        v13[2] = v11;
        sub_100015E80(v7, v13 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v2, &qword_1008DF280);
        return v13;
      }

LABEL_43:
      v13 = sub_1001A200C(v16 > 1, v11, 1, v13);
      goto LABEL_37;
    }

    return _swiftEmptyArrayStorage;
  }

  v7 = [a1 workoutActivities];
  sub_1000059F8(0, &qword_1008EAF90);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v15 >> 62))
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
LABEL_39:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  if (v17 < 1)
  {
    __break(1u);
    goto LABEL_43;
  }

  v61 = a1;
  v18 = 0;
  v19 = v15 & 0xC000000000000001;
  v55 = (v13 + 1);
  v13 = _swiftEmptyArrayStorage;
  v59 = (v11 + 8);
  v60 = v17;
  v20 = &selRef_unitFormatString;
  v62 = v15 & 0xC000000000000001;
  do
  {
    if (v19)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v15 + 8 * v18 + 32);
    }

    v22 = v21;
    v23 = [v21 v20[90]];
    v24 = [v23 activityType];

    if (v24 == 83)
    {

      goto LABEL_7;
    }

    v25 = v15;
    v26 = v1[8];
    v27 = v1;
    if (*(v1 + 72) == 1)
    {
      v28 = v26;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v29 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v30 = v57;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v26, 0);
      (*v55)(v30, v58);
      v28 = v68;
    }

    v31 = v63;
    v32 = v22;
    v33 = v61;
    EffortUtilities.WorkoutAndActivityKey.init(workout:activity:)();
    swift_getKeyPath();
    v68 = v28;
    sub_10007FFB8(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities;
    swift_beginAccess();
    v35 = *&v28[v34];
    if (!*(v35 + 16))
    {

LABEL_25:
      (*v59)(v31, v64);
      v1 = v27;
      v15 = v25;
      goto LABEL_26;
    }

    v36 = sub_1004C5AEC(v31);
    if ((v37 & 1) == 0)
    {

      goto LABEL_25;
    }

    v38 = v31;
    v39 = *(*(v35 + 56) + 8 * v36);
    v40 = v39;

    (*v59)(v38, v64);

    v1 = v27;
    v15 = v25;
    if (v39)
    {
      v41 = v40;
      AppleExertionScale.init(quantity:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v60;
      v20 = &selRef_unitFormatString;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1001A200C(0, v13[2] + 1, 1, v13);
      }

      v44 = v13[2];
      v43 = v13[3];
      if (v44 >= v43 >> 1)
      {
        v13 = sub_1001A200C(v43 > 1, v44 + 1, 1, v13);
      }

      v13[2] = v44 + 1;
      sub_100015E80(v56, v13 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v44, &qword_1008DF280);
      v19 = v62;
      goto LABEL_7;
    }

LABEL_26:
    v45 = type metadata accessor for AppleExertionScale();
    (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v17 = v60;
    v20 = &selRef_unitFormatString;
    if ((v46 & 1) == 0)
    {
      v13 = sub_1001A200C(0, v13[2] + 1, 1, v13);
    }

    v19 = v62;
    v48 = v13[2];
    v47 = v13[3];
    if (v48 >= v47 >> 1)
    {
      v13 = sub_1001A200C(v47 > 1, v48 + 1, 1, v13);
    }

    v13[2] = v48 + 1;
    sub_100015E80(v66, v13 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v48, &qword_1008DF280);
LABEL_7:
    ++v18;
  }

  while (v17 != v18);

  return v13;
}

void *sub_1001EAD9C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DF280);
  v44 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v38 - v5;
  v43 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
  v6 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for EnvironmentValues();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(type metadata accessor for FitnessPlusStackViewModel() + 20));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    v39 = (v9 + 8);
    v14 = &unk_1006D8F30;
    v42 = (v6 + 8);
    v15 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100007C5C(v13, v48);
      sub_100140278(&unk_1008E4E60);
      sub_1000059F8(0, &qword_1008ED7C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_5;
      }

      v18 = v14;
      v19 = v47;
      v20 = *(v45 + 64);
      if (*(v45 + 72) == 1)
      {
        v21 = v20;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v22 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v23 = v40;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000A73A4(v20, 0);
        (*v39)(v23, v41);
        v21 = v48[0];
      }

      v24 = v19;
      EffortUtilities.WorkoutAndActivityKey.init(workout:activity:)();
      swift_getKeyPath();
      v48[0] = v21;
      sub_10007FFB8(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities;
      swift_beginAccess();
      v26 = *&v21[v25];
      if (!*(v26 + 16))
      {
        break;
      }

      v27 = sub_1004C5AEC(v8);
      if ((v28 & 1) == 0)
      {

        goto LABEL_20;
      }

      v29 = *(*(v26 + 56) + 8 * v27);
      v30 = v29;

      (*v42)(v8, v43);

      if (!v29)
      {
        goto LABEL_21;
      }

      v31 = v30;
      AppleExertionScale.init(quantity:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1001A200C(0, v15[2] + 1, 1, v15);
      }

      v33 = v15[2];
      v32 = v15[3];
      if (v33 >= v32 >> 1)
      {
        v15 = sub_1001A200C(v32 > 1, v33 + 1, 1, v15);
      }

      v15[2] = v33 + 1;
      v16 = v15 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v33;
      v17 = v38;
LABEL_4:
      sub_100015E80(v17, v16, &qword_1008DF280);
      v14 = v18;
LABEL_5:
      v13 += 40;
      if (!--v12)
      {
        return v15;
      }
    }

LABEL_20:
    (*v42)(v8, v43);
LABEL_21:
    v34 = type metadata accessor for AppleExertionScale();
    (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1001A200C(0, v15[2] + 1, 1, v15);
    }

    v36 = v15[2];
    v35 = v15[3];
    if (v36 >= v35 >> 1)
    {
      v15 = sub_1001A200C(v35 > 1, v36 + 1, 1, v15);
    }

    v15[2] = v36 + 1;
    v16 = v15 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36;
    v17 = v46;
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001EB3A8@<X0>(uint64_t a1@<X8>)
{
  v141 = a1;
  v2 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v115 - v3;
  v5 = type metadata accessor for FitnessPlusStackViewModel();
  v127 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v7;
  __chkstk_darwin(v6);
  v128 = &v115 - v8;
  v134 = sub_100140278(&qword_1008E0BC8);
  __chkstk_darwin(v134);
  v135 = &v115 - v9;
  HistoryItemView = type metadata accessor for LoadHistoryItemView();
  v130 = *(HistoryItemView - 8);
  __chkstk_darwin(HistoryItemView);
  v131 = v11;
  v133 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for EnvironmentValues();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008EE8E0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v115 - v17;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v126 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v125 = &v115 - v24;
  v25 = __chkstk_darwin(v23);
  v137 = &v115 - v26;
  __chkstk_darwin(v25);
  v136 = &v115 - v27;
  v129 = type metadata accessor for WorkloadListItemStack();
  v28 = __chkstk_darwin(v129);
  v116 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v115 - v30;
  v132 = sub_100140278(&qword_1008E0BD0);
  v32 = __chkstk_darwin(v132);
  v115 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v117 = &v115 - v35;
  v36 = __chkstk_darwin(v34);
  v123 = &v115 - v37;
  __chkstk_darwin(v36);
  v124 = &v115 - v38;
  sub_100007C5C(v1, v143);
  sub_100140278(&unk_1008E4E60);
  sub_1000059F8(0, &qword_1008ED7C0);
  v39 = swift_dynamicCast();
  v138 = v20;
  v139 = v19;
  if (v39)
  {
    v128 = v142;
    v126 = [v142 workoutActivityType];
    sub_100140278(&qword_1008E0B00);
    v140 = v1;
    State.wrappedValue.getter();
    v40 = *(v20 + 48);
    if (v40(v18, 1, v19) == 1)
    {
      AttributedString.init()();
      if (v40(v18, 1, v19) != 1)
      {
        sub_10000EA04(v18, &unk_1008EE8E0);
      }
    }

    else
    {
      (*(v20 + 32))(v136, v18, v19);
    }

    v47 = v128;
    v48 = v140;
    v127 = sub_1001EA53C(v128);
    v49 = *(v48 + 40);
    v50 = [v49 formattedDurationForWorkout:v47 workoutActivity:0 context:@"WorkoutsListDisplayContext"];
    AttributedString.init(_:)();
    static Font.body.getter();
    static Font.Weight.medium.getter();
    v51 = Font.weight(_:)();

    v143[0] = v51;
    sub_10005F988();
    AttributedString.subscript.setter();

    v52 = [v49 formattedDateForWorkout:v47 context:@"WorkoutsListDisplayContext"];
    v53 = [v52 string];

    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v54;

    v55 = *(v48 + 64);
    v56 = v31;
    if (*(v48 + 72) == 1)
    {
      v57 = v55;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v60 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v61 = v120;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v55, 0);
      (*(v121 + 8))(v61, v122);
      v57 = v143[0];
    }

    v62 = v126 == 82;
    LODWORD(v126) = v126 == 82;
    swift_getKeyPath();
    v143[0] = v57;
    sub_10007FFB8(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v63 = v57[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutEffortCacheIsPopulated];

    v64 = v129;
    v65 = *(v129 + 44);
    *&v31[v65] = swift_getKeyPath();
    sub_100140278(&qword_1008EE6A0);
    swift_storeEnumTagMultiPayload();
    *v31 = v62;
    v67 = v138;
    v66 = v139;
    v68 = *(v138 + 16);
    v69 = v136;
    v68(&v31[v64[5]], v136, v139);
    *&v31[v64[6]] = v127;
    v70 = &v31[v64[7]];
    v71 = v137;
    v68(v70, v137, v66);
    v72 = (v56 + v64[8]);
    v73 = v119;
    *v72 = v125;
    v72[1] = v73;
    *(v56 + v64[9]) = (v63 & 1) == 0;

    WorkoutEffort.init(efforts:isGroupWorkout:)();
    v74 = *(v67 + 8);
    v74(v71, v66);
    v74(v69, v66);
    v75 = v133;
    sub_1001ED180(v140, v133, type metadata accessor for LoadHistoryItemView);
    v76 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v77 = (v131 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    sub_1001ED2B4(v75, v78 + v76, type metadata accessor for LoadHistoryItemView);
    *(v78 + v77) = v128;
    v79 = v123;
    sub_1001ED2B4(v56, v123, type metadata accessor for WorkloadListItemStack);
    v80 = (v79 + *(v132 + 36));
    *v80 = sub_1001ED3D8;
    v80[1] = v78;
    v80[2] = 0;
    v80[3] = 0;
    v81 = v124;
    sub_100015E80(v79, v124, &qword_1008E0BD0);
    sub_10001B104(v81, v135, &qword_1008E0BD0);
    swift_storeEnumTagMultiPayload();
    sub_1001ED31C();
    v59 = v141;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v81, &qword_1008E0BD0);
LABEL_22:
    v58 = 0;
    goto LABEL_23;
  }

  sub_100007C5C(v1, v143);
  v41 = swift_dynamicCast();
  v42 = v127[7];
  if (v41)
  {
    v43 = v1;
    v42(v4, 0, 1, v5);
    sub_1001ED2B4(v4, v128, type metadata accessor for FitnessPlusStackViewModel);
    sub_100140278(&qword_1008E0B00);
    State.wrappedValue.getter();
    v45 = v138;
    v44 = v139;
    v46 = *(v138 + 48);
    if (v46(v16, 1, v139) == 1)
    {
      AttributedString.init()();
      if (v46(v16, 1, v44) != 1)
      {
        sub_10000EA04(v16, &unk_1008EE8E0);
      }
    }

    else
    {
      (*(v45 + 32))(v125, v16, v44);
    }

    v82 = v128;
    v137 = sub_1001EAD9C(v128);
    sub_100409544(v82);
    AttributedString.init(_:)();
    v83 = objc_opt_self();
    v84.super.isa = Date._bridgeToObjectiveC()().super.isa;
    if (qword_1008DAAD8 != -1)
    {
      swift_once();
    }

    v85 = [v83 formattedListStringForDate:v84.super.isa font:qword_1008ECA68];

    v86 = [v85 string];
    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v87;

    v88 = *(v43 + 64);
    v140 = v43;
    if (*(v43 + 72) == 1)
    {
      v89 = v88;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v90 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v91 = v120;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v88, 0);
      (*(v121 + 8))(v91, v122);
      v89 = v143[0];
    }

    swift_getKeyPath();
    v143[0] = v89;
    sub_10007FFB8(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LODWORD(v123) = v89[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutEffortCacheIsPopulated];

    v92 = v129;
    v93 = *(v129 + 44);
    KeyPath = swift_getKeyPath();
    v95 = v116;
    *&v116[v93] = KeyPath;
    sub_100140278(&qword_1008EE6A0);
    swift_storeEnumTagMultiPayload();
    *v95 = 1;
    v97 = v138;
    v96 = v139;
    v98 = *(v138 + 16);
    v99 = v125;
    v98(&v95[v92[5]], v125, v139);
    *&v95[v92[6]] = v137;
    v100 = v126;
    v98(&v95[v92[7]], v126, v96);
    v101 = &v95[v92[8]];
    v102 = v124;
    *v101 = v136;
    v101[1] = v102;
    v95[v92[9]] = (v123 & 1) == 0;

    WorkoutEffort.init(efforts:isGroupWorkout:)();
    v103 = *(v97 + 8);
    v103(v100, v96);
    v103(v99, v96);
    v104 = v133;
    sub_1001ED180(v140, v133, type metadata accessor for LoadHistoryItemView);
    v105 = v128;
    v106 = v119;
    sub_1001ED180(v128, v119, type metadata accessor for FitnessPlusStackViewModel);
    v107 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v108 = (v131 + *(v127 + 80) + v107) & ~*(v127 + 80);
    v109 = swift_allocObject();
    sub_1001ED2B4(v104, v109 + v107, type metadata accessor for LoadHistoryItemView);
    sub_1001ED2B4(v106, v109 + v108, type metadata accessor for FitnessPlusStackViewModel);
    v110 = v115;
    sub_1001ED2B4(v95, v115, type metadata accessor for WorkloadListItemStack);
    v111 = (v110 + *(v132 + 36));
    *v111 = sub_1001ED1E8;
    v111[1] = v109;
    v111[2] = 0;
    v111[3] = 0;
    v112 = v117;
    sub_100015E80(v110, v117, &qword_1008E0BD0);
    sub_10001B104(v112, v135, &qword_1008E0BD0);
    swift_storeEnumTagMultiPayload();
    sub_1001ED31C();
    v59 = v141;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v112, &qword_1008E0BD0);
    sub_1001AB550(v105);
    goto LABEL_22;
  }

  v58 = 1;
  v42(v4, 1, 1, v5);
  sub_10000EA04(v4, &qword_1008E0BC0);
  v59 = v141;
LABEL_23:
  v113 = sub_100140278(&qword_1008E0BD8);
  return (*(*(v113 - 8) + 56))(v59, v58, 1, v113);
}

void sub_1001EC57C(void *a1)
{
  v2 = v1;
  HistoryItemView = type metadata accessor for LoadHistoryItemView();
  v21 = *(HistoryItemView - 8);
  __chkstk_darwin(HistoryItemView);
  v22 = v5;
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&unk_1008EE8E0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for AttributedString();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [*(v1 + 40) formattedTypeForWorkout:a1 workoutActivity:0 context:@"WorkoutsListDisplayContext"];
  AttributedString.init(_:)();
  v25 = static Color.white.getter();
  sub_10005FAB0();
  AttributedString.subscript.setter();
  v25 = static Font.body.getter();
  sub_10005F988();
  AttributedString.subscript.setter();
  (*(v13 + 16))(v11, v15, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_10001B104(v11, v9, &unk_1008EE8E0);
  sub_100140278(&qword_1008E0B00);
  State.wrappedValue.setter();
  sub_10000EA04(v11, &unk_1008EE8E0);
  v16 = *(v1 + 56);
  if (sub_10069885C(a1))
  {
    v17 = v23;
    sub_1001ED180(v2, v23, type metadata accessor for LoadHistoryItemView);
    v18 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    sub_1001ED2B4(v17, v19 + v18, type metadata accessor for LoadHistoryItemView);
    sub_100171CD0(a1, sub_1001ED460, v19, v16);

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1001EC944(uint64_t a1, uint64_t a2)
{
  HistoryItemView = type metadata accessor for LoadHistoryItemView();
  v5 = *(HistoryItemView - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(HistoryItemView - 8);
  sub_1001ED180(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadHistoryItemView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1001ED2B4(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LoadHistoryItemView);
  sub_100417014(a2, sub_1001ED53C, v8);
}

uint64_t sub_1001ECA7C(char *a1, void *a2)
{
  v4 = sub_100140278(&unk_1008EE8E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = *&a1[OBJC_IVAR___CHCatalogItemViewModel_title];
    v15 = a1;
    v16 = v14;
    AttributedString.init(_:)();
    v23 = static Color.white.getter();
    sub_10005FAB0();
    AttributedString.subscript.setter();
    v23 = static Font.body.getter();
    sub_10005F988();
    AttributedString.subscript.setter();
    (*(v11 + 16))(v9, v13, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    type metadata accessor for LoadHistoryItemView();
    sub_10001B104(v9, v7, &unk_1008EE8E0);
    sub_100140278(&qword_1008E0B00);
    State.wrappedValue.setter();

    sub_10000EA04(v9, &unk_1008EE8E0);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    static os_log_type_t.error.getter();
    v18 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1006D1F70;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10000A788();
    *(v19 + 32) = 0xD000000000000018;
    *(v19 + 40) = 0x800000010074C540;
    *(v19 + 96) = sub_1000059F8(0, &qword_1008ED7C0);
    *(v19 + 104) = sub_1001ED4D4();
    *(v19 + 72) = a2;
    v20 = v18;
    v21 = a2;
    os_log(_:dso:log:_:_:)();
  }
}