uint64_t sub_1008ADB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding);

  *(a3 + 32) = EnvironmentObject.init()();
  *(a3 + 40) = v5;
  v6 = *(type metadata accessor for ActionMenuView() + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_10010FC20(&qword_1011A8288);
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;

  v8 = static ObservableObject.environmentStore.getter();
  result = sub_10010FC20(&qword_1011A8080);
  v10 = (a3 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9)
{
  v47 = a6;
  v43 = a5;
  v48 = a4;
  v49 = a3;
  v40 = a2;
  v42 = a1;
  v53 = a8;
  v10 = type metadata accessor for MenuOrder();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v50 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001109D0(&qword_1011A80A0);
  v41 = v12;
  v13 = sub_1008AE1A8();
  v59 = a7;
  v60 = v12;
  v61 = a9;
  v62 = v13;
  v14 = type metadata accessor for Menu();
  v46 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v35 - v15;
  sub_1001109D0(&qword_1011A8098);
  v38 = v14;
  v17 = type metadata accessor for ModifiedContent();
  v36 = v17;
  v45 = *(v17 - 8);
  __chkstk_darwin(v17);
  v39 = v35 - v18;
  WitnessTable = swift_getWitnessTable();
  v35[1] = WitnessTable;
  v20 = sub_100020674(&qword_1011A8090, &qword_1011A8098);
  v57 = WitnessTable;
  v58 = v20;
  v37 = swift_getWitnessTable();
  v59 = v17;
  v60 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v35 - v26;
  v54 = v42;
  v55 = v40;
  v56 = v44;

  Menu.init(onPresentationChanged:content:label:)();
  type metadata accessor for ActionMenuView.Excluding();
  *(swift_allocObject() + 16) = v49;
  sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding);

  v28 = v39;
  v29 = v38;
  View.environmentObject<A>(_:)();

  (*(v46 + 8))(v16, v29);
  v30 = v50;
  static MenuOrder.fixed.getter();
  v31 = v36;
  View.menuOrder(_:)();
  (*(v51 + 8))(v30, v52);
  (*(v45 + 8))(v28, v31);
  v32 = *(v22 + 16);
  v32(v27, v24, OpaqueTypeMetadata2);
  v33 = *(v22 + 8);
  v33(v24, OpaqueTypeMetadata2);
  v32(v53, v27, OpaqueTypeMetadata2);
  return (v33)(v27, OpaqueTypeMetadata2);
}

unint64_t sub_1008AE1A8()
{
  result = qword_1011A80A8;
  if (!qword_1011A80A8)
  {
    sub_1001109D0(&qword_1011A80A0);
    sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A80A8);
  }

  return result;
}

uint64_t sub_1008AE270()
{
  type metadata accessor for ActionMenuView();
  sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView);
  sub_10000988C();

  return Section<>.init<A>(_:content:)();
}

uint64_t sub_1008AE380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding);

  *(a2 + 32) = EnvironmentObject.init()();
  *(a2 + 40) = v3;
  v4 = *(type metadata accessor for ActionMenuView() + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_10010FC20(&qword_1011A8288);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1008AE464@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActionMenuView.Excluding();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1008AE4A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011A8230);
  v93 = *(v3 - 8);
  __chkstk_darwin(v3);
  v92 = v78 - v4;
  v104 = sub_10010FC20(&qword_1011A8238);
  __chkstk_darwin(v104);
  v106 = v78 - v5;
  v105 = sub_10010FC20(&qword_1011A8240);
  __chkstk_darwin(v105);
  v100 = v78 - v6;
  v7 = type metadata accessor for Divider();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin(v7);
  v85 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011A8248);
  __chkstk_darwin(v9 - 8);
  v98 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = v78 - v12;
  v89 = sub_10010FC20(&qword_1011A8250);
  __chkstk_darwin(v89);
  v94 = v78 - v13;
  v91 = type metadata accessor for MenuControlGroupStyle();
  v83 = *(v91 - 8);
  __chkstk_darwin(v91);
  v81 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10010FC20(&qword_1011A8258);
  v80 = *(v88 - 8);
  __chkstk_darwin(v88);
  v79 = v78 - v15;
  v90 = sub_10010FC20(&qword_1011A8260);
  v84 = *(v90 - 8);
  __chkstk_darwin(v90);
  v82 = v78 - v16;
  v17 = sub_10010FC20(&qword_1011A8268);
  __chkstk_darwin(v17 - 8);
  v95 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v102 = v78 - v20;
  v111 = sub_10010FC20(&qword_1011A8270);
  __chkstk_darwin(v111);
  v103 = v78 - v21;
  v22 = type metadata accessor for ActionMenuView();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10010FC20(&qword_1011A8278);
  __chkstk_darwin(v101);
  v107 = v78 - v26;
  v109 = sub_10010FC20(&qword_1011A8280);
  __chkstk_darwin(v109);
  v110 = v78 - v27;
  if (!v1[4])
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v28 = v1;
  v29 = *v1;

  v31 = ActionMenu.elements(excluding:includeUnsupported:)(v30, 0);
  v108 = v32;
  v34 = v33;

  if (!*(v31 + 16))
  {

    (v108)(v49);
    swift_storeEnumTagMultiPayload();
    sub_1008B142C();
    _ConditionalContent<>.init(storage:)();
  }

  v86 = v3;
  v87 = a1;
  v112 = v31;
  swift_getKeyPath();
  sub_1008B0FD8(v28, v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v36 = (v24 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_1008B103C(v25, v37 + v35);
  *(v37 + v36) = v31;
  swift_bridgeObjectRetain_n();
  sub_10010FC20(&qword_1011A8290);
  sub_10010FC20(&qword_1011A8298);
  sub_100020674(&qword_1011A82A0, &qword_1011A8290);
  sub_1008B114C();
  v38 = v107;
  ForEach<>.init(_:id:content:)();
  v39 = swift_allocObject();
  *(v39 + 16) = v108;
  *(v39 + 24) = v34;
  v40 = (v38 + *(v101 + 36));
  *v40 = sub_1001D3174;
  v40[1] = v39;
  v40[2] = 0;
  v40[3] = 0;
  v41 = *(v29 + 32);

  v42 = v34;
  if ((MenuType.style.getter(v41) & 1) == 0)
  {
    v108 = v28;
    v51 = *(v31 + 16);
    v52 = *(v29 + 32);

    if (MenuType.rawValue.getter(v52) == 0x7463416B63697571 && v53 == 0xEB000000006E6F69)
    {

      if (v51 <= 1)
      {
LABEL_13:
        sub_1000089F8(v38, v94, &qword_1011A8278);
        swift_storeEnumTagMultiPayload();
        v65 = sub_100020674(&qword_1011A8308, &qword_1011A8258);
        v66 = sub_1008B1A7C(&qword_1011A8310, &type metadata accessor for MenuControlGroupStyle);
        v112 = v88;
        v113 = v91;
        v114 = v65;
        v115 = v66;
        swift_getOpaqueTypeConformance2();
        sub_1008B131C();
        _ConditionalContent<>.init(storage:)();
        goto LABEL_14;
      }
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v55 & 1) == 0 || v51 < 2)
      {
        goto LABEL_13;
      }
    }

    __chkstk_darwin(v54);
    v93 = sub_1008B131C();
    v56 = v79;
    ControlGroup.init(content:)();
    v57 = v81;
    MenuControlGroupStyle.init()();
    v58 = sub_100020674(&qword_1011A8308, &qword_1011A8258);
    v59 = sub_1008B1A7C(&qword_1011A8310, &type metadata accessor for MenuControlGroupStyle);
    v60 = v82;
    v61 = v88;
    v62 = v91;
    View.controlGroupStyle<A>(_:)();
    (*(v83 + 8))(v57, v62);
    (*(v80 + 8))(v56, v61);
    v63 = v84;
    v64 = v90;
    (*(v84 + 16))(v94, v60, v90);
    swift_storeEnumTagMultiPayload();
    v112 = v61;
    v113 = v62;
    v114 = v58;
    v115 = v59;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v63 + 8))(v60, v64);
LABEL_14:
    v68 = v96;
    v67 = v97;
    v69 = *(v108 + 8) == 1;
    v70 = v99;
    v78[1] = v42;
    if (v69)
    {
      v71 = v85;
      Divider.init()();
      (*(v68 + 32))(v70, v71, v67);
      v72 = 0;
    }

    else
    {
      v72 = 1;
    }

    (*(v68 + 56))(v70, v72, 1, v67);
    v73 = v102;
    v74 = v95;
    sub_1000089F8(v102, v95, &qword_1011A8268);
    v75 = v98;
    sub_1000089F8(v70, v98, &qword_1011A8248);
    v76 = v100;
    sub_1000089F8(v74, v100, &qword_1011A8268);
    v77 = sub_10010FC20(&qword_1011A8318);
    sub_1000089F8(v75, v76 + *(v77 + 48), &qword_1011A8248);
    sub_1000095E8(v75, &qword_1011A8248);
    sub_1000095E8(v74, &qword_1011A8268);
    sub_1000089F8(v76, v106, &qword_1011A8240);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_1011A82F0, &qword_1011A8240);
    sub_100020674(&qword_1011A82F8, &qword_1011A8230);
    v48 = v103;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v76, &qword_1011A8240);
    sub_1000095E8(v70, &qword_1011A8248);
    sub_1000095E8(v73, &qword_1011A8268);
    v38 = v107;
    goto LABEL_18;
  }

  __chkstk_darwin(v43);
  __chkstk_darwin(v44);
  sub_10010FC20(&qword_1011A82B8);
  sub_1008B1264();
  sub_1008B131C();
  v45 = v92;
  Menu.init(content:label:)();
  v46 = v93;
  v47 = v86;
  (*(v93 + 16))(v106, v45, v86);
  swift_storeEnumTagMultiPayload();
  sub_100020674(&qword_1011A82F0, &qword_1011A8240);
  sub_100020674(&qword_1011A82F8, &qword_1011A8230);
  v48 = v103;
  _ConditionalContent<>.init(storage:)();
  (*(v46 + 8))(v45, v47);
LABEL_18:
  sub_1000089F8(v48, v110, &qword_1011A8270);
  swift_storeEnumTagMultiPayload();
  sub_1008B142C();
  _ConditionalContent<>.init(storage:)();

  sub_1000095E8(v48, &qword_1011A8270);
  return sub_1000095E8(v38, &qword_1011A8278);
}

uint64_t sub_1008AF59C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    result = v5;
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_1008AF5E4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v65 = type metadata accessor for ActionMenuView();
  __chkstk_darwin(v65);
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_10010FC20(&qword_1011A8328);
  __chkstk_darwin(v63);
  v10 = &v56[-v9];
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[1];
  v66 = *a1;
  v67 = v15;
  v16 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v68 = a1[2];
  v69 = v18;
  v61 = v16;
  v62 = v17;
  v70 = a1[6];
  if (MenuType.rawValue.getter(*(*a2 + 32)) == 0x7463416B63697571 && v19 == 0xEB000000006E6F69)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a3 + 16) >= 2uLL)
  {
    sub_1008B1510(v14);
    v22 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v12 + 8))(v14, v11);
    v23 = v22 ^ 1;
    v24 = v66;
    if ((v66 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v25 = a2[2];
    v26 = a2[3];
    *v8 = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v8[8] = 1;
    *(v8 + 2) = v25;
    *(v8 + 3) = v26;
    sub_1008B1778(v24);
    sub_100030444(v25);
    type metadata accessor for ActionMenuView.Excluding();
    sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding);
    *(v8 + 4) = EnvironmentObject.init()();
    *(v8 + 5) = v27;
    v28 = *(v65 + 32);
    *&v8[v28] = swift_getKeyPath();
    sub_10010FC20(&qword_1011A8288);
    swift_storeEnumTagMultiPayload();
    sub_1008B0FD8(v8, v10);
    swift_storeEnumTagMultiPayload();
    sub_1008B1208();
    sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView);
    _ConditionalContent<>.init(storage:)();
    return sub_1008B17CC(v8);
  }

LABEL_11:
  v23 = 0;
  v24 = v66;
  if (v66 < 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v59 = (v23 & 1) != 0 && *(a3 + 16) > 2uLL;
  v30 = a2[2];
  v31 = a2[3];
  v60 = v30;
  sub_100030444(v30);

  v67(v89, v32);
  v33 = v90;
  v34 = v91;
  sub_10000954C(v89, v90);
  v87 = (*(v34 + 8))(v33, v34);
  v88[0] = v35;
  v36 = v90;
  v37 = v91;
  sub_10000954C(v89, v90);
  v38 = (*(v37 + 24))(v36, v37);
  v39 = 0;
  v88[1] = v38;
  v88[2] = v40;
  v41 = _swiftEmptyArrayStorage;
LABEL_16:
  v42 = &v88[2 * v39];
  while (++v39 != 3)
  {
    v43 = v42 + 2;
    v44 = *v42;
    v42 += 2;
    if (v44)
    {
      v58 = v10;
      v57 = v23;
      v45 = *(v43 - 3);

      v46 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_10089C4F8(0, *(v41 + 2) + 1, 1, v41);
      }

      v48 = *(v41 + 2);
      v47 = *(v41 + 3);
      if (v48 >= v47 >> 1)
      {
        v41 = sub_10089C4F8((v47 > 1), v48 + 1, 1, v41);
      }

      *(v41 + 2) = v48 + 1;
      v49 = &v41[16 * v48];
      *(v49 + 4) = v45;
      *(v49 + 5) = v44;
      v31 = v46;
      v23 = v57;
      v10 = v58;
      goto LABEL_16;
    }
  }

  sub_10010FC20(&unk_1011ACB70);
  swift_arrayDestroy();
  v78[0] = v41;
  sub_10010FC20(&unk_1011A9FA0);
  sub_100020674(&qword_1011AAA30, &unk_1011A9FA0);
  v50 = BidirectionalCollection<>.joined(separator:)();
  v52 = v51;

  sub_10000959C(v89);
  LOBYTE(v72) = v66;
  *(&v72 + 1) = v94[0];
  DWORD1(v72) = *(v94 + 3);
  *(&v72 + 1) = v67;
  *&v73 = v68;
  *(&v73 + 1) = v61;
  *&v74 = v69;
  *(&v74 + 1) = v62;
  *&v75 = v70;
  BYTE8(v75) = v59;
  BYTE9(v75) = v23 & 1;
  *(&v75 + 10) = v92;
  HIWORD(v75) = v93;
  *&v76 = v60;
  *(&v76 + 1) = v31;
  *&v77 = v50;
  *(&v77 + 1) = v52;
  LOBYTE(v78[0]) = v66;
  HIDWORD(v78[0]) = *(v94 + 3);
  *(v78 + 1) = v94[0];
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v61;
  v78[4] = v69;
  v78[5] = v62;
  v78[6] = v70;
  v79 = v59;
  v80 = v23 & 1;
  v81 = v92;
  v82 = v93;
  v83 = v60;
  v84 = v31;
  v85 = v50;
  v86 = v52;
  sub_1008B1828(&v72, &v71);
  sub_1008B1860(v78);
  v53 = v75;
  v10[2] = v74;
  v10[3] = v53;
  v54 = v77;
  v10[4] = v76;
  v10[5] = v54;
  v55 = v73;
  *v10 = v72;
  v10[1] = v55;
  swift_storeEnumTagMultiPayload();
  sub_1008B1208();
  sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1008AFCD8(uint64_t *a1)
{
  v2 = sub_10010FC20(&qword_1011A82D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - v4;
  v6 = sub_10010FC20(&qword_1011A8320);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = *a1;
  v10 = MenuType.image.getter(*(*a1 + 32));
  if (v10)
  {
    __chkstk_darwin(v10);
    v19[-2] = a1;
    __chkstk_darwin(v11);
    v19[-2] = v12;
    v13 = v12;
    Label.init(title:icon:)();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_1011A82C8, &qword_1011A82D0);
    _ConditionalContent<>.init(storage:)();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v19[0] = MenuType.title.getter(*(v9 + 32));
    v19[1] = v15;
    sub_10000988C();
    *v8 = Text.init<A>(_:)();
    *(v8 + 1) = v16;
    v8[16] = v17 & 1;
    *(v8 + 3) = v18;
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_1011A82C8, &qword_1011A82D0);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1008AFFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MenuType.title.getter(*(*a1 + 32));
  sub_10000988C();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1008B004C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A8340);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16[-v4 - 8];
  (*(v0 + 8))(v17, v3);
  v6 = v18;
  v7 = v19;
  sub_10000954C(v17, v18);
  if ((*(v7 + 48))(v6, v7))
  {
    static ButtonRole.destructive.getter();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for ButtonRole();
  (*(*(v9 - 8) + 56))(v5, v8, 1, v9);
  v10 = swift_allocObject();
  v11 = v1[3];
  v10[3] = v1[2];
  v10[4] = v11;
  v12 = v1[5];
  v10[5] = v1[4];
  v10[6] = v12;
  v13 = v1[1];
  v10[1] = *v1;
  v10[2] = v13;
  __chkstk_darwin(v10);
  *(&v15 - 2) = v1;
  *(&v15 - 1) = v17;
  sub_1008B1828(v1, v16);
  sub_10010FC20(&qword_1011A8348);
  sub_100020674(&qword_1011A8350, &qword_1011A8348);
  Button.init(role:action:label:)();
  return sub_10000959C(v17);
}

uint64_t ActionMenuItemStyle.buttonRole.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    static ButtonRole.destructive.getter();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for ButtonRole();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

void sub_1008B0320()
{
  type metadata accessor for ActionMenu();
  if (v0 <= 0x3F)
  {
    sub_10002EFE0();
    if (v1 <= 0x3F)
    {
      sub_1008B03DC();
      if (v2 <= 0x3F)
      {
        sub_1008B0470();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1008B03DC()
{
  if (!qword_1011A81E8)
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A81E8);
    }
  }
}

void sub_1008B0470()
{
  if (!qword_1011A81F0)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A81F0);
    }
  }
}

uint64_t sub_1008B04E4(_OWORD *a1)
{
  v2 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  sub_1008B1828(a1, v12);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v8;
  v9 = a1[5];
  *(v7 + 96) = a1[4];
  *(v7 + 112) = v9;
  v10 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v10;
  sub_100A5932C(0, 0, v4, &unk_100EED450, v7);
}

uint64_t sub_1008B0624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1008B0730;

  return v8();
}

uint64_t sub_1008B0730()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1008B090C;
  }

  else
  {
    v4 = sub_1008B088C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1008B088C()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 64);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1008B090C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008B0970()
{
  sub_10010FC20(&qword_1011A8358);
  sub_10010FC20(&qword_1011A8360);
  sub_1008B1994();
  sub_1008B1AC4();
  return Label.init(title:icon:)();
}

uint64_t sub_1008B0A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A8378);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  sub_10010FC20(&qword_1011A8390);
  sub_100020674(&qword_1011A8398, &qword_1011A8390);
  LabelGroup.init(content:)();
  v12 = *(a1 + 80);
  sub_100020674(&qword_1011A8370, &qword_1011A8378);
  sub_10000988C();
  View.accessibilityLabel<A>(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1008B0BEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[3];
  v7 = a2[4];
  sub_10000954C(a2, v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v6, v7);
  if (!v8)
  {
    v6 = a2[3];
    v7 = a2[4];
    sub_10000954C(a2, v6);
LABEL_4:
    (*(v7 + 8))(v6, v7);
  }

  sub_10000988C();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = a2[3];
  v16 = a2[4];
  sub_10000954C(a2, v17);
  (*(v16 + 24))(v17, v16);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v22;
  sub_10021D0C0(v9, v11, v13 & 1);

  sub_10021D0C0(v18, v20, v16);

  sub_10011895C(v18, v20, v16);

  sub_10011895C(v9, v11, v13 & 1);
}

uint64_t sub_1008B0DC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 57);
  v6 = a2[3];
  v7 = a2[4];
  sub_10000954C(a2, v6);
  if (v5)
  {
    v8 = (*(v7 + 40))(v6, v7);
    if (v8)
    {
      v9 = v8;
      goto LABEL_6;
    }

    v6 = a2[3];
    v7 = a2[4];
    sub_10000954C(a2, v6);
  }

  result = (*(v7 + 32))(v6, v7);
  v9 = result;
  if (!result)
  {
    v12 = 0;
    goto LABEL_8;
  }

LABEL_6:

  v12 = v9(v11);
  sub_1008B1B40(v9);

LABEL_8:
  *a3 = v12;
  return result;
}

uint64_t sub_1008B0F0C(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_1008B0FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008B103C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008B10A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionMenuView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1008AF5E4(a1, (v2 + v6), v7, a2);
}

unint64_t sub_1008B114C()
{
  result = qword_1011A82A8;
  if (!qword_1011A82A8)
  {
    sub_1001109D0(&qword_1011A8298);
    sub_1008B1208();
    sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82A8);
  }

  return result;
}

unint64_t sub_1008B1208()
{
  result = qword_1011A82B0;
  if (!qword_1011A82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82B0);
  }

  return result;
}

unint64_t sub_1008B1264()
{
  result = qword_1011A82C0;
  if (!qword_1011A82C0)
  {
    sub_1001109D0(&qword_1011A82B8);
    sub_100020674(&qword_1011A82C8, &qword_1011A82D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82C0);
  }

  return result;
}

unint64_t sub_1008B131C()
{
  result = qword_1011A82D8;
  if (!qword_1011A82D8)
  {
    sub_1001109D0(&qword_1011A8278);
    sub_1008B13A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82D8);
  }

  return result;
}

unint64_t sub_1008B13A8()
{
  result = qword_1011A82E0;
  if (!qword_1011A82E0)
  {
    sub_1001109D0(&qword_1011A82E8);
    sub_1008B114C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82E0);
  }

  return result;
}

unint64_t sub_1008B142C()
{
  result = qword_1011A8300;
  if (!qword_1011A8300)
  {
    sub_1001109D0(&qword_1011A8270);
    sub_100020674(&qword_1011A82F0, &qword_1011A8240);
    sub_100020674(&qword_1011A82F8, &qword_1011A8230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8300);
  }

  return result;
}

uint64_t sub_1008B1510@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011A8288);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000089F8(v2, &v14 - v9, &qword_1011A8288);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
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

uint64_t sub_1008B1748@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = Image.init(uiImage:)();
  *a1 = result;
  return result;
}

uint64_t sub_1008B1778(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_1008B17CC(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenuView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1008B18A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

unint64_t sub_1008B18CC()
{
  result = qword_1011A8330;
  if (!qword_1011A8330)
  {
    sub_1001109D0(&qword_1011A8338);
    sub_1008B142C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8330);
  }

  return result;
}

unint64_t sub_1008B1994()
{
  result = qword_1011A8368;
  if (!qword_1011A8368)
  {
    sub_1001109D0(&qword_1011A8358);
    sub_100020674(&qword_1011A8370, &qword_1011A8378);
    sub_1008B1A7C(&qword_1011A8380, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8368);
  }

  return result;
}

uint64_t sub_1008B1A7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1008B1AC4()
{
  result = qword_1011A8388;
  if (!qword_1011A8388)
  {
    sub_1001109D0(&qword_1011A8360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8388);
  }

  return result;
}

uint64_t sub_1008B1B40(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1008B1B8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1008B0624(a1, v4, v5, v1 + 32);
}

UIMenu_optional __swiftcall ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v4 = ActionMenuBuilder.menu(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v6 = v5;
  preferredElementSize = _swiftEmptyArrayStorage;
  v8 = ActionMenu.elements(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);

  v9 = *(v8 + 16);
  if (v9)
  {
    v36 = v6;
    v38 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = 32;
    v11 = v9;
    do
    {
      v12 = *(v8 + v10);
      v13 = *(v8 + v10 + 16);
      v14 = *(v8 + v10 + 32);
      v40 = *(v8 + v10 + 48);
      v39[1] = v13;
      v39[2] = v14;
      v39[0] = v12;
      sub_1008B2DC0(v39, &title._object);
      v15._rawValue = excluding._rawValue;
      sub_1008B1FD4(v4, v9, v15, includeUnsupported);
      sub_1008B2E1C(v39);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 56;
      --v11;
    }

    while (v11);

    v16 = v38;
    v6 = v36;
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v17 = 0;
  title._object = _swiftEmptyArrayStorage;
  v18 = v16[2];
  while (v18 != v17)
  {
    if (v17 >= v16[2])
    {
      __break(1u);
LABEL_28:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_29;
      }

LABEL_15:
      v22 = *(v4 + 32);
      title._countAndFlagsBits = MenuType.title.getter(*(v4 + 32));
      v24 = v23;
      v25 = MenuType.image.getter(v22);
      v26 = (MenuType.style.getter(v22) & 1) == 0;
      if (v17)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (MenuType.rawValue.getter(v22) == 0x7463416B63697571 && v28 == 0xEB000000006E6F69)
      {

        if (v27 <= 1)
        {
          goto LABEL_25;
        }

LABEL_24:
        v30 = 1;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) != 0 && v27 >= 2)
        {
          goto LABEL_24;
        }

LABEL_25:
        v30 = 2;
      }

      sub_100009F78(0, &qword_1011A7DA8);
      v31._countAndFlagsBits = title._countAndFlagsBits;
      v31._object = v24;
      v42.value.super.isa = v25;
      v42.is_nil = 0;
      v32.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v42, v26, v30, preferredElementSize, v35).super.super.isa;

      goto LABEL_30;
    }

    v19 = v16[v17++ + 4];
    if (v19)
    {
      v20 = v19;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((title._object & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((title._object & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      preferredElementSize = title._object;
    }
  }

  v6(v21);
  v17 = preferredElementSize >> 62;
  if (preferredElementSize >> 62)
  {
    goto LABEL_28;
  }

  if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v32.super.super.isa = 0;
LABEL_30:
  isa = v32.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v33;
  return result;
}

id sub_1008B1FD4(uint64_t a1, uint64_t a2, Swift::OpaquePointer excluding, char a4)
{
  v6 = *v4;
  if (*v4 < 0)
  {
    v14 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = ActionMenu.uiMenu(excluding:includeUnsupported:)(excluding, a4 & 1);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      _StringGuts.grow(_:)(20);

      v85 = 0xD000000000000012;
      v86 = 0x8000000100E5A9C0;
      String.append(_:)(v14[1]);
      if (qword_1011A6B58 != -1)
      {
        swift_once();
      }

      v85 = qword_1011AFC00;
      v86 = *algn_1011AFC08;

      v18._countAndFlagsBits = 46;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 0xD000000000000012;
      v19._object = 0x8000000100E5A9C0;
      String.append(_:)(v19);

      v20 = String._bridgeToObjectiveC()();

      [v17 setAccessibilityIdentifier:v20];
    }

    return v16;
  }

  v81 = v4[5];
  v82 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v79 = v4[1];
  v80 = v4[2];
  v79(&v85, a1, a2, excluding._rawValue);
  v12 = MenuType.rawValue.getter(*(a1 + 32)) == 0x7463416B63697571 && v11 == 0xEB000000006E6F69;
  v83 = v6;
  if (v12)
  {

    if (a4)
    {
LABEL_16:
      v23 = 0;
LABEL_17:
      v24 = v87;
      v25 = v88;
      sub_10000954C(&v85, v87);
      v26 = (*(v25 + 32))(v24, v25);
      v28 = v27;
      goto LABEL_18;
    }
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13 & 1) == 0 || (a4)
    {
      goto LABEL_16;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_16;
  }

  v21 = [objc_opt_self() currentTraitCollection];
  v22 = [v21 preferredContentSizeCategory];

  LOBYTE(v21) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v21)
  {
    goto LABEL_16;
  }

  v39 = v87;
  v40 = v88;
  sub_10000954C(&v85, v87);
  v41 = (*(v40 + 40))(v39, v40);
  if (!v41)
  {
    v23 = 1;
    goto LABEL_17;
  }

  v26 = v41;
  v28 = v42;
  v23 = 1;
LABEL_18:
  v29 = v10();
  if (v30 == 1)
  {
    v31 = 0;
  }

  else
  {
    sub_10089840C(v29, v30);
    v31 = 1;
  }

  v32 = v87;
  v33 = v88;
  sub_10000954C(&v85, v87);
  v34 = (*(v33 + 48))(v32, v33);
  v35 = v31 | 2;
  if ((v34 & 1) == 0)
  {
    v35 = v31;
  }

  v78 = v35;
  if (a2 <= 2)
  {
    v23 = 0;
  }

  v36 = v87;
  v37 = v88;
  sub_10000954C(&v85, v87);
  if (v23 != 1)
  {
    goto LABEL_31;
  }

  (*(v37 + 16))(v36, v37);
  if (!v38)
  {
    v36 = v87;
    v37 = v88;
    sub_10000954C(&v85, v87);
LABEL_31:
    (*(v37 + 8))(v36, v37);
  }

  v43 = v10;
  v44 = v87;
  v45 = v88;
  sub_10000954C(&v85, v87);
  (*(v45 + 24))(v44, v45);
  v46 = v9;
  if (v26)
  {

    v28(v47);
  }

  sub_100009F78(0, &qword_1011A7D90);
  v48 = v87;
  v49 = v88;
  sub_10000954C(&v85, v87);
  v50 = (*(v49 + 56))(v48, v49);
  v51 = swift_allocObject();
  v51[2] = v83;
  v51[3] = v79;
  v51[4] = v80;
  v51[5] = v43;
  v51[6] = v46;
  v51[7] = v81;
  v51[8] = v82;

  v77 = v51;
  v76 = v50;
  v52 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v53 = v87;
  v54 = v88;
  sub_10000954C(&v85, v87);
  v55 = *(v54 + 8);
  v16 = v52;
  v55(v53, v54);
  v84[0] = v56;
  v57 = v87;
  v58 = v88;
  sub_10000954C(&v85, v87);
  v59 = (*(v58 + 24))(v57, v58);
  v60 = 0;
  v84[1] = v59;
  v84[2] = v61;
  v62 = _swiftEmptyArrayStorage;
LABEL_35:
  v63 = &v84[2 * v60];
  while (++v60 != 3)
  {
    v64 = v63 + 2;
    v65 = *v63;
    v63 += 2;
    if (v65)
    {
      v66 = *(v64 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_10089C4F8(0, *(v62 + 2) + 1, 1, v62);
      }

      v68 = *(v62 + 2);
      v67 = *(v62 + 3);
      if (v68 >= v67 >> 1)
      {
        v62 = sub_10089C4F8((v67 > 1), v68 + 1, 1, v62);
      }

      *(v62 + 2) = v68 + 1;
      v69 = &v62[16 * v68];
      *(v69 + 4) = v66;
      *(v69 + 5) = v65;
      goto LABEL_35;
    }
  }

  sub_10010FC20(&unk_1011ACB70);
  swift_arrayDestroy();
  sub_10010FC20(&unk_1011A9FA0);
  sub_1008B2E78();
  BidirectionalCollection<>.joined(separator:)();

  v70 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityLabel:{v70, 0, v78, v76, sub_1008B2E70, v77}];

  _StringGuts.grow(_:)(20);

  v71._countAndFlagsBits = ActionType.rawValue.getter(v83);
  String.append(_:)(v71);

  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v72._countAndFlagsBits = 46;
  v72._object = 0xE100000000000000;
  String.append(_:)(v72);

  v73._countAndFlagsBits = 0xD000000000000012;
  v73._object = 0x8000000100E5A9C0;
  String.append(_:)(v73);

  v74 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityIdentifier:v74];
  sub_1008B1B40(v26);

  sub_10000959C(&v85);
  return v16;
}

UIMenu_optional __swiftcall ActionMenu.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v3 = v2;
  v7 = ActionMenu.elements(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v8 = v6;
  v9 = *(v7 + 16);
  preferredElementSize = _swiftEmptyArrayStorage;
  if (v9)
  {
    v40 = v6;
    v43 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = 32;
    v12 = v9;
    do
    {
      v13 = *(v7 + v11);
      v14 = *(v7 + v11 + 16);
      v15 = *(v7 + v11 + 32);
      v45 = *(v7 + v11 + 48);
      v44[1] = v14;
      v44[2] = v15;
      v44[0] = v13;
      sub_1008B2DC0(v44, v42);
      v16._rawValue = excluding._rawValue;
      sub_1008B1FD4(v2, v9, v16);
      sub_1008B2E1C(v44);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += 56;
      --v12;
    }

    while (v12);

    v17 = v43;
    v8 = v40;
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v42[0] = _swiftEmptyArrayStorage;
  v19 = v17[2];
  while (v19 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_28:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_29;
      }

LABEL_15:
      v23 = *(v2 + 32);
      v24 = MenuType.title.getter(*(v2 + 32));
      v26 = v25;
      v28 = *(v3 + 40);
      v27 = *(v3 + 48);

      v29 = MenuType.image.getter(v23);
      v30 = (MenuType.style.getter(v23) & 1) == 0;
      if (!includeUnsupported)
      {
        if (v18)
        {
          v41 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v41 = *((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (MenuType.rawValue.getter(v23) == 0x7463416B63697571 && v31 == 0xEB000000006E6F69)
        {

          goto LABEL_23;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
LABEL_23:
          if (v41 > 1)
          {
            v33 = 1;
LABEL_26:
            sub_100009F78(0, &qword_1011A7DA8);
            v34._countAndFlagsBits = v24;
            v34._object = v26;
            v35.value._countAndFlagsBits = v28;
            v35.value._object = v27;
            v47.value.super.isa = v29;
            v47.is_nil = 0;
            v36.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, v35, v47, v30, v33, preferredElementSize, v39).super.super.isa;

            goto LABEL_30;
          }
        }
      }

      v33 = 2;
      goto LABEL_26;
    }

    v20 = v17[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      preferredElementSize = v42[0];
    }
  }

  v8(v22);
  v18 = preferredElementSize >> 62;
  if (preferredElementSize >> 62)
  {
    goto LABEL_28;
  }

  if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v36.super.super.isa = 0;
LABEL_30:
  isa = v36.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v37;
  return result;
}

uint64_t sub_1008B2B58(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 80) = *(a2 + 48);
  sub_100A5932C(0, 0, v5, &unk_100EED468, v8);
}

uint64_t sub_1008B2CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1003EF7D4;

  return v8();
}

unint64_t sub_1008B2E78()
{
  result = qword_1011AAA30;
  if (!qword_1011AAA30)
  {
    sub_1001109D0(&unk_1011A9FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAA30);
  }

  return result;
}

uint64_t sub_1008B2EDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1008B2CB8(a1, v4, v5, v1 + 32);
}

uint64_t static ActionMenu.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v144 = type metadata accessor for UUID();
  v6 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = 0;
  v147 = 0xE000000000000000;
  v8._countAndFlagsBits = 8254;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = v2[1];
  v148[0] = *v2;
  v148[1] = v9;
  v148[2] = v2[2];
  _print_unlocked<A, B>(_:_:)();
  v10 = v146;
  v11 = v147;
  v12 = sub_10089C4F8(0, 1, 1, _swiftEmptyArrayStorage);
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v16 = swift_allocObject();
    *(v12 + 16) = v15;
    v17 = v12 + 16 * v14;
    *(v17 + 32) = v10;
    *(v17 + 40) = v11;
    v16[2] = v12;
    v18 = (v16 + 2);
    v19 = (*(v3 + 32))();

    v20 = sub_1008BC4F0(v19, v16 + 2, a1, a2 & 1);

    if (!*(v20 + 16))
    {
      if (!*(*v18 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_1008BCD0C(1uLL, 1, 0xD00000000000001CLL, 0x8000000100E5A9E0);
    }

    v125 = v16;
    *&v148[0] = v20;
    v124 = v20;

    sub_1008BC144(v148);
    v123[1] = 0;
    v14 = 0x654D6E6F69746341;
    v128 = *&v148[0];
    sub_10010FC20(&qword_1011A83C8);
    inited = swift_initStackObject();
    v138 = xmmword_100EBC6B0;
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0;
    v11 = inited + 32;
    v22 = *(v3 + 16);
    v16 = *(v3 + 24);

    v10 = v143;
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v24 = v23;
    v25 = v6[1];
    v142 = v6 + 1;
    v140 = v25;
    v25(v10, v144);
    v139 = type metadata accessor for ActionMenu();
    v26 = swift_allocObject();
    *(v26 + 88) = 0;
    *(v26 + 96) = 0;
    *(v26 + 16) = v15;
    *(v26 + 24) = v24;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    strcpy(v148, "ActionMenu: ");
    BYTE13(v148[0]) = 0;
    HIWORD(v148[0]) = -5120;

    v12 = v148;
    v141 = v22;
    v27._countAndFlagsBits = v22;
    v27._object = v16;
    String.append(_:)(v27);

    v28 = *(&v148[0] + 1);
    *(v26 + 56) = *&v148[0];
    *(v26 + 64) = v28;
    *(v26 + 80) = _swiftEmptyArrayStorage;
    *(v26 + 72) = 1;
    *(inited + 40) = v26;
    v6 = sub_1008BCDE8(inited);
    swift_setDeallocating();
    a1 = v128;
    sub_1008BCEDC(inited + 32);
    v127 = *(a1 + 16);
    if (!v127)
    {
      break;
    }

    v3 = 0;
    v126 = a1 + 32;
    a2 = 56;
    while (1)
    {
      v13 = *(a1 + 16);
      if (v3 >= v13)
      {
        break;
      }

      v29 = (v126 + 56 * v3);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v11 = v29[3];
      v10 = v29[4];
      v33 = v29[5];
      v14 = v29[6];
      if (*v29 < 0)
      {
        v34 = *((v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        if ((v34 - 1) >= 0xA)
        {
          if (!*((v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
          {
            goto LABEL_9;
          }

          if (v34 == 11)
          {
            v12 = 4;
          }

          else
          {
            v12 = 6;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = byte_100EED90A[v30];
      }

      v15 = v6[2];
      v135 = v30;
      v136 = v31;
      v137 = v32;
      v35 = v33;
      sub_1008B1778(v30);
      v36 = v35;
      v134 = v14;
      if (!v15 || (v15 = v12, v37 = sub_1008B636C(v12), v36 = v35, (v38 & 1) == 0))
      {
        v131 = v3;
        v133 = v10;
        v132 = v12;
        if ((v12 - 1) >= 0xA)
        {
          if (v12)
          {
            v44 = v36;
            v45 = v11;
            v47 = 0;
            if (v12 == 11)
            {
              v46 = 4;
            }

            else
            {
              v46 = 6;
            }

            goto LABEL_24;
          }

          sub_1008BCF44(v135);
          goto LABEL_8;
        }

        v44 = v36;
        v45 = v11;
        v46 = 0;
        v47 = 1;
LABEL_24:
        v48 = sub_10010FC20(&unk_1011A7E80);
        v49 = swift_allocObject();
        *(v49 + 16) = v138;
        v50 = v136;
        *(v49 + 32) = v135;
        *(v49 + 40) = v50;
        *(v49 + 48) = v137;
        *(v49 + 56) = v45;
        *(v49 + 64) = v133;
        *(v49 + 72) = v44;
        v51 = v134;
        *(v49 + 80) = v134;

        v129 = v45;
        v14 = v51;
        v130 = v44;
        sub_1008B1778(v135);
        v52 = v143;
        UUID.init()();
        v53 = UUID.uuidString.getter();
        v55 = v54;
        v140(v52, v144);
        v56 = swift_allocObject();
        *(v56 + 88) = 0;
        *(v56 + 96) = 0;
        *(v56 + 16) = v53;
        *(v56 + 24) = v55;
        v57 = v132;
        *(v56 + 32) = v132;
        *(v56 + 40) = 0;
        *(v56 + 48) = 0;
        strcpy(v148, "ActionMenu: ");
        BYTE13(v148[0]) = 0;
        HIWORD(v148[0]) = -5120;
        v58._countAndFlagsBits = v141;
        v58._object = v16;
        String.append(_:)(v58);

        v59 = *(&v148[0] + 1);
        *(v56 + 56) = *&v148[0];
        *(v56 + 64) = v59;
        *(v56 + 80) = v49;
        *(v56 + 72) = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v148[0] = v6;
        sub_1008B9628(v56, v57, isUniquelyReferenced_nonNull_native);
        v6 = *&v148[0];
        if (*(*&v148[0] + 16))
        {
          v61 = sub_1008B636C(v46);
          if (v62)
          {
LABEL_40:
            v12 = *(v6[7] + 8 * v61);

            swift_beginAccess();
            v15 = *(v12 + 80);
            v83 = swift_isUniquelyReferenced_nonNull_native();
            *(v12 + 80) = v15;
            a1 = v128;
            v11 = v129;
            if ((v83 & 1) == 0)
            {
              v15 = sub_10089C604(0, *(v15 + 16) + 1, 1, v15);
              *(v12 + 80) = v15;
            }

            v10 = *(v15 + 16);
            v84 = *(v15 + 24);
            if (v10 >= v84 >> 1)
            {
              v15 = sub_10089C604((v84 > 1), v10 + 1, 1, v15);
            }

            *(v15 + 16) = v10 + 1;
            a2 = 56;
            v85 = v15 + 56 * v10;
            *(v85 + 32) = v56 | 0x8000000000000000;
            *(v85 + 40) = 0u;
            *(v85 + 56) = 0u;
            *(v85 + 72) = 0u;
            *(v12 + 80) = v15;
            swift_endAccess();

            sub_1008BCF44(v135);

            v3 = v131;
            goto LABEL_9;
          }
        }

        while (2)
        {
          while (2)
          {
            v63 = swift_allocObject();
            *(v63 + 16) = v138;
            *(v63 + 32) = v56 | 0x8000000000000000;
            *(v63 + 40) = 0u;
            *(v63 + 56) = 0u;
            *(v63 + 72) = 0u;

            v64 = v143;
            UUID.init()();
            v65 = UUID.uuidString.getter();
            v67 = v66;
            v140(v64, v144);
            v56 = swift_allocObject();
            *(v56 + 88) = 0;
            *(v56 + 96) = 0;
            *(v56 + 16) = v65;
            *(v56 + 24) = v67;
            *(v56 + 32) = v46;
            *(v56 + 40) = 0;
            *(v56 + 48) = 0;
            strcpy(v148, "ActionMenu: ");
            BYTE13(v148[0]) = 0;
            HIWORD(v148[0]) = -5120;
            v68._countAndFlagsBits = v141;
            v68._object = v16;
            String.append(_:)(v68);

            v69 = *(&v148[0] + 1);
            *(v56 + 56) = *&v148[0];
            *(v56 + 64) = v69;
            *(v56 + 80) = v63;
            *(v56 + 72) = 1;

            v70 = swift_isUniquelyReferenced_nonNull_native();
            *&v148[0] = v6;
            v71 = sub_1008B636C(v46);
            v73 = v6[2];
            v74 = (v72 & 1) == 0;
            v75 = __OFADD__(v73, v74);
            v76 = v73 + v74;
            if (v75)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              if (v6[2])
              {
                v92 = sub_1008B636C(0);
                if (v93)
                {
                  v11 = *(v6[7] + 8 * v92);
                  v94 = *(v48 + 80);

                  v95 = v143;
                  UUID.init()();
                  v96 = UUID.uuidString.getter();
                  v98 = v97;
                  v140(v95, v144);
                  v99 = swift_allocObject();
                  *(v99 + 88) = 0;
                  *(v99 + 96) = 0;
                  *(v99 + 16) = v96;
                  *(v99 + 24) = v98;
                  *(v99 + 32) = 6;
                  *(v99 + 40) = 0;
                  *(v99 + 48) = 0;
                  strcpy(v148, "ActionMenu: ");
                  BYTE13(v148[0]) = 0;
                  HIWORD(v148[0]) = -5120;

                  v100._countAndFlagsBits = v141;
                  v100._object = v16;
                  String.append(_:)(v100);

                  v101 = *(&v148[0] + 1);
                  *(v99 + 56) = *&v148[0];
                  *(v99 + 64) = v101;
                  *(v99 + 80) = v94;
                  *(v99 + 72) = 1;
                  v20 = v99 | 0x8000000000000000;
                  swift_beginAccess();
                  v18 = *(v11 + 80);
                  v102 = swift_isUniquelyReferenced_nonNull_native();
                  *(v11 + 80) = v18;
                  if (v102)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_101;
                }

                goto LABEL_68;
              }

              goto LABEL_93;
            }

            v77 = v72;
            if (v6[3] < v76)
            {
              sub_1008B6DCC(v76, v70);
              v71 = sub_1008B636C(v46);
              if ((v77 & 1) != (v78 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);

                __break(1u);
                return result;
              }

              goto LABEL_31;
            }

            if (v70)
            {
LABEL_31:
              v6 = *&v148[0];
              if (v77)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v79 = v71;
              sub_1008BA72C();
              v71 = v79;
              v6 = *&v148[0];
              if (v77)
              {
LABEL_32:
                *(v6[7] + 8 * v71) = v56;

                if (v47)
                {
                  continue;
                }

LABEL_37:
                if (v6[2])
                {
                  v61 = sub_1008B636C(0);
                  if (v82)
                  {
                    v14 = v134;
                    goto LABEL_40;
                  }
                }

                continue;
              }
            }

            break;
          }

          v6[(v71 >> 6) + 8] |= 1 << v71;
          *(v6[6] + v71) = v46;
          *(v6[7] + 8 * v71) = v56;
          v80 = v6[2];
          v75 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v75)
          {
            goto LABEL_60;
          }

          v6[2] = v81;
          if ((v47 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v14 = v11;
      v12 = *(v6[7] + 8 * v37);
      swift_beginAccess();
      v15 = *(v12 + 80);

      v39 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 80) = v15;
      v11 = v10;
      if ((v39 & 1) == 0)
      {
        v15 = sub_10089C604(0, *(v15 + 16) + 1, 1, v15);
        *(v12 + 80) = v15;
      }

      v10 = *(v15 + 16);
      v40 = *(v15 + 24);
      v41 = v137;
      v42 = v136;
      if (v10 >= v40 >> 1)
      {
        v86 = sub_10089C604((v40 > 1), v10 + 1, 1, v15);
        v42 = v136;
        v41 = v137;
        v15 = v86;
      }

      *(v15 + 16) = v10 + 1;
      a2 = 56;
      v43 = (v15 + 56 * v10);
      v43[4] = v135;
      v43[5] = v42;
      v43[6] = v41;
      v43[7] = v14;
      v43[8] = v11;
      v43[9] = v35;
      v43[10] = v134;
      *(v12 + 80) = v15;
      swift_endAccess();

LABEL_8:
      a1 = v128;
LABEL_9:
      if (++v3 == v127)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    v12 = sub_10089C4F8((v13 > 1), v15, 1, v12);
  }

LABEL_53:

  if (!v6[2])
  {
    goto LABEL_97;
  }

  v87 = sub_1008B636C(12);
  if (v88)
  {
    v48 = *(v6[7] + 8 * v87);
    swift_beginAccess();
    if (*(*(v48 + 80) + 16) <= 2uLL)
    {
      v89 = v6[2];

      if (v89)
      {
        sub_1008B636C(6);
        if ((v90 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        sub_1008A6144(v91);
        swift_endAccess();
        while (1)
        {

LABEL_68:
          if (!v6[2])
          {
            break;
          }

          v106 = sub_1008B636C(6);
          if ((v107 & 1) == 0)
          {
            break;
          }

          v18 = *(v6[7] + 8 * v106);
          swift_beginAccess();
          v108 = *(v18 + 10);
          v20 = *(v108 + 16);
          if (!v20)
          {
            break;
          }

          v11 = 0;
          v109 = 32;
          while (v11 < *(v108 + 16))
          {
            v111 = *(v108 + v109);
            if (v111 < 0)
            {
              v18 = 0xE800000000000000;
              switch(*((v111 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
              {
                case 1:
                  v18 = 0xEB000000006E6F69;
                  goto LABEL_73;
                case 2:
                  v18 = 0xE300000000000000;
                  goto LABEL_73;
                case 3:
                  v18 = 0xE700000000000000;
                  goto LABEL_73;
                case 6:
                  v18 = 0xEA00000000006E6FLL;
                  goto LABEL_73;
                case 7:
                  v18 = 0xE500000000000000;
                  goto LABEL_73;
                case 8:
                  v18 = 0xE900000000000067;
                  goto LABEL_73;
                case 9:
                  v18 = 0xE90000000000006ELL;
                  goto LABEL_73;
                case 0xA:
                  v18 = 0xEB00000000657669;
                  goto LABEL_73;
                case 0xB:
                  v18 = 0xEC00000074726F53;
                  goto LABEL_73;
                case 0xC:

                  goto LABEL_90;
                default:
LABEL_73:
                  v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v110 & 1) == 0)
                  {
                    goto LABEL_74;
                  }

LABEL_90:

                  if (v6[2])
                  {
                    sub_1008B636C(6);
                    if (v112)
                    {
                      swift_beginAccess();

                      sub_1008B49E0(v11, v148);
                      swift_endAccess();
                      sub_1008B2E1C(v148);
                    }
                  }

                  break;
              }

              goto LABEL_93;
            }

LABEL_74:
            ++v11;
            v109 += 56;
            if (v20 == v11)
            {

              goto LABEL_94;
            }
          }

LABEL_100:
          __break(1u);
LABEL_101:
          v18 = sub_10089C604(0, *(v18 + 2) + 1, 1, v18);
          *(v11 + 80) = v18;
LABEL_64:
          v104 = *(v18 + 2);
          v103 = *(v18 + 3);
          if (v104 >= v103 >> 1)
          {
            v18 = sub_10089C604((v103 > 1), v104 + 1, 1, v18);
          }

          *(v18 + 2) = v104 + 1;
          v105 = &v18[56 * v104];
          *(v105 + 4) = v20;
          *(v105 + 40) = 0u;
          *(v105 + 56) = 0u;
          *(v105 + 72) = 0u;
          *(v11 + 80) = v18;
          swift_endAccess();
        }
      }

LABEL_93:
    }
  }

LABEL_94:
  if (v6[2] && (v113 = sub_1008B636C(0), (v114 & 1) != 0))
  {
    v115 = *(v6[7] + 8 * v113);
  }

  else
  {
LABEL_97:
    v116 = v143;
    UUID.init()();
    v117 = UUID.uuidString.getter();
    v119 = v118;
    v140(v116, v144);
    v115 = swift_allocObject();
    *(v115 + 88) = 0;
    *(v115 + 96) = 0;
    *(v115 + 16) = v117;
    *(v115 + 24) = v119;
    *(v115 + 32) = 0;
    *(v115 + 40) = 0;
    *(v115 + 48) = 0;
    strcpy(v145, "ActionMenu: ");
    BYTE5(v145[1]) = 0;
    HIWORD(v145[1]) = -5120;
    v120._countAndFlagsBits = v141;
    v120._object = v16;
    String.append(_:)(v120);

    v121 = v145[1];
    *(v115 + 56) = v145[0];
    *(v115 + 64) = v121;
    *(v115 + 80) = v124;
    *(v115 + 72) = 1;
  }

  return v115;
}

uint64_t ActionMenuBuilder.init(id:debugDescription:actionBuilder:)@<X0>(Swift::String a1@<0:X2, 8:X3>, uint64_t a2@<X0>, void *a3@<X1>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a1._object)
  {
    object = a1._object;
  }

  else
  {

    a1._countAndFlagsBits = a2;
    object = a3;
  }

  v12._countAndFlagsBits = a1._countAndFlagsBits;
  v12._object = object;
  String.append(_:)(v12);

  v14 = v16[0];
  v15 = v16[1];
  *a6 = a2;
  a6[1] = a3;
  a6[2] = v14;
  a6[3] = v15;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

double sub_1008B4248@<D0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  v57 = a1[5];
  if (((1 << v6) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v56 = a1[1];
    v40 = a3;
    if (((1 << v6) & 0x700000000180) != 0)
    {
      v41 = sub_100898654();
      v42 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v41);
    }

    else
    {
      v48 = sub_100898600();
      v42 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v48);
    }

    a3 = v40;
    v7 = v56;
    if ((v42 & 1) == 0)
    {
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_40;
      }

      _StringGuts.grow(_:)(29);

      v49._countAndFlagsBits = ActionType.rawValue.getter(v6);
      String.append(_:)(v49);

      v50._object = 0x8000000100E5AAC0;
      v50._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v50);
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 < v18 >> 1)
      {
        goto LABEL_39;
      }

LABEL_6:
      v16 = sub_10089C4F8((v18 > 1), v19 + 1, 1, v16);
      *a2 = v16;
      goto LABEL_39;
    }
  }

  if (!sub_1009F9398(v6, a3))
  {
    v54 = a2;
    v55 = v7;
    v53 = v8;
    v21 = v9();
    if (v22 == 1)
    {
      v23._countAndFlagsBits = ActionType.rawValue.getter(v6);
      String.append(_:)(v23);

      v24 = *a2;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_10089C4F8(0, *(v24 + 2) + 1, 1, v24);
        *a2 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_10089C4F8((v26 > 1), v27 + 1, 1, v24);
        *a2 = v24;
      }

      *(v24 + 2) = v27 + 1;
      v28 = &v24[16 * v27];
      *(v28 + 4) = 0x20939CE22020;
      *(v28 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v55;
      a5[2] = v53;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v57;
      a5[6] = v11;
    }

    else
    {
      v29 = v21;
      v30 = v22;
      if ((a4 & 1) == 0)
      {
        v43._countAndFlagsBits = ActionType.rawValue.getter(v6);
        String.append(_:)(v43);

        v44._countAndFlagsBits = 2108704;
        v44._object = 0xE300000000000000;
        String.append(_:)(v44);
        if (!v30)
        {
          sub_10089840C(v29, 0);
          v30 = 0xE700000000000000;
          v29 = 0x6E776F6E6B6E75;
        }

        v45._countAndFlagsBits = v29;
        v45._object = v30;
        String.append(_:)(v45);

        v16 = *v54;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *v54 = v16;
        if ((v46 & 1) == 0)
        {
          v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
          *v54 = v16;
        }

        v19 = *(v16 + 2);
        v47 = *(v16 + 3);
        v20 = v19 + 1;
        if (v19 >= v47 >> 1)
        {
          v16 = sub_10089C4F8((v47 > 1), v19 + 1, 1, v16);
          *v54 = v16;
        }

        goto LABEL_39;
      }

      _StringGuts.grow(_:)(44);

      v31._countAndFlagsBits = ActionType.rawValue.getter(v6);
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0xD000000000000022;
      v32._object = 0x8000000100E5AA90;
      String.append(_:)(v32);
      if (!v30)
      {
        sub_10089840C(v29, 0);
        v30 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E75;
      }

      v33._countAndFlagsBits = v29;
      v33._object = v30;
      String.append(_:)(v33);

      v34 = *v54;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      *v54 = v34;
      if ((v35 & 1) == 0)
      {
        v34 = sub_10089C4F8(0, *(v34 + 2) + 1, 1, v34);
        *v54 = v34;
      }

      v37 = *(v34 + 2);
      v36 = *(v34 + 3);
      if (v37 >= v36 >> 1)
      {
        v34 = sub_10089C4F8((v36 > 1), v37 + 1, 1, v34);
        *v54 = v34;
      }

      *(v34 + 2) = v37 + 1;
      v38 = &v34[16 * v37];
      *(v38 + 4) = 0x20939CE22020;
      *(v38 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v55;
      a5[2] = v8;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v57;
      a5[6] = v11;
    }

    return result;
  }

  _StringGuts.grow(_:)(17);

  v14._countAndFlagsBits = ActionType.rawValue.getter(v6);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x756C637865202D20;
  v15._object = 0xEB00000000646564;
  String.append(_:)(v15);
  v16 = *a2;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
    *a2 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    goto LABEL_6;
  }

LABEL_39:
  *(v16 + 2) = v20;
  v52 = &v16[16 * v19];
  *(v52 + 4) = 544743456;
  *(v52 + 5) = 0xE400000000000000;
LABEL_40:
  *a5 = 0xF000000000000000;
  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 3) = 0u;
  *(a5 + 5) = 0u;
  return result;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v21, "ActionMenu: ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v18._countAndFlagsBits = a6;
  v18._object = a2;
  String.append(_:)(v18);

  v19 = v21[1];
  *(v17 + 56) = v21[0];
  *(v17 + 64) = v19;
  *(v17 + 80) = a8;
  *(v17 + 72) = a9 & 1;
  return v17;
}

uint64_t sub_1008B49E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1008BC0A4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 48);
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_1008B4A9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1008BC0E0(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1008B4B28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1008BC0F4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1008BDE58(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, Swift::String a6, uint64_t a7, char a8)
{
  v9 = v8;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a6._object)
  {
    object = a6._object;
  }

  else
  {
    object = a2;

    a6._countAndFlagsBits = a1;
  }

  v13._countAndFlagsBits = a6._countAndFlagsBits;
  v13._object = object;
  String.append(_:)(v13);

  v14 = v16[1];
  *(v9 + 56) = v16[0];
  *(v9 + 64) = v14;
  *(v9 + 80) = a7;
  *(v9 + 72) = a8 & 1;
  return v9;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v22, "ActionMenu: ");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v18._countAndFlagsBits = a6;
  v18._object = a2;
  String.append(_:)(v18);

  v19 = v22[1];
  *(v17 + 56) = v22[0];
  *(v17 + 64) = v19;
  *(v17 + 72) = a8 & 1;
  *(v17 + 96) = a10;
  *(v17 + 80) = _swiftEmptyArrayStorage;
  *(v17 + 88) = a9;
  return v17;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, Swift::String a6, char a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  strcpy(v18, "ActionMenu: ");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  if (a6._object)
  {
    object = a6._object;
  }

  else
  {
    object = a2;

    a6._countAndFlagsBits = a1;
  }

  v14._countAndFlagsBits = a6._countAndFlagsBits;
  v14._object = object;
  String.append(_:)(v14);

  v15 = v18[1];
  *(v10 + 56) = v18[0];
  *(v10 + 64) = v15;
  *(v10 + 72) = a7 & 1;
  v16 = *(v10 + 88);
  *(v10 + 88) = a8;
  *(v10 + 96) = a9;

  sub_100020438(v16);

  *(v10 + 80) = _swiftEmptyArrayStorage;
  return v10;
}

uint64_t MetricsEvent.Dialog.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ActionMenu.elements(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v51 = 0;
  v52 = 0xE000000000000000;
  v4._countAndFlagsBits = 8254;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v60 = v2;
  type metadata accessor for ActionMenu();
  _print_unlocked<A, B>(_:_:)();
  v5 = 0;
  v6 = 0xE000000000000000;
  v7 = sub_10089C4F8(0, 1, 1, _swiftEmptyArrayStorage);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = (v9 + 1);
  if (v9 >= v8 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v11 = swift_allocObject();
    *(v7 + 2) = v10;
    v12 = &v7[16 * v9];
    *(v12 + 4) = v5;
    *(v12 + 5) = v6;
    *(v11 + 16) = v7;
    v47 = (v11 + 16);
    v13 = *(v3 + 88);
    if (v13)
    {

      v15 = v13(v14);
      sub_100020438(v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    v43 = v3;
    v51 = v15;

    sub_1008A6144(v16);
    v9 = v51;
    v59 = &_swiftEmptySetSingleton;
    v17 = *(v51 + 2);

    v46 = v17;
    if (!v17)
    {
      break;
    }

    v18 = 0;
    v5 = 0;
    v7 = (v9 + 40);
    v10 = _swiftEmptyArrayStorage;
    v45 = v9;
    while (1)
    {
      v8 = *(v9 + 16);
      if (v18 >= v8)
      {
        break;
      }

      v50 = v18;
      v20 = *(v7 - 1);
      v19 = *v7;
      v6 = *(v7 + 1);
      v3 = *(v7 + 2);
      v21 = *(v7 + 3);
      v22 = *(v7 + 4);
      v23 = *(v7 + 5);
      v51 = v20;
      v52 = v19;
      v53 = v6;
      v54 = v3;
      v55 = v21;
      v56 = v22;
      v57 = v23;
      sub_1008B1778(v20);
      if (sub_1008B531C(&v51, v47, a1, a2 & 1, &v59))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v10;
        v44 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100899F00(0, *(v10 + 2) + 1, 1);
          v10 = v58;
        }

        v25 = v6;
        v26 = v19;
        v27 = v3;
        v28 = v21;
        v29 = v22;
        v30 = v23;
        v31 = v20;
        v33 = *(v10 + 2);
        v32 = *(v10 + 3);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          sub_100899F00((v32 > 1), v33 + 1, 1);
          v34 = v33 + 1;
          v31 = v20;
          v30 = v23;
          v29 = v22;
          v28 = v21;
          v27 = v3;
          v26 = v19;
          v25 = v6;
          v10 = v58;
        }

        *(v10 + 2) = v34;
        v35 = &v10[56 * v33];
        *(v35 + 4) = v31;
        *(v35 + 5) = v26;
        *(v35 + 6) = v25;
        *(v35 + 7) = v27;
        *(v35 + 8) = v28;
        *(v35 + 9) = v29;
        *(v35 + 10) = v30;
        v5 = v44;
      }

      else
      {
        sub_1008BCF44(v20);
      }

      v18 = v50 + 1;
      v7 += 56;
      v9 = v45;
      if (v46 == v50 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    v7 = sub_10089C4F8((v8 > 1), v10, 1, v7);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_17:
  v36 = v10;

  if (a2)
  {
    v38 = v10;
    v39 = v47;
    v40 = sub_1008BCA1C(v38, v47, &v59);

    v36 = v40;
    v41 = v43;
    if (*(v36 + 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v41 = v43;
    v39 = v47;
    if (*(v36 + 2))
    {
      goto LABEL_23;
    }
  }

  if (!*(*v39 + 2))
  {
    __break(1u);
    return result;
  }

  sub_1008BCD0C(1uLL, 1, 0xD00000000000001CLL, 0x8000000100E5A9E0);
LABEL_23:
  if (*(v41 + 72) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1008BC0A4(v36);
    }

    v42 = *(v36 + 2);
    v51 = v36 + 32;
    v52 = v42;
    sub_1008BC1D8(&v51, sub_1008BE030, sub_1008BE014);
  }

  return v36;
}

uint64_t sub_1008B531C(uint64_t *a1, char **a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    return 1;
  }

  v6 = a1[3];
  if (((1 << v5) & 0xF8FFFFD7FFE7FLL) != 0)
  {
LABEL_3:
    v10 = sub_1009F9398(v5, a3);
    if (v10)
    {
      _StringGuts.grow(_:)(17);

      v11._countAndFlagsBits = ActionType.rawValue.getter(v5);
      String.append(_:)(v11);

      v12 = 0x756C637865202D20;
      v13 = 0xEB00000000646564;
      goto LABEL_5;
    }

    v22 = v6(v10);
    if (v23 == 1)
    {
      if (a4)
      {
        v24 = ActionType.mutuallyExclusiveActions.getter(v5);
        if (!v24)
        {
          v24 = &_swiftEmptySetSingleton;
        }

        sub_1008B58F4(v24);
        sub_1009938F0(v5);
      }

      v25._countAndFlagsBits = ActionType.rawValue.getter(v5);
      String.append(_:)(v25);

      v14 = 0x20939CE22020;
      v15 = 0xA600000000000000;
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v27 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 < v27 >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v28 = v23;
      v29 = v22;
      if (a4 & 1) == 0 || (v30 = *a5, , v31 = sub_10096A060(v5, v30), , (v31))
      {
        v32._countAndFlagsBits = ActionType.rawValue.getter(v5);
        String.append(_:)(v32);

        v33._countAndFlagsBits = 2108704;
        v33._object = 0xE300000000000000;
        String.append(_:)(v33);
        if (v28)
        {
          v34 = v29;
        }

        else
        {
          sub_10089840C(v29, 0);
          v28 = 0xE700000000000000;
          v34 = 0x6E776F6E6B6E75;
        }

        v38 = v28;
        String.append(_:)(*&v34);

        v14 = 544743456;
        v15 = 0xE400000000000000;
        v16 = *a2;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v16;
        if ((v39 & 1) == 0)
        {
          v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
          *a2 = v16;
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        v20 = v19 + 1;
        if (v19 < v18 >> 1)
        {
          result = 0;
          goto LABEL_31;
        }

LABEL_47:
        v16 = sub_10089C4F8((v18 > 1), v20, 1, v16);
        result = 0;
        goto LABEL_48;
      }

      v41 = ActionType.mutuallyExclusiveActions.getter(v5);
      if (!v41)
      {
        v41 = &_swiftEmptySetSingleton;
      }

      sub_1008B58F4(v41);
      _StringGuts.grow(_:)(44);

      v42._countAndFlagsBits = ActionType.rawValue.getter(v5);
      String.append(_:)(v42);

      v43._countAndFlagsBits = 0xD000000000000022;
      v43._object = 0x8000000100E5AA90;
      String.append(_:)(v43);
      if (v28)
      {
        v44 = v29;
      }

      else
      {
        sub_10089840C(v29, 0);
        v28 = 0xE700000000000000;
        v44 = 0x6E776F6E6B6E75;
      }

      v48 = v28;
      String.append(_:)(*&v44);

      v14 = 0x20939CE22020;
      v15 = 0xA600000000000000;
      v16 = *a2;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((v49 & 1) == 0)
      {
        v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v27 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 < v27 >> 1)
      {
LABEL_18:
        result = 1;
        goto LABEL_31;
      }
    }

    v16 = sub_10089C4F8((v27 > 1), v20, 1, v16);
    result = 1;
LABEL_48:
    *a2 = v16;
    goto LABEL_31;
  }

  v35 = a3;
  if (((1 << v5) & 0x700000000180) != 0)
  {
    v36 = sub_100898654();
    v37 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v36);
    a3 = v35;
    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v45 = sub_100898600();
    v46 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v45);
    a3 = v35;
    if (v46)
    {
      goto LABEL_3;
    }
  }

  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    _StringGuts.grow(_:)(29);

    v47._countAndFlagsBits = ActionType.rawValue.getter(v5);
    String.append(_:)(v47);

    v13 = 0x8000000100E5AAC0;
    v12 = 0xD000000000000017;
LABEL_5:
    String.append(_:)(*&v12);
    v14 = 544743456;
    v15 = 0xE400000000000000;
    v16 = *a2;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
      *a2 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    v20 = v19 + 1;
    if (v19 < v18 >> 1)
    {
      result = 0;
LABEL_31:
      *(v16 + 2) = v20;
      v40 = &v16[16 * v19];
      *(v40 + 4) = v14;
      *(v40 + 5) = v15;
      return result;
    }

    goto LABEL_47;
  }

  return 0;
}

uint64_t sub_1008B58F4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1009FFD28(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1008B59D0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);

  if (!v7)
  {
  }

  v10 = 0;
  v24 = (v3 + 16);
  v11 = (v3 + 8);
  v12 = (v6 + 40);
  *&v9 = 136446210;
  v21 = v9;
  v22 = v11;
  v23 = v7;
  while (v10 < *(v6 + 16))
  {
    v13 = *v12;
    v25 = *(v12 - 1);
    if (qword_1011A6758 != -1)
    {
      swift_once();
    }

    v14 = sub_1000060E4(v2, qword_1011A83B0);
    (*v24)(v5, v14, v2);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v2;
      v19 = v6;
      v20 = swift_slowAlloc();
      v26 = v20;
      *v17 = v21;
      *(v17 + 4) = sub_100010678(v25, v13, &v26);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
      sub_10000959C(v20);
      v6 = v19;
      v2 = v18;
      v7 = v23;

      v11 = v22;
    }

    result = (*v11)(v5, v2);
    ++v10;
    v12 += 2;
    if (v7 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionMenu.append(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 80) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10089C604(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 80) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_10089C604((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[56 * v6];
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  *(v7 + 10) = *(a1 + 48);
  *(v7 + 3) = v9;
  *(v7 + 4) = v10;
  *(v7 + 2) = v8;
  *(v1 + 80) = v3;
  swift_endAccess();
  return sub_1008B2DC0(a1, v12);
}

Swift::Void __swiftcall ActionMenu.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  swift_beginAccess();

  sub_1008A6144(v1);
  swift_endAccess();
}

uint64_t ActionMenu.deinit()
{

  sub_100020438(*(v0 + 88));
  return v0;
}

uint64_t ActionMenu.__deallocating_deinit()
{

  sub_100020438(*(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1008B5E40@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1008B5E50()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t ActionMenu.Item.menuItemConfiguring.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActionMenu.Item.execute.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t (*ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return sub_1008BCFB4;
}

uint64_t sub_1008B5FF8()
{

  return Image.init(systemName:)();
}

uint64_t (*ActionMenuItemImage.init(uiImage:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_1008BD018;
}

uint64_t sub_1008B60D8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    return Image.init(uiImage:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008B61B8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  if (v1)
  {
    return Image.init(uiImage:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008B621C()
{

  return Image.init(_internalSystemName:)();
}

id sub_1008B626C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() *a3];

  return v5;
}

uint64_t sub_1008B62C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1008B62F0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011A83B0);
  sub_1000060E4(v0, qword_1011A83B0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1008B636C(uint64_t a1)
{
  Hasher.init(_seed:)();
  MenuType.rawValue.getter(a1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1008B6584(a1, v2);
}

unint64_t sub_1008B63F4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1008BD148(&qword_1011A8548);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1008B6960(a1, v2);
}

unint64_t sub_1008B6478(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1006BF5E8(a1, v4, &qword_1011AB020);
}

unint64_t sub_1008B64C8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1006BF5E8(a1, v4, &qword_1011A8538);
}

unint64_t sub_1008B6518(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 + 1);
  v2 = Hasher._finalize()();
  return sub_1006BF6B4(a1, v2);
}

unint64_t sub_1008B6584(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C6576654C706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7463416B63697571;
          v7 = 0xEB000000006E6F69;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7368564;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x7972617262696CLL;
          break;
        case 4:
          v8 = 0x7473696C79616C70;
          break;
        case 5:
          v8 = 0x6B63616279616C70;
          break;
        case 6:
          v8 = 0x697461676976616ELL;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x6574736174;
          break;
        case 8:
          v8 = 0x6E6974726F706572;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xE90000000000006ELL;
          v8 = 0x6F697463416E6970;
          break;
        case 0xA:
          v8 = 0x7463757274736564;
          v7 = 0xEB00000000657669;
          break;
        case 0xB:
          v8 = 0x7473696C79616C70;
          v7 = 0xEC00000074726F53;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1867804519;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x6C6576654C706F74;
      switch(a1)
      {
        case 1:
          v9 = 0xEB000000006E6F69;
          if (v8 == 0x7463416B63697571)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v9 = 0xE300000000000000;
          if (v8 != 7368564)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v9 = 0xE700000000000000;
          if (v8 != 0x7972617262696CLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          if (v8 != 0x6B63616279616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x697461676976616ELL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE500000000000000;
          if (v8 != 0x6574736174)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E6974726F706572)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x6F697463416E6970)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v10 = 0x7463757274736564;
          v9 = 0xEB00000000657669;
          goto LABEL_38;
        case 11:
          v9 = 0xEC00000074726F53;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1867804519)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1008B6960(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1008BD148(&qword_1011A8550);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1008B6B0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8620);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1008B6DCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8648);
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
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

uint64_t sub_1008B71C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8628);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100016270((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000160F8(v23, &v36);
        sub_10000DD18(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100016270(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1008B747C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8610);
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
      v21 = *(*(v5 + 56) + 8 * v19);
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

uint64_t sub_1008B76FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8608);
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

uint64_t sub_1008B79A4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10010FC20(&qword_1011A7728);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
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
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1008BD148(&qword_1011A8548);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
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

uint64_t sub_1008B7D6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&unk_1011A85F0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_100016270(v21, v32);
      }

      else
      {
        sub_10000DD18(v21, v32);
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_100016270(v32, (*(v7 + 56) + 32 * v15));
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
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

uint64_t sub_1008B7FE4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10010FC20(&qword_1011A85D8);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1008BDD2C(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1008BDDF4(v29 + v28 * v24, v47);
      }

      sub_1008BD148(&qword_1011A8548);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1008BDD2C(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1008B8434(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A85C8);
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
        sub_100016270(v24, v34);
      }

      else
      {
        sub_10000DD18(v24, v34);
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
      result = sub_100016270(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1008B86EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8540);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1008B895C(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_10010FC20(&qword_1011A85A0);
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10010FC20(&qword_1011A85A8);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1008BD148(&qword_1011A8548);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_1008B8DF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8578);
  v46 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v43 = v3;
    v44 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v45 = v5;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v21 = v17 | (v8 << 6);
      v49 = *(*(v5 + 48) + v21);
      v22 = *(v5 + 56) + 56 * v21;
      v48 = *v22;
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v26 = *(v22 + 24);
      v25 = *(v22 + 32);
      v27 = *(v22 + 40);
      v28 = *(v22 + 48);
      if ((v46 & 1) == 0)
      {
        v29 = v24;
        v30 = v23;
        v31 = v26;
        v32 = v25;
        v33 = v27;
        v34 = v28;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v49 + 1);
      result = Hasher._finalize()();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v15 = v28;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v13 + 8 * v37);
          if (v41 != -1)
          {
            v14 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v49;
      v16 = *(v7 + 56) + 56 * v14;
      *v16 = v48;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v26;
      *(v16 + 32) = v25;
      *(v16 + 40) = v27;
      *(v16 + 48) = v15;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v47;
    }

    v18 = v8;
    result = v44;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v20 = v44[v8];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1008B90F8(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for SocialProfile();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10010FC20(&qword_1011A8530);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1008B9478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10001FD3C(a3, a4, sub_10000F930);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1008B6B0C(v18, a5 & 1);
      v13 = sub_10001FD3C(a3, a4, sub_10000F930);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1008BA5B4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_1008B9628(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1008B636C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1008B6DCC(v14, a3 & 1);
      result = sub_1008B636C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1008BA72C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1008B9774(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001FD3C(a2, a3, sub_10000F930);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1008B76FC(v16, a4 & 1);
      v11 = sub_10001FD3C(a2, a3, sub_10000F930);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1008BAB78();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_1008B9918(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1008B63F4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1008BACE8();
      goto LABEL_7;
    }

    sub_1008B79A4(v17, a3 & 1);
    v23 = sub_1008B63F4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1008BA320(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_1008B9AE4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1008B6478(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1008BAF5C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1008B7D6C(v13, a3 & 1);
    v8 = sub_1008B6478(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_100009F78(0, &qword_1011AB020);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000959C(v19);

    return sub_100016270(a1, v19);
  }

  else
  {
    sub_1006C7BCC(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1008B9C34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1008B63F4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1008BB0DC();
      goto LABEL_7;
    }

    sub_1008B7FE4(v17, a3 & 1);
    v24 = sub_1008B63F4(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1008BA3D8(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72) * v14;

  return sub_1008BDD90(a1, v22);
}

_OWORD *sub_1008B9E1C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001FD3C(a2, a3, sub_10000F930);
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
      sub_1008BB3E0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1008B8434(v16, a4 & 1);
    v11 = sub_10001FD3C(a2, a3, sub_10000F930);
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
    sub_10000959C(v22);

    return sub_100016270(a1, v22);
  }

  else
  {
    sub_1006C77C0(v11, a2, a3, a1, v21);
  }
}

id sub_1008B9F94(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1008B64C8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1008B86EC(v13, a3 & 1);
      v8 = sub_1008B64C8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009F78(0, &qword_1011A8538);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1008BB6D4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_1008BA110(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1008B63F4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1008BB838();
      goto LABEL_7;
    }

    sub_1008B895C(v17, a3 & 1);
    v28 = sub_1008B63F4(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1008BA4B4(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_10010FC20(&qword_1011A85A0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1008BA320(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1008BA3D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  result = sub_1008BDD2C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1008BA4B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_10010FC20(&qword_1011A85A0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_1008BA5B4()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8620);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1008BA72C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8648);
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

void *sub_1008BA888()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8628);
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
        v18 = 40 * v17;
        sub_1000160F8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000DD18(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100016270(v22, (*(v4 + 56) + v17));
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

void *sub_1008BAA2C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8610);
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

void *sub_1008BAB78()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8608);
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

char *sub_1008BACE8()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A7728);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

id sub_1008BAF5C()
{
  v1 = v0;
  sub_10010FC20(&unk_1011A85F0);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000DD18(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100016270(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

char *sub_1008BB0DC()
{
  v1 = v0;
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A85D8);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1008BDDF4(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1008BDD2C(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1008BB3E0()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A85C8);
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
        sub_10000DD18(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100016270(v25, (*(v4 + 56) + v22));
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

void *sub_1008BB584()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A85B0);
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
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
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

void *sub_1008BB6D4()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8540);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

char *sub_1008BB838()
{
  v1 = v0;
  v41 = sub_10010FC20(&qword_1011A85A0);
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - v2;
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A85A8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1008BBB94()
{
  sub_10010FC20(&qword_1011A8578);
  v29 = v0;
  v1 = *v0;
  v30 = static _DictionaryStorage.copy(original:)();
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v30 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(v1 + 56) + 56 * v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        v22 = *(v15 + 48);
        *(*(v30 + 48) + v14) = *(*(v1 + 48) + v14);
        v23 = *(v30 + 56) + 56 * v14;
        *v23 = v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        v24 = v17;
        v25 = v18;
        v26 = v19;
        v27 = v20;
        v28 = v21;
        result = v22;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

char *sub_1008BBD50()
{
  v1 = v0;
  v35 = type metadata accessor for SocialProfile();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8530);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

uint64_t sub_1008BBFD0(uint64_t result, int64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_10089CF3C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_100014824(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

Swift::Int sub_1008BC144(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100AA5028(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1008BC1D8(v5, sub_1008BE030, sub_1008BE014);
  *a1 = v2;
  return result;
}

Swift::Int sub_1008BC1D8(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1008BC2E0(void *(*a1)(void *__return_ptr), uint64_t a2, void (*a3)(void *__return_ptr, void *))
{
  v4 = a1(v29);
  a3(v26, v4);
  v5 = v30;
  v6 = v31;
  sub_10000954C(v29, v30);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v10 = v27;
  v11 = v28;
  sub_10000954C(v26, v27);
  if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = v30;
  v17 = v31;
  sub_10000954C(v29, v30);
  v18 = (*(v17 + 24))(v16, v17);
  v20 = v19;
  v21 = v27;
  v22 = v28;
  sub_10000954C(v26, v27);
  v23 = (*(v22 + 24))(v21, v22);
  if (v20)
  {
    if (v24)
    {
      if (v18 == v23 && v20 == v24)
      {

        v15 = 1;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v24)
    {
      v15 = 1;
      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_18:
  sub_10000959C(v26);
  sub_10000959C(v29);
  return v15 & 1;
}

char *sub_1008BC4F0(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v29 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = (a1 + 40);
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v8[5];
    v12 = *v8;
    LOBYTE(v25[0]) = *(v8 - 8);
    v25[1] = v12;
    v21 = *(v8 + 3);
    v26 = *(v8 + 1);
    v27 = v21;
    v28 = v11;

    sub_1008B4248(v25, a2, a3, v29 & 1, v23);
    if (v4)
    {
      break;
    }

    if (*&v23[0] >> 60 != 15)
    {
      v22 = v23[0];
      v19 = v23[2];
      v20 = v23[1];
      v13 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10089C604(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v16 = v22;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_10089C604((v14 > 1), v15 + 1, 1, v9);
        v16 = v22;
        v9 = v17;
      }

      *(v9 + 2) = v15 + 1;
      v10 = &v9[56 * v15];
      *(v10 + 2) = v16;
      *(v10 + 3) = v20;
      *(v10 + 4) = v19;
      *(v10 + 10) = v13;
    }

    v8 += 7;
    if (!--v5)
    {
      return v9;
    }
  }

  return v9;
}

char *sub_1008BC6F0(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10089CF3C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10099C27C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1008BC7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8620);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001FD3C(v5, v6, sub_10000F930);
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

unint64_t sub_1008BC8D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A85C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v13, &qword_1011A8618);
      v5 = v13;
      v6 = v14;
      result = sub_10001FD3C(v13, v14, sub_10000F930);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016270(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1008BCA1C(uint64_t result, char **a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = result + 40;
  v6 = _swiftEmptyArrayStorage;
  v26 = *(result + 16);
  v24 = result + 40;
  do
  {
    v25 = v6;
    v7 = (v5 + 56 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v9 = *(v7 - 1);
      v34 = v7[4];
      v10 = v7[5];
      v32 = v7[2];
      v33 = v7[3];
      v30 = *v7;
      v31 = v7[1];
      if (v9 < 0)
      {
        break;
      }

      v29 = v10;

      _StringGuts.grow(_:)(49);

      v11._countAndFlagsBits = ActionType.rawValue.getter(v9);
      String.append(_:)(v11);

      v12._object = 0x8000000100E5AA60;
      v12._countAndFlagsBits = 0xD00000000000002BLL;
      String.append(_:)(v12);
      v13 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v13;
      v15 = i + 1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_10089C4F8(0, *(v13 + 2) + 1, 1, v13);
        *a2 = v13;
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_10089C4F8((v16 > 1), v17 + 1, 1, v13);
        *a2 = v13;
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = 544743456;
      *(v18 + 5) = 0xE400000000000000;
      v19 = *a3;

      v20 = sub_10096A060(v9, v19);

      v3 = v26;
      v4 = i + 1;
      v10 = v29;
      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      result = sub_1008BCF44(v9);
      v7 += 7;
      if (v15 == v26)
      {
        return v25;
      }
    }

LABEL_15:
    v6 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100899F00(0, v25[2] + 1, 1);
      v6 = v25;
    }

    v5 = v24;
    v22 = v6[2];
    v21 = v6[3];
    if (v22 >= v21 >> 1)
    {
      result = sub_100899F00((v21 > 1), v22 + 1, 1);
      v6 = v25;
    }

    v6[2] = v22 + 1;
    v23 = &v6[7 * v22];
    v23[4] = v9;
    v23[5] = v30;
    v23[6] = v31;
    v23[7] = v32;
    v23[8] = v33;
    v23[9] = v34;
    v23[10] = v10;
  }

  while (v4 != v3);
  return v6;
}

unint64_t sub_1008BCD0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_10089C4F8(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_10099C320(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1008BCDE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8648);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1008B636C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1008BCEDC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A83D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008BCF44(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_1008BCFB4()
{

  return Image.init(systemName:)();
}

uint64_t sub_1008BD018()
{
  result = (*(v0 + 16))();
  if (result)
  {
    return Image.init(uiImage:)();
  }

  return result;
}

unint64_t sub_1008BD04C()
{
  result = qword_1011A83E8;
  if (!qword_1011A83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A83E8);
  }

  return result;
}

unint64_t sub_1008BD0A4()
{
  result = qword_1011A83F0;
  if (!qword_1011A83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A83F0);
  }

  return result;
}

uint64_t sub_1008BD148(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008BD1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8610);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1006BE7F4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1008BD290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011A8560);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1006BE7F4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1006BE7F4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1008BD3A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8608);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001FD3C(v5, v6, sub_10000F930);
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

unint64_t sub_1008BD4BC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A7720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011A7728);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011A7720);
      result = sub_1008B63F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1008BD6A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, Swift::Int))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10010FC20(&qword_1011A8600);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_10002BC44(v9, v10);
      result = sub_10001FD3C(v7, v8, a2);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
      {

        return v5;
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

unint64_t sub_1008BD7C4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A85D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011A85D8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011A85D0);
      result = sub_1008B63F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
      result = sub_1008BDD2C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1008BD9CC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A8570);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011A8530);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011A8570);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10001FD3C(*v5, v12, sub_10000F930);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for SocialProfile();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1008BDC14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10010FC20(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v8, &v15, a4);
      v9 = v15;
      result = sub_1006BE91C(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_100016270(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1008BDD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BDD90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BDDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BDF0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_1008BE048@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a2(0);
  a5[4] = a3;
  v9 = sub_10001C8B8(a5);
  return sub_1008C9DF0(a1, v9, a4);
}

uint64_t sub_1008BE124(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_10010FC20(&qword_1011A8670) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_10010FC20(&qword_1011A7F00);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1008BE22C, 0, 0);
}

uint64_t sub_1008BE22C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000089F8(v4, v2, &qword_1011A8670);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10003D17C(v2, v7 + v6, &qword_1011A8670);
  sub_100A5932C(0, 0, v1, &unk_100EEDF10, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008BE388(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_10010FC20(&qword_1011A8678) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_10010FC20(&qword_1011A7F00);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1008BE490, 0, 0);
}

uint64_t sub_1008BE490()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000089F8(v4, v2, &qword_1011A8678);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10003D17C(v2, v7 + v6, &qword_1011A8678);
  sub_100A5932C(0, 0, v1, &unk_100EEDF20, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008BE5EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_10010FC20(&qword_1011A87F0) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_10010FC20(&qword_1011A7F00);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1008BE6F4, 0, 0);
}

uint64_t sub_1008BE6F4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000089F8(v4, v2, &qword_1011A87F0);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10003D17C(v2, v7 + v6, &qword_1011A87F0);
  sub_100A5932C(0, 0, v1, &unk_100EEDE20, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008BE850(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return (sub_1009B996C)(a1, 1);
}

uint64_t sub_1008BE908(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return (sub_1009BAE8C)(a1, 1);
}

uint64_t sub_1008BE9C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return (sub_1009CFBB8)(a1, 1);
}

uint64_t Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v56 = a7;
  v57 = a6;
  v54 = a4;
  v55 = a5;
  v50 = a2;
  v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v46 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v51 = v14;
  v53 = *(v14 - 8);
  v15 = v53;
  __chkstk_darwin(v14);
  v49 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10010FC20(&qword_1011A8650);
  __chkstk_darwin(v17 - 8);
  v52 = &v46 - v18;
  v19 = type metadata accessor for Actions.PlaybackContext();
  v20 = v19[5];
  (*(v15 + 56))(&a8[v20], 1, 1, v14);
  v21 = &a8[v19[6]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &a8[v19[7]];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *a8 = a1;
  sub_1002190E0(a2, &a8[v20], &qword_1011A8650);
  v24 = *v21;
  v23 = *(v21 + 1);
  v25 = *(v21 + 2);
  v26 = *(v21 + 3);
  v27 = a3;
  v28 = a3;
  v29 = v54;
  v30 = v55;
  v31 = v57;
  sub_100344C3C(v28, v54, v55, v57);
  v32 = v25;
  v33 = v50;
  sub_100344C88(v24, v23, v32, v26);
  v34 = v27;
  *v21 = v27;
  *(v21 + 1) = v29;
  *(v21 + 2) = v30;
  *(v21 + 3) = v31;
  v36 = v51;
  v35 = v52;
  sub_1002190E0(v56, v22, &qword_1011A8658);
  sub_1000089F8(v33, v35, &qword_1011A8650);
  if ((*(v53 + 48))(v35, 1, v36) == 1)
  {
    sub_100344C88(v34, v29, v55, v57);
    sub_1000095E8(v56, &qword_1011A8658);
    sub_1000095E8(v33, &qword_1011A8650);
    v33 = v35;
  }

  else
  {
    v37 = v29;
    v38 = v49;
    sub_1008C9DF0(v35, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v46;
      v40 = v47;
      v41 = v48;
      (*(v47 + 32))(v46, v38, v48);
      v42 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v42 = *v38;
    }

    sub_1008BEEDC(v35);
    v43 = v55;
    v44 = v57;
    sub_100A565C4(v34, v37, v55, v57);
    sub_100344C88(v34, v37, v43, v44);

    sub_1000095E8(v56, &qword_1011A8658);
  }

  return sub_1000095E8(v33, &qword_1011A8650);
}

uint64_t type metadata accessor for Actions.PlaybackContext()
{
  result = qword_1011A8790;
  if (!qword_1011A8790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008BEEDC(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Actions.PlaybackContext.playActivityInformation.getter()
{
  v1 = v0 + *(type metadata accessor for Actions.PlaybackContext() + 24);
  v2 = *v1;
  sub_100344C3C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

void Actions.PlaybackContext.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for Actions.PlaybackContext();
  v17 = v4 + *(v16 + 24);
  sub_100344C88(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
  v18 = v29;
  v19 = v30;
  *v17 = a1;
  *(v17 + 8) = v18;
  v20 = v31;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  v21 = *(v16 + 20);
  if (!(*(v10 + 48))(v4 + v21, 1, v9))
  {
    v22 = v28;
    sub_1008C9DF0(v4 + v21, v15, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_1008C9DF0(v15, v12, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v22 + 32))(v8, v12, v6);
      v23 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v22 + 8))(v8, v6);
      sub_1008BEEDC(v15);
    }

    else
    {
      sub_1008BEEDC(v15);
      v23 = *v12;
    }

    v24 = *v17;
    v25 = *(v17 + 8);
    v26 = *(v17 + 16);
    v27 = *(v17 + 24);
    sub_100344C3C(*v17, v25, v26, v27);
    sub_100A565C4(v24, v25, v26, v27);
    sub_100344C88(v24, v25, v26, v27);
  }
}

void (*Actions.PlaybackContext.playActivityInformation.modify(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v4[7] = v11;
  v12 = type metadata accessor for Actions.PlaybackContext();
  v4[8] = v12;
  *(v4 + 18) = *(v12 + 24);
  return sub_1008BF4B8;
}

void sub_1008BF4B8(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *v2;
    v4 = *(v2[8] + 20);
    if (!(*(v2[5] + 48))(*v2 + v4, 1, v2[4]))
    {
      v6 = v2[6];
      v5 = v2[7];
      sub_1008C9DF0(v3 + v4, v5, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_1008C9DF0(v5, v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = v2[6];
      v9 = v2[7];
      if (EnumCaseMultiPayload == 1)
      {
        v11 = v2[2];
        v10 = v2[3];
        v12 = v2[1];
        (*(v11 + 32))(v10, v2[6], v12);
        v13 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v11 + 8))(v10, v12);
        sub_1008BEEDC(v9);
      }

      else
      {
        sub_1008BEEDC(v2[7]);
        v13 = *v8;
      }

      v14 = (*v2 + *(v2 + 18));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      sub_100344C3C(*v14, v16, v17, v18);
      sub_100A565C4(v15, v16, v17, v18);
      sub_100344C88(v15, v16, v17, v18);
    }
  }

  v19 = v2[6];
  v20 = v2[3];
  free(v2[7]);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a2;
  v8 = sub_10010FC20(&qword_1011A8660);
  __chkstk_darwin(v8 - 8);
  v10 = &v110 - v9;
  v11 = type metadata accessor for Actions.PlaybackContext();
  __chkstk_darwin(v11 - 8);
  v13 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v15 = a1[4];
  v16 = sub_10000954C(a1, v14);
  __chkstk_darwin(v16);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v117 = type metadata accessor for Actions.PlaybackContext;
  sub_1008C9DF0(a2, v13, type metadata accessor for Actions.PlaybackContext);
  v20 = a3;
  v115 = a3;
  sub_10012B7A8(a3, &v155);
  v21 = a4;
  v114 = a4;
  v111 = v10;
  sub_1000089F8(a4, v10, &qword_1011A8660);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v18, 0, v13, &v155, v10, v14, v15, &v120);
  sub_10091509C(&v120, &v122);
  v171[0] = v120;
  sub_1008C74A4(v171);
  v170 = v121;
  sub_1000095E8(&v170, &unk_1011ACB70);

  v116 = sub_10010FC20(&qword_1011A7D68);
  v22 = swift_allocObject();
  v118 = xmmword_100EBC6B0;
  *(v22 + 16) = xmmword_100EBC6B0;
  LOBYTE(a4) = BYTE8(v126);
  v23 = swift_allocObject();
  v24 = v129;
  *(v23 + 112) = v128;
  *(v23 + 128) = v24;
  *(v23 + 144) = v130;
  v25 = v125;
  *(v23 + 48) = v124;
  *(v23 + 64) = v25;
  v26 = v127;
  *(v23 + 80) = v126;
  *(v23 + 96) = v26;
  v27 = v123;
  *(v23 + 16) = v122;
  *(v23 + 32) = v27;
  v28 = swift_allocObject();
  v29 = v129;
  *(v28 + 112) = v128;
  *(v28 + 128) = v29;
  *(v28 + 144) = v130;
  v30 = v125;
  *(v28 + 48) = v124;
  *(v28 + 64) = v30;
  v31 = v127;
  *(v28 + 80) = v126;
  *(v28 + 96) = v31;
  v32 = v123;
  *(v28 + 16) = v122;
  *(v28 + 32) = v32;
  v33 = swift_allocObject();
  v34 = v129;
  *(v33 + 112) = v128;
  *(v33 + 128) = v34;
  *(v33 + 144) = v130;
  v35 = v125;
  *(v33 + 48) = v124;
  *(v33 + 64) = v35;
  v36 = v127;
  *(v33 + 80) = v126;
  *(v33 + 96) = v36;
  v37 = v123;
  *(v33 + 16) = v122;
  *(v33 + 32) = v37;
  v112 = v22;
  *(v22 + 32) = a4;
  *(v22 + 40) = sub_1008C74F8;
  *(v22 + 48) = v23;
  *(v22 + 56) = sub_1008C7500;
  *(v22 + 64) = v28;
  *(v22 + 72) = &unk_100EEDB80;
  *(v22 + 80) = v33;
  v38 = a1[3];
  v39 = a1[4];
  v40 = sub_10000954C(a1, v38);
  __chkstk_darwin(v40);
  v42 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42);
  v44 = v113;
  v45 = v13;
  sub_1008C9DF0(v113, v13, v117);
  sub_10012B7A8(v20, &v144);
  v46 = v111;
  sub_1000089F8(v21, v111, &qword_1011A8660);
  sub_1000089F8(&v122, &v155, &qword_1011A8668);
  sub_1000089F8(&v122, &v155, &qword_1011A8668);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v42, 2, v45, &v144, v46, v38, v39, &v131);
  sub_10091509C(&v131, &v133);
  v169 = v131;
  sub_1008C74A4(&v169);
  v168 = v132;
  sub_1000095E8(&v168, &unk_1011ACB70);

  v47 = swift_allocObject();
  *(v47 + 16) = v118;
  LOBYTE(v42) = BYTE8(v137);
  v48 = swift_allocObject();
  v49 = v140;
  *(v48 + 112) = v139;
  *(v48 + 128) = v49;
  *(v48 + 144) = v141;
  v50 = v136;
  *(v48 + 48) = v135;
  *(v48 + 64) = v50;
  v51 = v138;
  *(v48 + 80) = v137;
  *(v48 + 96) = v51;
  v52 = v134;
  *(v48 + 16) = v133;
  *(v48 + 32) = v52;
  v53 = swift_allocObject();
  v54 = v140;
  *(v53 + 112) = v139;
  *(v53 + 128) = v54;
  *(v53 + 144) = v141;
  v55 = v136;
  *(v53 + 48) = v135;
  *(v53 + 64) = v55;
  v56 = v138;
  *(v53 + 80) = v137;
  *(v53 + 96) = v56;
  v57 = v134;
  *(v53 + 16) = v133;
  *(v53 + 32) = v57;
  v58 = swift_allocObject();
  v59 = v140;
  *(v58 + 112) = v139;
  *(v58 + 128) = v59;
  *(v58 + 144) = v141;
  v60 = v136;
  *(v58 + 48) = v135;
  *(v58 + 64) = v60;
  v61 = v138;
  *(v58 + 80) = v137;
  *(v58 + 96) = v61;
  v62 = v134;
  *(v58 + 16) = v133;
  *(v58 + 32) = v62;
  *(v47 + 32) = v42;
  *(v47 + 40) = sub_1008C9F20;
  *(v47 + 48) = v48;
  *(v47 + 56) = sub_1008C9F28;
  *(v47 + 64) = v53;
  *(v47 + 72) = &unk_100EEDB90;
  *(v47 + 80) = v58;
  v63 = a1[3];
  v64 = a1[4];
  v65 = sub_10000954C(a1, v63);
  __chkstk_darwin(v65);
  v67 = &v110 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  sub_1008C9DF0(v44, v45, v117);
  sub_10012B7A8(v115, &v144);
  sub_1000089F8(v114, v46, &qword_1011A8660);
  sub_1000089F8(&v133, &v155, &qword_1011A8668);
  sub_1000089F8(&v133, &v155, &qword_1011A8668);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v67, 1, v45, &v144, v46, v63, v64, &v142);
  sub_10091509C(&v142, &v144);
  v167 = v142;
  sub_1008C74A4(&v167);
  v166 = v143;
  sub_1000095E8(&v166, &unk_1011ACB70);

  v69 = swift_allocObject();
  *(v69 + 16) = v118;
  LOBYTE(v21) = BYTE8(v148);
  v70 = swift_allocObject();
  v71 = v151;
  *(v70 + 112) = v150;
  *(v70 + 128) = v71;
  *(v70 + 144) = v152;
  v72 = v147;
  *(v70 + 48) = v146;
  *(v70 + 64) = v72;
  v73 = v149;
  *(v70 + 80) = v148;
  *(v70 + 96) = v73;
  v74 = v145;
  *(v70 + 16) = v144;
  *(v70 + 32) = v74;
  v75 = swift_allocObject();
  v76 = v151;
  *(v75 + 112) = v150;
  *(v75 + 128) = v76;
  *(v75 + 144) = v152;
  v77 = v147;
  *(v75 + 48) = v146;
  *(v75 + 64) = v77;
  v78 = v149;
  *(v75 + 80) = v148;
  *(v75 + 96) = v78;
  v79 = v145;
  *(v75 + 16) = v144;
  *(v75 + 32) = v79;
  v80 = swift_allocObject();
  v81 = v151;
  *(v80 + 112) = v150;
  *(v80 + 128) = v81;
  *(v80 + 144) = v152;
  v82 = v147;
  *(v80 + 48) = v146;
  *(v80 + 64) = v82;
  v83 = v149;
  *(v80 + 80) = v148;
  *(v80 + 96) = v83;
  v84 = v145;
  *(v80 + 16) = v144;
  *(v80 + 32) = v84;
  *(v69 + 32) = v21;
  *(v69 + 40) = sub_1008C9F20;
  *(v69 + 48) = v70;
  *(v69 + 56) = sub_1008C9F28;
  *(v69 + 64) = v75;
  *(v69 + 72) = &unk_100EEDB98;
  *(v69 + 80) = v80;
  v85 = a1[3];
  v86 = a1[4];
  v87 = sub_10000954C(a1, v85);
  __chkstk_darwin(v87);
  v89 = &v110 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v89);
  sub_1008C9DF0(v113, v45, v117);
  sub_10012B7A8(v115, v119);
  sub_1000089F8(v114, v46, &qword_1011A8660);
  sub_1000089F8(&v144, &v155, &qword_1011A8668);
  sub_1000089F8(&v144, &v155, &qword_1011A8668);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v89, 3, v45, v119, v46, v85, v86, &v153);
  sub_10091509C(&v153, &v155);
  v165 = v153;
  sub_1008C74A4(&v165);
  v164 = v154;
  sub_1000095E8(&v164, &unk_1011ACB70);

  v91 = swift_allocObject();
  *(v91 + 16) = v118;
  LOBYTE(v21) = BYTE8(v159);
  v92 = swift_allocObject();
  v93 = v162;
  *(v92 + 112) = v161;
  *(v92 + 128) = v93;
  *(v92 + 144) = v163;
  v94 = v158;
  *(v92 + 48) = v157;
  *(v92 + 64) = v94;
  v95 = v160;
  *(v92 + 80) = v159;
  *(v92 + 96) = v95;
  v96 = v156;
  *(v92 + 16) = v155;
  *(v92 + 32) = v96;
  v97 = swift_allocObject();
  v98 = v162;
  *(v97 + 112) = v161;
  *(v97 + 128) = v98;
  *(v97 + 144) = v163;
  v99 = v158;
  *(v97 + 48) = v157;
  *(v97 + 64) = v99;
  v100 = v160;
  *(v97 + 80) = v159;
  *(v97 + 96) = v100;
  v101 = v156;
  *(v97 + 16) = v155;
  *(v97 + 32) = v101;
  v102 = swift_allocObject();
  v103 = v162;
  *(v102 + 112) = v161;
  *(v102 + 128) = v103;
  *(v102 + 144) = v163;
  v104 = v158;
  *(v102 + 48) = v157;
  *(v102 + 64) = v104;
  v105 = v160;
  *(v102 + 80) = v159;
  *(v102 + 96) = v105;
  v106 = v156;
  *(v102 + 16) = v155;
  *(v102 + 32) = v106;
  *(v91 + 32) = v21;
  *(v91 + 40) = sub_1008C9F20;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_1008C9F28;
  *(v91 + 64) = v97;
  *(v91 + 72) = &unk_100EEDBA0;
  *(v91 + 80) = v102;
  sub_10010FC20(&qword_1011A7C70);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_100EBEF50;
  *(v107 + 32) = v112;
  *(v107 + 40) = v47;
  *(v107 + 48) = v69;
  *(v107 + 56) = v91;
  sub_1000089F8(&v155, v119, &qword_1011A8668);
  sub_1000089F8(&v155, v119, &qword_1011A8668);
  v108 = sub_1008A7E58(v107);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A7C78);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v108;
}