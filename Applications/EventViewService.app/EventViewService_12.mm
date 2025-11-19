uint64_t sub_10017D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v100 = a7;
  v101 = a8;
  v94 = a3;
  v95 = a6;
  v98 = a4;
  v99 = a5;
  v103 = a2;
  v109 = a1;
  v105 = a9;
  v15 = type metadata accessor for PlainButtonStyle();
  v85 = v15;
  v104 = *(v15 - 8);
  __chkstk_darwin(v15);
  v102 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v125 = a3;
  *(&v125 + 1) = a4;
  *&v126 = a5;
  *(&v126 + 1) = a6;
  *&v127 = a7;
  *(&v127 + 1) = a8;
  v108 = type metadata accessor for MusicEventView();
  v96 = *(v108 - 8);
  v97 = *(v96 + 64);
  __chkstk_darwin(v108);
  v107 = &v76 - v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  *&v125 = AssociatedTypeWitness;
  *(&v125 + 1) = v19;
  *&v126 = AssociatedConformanceWitness;
  *(&v126 + 1) = v21;
  v92 = type metadata accessor for PromotionalAssetsEntryView();
  WitnessTable = swift_getWitnessTable();
  v22 = type metadata accessor for Button();
  v93 = *(v22 - 8);
  __chkstk_darwin(v22);
  v86 = v23;
  v87 = &v76 - v24;
  v25 = v23;
  v26 = swift_getWitnessTable();
  v84 = v26;
  v83 = sub_1001831E4(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  *&v125 = v25;
  *(&v125 + 1) = v15;
  *&v126 = v26;
  *(&v126 + 1) = v83;
  v88 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  v90 = OpaqueTypeMetadata2;
  v28 = __chkstk_darwin(OpaqueTypeMetadata2);
  v79 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v82 = &v76 - v30;
  v31 = type metadata accessor for AccessibilityTraits();
  v77 = *(v31 - 8);
  v78 = v31;
  __chkstk_darwin(v31);
  v76 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1000024C4(&qword_100223418);
  v33 = __chkstk_darwin(v81);
  v80 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v106 = &v76 - v35;
  sub_100173C74(v108);

  v36 = Text.init(_:tableName:bundle:comment:)();
  v38 = v37;
  LOBYTE(v15) = v39;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v40 = Text.font(_:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  sub_100017398(v36, v38, v15 & 1);

  LOBYTE(v36) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v120[0]) = v44 & 1;
  LOBYTE(v118) = 0;
  *&v121 = v40;
  *(&v121 + 1) = v42;
  LOBYTE(v122) = v44 & 1;
  *(&v122 + 1) = v46;
  LOBYTE(v123) = v36;
  *(&v123 + 1) = v47;
  *&v124[0] = v48;
  *(&v124[0] + 1) = v49;
  *&v124[1] = v50;
  BYTE8(v124[1]) = 0;
  v51 = v76;
  static AccessibilityTraits.isHeader.getter();
  sub_1000024C4(&qword_100223488);
  sub_10005D968();
  View.accessibility(addTraits:)();
  (*(v77 + 8))(v51, v78);
  v127 = v123;
  v128[0] = v124[0];
  *(v128 + 9) = *(v124 + 9);
  v125 = v121;
  v126 = v122;
  sub_1000050C4(&v125, &qword_100223488);
  v52 = v96;
  (*(v96 + 16))(v107, v109, v108);
  v53 = (*(v52 + 80) + 64) & ~*(v52 + 80);
  v54 = swift_allocObject();
  v56 = v94;
  v55 = v95;
  v58 = v98;
  v57 = v99;
  *(v54 + 2) = v94;
  *(v54 + 3) = v58;
  *(v54 + 4) = v57;
  *(v54 + 5) = v55;
  v60 = v100;
  v59 = v101;
  *(v54 + 6) = v100;
  *(v54 + 7) = v59;
  (*(v52 + 32))(&v54[v53], v107, v108);
  v110 = v56;
  v111 = v58;
  v112 = v57;
  v113 = v55;
  v114 = v60;
  v115 = v59;
  v116 = v103;
  v117 = v109;
  v61 = v87;
  Button.init(action:label:)();
  v62 = v102;
  PlainButtonStyle.init()();
  v63 = v79;
  v64 = v85;
  v65 = v86;
  v67 = v83;
  v66 = v84;
  View.buttonStyle<A>(_:)();
  (*(v104 + 8))(v62, v64);
  (*(v93 + 8))(v61, v65);
  *&v121 = v65;
  *(&v121 + 1) = v64;
  *&v122 = v66;
  *(&v122 + 1) = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = v82;
  v70 = v90;
  sub_1000EE87C(v63, v90, OpaqueTypeConformance2);
  v71 = v89;
  v72 = *(v89 + 8);
  v72(v63, v70);
  v73 = v106;
  v74 = v80;
  sub_10000BEB8(v106, v80, &qword_100223418);
  *&v121 = v74;
  (*(v71 + 16))(v63, v69, v70);
  *(&v121 + 1) = v63;
  v120[0] = v81;
  v120[1] = v70;
  v118 = sub_100183658();
  v119 = OpaqueTypeConformance2;
  sub_1000E76FC(&v121, 2uLL, v120);
  v72(v69, v70);
  sub_1000050C4(v73, &qword_100223418);
  v72(v63, v70);
  return sub_1000050C4(v74, &qword_100223418);
}

uint64_t sub_10017E100(uint64_t a1)
{
  v2 = type metadata accessor for MusicEventView();
  sub_100173C74(v2);
  sub_1001671AC();

  sub_100173C74(v2);
  if (*(a1 + 16))
  {

    sub_100167BA0(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10017E1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a7;
  v48 = a8;
  v45 = a4;
  v46 = a5;
  v49 = a2;
  v50 = a9;
  v44 = a1;
  swift_getAssociatedTypeWitness();
  v41 = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  __chkstk_darwin(v12 - 8);
  v43 = &v38 - v13;
  v42 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v40 = &v38 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v51 = v14;
  v52 = AssociatedTypeWitness;
  v38 = AssociatedConformanceWitness;
  v39 = AssociatedTypeWitness;
  v53 = AssociatedConformanceWitness;
  v54 = v18;
  v19 = type metadata accessor for PromotionalAssetsEntryViewModel();
  __chkstk_darwin(v19 - 8);
  v21 = &v38 - v20;
  v51 = v14;
  v52 = AssociatedTypeWitness;
  v53 = AssociatedConformanceWitness;
  v54 = v18;
  v22 = type metadata accessor for PromotionalAssetsEntryView();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v38 - v27;
  v29 = v40;
  (*(v15 + 16))(v40, v44, v14);
  v51 = v41;
  v52 = v45;
  v53 = v46;
  v54 = v42;
  v55 = v47;
  v56 = v48;
  v30 = type metadata accessor for MusicEventView();
  sub_100173C74(v30);
  v31 = v43;
  sub_100162CA8(v43);

  v32 = v31;
  v34 = v38;
  v33 = v39;
  sub_100114C48(v29, v32, 0, v14, v21);
  sub_100123D40(v21, *&v14, v33, v34, v26);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v26, v22, WitnessTable);
  v36 = *(v23 + 8);
  v36(v26, v22);
  sub_1000EE87C(v28, v22, WitnessTable);
  return (v36)(v28, v22);
}

uint64_t sub_10017E648(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = type metadata accessor for MusicEventView();
  sub_100173C74(v3);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  sub_1001610C0(v4);
}

uint64_t sub_10017E6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v106 = a6;
  v107 = a7;
  v104 = a4;
  v105 = a5;
  v102 = a1;
  v103 = a3;
  v100 = a8;
  v99 = sub_1000024C4(&qword_1002245E0);
  __chkstk_darwin(v99);
  v98 = &v77 - v9;
  v97 = sub_1000024C4(&qword_1002245E8);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v92 = &v77 - v10;
  v96 = sub_1000024C4(&qword_1002245F0);
  v91 = *(v96 - 8);
  __chkstk_darwin(v96);
  v90 = &v77 - v11;
  v83 = type metadata accessor for EnvironmentValues();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000024C4(&qword_1002245F8);
  v14 = __chkstk_darwin(v13 - 8);
  v93 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = &v77 - v16;
  v17 = sub_1000024C4(&qword_100224600);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v88 = &v77 - v19;
  v20 = type metadata accessor for ToolbarItemPlacement();
  v21 = __chkstk_darwin(v20 - 8);
  v89 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v85 = &v77 - v23;
  v24 = sub_1000024C4(&qword_100224608);
  v87 = *(v24 - 8);
  __chkstk_darwin(v24);
  v86 = &v77 - v25;
  v26 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v26 - 8);
  v28 = &v77 - v27;
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000024C4(&qword_100224610);
  v34 = __chkstk_darwin(v33 - 8);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v77 - v37;
  v101 = a2;
  v108 = a2;
  v109 = v103;
  v110 = v104;
  v111 = v105;
  v112 = v106;
  v113 = v107;
  v84 = type metadata accessor for MusicEventView();
  sub_100173C74(v84);
  sub_100163270();

  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1000050C4(v28, &qword_1002214F8);
    (*(v18 + 56))(v36, 1, 1, v17);
    v39 = sub_10000BFFC(&qword_100224618, &qword_100224608);
    v108 = v24;
    v109 = v39;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v36, &qword_100224610);
    v40 = v102;
  }

  else
  {
    v79 = v17;
    v80 = v38;
    (*(v30 + 32))(v32, v28, v29);
    v41 = static Solarium.isEnabled.getter();
    v78 = v29;
    if (v41)
    {
      v42 = static ToolbarItemPlacement.topBarLeading.getter();
    }

    else
    {
      v42 = static ToolbarItemPlacement.topBarTrailing.getter();
    }

    __chkstk_darwin(v42);
    v44 = v103;
    v43 = v104;
    *(&v77 - 8) = v101;
    *(&v77 - 7) = v44;
    *(&v77 - 6) = v43;
    v45 = v106;
    *(&v77 - 5) = v105;
    *(&v77 - 4) = v45;
    *(&v77 - 3) = v107;
    *(&v77 - 2) = v32;
    v85 = v32;
    v40 = v102;
    *(&v77 - 1) = v102;
    sub_1000024C4(&qword_100224630);
    sub_10008B204();
    v46 = v86;
    ToolbarItem<>.init(placement:content:)();
    v47 = sub_10000BFFC(&qword_100224618, &qword_100224608);
    v48 = v88;
    v49 = v24;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v50 = v79;
    (*(v18 + 16))(v36, v48, v79);
    (*(v18 + 56))(v36, 0, 1, v50);
    v108 = v49;
    v109 = v47;
    swift_getOpaqueTypeConformance2();
    v51 = v80;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v36, &qword_100224610);
    v52 = v48;
    v38 = v51;
    (*(v18 + 8))(v52, v50);
    (*(v87 + 8))(v46, v49);
    (*(v30 + 8))(v85, v78);
  }

  v53 = *(v40 + 16);
  v54 = v94;
  if (v53)
  {
    if (*(v53 + 88) && (*(v53 + 80) & 1) != 0)
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v55 & 1) == 0)
      {
        if (*(v53 + 32) > 1u || *(v53 + 32))
        {
          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v70 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v71 = v40 + *(v84 + 80);
        v72 = *v71;
        if (*(v71 + 8) == 1)
        {
          if ((v72 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {

          static os_log_type_t.fault.getter();
          v73 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v74 = v81;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_10001BC5C(v72, 0);
          (*(v82 + 8))(v74, v83);
          if (v108 != 1)
          {
LABEL_23:
            v75 = v93;
            (*(v95 + 56))(v93, 1, 1, v97);
            v76 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
            v108 = v96;
            v109 = v76;
            swift_getOpaqueTypeConformance2();
            static ToolbarContentBuilder.buildIf<A>(_:)();
            sub_1000050C4(v75, &qword_1002245F8);
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
    }

LABEL_14:
    v56 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v56);
    v58 = v103;
    v57 = v104;
    *(&v77 - 8) = v101;
    *(&v77 - 7) = v58;
    *(&v77 - 6) = v57;
    v59 = v106;
    *(&v77 - 5) = v105;
    *(&v77 - 4) = v59;
    *(&v77 - 3) = v107;
    *(&v77 - 2) = v40;
    sub_10008B1A4();
    v60 = v90;
    ToolbarItem<>.init(placement:content:)();
    v61 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
    v62 = v92;
    v63 = v96;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v64 = v95;
    v65 = v93;
    v66 = v97;
    (*(v95 + 16))(v93, v62, v97);
    (*(v64 + 56))(v65, 0, 1, v66);
    v108 = v63;
    v109 = v61;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v65, &qword_1002245F8);
    (*(v64 + 8))(v62, v66);
    (*(v91 + 8))(v60, v63);
LABEL_15:
    v67 = v98;
    v68 = *(v99 + 48);
    sub_10000BEB8(v38, v98, &qword_100224610);
    sub_10000BEB8(v54, v67 + v68, &qword_1002245F8);
    TupleToolbarContent.init(_:)();
    sub_1000050C4(v54, &qword_1002245F8);
    return sub_1000050C4(v38, &qword_100224610);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10017F4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a7;
  v32 = a8;
  v29 = a1;
  v30 = a6;
  v33 = a9;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v13 = type metadata accessor for MusicEventView();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for ShareButton();
  __chkstk_darwin(v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 16))(v19, v29, v20);
  (*(v14 + 16))(v16, a2, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a3;
  *(v22 + 3) = a4;
  v23 = v30;
  v24 = v31;
  *(v22 + 4) = a5;
  *(v22 + 5) = v23;
  v25 = v32;
  *(v22 + 6) = v24;
  *(v22 + 7) = v25;
  (*(v14 + 32))(&v22[v21], v16, v13);
  v26 = &v19[*(v17 + 20)];
  *v26 = sub_100182E7C;
  v26[1] = v22;
  sub_1001831E4(&qword_100224640, type metadata accessor for ShareButton);
  View.accessibilityIdentifier(_:)();
  return sub_100183318(v19, type metadata accessor for ShareButton);
}

uint64_t sub_10017F770(uint64_t a1)
{
  v2 = type metadata accessor for MusicEventView();
  sub_100173C74(v2);
  v3 = *(a1 + 16);
  if (v3)
  {

    sub_100167864(0, 1, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10017F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a6;
  v23 = a7;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v14 = type metadata accessor for MusicEventView();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  (*(v15 + 16))(&v22 - v16, a1, v14);
  v18 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v20 = v23;
  *(v19 + 6) = v22;
  *(v19 + 7) = v20;
  result = (*(v15 + 32))(&v19[v18], v17, v14);
  *a8 = 0;
  *(a8 + 8) = sub_100182E98;
  *(a8 + 16) = v19;
  return result;
}

uint64_t sub_10017F9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for DismissAction();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v18 = type metadata accessor for MusicEventView();
  sub_100173C74(v18);
  v19 = *(a1 + 16);
  if (v19)
  {

    sub_100167864(0, 2, 0, 3u, v19);

    sub_100039CB8(v17);
    DismissAction.callAsFunction()();
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10017FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for AppleMusicFetcher();
  v9 = sub_1001831E4(&qword_100221760, type metadata accessor for AppleMusicFetcher);
  v21 = a2;
  v22 = v8;
  v23 = a5;
  v24 = v9;
  v10 = type metadata accessor for PromotionalAssetsView();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  v21 = a2;
  v22 = v8;
  v23 = a5;
  v24 = v9;
  type metadata accessor for PromotionalAssetsViewModel();
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  v21 = v17;
  sub_100010B3C(a1, &v21);

  sub_1000CD368(v14);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v14, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_1000EE87C(v16, v10, WitnessTable);
  return v19(v16, v10);
}

uint64_t sub_10017FD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v50 = a2;
  v48 = a1;
  v54 = a9;
  v53 = *(a5 - 8);
  v15 = __chkstk_darwin(a1);
  v52 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v17 - 8);
  __chkstk_darwin(v15);
  v49 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Optional();
  v44 = *(v19 - 8);
  v45 = v19;
  v20 = __chkstk_darwin(v19);
  v43 = &v42 - v21;
  v22 = *(a3 - 8);
  __chkstk_darwin(v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a3;
  v56 = a4;
  v42 = a5;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  v25 = a7;
  v26 = type metadata accessor for MusicEventView();
  v47 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v46 = &v42 - v30;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v59 = v25;
  v60 = a8;
  type metadata accessor for MusicEventViewModel();
  (*(v22 + 16))(v24, v48, a3);
  v31 = sub_100173C74(v26);
  v32 = v43;
  (*(v44 + 16))(v43, v31 + *(*v31 + 208), v45);

  v33 = sub_100173C74(v26);
  v34 = v49;
  (*(v51 + 16))(v49, v33 + *(*v33 + 216), a4);

  v35 = sub_100173C74(v26);
  v36 = v52;
  (*(v53 + 16))(v52, v35 + *(*v35 + 224), v42);

  sub_100160920(v24, v32, v34, v36);
  KeyPath = swift_getKeyPath();
  sub_100173A6C(KeyPath, 0, v29);
  WitnessTable = swift_getWitnessTable();
  v39 = v46;
  sub_1000EE87C(v29, v26, WitnessTable);
  v40 = *(v47 + 8);
  v40(v29, v26);
  sub_1000EE87C(v39, v26, WitnessTable);
  return v40(v39, v26);
}

uint64_t sub_100180250(uint64_t a1)
{
  v2 = type metadata accessor for MusicEventView();
  sub_100173C74(v2);
  if (*(a1 + 16))
  {

    sub_100167760(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100180324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[284] = v14;
  v8[283] = a8;
  v8[277] = a7;
  v8[271] = a6;
  v8[265] = a5;
  v8[259] = a4;
  v8[253] = a3;
  v8[247] = a4;
  v8[248] = a5;
  v8[249] = a6;
  v8[250] = a7;
  v8[251] = a8;
  v8[252] = v14;
  v9 = type metadata accessor for MusicEventView();
  v8[285] = v9;
  v10 = *(v9 - 8);
  v8[286] = v10;
  v8[287] = *(v10 + 64);
  v8[288] = swift_task_alloc();
  v8[289] = swift_task_alloc();
  v8[290] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[291] = static MainActor.shared.getter();
  v8[292] = dispatch thunk of Actor.unownedExecutor.getter();
  v8[293] = v11;

  return _swift_task_switch(sub_100180478);
}

uint64_t sub_100180478()
{
  v20 = v0[289];
  v21 = v0[288];
  v1 = v0[286];
  v16 = v0[285];
  v17 = v0[290];
  v25 = v0[284];
  v2 = v0[283];
  v18 = v2;
  v3 = v0[277];
  v4 = v0[271];
  v23 = v3;
  v5 = v0[265];
  v6 = v0[259];
  v24 = v0[253];
  v19 = *(v1 + 16);
  v19();
  v7 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v8 = swift_allocObject();
  v0[294] = v8;
  *(v8 + 2) = v6;
  *(v8 + 3) = v5;
  *(v8 + 4) = v4;
  *(v8 + 5) = v3;
  *(v8 + 6) = v2;
  *(v8 + 7) = v25;
  v22 = *(v1 + 32);
  v22(&v8[v7], v17, v16);
  v9 = swift_task_alloc();
  v0[295] = v9;
  *(v9 + 16) = &unk_1001C27F0;
  *(v9 + 24) = v8;
  swift_asyncLet_begin();
  (v19)(v20, v24, v16);
  v10 = swift_allocObject();
  v0[296] = v10;
  *(v10 + 2) = v6;
  *(v10 + 3) = v5;
  *(v10 + 4) = v4;
  *(v10 + 5) = v3;
  *(v10 + 6) = v18;
  *(v10 + 7) = v25;
  v22(&v10[v7], v20, v16);
  v11 = swift_task_alloc();
  v0[297] = v11;
  *(v11 + 16) = &unk_1001C2808;
  *(v11 + 24) = v10;
  swift_asyncLet_begin();
  (v19)(v21, v24, v16);
  v12 = swift_allocObject();
  v0[298] = v12;
  *(v12 + 2) = v6;
  *(v12 + 3) = v5;
  *(v12 + 4) = v4;
  *(v12 + 5) = v23;
  *(v12 + 6) = v18;
  *(v12 + 7) = v25;
  v22(&v12[v7], v21, v16);
  v13 = swift_task_alloc();
  v0[299] = v13;
  *(v13 + 16) = &unk_1001C2820;
  *(v13 + 24) = v12;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v14, sub_1001807A8, v0 + 242);
}

uint64_t sub_1001807FC()
{
  sub_100173C74(*(v0 + 2280));
  sub_1001655AC();

  return _swift_asyncLet_finish(v0 + 1296, v1, sub_100180878, v0 + 2128);
}

uint64_t sub_100180894()
{

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100180908, v0 + 2176);
}

uint64_t sub_100180924()
{

  return _swift_asyncLet_finish(v0 + 16, v1, sub_100180998, v0 + 2224);
}

uint64_t sub_1001809B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100180A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return _swift_task_switch(sub_100180A8C);
}

uint64_t sub_100180A8C()
{
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100180B20);
}

uint64_t sub_100180B20()
{
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v4 = *(v0 + 104);

  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v1 = type metadata accessor for MusicEventView();
  *(v0 + 128) = sub_100173C74(v1);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_100184480;

  return sub_1001671C8();
}

uint64_t sub_100180BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = a7;
  v7[8] = v14;
  v15 = type metadata accessor for MusicEventView();
  *v14 = v7;
  v14[1] = sub_100180CD4;

  return sub_100180DC8(v15);
}

uint64_t sub_100180CD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100180DC8(uint64_t a1)
{
  v2[253] = v1;
  v2[247] = a1;
  v3 = *(a1 - 8);
  v2[259] = v3;
  v2[265] = *(v3 + 64);
  v2[271] = swift_task_alloc();
  v2[277] = swift_task_alloc();
  v2[278] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[279] = static MainActor.shared.getter();
  v2[280] = dispatch thunk of Actor.unownedExecutor.getter();
  v2[281] = v4;

  return _swift_task_switch(sub_100180ED4);
}

uint64_t sub_100180ED4()
{
  v1 = v0[253];
  sub_100173C74(v0[247]);
  if (*(v1 + 16))
  {

    v3 = sub_100169934(v2);

    if ((v3 & 1) != 0 || (sub_100173C74(v0[247]), v4 = , v5 = sub_10016993C(v4), , , (v5) || (sub_100173C74(v0[247]), v6 = , v7 = sub_100164F24(v6), , , (v7)) && (sub_100173C74(v0[247]), v8 = sub_100163044(), v10 = v9, , v10))
    {
      v11 = v0[278];
      v42 = v0[277];
      v45 = v0[271];
      v12 = v0[265];
      v40 = v8;
      v13 = v0[259];
      v14 = v0[253];
      v15 = v0[247];
      v49 = v14;
      sub_100173C74(v15);

      v17 = sub_10007D594(v16);
      v43 = v18;
      v44 = v17;

      v48 = *(v13 + 16);
      v48(v11, v14, v15);
      v19 = (*(v13 + 80) + 64) & ~*(v13 + 80);
      v20 = (v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v0[282] = v21;
      v22 = &v21[v20];
      v38 = v15[2];
      *(v21 + 2) = v38;
      v37 = v15[3];
      *(v21 + 3) = v37;
      v36 = v15[4];
      *(v21 + 4) = v36;
      v35 = v15[5];
      *(v21 + 5) = v35;
      v47 = v15[6];
      *(v21 + 6) = v47;
      v46 = v15[7];
      *(v21 + 7) = v46;
      v23 = *(v13 + 32);
      v23(&v21[v19], v11, v15);
      *v22 = v40;
      v22[1] = v10;
      v24 = swift_task_alloc();
      v0[283] = v24;
      *(v24 + 16) = &unk_1001C2840;
      *(v24 + 24) = v21;
      swift_asyncLet_begin();
      v48(v42, v49, v15);
      v25 = swift_allocObject();
      v0[284] = v25;
      *&v26 = v38;
      *(&v26 + 1) = v37;
      v41 = v26;
      *&v27 = v36;
      *(&v27 + 1) = v35;
      v39 = v27;
      *(v25 + 16) = v26;
      *(v25 + 32) = v27;
      *(v25 + 48) = v47;
      *(v25 + 56) = v46;
      v23((v25 + v19), v42, v15);
      v28 = (v25 + v20);
      *v28 = v44;
      v28[1] = v43;
      v29 = swift_task_alloc();
      v0[285] = v29;
      *(v29 + 16) = &unk_1001C2858;
      *(v29 + 24) = v25;
      swift_asyncLet_begin();
      v48(v45, v49, v15);
      v30 = swift_allocObject();
      v0[286] = v30;
      *(v30 + 16) = v41;
      *(v30 + 32) = v39;
      *(v30 + 48) = v47;
      *(v30 + 56) = v46;
      v23((v30 + v19), v45, v15);
      v31 = swift_task_alloc();
      v0[287] = v31;
      *(v31 + 16) = &unk_1001C2870;
      *(v31 + 24) = v30;
      swift_asyncLet_begin();

      return _swift_asyncLet_get(v0 + 2, v32, sub_100181420, v0 + 242);
    }

    else
    {

      v33 = v0[1];

      return v33();
    }
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_100181490()
{

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100181504, v0 + 2128);
}

uint64_t sub_100181520()
{

  return _swift_asyncLet_finish(v0 + 16, v1, sub_100181594, v0 + 2176);
}

uint64_t sub_1001815B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100181648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return _swift_task_switch(sub_100181674);
}

uint64_t sub_100181674()
{
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100181708);
}

uint64_t sub_100181708()
{
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v4 = *(v0 + 104);

  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v1 = type metadata accessor for MusicEventView();
  *(v0 + 128) = sub_100173C74(v1);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_100184480;

  return sub_100166C00();
}

uint64_t sub_1001817DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v10;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v8[8] = a1;
  return _swift_task_switch(sub_100181814);
}

uint64_t sub_100181814()
{
  type metadata accessor for MainActor();
  *(v0 + 136) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001818A8);
}

uint64_t sub_1001818A8()
{
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v6 = *(v0 + 120);

  *(v0 + 16) = v8;
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  v1 = type metadata accessor for MusicEventView();
  *(v0 + 144) = sub_100173C74(v1);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_100181984;
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  return sub_10016577C(v4, v3);
}

uint64_t sub_100181984()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100181A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v10;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v8[8] = a1;
  return _swift_task_switch(sub_100181ACC);
}

uint64_t sub_100181ACC()
{
  type metadata accessor for MainActor();
  *(v0 + 136) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100181B60);
}

uint64_t sub_100181B60()
{
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v6 = *(v0 + 120);

  *(v0 + 16) = v8;
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  v1 = type metadata accessor for MusicEventView();
  *(v0 + 144) = sub_100173C74(v1);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_100184484;
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  return sub_100165E58(v4, v3);
}

uint64_t sub_100181C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return _swift_task_switch(sub_100181C68);
}

uint64_t sub_100181C68()
{
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100181CFC);
}

uint64_t sub_100181CFC()
{
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v4 = *(v0 + 104);

  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v1 = type metadata accessor for MusicEventView();
  *(v0 + 128) = sub_100173C74(v1);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_100181DD0;

  return sub_100164F60();
}

uint64_t sub_100181DD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 sub_100181F50(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_100181FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for MusicEventView() - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_10017FD98(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_1001820C4()
{
  v1 = type metadata accessor for MusicEventView();
  v2 = (*(*(v1 - 1) + 80) + 80) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[18];
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[19];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_10001BC5C(*(v3 + v1[20]), *(v3 + v1[20] + 8));
  return swift_deallocObject();
}

uint64_t sub_100182298()
{
  v2 = v0[4];
  v14 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v1[2] = v2;
  v1[3] = v14;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = *(type metadata accessor for MusicEventView() - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = swift_task_alloc();
  v1[8] = v11;
  *v11 = v1;
  v11[1] = sub_1001844BC;

  return sub_100180324(v9, v10, v0 + v8, v2, v14, v3, v4, v5);
}

uint64_t sub_1001823CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for MusicEventView() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1001844BC;

  return sub_100180A60(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1001824E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for MusicEventView() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1001844BC;

  return sub_100180BF4(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100182604()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for MusicEventView() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1001844BC;

  return sub_100181648(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100182724()
{
  v2 = v0[2];
  v15 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v1[2] = v2;
  v1[3] = v15;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = *(type metadata accessor for MusicEventView() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  v1[8] = v12;
  *v12 = v1;
  v12[1] = sub_100180CD4;

  return sub_1001817DC(v0 + v8, v10, v11, v2, v15, v3, v4, v5);
}

uint64_t sub_100182888()
{
  v1 = type metadata accessor for MusicEventView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80));

  v3 = v1[18];
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[19];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_10001BC5C(*(v2 + v1[20]), *(v2 + v1[20] + 8));

  return swift_deallocObject();
}

uint64_t sub_100182A6C()
{
  v2 = v0[2];
  v15 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v1[2] = v2;
  v1[3] = v15;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = *(type metadata accessor for MusicEventView() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  v1[8] = v12;
  *v12 = v1;
  v12[1] = sub_1001844BC;

  return sub_100181A94(v0 + v8, v10, v11, v2, v15, v3, v4, v5);
}

uint64_t sub_100182BD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for MusicEventView() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1001844BC;

  return sub_100181C3C(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100182D14@<X0>(BOOL *a1@<X8>)
{
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  ScrollGeometry.contentOffset.getter();
  v5 = v3 + v4;
  result = static Solarium.isEnabled.getter();
  v7 = 4.0;
  if (result)
  {
    v7 = 8.0;
  }

  *a1 = v5 > v7;
  return result;
}

uint64_t sub_100182EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for MusicEventView() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_10017C79C(v10, v3, v4, v5, v6, v7, v8, a1);
}

uint64_t sub_100182FA8(char a1)
{
  type metadata accessor for MusicEventView();

  return sub_10017CE7C(a1);
}

unint64_t sub_10018306C()
{
  result = qword_10022AD58;
  if (!qword_10022AD58)
  {
    sub_10000460C(&qword_10022AD48);
    sub_1001830F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AD58);
  }

  return result;
}

unint64_t sub_1001830F8()
{
  result = qword_10022AD60;
  if (!qword_10022AD60)
  {
    sub_10000460C(&qword_10022AD50);
    sub_10000BFFC(&qword_10022AD68, &qword_10022AD70);
    sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AD60);
  }

  return result;
}

uint64_t sub_1001831E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018324C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001832B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromotionalPlaylistModule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100183318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100183378()
{
  v1 = type metadata accessor for MusicEventView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80));

  v3 = v1[18];
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[19];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_10001BC5C(*(v2 + v1[20]), *(v2 + v1[20] + 8));
  return swift_deallocObject();
}

uint64_t sub_10018355C(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(type metadata accessor for MusicEventView() - 8);
  v9 = v1 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return a1(v9, v2, v3, v4, v5, v6, v7);
}

unint64_t sub_100183658()
{
  result = qword_1002234B0;
  if (!qword_1002234B0)
  {
    sub_10000460C(&qword_100223418);
    sub_10005D968();
    sub_1001831E4(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002234B0);
  }

  return result;
}

uint64_t sub_100183714()
{
  type metadata accessor for NavigationPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  sub_1000ED714();
  swift_getWitnessTable();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AD48);
  sub_10000460C(&qword_100223418);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_1001831E4(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_1002230D0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_10000460C(&qword_100224648);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  type metadata accessor for DetailsModule();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicModule();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistModule();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  type metadata accessor for UpcomingModule();
  type metadata accessor for Optional();
  sub_10000460C(&qword_1002245B8);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_10001877C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002245C0);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_1002245C8, &qword_1002245C0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AppleMusicFetcher();
  sub_1001831E4(&qword_100221760, type metadata accessor for AppleMusicFetcher);
  type metadata accessor for PromotionalAssetsView();
  swift_getWitnessTable();
  sub_1001831E4(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for MusicEventView();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001844C4@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for URLComponents();
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_10022AD90);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_1000024C4(&qword_1002214F8);
  v9 = __chkstk_darwin(v8 - 8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.scheme.getter();
  if (v17)
  {

    (*(v14 + 16))(v12, v1, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
  }

  else
  {
    v32 = 0x2F2F3A7370747468;
    v33 = 0xE800000000000000;
    v18._countAndFlagsBits = URL.absoluteString.getter();
    String.append(_:)(v18);

    URL.init(string:)();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000050C4(v12, &qword_1002214F8);
      return (*(v14 + 16))(a1, v1, v13);
    }
  }

  v29 = a1;
  v20 = *(v14 + 32);
  v20(v16, v12, v13);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v21 = *(v31 + 48);
  if (!v21(v7, 1, v3))
  {
    URLComponents.scheme.setter();
  }

  if (!v21(v7, 1, v3))
  {
    URLComponents.host.setter();
  }

  if (!v21(v7, 1, v3))
  {
    URL.path.getter();
    URLComponents.path.setter();
  }

  if (v21(v7, 1, v3))
  {
    v22 = v30;
    (*(v14 + 56))(v30, 1, 1, v13);
    v23 = v29;
    goto LABEL_15;
  }

  v24 = v31;
  v25 = v28;
  (*(v31 + 16))(v28, v7, v3);
  v22 = v30;
  URLComponents.url.getter();
  (*(v24 + 8))(v25, v3);
  v26 = (*(v14 + 48))(v22, 1, v13) == 1;
  v23 = v29;
  if (v26)
  {
LABEL_15:
    v20(v23, v16, v13);
    if ((*(v14 + 48))(v22, 1, v13) != 1)
    {
      sub_1000050C4(v22, &qword_1002214F8);
    }

    return sub_1000050C4(v7, &qword_10022AD90);
  }

  v27 = v29;
  (*(v14 + 8))(v16, v13);
  v20(v27, v22, v13);
  return sub_1000050C4(v7, &qword_10022AD90);
}

uint64_t sub_100184A0C()
{
  v1 = (v0 + *(type metadata accessor for UniversalLinkRouter() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = sub_100184AD4();
    v9[0] = v2;
    v9[1] = v3;
    __chkstk_darwin(v5);
    v8[2] = v9;
    v6 = sub_100189354(sub_10018553C, v8, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *sub_100184AD4()
{
  v0 = sub_10008CAF4(0);
  if (*(v0 + 16) && (v1 = sub_10005846C(0xD00000000000002DLL, 0x80000001001C8890), (v2 & 1) != 0))
  {
    sub_100026D04(*(v0 + 56) + 32 * v1, v5);

    sub_1000024C4(&qword_1002251F0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100184B94()
{
  v1 = type metadata accessor for UniversalLinkRouter();
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10018A620();
  if (v5)
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = (v0 + *(v1 + 20));
    v13 = *v12;
    v14 = v12[1];
    type metadata accessor for RemoteViewConfiguration();
    v15 = swift_allocObject();
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
    *(v15 + 32) = v10;
    *(v15 + 40) = v11;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = v13;
    *(v15 + 72) = v14;

    v16 = sub_10008FCBC(v13, v14);
    result = v15;
    *(v15 + 80) = v16;
    *(v15 + 88) = v18;
  }

  else
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000BE10(v19, qword_100239158);
    sub_100185434(v0, v3);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315138;
      type metadata accessor for URL();
      sub_1001854F4(&qword_100223E18, &type metadata accessor for URL);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_100185498(v3);
      v27 = sub_100139F7C(v24, v26, &v29);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "No remote configuration, not creating remote handle for %s", v22, 0xCu);
      sub_100012A7C(v23);
    }

    else
    {

      sub_100185498(v3);
    }

    return 0;
  }

  return result;
}

id sub_100184E24()
{
  v0 = sub_100184B94();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for RemoteViewConfiguration();
    sub_1001854F4(&qword_10022AD88, type metadata accessor for RemoteViewConfiguration);
    v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v8 = v7;

    v9 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    sub_1000024C4(&qword_100227390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B49B0;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v6;
    *(inited + 80) = v8;
    sub_10006E18C(v6, v8);
    sub_1001A9F5C(inited);
    swift_setDeallocating();
    sub_1000050C4(inited + 32, &unk_10022BBD0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 setUserInfo:{isa, 0xD000000000000013, 0x80000001001C5A90}];

    sub_1000606F8(v6, v8);

    return v9;
  }

  else
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BE10(v2, qword_100239158);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to encode remote configuration context for alert configuration", v5, 2u);
    }

    return 0;
  }
}

id sub_1001850F0()
{
  v0 = sub_100184B94();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for RemoteViewConfiguration();
    sub_1001854F4(&qword_10022AD88, type metadata accessor for RemoteViewConfiguration);
    v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v8 = v7;

    v9 = objc_allocWithZone(NSUserActivity);
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 initWithActivityType:{v10, v1}];

    sub_1000024C4(&qword_100227390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B49B0;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v6;
    *(inited + 80) = v8;
    sub_10006E18C(v6, v8);
    sub_1001A9F5C(inited);
    swift_setDeallocating();
    sub_1000050C4(inited + 32, &unk_10022BBD0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 setUserInfo:{isa, 0xD000000000000013, 0x80000001001C5A90}];

    sub_1000606F8(v6, v8);

    return v11;
  }

  else
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BE10(v2, qword_100239158);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to encode remote configuration context for user activity", v5, 2u);
    }

    return 0;
  }
}

uint64_t type metadata accessor for UniversalLinkRouter()
{
  result = qword_10022ADF0;
  if (!qword_10022ADF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100185434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalLinkRouter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100185498(uint64_t a1)
{
  v2 = type metadata accessor for UniversalLinkRouter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001854F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100185570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_100185644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

uint64_t sub_100185700()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100185774(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1001857B8()
{
  v1 = *(v0 + 32);
  v16 = *(v0 + 48);
  v17 = v1;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = type metadata accessor for AppStoreComponent.AppStoreCoordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_subtitle] = *(v0 + 32);
  sub_1000024C4(&qword_10022AF00);
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 16) = v16;
  *&v7[OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_metricsQuery] = v8;
  if (v2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = v3;
    v10 = sub_100187480;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_1000024C4(&qword_10022AF08);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *&v7[OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_onOpen] = v11;
  v12 = &v7[OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_onStateChange];
  *v12 = v5;
  v12[1] = v4;
  sub_10018738C(&v17, v15);
  sub_10018738C(&v16, v15);
  sub_100115AD4(v2);
  sub_100115AD4(v5);
  v14.receiver = v7;
  v14.super_class = v6;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_10018592C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000024C4(&qword_10022AF18);
  UIViewRepresentableContext.coordinator.getter();
  [v4 setDelegate:v14];

  v6 = objc_allocWithZone(ASCAdamID);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithStringValue:v7];

  v9 = ASCLockupKindApp;
  v10 = ASCLockupContextStandard;
  if (*(v1 + 24))
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() _requestWithID:v8 kind:v9 context:v10 productVariantID:v11];

  [v4 setRequest:v12];
  return v4;
}

void sub_100185AFC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_metricsQuery);
  os_unfair_lock_lock((v1 + 32));
  sub_1001873FC((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  v2 = *(v0 + OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_onOpen);
  os_unfair_lock_lock((v2 + 32));
  sub_100187444((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_100185B98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_100060604(v6);
  }

  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = sub_100187480;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_100115AD4(a2);
}

uint64_t sub_100185C70(void *a1, void *a2)
{
  v45 = a1;
  v4 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v4 - 8);
  v6 = v43 - v5;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v43[1] = v8 + 56;
  v44 = v9;
  v9(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = a2;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  sub_1001907E0(0, 0, v6, &unk_1001C2AE8, v13);

  v14 = *&v10[OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_onOpen];
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100187474;
    *(v18 + 24) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100187474;
    *(v19 + 24) = v17;
    *(v14 + 16) = sub_100187480;
    *(v14 + 24) = v19;

    os_unfair_lock_unlock((v14 + 32));
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100187244;
    *(v20 + 24) = v18;
    v21 = sub_10018721C;
  }

  else
  {
    os_unfair_lock_unlock((v14 + 32));
    v21 = 0;
    v20 = 0;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    goto LABEL_6;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {
LABEL_6:

      goto LABEL_8;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      return sub_100060604(v21);
    }
  }

LABEL_8:
  if (v15)
  {
    v28 = [objc_opt_self() mainBundle];
    v46._object = 0xE000000000000000;
    v29._object = 0x80000001001C8970;
    v29._countAndFlagsBits = 0xD000000000000026;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v46);

    v31 = objc_opt_self();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 textMetadataWithTitle:v32 subtitle:0];

    v44(v6, 1, 1, v7);
    v34 = v33;
    sub_100115AD4(v21);
    v35 = v45;
    v36 = static MainActor.shared.getter();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = &protocol witness table for MainActor;
    v37[4] = v34;
    v37[5] = v21;
    v37[6] = v20;
    v37[7] = v35;
    sub_1001904E0(0, 0, v6, &unk_1001C2AF8, v37);

    sub_100060604(v21);
  }

  return result;
}

uint64_t sub_100186134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001861D0);
}

uint64_t sub_1001861D0()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtCV16EventViewService17AppStoreComponent19AppStoreCoordinator_onStateChange);
  if (v2)
  {
    v2(*(v0 + 32));
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100186268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100186304);
}

uint64_t sub_100186304()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = objc_allocWithZone(ASCLocalOffer);
  v0[6] = v3;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100185774;
  v0[5] = &unk_100219C40;
  v6 = _Block_copy(v0 + 2);

  v7 = [v5 initWithMetadata:v4 action:v6];
  _Block_release(v6);
  v8 = [v1 lockup];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lockupWithOffer:v7];
  }

  else
  {
    v10 = 0;
  }

  [v0[11] setLockup:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001864F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100186594);
}

uint64_t sub_100186594()
{
  v1 = v0;
  v2 = *(v0 + 16);

  v3 = [v2 lockup];
  if (v3)
  {
    v4 = v3;
    v29 = [v3 id];
    v28 = [v4 kind];
    v27 = [v4 metrics];
    v26 = [v4 icon];
    v5 = [v4 heading];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 title];
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 ageRating];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v1 = v0;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 offer];
    if (v8)
    {
      v25 = String._bridgeToObjectiveC()();

      if (v12)
      {
LABEL_13:
        v24 = String._bridgeToObjectiveC()();

LABEL_16:
        v18 = String._bridgeToObjectiveC()();
        if (v16)
        {
          v19 = String._bridgeToObjectiveC()();
        }

        else
        {
          v19 = 0;
        }

        v23 = *(v1 + 16);
        v20 = [objc_allocWithZone(ASCLockup) initWithID:v29 kind:v28 metrics:v27 icon:v26 heading:v25 title:v24 subtitle:v18 ageRating:v19 offer:v17];
        swift_unknownObjectRelease();

        [v23 setLockup:v20];
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v24 = 0;
    goto LABEL_16;
  }

LABEL_20:
  v21 = *(v1 + 8);

  return v21();
}

void sub_100186A18(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a1;
    sub_1000024C4(&qword_10022AED8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B49B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 48) = v4;
    *(inited + 56) = v3;

    sub_1001AA098(inited);
    swift_setDeallocating();
    sub_100186E40(inited + 32);
    v7 = objc_allocWithZone(ASCMetricsActivity);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithFields:isa];
  }

  else
  {
    v9 = [objc_allocWithZone(ASCMetricsActivity) init];
  }

  *a2 = v9;
}

uint64_t sub_100186C90(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_100186CAC()
{
  sub_1000024C4(&qword_10022AF18);
  UIViewRepresentableContext.coordinator.getter();
  sub_100185AFC();
}

id sub_100186D28@<X0>(void *a1@<X8>)
{
  result = sub_1001857B8();
  *a1 = result;
  return result;
}

uint64_t sub_100186D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100187338();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100186DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100187338();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100186E18()
{
  sub_100187338();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100186E40(uint64_t a1)
{
  v2 = sub_1000024C4(&unk_10022AEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100186EA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100186EF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100012AC8;

  return sub_1001864F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100186FB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100187000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BD00;

  return sub_100186134(a1, v4, v5, v7, v6);
}

uint64_t sub_1001870C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100187110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100012AC8;

  return sub_100186268(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001871E4()
{

  return swift_deallocObject();
}

uint64_t sub_10018726C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100187284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1001872CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100187338()
{
  result = qword_10022AEF8;
  if (!qword_10022AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AEF8);
  }

  return result;
}

uint64_t sub_10018738C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_10022AF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001873FC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_1001875A0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v43 = type metadata accessor for Calendar();
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TimeZone();
  v47 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Date();
  v44 = *(v42 - 8);
  v13 = __chkstk_darwin(v42);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v32 - v17;
  __chkstk_darwin(v16);
  v41 = &v32 - v19;
  Time.dateInterval.getter();
  DateInterval.start.getter();
  v20 = *(v10 + 8);
  v37 = v10 + 8;
  v38 = v9;
  v36 = v20;
  v20(v12, v9);
  v40 = v1;
  Time.timeZone.getter();
  v21 = TimeZone.secondsFromGMT(for:)();
  static Calendar.current.getter();
  Calendar.timeZone.getter();
  v22 = *(v46 + 8);
  v39 = v3;
  v23 = v46 + 8;
  v22(v3, v43);
  v24 = TimeZone.secondsFromGMT(for:)();
  v25 = *(v47 + 8);
  v47 += 8;
  result = v25(v6, v45);
  if (__OFSUB__(v21, v24))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v34 = v22;
    v27 = v45;
    v46 = v23;
    v25(v8, v45);
    v28 = *(v44 + 8);
    v44 += 8;
    v33 = v28;
    v28(v18, v42);
    Time.dateInterval.getter();
    DateInterval.end.getter();
    v36(v12, v38);
    Time.timeZone.getter();
    v29 = TimeZone.secondsFromGMT(for:)();
    v30 = v39;
    static Calendar.current.getter();
    Calendar.timeZone.getter();
    v34(v30, v43);
    v31 = TimeZone.secondsFromGMT(for:)();
    result = v25(v6, v27);
    if (!__OFSUB__(v29, v31))
    {
      Date.addingTimeInterval(_:)();
      v25(v8, v45);
      v33(v15, v42);
      return DateInterval.init(start:end:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100187A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v14 - v8;
  (*(a2 + 104))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1000F57B8(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  if (v11)
  {
    v12 = swift_getAssociatedTypeWitness();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    v14[1] = (*(a2 + 112))(a1, a2);
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
  }
}

uint64_t sub_100187D7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v53 = a3;
  v52 = a2;
  v4 = type metadata accessor for DateInterval();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TimeZone();
  v9 = *(v49 - 8);
  v10 = __chkstk_darwin(v49);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Time();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v43 = *(v19 - 8);
  v44 = v19;
  v20 = __chkstk_darwin(v19);
  v39 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v38 - v23;
  v46 = a1;
  v53(v22);
  Time.timeZone.getter();
  v25 = *(v16 + 8);
  v41 = v16 + 8;
  v42 = v15;
  v38 = v25;
  v25(v18, v15);
  v40 = v14;
  v26 = TimeZone.secondsFromGMT(for:)();
  static Calendar.current.getter();
  Calendar.timeZone.getter();
  (*(v50 + 8))(v8, v51);
  v27 = TimeZone.secondsFromGMT(for:)();
  v28 = *(v9 + 8);
  v29 = v12;
  v30 = v49;
  result = v28(v29, v49);
  if (__OFSUB__(v26, v27))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v32 = v28(v40, v30);
    v53(v32);
    v33 = v45;
    sub_1001875A0(v45);
    v38(v18, v42);
    v34 = v39;
    DateInterval.end.getter();
    (*(v47 + 8))(v33, v48);
    v35 = static Date.> infix(_:_:)();
    v36 = v44;
    v37 = *(v43 + 8);
    v37(v34, v44);
    v37(v24, v36);
    return v35 & 1;
  }

  return result;
}

uint64_t sub_100188334(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = __chkstk_darwin(v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = &_swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v30(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t sub_10018861C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000024C4(&qword_1002211B8);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_1000024C4(&qword_1002218E8);
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_100221738);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for Music.Artist();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100188870);
}

uint64_t sub_100188870()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  Music.lineup.getter();
  v4 = Music.Lineup.headliners.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    (*(v6 + 16))(v5, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    v8 = Music.Artist.id.getter();
    v10 = v9;
    v0[18] = v9;
    (*(v6 + 8))(v5, v7);
    if (qword_100220BF8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for EventService();
    sub_10000BE10(v11, qword_100239108);
    v12 = type metadata accessor for Music();
    v13 = sub_100189214(&qword_1002211D0, &type metadata accessor for Music);
    static EventService.RequestType<>.music.getter();
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_100188B00;
    v15 = v0[11];
    v16 = v0[8];

    return EventService.schedule<A>(participantIdentifier:ofType:)(v15, v8, v10, v16, v12, v13);
  }

  else
  {

    v17 = v0[1];

    return v17(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100188B00()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100188E08;
  }

  else
  {
    v5 = sub_100188C94;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_100188C94()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = ParticipantSchedule.events.getter();
  (*(v2 + 8))(v1, v3);
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_100188334(sub_10018925C, v8, v7, &type metadata accessor for Music, sub_100195864);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_100188E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100188EB8(uint64_t a1)
{
  result = sub_100189214(&qword_10022B010, &type metadata accessor for Music);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001890C0@<X0>(uint64_t *a1@<X8>)
{
  result = Music.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100189104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE494;

  return sub_10018861C();
}

uint64_t sub_100189190(uint64_t a1)
{
  *(a1 + 8) = sub_100189214(&qword_10022B0E8, &type metadata accessor for Music);
  result = sub_100189214(&qword_10022B0F0, &type metadata accessor for Music);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100189214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100189290(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v7 += 4;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_100189354(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL sub_100189400(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  if (a1)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (a1)
  {
    v5 = "events.shazam.apple.com";
  }

  else
  {
    v5 = "upcomingModule";
  }

  v6 = v5 | 0x8000000000000000;
  do
  {
    v7 = v2;
    if (v2-- == 0)
    {
      break;
    }

    if (*v3)
    {
      v9 = 0xD00000000000001BLL;
    }

    else
    {
      v9 = 0xD000000000000017;
    }

    if (*v3)
    {
      v10 = "events.shazam.apple.com";
    }

    else
    {
      v10 = "upcomingModule";
    }

    if (v9 == v4 && (v10 | 0x8000000000000000) == v6)
    {

      return v7 != 0;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v3;
  }

  while ((v12 & 1) == 0);
  return v7 != 0;
}

void *sub_1001894F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000024C4(&qword_100221508);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000024C4(&qword_10022B120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100189664(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_10022B100);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100189770(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_1002241B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10018987C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_1002264D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1001899F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000024C4(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100189BD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_10022B0F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100189D1C(uint64_t a1, uint64_t a2)
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

  sub_1000024C4(&qword_10022B100);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_100189DC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000024C4(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size_0(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100189EC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000024C4(&qword_10022B100);
      v7 = swift_allocObject();
      v8 = j__malloc_size_0(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100189F9C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_10018A008()
{
  v0 = sub_10008CAF4(1);
  if (*(v0 + 16) && (v1 = sub_10005846C(0xD00000000000002CLL, 0x80000001001C89A0), (v2 & 1) != 0))
  {
    sub_100026D04(*(v0 + 56) + 32 * v1, v5);

    sub_1000024C4(&qword_1002251F0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10018A0C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10018A1A0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v21 = a1 + 4;
  for (i = (a1 + 5); ; i += 2)
  {
    v5 = *(i - 1);
    v4 = *i;

    if (v5 == 0x747369747261 && v4 == 0xE600000000000000)
    {
      break;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_24;
    }

    if (v5 == 0x65756E6576 && v4 == 0xE500000000000000)
    {
      break;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_24;
    }

    if (v5 == 0xD000000000000011 && 0x80000001001C42E0 == v4)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_24;
    }

    if (v5 == 0xD000000000000016 && 0x80000001001C4300 == v4)
    {
      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_24;
    }

    if (v1 == ++v2)
    {
      if (v1 != 1)
      {
        v11 = a1[7];
        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = a1[6] & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          v13 = a1[6];

          return v13;
        }
      }

      return 0;
    }
  }

LABEL_24:

  v15 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    return result;
  }

  if (v15 >= v1)
  {
    return 0;
  }

  v16 = &v21[2 * v15];
  v18 = *v16;
  v17 = v16[1];
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    return 0;
  }

  v22._countAndFlagsBits = v5;
  v22._object = v4;
  if (sub_100113330(v22) == 5)
  {

    return 0;
  }

  return v18;
}

uint64_t sub_10018A620()
{
  v0 = type metadata accessor for URLQueryItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000024C4(&qword_10022AD90);
  __chkstk_darwin(v4 - 8);
  v6 = &v77 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = URL.host.getter();
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14._countAndFlagsBits = v11;
  v14._object = v13;
  v15 = _findStringSwitchCase(cases:string:)(&off_100211C20, v14);

  if (v15)
  {
    if (v15 != 1)
    {
      return 0;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (!sub_100189400(v16, &off_100211C98))
  {
    return 0;
  }

  v18 = URL.pathComponents.getter();
  v19 = *(v18 + 16);
  if (!v19 || (sub_100189EC4(v18, v18 + 32, 1, (2 * v19) | 1), v21 = v20, , !v21[2]) || ((v22 = v21[4], v23 = v21[5], v80 = v21, v22 != 0x746E657665) || v23 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    return 0;
  }

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_10018AF58(v6);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v24 = URLComponents.queryItems.getter();
  v25 = _swiftEmptyArrayStorage;
  if (v24)
  {
    v25 = v24;
  }

  v79 = v25;
  v26 = v25[2];
  if (v26)
  {
    v28 = *(v1 + 16);
    v27 = v1 + 16;
    v29 = v79 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v84 = *(v27 + 56);
    v85 = v28;
    v83 = (v27 - 8);
    v86 = _swiftEmptyArrayStorage;
    (v28)(v3, v29, v0);
    while (1)
    {
      v30 = URLQueryItem.name.getter();
      v32 = v31;
      v33._countAndFlagsBits = v30;
      v33._object = v32;
      v34 = _findStringSwitchCase(cases:string:)(&off_100211CC0, v33);

      if (v34 > 2)
      {
        (*v83)(v3, v0);
      }

      else
      {
        v82 = URLQueryItem.value.getter();
        v36 = v35;
        (*v83)(v3, v0);
        v81 = v36;
        if (v36)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = sub_100189BD4(0, *(v86 + 2) + 1, 1, v86);
          }

          v37 = v86;
          v39 = *(v86 + 2);
          v38 = *(v86 + 3);
          v40 = v39 + 1;
          if (v39 >= v38 >> 1)
          {
            v78 = v39 + 1;
            v43 = sub_100189BD4((v38 > 1), v39 + 1, 1, v86);
            v40 = v78;
            v37 = v43;
          }

          *(v37 + 2) = v40;
          v86 = v37;
          v41 = &v37[24 * v39];
          v41[32] = v34;
          v42 = v81;
          *(v41 + 5) = v82;
          *(v41 + 6) = v42;
        }
      }

      v29 = v84 + v29;
      if (!--v26)
      {
        break;
      }

      (v85)(v3, v29, v0);
    }
  }

  else
  {

    v86 = _swiftEmptyArrayStorage;
  }

  v44 = v86;
  v45 = *(v86 + 2);
  v83 = v86 + 16;
  v85 = v45;
  if (!v45)
  {
LABEL_72:
    v54 = *v83;
    v47 = *v83;
    goto LABEL_73;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    v48 = *&v44[v46 + 40];
    v49 = *&v44[v46 + 48];
    if (v44[v46 + 32] > 1u)
    {
      break;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
      goto LABEL_43;
    }

LABEL_37:

LABEL_38:
    v44 = v86;
    ++v47;
    v46 += 24;
    if (v85 == v47)
    {
      goto LABEL_72;
    }
  }

LABEL_43:
  v51 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v51 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    goto LABEL_37;
  }

  v52 = sub_10018A008();
  v84 = &v77;
  v87 = v48;
  v88 = v49;
  __chkstk_darwin(v52);
  *(&v77 - 2) = &v87;
  v53 = sub_100189354(sub_10018AFC0, (&v77 - 4), v52);

  if (v53)
  {
    goto LABEL_38;
  }

  v84 = 0;
  v54 = (v47 + 1);
  if (__OFADD__(v47, 1))
  {
    goto LABEL_93;
  }

  v55 = *v83;
  while (2)
  {
    if (v54 != v55)
    {
      if (v54 >= v55)
      {
        goto LABEL_86;
      }

      v57 = v86[v46 + 56];
      v58 = *&v86[v46 + 64];
      v59 = *&v86[v46 + 72];
      v85 = &v86[v46];
      if (v57 > 1)
      {
      }

      else
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v60 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      v61 = HIBYTE(v59) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v61 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v61)
      {
        v62 = sub_10018A008();
        v82 = &v77;
        v87 = v58;
        v88 = v59;
        __chkstk_darwin(v62);
        *(&v77 - 2) = &v87;
        v63 = v84;
        v64 = sub_100189354(sub_10018B034, (&v77 - 4), v62);
        v84 = v63;

        if (v64)
        {
LABEL_64:
          if (v54 != v47)
          {
            if (v47 < 0)
            {
              goto LABEL_87;
            }

            if (v47 >= *v83)
            {
              goto LABEL_88;
            }

            if (v54 >= *v83)
            {
              goto LABEL_89;
            }

            v65 = &v86[24 * v47 + 32];
            LODWORD(v82) = *v65;
            v66 = *(v65 + 2);
            v81 = *(v65 + 1);
            v67 = v85[56];
            v68 = *(v85 + 9);
            v83 = *(v85 + 8);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v86 = sub_100189FF4(v86);
            }

            v69 = v86;
            v70 = &v86[24 * v47];
            v70[32] = v67;
            *(v70 + 5) = v83;
            *(v70 + 6) = v68;

            if (v54 >= *(v69 + 2))
            {
              goto LABEL_90;
            }

            v56 = &v86[v46];
            v56[56] = v82;
            *(v56 + 8) = v81;
            *(v56 + 9) = v66;
          }

          ++v47;
        }

        ++v54;
        v55 = *(v86 + 2);
        v83 = v86 + 16;
        v46 += 24;
        continue;
      }

LABEL_63:

      goto LABEL_64;
    }

    break;
  }

  if (v54 < v47)
  {
    goto LABEL_92;
  }

  if (v47 < 0)
  {
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

LABEL_73:
  if (!__OFADD__(v54, v47 - v54))
  {
    v71 = v86;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v71;
    if (!isUniquelyReferenced_nonNull_native || v47 > *(v86 + 3) >> 1)
    {
      if (v54 <= v47)
      {
        v73 = v47;
      }

      else
      {
        v73 = v54;
      }

      v86 = sub_100189BD4(isUniquelyReferenced_nonNull_native, v73, 1, v86);
      v89 = v86;
    }

    sub_10018A0C8(v47, v54, 0);
    v74 = sub_10018A1A0(v80);
    v76 = v75;

    (*(v8 + 8))(v10, v7);
    if (v76)
    {
      return v74;
    }

    return 0;
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_10018AF58(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_10022AD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018AFDC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10018B050()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10018B154(double a1)
{
  v3 = *(*v1 + 104);
  sub_100010E88();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018B760();
  }

  return result;
}

double sub_10018B2B8()
{
  swift_getKeyPath();
  sub_10018B6C0();

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_10018B340(double a1)
{
  v3 = *(*v1 + 112);
  sub_100010E88();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018B760();
  }

  return result;
}

uint64_t sub_10018B4A4(double a1)
{
  v3 = *(*v1 + 120);
  sub_100010E88();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018B760();
  }

  return result;
}

uint64_t sub_10018B680(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_10018B948(a1);
  return v2;
}

double sub_10018B838()
{
  swift_getKeyPath();
  sub_10018B6C0();

  return *(v0 + *(*v0 + 112));
}

double sub_10018B8C0()
{
  swift_getKeyPath();
  sub_10018B6C0();

  return *(v0 + *(*v0 + 120));
}

uint64_t *sub_10018B948(uint64_t a1)
{
  v3 = *v1;
  *(v1 + *(*v1 + 104)) = 0;
  *(v1 + *(*v1 + 112)) = 0;
  *(v1 + *(*v1 + 120)) = 0;
  ObservationRegistrar.init()();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t sub_10018BA34()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 128);
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10018BAF8()
{
  sub_10018BA34();

  return swift_deallocClassInstance();
}

__n128 sub_10018BBC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_10018BBD4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + *(**(v0 + 16) + 120)) = result;
  return result;
}

double sub_10018BC58()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + *(**(v0 + 16) + 112)) = result;
  return result;
}

double sub_10018BCDC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + *(**(v0 + 16) + 104)) = result;
  return result;
}

uint64_t sub_10018BD08(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10018BD4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for AccessibilityActionKind();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_10022B1B8);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v40 = sub_1000024C4(&qword_10022B1C0);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v12 = &v37 - v11;
  v41 = sub_1000024C4(&qword_10022B1C8);
  __chkstk_darwin(v41);
  v14 = &v37 - v13;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v15 = sub_1000024C4(&qword_10022B1D0);
  sub_10018C308(v2, &v10[*(v15 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v16 = sub_10000BFFC(&qword_10022B1D8, &qword_10022B1B8);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v39);
  sub_1000050C4(v10, &qword_10022B1B8);
  v17 = swift_allocObject();
  v18 = *(v2 + 48);
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v2 + 64);
  v19 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v19;
  sub_10018DD2C(v2, v46);
  v20 = v37;
  static AccessibilityActionKind.default.getter();
  v46[0] = v8;
  v46[1] = v16;
  swift_getOpaqueTypeConformance2();
  v21 = v40;
  View.accessibilityAction(_:_:)();

  (*(v42 + 8))(v20, v43);
  (*(v38 + 8))(v12, v21);
  v22 = static Alignment.center.getter();
  v24 = v23;
  v25 = &v14[*(sub_1000024C4(&qword_10022B1E0) + 36)];
  *v25 = static Alignment.center.getter();
  v25[1] = v26;
  v27 = sub_1000024C4(&qword_10022B1E8);
  sub_10018D010(v2, (v25 + *(v27 + 44)));
  v28 = (v25 + *(sub_1000024C4(&qword_10022B1F0) + 36));
  *v28 = v22;
  v28[1] = v24;
  v29 = swift_allocObject();
  v30 = *(v2 + 48);
  *(v29 + 48) = *(v2 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(v2 + 64);
  v31 = *(v2 + 16);
  *(v29 + 16) = *v2;
  *(v29 + 32) = v31;
  v32 = &v14[*(v41 + 36)];
  *v32 = sub_10018D428;
  *(v32 + 1) = 0;
  *(v32 + 2) = sub_10018DD64;
  *(v32 + 3) = v29;
  v47[0] = *(v2 + 16);
  v45 = v47[0];
  v33 = swift_allocObject();
  v34 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v34;
  *(v33 + 80) = *(v2 + 64);
  v35 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v35;
  sub_10018DD2C(v2, v46);
  sub_10018DD2C(v2, v46);
  sub_10000BEB8(v47, v46, &qword_100223F78);
  sub_1000024C4(&qword_100223F78);
  sub_10018DDDC();
  sub_100074C20();
  View.onChange<A>(of:initial:_:)();

  sub_1000050C4(v47, &qword_100223F78);
  return sub_1000050C4(v14, &qword_10022B1C8);
}

uint64_t sub_10018C308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_1000024C4(&qword_10022B248);
  v4 = __chkstk_darwin(v3 - 8);
  v103 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v102 = &v88 - v6;
  v7 = type metadata accessor for RoundedCornerStyle();
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin(v7);
  v91 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Image.ResizingMode();
  v9 = *(v90 - 8);
  __chkstk_darwin(v90);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1000024C4(&qword_10022B250);
  __chkstk_darwin(v92);
  v13 = (&v88 - v12);
  v99 = sub_1000024C4(&qword_10022B258);
  __chkstk_darwin(v99);
  v95 = &v88 - v14;
  v97 = sub_1000024C4(&qword_10022B260);
  __chkstk_darwin(v97);
  v98 = &v88 - v15;
  v16 = type metadata accessor for OpacityTransition();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v88 - v21;
  v96 = sub_1000024C4(&qword_10022B268);
  __chkstk_darwin(v96);
  v89 = &v88 - v23;
  v24 = sub_1000024C4(&qword_10022B270);
  v25 = __chkstk_darwin(v24 - 8);
  v101 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v88 - v27;
  v100 = a1;
  v111 = *(a1 + 40);
  sub_1000024C4(&qword_100226248);
  State.wrappedValue.getter();
  v105 = v28;
  if (v106)
  {
    v89 = v106;
    Image.init(uiImage:)();
    v29 = v90;
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v90);
    v88 = Image.resizable(capInsets:resizingMode:)();

    (*(v9 + 8))(v11, v29);
    OpacityTransition.init()();
    (*(v17 + 16))(v20, v22, v16);
    sub_10018F5A8(&qword_100226350, &type metadata accessor for OpacityTransition);
    v30 = AnyTransition.init<A>(_:)();
    (*(v17 + 8))(v22, v16);
    if (qword_100220BC8 != -1)
    {
      swift_once();
    }

    v32 = v93;
    v31 = v94;
    v33 = v91;
    (*(v93 + 104))(v91, enum case for RoundedCornerStyle.continuous(_:), v94);
    v34 = v13 + *(sub_1000024C4(&qword_10022B2C0) + 36);
    v35 = type metadata accessor for UnevenRoundedRectangle();
    (*(v32 + 16))(&v34[*(v35 + 20)], v33, v31);
    RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    (*(v32 + 8))(v33, v31);
    *v34 = v37;
    *(v34 + 1) = v39;
    *(v34 + 2) = v41;
    *(v34 + 3) = v43;
    *&v34[*(sub_1000024C4(&qword_10022B2E0) + 36)] = 256;
    *v13 = v88;
    v13[1] = v30;
    *(v13 + *(v92 + 36)) = 1;
    sub_10018F818();
    v44 = v95;
    View.accessibilityIdentifier(_:)();
    sub_1000050C4(v13, &qword_10022B250);
    v45 = static Alignment.center.getter();
    v47 = v46;
    sub_1000024C4(&qword_100221D18);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1001B3B50;
    *(v48 + 32) = static Color.clear.getter();
    *(v48 + 40) = static Color.white.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(colors:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v49 = v119;
    v50 = v98;
    v51 = v44 + *(v99 + 36);
    *v51 = v45;
    *(v51 + 8) = v47;
    *(v51 + 16) = v49;
    v52 = v121;
    *(v51 + 24) = v120;
    *(v51 + 40) = v52;
    sub_10000BEB8(v44, v50, &qword_10022B258);
    swift_storeEnumTagMultiPayload();
    sub_10018F734();
    sub_10018FA14();
    _ConditionalContent<>.init(storage:)();

    sub_1000050C4(v44, &qword_10022B258);
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v53 = v119;
    v54 = v120;
    v55 = v121;
    v95 = *(&v121 + 1);
    v93 = *(&v120 + 1);
    v94 = v122;
    OpacityTransition.init()();
    (*(v17 + 16))(v20, v22, v16);
    sub_10018F5A8(&qword_100226350, &type metadata accessor for OpacityTransition);
    v56 = AnyTransition.init<A>(_:)();
    (*(v17 + 8))(v22, v16);
    v118 = v54;
    v117 = v55;
    *&v111 = 6;
    *(&v111 + 1) = v53;
    LOBYTE(v112) = v54;
    *(&v112 + 1) = v106;
    DWORD1(v112) = *(&v106 + 3);
    *(&v112 + 1) = v93;
    LOBYTE(v113) = v55;
    *(&v113 + 1) = v116[0];
    DWORD1(v113) = *(v116 + 3);
    *(&v113 + 1) = v95;
    *&v114 = v94;
    *(&v114 + 1) = v56;
    sub_1000024C4(&qword_10022B278);
    sub_10018F5F0();
    v57 = v89;
    View.accessibilityHidden(_:)();

    v58 = static Alignment.center.getter();
    v60 = v59;
    sub_1000024C4(&qword_100221D18);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1001B3B50;
    *(v61 + 32) = static Color.clear.getter();
    *(v61 + 40) = static Color.white.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(colors:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v62 = v123;
    v63 = &v57[*(v96 + 36)];
    *v63 = v58;
    *(v63 + 1) = v60;
    *(v63 + 2) = v62;
    v64 = v125;
    *(v63 + 24) = v124;
    *(v63 + 40) = v64;
    sub_10000BEB8(v57, v98, &qword_10022B268);
    swift_storeEnumTagMultiPayload();
    sub_10018F734();
    sub_10018FA14();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v57, &qword_10022B268);
  }

  v65 = v100;
  v66 = v100[1];
  v99 = *v100;
  v67 = v100[2];

  v68 = sub_10011FEFC(v67);
  v70 = v69;
  v71 = v65[3];
  v72 = v65[4];
  sub_1000024C4(&qword_100222388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  sub_100115AD4(v71);
  v74 = static Edge.Set.horizontal.getter();
  *(inited + 32) = v74;
  v75 = static Edge.Set.bottom.getter();
  *(inited + 33) = v75;
  v76 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v74)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v75)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  v77 = v105;
  EdgeInsets.init(_all:)();
  LOBYTE(v116[0]) = 0;
  *&v106 = v99;
  *(&v106 + 1) = v66;
  *&v107 = v68;
  *(&v107 + 1) = v70;
  *&v108 = v71;
  *(&v108 + 1) = v72;
  LOBYTE(v109) = v76;
  *(&v109 + 1) = v78;
  *&v110[0] = v79;
  *(&v110[0] + 1) = v80;
  *&v110[1] = v81;
  BYTE8(v110[1]) = 0;
  sub_1000024C4(&qword_10022B300);
  sub_100190018(&qword_10022B308, &qword_10022B300, &unk_1001C3020, sub_10018FBAC);
  v82 = v102;
  View.accessibilityIdentifier(_:)();
  v113 = v108;
  v114 = v109;
  v115[0] = v110[0];
  *(v115 + 9) = *(v110 + 9);
  v111 = v106;
  v112 = v107;
  sub_1000050C4(&v111, &qword_10022B300);
  v83 = v101;
  sub_10000BEB8(v77, v101, &qword_10022B270);
  v84 = v103;
  sub_10000BEB8(v82, v103, &qword_10022B248);
  v85 = v104;
  sub_10000BEB8(v83, v104, &qword_10022B270);
  v86 = sub_1000024C4(&qword_10022B318);
  sub_10000BEB8(v84, v85 + *(v86 + 48), &qword_10022B248);
  sub_1000050C4(v82, &qword_10022B248);
  sub_1000050C4(v77, &qword_10022B270);
  sub_1000050C4(v84, &qword_10022B248);
  return sub_1000050C4(v83, &qword_10022B270);
}

uint64_t sub_10018D010@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000024C4(&qword_10022B238);
  v5 = __chkstk_darwin(v4 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v27 = &v26 - v7;
  v8 = type metadata accessor for OpacityTransition();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for Image.ResizingMode();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 40);
  sub_1000024C4(&qword_100226248);
  State.wrappedValue.getter();
  if (v29)
  {
    v26 = v29;
    Image.init(uiImage:)();
    (*(v16 + 104))(v18, enum case for Image.ResizingMode.stretch(_:), v15);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v16 + 8))(v18, v15);
    OpacityTransition.init()();
    (*(v9 + 16))(v12, v14, v8);
    sub_10018F5A8(&qword_100226350, &type metadata accessor for OpacityTransition);
    v20 = AnyTransition.init<A>(_:)();

    (*(v9 + 8))(v14, v8);

    v21 = 257;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v20 = 0;
  }

  *&v30 = 6;
  sub_1000055F4();
  v22 = v27;
  View.accessibilityHidden(_:)();
  v23 = v28;
  sub_10000BEB8(v22, v28, &qword_10022B238);
  *a2 = v19;
  a2[1] = 0;
  a2[2] = v21;
  a2[3] = v20;
  v24 = sub_1000024C4(&qword_10022B240);
  sub_10000BEB8(v23, a2 + *(v24 + 48), &qword_10022B238);
  sub_10018F528(v19);
  sub_10018F568(v19);
  sub_1000050C4(v22, &qword_10022B238);
  sub_1000050C4(v23, &qword_10022B238);
  return sub_10018F568(v19);
}

uint64_t sub_10018D428@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10018D454(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = *a1;
  v21 = *(a2 + 56);
  v19[0] = *(a2 + 56);
  v20 = v7;
  sub_1000024C4(&qword_10022B230);
  State.wrappedValue.setter();
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v19[0] = v21;
  State.wrappedValue.getter();
  v11 = v20;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v10;

  sub_10018DD2C(a2, v19);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = *a2;
  *(v15 + 72) = *(a2 + 16);
  v17 = *(a2 + 48);
  *(v15 + 88) = *(a2 + 32);
  *(v15 + 104) = v17;
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = v9;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 120) = *(a2 + 64);
  *(v15 + 56) = v16;
  *(v15 + 128) = v11;
  *(v15 + 136) = 0x4063400000000000;
  sub_1001904E0(0, 0, v6, &unk_1001C2F90, v15);
}

uint64_t sub_10018D63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v8 = *a3;
  v7 = *(a3 + 8);
  v9 = *(a3 + 16);
  v18[0] = *(a3 + 56);
  sub_1000024C4(&qword_10022B230);
  State.wrappedValue.getter();
  v10 = v19;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = v9;

  sub_10018DD2C(a3, v18);
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = *a3;
  *(v14 + 72) = *(a3 + 16);
  v16 = *(a3 + 48);
  *(v14 + 88) = *(a3 + 32);
  *(v14 + 104) = v16;
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v8;
  *(v14 + 40) = v7;
  *(v14 + 48) = v9;
  *(v14 + 120) = *(a3 + 64);
  *(v14 + 56) = v15;
  *(v14 + 128) = v10;
  *(v14 + 136) = 0x4063400000000000;
  sub_1001904E0(0, 0, v6, &unk_1001C2F80, v14);
}

uint64_t sub_10018D7EC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 72) = type metadata accessor for MainActor();
  *(v9 + 80) = static MainActor.shared.getter();
  *(v9 + 88) = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 96) = v10;

  return _swift_task_switch(sub_10018D88C);
}

uint64_t sub_10018D88C()
{
  *(v0 + 16) = *(*(v0 + 48) + 40);
  sub_1000024C4(&qword_100226248);
  State.wrappedValue.getter();
  v1 = *(v0 + 32);
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10018D96C;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);

  return sub_10011FFD8(v1, v5, v3, v4);
}

uint64_t sub_10018D96C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    a1 = 0;
  }

  *(v4 + 120) = 0;
  *(v4 + 128) = a1;

  return _swift_task_switch(sub_10018DA94);
}

uint64_t sub_10018DA94()
{
  *(v0 + 136) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10018DB20);
}

uint64_t sub_10018DB20()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);

  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return _swift_task_switch(sub_10018DBEC);
}

uint64_t sub_10018DBEC()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10018DC54(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_1000024C4(&qword_100226248);
  return State.wrappedValue.setter();
}

uint64_t sub_10018DCFC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10018DD6C()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10018DDDC()
{
  result = qword_10022B1F8;
  if (!qword_10022B1F8)
  {
    sub_10000460C(&qword_10022B1C8);
    sub_10018DE94();
    sub_10000BFFC(&qword_10022B220, &qword_10022B228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B1F8);
  }

  return result;
}

unint64_t sub_10018DE94()
{
  result = qword_10022B200;
  if (!qword_10022B200)
  {
    sub_10000460C(&qword_10022B1E0);
    sub_10018DF4C();
    sub_10000BFFC(&qword_10022B218, &qword_10022B1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B200);
  }

  return result;
}

unint64_t sub_10018DF4C()
{
  result = qword_10022B208;
  if (!qword_10022B208)
  {
    sub_10000460C(&qword_10022B210);
    sub_10000460C(&qword_10022B1B8);
    sub_10000BFFC(&qword_10022B1D8, &qword_10022B1B8);
    swift_getOpaqueTypeConformance2();
    sub_10018F5A8(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B208);
  }

  return result;
}

uint64_t sub_10018E078(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[16];
  v10 = v1[17];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100012AC8;

  return sub_10018D7EC(v9, v10, a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_10018E160@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v64 = type metadata accessor for AccessibilityTraits();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_10022B320);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_1000024C4(&qword_10022B328);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = sub_1000024C4(&qword_10022B330);
  v14 = *(v13 - 8);
  v57 = v13;
  v58 = v14;
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v17 = sub_1000024C4(&qword_10022B338);
  sub_10018E750(v2, &v9[*(v17 + 44)]);
  v9[*(v7 + 36)] = 0;
  v18 = *v2;
  v66 = *(v2 + 16);
  v67 = v18;
  v19 = *(v2 + 32);
  v20 = swift_allocObject();
  v21 = *(v2 + 16);
  v20[1] = *v2;
  v20[2] = v21;
  v20[3] = *(v2 + 32);
  sub_10018FD3C(&v67, v65);
  sub_10000BEB8(&v66, v65, &qword_10022AF10);
  sub_100115AD4(v19);
  sub_10018FD98();
  View.onTapGesture(count:perform:)();

  sub_1000050C4(v9, &qword_10022B320);
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v12[*(sub_1000024C4(&qword_10022B358) + 36)];
  *v30 = v2;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  LOBYTE(v2) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v12[*(sub_1000024C4(&qword_10022B360) + 36)];
  *v39 = v2;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(v2) = static Edge.Set.trailing.getter();
  v40 = &v12[*(sub_1000024C4(&qword_10022B368) + 36)];
  *v40 = v2;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  v40[40] = 1;
  v41 = [objc_opt_self() tertiarySystemBackgroundColor];
  v42 = Color.init(uiColor:)();
  LOBYTE(v9) = static Edge.Set.all.getter();
  v43 = &v12[*(sub_1000024C4(&qword_10022B370) + 36)];
  *v43 = v42;
  v43[8] = v9;
  v44 = &v12[*(v10 + 36)];
  v45 = *(type metadata accessor for RoundedRectangle() + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #10.0 }

  *v44 = _Q0;
  *&v44[*(sub_1000024C4(&qword_100221C80) + 36)] = 256;
  static AccessibilityChildBehavior.combine.getter();
  v53 = sub_10018FE7C();
  View.accessibilityElement(children:)();
  (*(v59 + 8))(v6, v60);
  sub_1000050C4(v12, &qword_10022B328);
  v54 = v61;
  static AccessibilityTraits.isButton.getter();
  v65[0] = v10;
  v65[1] = v53;
  swift_getOpaqueTypeConformance2();
  v55 = v57;
  View.accessibilityAddTraits(_:)();
  (*(v62 + 8))(v54, v64);
  return (*(v58 + 8))(v16, v55);
}

uint64_t sub_10018E750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v2 = sub_1000024C4(&qword_10022B3A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v53 = sub_1000024C4(&qword_10022B3A8) - 8;
  v5 = __chkstk_darwin(v53);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v47 = &v45 - v8;
  __chkstk_darwin(v7);
  v49 = &v45 - v9;
  v10 = sub_1000024C4(&qword_100221A50);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v46 = sub_1000024C4(&qword_10022B3B0);
  __chkstk_darwin(v46);
  v14 = &v45 - v13;
  v15 = sub_1000024C4(&qword_10022B3B8);
  v16 = __chkstk_darwin(v15 - 8);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v45 - v18;
  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v20 = type metadata accessor for SymbolRenderingMode();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  v21 = Image.symbolRenderingMode(_:)();

  sub_1000050C4(v12, &qword_100221A50);
  v22 = static Color.white.getter();
  v23 = static Color.blue.getter();
  v24 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  *&v54 = v21;
  *(&v54 + 1) = v22;
  *&v55 = v23;
  *(&v55 + 1) = KeyPath;
  *&v56 = v24;
  sub_1000024C4(&qword_10022B3C0);
  sub_10019019C();
  View.accessibilityIdentifier(_:)();

  v14[*(v46 + 36)] = 1;
  sub_100190254();
  v26 = v19;
  View.accessibilityHidden(_:)();
  sub_1000050C4(v14, &qword_10022B3B0);
  *v4 = static HorizontalAlignment.leading.getter();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v27 = sub_1000024C4(&qword_10022B3E8);
  v28 = v48;
  sub_10018EE4C(v48, &v4[*(v27 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v47;
  sub_10001AE00(v4, v47, &qword_10022B3A0);
  v30 = (v29 + *(v53 + 44));
  v31 = v59;
  v30[4] = v58;
  v30[5] = v31;
  v30[6] = v60;
  v32 = v55;
  *v30 = v54;
  v30[1] = v32;
  v33 = v57;
  v30[2] = v56;
  v30[3] = v33;
  v34 = v49;
  sub_10001AE00(v29, v49, &qword_10022B3A8);
  if (*(v28 + 32))
  {
    v35 = Image.init(systemName:)();
    static Font.body.getter();
    static Font.Weight.semibold.getter();
    v53 = Font.weight(_:)();

    v36 = swift_getKeyPath();
    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    v37 = Color.opacity(_:)();
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v53 = 0;
    v37 = 0;
  }

  v38 = v50;
  sub_10000BEB8(v26, v50, &qword_10022B3B8);
  v39 = v51;
  sub_10000BEB8(v34, v51, &qword_10022B3A8);
  v40 = v52;
  sub_10000BEB8(v38, v52, &qword_10022B3B8);
  v41 = sub_1000024C4(&qword_10022B3F0);
  sub_10000BEB8(v39, v40 + *(v41 + 48), &qword_10022B3A8);
  v42 = (v40 + *(v41 + 64));
  v43 = v53;
  sub_10019030C(v35);
  sub_100190370(v35);
  *v42 = v35;
  v42[1] = v36;
  v42[2] = v43;
  v42[3] = v37;
  sub_1000050C4(v34, &qword_10022B3A8);
  sub_1000050C4(v26, &qword_10022B3B8);
  sub_100190370(v35);
  sub_1000050C4(v39, &qword_10022B3A8);
  return sub_1000050C4(v38, &qword_10022B3B8);
}

uint64_t sub_10018EE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1000024C4(&qword_10022B3F8);
  v4 = __chkstk_darwin(v3 - 8);
  v53 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = v47 - v6;
  v7 = sub_1000024C4(&qword_100221B10);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = __chkstk_darwin(v7);
  v48 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v47 - v10;

  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  KeyPath = swift_getKeyPath();
  v55 = v12;
  v56 = v14;
  v20 = v16 & 1;
  v57 = v16 & 1;
  v58 = v18;
  v59 = KeyPath;
  v21 = 1;
  v60 = 1;
  v61 = 0;
  v22 = sub_1000024C4(&qword_100221B38);
  v23 = sub_10001B3F8();
  v51 = v11;
  v47[0] = v23;
  v47[1] = v22;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v12, v14, v20);

  v24 = *(a1 + 24);
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    v21 = 1;
LABEL_9:
    v41 = v52;
    v42 = v54;
    v27 = v48;
    goto LABEL_10;
  }

  v26 = qword_100220B98;

  v27 = v48;
  if (v26 != -1)
  {
    swift_once();
  }

  v55 = qword_1002390B8;

  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  v32 = v31;

  static Font.caption.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_100017398(v28, v30, v32 & 1);

  v40 = swift_getKeyPath();
  v55 = v33;
  v56 = v35;
  v37 &= 1u;
  v57 = v37;
  v58 = v39;
  v59 = v40;
  v60 = 1;
  v61 = 0;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v33, v35, v37);

  v41 = v52;
  sub_10001AE00(v27, v52, &qword_100221B10);
  v21 = 0;
  v42 = v54;
LABEL_10:
  (*(v49 + 56))(v41, v21, 1, v50);
  v43 = v51;
  sub_10000BEB8(v51, v27, &qword_100221B10);
  v44 = v53;
  sub_10000BEB8(v41, v53, &qword_10022B3F8);
  sub_10000BEB8(v27, v42, &qword_100221B10);
  v45 = sub_1000024C4(&qword_10022B400);
  sub_10000BEB8(v44, v42 + *(v45 + 48), &qword_10022B3F8);
  sub_1000050C4(v41, &qword_10022B3F8);
  sub_1000050C4(v43, &qword_100221B10);
  sub_1000050C4(v44, &qword_10022B3F8);
  return sub_1000050C4(v27, &qword_100221B10);
}

uint64_t sub_10018F3C0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10018F440(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[16];
  v10 = v1[17];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000BD00;

  return sub_10018D7EC(v9, v10, a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_10018F528(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10018F568(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10018F5A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10018F5F0()
{
  result = qword_10022B280;
  if (!qword_10022B280)
  {
    sub_10000460C(&qword_10022B278);
    sub_10018F6A8();
    sub_10000BFFC(&qword_100226308, &qword_100226310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B280);
  }

  return result;
}

unint64_t sub_10018F6A8()
{
  result = qword_10022B288;
  if (!qword_10022B288)
  {
    sub_10000460C(&qword_10022B290);
    sub_1000055F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B288);
  }

  return result;
}

unint64_t sub_10018F734()
{
  result = qword_10022B298;
  if (!qword_10022B298)
  {
    sub_10000460C(&qword_10022B258);
    sub_10018FAF8(&qword_10022B2A0, &qword_10022B2A8, &unk_1001C2FE8, sub_10018F818);
    sub_10000BFFC(&qword_1002283D0, &qword_1002283D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B298);
  }

  return result;
}

unint64_t sub_10018F818()
{
  result = qword_10022B2B0;
  if (!qword_10022B2B0)
  {
    sub_10000460C(&qword_10022B250);
    sub_10018F8A4();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B2B0);
  }

  return result;
}

unint64_t sub_10018F8A4()
{
  result = qword_10022B2B8;
  if (!qword_10022B2B8)
  {
    sub_10000460C(&qword_10022B2C0);
    sub_10018F95C();
    sub_10000BFFC(&qword_10022B2D8, &qword_10022B2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B2B8);
  }

  return result;
}

unint64_t sub_10018F95C()
{
  result = qword_10022B2C8;
  if (!qword_10022B2C8)
  {
    sub_10000460C(&qword_10022B2D0);
    sub_10000BFFC(&qword_100226308, &qword_100226310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B2C8);
  }

  return result;
}

unint64_t sub_10018FA14()
{
  result = qword_10022B2E8;
  if (!qword_10022B2E8)
  {
    sub_10000460C(&qword_10022B268);
    sub_10018FAF8(&qword_10022B2F0, &qword_10022B2F8, &unk_1001C3010, sub_10018F5F0);
    sub_10000BFFC(&qword_1002283D0, &qword_1002283D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B2E8);
  }

  return result;
}

uint64_t sub_10018FAF8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    sub_10018F5A8(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018FBAC()
{
  result = qword_10022B310;
  if (!qword_10022B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B310);
  }

  return result;
}

uint64_t sub_10018FC10()
{
  sub_10000460C(&qword_10022B1C8);
  sub_10000460C(&qword_100223F78);
  sub_10018DDDC();
  sub_100074C20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10018FCBC()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10018FD0C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_10018FD98()
{
  result = qword_10022B340;
  if (!qword_10022B340)
  {
    sub_10000460C(&qword_10022B320);
    sub_10000BFFC(&qword_10022B348, &qword_10022B350);
    sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B340);
  }

  return result;
}

unint64_t sub_10018FE7C()
{
  result = qword_10022B378;
  if (!qword_10022B378)
  {
    sub_10000460C(&qword_10022B328);
    sub_10018FF34();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B378);
  }

  return result;
}

unint64_t sub_10018FF34()
{
  result = qword_10022B380;
  if (!qword_10022B380)
  {
    sub_10000460C(&qword_10022B370);
    sub_100190018(&qword_10022B388, &qword_10022B368, &unk_1001C3128, sub_10019009C);
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B380);
  }

  return result;
}

uint64_t sub_100190018(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001900CC()
{
  result = qword_10022B398;
  if (!qword_10022B398)
  {
    sub_10000460C(&qword_10022B358);
    sub_10000460C(&qword_10022B320);
    sub_10018FD98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B398);
  }

  return result;
}

unint64_t sub_10019019C()
{
  result = qword_10022B3C8;
  if (!qword_10022B3C8)
  {
    sub_10000460C(&qword_10022B3C0);
    sub_1000AF518();
    sub_10000BFFC(&qword_100222260, &qword_100222268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B3C8);
  }

  return result;
}

unint64_t sub_100190254()
{
  result = qword_10022B3D0;
  if (!qword_10022B3D0)
  {
    sub_10000460C(&qword_10022B3B0);
    sub_10018FAF8(&qword_10022B3D8, &qword_10022B3E0, &unk_1001C31A0, sub_10019019C);
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B3D0);
  }

  return result;
}

uint64_t sub_10019030C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100190370(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1001903DC()
{
  result = qword_10022B408;
  if (!qword_10022B408)
  {
    sub_10000460C(&qword_10022B410);
    sub_10000460C(&qword_10022B328);
    sub_10018FE7C();
    swift_getOpaqueTypeConformance2();
    sub_10018F5A8(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B408);
  }

  return result;
}

uint64_t sub_1001904E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BEB8(a3, v25 - v10, &qword_100227360);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000050C4(v11, &qword_100227360);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000050C4(a3, &qword_100227360);

      return v23;
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

  sub_1000050C4(a3, &qword_100227360);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001907E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BEB8(a3, v25 - v10, &qword_100227360);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000050C4(v11, &qword_100227360);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000024C4(&qword_10022B570);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000050C4(a3, &qword_100227360);

      return v22;
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

  sub_1000050C4(a3, &qword_100227360);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000024C4(&qword_10022B570);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100190AF4()
{
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100190B98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_100190C44()
{
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100190D10@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10000BEB8(v1 + 24, a1, &qword_1002224D8);
}

uint64_t sub_100190DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10000BEB8(v3 + 24, a2, &qword_1002224D8);
}

uint64_t sub_100190EB0(uint64_t a1)
{
  sub_10000BEB8(a1, v2, &qword_1002224D8);
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000050C4(v2, &qword_1002224D8);
}

uint64_t sub_100190FB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10019560C(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t sub_10019101C()
{
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

uint64_t sub_1001910BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_100191164(uint64_t result)
{
  if (*(v1 + 64) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10019126C()
{
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100191310@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
}

uint64_t sub_1001913BC(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 72))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      sub_100195544(&qword_10022B540, &type metadata accessor for AnyCancellable);

      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 72) = a1;
}

uint64_t sub_100191564()
{
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100191608@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);
}

uint64_t sub_1001916B4(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 80))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      sub_100195544(&qword_10022B540, &type metadata accessor for AnyCancellable);

      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 80) = a1;
}

uint64_t sub_10019185C()
{
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100191900@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
}

uint64_t sub_1001919AC(uint64_t a1)
{
  if (!*(v1 + 88))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 88) = a1;
}

uint64_t sub_100191B34()
{
  v1 = type metadata accessor for MusicPlayer.Queue.Entry();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_10022B548);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  swift_getKeyPath();
  v17[0] = v0;
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10000BEB8(v0 + 24, v18, &qword_1002224D8);
  v8 = v19;
  if (v19)
  {
    v9 = v20;
    v10 = sub_10001BED0(v18, v19);
    v11 = *(v8 - 8);
    __chkstk_darwin(v10);
    v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    sub_1000050C4(v18, &qword_1002224D8);
    v14 = (*(v9 + 96))(v8, v9);
    LOBYTE(v9) = v15;
    (*(v11 + 8))(v13, v8);
    if ((v9 & 1) == 0)
    {
      return v14;
    }
  }

  else
  {
    sub_1000050C4(v18, &qword_1002224D8);
  }

  type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  dispatch thunk of SystemMusicPlayer.queue.getter();

  dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1000050C4(v7, &qword_10022B548);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_1000050C4(v7, &qword_10022B548);
    v14 = MusicPlayer.Queue.Entry.endTime.getter();
    (*(v2 + 8))(v4, v1);
  }

  return v14;
}

uint64_t sub_100191EEC()
{
  *&result = COERCE_DOUBLE(sub_100191B34());
  if ((v1 & 1) == 0 && *&result > 0.0 && ((~result & 0x7FF0000000000000) != 0 || (result & 0xFFFFFFFFFFFFFLL) == 0))
  {
    *&result = COERCE_DOUBLE(sub_100191FA8());
    if (result)
    {
      type metadata accessor for SystemMusicPlayer();
      static SystemMusicPlayer.shared.getter();
      dispatch thunk of MusicPlayer.playbackTime.getter();
      *&result = COERCE_DOUBLE();
    }
  }

  return result;
}

uint64_t sub_100191FA8()
{
  v1 = type metadata accessor for MusicPlayer.Queue.Entry();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_10022B548);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - v6;
  v8 = sub_1000024C4(&qword_10022B550);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  dispatch thunk of SystemMusicPlayer.queue.getter();

  dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    v11 = &qword_10022B548;
    v12 = v7;
LABEL_5:
    sub_1000050C4(v12, v11);
    v15 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_1000050C4(v7, &qword_10022B548);
  MusicPlayer.Queue.Entry.item.getter();
  (*(v2 + 8))(v4, v1);
  v13 = type metadata accessor for MusicPlayer.Queue.Entry.Item();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    v11 = &qword_10022B550;
    v12 = v10;
    goto LABEL_5;
  }

  v15 = MusicPlayer.Queue.Entry.Item.id.getter();
  v16 = v27;
  (*(v14 + 8))(v10, v13);
LABEL_6:
  swift_getKeyPath();
  v29[0] = v0;
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10000BEB8(v0 + 24, v30, &qword_1002224D8);
  v17 = v31;
  if (!v31)
  {
    sub_1000050C4(v30, &qword_1002224D8);
    if (!v16)
    {
      goto LABEL_15;
    }

LABEL_13:
    v26 = 0;
LABEL_20:

    return v26 & 1;
  }

  v18 = v32;
  v19 = sub_10001BED0(v30, v31);
  v20 = *(v17 - 8);
  __chkstk_darwin(v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22);
  sub_1000050C4(v30, &qword_1002224D8);
  v23 = (*(v18 + 88))(v17, v18);
  v25 = v24;
  (*(v20 + 8))(v22, v17);
  if (v25)
  {
    if (v16)
    {
      if (v23 == v15 && v16 == v25)
      {
        v26 = 1;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_20;
  }

  if (v16)
  {
    goto LABEL_13;
  }

LABEL_15:
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1001924BC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100192548();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100192548()
{
  v29 = *v0;
  v1 = sub_1000024C4(&qword_10022B508);
  __chkstk_darwin(v1 - 8);
  v3 = v22 - v2;
  v26 = sub_1000024C4(&qword_10022B510);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = v22 - v4;
  sub_100193D2C();
  swift_getKeyPath();
  v31 = v0;
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[9])
  {

    AnyCancellable.cancel()();
  }

  swift_getKeyPath();
  v31 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[10])
  {

    AnyCancellable.cancel()();
  }

  v22[4] = type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  MusicPlayer.state.getter();

  v6 = dispatch thunk of MusicPlayer.State.objectWillChange.getter();

  v31 = v6;
  v27 = objc_opt_self();
  v7 = [v27 mainRunLoop];
  v30 = v7;
  v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v8 = *(v24 - 8);
  v23 = *(v8 + 56);
  v25 = v8 + 56;
  v23(v3, 1, 1, v24);
  v22[3] = sub_1000024C4(&qword_10022B518);
  v22[2] = sub_100195474();
  v22[1] = sub_10000BFFC(&qword_10022B528, &qword_10022B518);
  sub_100195544(&qword_10022B530, sub_100195474);
  Publisher.receive<A>(on:options:)();
  sub_1000050C4(v3, &qword_10022B508);

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1001954C0;
  *(v10 + 24) = v9;
  v22[0] = sub_10000BFFC(&qword_10022B538, &qword_10022B510);
  v11 = v26;
  v12 = Publisher<>.sink(receiveValue:)();

  v13 = *(v28 + 8);
  v13(v5, v11);
  sub_1001913BC(v12);
  static SystemMusicPlayer.shared.getter();
  dispatch thunk of SystemMusicPlayer.queue.getter();

  v14 = dispatch thunk of MusicPlayer.Queue.objectWillChange.getter();

  v31 = v14;
  v15 = [v27 mainRunLoop];
  v30 = v15;
  v23(v3, 1, 1, v24);
  Publisher.receive<A>(on:options:)();
  sub_1000050C4(v3, &qword_10022B508);

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v29;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100195500;
  *(v19 + 24) = v17;
  v20 = Publisher<>.sink(receiveValue:)();

  v13(v5, v11);
  return sub_1001916B4(v20);
}

uint64_t sub_100192B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BEB8(a3, v25 - v10, &qword_100227360);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000050C4(v11, &qword_100227360);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100192E20(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for MusicPlayer.Queue.Entry();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_1000024C4(&qword_10022B548);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v37 = v14;
    v38 = v11;
    v39 = v4;
    v16 = a1 + 32;
    KeyPath = swift_getKeyPath();
    v36 = &v35;
    __chkstk_darwin(KeyPath);
    *(&v35 - 2) = v2;
    *(&v35 - 1) = a1;
    v40 = OBJC_IVAR____TtC16EventViewService16AppleMusicPlayer___observationRegistrar;
    v43[0] = v2;
    v18 = sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10002FF80(v16, v43);
    v19 = swift_getKeyPath();
    v36 = &v35;
    __chkstk_darwin(v19);
    *(&v35 - 2) = v2;
    *(&v35 - 1) = v43;
    v41[0] = v2;
    v35 = v18;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000050C4(v43, &qword_1002224D8);
    if (*(v2 + 64) != 1)
    {
      v20 = swift_getKeyPath();
      __chkstk_darwin(v20);
      *(&v35 - 2) = v2;
      *(&v35 - 8) = 1;
      v43[0] = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v42 = _swiftEmptyArrayStorage;
    sub_1001957E0(0, v15, 0);
    v21 = v42;
    do
    {
      sub_10002FF80(v16, v43);
      v22 = v44;
      v23 = v45;
      v24 = sub_10001BED0(v43, v44);
      v41[3] = v22;
      v41[4] = *(v23 + 8);
      v25 = sub_10005EC40(v41);
      (*(*(v22 - 8) + 16))(v25, v24, v22);
      MusicPlayer.Queue.Entry.init(_:startTime:endTime:)();
      sub_100012A7C(v43);
      v42 = v21;
      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        sub_1001957E0(v26 > 1, v27 + 1, 1);
        v21 = v42;
      }

      v21[2] = v27 + 1;
      (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v8, v5);
      v16 += 40;
      --v15;
    }

    while (v15);
    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    (*(v6 + 56))(v37, 1, 1, v5);
    v43[0] = v21;
    type metadata accessor for MusicPlayer.Queue();
    swift_allocObject();
    sub_1000024C4(&qword_10022B558);
    sub_10000BFFC(&qword_10022B560, &qword_10022B558);
    MusicPlayer.Queue.init<A>(_:startingAt:)();
    dispatch thunk of SystemMusicPlayer.queue.setter();

    v28 = type metadata accessor for TaskPriority();
    v29 = v38;
    (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v39;
    sub_1001904E0(0, 0, v29, &unk_1001C3448, v30);
  }

  else
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000BE10(v31, qword_100239158);
    v40 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v40, v32, "Cannot play empty playlist.", v33, 2u);
    }

    v34 = v40;
  }
}

void sub_10019352C()
{
  v1 = *v0;
  v2 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  if (sub_100191FA8())
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;
    sub_1001904E0(0, 0, v4, &unk_1001C3428, v6);
  }

  else
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000BE10(v7, qword_100239158);
    v12 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v12, v8, "Player asked to resume song but current song not in system player queue.", v9, 2u);
    }

    v10 = v12;
  }
}

void sub_100193734()
{
  if (sub_100191FA8())
  {
    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    dispatch thunk of MusicPlayer.pause()();
  }

  else
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000BE10(v0, qword_100239158);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to pause song. Current song not in System player..", v2, 2u);
    }
  }
}

uint64_t sub_10019387C()
{
  type metadata accessor for SystemMusicPlayer();
  *(v0 + 48) = static SystemMusicPlayer.shared.getter();
  v3 = (&async function pointer to dispatch thunk of MusicPlayer.play() + async function pointer to dispatch thunk of MusicPlayer.play());
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100193934;

  return v3();
}

uint64_t sub_100193934()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100193B64;
  }

  else
  {

    v2 = sub_100193A50;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100193A50()
{
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Song playback started.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100193B64()
{
  v12 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100139F7C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to play song with error %s", v4, 0xCu);
    sub_100012A7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100193D2C()
{
  v1 = type metadata accessor for MusicPlayer.PlaybackStatus();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100191FA8();
  if ((result & 1) == 0)
  {
    if (!*(v0 + 64))
    {
      return result;
    }

    goto LABEL_7;
  }

  type metadata accessor for SystemMusicPlayer();
  static SystemMusicPlayer.shared.getter();
  MusicPlayer.state.getter();

  dispatch thunk of MusicPlayer.State.playbackStatus.getter();

  result = (*(v2 + 88))(v4, v1);
  if (result == enum case for MusicPlayer.PlaybackStatus.stopped(_:))
  {
    result = sub_100191EEC();
    if (v6 > 0.0 && *(v0 + 64))
    {
LABEL_7:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v13 - 2) = v0;
      *(&v13 - 8) = 0;
      v14 = v0;
      sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
LABEL_8:
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (result == enum case for MusicPlayer.PlaybackStatus.playing(_:))
  {
    if (*(v0 + 64) != 2)
    {
      v8 = swift_getKeyPath();
      __chkstk_darwin(v8);
      *(&v13 - 2) = v0;
      *(&v13 - 8) = 2;
      v14 = v0;
      sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
      goto LABEL_8;
    }
  }

  else
  {
    if (result != enum case for MusicPlayer.PlaybackStatus.paused(_:) && result != enum case for MusicPlayer.PlaybackStatus.interrupted(_:))
    {
      return (*(v2 + 8))(v4, v1);
    }

    if (*(v0 + 64) != 3)
    {
      v10 = swift_getKeyPath();
      __chkstk_darwin(v10);
      *(&v13 - 2) = v0;
      *(&v13 - 8) = 3;
      v14 = v0;
      sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    static SystemMusicPlayer.shared.getter();
    dispatch thunk of MusicPlayer.playbackTime.getter();
    v12 = v11;

    if (v12 == 0.0 && *(v0 + 64))
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_100194278()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100193D2C();
  }

  return result;
}

uint64_t sub_1001942D0()
{
  v0 = type metadata accessor for MusicPlayer.Queue.Entry();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000024C4(&qword_10022B548);
  __chkstk_darwin(v4 - 8);
  v6 = v37 - v5;
  v7 = sub_1000024C4(&qword_10022B550);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (sub_100191FA8())
    {
    }

    type metadata accessor for SystemMusicPlayer();
    static SystemMusicPlayer.shared.getter();
    dispatch thunk of SystemMusicPlayer.queue.getter();

    dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

    if ((*(v1 + 48))(v6, 1, v0))
    {
      sub_1000050C4(v6, &qword_10022B548);
      goto LABEL_17;
    }

    (*(v1 + 16))(v3, v6, v0);
    sub_1000050C4(v6, &qword_10022B548);
    MusicPlayer.Queue.Entry.item.getter();
    (*(v1 + 8))(v3, v0);
    v12 = type metadata accessor for MusicPlayer.Queue.Entry.Item();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_1000050C4(v9, &qword_10022B550);
      goto LABEL_17;
    }

    v14 = MusicPlayer.Queue.Entry.Item.id.getter();
    v16 = v15;
    (*(v13 + 8))(v9, v12);
    swift_getKeyPath();
    v17 = OBJC_IVAR____TtC16EventViewService16AppleMusicPlayer___observationRegistrar;
    *&v38 = v11;
    v18 = sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
    v37[2] = v17;
    v37[1] = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v11 + 16);
    v20 = *(v19 + 16);

    if (!v20)
    {
LABEL_16:

LABEL_17:
      if (qword_100220C90 != -1)
      {
LABEL_32:
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000BE10(v26, qword_100239158);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "System player finished playing queued songs.", v29, 2u);
      }

      v42 = 0;
      memset(v41, 0, sizeof(v41));
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v11;
      v37[-1] = v41;
      *&v40[0] = v11;
      sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_1000050C4(v41, &qword_1002224D8);
      if (*(v11 + 64))
      {
        v31 = swift_getKeyPath();
        __chkstk_darwin(v31);
        v37[-2] = v11;
        LOBYTE(v37[-1]) = 0;
        *&v41[0] = v11;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    v21 = 0;
    v22 = v19 + 32;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      sub_10002FF80(v22, &v38);
      sub_10001BED0(&v38, v39);
      if (dispatch thunk of MusicItem.id.getter() == v14 && v23 == v16)
      {

        goto LABEL_26;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        break;
      }

      ++v21;
      sub_100012A7C(&v38);
      v22 += 40;
      if (v20 == v21)
      {
        goto LABEL_16;
      }
    }

LABEL_26:

    sub_10002FF68(&v38, v40);
    sub_10002FF68(v40, v41);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000BE10(v32, qword_100239158);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "System player started playing next queued song.", v35, 2u);
    }

    sub_10002FF80(v41, v40);
    v36 = swift_getKeyPath();
    __chkstk_darwin(v36);
    v37[-2] = v11;
    v37[-1] = v40;
    *&v38 = v11;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100012A7C(v41);

    return sub_1000050C4(v40, &qword_1002224D8);
  }

  return result;
}

uint64_t sub_100194AE4()
{

  sub_1000050C4(v0 + 24, &qword_1002224D8);

  v1 = OBJC_IVAR____TtC16EventViewService16AppleMusicPlayer___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleMusicPlayer()
{
  result = qword_10022B448;
  if (!qword_10022B448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100194C0C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100194CCC()
{
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100194D70@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10000BEB8(v3 + 24, a1, &qword_1002224D8);
}

uint64_t sub_100194E64()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 64);
}

uint64_t sub_100194F70()
{
  v0 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_100192B60(0, 0, v2, &unk_1001C3308, v5);
  sub_1000050C4(v2, &qword_100227360);
  return sub_1001919AC(v6);
}

uint64_t sub_1001950C0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 88))
  {

    Task.cancel()();
  }

  return result;
}

uint64_t sub_1001951B0()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

uint64_t sub_1001951EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100195224()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100195264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_10019249C(a1, v4, v5, v6);
}

uint64_t sub_100195318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012AC8;

  return sub_10010D254(a1, v4);
}

uint64_t sub_1001953D0()
{

  return swift_deallocObject();
}

unint64_t sub_100195474()
{
  result = qword_10022B520;
  if (!qword_10022B520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10022B520);
  }

  return result;
}

uint64_t sub_1001954C8()
{

  return swift_deallocObject();
}

uint64_t sub_100195508()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_100195544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019560C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002224D8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019567C()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_1001956B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001956F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100012AC8;

  return sub_100193860();
}

uint64_t sub_1001957A4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

size_t sub_1001957E0(size_t a1, int64_t a2, char a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B568, &unk_1001C3450, &type metadata accessor for MusicPlayer.Queue.Entry);
  *v3 = result;
  return result;
}

char *sub_100195824(char *a1, int64_t a2, char a3)
{
  result = sub_1001959D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100195844(char *a1, int64_t a2, char a3)
{
  result = sub_100195AE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100195864(size_t a1, int64_t a2, char a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B578, &unk_1001C3478, &type metadata accessor for Music);
  *v3 = result;
  return result;
}

size_t sub_1001958A8(size_t a1, int64_t a2, char a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B598, &unk_1001C3498, &type metadata accessor for Art);
  *v3 = result;
  return result;
}

size_t sub_1001958EC(size_t a1, int64_t a2, char a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B590, &unk_1001C3490, &type metadata accessor for Dance);
  *v3 = result;
  return result;
}

size_t sub_100195930(size_t a1, int64_t a2, char a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B588, &unk_1001C3488, &type metadata accessor for Sport);
  *v3 = result;
  return result;
}

size_t sub_100195974(size_t a1, int64_t a2, char a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B580, &unk_1001C3480, &type metadata accessor for Theater);
  *v3 = result;
  return result;
}

char *sub_1001959B8(char *a1, int64_t a2, char a3)
{
  result = sub_100195BF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001959D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_10022B100);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100195AE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&unk_1002224F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100195BF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_1002241B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100195D24(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000024C4(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100195F00(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100195FF4;

  return v5(v2 + 32);
}

uint64_t sub_100195FF4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100196108(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012AC8;

  return sub_100195F00(a1, v4);
}

uint64_t sub_1001961C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD00;

  return sub_100195F00(a1, v4);
}

uint64_t sub_1001962F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributionViewModel();
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

uint64_t sub_1001963D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributionViewModel();
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

uint64_t type metadata accessor for AttributionModule()
{
  result = qword_10022B5F8;
  if (!qword_10022B5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001964D4()
{
  type metadata accessor for AttributionViewModel();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100196574@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for AttributionModule();
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v34 = v3;
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000024C4(&qword_10022B630);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v36 = v1;
  sub_100123384(v6);
  v9 = Text.init(_:)();
  v11 = v10;
  v13 = v12;
  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v39 = qword_1002390B8;

  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_100017398(v9, v11, v13 & 1);

  static Font.footnote.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_100017398(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v27 = v35;
  sub_10019698C(v36, v35);
  v28 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v29 = swift_allocObject();
  sub_100196B50(v27, v29 + v28);
  v30 = &v8[*(v37 + 36)];
  sub_1000024C4(&qword_10022B638);
  OpenURLAction.init(handler:)();
  *v30 = KeyPath;
  *v8 = v19;
  *(v8 + 1) = v21;
  v8[16] = v23 & 1;
  *(v8 + 3) = v25;
  sub_100196C34();
  View.accessibilityIdentifier(_:)();
  return sub_100196D24(v8);
}

uint64_t sub_1001968B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for AttributionModule() + 20)))
  {

    sub_100123A14(v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    v3 = EnvironmentObject.error()();
    __break(1u);
  }

  return static OpenURLAction.Result.systemAction.getter(v3);
}

uint64_t sub_10019698C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001969F0()
{
  v1 = *(type metadata accessor for AttributionModule() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for AttributionViewModel() + 32);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100196B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100196BB4(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionModule() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1001968B8(a1, v4);
}

unint64_t sub_100196C34()
{
  result = qword_10022B640;
  if (!qword_10022B640)
  {
    sub_10000460C(&qword_10022B630);
    sub_100196CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B640);
  }

  return result;
}

unint64_t sub_100196CC0()
{
  result = qword_10022B648;
  if (!qword_10022B648)
  {
    sub_10000460C(&qword_10022B638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B648);
  }

  return result;
}

uint64_t sub_100196D24(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_10022B630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100196D90()
{
  result = qword_10022B650;
  if (!qword_10022B650)
  {
    sub_10000460C(&qword_10022B658);
    sub_100196C34();
    sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B650);
  }

  return result;
}

__n128 sub_100196E4C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100196E78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
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

uint64_t sub_100196EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100196F2C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10022B660 = result;
  *algn_10022B668 = v1;
  byte_10022B670 = v2 & 1;
  qword_10022B678 = v3;
  return result;
}

uint64_t sub_100196F74()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10022B680 = result;
  *algn_10022B688 = v1;
  byte_10022B690 = v2 & 1;
  qword_10022B698 = v3;
  return result;
}

uint64_t sub_100196FBC()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10022B6A0 = result;
  *algn_10022B6A8 = v1;
  byte_10022B6B0 = v2 & 1;
  qword_10022B6B8 = v3;
  return result;
}

uint64_t sub_100197004()
{
  v0 = [objc_opt_self() systemGray5Color];
  result = Color.init(uiColor:)();
  qword_10022B6C0 = result;
  return result;
}

uint64_t sub_100197044()
{
  v1 = v0;
  v2 = sub_1000024C4(&qword_1002293B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v47[-1] - v3;
  v5 = v0[11];
  if (!v5)
  {
    return 3;
  }

  v6 = v0[10] == 0x6C7070612E6D6F63 && v5 == 0xEF636973754D2E65;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 3;
  }

  if (qword_100220C20 != -1)
  {
    swift_once();
  }

  v7 = *(qword_100239150 + 16);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  swift_getKeyPath();
  v47[0] = v8;
  sub_10013FFD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_100156CB4(v8 + v9, v4);
  os_unfair_lock_unlock((v7 + 24));
  v10 = type metadata accessor for MusicSubscription();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_1000050C4(v4, &qword_1002293B8);
    return 3;
  }

  v12 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v11 + 8))(v4, v10);
  if ((v12 & 1) == 0)
  {
    return 3;
  }

  v13 = v1[8];
  v14 = v1[9];
  sub_10001BED0(v1 + 5, v13);
  (*(v14 + 104))(v13, v14);
  swift_getAssociatedTypeWitness();
  sub_1000024C4(&qword_10022B6C8);
  v15 = _arrayForceCast<A, B>(_:)();

  v16 = *(v15 + 16);
  if (v16)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_100195824(0, v16, 0);
    v17 = v50;
    v18 = v15 + 32;
    do
    {
      sub_10002FF80(v18, v47);
      v19 = v48;
      v20 = v49;
      sub_10001BED0(v47, v48);
      v21 = (*(v20 + 88))(v19, v20);
      v23 = v22;
      sub_100012A7C(v47);
      v50 = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_100195824((v24 > 1), v25 + 1, 1);
        v17 = v50;
      }

      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v28 = *v1;
  v29 = *(*v1 + 40);
  v30 = v28[6];
  sub_10001BED0(v28 + 2, v29);
  v31 = (*(v30 + 8))(v29, v30);
  v32 = *(v31 + 16);
  if (v32)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_100195824(0, v32, 0);
    v33 = v50;
    v46 = v31;
    v34 = v31 + 32;
    do
    {
      sub_10002FF80(v34, v47);
      v35 = v48;
      v36 = v49;
      sub_10001BED0(v47, v48);
      v37 = (*(v36 + 88))(v35, v36);
      v39 = v38;
      sub_100012A7C(v47);
      v50 = v33;
      v41 = v33[2];
      v40 = v33[3];
      if (v41 >= v40 >> 1)
      {
        sub_100195824((v40 > 1), v41 + 1, 1);
        v33 = v50;
      }

      v33[2] = v41 + 1;
      v42 = &v33[2 * v41];
      v42[4] = v37;
      v42[5] = v39;
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v43 = sub_10004A8F4(v33, v17);

  if ((v43 & 1) == 0)
  {
    return 0;
  }

  v44 = v28[5];
  v45 = v28[6];
  sub_10001BED0(v28 + 2, v44);
  return 0x10200u >> (8 * (*(v45 + 32))(v44, v45));
}

uint64_t sub_10019757C()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_10001BED0(v0 + 5, v1);
  v3 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-1] - v7;
  v3(v1, v2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v14[3] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14[4] = AssociatedConformanceWitness;
    sub_10005EC40(v14);
    (*(v9 + 32))();
    v11 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_100012A7C(v14);
    if (v11)
    {
      return Color.init(cgColor:)();
    }
  }

  if (qword_100220C58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001977C8@<X0>(char *a1@<X8>)
{
  v3 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[8];
  v11 = v1[9];
  sub_10001BED0(v1 + 5, v10);
  (*(v11 + 96))(v10, v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000050C4(v5, &qword_1002214F8);
    v12 = 1;
  }

  else
  {
    v13 = *(v7 + 32);
    v13(v9, v5, v6);
    if (*(v1[12] + 16))
    {
      URL.appending(queryItems:)();
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v13(a1, v9, v6);
    }

    v12 = 0;
  }

  return (*(v7 + 56))(a1, v12, 1, v6);
}

void sub_1001979E0(void *a1)
{
  sub_1000024C4(&qword_100221508);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001B49A0;
  v5 = a1[2];
  v4 = a1[3];
  *(v3 + 56) = &type metadata for AnalyticsString;
  *(v3 + 64) = &off_100228B70;
  *(v3 + 32) = 0;
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;
  *(v3 + 96) = &type metadata for AnalyticsModuleName;
  *(v3 + 104) = &off_100228BD0;
  *(v3 + 72) = 3;
  *(v3 + 136) = &type metadata for AnalyticsModuleAction;
  *(v3 + 144) = &off_100228BA8;
  *(v3 + 112) = xmmword_1001BA550;
  *(v3 + 128) = 3;
  v6 = *(v1 + 105);

  if (v6 != 15)
  {
    v3 = sub_1001894F4(1, 4, 1, v3);
    v21 = &type metadata for AnalyticsPageName;
    v22 = &off_100228B48;
    LOBYTE(aBlock) = v6;
    *(v3 + 16) = 4;
    sub_10002FF68(&aBlock, v3 + 152);
  }

  if (a1[9])
  {
    v7 = a1[8];
    v8 = a1[9];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v21 = &type metadata for AnalyticsString;
  v22 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v7;
  v20 = v8;
  v24 = v3;
  v10 = *(v3 + 16);
  v9 = *(v3 + 24);

  if (v10 >= v9 >> 1)
  {
    v3 = sub_1001894F4((v9 > 1), v10 + 1, 1, v3);
    v24 = v3;
  }

  v11 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_100118768(v10, v13, &v24, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001C4640;
  v16[4] = v3;
  v22 = sub_100026FEC;
  v23 = v16;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v20 = sub_10015B4A4;
  v21 = &unk_10021A398;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

void sub_100197CF4(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  sub_10001BED0((*v1 + 16), v3);
  v5 = (*(v4 + 32))(v3, v4);
  sub_1000024C4(&qword_100221508);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001B49A0;
  v8 = a1[2];
  v7 = a1[3];
  *(v6 + 56) = &type metadata for AnalyticsString;
  *(v6 + 64) = &off_100228B70;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;
  *(v6 + 96) = &type metadata for AnalyticsModuleName;
  *(v6 + 104) = &off_100228BD0;
  *(v6 + 72) = 3;
  v9 = 19;
  if (v5 == 2)
  {
    v9 = 20;
  }

  *(v6 + 136) = &type metadata for AnalyticsModuleAction;
  *(v6 + 144) = &off_100228BA8;
  *(v6 + 112) = v9;
  *(v6 + 120) = 0;
  *(v6 + 128) = 3;
  v10 = v1[105];

  if (v10 != 15)
  {
    v6 = sub_1001894F4(1, 4, 1, v6);
    v25 = &type metadata for AnalyticsPageName;
    v26 = &off_100228B48;
    LOBYTE(aBlock) = v10;
    *(v6 + 16) = 4;
    sub_10002FF68(&aBlock, v6 + 152);
  }

  if (a1[9])
  {
    v11 = a1[8];
    v12 = a1[9];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v25 = &type metadata for AnalyticsString;
  v26 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v11;
  v24 = v12;
  v28 = v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);

  if (v13 >= v14 >> 1)
  {
    v6 = sub_1001894F4((v14 > 1), v13 + 1, 1, v6);
    v28 = v6;
  }

  v15 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  sub_100118768(v13, v17, &v28, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001ELL;
  v20[3] = 0x80000001001C4640;
  v20[4] = v6;
  v26 = sub_100006D88;
  v27 = v20;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v24 = sub_10015B4A4;
  v25 = &unk_10021A348;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

uint64_t sub_10019804C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100198070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001980B8(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_100198134()
{
  result = static Color.white.getter();
  qword_10022B6D0 = result;
  return result;
}

uint64_t sub_100198154()
{
  result = static Solarium.isEnabled.getter();
  v1 = 12.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_10022B6D8 = *&v1;
  return result;
}

uint64_t sub_100198198()
{
  result = static Solarium.isEnabled.getter();
  v1 = 6.0;
  if (result)
  {
    v1 = 10.0;
  }

  qword_10022B6E8 = *&v1;
  return result;
}

uint64_t sub_1001981C8()
{
  result = static Solarium.isEnabled.getter();
  v1 = 14.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_10022B6F0 = *&v1;
  return result;
}

uint64_t sub_10019820C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(uiColor:)();
  *a3 = result;
  return result;
}

uint64_t sub_100198254@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_1000024C4(&qword_10022B7A0);
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v60 = &v54 - v3;
  v4 = sub_1000024C4(&qword_100220CE0);
  __chkstk_darwin(v4 - 8);
  v64 = &v54 - v5;
  v6 = sub_1000024C4(&qword_10022B7A8);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = sub_1000024C4(&qword_10022B7B0);
  v54 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for PromotionalPlaylistModule();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PromotionalPlaylistModule;
  v56 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v1;
  sub_10019E71C(v1, v16, type metadata accessor for PromotionalPlaylistModule);
  v17 = *(v14 + 80);
  v18 = swift_allocObject();
  v59 = (v17 + 16) & ~v17;
  sub_10019DB40(v16, v18 + v59);
  v66 = v1;
  sub_1000024C4(&qword_10022B7B8);
  sub_10019DC08();
  v19 = v12;
  Button.init(action:label:)();
  v20 = type metadata accessor for PlainButtonStyle();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlainButtonStyle.init()();
  v24 = sub_10000BFFC(&qword_10022B838, &qword_10022B7B0);
  v25 = sub_10019E000(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v21 + 8))(v23, v20);
  (*(v54 + 8))(v19, v10);
  v68 = v10;
  v69 = v20;
  v70 = v24;
  v71 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v57;
  View.accessibilityIdentifier(_:)();
  v27 = (*(v58 + 8))(v9, v26);
  __chkstk_darwin(v27);
  v28 = (&v54 - v56);
  sub_10019E71C(v65, &v54 - v56, v55);
  type metadata accessor for MainActor();
  v29 = static MainActor.shared.getter();
  v30 = (v17 + 32) & ~v17;
  v57 = v15;
  v58 = v17;
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = &protocol witness table for MainActor;
  sub_10019DB40(v28, v31 + v30);
  v32 = type metadata accessor for TaskPriority();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v54 - v35;
  static TaskPriority.userInitiated.getter();
  if (sub_1001AD108(2, 26, 4, 0))
  {
    v55 = type metadata accessor for _TaskModifier2();
    v56 = &v54;
    v54 = *(v55 - 1);
    __chkstk_darwin(v55);
    v38 = &v54 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v68 = 0xD00000000000003DLL;
    v69 = 0x80000001001C8CF0;
    v67 = 161;
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    __chkstk_darwin(v40);
    (*(v33 + 16))(&v54 - v35, v36, v32);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v33 + 8))(v36, v32);
    v41 = v60;
    sub_10001AE00(v64, v60, &qword_100220CE0);
    v42 = sub_1000024C4(&qword_100220CE8);
    v43 = (*(v54 + 32))(v41 + *(v42 + 36), v38, v55);
  }

  else
  {
    v44 = sub_1000024C4(&qword_100220CF0);
    v41 = v60;
    v45 = (v60 + *(v44 + 36));
    v46 = type metadata accessor for _TaskModifier();
    (*(v33 + 32))(&v45[*(v46 + 20)], &v54 - v35, v32);
    *v45 = &unk_1001C3860;
    *(v45 + 1) = v31;
    v43 = sub_10001AE00(v64, v41, &qword_100220CE0);
  }

  v47 = v57;
  __chkstk_darwin(v43);
  v48 = &v54 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019E71C(v65, v48, type metadata accessor for PromotionalPlaylistModule);
  v49 = v59;
  v50 = swift_allocObject();
  sub_10019DB40(v48, v50 + v49);
  v51 = v61;
  (*(v62 + 32))(v61, v41, v63);
  result = sub_1000024C4(&qword_10022B840);
  v53 = (v51 + *(result + 36));
  *v53 = 0;
  v53[1] = 0;
  v53[2] = sub_10019E5A0;
  v53[3] = v50;
  return result;
}

void sub_100198B90()
{
  v1 = type metadata accessor for PromotionalPlaylistModule();
  __chkstk_darwin(v1);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OpenURLAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001977C8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000050C4(v9, &qword_1002214F8);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000BE10(v14, qword_100239158);
    v15 = v26;
    sub_10019E71C(v0, v26, type metadata accessor for PromotionalPlaylistModule);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      sub_10001BED0((v15 + 40), *(v15 + 64));
      v27[3] = swift_getAssociatedTypeWitness();
      v27[4] = swift_getAssociatedConformanceWitness();
      sub_10005EC40(v27);
      dispatch thunk of Identifiable.id.getter();
      sub_1000024C4(&qword_1002293D0);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      sub_10019EBD8(v15, type metadata accessor for PromotionalPlaylistModule);
      v23 = sub_100139F7C(v20, v22, &v28);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Promotional playlist URL missing. ID: %s", v18, 0xCu);
      sub_100012A7C(v19);
    }

    else
    {

      sub_10019EBD8(v15, type metadata accessor for PromotionalPlaylistModule);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100039C90(v6);
    OpenURLAction.callAsFunction(_:)();
    (*(v4 + 8))(v6, v3);
    if (*(v0 + 112))
    {

      sub_1001979E0(v24);

      (*(v11 + 8))(v13, v10);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_10019E000(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_1001990A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v70);
  v71 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000024C4(&qword_1002243F0);
  __chkstk_darwin(v4 - 8);
  v69 = &v65 - v5;
  v6 = sub_1000024C4(&qword_10022B810);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v65 - v8;
  v10 = sub_1000024C4(&qword_10022B800);
  __chkstk_darwin(v10);
  v12 = &v65 - v11;
  v66 = sub_1000024C4(&qword_10022B7F0);
  __chkstk_darwin(v66);
  v14 = &v65 - v13;
  v67 = sub_1000024C4(&qword_10022B7E0);
  __chkstk_darwin(v67);
  v16 = &v65 - v15;
  v68 = sub_1000024C4(&qword_10022B7D0);
  __chkstk_darwin(v68);
  v72 = &v65 - v17;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4030000000000000;
  v9[16] = 0;
  v18 = sub_1000024C4(&qword_10022B848);
  v19 = a1;
  sub_100199884(a1, &v9[*(v18 + 44)]);
  LOBYTE(a1) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v20 = &v9[*(v7 + 44)];
  *v20 = a1;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_1000024C4(&qword_100222388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  v26 = static Edge.Set.trailing.getter();
  *(inited + 32) = v26;
  v27 = static Edge.Set.vertical.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  sub_10001AE00(v9, v12, &qword_10022B810);
  v29 = &v12[*(v10 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v12, v14, &qword_10022B800);
  v30 = &v14[*(v66 + 36)];
  v31 = v79;
  *(v30 + 4) = v78;
  *(v30 + 5) = v31;
  *(v30 + 6) = v80;
  v32 = v75;
  *v30 = v74;
  *(v30 + 1) = v32;
  v33 = v77;
  *(v30 + 2) = v76;
  *(v30 + 3) = v33;
  v34 = static Alignment.center.getter();
  v36 = v35;
  v37 = &v16[*(v67 + 36)];
  sub_10019C5FC(v19, v37);
  v38 = (v37 + *(sub_1000024C4(&qword_10022B830) + 36));
  *v38 = v34;
  v38[1] = v36;
  sub_10001AE00(v14, v16, &qword_10022B7F0);
  if (qword_100220C68 != -1)
  {
    swift_once();
  }

  v39 = qword_10022B6D8;
  v40 = v72;
  v41 = &v72[*(v68 + 36)];
  v42 = v70;
  v43 = *(v70 + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  v46 = *(*(v45 - 8) + 104);
  v46(v41 + v43, v44, v45);
  *v41 = v39;
  v41[1] = v39;
  *(v41 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
  sub_10001AE00(v16, v40, &qword_10022B7E0);
  v47 = v71;
  v46(v71 + *(v42 + 20), v44, v45);
  *v47 = v39;
  v47[1] = v39;
  if (*(v19 + 104) == 1)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v48 = Color.opacity(_:)();
  }

  else
  {
    v48 = static Color.clear.getter();
  }

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v49 = v69;
  sub_10019E71C(v47, v69, &type metadata accessor for RoundedRectangle);
  v50 = v49 + *(sub_1000024C4(&qword_100222870) + 36);
  v51 = v82;
  *v50 = v81;
  *(v50 + 16) = v51;
  *(v50 + 32) = v83;
  v52 = sub_1000024C4(&qword_100222878);
  *(v49 + *(v52 + 52)) = v48;
  *(v49 + *(v52 + 56)) = 256;
  v53 = static Alignment.center.getter();
  v55 = v54;
  sub_10019EBD8(v47, &type metadata accessor for RoundedRectangle);
  v56 = (v49 + *(sub_1000024C4(&qword_100222880) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = static Alignment.center.getter();
  v59 = v58;
  v60 = sub_1000024C4(&qword_10022B7B8);
  v61 = v73;
  v62 = v73 + *(v60 + 36);
  sub_10001AE00(v49, v62, &qword_1002243F0);
  v63 = (v62 + *(sub_1000024C4(&qword_100224440) + 36));
  *v63 = v57;
  v63[1] = v59;
  return sub_10001AE00(v40, v61, &qword_10022B7D0);
}

uint64_t sub_100199884@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000024C4(&qword_10022B868);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = (&v44 - v6);
  v44 = sub_1000024C4(&qword_10022B870);
  v7 = __chkstk_darwin(v44);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v45 = &v44 - v12;
  v14 = a1[8];
  v13 = a1[9];
  v46 = a1;
  sub_10001BED0(a1 + 5, v14);
  v15 = *(v13 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - v19;
  v15(v14, v13);
  v21 = *(AssociatedTypeWitness - 8);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v20, v17);
    *&v55 = 0;
    v53 = 0u;
    v54 = 0u;
  }

  else
  {
    *(&v54 + 1) = AssociatedTypeWitness;
    *&v55 = swift_getAssociatedConformanceWitness();
    v22 = sub_10005EC40(&v53);
    (*(v21 + 32))(v22, v20, AssociatedTypeWitness);
  }

  v23 = v46;
  v24 = sub_10019757C();
  KeyPath = swift_getKeyPath();
  v52 = 0;
  *&v51[7] = v53;
  *&v51[23] = v54;
  *&v51[39] = v55;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = v52;
  if (qword_100220C78 != -1)
  {
    swift_once();
  }

  v27 = qword_10022B6E8;
  v28 = &v11[*(v44 + 36)];
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = v27;
  v28[1] = v27;
  *(v28 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
  v32 = *&v51[16];
  *(v11 + 9) = *v51;
  *(v11 + 25) = v32;
  *(v11 + 40) = *&v51[31];
  v33 = v54;
  *(v11 + 72) = v53;
  *v11 = KeyPath;
  v11[8] = v26;
  *(v11 + 7) = 96;
  *(v11 + 8) = v24;
  *(v11 + 88) = v33;
  *(v11 + 104) = v55;
  v34 = v11;
  v35 = v45;
  sub_10001AE00(v34, v45, &qword_10022B870);
  v36 = static HorizontalAlignment.leading.getter();
  v37 = v48;
  *v48 = v36;
  *(v37 + 8) = 0x4020000000000000;
  *(v37 + 16) = 0;
  v38 = sub_1000024C4(&qword_10022B878);
  sub_100199E10(v23, v37 + *(v38 + 44));
  v39 = v47;
  sub_10000BEB8(v35, v47, &qword_10022B870);
  v40 = v50;
  sub_10000BEB8(v37, v50, &qword_10022B868);
  v41 = v49;
  sub_10000BEB8(v39, v49, &qword_10022B870);
  v42 = sub_1000024C4(&qword_10022B880);
  sub_10000BEB8(v40, v41 + *(v42 + 48), &qword_10022B868);
  sub_1000050C4(v37, &qword_10022B868);
  sub_1000050C4(v35, &qword_10022B870);
  sub_1000050C4(v40, &qword_10022B868);
  return sub_1000050C4(v39, &qword_10022B870);
}

uint64_t sub_100199E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v48 = type metadata accessor for PlainButtonStyle();
  v53 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PromotionalPlaylistModule();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v4 - 8);
  v50 = sub_1000024C4(&qword_10022B888);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v7 = &v46 - v6;
  v55 = sub_1000024C4(&qword_10022B890);
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = &v46 - v8;
  v10 = sub_1000024C4(&qword_10022B898);
  v11 = __chkstk_darwin(v10 - 8);
  v56 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v46 - v13;
  v14 = sub_1000024C4(&qword_10022B8A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  v17 = sub_1000024C4(&qword_10022B8A8);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v46 - v23;
  __chkstk_darwin(v22);
  v26 = &v46 - v25;
  *v16 = static HorizontalAlignment.leading.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v27 = sub_1000024C4(&qword_10022B8B0);
  sub_10019A634(a1, &v16[*(v27 + 44)]);
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v16, v24, &qword_10022B8A0);
  v28 = &v24[*(v18 + 44)];
  v29 = v68;
  *(v28 + 4) = v67;
  *(v28 + 5) = v29;
  *(v28 + 6) = v69;
  v30 = v64;
  *v28 = v63;
  *(v28 + 1) = v30;
  v31 = v66;
  *(v28 + 2) = v65;
  *(v28 + 3) = v31;
  v32 = v24;
  v33 = v48;
  sub_10001AE00(v32, v26, &qword_10022B8A8);
  sub_10019E71C(a1, &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PromotionalPlaylistModule);
  v34 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v35 = swift_allocObject();
  sub_10019DB40(&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  v58 = a1;
  sub_1000024C4(&qword_10022B8B8);
  sub_10019E7F4();
  Button.init(action:label:)();
  v36 = v49;
  PlainButtonStyle.init()();
  v37 = sub_10000BFFC(&qword_10022B918, &qword_10022B888);
  v38 = sub_10019E000(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v39 = v50;
  View.buttonStyle<A>(_:)();
  (*(v53 + 8))(v36, v33);
  (*(v51 + 8))(v7, v39);
  sub_100197044();
  v59 = v39;
  v60 = v33;
  v61 = v37;
  v62 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v54;
  v41 = v55;
  View.accessibilityIdentifier(_:)();

  (*(v52 + 8))(v9, v41);
  sub_10000BEB8(v26, v21, &qword_10022B8A8);
  v42 = v56;
  sub_10000BEB8(v40, v56, &qword_10022B898);
  v43 = v57;
  sub_10000BEB8(v21, v57, &qword_10022B8A8);
  v44 = sub_1000024C4(&qword_10022B920);
  sub_10000BEB8(v42, v43 + *(v44 + 48), &qword_10022B898);
  sub_1000050C4(v40, &qword_10022B898);
  sub_1000050C4(v26, &qword_10022B8A8);
  sub_1000050C4(v42, &qword_10022B898);
  return sub_1000050C4(v21, &qword_10022B8A8);
}

uint64_t sub_10019A634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = __chkstk_darwin(v3);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v74 - v6;
  v7 = sub_1000024C4(&qword_100221B10);
  v8 = __chkstk_darwin(v7 - 8);
  v86 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v74 - v10;
  v75 = sub_1000024C4(&qword_100223B60) - 8;
  __chkstk_darwin(v75);
  v12 = &v74 - v11;
  v78 = sub_1000024C4(&qword_10022B980);
  __chkstk_darwin(v78);
  v76 = &v74 - v13;
  v79 = sub_1000024C4(&qword_10022B988);
  __chkstk_darwin(v79);
  v77 = &v74 - v14;
  v15 = sub_1000024C4(&qword_10022B990);
  v16 = __chkstk_darwin(v15 - 8);
  v82 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = &v74 - v18;
  v89 = a1;

  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v12[*(sub_1000024C4(&qword_100221B68) + 36)];
  v27 = *(sub_1000024C4(&qword_100221B70) + 28);
  v28 = enum case for Text.Case.uppercase(_:);
  v29 = type metadata accessor for Text.Case();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v26 + v27, v28, v29);
  (*(v30 + 56))(v26 + v27, 0, 1, v29);
  *v26 = swift_getKeyPath();
  *v12 = v19;
  *(v12 + 1) = v21;
  v12[16] = v23 & 1;
  *(v12 + 3) = v25;
  static Font.caption2.getter();
  static Font.Weight.bold.getter();
  v31 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v33 = &v12[*(v75 + 44)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = *(v89 + 104);
  if (v34 == 1)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v35 = qword_10022B6D0;
  }

  else
  {
    v35 = static Color.primary.getter();
  }

  v36 = v12;
  v37 = v76;
  sub_10001AE00(v36, v76, &qword_100223B60);
  *(v37 + *(v78 + 36)) = v35;
  v38 = v77;
  sub_10001AE00(v37, v77, &qword_10022B980);
  *(v38 + *(v79 + 36)) = 0x3FE0000000000000;
  sub_10019EC40();
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v38, &qword_10022B988);
  v39 = *(v89 + 64);
  v40 = *(v89 + 72);
  sub_10001BED0((v89 + 40), v39);
  v90 = (*(v40 + 64))(v39, v40);
  v91 = v41;
  sub_10001877C();
  v42 = Text.init<A>(_:)();
  v44 = v43;
  LOBYTE(v38) = v45;
  static Font.subheadline.getter();
  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;

  sub_100017398(v42, v44, v38 & 1);

  if (v34)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v51 = qword_10022B6D0;
  }

  else
  {
    v51 = static Color.primary.getter();
  }

  v90 = v51;
  v52 = Text.foregroundStyle<A>(_:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_100017398(v46, v48, v50 & 1);

  type metadata accessor for PromotionalPlaylistModule();
  v59 = v80;
  sub_10003A100(v80);
  v61 = v83;
  v60 = v84;
  v62 = v81;
  (*(v83 + 104))(v81, enum case for ContentSizeCategory.accessibilityMedium(_:), v84);
  v63 = sub_100172140(v59, v62);
  v64 = *(v61 + 8);
  v64(v62, v60);
  v64(v59, v60);
  if (v63)
  {
    v65 = 3;
  }

  else
  {
    v65 = 2;
  }

  v66 = swift_getKeyPath();
  v90 = v52;
  v91 = v54;
  v92 = v56 & 1;
  v93 = v58;
  v94 = v66;
  v95 = v65;
  v96 = 0;
  sub_1000024C4(&qword_100221B38);
  sub_10001B3F8();
  v67 = v85;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v52, v54, v56 & 1);

  v68 = v88;
  v69 = v82;
  sub_10000BEB8(v88, v82, &qword_10022B990);
  v70 = v86;
  sub_10000BEB8(v67, v86, &qword_100221B10);
  v71 = v87;
  sub_10000BEB8(v69, v87, &qword_10022B990);
  v72 = sub_1000024C4(&qword_10022B9A8);
  sub_10000BEB8(v70, v71 + *(v72 + 48), &qword_100221B10);
  sub_1000050C4(v67, &qword_100221B10);
  sub_1000050C4(v68, &qword_10022B990);
  sub_1000050C4(v70, &qword_100221B10);
  return sub_1000050C4(v69, &qword_10022B990);
}

void sub_10019AEF8(void *a1)
{
  if (sub_100197044() > 2u)
  {
    sub_100198B90();
  }

  else
  {
    v2 = a1[8];
    v3 = a1[9];
    sub_10001BED0(a1 + 5, v2);
    (*(v3 + 104))(v2, v3);
    swift_getAssociatedTypeWitness();
    sub_1000024C4(&qword_10022B6C8);
    v4 = _arrayForceCast<A, B>(_:)();

    sub_10013F10C(v4);

    if (a1[14])
    {

      sub_100197CF4(v5);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_10019E000(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_10019B080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = sub_1000024C4(&qword_10022B8F0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  v57 = sub_1000024C4(&qword_10022B8E0);
  __chkstk_darwin(v57);
  v17 = &v56 - v16;
  v61 = sub_1000024C4(&qword_10022B8C8);
  __chkstk_darwin(v61);
  v19 = &v56 - v18;
  v20 = sub_1000024C4(&qword_10022B928);
  v63 = *(v20 - 8);
  v64 = v20;
  __chkstk_darwin(v20);
  v62 = &v56 - v21;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v22 = sub_1000024C4(&qword_10022B930);
  sub_10019B84C(a1, &v15[*(v22 + 44)]);
  v23 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v15[*(sub_1000024C4(&qword_10022B900) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v34 = &v15[*(v13 + 44)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  if (*(a1 + 104) == 1)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v39 = Color.opacity(_:)();
    v41 = v61;
    v40 = v62;
  }

  else
  {
    type metadata accessor for PromotionalPlaylistModule();
    v56 = a1;
    sub_100039EE0(v11);
    (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5);
    v42 = static ColorScheme.== infix(_:_:)();
    v43 = *(v6 + 8);
    v43(v9, v5);
    v43(v11, v5);
    if (v42)
    {
      v41 = v61;
      v40 = v62;
      if (qword_100220C88 != -1)
      {
        swift_once();
      }

      v39 = qword_10022B6F8;
    }

    else
    {
      v41 = v61;
      v40 = v62;
      if (qword_100220C60 != -1)
      {
        swift_once();
      }

      v39 = Color.opacity(_:)();
    }
  }

  v44 = static Edge.Set.all.getter();
  sub_10001AE00(v15, v17, &qword_10022B8F0);
  v45 = &v17[*(v57 + 36)];
  *v45 = v39;
  v45[8] = v44;
  if (qword_100220C80 != -1)
  {
    swift_once();
  }

  v46 = qword_10022B6F0;
  v47 = &v19[*(v41 + 36)];
  v48 = *(type metadata accessor for RoundedRectangle() + 20);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v50 = type metadata accessor for RoundedCornerStyle();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = v46;
  v47[1] = v46;
  *(v47 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
  sub_10001AE00(v17, v19, &qword_10022B8E0);
  v51 = v58;
  static AccessibilityChildBehavior.ignore.getter();
  v52 = sub_10019E8EC();
  View.accessibilityElement(children:)();
  (*(v59 + 8))(v51, v60);
  sub_1000050C4(v19, &qword_10022B8C8);
  v53 = sub_100197044();
  if ((v53 - 1) < 2)
  {
    if (qword_100220C48 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (!v53)
  {
    if (qword_100220C40 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (qword_100220C50 != -1)
  {
LABEL_22:
    swift_once();
  }

LABEL_21:

  v66 = v41;
  v67 = v52;
  swift_getOpaqueTypeConformance2();
  v54 = v64;
  View.accessibilityLabel(_:)();

  return (*(v63 + 8))(v40, v54);
}

uint64_t sub_10019B84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for ColorScheme();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = __chkstk_darwin(v3);
  v48 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = v46 - v6;
  v7 = sub_1000024C4(&qword_10022B938);
  v8 = __chkstk_darwin(v7 - 8);
  v52 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (v46 - v10);
  *v11 = static Alignment.leading.getter();
  v11[1] = v12;
  v13 = sub_1000024C4(&qword_10022B940);
  sub_10019BD78(a1, (v11 + *(v13 + 44)));
  v51 = a1;
  v14 = sub_100197044();
  if ((v14 - 1) < 2)
  {
    if (qword_100220C48 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (v14)
  {
    if (qword_100220C50 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (qword_100220C40 != -1)
  {
LABEL_17:
    swift_once();
  }

LABEL_8:

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_100017398(v15, v17, v19 & 1);

  if (*(v51 + 104))
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v27 = qword_10022B6D0;
  }

  else
  {
    v46[1] = v26;
    type metadata accessor for PromotionalPlaylistModule();
    v28 = v47;
    sub_100039EE0(v47);
    v30 = v48;
    v29 = v49;
    v31 = v50;
    (*(v49 + 104))(v48, enum case for ColorScheme.light(_:), v50);
    v32 = static ColorScheme.== infix(_:_:)();
    v33 = *(v29 + 8);
    v33(v30, v31);
    v33(v28, v31);
    if (v32)
    {
      v34 = static Color.blue.getter();
    }

    else
    {
      v34 = static Color.primary.getter();
    }

    v27 = v34;
  }

  v54 = v27;
  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_100017398(v20, v22, v24 & 1);

  v42 = v52;
  sub_10000BEB8(v11, v52, &qword_10022B938);
  v43 = v53;
  sub_10000BEB8(v42, v53, &qword_10022B938);
  v44 = v43 + *(sub_1000024C4(&qword_10022B948) + 48);
  *v44 = v35;
  *(v44 + 8) = v37;
  v39 &= 1u;
  *(v44 + 16) = v39;
  *(v44 + 24) = v41;
  sub_1000187D8(v35, v37, v39);

  sub_1000050C4(v11, &qword_10022B938);
  sub_100017398(v35, v37, v39);

  return sub_1000050C4(v42, &qword_10022B938);
}

uint64_t sub_10019BD78@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1000024C4(&qword_10022B950);
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_1000024C4(&qword_10022B958);
  v7 = __chkstk_darwin(v6 - 8);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = sub_100197044();
  if ((v11 - 1) >= 2 && v11)
  {
    v48 = 0;
    v49 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v46 = 0;
    v47 = 0;
    v12 = 0;
  }

  else
  {
    v49 = static VerticalAlignment.center.getter();
    v56 = 0;
    sub_10019C290(a1, &v51);
    v59 = v53;
    v60 = v54;
    *&v61 = v55;
    v57 = v51;
    v58 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v63 = v51;
    v64 = v52;
    sub_10000BEB8(&v57, &v50, &qword_10022B978);
    sub_1000050C4(&v63, &qword_10022B978);

    v42 = *(&v57 + 1);
    v43 = v57;
    v41 = v58;
    v38 = *(&v59 + 1);
    v39 = *(&v58 + 1);
    v47 = *(&v60 + 1);
    v37 = v60;
    v48 = v59;
    v46 = v61;
    v12 = v56;
  }

  if (sub_100197044() == 2)
  {
    ProgressView<>.init<>()();
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v13 = qword_10022B6D0;
    KeyPath = swift_getKeyPath();
    *&v63 = v13;

    v15 = AnyShapeStyle.init<A>(_:)();
    v16 = &v5[*(sub_1000024C4(&qword_100222888) + 36)];
    *v16 = KeyPath;
    v16[1] = v15;
    *&v5[*(sub_1000024C4(&qword_10022B970) + 36)] = 257;
    v17 = &v5[*(v3 + 36)];
    v18 = *(sub_1000024C4(&qword_100223890) + 28);
    v19 = enum case for ControlSize.small(_:);
    v20 = type metadata accessor for ControlSize();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = swift_getKeyPath();
    sub_10001AE00(v5, v10, &qword_10022B950);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v44 + 56))(v10, v21, 1, v3);
  v22 = v45;
  sub_10000BEB8(v10, v45, &qword_10022B958);
  v57 = v49;
  v23 = v43;
  *&v58 = v12;
  *(&v58 + 1) = v43;
  v36 = v10;
  v24 = v42;
  v44 = v12;
  v26 = v40;
  v25 = v41;
  *&v59 = v42;
  *(&v59 + 1) = v41;
  v28 = v38;
  v27 = v39;
  *&v60 = v39;
  *(&v60 + 1) = v48;
  v29 = v37;
  *&v61 = v38;
  *(&v61 + 1) = v37;
  *&v62 = v47;
  *(&v62 + 1) = v46;
  v30 = v60;
  v40[2] = v59;
  v26[3] = v30;
  v31 = v62;
  v26[4] = v61;
  v26[5] = v31;
  v32 = v58;
  *v26 = v57;
  v26[1] = v32;
  v33 = sub_1000024C4(&qword_10022B960);
  sub_10000BEB8(v22, v26 + *(v33 + 48), &qword_10022B958);
  sub_10000BEB8(&v57, &v63, &qword_10022B968);
  sub_1000050C4(v36, &qword_10022B958);
  sub_1000050C4(v22, &qword_10022B958);
  v63 = v49;
  *&v64 = v44;
  *(&v64 + 1) = v23;
  *&v65 = v24;
  *(&v65 + 1) = v25;
  *&v66 = v27;
  *(&v66 + 1) = v48;
  v67 = v28;
  v68 = v29;
  v69 = v47;
  v70 = v46;
  return sub_1000050C4(&v63, &qword_10022B968);
}

uint64_t sub_10019C290@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;

  v36 = Image.init(systemName:)();
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v35 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  if (*(a1 + 104) == 1)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v33 = qword_10022B6D0;
  }

  else
  {
    type metadata accessor for PromotionalPlaylistModule();
    sub_100039EE0(v10);
    (*(v5 + 104))(v8, enum case for ColorScheme.light(_:), v4);
    v11 = static ColorScheme.== infix(_:_:)();
    v12 = *(v5 + 8);
    v12(v8, v4);
    v12(v10, v4);
    if (v11)
    {
      v13 = static Color.blue.getter();
    }

    else
    {
      v13 = static Color.primary.getter();
    }

    v33 = v13;
  }

  if (sub_100197044() == 2)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  v37 = 32;
  v38 = 0xE100000000000000;
  sub_10001877C();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_100017398(v15, v17, v19 & 1);

  v27 = v24 & 1;
  LOBYTE(v37) = v24 & 1;
  v28 = v35;
  v30 = v33;
  v29 = KeyPath;
  *a2 = v36;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28;
  *(a2 + 24) = v30;
  *(a2 + 32) = v14;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22;
  *(a2 + 56) = v27;
  *(a2 + 64) = v26;

  sub_1000187D8(v20, v22, v27);

  sub_100017398(v20, v22, v27);
}

uint64_t sub_10019C5FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for BlendMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_10022B850);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v34 = sub_1000024C4(&qword_10022B858);
  v10 = __chkstk_darwin(v34);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *(a1 + 104);
  if (v17 == 1)
  {
    if (qword_100220C70 != -1)
    {
      swift_once();
    }

    v35 = qword_10022B6E0;

    sub_10019757C();
    v18 = Color.opacity(_:)();

    v19 = &enum case for BlendMode.plusDarker(_:);
  }

  else
  {
    v35 = static Color.clear.getter();
    v20 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v18 = Color.init(uiColor:)();
    v19 = &enum case for BlendMode.normal(_:);
  }

  (*(v4 + 104))(v6, *v19, v3);
  (*(v4 + 32))(&v9[*(v7 + 36)], v6, v3);
  *v9 = v18;
  *(v9 + 4) = 256;
  v21 = static Alignment.center.getter();
  v23 = v22;
  sub_1000024C4(&qword_100221D18);
  if (v17)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001B3B50;
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    *(v24 + 32) = Color.opacity(_:)();
    *(v24 + 40) = Color.opacity(_:)();
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001B49B0;
    *(v25 + 32) = static Color.clear.getter();
  }

  static UnitPoint.topTrailing.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v26 = v38;
  sub_10001AE00(v9, v14, &qword_10022B850);
  v27 = &v14[*(v34 + 36)];
  *v27 = v26;
  v28 = v39;
  *(v27 + 24) = v40;
  *(v27 + 8) = v28;
  *(v27 + 5) = v21;
  *(v27 + 6) = v23;
  sub_10001AE00(v14, v16, &qword_10022B858);
  v29 = v36;
  sub_10000BEB8(v16, v36, &qword_10022B858);
  v30 = v37;
  *v37 = v35;
  *(v30 + 4) = 256;
  v31 = sub_1000024C4(&qword_10022B860);
  sub_10000BEB8(v29, v30 + *(v31 + 48), &qword_10022B858);

  sub_1000050C4(v16, &qword_10022B858);
  sub_1000050C4(v29, &qword_10022B858);
}

uint64_t sub_10019CAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10019CB44);
}

uint64_t sub_10019CB44()
{
  v1 = *(v0 + 16);

  sub_10008C108();
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 48);
  sub_10001BED0((*v1 + 16), v2);
  (*(v3 + 72))(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

void *sub_10019CBE8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BEB8(v1 + 16, v23, &qword_100221AB8);
  if (!v24)
  {
    sub_1000050C4(v23, &qword_100221AB8);
    v18 = type metadata accessor for URL();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  v21 = a1;
  v7 = v25;
  result = sub_10001BED0(v23, v24);
  v20[1] = result;
  v9 = *(v1 + 56);
  v10 = *v1;
  v11 = *(v1 + 8);
  if (v11 == 1)
  {
    v12 = *v1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v10, 0);
    result = (*(v4 + 8))(v6, v3);
    v12 = v22;
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v9 * v12;
  if ((v9 * v12) >> 64 != v14 >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11)
  {
    v15 = *&v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v10, 0);
    result = (*(v4 + 8))(v6, v3);
    v15 = v22;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v9 * v15) >> 64 != (v9 * v15) >> 63)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v17 = v21;
  (*(v7 + 40))(v14);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  return sub_100012A7C(v23);
}

uint64_t sub_10019CFC4()
{
  v1 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_1000024C4(&qword_100229B98);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  sub_10019CBE8(v3);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_10019D4D0(v0, v13);
  v7 = swift_allocObject();
  v8 = v13[3];
  *(v7 + 48) = v13[2];
  *(v7 + 64) = v8;
  *(v7 + 80) = v14;
  v9 = v13[1];
  *(v7 + 16) = v13[0];
  *(v7 + 32) = v9;
  sub_1000024C4(&qword_100223280);
  sub_100057330();
  AsyncImage.init(url:scale:transaction:content:)();
  v10 = &v6[*(sub_1000024C4(&qword_100229BA0) + 36)];
  *v10 = 0x3FF0000000000000;
  *(v10 + 4) = 0;
  v6[*(v4 + 36)] = 1;
  sub_100150B40();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v6, &qword_100229B98);
}

uint64_t sub_10019D1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncImagePhase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v11 + 88))(v13, v10) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v14 = Image.resizable(capInsets:resizingMode:)();
    (*(v7 + 8))(v9, v6);
    v18 = v14;
    v19 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223298);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();

    v16 = v20;
    v17 = v21;
  }

  else
  {
    v18 = *(a2 + 64);
    v19 = 1;

    sub_1000024C4(&qword_100223298);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();
    v16 = v20;
    v17 = v21;
    result = (*(v11 + 8))(v13, v10);
  }

  *a3 = v16;
  *(a3 + 8) = v17;
  return result;
}

uint64_t sub_10019D508()
{
  sub_10001BC5C(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    sub_100012A7C(v0 + 32);
  }

  return swift_deallocObject();
}

unint64_t sub_10019D568()
{
  result = qword_100229BC8;
  if (!qword_100229BC8)
  {
    sub_10000460C(&qword_100229BD0);
    sub_100150B40();
    sub_10019E000(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229BC8);
  }

  return result;
}

uint64_t sub_10019D638(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000024C4(&qword_1002222A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1000024C4(&qword_100221B80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1000024C4(qword_100228110);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_10019D7DC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000024C4(&qword_1002222A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000024C4(&qword_100221B80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1000024C4(qword_100228110);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for PromotionalPlaylistModule()
{
  result = qword_10022B758;
  if (!qword_10022B758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019D9B8()
{
  sub_100017044();
  if (v0 <= 0x3F)
  {
    sub_10019DAD0(319, &qword_1002219C0, &type metadata accessor for OpenURLAction);
    if (v1 <= 0x3F)
    {
      sub_10019DAD0(319, &qword_100221C00, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_10019DAD0(319, &qword_100226230, &type metadata accessor for ContentSizeCategory);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10019DAD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10019DB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromotionalPlaylistModule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019DC08()
{
  result = qword_10022B7C0;
  if (!qword_10022B7C0)
  {
    sub_10000460C(&qword_10022B7B8);
    sub_10019DCC0();
    sub_10000BFFC(&qword_100227AF8, &qword_100224440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7C0);
  }

  return result;
}

unint64_t sub_10019DCC0()
{
  result = qword_10022B7C8;
  if (!qword_10022B7C8)
  {
    sub_10000460C(&qword_10022B7D0);
    sub_10019DD78();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7C8);
  }

  return result;
}

unint64_t sub_10019DD78()
{
  result = qword_10022B7D8;
  if (!qword_10022B7D8)
  {
    sub_10000460C(&qword_10022B7E0);
    sub_10019DE30();
    sub_10000BFFC(&qword_10022B828, &qword_10022B830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7D8);
  }

  return result;
}

unint64_t sub_10019DE30()
{
  result = qword_10022B7E8;
  if (!qword_10022B7E8)
  {
    sub_10000460C(&qword_10022B7F0);
    sub_10019DEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7E8);
  }

  return result;
}

unint64_t sub_10019DEBC()
{
  result = qword_10022B7F8;
  if (!qword_10022B7F8)
  {
    sub_10000460C(&qword_10022B800);
    sub_10019DF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7F8);
  }

  return result;
}

unint64_t sub_10019DF48()
{
  result = qword_10022B808;
  if (!qword_10022B808)
  {
    sub_10000460C(&qword_10022B810);
    sub_10000BFFC(&qword_10022B818, &qword_10022B820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B808);
  }

  return result;
}

uint64_t sub_10019E000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019E048()
{
  v1 = type metadata accessor for PromotionalPlaylistModule();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  sub_100012A7C(v0 + v2 + 40);

  v4 = v1[6];
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[7];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  sub_1000024C4(&qword_1002229F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ContentSizeCategory();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10019E288()
{
  v2 = *(type metadata accessor for PromotionalPlaylistModule() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000BD00;

  return sub_10019CAAC(v4, v5, v0 + v3);
}

uint64_t sub_10019E368()
{
  v1 = type metadata accessor for PromotionalPlaylistModule();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_100012A7C(v2 + 40);

  v3 = v1[6];
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  sub_1000024C4(&qword_1002229F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ContentSizeCategory();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10019E5A0()
{
  v1 = *(type metadata accessor for PromotionalPlaylistModule() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = v2[5];
  v4 = v2[6];
  sub_10001BED0(v2 + 2, v3);
  return (*(v4 + 80))(v3, v4);
}

uint64_t sub_10019E654(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.controlSize.setter();
}

uint64_t sub_10019E71C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10019E78C()
{
  v1 = *(type metadata accessor for PromotionalPlaylistModule() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_10019AEF8(v2);
}

unint64_t sub_10019E7F4()
{
  result = qword_10022B8C0;
  if (!qword_10022B8C0)
  {
    sub_10000460C(&qword_10022B8B8);
    sub_10000460C(&qword_10022B8C8);
    sub_10019E8EC();
    swift_getOpaqueTypeConformance2();
    sub_10019E000(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8C0);
  }

  return result;
}

unint64_t sub_10019E8EC()
{
  result = qword_10022B8D0;
  if (!qword_10022B8D0)
  {
    sub_10000460C(&qword_10022B8C8);
    sub_10019E9A4();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8D0);
  }

  return result;
}

unint64_t sub_10019E9A4()
{
  result = qword_10022B8D8;
  if (!qword_10022B8D8)
  {
    sub_10000460C(&qword_10022B8E0);
    sub_10019EA5C();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8D8);
  }

  return result;
}

unint64_t sub_10019EA5C()
{
  result = qword_10022B8E8;
  if (!qword_10022B8E8)
  {
    sub_10000460C(&qword_10022B8F0);
    sub_10019EAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8E8);
  }

  return result;
}

unint64_t sub_10019EAE8()
{
  result = qword_10022B8F8;
  if (!qword_10022B8F8)
  {
    sub_10000460C(&qword_10022B900);
    sub_10000BFFC(&qword_10022B908, &qword_10022B910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8F8);
  }

  return result;
}

uint64_t sub_10019EBD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10019EC40()
{
  result = qword_10022B998;
  if (!qword_10022B998)
  {
    sub_10000460C(&qword_10022B988);
    sub_10019ECCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B998);
  }

  return result;
}

unint64_t sub_10019ECCC()
{
  result = qword_10022B9A0;
  if (!qword_10022B9A0)
  {
    sub_10000460C(&qword_10022B980);
    sub_10008246C();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B9A0);
  }

  return result;
}

unint64_t sub_10019ED90()
{
  result = qword_10022B9B0;
  if (!qword_10022B9B0)
  {
    sub_10000460C(&qword_10022B840);
    sub_10000460C(&qword_100220CE0);
    sub_10019EE58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B9B0);
  }

  return result;
}

unint64_t sub_10019EE58()
{
  result = qword_10022B9B8[0];
  if (!qword_10022B9B8[0])
  {
    sub_10000460C(&qword_100220CE0);
    sub_10000460C(&qword_10022B7B0);
    type metadata accessor for PlainButtonStyle();
    sub_10000BFFC(&qword_10022B838, &qword_10022B7B0);
    sub_10019E000(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10019E000(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10022B9B8);
  }

  return result;
}

uint64_t sub_10019EFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000BEB8(a3, v22 - v9, &qword_100227360);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000050C4(v10, &qword_100227360);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000050C4(a3, &qword_100227360);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000050C4(a3, &qword_100227360);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10019F288@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v4 = type metadata accessor for PhoneWallpaperView();
  sub_10019F450(a1);
  v5 = a2 + *(v4 + 40);
  State.init(wrappedValue:)();
  *v5 = v9;
  *(v5 + 8) = v10;
  v6 = (a2 + *(v4 + 44));
  type metadata accessor for RemoteViewConfiguration();
  sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v6 = result;
  v6[1] = v8;
  return result;
}

uint64_t sub_10019F410()
{
  type metadata accessor for PhoneWallpaperViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_10019F450(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

void sub_10019F544()
{
  type metadata accessor for PhoneWallpaperViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    type metadata accessor for State();
    if (v1 <= 0x3F)
    {
      sub_1001A75EC(319, &qword_1002231A8, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100017044();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10019F64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhoneWallpaperViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  type metadata accessor for Optional();
  v11 = type metadata accessor for State();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10019F7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhoneWallpaperViewModel();
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    type metadata accessor for Optional();
    result = type metadata accessor for State();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10019F920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v36 = sub_10000460C(&qword_100222B98);
  v3 = *(a1 + 16);
  v37 = a1;
  type metadata accessor for Array();
  sub_10000460C(&qword_100222BA0);
  swift_getWitnessTable();
  v4 = *(a1 + 24);
  v57 = *(v4 + 8);
  type metadata accessor for ForEach();
  v52 = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v35 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v5 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = v5;
  v56 = v57;
  v7 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for Optional();
  v53 = OpaqueTypeMetadata2;
  v54 = v7;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v47 = *(v57 + 8);
  v53 = v8;
  v54 = v9;
  v55 = WitnessTable;
  v56 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022BA40);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022BA48);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PageControl();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  v11 = v4;
  _s16EventViewService17SelectAssetButtonVMa_0();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v32 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for ModifiedContent();
  v34 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  sub_10000460C(&qword_100222BD8);
  v18 = type metadata accessor for ModifiedContent();
  v36 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v31 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v33 = &v30 - v21;
  v40 = v3;
  v41 = v11;
  v42 = v38;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  static Edge.Set.top.getter();
  sub_10019F410();
  sub_1001AADE0();

  v22 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v32 + 8))(v14, v12);
  sub_10019F410();
  LOBYTE(OpaqueTypeMetadata2) = sub_1001AADE0();

  LOBYTE(v53) = (OpaqueTypeMetadata2 & 1) == 0;
  static Alignment.center.getter();
  sub_1000024C4(&qword_100222BE0);
  v45 = v22;
  v46 = &protocol witness table for _PaddingLayout;
  v23 = swift_getWitnessTable();
  sub_1001A4248(&qword_100222BE8, &qword_100222BE0, &unk_1001B6830, sub_1000421E8);
  v24 = v31;
  View.background<A>(_:alignment:)();
  (*(v34 + 8))(v17, v15);
  v25 = sub_10000BFFC(&qword_100222BF8, &qword_100222BD8);
  v43 = v23;
  v44 = v25;
  v26 = swift_getWitnessTable();
  v27 = v33;
  sub_1000EE87C(v24, v18, v26);
  v28 = *(v36 + 8);
  v28(v24, v18);
  sub_1000EE87C(v27, v18, v26);
  return (v28)(v27, v18);
}

uint64_t sub_1001A0314@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a1;
  v125 = a4;
  v6 = _s16EventViewService17SelectAssetButtonVMa_0();
  v122 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v109 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v104 - v9;
  v10 = type metadata accessor for Optional();
  v104 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v119 = &v104 - v12;
  v120 = *(a2 - 8);
  v13 = __chkstk_darwin(v11);
  v107 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v104 - v15;
  v127 = v6;
  v126 = type metadata accessor for Optional();
  v121 = *(v126 - 8);
  v16 = __chkstk_darwin(v126);
  v124 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v123 = &v104 - v18;
  v135 = type metadata accessor for PhoneWallpaperView();
  v117 = *(v135 - 8);
  v115 = v117[8];
  __chkstk_darwin(v135);
  v116 = &v104 - v19;
  v20 = type metadata accessor for Array();
  v21 = sub_10000460C(&qword_100222BA0);
  WitnessTable = swift_getWitnessTable();
  v118 = a3;
  v23 = *(a3 + 8);
  v152 = v20;
  v153 = a2;
  v154 = v21;
  v155 = WitnessTable;
  v156 = v23;
  type metadata accessor for ForEach();
  v151 = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  v24 = type metadata accessor for HStack();
  v25 = swift_getWitnessTable();
  v152 = v24;
  v153 = v25;
  swift_getOpaqueTypeMetadata2();
  v152 = v24;
  v153 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = type metadata accessor for ScrollView();
  v27 = swift_getWitnessTable();
  v152 = v26;
  v153 = v27;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v28 = type metadata accessor for ModifiedContent();
  v29 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v152 = v26;
  v153 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v149 = OpaqueTypeConformance2;
  v150 = v31;
  v32 = swift_getWitnessTable();
  v152 = v28;
  v153 = v29;
  v154 = v32;
  v155 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v152 = v28;
  v153 = v29;
  v154 = v32;
  v155 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v34 = swift_getOpaqueTypeConformance2();
  v152 = OpaqueTypeMetadata2;
  v153 = a2;
  v154 = v34;
  v155 = v23;
  v35 = swift_getOpaqueTypeMetadata2();
  v152 = OpaqueTypeMetadata2;
  v153 = a2;
  v154 = v34;
  v155 = v23;
  v36 = swift_getOpaqueTypeConformance2();
  v152 = v35;
  v153 = v36;
  swift_getOpaqueTypeMetadata2();
  v37 = type metadata accessor for ModifiedContent();
  v152 = v35;
  v153 = v36;
  v147 = swift_getOpaqueTypeConformance2();
  v148 = &protocol witness table for _FrameLayout;
  v38 = swift_getWitnessTable();
  v146 = v23[1];
  v39 = swift_getWitnessTable();
  v152 = v37;
  v153 = v10;
  v105 = v10;
  v154 = v38;
  v155 = v39;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022BA40);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022BA48);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v128 = a2;
  type metadata accessor for PageControl();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  v40 = type metadata accessor for TupleView();
  v41 = swift_getWitnessTable();
  v112 = v40;
  v111 = v41;
  v42 = type metadata accessor for VStack();
  v113 = *(v42 - 8);
  __chkstk_darwin(v42);
  v110 = &v104 - v43;
  v133 = type metadata accessor for ModifiedContent();
  v129 = *(v133 - 8);
  v44 = __chkstk_darwin(v133);
  v132 = &v104 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v134 = &v104 - v46;
  v47 = sub_1000024C4(&qword_100222C00);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = &v104 - v49;
  v114 = sub_1000024C4(&qword_100222B98);
  v51 = __chkstk_darwin(v114);
  v131 = &v104 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v54 = &v104 - v53;
  sub_10019F410();
  LOBYTE(v23) = sub_1001AADE0();

  v55 = 1;
  if (v23)
  {
    v56 = sub_10019F410();
    v58 = *(v56 + 16);
    v57 = *(v56 + 24);
    v59 = *(v56 + 32);
    v60 = *(v56 + 40);

    v152 = v58;
    v153 = v57;
    LOBYTE(v154) = v59;
    v155 = v60;
    sub_100042328();
    View.accessibilityIdentifier(_:)();

    sub_10004237C(v50, v54);
    v55 = 0;
  }

  v61 = *(v48 + 56);
  v130 = v54;
  v62 = v61(v54, v55, 1, v47);
  __chkstk_darwin(v62);
  v63 = v128;
  v64 = v118;
  *(&v104 - 4) = v128;
  *(&v104 - 3) = v64;
  v65 = v136;
  *(&v104 - 2) = v136;
  static HorizontalAlignment.center.getter();
  v66 = v110;
  VStack.init(alignment:spacing:content:)();
  v67 = v117;
  v68 = v116;
  v69 = v135;
  (v117[2])(v116, v65, v135);
  v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v63;
  *(v71 + 24) = v64;
  (v67[4])(v71 + v70, v68, v69);
  v72 = swift_getWitnessTable();
  v73 = v132;
  View.onAppear(perform:)();

  (*(v113 + 8))(v66, v42);
  v144 = v72;
  v145 = &protocol witness table for _AppearanceActionModifier;
  v74 = v133;
  v116 = swift_getWitnessTable();
  sub_1000EE87C(v73, v74, v116);
  v75 = *(v129 + 8);
  v118 = v129 + 8;
  v117 = v75;
  (v75)(v73, v74);
  v76 = v119;
  sub_10003D17C(v69, &State.wrappedValue.getter);
  v77 = v120;
  if ((*(v120 + 48))(v76, 1, v63) == 1)
  {
    (*(v104 + 8))(v76, v105);
    v78 = v124;
    (*(v122 + 56))(v124, 1, 1, v127);
    swift_getWitnessTable();
  }

  else
  {
    v79 = v106;
    v80 = v128;
    (*(v77 + 32))(v106, v76, v128);
    v81 = &v136[*(v135 + 40)];
    v82 = *v81;
    v83 = *(v81 + 1);
    LOBYTE(v141) = v82;
    v142 = v83;
    sub_1000024C4(&qword_100223240);
    State.projectedValue.getter();
    v84 = v152;
    v85 = v153;
    v86 = v154;
    v87 = v107;
    (*(v77 + 16))(v107, v79, v80);
    v88 = sub_10019F410();
    v89 = v109;
    sub_1001A40B8(v84, v85, v86, v87, v88, v109);
    (*(v77 + 8))(v79, v80);
    v90 = v127;
    v91 = swift_getWitnessTable();
    v92 = v108;
    sub_1000EE87C(v89, v90, v91);
    v93 = v122;
    v94 = *(v122 + 8);
    v94(v89, v90);
    sub_1000EE87C(v92, v90, v91);
    v94(v92, v90);
    v78 = v124;
    (*(v93 + 32))(v124, v89, v90);
    (*(v93 + 56))(v78, 0, 1, v90);
  }

  v95 = v123;
  sub_1000E7690(v78, v123);
  v96 = v121;
  v136 = *(v121 + 8);
  v97 = v126;
  (v136)(v78, v126);
  v98 = v131;
  sub_10000BEB8(v130, v131, &qword_100222B98);
  v152 = v98;
  v99 = v132;
  v100 = v133;
  (*(v129 + 16))(v132, v134, v133);
  v153 = v99;
  (*(v96 + 16))(v78, v95, v97);
  v154 = v78;
  v141 = v114;
  v142 = v100;
  v143 = v97;
  v138 = sub_1001A4248(&qword_100222C08, &qword_100222B98, &unk_1001B6800, sub_1001A4300);
  v139 = v116;
  v137 = swift_getWitnessTable();
  v140 = swift_getWitnessTable();
  sub_1000E76FC(&v152, 3uLL, &v141);
  v101 = v136;
  (v136)(v95, v97);
  v102 = v117;
  (v117)(v134, v100);
  sub_1000050C4(v130, &qword_100222B98);
  v101(v78, v97);
  v102(v99, v100);
  return sub_1000050C4(v131, &qword_100222B98);
}

uint64_t sub_1001A1518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v208 = a1;
  v196 = a4;
  v4 = *(a3 + 8);
  v205 = a3;
  v198 = v4[1];
  v5 = v4;
  v199 = v4;
  v7 = type metadata accessor for PageControl();
  v190 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v134 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v133 = &v133 - v10;
  v194 = v11;
  v195 = type metadata accessor for Optional();
  v191 = *(v195 - 8);
  v12 = __chkstk_darwin(v195);
  v193 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v192 = &v133 - v14;
  v204 = type metadata accessor for PhoneWallpaperView();
  v187 = *(v204 - 8);
  v188 = *(v187 + 64);
  __chkstk_darwin(v204);
  v186 = &v133 - v15;
  v201 = type metadata accessor for Optional();
  v189 = *(v201 - 8);
  __chkstk_darwin(v201);
  v185 = &v133 - v16;
  v17 = type metadata accessor for Binding();
  v183 = *(v17 - 8);
  v184 = v17;
  __chkstk_darwin(v17);
  v197 = &v133 - v18;
  v19 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v19 - 8);
  v181 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v182 = *(v21 - 8);
  __chkstk_darwin(v21);
  v180 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ContentMarginPlacement();
  v178 = *(v23 - 8);
  v179 = v23;
  __chkstk_darwin(v23);
  v177 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Array();
  v26 = sub_10000460C(&qword_100222BA0);
  WitnessTable = swift_getWitnessTable();
  v222 = v25;
  v223 = a2;
  v224 = v26;
  v225 = WitnessTable;
  v226 = v5;
  type metadata accessor for ForEach();
  v221[13] = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  v28 = type metadata accessor for HStack();
  v29 = swift_getWitnessTable();
  v222 = v28;
  v223 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v222 = v28;
  v223 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = type metadata accessor for ScrollView();
  v173 = *(v30 - 8);
  __chkstk_darwin(v30);
  v153 = &v133 - v31;
  v32 = swift_getWitnessTable();
  v222 = v30;
  v223 = v32;
  v33 = v32;
  v146 = v32;
  v163 = swift_getOpaqueTypeMetadata2();
  v169 = *(v163 - 8);
  __chkstk_darwin(v163);
  v158 = &v133 - v34;
  type metadata accessor for AccessibilityAttachmentModifier();
  v35 = type metadata accessor for ModifiedContent();
  v170 = *(v35 - 8);
  __chkstk_darwin(v35);
  v157 = &v133 - v36;
  v222 = v30;
  v223 = v33;
  v37 = swift_getOpaqueTypeConformance2();
  v152 = v37;
  v38 = sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v221[11] = v37;
  v221[12] = v38;
  v176 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v39 = swift_getWitnessTable();
  v222 = v35;
  v223 = v21;
  v143 = v21;
  v144 = v35;
  v224 = v39;
  v225 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v145 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v161 = *(v40 - 8);
  __chkstk_darwin(v40);
  v142 = &v133 - v41;
  v222 = v35;
  v223 = v21;
  v224 = v39;
  v225 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v42 = swift_getOpaqueTypeConformance2();
  v140 = v40;
  v141 = v42;
  v222 = v40;
  v223 = a2;
  v43 = a2;
  v44 = v42;
  v45 = v199;
  v224 = v42;
  v225 = v199;
  v46 = swift_getOpaqueTypeMetadata2();
  v156 = *(v46 - 8);
  __chkstk_darwin(v46);
  v138 = &v133 - v47;
  v222 = v40;
  v223 = v43;
  v48 = v43;
  v206 = v43;
  v224 = v44;
  v225 = v45;
  v49 = swift_getOpaqueTypeConformance2();
  v222 = v46;
  v223 = v49;
  v135 = v46;
  v136 = v49;
  v50 = v49;
  v147 = swift_getOpaqueTypeMetadata2();
  v154 = *(v147 - 8);
  __chkstk_darwin(v147);
  v137 = &v133 - v51;
  v52 = type metadata accessor for ModifiedContent();
  v150 = v52;
  v168 = *(v52 - 8);
  __chkstk_darwin(v52);
  v200 = &v133 - v53;
  v222 = v46;
  v223 = v50;
  v139 = swift_getOpaqueTypeConformance2();
  v221[9] = v139;
  v221[10] = &protocol witness table for _FrameLayout;
  v54 = swift_getWitnessTable();
  v149 = v54;
  v221[8] = v198;
  v55 = v201;
  v148 = swift_getWitnessTable();
  v222 = v52;
  v223 = v55;
  v224 = v54;
  v225 = v148;
  v159 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v155 = swift_getOpaqueTypeMetadata2();
  v164 = *(v155 - 8);
  __chkstk_darwin(v155);
  v202 = &v133 - v56;
  sub_10000460C(&qword_10022BA40);
  v160 = type metadata accessor for ModifiedContent();
  v172 = *(v160 - 8);
  __chkstk_darwin(v160);
  v151 = &v133 - v57;
  sub_10000460C(&qword_10022BA48);
  v171 = type metadata accessor for ModifiedContent();
  v175 = *(v171 - 8);
  __chkstk_darwin(v171);
  v162 = &v133 - v58;
  v174 = type metadata accessor for ModifiedContent();
  v203 = *(v174 - 8);
  v59 = __chkstk_darwin(v174);
  v167 = &v133 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v207 = &v133 - v61;
  static Axis.Set.horizontal.getter();
  v215 = v48;
  v216 = v205;
  v62 = v208;
  v217 = v208;
  v63 = v153;
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.horizontal.getter();
  v64 = v204;
  sub_10019F410();
  sub_1001AAEE4();

  v65 = v177;
  j___s7SwiftUI22ContentMarginPlacementV9automaticACvgZ();
  v66 = v158;
  View.contentMargins(_:_:for:)();
  (*(v178 + 8))(v65, v179);
  (*(v173 + 8))(v63, v30);
  v67 = v157;
  v68 = v163;
  View.accessibilityIdentifier(_:)();
  (*(v169 + 8))(v66, v68);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v69 = v180;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v71 = v142;
  v70 = v143;
  v72 = v144;
  View.scrollTargetBehavior<A>(_:)();
  (*(v182 + 8))(v69, v70);
  (*(v170 + 8))(v67, v72);
  v73 = v197;
  sub_10003D17C(v64, &State.projectedValue.getter);
  v74 = v138;
  v75 = v73;
  v76 = v140;
  v77 = v206;
  View.scrollPosition<A>(id:anchor:)();
  (*(v183 + 8))(v75, v184);
  v78 = v71;
  v79 = v77;
  (*(v161 + 8))(v78, v76);
  v80 = v64;
  sub_10019F410();
  sub_1001AAF24();

  v81 = v137;
  v82 = v135;
  View.scrollDisabled(_:)();
  (*(v156 + 8))(v74, v82);
  v83 = v62;
  sub_10019F410();
  sub_1001AAF5C();

  static Alignment.center.getter();
  v84 = v147;
  View.frame(width:height:alignment:)();
  (*(v154 + 8))(v81, v84);
  v85 = v185;
  v86 = v83;
  sub_10003D17C(v80, &State.wrappedValue.getter);
  v88 = v186;
  v87 = v187;
  (*(v187 + 16))(v186, v86, v80);
  v89 = v87;
  v90 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v91 = swift_allocObject();
  v92 = v205;
  *(v91 + 16) = v79;
  *(v91 + 24) = v92;
  (*(v89 + 32))(v91 + v90, v88, v80);
  v93 = v85;
  v95 = v149;
  v94 = v150;
  v96 = v201;
  v97 = v148;
  v98 = v200;
  View.onChange<A>(of:initial:_:)();

  (*(v189 + 8))(v93, v96);
  (*(v168 + 8))(v98, v94);
  static Alignment.center.getter();
  v212 = v79;
  v213 = v92;
  v99 = v208;
  v214 = v208;
  sub_1000024C4(&qword_100222C38);
  v222 = v94;
  v223 = v96;
  v224 = v95;
  v225 = v97;
  v100 = swift_getOpaqueTypeConformance2();
  sub_100043A68();
  v101 = v151;
  v102 = v155;
  v103 = v202;
  View.overlay<A>(alignment:content:)();
  (*(v164 + 8))(v103, v102);
  static Alignment.center.getter();
  v209 = v206;
  v210 = v92;
  v211 = v99;
  sub_1000024C4(&qword_10022BA50);
  v104 = sub_10000BFFC(&qword_10022BA58, &qword_10022BA40);
  v221[6] = v100;
  v221[7] = v104;
  v105 = v160;
  v106 = swift_getWitnessTable();
  sub_10000BFFC(&qword_10022BA60, &qword_10022BA50);
  v107 = v162;
  View.background<A>(alignment:content:)();
  (*(v172 + 8))(v101, v105);
  static Edge.Set.bottom.getter();
  v108 = sub_10000BFFC(&qword_10022BA68, &qword_10022BA48);
  v221[4] = v106;
  v221[5] = v108;
  v109 = v171;
  v110 = swift_getWitnessTable();
  v111 = v167;
  View.padding(_:_:)();
  (*(v175 + 8))(v107, v109);
  v221[2] = v110;
  v221[3] = &protocol witness table for _PaddingLayout;
  v112 = v204;
  v113 = v174;
  v201 = swift_getWitnessTable();
  sub_1000EE87C(v111, v113, v201);
  v114 = *(v203 + 8);
  v115 = v111;
  v116 = v111;
  v117 = v113;
  v205 = v203 + 8;
  v202 = v114;
  (v114)(v116, v113);
  sub_10019F410();
  LOBYTE(v109) = sub_1001AAF24();

  if (v109)
  {
    v118 = *(sub_10019F410() + 240);

    v119 = v197;
    sub_10003D17C(v112, &State.projectedValue.getter);
    v120 = v134;
    sub_100120434(v118, v119, v134);
    v121 = v194;
    v122 = swift_getWitnessTable();
    v123 = v133;
    sub_1000EE87C(v120, v121, v122);
    v124 = v190;
    v125 = *(v190 + 8);
    v125(v120, v121);
    sub_1000EE87C(v123, v121, v122);
    v125(v123, v121);
    v126 = v193;
    (*(v124 + 32))(v193, v120, v121);
    (*(v124 + 56))(v126, 0, 1, v121);
  }

  else
  {
    v126 = v193;
    (*(v190 + 56))(v193, 1, 1, v194);
    swift_getWitnessTable();
  }

  v127 = v192;
  sub_1000E7690(v126, v192);
  v128 = v191;
  v129 = *(v191 + 8);
  v130 = v195;
  v129(v126, v195);
  (*(v203 + 16))(v115, v207, v117);
  v222 = v115;
  (*(v128 + 16))(v126, v127, v130);
  v223 = v126;
  v221[0] = v117;
  v221[1] = v130;
  v219 = v201;
  v218 = swift_getWitnessTable();
  v220 = swift_getWitnessTable();
  sub_1000E76FC(&v222, 2uLL, v221);
  v129(v127, v130);
  v131 = v202;
  (v202)(v207, v117);
  v129(v126, v130);
  return v131(v115, v117);
}

uint64_t sub_1001A2CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a1;
  v29 = a4;
  v26 = a2;
  v6 = type metadata accessor for Array();
  v7 = sub_10000460C(&qword_100222BA0);
  WitnessTable = swift_getWitnessTable();
  v9 = *(a3 + 8);
  v34 = v6;
  v35 = a2;
  v36 = v7;
  v37 = WitnessTable;
  v38 = v9;
  type metadata accessor for ForEach();
  v33 = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  v25[1] = swift_getWitnessTable();
  v10 = type metadata accessor for HStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - v12;
  v14 = swift_getWitnessTable();
  v34 = v10;
  v35 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v25 - v20;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  View.scrollTargetLayout(isEnabled:)();
  (*(v11 + 8))(v13, v10);
  v34 = v10;
  v35 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v16 + 8);
  v23(v19, OpaqueTypeMetadata2);
  sub_1000EE87C(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_1001A2FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = type metadata accessor for PhoneWallpaperView();
  v8 = *(v7 - 8);
  v30 = *(v8 + 64);
  __chkstk_darwin(v7);
  v29 = &KeyPath - v9;
  v10 = type metadata accessor for Array();
  v34 = v10;
  v11 = sub_10000460C(&qword_100222BA0);
  v33 = v11;
  WitnessTable = swift_getWitnessTable();
  v31 = *(a3 + 8);
  v32 = WitnessTable;
  v40 = v10;
  v41 = a2;
  v42 = v11;
  v43 = WitnessTable;
  v44 = v31;
  v13 = type metadata accessor for ForEach();
  v35 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v28 = &KeyPath - v17;
  v18 = *(sub_10019F410() + 240);

  v40 = v18;
  v37 = a2;
  v38 = a3;
  KeyPath = swift_getKeyPath();
  v19 = v29;
  (*(v8 + 16))(v29, a1, v7);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v8 + 32))(v21 + v20, v19, v7);
  v26 = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  ForEach<>.init(_:id:content:)();
  v39 = v26;
  v22 = swift_getWitnessTable();
  v23 = v28;
  sub_1000EE87C(v16, v13, v22);
  v24 = *(v35 + 8);
  v24(v16, v13);
  sub_1000EE87C(v23, v13, v22);
  return (v24)(v23, v13);
}

uint64_t sub_1001A3364@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a1;
  v43 = a4;
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ScrollAsset();
  __chkstk_darwin(v32);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024C4(qword_100222C70);
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v35 = &v32 - v11;
  v12 = sub_1000024C4(&qword_100222BB8);
  v41 = *(v12 - 8);
  v42 = v12;
  __chkstk_darwin(v12);
  v33 = &v32 - v13;
  v14 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3);
  (*(v18 + 56))(v16, 0, 1, v17);
  (*(v18 + 32))(v20, v16, v17);
  (*(v18 + 16))(v9, v20, v17);
  type metadata accessor for PhoneWallpaperView();
  sub_10019F410();
  v21 = sub_1001AAE54();

  sub_10019F410();
  v22 = sub_1001AAE84();

  sub_10019F410();
  v23 = sub_1001AAEA8();

  v24 = v32;
  *&v9[*(v32 + 20)] = v21;
  *&v9[*(v24 + 24)] = v22;
  *&v9[*(v24 + 28)] = v23;
  v25 = v36;
  static AccessibilityChildBehavior.contain.getter();
  v26 = sub_10004527C(&qword_100222BC0, type metadata accessor for ScrollAsset);
  v27 = v35;
  View.accessibilityElement(children:)();
  (*(v39 + 8))(v25, v40);
  sub_100043DA8(v9);
  v44 = v24;
  v45 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  v29 = v38;
  View.accessibilityIdentifier(_:)();
  (*(v37 + 8))(v27, v29);
  (*(v18 + 8))(v20, v17);
  v30 = v43;
  sub_100043E04(v28, v43);
  return (*(v41 + 56))(v30, 0, 1, v42);
}

uint64_t sub_1001A3900(uint64_t a1)
{
  v2 = type metadata accessor for PhoneWallpaperView();
  sub_10019F410();
  v3 = *(a1 + *(v2 + 44));
  if (v3)
  {

    sub_1001AAF60(29, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A39E4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhoneWallpaperView();
  v2 = sub_10019F410();
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);

  sub_10019F410();
  v5 = sub_1001AB1E4();

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1001A3A70@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhoneWallpaperView();
  sub_10019F410();
  v6 = sub_1001AB208();

  sub_10019F410();
  v7 = sub_1001AB238();

  sub_10019F410();
  v8 = sub_1001AC17C();

  v9 = enum case for Color.RGBColorSpace.sRGBLinear(_:);
  v10 = *(v3 + 104);
  v10(v5, enum case for Color.RGBColorSpace.sRGBLinear(_:), v2);
  v11 = Color.init(_:white:opacity:)();
  v10(v5, v9, v2);
  v12 = Color.init(_:white:opacity:)();
  sub_10019F410();
  v13 = sub_1001AB208();

  sub_10019F410();
  v14 = sub_1001AB238();

  sub_10019F410();
  v15 = sub_1001AC17C();

  *&v22 = v6;
  *(&v22 + 1) = v7;
  *&v23 = v8;
  *(&v23 + 1) = v11;
  v24 = xmmword_1001B6760;
  *&v25 = 0x4010000000000000;
  *(&v25 + 1) = v12;
  v26 = xmmword_1001B6770;
  v27 = xmmword_1001C3AE0;
  v16 = v25;
  *(a1 + 32) = xmmword_1001B6760;
  *(a1 + 48) = v16;
  v17 = v27;
  *(a1 + 64) = v26;
  *(a1 + 80) = v17;
  v18 = v23;
  *a1 = v22;
  *(a1 + 16) = v18;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *v28 = v6;
  *&v28[1] = v7;
  *&v28[2] = v8;
  v28[3] = v11;
  v29 = xmmword_1001B6760;
  v30 = 0x4010000000000000;
  v31 = v12;
  v32 = xmmword_1001B6770;
  v33 = xmmword_1001C3AE0;
  sub_10000BEB8(&v22, &v21, qword_10022BA70);
  return sub_1000050C4(v28, qword_10022BA70);
}

uint64_t sub_1001A3D54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = type metadata accessor for PhoneWallpaperView();
  v27 = a1;
  sub_10003D17C(v15, &State.wrappedValue.getter);
  v16 = *(v4 + 48);
  v17 = v16(v14, 1, a2);
  v26 = *(v7 + 8);
  result = v26(v14, v6);
  if (v17 == 1)
  {
    v23 = v4;
    v19 = *(sub_10019F410() + 240);

    v28 = v19;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if (v16(v12, 1, a2) == 1)
    {
      v26(v12, v6);
    }

    else
    {
      v20 = v23;
      v21 = v25;
      (*(v23 + 32))(v25, v12, a2);

      v22 = v24;
      (*(v20 + 16))(v24, v21, a2);
      (*(v20 + 56))(v22, 0, 1, a2);
      sub_1001A6EF4(v22);
      v26(v22, v6);
      return (*(v20 + 8))(v21, a2);
    }
  }

  return result;
}

uint64_t sub_1001A40B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = *(v8 + 80);
  v10 = _s16EventViewService17SelectAssetButtonVMa_0();
  (*(*(v9 - 8) + 32))(a6 + *(v10 + 36), a4, v9);
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v11 = (a6 + *(v10 + 44));
  type metadata accessor for RemoteViewConfiguration();
  sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v11 = result;
  v11[1] = v13;
  return result;
}

uint64_t sub_1001A4248(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A4300()
{
  result = qword_100222C10;
  if (!qword_100222C10)
  {
    sub_10000460C(&qword_100222C00);
    sub_100042328();
    sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222C10);
  }

  return result;
}

uint64_t sub_1001A4418()
{
  sub_1000024C4(&unk_1002265A0);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_1001A4474()
{
  type metadata accessor for PhoneWallpaperViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_1001A44C4()
{
  type metadata accessor for PhoneWallpaperViewModel();
  type metadata accessor for Bindable();
  return Bindable.projectedValue.getter();
}

uint64_t sub_1001A4514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v84 = a1;
  v114 = v2;
  type metadata accessor for PhoneWallpaperViewModel();
  v107 = type metadata accessor for Bindable();
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = v79 - v5;
  v99 = type metadata accessor for PlainButtonStyle();
  v100 = *(v99 - 8);
  v6 = __chkstk_darwin(v99);
  v91 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(a1 - 8);
  v112 = *(v115 + 64);
  __chkstk_darwin(v6);
  v111 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1000024C4(&qword_100222CF8);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v85 = v79 - v9;
  v10 = sub_1000024C4(&qword_100222DE0);
  __chkstk_darwin(v10);
  v89 = v79 - v11;
  v12 = type metadata accessor for SavedWallpaperView();
  WitnessTable = swift_getWitnessTable();
  v127 = v12;
  v128 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v127 = v12;
  v128 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v127 = OpaqueTypeMetadata2;
  v128 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = sub_1000455C8();
  v127 = OpaqueTypeMetadata2;
  v128 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v10;
  v83 = v10;
  v127 = v10;
  v128 = v16;
  v86 = v16;
  v129 = v17;
  v130 = v18;
  v20 = v17;
  v88 = v17;
  v87 = v18;
  v21 = swift_getOpaqueTypeMetadata2();
  v98 = v21;
  v105 = *(v21 - 8);
  __chkstk_darwin(v21);
  v113 = v79 - v22;
  v23 = sub_10000460C(&qword_10022BB00);
  v97 = v23;
  v127 = v19;
  v128 = v16;
  v129 = v20;
  v130 = v18;
  v24 = swift_getOpaqueTypeConformance2();
  v96 = v24;
  v95 = sub_10000BFFC(&qword_10022BB08, &qword_10022BB00);
  v127 = v21;
  v128 = v23;
  v129 = &type metadata for Text;
  v130 = v24;
  v131 = v95;
  v132 = &protocol witness table for Text;
  v102 = &opaque type descriptor for <<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>;
  v103 = swift_getOpaqueTypeMetadata2();
  v104 = *(v103 - 8);
  v25 = __chkstk_darwin(v103);
  v94 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v101 = v79 - v27;
  v28 = v115;
  v29 = *(v115 + 16);
  v79[1] = v115 + 16;
  v82 = v29;
  v30 = v111;
  v31 = v90;
  v32 = v84;
  v29(v111, v90, v84);
  v81 = *(v28 + 80);
  v33 = (v81 + 32) & ~v81;
  v79[0] = v33;
  v34 = swift_allocObject();
  v110 = v3;
  v35 = v114;
  *(v34 + 16) = v3;
  *(v34 + 24) = v35;
  v36 = *(v28 + 32);
  v115 = v28 + 32;
  v80 = v36;
  v37 = v30;
  v38 = v32;
  v36(v34 + v33, v37, v32);
  v124 = v3;
  v125 = v35;
  v126 = v31;
  sub_1000024C4(&qword_100222D00);
  sub_100044A74();
  v39 = v85;
  Button.init(action:label:)();
  v40 = v91;
  PlainButtonStyle.init()();
  sub_10000BFFC(&qword_100222DC8, &qword_100222CF8);
  sub_10004527C(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v41 = v89;
  v42 = v92;
  v43 = v99;
  View.buttonStyle<A>(_:)();
  (*(v100 + 8))(v40, v43);
  (*(v93 + 8))(v39, v42);
  LOBYTE(v28) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = &v41[*(sub_1000024C4(&qword_100222DD8) + 36)];
  *v52 = v28;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  LOBYTE(v28) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v53 = &v41[*(v83 + 36)];
  v54 = v41;
  *v53 = v28;
  *(v53 + 1) = v55;
  *(v53 + 2) = v56;
  *(v53 + 3) = v57;
  *(v53 + 4) = v58;
  v53[40] = 0;
  sub_1001A4418();
  v59 = v111;
  v82(v111, v31, v38);
  v60 = v79[0];
  v61 = swift_allocObject();
  v62 = v114;
  *(v61 + 16) = v110;
  *(v61 + 24) = v62;
  v80(v61 + v60, v59, v38);
  swift_checkMetadataState();
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_1000050C4(v54, &qword_100222DE0);
  v63 = sub_1001A4474();
  v115 = *(v63 + 96);
  LODWORD(v112) = *(v63 + 112);

  v64 = v106;
  sub_1001A44C4();
  v65 = v110;
  v66 = v114;
  v122 = v110;
  v123 = v114;
  swift_getKeyPath();
  v67 = v107;
  Bindable<A>.subscript.getter();

  (*(v108 + 8))(v64, v67);
  v119 = v65;
  v120 = v66;
  v121 = v31;
  v116 = v65;
  v117 = v66;
  v118 = v31;
  v68 = v95;
  v69 = v96;
  v70 = v97;
  v71 = v98;
  v72 = v94;
  v73 = v113;
  View.alert<A, B>(_:isPresented:actions:message:)();

  (*(v105 + 8))(v73, v71);
  v127 = v71;
  v128 = v70;
  v129 = &type metadata for Text;
  v130 = v69;
  v131 = v68;
  v132 = &protocol witness table for Text;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v101;
  v76 = v103;
  sub_1000EE87C(v72, v103, v74);
  v77 = *(v104 + 8);
  v77(v72, v76);
  sub_1000EE87C(v75, v76, v74);
  return (v77)(v75, v76);
}

uint64_t sub_1001A51C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = _s16EventViewService17SelectAssetButtonVMa_0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  sub_1001A4474();
  v12 = objc_opt_self();
  if (![v12 authorizationStatusForAccessLevel:1])
  {

    goto LABEL_7;
  }

  v13 = [v12 authorizationStatusForAccessLevel:1];

  if (v13 == 3)
  {
LABEL_7:
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    (*(v6 + 16))(v8, a1, v5);
    type metadata accessor for MainActor();
    v16 = static MainActor.shared.getter();
    v17 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = v16;
    *(v18 + 3) = &protocol witness table for MainActor;
    v19 = v21;
    *(v18 + 4) = a2;
    *(v18 + 5) = v19;
    (*(v6 + 32))(&v18[v17], v8, v5);
    sub_10019EFDC(0, 0, v11, &unk_1001C3DE0, v18);
  }

  sub_1001A4474();
  sub_1001AB25C(1);
}

uint64_t sub_1001A5470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v6[6] = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v7;

  return _swift_task_switch(sub_1001A550C);
}

uint64_t sub_1001A550C()
{
  v1 = v0[2];
  v2 = _s16EventViewService17SelectAssetButtonVMa_0();
  v0[8] = v2;
  v0[9] = sub_1001A4474();
  v3 = *(v2 + 36);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1001A55E0;
  v5 = v0[3];
  v6 = v0[4];

  return (sub_1001ABFF4)(v1 + v3, v5, v6);
}

uint64_t sub_1001A55E0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1001A5840;
  }

  else
  {

    v2 = sub_1001A56FC;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1001A56FC()
{
  v1 = v0[8];
  v2 = v0[2];

  sub_1001A43BC();
  sub_1001A4474();
  v3 = *(v2 + *(v1 + 44));
  if (v3)
  {

    sub_1001AAF60(31, 0, 3u, v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_1001A5840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A58B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v70 = a1;
  v71 = a2;
  v82 = a3;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  v83 = v3;
  v84 = v4;
  __chkstk_darwin(v3);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_100222DE8);
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  __chkstk_darwin(v7);
  v69 = v66 - v9;
  v73 = sub_1000024C4(&qword_100222D18);
  __chkstk_darwin(v73);
  v72 = v66 - v10;
  v11 = sub_1000024C4(&qword_100222D10);
  v12 = *(v11 - 8);
  v78 = v11;
  v79 = v12;
  __chkstk_darwin(v11);
  v76 = v66 - v13;
  v14 = sub_1000024C4(&qword_100222DF0);
  v15 = *(v14 - 8);
  v80 = v14;
  v81 = v15;
  __chkstk_darwin(v14);
  v77 = v66 - v16;
  v68 = static VerticalAlignment.center.getter();
  LOBYTE(v102[0]) = 0;
  sub_1001A6028(v100);
  *(v98 + 7) = v100[0];
  *(&v98[1] + 7) = v100[1];
  *(&v98[2] + 7) = v101[0];
  v98[3] = *(v101 + 9);
  v17 = v102[0];
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v18 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v20 = static Color.white.getter();
  v21 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v87) = 0;
  v30 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  LOBYTE(v102[0]) = 0;
  v39 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(v88 + 1) = v98[0];
  *(&v88[1] + 1) = v98[1];
  *(&v88[2] + 1) = v98[2];
  v99 = 0;
  *&v87 = v68;
  *(&v87 + 1) = 0x4010000000000000;
  LOBYTE(v88[0]) = v17;
  *(&v88[3] + 1) = v98[3];
  *(&v88[4] + 1) = KeyPath;
  *&v89 = v18;
  *(&v89 + 1) = v20;
  LOBYTE(v90) = v21;
  *(&v90 + 1) = v23;
  *&v91 = v25;
  *(&v91 + 1) = v27;
  *&v92 = v29;
  BYTE8(v92) = 0;
  LOBYTE(v93) = v30;
  *(&v93 + 1) = v32;
  *&v94 = v34;
  *(&v94 + 1) = v36;
  *&v95 = v38;
  BYTE8(v95) = 0;
  LOBYTE(v96) = v39;
  *(&v96 + 1) = v40;
  *&v97[0] = v41;
  *(&v97[0] + 1) = v42;
  *&v97[1] = v43;
  BYTE8(v97[1]) = 0;
  v67 = v6;
  static AccessibilityChildBehavior.combine.getter();
  v44 = sub_1000024C4(&qword_100222D48);
  v45 = sub_100044DCC();
  v46 = v69;
  View.accessibilityElement(children:)();
  v47 = *(v84 + 8);
  v84 += 8;
  v68 = v47;
  v47(v6, v83);
  v102[12] = v95;
  v102[13] = v96;
  v103[0] = v97[0];
  *(v103 + 9) = *(v97 + 9);
  v102[8] = v91;
  v102[9] = v92;
  v102[10] = v93;
  v102[11] = v94;
  v102[4] = v88[3];
  v102[5] = v88[4];
  v102[6] = v89;
  v102[7] = v90;
  v102[0] = v87;
  v102[1] = v88[0];
  v102[2] = v88[1];
  v102[3] = v88[2];
  sub_1000050C4(v102, &qword_100222D48);
  *&v87 = v44;
  *(&v87 + 1) = v45;
  v66[1] = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeConformance2();
  v48 = v72;
  v49 = v74;
  View.accessibilityIdentifier(_:)();
  (*(v75 + 8))(v46, v49);
  v50 = static Color.blue.getter();
  v51 = static Edge.Set.all.getter();
  v52 = v73;
  v53 = v48 + *(v73 + 36);
  *v53 = v50;
  *(v53 + 8) = v51;
  Solarium.init()();
  v85 = v70;
  v86 = v71;
  v54 = sub_1000024C4(&qword_100222D20);
  v55 = sub_1000024C4(&qword_100222D28);
  v56 = sub_100044C1C();
  v57 = sub_10004510C();
  v65 = sub_1000451C4();
  v58 = v76;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_1000050C4(v48, &qword_100222D18);
  v59 = v67;
  static AccessibilityChildBehavior.ignore.getter();
  *&v87 = v52;
  *(&v87 + 1) = &type metadata for Solarium;
  *&v88[0] = v54;
  *(&v88[0] + 1) = v55;
  *&v88[1] = v56;
  *(&v88[1] + 1) = &protocol witness table for Solarium;
  *&v88[2] = v57;
  *(&v88[2] + 1) = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v77;
  v61 = v78;
  View.accessibilityElement(children:)();
  v68(v59, v83);
  (*(v79 + 8))(v58, v61);
  *&v87 = v61;
  *(&v87 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v63 = v80;
  View.accessibilityIdentifier(_:)();
  return (*(v81 + 8))(v62, v63);
}

uint64_t sub_1001A6028@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  _s16EventViewService17SelectAssetButtonVMa_0();
  sub_1001A4474();

  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;

  sub_1000187D8(v3, v5, v7 & 1);

  sub_100017398(v3, v5, v7 & 1);
}

uint64_t sub_1001A61A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v42 = a3;
  v4 = sub_1000024C4(qword_100224528);
  v5 = __chkstk_darwin(v4 - 8);
  v33 = (&v31 - v6);
  v7 = *(a2 - 8);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SavedWallpaperView();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v32 = (&v31 - v11);
  WitnessTable = swift_getWitnessTable();
  v43 = v10;
  v44 = WitnessTable;
  v13 = WitnessTable;
  v35 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v34 = &v31 - v15;
  v43 = v10;
  v44 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeMetadata2;
  v44 = OpaqueTypeConformance2;
  v38 = &opaque type descriptor for <<opaque return type of View.presentationDragIndicator(_:)>>;
  v16 = swift_getOpaqueTypeMetadata2();
  v39 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v31 - v20;
  type metadata accessor for SavedWallpaperViewModel();
  v22 = _s16EventViewService17SelectAssetButtonVMa_0();
  (*(v7 + 16))(v9, v37 + *(v22 + 36), a2);
  sub_10018B680(v9);
  v23 = v33;
  sub_1000F3D44(v33);
  v24 = v32;
  sub_1000F3DA4(v23, v32);
  sub_1000024C4(&qword_10022BB28);
  type metadata accessor for PresentationDetent();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001B3B50;
  static PresentationDetent.medium.getter();
  static PresentationDetent.large.getter();
  sub_1000B0C38(v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v34;
  View.presentationDetents(_:)();

  (*(v41 + 8))(v24, v10);
  v27 = OpaqueTypeConformance2;
  View.presentationDragIndicator(_:)();
  (*(v40 + 8))(v26, OpaqueTypeMetadata2);
  v43 = OpaqueTypeMetadata2;
  v44 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v19, v16, v28);
  v29 = *(v39 + 8);
  v29(v19, v16);
  sub_1000EE87C(v21, v16, v28);
  return (v29)(v21, v16);
}

uint64_t sub_1001A6700@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001AB3A0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001A6758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v58 = a2;
  v60 = a3;
  v5 = _s16EventViewService17SelectAssetButtonVMa_0();
  v57 = *(v5 - 8);
  v55 = *(v57 + 64);
  __chkstk_darwin(v5);
  v56 = &v47 - v6;
  v7 = sub_1000024C4(&qword_100221A00);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = __chkstk_darwin(v7);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = &v47 - v10;
  v11 = sub_1000024C4(&qword_10022BB10);
  v53 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v47 - v12;
  v13 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v47 - v21;
  v23 = sub_1000024C4(&qword_10022BB18);
  v24 = __chkstk_darwin(v23 - 8);
  v54 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v47 - v26;
  sub_1001A4474();
  sub_1001AB414();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000050C4(v15, &qword_1002214F8);
    v28 = 1;
    v29 = v53;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    v47 = *(sub_1001A4474() + 160);
    v48 = v11;
    v49 = a1;
    v50 = v5;

    (*(v17 + 16))(v20, v22, v16);
    v30 = v51;
    a1 = v49;
    v5 = v50;
    v11 = v48;
    Link<>.init(_:sensitiveUrl:)();
    (*(v17 + 8))(v22, v16);
    v31 = v53;
    (*(v53 + 32))(v27, v30, v11);
    v28 = 0;
    v29 = v31;
  }

  (*(v29 + 56))(v27, v28, 1, v11);
  sub_1001A4474();
  v52 = v27;

  v33 = v56;
  v32 = v57;
  (*(v57 + 16))(v56, a1, v5);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v36 = v60;
  *(v35 + 16) = v58;
  *(v35 + 24) = v36;
  (*(v32 + 32))(v35 + v34, v33, v5);
  v37 = v59;
  Button<>.init(_:action:)();
  v38 = v54;
  sub_10000BEB8(v27, v54, &qword_10022BB18);
  v40 = v61;
  v39 = v62;
  v41 = *(v62 + 16);
  v42 = v63;
  v41(v61, v37, v63);
  v43 = v64;
  sub_10000BEB8(v38, v64, &qword_10022BB18);
  v44 = sub_1000024C4(&qword_10022BB20);
  v41((v43 + *(v44 + 48)), v40, v42);
  v45 = *(v39 + 8);
  v45(v37, v42);
  sub_1000050C4(v52, &qword_10022BB18);
  v45(v40, v42);
  return sub_1000050C4(v38, &qword_10022BB18);
}

uint64_t sub_1001A6DF4()
{
  _s16EventViewService17SelectAssetButtonVMa_0();
  sub_1001A4474();
  sub_1001AB25C(0);
}

uint64_t sub_1001A6E40@<X0>(uint64_t a1@<X8>)
{
  _s16EventViewService17SelectAssetButtonVMa_0();
  sub_1001A4474();

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001A6EF4(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for State();
  return State.wrappedValue.setter();
}

uint64_t sub_1001A703C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PhoneWallpaperView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  type metadata accessor for PhoneWallpaperViewModel();
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + *(v2 + 36);
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v5, 1, v1))
  {
    (*(v6 + 8))(v5, v1);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_1001A71F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for PhoneWallpaperView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1001A3364(v6, v3, v4, a1);
}

void sub_1001A7294()
{
  sub_1001A75EC(319, &qword_10022BAF8, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PhoneWallpaperViewModel();
      type metadata accessor for Bindable();
      if (v2 <= 0x3F)
      {
        sub_100017044();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1001A7390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v6 = *(*(a3 + 16) - 8);
    if (*(v6 + 84) == a2)
    {
      v7 = *(v6 + 48);
      v8 = a1 + *(a3 + 36);

      return v7(v8);
    }

    else
    {
      type metadata accessor for PhoneWallpaperViewModel();
      v12 = type metadata accessor for Bindable();
      v13 = *(*(v12 - 8) + 48);
      v14 = a1 + *(a3 + 40);

      return v13(v14, a2, v12);
    }
  }
}

uint64_t sub_1001A74BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v5 = *(a4 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 84) == a3)
    {
      v7 = *(v6 + 56);
      v8 = result + *(a4 + 36);

      return v7(v8, a2, a2, v5);
    }

    else
    {
      v9 = result;
      type metadata accessor for PhoneWallpaperViewModel();
      v11 = type metadata accessor for Bindable();
      v12 = *(*(v11 - 8) + 56);
      v13 = v9 + *(a4 + 40);

      return v12(v13, a2, a2, v11);
    }
  }

  return result;
}

void sub_1001A75EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001A7640()
{
  sub_10000460C(&qword_100222B98);
  type metadata accessor for Array();
  sub_10000460C(&qword_100222BA0);
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022BA40);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022BA48);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PageControl();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  _s16EventViewService17SelectAssetButtonVMa_0();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100222BD8);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100222BF8, &qword_100222BD8);
  return swift_getWitnessTable();
}

uint64_t sub_1001A7CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(_s16EventViewService17SelectAssetButtonVMa_0() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1001A61A0(v5, v3, a1);
}

uint64_t sub_1001A7D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001AB3A0();
  *a1 = result & 1;
  return result;
}

__n128 sub_1001A7DE4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001A7E08()
{
  v1 = *(v0 + 16);
  v2 = (_s16EventViewService17SelectAssetButtonVMa_0() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);
  v4 = v2[12];
  type metadata accessor for PhoneWallpaperViewModel();
  v5 = type metadata accessor for Bindable();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1001A7F94(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1(0, v3, v4) - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(v6, v3, v4);
}

uint64_t sub_1001A8044()
{
  v1 = *(v0 + 32);
  v2 = (_s16EventViewService17SelectAssetButtonVMa_0() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[11], v1);
  v4 = v2[12];
  type metadata accessor for PhoneWallpaperViewModel();
  v5 = type metadata accessor for Bindable();
  (*(*(v5 - 8) + 8))(v0 + v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1001A81AC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(_s16EventViewService17SelectAssetButtonVMa_0() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BD00;

  return sub_1001A5470(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_1001A82B8()
{
  sub_10000460C(&qword_100222DE0);
  type metadata accessor for SavedWallpaperView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1000455C8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022BB00);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_10022BB08, &qword_10022BB00);
  return swift_getOpaqueTypeConformance2();
}

id sub_1001A8550(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_1001844C4(&v43 - v7);
  if ((sub_100184A0C() & 1) == 0 || (v9 = sub_100184B94()) == 0)
  {
    sub_1001AA2D4(v8);
    return (*(v3 + 8))(v8, v2);
  }

  if (!*(v9 + 88) || (*(v9 + 80) & 1) == 0)
  {
    v12 = sub_100184E24();
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() mainBundle];
      v15 = [v14 bundleIdentifier];

      if (v15)
      {
        type metadata accessor for RemoteViewController();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v17 = NSStringFromClass(ObjCClassFromMetadata);
        if (!v17)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = String._bridgeToObjectiveC()();
        }

        v18 = [objc_allocWithZone(SBSRemoteAlertDefinition) initWithServiceName:v15 viewControllerClassName:v17];

        v19 = [objc_opt_self() newHandleWithDefinition:v18 configurationContext:v13];
        v20 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
        [v19 activateWithContext:v20];

        return (*(v3 + 8))(v8, v2);
      }
    }

    goto LABEL_20;
  }

  v10 = objc_allocWithZone(LSApplicationRecord);
  v11 = sub_1001A9200(0xD000000000000019, 0x80000001001C8FC0, 0);
  if (!v11)
  {
LABEL_20:
    sub_1001AA2D4(v8);

    return (*(v3 + 8))(v8, v2);
  }

  v47 = v11;
  v21 = sub_1001850F0();
  if (!v21)
  {

    goto LABEL_20;
  }

  v44 = v21;
  v46 = [objc_allocWithZone(_LSOpenConfiguration) init];
  sub_1000024C4(&qword_10022BBB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v23;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v24;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v45 = sub_1001A9E2C(inited);
  swift_setDeallocating();
  sub_1000024C4(&qword_10022BBC0);
  swift_arrayDestroy();
  v25 = (a1 + *(type metadata accessor for UniversalLinkRouter() + 20));
  if (*v25 == 0xD000000000000013 && 0x80000001001C8FE0 == v25[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = &type metadata for String;
    *&aBlock = v29;
    *(&aBlock + 1) = v30;
    sub_10005888C(&aBlock, v49);
    v31 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v31;
    sub_1001A9838(v49, v26, v28, isUniquelyReferenced_nonNull_native);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v46 setFrontBoardOptions:isa];

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v35 = result;

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(v6, v8, v2);
    v37 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    (*(v3 + 32))(v38 + v37, v6, v2);
    v53 = sub_1001AA70C;
    v54 = v38;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v51 = sub_1001A906C;
    v52 = &unk_10021A728;
    v39 = _Block_copy(&aBlock);
    v40 = v44;
    v41 = v47;
    v42 = v46;

    [v35 openUserActivity:v40 usingApplicationRecord:v41 configuration:v42 completionHandler:v39];
    _Block_release(v39);

    return (*(v3 + 8))(v8, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A8C04(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12);
  v16 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v28 = result;
      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v29 = v6;
      v17 = type metadata accessor for Logger();
      sub_10000BE10(v17, qword_100239158);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to open ShazamEventsApp, falling back to Safari)", v20, 2u);
      }

      sub_1000E350C();
      v21 = static OS_dispatch_queue.main.getter();
      (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v12);
      v22 = (*(v13 + 80) + 24) & ~*(v13 + 80);
      v23 = swift_allocObject();
      v24 = v28;
      *(v23 + 16) = v28;
      (*(v13 + 32))(v23 + v22, v16, v12);
      aBlock[4] = sub_1001AA86C;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100185774;
      aBlock[3] = &unk_10021A778;
      v25 = _Block_copy(aBlock);
      v26 = v24;
      static DispatchQoS.unspecified.getter();
      v33 = _swiftEmptyArrayStorage;
      sub_1001AA8CC(&qword_1002265B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000024C4(qword_100225DE0);
      sub_1000604E8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v25);

      (*(v29 + 8))(v8, v5);
      (*(v31 + 8))(v11, v32);
    }
  }

  return result;
}

void sub_1001A906C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1001A9124()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, 0, v6);

  return 0;
}

id sub_1001A9200(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1001A92DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000024C4(&qword_10022BC08);
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

uint64_t sub_1001A9580(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000024C4(&qword_1002232F0);
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
        sub_10005888C(v24, v34);
      }

      else
      {
        sub_100026D04(v24, v34);
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
      result = sub_10005888C(v34, (*(v7 + 56) + 32 * v15));
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

_OWORD *sub_1001A9838(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10005846C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1001A9B60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1001A9580(v16, a4 & 1);
    v11 = sub_10005846C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100012A7C(v22);

    return sub_10005888C(a1, v22);
  }

  else
  {
    sub_1001A9988(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1001A9988(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10005888C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_1001A99F4()
{
  v1 = v0;
  sub_1000024C4(&qword_10022BC08);
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

void *sub_1001A9B60()
{
  v1 = v0;
  sub_1000024C4(&qword_1002232F0);
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
        sub_100026D04(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10005888C(v25, (*(v4 + 56) + v22));
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

unint64_t sub_1001A9D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_10022BC10);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BEB8(v4, &v11, &qword_10022BC18);
      v5 = v11;
      result = sub_1000FD098(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005888C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1001A9E2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_1002232F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BEB8(v4, &v13, &qword_10022BBC0);
      v5 = v13;
      v6 = v14;
      result = sub_10005846C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10005888C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1001A9F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_10022BBC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BEB8(v4, v13, &unk_10022BBD0);
      result = sub_1000FBDEC(v13);
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
      result = sub_10005888C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1001AA098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_10022BC00);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10005846C(v5, v6);
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

unint64_t sub_1001AA1AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_10022BBF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BEB8(v4, &v11, &qword_10022BBF8);
      v5 = v11;
      result = sub_1000FD098(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005888C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void sub_1001AA2D4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000BE10(v6, qword_100239158);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    sub_1001AA8CC(&qword_100223E18, &type metadata accessor for URL);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100139F7C(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Opening %s in Safari", v9, 0xCu);
    sub_100012A7C(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v15 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  sub_1001AA1AC(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1001AA8CC(&unk_10022BBE0, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 openURL:v18 options:isa completionHandler:0];
}

uint64_t sub_1001AA610()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001AA648()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1001AA70C(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1001A8C04(a1, a2, v6, v7);
}

uint64_t sub_1001AA790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001AA7A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1001AA86C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1001AA2D4(v2);
}

uint64_t sub_1001AA8CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001AA914(void *a1)
{
  v2 = type metadata accessor for UniversalLinkRouter();
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = [a1 activityType];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v19 = [a1 webpageURL];
  if (v19)
  {
    v20 = v19;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 16))(v9, v11, v5);
    v21 = [a1 _sourceApplication];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    (*(v6 + 32))(v4, v9, v5);
    v31 = &v4[*(v2 + 20)];
    *v31 = v23;
    v31[1] = v25;
    sub_1001A8550(v4);
    sub_100185498(v4);
    (*(v6 + 8))(v11, v5);
    return 1;
  }

LABEL_11:
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000BE10(v26, qword_100239158);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Ignore user activity, it's not a universal link", v29, 2u);
  }

  return 0;
}

uint64_t sub_1001AAC7C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1001AAD60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  v12 = swift_allocObject();
  sub_1001ABB2C(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_1001AADE0()
{
  swift_getKeyPath();
  sub_1001AB6D4();

  return *(v0 + 264);
}

void sub_1001AAF60(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v10 = *(v4 + 224);
  v9 = *(v4 + 232);
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 12;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v12 = *(a4 + 64);
    v13 = *(a4 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v20 = v12;
  v21 = v13;

  sub_100006C80(a1, a2, a3);

  v14 = sub_1001894F4(1, 5, 1, inited);
  v18 = v14;
  sub_100006C98(&aBlock, v25);
  sub_100118768(4, v25, &v18, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001C4640;
  v16[4] = v14;
  v23 = sub_100006D88;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10015B4A4;
  v22 = &unk_10021A880;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_1001AB25C(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 265) = v2;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001AB764();
  }

  return result;
}

uint64_t sub_1001AB3A0()
{
  swift_getKeyPath();
  sub_1001AB6D4();

  return *(v0 + 265);
}

uint64_t sub_1001AB414()
{
  v0 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0 = v4;
  }

  else
  {
    v3 = 0;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v0;
  String.append(_:)(v5);

  URL.init(string:)();
}

double sub_1001AB518()
{
  swift_getKeyPath();
  sub_1001AB6D4();

  return *(v0 + 248);
}

uint64_t sub_1001AB58C(double a1)
{
  sub_100010E88();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 248) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001AB764();
  }

  return result;
}

double sub_1001AB82C()
{
  swift_getKeyPath();
  sub_1001AB6D4();

  return *(v0 + 256);
}

uint64_t sub_1001AB8A0(double a1)
{
  sub_100010E88();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 256) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001AB764();
  }

  return result;
}

uint64_t sub_1001AB9E8(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 264) = v2;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001AB764();
  }

  return result;
}

uint64_t sub_1001ABB2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  *(v6 + 16) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 24) = v13;
  *(v6 + 32) = v14 & 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = 0x7A6542656E6F6870;
  *(v6 + 56) = 0xEA00000000006C65;
  *(v6 + 64) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 72) = v16;
  *(v6 + 80) = v17 & 1;
  *(v6 + 88) = v18;
  *(v6 + 96) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 104) = v19;
  *(v6 + 112) = v20 & 1;
  *(v6 + 120) = v21;
  *(v6 + 128) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 136) = v22;
  *(v6 + 144) = v23 & 1;
  *(v6 + 152) = v24;
  *(v6 + 160) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 168) = v25;
  *(v6 + 176) = v26 & 1;
  *(v6 + 184) = v27;
  *(v6 + 192) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 200) = v28;
  *(v6 + 208) = v29 & 1;
  *(v6 + 216) = v30;
  *(v6 + 265) = 0;
  ObservationRegistrar.init()();
  *(v6 + 224) = a1;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  *(v6 + 248) = a5;
  *(v6 + 256) = a6;
  *(v6 + 264) = a4;
  return v6;
}

uint64_t sub_1001ABCB8()
{

  v1 = qword_10022BC20;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1001ABDA8()
{
  sub_1001ABCB8();

  return swift_deallocClassInstance();
}

uint64_t sub_1001ABE18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001AADE0();
  *a1 = result & 1;
  return result;
}

__n128 sub_1001ABE7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001ABE98()
{

  return swift_deallocObject();
}

uint64_t sub_1001ABED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1001ABF50()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 248) = result;
  return result;
}

double sub_1001ABFC0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 256) = result;
  return result;
}

uint64_t sub_1001ABFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v3[11] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v4;

  return _swift_task_switch(sub_1001AC090);
}

uint64_t sub_1001AC090()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 40) = v5;
  v2 = sub_10005EC40((v0 + 16));
  (*(*(v5 - 8) + 16))(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1000615DC;

  return sub_10006CADC(v0 + 16);
}

uint64_t sub_1001AC180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  result = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v29 = v8;
  v30 = v6;
  v31 = result;
  v28 = a2;
  v11 = 0;
  for (i = (v9 + 48); ; i += 3)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = *(i - 1);
    v14 = *i;
    v15 = *(i - 16);
    if (v15 != 1 && v15 != 2)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_10;
    }

    ++v11;

    if (v10 == v11)
    {
      return 0;
    }
  }

LABEL_10:
  v18 = v29;
  static Locale.current.getter();
  v19._countAndFlagsBits = v13;
  v19._object = v14;
  object = Locale.localizedString(forRegionCode:)(v19).value._object;

  (*(v30 + 8))(v18, v31);
  if (!object)
  {
    return 0;
  }

  v21 = *(v28 + 16);
  if (!v21)
  {
LABEL_21:

    return 0;
  }

  v22 = (v28 + 40);
  while (1)
  {
    v23 = *v22;
    if (*v22 >= 2)
    {
      break;
    }

LABEL_13:
    v22 += 2;
    if (!--v21)
    {
      goto LABEL_21;
    }
  }

  v17 = *(v22 - 1);
  v24 = String.lowercased()();
  v25 = String.lowercased()();
  if (v24._countAndFlagsBits == v25._countAndFlagsBits && v24._object == v25._object)
  {

    return v17;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    sub_10004921C(v17, v23);
    goto LABEL_13;
  }

  return v17;
}

uint64_t sub_1001AC468()
{
  v0 = type metadata accessor for Logger();
  sub_1000640DC(v0, qword_100239158);
  sub_10000BE10(v0, qword_100239158);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001AC4D8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001AC5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  sub_1001ACD90(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_1001AC6B8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 88);
  if (v3 && *(v3 + 16))
  {

    v4 = sub_1000FBDA8(2u);
    if (v5)
    {
      v6 = *(*(v3 + 56) + v4);

      if (v6 <= 1 && v6)
      {

        v7 = 0;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v8 ^ 1;
      }
    }

    else
    {

      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & (*(v2 + *(*v2 + 120)) != 0);
}

uint64_t sub_1001AC7E4(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001ACCB8();
  }

  return result;
}

void sub_1001AC928(uint64_t a1)
{
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v5 = v1[3];
  v4 = v1[4];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v6 = *(v1 + *(*v1 + 136));
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 4;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = xmmword_1001C4100;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v15 = v7;
  v16 = v8;

  v9 = sub_1001894F4(1, 5, 1, inited);
  v13 = v9;
  sub_100006C98(&aBlock, v20);
  sub_100118768(4, v20, &v13, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v10 = String._bridgeToObjectiveC()();
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000001ELL;
  v11[3] = 0x80000001001C4640;
  v11[4] = v9;
  v18 = sub_100006D88;
  v19 = v11;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10015B4A4;
  v17 = &unk_10021AA08;
  v12 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t sub_1001ACBA4()
{
  swift_getKeyPath();
  sub_1001ACC18();

  return *(v0 + 16);
}

uint64_t *sub_1001ACD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *v5;
  *(v5 + 16) = 0;
  v12 = v5 + *(v11 + 128);
  *v12 = LocalizedStringKey.init(stringLiteral:)();
  *(v12 + 8) = v13;
  *(v12 + 16) = v14 & 1;
  *(v12 + 24) = v15;
  ObservationRegistrar.init()();
  v5[3] = a1;
  v5[4] = a2;
  (*(*(*(v11 + 80) - 8) + 32))(v5 + *(*v5 + 112), a3);
  *(v5 + *(*v5 + 120)) = a4;
  *(v5 + *(*v5 + 136)) = a5;
  return v5;
}

uint64_t *sub_1001ACED0()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  v2 = *(*v0 + 144);
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1001ACFE4()
{
  sub_1001ACED0();

  return swift_deallocClassInstance();
}

__n128 sub_1001AD068(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001AD074()
{

  return swift_deallocObject();
}

uint64_t sub_1001AD0B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001AD108(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100239068 == -1)
  {
    if (qword_100239070)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1001AD5D0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100239070)
    {
      return _availability_version_check();
    }
  }

  if (qword_100239060 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1001AD5E8();
    a3 = v10;
    a4 = v9;
    v8 = dword_100239050 < v11;
    if (dword_100239050 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100239054 > a3)
      {
        return 1;
      }

      if (dword_100239054 >= a3)
      {
        return dword_100239058 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100239050 < a2;
  if (dword_100239050 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1001AD29C(uint64_t result)
{
  v1 = qword_100239070;
  if (qword_100239070)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100239070 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100239050, &dword_100239054, &dword_100239058);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forRegionCode:)(Swift::String forRegionCode)
{
  v1 = Locale.localizedString(forRegionCode:)(forRegionCode._countAndFlagsBits, forRegionCode._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t Playlist.id.getter()
{
  return Playlist.id.getter();
}

{
  return Playlist.id.getter();
}

uint64_t type metadata accessor for Playlist()
{
  return type metadata accessor for Playlist();
}

{
  return type metadata accessor for Playlist();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}