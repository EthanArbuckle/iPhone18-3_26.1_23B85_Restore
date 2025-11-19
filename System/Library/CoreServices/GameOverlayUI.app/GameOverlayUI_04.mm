uint64_t sub_10007CEE0()
{
  v1 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007CFD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GameOverlayUIConfig.ServiceKind() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100011720;

  return sub_10007BB88(a1, v9, v10, v1 + v6, v11, v12);
}

unint64_t sub_10007D124()
{
  result = qword_100130260;
  if (!qword_100130260)
  {
    type metadata accessor for GameOverlayUIConfig.SharedResources();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130260);
  }

  return result;
}

uint64_t sub_10007D17C()
{

  return swift_deallocObject();
}

uint64_t sub_10007D1D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10007D1F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007D210()
{

  return swift_deallocObject();
}

uint64_t sub_10007D290(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100131110, &unk_1000EC870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007D398@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OverlayTabBar();
  sub_1000035B4(v1 + *(v12 + 20), v11, &qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for LayoutDirection();
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

uint64_t sub_10007D5A0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_100132570, &unk_1000E9C70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OverlayTabBar();
  sub_1000035B4(v1 + *(v12 + 24), v11, &qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DynamicTypeSize();
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

uint64_t sub_10007D7A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&unk_100132500, &unk_1000EA640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for OverlayTabBar();
  sub_1000035B4(v1 + *(v12 + 28), v11, &unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10007A9C0(v11, a1);
  }

  v14 = *v11;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

double sub_10007D980()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for OverlayTabBar() + 32);
  v8 = *v6;
  v7 = *(v6 + 8);
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (*(v6 + 32) == 1)
  {
    return *v6;
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_10008A7A0(v8, v7, v10, v9, 0);
  (*(v2 + 8))(v5, v1);
  return v13;
}

uint64_t sub_10007DB0C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  __chkstk_darwin(v1);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002B38(&qword_10012E1A0, &qword_1000EC1F0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v50 = &v48 - v7;
  v8 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v48 - v12;
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_100002B38(&qword_100130678, &qword_1000ECA98);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v48 - v18;
  v20 = type metadata accessor for Margins();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for PageLayout.MarginSpec();
  v55 = *(v28 - 8);
  v56 = v28;
  v29 = *(v55 + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = enum case for Margins.overlay(_:);
  v34 = *(v21 + 104);
  (v34)(v27, enum case for Margins.overlay(_:), v20, v30);
  v34(v24, v33, v20);
  v35 = v51;
  v36 = v52;
  v37 = type metadata accessor for GSKShelf.DisplayStyle();
  (*(*(v37 - 8) + 56))(v19, 1, 1, v37);
  v54 = v32;
  v38 = v50;
  PageLayout.MarginSpec.init(pageMargins:shelfMargins:shelfDisplayStyle:)();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  sub_10007D7A8(v15);
  v39 = v58;
  (*(v35 + 104))(v58, enum case for UserInterfaceSizeClass.compact(_:), v36);
  (*(v35 + 56))(v39, 0, 1, v36);
  v40 = *(v5 + 56);
  sub_1000035B4(v15, v38, &qword_100132550, &qword_1000EC170);
  sub_1000035B4(v39, v38 + v40, &qword_100132550, &qword_1000EC170);
  v41 = *(v35 + 48);
  if (v41(v38, 1, v36) != 1)
  {
    sub_1000035B4(v38, v53, &qword_100132550, &qword_1000EC170);
    if (v41(v38 + v40, 1, v36) != 1)
    {
      v42 = v38 + v40;
      v43 = v49;
      (*(v35 + 32))(v49, v42, v36);
      sub_10008DB20(&qword_10012E1C8, &type metadata accessor for UserInterfaceSizeClass);
      v44 = v53;
      dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v35 + 8);
      v45(v43, v36);
      sub_100005688(v58, &qword_100132550, &qword_1000EC170);
      sub_100005688(v15, &qword_100132550, &qword_1000EC170);
      v45(v44, v36);
      sub_100005688(v38, &qword_100132550, &qword_1000EC170);
      goto LABEL_8;
    }

    sub_100005688(v58, &qword_100132550, &qword_1000EC170);
    sub_100005688(v15, &qword_100132550, &qword_1000EC170);
    (*(v35 + 8))(v53, v36);
    goto LABEL_6;
  }

  sub_100005688(v39, &qword_100132550, &qword_1000EC170);
  sub_100005688(v15, &qword_100132550, &qword_1000EC170);
  if (v41(v38 + v40, 1, v36) != 1)
  {
LABEL_6:
    sub_100005688(v38, &qword_10012E1A0, &qword_1000EC1F0);
    goto LABEL_8;
  }

  sub_100005688(v38, &qword_100132550, &qword_1000EC170);
LABEL_8:
  sub_10007D980();
  sub_10007D980();
  static PageLayout.MarginSpec.maxContainerWidth.getter();
  v46 = v54;
  PageLayout.MarginSpec.resolve(in:isVerticalSizeClassCompact:hasHorizontalSafeArea:maxContainerWidth:)();
  return (*(v55 + 8))(v46, v56);
}

uint64_t sub_10007E1E4@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v64 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v2 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v63 = &v53 - v3;
  v4 = type metadata accessor for OverlayTabBar();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v66 = v4 - 8;
  __chkstk_darwin(v4);
  v9 = v8;
  v10 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_100130580, &qword_1000EC9C8);
  v56 = v11;
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v53 - v13;
  v15 = sub_100002B38(&qword_100130588, &qword_1000EC9D0);
  v16 = *(v15 - 8);
  v59 = v15;
  v60 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v68 = &v53 - v18;
  v19 = sub_100002B38(&qword_100130590, &qword_1000EC9D8);
  v20 = *(v19 - 8);
  v61 = v19;
  v62 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v67 = &v53 - v22;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v23 = sub_100002B38(&qword_100130598, &qword_1000EC9E0);
  sub_10007E8A4(v1, &v14[*(v23 + 44)]);
  v24 = &v14[*(sub_100002B38(&qword_1001305A0, &qword_1000EC9E8) + 36)];
  static ShapeStyle<>.componentForeground.getter();
  v25 = v1;
  sub_10008CEA4(v1, v10, type metadata accessor for OverlayTabBar);
  v26 = *(v6 + 80);
  v27 = (v26 + 16) & ~v26;
  v55 = v9;
  v28 = v26;
  v29 = swift_allocObject();
  sub_10008A7AC(v10, v29 + v27);
  v30 = &v14[*(v11 + 36)];
  *v30 = sub_10007FC78;
  *(v30 + 1) = 0;
  *(v30 + 2) = sub_10008A810;
  *(v30 + 3) = v29;
  v31 = v25 + *(v5 + 52);
  v32 = v25;
  v33 = *v31;
  v34 = *(v31 + 8);
  LOBYTE(v31) = *(v31 + 16);
  LOBYTE(v69) = v33;
  v70 = v34;
  LOBYTE(v71) = v31;
  sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
  FocusState.wrappedValue.getter();
  LOBYTE(v69) = v73;
  v54 = v10;
  v58 = type metadata accessor for OverlayTabBar;
  sub_10008CEA4(v25, v10, type metadata accessor for OverlayTabBar);
  v57 = v28;
  v35 = swift_allocObject();
  sub_10008A7AC(v10, v35 + v27);
  v36 = sub_10008A880();
  v37 = v56;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v14, &qword_100130580, &qword_1000EC9C8);
  v38 = v25 + *(v66 + 48);
  v39 = *v38;
  v40 = *(v38 + 8);
  LOBYTE(v38) = *(v38 + 16);
  LOBYTE(v69) = v39;
  v70 = v40;
  LOBYTE(v71) = v38;
  FocusState.wrappedValue.getter();
  v41 = v54;
  sub_10008CEA4(v32, v54, type metadata accessor for OverlayTabBar);
  v42 = swift_allocObject();
  sub_10008A7AC(v41, v42 + v27);
  v69 = v37;
  v70 = &type metadata for Bool;
  v71 = v36;
  v72 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v59;
  v45 = v68;
  View.onChange<A>(of:initial:_:)();

  v46 = v44;
  (*(v60 + 8))(v45, v44);
  v47 = *(v66 + 44);
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  v48 = v63;
  FocusState.wrappedValue.getter();
  sub_10008CEA4(v32, v41, v58);
  v49 = swift_allocObject();
  sub_10008A7AC(v41, v49 + v27);
  v69 = v46;
  v70 = &type metadata for Bool;
  v71 = OpaqueTypeConformance2;
  v72 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_10008AA7C(&qword_1001305D8, &qword_10012FB98);
  v50 = v61;
  v51 = v67;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v48, &qword_10012E650, &qword_1000EDA30);
  return (*(v62 + 8))(v51, v50);
}

uint64_t sub_10007E8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = *(v103 + 64);
  __chkstk_darwin(v3);
  v102 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for FocusInteractions();
  v87 = *(v89 - 8);
  v6 = *(v87 + 64);
  __chkstk_darwin(v89);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100002B38(&qword_1001305E0, &qword_1000ECA28);
  v84 = *(v86 - 8);
  v8 = *(v84 + 64);
  __chkstk_darwin(v86);
  v10 = &v82 - v9;
  v93 = sub_100002B38(&qword_1001305E8, &qword_1000ECA30);
  v90 = *(v93 - 8);
  v11 = *(v90 + 64);
  __chkstk_darwin(v93);
  v83 = &v82 - v12;
  v97 = sub_100002B38(&qword_1001305F0, &qword_1000ECA38);
  v91 = *(v97 - 8);
  v13 = *(v91 + 64);
  __chkstk_darwin(v97);
  v88 = &v82 - v14;
  v101 = sub_100002B38(&qword_1001305F8, &qword_1000ECA40);
  v98 = *(v101 - 8);
  v15 = *(v98 + 64);
  __chkstk_darwin(v101);
  v95 = &v82 - v16;
  v17 = sub_100002B38(&qword_100130600, &qword_1000ECA48);
  v99 = *(v17 - 8);
  v100 = v17;
  v18 = *(v99 + 64);
  __chkstk_darwin(v17);
  v96 = &v82 - v19;
  v20 = sub_100002B38(&qword_100130608, &qword_1000ECA50);
  v106 = *(v20 - 8);
  v107 = v20;
  v21 = *(v106 + 64);
  __chkstk_darwin(v20);
  v94 = &v82 - v22;
  v23 = sub_100002B38(&qword_100130610, &qword_1000ECA58);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v108 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v82 - v27;
  v29 = type metadata accessor for PageLayout.ResolvedMarginSpec();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100002B38(&qword_100130618, &qword_1000ECA60);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v105 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v82 - v39;
  sub_10007F44C(&v82 - v39);
  v41 = static Edge.Set.horizontal.getter();
  sub_10007DB0C(v33);
  PageLayout.ResolvedMarginSpec.horizontalMargin.getter();
  (*(v30 + 8))(v33, v29);
  EdgeInsets.init(_all:)();
  v42 = &v40[*(v35 + 44)];
  *v42 = v41;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = type metadata accessor for OverlayTabBar();
  v48 = *(v47 + 48);
  v92 = a1;
  v49 = (a1 + v48);
  v50 = *v49;
  v51 = *(v49 + 1);
  LOBYTE(v111) = v50;
  v112 = v51;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v110 == 1)
  {
    sub_100002B38(&qword_100130628, &qword_1000ECA70);
    v52 = sub_100005144(&qword_100130630, &qword_1000ECA78);
    v53 = sub_10008AB20();
    v111 = v52;
    v112 = v53;
    swift_getOpaqueTypeConformance2();
    v54 = v10;
    Button.init(action:label:)();
    v82 = v47;
    v55 = v85;
    static FocusInteractions.automatic.getter();
    v56 = sub_1000057D8(&qword_100130670, &qword_1001305E0, &qword_1000ECA28);
    v57 = v83;
    v58 = v86;
    View.componentFocusable(_:interactions:)();
    (*(v87 + 8))(v55, v89);
    (*(v84 + 8))(v54, v58);
    v59 = v102;
    PlainButtonStyle.init()();
    v111 = v58;
    v112 = v56;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = sub_10008DB20(&qword_10012CE30, &type metadata accessor for PlainButtonStyle);
    v62 = v88;
    v63 = v93;
    v64 = v104;
    View.buttonStyle<A>(_:)();
    (*(v103 + 8))(v59, v64);
    (*(v90 + 8))(v57, v63);
    v111 = v63;
    v112 = v64;
    v113 = OpaqueTypeConformance2;
    v114 = v61;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v95;
    v67 = v97;
    View.focusEffectDisabled(_:)();
    (*(v91 + 8))(v62, v67);
    v68 = (v92 + *(v82 + 44));
    v69 = *v68;
    v70 = *(v68 + 1);
    LOBYTE(v68) = v68[16];
    LOBYTE(v111) = v69;
    v112 = v70;
    LOBYTE(v113) = v68;
    sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
    FocusState.projectedValue.getter();
    v111 = v67;
    v112 = v65;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = v96;
    v73 = v101;
    View.focused(_:)();

    (*(v98 + 8))(v66, v73);
    v111 = v73;
    v112 = v71;
    swift_getOpaqueTypeConformance2();
    v74 = v94;
    v75 = v100;
    View.accessibilityHidden(_:)();
    (*(v99 + 8))(v72, v75);
    sub_100014830(v74, v28, &qword_100130608, &qword_1000ECA50);
    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  (*(v106 + 56))(v28, v76, 1, v107);
  v77 = v105;
  sub_1000035B4(v40, v105, &qword_100130618, &qword_1000ECA60);
  v78 = v108;
  sub_1000035B4(v28, v108, &qword_100130610, &qword_1000ECA58);
  v79 = v109;
  sub_1000035B4(v77, v109, &qword_100130618, &qword_1000ECA60);
  v80 = sub_100002B38(&qword_100130620, &qword_1000ECA68);
  sub_1000035B4(v78, v79 + *(v80 + 48), &qword_100130610, &qword_1000ECA58);
  sub_100005688(v28, &qword_100130610, &qword_1000ECA58);
  sub_100005688(v40, &qword_100130618, &qword_1000ECA60);
  sub_100005688(v78, &qword_100130610, &qword_1000ECA58);
  return sub_100005688(v77, &qword_100130618, &qword_1000ECA60);
}

uint64_t sub_10007F44C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v66 = sub_100002B38(&qword_100130680, &qword_1000ECAA0);
  v3 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v65 = &v65 - v4;
  v68 = sub_100002B38(&qword_100130688, &qword_1000ECAA8);
  v5 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v67 = (&v65 - v6);
  v70 = sub_100002B38(&qword_100130690, &qword_1000ECAB0);
  v7 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v9 = &v65 - v8;
  v69 = sub_100002B38(&qword_100130698, &qword_1000ECAB8);
  v10 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v12 = (&v65 - v11);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v2;
  v19 = *(v2 + 8);

  if ((v19 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v17, v13);
    v18 = v72;
  }

  swift_getKeyPath();
  v72 = v18;
  sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v18 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout);

  if (v21 == 1)
  {
    v22 = static HorizontalAlignment.center.getter();
    v23 = static VerticalAlignment.lastTextBaseline.getter();
    *v12 = v22;
    v12[1] = v23;
    v24 = sub_100002B38(&qword_100130720, &qword_1000ECB20);
    sub_1000804D8(v12 + *(v24 + 44));
    sub_1000035B4(v12, v9, &qword_100130698, &qword_1000ECAB8);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_1001306E0, &qword_100130698, &qword_1000ECAB8);
    sub_10008AE60();
    _ConditionalContent<>.init(storage:)();
    v25 = v12;
    v26 = &qword_100130698;
    v27 = &qword_1000ECAB8;
  }

  else
  {
    v28 = static VerticalAlignment.lastTextBaseline.getter();
    v29 = v67;
    *v67 = v28;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = sub_100002B38(&qword_1001306A0, &qword_1000ECAE8);
    sub_100082238((v29 + *(v30 + 44)));
    v31 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v29 + *(sub_100002B38(&qword_1001306A8, &qword_1000ECAF0) + 36);
    *v40 = v31;
    *(v40 + 8) = v33;
    *(v40 + 16) = v35;
    *(v40 + 24) = v37;
    *(v40 + 32) = v39;
    *(v40 + 40) = 0;
    v41 = static Alignment.center.getter();
    v43 = v42;
    v44 = v29 + *(sub_100002B38(&qword_1001306B0, &qword_1000ECAF8) + 36);
    v45 = static Color.clear.getter();
    v46 = v65;
    v47 = &v65[*(v66 + 36)];
    v48 = &v47[*(sub_100002B38(&qword_10012EDD8, &qword_1000EB1D8) + 40)];
    static ContentShapeKinds.interaction.getter();
    *v47 = 0;
    *v46 = v45;
    *(v46 + 8) = 1;
    sub_10008AD24();
    View.onTapGesture(count:perform:)();
    sub_100005688(v46, &qword_100130680, &qword_1000ECAA0);
    v49 = (v44 + *(sub_100002B38(&qword_1001306D0, &qword_1000ECB08) + 36));
    *v49 = v41;
    v49[1] = v43;
    LOBYTE(v41) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v29 + *(sub_100002B38(&qword_1001306D8, &qword_1000ECB10) + 36);
    *v58 = v41;
    *(v58 + 8) = v51;
    *(v58 + 16) = v53;
    *(v58 + 24) = v55;
    *(v58 + 32) = v57;
    *(v58 + 40) = 0;
    LOBYTE(v41) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v59 = v29 + *(v68 + 36);
    *v59 = v41;
    *(v59 + 8) = v60;
    *(v59 + 16) = v61;
    *(v59 + 24) = v62;
    *(v59 + 32) = v63;
    *(v59 + 40) = 0;
    sub_1000035B4(v29, v9, &qword_100130688, &qword_1000ECAA8);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_1001306E0, &qword_100130698, &qword_1000ECAB8);
    sub_10008AE60();
    _ConditionalContent<>.init(storage:)();
    v25 = v29;
    v26 = &qword_100130688;
    v27 = &qword_1000ECAA8;
  }

  return sub_100005688(v25, v26, v27);
}

uint64_t sub_10007FAB4()
{
  v0 = static Color.clear.getter();
  v1 = static Color.clear.getter();
  v2 = static Edge.Set.all.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[103] = v23;
  *&v15[7] = v17;
  *&v15[23] = v18;
  *&v15[39] = v19;
  v3 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  *&v10[73] = *&v15[64];
  *&v10[89] = *&v15[80];
  *&v10[105] = *&v15[96];
  *&v10[9] = *v15;
  *&v10[25] = *&v15[16];
  *&v10[41] = *&v15[32];
  v16 = 0;
  *&v9 = v0;
  WORD4(v9) = 256;
  *v10 = v1;
  v10[8] = v2;
  *&v10[120] = *(&v23 + 1);
  *&v10[57] = *&v15[48];
  LOBYTE(v11) = v3;
  *(&v11 + 1) = v4;
  *v12 = v5;
  *&v12[8] = v6;
  *&v12[16] = v7;
  v12[24] = 0;
  sub_100002B38(&qword_100130630, &qword_1000ECA78);
  sub_10008AB20();
  View.focusable(_:)();
  v13[8] = *&v10[112];
  v13[9] = v11;
  v14[0] = *v12;
  *(v14 + 9) = *&v12[9];
  v13[4] = *&v10[48];
  v13[5] = *&v10[64];
  v13[6] = *&v10[80];
  v13[7] = *&v10[96];
  v13[0] = v9;
  v13[1] = *v10;
  v13[2] = *&v10[16];
  v13[3] = *&v10[32];
  return sub_100005688(v13, &qword_100130630, &qword_1000ECA78);
}

uint64_t sub_10007FC78@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10007FCA4(double *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *a2;
  v16 = *(a2 + 8);

  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v13, v9);
  }

  sub_10007D5A0(v8);
  sub_10007725C(v14);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10007FEB4()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for OverlayTabBar();
  v20 = v0 + v19[11];
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v20) = v20[16];
  LOBYTE(v54) = v21;
  v55 = v22;
  v56 = v20;
  v53 = sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
  FocusState.wrappedValue.getter();
  if (v57 == 1)
  {
    v23 = v0 + v19[12];
    v24 = *v23;
    v25 = *(v23 + 1);
    LOBYTE(v54) = v24;
    v55 = v25;
    v57 = 0;
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.setter();
    v26 = *v0;
    v27 = *(v0 + 8);

    if ((v27 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      v51 = v12;
      v29 = v3;
      v30 = v28;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v29 + 8))(v6, v2);
      v12 = v51;
      v26 = v54;
    }

    swift_getKeyPath();
    v54 = v26;
    sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
    swift_beginAccess();
    v32 = type metadata accessor for StoreTab();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v18, v26 + v31, v32);

    (*(v33 + 56))(v18, 0, 1, v32);
    v34 = v19[9];
    sub_1000035B4(v18, v15, &qword_10012E650, &qword_1000EDA30);
    sub_100002B38(&qword_100130468, &qword_1000EC940);
    FocusState.wrappedValue.setter();
    sub_100005688(v18, &qword_10012E650, &qword_1000EDA30);
  }

  v35 = v1 + v19[12];
  v36 = *v35;
  v37 = *(v35 + 1);
  v57 = *v35;
  v58 = v37;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v60 == 1)
  {
    v38 = v19[9];
    sub_100002B38(&qword_100130468, &qword_1000EC940);
    FocusState.wrappedValue.getter();
    v39 = type metadata accessor for StoreTab();
    LODWORD(v38) = (*(*(v39 - 8) + 48))(v12, 1, v39);
    sub_100005688(v12, &qword_10012E650, &qword_1000EDA30);
    if (v38 != 1)
    {
      goto LABEL_8;
    }

    v40 = v1 + v19[10];
    v41 = *v40;
    v42 = *(v40 + 1);
    LOBYTE(v40) = v40[16];
    v57 = v41;
    v58 = v42;
    v59 = v40;
    FocusState.wrappedValue.getter();
    if (v60 == 1)
    {
LABEL_8:
      v57 = v36;
      v58 = v37;
      v60 = 0;
      return State.wrappedValue.setter();
    }
  }

  v57 = v36;
  v58 = v37;
  result = State.wrappedValue.getter();
  if ((v60 & 1) == 0)
  {
    v44 = v19[9];
    sub_100002B38(&qword_100130468, &qword_1000EC940);
    v45 = v52;
    FocusState.wrappedValue.getter();
    v46 = type metadata accessor for StoreTab();
    LODWORD(v44) = (*(*(v46 - 8) + 48))(v45, 1, v46);
    result = sub_100005688(v45, &qword_10012E650, &qword_1000EDA30);
    if (v44 == 1)
    {
      v47 = v1 + v19[10];
      v48 = *v47;
      v49 = *(v47 + 1);
      LOBYTE(v47) = v47[16];
      v57 = v48;
      v58 = v49;
      v59 = v47;
      result = FocusState.wrappedValue.getter();
      if ((v60 & 1) == 0)
      {
        v57 = v36;
        v58 = v37;
        v60 = 1;
        return State.wrappedValue.setter();
      }
    }
  }

  return result;
}

uint64_t sub_1000804D8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = type metadata accessor for LayoutDirection();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  __chkstk_darwin(v1);
  v38 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100002B38(&qword_100130728, &qword_1000ECB28);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v38 - v8;
  v9 = sub_100002B38(&qword_100130730, &qword_1000ECB30);
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_100002B38(&qword_100130738, &qword_1000ECB38);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  *v23 = static VerticalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = &v23[*(sub_100002B38(&qword_100130740, &qword_1000ECB40) + 44)];
  sub_100080930(v16);
  v25 = v10[2];
  v25(v13, v16, v9);
  v25(v24, v13, v9);
  v26 = &v24[*(sub_100002B38(&qword_100130748, &qword_1000ECB48) + 48)];
  *v26 = 0;
  v26[8] = 1;
  v27 = v10[1];
  v27(v16, v9);
  v27(v13, v9);
  v28 = v38;
  sub_10007D398(v38);
  v29 = v45;
  sub_1000812C4(v28, v45);
  (*(v42 + 8))(v28, v43);
  sub_1000035B4(v23, v20, &qword_100130738, &qword_1000ECB38);
  v30 = v39;
  v31 = v40;
  v32 = *(v40 + 16);
  v33 = v41;
  v32(v39, v29, v41);
  v34 = v44;
  sub_1000035B4(v20, v44, &qword_100130738, &qword_1000ECB38);
  v35 = sub_100002B38(&qword_100130750, &qword_1000ECB50);
  v32((v34 + *(v35 + 48)), v30, v33);
  v36 = *(v31 + 8);
  v36(v45, v33);
  sub_100005688(v23, &qword_100130738, &qword_1000ECB38);
  v36(v30, v33);
  return sub_100005688(v20, &qword_100130738, &qword_1000ECB38);
}

uint64_t sub_100080930@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for AutomationSemantics();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  __chkstk_darwin(v2);
  v72 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoundedRectangle();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for FillFocusButtonStyle();
  v68 = *(v67 - 8);
  v10 = *(v68 + 64);
  __chkstk_darwin(v67);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OverlayTabBar();
  v14 = *(v13 - 8);
  v73 = v13 - 8;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v60 = sub_100002B38(&qword_1001308D0, &qword_1000ECCE0);
  v63 = *(v60 - 8);
  v16 = *(v63 + 64);
  __chkstk_darwin(v60);
  v18 = &v57 - v17;
  v66 = sub_100002B38(&qword_1001308D8, &qword_1000ECCE8);
  v64 = *(v66 - 8);
  v19 = *(v64 + 64);
  __chkstk_darwin(v66);
  v58 = &v57 - v20;
  v61 = sub_100002B38(&qword_1001308E0, &qword_1000ECCF0);
  v21 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v23 = &v57 - v22;
  v69 = sub_100002B38(&qword_1001308E8, &qword_1000ECCF8);
  v70 = *(v69 - 8);
  v24 = *(v70 + 64);
  __chkstk_darwin(v69);
  v59 = &v57 - v25;
  v71 = sub_100002B38(&qword_1001308F0, &qword_1000ECD00);
  v26 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v65 = &v57 - v27;
  v62 = v1;
  sub_10008CEA4(v1, &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayTabBar);
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v29 = swift_allocObject();
  sub_10008A7AC(&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v77 = v1;
  sub_100002B38(&qword_1001308F8, &qword_1000ECD08);
  v30 = sub_100005144(&qword_100130900, &qword_1000ECD10);
  v31 = sub_10008CDC0();
  *&v79 = v30;
  *(&v79 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v32 = *(v6 + 28);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  (*(*(v34 - 8) + 104))(&v9[v32], v33, v34);
  __asm { FMOV            V0.2D, #12.0 }

  *v9 = _Q0;
  v40 = type metadata accessor for RoundedRectangle._Inset();
  v78[3] = v40;
  v78[4] = sub_10008DB20(&qword_100130930, &type metadata accessor for RoundedRectangle._Inset);
  v41 = sub_100012854(v78);
  sub_10008CEA4(v9, v41, &type metadata accessor for RoundedRectangle);
  *(v41 + *(v40 + 20)) = 0xC024000000000000;
  sub_10008CF0C(v9);
  static Color.focusColor.getter();
  Color.opacity(_:)();

  FillFocusButtonStyle.init(id:shape:color:)();
  sub_1000057D8(&qword_100130938, &qword_1001308D0, &qword_1000ECCE0);
  sub_10008DB20(&qword_1001307F8, &type metadata accessor for FillFocusButtonStyle);
  v42 = v58;
  v43 = v60;
  v44 = v67;
  View.buttonStyle<A>(_:)();
  (*(v68 + 8))(v12, v44);
  (*(v63 + 8))(v18, v43);
  *(&v80 + 1) = &type metadata for GameOverlayUIFeatureFlags;
  v81 = sub_10003F1EC();
  LOBYTE(v79) = 0;
  LOBYTE(v40) = isFeatureEnabled(_:)();
  sub_10002E6CC(&v79);
  if (v40)
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 0.0;
  }

  (*(v64 + 32))(v23, v42, v66);
  v46 = v61;
  *&v23[*(v61 + 36)] = v45;
  *(&v80 + 1) = &type metadata for String;
  *&v79 = 0xD000000000000011;
  *(&v79 + 1) = 0x80000001000E7590;
  v47 = v72;
  static AutomationSemantics.tabBar(tabName:)();
  sub_10002E6CC(&v79);
  v48 = sub_10008CF68();
  v49 = v59;
  View.automationSemantics(_:)();
  (*(v74 + 8))(v47, v75);
  sub_100005688(v23, &qword_1001308E0, &qword_1000ECCF0);
  *&v79 = static GameStoreKitLocalizedStrings.GAME_MODE_TITLE()();
  *(&v79 + 1) = v50;
  v78[0] = v46;
  v78[1] = v48;
  swift_getOpaqueTypeConformance2();
  sub_10000548C();
  v51 = v65;
  v52 = v69;
  View.accessibilityLabel<A>(_:)();

  (*(v70 + 8))(v49, v52);
  v53 = v62 + *(v73 + 48);
  v54 = *v53;
  v55 = *(v53 + 8);
  LOBYTE(v53) = *(v53 + 16);
  LOBYTE(v79) = v54;
  *(&v79 + 1) = v55;
  LOBYTE(v80) = v53;
  sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
  FocusState.projectedValue.getter();
  sub_10008D0B4();
  View.focused(_:)();

  return sub_100005688(v51, &qword_1001308F0, &qword_1000ECD00);
}

uint64_t sub_1000812C4@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v120 = a1;
  v113 = a2;
  v110 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v4 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v107 = &v92 - v5;
  v103 = type metadata accessor for StoreTab();
  v99 = *(v103 - 8);
  v6 = *(v99 + 64);
  __chkstk_darwin(v103);
  v97 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OverlayTabBar();
  v124 = *(v8 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v8);
  v122 = v10;
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnvironmentValues();
  v96 = *(v12 - 8);
  v13 = v96[8];
  __chkstk_darwin(v12);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002B38(&qword_100130758, &qword_1000ECB58);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v92 - v18;
  v115 = sub_100002B38(&qword_100130760, &qword_1000ECB60);
  v20 = *(*(v115 - 1) + 64);
  __chkstk_darwin(v115);
  OpaqueTypeConformance2 = &v92 - v21;
  v101 = sub_100002B38(&qword_100130768, &qword_1000ECB68);
  v98 = *(v101 - 8);
  v22 = *(v98 + 64);
  __chkstk_darwin(v101);
  v117 = &v92 - v23;
  v105 = sub_100002B38(&qword_100130770, &qword_1000ECB70);
  v102 = *(v105 - 8);
  v24 = *(v102 + 64);
  __chkstk_darwin(v105);
  v100 = &v92 - v25;
  v108 = sub_100002B38(&qword_100130778, &qword_1000ECB78);
  v106 = *(v108 - 8);
  v26 = *(v106 + 64);
  __chkstk_darwin(v108);
  v104 = &v92 - v27;
  v112 = sub_100002B38(&qword_100130780, &qword_1000ECB80);
  v111 = *(v112 - 8);
  v28 = *(v111 + 64);
  __chkstk_darwin(v112);
  v109 = &v92 - v29;
  v30 = static VerticalAlignment.lastTextBaseline.getter();
  v116 = type metadata accessor for OverlayCallCenter();
  static OverlayCallCenter.shared.getter();
  v31 = OverlayCallCenter.hasActiveCalls.getter();

  v32 = 72;
  if (v31)
  {
    v32 = 76;
  }

  v119 = v8;
  v33 = *(v2 + *(v8 + v32));
  *v19 = v30;
  *(v19 + 1) = v33;
  v19[16] = 0;
  v34 = *v2;
  v95 = *(v2 + 8);
  v94 = v12;
  v93 = v15;
  if (v95 == 1)
  {
    v126 = v34;

    v36 = v34;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (v96[1])(v15, v12);
    v36 = v126;
  }

  v37 = *(sub_100002B38(&qword_100130788, &unk_1000ECB88) + 44);
  v38 = *(v36 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

  v126 = v38;
  swift_getKeyPath();
  v121 = v3;
  sub_10008CEA4(v3, v11, type metadata accessor for OverlayTabBar);
  v39 = *(v124 + 80);
  v40 = (v39 + 16) & ~v39;
  v122 += v40;
  v123 = v39;
  v41 = swift_allocObject();
  v124 = v40;
  v118 = v11;
  sub_10008A7AC(v11, v41 + v40);
  sub_100002B38(&qword_10012E658, &qword_1000EAB00);
  sub_100002B38(&qword_100130790, &qword_1000ECBB0);
  sub_1000057D8(&qword_100130798, &qword_10012E658, &qword_1000EAB00);
  sub_10008DB20(&qword_100130450, &type metadata accessor for StoreTab);
  sub_10008B168();
  ForEach<>.init(_:id:content:)();
  KeyPath = swift_getKeyPath();
  v43 = OpaqueTypeConformance2;
  v44 = &OpaqueTypeConformance2[v115[9]];
  v45 = *(sub_100002B38(&qword_100130808, &qword_1000ECBE8) + 28);
  v46 = type metadata accessor for LayoutDirection();
  (*(*(v46 - 8) + 16))(v44 + v45, v120, v46);
  *v44 = KeyPath;
  sub_100014830(v19, v43, &qword_100130758, &qword_1000ECB58);

  if ((v95 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v48 = v93;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (v96[1])(v48, v94);
    v34 = v126;
  }

  swift_getKeyPath();
  v126 = v34;
  sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v50 = v99;
  v51 = v97;
  v52 = v103;
  (*(v99 + 16))(v97, v34 + v49, v103);

  v120 = type metadata accessor for OverlayTabBar;
  v53 = v121;
  v54 = v118;
  sub_10008CEA4(v121, v118, type metadata accessor for OverlayTabBar);
  v55 = swift_allocObject();
  sub_10008A7AC(v54, v55 + v124);
  v56 = sub_10008B5E0();
  v96 = &protocol conformance descriptor for StoreTab;
  v57 = sub_10008DB20(&qword_10012FB98, &type metadata accessor for StoreTab);
  v58 = OpaqueTypeConformance2;
  v59 = v115;
  View.onChange<A>(of:initial:_:)();

  (*(v50 + 8))(v51, v52);
  sub_100005688(v58, &qword_100130760, &qword_1000ECB60);
  v60 = *(v119 + 36);
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  v61 = v107;
  FocusState.wrappedValue.getter();
  v62 = v53;
  v63 = v120;
  sub_10008CEA4(v62, v54, v120);
  v64 = swift_allocObject();
  sub_10008A7AC(v54, v64 + v124);
  v126 = v59;
  v127 = v52;
  v128 = v56;
  v129 = v57;
  v115 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = sub_10008AA7C(&qword_1001305D8, &qword_10012FB98);
  v66 = v100;
  v67 = v101;
  v68 = v110;
  v69 = v117;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v61, &qword_10012E650, &qword_1000EDA30);
  (*(v98 + 8))(v69, v67);
  static OverlayCallCenter.shared.getter();
  LOBYTE(v50) = OverlayCallCenter.hasActiveCalls.getter();

  LOBYTE(v125) = v50 & 1;
  v70 = v54;
  sub_10008CEA4(v121, v54, v63);
  v71 = swift_allocObject();
  v72 = v124;
  sub_10008A7AC(v70, v71 + v124);
  v126 = v67;
  v127 = v68;
  v128 = OpaqueTypeConformance2;
  v129 = v65;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v104;
  v75 = v105;
  View.onChange<A>(of:initial:_:)();

  (*(v102 + 8))(v66, v75);
  static OverlayCallCenter.shared.getter();
  v76 = OverlayCallCenter.callInvitesCount.getter();

  v125 = v76;
  v77 = v121;
  v78 = v118;
  sub_10008CEA4(v121, v118, v120);
  v79 = swift_allocObject() + v72;
  v80 = v78;
  sub_10008A7AC(v78, v79);
  v126 = v75;
  v127 = &type metadata for Bool;
  v128 = v73;
  v129 = &protocol witness table for Bool;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v109;
  v83 = v108;
  View.onChange<A>(of:initial:_:)();

  (*(v106 + 8))(v74, v83);
  v84 = (v77 + *(v119 + 52));
  v86 = *v84;
  v85 = v84[1];
  v126 = v86;
  v127 = v85;
  sub_100002B38(&qword_100130828, &qword_1000ECBF0);
  State.wrappedValue.getter();
  v87 = v125;
  v88 = GameControllerObserver.controller.getter();

  v125 = v88;
  sub_10008CEA4(v77, v80, v120);
  v89 = swift_allocObject();
  sub_10008A7AC(v80, v89 + v124);
  sub_100002B38(&qword_100130830, &unk_1000ECF10);
  v126 = v83;
  v127 = &type metadata for Int;
  v128 = v81;
  v129 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  sub_10008B8B4();
  v90 = v112;
  View.onChange<A>(of:initial:_:)();

  return (*(v111 + 8))(v82, v90);
}

uint64_t sub_100082238@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for LayoutDirection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_100002B38(&qword_100130728, &qword_1000ECB28);
  v32 = *(v35 - 8);
  v6 = v32;
  v7 = *(v32 + 64);
  __chkstk_darwin(v35);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v31 = &v31 - v10;
  v12 = sub_100002B38(&qword_100130730, &qword_1000ECB30);
  v33 = *(v12 - 8);
  v13 = v33;
  v14 = *(v33 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  sub_100080930(&v31 - v18);
  sub_10007D398(v5);
  sub_1000812C4(v5, v11);
  (*(v2 + 8))(v5, v1);
  v20 = *(v13 + 16);
  v20(v16, v19, v12);
  v21 = *(v6 + 16);
  v22 = v34;
  v23 = v11;
  v24 = v35;
  v21(v34, v23, v35);
  v25 = v36;
  v20(v36, v16, v12);
  v26 = sub_100002B38(&qword_1001309C8, qword_1000ECDB0);
  v27 = &v25[*(v26 + 48)];
  *v27 = 0;
  v27[8] = 1;
  v21(&v25[*(v26 + 64)], v22, v24);
  v28 = *(v32 + 8);
  v28(v31, v24);
  v29 = *(v33 + 8);
  v29(v19, v12);
  v28(v22, v24);
  return (v29)(v16, v12);
}

uint64_t sub_100082590(uint64_t a1)
{
  v2 = type metadata accessor for OverlayTabBar();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10008CEA4(a1, v5, type metadata accessor for OverlayTabBar);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10008A7AC(v5, v13 + v12);
  sub_1000C7860(0, 0, v9, &unk_1000ECDA8, v13);
}

uint64_t sub_10008275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_100002B38(&qword_10012EBF0, &unk_1000EB020);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for ActionOutcome();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ActionMetrics() - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v12 = type metadata accessor for OpenURLAction();
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  v15 = type metadata accessor for EnvironmentValues();
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();
  v18 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v4[23] = v18;
  v19 = *(v18 - 8);
  v4[24] = v19;
  v20 = *(v19 + 64) + 15;
  v4[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[26] = static MainActor.shared.getter();
  v22 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v22;
  v4[28] = v21;

  return _swift_task_switch(sub_100082A04, v22, v21);
}

uint64_t sub_100082A04()
{
  v1 = *(v0 + 72);
  v2 = *v1;
  *(v0 + 232) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 288) = v3;

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 160);
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v2 = *(v0 + 56);
  }

  *(v0 + 240) = *(v2 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  v8 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *v9 = v0;
  v9[1] = sub_100082B80;
  v10 = *(v0 + 200);
  v11 = *(v0 + 184);

  return BaseObjectGraph.inject<A>(_:)(v10);
}

uint64_t sub_100082B80()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_100083184;
  }

  else
  {
    v7 = v2[30];

    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_100082C9C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100082C9C()
{
  v22 = *(v0 + 288);
  v1 = *(v0 + 232);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 80);
  static ActionMetrics.notInstrumented.getter();
  OpenURLAction.init(url:actionMetrics:)();
  *(v0 + 40) = v4;
  *(v0 + 48) = sub_10008DB20(&qword_1001309C0, &type metadata accessor for OpenURLAction);
  v9 = sub_100012854((v0 + 16));
  (*(v3 + 16))(v9, v2, v4);
  (*(v7 + 104))(v6, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v8);

  if ((v22 & 1) == 0)
  {
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v10, v12);
    v1 = *(v0 + 64);
  }

  v14 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);
  *(v0 + 264) = v14;

  v15 = async function pointer to ActionDispatcher.perform(_:withMetrics:asPartOf:)[1];
  v16 = swift_task_alloc();
  *(v0 + 272) = v16;
  *v16 = v0;
  v16[1] = sub_100082EE8;
  v17 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v0 + 120);
  v20 = *(v0 + 96);

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v19, v0 + 16, v20, v14, v18);
}

uint64_t sub_100082EE8()
{
  v2 = *v1;
  v3 = (*v1)[34];
  v16 = *v1;
  (*v1)[35] = v0;

  if (v0)
  {
    v4 = v2[33];
    (*(v2[11] + 8))(v2[12], v2[10]);

    v5 = v2[27];
    v6 = v2[28];
    v7 = sub_100083244;
  }

  else
  {
    v8 = v2[33];
    v10 = v2[14];
    v9 = v2[15];
    v12 = v2[12];
    v11 = v2[13];
    v13 = v2[10];
    v14 = v2[11];

    (*(v14 + 8))(v12, v13);
    (*(v10 + 8))(v9, v11);
    sub_10002E6CC(v2 + 2);
    v5 = v2[27];
    v6 = v2[28];
    v7 = sub_100083084;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100083084()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v13 = v0[12];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100083184()
{
  v1 = v0[30];
  v2 = v0[26];

  v3 = v0[32];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100083244()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_10002E6CC(v0 + 2);
  v8 = v0[35];
  v9 = v0[25];
  v10 = v0[22];
  v11 = v0[19];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10008333C(uint64_t a1)
{
  v2 = type metadata accessor for FocusInteractions();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_100130900, &qword_1000ECD10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  *v10 = static VerticalAlignment.lastTextBaseline.getter();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v11 = sub_100002B38(&qword_100130950, &qword_1000ECD28);
  sub_1000834E4(a1, &v10[*(v11 + 44)]);
  v10[*(v7 + 36)] = 0;
  static FocusInteractions.automatic.getter();
  sub_10008CDC0();
  View.componentFocusable(_:interactions:)();
  (*(v3 + 8))(v6, v2);
  return sub_100005688(v10, &qword_100130900, &qword_1000ECD10);
}

uint64_t sub_1000834E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v69 = sub_100002B38(&qword_100130958, &qword_1000ECD30);
  v3 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v73 = &v58 - v4;
  v5 = sub_100002B38(&qword_100130960, &qword_1000ECD38);
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v5);
  v71 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v70 = &v58 - v9;
  v72 = sub_100002B38(&qword_10012E1D0, &qword_1000EA5D0);
  v10 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v12 = &v58 - v11;
  v13 = type metadata accessor for Image.ResizingMode();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002B38(&qword_100130968, &qword_1000ECD40);
  v65 = *(v18 - 8);
  v66 = v18;
  v19 = *(v65 + 64);
  __chkstk_darwin(v18);
  v64 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v74 = &v58 - v22;
  v23 = type metadata accessor for OverlayTabBar();
  v24 = *(v23 + 64);
  sub_100002B38(&qword_100130478, &unk_1000EC950);
  ScaledMetric.wrappedValue.getter();
  v25 = *(v23 + 68);
  if (*(a1 + v25) < *v79)
  {
    v26 = *(a1 + v25);
  }

  Image.init(_:bundle:)();
  (*(v14 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v13);
  v27 = Image.resizable(capInsets:resizingMode:)();

  (*(v14 + 8))(v17, v13);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v77[38] = v83;
  *&v77[22] = v82;
  *&v77[6] = v81;
  *&v76[2] = *v77;
  v78 = 1;
  v75 = v27;
  *v76 = 1;
  *&v76[18] = *&v77[16];
  *&v76[34] = *&v77[32];
  *&v76[48] = *(&v83 + 1);
  v28 = enum case for DynamicTypeSize.xxLarge(_:);
  v29 = type metadata accessor for DynamicTypeSize();
  v30 = *(v29 - 8);
  v31 = *(v30 + 104);
  v32 = v30 + 104;
  v31(v12, v28, v29);
  v33 = sub_10008DB20(&qword_10012E260, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v59 = v5;
    v62 = v31;
    v63 = v33;
    sub_100002B38(&qword_100130970, &qword_1000ECD48);
    sub_10008D1AC();
    v61 = v32;
    v60 = v28;
    v58 = sub_1000057D8(&qword_10012E278, &qword_10012E1D0, &qword_1000EA5D0);
    View.dynamicTypeSize<A>(_:)();
    sub_100005688(v12, &qword_10012E1D0, &qword_1000EA5D0);
    v79[2] = *&v76[16];
    v79[3] = *&v76[32];
    v80 = *&v76[48];
    v79[0] = v75;
    v79[1] = *v76;
    sub_100005688(v79, &qword_100130970, &qword_1000ECD48);
    v35 = Image.init(_internalSystemName:)();
    v36 = static Font.body.getter();
    KeyPath = swift_getKeyPath();
    *&v75 = v35;
    *(&v75 + 1) = KeyPath;
    *v76 = v36;
    static Font.Weight.semibold.getter();
    sub_100002B38(&qword_10012CE08, &unk_1000E9120);
    sub_100005578();
    v38 = v73;
    View.fontWeight(_:)();

    v39 = &v38[*(sub_100002B38(&qword_100130990, &qword_1000ECD58) + 36)];
    v40 = *(sub_100002B38(&qword_10012E320, &qword_1000EA788) + 28);
    v41 = enum case for Image.Scale.small(_:);
    v42 = type metadata accessor for Image.Scale();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = swift_getKeyPath();
    v43 = &v38[*(v69 + 36)];
    static ShapeStyle<>.secondaryComponentForeground.getter();
    v62(v12, v60, v29);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_10008D440();
      v44 = v70;
      v45 = v73;
      View.dynamicTypeSize<A>(_:)();
      sub_100005688(v12, &qword_10012E1D0, &qword_1000EA5D0);
      sub_100005688(v45, &qword_100130958, &qword_1000ECD30);
      v47 = v64;
      v46 = v65;
      v48 = *(v65 + 16);
      v49 = v66;
      v48(v64, v74, v66);
      v50 = v67;
      v73 = *(v67 + 16);
      v51 = v44;
      v52 = v59;
      (v73)(v71, v51, v59);
      v53 = v68;
      v48(v68, v47, v49);
      v54 = &v53[*(sub_100002B38(&qword_1001309B8, &qword_1000ECD98) + 48)];
      v55 = v71;
      (v73)(v54, v71, v52);
      v56 = *(v50 + 8);
      v56(v70, v52);
      v57 = *(v46 + 8);
      v57(v74, v49);
      v56(v55, v52);
      return (v57)(v47, v49);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100083D3C(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v36 = sub_100002B38(&qword_100130860, &qword_1000ECC60);
  v3 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v5 = &v28[-v4];
  v6 = sub_100002B38(&qword_1001307C0, &qword_1000ECBC0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v30 = &v28[-v8];
  v35 = sub_100002B38(&qword_1001307B0, &qword_1000ECBB8);
  v9 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v34 = &v28[-v10];
  v11 = type metadata accessor for StoreTab.Identifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v28[-v17];
  v31 = a1;
  StoreTab.identifier.getter();
  static StoreTab.Identifier.overlayActiveCallPage.getter();
  sub_10008DB20(&qword_100130080, &type metadata accessor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v39 == v37 && v40 == v38)
  {
    v19 = *(v12 + 8);
    v19(v15, v11);
    v19(v18, v11);
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20 = *(v12 + 8);
    v20(v15, v11);
    v20(v18, v11);

    if ((v29 & 1) == 0)
    {
      v23 = v30;
      sub_1000841C8(v31, v30);
      v25 = &qword_1001307C0;
      v26 = &qword_1000ECBC0;
      sub_1000035B4(v23, v5, &qword_1001307C0, &qword_1000ECBC0);
      goto LABEL_10;
    }
  }

  type metadata accessor for OverlayCallCenter();
  static OverlayCallCenter.shared.getter();
  v21 = OverlayCallCenter.hasActiveCalls.getter();

  if (v21)
  {
    v22 = v30;
    sub_1000841C8(v31, v30);
    v23 = v34;
    sub_100014830(v22, v34, &qword_1001307C0, &qword_1000ECBC0);
    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v34;
  }

  (*(v33 + 56))(v23, v24, 1, v6);
  v25 = &qword_1001307B0;
  v26 = &qword_1000ECBB8;
  sub_1000035B4(v23, v5, &qword_1001307B0, &qword_1000ECBB8);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  sub_10008B1F4();
  sub_10008B278();
  _ConditionalContent<>.init(storage:)();
  return sub_100005688(v23, v25, v26);
}

uint64_t sub_1000841C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v4 = type metadata accessor for StoreTab.Identifier();
  v145 = *(v4 - 8);
  v146 = v4;
  v5 = *(v145 + 64);
  __chkstk_darwin(v4);
  v144 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AutomationSemantics();
  v142 = *(v7 - 8);
  v143 = v7;
  v8 = *(v142 + 64);
  __chkstk_darwin(v7);
  v141 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for AccessibilityTraits();
  v139 = *(v140 - 8);
  v10 = *(v139 + 64);
  __chkstk_darwin(v140);
  v138 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for AccessibilityChildBehavior();
  v136 = *(v137 - 8);
  v12 = *(v136 + 64);
  __chkstk_darwin(v137);
  v135 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for RoundedCornerStyle();
  v128 = *(v129 - 8);
  v14 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for FillFocusButtonStyle();
  v134 = *(v133 - 8);
  v16 = *(v134 + 64);
  __chkstk_darwin(v133);
  v130 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v18 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v112 = &v102 - v19;
  v20 = sub_100002B38(&qword_100130868, &qword_1000ECC68);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v109 = &v102 - v22;
  v23 = type metadata accessor for StoreTab();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OverlayTabBar();
  v28 = *(v27 - 8);
  v106 = v27 - 8;
  v104 = v28;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100002B38(&qword_1001307E8, &qword_1000ECBE0);
  v111 = *(v108 - 8);
  v31 = *(v111 + 64);
  __chkstk_darwin(v108);
  v105 = &v102 - v32;
  v118 = sub_100002B38(&qword_1001307E0, &qword_1000ECBD8);
  v119 = *(v118 - 8);
  v33 = *(v119 + 64);
  __chkstk_darwin(v118);
  v107 = &v102 - v34;
  v121 = sub_100002B38(&qword_1001307D8, &qword_1000ECBD0);
  v122 = *(v121 - 8);
  v35 = *(v122 + 64);
  __chkstk_darwin(v121);
  v113 = &v102 - v36;
  v124 = sub_100002B38(&qword_100130870, &qword_1000ECC70);
  v126 = *(v124 - 8);
  v37 = *(v126 + 64);
  __chkstk_darwin(v124);
  v116 = &v102 - v38;
  v125 = sub_100002B38(&qword_1001307C8, &qword_1000ECBC8);
  v39 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v117 = &v102 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v120 = &v102 - v42;
  v131 = sub_100002B38(&qword_100130878, &qword_1000ECC78);
  v132 = *(v131 - 8);
  v43 = *(v132 + 64);
  __chkstk_darwin(v131);
  v123 = &v102 - v44;
  sub_10008CEA4(v2, v30, type metadata accessor for OverlayTabBar);
  v103 = *(v24 + 16);
  v103(v26, a1, v23);
  v45 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v46 = (v29 + *(v24 + 80) + v45) & ~*(v24 + 80);
  v47 = swift_allocObject();
  sub_10008A7AC(v30, v47 + v45);
  v48 = v23;
  (*(v24 + 32))(v47 + v46, v26, v23);
  v114 = v2;
  v148 = v2;
  v149 = a1;
  v49 = a1;
  v110 = a1;
  sub_100002B38(&qword_100130880, &qword_1000ECC80);
  sub_10008C55C();
  v50 = v105;
  Button.init(action:label:)();
  v51 = *(v106 + 44);
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  v52 = v109;
  FocusState.projectedValue.getter();
  v53 = v112;
  v103(v112, v49, v48);
  v54 = v53;
  (*(v24 + 56))(v53, 0, 1, v48);
  v55 = sub_1000057D8(&qword_1001307F0, &qword_1001307E8, &qword_1000ECBE0);
  v56 = sub_10008AA7C(&qword_100130500, &qword_100130450);
  v57 = v107;
  v58 = v108;
  v59 = v115;
  View.focused<A>(_:equals:)();
  sub_100005688(v54, &qword_10012E650, &qword_1000EDA30);
  sub_100005688(v52, &qword_100130868, &qword_1000ECC68);
  v60 = v58;
  (*(v111 + 8))(v50, v58);
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v61 = v128;
  v62 = v127;
  v63 = v129;
  (*(v128 + 104))(v127, enum case for RoundedCornerStyle.continuous(_:), v129);
  v64 = type metadata accessor for RoundedRectangle();
  v150[3] = v64;
  v150[4] = sub_10008DB20(&qword_10012EFD8, &type metadata accessor for RoundedRectangle);
  v65 = sub_100012854(v150);
  (*(v61 + 16))(v65 + *(v64 + 20), v62, v63);
  __asm { FMOV            V0.2D, #12.0 }

  *v65 = _Q0;
  (*(v61 + 8))(v62, v63);
  static Color.focusColor.getter();
  Color.opacity(_:)();

  v71 = v130;
  FillFocusButtonStyle.init(id:shape:color:)();
  *&v151 = v60;
  *(&v151 + 1) = v59;
  *&v152 = v55;
  *(&v152 + 1) = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_10008DB20(&qword_1001307F8, &type metadata accessor for FillFocusButtonStyle);
  v74 = v113;
  v75 = v118;
  v76 = v133;
  View.buttonStyle<A>(_:)();
  (*(v134 + 8))(v71, v76);
  (*(v119 + 8))(v57, v75);
  v77 = v135;
  static AccessibilityChildBehavior.combine.getter();
  *&v151 = v75;
  *(&v151 + 1) = v76;
  *&v152 = OpaqueTypeConformance2;
  *(&v152 + 1) = v73;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v116;
  v80 = v121;
  View.accessibilityElement(children:)();
  (*(v136 + 8))(v77, v137);
  (*(v122 + 8))(v74, v80);
  v81 = v138;
  static AccessibilityTraits.isButton.getter();
  *&v151 = v80;
  *(&v151 + 1) = v78;
  swift_getOpaqueTypeConformance2();
  v82 = v117;
  v83 = v124;
  v84 = v79;
  View.accessibilityAddTraits(_:)();
  v85 = *(v139 + 8);
  v86 = v81;
  v87 = v81;
  v88 = v140;
  v85(v86, v140);
  (*(v126 + 8))(v84, v83);
  static AccessibilityTraits.isImage.getter();
  v89 = v120;
  v90 = v125;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v85(v87, v88);
  sub_100005688(v82, &qword_1001307C8, &qword_1000ECBC8);
  v91 = StoreTab.id.getter();
  *(&v152 + 1) = &type metadata for String;
  *&v151 = v91;
  *(&v151 + 1) = v92;
  v93 = v141;
  static AutomationSemantics.tabBar(tabName:)();
  sub_10002E6CC(&v151);
  v94 = sub_10008B370();
  v95 = v123;
  View.automationSemantics(_:)();
  (*(v142 + 8))(v93, v143);
  sub_100005688(v89, &qword_1001307C8, &qword_1000ECBC8);
  v96 = v144;
  StoreTab.identifier.getter();
  v97 = sub_100089428(v96);
  v99 = v98;
  (*(v145 + 8))(v96, v146);
  *&v151 = v97;
  *(&v151 + 1) = v99;
  v150[0] = v90;
  v150[1] = v94;
  swift_getOpaqueTypeConformance2();
  sub_10000548C();
  v100 = v131;
  View.accessibilityLabel<A>(_:)();

  return (*(v132 + 8))(v95, v100);
}

uint64_t sub_100085244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StoreTab();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OverlayTabBar();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v7 - 8);
  v39 = v9;
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = *(a3 + 8);

  if ((v21 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v37 = v14;
    v23 = v10;
    v24 = a2;
    v25 = v22;
    os_log(_:dso:log:_:_:)();

    a2 = v24;
    v10 = v23;
    v14 = v37;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v16 + 8))(v19, v15);
    v20 = v43;
  }

  swift_getKeyPath();
  v43 = v20;
  sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v20 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange);

  if (v26 == 1)
  {
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
    sub_10008CEA4(a3, v10, type metadata accessor for OverlayTabBar);
    v30 = v40;
    v29 = v41;
    v31 = v42;
    (*(v41 + 16))(v40, a2, v42);
    type metadata accessor for MainActor();
    v32 = static MainActor.shared.getter();
    v33 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v34 = (v39 + *(v29 + 80) + v33) & ~*(v29 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_10008A7AC(v10, v35 + v33);
    (*(v29 + 32))(v35 + v34, v30, v31);
    sub_100014BBC(0, 0, v14, &unk_1000ECC58, v35);
  }

  return result;
}

uint64_t sub_1000856B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100085754, v7, v6);
}

uint64_t sub_100085754()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v5 = *(v0 + 24);

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.delay(_:)();

  *(swift_task_alloc() + 16) = v5;
  withAnimation<A>(_:_:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100085850(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = type metadata accessor for StoreTab();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a2, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  LODWORD(v15) = *(type metadata accessor for OverlayTabBar() + 36);
  sub_1000035B4(v14, v11, &qword_10012E650, &qword_1000EDA30);
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  FocusState.wrappedValue.setter();
  sub_100005688(v14, &qword_10012E650, &qword_1000EDA30);
  v17 = *a1;
  v18 = *(a1 + 8);

  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v23 + 8))(v7, v24);
    v17 = v25;
  }

  if (*(v17 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v22 - 2) = v17;
    *(&v22 - 8) = 0;
    v25 = v17;
    sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v17 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = 0;
  }
}

void sub_100085BDC(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v118 = a3;
  v124 = a1;
  v4 = type metadata accessor for EnvironmentValues();
  v116 = *(v4 - 8);
  v117 = v4;
  v5 = *(v116 + 64);
  __chkstk_darwin(v4);
  v115 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoreTab.Identifier();
  v8 = *(v7 - 8);
  v125 = v7;
  v126 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v119 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v113 = &v107 - v12;
  v123 = sub_100002B38(&qword_100130858, &qword_1000ECC20);
  v13 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v114 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v111 = &v107 - v16;
  __chkstk_darwin(v17);
  v110 = &v107 - v18;
  v19 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v112 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v109 = &v107 - v23;
  __chkstk_darwin(v24);
  v122 = (&v107 - v25);
  __chkstk_darwin(v26);
  v120 = &v107 - v27;
  __chkstk_darwin(v28);
  v30 = &v107 - v29;
  __chkstk_darwin(v31);
  v33 = &v107 - v32;
  __chkstk_darwin(v34);
  v36 = &v107 - v35;
  v37 = type metadata accessor for StoreTab();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v107 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = (&v107 - v43);
  v45 = a2;
  v47 = v46;
  sub_1000035B4(a2, v36, &qword_10012E650, &qword_1000EDA30);
  v121 = *(v38 + 48);
  if (v121(v36, 1, v47) == 1)
  {
    v48 = v47;
    sub_100005688(v36, &qword_10012E650, &qword_1000EDA30);
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100011F80(v49, qword_100135C88);
    v50 = v120;
    sub_1000035B4(v124, v120, &qword_10012E650, &qword_1000EDA30);
    v51 = v122;
    sub_1000035B4(v45, v122, &qword_10012E650, &qword_1000EDA30);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      LODWORD(v119) = v53;
      v54 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v127[0] = v118;
      *v54 = 136315394;
      v55 = v109;
      sub_1000035B4(v50, v109, &qword_10012E650, &qword_1000EDA30);
      v56 = v48;
      v57 = v121(v55, 1, v48);
      v124 = v52;
      if (v57 == 1)
      {
        sub_100005688(v55, &qword_10012E650, &qword_1000EDA30);
        v58 = 1;
        v59 = v111;
      }

      else
      {
        v59 = v111;
        StoreTab.identifier.getter();
        (*(v38 + 8))(v55, v48);
        v58 = 0;
      }

      v71 = *(v126 + 56);
      v126 += 56;
      v71(v59, v58, 1, v125);
      v72 = String.init<A>(describing:)();
      v74 = v73;
      sub_100005688(v120, &qword_10012E650, &qword_1000EDA30);
      v75 = sub_1000BA5C8(v72, v74, v127);

      *(v54 + 4) = v75;
      *(v54 + 12) = 2080;
      v76 = v122;
      v77 = v112;
      sub_1000035B4(v122, v112, &qword_10012E650, &qword_1000EDA30);
      if (v121(v77, 1, v56) == 1)
      {
        sub_100005688(v77, &qword_10012E650, &qword_1000EDA30);
        v78 = 1;
        v79 = v114;
      }

      else
      {
        v79 = v114;
        StoreTab.identifier.getter();
        (*(v38 + 8))(v77, v56);
        v78 = 0;
      }

      v71(v79, v78, 1, v125);
      v102 = String.init<A>(describing:)();
      v104 = v103;
      sub_100005688(v76, &qword_10012E650, &qword_1000EDA30);
      v105 = sub_1000BA5C8(v102, v104, v127);

      *(v54 + 14) = v105;
      v106 = v124;
      _os_log_impl(&_mh_execute_header, v124, v119, "unable to move tabs, focusedTab was changed from %s to %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100005688(v51, &qword_10012E650, &qword_1000EDA30);
      sub_100005688(v50, &qword_10012E650, &qword_1000EDA30);
    }
  }

  else
  {
    (*(v38 + 32))(v44, v36, v47);
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100011F80(v60, qword_100135C88);
    sub_1000035B4(v124, v33, &qword_10012E650, &qword_1000EDA30);
    v61 = *(v38 + 16);
    v124 = v44;
    v61(v41, v44, v47);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    v64 = os_log_type_enabled(v62, v63);
    v108 = v47;
    if (v64)
    {
      v65 = v47;
      v66 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v127[0] = v122;
      *v66 = 136315394;
      sub_1000035B4(v33, v30, &qword_10012E650, &qword_1000EDA30);
      if (v121(v30, 1, v65) == 1)
      {
        sub_100005688(v30, &qword_10012E650, &qword_1000EDA30);
        v67 = 1;
        v68 = v38;
        v69 = v110;
      }

      else
      {
        v80 = v110;
        StoreTab.identifier.getter();
        v69 = v80;
        v68 = v38;
        (*(v38 + 8))(v30, v65);
        v67 = 0;
      }

      (*(v126 + 56))(v69, v67, 1, v125);
      v81 = String.init<A>(describing:)();
      v83 = v82;
      sub_100005688(v33, &qword_10012E650, &qword_1000EDA30);
      v84 = sub_1000BA5C8(v81, v83, v127);

      *(v66 + 4) = v84;
      *(v66 + 12) = 2080;
      StoreTab.identifier.getter();
      v85 = String.init<A>(describing:)();
      v87 = v86;
      v88 = v65;
      v70 = *(v68 + 8);
      v70(v41, v88);
      v89 = sub_1000BA5C8(v85, v87, v127);

      *(v66 + 14) = v89;
      _os_log_impl(&_mh_execute_header, v62, v63, "focusedTab was changed from %s to %s", v66, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v70 = *(v38 + 8);
      v70(v41, v47);
      sub_100005688(v33, &qword_10012E650, &qword_1000EDA30);
    }

    v90 = *v118;
    v91 = *(v118 + 8);

    v92 = v119;
    if (v91 == 1)
    {
      v93 = v124;
      StoreTab.identifier.getter();
    }

    else
    {
      static os_log_type_t.fault.getter();
      v94 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v95 = v115;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v96 = v117;
      v122 = *(v116 + 8);
      (v122)(v95, v117);
      v123 = v70;
      v97 = v124;
      StoreTab.identifier.getter();

      static os_log_type_t.fault.getter();
      v98 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v99 = v95;
      v93 = v97;
      v70 = v123;
      (v122)(v99, v96);
      v90 = v127[0];
    }

    v100 = v108;
    v101 = *(v90 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

    sub_100077984(v92, v101);

    (*(v126 + 8))(v92, v125);
    v70(v93, v100);
  }
}

uint64_t sub_10008689C(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *a3;
  v12 = *(a3 + 8);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
    v11 = v16[1];
  }

  v14 = *(v11 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_100086A20(v10, v14);
}

uint64_t sub_100086A20(char a1, uint64_t a2)
{
  v156 = a2;
  v4 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v151 = &v148 - v6;
  v7 = type metadata accessor for StoreTab();
  v8 = *(v7 - 8);
  v172 = v7;
  v173 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v149 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v148 - v12;
  __chkstk_darwin(v14);
  v154 = &v148 - v15;
  __chkstk_darwin(v16);
  v152 = &v148 - v17;
  __chkstk_darwin(v18);
  v153 = &v148 - v19;
  __chkstk_darwin(v20);
  v22 = &v148 - v21;
  v23 = type metadata accessor for StoreTab.Identifier();
  v174 = *(v23 - 8);
  v24 = *(v174 + 64);
  __chkstk_darwin(v23);
  v168 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v148 - v27;
  __chkstk_darwin(v29);
  v155 = &v148 - v30;
  __chkstk_darwin(v31);
  v157 = &v148 - v32;
  __chkstk_darwin(v33);
  v165 = &v148 - v34;
  __chkstk_darwin(v35);
  v37 = &v148 - v36;
  __chkstk_darwin(v38);
  v40 = &v148 - v39;
  __chkstk_darwin(v41);
  v43 = &v148 - v42;
  v161 = type metadata accessor for EnvironmentValues();
  v160 = *(v161 - 8);
  v44 = *(v160 + 64);
  __chkstk_darwin(v161);
  v159 = &v148 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *v2;
  v47 = *(v2 + 8);
  v163 = v46;
  if (a1)
  {

    v48 = v46;
    v49 = v47;
    if ((v47 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v50 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v51 = v159;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v160 + 8))(v51, v161);
      v48 = v177;
    }

    v52 = *(v48 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

    v53 = *(v52 + 16);

    v55 = v174;
    if (v53 >= 2)
    {

      if ((v49 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v56 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v57 = v159;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v160 + 8))(v57, v161);
      }

      static StoreTab.Identifier.overlayActiveCallPage.getter();
      sub_100077984(v43, v156);

      return (*(v55 + 8))(v43, v23);
    }

    return result;
  }

  v162 = v13;
  v158 = v43;

  v58 = v46;
  v150 = v47;
  if ((v47 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v60 = v159;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v160 + 8))(v60, v161);
    v58 = v177;
  }

  swift_getKeyPath();
  v177 = v58;
  v148 = sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v61 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v63 = v172;
  v62 = v173;
  v166 = *(v173 + 16);
  v167 = v173 + 16;
  v166(v22, v58 + v61, v172);

  StoreTab.identifier.getter();
  v169 = *(v62 + 8);
  v170 = v62 + 8;
  v169(v22, v63);
  static StoreTab.Identifier.overlayActiveCallPage.getter();
  v64 = sub_10008DB20(&qword_100130080, &type metadata accessor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v164 = v64;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v177 == v181 && v178 == v182)
  {
    v65 = 1;
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v66 = v174 + 8;
  v67 = *(v174 + 8);
  v67(v37, v23);
  v171 = v67;
  v67(v40, v23);

  if (v65)
  {
    v179 = &type metadata for GameOverlayUIFeatureFlags;
    v180 = sub_10003F1EC();
    LOBYTE(v177) = 4;
    v68 = isFeatureEnabled(_:)();
    sub_10002E6CC(&v177);
    v174 = v66;
    if ((v68 & 1) == 0)
    {
      v157 = v23;
      v79 = v163;

      v80 = v79;
      if ((v150 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v81 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v82 = v159;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v160 + 8))(v82, v161);
        v80 = v177;
      }

      v83 = *(v80 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

      v84 = 0;
      v85 = *(v83 + 16);
      v86 = v162;
      while (v85 != v84)
      {
        if (v84 >= *(v83 + 16))
        {
          __break(1u);
          goto LABEL_73;
        }

        v166(v86, v83 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v84, v63);
        StoreTab.identifier.getter();
        static StoreTab.Identifier.overlaySocialPage.getter();
        v89 = v157;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v177 == v181 && v178 == v182)
        {
          v90 = v171;
          v171(v168, v89);
          v90(v28, v89);
          v169(v162, v63);

LABEL_29:

          if ((v150 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v91 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            v92 = v159;
            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v160 + 8))(v92, v161);
          }

          v93 = v158;
          static StoreTab.Identifier.overlaySocialPage.getter();
          sub_100077984(v93, v156);

          return (v171)(v93, v157);
        }

        ++v84;
        v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v88 = v171;
        v171(v168, v89);
        v63 = v172;
        v88(v28, v89);
        v86 = v162;
        v169(v162, v63);

        if (v87)
        {
          goto LABEL_29;
        }
      }

      v98 = v163;

      v99 = v98;
      v100 = v149;
      if ((v150 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v101 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v102 = v159;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v160 + 8))(v102, v161);
        v99 = v177;
      }

      v103 = *(v99 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

      v104 = *(v103 + 16);
      v105 = v173;
      v106 = v157;
      v107 = v158;
      if (v104)
      {
        v108 = 0;
        v109 = v172;
        while (v108 < *(v103 + 16))
        {
          v166(v100, v103 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v108, v109);
          StoreTab.identifier.getter();
          v110 = v165;
          static StoreTab.Identifier.overlayActiveCallPage.getter();
          sub_10008DB20(&qword_100130850, &type metadata accessor for StoreTab.Identifier);
          v111 = dispatch thunk of static Equatable.== infix(_:_:)();
          v112 = v110;
          v113 = v171;
          v171(v112, v106);
          v113(v107, v106);
          if ((v111 & 1) == 0)
          {

            if ((v150 & 1) == 0)
            {
              static os_log_type_t.fault.getter();
              v128 = static Log.runtimeIssuesLog.getter();
              os_log(_:dso:log:_:_:)();

              v129 = v159;
              EnvironmentValues.init()();
              swift_getAtKeyPath();

              (*(v160 + 8))(v129, v161);
            }

            v130 = v149;
            StoreTab.identifier.getter();
            sub_100077984(v107, v156);

            v171(v107, v106);
            v127 = v130;
            goto LABEL_57;
          }

          ++v108;
          result = (v169)(v100, v109);
          v105 = v173;
          if (v104 == v108)
          {
          }
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        return result;
      }
    }

    v69 = v163;

    v70 = v173;
    if ((v150 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v71 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v72 = v159;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v160 + 8))(v72, v161);
      v69 = v177;
    }

    swift_getKeyPath();
    v177 = v69;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v73 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
    swift_beginAccess();
    v74 = v69 + v73;
    v75 = v151;
    sub_1000035B4(v74, v151, &qword_10012E650, &qword_1000EDA30);

    v76 = (*(v70 + 48))(v75, 1, v63);
    v77 = v153;
    v78 = v152;
    if (v76 == 1)
    {
      sub_100005688(v75, &qword_10012E650, &qword_1000EDA30);
      goto LABEL_59;
    }

    (*(v70 + 32))(v153, v75, v63);
    v94 = v158;
    StoreTab.identifier.getter();
    v95 = v165;
    static StoreTab.Identifier.overlayActiveCallPage.getter();
    sub_10008DB20(&qword_100130850, &type metadata accessor for StoreTab.Identifier);
    v96 = dispatch thunk of static Equatable.== infix(_:_:)();
    v97 = v171;
    v171(v95, v23);
    v97(v94, v23);
    if (v96)
    {
      v169(v77, v63);
LABEL_59:
      v132 = v163;

      if ((v150 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v133 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v134 = v159;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v160 + 8))(v134, v161);
        v132 = v181;
      }

      v135 = *(v132 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

      v136 = *(v135 + 16);
      v137 = v154;
      if (v136)
      {
        v138 = 0;
        while (v138 < *(v135 + 16))
        {
          v166(v137, v135 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v138, v63);
          v139 = v158;
          StoreTab.identifier.getter();
          v140 = v165;
          static StoreTab.Identifier.overlayActiveCallPage.getter();
          sub_10008DB20(&qword_100130850, &type metadata accessor for StoreTab.Identifier);
          v141 = dispatch thunk of static Equatable.== infix(_:_:)();
          v142 = v140;
          v143 = v171;
          v171(v142, v23);
          v143(v139, v23);
          if ((v141 & 1) == 0)
          {

            if ((v150 & 1) == 0)
            {
              static os_log_type_t.fault.getter();
              v144 = static Log.runtimeIssuesLog.getter();
              os_log(_:dso:log:_:_:)();

              v145 = v159;
              EnvironmentValues.init()();
              swift_getAtKeyPath();

              (*(v160 + 8))(v145, v161);
            }

            v146 = v158;
            v147 = v154;
            StoreTab.identifier.getter();
            sub_100077984(v146, v156);

            v171(v146, v23);
            v127 = v147;
            v131 = v63;
            return (v169)(v127, v131);
          }

          ++v138;
          result = (v169)(v137, v63);
          v70 = v173;
          if (v136 == v138)
          {
          }
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    v114 = v163;

    if ((v150 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v115 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v116 = v159;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v160 + 8))(v116, v161);
      v114 = v181;
    }

    v117 = *(v114 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

    v118 = 0;
    v168 = *(v117 + 16);
    while (1)
    {
      if (v168 == v118)
      {
        v63 = v172;
        v169(v77, v172);

        goto LABEL_59;
      }

      if (v118 >= *(v117 + 16))
      {
        goto LABEL_75;
      }

      v166(v78, v117 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v118, v172);
      StoreTab.identifier.getter();
      v122 = v155;
      StoreTab.identifier.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v181 == v175 && v182 == v176)
      {
        break;
      }

      ++v118;
      v119 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v120 = v122;
      v121 = v171;
      v171(v120, v23);
      v121(v157, v23);
      v169(v78, v172);

      v70 = v173;
      if (v119)
      {
        goto LABEL_51;
      }
    }

    v123 = v171;
    v171(v122, v23);
    v123(v157, v23);
    v169(v78, v172);

LABEL_51:

    if ((v150 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v124 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v125 = v159;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v160 + 8))(v125, v161);
    }

    v126 = v158;
    StoreTab.identifier.getter();
    sub_100077984(v126, v156);

    v171(v126, v23);
    v127 = v77;
LABEL_57:
    v131 = v172;
    return (v169)(v127, v131);
  }

  return result;
}

uint64_t sub_100088264(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayCallCenter();
  static OverlayCallCenter.shared.getter();
  v9 = OverlayCallCenter.hasActiveCalls.getter();

  v10 = *a3;
  v11 = *(a3 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v10 = v15[1];
  }

  v13 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_100086A20(v9 & 1, v13);
}

uint64_t sub_10008840C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  if (*a2)
  {
    v17 = *a3;
    v18 = *(a3 + 8);

    if ((v18 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
      v17 = v27;
    }

    swift_getKeyPath();
    v27 = v17;
    sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
    swift_beginAccess();
    v21 = type metadata accessor for StoreTab();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v16, v17 + v20, v21);

    (*(v22 + 56))(v16, 0, 1, v21);
  }

  else
  {
    v23 = type metadata accessor for StoreTab();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  }

  v24 = *(type metadata accessor for OverlayTabBar() + 36);
  sub_1000035B4(v16, v13, &qword_10012E650, &qword_1000EDA30);
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  FocusState.wrappedValue.setter();
  return sub_100005688(v16, &qword_10012E650, &qword_1000EDA30);
}

uint64_t sub_100088784(uint64_t *a1)
{
  v2 = type metadata accessor for StoreTab.Identifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);

  if (v13 == 1)
  {
    StoreTab.identifier.getter();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    v20[0] = v2;
    v15 = v14;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v16 = *(v8 + 8);
    v16(v11, v7);
    StoreTab.identifier.getter();

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v2 = v20[0];
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v16(v11, v7);
    v12 = v20[1];
  }

  v18 = *(v12 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_100077984(v6, v18);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100088A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v78 = type metadata accessor for StoreTab();
  v76 = *(v78 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v78);
  v75 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for EnvironmentValues();
  v62 = *(v63 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin(v63);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FocusInteractions();
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_10012E1D0, &qword_1000EA5D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v15 = sub_100002B38(&qword_1001308A8, &qword_1000ECC98);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  v66 = sub_100002B38(&qword_1001308A0, &qword_1000ECC90);
  v65 = *(v66 - 8);
  v19 = *(v65 + 64);
  __chkstk_darwin(v66);
  v21 = &v61 - v20;
  v22 = sub_100002B38(&qword_1001308C8, &qword_1000ECCA8);
  v72 = *(v22 - 8);
  v73 = v22;
  v23 = *(v72 + 64);
  __chkstk_darwin(v22);
  v64 = &v61 - v24;
  v70 = sub_100002B38(&qword_100130898, &qword_1000ECC88);
  v25 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v74 = &v61 - v26;
  v27 = type metadata accessor for OverlayTabBar();
  v28 = *(v27 + 56);
  sub_100002B38(&qword_100130470, &qword_1000EC948);
  ScaledMetric.wrappedValue.getter();
  v29 = *(v27 + 60);
  if (*(a1 + v29) < *&v84)
  {
    v30 = *(a1 + v29);
  }

  v77 = a2;
  v71 = a1;
  sub_10008933C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = &v18[*(v15 + 36)];
  v32 = v85;
  *v31 = v84;
  *(v31 + 1) = v32;
  *(v31 + 2) = v86;
  v33 = enum case for DynamicTypeSize.xxLarge(_:);
  v34 = type metadata accessor for DynamicTypeSize();
  (*(*(v34 - 8) + 104))(v14, v33, v34);
  sub_10008DB20(&qword_10012E260, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v36 = sub_10008C7AC();
    v37 = sub_1000057D8(&qword_10012E278, &qword_10012E1D0, &qword_1000EA5D0);
    View.dynamicTypeSize<A>(_:)();
    sub_100005688(v14, &qword_10012E1D0, &qword_1000EA5D0);
    sub_100005688(v18, &qword_1001308A8, &qword_1000ECC98);
    v38 = v67;
    static FocusInteractions.automatic.getter();
    v80 = v15;
    v81 = v11;
    v82 = v36;
    v83 = v37;
    swift_getOpaqueTypeConformance2();
    v39 = v64;
    v40 = v66;
    View.componentFocusable(_:interactions:)();
    (*(v68 + 8))(v38, v69);
    (*(v65 + 8))(v21, v40);
    v41 = *v71;
    LOBYTE(v40) = *(v71 + 8);

    if ((v40 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v42 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v43 = v61;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v62 + 8))(v43, v63);
      v41 = v80;
    }

    swift_getKeyPath();
    v80 = v41;
    sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v44 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
    swift_beginAccess();
    v46 = v75;
    v45 = v76;
    v47 = v78;
    (*(v76 + 16))(v75, v41 + v44, v78);

    LOBYTE(v44) = static StoreTab.== infix(_:_:)();
    (*(v45 + 8))(v46, v47);
    if (v44)
    {
      v48 = static HierarchicalShapeStyle.primary.getter();
    }

    else
    {
      v48 = static HierarchicalShapeStyle.secondary.getter();
    }

    v49 = v48;
    v50 = v79;
    v51 = v74;
    (*(v72 + 32))(v74, v39, v73);
    *(v51 + *(v70 + 36)) = v49;
    v52 = (v50 + *(sub_100002B38(&qword_100130880, &qword_1000ECC80) + 36));
    v53 = *(type metadata accessor for RoundedRectangle() + 20);
    v54 = enum case for RoundedCornerStyle.continuous(_:);
    v55 = type metadata accessor for RoundedCornerStyle();
    (*(*(v55 - 8) + 104))(&v52[v53], v54, v55);
    __asm { FMOV            V0.2D, #2.0 }

    *v52 = _Q0;
    v52[*(sub_100002B38(&qword_1001308C0, &qword_1000ECCA0) + 36)] = 0;
    return sub_100014830(v51, v50, &qword_100130898, &qword_1000ECC88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008933C()
{
  StoreTab.tabImageName.getter();
  Image.init(_internalSystemName:)();
  static Font.title3.getter();
  swift_getKeyPath();
  static Font.Weight.semibold.getter();
  sub_100002B38(&qword_10012CE08, &unk_1000E9120);
  sub_100005578();
  View.fontWeight(_:)();
}

uint64_t sub_100089428(uint64_t a1)
{
  v2 = type metadata accessor for StoreTab.Identifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  (*(v3 + 16))(&v19 - v9, a1, v2, v8);
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  sub_10008DB20(&qword_100130850, &type metadata accessor for StoreTab.Identifier);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if (v11)
  {
    v12(v10, v2);
    if (qword_10012CBF8 != -1)
    {
      swift_once();
    }

    v13 = &qword_100135C40;
  }

  else
  {
    static StoreTab.Identifier.overlaySocialPage.getter();
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    v12(v6, v2);
    if (v14)
    {
      v12(v10, v2);
      if (qword_10012CC00 != -1)
      {
        swift_once();
      }

      v13 = &qword_100135C50;
    }

    else
    {
      static StoreTab.Identifier.overlaySystemSettingsPage.getter();
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      v12(v6, v2);
      v12(v10, v2);
      if ((v15 & 1) == 0)
      {
        return 0;
      }

      if (qword_10012CC08 != -1)
      {
        swift_once();
      }

      v13 = &qword_100135C60;
    }
  }

  v16 = *v13;
  v17 = v13[1];

  return v16;
}

uint64_t sub_10008970C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DashboardTabViewState(0);
  sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  *a1 = Environment.init<A>(_:)();
  *(a1 + 8) = v7 & 1;
  v8 = type metadata accessor for OverlayTabBar();
  v9 = v8[5];
  *(a1 + v9) = swift_getKeyPath();
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a1 + v10) = swift_getKeyPath();
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  swift_storeEnumTagMultiPayload();
  v11 = v8[7];
  *(a1 + v11) = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + v8[8];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  v13 = v8[9];
  type metadata accessor for StoreTab();
  sub_10008DB20(&qword_100130450, &type metadata accessor for StoreTab);
  FocusState.init<A>()();
  v14 = a1 + v8[10];
  *v14 = FocusState.init<>()() & 1;
  *(v14 + 8) = v15;
  *(v14 + 16) = v16 & 1;
  v17 = a1 + v8[11];
  *v17 = FocusState.init<>()() & 1;
  *(v17 + 8) = v18;
  *(v17 + 16) = v19 & 1;
  v20 = a1 + v8[12];
  LOBYTE(v29) = 1;
  State.init(wrappedValue:)();
  v21 = v31;
  *v20 = v30;
  *(v20 + 8) = v21;
  v22 = (a1 + v8[13]);
  type metadata accessor for GameControllerObserver();
  v29 = static GameControllerObserver.shared.getter();
  State.init(wrappedValue:)();
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  v24 = v8[14];
  v30 = 0x4046000000000000;
  v25 = *(v3 + 104);
  v25(v6, enum case for Font.TextStyle.title3(_:), v2);
  sub_100089D20();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a1 + v8[15]) = 0x4050000000000000;
  v26 = v8[16];
  v30 = 0x402C000000000000;
  v25(v6, enum case for Font.TextStyle.body(_:), v2);
  sub_100089D74();
  result = ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a1 + v8[17]) = 0x4034000000000000;
  *(a1 + v8[18]) = 0x4034000000000000;
  *(a1 + v8[19]) = 0x4028000000000000;
  return result;
}

uint64_t type metadata accessor for OverlayTabBar()
{
  result = qword_1001304D8;
  if (!qword_1001304D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100089C18(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000035B4(a1, &v6 - v4, &qword_100132550, &qword_1000EC170);
  return EnvironmentValues.verticalSizeClass.setter();
}

uint64_t sub_100089CC4@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pageSafeArea.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100089CF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  return EnvironmentValues.pageSafeArea.setter();
}

unint64_t sub_100089D20()
{
  result = qword_100130458;
  if (!qword_100130458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130458);
  }

  return result;
}

unint64_t sub_100089D74()
{
  result = qword_100130460;
  if (!qword_100130460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130460);
  }

  return result;
}

uint64_t sub_100089DDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_10012EA18, &qword_1000EAEE0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = sub_100002B38(&qword_100130468, &qword_1000EC940);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[9];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[13]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_100002B38(&qword_100130470, &qword_1000EC948);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[14];
      goto LABEL_9;
    }

    v17 = sub_100002B38(&qword_100130478, &unk_1000EC950);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[16];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10008A080(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002B38(&qword_10012EA18, &qword_1000EAEE0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  result = sub_100002B38(&qword_100130468, &qword_1000EC940);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13]) = (a2 - 1);
    return result;
  }

  v16 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v17 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[16];

  return v18(v19, a2, a2, v17);
}

void sub_10008A310()
{
  sub_10008A6BC(319, &qword_1001304E8, type metadata accessor for DashboardTabViewState, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10008A6BC(319, &unk_10012EAB0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10008A6BC(319, &qword_10012DAD8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100040840();
        if (v3 <= 0x3F)
        {
          sub_10008A66C(319, &qword_1001304F0, &type metadata for EdgeInsets, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10008A5C4();
            if (v5 <= 0x3F)
            {
              sub_10006DFCC();
              if (v6 <= 0x3F)
              {
                sub_10008A66C(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_10008A6BC(319, &qword_100130508, &type metadata accessor for GameControllerObserver, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_10008A720(319, &qword_100130510, sub_100089D20);
                    if (v9 <= 0x3F)
                    {
                      sub_10008A720(319, &unk_100130518, sub_100089D74);
                      if (v10 <= 0x3F)
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
      }
    }
  }
}

void sub_10008A5C4()
{
  if (!qword_1001304F8)
  {
    sub_100005144(&qword_10012E650, &qword_1000EDA30);
    sub_10008AA7C(&qword_100130500, &qword_100130450);
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_1001304F8);
    }
  }
}

void sub_10008A66C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10008A6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10008A720(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ScaledMetric();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10008A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10008A7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayTabBar();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A810(double *a1)
{
  v3 = *(type metadata accessor for OverlayTabBar() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10007FCA4(a1, v4);
}

unint64_t sub_10008A880()
{
  result = qword_1001305A8;
  if (!qword_1001305A8)
  {
    sub_100005144(&qword_100130580, &qword_1000EC9C8);
    sub_10008A938();
    sub_1000057D8(&qword_1001305C8, &qword_1001305D0, &qword_1000EC9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305A8);
  }

  return result;
}

unint64_t sub_10008A938()
{
  result = qword_1001305B0;
  if (!qword_1001305B0)
  {
    sub_100005144(&qword_1001305A0, &qword_1000EC9E8);
    sub_1000057D8(&qword_1001305B8, &qword_1001305C0, &qword_1000EC9F0);
    sub_1000057D8(&qword_10012F750, &qword_10012F758, &qword_1000EBF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305B0);
  }

  return result;
}

uint64_t sub_10008AA20()
{
  v1 = *(type metadata accessor for OverlayTabBar() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_10007FEB4();
}

uint64_t sub_10008AA7C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005144(&qword_10012E650, &qword_1000EDA30);
    sub_10008DB20(a2, &type metadata accessor for StoreTab);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008AB20()
{
  result = qword_100130638;
  if (!qword_100130638)
  {
    sub_100005144(&qword_100130630, &qword_1000ECA78);
    sub_10008ABAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130638);
  }

  return result;
}

unint64_t sub_10008ABAC()
{
  result = qword_100130640;
  if (!qword_100130640)
  {
    sub_100005144(&qword_100130648, &qword_1000ECA80);
    sub_10008AC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130640);
  }

  return result;
}

unint64_t sub_10008AC38()
{
  result = qword_100130650;
  if (!qword_100130650)
  {
    sub_100005144(&qword_100130658, &qword_1000ECA88);
    sub_1000057D8(&qword_100130660, &qword_100130668, &qword_1000ECA90);
    sub_1000057D8(&qword_10012CDC8, &qword_10012CDD0, &qword_1000E90C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130650);
  }

  return result;
}

unint64_t sub_10008AD24()
{
  result = qword_1001306B8;
  if (!qword_1001306B8)
  {
    sub_100005144(&qword_100130680, &qword_1000ECAA0);
    sub_10008ADDC();
    sub_1000057D8(&qword_10012EE08, &qword_10012EDD8, &qword_1000EB1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306B8);
  }

  return result;
}

unint64_t sub_10008ADDC()
{
  result = qword_1001306C0;
  if (!qword_1001306C0)
  {
    sub_100005144(&qword_1001306C8, &qword_1000ECB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306C0);
  }

  return result;
}

unint64_t sub_10008AE60()
{
  result = qword_1001306E8;
  if (!qword_1001306E8)
  {
    sub_100005144(&qword_100130688, &qword_1000ECAA8);
    sub_10008AEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306E8);
  }

  return result;
}

unint64_t sub_10008AEEC()
{
  result = qword_1001306F0;
  if (!qword_1001306F0)
  {
    sub_100005144(&qword_1001306D8, &qword_1000ECB10);
    sub_10008AF78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306F0);
  }

  return result;
}

unint64_t sub_10008AF78()
{
  result = qword_1001306F8;
  if (!qword_1001306F8)
  {
    sub_100005144(&qword_1001306B0, &qword_1000ECAF8);
    sub_10008B030();
    sub_1000057D8(&qword_100130718, &qword_1001306D0, &qword_1000ECB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306F8);
  }

  return result;
}

unint64_t sub_10008B030()
{
  result = qword_100130700;
  if (!qword_100130700)
  {
    sub_100005144(&qword_1001306A8, &qword_1000ECAF0);
    sub_1000057D8(&qword_100130708, &qword_100130710, &qword_1000ECB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130700);
  }

  return result;
}

uint64_t sub_10008B0E8(uint64_t a1)
{
  v3 = *(type metadata accessor for OverlayTabBar() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100083D3C(a1, v4);
}

unint64_t sub_10008B168()
{
  result = qword_1001307A0;
  if (!qword_1001307A0)
  {
    sub_100005144(&qword_100130790, &qword_1000ECBB0);
    sub_10008B1F4();
    sub_10008B278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307A0);
  }

  return result;
}

unint64_t sub_10008B1F4()
{
  result = qword_1001307A8;
  if (!qword_1001307A8)
  {
    sub_100005144(&qword_1001307B0, &qword_1000ECBB8);
    sub_10008B278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307A8);
  }

  return result;
}

unint64_t sub_10008B278()
{
  result = qword_1001307B8;
  if (!qword_1001307B8)
  {
    sub_100005144(&qword_1001307C0, &qword_1000ECBC0);
    sub_100005144(&qword_1001307C8, &qword_1000ECBC8);
    sub_10008B370();
    swift_getOpaqueTypeConformance2();
    sub_10008DB20(&qword_100130800, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307B8);
  }

  return result;
}

unint64_t sub_10008B370()
{
  result = qword_1001307D0;
  if (!qword_1001307D0)
  {
    sub_100005144(&qword_1001307C8, &qword_1000ECBC8);
    sub_100005144(&qword_1001307D8, &qword_1000ECBD0);
    sub_100005144(&qword_1001307E0, &qword_1000ECBD8);
    type metadata accessor for FillFocusButtonStyle();
    sub_100005144(&qword_1001307E8, &qword_1000ECBE0);
    sub_100005144(&qword_10012E650, &qword_1000EDA30);
    sub_1000057D8(&qword_1001307F0, &qword_1001307E8, &qword_1000ECBE0);
    sub_10008AA7C(&qword_100130500, &qword_100130450);
    swift_getOpaqueTypeConformance2();
    sub_10008DB20(&qword_1001307F8, &type metadata accessor for FillFocusButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10008DB20(&qword_100130800, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307D0);
  }

  return result;
}

unint64_t sub_10008B5E0()
{
  result = qword_100130810;
  if (!qword_100130810)
  {
    sub_100005144(&qword_100130760, &qword_1000ECB60);
    sub_1000057D8(&qword_100130818, &qword_100130758, &qword_1000ECB58);
    sub_1000057D8(&qword_100130820, &qword_100130808, &qword_1000ECBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130810);
  }

  return result;
}

uint64_t sub_10008B6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OverlayTabBar() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_10008B770(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for OverlayTabBar() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10008689C(a1, a2, v6);
}

uint64_t sub_10008B820(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OverlayTabBar() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_10008B8B4()
{
  result = qword_100130838;
  if (!qword_100130838)
  {
    sub_100005144(&qword_100130830, &unk_1000ECF10);
    sub_10008DB20(&qword_100130840, sub_10008B968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130838);
  }

  return result;
}

unint64_t sub_10008B968()
{
  result = qword_100130848;
  if (!qword_100130848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130848);
  }

  return result;
}

uint64_t sub_10008B9C4()
{
  v1 = type metadata accessor for OverlayTabBar();
  v2 = *(*(v1 - 1) + 80);
  v35 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for StoreTab();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v36 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v37 = v0;
  v7 = (v0 + ((v2 + 32) & ~v2));
  v8 = *v7;

  v9 = v1[5];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for LayoutDirection();
    (*(*(v10 - 8) + 8))(&v7[v9], v10);
  }

  else
  {
    v11 = *&v7[v9];
  }

  v12 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DynamicTypeSize();
    (*(*(v13 - 8) + 8))(&v7[v12], v13);
  }

  else
  {
    v14 = *&v7[v12];
  }

  v15 = v1[7];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for UserInterfaceSizeClass();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(&v7[v15], 1, v16))
    {
      (*(v17 + 8))(&v7[v15], v16);
    }
  }

  else
  {
    v18 = *&v7[v15];
  }

  v19 = &v7[v1[8]];
  sub_10008A7A0(*v19, *(v19 + 1), *(v19 + 2), *(v19 + 3), v19[32]);
  v20 = &v7[v1[9]];
  v21 = *(v4 + 48);
  if (!v21(v20, 1, v3))
  {
    (*(v4 + 8))(v20, v3);
  }

  v22 = sub_100002B38(&qword_100130468, &qword_1000EC940);
  v23 = *&v20[*(v22 + 36)];

  v24 = *(v22 + 40);
  if (!v21(&v20[v24], 1, v3))
  {
    (*(v4 + 8))(&v20[v24], v3);
  }

  v25 = *&v7[v1[10] + 8];

  v26 = *&v7[v1[11] + 8];

  v27 = *&v7[v1[12] + 8];

  v28 = &v7[v1[13]];

  v29 = *(v28 + 1);

  v30 = v1[14];
  v31 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  (*(*(v31 - 8) + 8))(&v7[v30], v31);
  v32 = v1[16];
  v33 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  (*(*(v33 - 8) + 8))(&v7[v32], v33);
  (*(v4 + 8))(v37 + ((((v2 + 32) & ~v2) + v35 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_10008BE64(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OverlayTabBar() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for StoreTab() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100011720;

  return sub_1000856B8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10008BFF0()
{
  v1 = type metadata accessor for OverlayTabBar();
  v34 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for StoreTab();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v35 = *(v3 + 64);
  v5 = (v0 + ((v34 + 16) & ~v34));
  v6 = *v5;

  v7 = v1[5];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(&v5[v7], v8);
  }

  else
  {
    v9 = *&v5[v7];
  }

  v10 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    (*(*(v11 - 8) + 8))(&v5[v10], v11);
  }

  else
  {
    v12 = *&v5[v10];
  }

  v13 = v1[7];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v5[v13], 1, v14))
    {
      (*(v15 + 8))(&v5[v13], v14);
    }
  }

  else
  {
    v16 = *&v5[v13];
  }

  v17 = &v5[v1[8]];
  sub_10008A7A0(*v17, *(v17 + 1), *(v17 + 2), *(v17 + 3), v17[32]);
  v18 = &v5[v1[9]];
  v19 = *(v3 + 48);
  if (!v19(v18, 1, v2))
  {
    (*(v3 + 8))(v18, v2);
  }

  v20 = sub_100002B38(&qword_100130468, &qword_1000EC940);
  v21 = *&v18[*(v20 + 36)];

  v22 = *(v20 + 40);
  if (!v19(&v18[v22], 1, v2))
  {
    (*(v3 + 8))(&v18[v22], v2);
  }

  v23 = *&v5[v1[10] + 8];

  v24 = *&v5[v1[11] + 8];

  v25 = *&v5[v1[12] + 8];

  v26 = &v5[v1[13]];

  v27 = *(v26 + 1);

  v28 = v1[14];
  v29 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  (*(*(v29 - 8) + 8))(&v5[v28], v29);
  v30 = v1[16];
  v31 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  (*(*(v31 - 8) + 8))(&v5[v30], v31);
  (*(v3 + 8))(v0 + ((((v34 + 16) & ~v34) + v33 + v4) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_10008C488()
{
  v1 = *(type metadata accessor for OverlayTabBar() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for StoreTab() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100088784((v0 + v2));
}

unint64_t sub_10008C55C()
{
  result = qword_100130888;
  if (!qword_100130888)
  {
    sub_100005144(&qword_100130880, &qword_1000ECC80);
    sub_10008C614();
    sub_1000057D8(&qword_1001308B8, &qword_1001308C0, &qword_1000ECCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130888);
  }

  return result;
}

unint64_t sub_10008C614()
{
  result = qword_100130890;
  if (!qword_100130890)
  {
    sub_100005144(&qword_100130898, &qword_1000ECC88);
    sub_100005144(&qword_1001308A0, &qword_1000ECC90);
    sub_100005144(&qword_1001308A8, &qword_1000ECC98);
    sub_100005144(&qword_10012E1D0, &qword_1000EA5D0);
    sub_10008C7AC();
    sub_1000057D8(&qword_10012E278, &qword_10012E1D0, &qword_1000EA5D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012DBC0, &qword_10012DBC8, &qword_1000E9D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130890);
  }

  return result;
}

unint64_t sub_10008C7AC()
{
  result = qword_1001308B0;
  if (!qword_1001308B0)
  {
    sub_100005144(&qword_1001308A8, &qword_1000ECC98);
    sub_100005144(&qword_10012CE08, &unk_1000E9120);
    sub_100005578();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001308B0);
  }

  return result;
}

uint64_t sub_10008C874@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008C8A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008C8CC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10008C8F8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10008C924()
{
  v1 = type metadata accessor for OverlayTabBar();
  v32 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v3 = *v2;

  v4 = v1[5];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for LayoutDirection();
    (*(*(v5 - 8) + 8))(&v2[v4], v5);
  }

  else
  {
    v6 = *&v2[v4];
  }

  v7 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(&v2[v7], v8);
  }

  else
  {
    v9 = *&v2[v7];
  }

  v10 = v1[7];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(&v2[v10], 1, v11))
    {
      (*(v12 + 8))(&v2[v10], v11);
    }
  }

  else
  {
    v13 = *&v2[v10];
  }

  v14 = &v2[v1[8]];
  sub_10008A7A0(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3), v14[32]);
  v15 = &v2[v1[9]];
  v16 = type metadata accessor for StoreTab();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v19 = sub_100002B38(&qword_100130468, &qword_1000EC940);
  v20 = *&v15[*(v19 + 36)];

  v21 = *(v19 + 40);
  if (!v18(&v15[v21], 1, v16))
  {
    (*(v17 + 8))(&v15[v21], v16);
  }

  v22 = *&v2[v1[10] + 8];

  v23 = *&v2[v1[11] + 8];

  v24 = *&v2[v1[12] + 8];

  v25 = &v2[v1[13]];

  v26 = *(v25 + 1);

  v27 = v1[14];
  v28 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  (*(*(v28 - 8) + 8))(&v2[v27], v28);
  v29 = v1[16];
  v30 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  (*(*(v30 - 8) + 8))(&v2[v29], v30);

  return swift_deallocObject();
}

uint64_t sub_10008CD58()
{
  v1 = *(type metadata accessor for OverlayTabBar() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100082590(v2);
}

unint64_t sub_10008CDC0()
{
  result = qword_100130908;
  if (!qword_100130908)
  {
    sub_100005144(&qword_100130900, &qword_1000ECD10);
    sub_1000057D8(&qword_100130910, &qword_100130918, &qword_1000ECD18);
    sub_1000057D8(&qword_100130920, &qword_100130928, &qword_1000ECD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130908);
  }

  return result;
}

uint64_t sub_10008CEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008CF0C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008CF68()
{
  result = qword_100130940;
  if (!qword_100130940)
  {
    sub_100005144(&qword_1001308E0, &qword_1000ECCF0);
    sub_100005144(&qword_1001308D0, &qword_1000ECCE0);
    type metadata accessor for FillFocusButtonStyle();
    sub_1000057D8(&qword_100130938, &qword_1001308D0, &qword_1000ECCE0);
    sub_10008DB20(&qword_1001307F8, &type metadata accessor for FillFocusButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130940);
  }

  return result;
}

unint64_t sub_10008D0B4()
{
  result = qword_100130948;
  if (!qword_100130948)
  {
    sub_100005144(&qword_1001308F0, &qword_1000ECD00);
    sub_100005144(&qword_1001308E0, &qword_1000ECCF0);
    sub_10008CF68();
    swift_getOpaqueTypeConformance2();
    sub_10008DB20(&qword_100130800, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130948);
  }

  return result;
}

unint64_t sub_10008D1AC()
{
  result = qword_100130978;
  if (!qword_100130978)
  {
    sub_100005144(&qword_100130970, &qword_1000ECD48);
    sub_10008D238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130978);
  }

  return result;
}

unint64_t sub_10008D238()
{
  result = qword_100130980;
  if (!qword_100130980)
  {
    sub_100005144(&qword_100130988, &qword_1000ECD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130980);
  }

  return result;
}

uint64_t sub_10008D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_10008D440()
{
  result = qword_100130998;
  if (!qword_100130998)
  {
    sub_100005144(&qword_100130958, &qword_1000ECD30);
    sub_10008D4F8();
    sub_1000057D8(&qword_1001309A8, &qword_1001309B0, &qword_1000ECD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130998);
  }

  return result;
}

unint64_t sub_10008D4F8()
{
  result = qword_1001309A0;
  if (!qword_1001309A0)
  {
    sub_100005144(&qword_100130990, &qword_1000ECD58);
    sub_100005144(&qword_10012CE08, &unk_1000E9120);
    sub_100005578();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012E318, &qword_10012E320, &qword_1000EA788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001309A0);
  }

  return result;
}

uint64_t sub_10008D5EC()
{
  v1 = type metadata accessor for OverlayTabBar();
  v2 = *(*(v1 - 1) + 80);
  v34 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = (v0 + ((v2 + 32) & ~v2));
  v5 = *v4;

  v6 = v1[5];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for LayoutDirection();
    (*(*(v7 - 8) + 8))(&v4[v6], v7);
  }

  else
  {
    v8 = *&v4[v6];
  }

  v9 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(&v4[v9], v10);
  }

  else
  {
    v11 = *&v4[v9];
  }

  v12 = v1[7];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v4[v12], 1, v13))
    {
      (*(v14 + 8))(&v4[v12], v13);
    }
  }

  else
  {
    v15 = *&v4[v12];
  }

  v16 = &v4[v1[8]];
  sub_10008A7A0(*v16, *(v16 + 1), *(v16 + 2), *(v16 + 3), v16[32]);
  v17 = &v4[v1[9]];
  v18 = type metadata accessor for StoreTab();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v17, 1, v18))
  {
    (*(v19 + 8))(v17, v18);
  }

  v21 = sub_100002B38(&qword_100130468, &qword_1000EC940);
  v22 = *&v17[*(v21 + 36)];

  v23 = *(v21 + 40);
  if (!v20(&v17[v23], 1, v18))
  {
    (*(v19 + 8))(&v17[v23], v18);
  }

  v24 = *&v4[v1[10] + 8];

  v25 = *&v4[v1[11] + 8];

  v26 = *&v4[v1[12] + 8];

  v27 = &v4[v1[13]];

  v28 = *(v27 + 1);

  v29 = v1[14];
  v30 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  (*(*(v30 - 8) + 8))(&v4[v29], v30);
  v31 = v1[16];
  v32 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  (*(*(v32 - 8) + 8))(&v4[v31], v32);

  return swift_deallocObject();
}

uint64_t sub_10008DA30(uint64_t a1)
{
  v4 = *(type metadata accessor for OverlayTabBar() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_10008275C(a1, v6, v7, v1 + v5);
}

uint64_t sub_10008DB20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008DB68()
{
  sub_100005144(&qword_100130590, &qword_1000EC9D8);
  sub_100005144(&qword_10012E650, &qword_1000EDA30);
  sub_100005144(&qword_100130588, &qword_1000EC9D0);
  sub_100005144(&qword_100130580, &qword_1000EC9C8);
  sub_10008A880();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10008AA7C(&qword_1001305D8, &qword_10012FB98);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008DCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008DDBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for RemoteAlertRequest()
{
  result = qword_100130A28;
  if (!qword_100130A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008DEC0()
{
  type metadata accessor for GameOverlayUIConfig.ServiceKind();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConnectionContext();
    if (v1 <= 0x3F)
    {
      sub_10008DF64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10008DF64()
{
  if (!qword_10012E528)
  {
    sub_100005144(&qword_10012E530, &unk_1000EA9A0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10012E528);
    }
  }
}

uint64_t sub_10008DFC8()
{
  v1 = type metadata accessor for RemoteAlertRequest();
  v2 = *(v0 + *(v1 + 24));
  v3 = v2[2];
  if (v3)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = *(v0 + *(v1 + 20));

    v7 = v3;
    v8 = sub_1000DFEF0(v6, v4, v5);
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100011F80(v9, qword_100135C88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "RemoteAlertRequest was constructed without a valid remote audit token", v12, 2u);
    }

    return 0;
  }

  return v8;
}

uint64_t View.gameOverlayController(leftShoulderHandler:rightShoulderHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GameControllerObserver();
  static GameControllerObserver.shared.getter();
  State.init(wrappedValue:)();
  sub_10000519C(a1);
  sub_10000519C(a3);
  View.modifier<A>(_:)();

  sub_10006C574(a1);
  return sub_10006C574(a3);
}

uint64_t sub_10008E204(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  sub_10008E268();
  return swift_getWitnessTable();
}

unint64_t sub_10008E268()
{
  result = qword_100130A70;
  if (!qword_100130A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130A70);
  }

  return result;
}

__n128 sub_10008E2BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10008E2D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10008E318(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10008E390(uint64_t a1, id *a2, uint64_t a3)
{
  if (*a2)
  {
    v23 = *a2;
    v4 = [v23 extendedGamepad];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 leftShoulder];

      if (v6)
      {
        v7 = [v23 extendedGamepad];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 rightShoulder];

          if (v9)
          {
            v10 = *a3;
            v31 = *(a3 + 8);
            v11 = *(a3 + 16);
            v21 = *(a3 + 24);
            v12 = *(a3 + 32);
            v13 = *(a3 + 40);
            v14 = swift_allocObject();
            v15 = *(a3 + 16);
            v14[1] = *a3;
            v14[2] = v15;
            v14[3] = *(a3 + 32);
            v29 = sub_10008E990;
            v30 = v14;
            aBlock = _NSConcreteStackBlock;
            v26 = 1107296256;
            v27 = sub_10008E674;
            v28 = &unk_100123238;
            v16 = _Block_copy(&aBlock);
            v22 = v10;
            sub_10008E864(&v31, v24);
            sub_10000519C(v11);
            sub_10000519C(v12);

            [v6 setPressedChangedHandler:v16];
            _Block_release(v16);
            v17 = swift_allocObject();
            v18 = *(a3 + 16);
            v17[1] = *a3;
            v17[2] = v18;
            v17[3] = *(a3 + 32);
            v29 = sub_10008EA3C;
            v30 = v17;
            aBlock = _NSConcreteStackBlock;
            v26 = 1107296256;
            v27 = sub_10008E674;
            v28 = &unk_100123288;
            v19 = _Block_copy(&aBlock);
            v20 = v22;
            sub_10008E864(&v31, v24);
            sub_10000519C(v11);
            sub_10000519C(v12);

            [v9 setPressedChangedHandler:v19];
            _Block_release(v19);

            return;
          }
        }
      }
    }
  }
}

void sub_10008E674(uint64_t a1, void *a2, float a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a3);
}

void sub_10008E6F8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v12[1] = v1;
  sub_100002B38(&qword_100130828, &qword_1000ECBF0);
  State.wrappedValue.getter();
  v7 = GameControllerObserver.controller.getter();

  v11 = v7;
  v12[0] = v1;
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v6;
  v9 = v2;
  sub_10008E864(v12, v10);
  sub_10000519C(v3);
  sub_10000519C(v5);
  sub_100002B38(&qword_100130A80, &qword_1000ECF08);
  sub_100002B38(&qword_100130830, &unk_1000ECF10);
  sub_10008E8D4();
  sub_10008B8B4();
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_10008E864(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100130A78, &qword_1000ECF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008E8D4()
{
  result = qword_100130A88;
  if (!qword_100130A88)
  {
    sub_100005144(&qword_100130A80, &qword_1000ECF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130A88);
  }

  return result;
}

unint64_t sub_10008E938()
{
  result = qword_100130840;
  if (!qword_100130840)
  {
    sub_10008B968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130840);
  }

  return result;
}

uint64_t sub_10008E990(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(v2 + 40);
      return v3();
    }
  }

  return result;
}

uint64_t sub_10008E9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008E9DC()
{
  v1 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  if (*(v0 + 48))
  {
    v3 = *(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_10008EA3C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      v4 = *(v2 + 56);
      return v3();
    }
  }

  return result;
}

uint64_t sub_10008EA70()
{
  sub_100005144(&qword_100130A80, &qword_1000ECF08);
  sub_100005144(&qword_100130830, &unk_1000ECF10);
  sub_10008E8D4();
  sub_10008B8B4();
  return swift_getOpaqueTypeConformance2();
}

id sub_10008EB44()
{
  type metadata accessor for OverlayBootstrap();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle.GameOverlayUI = result;
  return result;
}

uint64_t *NSBundle.GameOverlayUI.unsafeMutableAddressor()
{
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  return &static NSBundle.GameOverlayUI;
}

id static NSBundle.GameOverlayUI.getter()
{
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.GameOverlayUI;

  return v1;
}

uint64_t sub_10008EC48()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  qword_100135C00 = result;
  *algn_100135C08 = v6;
  return result;
}

uint64_t sub_10008EDBC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  qword_100135C10 = result;
  *algn_100135C18 = v6;
  return result;
}

uint64_t sub_10008EF30()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  qword_100135C20 = result;
  *algn_100135C28 = v6;
  return result;
}

uint64_t sub_10008F09C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  qword_100135C30 = result;
  *algn_100135C38 = v6;
  return result;
}

uint64_t sub_10008F208()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  qword_100135C40 = result;
  *algn_100135C48 = v6;
  return result;
}

uint64_t sub_10008F378()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  qword_100135C50 = result;
  *algn_100135C58 = v6;
  return result;
}

uint64_t sub_10008F4DC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  qword_100135C60 = result;
  *algn_100135C68 = v6;
  return result;
}

uint64_t sub_10008F644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v67 = *(a1 - 8);
  v66 = *(v67 + 64);
  __chkstk_darwin(a1);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BootstrapResult();
  v59 = v7;
  v8 = *(a1 + 16);
  v9 = sub_100005144(&qword_100130BC8, &qword_1000ECFE8);
  v58 = v9;
  v10 = sub_100005144(&qword_100130BD0, &qword_1000ECFF0);
  v56 = v10;
  v65 = *(a1 + 24);
  v11 = v65;
  v12 = sub_100092798();
  v55 = v12;
  v54 = sub_100092854();
  v68 = v7;
  v69 = v8;
  v13 = v8;
  v63 = v8;
  v70 = v9;
  v71 = v10;
  v72 = v11;
  v73 = v12;
  v74 = v54;
  v14 = type metadata accessor for TaskView();
  v15 = *(v14 - 8);
  v60 = v14;
  v61 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v57 = &v48 - v20;
  v21 = v67;
  v22 = *(v67 + 16);
  v22(v6, v3, a1, v19);
  v23 = v22;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = swift_allocObject();
  v52 = v25;
  *(v25 + 16) = v13;
  v26 = v65;
  *(v25 + 24) = v65;
  v49 = *(v21 + 32);
  v67 = v21 + 32;
  v27 = a1;
  v49(v25 + v24, v6, a1);
  v28 = v6;
  v29 = v64;
  v23(v6, v64, v27);
  v30 = v23;
  v50 = v23;
  v31 = swift_allocObject();
  v51 = v31;
  v32 = v63;
  *(v31 + 16) = v63;
  *(v31 + 24) = v26;
  v33 = v49;
  v49(v31 + v24, v28, v27);
  v30(v28, v29, v27);
  v34 = swift_allocObject();
  v35 = v65;
  *(v34 + 16) = v32;
  *(v34 + 24) = v35;
  v33(v34 + v24, v28, v27);
  v50(v28, v64, v27);
  v36 = swift_allocObject();
  v37 = v63;
  *(v36 + 16) = v63;
  *(v36 + 24) = v35;
  v33(v36 + v24, v28, v27);
  *&v47 = v35;
  *(&v47 + 1) = v55;
  *(&v46 + 1) = v56;
  *(&v45 + 1) = v37;
  *&v46 = v58;
  *&v45 = v59;
  v38 = v53;
  sub_100091980(&unk_1000ED000, v52, sub_100092A0C, v51, sub_100092A98, v34, sub_100092B4C, v36, v45, v46, v47);
  v39 = v60;
  WitnessTable = swift_getWitnessTable();
  v41 = v57;
  v42 = v38;
  sub_10009B680(v38, v39, WitnessTable);
  v43 = *(v61 + 8);
  v43(v42, v39);
  sub_10009B680(v41, v39, WitnessTable);
  return (v43)(v41, v39);
}

uint64_t sub_10008FB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100002B38(&qword_100130C10, &qword_1000ED028) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for Bag();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v9 = *(*(sub_100002B38(&qword_10012E458, qword_1000ECF80) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for BootstrapResult();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v14;
  v4[22] = v13;

  return _swift_task_switch(sub_10008FD1C, v14, v13);
}

uint64_t sub_10008FD1C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = type metadata accessor for OverlayBootstrapView();
  *(v0 + 184) = v7;
  *(v0 + 240) = *(v7 + 44);
  *(v0 + 192) = sub_100002B38(qword_100130B28, qword_1000ECF40);
  Binding.wrappedValue.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005688(*(v0 + 120), &qword_10012E458, qword_1000ECF80);
LABEL_8:
    v13 = *(v0 + 24);
    v14 = *(v7 + 48);
    v15 = async function pointer to Bootstrap.run(rootViewController:)[1];
    v16 = swift_task_alloc();
    *(v0 + 224) = v16;
    *v16 = v0;
    v16[1] = sub_100090540;
    v17 = *(v0 + 144);

    return Bootstrap.run(rootViewController:)(v17, 0);
  }

  (*(*(v0 + 136) + 32))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
  if ((sub_100090A78() & 1) == 0)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    goto LABEL_8;
  }

  v8 = *(v0 + 152);
  *(v0 + 200) = BootstrapResult.objectGraph.getter();
  v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 208) = v10;
  *v10 = v0;
  v10[1] = sub_10008FF34;
  v11 = *(v0 + 96);
  v12 = *(v0 + 64);

  return BaseObjectGraph.inject<A>(_:)(v11);
}

uint64_t sub_10008FF34()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 216) = v0;

  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_100090884;
  }

  else
  {
    v8 = sub_10009008C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10009008C()
{
  v53 = v0;
  v1 = v0[20];

  if (qword_10012CC10 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = type metadata accessor for Logger();
  sub_100011F80(v7, qword_100135C70);
  v8 = *(v5 + 16);
  v8(v2, v3, v6);
  v8(v4, v3, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[11];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v51;
    *v13 = 136315394;
    v14 = [Bag.amsBag.getter() expirationDate];
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = v0[6];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v20 = v0[6];
    v19 = v0[7];
    v21 = type metadata accessor for Date();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v20, v16, 1, v21);
    sub_100092BE8(v20, v19);
    v23 = (*(v22 + 48))(v19, 1, v21);
    v24 = v0[7];
    if (v23 == 1)
    {
      sub_100005688(v0[7], &qword_100130C10, &qword_1000ED028);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v27 = v0[7];
      v26 = Date.description.getter();
      v25 = v28;
      (*(v22 + 8))(v24, v21);
    }

    v29 = v0[10];
    v30 = v0[8];
    v31 = *(v0[9] + 8);
    v31(v0[11], v30);
    v32 = sub_1000BA5C8(v26, v25, &v52);

    *(v13 + 4) = v32;
    *(v13 + 12) = 1024;
    v33 = Bag.isExpired.getter() & 1;
    v31(v29, v30);
    v18 = v31;
    *(v13 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v9, v10, "Found cached bootstrap result, with bag: %s, isExpired: %{BOOL}d", v13, 0x12u);
    sub_10002E6CC(v51);
  }

  else
  {
    v17 = v0[8];
    v18 = *(v0[9] + 8);
    v18(v0[10], v17);

    v18(v12, v17);
  }

  v34 = v0[19];
  v35 = v0[16];
  v36 = v0[17];
  v37 = v0[12];
  v38 = v0[8];
  (*(v36 + 16))(v0[2], v34, v35);
  BootstrapResult.metricsPipelineTransformer.getter();
  MetricsPipelineTransformer.copy()();

  BootstrapResult.metricsPipelineTransformer.setter();
  BootstrapResult.freshnessWatchdog.getter();
  JSFreshnessWatchdog.willEnterForeground()();

  v18(v37, v38);
  (*(v36 + 8))(v34, v35);
  v40 = v0[18];
  v39 = v0[19];
  v42 = v0[14];
  v41 = v0[15];
  v44 = v0[12];
  v43 = v0[13];
  v46 = v0[10];
  v45 = v0[11];
  v48 = v0[6];
  v47 = v0[7];

  v49 = v0[1];

  return v49();
}

uint64_t sub_100090540()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_10009098C;
  }

  else
  {
    v7 = sub_10009067C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10009067C()
{
  v1 = *(v0 + 184);
  v22 = *(v0 + 240);
  v23 = *(v0 + 192);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  v21 = *(v0 + 104);
  v7 = *(v0 + 24);
  v24 = *(v0 + 16);

  BootstrapResult.objectGraph.getter();
  v8 = BootstrapResult.metricsPipelineTransformer.getter();
  sub_100090D5C(v8, v1);

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  BootstrapResult.objectGraph.setter();
  (*(v4 + 16))(v6, v3, v5);
  (*(v4 + 56))(v6, 0, 1, v5);
  sub_1000035B4(v6, v21, &qword_10012E458, qword_1000ECF80);
  Binding.wrappedValue.setter();
  sub_100005688(v6, &qword_10012E458, qword_1000ECF80);
  (*(v4 + 32))(v24, v3, v5);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v18 = *(v0 + 48);
  v17 = *(v0 + 56);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100090884()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[17];

  (*(v4 + 8))(v2, v3);
  v17 = v0[27];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[6];
  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10009098C()
{
  v1 = v0[20];

  v14 = v0[29];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[6];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100090A78()
{
  v0 = sub_100002B38(&qword_100130C10, &qword_1000ED028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for BagOfflinePolicy();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();

  ASKBagContract.bagOfflinePolicy.getter();
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    static BagOfflinePolicy.standard.getter();
    if (v13(v7, 1, v8) != 1)
    {
      sub_100005688(v7, &qword_10012E660, &unk_1000ED030);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  v14 = [ASKBagContract.amsBag.getter() expirationDate];
  swift_unknownObjectRelease();
  if (v14)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v3, v15, 1, v16);
  v17 = BagOfflinePolicy.isWithinDefaultMaxAge(bagExpirationDate:)();

  sub_100005688(v3, &qword_100130C10, &qword_1000ED028);
  (*(v9 + 8))(v12, v8);
  return v17 & 1;
}

uint64_t sub_100090D5C(uint64_t a1, uint64_t a2)
{
  v24[0] = type metadata accessor for Dependency();
  v4 = *(v24[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24[0]);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v13);
  (*(v11 + 16))(v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v14);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(a2 + 16);
  (*(v11 + 32))(v16 + v15, v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  MetricsPipelineTransformer.transform(_:)();

  static GameObjectGraphBuilder.frameworkObjects(metricsPipelineTransformer:)();
  sub_100002B38(&qword_10012E698, &qword_1000EAB58);

  Dependency.init<A>(satisfying:with:)();
  v17 = type metadata accessor for DismissDashboardNotifier();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v24[1] = DismissDashboardNotifier.init()();
  Dependency.init<A>(satisfying:with:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v20 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v21 = *(v4 + 8);
  v22 = v24[0];
  v21(v7, v24[0]);
  v21(v10, v22);
  return v20;
}

uint64_t sub_100091048(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100130C08, &qword_1000ED020);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v23[-1] - v4);
  v6 = type metadata accessor for _TaskViewDefaultWorking();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(a1 + 24);

    v11(v23, v13);
    v14 = v24;
    v15 = sub_10002D754(v23, v24);
    v16 = *(*(v14 - 8) + 64);
    v17 = __chkstk_darwin(v15);
    (*(v19 + 16))(&v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v20 = AnyView.init<A>(_:)();
    sub_10002E6CC(v23);
    *v5 = v20;
    swift_storeEnumTagMultiPayload();
    sub_100092ED0(&qword_100130BE0, &type metadata accessor for _TaskViewDefaultWorking);

    _ConditionalContent<>.init(storage:)();
    sub_10006C574(v11);
  }

  else
  {
    _TaskViewDefaultWorking.init()();
    (*(v7 + 16))(v5, v10, v6);
    swift_storeEnumTagMultiPayload();
    sub_100092ED0(&qword_100130BE0, &type metadata accessor for _TaskViewDefaultWorking);
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_100091374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v42 = sub_100002B38(&qword_100130C00, &unk_1000ED010);
  v9 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v11 = (&v39 - v10);
  v12 = type metadata accessor for _TaskViewDefaultFailed();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CC10 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100011F80(v17, qword_100135C70);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = a2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v40 = v16;
    v23 = a4;
    v24 = v12;
    v25 = v13;
    v26 = a3;
    v27 = v22;
    *v21 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "Overlay bootstrap failed: %@", v21, 0xCu);
    sub_100005688(v27, &qword_100131110, &unk_1000EC870);
    a3 = v26;
    v13 = v25;
    v12 = v24;
    a4 = v23;
    v16 = v40;

    a2 = v41;
  }

  v29 = *(a4 + 32);
  if (v29)
  {
    v30 = *(a4 + 40);

    v29(v44, a1, a2, a3);
    v31 = v45;
    v32 = sub_10002D754(v44, v45);
    v33 = *(*(v31 - 8) + 64);
    v34 = __chkstk_darwin(v32);
    (*(v36 + 16))(&v39 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
    v37 = AnyView.init<A>(_:)();
    sub_10002E6CC(v44);
    *v11 = v37;
    swift_storeEnumTagMultiPayload();
    sub_100092ED0(&qword_100130BF0, &type metadata accessor for _TaskViewDefaultFailed);

    _ConditionalContent<>.init(storage:)();
    sub_10006C574(v29);
  }

  else
  {
    swift_errorRetain();

    _TaskViewDefaultFailed.init(error:retry:)();
    (*(v13 + 16))(v11, v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_100092ED0(&qword_100130BF0, &type metadata accessor for _TaskViewDefaultFailed);
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_100091820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = type metadata accessor for OverlayBootstrapView();
  v17(a1, *(a2 + *(v18 + 52)));
  sub_10009B680(v11, a3, a4);
  v19 = *(v8 + 8);
  v19(v11, a3);
  sub_10009B680(v14, a3, a4);
  return (v19)(v14, a3);
}

uint64_t sub_100091980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11)
{
  v22 = a6;
  v23 = a7;
  v20 = a4;
  v21 = a5;
  v19[1] = a10;
  v19[2] = a9;
  v19[0] = a11;
  v11 = type metadata accessor for TaskUpdate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002B38(&qword_100130BF8, &qword_1000ED008);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  TaskUpdate.init()();
  static Binding.constant(_:)();
  (*(v12 + 8))(v15, v11);
  return TaskView.init(_:task:working:failed:content:)();
}

uint64_t sub_100091B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MetricsFieldExclusionRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for HostAppFieldsProvider();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = type metadata accessor for OverlayBootstrapView();
  v15 = (a3 + *(result + 56));
  if (v15[1])
  {
    v16 = *v15;
    v17 = v15[1];

    HostAppFieldsProvider.init(bundleID:)();
    v22[3] = v9;
    v22[4] = sub_100092ED0(&qword_100130C18, &type metadata accessor for HostAppFieldsProvider);
    v18 = sub_100012854(v22);
    (*(v10 + 16))(v18, v13, v9);
    static MetricsFieldExclusionRequest.hostApp.getter();
    v19 = MetricsPipelineTransformer.State.aggregator.modify();
    MetricsFieldsAggregator.addOptOutProvider(_:forRequest:)();
    (*(v5 + 8))(v8, v4);
    v19(v21, 0);
    (*(v10 + 8))(v13, v9);
    return sub_10002E6CC(v22);
  }

  return result;
}

uint64_t sub_100091D84(uint64_t a1)
{
  v1[12] = a1;
  v2 = type metadata accessor for NativeIntentDispatcher();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100091E44, 0, 0);
}

uint64_t sub_100091E44()
{
  v1 = *(v0 + 120);
  NativeIntentDispatcher.init()();
  v2 = async function pointer to static GameObjectGraphBuilder.intentDispatcher()[1];
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_100091EE4;

  return static GameObjectGraphBuilder.intentDispatcher()(v0 + 16);
}

uint64_t sub_100091EE4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v4 = sub_100092110;
  }

  else
  {
    v4 = sub_100092010;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100092010()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v3[3] = v4;
  v3[4] = &protocol witness table for NativeIntentDispatcher;
  sub_100012854(v3);
  (*(v2 + 16))();
  sub_1000035B4((v0 + 2), (v0 + 7), &qword_10012E678, &qword_1000EAB48);
  NativeIntentDispatcher.next.setter();
  sub_100005688((v0 + 2), &qword_10012E678, &qword_1000EAB48);
  (*(v2 + 8))(v1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100092110()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_100092178()
{
  v0 = type metadata accessor for Logger();
  sub_10006D8E0(v0, qword_100135C70);
  sub_100011F80(v0, qword_100135C70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000921F4()
{
  v0 = type metadata accessor for Logger();
  sub_10006D8E0(v0, qword_100135C88);
  sub_100011F80(v0, qword_100135C88);
  return Logger.init(subsystem:category:)();
}

void sub_100092280()
{
  sub_100013388();
  if (v0 <= 0x3F)
  {
    sub_10009265C(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10009265C(319, &qword_100130BB0, &qword_10012E458, qword_1000ECF80, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Bootstrap();
        if (v3 <= 0x3F)
        {
          sub_1000926C0();
          if (v4 <= 0x3F)
          {
            sub_100049AF0();
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

uint64_t sub_1000923D0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002B38(qword_100130B28, qword_1000ECF40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Bootstrap();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100092514(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100002B38(qword_100130B28, qword_1000ECF40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Bootstrap();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10009265C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005144(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000926C0()
{
  if (!qword_100130BB8)
  {
    type metadata accessor for NativeIntentDispatchableKinds();
    sub_100092ED0(&qword_100130BC0, &type metadata accessor for NativeIntentDispatchableKinds);
    v0 = type metadata accessor for JSNativeIntentDispatcher();
    if (!v1)
    {
      atomic_store(v0, &qword_100130BB8);
    }
  }
}

unint64_t sub_100092798()
{
  result = qword_100130BD8;
  if (!qword_100130BD8)
  {
    sub_100005144(&qword_100130BC8, &qword_1000ECFE8);
    sub_100092ED0(&qword_100130BE0, &type metadata accessor for _TaskViewDefaultWorking);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130BD8);
  }

  return result;
}

unint64_t sub_100092854()
{
  result = qword_100130BE8;
  if (!qword_100130BE8)
  {
    sub_100005144(&qword_100130BD0, &qword_1000ECFF0);
    sub_100092ED0(&qword_100130BF0, &type metadata accessor for _TaskViewDefaultFailed);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130BE8);
  }

  return result;
}

uint64_t sub_100092914(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(type metadata accessor for OverlayBootstrapView() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_10008FB10(a1, v1 + v7, v4, v5);
}

uint64_t sub_100092A0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for OverlayBootstrapView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100091048(v4);
}

uint64_t sub_100092A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for OverlayBootstrapView() - 8);
  v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_100091374(a1, a2, a3, v12, a4);
}

uint64_t sub_100092B4C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for OverlayBootstrapView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100091820(a1, v6, v3, v4);
}

uint64_t sub_100092BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100130C10, &qword_1000ED028);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100092C58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for OverlayBootstrapView();
  v4 = *(*(v3 - 1) + 64);
  v5 = (v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80)));
  v6 = *(v5 + 1);

  if (*(v5 + 2))
  {
    v7 = *(v5 + 3);
  }

  if (*(v5 + 4))
  {
    v8 = *(v5 + 5);
  }

  v9 = &v5[v3[11]];
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(sub_100002B38(qword_100130B28, qword_1000ECF40) + 32);
  v13 = type metadata accessor for BootstrapResult();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v9[v12], 1, v13))
  {
    (*(v14 + 8))(&v9[v12], v13);
  }

  v15 = v3[12];
  v16 = type metadata accessor for Bootstrap();
  (*(*(v16 - 8) + 8))(&v5[v15], v16);

  v17 = *&v5[v3[14] + 8];

  return swift_deallocObject();
}

uint64_t sub_100092E34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for OverlayBootstrapView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100091B30(a1, a2, v8);
}

uint64_t sub_100092ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100092F18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BootstrapResult();
  sub_100005144(&qword_100130BC8, &qword_1000ECFE8);
  sub_100005144(&qword_100130BD0, &qword_1000ECFF0);
  sub_100092798();
  sub_100092854();
  type metadata accessor for TaskView();
  return swift_getWitnessTable();
}

uint64_t sub_100092FE4(void *a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 64) = 0;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_10003EF48(a3, v3 + 32);
  swift_endAccess();
  return v3;
}

uint64_t sub_10009309C()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_1000944EC(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1000930E4()
{
  type metadata accessor for RemoteSceneManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptyDictionarySingleton;
  qword_100135CA0 = v0;
  return result;
}

uint64_t sub_10009312C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  if (!v5)
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        goto LABEL_12;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  while (1)
  {
    v8 = v7;
LABEL_8:
    v9 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v10 = *v9;
    v11 = v9[1];
    v62[0] = *v9;
    v62[1] = v11;

    if (sub_1000938A0(v62, v1))
    {
      break;
    }

    v5 &= v5 - 1;

    v7 = v8;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v33 = *(v1 + 112);
  if (*(v33 + 16))
  {

    v34 = sub_1000C547C(v10, v11);
    if (v35)
    {
      v36 = *(*(v33 + 56) + 8 * v34);

      swift_beginAccess();
      sub_100094554(v36 + 32, &v59);

      v37 = *(&v60 + 1);

      if (v37)
      {
        sub_10003FB38(&v59, v62);
        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100011F80(v38, qword_100135C88);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v59 = v42;
          *v41 = 136315138;
          v43 = sub_1000BA5C8(v10, v11, &v59);

          *(v41 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v39, v40, "dashboardDidDismiss: Requesting the dashboard [%s] to be dismissed..", v41, 0xCu);
          sub_10002E6CC(v42);
        }

        else
        {
        }

LABEL_56:
        v54 = v63;
        v55 = v64;
        sub_10002D754(v62, v63);
        v31 = (*(v55 + 32))(v54, v55);
        sub_10002E6CC(v62);
        return v31 & 1;
      }

      goto LABEL_45;
    }
  }

  v61 = 0;
  v59 = 0u;
  v60 = 0u;
LABEL_45:
  sub_1000944EC(&v59);
LABEL_12:
  v56 = v1;
  v12 = *(v1 + 112);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = &unk_10012C000;
  v57 = v12;
  if (!v16)
  {
LABEL_16:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_50;
      }

      if (v20 >= v17)
      {

        goto LABEL_28;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
      if (v16)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    v20 = v18;
LABEL_19:
    v21 = (*(v12 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v16)))));
    v22 = *v21;
    v23 = v21[1];

    v24._object = 0x80000001000E6A60;
    v24._countAndFlagsBits = 0xD00000000000001BLL;
    v58 = v22;
    v25 = String.hasPrefix(_:)(v24);
    if (v19[387] != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100011F80(v26, qword_100135C88);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v27, v28))
    {
      break;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v62[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_1000BA5C8(v58, v23, v62);
    *(v29 + 12) = 1024;
    *(v29 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v27, v28, "dashboardDidDismiss: [%s] Is this an accessPoint token? %{BOOL}d", v29, 0x12u);
    sub_10002E6CC(v30);
    v19 = &unk_10012C000;

    v12 = v57;

    if (v25)
    {
      goto LABEL_37;
    }

LABEL_25:
    v16 &= v16 - 1;

    v18 = v20;
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  if (!v25)
  {
    goto LABEL_25;
  }

LABEL_37:

  v44 = *(v56 + 112);
  if (!*(v44 + 16))
  {
LABEL_47:

    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_48;
  }

  v45 = *(v56 + 112);

  v46 = sub_1000C547C(v58, v23);
  if ((v47 & 1) == 0)
  {

    goto LABEL_47;
  }

  v48 = *(*(v44 + 56) + 8 * v46);

  swift_beginAccess();
  sub_100094554(v48 + 32, &v59);

  if (*(&v60 + 1))
  {
    sub_10003FB38(&v59, v62);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v59 = v52;
      *v51 = 136315138;
      v53 = sub_1000BA5C8(v58, v23, &v59);

      *(v51 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "dashboardDidDismiss: Requesting the dashboard [%s] to be dismissed..", v51, 0xCu);
      sub_10002E6CC(v52);
    }

    else
    {
    }

    goto LABEL_56;
  }

LABEL_51:

LABEL_48:
  sub_1000944EC(&v59);
LABEL_28:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1000938A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5._object = 0x80000001000E6AA0;
  v5._countAndFlagsBits = 0xD000000000000018;
  v6 = String.hasPrefix(_:)(v5);
  swift_beginAccess();
  v7 = *(a2 + 112);
  if (*(v7 + 16))
  {

    v8 = sub_1000C547C(v3, v4);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {

        v12 = 1;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_7:
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100011F80(v13, qword_100135C88);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_1000BA5C8(v3, v4, &v19);
    *(v16 + 12) = 1024;
    *(v16 + 14) = v6;
    *(v16 + 18) = 1024;
    *(v16 + 20) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "dashboardDidDismiss: [%s] Is this a dashboard token? %{BOOL}d, is the scene valid? %{BOOL}d", v16, 0x18u);
    sub_10002E6CC(v17);
  }

  return v6 & v12;
}

void sub_100093AC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28[-v10];
  swift_beginAccess();
  v12 = *(v3 + 112);
  if (*(v12 + 16))
  {

    v13 = sub_1000C547C(a1, a2);
    if ((v14 & 1) == 0)
    {

      return;
    }

    v15 = *(*(v12 + 56) + 8 * v13);

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      return;
    }

    v17 = *(v4 + 112);
    if (*(v17 + 16))
    {
      v18 = *(v4 + 112);

      v19 = sub_1000C547C(a1, a2);
      if (v20)
      {
        v21 = *(*(v17 + 56) + 8 * v19);

        v22 = swift_unknownObjectWeakLoadStrong();

LABEL_10:
        swift_beginAccess();

        sub_1000D4748(0, a1, a2);
        swift_endAccess();
        v23 = type metadata accessor for TaskPriority();
        (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
        type metadata accessor for MainActor();
        v24 = v22;
        v25 = Strong;

        v26 = static MainActor.shared.getter();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = &protocol witness table for MainActor;
        *(v27 + 32) = v22;
        *(v27 + 40) = v25;
        *(v27 + 48) = a1;
        *(v27 + 56) = a2;
        *(v27 + 64) = a3 & 1;
        sub_100014BBC(0, 0, v11, &unk_1000ED0E0, v27);

        return;
      }
    }

    v22 = 0;
    goto LABEL_10;
  }
}

uint64_t sub_100093D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 104) = a8;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  type metadata accessor for MainActor();
  *(v8 + 96) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100093DE0, v10, v9);
}

uint64_t sub_100093DE0()
{
  v33 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);

  if (v2)
  {
    v3 = *(v0 + 64);
    goto LABEL_11;
  }

  v4 = [*(v0 + 72) windows];
  sub_1000946F0();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    v3 = 0;
    goto LABEL_11;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  v3 = v7;

LABEL_11:
  v8 = qword_10012CC18;
  v9 = *(v0 + 64);
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 88);
  v11 = type metadata accessor for Logger();
  sub_100011F80(v11, qword_100135C88);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000BA5C8(v15, v14, &v32);
    _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to dismiss remote alert for token: %s", v16, 0xCu);
    sub_10002E6CC(v17);
  }

  v18 = *(v0 + 72);
  if (*(v0 + 104) == 1)
  {
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v3;
    *(v0 + 48) = sub_100094774;
    *(v0 + 56) = v20;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1000D431C;
    *(v0 + 40) = &unk_100123420;
    v21 = _Block_copy((v0 + 16));
    v22 = *(v0 + 56);
    v23 = v3;

    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    *(v0 + 48) = sub_1000947A8;
    *(v0 + 56) = v24;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1000D4840;
    *(v0 + 40) = &unk_100123470;
    v25 = _Block_copy((v0 + 16));
    v26 = *(v0 + 56);
    v27 = v18;

    [v19 animateWithDuration:v21 animations:v25 completion:0.3];

    _Block_release(v25);
    _Block_release(v21);
  }

  else
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    v29 = *(v0 + 72);
    if (v28)
    {
      v30 = v29;
      [v28 invalidate];
    }

    else
    {
      [v29 _invalidate];
    }
  }

  v31 = *(v0 + 8);

  return v31();
}

id sub_1000941E4(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = "invalidate";
  }

  else
  {
    v4 = "_invalidate";
    v3 = a2;
  }

  return [v3 v4];
}

void sub_100094248(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(v3 + 112);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = *(v3 + 112);
  swift_bridgeObjectRetain_n();
  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(v6 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v16 = *v14;
      v15 = v14[1];

      v17._countAndFlagsBits = a1;
      v17._object = a2;
      if (String.hasPrefix(_:)(v17))
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v18 = *(v3 + 112);
    if (*(v18 + 16))
    {
      v19 = *(v3 + 112);

      v20 = sub_1000C547C(v16, v15);
      if (v21)
      {
        v22 = *(*(v18 + 56) + 8 * v20);

        swift_beginAccess();
        sub_100094554(v22 + 32, &v25);

LABEL_17:
        sub_100093AC4(v16, v15, 0);
        *a3 = v16;
        *(a3 + 8) = v15;
        v23 = v26;
        *(a3 + 16) = v25;
        *(a3 + 32) = v23;
        *(a3 + 48) = v27;
        return;
      }
    }

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_17;
  }

LABEL_5:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100094460()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000944EC(uint64_t a1)
{
  v2 = sub_100002B38(&unk_100131120, &unk_1000EAAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100094554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&unk_100131120, &unk_1000EAAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000945C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_100094614(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100011720;

  return sub_100093D40(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000946F0()
{
  result = qword_100130DD0;
  if (!qword_100130DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130DD0);
  }

  return result;
}

uint64_t sub_10009473C()
{

  return swift_deallocObject();
}

id sub_100094774()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_100094790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000947BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100095A00(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100095998(v12);
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

uint64_t sub_100094A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100095A00(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100095998(v12);
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

uint64_t sub_100094D14()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonProxy];
  v3 = [v2 getGamedFiredUp];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v7 = *(v0 + 8);

  return v7();
}

id sub_100094EA8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100094EFC(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_100094FF0;

  return v6(v2 + 16);
}

uint64_t sub_100094FF0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v4 = *(v1 + 24);
  *v3 = *(v1 + 16);
  v3[1] = v4;
  v5 = *(v7 + 8);

  return v5();
}

void sub_100095134()
{
  v0 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v30 - v2;
  v4 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((byte_100130160 & 1) == 0)
  {
    v9 = static GameOverlayUIConfig.machServiceDomain.getter();
    v11 = v10;
    v12 = v5[13];
    v12(v8, enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:), v4);
    sub_10007C8DC(v9, v11);
    v13 = v5[1];
    v13(v8, v4);
    v12(v8, enum case for GameOverlayUIConfig.ServiceKind.auth(_:), v4);
    sub_10007C8DC(v9, v11);
    v13(v8, v4);
    v12(v8, enum case for GameOverlayUIConfig.ServiceKind.multiplayer(_:), v4);
    sub_10007C8DC(v9, v11);
    v13(v8, v4);
    v12(v8, enum case for GameOverlayUIConfig.ServiceKind.internalUse(_:), v4);
    sub_10007C8DC(v9, v11);

    v13(v8, v4);
    byte_100130160 = 1;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100011F80(v14, qword_100135C88);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Listeners started", v17, 2u);
  }

  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  static GameOverlayDashboardVisibilityNotifier.reset()();
  v18 = objc_opt_self();
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  [v18 setMutableFeatureName:v19 toValue:v20];

  static TaskPriority.high.getter();
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v3, 0, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_100094A5C(0, 0, v3, &unk_1000ED128, v22);

  sub_100095998(v3);
  v23 = objc_opt_self();
  v24 = [v23 sharedURLCache];
  [v24 setDiskCapacity:104857600];

  v25 = [v23 sharedURLCache];
  [v25 setMemoryCapacity:20971520];

  v26 = static CommandLine.argc.getter();
  v27 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v26, v27, 0, v29);
}

id sub_10009564C(void *a1, void *a2, void *a3)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100011F80(v6, qword_100135C88);
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    *(v12 + 4) = v7;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v7;
    v13[1] = v8;
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v13[2] = v9;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Application: %@, configuration for connecting scene session: %@, options: %@", v12, 0x20u);
    sub_100002B38(&qword_100131110, &unk_1000EC870);
    swift_arrayDestroy();
  }

  v17 = [v8 role];
  v18 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v17];

  sub_100095868();
  [v18 setSceneClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for GameOverlayUIRemoteAlertSceneDelegate();
  [v18 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v18;
}

unint64_t sub_100095868()
{
  result = qword_100130F00;
  if (!qword_100130F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130F00);
  }

  return result;
}

uint64_t sub_1000958B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000958EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011720;

  return sub_100094CF4(a1);
}

uint64_t sub_100095998(uint64_t a1)
{
  v2 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100095A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100095A70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014BAC;

  return sub_100094EFC(a1, v5);
}

uint64_t sub_100095B28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100095B60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011720;

  return sub_100094EFC(a1, v5);
}

uint64_t sub_100095C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100095C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100095CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002B38(&qword_10012E440, &qword_1000EA890);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28[-1] - v9;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v27 = v1;
  sub_1000967B0(v1, v28);
  v13 = swift_allocObject();
  sub_1000967EC(v28, v13 + 16);
  v14 = objc_opt_self();

  v15 = [v14 standardUserDefaults];
  NSUserDefaults.registerGamesDefaults()();

  v16 = sub_100002B38(&qword_100130F20, &qword_1000ED248);
  v17 = (a1 + v16[14]);
  *v17 = v11;
  v17[1] = v12;
  *a1 = sub_100096824;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  v18 = *(qword_100135CF0 + 24);
  type metadata accessor for OverlayBootstrap();
  sub_100096AA4(&qword_10012E450, type metadata accessor for OverlayBootstrap);

  Bindable<A>.init(wrappedValue:)();
  Bindable.wrappedValue.getter();
  v19 = *(v28[0] + 16);

  *(a1 + v16[13]) = v19;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v20 = a1 + v16[11];
  Bindable<A>.subscript.getter();

  v21 = *(v4 + 8);
  v21(v7, v3);
  Bindable.wrappedValue.getter();
  v22 = a1 + v16[12];
  sub_1000BB51C();

  v21(v10, v3);
  sub_1000967B0(v27, v28);
  v23 = swift_allocObject();
  sub_1000967EC(v28, v23 + 16);
  v24 = (a1 + *(sub_100002B38(&qword_100130F28, &unk_1000ED288) + 36));
  v25 = v24 + *(type metadata accessor for _TaskModifier() + 20);
  result = static TaskPriority.userInitiated.getter();
  *v24 = &unk_1000ED280;
  v24[1] = v23;
  return result;
}

uint64_t sub_100096050@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v3 = *(v17[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17[0]);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImpedimentFlowConfig();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for Dependency();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ImpedimentFlowDestinationStates();
  v14 = *(a1 + 48);
  v18[0] = *(a1 + 40);
  v18[1] = v14;
  sub_100002B38(&qword_10012E460, &qword_1000EA8D0);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v10 + 8))(v13, v9);
  swift_unknownObjectWeakLoadStrong();
  (*(v3 + 104))(v6, enum case for ImpedimentFlowConfig.UseCase.inGame(_:), v17[0]);
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  sub_1000967B0(a1, v18);
  v15 = swift_allocObject();
  sub_1000967EC(v18, v15 + 16);
  sub_100002B38(&qword_100130F30, &qword_1000ED2B0);
  sub_1000969E8();
  return ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
}

uint64_t sub_100096314@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = static Color.clear.getter();
  sub_1000967B0(a1, v9);
  v5 = swift_allocObject();
  sub_1000967EC(v9, v5 + 16);
  v6 = (a2 + *(sub_100002B38(&qword_100130F30, &qword_1000ED2B0) + 36));
  v7 = v6 + *(type metadata accessor for _TaskModifier() + 20);
  result = static TaskPriority.userInitiated.getter();
  *v6 = &unk_1000ED2C0;
  v6[1] = v5;
  *a2 = v4;
  return result;
}

uint64_t sub_1000963C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100096460, v3, v2);
}

uint64_t sub_100096460()
{
  v2 = v0[2];
  v1 = v0[3];

  v4 = *(v2 + 24);
  if (v4)
  {
    v5 = *(v0[2] + 32);
    v4(v3);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000964D8(uint64_t a1)
{
  v1[9] = a1;
  v2 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000965A8, v4, v3);
}

uint64_t sub_1000965A8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1000967B0(v3, (v0 + 2));
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1000967EC((v0 + 2), v5 + 32);
  sub_1000947BC(0, 0, v2, &unk_1000ED2A0, v5);

  sub_100095998(v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000966DC()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100036924;

  return sub_1000C0D0C(v3, v2, 0xD00000000000001BLL, 0x80000001000ED1B0);
}

uint64_t sub_100096834()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014BAC;

  return sub_1000964D8(v0 + 16);
}

uint64_t sub_1000968C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v2 = v0[6];

  if (v0[7])
  {
    v3 = v0[8];
  }

  v4 = v0[9];

  v5 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_100096930(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014BAC;

  return sub_1000966BC(a1, v4, v5, v1 + 32);
}

unint64_t sub_1000969E8()
{
  result = qword_100130F38;
  if (!qword_100130F38)
  {
    sub_100005144(&qword_100130F30, &qword_1000ED2B0);
    sub_100096AA4(&qword_10012CC50, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F38);
  }

  return result;
}

uint64_t sub_100096AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100096AEC()
{
  swift_unknownObjectWeakDestroy();
  v1 = v0[4];

  if (v0[5])
  {
    v2 = v0[6];
  }

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_100096B4C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100011720;

  return sub_1000963C8(v0 + 16);
}

unint64_t sub_100096BE4()
{
  result = qword_100130F40;
  if (!qword_100130F40)
  {
    sub_100005144(&qword_100130F28, &unk_1000ED288);
    sub_100096CA0();
    sub_100096AA4(&qword_10012CC50, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F40);
  }

  return result;
}

unint64_t sub_100096CA0()
{
  result = qword_100130F48;
  if (!qword_100130F48)
  {
    sub_100005144(&qword_100130F20, &qword_1000ED248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F48);
  }

  return result;
}

void sub_100096D30(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_100097634();
      if (v6 <= 0x3F)
      {
        sub_100097684(319, &qword_1001304E8, type metadata accessor for DashboardTabViewState);
        if (v7 <= 0x3F)
        {
          sub_100097684(319, &unk_10012EAB0, &type metadata accessor for LayoutDirection);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100096E48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v28 = *(a3 + 16);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v29 = *(a3 + 24);
  v9 = *(v4 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7 - 1)
  {
    v11 = v7 - 1;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = type metadata accessor for LayoutDirection();
  v13 = *(v5 + 80);
  v14 = *(*(v12 - 8) + 64);
  v15 = *(v9 + 80);
  if (v14 <= 8)
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((v13 + 16) & ~v13) + *(v5 + 64) + v15;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v17 = *(*(v12 - 8) + 80) & 0xF8 | 7;
  v18 = v14 + ((v17 + ((((*(v9 + 64) + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v11 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v8 >= v10)
      {
        v25 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v6 & 0x80000000) != 0)
        {
          v27 = (*(v5 + 48))((v25 + v13 + 8) & ~v13, v6, v28);
        }

        else
        {
          v26 = *v25;
          if (v26 >= 0xFFFFFFFF)
          {
            LODWORD(v26) = -1;
          }

          v27 = v26 + 1;
        }

        if (v27 >= 2)
        {
          return v27 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v24 = *(v9 + 48);

        return v24((a1 + v16) & ~v15, v10, v4);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_20:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v11 + (v18 | v23) + 1;
}

void sub_100097174(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(*(a4 + 16) - 8);
  v38 = v8;
  if (*(v8 + 84) <= 0x7FFFFFFFu)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v37 = *(a4 + 24);
  v10 = *(v7 - 8);
  v35 = *(v8 + 84);
  v36 = v9;
  v11 = v9 - 1;
  v12 = *(v10 + 84);
  if (v12 <= v9 - 1)
  {
    v13 = v9 - 1;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(type metadata accessor for LayoutDirection() - 8);
  v15 = *(v8 + 80);
  v16 = ((v15 + 16) & ~v15) + *(v8 + 64);
  if (*(v14 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v14 + 64);
  }

  v18 = *(v10 + 80);
  v19 = *(v14 + 80) & 0xF8 | 7;
  v20 = v17 + ((v19 + ((((*(v10 + 64) + ((v16 + v18) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v19) + 1;
  if (a3 <= v13)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 - v13 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v13 < a2)
  {
    v22 = ~v13 + a2;
    if (v20 >= 4)
    {
      bzero(a1, v20);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_17;
      }

      goto LABEL_63;
    }

    v23 = (v22 >> (8 * v20)) + 1;
    if (v20)
    {
      v26 = v22 & ~(-1 << (8 * v20));
      bzero(a1, v20);
      if (v20 != 3)
      {
        if (v20 == 2)
        {
          *a1 = v26;
          if (v21 > 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *a1 = v22;
          if (v21 > 1)
          {
LABEL_17:
            if (v21 == 2)
            {
              *&a1[v20] = v23;
            }

            else
            {
              *&a1[v20] = v23;
            }

            return;
          }
        }

LABEL_63:
        if (v21)
        {
          a1[v20] = v23;
        }

        return;
      }

      *a1 = v26;
      a1[2] = BYTE2(v26);
    }

    if (v21 > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_63;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v20] = 0;
  }

  else if (v21)
  {
    a1[v20] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v11 < v12)
  {
    v27 = *(v10 + 56);

    v27(&a1[v16 + v18] & ~v18, a2, v12, v7);
    return;
  }

  if (v11 < a2)
  {
    if (v16 <= 3)
    {
      v28 = ~(-1 << (8 * v16));
    }

    else
    {
      v28 = -1;
    }

    if (!v16)
    {
      return;
    }

    v29 = v28 & (a2 - v36);
    if (v16 <= 3)
    {
      v30 = v16;
    }

    else
    {
      v30 = 4;
    }

    bzero(a1, v16);
    if (v30 <= 2)
    {
      if (v30 == 1)
      {
LABEL_52:
        *a1 = v29;
        return;
      }

LABEL_77:
      *a1 = v29;
      return;
    }

    goto LABEL_78;
  }

  if (a2 >= v36)
  {
    if (v16 <= 3)
    {
      v33 = ~(-1 << (8 * v16));
    }

    else
    {
      v33 = -1;
    }

    if (!v16)
    {
      return;
    }

    v29 = v33 & (a2 - v36);
    if (v16 <= 3)
    {
      v30 = v16;
    }

    else
    {
      v30 = 4;
    }

    bzero(a1, v16);
    if (v30 <= 2)
    {
      if (v30 == 1)
      {
        goto LABEL_52;
      }

      goto LABEL_77;
    }

LABEL_78:
    if (v30 == 3)
    {
      *a1 = v29;
      a1[2] = BYTE2(v29);
    }

    else
    {
      *a1 = v29;
    }

    return;
  }

  v31 = (a2 + 1);
  v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v35 < 0)
  {
    v34 = *(v38 + 56);

    v34((v32 + v15 + 8) & ~v15, v31);
  }

  else if ((v31 & 0x80000000) != 0)
  {
    *v32 = (a2 - 0x7FFFFFFF);
  }

  else
  {
    *v32 = a2;
  }
}

void sub_100097634()
{
  if (!qword_10012EA98)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10012EA98);
    }
  }
}

void sub_100097684(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000976D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[1];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for GameOverlayTabViewBody();
  return swift_getWitnessTable();
}

uint64_t sub_1000977A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100097818(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000979E8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = type metadata accessor for StoreTab();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_100097BBC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v42 = a1;
  v43 = a2;
  v38 = a3;
  v44 = type metadata accessor for Subview();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v37 - v10;
  v11 = type metadata accessor for SubviewsCollection();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002B38(&qword_100131068, &unk_1000ED430);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v37 - v20;
  (*(v12 + 16))(v15, v4, v11, v19);
  sub_10009B630(&qword_100131070, &type metadata accessor for SubviewsCollection);
  dispatch thunk of Sequence.makeIterator()();
  v22 = *(v17 + 44);
  sub_10009B630(&qword_100131078, &type metadata accessor for SubviewsCollection);
  dispatch thunk of Collection.endIndex.getter();
  v23 = *&v21[v22];
  v37 = v5;
  if (v23 == v45[0])
  {
    v24 = v44;
LABEL_7:
    sub_10009B45C(v21);
    v32 = 1;
    v33 = v38;
  }

  else
  {
    v25 = (v5 + 16);
    v39 = (v5 + 8);
    v40 = (v5 + 32);
    v24 = v44;
    while (1)
    {
      v26 = dispatch thunk of Collection.subscript.read();
      v27 = v41;
      (*v25)(v41);
      v26(v45, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v28 = v24;
      v29 = *v40;
      (*v40)(v8, v27, v28);
      v30 = v46;
      v31 = v42(v8);
      if (v30)
      {
        (*v39)(v8, v44);
        return sub_10009B45C(v21);
      }

      if (v31)
      {
        break;
      }

      v46 = 0;
      v24 = v44;
      (*v39)(v8, v44);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v21[v22] == v45[0])
      {
        goto LABEL_7;
      }
    }

    sub_10009B45C(v21);
    v35 = v38;
    v36 = v44;
    v29(v38, v8, v44);
    v33 = v35;
    v24 = v36;
    v32 = 0;
  }

  return (*(v37 + 56))(v33, v32, 1, v24);
}

uint64_t sub_100097FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a1;
  return sub_100097BBC(sub_10009B438, v5, a4);
}

uint64_t sub_100098024()
{
  v0 = type metadata accessor for ContainerValues();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subview.containerValues.getter();
  v5 = ContainerValues.hasTag<A>(_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_100098140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v16 = a2;
  v17 = v3;
  v18 = v2;
  v19 = v5;
  v20 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(*(OpaqueTypeMetadata2 - 8) + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v9 = &v15 - v8;
  type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v15 - v12;
  _TabViewValue.selection.getter();
  _TabViewValue.content.getter();
  v17 = v3;
  v18 = v2;
  v19 = v5;
  v20 = v4;
  swift_getOpaqueTypeConformance2();
  return sub_100098560(v13, v9, v2, OpaqueTypeMetadata2, v16);
}

uint64_t sub_1000982A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v7 = *(a1 + a2 - 16);
  sub_100079940();
  v5 = type metadata accessor for _TabViewValue();
  return sub_100098140(v5, a3);
}

uint64_t sub_100098320@<X0>(uint64_t a1@<X1>, ValueMetadata *a2@<X2>, uint64_t a3@<X3>, void (*a4)(char *, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v17 = a1;
  v18 = a4;
  v16[1] = a5;
  v7 = sub_100079940();
  v21 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = type metadata accessor for GameOverlayTabViewBody();
  v9 = type metadata accessor for _GraphValue();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v19 = a2;
  v20 = a3;
  swift_getKeyPath();
  v21 = &type metadata for GameOverlayTabViewStyle;
  OpaqueTypeMetadata2 = a2;
  v23 = v7;
  OpaqueTypeConformance2 = a3;
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();

  WitnessTable = swift_getWitnessTable();
  v18(v13, v17, v8, WitnessTable);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100098560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Binding();
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for GameOverlayTabViewBody();
  v12 = (a5 + v11[14]);
  State.init(wrappedValue:)();
  *v12 = a3;
  v12[1] = a4;
  v13 = a5 + v11[15];
  type metadata accessor for DashboardTabViewState(0);
  sub_10009B630(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  *v13 = Environment.init<A>(_:)();
  *(v13 + 8) = v14 & 1;
  v15 = v11[16];
  *(a5 + v15) = swift_getKeyPath();
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 40))(a5, a1, v16);
  return (*(*(a4 - 8) + 32))(a5 + v11[13], a2, a4);
}

double sub_10009879C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v5 = *v2;
  v6 = v2[1];
  sub_100002B38(&qword_10012EC18, &qword_1000EB048);
  State.wrappedValue.getter();
  return v4;
}

uint64_t sub_1000987FC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v4 = *v2;
  v5 = v2[1];
  sub_100002B38(&qword_10012EC18, &qword_1000EB048);
  return State.wrappedValue.setter();
}

uint64_t sub_10009885C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_10009A9B8(v2 + *(a1 + 64), &v18 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for LayoutDirection();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100098A48@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v4 = *(a1 - 1);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = sub_100005144(&qword_100130FF0, &qword_1000ED398);
  v11 = sub_10009A7C4();
  v13 = a1[5];
  v59 = a1[3];
  v12 = v59;
  v60 = v10;
  v61 = v13;
  v62 = v11;
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  sub_100005144(&qword_100131010, &qword_1000ED3A8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v45 = type metadata accessor for ZStack();
  v48 = *(v45 - 8);
  v14 = *(v48 + 64);
  __chkstk_darwin(v45);
  v43 = &v42 - v15;
  v49 = type metadata accessor for ModifiedContent();
  v47 = *(v49 - 8);
  v16 = *(v47 + 64);
  __chkstk_darwin(v49);
  v44 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v46 = &v42 - v19;
  static Alignment.top.getter();
  *&v20 = a1[2];
  *(&v20 + 1) = v12;
  *&v21 = a1[4];
  *(&v21 + 1) = v13;
  v52 = v21;
  v53 = v20;
  v54 = v20;
  v55 = v21;
  v42 = v2;
  v56 = v2;
  ZStack.init(alignment:content:)();
  v22 = v4;
  v23 = *(v4 + 16);
  v23(v9, v2, a1);
  v24 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v26 = v52;
  *(v25 + 16) = v53;
  *(v25 + 32) = v26;
  v27 = *(v22 + 32);
  v27(v25 + v24, v9, a1);
  v28 = v50;
  v23(v50, v42, a1);
  v29 = swift_allocObject();
  v30 = v52;
  *(v29 + 16) = v53;
  *(v29 + 32) = v30;
  v27(v29 + v24, v28, a1);
  v31 = v45;
  WitnessTable = swift_getWitnessTable();
  v33 = v44;
  v34 = v43;
  View.gameOverlayController(leftShoulderHandler:rightShoulderHandler:)(sub_10009A8D8, v25, sub_10009A8F0);

  (*(v48 + 8))(v34, v31);
  v35 = sub_10008E268();
  v57 = WitnessTable;
  v58 = v35;
  v36 = v49;
  swift_getWitnessTable();
  v37 = v47;
  v38 = *(v47 + 16);
  v39 = v46;
  v38(v46, v33, v36);
  v40 = *(v37 + 8);
  v40(v33, v36);
  v38(v51, v39, v36);
  return (v40)(v39, v36);
}

uint64_t sub_100098F68@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v132 = a2;
  v133 = a4;
  v129 = a6;
  v11 = type metadata accessor for AccessibilityChildBehavior();
  v127 = *(v11 - 8);
  v128 = v11;
  v12 = *(v127 + 64);
  __chkstk_darwin(v11);
  v126 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100002B38(&qword_10012ECE0, &qword_1000EB0D8);
  v115 = *(v114 - 8);
  v14 = *(v115 + 64);
  __chkstk_darwin(v114);
  v110 = &v93 - v15;
  v113 = type metadata accessor for OverlayTabBar();
  v16 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v108 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100002B38(&qword_100131018, &qword_1000ED3C0);
  v18 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v112 = &v93 - v19;
  v125 = sub_100002B38(&qword_100131020, &qword_1000ED3C8);
  v123 = *(v125 - 8);
  v20 = *(v123 + 64);
  __chkstk_darwin(v125);
  v117 = &v93 - v21;
  v120 = sub_100002B38(&qword_100131028, &qword_1000ED3D0);
  v22 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v119 = &v93 - v23;
  v124 = sub_100002B38(&qword_100131010, &qword_1000ED3A8);
  v122 = *(v124 - 8);
  v24 = *(v122 + 64);
  __chkstk_darwin(v124);
  v121 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v118 = &v93 - v27;
  v140 = a2;
  v141 = a3;
  v142 = a4;
  v143 = a5;
  v28 = a5;
  v93 = a5;
  v29 = type metadata accessor for GameOverlayTabViewBody();
  v30 = *(v29 - 8);
  v131 = *(v30 + 64);
  __chkstk_darwin(v29);
  v130 = &v93 - v31;
  Description = a3[-1].Description;
  v33 = Description[8];
  __chkstk_darwin(v34);
  v36 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100005144(&qword_100130FF0, &qword_1000ED398);
  v111 = v37;
  WitnessTable = sub_10009A7C4();
  v140 = a3;
  v141 = v37;
  v142 = v28;
  v143 = WitnessTable;
  v106 = type metadata accessor for GroupElementsOfContent();
  v94 = type metadata accessor for Group();
  v134 = *(v94 - 8);
  v38 = *(v134 + 64);
  __chkstk_darwin(v94);
  v40 = (&v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __chkstk_darwin(v41);
  v44 = (&v93 - v43);
  v107 = &v93 - v43;
  v45 = v29;
  v46 = *(v29 + 52);
  v47 = Description[2];
  v48 = a1;
  v96 = a1;
  v47(v36, a1 + v46, a3, v42);
  v49 = v30;
  v102 = *(v30 + 16);
  v103 = v30 + 16;
  v50 = v130;
  v51 = v45;
  v95 = v45;
  v102(v130, v48, v45);
  v101 = *(v49 + 80);
  v52 = (v101 + 48) & ~v101;
  v98 = v52;
  v53 = swift_allocObject();
  *(v53 + 2) = v132;
  *(v53 + 3) = a3;
  v97 = a3;
  v54 = v93;
  *(v53 + 4) = v133;
  *(v53 + 5) = v54;
  v55 = *(v49 + 32);
  v99 = v49 + 32;
  v100 = v55;
  v55(&v53[v52], v50, v51);
  Group.init<A, B>(subviews:transform:)();
  v139[2] = swift_getWitnessTable();
  v56 = v94;
  WitnessTable = swift_getWitnessTable();
  v57 = v134;
  v58 = *(v134 + 16);
  v105 = v134 + 16;
  v106 = v58;
  v104 = v40;
  v58(v44, v40, v56);
  v59 = *(v57 + 8);
  v134 = v57 + 8;
  v111 = v59;
  v60 = v56;
  v59(v40, v56);
  v61 = v108;
  sub_10008970C(v108);
  v62 = sub_100069844();
  v63 = v110;
  static ViewInputPredicate.! prefix(_:)();
  sub_100002B38(&qword_100131030, &qword_1000ED3D8);
  sub_10009B630(&qword_100131038, type metadata accessor for OverlayTabBar);
  v140 = &type metadata for GameOverlayOnPhonePredicate;
  v141 = v62;
  swift_getOpaqueTypeConformance2();
  sub_10009AAE4();
  v64 = v112;
  v65 = v114;
  View.staticIf<A, B>(_:then:)();
  (*(v115 + 8))(v63, v65);
  sub_10009ABA0(v61);
  v66 = v95;
  v67 = v96;
  v68 = sub_10009879C(v95);
  *(v64 + *(sub_100002B38(&qword_100131048, &qword_1000ED3E0) + 36)) = v68;
  v69 = v64;
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  LOBYTE(v64) = dispatch thunk of ZoomCoordinator.presentingOverlay.getter();

  KeyPath = swift_getKeyPath();
  v71 = swift_allocObject();
  *(v71 + 16) = v64 & 1;
  v72 = (v69 + *(v116 + 36));
  *v72 = KeyPath;
  v72[1] = sub_10009ACD0;
  v72[2] = v71;
  static ZoomCoordinator.shared.getter();
  LOBYTE(v64) = dispatch thunk of ZoomCoordinator.presentingOverlay.getter();

  LOBYTE(v140) = v64 & 1;
  v73 = v130;
  v102(v130, v67, v66);
  v74 = v98;
  v75 = swift_allocObject();
  v76 = v97;
  *(v75 + 2) = v132;
  *(v75 + 3) = v76;
  *(v75 + 4) = v133;
  *(v75 + 5) = v54;
  v100(&v75[v74], v73, v66);
  sub_10009AFC0();
  v77 = v117;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v69, &qword_100131018, &qword_1000ED3C0);
  static ZoomCoordinator.shared.getter();
  LOBYTE(v66) = dispatch thunk of ZoomCoordinator.presentingOverlay.getter();

  if (v66)
  {
    v78 = -1.0;
  }

  else
  {
    v78 = 1.0;
  }

  v79 = v119;
  (*(v123 + 32))(v119, v77, v125);
  v80 = v120;
  *(v79 + *(v120 + 36)) = v78;
  v81 = v126;
  static AccessibilityChildBehavior.contain.getter();
  v82 = sub_10009B1E8();
  v83 = v118;
  v84 = v80;
  View.accessibilityElement(children:)();
  (*(v127 + 8))(v81, v128);
  sub_100005688(v79, &qword_100131028, &qword_1000ED3D0);
  v85 = v104;
  v86 = v107;
  v106(v104, v107, v60);
  v140 = v85;
  v87 = v122;
  v88 = v121;
  v89 = v124;
  (*(v122 + 16))(v121, v83, v124);
  v141 = v88;
  v139[0] = v60;
  v139[1] = v89;
  v136 = v82;
  v137 = WitnessTable;
  v135 = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100097818(&v140, 2uLL, v139);
  v90 = *(v87 + 8);
  v90(v83, v89);
  v91 = v111;
  v111(v86, v60);
  v90(v88, v89);
  return v91(v85, v60);
}

uint64_t sub_100099C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29[0] = a4;
  v29[1] = a1;
  v33 = a5;
  v30 = *(a3 - 8);
  v31 = a2;
  v6 = *(v30 + 64);
  __chkstk_darwin(a1);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100002B38(&qword_100131008, &qword_1000ED3A0);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v32);
  v12 = v29 - v11;
  v13 = type metadata accessor for Binding();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v29 - v17;
  v19 = *(v13 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v21);
  v24 = v29 - v23;
  (*(v15 + 16))(v18, v31, v14, v22);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v25 = 1;
    v26 = v33;
  }

  else
  {
    (*(v19 + 32))(v24, v18, v13);
    Binding.wrappedValue.getter();
    v35 = a3;
    v36 = v29[0];
    v37 = v8;
    sub_100097BBC(sub_10009B438, v34, v12);
    (*(v30 + 8))(v8, a3);
    (*(v19 + 8))(v24, v13);
    v27 = v33;
    sub_10009B3C8(v12, v33);
    v25 = 0;
    v26 = v27;
  }

  return (*(v9 + 56))(v26, v25, 1, v32);
}

uint64_t sub_100099FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.top.getter();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.iPadTopPadding.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10009B364(a1, a2);
  result = sub_100002B38(&qword_100131030, &qword_1000ED3D8);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_10009A040(uint64_t a1, char *a2)
{
  v2 = *a2;
  static Animation.easeIn(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10009A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LayoutDirection();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  v18 = type metadata accessor for EnvironmentValues();
  v36 = *(v18 - 8);
  v37 = v18;
  v19 = *(v36 + 64);
  __chkstk_darwin(v18);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v22 = type metadata accessor for GameOverlayTabViewBody();
  v23 = (a1 + *(v22 + 60));
  v24 = *v23;
  v25 = *(v23 + 8);

  if ((v25 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    v35[1] = a1;
    v27 = v25;
    v28 = v26;
    os_log(_:dso:log:_:_:)();

    v25 = v27;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v36 + 8))(v21, v37);
  }

  sub_10009885C(v22, v17);
  (*(v11 + 104))(v14, enum case for LayoutDirection.leftToRight(_:), v10);
  v29 = static LayoutDirection.== infix(_:_:)();
  v30 = *(v11 + 8);
  v30(v14, v10);
  v30(v17, v10);

  if ((v25 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v36 + 8))(v21, v37);
    v24 = v38;
  }

  if (v29)
  {
    v32 = -1;
  }

  else
  {
    v32 = 1;
  }

  v33 = *(v24 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_10007747C(v32, v33);
}