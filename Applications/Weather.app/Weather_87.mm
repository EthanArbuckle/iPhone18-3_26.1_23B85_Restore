void sub_10093C6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v12 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v12 - 8);
  v14 = v19 - v13;
  v16 = *(v15 + 56);
  sub_1000302D8(a1, v19 - v13, &qword_100CA6028);
  sub_1000302D8(a2, &v14[v16], &qword_100CA6028);
  if (sub_100024D10(v14, 1, v5) == 1)
  {
    if (sub_100024D10(&v14[v16], 1, v5) == 1)
    {
      sub_100018198(v14, &qword_100CA6028);
      return;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v14, v11, &qword_100CA6028);
  if (sub_100024D10(&v14[v16], 1, v5) == 1)
  {
    (*(v6 + 8))(v11, v5);
LABEL_6:
    sub_100018198(v14, &qword_100CA64E8);
LABEL_7:
    sub_10093BB44();
    return;
  }

  (*(v6 + 32))(v8, &v14[v16], v5);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  sub_100018198(v14, &qword_100CA6028);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_10093C9AC@<X0>(BOOL *a1@<X8>)
{
  v2 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100988558();
  v5 = v4[10];
  result = sub_10093F8A8(v4, type metadata accessor for ListViewModel);
  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    sub_100988558();
    v8 = v4[10];
    result = sub_10093F8A8(v4, type metadata accessor for ListViewModel);
    v7 = v8 == 2;
  }

  *a1 = v7;
  return result;
}

BOOL sub_10093CA94()
{
  sub_1000038D8();
  v0 = type metadata accessor for ListViewModel();
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_100988558();
  sub_100988558();
  v7 = sub_1006AB7D8(v6, v3);
  sub_10093F8A8(v3, type metadata accessor for ListViewModel);
  sub_10093F8A8(v6, type metadata accessor for ListViewModel);
  return v7;
}

uint64_t sub_10093CB7C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for SwipeActionsStyle();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE71B8);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v30 = sub_10022C350(&qword_100CE71C0);
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v30 - v9;
  sub_10093D4E8(v1, v7);
  v11 = v1 + *(type metadata accessor for ListRowView(0) + 56);
  v12 = *v11;
  v13 = *(v11 + 8);
  v39 = v12;
  v40 = v13;
  sub_10022C350(&qword_100CA5A80);
  State.projectedValue.getter();
  v29 = sub_100945C9C();
  View.swipeActions<A>(edge:allowsFullSwipe:isPresented:content:)();

  sub_100018198(v7, &qword_100CE71B8);
  static SwipeActionsStyle.rounded(radius:)();
  v34 = v1;
  sub_10022C350(&qword_100CE7270);
  v35 = v5;
  v36 = &type metadata for EmptyView;
  v37 = v29;
  v14 = v31;
  v38 = &protocol witness table for EmptyView;
  swift_getOpaqueTypeConformance2();
  sub_100946500();
  v15 = v30;
  v16 = 1;
  View.swipeActions<A>(edge:allowsFullSwipe:style:content:)();
  (*(v32 + 8))(v4, v33);
  (*(v8 + 8))(v10, v15);
  LocationModel.kind.getter();
  v17 = Location.Identifier.Kind.rawValue.getter();
  v19 = v18;
  if (v17 != Location.Identifier.Kind.rawValue.getter() || v19 != v20)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v14 + *(sub_10022C350(&qword_100CE7280) + 36)) = v16 & 1;
  LocationModel.kind.getter();
  v22 = Location.Identifier.Kind.rawValue.getter();
  v24 = v23;
  v25 = 1;
  if (v22 != Location.Identifier.Kind.rawValue.getter() || v24 != v26)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  result = sub_10022C350(&qword_100CE7288);
  *(v14 + *(result + 36)) = v25 & 1;
  return result;
}

uint64_t sub_10093CFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for ListRowView(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10022C350(&qword_100CA6F40);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_10022C350(&unk_100CE1740);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10022C350(&qword_100CB5FE0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  LocationModel.kind.getter();
  v14 = Location.Identifier.Kind.rawValue.getter();
  v16 = v15;
  if (v14 == Location.Identifier.Kind.rawValue.getter() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      static ButtonRole.destructive.getter();
      v20 = type metadata accessor for ButtonRole();
      sub_10001B350(v7, 0, 1, v20);
      sub_100941A20(a1, &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v22 = swift_allocObject();
      sub_1009423C8(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
      Button.init(role:action:label:)();
      v23 = [objc_opt_self() mainBundle];
      v37._object = 0x8000000100AE6B90;
      v24._countAndFlagsBits = 0x6574656C6544;
      v24._object = 0xE600000000000000;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v37._countAndFlagsBits = 0xD00000000000003CLL;
      v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v37);

      v35 = v26;
      sub_10023FBF4(&qword_100CA6EE8, &unk_100CE1740);
      sub_10002D5A4();
      v27 = v33;
      View.accessibilityLabel<A>(_:)();

      (*(v32 + 8))(v10, v27);
      v28 = v34;
      sub_10011C0F0(v13, v34, &qword_100CB5FE0);
      return sub_10001B350(v28, 0, 1, v11);
    }
  }

  v30 = v34;

  return sub_10001B350(v30, 1, 1, v11);
}

uint64_t sub_10093D4A8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10093D4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v4 = sub_10022C350(&unk_100CE0EB0);
  v131 = *(v4 - 8);
  v132 = v4;
  __chkstk_darwin(v4);
  v130 = &v101[-v5];
  v133 = type metadata accessor for ListLocationViewModel(0);
  *&v106 = *(v133 - 8);
  *&v108 = *(v106 + 64);
  __chkstk_darwin(v133);
  v7 = &v101[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ListRowView(0);
  v105 = *(v8 - 1);
  v9 = *(v105 + 64);
  __chkstk_darwin(v8);
  v10 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ListLocationRowView(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v107 = sub_10022C350(&qword_100CE7250);
  __chkstk_darwin(v107);
  v112 = &v101[-v15];
  v111 = sub_10022C350(&qword_100CE7240);
  __chkstk_darwin(v111);
  v110 = &v101[-v16];
  v109 = sub_10022C350(&qword_100CE7230);
  __chkstk_darwin(v109);
  v113 = &v101[-v17];
  v116 = sub_10022C350(&qword_100CE7218);
  __chkstk_darwin(v116);
  v115 = &v101[-v18];
  v122 = sub_10022C350(&qword_100CE7290);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v117 = &v101[-v19];
  v114 = sub_10022C350(&qword_100CE7210);
  __chkstk_darwin(v114);
  v118 = &v101[-v20];
  v121 = sub_10022C350(&qword_100CE7200);
  __chkstk_darwin(v121);
  v119 = &v101[-v21];
  v123 = sub_10022C350(&qword_100CE71E0);
  __chkstk_darwin(v123);
  v124 = &v101[-v22];
  v23 = sub_10022C350(&qword_100CE7298);
  v126 = *(v23 - 8);
  v127 = v23;
  __chkstk_darwin(v23);
  v125 = &v101[-v24];
  v128 = sub_10022C350(&qword_100CE71D8);
  __chkstk_darwin(v128);
  v129 = &v101[-v25];
  v26 = v8[9];
  v27 = v12[9];
  v136 = *(v2 + v8[6]);
  sub_10042F370(v2 + v26, v14 + v27);
  sub_100941A20(a1, v14 + v12[10]);
  v28 = *(v2 + v8[5]);
  v103 = *(v2 + v8[8]);
  sub_100941A20(v2, v10);
  v134 = a1;
  sub_100941A20(a1, v7);
  v29 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v30 = (v9 + *(v106 + 80) + v29) & ~*(v106 + 80);
  v31 = swift_allocObject();
  sub_1009423C8(v10, v31 + v29);
  sub_1009423C8(v7, v31 + v30);
  *&v106 = v8;
  v32 = v8[14];
  *&v108 = v2;
  v33 = (v2 + v32);
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v140) = v34;
  v141 = v35;
  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CA5A80);
  State.projectedValue.getter();
  v36 = v137;
  v37 = v138;
  v102 = v139;
  *v14 = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38);
  swift_storeEnumTagMultiPayload();
  v38 = v14 + v12[7];
  LOBYTE(v140) = 0;

  State.init(wrappedValue:)();
  v39 = v138;
  *v38 = v137;
  *(v38 + 1) = v39;
  *(v14 + v12[8]) = v136;
  v40 = (v14 + v12[11]);
  v41 = sub_10022C350(&qword_100CA4B60);
  v42 = sub_10023FBF4(&qword_100CA4B68, &qword_100CA4B60);
  *&v136 = v28;
  v105 = v41;
  v104 = v42;
  *v40 = ObservedObject.init(wrappedValue:)();
  v40[1] = v43;
  *(v14 + v12[12]) = v103;
  v44 = (v14 + v12[13]);
  *v44 = sub_1009465B0;
  v44[1] = v31;
  v45 = v14 + v12[14];
  *v45 = v36;
  *(v45 + 1) = v37;
  v45[16] = v102;
  LOBYTE(v38) = static Edge.Set.leading.getter();
  v46 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    v46 = Edge.Set.init(rawValue:)();
  }

  v47 = *(v108 + *(v106 + 48));
  v49 = v133;
  v48 = v134;
  v50 = *(v134 + *(v133 + 36)) ^ 1;
  v47(1, v50 & 1);
  v52 = v51;
  v53 = 0uLL;
  v54 = 0uLL;
  if ((v51 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v54 + 1) = v55;
    *(&v53 + 1) = v56;
  }

  v106 = v54;
  v108 = v53;
  v57 = v14;
  v58 = v112;
  sub_1009423C8(v57, v112);
  v59 = &v58[*(v107 + 36)];
  *v59 = v46;
  *(v59 + 24) = v106;
  *(v59 + 8) = v108;
  v59[40] = v52 & 1;
  v60 = static Edge.Set.trailing.getter();
  v61 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v60)
  {
    v61 = Edge.Set.init(rawValue:)();
  }

  v47(3, v50 & 1);
  v63 = v62;
  v64 = 0uLL;
  v65 = 0uLL;
  if ((v62 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v65 + 1) = v66;
    *(&v64 + 1) = v67;
  }

  v107 = v65;
  v108 = v64;
  v68 = v110;
  sub_10011C0F0(v58, v110, &qword_100CE7250);
  v69 = &v68[*(v111 + 36)];
  *v69 = v61;
  *(v69 + 24) = v107;
  *(v69 + 8) = v108;
  v69[40] = v63 & 1;
  v70 = v113;
  sub_10011C0F0(v68, v113, &qword_100CE7240);
  v71 = &v70[*(v109 + 36)];
  v71[32] = 0;
  *v71 = 0u;
  *(v71 + 1) = 0u;
  v137 = static Color.clear.getter();
  v72 = AnyView.init<A>(_:)();
  v73 = v115;
  sub_10011C0F0(v70, v115, &qword_100CE7230);
  *&v73[*(v116 + 36)] = v72;
  static VerticalEdge.Set.all.getter();
  sub_100946140();
  v74 = v117;
  View.listRowSeparator(_:edges:)();
  sub_100018198(v73, &qword_100CE7218);
  LOBYTE(v73) = *(v48 + *(v49 + 84));
  KeyPath = swift_getKeyPath();
  v76 = swift_allocObject();
  *(v76 + 16) = v73;
  v77 = v118;
  (*(v120 + 32))(v118, v74, v122);
  v78 = (v77 + *(v114 + 36));
  *v78 = KeyPath;
  v78[1] = sub_100168F20;
  v78[2] = v76;
  v79 = static Color.primary.getter();
  v80 = swift_getKeyPath();
  v81 = v119;
  sub_10011C0F0(v77, v119, &qword_100CE7210);
  v82 = &v81[*(v121 + 36)];
  *v82 = v80;
  v82[1] = v79;
  sub_100945F94();
  v83 = v124;
  View.accessibilityRemoveTraits(uiTraits:)();
  sub_100018198(v81, &qword_100CE7200);
  Solarium.init()();
  v84 = v130;
  static ViewInputPredicate.! prefix(_:)();
  sub_10022C350(&qword_100CE71E8);
  sub_100945ED8();
  v137 = &type metadata for Solarium;
  v138 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1009463F8();
  v85 = v125;
  v86 = v132;
  View.staticIf<A, B>(_:then:)();
  (*(v131 + 8))(v84, v86);
  sub_100018198(v83, &qword_100CE71E0);
  v87 = v129;
  v88 = &v129[*(v128 + 36)];
  LocationModel.identifier.getter();
  IsListLocationGeometryEffectSourceModifier = type metadata accessor for DetermineWhetherRowIsListLocationGeometryEffectSourceModifier(0);
  v90 = &v88[*(IsListLocationGeometryEffectSourceModifier + 20)];
  *v90 = ObservedObject.init(wrappedValue:)();
  v90[1] = v91;
  v92 = &v88[*(IsListLocationGeometryEffectSourceModifier + 24)];
  type metadata accessor for ListLocationGeometryEffectSourceState(0);
  v93 = swift_allocObject();
  v94 = OBJC_IVAR____TtC7WeatherP33_DDDFED3AF40C4C697AAFFC17EC5DCEF637ListLocationGeometryEffectSourceState_previousActiveLocationID;
  v95 = type metadata accessor for Location.Identifier();
  sub_10001B350(v93 + v94, 1, 1, v95);
  v140 = v93;
  State.init(wrappedValue:)();
  v96 = v138;
  *v92 = v137;
  v92[1] = v96;
  (*(v126 + 32))(v87, v85, v127);
  sub_10022C350(&qword_100CA7300);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_100A2C3F0;
  v98 = (v48 + *(v49 + 24));
  v99 = v98[1];
  *(v97 + 32) = *v98;
  *(v97 + 40) = v99;
  sub_100945D58();
  sub_10002D5A4();

  View.accessibilityInputLabels<A>(_:)();

  return sub_100018198(v87, &qword_100CE71D8);
}

uint64_t sub_10093E3E0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = a1;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v36 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10022C350(&qword_100CA64E8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v34[-v6];
  v8 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v8 - 8);
  v38 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v34[-v11];
  __chkstk_darwin(v13);
  v15 = &v34[-v14];
  v16 = type metadata accessor for OSSignpostID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static os_signpost_type_t.event.getter();
  sub_10000C70C(0, &qword_100CA2E40);
  v20 = OS_os_log.init(subsystem:category:)();
  static OSSignpostID.exclusive.getter();
  v21 = v37;
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v17 + 8))(v19, v16);
  type metadata accessor for ListRowView(0);
  sub_10009D114();
  (*(v21 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v2);
  sub_10001B350(v12, 0, 1, v2);
  v22 = *(v5 + 56);
  sub_1000302D8(v15, v7, &qword_100CA6028);
  sub_1000302D8(v12, &v7[v22], &qword_100CA6028);
  if (sub_100024D10(v7, 1, v2) == 1)
  {
    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    if (sub_100024D10(&v7[v22], 1, v2) == 1)
    {
      sub_100018198(v7, &qword_100CA6028);
LABEL_9:
      v30 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
      [v30 ts_settlingDuration];
      v32 = v31;

      v24 = v32;
      v23 = v39;
      v25 = 0;
      return sub_10064F628(v23, v24, v25);
    }

    goto LABEL_6;
  }

  sub_1000302D8(v7, v38, &qword_100CA6028);
  if (sub_100024D10(&v7[v22], 1, v2) == 1)
  {
    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    (*(v21 + 8))(v38, v2);
LABEL_6:
    sub_100018198(v7, &qword_100CA64E8);
    goto LABEL_7;
  }

  v26 = &v7[v22];
  v27 = v36;
  (*(v21 + 32))(v36, v26, v2);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v28 = v38;
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v21 + 8);
  v29(v27, v2);
  sub_100018198(v12, &qword_100CA6028);
  sub_100018198(v15, &qword_100CA6028);
  v29(v28, v2);
  sub_100018198(v7, &qword_100CA6028);
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = v39;
  v24 = 0;
  v25 = 1;
  return sub_10064F628(v23, v24, v25);
}

uint64_t sub_10093E9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000302D8(a1, a2, &qword_100CE71E0);
  result = sub_10022C350(&qword_100CE71E8);
  v6 = a2 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_10093EA40(void (*a1)(void))
{
  a1();
  EnvironmentValues.subscript.getter();
  return v2;
}

uint64_t sub_10093EAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for DetermineWhetherRowIsListLocationGeometryEffectSourceModifier(0);
  sub_10022C350(&qword_100CE7430);
  State.wrappedValue.getter();
  v6 = sub_10093EDEC(v2);

  v7 = sub_10022C350(&qword_100CE7438);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = sub_10022C350(&qword_100CE7440);
  v9 = a2 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v6 & 1;
  return result;
}

uint64_t sub_10093EC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a2, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a2) = v16[15];
  }

  if (a2)
  {
    v13 = 2.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = sub_10022C350(&qword_100CE7420);
  (*(*(v14 - 8) + 16))(a4, a1, v14);
  result = sub_10022C350(&qword_100CE7428);
  *(a4 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_10093EDEC(uint64_t a1)
{
  v38 = a1;
  v1 = type metadata accessor for Location.Identifier();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10022C350(&qword_100CADD58);
  __chkstk_darwin(v37);
  v4 = &v33 - v3;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v11 - 8);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  __chkstk_darwin(v19);
  v21 = &v33 - v20;
  sub_1000E7B34();
  sub_10011C0F0(v10, v18, &qword_100CADBA0);
  if (sub_100024D10(v18, 1, v1) == 1)
  {
    v22 = OBJC_IVAR____TtC7WeatherP33_DDDFED3AF40C4C697AAFFC17EC5DCEF637ListLocationGeometryEffectSourceState_previousActiveLocationID;
    v23 = v36;
    swift_beginAccess();
    sub_1000302D8(v23 + v22, v21, &qword_100CADBA0);
    v24 = sub_100024D10(v18, 1, v1);
    v25 = v35;
    if (v24 != 1)
    {
      sub_100018198(v18, &qword_100CADBA0);
    }
  }

  else
  {
    v25 = v35;
    (*(v35 + 32))(v21, v18, v1);
    sub_10001B350(v21, 0, 1, v1);
    v23 = v36;
  }

  sub_1000E7B34();
  v26 = OBJC_IVAR____TtC7WeatherP33_DDDFED3AF40C4C697AAFFC17EC5DCEF637ListLocationGeometryEffectSourceState_previousActiveLocationID;
  swift_beginAccess();
  sub_10007DEA8(v7, v23 + v26);
  swift_endAccess();
  (*(v25 + 16))(v15, v38, v1);
  sub_10001B350(v15, 0, 1, v1);
  v27 = *(v37 + 48);
  sub_1000302D8(v15, v4, &qword_100CADBA0);
  sub_1000302D8(v21, &v4[v27], &qword_100CADBA0);
  if (sub_100024D10(v4, 1, v1) != 1)
  {
    v29 = v34;
    sub_1000302D8(v4, v34, &qword_100CADBA0);
    if (sub_100024D10(&v4[v27], 1, v1) != 1)
    {
      v30 = v33;
      (*(v25 + 32))(v33, &v4[v27], v1);
      sub_10093F860(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v25 + 8);
      v31(v30, v1);
      sub_100018198(v15, &qword_100CADBA0);
      sub_100018198(v21, &qword_100CADBA0);
      v31(v29, v1);
      sub_100018198(v4, &qword_100CADBA0);
      return v28 & 1;
    }

    sub_100018198(v15, &qword_100CADBA0);
    sub_100018198(v21, &qword_100CADBA0);
    (*(v25 + 8))(v29, v1);
    goto LABEL_10;
  }

  sub_100018198(v15, &qword_100CADBA0);
  sub_100018198(v21, &qword_100CADBA0);
  if (sub_100024D10(&v4[v27], 1, v1) != 1)
  {
LABEL_10:
    sub_100018198(v4, &qword_100CADD58);
    v28 = 0;
    return v28 & 1;
  }

  sub_100018198(v4, &qword_100CADBA0);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_10093F39C()
{
  sub_100018198(v0 + OBJC_IVAR____TtC7WeatherP33_DDDFED3AF40C4C697AAFFC17EC5DCEF637ListLocationGeometryEffectSourceState_previousActiveLocationID, &qword_100CADBA0);

  return swift_deallocClassInstance();
}

void sub_10093F438()
{
  sub_100009D20(319, &qword_100CADC30, &type metadata accessor for Location.Identifier, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10093F514()
{
  result = qword_100CE6788;
  if (!qword_100CE6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6788);
  }

  return result;
}

unint64_t sub_10093F5B0()
{
  result = qword_100CA6070;
  if (!qword_100CA6070)
  {
    sub_10022E824(&qword_100CA6078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6070);
  }

  return result;
}

unint64_t sub_10093F644()
{
  result = qword_100CE67D0;
  if (!qword_100CE67D0)
  {
    sub_10022E824(&qword_100CE67A8);
    sub_10022E824(&qword_100CE67A0);
    sub_10022E824(&qword_100CE6798);
    sub_10022E824(&qword_100CA6078);
    sub_10022E824(&qword_100CE6790);
    sub_10023FBF4(&qword_100CE67C0, &qword_100CE6790);
    swift_getOpaqueTypeConformance2();
    sub_10093F5B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE67D0);
  }

  return result;
}

uint64_t sub_10093F860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10093F8A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10093F91C@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA64E8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  type metadata accessor for ListViewTipStyleModifier(0);
  sub_10009D114();
  (*(v2 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v1);
  sub_10001B350(v13, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_1000302D8(v16, v7, &qword_100CA6028);
  sub_1000302D8(v13, &v7[v17], &qword_100CA6028);
  if (sub_100024D10(v7, 1, v1) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    if (sub_100024D10(&v7[v17], 1, v1) == 1)
    {
      sub_100018198(v7, &qword_100CA6028);
LABEL_9:
      swift_beginAccess();
      v18 = sub_1004966B0();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v7, v10, &qword_100CA6028);
  if (sub_100024D10(&v7[v17], 1, v1) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    sub_100018198(v7, &qword_100CA64E8);
    goto LABEL_7;
  }

  v19 = &v7[v17];
  v20 = v26;
  (*(v2 + 32))(v26, v19, v1);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v2 + 8);
  v22(v20, v1);
  sub_100018198(v13, &qword_100CA6028);
  sub_100018198(v16, &qword_100CA6028);
  v22(v10, v1);
  sub_100018198(v7, &qword_100CA6028);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  swift_beginAccess();
  v18 = sub_100496624();
LABEL_10:
  v23 = v18;
  result = swift_endAccess();
  *v27 = v23;
  return result;
}

uint64_t sub_10093FD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v64 = a1;
  v76 = a2;
  *&v63 = sub_10022C350(&qword_100CE72A0);
  __chkstk_darwin(v63);
  v5 = &v61 - v4;
  *&v65 = sub_10022C350(&qword_100CE72A8);
  __chkstk_darwin(v65);
  v7 = &v61 - v6;
  v70 = sub_10022C350(&qword_100CE72B0);
  __chkstk_darwin(v70);
  v9 = &v61 - v8;
  v10 = sub_10022C350(&qword_100CE72B8);
  v68 = *(v10 - 8);
  v69 = v10;
  __chkstk_darwin(v10);
  v67 = &v61 - v11;
  v66 = sub_10022C350(&qword_100CE72C0);
  __chkstk_darwin(v66);
  v13 = &v61 - v12;
  v14 = sub_10022C350(&qword_100CE72C8);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_10022C350(&qword_100CE72D0);
  v72 = *(v17 - 8);
  __chkstk_darwin(v17);
  v71 = &v61 - v18;
  v19 = sub_10022C350(&qword_100CE72D8);
  v74 = *(v19 - 8);
  v75 = v19;
  __chkstk_darwin(v19);
  v73 = &v61 - v20;
  v21 = static Edge.Set.leading.getter();
  v22 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  v23 = v3[8];
  v24 = 0uLL;
  v25 = 0uLL;
  if ((v23 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v25 + 1) = v26;
    *(&v24 + 1) = v27;
  }

  v61 = v25;
  v62 = v24;
  v28 = sub_10022C350(&qword_100CE72E0);
  (*(*(v28 - 8) + 16))(v5, v64, v28);
  v29 = &v5[*(v63 + 36)];
  *v29 = v22;
  *(v29 + 24) = v61;
  *(v29 + 8) = v62;
  v29[40] = v23;
  v30 = static Edge.Set.trailing.getter();
  v31 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  v32 = v3[24];
  v33 = 0uLL;
  v34 = 0uLL;
  if ((v32 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v34 + 1) = v35;
    *(&v33 + 1) = v36;
  }

  v63 = v34;
  v64 = v33;
  sub_10011C0F0(v5, v7, &qword_100CE72A0);
  v37 = &v7[*(v65 + 36)];
  *v37 = v31;
  *(v37 + 24) = v63;
  *(v37 + 8) = v64;
  v37[40] = v32;
  v38 = static Edge.Set.bottom.getter();
  v39 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    v39 = Edge.Set.init(rawValue:)();
  }

  v40 = v3[40];
  v41 = 0uLL;
  v42 = 0uLL;
  if ((v40 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v42 + 1) = v43;
    *(&v41 + 1) = v44;
  }

  v64 = v42;
  v65 = v41;
  sub_10011C0F0(v7, v9, &qword_100CE72A8);
  v45 = &v9[*(v70 + 36)];
  *v45 = v39;
  v46 = v65;
  *(v45 + 24) = v64;
  *(v45 + 8) = v46;
  v45[40] = v40;
  static VerticalEdge.Set.all.getter();
  sub_1009466DC();
  v47 = v67;
  View.listRowSeparator(_:edges:)();
  sub_100018198(v9, &qword_100CE72B0);
  (*(v68 + 32))(v13, v47, v69);
  v48 = &v13[*(v66 + 36)];
  v48[32] = 0;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  v77 = static Color.clear.getter();
  v49 = AnyView.init<A>(_:)();
  sub_10011C0F0(v13, v16, &qword_100CE72C0);
  *&v16[*(v14 + 36)] = v49;
  sub_10093F91C(&v77);
  v81 = v77;
  v50 = sub_1009468AC();
  v51 = v71;
  View.tipBackground<A>(_:)();

  sub_100018198(v16, &qword_100CE72C8);
  Solarium.init()();
  sub_10022C350(&qword_100CE7318);
  v77 = v14;
  v78 = &type metadata for AnyShapeStyle;
  v79 = v50;
  v80 = &protocol witness table for AnyShapeStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = v17;
  v78 = &type metadata for Color;
  v79 = OpaqueTypeConformance2;
  v80 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v53 = v73;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v72 + 8))(v51, v17);
  v54 = sub_10022C350(&qword_100CE7320);
  v55 = v76;
  v56 = (v76 + *(v54 + 36));
  v57 = *(sub_10022C350(&qword_100CE15A0) + 28);
  v58 = enum case for ColorScheme.dark(_:);
  v59 = type metadata accessor for ColorScheme();
  (*(*(v59 - 8) + 104))(v56 + v57, v58, v59);
  *v56 = swift_getKeyPath();
  return (*(v74 + 32))(v55, v53, v75);
}

uint64_t sub_100940610()
{
  static Color.white.getter();
  sub_10022C350(&qword_100CE72D0);
  sub_10022E824(&qword_100CE72C8);
  sub_1009468AC();
  swift_getOpaqueTypeConformance2();
  View.tipImageStyle<A>(_:)();
}

uint64_t sub_100940708()
{
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_1000E7B34();
  sub_10011C0F0(v2, v5, &qword_100CADBA0);
  v6 = type metadata accessor for Location.Identifier();
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    sub_100018198(v5, &qword_100CADBA0);
    return 0;
  }

  else
  {
    v7 = Location.Identifier.id.getter();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7;
}

uint64_t sub_100940880()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CA64E8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  type metadata accessor for ScrollToActiveLocationModifier(0);
  sub_10009D114();
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  sub_10001B350(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000302D8(v15, v6, &qword_100CA6028);
  sub_1000302D8(v12, &v6[v16], &qword_100CA6028);
  if (sub_100024D10(v6, 1, v0) != 1)
  {
    sub_1000302D8(v6, v9, &qword_100CA6028);
    if (sub_100024D10(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_100018198(v12, &qword_100CA6028);
      sub_100018198(v15, &qword_100CA6028);
      v20(v9, v0);
      sub_100018198(v6, &qword_100CA6028);
      return v17 & 1;
    }

    sub_100018198(v12, &qword_100CA6028);
    sub_100018198(v15, &qword_100CA6028);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_100018198(v12, &qword_100CA6028);
  sub_100018198(v15, &qword_100CA6028);
  if (sub_100024D10(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100018198(v6, &qword_100CA64E8);
    v17 = 0;
    return v17 & 1;
  }

  sub_100018198(v6, &qword_100CA6028);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100940CA0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v2;
  active = type metadata accessor for ScrollToActiveLocationModifier(0);
  v7 = *(active - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(active - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CE7198);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v20 - v14;
  (*(v11 + 16))(&v20 - v14, a1, v10, v13);
  sub_100941A20(v3, v9);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v15, v10);
  result = sub_1009423C8(v9, v18 + v17);
  *a2 = sub_100945AEC;
  a2[1] = v18;
  return result;
}

uint64_t sub_100940EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v20 = a2;
  v6 = type metadata accessor for ScrollViewProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ScrollToActiveLocationModifier(0);
  v11 = *(active - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(active - 8);
  v21 = sub_100940708();
  v22 = v13;
  v18[3] = sub_100940880();
  sub_100941A20(a3, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1009423C8(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  (*(v7 + 32))(v16 + v15, v9, v6);
  sub_10022C350(&qword_100CE7198);
  sub_10022C350(&qword_100CE6EF8);
  sub_10023FBF4(&qword_100CE71A0, &qword_100CE7198);
  sub_100945C18();
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_10094115C()
{
  result = sub_100940708();
  if (v1)
  {
    if (sub_100940880())
    {
      sub_1000E9170();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100941208()
{
  sub_10022C350(&qword_100CE7170);
  sub_10022C350(&qword_100CE7178);
  sub_100945964();
  sub_1009459B8();
  sub_10023FBF4(&qword_100CE7190, &qword_100CE7178);
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_100941318@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_10022C350(&qword_100CE7178);
  sub_10023FBF4(&qword_100CE7190, &qword_100CE7178);
  View.onScrollPhaseChange(_:)();

  KeyPath = swift_getKeyPath();
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  result = sub_10022C350(&qword_100CE7170);
  v9 = a3 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v10;
  return result;
}

uint64_t sub_100941464()
{
  ScrollPhase.isScrolling.getter();
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

uint64_t sub_1009414CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003A24(a1, a2);
  sub_10022C350(v3);
  sub_1000037E8();
  v4 = sub_1000251E0();

  return v5(v4, a1);
}

uint64_t sub_100941538()
{
  v3 = &type metadata for WeatherFeatureFlags;
  v4 = sub_1000032E4();
  v2[0] = 2;
  v0 = isFeatureEnabled(_:)();
  sub_100006F14(v2);
  return v0 & 1;
}

unint64_t sub_1009415AC()
{
  result = qword_100CE6860;
  if (!qword_100CE6860)
  {
    sub_10022E824(&qword_100CE6800);
    sub_100941638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6860);
  }

  return result;
}

unint64_t sub_100941638()
{
  result = qword_100CE6868;
  if (!qword_100CE6868)
  {
    sub_10022E824(&qword_100CE6858);
    sub_1009416C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6868);
  }

  return result;
}

unint64_t sub_1009416C4()
{
  result = qword_100CE6870;
  if (!qword_100CE6870)
  {
    sub_10022E824(&qword_100CE6850);
    sub_100941780();
    sub_10093F860(&qword_100CD96C8, type metadata accessor for ActivityModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6870);
  }

  return result;
}

unint64_t sub_100941780()
{
  result = qword_100CE6878;
  if (!qword_100CE6878)
  {
    sub_10022E824(&qword_100CE6848);
    sub_10022E824(&qword_100CE67F8);
    sub_10022E824(&qword_100CE67F0);
    sub_10022E824(&qword_100CE67E8);
    sub_10022E824(&qword_100CE67E0);
    sub_10022E824(&qword_100CE67D8);
    type metadata accessor for ListView.ListContentView(255);
    sub_10022E824(&qword_100CE6838);
    sub_10093F860(&qword_100CE6840, type metadata accessor for ListView.ListContentView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100636EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6878);
  }

  return result;
}

uint64_t sub_100941A20(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100941AB0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100006F14(v0 + 88);
  swift_unknownObjectRelease();
  sub_100006F14(v0 + 144);

  return swift_deallocObject();
}

_BYTE *sub_100941B38(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    return sub_100650308();
  }

  return result;
}

void sub_100941BA0()
{
  sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100942078(319, &qword_100CADCE8, &qword_100CA4B60, &unk_100A2EE20, &qword_100CA4B68);
    if (v1 <= 0x3F)
    {
      sub_100081B54(319, &qword_100CACC68);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100941CC4()
{
  sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100009D20(319, &qword_100CADCC8, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_10010F488(319, &qword_100CE69A0, &qword_100CC4158, &unk_100A5D730, &type metadata accessor for State);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_100061D18();
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_10008173C(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_10008173C(319, &qword_100CAD690, &type metadata for CGFloat, &type metadata accessor for State);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_100009D20(319, &unk_100CC9FC8, type metadata accessor for ContentStatusBanner, &type metadata accessor for State);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_10010F488(319, &qword_100CE69A8, &qword_100CE6830, &unk_100A99EB0, &type metadata accessor for State);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_100942078(319, &qword_100CE69B0, &qword_100CA4C50, &unk_100A2EEE0, &qword_100CA4C58);
                  v1 = v17;
                  if (v18 <= 0x3F)
                  {
                    sub_100009994();
                    v1 = v19;
                    if (v20 <= 0x3F)
                    {
                      v1 = sub_100081B54(319, &unk_100CE69B8);
                      if (v21 <= 0x3F)
                      {
                        v1 = sub_100081B54(319, &qword_100CA5088);
                        if (v22 <= 0x3F)
                        {
                          v1 = sub_100081B54(319, &qword_100CACC68);
                          if (v23 <= 0x3F)
                          {
                            v1 = sub_100081B54(319, &unk_100CACC70);
                            if (v24 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                              return 0;
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
    }
  }

  return v1;
}

void sub_100942078(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_10022E824(a3);
    sub_10023FBF4(a5, a3);
    sub_1000251E0();
    v8 = type metadata accessor for ObservedObject();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100942138()
{
  sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000EA080();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100942210()
{
  sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10008173C(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000EA080();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1009423C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10094244C()
{
  sub_1000C87D0();
  v2 = type metadata accessor for ListView.ListContentView(0);
  sub_100003DDC();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_10022C350(&qword_100CA62E0);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100020660(v5))
    {
      sub_100022F14();
      v6 = sub_10000C918();
      v7(v6);
    }
  }

  else
  {
  }

  v8 = v2[5];
  sub_10022C350(&unk_100CE1000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v9 + 8))(v4 + v8);
  }

  else
  {
  }

  v10 = v4 + v2[6];
  v11 = type metadata accessor for ListLocationViewModel(0);
  if (!sub_100024450())
  {
    type metadata accessor for LocationModel();
    sub_100003D98();
    (*(v12 + 8))(v10);
    sub_10001191C();
    v13 = v10 + *(v11 + 28);
    type metadata accessor for ListLocationRowPrimaryText(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for Date();
      if (!sub_10002120C(v14))
      {
        sub_100003B20();
        (*(v15 + 8))(v13, v1);
      }
    }

    else
    {
    }

    sub_10004EDA4();
    v16 = type metadata accessor for Date();
    if (!sub_100020CF8(v16))
    {
      sub_100003B20();
      v17 = sub_10007165C();
      v18(v17);
    }

    v19 = type metadata accessor for TimeZone();
    if (!sub_100020CF8(v19))
    {
      sub_100003B20();
      v20 = sub_10007165C();
      v21(v20);
    }

    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    v22 = *(v11 + 88);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003D98();
    (*(v23 + 8))(v10 + v22);
    sub_10001191C();
  }

  v24 = sub_10022C350(&qword_100CE6930);

  sub_100109A60();
  sub_10001673C(v2[8]);

  v25 = v4 + v2[9];
  if (!sub_100024450())
  {
    type metadata accessor for LocationModel();
    sub_100003D98();
    (*(v26 + 8))(v25);
    sub_10001191C();
    v27 = v25 + *(v11 + 28);
    type metadata accessor for ListLocationRowPrimaryText(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = type metadata accessor for Date();
      if (!sub_10006A954(v27))
      {
        sub_100003B20();
        (*(v29 + 8))(v27, v28);
      }
    }

    else
    {
    }

    sub_10004EDA4();
    v30 = type metadata accessor for Date();
    if (!sub_100024C48(v30))
    {
      sub_100003B20();
      v31 = sub_100086978();
      v32(v31);
    }

    v33 = type metadata accessor for TimeZone();
    if (!sub_100024C48(v33))
    {
      sub_100003B20();
      v34 = sub_100086978();
      v35(v34);
    }

    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    v36 = *(v11 + 88);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003D98();
    (*(v37 + 8))(v25 + v36);
    sub_10001191C();
  }

  sub_10001673C(v2[10]);

  sub_10001673C(v2[11]);

  sub_1000C88F8();
  if (v38)
  {
  }

  v39 = *(type metadata accessor for ContentStatusBanner() + 24);
  v40 = type metadata accessor for Date();
  if (!sub_100030484(v24 + v39))
  {
    sub_100022F14();
    (*(v41 + 8))(v24 + v39, v40);
  }

  sub_10022C350(&qword_100CC9F58);

  sub_10001673C(v2[13]);

  sub_10001673C(v2[15]);

  sub_10001673C(v2[18]);

  swift_unknownObjectRelease();
  sub_100006F14(v4 + v2[22]);
  swift_unknownObjectRelease();
  sub_100006F14(v4 + v2[24]);
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_100942A98(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  sub_100003810(v3);
  sub_10001164C();

  return a2(v2 + v4);
}

unint64_t sub_100942B0C()
{
  result = qword_100CE6C00;
  if (!qword_100CE6C00)
  {
    sub_10022E824(&qword_100CE6BB0);
    sub_10022E824(&qword_100CE6BA0);
    sub_10022E824(&qword_100CE6BE8);
    sub_10022E824(&qword_100CE6BF0);
    sub_10023FBF4(&qword_100CE6BF8, &qword_100CE6BA0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6C00);
  }

  return result;
}

uint64_t sub_100942CAC()
{
  sub_100004EC4();
  v0 = sub_1000081A4();

  return sub_100932FFC(v0, v1, v2);
}

unint64_t sub_100942D10()
{
  result = qword_100CE6C10;
  if (!qword_100CE6C10)
  {
    sub_10022E824(&qword_100CE6BB8);
    sub_100942B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6C10);
  }

  return result;
}

unint64_t sub_100942D9C()
{
  result = qword_100CE6C18;
  if (!qword_100CE6C18)
  {
    sub_10022E824(&qword_100CE6C08);
    sub_10093F860(&qword_100CE6C20, type metadata accessor for ListLocationViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6C18);
  }

  return result;
}

void sub_100942E50()
{
  sub_100004EC4();
  v0 = sub_1000081A4();

  sub_10093341C(v0, v1, v2);
}

unint64_t sub_100942EB4()
{
  result = qword_100CE6C28;
  if (!qword_100CE6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6C28);
  }

  return result;
}

unint64_t sub_100942F88()
{
  result = qword_100CE6C30;
  if (!qword_100CE6C30)
  {
    sub_10022E824(&qword_100CE6BD8);
    sub_10022E824(&qword_100CE6BC8);
    sub_10022E824(&qword_100CA5010);
    sub_10022E824(&qword_100CE6BC0);
    sub_10022E824(&qword_100CE6BB8);
    sub_10022E824(&qword_100CE6C08);
    sub_100942D10();
    sub_100942D9C();
    swift_getOpaqueTypeConformance2();
    sub_100942EB4();
    swift_getOpaqueTypeConformance2();
    sub_10010B5B0();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CACCF8, &qword_100CACD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6C30);
  }

  return result;
}

uint64_t sub_100943258()
{
  v1 = &_mh_execute_header;
  if (!*(v0 + 20))
  {
    v1 = 0;
  }

  v2 = *(v0 + 16) | v1;
  v3 = 0x10000000000;
  if (!*(v0 + 21))
  {
    v3 = 0;
  }

  v4 = v2 | v3;
  v5 = 0x100000000000000;
  if (!*(v0 + 23))
  {
    v5 = 0;
  }

  return sub_100933928(v4 | (*(v0 + 22) << 48) | v5, *(v0 + 24));
}

unint64_t sub_100943304()
{
  result = qword_100CE6C78;
  if (!qword_100CE6C78)
  {
    sub_10022E824(&qword_100CE6C60);
    sub_10023FBF4(&qword_100CE6C80, &unk_100CE6C88);
    sub_1004661B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6C78);
  }

  return result;
}

unint64_t sub_1009433E8()
{
  result = qword_100CE6CA8;
  if (!qword_100CE6CA8)
  {
    sub_10022E824(&qword_100CE6C90);
    sub_10022E824(&qword_100CE6CB0);
    sub_10022E824(&qword_100CC3AF8);
    sub_100943550();
    sub_10023FBF4(&qword_100CC3B00, &qword_100CC3AF8);
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CCA190, &qword_100CCA198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6CA8);
  }

  return result;
}

unint64_t sub_100943550()
{
  result = qword_100CE6CB8;
  if (!qword_100CE6CB8)
  {
    sub_10022E824(&qword_100CE6CB0);
    sub_10022E824(&qword_100CE6CC0);
    sub_10022E824(&qword_100CE6CC8);
    sub_10022E824(&qword_100CE6CD0);
    sub_10022E824(&qword_100CE6CD8);
    sub_10022E824(&qword_100CE6CE0);
    sub_10022E824(&qword_100CE6CE8);
    type metadata accessor for SidebarListStyle();
    sub_1009437A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100943AFC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CE6D50, &unk_100CE6D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6CB8);
  }

  return result;
}

unint64_t sub_1009437A0()
{
  result = qword_100CE6CF0;
  if (!qword_100CE6CF0)
  {
    sub_10022E824(&qword_100CE6CE8);
    sub_100943858();
    sub_10023FBF4(&qword_100CBDD68, &qword_100CBDD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6CF0);
  }

  return result;
}

unint64_t sub_100943858()
{
  result = qword_100CE6CF8;
  if (!qword_100CE6CF8)
  {
    sub_10022E824(&qword_100CE6D00);
    sub_100943914();
    sub_10093F860(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6CF8);
  }

  return result;
}

unint64_t sub_100943914()
{
  result = qword_100CE6D08;
  if (!qword_100CE6D08)
  {
    sub_10022E824(&qword_100CE6D10);
    sub_1009439D0();
    sub_10093F860(&qword_100CE6D40, type metadata accessor for ScrollToActiveLocationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6D08);
  }

  return result;
}

unint64_t sub_1009439D0()
{
  result = qword_100CE6D18;
  if (!qword_100CE6D18)
  {
    sub_10022E824(&qword_100CE6D20);
    sub_10023FBF4(&qword_100CE6D28, &unk_100CE6D30);
    sub_100943A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6D18);
  }

  return result;
}

unint64_t sub_100943A88()
{
  result = qword_100CE6D38;
  if (!qword_100CE6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6D38);
  }

  return result;
}

unint64_t sub_100943AFC()
{
  result = qword_100CE6D48;
  if (!qword_100CE6D48)
  {
    sub_10022E824(&qword_100CE6CD0);
    sub_10022E824(&qword_100CE6CD8);
    sub_10022E824(&qword_100CE6CE0);
    sub_10022E824(&qword_100CE6CE8);
    type metadata accessor for SidebarListStyle();
    sub_1009437A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CC2270, &qword_100CC2278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6D48);
  }

  return result;
}

unint64_t sub_100943C98()
{
  result = qword_100CE6D68;
  if (!qword_100CE6D68)
  {
    sub_10022E824(&qword_100CE6C50);
    sub_10093F860(&qword_100CE6CA0, &type metadata accessor for IsDeviceSlowViewInputPredicate);
    sub_1009433E8();
    sub_10022E824(&qword_100CE6CB0);
    sub_10022E824(&qword_100CC3AF8);
    sub_100943550();
    sub_10023FBF4(&qword_100CC3B00, &qword_100CC3AF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6D68);
  }

  return result;
}

unint64_t sub_100943E18()
{
  result = qword_100CE6D70;
  if (!qword_100CE6D70)
  {
    sub_10022E824(&qword_100CE6D60);
    sub_100943C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6D70);
  }

  return result;
}

unint64_t sub_100943EC8()
{
  result = qword_100CE6D88;
  if (!qword_100CE6D88)
  {
    sub_10022E824(&qword_100CE6D80);
    sub_10023FBF4(&qword_100CE17D0, &qword_100CE17C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6D88);
  }

  return result;
}

uint64_t sub_100944024(uint64_t a1)
{
  sub_100004EC4();
  sub_10001164C();

  return sub_10093838C(a1, v1 + v3);
}

unint64_t sub_1009440B4()
{
  result = qword_100CE6E50;
  if (!qword_100CE6E50)
  {
    sub_10022E824(&qword_100CE6E40);
    sub_10093F860(&qword_100CE6E48, type metadata accessor for ListRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6E50);
  }

  return result;
}

void sub_100944170()
{
  sub_100004EC4();
  v0 = sub_1000081A4();

  sub_100939234(v0, v1, v2);
}

void sub_100944200()
{
  sub_100004EC4();
  sub_10001164C();

  sub_10093979C();
}

unint64_t sub_100944260()
{
  result = qword_100CE6E78;
  if (!qword_100CE6E78)
  {
    sub_10022E824(&qword_100CE6DD0);
    sub_10023FBF4(&qword_100CE6E80, &unk_100CE6E88);
    sub_10023FBF4(&qword_100CC2F58, &unk_100CC2F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6E78);
  }

  return result;
}

unint64_t sub_100944344()
{
  result = qword_100CE6E90;
  if (!qword_100CE6E90)
  {
    sub_10022E824(&qword_100CE6DE0);
    sub_10022E824(&qword_100CE6DD0);
    type metadata accessor for PlainButtonStyle();
    sub_100944260();
    sub_10093F860(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6E90);
  }

  return result;
}

unint64_t sub_10094447C()
{
  result = qword_100CE6EC8;
  if (!qword_100CE6EC8)
  {
    sub_10022E824(&qword_100CE6E98);
    sub_100944534();
    sub_10023FBF4(&qword_100CC2F68, &unk_100CC2F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6EC8);
  }

  return result;
}

unint64_t sub_100944534()
{
  result = qword_100CE6ED0;
  if (!qword_100CE6ED0)
  {
    sub_10022E824(&qword_100CE6EC0);
    sub_1009445EC();
    sub_10023FBF4(&qword_100CC2F58, &unk_100CC2F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6ED0);
  }

  return result;
}

unint64_t sub_1009445EC()
{
  result = qword_100CE6ED8;
  if (!qword_100CE6ED8)
  {
    sub_10022E824(&qword_100CE6EB8);
    sub_100944678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6ED8);
  }

  return result;
}

unint64_t sub_100944678()
{
  result = qword_100CE6EE0;
  if (!qword_100CE6EE0)
  {
    sub_10022E824(&qword_100CE6EB0);
    sub_100944704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6EE0);
  }

  return result;
}

unint64_t sub_100944704()
{
  result = qword_100CE6EE8;
  if (!qword_100CE6EE8)
  {
    sub_10022E824(&qword_100CE6EA8);
    sub_10010B468();
    sub_10023FBF4(&qword_100CC0538, &qword_100CC0540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6EE8);
  }

  return result;
}

void sub_1009447C4(uint64_t a1)
{
  sub_100004EC4();
  sub_10001164C();
  sub_10093AD60(a1);
}

uint64_t sub_100944818(char a1, char a2)
{
  sub_100004EC4();
  sub_10001164C();

  return sub_10093B2C4(a1, a2);
}

uint64_t sub_100944888@<X0>(uint64_t *a1@<X8>)
{
  sub_100004EC4();

  return sub_100934604(a1);
}

uint64_t sub_1009448F0()
{
  sub_1000C87D0();
  v2 = type metadata accessor for ListView.ListContentView(0);
  sub_100003DDC();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v0 + v4;
  sub_10022C350(&qword_100CA62E0);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100020660(v6))
    {
      sub_100022F14();
      v7 = sub_10000C918();
      v8(v7);
    }
  }

  else
  {
  }

  v9 = v2[5];
  sub_10022C350(&unk_100CE1000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v10 + 8))(v5 + v9);
  }

  else
  {
  }

  v11 = v5 + v2[6];
  v12 = type metadata accessor for ListLocationViewModel(0);
  if (!sub_100024450())
  {
    type metadata accessor for LocationModel();
    sub_100003D98();
    (*(v13 + 8))(v11);
    sub_10001191C();
    v14 = v11 + *(v12 + 28);
    type metadata accessor for ListLocationRowPrimaryText(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for Date();
      if (!sub_10002120C(v15))
      {
        sub_100003B20();
        (*(v16 + 8))(v14, v1);
      }
    }

    else
    {
    }

    sub_10004EDA4();
    v17 = type metadata accessor for Date();
    if (!sub_100020CF8(v17))
    {
      sub_100003B20();
      v18 = sub_10007165C();
      v19(v18);
    }

    v20 = type metadata accessor for TimeZone();
    if (!sub_100020CF8(v20))
    {
      sub_100003B20();
      v21 = sub_10007165C();
      v22(v21);
    }

    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    v23 = *(v12 + 88);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003D98();
    (*(v24 + 8))(v11 + v23);
    sub_10001191C();
  }

  v25 = sub_10022C350(&qword_100CE6930);

  sub_100109A60();
  sub_10001673C(v2[8]);

  v26 = v5 + v2[9];
  if (!sub_100024450())
  {
    type metadata accessor for LocationModel();
    sub_100003D98();
    (*(v27 + 8))(v26);
    sub_10001191C();
    v28 = v26 + *(v12 + 28);
    type metadata accessor for ListLocationRowPrimaryText(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = type metadata accessor for Date();
      if (!sub_10006A954(v28))
      {
        sub_100003B20();
        (*(v30 + 8))(v28, v29);
      }
    }

    else
    {
    }

    sub_10004EDA4();
    v31 = type metadata accessor for Date();
    if (!sub_100024C48(v31))
    {
      sub_100003B20();
      v32 = sub_100086978();
      v33(v32);
    }

    v34 = type metadata accessor for TimeZone();
    if (!sub_100024C48(v34))
    {
      sub_100003B20();
      v35 = sub_100086978();
      v36(v35);
    }

    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    sub_10001191C();
    v37 = *(v12 + 88);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_100003D98();
    (*(v38 + 8))(v26 + v37);
    sub_10001191C();
  }

  sub_10001673C(v2[10]);

  sub_10001673C(v2[11]);

  sub_1000C88F8();
  if (v39)
  {
  }

  v40 = *(type metadata accessor for ContentStatusBanner() + 24);
  v41 = type metadata accessor for Date();
  if (!sub_100030484(v25 + v40))
  {
    sub_100022F14();
    (*(v42 + 8))(v25 + v40, v41);
  }

  sub_10022C350(&qword_100CC9F58);

  sub_10001673C(v2[13]);

  sub_10001673C(v2[15]);

  sub_10001673C(v2[18]);

  swift_unknownObjectRelease();
  sub_100006F14(v5 + v2[22]);
  swift_unknownObjectRelease();
  sub_100006F14(v5 + v2[24]);
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_100944F18(uint64_t *a1)
{
  sub_100004EC4();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100934810(a1, v4, v5, v6);
}

unint64_t sub_100944F80()
{
  result = qword_100CE6F08;
  if (!qword_100CE6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6F08);
  }

  return result;
}

void sub_100944FD4()
{
  v0 = type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  sub_100003810(v0);
  sub_10001164C();
  sub_10093BB44();
}

uint64_t sub_100945028()
{
  v0 = type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  sub_100003DDC();
  sub_10022C350(&qword_100CA62E0);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100020660(v1))
    {
      sub_100022F14();
      v2 = sub_10000C918();
      v3(v2);
    }
  }

  else
  {
  }

  sub_10001673C(*(v0 + 20));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1009451A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v4 = a3(0);
  sub_100003810(v4);
  v5 = sub_1000081A4();

  return a4(v5);
}

void sub_10094525C()
{
  sub_100942078(319, &qword_100CADCE8, &qword_100CA4B60, &unk_100A2EE20, &qword_100CA4B68);
  if (v0 <= 0x3F)
  {
    sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100009D20(319, &unk_100CE6F88, &type metadata accessor for ScrollPosition, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1009453AC()
{
  type metadata accessor for ListLocationViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_100009994();
    if (v1 <= 0x3F)
    {
      sub_100081B54(319, &qword_100CACC68);
      if (v2 <= 0x3F)
      {
        sub_100081B54(319, &unk_100CE69B8);
        if (v3 <= 0x3F)
        {
          sub_100081B54(319, &unk_100CACC70);
          if (v4 <= 0x3F)
          {
            sub_10008173C(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_10013DB50();
              if (v6 <= 0x3F)
              {
                sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_10008173C(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
                  if (v8 <= 0x3F)
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

void sub_1009455B8()
{
  sub_10008173C(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10010F488(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10008173C(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1009456D0()
{
  result = qword_100CE7128;
  if (!qword_100CE7128)
  {
    sub_10022E824(&qword_100CE7130);
    sub_10023FBF4(&qword_100CE7138, &unk_100CE7140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7128);
  }

  return result;
}

uint64_t sub_100945788(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    sub_10022E824(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100945800()
{
  result = qword_100CE7158;
  if (!qword_100CE7158)
  {
    sub_10022E824(&qword_100CE6B80);
    sub_10023FBF4(&qword_100CE7160, &unk_100CE7168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7158);
  }

  return result;
}

unint64_t sub_100945964()
{
  result = qword_100CE7180;
  if (!qword_100CE7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7180);
  }

  return result;
}

unint64_t sub_1009459B8()
{
  result = qword_100CE7188;
  if (!qword_100CE7188)
  {
    sub_10022E824(&qword_100CE7170);
    sub_10022E824(&qword_100CE7178);
    sub_10023FBF4(&qword_100CE7190, &qword_100CE7178);
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7188);
  }

  return result;
}

uint64_t sub_100945AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_10022C350(&qword_100CE7198) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  active = type metadata accessor for ScrollToActiveLocationModifier(0);
  sub_100003810(active);
  v10 = v2 + ((v6 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_100940EA8(a1, v2 + v6, v10, a2);
}

unint64_t sub_100945C18()
{
  result = qword_100CE71A8;
  if (!qword_100CE71A8)
  {
    sub_10022E824(&qword_100CE6EF8);
    sub_1000E91C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE71A8);
  }

  return result;
}

unint64_t sub_100945C9C()
{
  result = qword_100CE71C8;
  if (!qword_100CE71C8)
  {
    sub_10022E824(&qword_100CE71B8);
    sub_100945D58();
    sub_10093F860(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE71C8);
  }

  return result;
}

unint64_t sub_100945D58()
{
  result = qword_100CE71D0;
  if (!qword_100CE71D0)
  {
    sub_10022E824(&qword_100CE71D8);
    sub_10022E824(&qword_100CE71E0);
    sub_10022E824(&unk_100CE0EB0);
    sub_10022E824(&qword_100CE71E8);
    sub_100945ED8();
    swift_getOpaqueTypeConformance2();
    sub_1009463F8();
    swift_getOpaqueTypeConformance2();
    sub_10093F860(&qword_100CE7268, type metadata accessor for DetermineWhetherRowIsListLocationGeometryEffectSourceModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE71D0);
  }

  return result;
}

unint64_t sub_100945ED8()
{
  result = qword_100CE71F0;
  if (!qword_100CE71F0)
  {
    sub_10022E824(&qword_100CE71E0);
    sub_100945F94();
    sub_10093F860(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE71F0);
  }

  return result;
}

unint64_t sub_100945F94()
{
  result = qword_100CE71F8;
  if (!qword_100CE71F8)
  {
    sub_10022E824(&qword_100CE7200);
    sub_10094604C();
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE71F8);
  }

  return result;
}

unint64_t sub_10094604C()
{
  result = qword_100CE7208;
  if (!qword_100CE7208)
  {
    sub_10022E824(&qword_100CE7210);
    sub_10022E824(&qword_100CE7218);
    sub_100946140();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CA6F10, &qword_100CA6F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7208);
  }

  return result;
}

unint64_t sub_100946140()
{
  result = qword_100CE7220;
  if (!qword_100CE7220)
  {
    sub_10022E824(&qword_100CE7218);
    sub_1009461F8();
    sub_10023FBF4(&qword_100CC2F58, &unk_100CC2F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7220);
  }

  return result;
}

unint64_t sub_1009461F8()
{
  result = qword_100CE7228;
  if (!qword_100CE7228)
  {
    sub_10022E824(&qword_100CE7230);
    sub_1009462B0();
    sub_10023FBF4(&qword_100CC2F68, &unk_100CC2F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7228);
  }

  return result;
}

unint64_t sub_1009462B0()
{
  result = qword_100CE7238;
  if (!qword_100CE7238)
  {
    sub_10022E824(&qword_100CE7240);
    sub_10094633C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7238);
  }

  return result;
}

unint64_t sub_10094633C()
{
  result = qword_100CE7248;
  if (!qword_100CE7248)
  {
    sub_10022E824(&qword_100CE7250);
    sub_10093F860(&qword_100CCCE30, type metadata accessor for ListLocationRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7248);
  }

  return result;
}

unint64_t sub_1009463F8()
{
  result = qword_100CE7258;
  if (!qword_100CE7258)
  {
    sub_10022E824(&qword_100CE71E8);
    sub_100945ED8();
    sub_100946484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7258);
  }

  return result;
}

unint64_t sub_100946484()
{
  result = qword_100CE7260;
  if (!qword_100CE7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7260);
  }

  return result;
}

unint64_t sub_100946500()
{
  result = qword_100CE7278;
  if (!qword_100CE7278)
  {
    sub_10022E824(&qword_100CE7270);
    sub_1003F3F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7278);
  }

  return result;
}

uint64_t sub_1009465F0(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  sub_100003810(v8);
  v10 = v3 + ((v6 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return a3(v3 + v6, v10);
}

unint64_t sub_1009466DC()
{
  result = qword_100CE72E8;
  if (!qword_100CE72E8)
  {
    sub_10022E824(&qword_100CE72B0);
    sub_100946768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE72E8);
  }

  return result;
}

unint64_t sub_100946768()
{
  result = qword_100CE72F0;
  if (!qword_100CE72F0)
  {
    sub_10022E824(&qword_100CE72A8);
    sub_1009467F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE72F0);
  }

  return result;
}

unint64_t sub_1009467F4()
{
  result = qword_100CE72F8;
  if (!qword_100CE72F8)
  {
    sub_10022E824(&qword_100CE72A0);
    sub_10023FBF4(&qword_100CE7300, &unk_100CE72E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE72F8);
  }

  return result;
}

unint64_t sub_1009468AC()
{
  result = qword_100CE7308;
  if (!qword_100CE7308)
  {
    sub_10022E824(&qword_100CE72C8);
    sub_100946964();
    sub_10023FBF4(&qword_100CC2F58, &unk_100CC2F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7308);
  }

  return result;
}

unint64_t sub_100946964()
{
  result = qword_100CE7310;
  if (!qword_100CE7310)
  {
    sub_10022E824(&qword_100CE72C0);
    sub_10022E824(&qword_100CE72B0);
    sub_1009466DC();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CC2F68, &unk_100CC2F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7310);
  }

  return result;
}

void sub_100946A90()
{
  type metadata accessor for Location.Identifier();
  if (v0 <= 0x3F)
  {
    sub_100942078(319, &qword_100CADCE8, &qword_100CA4B60, &unk_100A2EE20, &qword_100CA4B68);
    if (v1 <= 0x3F)
    {
      sub_100009D20(319, &unk_100CE7390, type metadata accessor for ListLocationGeometryEffectSourceState, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100946B8C()
{
  result = qword_100CE73C8;
  if (!qword_100CE73C8)
  {
    sub_10022E824(&qword_100CE73D0);
    sub_100945964();
    sub_1009459B8();
    sub_10023FBF4(&qword_100CE7190, &qword_100CE7178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE73C8);
  }

  return result;
}

unint64_t sub_100946C58()
{
  result = qword_100CE73E8;
  if (!qword_100CE73E8)
  {
    sub_10022E824(&qword_100CE7288);
    sub_100946D10();
    sub_10023FBF4(&qword_100CE7408, &unk_100CE7410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE73E8);
  }

  return result;
}

unint64_t sub_100946D10()
{
  result = qword_100CE73F0;
  if (!qword_100CE73F0)
  {
    sub_10022E824(&qword_100CE7280);
    sub_10022E824(&qword_100CE71C0);
    sub_10022E824(&qword_100CE7270);
    sub_10022E824(&qword_100CE71B8);
    sub_100945C9C();
    swift_getOpaqueTypeConformance2();
    sub_100946500();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CE73F8, &unk_100CE7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE73F0);
  }

  return result;
}

unint64_t sub_100946E80()
{
  result = qword_100CE7418;
  if (!qword_100CE7418)
  {
    sub_10022E824(&qword_100CE7320);
    sub_10022E824(&qword_100CE72D0);
    sub_10022E824(&qword_100CE7318);
    sub_10022E824(&qword_100CE72C8);
    sub_1009468AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CE1780, &qword_100CE15A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7418);
  }

  return result;
}

unint64_t sub_100947074()
{
  result = qword_100CE7448;
  if (!qword_100CE7448)
  {
    sub_10022E824(&qword_100CE7428);
    sub_10023FBF4(&qword_100CE7450, &qword_100CE7420);
    sub_10023FBF4(&unk_100CE1820, &qword_100CB3618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7448);
  }

  return result;
}

unint64_t sub_100947158()
{
  result = qword_100CE7458;
  if (!qword_100CE7458)
  {
    sub_10022E824(&qword_100CE7440);
    sub_10023FBF4(&qword_100CE7460, &qword_100CE7438);
    sub_10023FBF4(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7458);
  }

  return result;
}

uint64_t sub_100947248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for NewsChannelLogoCollection.LogoTheme();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = type metadata accessor for NewsChannelLogoCollection();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v10 = type metadata accessor for NewsChannel();
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();
  v11 = type metadata accessor for NewsArticle();
  v7[20] = v11;
  v7[21] = *(v11 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v12 = type metadata accessor for NewsArticlePlacement();
  v7[25] = v12;
  v7[26] = *(v12 - 8);
  v7[27] = swift_task_alloc();
  v13 = type metadata accessor for NewsArticle();
  v7[28] = v13;
  v7[29] = *(v13 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock();
  v7[35] = v14;
  v7[36] = *(v14 - 8);
  v7[37] = swift_task_alloc();
  v15 = type metadata accessor for Article();
  v7[38] = v15;
  v7[39] = *(v15 - 8);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v16 = type metadata accessor for ArticlePlacement();
  v7[44] = v16;
  v7[45] = *(v16 - 8);
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();

  return _swift_task_switch(sub_100947664, 0, 0);
}

uint64_t sub_100947664()
{
  sub_100003B08();
  type metadata accessor for MainActor();
  *(v0 + 384) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009476F4, v2, v1);
}

uint64_t sub_1009476F4()
{
  sub_100003B08();

  type metadata accessor for NewsService();
  *(v0 + 392) = static NewsService.shared.getter();

  return _swift_task_switch(sub_10094776C, 0, 0);
}

uint64_t sub_10094776C()
{
  v72 = v0;
  v1 = News.placements.getter();
  v61 = *(v1 + 16);
  if (v61)
  {
    v2 = 0;
    sub_10000C7B8();
    v5 = v1 + v4;
    v6 = v0[39];
    v69 = v6;
    v70 = (v6 + 8);
    v62 = (v6 + 32);
    v58 = (v3 + 8);
    v59 = v1 + v4;
    v60 = v3;
    while (v2 < *(v1 + 16))
    {
      (*(v3 + 16))(v0[47], v5 + *(v3 + 72) * v2, v0[44]);
      v63 = v2 + 1;
      v7 = ArticlePlacement.articles.getter();
      v8 = 0;
      v9 = *(v7 + 16);
      v64 = _swiftEmptyArrayStorage;
      while (v9 != v8)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v10 = v0[49];
        v11 = v0[43];
        v12 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v13 = *(v69 + 72);
        (*(v69 + 16))(v11, v7 + v12 + v13 * v8, v0[38]);
        if (sub_10094915C(v11, v10))
        {
          v67 = *v62;
          (*v62)(v0[42], v0[43], v0[38]);
          v14 = v64;
          v71 = v64;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1006A8494();
            v14 = v71;
          }

          v16 = *(v14 + 16);
          v15 = *(v14 + 24);
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            sub_100004EE4(v15);
            v65 = v20;
            sub_1006A8494();
            v17 = v65;
            v14 = v71;
          }

          ++v8;
          v18 = v0[42];
          v19 = v0[38];
          *(v14 + 16) = v17;
          v64 = v14;
          v67(v14 + v12 + v16 * v13, v18, v19);
        }

        else
        {
          (*v70)(v0[43], v0[38]);
          ++v8;
        }
      }

      v21 = v64[2];
      if (v21)
      {
        v57 = v1;
        v22 = sub_100023578(_swiftEmptyArrayStorage);
        sub_10000369C(v22, v23, v24);
        v25 = v71;
        sub_10000C7B8();
        v27 = v64 + v26;
        v66 = *(v28 + 16);
        v68 = *(v28 + 72);
        do
        {
          v29 = v0[41];
          v30 = v0[38];
          v66(v29, v27, v30);
          v31 = Article.id.getter();
          v33 = v32;
          (*v70)(v29, v30);
          v71 = v25;
          v35 = v25[2];
          v34 = v25[3];
          if (v35 >= v34 >> 1)
          {
            v37 = sub_100004EE4(v34);
            sub_10000369C(v37, v35 + 1, 1);
            v25 = v71;
          }

          v25[2] = v35 + 1;
          v36 = &v25[2 * v35];
          v36[4] = v31;
          v36[5] = v33;
          v27 += v68;
          --v21;
        }

        while (v21);
        (*v58)(v0[47], v0[44]);

        v1 = v57;
      }

      else
      {
        v38 = v0[47];
        v39 = v0[44];

        (*v58)(v38, v39);
        v25 = _swiftEmptyArrayStorage;
      }

      sub_10035D984(v25);
      v3 = v60;
      v2 = v63;
      v5 = v59;
      if (v63 == v61)
      {
        goto LABEL_22;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_22:

    v0[50] = _swiftEmptyArrayStorage;
    if (qword_100CA2780 == -1)
    {
      goto LABEL_23;
    }
  }

  sub_100006BC4();
LABEL_23:
  v40 = type metadata accessor for Logger();
  v0[51] = sub_10000703C(v40, qword_100D90CD8);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v71 = v44;
    *v43 = 136446210;
    v45 = Array.description.getter();
    v47 = sub_100078694(v45, v46, &v71);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "Fetching articles, articleIDs=%{public}s", v43, 0xCu);
    sub_100006F14(v44);
    sub_100003884();
    sub_100003884();
  }

  if (qword_100CA25F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NewsDataManager();
  sub_1000E10DC(&qword_100CE7500, v48, type metadata accessor for NewsDataManager);
  Configurable.setting<A>(_:)();
  v49 = v0[5];
  if ((v49 & 0x8000000000000000) == 0)
  {
    sub_10074C298(v49);
    static Clock<>.continuous.getter();
    v50 = swift_task_alloc();
    v0[52] = v50;
    *v50 = v0;
    v50[1] = sub_100947E24;
    sub_10004EDC8();

    __asm { BR              X5 }
  }

  v53 = swift_task_alloc();
  v0[54] = v53;
  *v53 = v0;
  sub_100011048(v53);
  sub_10004EDC8();

  return NewsService.fetchArticles(for:)(v54);
}

uint64_t sub_100947E24()
{
  sub_100003B08();
  v2 = *v1;
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_10000CCF8();
  *v5 = v4;
  v2[53] = v0;

  if (v0)
  {
    (*(v2[36] + 8))(v2[37], v2[35]);

    return _swift_task_switch(sub_100947FA4, 0, 0);
  }

  else
  {
    (*(v2[36] + 8))(v2[37], v2[35]);
    v6 = swift_task_alloc();
    v2[54] = v6;
    *v6 = v4;
    sub_100011048(v6);
    v7 = v2[50];

    return NewsService.fetchArticles(for:)(v7);
  }
}

uint64_t sub_100947FA4()
{
  v15 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v3 = 136446466;
    v4 = Array.description.getter();
    v6 = v5;

    sub_100078694(v4, v6, &v14);

    sub_10001A220();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100078694(v7, v8, &v14);

    *(v3 + 14) = v9;
    sub_100069C80(&_mh_execute_header, v10, v11, "Failed to fetch articles, articleIDs=%{public}s, error=%{public}s");
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();
  }

  else
  {
  }

  (*(v0 + 72))(_swiftEmptyArrayStorage);

  sub_10001D2D8();

  sub_100003B14();

  return v12();
}

uint64_t sub_10094820C()
{
  sub_100003B08();
  v2 = *v1;
  sub_10000CCF8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v4;
  *(v2 + 448) = v0;

  if (v0)
  {
    v5 = sub_100948EF4;
  }

  else
  {

    v5 = sub_100948320;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100948320()
{
  v154 = v0;
  v1 = v0;
  v150 = *(v0[55] + 16);
  if (v150)
  {
    v2 = 0;
    sub_10000C7B8();
    v145 = v3 + v4;
    v137 = (v5 + 32);
    v6 = &_swiftEmptyDictionarySingleton;
    v147 = v5;
    v135 = (v5 + 40);
    v140 = v3;
    while (v2 < *(v3 + 16))
    {
      v8 = v1[33];
      v7 = v1[34];
      v9 = v1[28];
      v10 = *(v147 + 72);
      v11 = *(v147 + 16);
      v11(v7, v145 + v10 * v2, v9);
      v12 = v6;
      v13 = NewsArticle.id.getter();
      v15 = v14;
      v11(v8, v7, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v153[0] = v12;
      v17 = sub_100031B34();
      v19 = *(v12 + 16);
      v20 = (v18 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_53;
      }

      v22 = v17;
      v23 = v18;
      sub_10022C350(&qword_100CE7508);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21))
      {
        v24 = sub_100031B34();
        if ((v23 & 1) != (v25 & 1))
        {

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v22 = v24;
      }

      v26 = v144[33];
      v27 = v144[28];
      if (v23)
      {

        v6 = v153[0];
        (*v135)(*(v153[0] + 56) + v22 * v10, v26, v27);
        v28 = sub_100009300();
        v29(v28);
      }

      else
      {
        v30 = v153[0];
        *(v153[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
        v31 = (*(v30 + 48) + 16 * v22);
        *v31 = v13;
        v31[1] = v15;
        v6 = v30;
        (*v137)(*(v30 + 56) + v22 * v10, v26, v27);
        v32 = sub_100009300();
        v33(v32);
        v34 = v6[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_54;
        }

        v6[2] = v36;
      }

      ++v2;
      v1 = v144;
      v3 = v140;
      if (v150 == v2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_52;
  }

  v6 = &_swiftEmptyDictionarySingleton;
LABEL_15:

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v153[0] = v40;
    *v39 = 136446210;
    v41 = Dictionary.description.getter();
    v43 = sub_100078694(v41, v42, v153);

    *(v39 + 4) = v43;
    sub_10001363C(&_mh_execute_header, v44, v45, "Received articles, articles=%{public}s");
    sub_100006F14(v40);
    sub_100003884();
    sub_100003884();
  }

  v46 = News.placements.getter();
  v47 = *(v46 + 16);
  if (!v47)
  {

    v52 = _swiftEmptyArrayStorage;
LABEL_43:

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v153[0] = v105;
      *v104 = 136446210;
      v106 = Array.description.getter();
      v108 = sub_100078694(v106, v107, v153);

      *(v104 + 4) = v108;
      sub_10001363C(&_mh_execute_header, v109, v110, "Converted articles into result, result=%{public}s");
      sub_100006F14(v105);
      sub_100003884();
      sub_100003884();
    }

    (v1[9])(v52);

    sub_100003B14();

    v111();
    return;
  }

  v48 = v1[45];
  v49 = v1[39];
  v50 = v1[29];
  v143 = v1[22];
  v124 = v1[20];
  v148 = v1[15];
  v151 = v1[18];
  v51 = v1[12];
  sub_100023578(_swiftEmptyArrayStorage);
  sub_1006A7824();
  v52 = v153[0];
  v112 = v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v123 = enum case for NewsChannelLogoCollection.LogoTheme.mask(_:);
  v121 = (v51 + 8);
  v122 = (v51 + 104);
  v120 = (v148 + 8);
  v125 = v50;
  v126 = v6;
  v118 = (v50 + 8);
  v119 = (v151 + 8);
  v127 = (v49 + 8);
  v113 = v48;
  v114 = v47;
  v53 = 0;
  v115 = v46;
  while (v53 < *(v46 + 16))
  {
    v117 = v53;
    (*(v113 + 16))(v1[46], v112 + *(v113 + 72) * v53, v1[44]);
    v54 = *(ArticlePlacement.articles.getter() + 16);
    if (v54)
    {
      v116 = v52;
      sub_10000C7B8();
      v57 = v55 + v56;
      v149 = *(v58 + 16);
      v152 = *(v58 + 72);
      v146 = _swiftEmptyArrayStorage;
      v59 = v127;
      while (1)
      {
        v149(v1[40], v57, v1[38]);
        Article.id.getter();
        if (v6[2])
        {
          v60 = sub_100031B34();
          v62 = v61;

          if (v62)
          {
            v63 = v1[31];
            v64 = v1[32];
            v65 = v1[30];
            v66 = v1[28];
            v138 = v1[22];
            v67 = v6[7] + *(v125 + 72) * v60;
            v68 = *(v125 + 16);
            v68(v63, v67, v66);
            (*(v125 + 32))(v64, v63, v66);
            v68(v65, v64, v66);
            v69 = Article.headlineOverride.getter();
            v71 = v70;
            v142 = Article.phenomena.getter();
            v141 = Article.alertIds.getter();
            *v138 = NewsArticle.id.getter();
            v143[1] = v72;
            if (v71)
            {
              v73 = v144;
            }

            else
            {
              v74 = NewsArticle.title.getter();
              v71 = v75;
              v73 = v144;
              v69 = v74;
            }

            v133 = v73[38];
            v134 = v73[40];
            v76 = v73[30];
            v131 = v73[28];
            v132 = v73[32];
            v136 = v73[23];
            v139 = v73[24];
            v77 = v73[22];
            v78 = v73[19];
            v79 = v73[16];
            v80 = v73[13];
            v129 = v73[14];
            v130 = v73[17];
            v128 = v73[11];
            v143[2] = v69;
            v143[3] = v71;
            NewsArticle.thumbnailURL.getter();
            NewsArticle.publishDate.getter();
            NewsArticle.url.getter();
            NewsArticle.channel.getter();
            v81 = (v77 + v124[9]);
            *v81 = NewsChannel.id.getter();
            v81[1] = v82;
            v81[2] = NewsChannel.name.getter();
            v81[3] = v83;
            NewsChannel.logo.getter();
            (*v122)(v80, v123, v128);
            type metadata accessor for NewsChannel();
            NewsChannelLogoCollection.url(for:)();
            (*v121)(v80, v128);
            (*v120)(v79, v129);
            (*v119)(v78, v130);
            v84 = *v118;
            (*v118)(v76, v131);
            v84(v132, v131);
            v59 = v127;
            (*v127)(v134, v133);
            *(v77 + v124[10]) = _swiftEmptyArrayStorage;
            *(v77 + v124[11]) = v142;
            *(v77 + v124[12]) = v141;
            sub_100949EA4(v77, v136, type metadata accessor for NewsArticle);
            sub_100949EA4(v136, v139, type metadata accessor for NewsArticle);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v6 = v126;
              v85 = v146;
            }

            else
            {
              sub_1006A0164();
              v85 = v91;
              v6 = v126;
            }

            v86 = v85[2];
            v1 = v144;
            if (v86 >= v85[3] >> 1)
            {
              sub_1006A0164();
              v85 = v92;
            }

            v85[2] = v86 + 1;
            sub_10000C7B8();
            v146 = v87;
            sub_100949EA4(v90, v87 + v88 + *(v89 + 72) * v86, type metadata accessor for NewsArticle);
            goto LABEL_34;
          }
        }

        else
        {
        }

        (*v59)(v1[40], v1[38]);
LABEL_34:
        v57 += v152;
        if (!--v54)
        {

          v52 = v116;
          v93 = v146;
          goto LABEL_38;
        }
      }
    }

    v93 = _swiftEmptyArrayStorage;
LABEL_38:
    v94 = v1[27];
    ArticlePlacement.location.getter();
    v95 = sub_100009300();
    v96(v95);
    *v94 = v93;
    v153[0] = v52;
    v98 = v52[2];
    v97 = v52[3];
    v46 = v115;
    if (v98 >= v97 >> 1)
    {
      sub_100004EE4(v97);
      sub_1006A7824();
      v52 = v153[0];
    }

    v53 = v117 + 1;
    v52[2] = v98 + 1;
    sub_10000C7B8();
    sub_100949EA4(v101, v52 + v99 + *(v100 + 72) * v98, type metadata accessor for NewsArticlePlacement);
    if (v117 + 1 == v114)
    {

      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_100948EF4()
{
  v15 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v3 = 136446466;
    v4 = Array.description.getter();
    v6 = v5;

    sub_100078694(v4, v6, &v14);

    sub_10001A220();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100078694(v7, v8, &v14);

    *(v3 + 14) = v9;
    sub_100069C80(&_mh_execute_header, v10, v11, "Failed to fetch articles, articleIDs=%{public}s, error=%{public}s");
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();
  }

  else
  {
  }

  (*(v0 + 72))(_swiftEmptyArrayStorage);

  sub_10001D2D8();

  sub_100003B14();

  return v12();
}

uint64_t sub_10094915C(uint64_t a1, void (*a2)(char *, char *))
{
  v4 = type metadata accessor for Article();
  v5 = *(v4 - 8);
  v114 = v4;
  v115 = v5;
  __chkstk_darwin(v4);
  v113 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v102 - v8;
  __chkstk_darwin(v9);
  v105 = &v102 - v10;
  __chkstk_darwin(v11);
  v104 = &v102 - v12;
  v13 = type metadata accessor for Locale.Language();
  v106 = *(v13 - 8);
  v107 = v13;
  __chkstk_darwin(v13);
  v110 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v102 - v16;
  v18 = type metadata accessor for Locale();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v103 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v108 = &v102 - v22;
  __chkstk_darwin(v23);
  v25 = &v102 - v24;
  v26 = sub_10022C350(&qword_100CA3DD8);
  __chkstk_darwin(v26 - 8);
  v109 = (&v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = &v102 - v29;
  v31 = Article.supportedStorefronts.getter();
  v112 = a2;
  v118[0] = NewsService.storeFrontID.getter();
  v118[1] = v32;
  v117 = v118;
  v33 = v119;
  LOBYTE(a2) = sub_100745860(sub_10031EF08, v116, v31);
  v119 = v33;

  if ((a2 & 1) == 0)
  {
    if (qword_100CA2780 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000703C(v40, qword_100D90CD8);
    v42 = v114;
    v41 = v115;
    v43 = *(v115 + 16);
    v44 = v111;
    v43(v111, a1, v114);
    v45 = v113;
    v43(v113, a1, v42);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v118[0] = v110;
      *v48 = 136446722;
      LODWORD(v109) = v47;
      v49 = Article.id.getter();
      v51 = v50;
      v52 = *(v41 + 8);
      v52(v44, v42);
      v53 = sub_100078694(v49, v51, v118);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2082;
      v54 = NewsService.storeFrontID.getter();
      v56 = sub_100078694(v54, v55, v118);

      *(v48 + 14) = v56;
      *(v48 + 22) = 2082;
      v57 = v113;
      Article.supportedStorefronts.getter();
      v58 = Array.description.getter();
      v60 = v59;

      v52(v57, v42);
      v61 = sub_100078694(v58, v60, v118);

      *(v48 + 24) = v61;
      _os_log_impl(&_mh_execute_header, v46, v109, "Filtering article with unsupported storefront, id=%{public}s, storefront=%{public}s, supportedStorefronts=%{public}s", v48, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v68 = *(v41 + 8);
      v68(v45, v42);
      v68(v44, v42);
    }

    return 0;
  }

  v102 = a1;
  Article.locale.getter();
  Locale.language.getter();
  v34 = *(v19 + 8);
  v111 = (v19 + 8);
  v112 = v34;
  v113 = v18;
  v34(v25, v18);
  Locale.Language.languageCode.getter();
  v35 = *(v106 + 8);
  v36 = v107;
  v35(v17);
  v37 = type metadata accessor for Locale.LanguageCode();
  if (sub_100024D10(v30, 1, v37) == 1)
  {
    sub_10003FDF4(v30, &qword_100CA3DD8);
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v38 = Locale.LanguageCode.identifier.getter();
    v39 = v62;
    (*(*(v37 - 8) + 8))(v30, v37);
  }

  v63 = v108;
  v64 = v109;
  static Locale.current.getter();
  v65 = v110;
  Locale.language.getter();
  v112(v63, v113);
  Locale.Language.languageCode.getter();
  (v35)(v65, v36);
  if (sub_100024D10(v64, 1, v37) == 1)
  {
    sub_10003FDF4(v64, &qword_100CA3DD8);
    v66 = v115;
    v67 = v102;
    if (!v39)
    {
      return 1;
    }

    goto LABEL_23;
  }

  v69 = Locale.LanguageCode.identifier.getter();
  v71 = v70;
  (*(*(v37 - 8) + 8))(v64, v37);
  v66 = v115;
  if (!v39)
  {
    v67 = v102;
    if (!v71)
    {
      return 1;
    }

LABEL_23:

LABEL_24:
    if (qword_100CA2780 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_10000703C(v74, qword_100D90CD8);
    v75 = *(v66 + 16);
    v76 = v104;
    v77 = v67;
    v78 = v67;
    v79 = v114;
    v75(v104, v77, v114);
    v80 = v105;
    v75(v105, v78, v79);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v118[0] = v115;
      *v83 = 136446722;
      LODWORD(v110) = v82;
      v84 = Article.id.getter();
      v86 = v85;
      v108 = *(v66 + 8);
      (v108)(v76, v79);
      v87 = sub_100078694(v84, v86, v118);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2082;
      v109 = v81;
      v88 = v103;
      Article.locale.getter();
      v107 = sub_1000E10DC(&qword_100CC4CB8, 255, &type metadata accessor for Locale);
      v89 = v113;
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v93 = v112;
      v112(v88, v89);
      (v108)(v80, v114);
      v94 = sub_100078694(v90, v92, v118);

      *(v83 + 14) = v94;
      *(v83 + 22) = 2082;
      static Locale.current.getter();
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v93(v88, v89);
      v98 = sub_100078694(v95, v97, v118);

      *(v83 + 24) = v98;
      v99 = v109;
      _os_log_impl(&_mh_execute_header, v109, v110, "Filtering article with mismatched language, id=%{public}s, article locale=%{public}s, current locale=%{public}s", v83, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v100 = *(v66 + 8);
      v100(v80, v79);
      v100(v76, v79);
    }

    return 0;
  }

  v67 = v102;
  if (!v71)
  {
    goto LABEL_23;
  }

  if (v38 != v69 || v39 != v71)
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v73)
    {
      return 1;
    }

    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_100949C78(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for News() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100949DBC;

  return sub_100947248(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100949DBC()
{
  sub_100003B08();
  v1 = *v0;
  sub_10000CCF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

uint64_t sub_100949EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100949F0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a4 >> 6)
  {
    if (a4 >> 6 == 1)
    {
      if (a8 & 0xC0) == 0x40 && (static Image.== infix(_:_:)())
      {
        v14 = a2 == a6 && a3 == a7;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v15 = a8 ^ a4 ^ 1;
          return v15 & 1;
        }
      }

LABEL_23:
      v15 = 0;
      return v15 & 1;
    }

    if ((a8 & 0xC0) != 0x80 || a6 | a5 | a7 || a8 != 128)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = 1;
    return v15 & 1;
  }

  if (a8 >= 0x40u)
  {
    goto LABEL_23;
  }

  if (a1 == a5 && a2 == a6)
  {
    goto LABEL_22;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10094A02C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 25))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10094A078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10094A0D4(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 1 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 24) = v2;
  return result;
}

uint64_t sub_10094A134@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a1[2];
  v13 = a1[1];
  *v14 = v9;
  *&v14[10] = *(a1 + 42);
  v12 = *a1;
  __src[0] = v12;
  __src[1] = v13;
  __src[2] = *v14;
  __src[3] = *&v14[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  memcpy(a4, v4, 0x59uLL);
  memcpy((a4 + 96), __src, 0x50uLL);
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = *v14;
  v16[3] = *&v14[16];
  v17 = a2;
  v18 = a3;
  sub_1000955E0(a1, v11, &qword_100CE7668);
  sub_1000955E0(v4, v11, &qword_100CE7660);
  sub_1000955E0(__src, v11, &qword_100CE7670);
  return sub_1000180EC(v16, &qword_100CE7670);
}

uint64_t sub_10094A240@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = a1[2];
  v15 = a1[1];
  *v16 = v10;
  *&v16[10] = *(a1 + 42);
  v14 = *a1;
  __src[0] = v14;
  __src[1] = v15;
  __src[2] = *v16;
  __src[3] = *&v16[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  sub_1000955E0(v5, a4, &qword_100CE7698);
  v11 = sub_10022C350(&qword_100CE76A0);
  memcpy((a4 + *(v11 + 36)), __src, 0x50uLL);
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = *v16;
  v18[3] = *&v16[16];
  v19 = a2;
  v20 = a3;
  sub_1000955E0(a1, v13, &qword_100CE7668);
  sub_1000955E0(__src, v13, &qword_100CE7670);
  return sub_1000180EC(v18, &qword_100CE7670);
}

uint64_t sub_10094A358@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCBB98);
  sub_1000037E8();
  v4 = __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  sub_100006BE4();
  *a2 = v9;
  *(a2 + 8) = *(&v9 + 1);
  sub_100006BE4();
  *(a2 + 16) = v9;
  *(a2 + 24) = *(&v9 + 1);
  sub_10022C350(&qword_100CA6078);
  sub_100006BE4();
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  sub_100006BE4();
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;
  v5 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  type metadata accessor for SyncedData();
  sub_10001FD48();
  sub_100004EF4();
  sub_10001A248();
  sub_10001FD48();
  sub_100004EF4();
  sub_10001A248();
  sub_10001FD48();
  sub_100004EF4();
  sub_10001A248();
  sub_10001FD48();
  sub_100004EF4();
  sub_10001A248();
  v6 = a2 + *(v5 + 48);
  sub_100006BE4();
  *v6 = v9;
  *(v6 + 16) = v10;
  return sub_100013188(a1, a2 + *(v5 + 52));
}

uint64_t type metadata accessor for DebugLocationSyncingPlaygroundView()
{
  result = qword_100CE7570;
  if (!qword_100CE7570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10094A598()
{
  sub_100081C98();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100082768(319, &qword_100CAD0F0, &qword_100CA6078);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_100082768(319, &qword_100CE7580, &qword_100CCBB98);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        v1 = sub_10094A6A4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

unint64_t sub_10094A6A4()
{
  result = qword_100CE7588;
  if (!qword_100CE7588)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CE7588);
  }

  return result;
}

uint64_t sub_10094A71C(int a1, uint64_t a2, char a3)
{
  v55 = a1;
  v6 = sub_10022C350(&qword_100CCBB98);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v51 - v10;
  __chkstk_darwin(v11);
  v57 = &v51 - v12;
  __chkstk_darwin(v13);
  v58 = &v51 - v14;
  v62 = type metadata accessor for SyncedData();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v51 - v17;
  __chkstk_darwin(v18);
  v59 = &v51 - v19;
  v20 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v51 - v21;
  v23 = type metadata accessor for URL();
  v66 = *(v23 - 8);
  __chkstk_darwin(v23);
  v67 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  v25 = *(v60 + 48);
  v65 = v3;
  v26 = (v3 + v25);
  v28 = *v26;
  v27 = v26[1];
  v29 = v26[2];
  v69._countAndFlagsBits = *v26;
  v69._object = v27;
  v70 = v29;
  v68 = 0;
  sub_10022C350(&qword_100CAD228);
  State.wrappedValue.setter();
  if (a3)
  {
    goto LABEL_5;
  }

  sub_10002B30C(a2, v22);
  if (sub_100024D10(v22, 1, v23) == 1)
  {
    sub_1000180EC(v22, &qword_100CB3AB0);
LABEL_5:
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v31._countAndFlagsBits = 0xD00000000000001CLL;
    v31._object = 0x8000000100AE6BF0;
    String.append(_:)(v31);
    v68._countAndFlagsBits = a2;
    LOBYTE(v68._object) = a3 & 1;
    sub_10022C350(&qword_100CE7600);
    _print_unlocked<A, B>(_:_:)();
    v32 = v69;
    v69._countAndFlagsBits = v28;
    v69._object = v27;
    v70 = v29;
    v68 = v32;
    return State.wrappedValue.setter();
  }

  v54 = v8;
  (*(v66 + 32))(v67, v22, v23);
  v30 = Data.init(contentsOf:options:)();
  v53 = v23;
  v34 = v30;
  v36 = v35;
  sub_1006DE088(v30, v35);
  sub_10094FCA0(&qword_100CCBBD0, &type metadata accessor for SyncedData);
  v37 = v59;
  v51 = v34;
  v52 = v36;
  v38 = v62;
  CRDT.init(serializedData:)();
  v39 = URL.path(percentEncoded:)(0);
  v40 = v64;
  if (v55)
  {
    v41 = *(v65 + 72);
    v69 = *(v65 + 56);
  }

  else
  {
    v41 = *(v65 + 48);
    v69 = *(v65 + 32);
  }

  v70 = v41;
  v68 = v39;
  State.wrappedValue.setter();
  v42 = v58;
  (*(v40 + 16))(v58, v37, v38);
  sub_10001B350(v42, 0, 1, v38);
  sub_1000955E0(v42, v57, &qword_100CCBB98);
  sub_10022C350(&qword_100CE7510);
  State.wrappedValue.setter();
  sub_1000180EC(v42, &qword_100CCBB98);
  (*(v40 + 8))(v37, v38);
  v43 = v63;
  v44 = v67;
  sub_10022C350(&qword_100CE7510);
  v45 = v61;
  State.wrappedValue.getter();
  if (sub_100024D10(v45, 1, v38) == 1)
  {
    (*(v66 + 8))(v44, v53);
    sub_10030F778(v51, v52);
    return sub_1000180EC(v45, &qword_100CCBB98);
  }

  v46 = *(v40 + 32);
  v46();
  v45 = v54;
  State.wrappedValue.getter();
  if (sub_100024D10(v45, 1, v38) == 1)
  {
    sub_10030F778(v51, v52);
    (*(v40 + 8))(v43, v38);
    (*(v66 + 8))(v44, v53);
    return sub_1000180EC(v45, &qword_100CCBB98);
  }

  (v46)(v56, v45, v38);
  v47 = v58;
  SyncedData.uniqueMerging(_:)();
  sub_10001B350(v47, 0, 1, v38);
  v48 = v57;
  sub_1000955E0(v47, v57, &qword_100CCBB98);
  State.wrappedValue.setter();
  sub_1000180EC(v47, &qword_100CCBB98);
  v49 = v56;
  SyncedData.uniqueMerging(_:)();
  sub_10001B350(v47, 0, 1, v38);
  sub_1000955E0(v47, v48, &qword_100CCBB98);
  State.wrappedValue.setter();
  sub_10030F778(v51, v52);
  sub_1000180EC(v47, &qword_100CCBB98);
  v50 = *(v40 + 8);
  v50(v49, v38);
  v50(v43, v38);
  return (*(v66 + 8))(v67, v53);
}

uint64_t sub_10094B084@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v11 = v1;
  static Axis.Set.vertical.getter();
  sub_10022C350(&qword_100CE75D8);
  sub_10094F710();
  ScrollView.init(_:showsIndicators:content:)();
  sub_10094F7C8(v1, &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10094F82C(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  result = sub_10022C350(&qword_100CE75F8);
  v9 = (a1 + *(result + 36));
  *v9 = sub_10094F890;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

double sub_10094B1FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CE7608);
  sub_10094B290(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = static Edge.Set.all.getter();
  v5 = a2 + *(sub_10022C350(&qword_100CE75D8) + 36);
  *v5 = a1;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_10094B290@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v88 = sub_10022C350(&qword_100CE7610);
  __chkstk_darwin(v88);
  v85 = &v75 - v3;
  v4 = sub_10022C350(&qword_100CE7618);
  __chkstk_darwin(v4 - 8);
  v84 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v83 = (&v75 - v7);
  v8 = type metadata accessor for SyncedData();
  v81 = *(v8 - 8);
  __chkstk_darwin(v8);
  v80 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v75 - v11;
  v12 = sub_10022C350(&qword_100CCBB98);
  __chkstk_darwin(v12 - 8);
  v79 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v75 - v15;
  __chkstk_darwin(v17);
  v19 = &v75 - v18;
  __chkstk_darwin(v20);
  v87 = &v75 - v21;
  v22 = sub_10022C350(&qword_100CE7620);
  __chkstk_darwin(v22 - 8);
  v90 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v75 - v25;
  v26 = sub_10022C350(&qword_100CE7628);
  __chkstk_darwin(v26 - 8);
  v89 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v75 - v29;
  v31 = *(type metadata accessor for DebugLocationSyncingPlaygroundView() + 48);
  v93 = a1;
  v32 = a1 + v31;
  v33 = *(v32 + 16);
  *v99 = *v32;
  v99[2] = v33;
  sub_10022C350(&qword_100CAD228);
  State.wrappedValue.getter();
  if (*&v98[8])
  {
    *v99 = *v98;
    sub_10002D5A4();
    v34 = Text.init<A>(_:)();
    v76 = v35;
    v77 = v34;
    v37 = v36;
    v78 = v19;
    v75 = v38;
    v39 = v30;
    v40 = static Edge.Set.all.getter();
    LOBYTE(v99[0]) = v37 & 1;
    v98[0] = 1;
    static Color.red.getter();
    v41 = v16;
    v42 = Color.opacity(_:)();

    v43 = static Edge.Set.all.getter();
    v100[0] = v77;
    v100[1] = v76;
    v101 = v37 & 1;
    v102 = v75;
    v19 = v78;
    v103 = v40;
    v30 = v39;
    v104 = 0u;
    v105 = 0u;
    v106 = 1;
    v107 = v42;
    v16 = v41;
    v108 = v43;
    v44 = static Color.red.getter();
    sub_10094BDA0(v44, v98);

    sub_1000180EC(v100, &qword_100CE7660);
    memcpy(v99, v98, 0xB0uLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v109, v99, 0xB0uLL);
  }

  else
  {
    sub_10094F8A8(v109);
  }

  *v30 = static VerticalAlignment.top.getter();
  *(v30 + 1) = 0x4034000000000000;
  v30[16] = 0;
  v45 = sub_10022C350(&qword_100CE7630);
  sub_10094BFB8(v93, &v30[*(v45 + 44)]);
  sub_10022C350(&qword_100CE7510);
  v46 = v87;
  State.wrappedValue.getter();
  v47 = sub_100024D10(v46, 1, v8);
  sub_1000180EC(v46, &qword_100CCBB98);
  if (v47 != 1 || (State.wrappedValue.getter(), v48 = sub_100024D10(v19, 1, v8), sub_1000180EC(v19, &qword_100CCBB98), v48 != 1))
  {
    State.wrappedValue.getter();
    if (sub_100024D10(v16, 1, v8) == 1)
    {
      sub_1000180EC(v16, &qword_100CCBB98);
    }

    else
    {
      v51 = v81;
      v52 = v82;
      v53 = *(v81 + 32);
      (v53)(v82, v16, v8);
      v54 = v79;
      State.wrappedValue.getter();
      if (sub_100024D10(v54, 1, v8) != 1)
      {
        v53();
        v55 = static HorizontalAlignment.center.getter();
        LOBYTE(v95[0]) = 1;
        sub_10094D434(v52, v93, v99);
        memcpy(v96, v99, 0x60uLL);
        memcpy(v97, v99, 0x60uLL);
        sub_1000955E0(v96, v98, &qword_100CAD230);
        sub_1000180EC(v97, &qword_100CAD230);
        memcpy(&v94[7], v96, 0x60uLL);
        v56 = v30;
        v57 = v95[0];
        static Font.body.getter();
        v58 = Font.monospaced()();

        KeyPath = swift_getKeyPath();
        v60 = static Edge.Set.all.getter();
        LOBYTE(v99[0]) = 1;
        *v98 = v55;
        *&v98[8] = 0;
        v98[16] = v57;
        v30 = v56;
        memcpy(&v98[17], v94, 0x67uLL);
        *&v98[120] = KeyPath;
        *&v98[128] = v58;
        v98[136] = v60;
        *&v98[137] = v95[0];
        *&v98[140] = *(v95 + 3);
        memset(&v98[144], 0, 32);
        v98[176] = 1;
        LocationSearchEntityFromStringResolver.init()();
        v61 = *(v51 + 8);
        v61(v80, v8);
        v61(v82, v8);
        memcpy(v99, v98, 0xB1uLL);
        goto LABEL_13;
      }

      sub_1000180EC(v54, &qword_100CCBB98);
      (*(v51 + 8))(v52, v8);
    }

    sub_10094F8B0(v99);
LABEL_13:
    v62 = static VerticalAlignment.top.getter();
    v63 = v83;
    *v83 = v62;
    *(v63 + 8) = 0x4034000000000000;
    *(v63 + 16) = 0;
    v64 = sub_10022C350(&qword_100CE7648);
    sub_10094DFB4(v93, v63 + *(v64 + 44));
    memcpy(v96, v99, 0xB1uLL);
    v65 = v84;
    sub_1000955E0(v63, v84, &qword_100CE7618);
    memcpy(v97, v96, 0xB1uLL);
    v66 = v85;
    memcpy(v85, v96, 0xB1uLL);
    v67 = sub_10022C350(&qword_100CE7650);
    sub_1000955E0(v65, v66 + *(v67 + 48), &qword_100CE7618);
    sub_1000955E0(v97, v98, &qword_100CE7658);
    sub_1000180EC(v63, &qword_100CE7618);
    sub_1000180EC(v65, &qword_100CE7618);
    memcpy(v98, v96, sizeof(v98));
    sub_1000180EC(v98, &qword_100CE7658);
    v68 = v92;
    sub_10002F758(v66, v92, &qword_100CE7610);
    v49 = v68;
    v50 = 0;
    goto LABEL_14;
  }

  v49 = v92;
  v50 = 1;
LABEL_14:
  sub_10001B350(v49, v50, 1, v88);
  v86 = v30;
  memcpy(v97, v109, 0xB0uLL);
  v69 = v89;
  sub_1000955E0(v30, v89, &qword_100CE7628);
  v70 = v92;
  v71 = v90;
  sub_1000955E0(v92, v90, &qword_100CE7620);
  memcpy(v98, v97, 0xB0uLL);
  v72 = v91;
  memcpy(v91, v97, 0xB0uLL);
  v73 = sub_10022C350(&qword_100CE7638);
  sub_1000955E0(v69, v72 + *(v73 + 48), &qword_100CE7628);
  sub_1000955E0(v71, v72 + *(v73 + 64), &qword_100CE7620);
  sub_1000955E0(v98, v99, &qword_100CE7640);
  sub_1000180EC(v70, &qword_100CE7620);
  sub_1000180EC(v86, &qword_100CE7628);
  sub_1000180EC(v71, &qword_100CE7620);
  sub_1000180EC(v69, &qword_100CE7628);
  memcpy(v99, v97, 0xB0uLL);
  return sub_1000180EC(v99, &qword_100CE7640);
}

uint64_t sub_10094BDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v4 = static Alignment.center.getter();
  *&v13 = v7 * 0.5;
  *(&v13 + 1) = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = a1;
  v20 = 256;
  sub_10094A134(&v13, v4, v5, a2);
  v21[0] = v7 * 0.5;
  v21[1] = v7;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = a1;
  v28 = 256;
  return sub_1000180EC(v21, &qword_100CE7668);
}

uint64_t sub_10094BEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v4 = static Alignment.center.getter();
  *&v13 = v7 * 0.5;
  *(&v13 + 1) = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = a1;
  v20 = 256;
  sub_10094A240(&v13, v4, v5, a2);
  v21[0] = v7 * 0.5;
  v21[1] = v7;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = a1;
  v28 = 256;
  return sub_1000180EC(v21, &qword_100CE7668);
}

uint64_t sub_10094BFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CE7708);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_10022C350(&qword_100CE7710);
  sub_10094C1B4(a1, &v15[*(v16 + 44)]);
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_10094CB24(a1, &v12[*(v16 + 44)]);
  sub_1000955E0(v15, v9, &qword_100CE7708);
  sub_1000955E0(v12, v6, &qword_100CE7708);
  sub_1000955E0(v9, a2, &qword_100CE7708);
  v17 = sub_10022C350(&qword_100CE7718);
  sub_1000955E0(v6, a2 + *(v17 + 48), &qword_100CE7708);
  sub_1000180EC(v12, &qword_100CE7708);
  sub_1000180EC(v15, &qword_100CE7708);
  sub_1000180EC(v6, &qword_100CE7708);
  return sub_1000180EC(v9, &qword_100CE7708);
}

uint64_t sub_10094C1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = type metadata accessor for PlainButtonStyle();
  v31 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v30 = v7;
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CE7720);
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v27 - v10;
  v12 = sub_10022C350(&qword_100CE7728);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  __chkstk_darwin(v12);
  v28 = a1;
  v29 = &v27 - v14;
  sub_10094F7C8(a1, v8);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_10094F82C(v8, v16 + v15);
  v37 = a1;
  sub_10022C350(&qword_100CE76A0);
  sub_10094F9EC();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v17 = sub_100006F64(&qword_100CE7768, &qword_100CE7720);
  v18 = sub_10094FCA0(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
  v20 = v35;
  v19 = v36;
  View.buttonStyle<A>(_:)();
  (*(v31 + 8))(v4, v19);
  (*(v9 + 8))(v11, v20);
  v21 = v28;
  v22 = *(v28 + 8);
  v42 = *v28;
  v43 = v22;
  sub_10022C350(&qword_100CA5A80);
  State.projectedValue.getter();
  LODWORD(v31) = v40;
  sub_10022C350(&qword_100CE7770);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UTType.data.getter();
  sub_10094F7C8(v21, v8);
  v23 = swift_allocObject();
  sub_10094F82C(v8, v23 + v15);
  v38 = v35;
  v39 = v36;
  v40 = v17;
  v41 = v18;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  v25 = v29;
  View.fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)();

  return (*(v33 + 8))(v25, v24);
}

uint64_t sub_10094C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_10022C350(&qword_100CE7688);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  v7 = sub_10022C350(&qword_100CE7690);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v27 = &v26 - v9;
  v28 = sub_10022C350(&qword_100CE7698) - 8;
  __chkstk_darwin(v28);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CCBB98);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  type metadata accessor for DebugLocationSyncingPlaygroundView();
  sub_10022C350(&qword_100CE7510);
  State.wrappedValue.getter();
  v15 = *(a1 + 48);
  __src[0] = *(a1 + 32);
  *&__src[1] = v15;
  sub_10022C350(&qword_100CAD228);
  State.wrappedValue.getter();
  v17 = v30;
  v16 = v31;
  v18 = static Color.blue.getter();
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = sub_10022C350(&qword_100CE76A8);
  sub_10094E894(0xD000000000000011, 0x8000000100AE6CB0, v14, v17, v16, &v6[*(v19 + 44)]);

  v20 = static Edge.Set.all.getter();
  v21 = &v6[*(v4 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = v27;
  sub_10002F758(v6, v27, &qword_100CE7688);
  memcpy((v22 + *(v8 + 44)), __src, 0x70uLL);
  v23 = Color.opacity(_:)();
  LOBYTE(v17) = static Edge.Set.all.getter();
  sub_10002F758(v22, v11, &qword_100CE7690);
  v24 = &v11[*(v28 + 44)];
  *v24 = v23;
  v24[8] = v17;
  sub_10094BEAC(v18, v29);

  sub_1000180EC(v11, &qword_100CE7698);
  return sub_1000180EC(v14, &qword_100CCBB98);
}

uint64_t sub_10094CB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = type metadata accessor for PlainButtonStyle();
  v31 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v30 = v7;
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CE7720);
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v27 - v10;
  v12 = sub_10022C350(&qword_100CE7728);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  __chkstk_darwin(v12);
  v28 = a1;
  v29 = &v27 - v14;
  sub_10094F7C8(a1, v8);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_10094F82C(v8, v16 + v15);
  v37 = a1;
  sub_10022C350(&qword_100CE76A0);
  sub_10094F9EC();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v17 = sub_100006F64(&qword_100CE7768, &qword_100CE7720);
  v18 = sub_10094FCA0(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
  v20 = v35;
  v19 = v36;
  View.buttonStyle<A>(_:)();
  (*(v31 + 8))(v4, v19);
  (*(v9 + 8))(v11, v20);
  v21 = v28;
  v22 = *(v28 + 24);
  v42 = *(v28 + 16);
  v43 = v22;
  sub_10022C350(&qword_100CA5A80);
  State.projectedValue.getter();
  LODWORD(v31) = v40;
  sub_10022C350(&qword_100CE7770);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UTType.data.getter();
  sub_10094F7C8(v21, v8);
  v23 = swift_allocObject();
  sub_10094F82C(v8, v23 + v15);
  v38 = v35;
  v39 = v36;
  v40 = v17;
  v41 = v18;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  v25 = v29;
  View.fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)();

  return (*(v33 + 8))(v25, v24);
}

uint64_t sub_10094D07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_10022C350(&qword_100CE7688);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  v7 = sub_10022C350(&qword_100CE7690);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v27 = &v26 - v9;
  v28 = sub_10022C350(&qword_100CE7698) - 8;
  __chkstk_darwin(v28);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CCBB98);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  type metadata accessor for DebugLocationSyncingPlaygroundView();
  sub_10022C350(&qword_100CE7510);
  State.wrappedValue.getter();
  v15 = *(a1 + 72);
  __src[0] = *(a1 + 56);
  *&__src[1] = v15;
  sub_10022C350(&qword_100CAD228);
  State.wrappedValue.getter();
  v17 = v30;
  v16 = v31;
  v18 = static Color.green.getter();
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = sub_10022C350(&qword_100CE76A8);
  sub_10094E894(0xD000000000000012, 0x8000000100AE6C90, v14, v17, v16, &v6[*(v19 + 44)]);

  v20 = static Edge.Set.all.getter();
  v21 = &v6[*(v4 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = v27;
  sub_10002F758(v6, v27, &qword_100CE7688);
  memcpy((v22 + *(v8 + 44)), __src, 0x70uLL);
  v23 = Color.opacity(_:)();
  LOBYTE(v17) = static Edge.Set.all.getter();
  sub_10002F758(v22, v11, &qword_100CE7690);
  v24 = &v11[*(v28 + 44)];
  *v24 = v23;
  v24[8] = v17;
  sub_10094BEAC(v18, v29);

  sub_1000180EC(v11, &qword_100CE7698);
  return sub_1000180EC(v14, &qword_100CCBB98);
}

uint64_t sub_10094D434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v101 = a2;
  v90 = a3;
  v4 = type metadata accessor for SyncedData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v85 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CE7678);
  __chkstk_darwin(v7);
  v98 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v82[-v10];
  v12 = sub_10022C350(&qword_100CCBB98);
  __chkstk_darwin(v12 - 8);
  v84 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v100 = &v82[-v15];
  __chkstk_darwin(v16);
  v94 = &v82[-v17];
  __chkstk_darwin(v18);
  v86 = &v82[-v19];
  __chkstk_darwin(v20);
  v22 = &v82[-v21];
  __chkstk_darwin(v23);
  v25 = &v82[-v24];
  v26 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v26 - 8);
  v95 = &v82[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0xD00000000000001ALL;
  v30._object = 0x8000000100AE6C30;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
  v31 = static SyncedData.== infix(_:_:)();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = 0x7078452820736559;
  }

  else
  {
    v33 = 0x58454E5528206F4ELL;
  }

  if (v32)
  {
    v34 = 0xEF29444554434550;
  }

  else
  {
    v34 = 0xEE00296465746365;
  }

  v35 = v34;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v33);

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
  LocalizedStringKey.init(stringInterpolation:)();
  v96 = Text.init(_:tableName:bundle:comment:)();
  v97 = v37;
  v102 = v38;
  v93 = v39;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40._object = 0x8000000100AE6C50;
  v40._countAndFlagsBits = 0xD000000000000013;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v40);
  v99 = v5;
  v41 = *(v5 + 16);
  v92 = a1;
  v89 = v41;
  v41(v25, a1, v4);
  sub_10001B350(v25, 0, 1, v4);
  v88 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  v87 = sub_10022C350(&qword_100CE7510);
  State.wrappedValue.getter();
  v91 = v7;
  v42 = *(v7 + 48);
  sub_1000955E0(v25, v11, &qword_100CCBB98);
  sub_1000955E0(v22, &v11[v42], &qword_100CCBB98);
  if (sub_100024D10(v11, 1, v4) == 1)
  {
    sub_1000180EC(v22, &qword_100CCBB98);
    sub_1000180EC(v25, &qword_100CCBB98);
    if (sub_100024D10(&v11[v42], 1, v4) == 1)
    {
      sub_1000180EC(v11, &qword_100CCBB98);
      v43 = 0xE300000000000000;
      v44 = 7562585;
      v45 = v98;
      v46 = v94;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_1000955E0(v11, v86, &qword_100CCBB98);
  if (sub_100024D10(&v11[v42], 1, v4) == 1)
  {
    sub_1000180EC(v22, &qword_100CCBB98);
    sub_1000180EC(v25, &qword_100CCBB98);
    (*(v99 + 8))(v86, v4);
LABEL_12:
    sub_1000180EC(v11, &qword_100CE7678);
    v45 = v98;
    v46 = v94;
LABEL_13:
    v43 = 0xE200000000000000;
    v44 = 28494;
    goto LABEL_14;
  }

  v59 = v85;
  (*(v99 + 32))(v85, &v11[v42], v4);
  sub_10094FCA0(&qword_100CE7680, &type metadata accessor for SyncedData);
  v60 = v86;
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v99 + 8);
  v61(v59, v4);
  sub_1000180EC(v22, &qword_100CCBB98);
  sub_1000180EC(v25, &qword_100CCBB98);
  v61(v60, v4);
  sub_1000180EC(v11, &qword_100CCBB98);
  v45 = v98;
  v46 = v94;
  if ((v83 & 1) == 0)
  {
    goto LABEL_13;
  }

  v43 = 0xE300000000000000;
  v44 = 7562585;
LABEL_14:
  v47 = v43;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v44);

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
  LocalizedStringKey.init(stringInterpolation:)();
  v94 = Text.init(_:tableName:bundle:comment:)();
  v95 = v49;
  v51 = v50;
  v98 = v52;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v53._countAndFlagsBits = 0xD000000000000014;
  v53._object = 0x8000000100AE6C70;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v53);
  v89(v46, v92, v4);
  sub_10001B350(v46, 0, 1, v4);
  v54 = v100;
  State.wrappedValue.getter();
  v55 = *(v91 + 48);
  sub_1000955E0(v46, v45, &qword_100CCBB98);
  sub_1000955E0(v54, v45 + v55, &qword_100CCBB98);
  if (sub_100024D10(v45, 1, v4) == 1)
  {
    sub_1000180EC(v54, &qword_100CCBB98);
    sub_1000180EC(v46, &qword_100CCBB98);
    if (sub_100024D10(v45 + v55, 1, v4) == 1)
    {
      sub_1000180EC(v45, &qword_100CCBB98);
LABEL_24:
      v57 = 0xE300000000000000;
      v58 = 7562585;
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v56 = v84;
  sub_1000955E0(v45, v84, &qword_100CCBB98);
  if (sub_100024D10(v45 + v55, 1, v4) == 1)
  {
    sub_1000180EC(v100, &qword_100CCBB98);
    sub_1000180EC(v46, &qword_100CCBB98);
    (*(v99 + 8))(v56, v4);
LABEL_19:
    sub_1000180EC(v45, &qword_100CE7678);
    goto LABEL_20;
  }

  v62 = v56;
  v63 = v99;
  v64 = v85;
  (*(v99 + 32))(v85, v45 + v55, v4);
  sub_10094FCA0(&qword_100CE7680, &type metadata accessor for SyncedData);
  LODWORD(v101) = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v63 + 8);
  v65(v64, v4);
  sub_1000180EC(v100, &qword_100CCBB98);
  sub_1000180EC(v46, &qword_100CCBB98);
  v65(v62, v4);
  sub_1000180EC(v45, &qword_100CCBB98);
  if (v101)
  {
    goto LABEL_24;
  }

LABEL_20:
  v57 = 0xE200000000000000;
  v58 = 28494;
LABEL_25:
  v66 = v57;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v58);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v67);
  LocalizedStringKey.init(stringInterpolation:)();
  v68 = Text.init(_:tableName:bundle:comment:)();
  v70 = v69;
  v71 = v93 & 1;
  v107 = v93 & 1;
  v106 = v51 & 1;
  v105 = v93 & 1;
  v104 = v51 & 1;
  v73 = v72 & 1;
  v103 = v72 & 1;
  v75 = v96;
  v74 = v97;
  v76 = v90;
  v77 = v102;
  *v90 = v96;
  v76[1] = v77;
  *(v76 + 16) = v71;
  v79 = v94;
  v78 = v95;
  v76[3] = v74;
  v76[4] = v79;
  v76[5] = v78;
  *(v76 + 48) = v51 & 1;
  v76[7] = v98;
  v76[8] = v68;
  v76[9] = v69;
  *(v76 + 80) = v72 & 1;
  v76[11] = v80;
  sub_10010CD54(v75, v77, v71);

  sub_10010CD54(v79, v78, v51 & 1);

  sub_10010CD54(v68, v70, v73);

  sub_10010CD64(v68, v70, v73);

  sub_10010CD64(v79, v78, v106);

  sub_10010CD64(v75, v102, v107);
}

uint64_t sub_10094DFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v70 = a2;
  v2 = sub_10022C350(&qword_100CE7688) - 8;
  v57 = v2;
  __chkstk_darwin(v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v56 - v6;
  v64 = sub_10022C350(&qword_100CE7690) - 8;
  __chkstk_darwin(v64);
  v69 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v63 = sub_10022C350(&qword_100CE7698) - 8;
  __chkstk_darwin(v63);
  v68 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v16 = sub_10022C350(&qword_100CCBB98);
  __chkstk_darwin(v16 - 8);
  v62 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v56 - v19;
  v21 = sub_10022C350(&qword_100CE76A0);
  __chkstk_darwin(v21 - 8);
  v67 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v66 = &v56 - v24;
  __chkstk_darwin(v25);
  v65 = &v56 - v26;
  __chkstk_darwin(v27);
  v58 = &v56 - v28;
  v61 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  v59 = sub_10022C350(&qword_100CE7510);
  State.wrappedValue.getter();
  v29 = static Color.yellow.getter();
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v30 = sub_10022C350(&qword_100CE76A8);
  sub_10094E894(0x64656772654DLL, 0xE600000000000000, v20, 0, 0, &v7[*(v30 + 44)]);
  v31 = static Edge.Set.all.getter();
  v32 = &v7[*(v2 + 44)];
  *v32 = v31;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002F758(v7, v11, &qword_100CE7688);
  v33 = v64;
  memcpy(&v11[*(v64 + 44)], __src, 0x70uLL);
  v34 = Color.opacity(_:)();
  LOBYTE(v7) = static Edge.Set.all.getter();
  sub_10002F758(v11, v15, &qword_100CE7690);
  v35 = v63;
  v36 = &v15[*(v63 + 44)];
  *v36 = v34;
  v36[8] = v7;
  v37 = v58;
  sub_10094BEAC(v29, v58);

  sub_1000180EC(v15, &qword_100CE7698);
  sub_1000180EC(v20, &qword_100CCBB98);
  v38 = v62;
  State.wrappedValue.getter();
  v39 = static Color.pink.getter();
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  sub_10094E894(0x2D65737265766552, 0xEE0064656772654DLL, v38, 0, 0, &v4[*(v30 + 44)]);
  v40 = static Edge.Set.all.getter();
  v41 = &v4[*(v57 + 44)];
  *v41 = v40;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  v41[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v42 = v4;
  v43 = v69;
  sub_10002F758(v42, v69, &qword_100CE7688);
  memcpy((v43 + *(v33 + 44)), v72, 0x70uLL);
  v44 = Color.opacity(_:)();
  LOBYTE(v34) = static Edge.Set.all.getter();
  v45 = v43;
  v46 = v68;
  sub_10002F758(v45, v68, &qword_100CE7690);
  v47 = v46 + *(v35 + 44);
  *v47 = v44;
  *(v47 + 8) = v34;
  v48 = v65;
  sub_10094BEAC(v39, v65);

  sub_1000180EC(v46, &qword_100CE7698);
  sub_1000180EC(v38, &qword_100CCBB98);
  v49 = v66;
  sub_1000955E0(v37, v66, &qword_100CE76A0);
  v50 = v48;
  v51 = v48;
  v52 = v67;
  sub_1000955E0(v50, v67, &qword_100CE76A0);
  v53 = v70;
  sub_1000955E0(v49, v70, &qword_100CE76A0);
  v54 = sub_10022C350(&qword_100CE76B0);
  sub_1000955E0(v52, v53 + *(v54 + 48), &qword_100CE76A0);
  sub_1000180EC(v51, &qword_100CE76A0);
  sub_1000180EC(v37, &qword_100CE76A0);
  sub_1000180EC(v52, &qword_100CE76A0);
  return sub_1000180EC(v49, &qword_100CE76A0);
}

uint64_t sub_10094E74C(uint64_t a1)
{
  sub_10022C350(&qword_100CAD228);
  State.wrappedValue.getter();
  if (!v5)
  {
    sub_10022C350(&qword_100CD12B8);
    type metadata accessor for URL();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100A2C3F0;
    v3 = type metadata accessor for DebugLocationSyncingPlaygroundView();
    sub_1000161C0((a1 + *(v3 + 52)), *(a1 + *(v3 + 52) + 24));
    dispatch thunk of SyncedDataContextProviderType.coherenceDataStorageURL.getter();
    sub_10094A71C(0, v2, 0);
  }
}

uint64_t sub_10094E894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v127 = a5;
  v128 = a6;
  v112 = a4;
  v114 = a3;
  v125 = sub_10022C350(&qword_100CE76B8);
  __chkstk_darwin(v125);
  v110 = (&v100[-2] - v8);
  v132 = sub_10022C350(&qword_100CE76C0);
  v121 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &v100[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v119 = &v100[-2] - v11;
  v12 = type metadata accessor for Divider();
  v108 = *(v12 - 8);
  v109 = v12;
  __chkstk_darwin(v12);
  v129 = &v100[-2] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v130 = &v100[-2] - v15;
  __chkstk_darwin(v16);
  v117 = &v100[-2] - v17;
  __chkstk_darwin(v18);
  v118 = &v100[-2] - v19;
  v107 = sub_10022C350(&qword_100CE76C8);
  v113 = *(v107 - 8);
  __chkstk_darwin(v107);
  v21 = &v100[-2] - v20;
  v22 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v22 - 8);
  v23 = sub_10022C350(&qword_100CCBB98);
  __chkstk_darwin(v23 - 8);
  v25 = &v100[-2] - v24;
  v26 = type metadata accessor for SyncedData();
  v116 = *(v26 - 8);
  __chkstk_darwin(v26);
  v115 = &v100[-2] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10022C350(&qword_100CE76D0);
  __chkstk_darwin(v28 - 8);
  v126 = &v100[-2] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v133 = &v100[-2] - v31;
  __dst[0] = a1;
  __dst[1] = a2;
  v32 = sub_10002D5A4();

  v111 = v32;
  v33 = Text.init<A>(_:)();
  v35 = v34;
  LOBYTE(v32) = v36;
  static Font.title.getter();
  v37 = Text.font(_:)();
  v122 = v38;
  v123 = v37;
  v120 = v39;
  v124 = v40;

  sub_10010CD64(v33, v35, v32 & 1);

  sub_1000955E0(v114, v25, &qword_100CCBB98);
  if (sub_100024D10(v25, 1, v26) == 1)
  {
    sub_1000180EC(v25, &qword_100CCBB98);
    v41 = v133;
    v42 = v133;
    v43 = 1;
  }

  else
  {
    v44 = *(v116 + 32);
    v102 = v26;
    v44(v115, v25, v26);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
    SyncedData.savedLocations.getter();
    v46 = v107;
    v47 = CROrderedDictionary.count.getter();
    v48 = *(v113 + 8);
    v48(v21, v46);
    __dst[0] = v47;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v49._countAndFlagsBits = 0x6F697461636F6C20;
    v49._object = 0xEA0000000000736ELL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
    LocalizedStringKey.init(stringInterpolation:)();
    v113 = Text.init(_:tableName:bundle:comment:)();
    v114 = v50;
    v106 = v51;
    v101 = v52;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v53);
    SyncedData.savedLocations.getter();
    v54 = CROrderedDictionary.insertionCount.getter();
    v48(v21, v46);
    __dst[0] = v54;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v55._countAndFlagsBits = 0x69747265736E6920;
    v55._object = 0xEB00000000736E6FLL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v55);
    LocalizedStringKey.init(stringInterpolation:)();
    v56 = Text.init(_:tableName:bundle:comment:)();
    v103 = v57;
    v104 = v56;
    v100[0] = v58;
    v105 = v59;
    v60 = v118;
    Divider.init()();
    SyncedData.savedLocations.getter();
    v61 = CROrderedDictionary._map<A>(_:)();
    v48(v21, v46);
    __dst[0] = v61;
    swift_getKeyPath();
    sub_10022C350(&qword_100CCC930);
    sub_10022C350(&qword_100CE76E8);
    sub_100006F64(&qword_100CE76F0, &qword_100CCC930);
    sub_10094F914();
    v62 = v119;
    ForEach<>.init(_:id:content:)();
    v63 = v117;
    Divider.init()();
    LOBYTE(__dst[0]) = v101 & 1;
    LOBYTE(v136[0]) = v100[0] & 1;
    v64 = v108;
    v65 = *(v108 + 16);
    v66 = v60;
    v67 = v109;
    v65(v130, v66, v109);
    *v100 = *(v121 + 16);
    (*v100)(v131, v62, v132);
    v65(v129, v63, v67);
    v68 = __dst[0];
    v101 = LOBYTE(__dst[0]);
    v69 = v110;
    v70 = v106;
    *v110 = v113;
    *(v69 + 8) = v70;
    *(v69 + 16) = v68;
    v71 = v136[0];
    LODWORD(v107) = LOBYTE(v136[0]);
    v72 = v103;
    v73 = v104;
    *(v69 + 24) = v114;
    *(v69 + 32) = v73;
    *(v69 + 40) = v72;
    *(v69 + 48) = v71;
    *(v69 + 56) = v105;
    v74 = sub_10022C350(&qword_100CE7700);
    v65((v69 + v74[16]), v130, v67);
    (*v100)(v69 + v74[20], v131, v132);
    v65((v69 + v74[24]), v129, v67);
    v75 = v106;
    sub_10010CD54(v113, v106, v101);

    sub_10010CD54(v73, v72, v107);
    v76 = *(v64 + 8);

    v76(v117, v67);
    v77 = *(v121 + 8);
    v78 = v132;
    v77(v119, v132);
    v76(v118, v67);
    (*(v116 + 8))(v115, v102);
    v76(v129, v67);
    v77(v131, v78);
    v76(v130, v67);
    sub_10010CD64(v104, v103, v136[0]);

    sub_10010CD64(v113, v75, __dst[0]);

    v41 = v133;
    sub_10002F758(v69, v133, &qword_100CE76B8);
    v42 = v41;
    v43 = 0;
  }

  sub_10001B350(v42, v43, 1, v125);
  if (v127)
  {
    __dst[0] = v112;
    __dst[1] = v127;

    v79 = Text.init<A>(_:)();
    v81 = v80;
    v83 = v82;
    static Font.caption.getter();
    Font.monospaced()();

    v84 = Text.font(_:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;

    sub_10010CD64(v79, v81, v83 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v135[0] = v88 & 1;
    v136[0] = v84;
    v136[1] = v86;
    v41 = v133;
    LOBYTE(v136[2]) = v88 & 1;
    v136[3] = v90;
    LocationSearchEntityFromStringResolver.init()();
    memcpy(__dst, v136, 0x90uLL);
  }

  else
  {
    sub_10094F90C(__dst);
  }

  v91 = v126;
  sub_1000955E0(v41, v126, &qword_100CE76D0);
  memcpy(v134, __dst, sizeof(v134));
  v92 = v128;
  v93 = v122;
  v94 = v123;
  *v128 = v123;
  v92[1] = v93;
  v95 = v120 & 1;
  *(v92 + 16) = v120 & 1;
  v92[3] = v124;
  v96 = sub_10022C350(&qword_100CE76D8);
  sub_1000955E0(v91, v92 + *(v96 + 48), &qword_100CE76D0);
  v97 = *(v96 + 64);
  memcpy(v135, v134, sizeof(v135));
  memcpy(v92 + v97, v134, 0x90uLL);
  sub_10010CD54(v94, v93, v95);

  sub_1000955E0(v135, v136, &qword_100CE76E0);
  sub_1000180EC(v133, &qword_100CE76D0);
  memcpy(v136, v134, sizeof(v136));
  sub_1000180EC(v136, &qword_100CE76E0);
  sub_1000180EC(v91, &qword_100CE76D0);
  sub_10010CD64(v94, v93, v95);
}

void *sub_10094F59C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  __src[0] = *a1;
  __src[1] = v3;
  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.body.getter();
  Font.monospaced()();

  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_10010CD64(v4, v6, v8 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  KeyPath = swift_getKeyPath();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  result = memcpy((a2 + 32), __src, 0x70uLL);
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = 1;
  *(a2 + 160) = 0;
  return result;
}

unint64_t sub_10094F710()
{
  result = qword_100CE75E0;
  if (!qword_100CE75E0)
  {
    sub_10022E824(&qword_100CE75D8);
    sub_100006F64(&qword_100CE75E8, &qword_100CE75F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE75E0);
  }

  return result;
}

uint64_t sub_10094F7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10094F82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10094F8DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10094F8B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10094F914()
{
  result = qword_100CE76F8;
  if (!qword_100CE76F8)
  {
    sub_10022E824(&qword_100CE76E8);
    sub_1003F04CC();
    sub_100006F64(&qword_100CADEA0, &qword_100CADEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE76F8);
  }

  return result;
}

unint64_t sub_10094F9EC()
{
  result = qword_100CE7730;
  if (!qword_100CE7730)
  {
    sub_10022E824(&qword_100CE76A0);
    sub_10094FAA4();
    sub_100006F64(&qword_100CE7760, &qword_100CE7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7730);
  }

  return result;
}

unint64_t sub_10094FAA4()
{
  result = qword_100CE7738;
  if (!qword_100CE7738)
  {
    sub_10022E824(&qword_100CE7698);
    sub_10094FB5C();
    sub_100006F64(&qword_100CC0538, &qword_100CC0540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7738);
  }

  return result;
}

unint64_t sub_10094FB5C()
{
  result = qword_100CE7740;
  if (!qword_100CE7740)
  {
    sub_10022E824(&qword_100CE7690);
    sub_10094FBE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7740);
  }

  return result;
}

unint64_t sub_10094FBE8()
{
  result = qword_100CE7748;
  if (!qword_100CE7748)
  {
    sub_10022E824(&qword_100CE7688);
    sub_100006F64(&qword_100CE7750, &qword_100CE7758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7748);
  }

  return result;
}

uint64_t sub_10094FCA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10094FD18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DebugLocationSyncingPlaygroundView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10094FDAC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v6 = *(type metadata accessor for DebugLocationSyncingPlaygroundView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2 & 1, v7);
}

unint64_t sub_10094FE40()
{
  result = qword_100CE7778;
  if (!qword_100CE7778)
  {
    sub_10022E824(&qword_100CE75F8);
    sub_100006F64(&qword_100CE7780, &qword_100CE7788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7778);
  }

  return result;
}

uint64_t sub_10094FEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v227 = a1;
  v223 = a2;
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2 - 8);
  sub_1000038E4();
  sub_100003918(v3);
  v195 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v194 = v4;
  __chkstk_darwin(v5);
  sub_1000038E4();
  sub_100003918(v6);
  v207 = type metadata accessor for Locale();
  sub_1000037C4();
  v206 = v7;
  __chkstk_darwin(v8);
  sub_1000038E4();
  sub_100003918(v9);
  v205 = type metadata accessor for RoundedPrecipitation();
  sub_1000037C4();
  v204 = v10;
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003990(v12);
  v236 = sub_10022C350(&qword_100CB5468);
  sub_1000037C4();
  v199 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100003990(&v190 - v15);
  v200 = sub_10022C350(&qword_100CE4B40);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v190 - v17;
  v239 = sub_10022C350(&qword_100CAB938);
  sub_1000037C4();
  v198 = v19;
  __chkstk_darwin(v20);
  sub_100003848();
  v234 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_100003878();
  v235 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_100003878();
  v201 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_100003878();
  v237 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_100003878();
  v210 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  sub_100003990(&v190 - v31);
  sub_10022C350(&unk_100CE7790);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_100003918(&v190 - v33);
  v238 = type metadata accessor for MonthPrecipitationStatistics();
  sub_1000037C4();
  v197 = v34;
  __chkstk_darwin(v35);
  sub_100003848();
  countAndFlagsBits = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003990(&v190 - v38);
  sub_10022C350(&unk_100CB2CF0);
  sub_100003828();
  __chkstk_darwin(v39);
  sub_100003918(&v190 - v40);
  v226 = type metadata accessor for Date();
  sub_1000037C4();
  v232 = v41;
  __chkstk_darwin(v42);
  sub_100003848();
  v231 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003918(&v190 - v45);
  type metadata accessor for DateComponents();
  sub_1000037C4();
  v228 = v47;
  v229 = v46;
  __chkstk_darwin(v46);
  sub_100003848();
  object = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  v51 = &v190 - v50;
  v221 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v220 = v52;
  __chkstk_darwin(v53);
  sub_1000038E4();
  v225 = v54;
  Calendar.timeZone.getter();
  v218 = sub_10022C350(&qword_100CA53E8);
  v55 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v57 = v56;
  v59 = *(v58 + 72);
  v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v217 = (v60 + 2 * v59);
  v213 = v59;
  v61 = swift_allocObject();
  v216 = xmmword_100A2D320;
  *(v61 + 16) = xmmword_100A2D320;
  LODWORD(v215) = enum case for Calendar.Component.year(_:);
  v62 = *(v57 + 104);
  v62(v61 + v60);
  LODWORD(v214) = enum case for Calendar.Component.month(_:);
  v62(v61 + v60 + v59);
  sub_10004BCB0(v61);
  v208 = type metadata accessor for MonthlyAveragesChartInput();
  v63 = v227;
  v224 = v51;
  Calendar.dateComponents(_:from:)();

  v64 = v63;
  v65 = v219;
  v66 = swift_allocObject();
  *(v66 + 16) = v216;
  (v62)(v66 + v60, v215, v55);
  (v62)(v66 + v60 + v213, v214, v55);
  v67 = v228;
  v68 = v226;
  sub_10004BCB0(v66);
  v69 = v231;
  Date.startOfDay.getter();
  v70 = object;
  Calendar.dateComponents(_:from:)();

  v71 = v232 + 8;
  v72 = v69;
  v73 = v229;
  v218 = *(v232 + 8);
  v218(v72, v68);
  Calendar.date(from:)();
  v76 = *(v67 + 8);
  v75 = v67 + 8;
  v74 = v76;
  v77 = v70;
  v78 = v68;
  v76(v77, v73);
  if (sub_100024D10(v65, 1, v68) == 1)
  {
    v74(v224, v73);
    v79 = sub_10001A264();
    v80(v79);
    sub_10003FDF4(v65, &unk_100CB2CF0);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    return sub_10001B350(v81, v82, v83, v84);
  }

  v214 = v74;
  v215 = v71;
  v86 = v222;
  (*(v232 + 32))(v222, v65, v68);
  sub_100119F7C();
  v87 = v225;
  v219 = static NSDateFormatter.shortMonthNameFormatter(with:)();
  v217 = static NSDateFormatter.longMonthNameFormatter(with:)();
  *&v216 = static NSDateFormatter.longMonthNameFormatter(with:)();
  v88 = *(v208 + 32);
  v89 = v209;
  sub_1003DFBFC();
  v90 = v238;
  if (sub_100024D10(v89, 1, v238) == 1)
  {
    sub_10003FDF4(v89, &unk_100CE7790);
    if (qword_100CA2728 != -1)
    {
      sub_1000151AC();
    }

    v91 = type metadata accessor for Logger();
    sub_10000703C(v91, qword_100D90BD0);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v220;
    if (v94)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "The monthly statistics array is empty.", v96, 2u);
    }

    v214(v224, v229);
    (*(v95 + 8))(v87, v221);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    sub_10001B350(v97, v98, v99, v100);
    v101 = v86;
LABEL_27:
    v172 = v78;
    return (v218)(v101, v172);
  }

  v228 = v75;
  v102 = v197 + 32;
  (*(v197 + 32))(v211, v89, v90);
  v103 = v210;
  MonthPrecipitationStatistics.averagePrecipitationAmount.getter();
  v104 = v198 + 16;
  (*(v198 + 16))(v237, v103, v239);
  (*(v199 + 16))(v196, v64 + v88, v236);
  sub_100006F64(&qword_100CE4B48, &qword_100CB5468);
  dispatch thunk of Sequence.makeIterator()();
  v105 = *(v200 + 36);
  sub_100006F64(&qword_100CB5470, &qword_100CB5468);
  object = (v102 - 16);
  v231 = (v102 - 24);
  v232 = v104 - 8;
  v106 = (v104 + 16);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v18[v105] == v241)
    {
      break;
    }

    v107 = dispatch thunk of Collection.subscript.read();
    v108 = countAndFlagsBits;
    v109 = v238;
    (*object)(countAndFlagsBits);
    v107(&v241, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v110 = v234;
    MonthPrecipitationStatistics.averagePrecipitationAmount.getter();
    sub_100006F64(&qword_100CBD780, &qword_100CAB938);
    v111 = v18;
    v112 = v237;
    v113 = v239;
    v114 = dispatch thunk of static Comparable.>= infix(_:_:)();
    (*v231)(v108, v109);
    if (v114)
    {
      v115 = v112;
    }

    else
    {
      v115 = v110;
    }

    if (v114)
    {
      v116 = v110;
    }

    else
    {
      v116 = v112;
    }

    (*v232)(v115, v113);
    v117 = *v106;
    v118 = v235;
    (*v106)(v235, v116, v113);
    v119 = v112;
    v18 = v111;
    v117(v119, v118, v113);
  }

  sub_10003FDF4(v18, &qword_100CE4B40);
  v120 = *v232;
  v121 = v239;
  (*v232)(v210, v239);
  v122 = v212;
  (*v106)(v212, v237, v121);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v123 = v203;
  static Locale.current.getter();
  v124 = v202;
  Measurement<>.convertAndRoundPrecipitation(unitManager:locale:)();

  (*(v206 + 8))(v123, v207);
  v125 = v201;
  RoundedPrecipitation.measurement.getter();
  (*(v204 + 8))(v124, v205);
  v126 = Measurement.unit.getter();
  v237 = v120;
  v127 = (v120)(v125, v121);
  __chkstk_darwin(v127);
  v128 = v222;
  *(&v190 - 8) = v227;
  *(&v190 - 7) = v128;
  v129 = v217;
  *(&v190 - 6) = v219;
  *(&v190 - 5) = v129;
  *(&v190 - 4) = v216;
  *(&v190 - 3) = v122;
  v246._object = v126;
  sub_100744690(sub_100952520, (&v190 - 10), 1, 13, v130, v131, v132, v133, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
  v135 = v134;
  if (qword_100CA2840 != -1)
  {
    swift_once();
  }

  v136 = qword_100D90E18;

  sub_10064C8F0(2, v135, v136, &v241);
  v137 = v224;
  if (!v242)
  {
    v236 = v126;
    if (qword_100CA2728 != -1)
    {
      sub_1000151AC();
    }

    v173 = type metadata accessor for Logger();
    sub_10000703C(v173, qword_100D90BD0);
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.error.getter();
    v176 = os_log_type_enabled(v174, v175);
    v78 = v226;
    v177 = v229;
    v178 = v221;
    v179 = v220;
    v180 = v225;
    if (v176)
    {
      v181 = swift_slowAlloc();
      *v181 = 0;
    }

    v182 = sub_100075318();
    v183(v182);
    v214(v137, v177);
    (*(v179 + 8))(v180, v178);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    sub_10001B350(v184, v185, v186, v187);
    v188 = sub_100028E1C();
    v189(v188);
    v101 = v222;
    goto LABEL_27;
  }

  v139 = v244;
  v138 = v245;
  v236 = v243;
  LODWORD(v235) = v241;
  v140 = v193;
  v234 = v242;
  sub_100951FFC(v224, v191, v126, v193);
  v141 = [objc_opt_self() mainBundle];
  v246._object = 0x8000000100ABCA10;
  v142._object = 0x8000000100ABC9F0;
  v246._countAndFlagsBits = 0xD00000000000006ELL;
  v142._countAndFlagsBits = 0xD000000000000010;
  v143._countAndFlagsBits = 0;
  v143._object = 0xE000000000000000;
  v144 = NSLocalizedString(_:tableName:bundle:value:comment:)(v142, 0, v141, v143, v246);
  countAndFlagsBits = v144._countAndFlagsBits;
  object = v144._object;

  v145 = v126;
  v146 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v147 = v223;
  sub_100003934();
  v148 = v195;
  sub_10001B350(v149, v150, v151, v195);
  v152 = v147 + v146[7];
  static Font.body.getter();
  WeatherDescription.formatted(font:color:)();

  v153 = Text.init(_:)();
  v155 = v154;
  v157 = v156;
  v159 = v158;

  (*(v194 + 8))(v140, v148);
  v160 = sub_100075318();
  v161(v160);
  v214(v224, v229);
  v162 = sub_10001A264();
  v163(v162);
  v240 = 0;
  *v152 = v153;
  *(v152 + 8) = v155;
  *(v152 + 16) = v157 & 1;
  *(v152 + 24) = v159;
  *(v152 + 32) = v235;
  v164 = v236;
  *(v152 + 40) = v234;
  *(v152 + 48) = v164;
  *(v152 + 56) = v139;
  *(v152 + 64) = v138;
  *(v152 + 89) = 0;
  v165 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  sub_100003934();
  sub_10001B350(v166, v167, v168, v165);
  *v147 = xmmword_100A2F600;
  *(v147 + 16) = 2;
  v169 = object;
  *(v147 + 24) = countAndFlagsBits;
  *(v147 + 32) = v169;
  *(v147 + v146[9]) = 0;
  *(v147 + v146[10]) = 0;
  sub_10001B350(v147, 0, 1, v146);
  v170 = sub_100028E1C();
  v171(v170);
  v101 = v222;
  v172 = v226;
  return (v218)(v101, v172);
}

uint64_t sub_1009512EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, char *a7@<X7>, uint64_t a8@<X8>)
{
  v99 = a7;
  v98 = a6;
  v93 = a5;
  v92 = a4;
  v91 = a3;
  v115 = a2;
  v118 = a8;
  v9 = type metadata accessor for WeatherFormatPlaceholder();
  v107 = *(v9 - 8);
  v108 = v9;
  __chkstk_darwin(v9);
  v106 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v11 - 8);
  v103 = &v85 - v12;
  v13 = type metadata accessor for WeatherFormatScaling();
  v101 = *(v13 - 8);
  v102 = v13;
  __chkstk_darwin(v13);
  v96 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v17 = *(v16 - 8);
  v104 = v16;
  v105 = v17;
  __chkstk_darwin(v16);
  v114 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10022C350(&qword_100CAB938);
  v100 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v111 = &v85 - v21;
  v22 = sub_10022C350(&unk_100CE7790);
  __chkstk_darwin(v22 - 8);
  v24 = &v85 - v23;
  v116 = type metadata accessor for MonthPrecipitationStatistics();
  v110 = *(v116 - 8);
  __chkstk_darwin(v116);
  v109 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Calendar.Component();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v30 - 8);
  v32 = &v85 - v31;
  v33 = type metadata accessor for Date();
  v117 = *(v33 - 1);
  v34 = __chkstk_darwin(v33);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 104))(v29, enum case for Calendar.Component.month(_:), v26, v34);
  Calendar.date(bySetting:value:of:)();
  (*(v27 + 8))(v29, v26);
  if (sub_100024D10(v32, 1, v33) == 1)
  {
    sub_10003FDF4(v32, &unk_100CB2CF0);
  }

  else
  {
    (*(v117 + 32))(v36, v32, v33);
    v37 = type metadata accessor for MonthlyAveragesChartInput();
    __chkstk_darwin(v37);
    *(&v85 - 2) = a1;
    *(&v85 - 1) = v36;
    v38 = v119;
    sub_1008DC218();
    v119 = v38;
    if (sub_100024D10(v24, 1, v116) != 1)
    {
      (*(v110 + 32))(v109, v24, v116);
      MonthPrecipitationStatistics.averagePrecipitationAmount.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v46 = [v91 stringFromDate:isa];

      v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v47;

      v48 = Date._bridgeToObjectiveC()().super.isa;
      v49 = [v92 stringFromDate:v48];

      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v50;

      v51 = Date._bridgeToObjectiveC()().super.isa;
      v52 = [v93 stringFromDate:v51];

      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v53;

      v87 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
      v54 = *(v87 + 20);
      v93 = v33;
      v55 = v118;
      v86 = (v118 + v54);
      Measurement.value.getter();
      v57 = v56;
      Measurement.value.getter();
      v59 = v57 / v58;
      Measurement<>.converted(to:)();
      v60 = v95;
      v61 = *(v95 + 104);
      v99 = v36;
      v62 = v94;
      v63 = v97;
      v61(v94, enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:), v97);
      v65 = v101;
      v64 = v102;
      v66 = v96;
      (*(v101 + 104))(v96, enum case for WeatherFormatScaling.asProvidedButRounded(_:), v102);
      v67 = type metadata accessor for Locale();
      v68 = v103;
      sub_10001B350(v103, 1, 1, v67);
      static Set<>.full.getter();
      static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

      sub_10003FDF4(v68, &qword_100CAA9F0);
      (*(v65 + 8))(v66, v64);
      (*(v60 + 8))(v62, v63);
      v70 = v106;
      v69 = v107;
      v71 = v108;
      (*(v107 + 104))(v106, enum case for WeatherFormatPlaceholder.none(_:), v108);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100123738();
      v73 = v113;
      v72 = v114;
      v74 = v104;
      v75 = v112;
      v76 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v102 = v77;
      v103 = v76;

      (*(v69 + 8))(v70, v71);
      (*(v105 + 8))(v72, v74);
      v78 = *(v100 + 8);
      v78(v75, v73);
      v78(v111, v73);
      (*(v110 + 8))(v109, v116);
      v79 = v86;
      *v86 = 0.0;
      v79[1] = v59;
      v79[2] = 0.0;
      v79[3] = 0.0;
      v80 = v102;
      *(v79 + 4) = v103;
      *(v79 + 5) = v80;
      type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
      swift_storeEnumTagMultiPayload();
      v81 = v91;
      *v55 = v115;
      v55[1] = v81;
      v82 = v90;
      v55[2] = v92;
      v55[3] = v82;
      v83 = v88;
      v55[4] = v89;
      v55[5] = v83;
      v84 = v87;
      *(v55 + *(v87 + 24)) = 2;
      sub_10001B350(v55, 0, 1, v84);
      return (*(v117 + 8))(v99, v93);
    }

    sub_10003FDF4(v24, &unk_100CE7790);
    (*(v117 + 8))(v36, v33);
  }

  if (qword_100CA2728 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000703C(v39, qword_100D90BD0);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Failed to find this month's precipitation averages for the Averages L2 Chart summary.", v42, 2u);
  }

  v43 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  return sub_10001B350(v118, 1, 1, v43);
}

BOOL sub_100951ED4()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MonthPrecipitationStatistics.month.getter();
  (*(v1 + 104))(v3, enum case for Calendar.Component.month(_:), v0);
  v5 = Calendar.component(_:from:)();
  (*(v1 + 8))(v3, v0);
  return v4 == v5;
}

uint64_t sub_100951FFC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void (*a3)(char *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  v43 = a4;
  v5 = type metadata accessor for Calendar.Identifier();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_10022C350(&qword_100CAB938);
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10022C350(&unk_100CE7790);
  __chkstk_darwin(v16 - 8);
  v18 = &v34 - v17;
  v19 = type metadata accessor for MonthPrecipitationStatistics();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MonthlyAveragesChartInput();
  v44 = a1;
  sub_1008DC218();
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_10003FDF4(v18, &unk_100CE7790);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000703C(v23, qword_100D90B68);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to find this month's temperature averages for the Averages L2 Chart summary.", v26, 2u);
    }

    return static WeatherDescription.string(_:)();
  }

  else
  {
    v34 = v19;
    v35 = v20;
    (*(v20 + 32))(v22, v18, v19);
    sub_1000161C0(v38, v38[3]);
    MonthPrecipitationStatistics.averagePrecipitationAmount.getter();
    v28 = v37;
    Measurement<>.converted(to:)();
    v39 = *(v36 + 8);
    v39(v12, v28);
    v38 = MonthPrecipitationStatistics.month.getter();
    Calendar.identifier.getter();
    v29 = v40;
    v30 = v41;
    v31 = v42;
    (*(v41 + 104))(v40, enum case for Calendar.Identifier.gregorian(_:), v42);
    v32 = static Calendar.Identifier.== infix(_:_:)();
    v33 = *(v30 + 8);
    v33(v29, v31);
    v33(v9, v31);
    sub_10062EC58(v15, v38, (v32 & 1) == 0, v43);
    v39(v15, v28);
    return (*(v35 + 8))(v22, v34);
  }
}

uint64_t sub_1009524D0()
{
  v0 = MonthPrecipitationStatistics.month.getter();
  v1 = v0 == DateComponents.month.getter();
  return v1 & ~v2;
}

uint64_t sub_100952598(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100952650()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Weather16TapTestParameter_testName);

  return v1;
}

uint64_t sub_10095270C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7Weather16TapTestParameter_testName);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1009527D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Weather16TapTestParameter_completionHandler);
  sub_10007A47C(v1);
  return v1;
}

id (*sub_10095281C())(void *a1)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_1009529FC;
}

uint64_t sub_100952A0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100952AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A40(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_airQuality, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566A24(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_severeAlert, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable();
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionDetailPlatterViewModel.PlatterStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1009543CC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100954420(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_10022C350(&qword_100CE7868);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v61 = &v56 - v11;
  v62 = sub_10022C350(&qword_100CE7A80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v63 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = sub_10022C350(&qword_100CAE8E8);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v23 = sub_10022C350(&qword_100CB7680);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v24);
  v26 = &v56 - v25;
  v27 = *a1;
  v28 = *a2;
  v29 = a2[1];
  v30 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_60;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
    if (v30 != 1)
    {
      goto LABEL_60;
    }

LABEL_6:
    v31 = v27 == v28 && a1[1] == v29;
    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_28:
    v33 = a1[4];
    v34 = a2[4];
    if (v33)
    {
      if (!v34)
      {
        goto LABEL_60;
      }

      v35 = a1[3] == a2[3] && v33 == v34;
      if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_37:
      v60 = v4;
      v57 = v8;
      v58 = v14;
      v59 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      v36 = *(v23 + 48);
      sub_10040492C();
      sub_10040492C();
      sub_100003A40(v26);
      if (v31)
      {
        sub_100003A40(&v26[v36]);
        if (v31)
        {
          sub_1000180EC(v26, &qword_100CAE8E8);
LABEL_48:
          v46 = v59;
          if ((sub_100955424(a1 + *(v59 + 28), a2 + *(v59 + 28)) & 1) == 0)
          {
            goto LABEL_60;
          }

          v47 = *(v62 + 48);
          v48 = v58;
          sub_10040492C();
          v49 = v48;
          sub_10040492C();
          sub_100003BDC(v48);
          if (v31)
          {
            sub_100003BDC(v48 + v47);
            if (v31)
            {
              sub_1000180EC(v48, &qword_100CE7868);
              goto LABEL_59;
            }
          }

          else
          {
            v50 = v61;
            sub_10040492C();
            sub_100003BDC(v49 + v47);
            if (!v51)
            {
              v53 = v57;
              sub_100955DF4();
              v54 = sub_100955424(v50, v53);
              sub_100955D9C(v53, type metadata accessor for ConditionDetailPlatterViewModel.Body);
              sub_100955D9C(v50, type metadata accessor for ConditionDetailPlatterViewModel.Body);
              sub_1000180EC(v49, &qword_100CE7868);
              if ((v54 & 1) == 0)
              {
                goto LABEL_60;
              }

LABEL_59:
              if (*(a1 + *(v46 + 36)) == *(a2 + *(v46 + 36)))
              {
                v32 = *(a1 + *(v46 + 40)) ^ *(a2 + *(v46 + 40)) ^ 1;
                return v32 & 1;
              }

              goto LABEL_60;
            }

            sub_10001FD8C();
            sub_100955D9C(v50, v52);
          }

          v40 = &qword_100CE7A80;
          v41 = v49;
          goto LABEL_46;
        }
      }

      else
      {
        sub_10040492C();
        sub_100003A40(&v26[v36]);
        if (!v37)
        {
          v42 = v63;
          (*(v63 + 32))(v20, &v26[v36], v15);
          sub_100955F04(&qword_100CB7688, &type metadata accessor for WeatherDescription);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v44 = *(v42 + 8);
          v44(v20, v15);
          v45 = sub_100031474();
          (v44)(v45);
          sub_1000180EC(v26, &qword_100CAE8E8);
          if ((v43 & 1) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_48;
        }

        v38 = sub_100031474();
        v39(v38);
      }

      v40 = &qword_100CB7680;
      v41 = v26;
LABEL_46:
      sub_1000180EC(v41, v40);
      goto LABEL_60;
    }

    if (!v34)
    {
      goto LABEL_37;
    }

LABEL_60:
    v32 = 0;
    return v32 & 1;
  }

  switch(v27)
  {
    case 1:
      if (v30 != 2)
      {
        goto LABEL_60;
      }

      v32 = 0;
      if (v28 == 1)
      {
        goto LABEL_27;
      }

      break;
    case 2:
      if (v30 != 2)
      {
        goto LABEL_60;
      }

      v32 = 0;
      if (v28 == 2)
      {
        goto LABEL_27;
      }

      break;
    case 3:
      if (v30 != 2)
      {
        goto LABEL_60;
      }

      v32 = 0;
      if (v28 == 3)
      {
        goto LABEL_27;
      }

      break;
    case 4:
      if (v30 != 2)
      {
        goto LABEL_60;
      }

      v32 = 0;
      if (v28 == 4)
      {
LABEL_27:
        if (!v29)
        {
          goto LABEL_28;
        }
      }

      break;
    default:
      v32 = 0;
      if (v30 == 2 && !(v29 | v28))
      {
        goto LABEL_28;
      }

      break;
  }

  return v32 & 1;
}

double sub_100954A6C(char a1, char a2)
{
  if (static Solarium.isEnabled.getter() & 1) != 0 && (a2)
  {
    if (qword_100CA21A0 != -1)
    {
      sub_1000151CC();
    }

    sub_100016ED0();
    sub_1004BA278();
    swift_endAccess();
    return 10.0;
  }

  else
  {
    if (a1)
    {
      if (qword_100CA21A0 != -1)
      {
        sub_1000151CC();
      }

      sub_100016ED0();
      v5 = sub_1004BA700();
    }

    else
    {
      if (qword_100CA21A0 != -1)
      {
        sub_1000151CC();
      }

      sub_100016ED0();
      v5 = sub_1004BA4FC();
    }

    v4 = v5;
    swift_endAccess();
  }

  return v4;
}

uint64_t sub_100954B84()
{
  v35[1] = type metadata accessor for DetailComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000038E4();
  v41 = v1;
  v40 = type metadata accessor for AttributedString.CharacterView();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v38 = v3;
  v39 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v37 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v36 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = sub_10022C350(&qword_100CE7868);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = v35 - v17;
  v19 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v35 - v24;
  type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_10040492C();
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_1000180EC(v18, &qword_100CE7868);
    return 0;
  }

  else
  {
    sub_100955DF4();
    sub_100955D38(v25, v22);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_10001FD8C();
        sub_100955D9C(v25, v32);
        return *v22;
      case 2u:
        v28 = v37;
        v29 = v39;
        (*(v37 + 32))(v8, v22, v39);
        AttributedString.characters.getter();
        sub_100955F04(&qword_100CAB940, &type metadata accessor for AttributedString.CharacterView);
        v26 = String.init<A>(_:)();
        (*(v28 + 8))(v8, v29);
        goto LABEL_14;
      case 3u:
      case 5u:
      case 6u:
      case 7u:
        sub_100955D9C(v25, type metadata accessor for ConditionDetailPlatterViewModel.Body);
        sub_100955D9C(v22, type metadata accessor for ConditionDetailPlatterViewModel.Body);
        return 0;
      case 4u:
        v30 = v41;
        sub_100955DF4();
        if (v30[1])
        {
          v26 = *v30;
        }

        else
        {
          v26 = sub_1006EC1DC();
        }

        sub_10001A284();
        sub_100955D9C(v30, v33);
        goto LABEL_14;
      default:
        v31 = v36;
        (*(v36 + 32))(v14, v22, v9);
        v26 = WeatherDescription.string.getter();
        (*(v31 + 8))(v14, v9);
LABEL_14:
        sub_10001FD8C();
        sub_100955D9C(v25, v34);
        break;
    }
  }

  return v26;
}

uint64_t sub_100955018()
{
  sub_100003A00();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ConditionDetailPlatterViewModel.TextSection(0);

  return static AttributedString.== infix(_:_:)();
}

void sub_100955090()
{
  sub_100003A00();
  if (!v1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 6;
LABEL_5:
    Hasher._combine(_:)(v2);
    sub_100003B2C();

    String.hash(into:)();
    return;
  }

  switch(v0)
  {
    case 1:
      v3 = 2;
      break;
    case 2:
      v3 = 3;
      break;
    case 3:
      v3 = 4;
      break;
    case 4:
      v3 = 5;
      break;
    default:
      v3 = 0;
      break;
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_100955150()
{
  Hasher.init(_seed:)();
  sub_100955090();
  return Hasher._finalize()();
}

unint64_t sub_1009551BC()
{
  result = qword_100CE7A68;
  if (!qword_100CE7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7A68);
  }

  return result;
}

Swift::Int sub_100955228()
{
  Hasher.init(_seed:)();
  sub_100955090();
  return Hasher._finalize()();
}

unint64_t sub_100955284()
{
  result = qword_100CE7A70;
  if (!qword_100CE7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7A70);
  }

  return result;
}

unint64_t sub_1009552DC()
{
  result = qword_100CE7A78;
  if (!qword_100CE7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7A78);
  }

  return result;
}

uint64_t sub_100955330(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a3 != 1)
  {
    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    return !a5;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_11:
  if (a1 != a4 || a2 != a5)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

uint64_t sub_100955410@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_100955F4C(v2, v3, v4);
}

uint64_t sub_100955424(uint64_t a1, uint64_t a2)
{
  v110 = a1;
  v3 = type metadata accessor for ConditionDetailDynamicContentIdentifier();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000038E4();
  sub_100003918(v5);
  v109 = type metadata accessor for PrecipitationTotalPlatterViewModel();
  sub_1000037C4();
  v108 = v6;
  __chkstk_darwin(v7);
  sub_1000038E4();
  sub_100003918(v8);
  v9 = type metadata accessor for DetailComponentContainerViewModel();
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000038E4();
  v99 = v11;
  v107 = sub_10022C350(&qword_100CB5C78);
  sub_1000037C4();
  v106 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003918(&v97 - v14);
  v105 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v104 = v15;
  __chkstk_darwin(v16);
  sub_1000038E4();
  sub_100003918(v17);
  v103 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v102 = v18;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v21 = sub_100003918(v20);
  v22 = type metadata accessor for ConditionDetailPlatterViewModel.Body(v21);
  sub_1000037E8();
  v24 = __chkstk_darwin(v23);
  v101 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v100 = &v97 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v97 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = (&v97 - v32);
  v34 = __chkstk_darwin(v31);
  v36 = &v97 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v97 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v97 - v41;
  __chkstk_darwin(v40);
  v44 = &v97 - v43;
  v45 = sub_10022C350(&qword_100CE7A88);
  sub_100003810(v45);
  sub_100003828();
  v47 = __chkstk_darwin(v46);
  v49 = &v97 - v48;
  v50 = (&v97 + *(v47 + 56) - v48);
  sub_100955D38(v110, &v97 - v48);
  sub_100955D38(a2, v50);
  v51 = v49;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100955D38(v49, v42);
      v75 = *v42;
      v74 = *(v42 + 1);
      if (sub_100013E60() != 1)
      {

        goto LABEL_33;
      }

      if (v75 == *v50 && v74 == v50[1])
      {
      }

      else
      {
        sub_100003B2C();
        v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v77 & 1) == 0)
        {
          sub_10001FD8C();
          sub_100955D9C(v49, v78);
          goto LABEL_34;
        }
      }

      sub_10001FD8C();
      sub_100955D9C(v49, v96);
      v22 = 1;
      return v22 & 1;
    case 2u:
      sub_100955D38(v49, v39);
      if (sub_100013E60() == 2)
      {
        v60 = v104;
        v61 = v98;
        v62 = v105;
        (*(v104 + 32))(v98, v50, v105);
        v22 = static AttributedString.== infix(_:_:)();
        v63 = *(v60 + 8);
        v63(v61, v62);
        v63(v39, v62);
        goto LABEL_37;
      }

      sub_10000E73C();
      v53 = v39;
      v54 = &v114;
      goto LABEL_27;
    case 3u:
      sub_100955D38(v49, v36);
      if (sub_100013E60() == 3)
      {
        sub_100017170();
        v64 = sub_100049F40();
        v65 = v107;
        v66(v64);
        v67 = sub_10022C350(&qword_100CB5CA8);
        sub_100062C08();
        sub_100955E50();
        static NonEmpty<>.== infix(_:_:)();
        v68 = sub_10004EDE4();
        v67(v68, v65);
        v67(v36, v65);
        goto LABEL_37;
      }

      sub_10000E73C();
      v53 = v36;
      v54 = &v115;
      goto LABEL_27;
    case 4u:
      sub_100955D38(v49, v33);
      if (sub_100013E60() == 4)
      {
        v55 = type metadata accessor for DetailComponentContainerViewModel;
        v56 = v99;
        sub_100955DF4();
        v22 = sub_100428860(v33, v56);
        v57 = sub_100003B2C();
        sub_100955D9C(v57, v58);
        v59 = v33;
        goto LABEL_12;
      }

      sub_10001A284();
      v87 = v33;
      goto LABEL_29;
    case 5u:
      sub_100955D38(v49, v30);
      memcpy(__dst, v30, 0x5AuLL);
      if (sub_100013E60() == 5)
      {
        memcpy(v112, v50, 0x5AuLL);
        v22 = sub_1003335B4(__dst, v112);
        sub_1003F09B4(v112);
        sub_1003F09B4(__dst);
        goto LABEL_37;
      }

      sub_1003F09B4(__dst);
      goto LABEL_33;
    case 6u:
      v79 = v100;
      sub_100955D38(v49, v100);
      if (sub_100013E60() == 6)
      {
        sub_100017170();
        v80 = sub_100049F40();
        v81 = v109;
        v82(v80);
        static PrecipitationTotalPlatterViewModel.== infix(_:_:)();
        v83 = sub_10004EDE4();
        (v42)(v83, v81);
        (v42)(v79, v81);
        sub_10001FD8C();
        v85 = v49;
        goto LABEL_38;
      }

      sub_10000E73C();
      v88(v79, v109);
      v51 = v49;
      goto LABEL_33;
    case 7u:
      v69 = v101;
      sub_100955D38(v49, v101);
      if (sub_100013E60() == 7)
      {
        v55 = type metadata accessor for ConditionDetailDynamicContentIdentifier;
        sub_100955DF4();
        v70 = sub_100031474();
        v22 = sub_1008C90F0(v70, v71);
        v72 = sub_100003B2C();
        sub_100955D9C(v72, v73);
        v59 = v69;
LABEL_12:
        sub_100955D9C(v59, v55);
        goto LABEL_37;
      }

      v86 = type metadata accessor for ConditionDetailDynamicContentIdentifier;
      v87 = v69;
LABEL_29:
      sub_100955D9C(v87, v86);
      goto LABEL_33;
    default:
      sub_100955D38(v49, v44);
      if (sub_100013E60())
      {
        sub_10000E73C();
        v53 = v44;
        v54 = &v113;
LABEL_27:
        v52(v53, *(v54 - 32));
LABEL_33:
        sub_1000180EC(v51, &qword_100CE7A88);
LABEL_34:
        v22 = 0;
      }

      else
      {
        sub_100017170();
        v89 = sub_100049F40();
        v90 = v103;
        v91(v89);
        static WeatherDescription.== infix(_:_:)();
        v92 = sub_10004EDE4();
        (v42)(v92, v90);
        v93 = sub_100031474();
        (v42)(v93, v94);
LABEL_37:
        sub_10001FD8C();
        v85 = v51;
LABEL_38:
        sub_100955D9C(v85, v84);
      }

      return v22 & 1;
  }
}

uint64_t sub_100955D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100955D9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100955DF4()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 32))(v0, v1);
  return v0;
}

unint64_t sub_100955E50()
{
  result = qword_100CE7A90;
  if (!qword_100CE7A90)
  {
    sub_10022E824(&qword_100CB5CA8);
    sub_100955F04(&qword_100CE7A98, type metadata accessor for ConditionDetailPlatterViewModel.TextSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7A90);
  }

  return result;
}

uint64_t sub_100955F04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100955F4C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t type metadata accessor for DailyForecastEditorView()
{
  result = qword_100CE7AF8;
  if (!qword_100CE7AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100955FD8()
{
  sub_100956104(319, &qword_100CA6D20, &qword_100CA6D28, &unk_100A4CEA0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000F4460();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TimeZone();
      if (v2 <= 0x3F)
      {
        sub_10013DB50();
        if (v3 <= 0x3F)
        {
          sub_100956104(319, &unk_100CE7B08, &qword_100CDE6B0, &unk_100A9B400, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100956104(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100956184@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA54B0);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  sub_10084BCB8(v2, &v15 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100463960(v12, a1);
  }

  static os_log_type_t.fault.getter();
  v14 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_10095632C(unint64_t a1)
{
  v37 = type metadata accessor for Date();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for DayWeather();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = (v1 + *(type metadata accessor for DailyForecastEditorView() + 36));
  v17 = *v15;
  v16 = v15[1];
  v40._countAndFlagsBits = v17;
  v40._object = v16;
  sub_10022C350(&qword_100CE7B98);
  result = State.wrappedValue.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v38 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v33 = v11;
  v34 = a1;
  v35 = v9;
  v19 = *(v9 + 16);
  v20 = v38 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1;
  v32 = v8;
  v19(v14, v20, v8);

  DayWeather.date.getter();
  v21 = Date.formattedShortMonth(timeZone:)();
  v23 = v22;
  v24 = *(v3 + 8);
  v25 = v37;
  v24(v7, v37);
  v40._countAndFlagsBits = v21;
  v40._object = v23;
  Date.init(timeIntervalSince1970:)();
  DayWeather.date.getter();
  LOBYTE(v23) = Date.isSameDay(as:timeZone:)();
  v24(v7, v25);
  if (v23)
  {
    v26._countAndFlagsBits = 0x297961646F742820;
    v26._object = 0xE800000000000000;
    String.append(_:)(v26);
  }

  sub_10022C350(&qword_100CA7000);
  v27 = v33;
  Forecast.subscript.getter();
  sub_100957E08(&qword_100CB0C60, &type metadata accessor for DayWeather);
  v28 = v32;
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v35 + 8);
  v30(v27, v28);
  if (v29)
  {
    v24(v36, v37);
    v30(v14, v28);
    return v40._countAndFlagsBits;
  }

  else
  {
    v38 = 42;
    v39 = 0xE100000000000000;
    String.append(_:)(v40);

    v31 = v38;
    v24(v36, v37);
    v30(v14, v28);
  }

  return v31;
}

uint64_t sub_100956720@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for DailyForecastEditorView();
  v55 = *(v2 - 8);
  v54 = *(v55 + 64);
  __chkstk_darwin(v2 - 8);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA5528);
  sub_1000037C4();
  v56 = v4;
  v57 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v53 = &v45 - v7;
  v8 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CE7B48);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  sub_10022C350(&qword_100CE7B50);
  sub_1000037C4();
  v48 = v20;
  v49 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  sub_10022C350(&qword_100CE7B58);
  sub_1000037C4();
  v50 = v25;
  v51 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v46 = &v45 - v28;
  v59 = v1;
  sub_10022C350(&qword_100CE7B60);
  sub_100957A04();
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100011068();
  v31 = sub_100006F64(v29, v30);
  View.listStyle<A>(_:)();
  (*(v10 + 8))(v13, v8);
  (*(v16 + 8))(v19, v14);
  LocalizedStringKey.init(stringLiteral:)();
  v60 = v14;
  v61 = v8;
  v62 = v31;
  v63 = &protocol witness table for InsetGroupedListStyle;
  sub_100005DB4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v46;
  v34 = v48;
  View.navigationTitle(_:)();

  v35 = v34;
  (*(v49 + 8))(v24, v34);
  LocalizedStringKey.init(stringLiteral:)();
  v36 = v52;
  sub_100957B4C(v47, v52);
  v37 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v38 = swift_allocObject();
  sub_100957BB0(v36, v38 + v37);
  v39 = v53;
  Button<>.init(_:action:)();
  v60 = v35;
  v61 = OpaqueTypeConformance2;
  sub_100004C88();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v40, &qword_100CA5528);
  v41 = v39;
  v42 = v50;
  v43 = v56;
  View.navigationBarItems<A>(trailing:)();
  (*(v57 + 8))(v41, v43);
  return (*(v51 + 8))(v33, v42);
}

uint64_t sub_100956CB8()
{
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  sub_10022C350(&qword_100CE7B78);
  sub_100957A9C();
  return Section<>.init(header:content:)();
}

uint64_t sub_100956D84(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastEditorView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = (a1 + *(v5 + 44));
  v8 = *v6;
  v7 = v6[1];
  v14 = v8;
  v15 = v7;
  sub_10022C350(&qword_100CE7B98);
  State.wrappedValue.getter();
  v9 = *(v13[1] + 16);

  v14 = 0;
  v15 = v9;
  swift_getKeyPath();
  sub_100957B4C(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_100957BB0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_10022C350(&qword_100CBD760);
  sub_10022C350(&qword_100CE7B88);
  sub_100512BF0();
  sub_100006F64(&qword_100CE7B80, &qword_100CE7B88);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100956F70@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for DailyForecastEditorView();
  v54 = *(v5 - 8);
  __chkstk_darwin(v5);
  v55 = v6;
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DayWeather();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = &v48 - v15;
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v19 = type metadata accessor for DayWeatherEditorView();
  __chkstk_darwin(v19);
  v57 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a1;
  v64 = v5;
  v22 = (a2 + *(v5 + 36));
  v24 = *v22;
  v23 = v22[1];
  v67 = v24;
  v68 = v23;
  v61 = v23;
  v60 = sub_10022C350(&qword_100CE7B98);
  result = State.wrappedValue.getter();
  v65 = v21;
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v53 = v24;
  if (v65 >= *(v66 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v51 = v13;
  v52 = v19;
  v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v27 = v65;
  v28 = *(v11 + 72) * v65;
  v50 = *(v11 + 16);
  v50(v18, v66 + v26 + v28, v10);

  DayWeather.date.getter();
  v49 = *(v11 + 8);
  v49(v18, v10);
  v64 = a2;
  v29 = Date.formattedShortMonth(timeZone:)();
  v48 = v30;
  (*(v62 + 8))(v9, v63);
  v67 = v53;
  v68 = v61;
  result = State.wrappedValue.getter();
  if (v27 < *(v66 + 16))
  {
    v31 = v29;
    v32 = v50;
    v50(v18, v66 + v26 + v28, v10);

    v33 = v56;
    sub_100957B4C(v64, v56);
    v34 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v63 = v36;
    sub_100957BB0(v33, v36 + v34);
    *(v36 + v35) = v65;
    KeyPath = swift_getKeyPath();
    v38 = v57;
    *v57 = KeyPath;
    sub_10022C350(&qword_100CA54B0);
    swift_storeEnumTagMultiPayload();
    v39 = v52;
    v40 = (v38 + *(v52 + 20));
    v41 = v48;
    *v40 = v31;
    v40[1] = v41;
    v32(v38 + *(v39 + 24), v18, v10);
    v42 = v58;
    v32(v58, v18, v10);
    v32(v51, v42, v10);
    State.init(wrappedValue:)();
    v43 = v49;
    v49(v42, v10);
    v44 = v43(v18, v10);
    v45 = (v38 + *(v39 + 28));
    v46 = v63;
    *v45 = sub_100957D64;
    v45[1] = v46;
    __chkstk_darwin(v44);
    v47 = v65;
    *(&v48 - 2) = v64;
    *(&v48 - 1) = v47;
    sub_100957E08(&qword_100CE7BA0, type metadata accessor for DayWeatherEditorView);
    return NavigationLink.init(destination:label:)();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100957534(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for DailyForecastEditorView();

  sub_10022C350(&qword_100CE7B98);
  State.wrappedValue.getter();
  v5 = v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1008FBD78();
  v5 = v7;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a3)
  {
    v6 = type metadata accessor for DayWeather();
    (*(*(v6 - 8) + 24))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * a3, a1, v6);
    State.wrappedValue.setter();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100957670@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10095632C(a1);
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1009576D0(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v20 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA6D28);
  __chkstk_darwin(v19);
  v5 = v17 - v4;
  v6 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10022C350(&qword_100CA7000);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = type metadata accessor for DailyForecastEditorView();
  v12 = *(v11 + 36);
  v13 = (a1 + *(v11 + 32));
  v14 = *v13;
  v17[1] = v13[1];
  v18 = v14;
  v17[0] = a1;
  v15 = *(a1 + v12 + 8);
  v21 = *(a1 + v12);
  v22 = v15;
  sub_10022C350(&qword_100CE7B98);
  State.wrappedValue.getter();
  Forecast.metadata.getter();
  type metadata accessor for DayWeather();
  sub_100957E08(&qword_100CB0C50, &type metadata accessor for DayWeather);
  sub_100957E08(&qword_100CB0C58, &type metadata accessor for DayWeather);
  sub_100957E08(&qword_100CB0C60, &type metadata accessor for DayWeather);
  Forecast.init(_:metadata:)();
  v18(v10);
  (*(v8 + 8))(v10, v7);
  sub_100956184(v5);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_100957C74(v5);
}

unint64_t sub_100957A04()
{
  result = qword_100CE7B68;
  if (!qword_100CE7B68)
  {
    sub_10022E824(&qword_100CE7B60);
    sub_100957A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7B68);
  }

  return result;
}

unint64_t sub_100957A9C()
{
  result = qword_100CE7B70;
  if (!qword_100CE7B70)
  {
    sub_10022E824(&qword_100CE7B78);
    sub_100006F64(&qword_100CE7B80, &qword_100CE7B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE7B70);
  }

  return result;
}

uint64_t sub_100957B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastEditorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100957BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastEditorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100957C14()
{
  v1 = *(type metadata accessor for DailyForecastEditorView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1009576D0(v2);
}

uint64_t sub_100957C74(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100957CE4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DailyForecastEditorView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100956F70(a1, v6, a2);
}

void sub_100957D64(uint64_t a1)
{
  v3 = *(type metadata accessor for DailyForecastEditorView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100957534(a1, v1 + v4, v5);
}

uint64_t sub_100957E08(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100957E50()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  *(v0 + 104) = 0x4074000000000000;
  *(v0 + 112) = 0;
  return 320.0;
}

double sub_100957E74()
{
  qword_100D913E8 = 0;
  result = 0.0;
  xmmword_100D913C8 = 0u;
  unk_100D913D8 = 0u;
  byte_100D913F0 = 1;
  qword_100D913F8 = 0;
  byte_100D91400 = 1;
  xmmword_100D91408 = 0u;
  unk_100D91418 = 0u;
  byte_100D91428 = 1;
  qword_100D91430 = 0;
  byte_100D91438 = 1;
  unk_100D91440 = 0u;
  unk_100D91450 = 0u;
  byte_100D91460 = 1;
  return result;
}

uint64_t sub_100957ED4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MapComponentView(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = (a1 + v2[7]);
  type metadata accessor for ObservableResolver();
  sub_10095B898(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = v2[8];
  *(a1 + v7) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + v2[9];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v2[10];
  *v9 = swift_getKeyPath();
  *(v9 + 72) = 0;
  v10 = a1 + v2[11];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = a1 + v2[12];
  State.init(wrappedValue:)();
  *v11 = v13;
  *(v11 + 8) = v14;
  return sub_10019454C();
}

uint64_t sub_10095808C()
{
  type metadata accessor for MapComponentView(0);
  sub_10022C350(&qword_100CE7DD0);
  State.wrappedValue.getter();
  if (v1 != 1)
  {
    return static Color.clear.getter();
  }

  static WeatherMapBackground.backgroundColor(for:)();
  return Color.init(_:)();
}

uint64_t sub_100958114()
{
  sub_10022C350(&qword_100CA3898);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v17 - v1;
  v3 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for MapComponentViewModel();
  sub_100095588();
  v8 = sub_1000162A4();
  if (sub_100024D10(v8, v9, v3) == 1)
  {
    sub_1000180EC(v2, &qword_100CA3898);
    return Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    sub_10019454C();
    sub_10022C350(&qword_100CE7E00);
    v11 = *(sub_10022C350(&qword_100CE7E08) - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100A2C3F0;
    v14 = (v13 + v12);
    *v14 = Location.id.getter();
    v14[1] = v15;
    sub_10095BE74();
    v10 = Dictionary.init(dictionaryLiteral:)();
    sub_10095BECC(v7, type metadata accessor for WeatherData);
  }

  return v10;
}

uint64_t sub_100958384@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v104 = sub_10022C350(&qword_100CE7D48);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v89 - v5;
  v99 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100003990(v9 - v8);
  v10 = type metadata accessor for MapComponentView(0);
  sub_1000037C4();
  v90 = v11;
  __chkstk_darwin(v12);
  v101 = sub_10022C350(&qword_100CE7D50);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = (&v89 - v14);
  v94 = sub_10022C350(&qword_100CE7D58);
  sub_1000037C4();
  v92 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100003990(&v89 - v18);
  v91 = sub_10022C350(&qword_100CE7D60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100003990(&v89 - v20);
  v93 = sub_10022C350(&qword_100CE7D68);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  sub_100003990(&v89 - v22);
  v103 = sub_10022C350(&qword_100CE7D70);
  sub_1000037E8();
  __chkstk_darwin(v23);
  v95 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  sub_100003990(&v89 - v26);
  v27 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v107 = v28;
  __chkstk_darwin(v29);
  sub_1000037D8();
  sub_100003990(v31 - v30);
  v32 = v1 + v10[6];
  v33 = *v32;
  v34 = *(v32 + 8) == 1;
  v106 = a1;
  v105 = v6;
  if (v34)
  {
    if ((v33 & 0x10000) == 0)
    {
LABEL_7:
      *v6 = 0;
      v6[8] = 0;
      swift_storeEnumTagMultiPayload();
      sub_10095B93C();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v48 = static Log.runtimeIssuesLog.getter();
    v49 = v108;
    os_log(_:dso:log:_:_:)();

    v2 = v1;
    v50 = v107;
    v6 = v105;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v33, 0);
    (*(v50 + 8))(v49, v27);
    if (BYTE2(__dst[0]) != 1)
    {
      goto LABEL_7;
    }
  }

  v89 = v27;
  v35 = static Color.clear.getter();
  v36 = v15 + *(sub_10022C350(&qword_100CE7DA8) + 36);
  KeyPath = swift_getKeyPath();
  v112 = 0;
  *v36 = KeyPath;
  v36[72] = 0;
  ShouldShowMapModifier = type metadata accessor for DetermineWhetherMapComponentShouldShowMapModifier(0);
  v39 = *(ShouldShowMapModifier + 20);
  *&v36[v39] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v40 = &v36[*(ShouldShowMapModifier + 24)];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  *v15 = v35;
  sub_10095BE74();
  v41 = swift_allocObject();
  sub_10019454C();
  v42 = static Alignment.center.getter();
  v43 = (v15 + *(v101 + 36));
  *v43 = sub_10095BDE8;
  v43[1] = v41;
  v43[2] = v42;
  v43[3] = v44;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v110 = 0xD000000000000010;
  v111 = 0x8000000100AD7220;
  type metadata accessor for MapComponentViewModel();
  v45._countAndFlagsBits = Location.id.getter();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 45;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47 = v10[10];
  memcpy(__dst, (v2 + v47), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (v2 + v47), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    sub_100028E34();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8);
    v53 = sub_100004F10();
    v54(v53);
  }

  memcpy(v114, __src, sizeof(v114));
  v55._countAndFlagsBits = sub_10012EC4C();
  String.append(_:)(v55);

  v56 = v110;
  v57 = v111;
  v90 = v10;
  v58 = v2 + v10[9];
  v59 = *v58;
  v60 = *(v58 + 8);
  if (*(v58 + 9) == 1)
  {
    if ((v60 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  static os_log_type_t.fault.getter();
  v61 = static Log.runtimeIssuesLog.getter();
  sub_100028E34();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100109A3C(v59, v60, 0);
  v62 = sub_100004F10();
  v63(v62);
  if (LOBYTE(__src[1]) == 1)
  {
LABEL_13:
    Namespace.wrappedValue.getter();
  }

LABEL_14:
  v64 = sub_10095808C();
  __src[0] = v56;
  __src[1] = v57;
  __chkstk_darwin(v64);
  sub_10022C350(&qword_100CE7D90);
  sub_10095BC00();
  v65 = sub_10022E824(&qword_100CBA9F0);
  v110 = type metadata accessor for EmptyMatchedTransitionSourceConfiguration();
  v111 = &protocol witness table for EmptyMatchedTransitionSourceConfiguration;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v110 = v65;
  v111 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.matchedTransitionSource<A, B>(id:in:configuration:)();

  sub_1000180EC(v15, &qword_100CE7D50);

  v67 = static Edge.Set.horizontal.getter();
  v68 = v2 + v90[5];
  v69 = *v68;
  if (*(v68 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v70 = static Log.runtimeIssuesLog.getter();
    sub_100028E34();

    v71 = v108;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v69, 0);
    (*(v107 + 8))(v71, v89);
  }

  EdgeInsets.init(_all:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v97;
  (*(v92 + 32))(v97, v102, v94);
  v81 = v80 + *(v91 + 36);
  *v81 = v67;
  *(v81 + 8) = v73;
  *(v81 + 16) = v75;
  *(v81 + 24) = v77;
  *(v81 + 32) = v79;
  *(v81 + 40) = 0;
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  v83 = v100;
  (*(v82 + 16))(v100, v2);
  type metadata accessor for AutomationCellInfo(0);
  sub_1000201F8();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v84 = v96 + *(v93 + 36);
  type metadata accessor for AutomationInfoProperty();
  sub_10095BE74();
  sub_10095BECC(v83, type metadata accessor for AutomationInfo);
  *v84 = 0;
  *(v84 + 8) = 0xE000000000000000;
  *(v84 + 16) = swift_getKeyPath();
  *(v84 + 24) = 0;
  sub_100051BBC();
  v85 = swift_getKeyPath();
  v86 = v95;
  sub_100051BBC();
  v87 = &v86[*(v103 + 36)];
  *v87 = v85;
  v87[8] = 0;
  v88 = v98;
  sub_100051BBC();
  sub_100223098();
  swift_storeEnumTagMultiPayload();
  sub_10095B93C();
  _ConditionalContent<>.init(storage:)();
  return sub_1000180EC(v88, &qword_100CE7D70);
}

uint64_t sub_1009590A0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MapComponentViewModel();
  __chkstk_darwin(v6);
  v96 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CBEDF0);
  __chkstk_darwin(v8 - 8);
  v84 = &v74 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeatherMapDisplayMode();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for WeatherMap();
  v89 = *(v95 - 8);
  __chkstk_darwin(v95);
  v86 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CE7DD8);
  v93 = *(v19 - 8);
  v94 = v19;
  __chkstk_darwin(v19);
  v88 = &v74 - v20;
  v92 = sub_10022C350(&qword_100CE7DE0);
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v87 = &v74 - v21;
  v85 = sub_10022C350(&qword_100CE7DE8);
  __chkstk_darwin(v85);
  v91 = &v74 - v22;
  v23 = sub_10022C350(&qword_100CE7DF0);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  if (*a1 == 1)
  {
    v79 = v11;
    v80 = &v74 - v26;
    v81 = v27;
    v82 = v25;
    v83 = a3;
    v28 = *(sub_10022C350(&qword_100CBEDF8) + 48);
    v29 = enum case for WeatherMapDisplayMode.SnapshotSizingBehavior.autoSizing(_:);
    v30 = type metadata accessor for WeatherMapDisplayMode.SnapshotSizingBehavior();
    (*(*(v30 - 8) + 104))(v17, v29, v30);
    if (qword_100CA21B8 != -1)
    {
      swift_once();
    }

    *&v17[v28] = qword_100D90340;
    (*(v15 + 104))(v17, enum case for WeatherMapDisplayMode.snapshot(_:), v14);
    v78 = type metadata accessor for MapComponentView(0);
    v31 = a2 + *(v78 + 44);
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    if (*(v31 + 17) == 1)
    {
      v77 = *v31;
      v76 = v33;
      v75 = v34;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v36 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1004BFF94(v32, v33, v34, 0);
      (*(v79 + 8))(v13, v10);
      v77 = v103;
      v76 = v104;
      v75 = BYTE8(v104);
    }

    sub_10022C350(&qword_100CBEE00);
    v37 = type metadata accessor for Location();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100A2C3F0;
    v41 = *(v6 + 20);
    (*(v38 + 16))(v40 + v39, a2 + v41, v37);
    type metadata accessor for WeatherMapOverlayKind();
    static Binding.constant(_:)();
    v107 = Location.id.getter();
    v108 = v42;
    sub_10022C350(&qword_100CA6078);
    static Binding.constant(_:)();

    v74 = v104;
    sub_100958114();
    type metadata accessor for WeatherData(0);
    type metadata accessor for WeatherDataModel();
    Dictionary.mapKeysAndValues<A, B>(_:)();

    v107 = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v107 = 0xD000000000000013;
    v108 = 0x8000000100AE6DD0;
    v79 = v41;
    v43._countAndFlagsBits = Location.name.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 93;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = v86;
    WeatherMap.init(displayMode:startsFocused:preferredMapSize:locations:overlayKind:selectedLocationId:weatherData:options:cacheIdentifier:isPreferredForCachedInstance:debugIdentifier:)();
    v46 = v78;
    v47 = *(a2 + *(v78 + 28));
    if (v47)
    {
      sub_10095BE74();
      v48 = (a2 + *(v46 + 48));
      v49 = *v48;
      v50 = *(v48 + 1);
      LOBYTE(v107) = v49;
      v108 = v50;
      swift_retain_n();
      sub_10022C350(&qword_100CE7DD0);
      State.projectedValue.getter();
      v51 = v103;
      v52 = v104;
      v53 = BYTE8(v104);
      v54 = type metadata accessor for MapComponentWeatherMapDelegate(0);
      v55 = swift_allocObject();
      v55[5] = type metadata accessor for ObservableResolver();
      v55[6] = &protocol witness table for ObservableResolver;
      v55[2] = v47;
      sub_10019454C();
      v56 = v55 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState;
      *v56 = v51;
      *(v56 + 1) = v52;
      v56[16] = v53;

      v105 = v54;
      v106 = sub_10095B898(&qword_100CE7DF8, type metadata accessor for MapComponentWeatherMapDelegate);
      v103 = v55;
      v57 = sub_10095B898(&qword_100CBEDD8, &type metadata accessor for WeatherMap);
      v58 = v88;
      v59 = v95;
      View.delegate(_:)();
      (*(v89 + 8))(v45, v59);
      sub_100006F14(&v103);
      v107 = v59;
      v108 = v57;
      swift_getOpaqueTypeConformance2();
      v60 = v87;
      v61 = v94;
      View.systemColorScheme()();
      (*(v93 + 8))(v58, v61);
      static UnitPoint.center.getter();
      v62 = static AnyTransition.scale(scale:anchor:)();
      v63 = v91;
      (*(v90 + 32))(v91, v60, v92);
      *&v63[*(v85 + 36)] = v62;
      v64 = Location.id.getter();
      v66 = v65;
      KeyPath = swift_getKeyPath();
      v68 = swift_getKeyPath();
      v69 = swift_getKeyPath();
      v97 = 0;
      v102 = 0;
      v99 = 0;
      v70 = v81;
      sub_100051BBC();
      v71 = v82;
      v72 = v70 + *(v82 + 36);
      *v72 = KeyPath;
      *(v72 + 8) = 0;
      *(v72 + 9) = v102;
      *(v72 + 10) = v100;
      *(v72 + 14) = v101;
      *(v72 + 16) = v68;
      *(v72 + 24) = v99;
      *(v72 + 25) = v107;
      *(v72 + 28) = *(&v107 + 3);
      *(v72 + 32) = v69;
      *(v72 + 104) = 0;
      *(v72 + 108) = *&v98[3];
      *(v72 + 105) = *v98;
      *(v72 + 112) = v64;
      *(v72 + 120) = v66;
      sub_100051BBC();
      v73 = v83;
      sub_100051BBC();
      return sub_10001B350(v73, 0, 1, v71);
    }

    else
    {
      type metadata accessor for ObservableResolver();
      sub_10095B898(&qword_100CB0468, &type metadata accessor for ObservableResolver);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {

    return sub_10001B350(a3, 1, 1, v25);
  }

  return result;
}

uint64_t sub_100959D88(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(a2, 0);
    (*(v6 + 8))(v8, v5);
  }

  sub_10022C350(&qword_100CE7EC8);
  sub_10006768C(&qword_100CE7ED0, &qword_100CE7EC8);
  return View.weatherMapShouldSuspendSnapshotUpdates(_:)();
}

uint64_t sub_100959F40()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CA64E8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  type metadata accessor for DetermineWhetherMapComponentShouldShowMapModifier(0);
  sub_10009D114();
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  sub_10001B350(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v6, 1, v0) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_10095B898(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_1000180EC(v12, &qword_100CA6028);
      sub_1000180EC(v15, &qword_100CA6028);
      v20(v9, v0);
      sub_1000180EC(v6, &qword_100CA6028);
      return v17 & 1;
    }

    sub_1000180EC(v12, &qword_100CA6028);
    sub_1000180EC(v15, &qword_100CA6028);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_1000180EC(v12, &qword_100CA6028);
  sub_1000180EC(v15, &qword_100CA6028);
  if (sub_100024D10(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_1000180EC(v6, &qword_100CA64E8);
    v17 = 0;
    return v17 & 1;
  }

  sub_1000180EC(v6, &qword_100CA6028);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_10095A360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(__dst, v2, 0x49uLL);
  if (__dst[9])
  {
    memcpy(v18, v2, sizeof(v18));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8);
    (*(v6 + 8))(v8, v5);
  }

  if (v18[49] == 3)
  {
    v10 = &v2[*(type metadata accessor for DetermineWhetherMapComponentShouldShowMapModifier(0) + 24)];
    v11 = *v10;
    if (v10[8] == 1)
    {
      v12 = *v10;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v11, 0);
      (*(v6 + 8))(v8, v5);
      v12 = v18[0];
    }

    if ((v12 & 0xC0) == 0x40)
    {
      v13 = sub_100959F40();
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = sub_10022C350(&qword_100CE7EB8);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  result = sub_10022C350(&qword_100CE7EC0);
  *(a2 + *(result + 36)) = v13 & 1;
  return result;
}

char *sub_10095A634(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_10095A684()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 4);
  v5 = *v0;
  v9 = *v0;
  if (HIBYTE(v10) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v9, &qword_100CE7EE8);
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return v5;
}

uint64_t sub_10095A7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v31 = 0xD000000000000010;
  v32 = 0x8000000100AD7220;
  String.append(_:)(*(v2 + 112));
  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  memcpy(__dst, (v2 + 32), 0x49uLL);
  if (__dst[9])
  {
    *&__src[1] = *(v2 + 40);
    *&__src[3] = *(v2 + 56);
    *&__src[5] = *(v2 + 72);
    *&__src[7] = *(v2 + 88);
    __src[0] = __dst[0];
  }

  else
  {
    sub_100095588();
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CD9F98);
    (*(v6 + 8))(v8, v5);
  }

  memcpy(v29, __src, sizeof(v29));
  v11._countAndFlagsBits = sub_10012EC4C();
  String.append(_:)(v11);

  v12 = v31;
  v13 = v32;
  v14 = sub_10095A684();
  if (v15)
  {
    v14 = Namespace.wrappedValue.getter();
  }

  v16 = v14;
  LOBYTE(__src[1]) = *(v3 + 24);
  v17 = *(v3 + 16);
  __src[0] = v17;
  if (LOBYTE(__src[1]) != 1)
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__src, &qword_100CB91B8);
    (*(v6 + 8))(v8, v5);
    if (v31 != 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v18 = static MatchedGeometryProperties.frame.getter();
    goto LABEL_11;
  }

  if (v17)
  {
    goto LABEL_10;
  }

LABEL_8:
  v18 = 0;
LABEL_11:
  static UnitPoint.center.getter();
  v21 = v20;
  v23 = v22;
  v24 = sub_10022C350(&qword_100CE7ED8);
  (*(*(v24 - 8) + 16))(a2, v28, v24);
  result = sub_10022C350(&qword_100CE7EE0);
  v26 = a2 + *(result + 36);
  *v26 = v12;
  *(v26 + 8) = v13;
  *(v26 + 16) = v16;
  *(v26 + 24) = v18;
  *(v26 + 32) = v21;
  *(v26 + 40) = v23;
  *(v26 + 48) = 1;
  return result;
}