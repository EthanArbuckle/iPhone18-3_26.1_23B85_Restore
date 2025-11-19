uint64_t sub_100102C00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v37 = a4;
  v38 = a6;
  v35 = a2;
  v36 = a3;
  v41 = a8;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  __chkstk_darwin(v12 - 8);
  v40 = &v34 - v13;
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for ArtistEventListHeaderViewModel();
  __chkstk_darwin(v14 - 8);
  v34 = &v34 - v15;
  v16 = type metadata accessor for ArtistEventListHeader();
  v39 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v42 = a1;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v46 = a5;
  v47 = v38;
  v48 = a7;
  v49 = a9;
  v22 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v22);
  v23 = sub_100077974();
  v37 = v24;
  v38 = v23;

  v25 = sub_1000FD730(v22);
  v26 = (v25 + *(*v25 + 256));
  v28 = *v26;
  v27 = v26[1];

  sub_1000FD730(v22);
  v29 = v40;
  sub_1000779E8();

  v30 = v34;
  sub_10010DE14(v38, v37, v28, v27, v29, v34);
  sub_10002876C(v30, v19);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v19, v16, WitnessTable);
  v32 = *(v39 + 8);
  v32(v19, v16);
  sub_1000EE87C(v21, v16, WitnessTable);
  return (v32)(v21, v16);
}

uint64_t sub_100102F34(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (*(v2 + 88) && *(v2 + 80) == 1)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    sub_1000FD730(a1);
    v7 = sub_100078144();

    if ((v7 & 1) == 0)
    {
      sub_1000FD730(a1);
      sub_1000783BC();
    }

    return result;
  }

LABEL_11:
  sub_1000FD730(a1);
  v9 = sub_100078144();

  if ((v9 & 1) == 0)
  {
    sub_1000FD730(a1);
    sub_1000783BC();
  }

  return result;
}

uint64_t sub_100103160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  *&v36 = a7;
  *(&v36 + 1) = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_10005EC40(&v37);
  (*(*(AssociatedTypeWitness - 8) + 16))(v18, a1, AssociatedTypeWitness);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v19 + 64);
    v20 = *(v19 + 72);

    *&v40 = a3;
    *(&v40 + 1) = a4;
    *&v41 = a5;
    *(&v41 + 1) = a6;
    v42 = v36;
    v43 = a10;
    v22 = type metadata accessor for ArtistEventView();
    sub_1000FD730(v22);
    v23 = sub_100078814();

    if (qword_100220C18 != -1)
    {
      swift_once();
    }

    *&v40 = qword_100239130;

    *(&v40 + 1) = LocalizedStringKey.init(stringLiteral:)();
    *&v41 = v24;
    BYTE8(v41) = v25 & 1;
    *&v42 = v26;
    sub_10002FF68(&v37, &v42 + 8);
    *v45 = v21;
    *&v45[8] = v20;
    *&v45[16] = v23;
    *&v45[24] = 1793;
    v27 = *v45;
    *(a9 + 64) = v44;
    *(a9 + 80) = v27;
    *(a9 + 90) = *&v45[10];
    v28 = v41;
    *a9 = v40;
    *(a9 + 16) = v28;
    v29 = v43;
    *(a9 + 32) = v42;
    *(a9 + 48) = v29;
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    *(a9 + 112) = EnvironmentObject.init()();
    *(a9 + 120) = v30;
    v31 = type metadata accessor for PromotionalPlaylistModule();
    v32 = v31[6];
    *(a9 + v32) = swift_getKeyPath();
    sub_1000024C4(qword_100221928);
    swift_storeEnumTagMultiPayload();
    v33 = v31[7];
    *(a9 + v33) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C8);
    swift_storeEnumTagMultiPayload();
    v34 = v31[8];
    *(a9 + v34) = swift_getKeyPath();
    sub_1000024C4(&qword_1002229F8);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001034B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v74 = a8;
  v73 = a5;
  v72 = a4;
  v79 = a1;
  v77 = a9;
  v71 = a10;
  v17 = type metadata accessor for PlainButtonStyle();
  v60 = v17;
  v76 = *(v17 - 8);
  __chkstk_darwin(v17);
  v75 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a2;
  v90 = a3;
  v91 = a4;
  v92 = a5;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v96 = a10;
  v78 = type metadata accessor for ArtistEventView();
  v19 = *(v78 - 8);
  v70 = *(v19 + 64);
  __chkstk_darwin(v78);
  v21 = &v54 - v20;
  v55 = &v54 - v20;
  v68 = a7;
  swift_getAssociatedTypeWitness();
  v54 = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v89 = a2;
  v90 = AssociatedTypeWitness;
  v91 = a6;
  v92 = AssociatedConformanceWitness;
  v24 = a6;
  v67 = type metadata accessor for PromotionalAssetsEntryView();
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for Button();
  v69 = *(v25 - 8);
  __chkstk_darwin(v25);
  v62 = &v54 - v26;
  v28 = v27;
  v61 = v27;
  v29 = swift_getWitnessTable();
  v59 = v29;
  v58 = sub_10010B304(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v89 = v28;
  v90 = v17;
  v91 = v29;
  v92 = v58;
  v63 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  v30 = __chkstk_darwin(OpaqueTypeMetadata2);
  v56 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v57 = &v54 - v32;
  v33 = v19;
  (*(v19 + 16))(v21, v79, v78);
  v34 = (*(v19 + 80) + 80) & ~*(v19 + 80);
  v35 = swift_allocObject();
  v36 = a2;
  *(v35 + 2) = a2;
  *(v35 + 3) = a3;
  v37 = v72;
  v38 = v73;
  *(v35 + 4) = v72;
  *(v35 + 5) = v38;
  v39 = v68;
  *(v35 + 6) = v24;
  *(v35 + 7) = v39;
  v40 = v74;
  v41 = v71;
  *(v35 + 8) = v74;
  *(v35 + 9) = v41;
  (*(v33 + 32))(&v35[v34], v55, v78);
  v80 = v36;
  v81 = v54;
  v82 = v37;
  v83 = v38;
  v84 = v24;
  v85 = v39;
  v86 = v40;
  v87 = v41;
  v88 = v79;
  v42 = v62;
  Button.init(action:label:)();
  v43 = v75;
  PlainButtonStyle.init()();
  v44 = v56;
  v45 = v61;
  v46 = v60;
  v47 = v59;
  v48 = v58;
  View.buttonStyle<A>(_:)();
  (*(v76 + 8))(v43, v46);
  (*(v69 + 8))(v42, v45);
  v89 = v45;
  v90 = v46;
  v91 = v47;
  v92 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v57;
  v51 = OpaqueTypeMetadata2;
  sub_1000EE87C(v44, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v52 = *(v65 + 8);
  v52(v44, v51);
  sub_1000EE87C(v50, v51, OpaqueTypeConformance2);
  return (v52)(v50, v51);
}

uint64_t sub_100103B64(uint64_t a1)
{
  v2 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v2);
  sub_100078964();

  sub_1000FD730(v2);
  if (*(a1 + 16))
  {

    sub_10007B2EC(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100103C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = a1;
  v49 = a8;
  v46 = a4;
  v47 = a5;
  v50 = a9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = __chkstk_darwin(v15 - 8);
  v45 = &v40 - v17;
  v44 = *(a2 - 8);
  __chkstk_darwin(v16);
  v43 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = a2;
  v52 = AssociatedTypeWitness;
  v53 = a6;
  v54 = AssociatedConformanceWitness;
  v20 = AssociatedConformanceWitness;
  v42 = AssociatedConformanceWitness;
  v21 = type metadata accessor for PromotionalAssetsEntryViewModel();
  __chkstk_darwin(v21 - 8);
  v40 = a6;
  v41 = &v40 - v22;
  v51 = a2;
  v52 = AssociatedTypeWitness;
  v53 = a6;
  v54 = v20;
  v23 = a6;
  v24 = type metadata accessor for PromotionalAssetsEntryView();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v40 - v29;
  v51 = a2;
  v52 = a3;
  v53 = v46;
  v54 = v47;
  v55 = v23;
  v56 = a7;
  v57 = v49;
  v58 = a10;
  v31 = type metadata accessor for ArtistEventView();
  v32 = sub_1000FD730(v31);
  v33 = v43;
  (*(v44 + 16))(v43, v32 + *(*v32 + 200), a2);

  sub_1000FD730(v31);
  v34 = v45;
  sub_100077DD4(v45);

  v35 = v40;
  v36 = v41;
  sub_100114C48(v33, v34, 1, a2, v41);
  sub_100123D40(v36, *&a2, AssociatedTypeWitness, v35, v28);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v28, v24, WitnessTable);
  v38 = *(v25 + 8);
  v38(v28, v24);
  sub_1000EE87C(v30, v24, WitnessTable);
  return (v38)(v30, v24);
}

uint64_t sub_100104060()
{
  v0 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v0);

  v1 = Text.init(_:tableName:bundle:comment:)();
  v3 = v2;
  v5 = v4;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v6 = Text.font(_:)();
  v8 = v7;
  v10 = v9;

  sub_100017398(v1, v3, v5 & 1);

  static Color.primary.getter();
  swift_getKeyPath();
  sub_1000024C4(&qword_100225090);
  sub_1000A6EF4();
  View.accessibilityIdentifier(_:)();
  sub_100017398(v6, v8, v10 & 1);
}

uint64_t sub_100104254@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(uint64_t a1, unint64_t a2)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t a1, unint64_t a2)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = static HorizontalAlignment.leading.getter();
  *(a9 + 8) = 0x4030000000000000;
  *(a9 + 16) = 0;
  v19 = sub_1000024C4(&qword_100227600);
  return sub_100104314(a1, a2, a3, a4, a5, a6, a7, a8, a9 + *(v19 + 44), a10);
}

uint64_t sub_100104314@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(uint64_t a1, unint64_t a2)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t a1, unint64_t a2)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v75 = a9;
  v79 = type metadata accessor for Divider();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000024C4(&qword_1002223E8);
  v19 = __chkstk_darwin(v76);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v67 = &v67 - v23;
  __chkstk_darwin(v22);
  v80 = &v67 - v24;
  v68 = a2;
  v90 = a2;
  v91 = a3;
  v69 = a3;
  v71 = a4;
  v92 = a4;
  v93 = a5;
  v72 = a5;
  v73 = a6;
  v94 = a6;
  v95 = a7;
  KeyPath = a7;
  v25 = a8;
  v96 = a8;
  v97 = a10;
  v70 = a10;
  v26 = type metadata accessor for ArtistEventView();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v67 - v29;
  sub_1000FD730(v28);
  v31 = *(a1 + 16);
  if (v31)
  {
    v32 = *(v31 + 88);
    v81 = v21;
    if (v32 && (*(v31 + 80) & 1) != 0)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v33 = 1;
    }

    v84 = sub_100078A3C(v33 & 1);

    sub_1000FD730(v26);
    v83 = sub_10007CC40();
    v82 = v34;
    sub_1000088D0(v83, v34);

    (*(v27 + 16))(v30, a1, v26);
    v35 = (*(v27 + 80) + 80) & ~*(v27 + 80);
    v36 = swift_allocObject();
    v37 = v69;
    *(v36 + 2) = v68;
    *(v36 + 3) = v37;
    v38 = v72;
    *(v36 + 4) = v71;
    *(v36 + 5) = v38;
    v39 = KeyPath;
    *(v36 + 6) = v73;
    *(v36 + 7) = v39;
    v40 = v70;
    *(v36 + 8) = v25;
    *(v36 + 9) = v40;
    (*(v27 + 32))(&v36[v35], v30, v26);
    KeyPath = swift_getKeyPath();
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    v73 = EnvironmentObject.init()();
    v72 = v41;
    v99 = 0;
    v42 = v77;
    Divider.init()();
    v43 = static Edge.Set.leading.getter();
    if (*(v31 + 88) && *(v31 + 80) == 1)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    v45 = [objc_opt_self() currentDevice];
    [v45 userInterfaceIdiom];

LABEL_12:
    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v67;
    (*(v78 + 32))(v67, v42, v79);
    v55 = v54 + *(v76 + 36);
    *v55 = v43;
    *(v55 + 8) = v47;
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;
    *(v55 + 32) = v53;
    *(v55 + 40) = 0;
    v56 = v80;
    sub_10010A400(v54, v80);
    v57 = v99;
    v58 = v81;
    sub_10000BEB8(v56, v81, &qword_1002223E8);
    *&v85 = v84;
    *(&v85 + 1) = v83;
    *&v86 = v82;
    *(&v86 + 1) = sub_10010A32C;
    v59 = v73;
    *&v87 = v36;
    *(&v87 + 1) = v73;
    v60 = v72;
    v61 = KeyPath;
    *&v88 = v72;
    *(&v88 + 1) = KeyPath;
    v89 = v57;
    v62 = v75;
    *(v75 + 64) = v57;
    v63 = v88;
    v62[2] = v87;
    v62[3] = v63;
    v64 = v86;
    *v62 = v85;
    v62[1] = v64;
    v65 = sub_1000024C4(&qword_100227608);
    sub_10000BEB8(v58, v62 + *(v65 + 48), &qword_1002223E8);
    sub_10010A470(&v85, &v90);
    sub_1000050C4(v56, &qword_1002223E8);
    sub_1000050C4(v58, &qword_1002223E8);
    v90 = v84;
    v91 = v83;
    v92 = v82;
    v93 = sub_10010A32C;
    v94 = v36;
    v95 = v59;
    v96 = v60;
    v97 = v61;
    v98 = v57;
    return sub_10010A4CC(&v90);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100104A50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a7;
  v41 = a8;
  v38 = a11;
  v39 = a6;
  v36 = a10;
  v37 = a5;
  v34 = a9;
  v35 = a4;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  v47 = a9;
  v48 = a10;
  v49 = a11;
  v14 = type metadata accessor for ArtistEventView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v19 - 8);
  v21 = &v34 - v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v15 + 16))(v18, a3, v14);
  type metadata accessor for MainActor();
  v23 = a2;
  sub_1000088D0(a1, a2);
  v24 = static MainActor.shared.getter();
  v25 = (*(v15 + 80) + 96) & ~*(v15 + 80);
  v26 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = v24;
  *(v27 + 3) = &protocol witness table for MainActor;
  v28 = v37;
  *(v27 + 4) = v35;
  *(v27 + 5) = v28;
  v29 = v40;
  *(v27 + 6) = v39;
  *(v27 + 7) = v29;
  v30 = v34;
  *(v27 + 8) = v41;
  *(v27 + 9) = v30;
  v31 = v38;
  *(v27 + 10) = v36;
  *(v27 + 11) = v31;
  (*(v15 + 32))(&v27[v25], v18, v14);
  v32 = &v27[v26];
  *v32 = a1;
  v32[1] = v23;
  sub_1001904E0(0, 0, v21, &unk_1001BD890, v27);
}

uint64_t sub_100104CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v14;
  *(v8 + 160) = v15;
  *(v8 + 136) = v13;
  *(v8 + 120) = v12;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  type metadata accessor for MainActor();
  *(v8 + 168) = static MainActor.shared.getter();
  *(v8 + 176) = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 184) = v9;

  return _swift_task_switch(sub_100104D84);
}

uint64_t sub_100104D84()
{
  *(v0 + 16) = *(v0 + 104);
  v1 = *(v0 + 136);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v1;
  *(v0 + 64) = *(v0 + 152);
  v2 = type metadata accessor for ArtistEventView();
  *(v0 + 192) = v2;
  *(v0 + 200) = sub_1000FD730(v2);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_100104E54;
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  return sub_100078C64(v5, v4);
}

uint64_t sub_100104E54()
{

  return _swift_task_switch(sub_100104F98);
}

uint64_t sub_100104F98()
{
  v1 = v0[24];
  v2 = v0[12];

  sub_1000FD730(v1);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xEF6E6F697461636FLL;
      v4 = 0x4C746E6572727563;
    }

    else
    {
      v4 = v0[11];
      v3 = v0[12];
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  v5 = v0[11];
  v6 = *(v0[10] + 16);
  v7 = v0[12];
  if (v6)
  {
    sub_1000088D0(v5, v7);

    sub_10007AFA4(9, v4, v3, 2u, v6);

    v8 = v0[1];

    return v8();
  }

  else
  {
    sub_1000088D0(v5, v7);
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_100105124()
{
  v0 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v0);

  v1 = Text.init(_:tableName:bundle:comment:)();
  v3 = v2;
  v5 = v4;
  static Font.Weight.semibold.getter();
  v6 = Text.fontWeight(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100017398(v1, v3, v5 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v24 = v10 & 1;
  *&v14 = v6;
  *(&v14 + 1) = v8;
  LOBYTE(v15) = v10 & 1;
  *(&v15 + 1) = v12;
  sub_1000024C4(&qword_1002250C8);
  sub_1000A7230();
  View.accessibilityIdentifier(_:)();
  v23[6] = v20;
  v23[7] = v21;
  v23[8] = v22;
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v23[5] = v19;
  v23[0] = v14;
  v23[1] = v15;
  return sub_1000050C4(v23, &qword_1002250C8);
}

uint64_t sub_100105340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v52 = a6;
  v53 = a8;
  v50 = a4;
  v51 = a5;
  v54 = a9;
  v48 = a2;
  v49 = a10;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  v46 = a7;
  v62 = a8;
  v63 = a10;
  v13 = type metadata accessor for ArtistEventView();
  v14 = *(v13 - 8);
  v47 = *(v14 + 64);
  __chkstk_darwin(v13);
  v40 = &v39 - v15;
  v16 = type metadata accessor for Array();
  v44 = v16;
  v39 = *(*(a7 + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = AssociatedTypeWitness;
  v18 = sub_10000460C(&qword_1002274F0);
  v42 = v18;
  WitnessTable = swift_getWitnessTable();
  v41 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v16;
  v57 = AssociatedTypeWitness;
  v58 = v18;
  v59 = WitnessTable;
  v60 = AssociatedConformanceWitness;
  v21 = type metadata accessor for ForEach();
  v45 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v39 - v25;
  v27 = a1;
  sub_1000FD730(v13);
  v28 = sub_10007CFDC();

  v56 = v28;
  v29 = v40;
  (*(v14 + 16))(v40, v27, v13);
  v30 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v48;
  *(v31 + 3) = a3;
  v32 = v51;
  *(v31 + 4) = v50;
  *(v31 + 5) = v32;
  v33 = v46;
  *(v31 + 6) = v52;
  *(v31 + 7) = v33;
  v34 = v49;
  *(v31 + 8) = v53;
  *(v31 + 9) = v34;
  (*(v14 + 32))(&v31[v30], v29, v13);
  v35 = sub_100108FA8();
  ForEach<>.init(_:content:)();
  v55 = v35;
  v36 = swift_getWitnessTable();
  sub_1000EE87C(v24, v21, v36);
  v37 = *(v45 + 8);
  v37(v24, v21);
  sub_1000EE87C(v26, v21, v36);
  return (v37)(v26, v21);
}

uint64_t sub_10010572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v116 = a2;
  v119 = a9;
  v120 = a1;
  v105 = type metadata accessor for PlainButtonStyle();
  v102 = *(v105 - 8);
  v17 = __chkstk_darwin(v105);
  v101 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(a4 - 8);
  __chkstk_darwin(v17);
  v91 = v19;
  v112 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a3;
  v121 = a3;
  v122 = a4;
  v115 = a5;
  v123 = a5;
  v124 = a6;
  v97 = a6;
  v99 = a7;
  v125 = a7;
  v126 = a8;
  v114 = a10;
  v127 = a10;
  v128 = a11;
  v96 = a11;
  v111 = type metadata accessor for ArtistEventView();
  v90 = *(v111 - 8);
  v89 = *(v90 + 64);
  __chkstk_darwin(v111);
  v110 = &v88 - v20;
  v98 = sub_1000024C4(&qword_100227510);
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v93 = &v88 - v21;
  v108 = sub_1000024C4(&qword_100227610);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v88 - v22;
  v23 = sub_1000024C4(&qword_100227508);
  v117 = *(v23 - 8);
  v118 = v23;
  v24 = __chkstk_darwin(v23);
  v104 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v103 = &v88 - v26;
  v100 = a8;
  v27 = *(a8 + 8);
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v32 = &v88 - v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedTypeWitness();
  v109 = type metadata accessor for Optional();
  v35 = *(v109 - 8);
  __chkstk_darwin(v109);
  v37 = &v88 - v36;
  v38 = *(v27 + 176);
  v95 = v28;
  v38(v28, v27);
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v30 + 8))(v32, AssociatedTypeWitness);
  v39 = *(v34 - 8);
  if ((*(v39 + 48))(v37, 1, v34) == 1)
  {
    (*(v35 + 8))(v37, v109);
LABEL_8:
    v67 = 1;
    v69 = v118;
    v68 = v119;
    return (*(v117 + 56))(v68, v67, 1, v69);
  }

  v40 = swift_getAssociatedConformanceWitness();
  v41 = (*(v40 + 24))(v34, v40);
  v43 = v42;
  (*(v39 + 8))(v37, v34);
  if (!v43)
  {
    goto LABEL_8;
  }

  v109 = v41;
  v44 = v90;
  (*(v90 + 16))(v110, v116, v111);
  v88 = v43;
  v45 = v92;
  v46 = v95;
  (*(v92 + 16))(v112, v120, v95);
  v47 = (*(v44 + 80) + 80) & ~*(v44 + 80);
  v48 = (v89 + *(v45 + 80) + v47) & ~*(v45 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = v113;
  *(v49 + 3) = v46;
  v50 = v97;
  *(v49 + 4) = v115;
  *(v49 + 5) = v50;
  v51 = v99;
  v52 = v100;
  *(v49 + 6) = v99;
  *(v49 + 7) = v52;
  v53 = v96;
  *(v49 + 8) = v114;
  *(v49 + 9) = v53;
  (*(v44 + 32))(&v49[v47], v110, v111);
  v54 = (*(v45 + 32))(&v49[v48], v112, v46);
  __chkstk_darwin(v54);
  *(&v88 - 12) = v113;
  *(&v88 - 11) = v46;
  v55 = v114;
  *(&v88 - 10) = v115;
  *(&v88 - 9) = v50;
  *(&v88 - 8) = v51;
  *(&v88 - 7) = v52;
  *(&v88 - 6) = v55;
  *(&v88 - 5) = v53;
  v56 = v116;
  v57 = v109;
  *(&v88 - 4) = v116;
  *(&v88 - 3) = v57;
  v58 = v120;
  *(&v88 - 2) = v88;
  *(&v88 - 1) = v58;
  sub_1000024C4(&qword_100227618);
  sub_10010B050();
  v59 = v93;
  Button.init(action:label:)();

  v60 = v101;
  PlainButtonStyle.init()();
  sub_10000BFFC(&qword_100227518, &qword_100227510);
  sub_10010B304(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v61 = v106;
  v62 = v98;
  v63 = v105;
  View.buttonStyle<A>(_:)();
  (*(v102 + 8))(v60, v63);
  (*(v94 + 8))(v59, v62);
  v64 = static Edge.Set.horizontal.getter();
  v65 = *(v56 + 16);
  if (v65)
  {
    v66 = v64;
    if (*(v65 + 88) && *(v65 + 80) == 1)
    {
    }

    else
    {
      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v70 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    v71 = [objc_opt_self() currentDevice];
    [v71 userInterfaceIdiom];

LABEL_12:
    EdgeInsets.init(_all:)();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v104;
    (*(v107 + 32))(v104, v61, v108);
    v81 = v118;
    v82 = &v80[*(v118 + 36)];
    *v82 = v66;
    *(v82 + 1) = v73;
    *(v82 + 2) = v75;
    *(v82 + 3) = v77;
    *(v82 + 4) = v79;
    v82[40] = 0;
    v83 = v80;
    v84 = v103;
    sub_10001AE00(v83, v103, &qword_100227508);
    v85 = v84;
    v86 = v119;
    sub_10001AE00(v85, v119, &qword_100227508);
    v69 = v81;
    v68 = v86;
    v67 = 0;
    return (*(v117 + 56))(v68, v67, 1, v69);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001062C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v25 = a2;
  v26 = type metadata accessor for Optional();
  v16 = *(v26 - 8);
  __chkstk_darwin(v26);
  v18 = &v23 - v17;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = v24;
  v33 = a9;
  v34 = a10;
  v19 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v19);
  v20 = *(a4 - 8);
  (*(v20 + 16))(v18, v25, a4);
  (*(v20 + 56))(v18, 0, 1, a4);
  sub_10007C938(v18);
  (*(v16 + 8))(v18, v26);

  sub_1000FD730(v19);
  v21 = *(a1 + 16);
  if (v21)
  {

    sub_10007AFA4(10, 13, 0, 3u, v21);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100106508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v58 = a4;
  v68 = a3;
  v63 = a2;
  v66 = type metadata accessor for ArtistEventRow();
  __chkstk_darwin(v66);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_1000024C4(qword_100227660);
  __chkstk_darwin(v64);
  v65 = &v53 - v13;
  v14 = type metadata accessor for DateInterval();
  v60 = *(v14 - 8);
  v61 = v14;
  __chkstk_darwin(v14);
  v59 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v56 = &v53 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53 - v21;
  v23 = sub_1000024C4(&qword_100227650);
  v24 = __chkstk_darwin(v23);
  v26 = (&v53 - v25);
  v27 = *(a1 + 16);
  if (!v27)
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v55 = v20;
  v62 = v24;
  v28 = *(v27 + 88);
  v67 = a6;
  if (v28 && *(v27 + 80) == 1)
  {

    goto LABEL_6;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_6:
    v30 = [objc_opt_self() currentDevice];
    v31 = [v30 userInterfaceIdiom];

    if (v31 == 1)
    {
      v32 = *(v16 + 176);

      v32(a5, v16);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v34 = (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
      v54 = v35;
      (*(v55 + 8))(v22, v19);
      v36 = v56;
      (*(v16 + 168))(a5, v16);
      v37 = swift_getAssociatedConformanceWitness();
      v38 = v59;
      sub_1000224A8(AssociatedTypeWitness, v37, v59);
      (*(v57 + 8))(v36, AssociatedTypeWitness);
      type metadata accessor for ArtistEventRowViewModel();
      DateInterval.start.getter();
      (*(v60 + 8))(v38, v61);
      v39 = v68;
      *v26 = v63;
      v26[1] = v39;
      v40 = v54;
      v26[2] = v34;
      v26[3] = v40;
      v41 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
      v42 = (v26 + *(v62 + 36));
      *v42 = v41;
      v42[1] = sub_100106D0C;
      v42[2] = 0;
      sub_10000BEB8(v26, v65, &qword_100227650);
      swift_storeEnumTagMultiPayload();
      sub_10010B248();
      sub_10010B304(&qword_100227658, type metadata accessor for ArtistEventRow);
      _ConditionalContent<>.init(storage:)();
      return sub_1000050C4(v26, &qword_100227650);
    }

    goto LABEL_9;
  }

LABEL_9:
  v44 = *(v16 + 176);

  v44(a5, v16);
  v45 = swift_getAssociatedConformanceWitness();
  v46 = (*(v45 + 48))(v19, v45);
  v48 = v47;
  (*(v55 + 8))(v22, v19);
  v49 = v56;
  (*(v16 + 168))(a5, v16);
  v50 = swift_getAssociatedConformanceWitness();
  v51 = v59;
  sub_1000224A8(AssociatedTypeWitness, v50, v59);
  (*(v57 + 8))(v49, AssociatedTypeWitness);
  type metadata accessor for ArtistEventRowViewModel();
  DateInterval.start.getter();
  (*(v60 + 8))(v51, v61);
  v52 = v68;
  *v12 = v63;
  v12[1] = v52;
  v12[2] = v46;
  v12[3] = v48;
  sub_10010B34C(v12, v65);
  swift_storeEnumTagMultiPayload();
  sub_10010B248();
  sub_10010B304(&qword_100227658, type metadata accessor for ArtistEventRow);
  _ConditionalContent<>.init(storage:)();
  return sub_10010B3B0(v12);
}

uint64_t sub_100106D34@<X0>(BOOL *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 < 0.0;
  return result;
}

uint64_t sub_100106D68(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v3);
  sub_1000771F0((v2 & 1) == 0);
}

uint64_t sub_100106DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a8;
  v59 = a7;
  v63 = a9;
  v58 = a10;
  v68 = sub_1000024C4(&qword_100227530);
  __chkstk_darwin(v68);
  v67 = &v49 - v16;
  v64 = sub_1000024C4(&qword_100224F98);
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v49 - v17;
  v62 = sub_1000024C4(&qword_100224FA0);
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v49 - v18;
  v19 = sub_1000024C4(&qword_100224FA8);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v66 = &v49 - v23;
  v24 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v24 - 8);
  v25 = sub_1000024C4(&qword_100227538);
  v65 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v49 - v26;
  static ToolbarItemPlacement.principal.getter();
  v50 = a2;
  v69 = a2;
  v70 = a3;
  v51 = a3;
  v52 = a4;
  v71 = a4;
  v72 = a5;
  v28 = v58;
  v53 = a5;
  v54 = a6;
  v29 = v59;
  v73 = a6;
  v74 = v59;
  v30 = v60;
  v75 = v60;
  v76 = v58;
  v77 = a1;
  sub_1000024C4(&qword_100227540);
  sub_100109A2C();
  ToolbarItem<>.init(placement:content:)();
  v31 = *(a1 + 16);
  if (v31)
  {
    if (*(v31 + 88) && (*(v31 + 80) & 1) != 0)
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        (*(v61 + 56))(v22, 1, 1, v64);
        v33 = sub_10000BFFC(&qword_100225000, &qword_100224FA0);
        v78 = v62;
        v79 = v33;
        swift_getOpaqueTypeConformance2();
        v34 = v66;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000050C4(v22, &qword_100224FA8);
LABEL_8:
        v45 = v67;
        v46 = *(v68 + 48);
        v47 = v65;
        (*(v65 + 16))(v67, v27, v25);
        sub_10000BEB8(v34, &v45[v46], &qword_100224FA8);
        TupleToolbarContent.init(_:)();
        sub_1000050C4(v34, &qword_100224FA8);
        return (*(v47 + 8))(v27, v25);
      }
    }

    else
    {
    }

    v35 = static ToolbarItemPlacement.navigationBarTrailing.getter();
    v49 = v25;
    v36 = v62;
    __chkstk_darwin(v35);
    v37 = v51;
    *(&v49 - 10) = v50;
    *(&v49 - 9) = v37;
    v38 = v53;
    *(&v49 - 8) = v52;
    *(&v49 - 7) = v38;
    *(&v49 - 6) = v54;
    *(&v49 - 5) = v29;
    *(&v49 - 4) = v30;
    *(&v49 - 3) = v28;
    *(&v49 - 2) = a1;
    sub_1000024C4(&qword_100225008);
    sub_1000A68D4();
    v39 = v55;
    ToolbarItem<>.init(placement:content:)();
    v40 = sub_10000BFFC(&qword_100225000, &qword_100224FA0);
    v41 = v57;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v42 = v61;
    v43 = v64;
    (*(v61 + 16))(v22, v41, v64);
    (*(v42 + 56))(v22, 0, 1, v43);
    v78 = v36;
    v79 = v40;
    swift_getOpaqueTypeConformance2();
    v34 = v66;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v22, &qword_100224FA8);
    (*(v42 + 8))(v41, v43);
    v44 = v36;
    v25 = v49;
    (*(v56 + 8))(v39, v44);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10010758C@<X0>(uint64_t a1@<X8>)
{
  v6 = static HorizontalAlignment.center.getter();
  sub_1001076E0(v8);
  *&v7[7] = v8[0];
  *&v7[23] = v8[1];
  *&v7[39] = v8[2];
  *&v7[55] = v8[3];
  v2 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v2);
  v3 = sub_100077160();

  v5 = 0.0;
  if (v3)
  {
    v5 = 1.0;
  }

  *(a1 + 33) = *&v7[16];
  *(a1 + 49) = *&v7[32];
  *(a1 + 65) = *&v7[48];
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v7[63];
  *(a1 + 17) = *v7;
  *(a1 + 88) = v5;
  return result;
}

uint64_t sub_1001076E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v2);
  sub_100077974();

  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v3 = Text.font(_:)();
  v27 = v4;
  v28 = v3;
  HIDWORD(v25) = v5;
  v29 = v6;

  sub_1000FD730(v2);

  LOWORD(v25) = 256;
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  static Font.caption.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  sub_100017398(v7, v9, v11 & 1);

  v17 = [objc_opt_self() secondaryLabelColor];
  Color.init(uiColor:)();
  v18 = Text.foregroundStyle<A>(_:)();
  v20 = v19;
  LOBYTE(v9) = v21;
  v23 = v22;
  sub_100017398(v12, v14, v16 & 1);

  *a1 = v28;
  *(a1 + 8) = v27;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v29;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v9 & 1;
  *(a1 + 56) = v23;
  sub_1000187D8(v28, v27, v26 & 1);

  sub_1000187D8(v18, v20, v9 & 1);

  sub_100017398(v18, v20, v9 & 1);

  sub_100017398(v28, v27, v26 & 1);
}

uint64_t sub_1001079B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v30 = a8;
  v27 = a5;
  v28 = a6;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v15 = type metadata accessor for ArtistEventView();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  (*(v16 + 16))(&v27 - v17, a1, v15);
  v19 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  v21 = v27;
  v22 = v28;
  *(v20 + 4) = a4;
  *(v20 + 5) = v21;
  v24 = v29;
  v23 = v30;
  *(v20 + 6) = v22;
  *(v20 + 7) = v24;
  *(v20 + 8) = v23;
  *(v20 + 9) = a10;
  (*(v16 + 32))(&v20[v19], v18, v15);
  v25 = static Font.title2.getter();
  result = swift_getKeyPath();
  *a9 = 0;
  *(a9 + 8) = sub_100109B1C;
  *(a9 + 16) = v20;
  *(a9 + 24) = result;
  *(a9 + 32) = v25;
  return result;
}

uint64_t sub_100107B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = type metadata accessor for DismissAction();
  v16 = *(v23 - 8);
  __chkstk_darwin(v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = v22;
  v31 = a9;
  v19 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v19);
  v20 = *(a1 + 16);
  if (v20)
  {

    sub_10007AFA4(0, 2, 0, 3u, v20);

    sub_100039CB8(v18);
    DismissAction.callAsFunction()();
    return (*(v16 + 8))(v18, v23);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100107D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, ValueMetadata *a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v42 = a6;
  v43 = a7;
  v44 = a2;
  v45 = a9;
  v36 = a1;
  v40 = a11;
  v41 = a5;
  v38 = a3;
  v39 = a10;
  v13 = type metadata accessor for Optional();
  v14 = __chkstk_darwin(v13 - 8);
  v37 = &v36 - v15;
  Description = a4[-1].Description;
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000A62F8();
  v20 = sub_1000A634C();
  v46 = a4;
  v47 = &type metadata for ArtistFetcher;
  v48 = &type metadata for PromotionalPlaylistFetcher;
  v49 = a8;
  v50 = v19;
  v51 = v20;
  v21 = type metadata accessor for MusicEventView();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v36 - v26;
  v46 = a4;
  v47 = &type metadata for ArtistFetcher;
  v48 = &type metadata for PromotionalPlaylistFetcher;
  v49 = a8;
  v50 = v19;
  v51 = v20;
  type metadata accessor for MusicEventViewModel();
  Description[2](v18, v36, a4);
  v46 = v38;
  v47 = a4;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = a8;
  v52 = v39;
  v53 = v40;
  v28 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v28);
  v29 = v37;
  sub_100077AF4(v37);

  sub_100160920(v18, v29, v30, v31);
  KeyPath = swift_getKeyPath();
  sub_100173A6C(KeyPath, 0, v25);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v25, v21, WitnessTable);
  v34 = *(v22 + 8);
  v34(v25, v21);
  sub_1000EE87C(v27, v21, WitnessTable);
  return v34(v27, v21);
}

uint64_t sub_100108044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for AppleMusicFetcher();
  v11 = sub_10010B304(&qword_100221760, type metadata accessor for AppleMusicFetcher);
  v23 = a3;
  v24 = v10;
  v25 = a7;
  v26 = v11;
  v12 = type metadata accessor for PromotionalAssetsView();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v23 = a3;
  v24 = v10;
  v25 = a7;
  v26 = v11;
  type metadata accessor for PromotionalAssetsViewModel();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v23 = v19;
  sub_100010B3C(a1, &v23);

  sub_1000CD368(v16);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v16, v12, WitnessTable);
  v21 = *(v13 + 8);
  v21(v16, v12);
  sub_1000EE87C(v18, v12, WitnessTable);
  return v21(v18, v12);
}

uint64_t sub_100108250(uint64_t a1)
{
  v2 = type metadata accessor for ArtistEventView();
  sub_1000FD730(v2);
  if (*(a1 + 16))
  {

    sub_10007AF08(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10010832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[198] = v16;
  v8[197] = v15;
  v8[196] = v14;
  v8[195] = a8;
  v8[194] = a7;
  v8[193] = a6;
  v8[187] = a5;
  v8[181] = a4;
  v8[175] = a3;
  v8[167] = a4;
  v8[168] = a5;
  v8[169] = a6;
  v8[170] = a7;
  v8[171] = a8;
  v8[172] = v14;
  v8[173] = v15;
  v8[174] = v16;
  v9 = type metadata accessor for ArtistEventView();
  v8[199] = v9;
  v10 = *(v9 - 8);
  v8[200] = v10;
  v8[201] = *(v10 + 64);
  v8[202] = swift_task_alloc();
  v8[203] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[204] = static MainActor.shared.getter();
  v8[205] = dispatch thunk of Actor.unownedExecutor.getter();
  v8[206] = v11;

  return _swift_task_switch(sub_100108488);
}

uint64_t sub_100108488()
{
  v1 = v0[175];
  sub_1000FD730(v0[199]);
  if (*(v1 + 16))
  {
    v19 = v0[203];
    v23 = v0[202];
    v2 = v0[200];
    v3 = v0[199];
    v29 = v0[198];
    v27 = v0[196];
    v28 = v0[197];
    v25 = v0[194];
    v26 = v0[195];
    v24 = v0[193];
    v4 = v0[187];
    v5 = v0[181];
    v20 = v5;
    v21 = v4;
    v6 = v0[175];

    v8 = sub_10007D594(v7);
    v10 = v9;

    v0[207] = v8;
    v0[208] = v10;
    v22 = *(v2 + 16);
    v22(v19, v6, v3);
    v11 = (*(v2 + 80) + 80) & ~*(v2 + 80);
    v12 = swift_allocObject();
    v0[209] = v12;
    *(v12 + 2) = v5;
    *(v12 + 3) = v4;
    *(v12 + 4) = v24;
    *(v12 + 5) = v25;
    *(v12 + 6) = v26;
    *(v12 + 7) = v27;
    *(v12 + 8) = v28;
    *(v12 + 9) = v29;
    v13 = *(v2 + 32);
    v13(&v12[v11], v19, v3);
    v14 = swift_task_alloc();
    v0[210] = v14;
    *(v14 + 16) = &unk_1001BD690;
    *(v14 + 24) = v12;
    swift_asyncLet_begin();
    v22(v23, v6, v3);
    v15 = swift_allocObject();
    v0[211] = v15;
    *(v15 + 2) = v20;
    *(v15 + 3) = v21;
    *(v15 + 4) = v24;
    *(v15 + 5) = v25;
    *(v15 + 6) = v26;
    *(v15 + 7) = v27;
    *(v15 + 8) = v28;
    *(v15 + 9) = v29;
    v13(&v15[v11], v23, v3);
    v16 = swift_task_alloc();
    v0[212] = v16;
    *(v16 + 16) = &unk_1001BD6A8;
    *(v16 + 24) = v15;
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 2, v17, sub_1001087D0, v0 + 162);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_100108808()
{
  v0[213] = sub_1000FD730(v0[199]);
  v1 = swift_task_alloc();
  v0[214] = v1;
  *v1 = v0;
  v1[1] = sub_1001088B4;
  v2 = v0[208];
  v3 = v0[207];

  return sub_10007A180(v3, v2);
}

uint64_t sub_1001088B4()
{
  v1 = *v0;

  return _swift_asyncLet_finish(v1 + 656, v2, sub_1001089F0, v1 + 1456);
}

uint64_t sub_100108A0C()
{

  return _swift_asyncLet_finish(v0 + 16, v1, sub_100108A80, v0 + 1504);
}

uint64_t sub_100108A9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100108B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v10;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[11] = a2;
  v8[12] = a3;
  v8[10] = a1;
  return _swift_task_switch(sub_100108B6C);
}

uint64_t sub_100108B6C()
{
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100108C00);
}

uint64_t sub_100108C00()
{
  v7 = *(v0 + 88);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v4 = *(v0 + 136);

  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  v1 = type metadata accessor for ArtistEventView();
  *(v0 + 160) = sub_1000FD730(v1);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_10010BED8;

  return sub_100079AA4();
}

uint64_t sub_100108CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v10;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[11] = a2;
  v8[12] = a3;
  v8[10] = a1;
  return _swift_task_switch(sub_100108D1C);
}

uint64_t sub_100108D1C()
{
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100108DB0);
}

uint64_t sub_100108DB0()
{
  v7 = *(v0 + 88);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v4 = *(v0 + 136);

  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  v1 = type metadata accessor for ArtistEventView();
  *(v0 + 160) = sub_1000FD730(v1);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_100108E94;

  return sub_100079E1C();
}

uint64_t sub_100108E94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100108FA8()
{
  result = qword_1002274F8;
  if (!qword_1002274F8)
  {
    sub_10000460C(&qword_1002274F0);
    sub_10010902C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002274F8);
  }

  return result;
}

unint64_t sub_10010902C()
{
  result = qword_100227500;
  if (!qword_100227500)
  {
    sub_10000460C(&qword_100227508);
    sub_10000460C(&qword_100227510);
    type metadata accessor for PlainButtonStyle();
    sub_10000BFFC(&qword_100227518, &qword_100227510);
    sub_10010B304(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227500);
  }

  return result;
}

__n128 sub_1001091E4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1001092C4()
{
  v1 = type metadata accessor for ArtistEventView();
  v2 = (*(*(v1 - 8) + 80) + 96) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 88);
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 92);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100109484()
{
  v2 = v0[4];
  v16 = v0[5];
  v13 = v0[7];
  v14 = v0[6];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v1[2] = v2;
  v1[3] = v16;
  v1[4] = v14;
  v1[5] = v13;
  v1[6] = v3;
  v1[7] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = *(type metadata accessor for ArtistEventView() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10010BEFC;

  return sub_10010832C(v9, v10, v0 + v8, v2, v16, v14, v13, v3);
}

uint64_t sub_1001095C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10010961C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100109674()
{
  v2 = v0[3];
  v14 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v1[2] = v14;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[9] = v8;
  v9 = *(type metadata accessor for ArtistEventView() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10010BEFC;

  return sub_100108B34(v0 + v10, v14, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1001097B0()
{
  v2 = v0[3];
  v14 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v1[2] = v14;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[9] = v8;
  v9 = *(type metadata accessor for ArtistEventView() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10010BEFC;

  return sub_100108CE4(v0 + v10, v14, v2, v3, v4, v5, v6, v7);
}

unint64_t sub_100109A2C()
{
  result = qword_100227548;
  if (!qword_100227548)
  {
    sub_10000460C(&qword_100227540);
    sub_10000BFFC(&qword_100227550, &qword_100227558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227548);
  }

  return result;
}

uint64_t sub_100109B34@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100109BA4()
{
  result = qword_1002275A8;
  if (!qword_1002275A8)
  {
    sub_10000460C(&qword_1002274D8);
    sub_10000460C(&qword_100227598);
    sub_100109C98();
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100223468, &qword_100223470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002275A8);
  }

  return result;
}

unint64_t sub_100109C98()
{
  result = qword_1002275B0;
  if (!qword_1002275B0)
  {
    sub_10000460C(&qword_100227598);
    sub_10010B304(&qword_1002275B8, type metadata accessor for PromotionalPlaylistModule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002275B0);
  }

  return result;
}

unint64_t sub_100109D70()
{
  result = qword_1002275C0;
  if (!qword_1002275C0)
  {
    sub_10000460C(&qword_100227560);
    sub_1000A7174();
    sub_10000BFFC(&qword_100223468, &qword_100223470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002275C0);
  }

  return result;
}

unint64_t sub_100109E28()
{
  result = qword_1002275C8;
  if (!qword_1002275C8)
  {
    sub_10000460C(&qword_1002274E0);
    sub_10000BFFC(&qword_1002275D0, &qword_100227568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002275C8);
  }

  return result;
}

uint64_t sub_100109F08(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    sub_10010B304(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100109FD4()
{
  result = qword_1002275E8;
  if (!qword_1002275E8)
  {
    sub_10000460C(&qword_100227570);
    sub_10000BFFC(&qword_1002275E0, &qword_1002275D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002275E8);
  }

  return result;
}

unint64_t sub_10010A090()
{
  result = qword_1002275F0;
  if (!qword_1002275F0)
  {
    sub_10000460C(&qword_100227578);
    sub_10000460C(&qword_100227570);
    sub_100109FD4();
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100223468, &qword_100223470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002275F0);
  }

  return result;
}

uint64_t sub_10010A204(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v11 = *(type metadata accessor for ArtistEventView() - 8);
  return a1(&v1[(*(v11 + 80) + 80) & ~*(v11 + 80)], v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10010A32C(uint64_t a1, unint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = *(type metadata accessor for ArtistEventView() - 8);
  return sub_100104A50(a1, a2, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_10010A400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002223E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010A520()
{
  v1 = type metadata accessor for ArtistEventView();
  v2 = (*(*(v1 - 8) + 80) + 96) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2 + 7;
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  v5 = *(v1 + 88);
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v3 & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 92);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v4 + v8, v9);
  }

  else
  {
  }

  if (*(v0 + v7 + 8) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10010A6F8(uint64_t a1)
{
  v3 = v2;
  v20 = v1[4];
  v5 = v1[7];
  v4 = v1[6];
  v19 = v1[5];
  v6 = v1[8];
  v7 = v1[9];
  v9 = v1[10];
  v8 = v1[11];
  v3[2] = v20;
  v3[3] = v19;
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  v3[8] = v9;
  v3[9] = v8;
  v10 = *(type metadata accessor for ArtistEventView() - 8);
  v11 = (*(v10 + 80) + 96) & ~*(v10 + 80);
  v17 = v1[3];
  v18 = v1[2];
  v12 = (v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  v3[10] = v15;
  *v15 = v3;
  v15[1] = sub_10010A87C;

  return sub_100104CCC(a1, v18, v17, v1 + v11, v13, v14, v20, v19);
}

uint64_t sub_10010A87C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10010A970@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10010A9C8()
{
  v1 = type metadata accessor for ArtistEventView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 88);
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 92);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10010AB98(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  v7 = *(v2 + 6);
  v8 = *(v2 + 7);
  v9 = *(v2 + 8);
  v10 = *(v2 + 9);
  v11 = *(type metadata accessor for ArtistEventView() - 8);
  return a2(a1, &v2[(*(v11 + 80) + 80) & ~*(v11 + 80)], v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10010AC70()
{
  v11 = *(v0 + 24);
  v1 = type metadata accessor for ArtistEventView();
  v12 = *(*(v1 - 8) + 64);
  v2 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);
  v3 = *(v11 - 8);
  v4 = *(v3 + 80);
  v5 = v0 + v2;

  v6 = *(v1 + 88);
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 92);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  (*(v3 + 8))(v0 + ((v2 + v12 + v4) & ~v4), v11);
  return swift_deallocObject();
}

uint64_t sub_10010AECC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = *(type metadata accessor for ArtistEventView() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  return sub_1001062C8(v0 + v10, v0 + ((v10 + *(v9 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10010AFE4@<X0>(uint64_t a1@<X8>)
{
  sub_100106508(v1[10], v1[11], v1[12], v1[13], v1[3], a1, v1[6], v1[7]);
  result = sub_1000024C4(&qword_100227618);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_10010B050()
{
  result = qword_100227620;
  if (!qword_100227620)
  {
    sub_10000460C(&qword_100227618);
    sub_10010B108();
    sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227620);
  }

  return result;
}

unint64_t sub_10010B108()
{
  result = qword_100227628;
  if (!qword_100227628)
  {
    sub_10000460C(&qword_100227630);
    sub_10010B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227628);
  }

  return result;
}

unint64_t sub_10010B18C()
{
  result = qword_100227638;
  if (!qword_100227638)
  {
    sub_10000460C(&qword_100227640);
    sub_10010B248();
    sub_10010B304(&qword_100227658, type metadata accessor for ArtistEventRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227638);
  }

  return result;
}

unint64_t sub_10010B248()
{
  result = qword_100227648;
  if (!qword_100227648)
  {
    sub_10000460C(&qword_100227650);
    sub_10010B304(&qword_100227658, type metadata accessor for ArtistEventRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227648);
  }

  return result;
}

uint64_t sub_10010B304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010B34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistEventRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010B3B0(uint64_t a1)
{
  v2 = type metadata accessor for ArtistEventRow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010B40C()
{
  type metadata accessor for NavigationPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader();
  type metadata accessor for Section();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223470);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002274D8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_10010B304(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for Section();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  sub_10000460C(&qword_1002274E0);
  sub_10000460C(&qword_1002274E8);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_1002274F0);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  sub_100108FA8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for PlainListStyle();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100227520);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_100227528, &qword_100227520);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  sub_1000A62F8();
  sub_1000A634C();
  type metadata accessor for MusicEventView();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AppleMusicFetcher();
  sub_10010B304(&qword_100221760, type metadata accessor for AppleMusicFetcher);
  type metadata accessor for PromotionalAssetsView();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10010B304(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

uint64_t sub_10010BF04()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10010BF98()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_10010C05C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10010C0C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10010D9A0(&qword_100222E30, type metadata accessor for ArtistController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewService16ArtistController__state;
  swift_beginAccess();
  return sub_1000477F0(v5 + v3, a1);
}

uint64_t sub_10010C190(uint64_t a1, uint64_t a2)
{
  v3[197] = v2;
  v3[191] = a2;
  v3[185] = a1;
  v3[198] = sub_1000024C4(&qword_100224DC8);
  v3[199] = swift_task_alloc();
  v4 = sub_1000024C4(&qword_1002218E8);
  v3[200] = v4;
  v3[201] = *(v4 - 8);
  v3[202] = swift_task_alloc();
  v3[203] = type metadata accessor for ArtistController.State(0);
  v3[204] = swift_task_alloc();
  v3[205] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[206] = static MainActor.shared.getter();
  v3[207] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[208] = v5;

  return _swift_task_switch(sub_10010C314);
}

uint64_t sub_10010C314()
{
  v1 = v0[205];
  v2 = v0[197];
  v3 = v0[191];
  v4 = v0[185];
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v0[209] = OBJC_IVAR____TtC16EventViewService16ArtistController___observationRegistrar;
  v0[167] = v2;
  v0[210] = sub_10010D9A0(&qword_100222E30, type metadata accessor for ArtistController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100047990(v1);
  v6 = swift_allocObject();
  v0[211] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;

  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v8 = swift_allocObject();
  v0[212] = v8;
  *(v8 + 16) = &unk_1001BDAA0;
  *(v8 + 24) = v7;

  swift_asyncLet_begin();
  v9 = v0[202];

  return _swift_asyncLet_get_throwing(v0 + 2, v9, sub_10010C574, v0 + 162);
}

uint64_t sub_10010C574()
{
  *(v1 + 1704) = v0;
  if (v0)
  {

    return _swift_task_switch(sub_10010C8C4);
  }

  else
  {
    v2 = *(v1 + 1632);
    v3 = *(v1 + 1616);
    v4 = *(v1 + 1608);
    v5 = *(v1 + 1600);
    *(v1 + 1712) = *(sub_1000024C4(&qword_100222E38) + 48);
    (*(v4 + 16))(v2, v3, v5);
    v6 = *(v1 + 1592);

    return _swift_asyncLet_get(v1 + 656, v6, sub_10010C66C, v1 + 1440);
  }
}

uint64_t sub_10010C688()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1576);
  sub_10010D930(*(v0 + 1592), v1 + *(v0 + 1712));
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 1432) = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100047990(v1);
  v4 = *(v0 + 1592);

  return _swift_asyncLet_finish(v0 + 656, v4, sub_10010C7B8, v0 + 1488);
}

uint64_t sub_10010C810()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010C93C()
{
  v1 = v0[213];
  v2 = v0[205];
  v3 = v0[197];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[173] = v3;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100047990(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10010CAB4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16EventViewService16ArtistController__state;
  swift_beginAccess();
  sub_10010D9E8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10010CB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000024C4(&qword_1002211B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10010CBF0);
}

uint64_t sub_10010CBF0()
{
  v1 = type metadata accessor for Music();
  v2 = sub_10010D9A0(&qword_1002211D0, &type metadata accessor for Music);
  static EventService.RequestType<>.music.getter();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10010CD10;
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return EventService.schedule<A>(participantIdentifier:ofType:)(v7, v5, v6, v4, v1, v2);
}

uint64_t sub_10010CD10()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(v5 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10010CEB8);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10010CEB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010CF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for AppleMusicFetcher();
  v4[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_10010CFF4;

  return sub_100099904(a1, a3, a4);
}

uint64_t sub_10010CFF4()
{

  if (v0)
  {

    v1 = sub_10010D1B0;
  }

  else
  {

    v1 = sub_10010D114;
  }

  return _swift_task_switch(v1);
}

uint64_t sub_10010D114()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Artist();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10010D1B0()
{

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Artist();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10010D254(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000E7B24;

  return v6(a1);
}

uint64_t sub_10010D34C()
{
  sub_100047990(v0 + OBJC_IVAR____TtC16EventViewService16ArtistController__state);
  v1 = OBJC_IVAR____TtC16EventViewService16ArtistController_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16EventViewService16ArtistController___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10010D460()
{
  result = type metadata accessor for ArtistController.State(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EventService();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10010D590()
{
  sub_100004654();
  if (v0 <= 0x3F)
  {
    sub_10010D604();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10010D604()
{
  if (!qword_1002278C8)
  {
    sub_10000460C(&qword_1002218E8);
    sub_10000460C(&qword_100224DC8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002278C8);
    }
  }
}

uint64_t sub_10010D698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_10010CB20(a1, v4, v5, v6);
}

uint64_t sub_10010D74C()
{

  return swift_deallocObject();
}

uint64_t sub_10010D78C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_10010CF1C(a1, v4, v5, v6);
}

uint64_t sub_10010D840()
{

  return swift_deallocObject();
}

uint64_t sub_10010D878(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012AC8;

  return sub_10010D254(a1, v4);
}

uint64_t sub_10010D930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100224DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010D9A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010D9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010DA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a2;
  v8 = *(a3 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  (*(v10 + 16))(v17 - v11, v4 + *(a3 + 40), v9);
  v13 = *(v8 - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    v8 = v9;
  }

  else
  {
    (*(*(a3 + 24) + 40))(a1, v17[0], 0, v8);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, v8);
  v15 = type metadata accessor for URL();
  return (*(*(v15 - 8) + 56))(a4, v14, 1, v15);
}

uint64_t sub_10010DC5C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, v1 + *(a1 + 40), v4);
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v9 = (*(*(a1 + 24) + 24))(v3);
    (*(v8 + 8))(v7, v3);
    if (v9)
    {
      return Color.init(cgColor:)();
    }
  }

  v11 = [objc_opt_self() tertiarySystemFillColor];
  return Color.init(uiColor:)();
}

uint64_t sub_10010DE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for ArtistEventListHeaderViewModel() + 40);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t sub_10010DEC4()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010DF44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 32) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_10010E104(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 32) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_10010E400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for SetlistSongRowViewModel();
  result = (*(*(a5 - 8) + 32))(&a6[*(v10 + 36)], a3, a5);
  a6[*(v10 + 40)] = a4;
  return result;
}

uint64_t sub_10010E4AC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010E534(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10010E6BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_10010EA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a2;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  (*(v6 + 72))(v7, v6);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    AssociatedTypeWitness = v9;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(a1, v18, 0, AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v16 = type metadata accessor for URL();
  return (*(*(v16 - 8) + 56))(a4, v14, 1, v16);
}

void sub_10010EC44(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 13;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = xmmword_1001BDB00;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001894F4(1, 5, 1, inited);
  v12 = v8;
  sub_100006C98(&aBlock, v19);
  sub_100118768(4, v19, &v12, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001C4640;
  v10[4] = v8;
  v17 = sub_100006D88;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10015B4A4;
  v16 = &unk_100217208;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_10010EEA4()
{

  return swift_deallocObject();
}

uint64_t sub_10010EEE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010EEFC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && *(v1 + 16))
  {

    v2 = sub_1000FBDA8(5u);
    if ((v3 & 1) != 0 && (v4 = *(*(v1 + 56) + v2), , v4))
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_10010EFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_10010F04C()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010F0BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_10010F23C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_10010F4C4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 1149;
  }

  else
  {
    return 640;
  }
}

uint64_t sub_10010F528()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 2040;
  }

  else
  {
    return 1136;
  }
}

uint64_t sub_10010F58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9];
  (*(v8 + 16))(&v18[-v9], v3, v7);
  v11 = *(v6 - 8);
  v12 = 1;
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    v6 = v7;
  }

  else
  {
    v13 = *(a1 + 24);
    v14 = sub_10010F528();
    v15 = sub_10010F4C4();
    (*(v13 + 32))(v14, v15, v6, v13);
    v12 = 0;
    v8 = v11;
  }

  (*(v8 + 8))(v10, v6);
  v16 = type metadata accessor for URL();
  return (*(*(v16 - 8) + 56))(a2, v12, 1, v16);
}

uint64_t sub_10010F78C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, v2, v5);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v10 = (*(*(a1 + 24) + 24))(v4);
    (*(v9 + 8))(v8, v4);
    if (v10)
    {
      return Color.init(cgColor:)();
    }
  }

  v12 = [objc_opt_self() systemGray5Color];
  return Color.init(uiColor:)();
}

uint64_t sub_10010F93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v47 = sub_1000024C4(&qword_100227A78);
  __chkstk_darwin(v47);
  v14 = &v45 - v13;
  sub_10010F58C(a1, v12);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  (*(v8 + 16))(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(a1 + 16);
  (*(v8 + 32))(v16 + v15, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1000024C4(&qword_100227A80);
  sub_100110390();
  AsyncImage.init(url:scale:transaction:content:)();
  v17 = &v14[*(sub_1000024C4(&qword_100227A90) + 36)];
  *v17 = 0x3FFC71C71C71C71CLL;
  *(v17 + 4) = 0;
  *&v14[*(sub_1000024C4(&qword_100227A98) + 36)] = 0;
  v18 = &v14[*(sub_1000024C4(&qword_100227AA0) + 36)];
  v19 = *(v5 + 28);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  v22 = *(*(v21 - 8) + 104);
  v22(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #24.0 }

  v45 = _Q0;
  *v18 = _Q0;
  *&v18[*(sub_1000024C4(&qword_100221C80) + 36)] = 256;
  v28 = v46;
  v22(&v46[*(v5 + 28)], v20, v21);
  *v28 = v45;
  static Color.black.getter();
  v29 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v30 = &v14[*(sub_1000024C4(&qword_100227AA8) + 36)];
  sub_100039704(v28, v30);
  v31 = v30 + *(sub_1000024C4(&qword_100222870) + 36);
  v32 = v50;
  *v31 = v49;
  *(v31 + 16) = v32;
  *(v31 + 32) = v51;
  v33 = sub_1000024C4(&qword_100222878);
  *(v30 + *(v33 + 52)) = v29;
  *(v30 + *(v33 + 56)) = 256;
  v34 = static Alignment.center.getter();
  v36 = v35;
  sub_100039768(v28);
  v37 = (v30 + *(sub_1000024C4(&qword_100222880) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = static Alignment.center.getter();
  v40 = v39;
  v41 = (v30 + *(sub_1000024C4(&qword_100224440) + 36));
  *v41 = v38;
  v41[1] = v40;
  static Color.black.getter();
  v42 = Color.opacity(_:)();

  v43 = &v14[*(sub_1000024C4(&qword_100227AB0) + 36)];
  *v43 = v42;
  *(v43 + 8) = xmmword_1001BDB40;
  *(v43 + 3) = 0x4024000000000000;
  v14[*(v47 + 36)] = 1;
  sub_10011041C();
  View.accessibilityIdentifier(_:)();
  return sub_100110814(v14);
}

uint64_t sub_10010FE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v19 = a2;
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AsyncImagePhase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  if ((*(v10 + 88))(v12, v9) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v13 = Image.resizable(capInsets:resizingMode:)();
    (*(v6 + 8))(v8, v5);
    v20 = v13;
    v21 = 0;
    v22 = 257;
    v23 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223B58);
    sub_1000024C4(&qword_100223298);
    sub_100069870();
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();

    v15 = v24;
    v16 = v25;
    v17 = v26;
  }

  else
  {
    v18 = type metadata accessor for HeroImageView();
    v20 = sub_10010F78C(v18);
    v21 = 0;
    v22 = 0;
    v23 = 1;
    sub_1000024C4(&qword_100223B58);
    sub_1000024C4(&qword_100223298);
    sub_100069870();
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();
    v19 = v24;
    v16 = v25;
    v17 = v26;
    result = (*(v10 + 8))(v12, v9);
    v15 = v19;
  }

  *a3 = v15;
  *(a3 + 16) = v16;
  *(a3 + 18) = v17;
  return result;
}

uint64_t sub_1001101EC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for HeroImageView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1001102F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeroImageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10010FE84(a1, v6, a2);
}

unint64_t sub_100110390()
{
  result = qword_100227A88;
  if (!qword_100227A88)
  {
    sub_10000460C(&qword_100227A80);
    sub_100069870();
    sub_1000573BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227A88);
  }

  return result;
}

unint64_t sub_10011041C()
{
  result = qword_100227AB8;
  if (!qword_100227AB8)
  {
    sub_10000460C(&qword_100227A78);
    sub_1001104A8();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227AB8);
  }

  return result;
}

unint64_t sub_1001104A8()
{
  result = qword_100227AC0;
  if (!qword_100227AC0)
  {
    sub_10000460C(&qword_100227AB0);
    sub_100110534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227AC0);
  }

  return result;
}

unint64_t sub_100110534()
{
  result = qword_100227AC8;
  if (!qword_100227AC8)
  {
    sub_10000460C(&qword_100227AA8);
    sub_1001105EC();
    sub_10000BFFC(&qword_100227AF8, &qword_100224440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227AC8);
  }

  return result;
}

unint64_t sub_1001105EC()
{
  result = qword_100227AD0;
  if (!qword_100227AD0)
  {
    sub_10000460C(&qword_100227AA0);
    sub_1001106A4();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227AD0);
  }

  return result;
}

unint64_t sub_1001106A4()
{
  result = qword_100227AD8;
  if (!qword_100227AD8)
  {
    sub_10000460C(&qword_100227A98);
    sub_10011075C();
    sub_10000BFFC(&qword_100226320, &qword_100226328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227AD8);
  }

  return result;
}

unint64_t sub_10011075C()
{
  result = qword_100227AE0;
  if (!qword_100227AE0)
  {
    sub_10000460C(&qword_100227A90);
    sub_10000BFFC(&qword_100227AE8, &qword_100227AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227AE0);
  }

  return result;
}

uint64_t sub_100110814(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100227A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100110880()
{
  result = qword_100227B00;
  if (!qword_100227B00)
  {
    sub_10000460C(&qword_100227B08);
    sub_10011041C();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227B00);
  }

  return result;
}

uint64_t sub_100110920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistEventRowViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001109A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistEventRowViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ArtistEventRow()
{
  result = qword_100227B68;
  if (!qword_100227B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100110A5C()
{
  result = type metadata accessor for ArtistEventRowViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100110AE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1000024C4(&qword_100227BC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_1000024C4(&qword_100227BC8);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_1000024C4(&qword_100227BD0);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  v23 = *(type metadata accessor for ArtistEventRowViewModel() + 24);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 16))(v22, a1 + v23, v24);
  v25 = *(type metadata accessor for CalendarIcon() + 20);
  *&v22[v25] = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8);
  swift_storeEnumTagMultiPayload();
  v22[*(v17 + 44)] = 1;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v26 = sub_1000024C4(&qword_100227BD8);
  sub_100110EB8(a1, &v5[*(v26 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v5, v13, &qword_100227BC0);
  v27 = &v13[*(v7 + 44)];
  v28 = v41;
  *(v27 + 4) = v40;
  *(v27 + 5) = v28;
  *(v27 + 6) = v42;
  v29 = v37;
  *v27 = v36;
  *(v27 + 1) = v29;
  v30 = v39;
  *(v27 + 2) = v38;
  *(v27 + 3) = v30;
  sub_10001AE00(v13, v15, &qword_100227BC8);
  sub_10000BEB8(v22, v20, &qword_100227BD0);
  sub_10000BEB8(v15, v10, &qword_100227BC8);
  v31 = v35;
  sub_10000BEB8(v20, v35, &qword_100227BD0);
  v32 = sub_1000024C4(&qword_100227BE0);
  sub_10000BEB8(v10, v31 + *(v32 + 48), &qword_100227BC8);
  sub_1000050C4(v15, &qword_100227BC8);
  sub_1000050C4(v22, &qword_100227BD0);
  sub_1000050C4(v10, &qword_100227BC8);
  return sub_1000050C4(v20, &qword_100227BD0);
}

uint64_t sub_100110EB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_1000024C4(&qword_100224BD0);
  v4 = __chkstk_darwin(v3 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v48 - v6;
  v7 = sub_1000024C4(&qword_100227BE8);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v13 = a1[1];
  v53 = *a1;
  v54 = v13;
  v48 = sub_10001877C();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  LOBYTE(v13) = v17;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v53 = v14;
  v54 = v16;
  v55 = v13 & 1;
  v56 = v19;
  v57 = KeyPath;
  v58 = 1;
  v59 = 0;
  sub_1000024C4(&qword_100221B38);
  sub_10001B3F8();
  View.accessibilityIdentifier(_:)();
  sub_100017398(v14, v16, v13 & 1);

  v21 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v22 = &v12[*(v8 + 44)];
  *v22 = v21;
  v22[1] = sub_100111328;
  v22[2] = 0;
  v23 = a1[3];
  v53 = a1[2];
  v54 = v23;

  v24 = Text.init<A>(_:)();
  v26 = v25;
  LOBYTE(v19) = v27;
  static Font.subheadline.getter();
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;

  sub_100017398(v24, v26, v19 & 1);

  v33 = [objc_opt_self() secondaryLabelColor];
  v53 = Color.init(uiColor:)();
  v34 = Text.foregroundStyle<A>(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_100017398(v28, v30, v32 & 1);

  v53 = v34;
  v54 = v36;
  v55 = v38 & 1;
  v56 = v40;
  v41 = v50;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v34, v36, v38 & 1);

  v42 = v49;
  sub_10000BEB8(v12, v49, &qword_100227BE8);
  v43 = v41;
  v44 = v51;
  sub_10000BEB8(v41, v51, &qword_100224BD0);
  v45 = v52;
  sub_10000BEB8(v42, v52, &qword_100227BE8);
  v46 = sub_1000024C4(&qword_100227BF0);
  sub_10000BEB8(v44, v45 + *(v46 + 48), &qword_100224BD0);
  sub_1000050C4(v43, &qword_100224BD0);
  sub_1000050C4(v12, &qword_100227BE8);
  sub_1000050C4(v44, &qword_100224BD0);
  return sub_1000050C4(v42, &qword_100227BE8);
}

uint64_t sub_100111350@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100227BA0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1000024C4(&qword_100227BA8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v12 = sub_1000024C4(&qword_100227BB0);
  sub_100110AE4(v1, &v7[*(v12 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v13 = sub_10000BFFC(&qword_100227BB8, &qword_100227BA0);
  View.accessibilityElement(children:)();
  (*(v16 + 8))(v4, v17);
  sub_1000050C4(v7, &qword_100227BA0);
  v19 = v5;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_100111614()
{
  result = qword_100227BF8;
  if (!qword_100227BF8)
  {
    sub_10000460C(&qword_100227C00);
    sub_10000460C(&qword_100227BA0);
    sub_10000BFFC(&qword_100227BB8, &qword_100227BA0);
    swift_getOpaqueTypeConformance2();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227BF8);
  }

  return result;
}

Swift::Int sub_10011171C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001117F8()
{
  String.hash(into:)();
}

Swift::Int sub_1001118C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100111998@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100113330(*a1);
  *a2 = result;
  return result;
}

void sub_1001119C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657665;
  v5 = 0xE500000000000000;
  v6 = 0x65756E6576;
  v7 = 0xD000000000000011;
  v8 = 0x80000001001C42E0;
  if (v2 != 3)
  {
    v7 = 0xD000000000000016;
    v8 = 0x80000001001C4300;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x747369747261;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100111A68()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100111A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100111B64(uint64_t a1)
{
  v2 = sub_100113784();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100111BA0(uint64_t a1)
{
  v2 = sub_100113784();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100111BDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7473696C79616C70;
  v4 = 0xEA00000000006449;
  if (v2 != 1)
  {
    v3 = 0x6449707061;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972746E756F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7473696C79616C70;
  v8 = 0xEA00000000006449;
  if (*a2 != 1)
  {
    v7 = 0x6449707061;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972746E756F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100111CE0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100111D84()
{
  String.hash(into:)();
}

Swift::Int sub_100111E14()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100111EB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10011337C(*a1);
  *a2 = result;
  return result;
}

void sub_100111EE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006449;
  v5 = 0x7473696C79616C70;
  if (v2 != 1)
  {
    v5 = 0x6449707061;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972746E756F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100111F44()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_100111F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100112060(uint64_t a1)
{
  v2 = sub_100113A98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011209C(uint64_t a1)
{
  v2 = sub_100113A98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001120D8()
{
  v1 = *v0;
  v2 = 0x65636976726573;
  v3 = 0x7470697263736564;
  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574497972657571;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10011218C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001133C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001121C0(uint64_t a1)
{
  v2 = sub_1001130C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001121FC(uint64_t a1)
{
  v2 = sub_1001130C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100112238()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001122B4(uint64_t a1, int a2)
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

uint64_t sub_1001122FC(uint64_t result, int a2, int a3)
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

uint64_t sub_10011234C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100112394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100112414(void *a1)
{
  v3 = v1;
  v5 = sub_1000024C4(&qword_100227D18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10001BED0(a1, a1[3]);
  sub_1001130C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  *&v14 = *(v3 + 16);
  *(&v14 + 1) = v9;
  v15 = v10;
  v13 = 0;
  sub_1001131BC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v14 = *(v3 + 40);
    v13 = 1;
    sub_1000024C4(&qword_100227D00);
    sub_100113210(&qword_100227D28, sub_100113288);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 3;

    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v14 = *(v3 + 80);
    v13 = 4;
    sub_1001132DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001126C4(void *a1)
{
  v13[1] = *v1;
  v4 = sub_1000024C4(&qword_100227CE8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  sub_10001BED0(a1, a1[3]);
  sub_1001130C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_100113114();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = *(&v14 + 1);
    v9 = v15;
    *(v1 + 16) = v14;
    *(v1 + 24) = v8;
    *(v1 + 32) = v9;
    sub_1000024C4(&qword_100227D00);
    v16 = 1;
    sub_100113210(&qword_100227D08, sub_100113168);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 40) = v14;
    LOBYTE(v14) = 2;
    *(v1 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 56) = v11;
    LOBYTE(v14) = 3;
    *(v1 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 72) = v12;

    v16 = 4;
    sub_100090314();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 80) = v14;
  }

  sub_100012A7C(a1);
  return v1;
}

uint64_t sub_100112A5C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_1000024C4(&qword_100227D58);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10001BED0(a1, a1[3]);
  sub_100113784();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    sub_10011382C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100112BE8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_1000024C4(&qword_100227D88);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10001BED0(a1, a1[3]);
  sub_100113A98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_100113B40();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100112D90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1001126C4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100112E0C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_100112E1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100113594(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100112F2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001138D4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10011306C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001130C0()
{
  result = qword_100227CF0;
  if (!qword_100227CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227CF0);
  }

  return result;
}

unint64_t sub_100113114()
{
  result = qword_100227CF8;
  if (!qword_100227CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227CF8);
  }

  return result;
}

unint64_t sub_100113168()
{
  result = qword_100227D10;
  if (!qword_100227D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D10);
  }

  return result;
}

unint64_t sub_1001131BC()
{
  result = qword_100227D20;
  if (!qword_100227D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D20);
  }

  return result;
}

uint64_t sub_100113210(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(&qword_100227D00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100113288()
{
  result = qword_100227D30;
  if (!qword_100227D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D30);
  }

  return result;
}

unint64_t sub_1001132DC()
{
  result = qword_100227D38;
  if (!qword_100227D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D38);
  }

  return result;
}

unint64_t sub_100113330(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100211690, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10011337C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100211728, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001133C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574497972657571 && a2 == 0xEA0000000000736DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001C76B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001001C76D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100113594(void *a1)
{
  v3 = sub_1000024C4(&qword_100227D40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10001BED0(a1, a1[3]);
  sub_100113784();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[13] = 1;
    sub_1001137D8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100012A7C(a1);
  return v7;
}

unint64_t sub_100113784()
{
  result = qword_100227D48;
  if (!qword_100227D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D48);
  }

  return result;
}

unint64_t sub_1001137D8()
{
  result = qword_100227D50;
  if (!qword_100227D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D50);
  }

  return result;
}

unint64_t sub_10011382C()
{
  result = qword_100227D60;
  if (!qword_100227D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D60);
  }

  return result;
}

unint64_t sub_100113880()
{
  result = qword_100227D68;
  if (!qword_100227D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D68);
  }

  return result;
}

uint64_t sub_1001138D4(void *a1)
{
  v3 = sub_1000024C4(&qword_100227D70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10001BED0(a1, v7);
  sub_100113A98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_100113AEC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100012A7C(a1);
  return v7;
}

unint64_t sub_100113A98()
{
  result = qword_100227D78;
  if (!qword_100227D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D78);
  }

  return result;
}

unint64_t sub_100113AEC()
{
  result = qword_100227D80;
  if (!qword_100227D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D80);
  }

  return result;
}

unint64_t sub_100113B40()
{
  result = qword_100227D90;
  if (!qword_100227D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D90);
  }

  return result;
}

unint64_t sub_100113B94()
{
  result = qword_100227D98;
  if (!qword_100227D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227D98);
  }

  return result;
}

unint64_t sub_100113C44()
{
  result = qword_100227DA0;
  if (!qword_100227DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DA0);
  }

  return result;
}

unint64_t sub_100113C9C()
{
  result = qword_100227DA8;
  if (!qword_100227DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DA8);
  }

  return result;
}

unint64_t sub_100113CF4()
{
  result = qword_100227DB0;
  if (!qword_100227DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DB0);
  }

  return result;
}

unint64_t sub_100113D4C()
{
  result = qword_100227DB8;
  if (!qword_100227DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DB8);
  }

  return result;
}

unint64_t sub_100113DA4()
{
  result = qword_100227DC0;
  if (!qword_100227DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DC0);
  }

  return result;
}

unint64_t sub_100113DFC()
{
  result = qword_100227DC8;
  if (!qword_100227DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DC8);
  }

  return result;
}

unint64_t sub_100113E54()
{
  result = qword_100227DD0;
  if (!qword_100227DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DD0);
  }

  return result;
}

unint64_t sub_100113EAC()
{
  result = qword_100227DD8;
  if (!qword_100227DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DD8);
  }

  return result;
}

unint64_t sub_100113F04()
{
  result = qword_100227DE0;
  if (!qword_100227DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DE0);
  }

  return result;
}

unint64_t sub_100113F5C()
{
  result = qword_100227DE8;
  if (!qword_100227DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DE8);
  }

  return result;
}

unint64_t sub_100113FB4()
{
  result = qword_100227DF0;
  if (!qword_100227DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DF0);
  }

  return result;
}

uint64_t sub_100114024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for EventService();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1000024C4(qword_100227EF0);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100114120);
}

uint64_t sub_100114120()
{
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC16EventViewService24PromotionalAssetsFetcher_service, v0[6]);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1001141F0;
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v5 = v0[4];

  return ArtistPromotionalAssets.init(artistID:service:)(v2, v4, v5, v3);
}

uint64_t sub_1001141F0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100114484;
  }

  else
  {
    v2 = sub_10011431C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10011431C()
{
  v1 = v0[9];
  v2 = type metadata accessor for ArtistPromotionalAssets();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100114BE0(v1);
    v4 = 1;
  }

  else
  {
    ArtistPromotionalAssets.eventWithPromotionalAssets.getter();
    (*(v3 + 8))(v1, v2);
    v4 = 0;
  }

  v5 = v0[2];
  v6 = type metadata accessor for Music();
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100114484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001144F0()
{
  v1 = OBJC_IVAR____TtC16EventViewService24PromotionalAssetsFetcher_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PromotionalAssetsFetcher()
{
  result = qword_100227E28;
  if (!qword_100227E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001145BC()
{
  result = type metadata accessor for EventService();
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

uint64_t sub_10011468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_1000024C4(&qword_1002211B8);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return _swift_task_switch(sub_10011475C);
}

uint64_t sub_10011475C()
{
  v1 = v0;
  v2 = type metadata accessor for Music();
  sub_100114B9C(&qword_1002211D0);
  static EventService.RequestType<>.music.getter();
  v3 = swift_task_alloc();
  v1[9] = v3;
  sub_100114B9C(&qword_1002211D8);
  *v3 = v1;
  v3[1] = sub_100114898;
  v4 = v1[7];
  v6 = v1[2];
  v5 = v1 + 2;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v6;

  return EventService.event<A, B>(identifier:ofType:_:)(v9, v5, v7, v8, v4, v5, 0, v2);
}

uint64_t sub_100114898()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100114A84;
  }

  else
  {
    v5 = sub_100114A20;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_100114A20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100114A84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100114AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000BD00;

  return sub_100114024(a1, a2, a3);
}

uint64_t sub_100114B9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Music();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100114BE0(uint64_t a1)
{
  v2 = sub_1000024C4(qword_100227EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100114C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for PromotionalAssetsEntryViewModel();
  v9 = v8[13];
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 32))(a5 + v9, a2, v10);
  *(a5 + v8[14]) = a3 & 1;
  v11 = a5 + v8[15];
  *v11 = LocalizedStringKey.init(stringLiteral:)();
  *(v11 + 8) = v12;
  *(v11 + 16) = v13 & 1;
  *(v11 + 24) = v14;
  v15 = a5 + v8[16];
  result = LocalizedStringKey.init(stringLiteral:)();
  *v15 = result;
  *(v15 + 8) = v17;
  *(v15 + 16) = v18 & 1;
  *(v15 + 24) = v19;
  return result;
}

uint64_t sub_100114DC0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100114E60(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v12;
  if (v11 < a2)
  {
    v15 = (((((v14 & ~v12) + v13) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
    v16 = a2 - v11;
    v17 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v15);
      if (v21)
      {
LABEL_27:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        return v11 + (v23 | v22) + 1;
      }
    }
  }

  if (v7 == v11)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  v26 = (a1 + v14) & ~v12;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v28 = (*(v8 + 48))(v26);
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v27 = *(((v26 + v13) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

_DWORD *sub_100115074(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = v9 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(*(v5 - 8) + 64) + v10;
  if (!v9)
  {
    ++v11;
  }

  v15 = (((((v14 & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  if ((((((v14 & ~v10) + v11) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v16 = a3 - v13 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v13 < a3)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (a2 > v13)
  {
    if ((((((v14 & ~v10) + v11) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v20 = a2 - v13;
    }

    else
    {
      v20 = 1;
    }

    if ((((((v14 & ~v10) + v11) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v21 = ~v13 + a2;
      v22 = result;
      bzero(result, (((((v14 & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32);
      result = v22;
      *v22 = v21;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        *(result + v15) = v20;
      }

      else
      {
        *(result + v15) = v20;
      }
    }

    else if (v19)
    {
      *(result + v15) = v20;
    }

    return result;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *(result + v15) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v15) = 0;
  }

  else if (v19)
  {
    *(result + v15) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v13)
  {
    v23 = *(v6 + 56);

    return v23();
  }

  else
  {
    result = ((result + v14) & ~v10);
    if (v12 == v13)
    {
      v24 = *(v8 + 56);
      v25 = a2 + 1;

      return v24(result, v25, v9);
    }

    else
    {
      v26 = ((result + v11) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v26[3] = 0;
        v26[4] = 0;
        v26[1] = a2 & 0x7FFFFFFF;
        v26[2] = 0;
      }

      else
      {
        v26[2] = a2 - 1;
      }
    }
  }

  return result;
}

unint64_t sub_100115300()
{
  result = qword_100227F78;
  if (!qword_100227F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227F78);
  }

  return result;
}

uint64_t sub_100115354(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  (*(v1 + 56))(v2, v1);
  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    v9 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v5 = v8;
    v4 = AssociatedTypeWitness;
  }

  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_100115510(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x80000001001C7760;
  v3._countAndFlagsBits = 0xD000000000000030;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  v4._countAndFlagsBits = (*(*(a1 + 32) + 48))(*(a1 + 16));
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v4);

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  return LocalizedStringKey.init(stringInterpolation:)();
}

uint64_t sub_100115600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a2;
  v8 = *(a3 + 24);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  (*(v10 + 16))(v17 - v11, v4 + *(a3 + 52), v9);
  v13 = *(v8 - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    v8 = v9;
  }

  else
  {
    (*(*(a3 + 40) + 32))(a1, v17[0], v8);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, v8);
  v15 = type metadata accessor for URL();
  return (*(*(v15 - 8) + 56))(a4, v14, 1, v15);
}

uint64_t sub_1001158DC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_100115910@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for CalendarSheet.CalendarCoordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV16EventViewService13CalendarSheet19CalendarCoordinator_completionHandler];
  *v7 = v4;
  v7[1] = v3;
  sub_100115AD4(v4);
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_100115990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100115A80();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001159F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100115A80();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100115A58()
{
  sub_100115A80();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100115A80()
{
  result = qword_100228018;
  if (!qword_100228018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228018);
  }

  return result;
}

uint64_t sub_100115AD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_100115AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(EKEventEditViewController) init];
  v6 = [v5 navigationBar];
  v7 = [objc_opt_self() blueColor];
  [v6 setTintColor:v7];

  sub_1000024C4(qword_100228020);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v5 setEditViewDelegate:v9];

  [v5 setEventStore:a3];
  [v5 setEvent:a2];
  return v5;
}

uint64_t sub_100115BFC()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100115D48(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100118120(a1);
  return v2;
}

uint64_t sub_100115D88@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  swift_getKeyPath();
  sub_1001174B4();

  v3 = *(*v1 + 136);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a1, v1 + v3);
}

uint64_t sub_100115E64(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_100115D88(&v9 - v5);
  v7 = (*(*(v2 + 88) + 136))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_100115FB4(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_100115E64(a1);
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_10011762C(v1, v2);
}

void *sub_100115FEC()
{
  v0 = sub_100118894();
  v1 = v0;
  return v0;
}

uint64_t sub_100116018(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_100115D88(&v9 - v5);
  v7 = (*(*(v2 + 88) + 120))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_100116128(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_100115D88(&v8 - v5);
  (*(*(v2 + 88) + 176))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100116230(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_100115D88(&v9 - v5);
  v7 = sub_10012BCC8(v6, v3, *(v2 + 88));
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_100116328()
{
  sub_10011891C();
}

uint64_t sub_100116350@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1001174B4();

  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100116438()
{
  v0 = sub_100118808();

  return v0;
}

uint64_t sub_100116470()
{
  swift_getKeyPath();
  sub_1001174B4();

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_1001164F8(char a1)
{
  v3 = *(*v1 + 104);
  sub_100011044();
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
    sub_100117554();
  }

  return result;
}

void sub_100116658(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v9 = a1;
  v10 = sub_100116018(a1);
  v12 = v11;
  v13 = sub_100116230(v10);
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = v9;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v15 = *(a5 + 64);
    v16 = *(a5 + 72);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_100006C80(a2, a3, a4);

  v17 = sub_1001894F4(1, 5, 1, inited);
  v21 = v17;
  sub_100006C98(&aBlock, v28);
  sub_100118768(4, v28, &v21, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001C4640;
  v19[4] = v17;
  v26 = sub_100119054;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10015B4A4;
  v25 = &unk_1002178D0;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v20);
}

uint64_t sub_1001168F0(uint64_t a1)
{
  v2 = sub_100116018(a1);
  v4 = v3;
  v5 = sub_100116230(v2);
  sub_10015B530(v2, v4, v5, a1);
}

uint64_t sub_100116950()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*v0 + 88);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v1[9] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v4;

  return _swift_task_switch(sub_100116A88);
}

uint64_t sub_100116A88()
{
  if (sub_100118894())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_100116128(0);
    v3 = swift_task_alloc();
    v0[11] = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_100116BAC;
    v5 = v0[7];
    v6 = v0[5];

    return sub_1000C5148(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_100116BAC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);

  v7 = (v6 + 8);
  v8 = *(v4 + 56);
  v9 = *(v4 + 40);
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = sub_100116DCC;
  }

  else
  {
    *(v5 + 96) = a1;
    (*v7)(v8, v9);
    v10 = sub_100116D54;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_100116D54()
{
  v1 = *(v0 + 96);

  sub_10011793C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100116DCC()
{

  sub_10011793C(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100116E40()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v1[8] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v4;

  return _swift_task_switch(sub_100116F6C);
}

uint64_t sub_100116F6C()
{
  v1 = v0[3];
  sub_100115D88(v0[6]);
  v2 = *(v1 + 88);
  v6 = (*(v2 + 184) + **(v2 + 184));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100117094;
  v4 = v0[4];

  return v6(v4, v2);
}

uint64_t sub_100117094(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_100117294;
  }

  else
  {
    v4[12] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_10011721C;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_10011721C()
{
  v1 = *(v0 + 96);

  sub_1001177A4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100117294()
{
  v14 = v0;

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
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    v7 = sub_100117E84();
    v9 = sub_100139F7C(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch schedule for venue: %s, error: %@", v4, 0x16u);
    sub_100076688(v5);

    sub_100012A7C(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10011762C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100117554();
  }
}

uint64_t sub_1001177A4(uint64_t a1)
{
  v3 = *(*v1 + 120);
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100117554();
  }
}

void sub_10011793C(void *a1)
{
  v3 = *(*v1 + 128);
  sub_1000024C4(&qword_100223F78);
  sub_100074C20();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    v5 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100117554();
  }
}

uint64_t sub_100117AB4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 136);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a1 + v5, a2);
  return swift_endAccess();
}

uint64_t sub_100117B70(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = v28 - v9;
  v11 = *(v5 - 8);
  __chkstk_darwin(v8);
  v13 = v28 - v12;
  v14 = sub_100118090();
  if (v15)
  {
    v16 = v15;
    v29 = v14;
    sub_1000024C4(&qword_100221A38);
    v17 = swift_allocObject();
    v28[1] = a2;
    v18 = v17;
    *(v17 + 16) = xmmword_1001B3B50;
    sub_100115D88(v13);
    (*(v4 + 168))(v5, v4);
    (*(v11 + 8))(v13, v5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = sub_100023254(AssociatedTypeWitness, AssociatedConformanceWitness);
    v22 = v21;
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    v18[7] = &type metadata for String;
    v23 = sub_100017D20();
    v18[4] = v20;
    v18[5] = v22;
    v18[12] = &type metadata for String;
    v18[13] = v23;
    v24 = v29;
    v18[8] = v23;
    v18[9] = v24;
    v18[10] = v16;
    return String.init(format:_:)();
  }

  else
  {
    sub_100115D88(v13);
    (*(v4 + 168))(v5, v4);
    (*(v11 + 8))(v13, v5);
    v26 = swift_getAssociatedConformanceWitness();
    v27 = sub_100023254(AssociatedTypeWitness, v26);
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    return v27;
  }
}

uint64_t sub_100117E84()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v14 - v6;
  v8 = *(v2 - 8);
  __chkstk_darwin(v5);
  v10 = &v14 - v9;
  sub_100115D88(&v14 - v9);
  (*(v1 + 176))(v2, v1);
  (*(v8 + 8))(v10, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v12;
}

id sub_100118090()
{
  result = sub_100118894();
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v1 = result;
      v2 = [result cityName];

      if (v2)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100118120(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  (*(*(v3 - 8) + 56))(&v28 - v5, 1, 1, v3);
  v7 = *(*v1 + 96);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(v1 + v7, v6, v8);
  *(v1 + *(*v1 + 104)) = 1;
  v9 = (v1 + *(*v1 + 112));
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + *(*v1 + 120)) = static Array._allocateUninitialized(_:)();
  *(v1 + *(*v1 + 128)) = 0;
  v10 = (v1 + *(*v1 + 144));
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v29._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  v13._object = 0x80000001001C4970;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v29);

  *v10 = v15;
  v16 = (v1 + *(*v1 + 152));
  *v16 = 0xD000000000000011;
  v16[1] = 0x80000001001C49A0;
  v17 = (v1 + *(*v1 + 160));
  v18 = [v11 mainBundle];
  v30._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000029;
  v19._object = 0x80000001001C49C0;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v30);

  *v17 = v21;
  v22 = (v1 + *(*v1 + 168));
  v23 = [v11 mainBundle];
  v31._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000037;
  v24._object = 0x80000001001C49F0;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v31);

  *v22 = v26;
  ObservationRegistrar.init()();
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 136), a1);
  return v1;
}

uint64_t sub_100118500()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);

  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 136), v2);

  v4 = *(*v0 + 176);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1001186F8()
{
  sub_100118500();

  return swift_deallocClassInstance();
}

uint64_t sub_100118768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10005EC40(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10002FF68(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100118808()
{
  swift_getKeyPath();
  sub_1001174B4();

  return *(v0 + *(*v0 + 112));
}

uint64_t sub_100118894()
{
  swift_getKeyPath();
  sub_1001174B4();

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_10011891C()
{
  swift_getKeyPath();
  sub_1001174B4();

  return *(v0 + *(*v0 + 120));
}

uint64_t sub_1001189A4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10011891C();
}

__n128 sub_100118A18(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100118A78(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  v10 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v11 = *(v4 + 88);
  v15[4] = *(*(v11 + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = (*(v7 + 8))(v9, v6);
  if (v4)
  {
    swift_beginAccess();
    (*(v7 + 24))(v2 + v10, a1, v6);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v12);
    v15[-2] = v5;
    v15[-1] = v11;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v2;
    v15[-1] = a1;
    sub_100117554();
  }
}

uint64_t sub_100118CEC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v14[-v7];
  v9 = *(v4 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if (v4)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    *&v14[-16] = v5;
    *&v14[-8] = v10;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v14[-16] = v2;
    *&v14[-8] = a1;
    sub_100117554();
  }
}

id sub_100118F3C@<X0>(void *a1@<X8>)
{
  v2 = sub_100118894();
  *a1 = v2;

  return v2;
}

void sub_100118F78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10011793C(v1);
}

void sub_100118FB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 128);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

uint64_t sub_100119014()
{

  return swift_deallocObject();
}

uint64_t sub_10011905C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100119074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100116470();
  *a1 = result;
  return result;
}

uint64_t sub_1001190F8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100118808();
  a1[1] = v2;
}

uint64_t sub_100119138(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10011762C(v1, v2);
}

unint64_t sub_10011919C()
{
  result = qword_1002280B0;
  if (!qword_1002280B0)
  {
    type metadata accessor for Sport.Competitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002280B0);
  }

  return result;
}

uint64_t sub_1001191F4(uint64_t a1)
{
  *(a1 + 8) = sub_10011925C(&qword_100228100);
  result = sub_10011925C(&qword_100228108);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10011925C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(&qword_100226EE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001192AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v16 = type metadata accessor for TourPhotosView();
  v17 = a7 + v16[9];
  *v17 = a1;
  *(v17 + 8) = a2;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4 & 1;
  v18 = a7 + v16[10];
  *v18 = a5;
  *(v18 + 8) = a6;
  *(v18 + 16) = a8;
  v19 = (a7 + v16[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_100016404();
  *v19 = EnvironmentObject.init()();
  v19[1] = v20;
  v21 = v16[12];
  *(a7 + v21) = swift_getKeyPath();
  sub_1000024C4(&qword_1002229F8);

  return swift_storeEnumTagMultiPayload();
}

void sub_100119458()
{
  type metadata accessor for TourPhotosViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    sub_1001197E4();
    if (v1 <= 0x3F)
    {
      sub_1000C3760();
      if (v2 <= 0x3F)
      {
        sub_100017044();
        if (v3 <= 0x3F)
        {
          sub_1000DCE34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100119548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TourPhotosViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000024C4(qword_100228110);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1001196A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for TourPhotosViewModel();
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000024C4(qword_100228110);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1001197E4()
{
  if (!qword_100228198)
  {
    sub_10000460C(&qword_100221850);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100228198);
    }
  }
}

uint64_t sub_10011988C()
{
  type metadata accessor for TourPhotosViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_1001198CC()
{
  sub_1000024C4(&qword_100228260);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_100119938()
{
  sub_1000024C4(&qword_100228260);
  Binding.projectedValue.getter();
  return v1;
}

double sub_1001199A8()
{
  sub_1000024C4(&qword_100225C00);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_100119A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v148 = a1;
  v145 = *(a1 - 8);
  v146 = *(v145 + 64);
  __chkstk_darwin(a1);
  v144 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PagingScrollTargetBehavior();
  v142 = *(v4 - 8);
  __chkstk_darwin(v4);
  v140 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Array();
  v7 = sub_10000460C(&qword_1002281A0);
  WitnessTable = swift_getWitnessTable();
  v170 = v6;
  v171 = &type metadata for Int;
  v172 = v7;
  v173 = WitnessTable;
  v174 = &protocol witness table for Int;
  type metadata accessor for ForEach();
  v143 = &protocol conformance descriptor for AsyncImage<A>;
  v169 = sub_10000BFFC(&qword_1002281A8, &qword_1002281A0);
  swift_getWitnessTable();
  v9 = type metadata accessor for HStack();
  v10 = swift_getWitnessTable();
  v170 = v9;
  v171 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v170 = v9;
  v171 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = type metadata accessor for ScrollView();
  v138 = *(v11 - 8);
  __chkstk_darwin(v11);
  v126 = &v92 - v12;
  v13 = swift_getWitnessTable();
  v170 = v11;
  v171 = v4;
  v119 = v4;
  v120 = v11;
  v172 = v13;
  v173 = &protocol witness table for PagingScrollTargetBehavior;
  v14 = v13;
  v121 = v13;
  v15 = swift_getOpaqueTypeMetadata2();
  v136 = *(v15 - 8);
  __chkstk_darwin(v15);
  v118 = &v92 - v16;
  v170 = v11;
  v171 = v4;
  v172 = v14;
  v173 = &protocol witness table for PagingScrollTargetBehavior;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = v15;
  v116 = v15;
  v117 = v17;
  v170 = v15;
  v171 = &type metadata for Int;
  v172 = v17;
  v173 = &protocol witness table for Int;
  v19 = v17;
  v20 = swift_getOpaqueTypeMetadata2();
  v130 = *(v20 - 8);
  __chkstk_darwin(v20);
  v115 = &v92 - v21;
  v170 = v18;
  v171 = &type metadata for Int;
  v172 = v19;
  v173 = &protocol witness table for Int;
  v22 = swift_getOpaqueTypeConformance2();
  v170 = v20;
  v171 = v22;
  v94 = v20;
  v95 = v22;
  v128 = swift_getOpaqueTypeMetadata2();
  v133 = *(v128 - 8);
  __chkstk_darwin(v128);
  v114 = &v92 - v23;
  sub_10000460C(&qword_1002281B0);
  v24 = type metadata accessor for ModifiedContent();
  v134 = *(v24 - 8);
  __chkstk_darwin(v24);
  v123 = &v92 - v25;
  v99 = v24;
  v26 = type metadata accessor for ModifiedContent();
  v129 = *(v26 - 8);
  __chkstk_darwin(v26);
  v125 = &v92 - v27;
  sub_10000460C(&qword_100226328);
  v100 = v26;
  v28 = type metadata accessor for ModifiedContent();
  v135 = *(v28 - 8);
  __chkstk_darwin(v28);
  v122 = &v92 - v29;
  sub_10000460C(&qword_1002281B8);
  v102 = v28;
  v30 = type metadata accessor for ModifiedContent();
  v137 = *(v30 - 8);
  __chkstk_darwin(v30);
  v124 = &v92 - v31;
  v104 = v30;
  v32 = type metadata accessor for ModifiedContent();
  v139 = *(v32 - 8);
  __chkstk_darwin(v32);
  v127 = &v92 - v33;
  v34 = sub_10000460C(&qword_100221850);
  v110 = v34;
  v170 = v20;
  v171 = v22;
  v35 = swift_getOpaqueTypeConformance2();
  v96 = v35;
  v36 = sub_10000BFFC(&qword_1002281C0, &qword_1002281B0);
  v167 = v35;
  v168 = v36;
  v98 = swift_getWitnessTable();
  v165 = v98;
  v166 = &protocol witness table for _FrameLayout;
  v37 = swift_getWitnessTable();
  v97 = v37;
  v38 = sub_10000BFFC(&qword_100226320, &qword_100226328);
  v163 = v37;
  v164 = v38;
  v39 = swift_getWitnessTable();
  v101 = v39;
  v40 = sub_10000BFFC(&qword_1002281C8, &qword_1002281B8);
  v161 = v39;
  v162 = v40;
  v103 = swift_getWitnessTable();
  v159 = v103;
  v160 = &protocol witness table for _PaddingLayout;
  v107 = v32;
  v41 = swift_getWitnessTable();
  v109 = v41;
  v108 = sub_100011884();
  v170 = v32;
  v171 = v34;
  v172 = v41;
  v173 = v108;
  v111 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v42 = swift_getOpaqueTypeMetadata2();
  v43 = *(v42 - 8);
  v112 = v42;
  v113 = v43;
  v44 = __chkstk_darwin(v42);
  v105 = &v92 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v106 = &v92 - v46;
  static Axis.Set.horizontal.getter();
  v47 = v149;
  v93 = *(v148 + 24);
  v156 = v149;
  v157 = v93;
  v48 = v141;
  v158 = v141;
  v49 = v126;
  ScrollView.init(_:showsIndicators:content:)();
  v50 = v140;
  PagingScrollTargetBehavior.init()();
  v51 = v118;
  v52 = v119;
  v53 = v120;
  View.scrollTargetBehavior<A>(_:)();
  (*(v142 + 8))(v50, v52);
  (*(v138 + 8))(v49, v53);
  v54 = v48;
  v170 = sub_100119938();
  v171 = v55;
  v172 = v56;
  LOBYTE(v173) = v57 & 1;
  v59 = v115;
  v58 = v116;
  View.scrollPosition<A>(id:anchor:)();

  (*(v136 + 8))(v51, v58);
  sub_10011988C();
  sub_10015737C();

  v60 = v114;
  v61 = v94;
  View.scrollDisabled(_:)();
  (*(v130 + 8))(v59, v61);
  v153 = v47;
  v62 = v93;
  v154 = v93;
  v155 = v54;
  static Alignment.center.getter();
  sub_1000024C4(&qword_1002281D0);
  sub_10000BFFC(&qword_1002281D8, &qword_1002281D0);
  v63 = v123;
  v64 = v128;
  View.background<A>(alignment:content:)();
  (*(v133 + 8))(v60, v64);
  v65 = v148;
  sub_10011988C();

  static Alignment.center.getter();
  v66 = v125;
  v67 = v99;
  View.frame(width:height:alignment:)();
  (*(v134 + 8))(v63, v67);
  v68 = v122;
  v69 = v100;
  View.clipped(antialiased:)();
  (*(v129 + 8))(v66, v69);
  v70 = v149;
  v150 = v149;
  v151 = v62;
  v152 = v54;
  static Alignment.center.getter();
  sub_1000024C4(&qword_1002281E0);
  sub_10011DE1C();
  v71 = v124;
  v72 = v102;
  View.overlay<A>(alignment:content:)();
  (*(v135 + 8))(v68, v72);
  static Edge.Set.bottom.getter();
  v73 = v65;
  sub_10011988C();

  v74 = v127;
  v75 = v104;
  View.padding(_:_:)();
  (*(v137 + 8))(v71, v75);
  v170 = sub_1001198CC();
  LOBYTE(v171) = v76 & 1;
  v78 = v144;
  v77 = v145;
  (*(v145 + 16))(v144, v54, v73);
  v79 = v77;
  v80 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v70;
  *(v81 + 24) = v62;
  (*(v79 + 32))(v81 + v80, v78, v73);
  v82 = v105;
  v84 = v107;
  v83 = v108;
  v86 = v109;
  v85 = v110;
  View.onChange<A>(of:initial:_:)();

  (*(v139 + 8))(v74, v84);
  v170 = v84;
  v171 = v85;
  v172 = v86;
  v173 = v83;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v106;
  v89 = v112;
  sub_1000EE87C(v82, v112, v87);
  v90 = *(v113 + 8);
  v90(v82, v89);
  sub_1000EE87C(v88, v89, v87);
  return (v90)(v88, v89);
}

uint64_t sub_10011AA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a1;
  v22 = a3;
  v20 = a2;
  v23 = a4;
  swift_getTupleTypeMetadata2();
  v28 = type metadata accessor for Array();
  v29 = &type metadata for Int;
  v30 = sub_10000460C(&qword_1002281A0);
  WitnessTable = swift_getWitnessTable();
  v32 = &protocol witness table for Int;
  type metadata accessor for ForEach();
  v27 = sub_10000BFFC(&qword_1002281A8, &qword_1002281A0);
  v19[1] = swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = swift_getWitnessTable();
  v28 = v4;
  v29 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  v11 = __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  v24 = v20;
  v25 = v22;
  v26 = v21;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  View.scrollTargetLayout(isEnabled:)();
  (*(v5 + 8))(v7, v4);
  v28 = v4;
  v29 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v17 = *(v10 + 8);
  v17(v13, OpaqueTypeMetadata2);
  sub_1000EE87C(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v17)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_10011ADD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v26 = a1;
  v35 = a4;
  v5 = type metadata accessor for TourPhotosView();
  v6 = *(v5 - 8);
  v30 = *(v6 + 64);
  __chkstk_darwin(v5);
  v28 = &v26 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Array();
  v33 = v8;
  v9 = sub_10000460C(&qword_1002281A0);
  v32 = v9;
  WitnessTable = swift_getWitnessTable();
  v40 = v8;
  v41 = &type metadata for Int;
  v42 = v9;
  v43 = WitnessTable;
  v44 = &protocol witness table for Int;
  v10 = type metadata accessor for ForEach();
  v34 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = *(sub_10011988C() + 32);

  v39 = v16;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.enumerated()();

  v39 = v40;
  type metadata accessor for EnumeratedSequence();
  swift_getWitnessTable();
  v40 = Array.init<A>(_:)();
  v17 = v29;
  v36 = a2;
  v37 = v29;
  TupleTypeMetadata2 = swift_getKeyPath();
  v18 = v28;
  (*(v6 + 16))(v28, v26, v5);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v18, v5);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v17;
  v21[4] = sub_10011ED5C;
  v21[5] = v20;
  v25 = sub_10000BFFC(&qword_1002281A8, &qword_1002281A0);
  ForEach<>.init(_:id:content:)();
  v38 = v25;
  v22 = swift_getWitnessTable();
  sub_1000EE87C(v13, v10, v22);
  v23 = *(v34 + 8);
  v23(v13, v10);
  sub_1000EE87C(v15, v10, v22);
  return (v23)(v15, v10);
}

uint64_t sub_10011B240@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  v7 = type metadata accessor for TourPhotosView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  v11 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v11 - 8);
  v13 = v18 - v12;
  (*(a3 + 16))(a2, a3);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v8 + 32))(v16 + v15, v10, v7);
  sub_1000024C4(&qword_100228340);
  sub_10011F0F8();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_10011B4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v87 = a4;
  *&v86 = a3;
  v83 = a2;
  v79 = sub_1000024C4(&qword_100228408);
  __chkstk_darwin(v79);
  v75 = &v65 - v7;
  v85 = sub_1000024C4(&qword_100228410);
  __chkstk_darwin(v85);
  v9 = &v65 - v8;
  v81 = sub_1000024C4(&qword_100228418);
  __chkstk_darwin(v81);
  v80 = &v65 - v10;
  v84 = sub_1000024C4(&qword_100228358);
  __chkstk_darwin(v84);
  v82 = &v65 - v11;
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000024C4(&qword_100228368);
  __chkstk_darwin(v78);
  v17 = &v65 - v16;
  v18 = type metadata accessor for AsyncImagePhase();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v19 + 96))(v21, v18);
    v73 = *v21;
    LODWORD(v75) = enum case for Image.ResizingMode.stretch(_:);
    v74 = *(v13 + 104);
    v74(v15);
    v23 = Image.resizable(capInsets:resizingMode:)();
    v24 = *(v13 + 8);
    v67 = v13 + 8;
    v72 = v24;
    v24(v15, v12);
    *v94 = v23;
    *&v94[16] = 257;
    static Axis.Set.horizontal.getter();
    v77 = a5;
    static Alignment.center.getter();
    v76 = v9;
    v71 = sub_1000024C4(&qword_100223B58);
    v70 = sub_100069870();
    View.containerRelativeFrame(_:alignment:)();

    v69 = type metadata accessor for TourPhotosView();
    sub_10011988C();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v68 = sub_1000024C4(&qword_1002283C8);
    v25 = &v17[*(v68 + 36)];
    v26 = v92;
    *v25 = v91;
    *(v25 + 1) = v26;
    *(v25 + 2) = v93;
    v27 = sub_1000024C4(&qword_1002283B8);
    *&v17[*(v27 + 36)] = 0;
    v28 = static Alignment.center.getter();
    v30 = v29;
    sub_10011D300(&static Color.black.getter, &static Color.clear.getter, v94);
    v31 = *v94;
    v66 = *&v94[8];
    v65 = *&v94[24];
    v32 = &v17[*(sub_1000024C4(&qword_1002283A8) + 36)];
    *v32 = v28;
    *(v32 + 1) = v30;
    *(v32 + 2) = v31;
    *(v32 + 40) = v65;
    *(v32 + 24) = v66;
    (v74)(v15, v75, v12);
    v33 = Image.resizable(capInsets:resizingMode:)();
    v72(v15, v12);
    *v94 = v33;
    *&v94[16] = 257;
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    v34 = &v17[*(sub_1000024C4(&qword_100228398) + 36)];
    View.containerRelativeFrame(_:alignment:)();

    sub_10011988C();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v35 = &v34[*(v68 + 36)];
    v36 = *&v94[16];
    *v35 = *v94;
    *(v35 + 1) = v36;
    *(v35 + 2) = *&v94[32];
    *&v34[*(v27 + 36)] = 0;
    v37 = &v34[*(sub_1000024C4(&qword_100228420) + 36)];
    *v37 = 0x4049000000000000;
    v37[8] = 1;
    *&v34[*(sub_1000024C4(&qword_100228428) + 36)] = 0;
    v38 = static Alignment.center.getter();
    v40 = v39;
    v41 = &v34[*(sub_1000024C4(&qword_1002283E8) + 36)];
    *v41 = v38;
    v41[1] = v40;
    v42 = static Alignment.center.getter();
    v44 = v43;
    v45 = &v17[*(sub_1000024C4(&qword_100228388) + 36)];
    sub_10011C104(v45);
    v46 = (v45 + *(sub_1000024C4(&qword_1002283F8) + 36));
    *v46 = v42;
    v46[1] = v44;
    v47 = static Alignment.center.getter();
    v49 = v48;
    sub_10011D3C4(&v88);
    v50 = v88;
    v86 = v90;
    v87 = v89;
    v51 = &v17[*(sub_1000024C4(&qword_100228378) + 36)];
    *v51 = v50;
    v52 = v87;
    *(v51 + 24) = v86;
    *(v51 + 8) = v52;
    *(v51 + 5) = v47;
    *(v51 + 6) = v49;
    v17[*(v78 + 36)] = 1;
    v53 = &qword_100228368;
    sub_10000BEB8(v17, v80, &qword_100228368);
    swift_storeEnumTagMultiPayload();
    sub_10011F210();
    sub_10011F708();
    v54 = v82;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v54, v76, &qword_100228358);
    swift_storeEnumTagMultiPayload();
    sub_10011F184();
    _ConditionalContent<>.init(storage:)();

    sub_1000050C4(v54, &qword_100228358);
    v55 = v17;
    return sub_1000050C4(v55, v53);
  }

  if (v22 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v19 + 8))(v21, v18);
LABEL_6:
    v76 = v9;
    v77 = a5;
    if (qword_100220BA0 != -1)
    {
      swift_once();
    }

    *v94 = qword_1002390C0;
    *&v94[8] = 256;

    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    sub_1000024C4(&qword_1002282F0);
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0);
    v56 = v75;
    View.containerRelativeFrame(_:alignment:)();

    v57 = static Alignment.center.getter();
    v59 = v58;
    sub_10011D3C4(v94);
    v60 = *&v94[8];
    v61 = *&v94[24];
    v62 = v56 + *(v79 + 36);
    *v62 = *v94;
    *(v62 + 8) = v60;
    *(v62 + 24) = v61;
    *(v62 + 40) = v57;
    *(v62 + 48) = v59;
    v53 = &qword_100228408;
    sub_10000BEB8(v56, v80, &qword_100228408);
    swift_storeEnumTagMultiPayload();
    sub_10011F210();
    sub_10011F708();
    v63 = v82;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v63, v76, &qword_100228358);
    swift_storeEnumTagMultiPayload();
    sub_10011F184();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v63, &qword_100228358);
    v55 = v56;
    return sub_1000050C4(v55, v53);
  }

  if (v22 == enum case for AsyncImagePhase.empty(_:))
  {
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_10011F184();
  _ConditionalContent<>.init(storage:)();
  return (*(v19 + 8))(v21, v18);
}

__n128 sub_10011C104@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v5, v2);
  v21 = v6;
  LOWORD(v22) = 257;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1000024C4(&qword_100223B58);
  sub_100069870();
  View.containerRelativeFrame(_:alignment:)();

  type metadata accessor for TourPhotosView();
  sub_10011988C();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = (a1 + *(sub_1000024C4(&qword_1002283C8) + 36));
  v8 = v22;
  *v7 = v21;
  v7[1] = v8;
  v7[2] = v23;
  *(a1 + *(sub_1000024C4(&qword_1002283B8) + 36)) = 0;
  *(a1 + *(sub_1000024C4(&qword_100228430) + 36)) = 0x3FF0000000000000;
  v9 = a1 + *(sub_1000024C4(&qword_100228438) + 36);
  *v9 = 0x4038000000000000;
  *(v9 + 8) = 1;
  *(a1 + *(sub_1000024C4(&qword_100228440) + 36)) = 0;
  v10 = static Alignment.center.getter();
  v12 = v11;
  sub_10011D300(&static Color.clear.getter, &static Color.black.getter, &v18);
  v13 = v18;
  v16 = v20;
  v17 = v19;
  v14 = a1 + *(sub_1000024C4(&qword_100228448) + 36);
  *v14 = v10;
  *(v14 + 8) = v12;
  *(v14 + 16) = v13;
  result = v17;
  *(v14 + 40) = v16;
  *(v14 + 24) = result;
  return result;
}

uint64_t sub_10011C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  v9 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v9 - 8);
  v11 = v18 - v10;
  type metadata accessor for TourPhotosView();
  v12 = *(sub_10011988C() + 32);

  v18[1] = v12;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v8, 1, a2) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  else
  {
    (*(a3 + 16))(a2, a3);
    (*(v13 + 8))(v8, a2);
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  }

  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_1000024C4(&qword_100228270);
  sub_10011E978();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_10011C760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46[1] = a2;
  v47 = a3;
  v55 = a4;
  v50 = sub_1000024C4(&qword_100228300);
  v46[0] = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = v46 - v5;
  v54 = sub_1000024C4(&qword_100228308);
  __chkstk_darwin(v54);
  v52 = v46 - v7;
  v48 = sub_1000024C4(&qword_100228310);
  __chkstk_darwin(v48);
  v51 = v46 - v8;
  v53 = sub_1000024C4(&qword_100228288);
  __chkstk_darwin(v53);
  v49 = v46 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000024C4(&qword_100228298);
  __chkstk_darwin(v14);
  v16 = v46 - v15;
  v17 = type metadata accessor for AsyncImagePhase();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v18 + 96))(v20, v17);
    v22 = *v20;
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v46[0] = v22;
    v23 = Image.resizable(capInsets:resizingMode:)();
    (*(v11 + 8))(v13, v10);
    v56 = v23;
    *&v57 = 0;
    WORD4(v57) = 257;
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    sub_1000024C4(&qword_100223B58);
    sub_100069870();
    View.containerRelativeFrame(_:alignment:)();

    v24 = &v16[*(sub_1000024C4(&qword_1002282C8) + 36)];
    *v24 = 0x4059000000000000;
    v24[8] = 1;
    *&v16[*(sub_1000024C4(&qword_1002282B8) + 36)] = 0;
    v25 = static Alignment.center.getter();
    v27 = v26;
    v28 = &v16[*(sub_1000024C4(&qword_1002282A8) + 36)];
    sub_10011D060(v28);
    v29 = (v28 + *(sub_1000024C4(&qword_1002282D8) + 36));
    *v29 = v25;
    v29[1] = v27;
    v30 = static Alignment.center.getter();
    v32 = v31;
    sub_10011D3C4(&v56);
    v33 = v57;
    v34 = v58;
    v35 = &v16[*(v14 + 36)];
    *v35 = v56;
    *(v35 + 8) = v33;
    *(v35 + 24) = v34;
    *(v35 + 5) = v30;
    *(v35 + 6) = v32;
    sub_10000BEB8(v16, v51, &qword_100228298);
    swift_storeEnumTagMultiPayload();
    sub_10011EB08();
    v36 = sub_10000460C(&qword_1002282F0);
    v37 = sub_10000BFFC(&qword_1002282F8, &qword_1002282F0);
    v56 = v36;
    *&v57 = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v49;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v38, v52, &qword_100228288);
    swift_storeEnumTagMultiPayload();
    sub_10011EA04();
    _ConditionalContent<>.init(storage:)();

    sub_1000050C4(v38, &qword_100228288);
    return sub_1000050C4(v16, &qword_100228298);
  }

  v47 = v14;
  v40 = v51;
  if (v21 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v18 + 8))(v20, v17);
  }

  else if (v21 != enum case for AsyncImagePhase.empty(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_10011EA04();
    _ConditionalContent<>.init(storage:)();
    return (*(v18 + 8))(v20, v17);
  }

  if (qword_100220BA0 != -1)
  {
    swift_once();
  }

  v56 = qword_1002390C0;
  LOWORD(v57) = 256;

  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  v41 = sub_1000024C4(&qword_1002282F0);
  v42 = sub_10000BFFC(&qword_1002282F8, &qword_1002282F0);
  View.containerRelativeFrame(_:alignment:)();

  v43 = v46[0];
  v44 = v50;
  (*(v46[0] + 16))(v40, v6, v50);
  swift_storeEnumTagMultiPayload();
  sub_10011EB08();
  v56 = v41;
  *&v57 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v49;
  _ConditionalContent<>.init(storage:)();
  sub_10000BEB8(v45, v52, &qword_100228288);
  swift_storeEnumTagMultiPayload();
  sub_10011EA04();
  _ConditionalContent<>.init(storage:)();
  sub_1000050C4(v45, &qword_100228288);
  return (*(v43 + 8))(v6, v44);
}

__n128 sub_10011D060@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v5, v2);
  v16 = v6;
  v17.n128_u64[0] = 0;
  v17.n128_u16[4] = 257;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1000024C4(&qword_100223B58);
  sub_100069870();
  View.containerRelativeFrame(_:alignment:)();

  *(a1 + *(sub_1000024C4(&qword_100228318) + 36)) = 0;
  *(a1 + *(sub_1000024C4(&qword_100228320) + 36)) = 0x3FF0000000000000;
  v7 = a1 + *(sub_1000024C4(&qword_100228328) + 36);
  *v7 = 0x4038000000000000;
  *(v7 + 8) = 1;
  *(a1 + *(sub_1000024C4(&qword_100228330) + 36)) = 0;
  v8 = static Alignment.center.getter();
  v10 = v9;
  sub_10011D300(&static Color.clear.getter, &static Color.black.getter, &v16);
  v11 = v16;
  v14 = v18;
  v15 = v17;
  v12 = a1 + *(sub_1000024C4(&qword_100228338) + 36);
  *v12 = v8;
  *(v12 + 8) = v10;
  *(v12 + 16) = v11;
  result = v15;
  *(v12 + 40) = v14;
  *(v12 + 24) = result;
  return result;
}

double sub_10011D300@<D0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_1000024C4(&qword_100221D18);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001B3B50;
  *(v6 + 32) = a1();
  *(v6 + 40) = a2();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  return result;
}

double sub_10011D3C4@<D0>(uint64_t a1@<X8>)
{
  sub_1000024C4(&qword_100221D18);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001B3B50;
  *(v2 + 32) = static Color.clear.getter();
  static Color.black.getter();
  v3 = Color.opacity(_:)();

  *(v2 + 40) = v3;
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

__n128 sub_10011D484@<Q0>(uint64_t a1@<X8>)
{
  v39 = static HorizontalAlignment.center.getter();
  LOBYTE(v40[0]) = 0;
  sub_10011D7D4(&v43);
  v61 = v49;
  v62 = v50;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  v64[6] = v49;
  v64[7] = v50;
  v64[2] = v45;
  v64[3] = v46;
  v64[4] = v47;
  v64[5] = v48;
  v63 = v51;
  v65 = v51;
  v64[0] = v43;
  v64[1] = v44;
  sub_10000BEB8(&v55, v42, &qword_100228268);
  sub_1000050C4(v64, &qword_100228268);
  *&v52[87] = v60;
  *&v52[103] = v61;
  *&v52[119] = v62;
  *&v52[23] = v56;
  *&v52[39] = v57;
  *&v52[55] = v58;
  *&v52[71] = v59;
  v52[135] = v63;
  *&v52[7] = v55;
  v2 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  LOBYTE(v43) = 0;
  v11 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v53 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v54[55] = v46;
  *&v54[71] = v47;
  *&v54[87] = v48;
  *&v54[103] = v49;
  *&v54[7] = v43;
  *&v54[23] = v44;
  *&v54[39] = v45;
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 = static Alignment.center.getter();
  v22 = v21;
  sub_10011DA68(v40);
  v23 = *&v52[64];
  *(a1 + 97) = *&v52[80];
  v24 = *&v52[112];
  *(a1 + 113) = *&v52[96];
  *(a1 + 129) = v24;
  v25 = *v52;
  *(a1 + 33) = *&v52[16];
  v26 = *&v52[48];
  *(a1 + 49) = *&v52[32];
  v27 = v41;
  *(a1 + 65) = v26;
  *(a1 + 81) = v23;
  result = v40[0];
  v29 = v40[1];
  *a1 = v39;
  *(a1 + 8) = 0x4032000000000000;
  *(a1 + 16) = 0;
  *(a1 + 145) = *&v52[128];
  *(a1 + 17) = v25;
  *(a1 + 160) = v2;
  *(a1 + 168) = v4;
  *(a1 + 176) = v6;
  *(a1 + 184) = v8;
  *(a1 + 192) = v10;
  *(a1 + 200) = 0;
  *(a1 + 208) = v11;
  *(a1 + 216) = v13;
  *(a1 + 224) = v15;
  *(a1 + 232) = v17;
  *(a1 + 240) = v19;
  *(a1 + 248) = 0;
  v30 = *&v54[64];
  v31 = *&v54[96];
  *(a1 + 329) = *&v54[80];
  *(a1 + 345) = v31;
  *(a1 + 360) = *&v54[111];
  v32 = *&v54[16];
  *(a1 + 249) = *v54;
  v33 = *&v54[32];
  v34 = *&v54[48];
  *(a1 + 265) = v32;
  *(a1 + 281) = v33;
  *(a1 + 297) = v34;
  *(a1 + 313) = v30;
  v35 = v42[1];
  *(a1 + 368) = v42[0];
  *(a1 + 384) = v35;
  v36 = v42[6];
  v37 = v42[5];
  *(a1 + 432) = v42[4];
  *(a1 + 448) = v37;
  v38 = v42[3];
  *(a1 + 400) = v42[2];
  *(a1 + 416) = v38;
  *(a1 + 464) = v36;
  *(a1 + 480) = result;
  *(a1 + 496) = v29;
  *(a1 + 512) = v27;
  *(a1 + 520) = v20;
  *(a1 + 528) = v22;
  *(a1 + 536) = 0;
  return result;
}

uint64_t sub_10011D7D4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TourPhotosView();
  v2 = sub_10011988C();
  v3 = *(v2 + 48);
  v30 = *(v2 + 40);

  v4 = LocalizedStringKey.init(stringLiteral:)();
  v27 = v5;
  v28 = v4;
  v25 = v6;
  v29 = v7;
  v8 = LocalizedStringKey.init(stringLiteral:)();
  v10 = v9;
  v24 = v11;
  v26 = v12;
  type metadata accessor for CGSize(0);
  v31 = 0u;
  v34 = 0u;
  State.init(wrappedValue:)();
  v13 = v41;
  v14 = v42;
  sub_10011988C();
  v15 = sub_10015737C();

  v16 = 0.0;
  if (v15)
  {
    sub_10011988C();
    v32 = sub_1001573B4();

    sub_10011988C();
    v23 = sub_1001573CC();

    v16 = sub_1001199A8();
    *&v17 = v32;
    *(&v17 + 1) = v23;
    v31 = v17;
  }

  *&v34 = v28;
  *(&v34 + 1) = v27;
  LOBYTE(v35) = v25 & 1;
  *(&v35 + 1) = v54[0];
  DWORD1(v35) = *(v54 + 3);
  *(&v35 + 1) = v29;
  *&v36 = v8;
  *(&v36 + 1) = v10;
  LOBYTE(v37) = v24 & 1;
  *(&v37 + 1) = *v53;
  DWORD1(v37) = *&v53[3];
  *(&v37 + 1) = v26;
  *&v38 = v30;
  *(&v38 + 1) = v3;
  v39 = v41;
  v40 = v42;
  v33[104] = !v15;
  *(a1 + 96) = v42;
  v18 = v34;
  v19 = v35;
  v20 = v37;
  *(a1 + 32) = v36;
  *(a1 + 48) = v20;
  *a1 = v18;
  *(a1 + 16) = v19;
  v21 = v39;
  *(a1 + 64) = v38;
  *(a1 + 80) = v21;
  *(a1 + 104) = v31;
  *(a1 + 120) = v16;
  *(a1 + 128) = !v15;
  *&v41 = v28;
  *(&v41 + 1) = v27;
  LOBYTE(v42) = v25 & 1;
  HIDWORD(v42) = *(v54 + 3);
  *(&v42 + 1) = v54[0];
  v43 = v29;
  v44 = v8;
  v45 = v10;
  v46 = v24 & 1;
  *&v47[3] = *&v53[3];
  *v47 = *v53;
  v48 = v26;
  v49 = v30;
  v50 = v3;
  v51 = v13;
  v52 = v14;
  sub_10006996C(&v34, v33);
  return sub_10011E90C(&v41);
}

uint64_t sub_10011DA68@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  type metadata accessor for TourPhotosView();
  sub_10003A100(v8);
  (*(v3 + 104))(v6, enum case for ContentSizeCategory.accessibilityExtraLarge(_:), v2);
  v9 = sub_100172140(v8, v6);
  v10 = *(v3 + 8);
  v10(v6, v2);
  result = (v10)(v8, v2);
  if (v9)
  {
    sub_1000024C4(&qword_100221D18);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001B3B50;
    *(v12 + 32) = static Color.clear.getter();
    static Color.black.getter();
    v13 = Color.opacity(_:)();

    *(v12 + 40) = v13;
    Gradient.init(colors:)();
    result = LinearGradient.init(gradient:startPoint:endPoint:)();
    v14 = v17[1];
    v15 = v18;
    v16 = v19;
  }

  else
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_10011DC74(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v2 = type metadata accessor for TourPhotosView();
  sub_10011988C();
  if (*(a1 + *(v2 + 44)))
  {

    sub_100157420(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10011DD70()
{
  type metadata accessor for TourPhotosView();
  result = sub_1001198CC();
  if ((v1 & 1) == 0)
  {
    sub_10011988C();
    sub_1001573CC();

    return sub_100119A08();
  }

  return result;
}

unint64_t sub_10011DE1C()
{
  result = qword_1002281E8;
  if (!qword_1002281E8)
  {
    sub_10000460C(&qword_1002281E0);
    sub_10011DEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002281E8);
  }

  return result;
}

unint64_t sub_10011DEA8()
{
  result = qword_1002281F0;
  if (!qword_1002281F0)
  {
    sub_10000460C(&qword_1002281F8);
    sub_10011DF60();
    sub_10000BFFC(&qword_100228250, &qword_100228258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002281F0);
  }

  return result;
}

unint64_t sub_10011DF60()
{
  result = qword_100228200;
  if (!qword_100228200)
  {
    sub_10000460C(&qword_100228208);
    sub_10011DFEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228200);
  }

  return result;
}

unint64_t sub_10011DFEC()
{
  result = qword_100228210;
  if (!qword_100228210)
  {
    sub_10000460C(&qword_100228218);
    sub_10011E078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228210);
  }

  return result;
}

unint64_t sub_10011E078()
{
  result = qword_100228220;
  if (!qword_100228220)
  {
    sub_10000460C(&qword_100228228);
    sub_10011E104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228220);
  }

  return result;
}

unint64_t sub_10011E104()
{
  result = qword_100228230;
  if (!qword_100228230)
  {
    sub_10000460C(&qword_100228238);
    sub_10000BFFC(&qword_100228240, &qword_100228248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228230);
  }

  return result;
}

uint64_t sub_10011E1C0()
{
  v1 = *(type metadata accessor for TourPhotosView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10011DC74(v2);
}

uint64_t sub_10011E264@<X0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v54 = a1;
  v52 = sub_1000024C4(&qword_100228468) - 8;
  v3 = __chkstk_darwin(v52);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v41 - v5;
  v50 = sub_1000024C4(&qword_100228470) - 8;
  v7 = __chkstk_darwin(v50);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v49 = type metadata accessor for RoundedRectangle();
  v11 = *(v49 + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = type metadata accessor for RoundedCornerStyle();
  v14 = *(v13 - 8);
  v46 = *(v14 + 104);
  v48 = v14 + 104;
  v46(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #2.0 }

  v45 = _Q0;
  *v10 = _Q0;
  v44 = objc_opt_self();
  v20 = [v44 tertiaryLabelColor];
  v21 = Color.init(uiColor:)();
  v43 = sub_1000024C4(&qword_100223250);
  *&v10[*(v43 + 36)] = v21;
  v42 = sub_1000024C4(&qword_100228478);
  v22 = &v10[*(v42 + 36)];
  v23 = sub_1000024C4(&qword_100228480);
  v24 = *(v23 + 28);
  v25 = enum case for ColorScheme.light(_:);
  v26 = type metadata accessor for ColorScheme();
  v27 = *(*(v26 - 8) + 104);
  v27(v22 + v24, v25, v26);
  *v22 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v28 = v50;
  v29 = &v10[*(v50 + 44)];
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  *(v29 + 2) = v57;
  v46(&v6[*(v49 + 20)], v47, v13);
  *v6 = v45;
  v31 = [v44 secondaryLabelColor];
  *&v6[*(v43 + 36)] = Color.init(uiColor:)();
  v32 = &v6[*(v42 + 36)];
  v27(v32 + *(v23 + 28), v25, v26);
  *v32 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v33 = &v6[*(v28 + 44)];
  v34 = v59;
  *v33 = v58;
  *(v33 + 1) = v34;
  *(v33 + 2) = v60;
  v35 = v51;
  v36 = &v6[*(v52 + 44)];
  *v36 = a2;
  *(v36 + 1) = 0;
  sub_10000BEB8(v10, v35, &qword_100228470);
  v37 = v53;
  sub_10000BEB8(v6, v53, &qword_100228468);
  v38 = v54;
  sub_10000BEB8(v35, v54, &qword_100228470);
  v39 = sub_1000024C4(&qword_100228488);
  sub_10000BEB8(v37, v38 + *(v39 + 48), &qword_100228468);
  sub_1000050C4(v6, &qword_100228468);
  sub_1000050C4(v10, &qword_100228470);
  sub_1000050C4(v37, &qword_100228468);
  return sub_1000050C4(v35, &qword_100228470);
}

uint64_t sub_10011E750@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = static Alignment.leading.getter();
  a1[1] = v4;
  v5 = sub_1000024C4(&qword_100228450);
  sub_10011E264(a1 + *(v5 + 44), v3);
  v6 = *(sub_1000024C4(&qword_100228458) + 36);
  v7 = enum case for BlendMode.plusLighter(_:);
  v8 = type metadata accessor for BlendMode();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  result = sub_1000024C4(&qword_100228460);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_10011E844(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_10011E978()
{
  result = qword_100228278;
  if (!qword_100228278)
  {
    sub_10000460C(&qword_100228270);
    sub_10011EA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228278);
  }

  return result;
}

unint64_t sub_10011EA04()
{
  result = qword_100228280;
  if (!qword_100228280)
  {
    sub_10000460C(&qword_100228288);
    sub_10011EB08();
    sub_10000460C(&qword_1002282F0);
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228280);
  }

  return result;
}

unint64_t sub_10011EB08()
{
  result = qword_100228290;
  if (!qword_100228290)
  {
    sub_10000460C(&qword_100228298);
    sub_10011EBC0();
    sub_10000BFFC(&qword_1002282E0, &qword_1002282E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228290);
  }

  return result;
}

unint64_t sub_10011EBC0()
{
  result = qword_1002282A0;
  if (!qword_1002282A0)
  {
    sub_10000460C(&qword_1002282A8);
    sub_10011EC78();
    sub_10000BFFC(&qword_1002282D0, &qword_1002282D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002282A0);
  }

  return result;
}

unint64_t sub_10011EC78()
{
  result = qword_1002282B0;
  if (!qword_1002282B0)
  {
    sub_10000460C(&qword_1002282B8);
    sub_10011F654(&qword_1002282C0, &qword_1002282C8);
    sub_10000BFFC(&qword_100226320, &qword_100226328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002282B0);
  }

  return result;
}

uint64_t sub_10011ED5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for TourPhotosView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10011B240(v6, v3, v4, a1);
}

uint64_t sub_10011EE00()
{

  return swift_deallocObject();
}

uint64_t sub_10011EE38(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_10011EEAC()
{
  v1 = (type metadata accessor for TourPhotosView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));
  type metadata accessor for TourPhotosViewModel();
  v3 = type metadata accessor for Bindable();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[14];
  sub_1000024C4(&qword_1002229F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ContentSizeCategory();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10011F05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for TourPhotosView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10011B4A0(a1, v8, v5, v6, a2);
}

unint64_t sub_10011F0F8()
{
  result = qword_100228348;
  if (!qword_100228348)
  {
    sub_10000460C(&qword_100228340);
    sub_10011F184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228348);
  }

  return result;
}

unint64_t sub_10011F184()
{
  result = qword_100228350;
  if (!qword_100228350)
  {
    sub_10000460C(&qword_100228358);
    sub_10011F210();
    sub_10011F708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228350);
  }

  return result;
}

unint64_t sub_10011F210()
{
  result = qword_100228360;
  if (!qword_100228360)
  {
    sub_10000460C(&qword_100228368);
    sub_10011F29C();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228360);
  }

  return result;
}

unint64_t sub_10011F29C()
{
  result = qword_100228370;
  if (!qword_100228370)
  {
    sub_10000460C(&qword_100228378);
    sub_10011F354();
    sub_10000BFFC(&qword_1002282E0, &qword_1002282E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228370);
  }

  return result;
}

unint64_t sub_10011F354()
{
  result = qword_100228380;
  if (!qword_100228380)
  {
    sub_10000460C(&qword_100228388);
    sub_10011F40C();
    sub_10000BFFC(&qword_1002283F0, &qword_1002283F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228380);
  }

  return result;
}

unint64_t sub_10011F40C()
{
  result = qword_100228390;
  if (!qword_100228390)
  {
    sub_10000460C(&qword_100228398);
    sub_10011F4C4();
    sub_10000BFFC(&qword_1002283E0, &qword_1002283E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228390);
  }

  return result;
}

unint64_t sub_10011F4C4()
{
  result = qword_1002283A0;
  if (!qword_1002283A0)
  {
    sub_10000460C(&qword_1002283A8);
    sub_10011F57C();
    sub_10000BFFC(&qword_1002283D0, &qword_1002283D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002283A0);
  }

  return result;
}

unint64_t sub_10011F57C()
{
  result = qword_1002283B0;
  if (!qword_1002283B0)
  {
    sub_10000460C(&qword_1002283B8);
    sub_10011F654(&qword_1002283C0, &qword_1002283C8);
    sub_10000BFFC(&qword_100226320, &qword_100226328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002283B0);
  }

  return result;
}

uint64_t sub_10011F654(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    sub_10000460C(&qword_100223B58);
    sub_100069870();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10011F708()
{
  result = qword_100228400;
  if (!qword_100228400)
  {
    sub_10000460C(&qword_100228408);
    sub_10000460C(&qword_1002282F0);
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_1002282E0, &qword_1002282E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TourPhotosScrollBar(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TourPhotosScrollBar(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10011F88C()
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  sub_10000460C(&qword_1002281A0);
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  sub_10000BFFC(&qword_1002281A8, &qword_1002281A0);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for PagingScrollTargetBehavior();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002281B0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100226328);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002281B8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221850);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_1002281C0, &qword_1002281B0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226320, &qword_100226328);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_1002281C8, &qword_1002281B8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100011884();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10011FDB0()
{
  result = qword_100228490;
  if (!qword_100228490)
  {
    sub_10000460C(&qword_100228460);
    sub_10011FE3C();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228490);
  }

  return result;
}

unint64_t sub_10011FE3C()
{
  result = qword_100228498;
  if (!qword_100228498)
  {
    sub_10000460C(&qword_100228458);
    sub_10000BFFC(&qword_1002284A0, qword_1002284A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228498);
  }

  return result;
}

id sub_10011FEFC(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [result addressRepresentations];
    if (!v2 || (v3 = v2, v4 = [v2 fullAddressIncludingRegion:0 singleLine:1], v3, !v4))
    {
      result = [v1 address];
      if (!result)
      {
        return result;
      }

      v5 = result;
      v4 = [result fullAddress];
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  return result;
}

uint64_t sub_10011FFD8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100120000);
}

uint64_t sub_100120000()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(v0 + 24);
    if (v3 == 0.0 || *(v0 + 32) == 0.0)
    {
LABEL_5:
      v4 = v2;
LABEL_6:
      v5 = *(v0 + 8);

      return v5(v2);
    }

    v11 = v1;
    v12 = v2;
    [v12 size];
    v14 = vabdd_f64(v13, v3);
    [v12 size];
    if (v14 < 15.0 && vabdd_f64(v15, *(v0 + 32)) < 15.0)
    {

      v2 = *(v0 + 16);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = v1;
  }

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_100120180;
  v9.n128_u64[0] = *(v0 + 24);
  v10.n128_u64[0] = *(v0 + 32);

  return (sub_1000C6958)(v1, v9, v10);
}