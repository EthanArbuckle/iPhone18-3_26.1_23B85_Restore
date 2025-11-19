uint64_t sub_100115F50@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v1 = sub_100005AD4(&qword_1003B1528);
  v2 = __chkstk_darwin(v1 - 8);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v27 - v4;
  v6 = sub_100005AD4(&qword_1003B1530);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v27 - v15;
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  sub_10011625C(&v27 - v17);
  sub_1001168E8(v16);
  v27 = v5;
  sub_10011706C(v5);
  v19 = *(v7 + 16);
  v20 = v13;
  v28 = v13;
  v19(v13, v18, v6);
  v19(v10, v16, v6);
  v21 = v5;
  v22 = v29;
  sub_10001F620(v21, v29, &qword_1003B1528);
  v23 = v30;
  v19(v30, v20, v6);
  v24 = sub_100005AD4(&qword_1003B1538);
  v19(&v23[*(v24 + 48)], v10, v6);
  sub_10001F620(v22, &v23[*(v24 + 64)], &qword_1003B1528);
  sub_100009EBC(v27, &qword_1003B1528);
  v25 = *(v7 + 8);
  v25(v16, v6);
  v25(v18, v6);
  sub_100009EBC(v22, &qword_1003B1528);
  v25(v10, v6);
  return (v25)(v28, v6);
}

uint64_t sub_10011625C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = type metadata accessor for DynamicTypeSize();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ImageTranslationView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100005AD4(&qword_1003B1630);
  v7 = __chkstk_darwin(v33);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v28 - v10;
  v34 = sub_100005AD4(&qword_1003B1638);
  __chkstk_darwin(v34);
  v12 = &v28 - v11;
  v35 = sub_100005AD4(&qword_1003B1640);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v28 - v13;
  sub_10011C7A0(v1, v6);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_10011FFFC(v6, v15 + v14, type metadata accessor for ImageTranslationView);
  v30 = *(v1 + 80);
  v29 = *(v1 + 88);
  LOBYTE(v46[0]) = v30;
  *(&v46[0] + 1) = v29;
  sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.getter();
  LOBYTE(v14) = v42;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *&v42 = sub_10011AEE0;
  *(&v42 + 1) = 0;
  *&v43 = sub_10011FF6C;
  *(&v43 + 1) = v15;
  LOWORD(v44) = 1;
  BYTE2(v44) = 0;
  *(&v44 + 1) = KeyPath;
  *&v45 = sub_100121E64;
  *(&v45 + 1) = v17;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100005AD4(&qword_1003B1648);
  sub_10011F724();
  View.accessibilityLabel(_:)();

  v46[0] = v42;
  v46[1] = v43;
  v46[2] = v44;
  v46[3] = v45;
  sub_100009EBC(v46, &qword_1003B1648);
  v18 = v31;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_100009EBC(v9, &qword_1003B1630);
  LOBYTE(v42) = v30;
  *(&v42 + 1) = v29;
  State.wrappedValue.getter();
  if (v41)
  {
    v19 = 0.6;
  }

  else
  {
    v19 = 1.0;
  }

  sub_100023BD4(v18, v12, &qword_1003B1630);
  v20 = v34;
  *&v12[*(v34 + 36)] = v19;
  v21 = v38;
  v22 = v37;
  v23 = v39;
  (*(v38 + 104))(v37, enum case for DynamicTypeSize.large(_:), v39);
  v24 = sub_10011F808();
  v25 = v32;
  View.dynamicTypeSize(_:)();
  (*(v21 + 8))(v22, v23);
  sub_100009EBC(v12, &qword_1003B1638);
  sub_100005AD4(&qword_1003A93D8);
  *&v42 = v20;
  *(&v42 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  v26 = v35;
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return (*(v36 + 8))(v25, v26);
}

uint64_t sub_1001168E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v46 = type metadata accessor for DynamicTypeSize();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ImageTranslationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v38 = sub_100005AD4(&qword_1003B1630);
  v11 = __chkstk_darwin(v38);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v39 = &v35 - v14;
  v40 = sub_100005AD4(&qword_1003B1638);
  __chkstk_darwin(v40);
  v16 = &v35 - v15;
  v43 = sub_100005AD4(&qword_1003B1640);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v35 - v17;
  sub_10011C7A0(v2, v10);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_10011FFFC(v10, v19 + v18, type metadata accessor for ImageTranslationView);
  sub_10011C7A0(v2, v8);
  v20 = swift_allocObject();
  sub_10011FFFC(v8, v20 + v18, type metadata accessor for ImageTranslationView);
  v21 = *(v2 + 88);
  v36 = *(v2 + 80);
  LOBYTE(v52) = v36;
  v37 = v21;
  *(&v52 + 1) = v21;
  v35 = sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.getter();
  LOBYTE(v8) = v51[0];
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v8;
  *&v52 = sub_10011F688;
  *(&v52 + 1) = v20;
  *&v53 = sub_10011F670;
  *(&v53 + 1) = v19;
  LOWORD(v54) = 0;
  BYTE2(v54) = 0;
  *(&v54 + 1) = KeyPath;
  *&v55 = sub_100121E64;
  *(&v55 + 1) = v23;
  sub_100113CB0();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100005AD4(&qword_1003B1648);
  sub_10011F724();
  View.accessibilityLabel(_:)();

  v51[0] = v52;
  v51[1] = v53;
  v51[2] = v54;
  v51[3] = v55;
  sub_100009EBC(v51, &qword_1003B1648);
  sub_100113CB0();
  v24 = v39;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  sub_100009EBC(v13, &qword_1003B1630);
  LOBYTE(v49) = v36;
  v50 = v37;
  State.wrappedValue.getter();
  if (v48)
  {
    v25 = 0.6;
  }

  else
  {
    v25 = 1.0;
  }

  sub_100023BD4(v24, v16, &qword_1003B1630);
  v26 = v40;
  *&v16[*(v40 + 36)] = v25;
  v27 = v45;
  v28 = v44;
  v29 = v46;
  (*(v45 + 104))(v44, enum case for DynamicTypeSize.large(_:), v46);
  v30 = sub_10011F808();
  v31 = v41;
  View.dynamicTypeSize(_:)();
  (*(v27 + 8))(v28, v29);
  v32 = sub_100009EBC(v16, &qword_1003B1638);
  __chkstk_darwin(v32);
  *(&v35 - 2) = v2;
  sub_100005AD4(&qword_1003A93D8);
  v49 = v26;
  v50 = v30;
  swift_getOpaqueTypeConformance2();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  v33 = v43;
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return (*(v42 + 8))(v31, v33);
}

uint64_t sub_10011706C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = a1;
  v3 = type metadata accessor for ImageTranslationView();
  v102 = *(v3 - 8);
  v4 = *(v102 + 64);
  __chkstk_darwin(v3);
  v103 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100005AD4(&qword_1003B1540);
  __chkstk_darwin(v105);
  v104 = &v86 - v5;
  v117 = sub_100005AD4(&qword_1003B1548);
  __chkstk_darwin(v117);
  v7 = &v86 - v6;
  v119 = sub_100005AD4(&qword_1003B1550);
  v107 = *(v119 - 8);
  __chkstk_darwin(v119);
  v106 = &v86 - v8;
  v120 = sub_100005AD4(&qword_1003B1558);
  v109 = *(v120 - 8);
  __chkstk_darwin(v120);
  v108 = &v86 - v9;
  v116 = sub_100005AD4(&qword_1003B1560);
  __chkstk_darwin(v116);
  v118 = &v86 - v10;
  v113 = type metadata accessor for DynamicTypeSize();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100005AD4(&qword_1003B1568);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v86 - v12;
  v13 = sub_100005AD4(&qword_1003B1570);
  __chkstk_darwin(v13);
  v15 = (&v86 - v14);
  v92 = sub_100005AD4(&qword_1003B1578);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v86 - v16;
  v93 = sub_100005AD4(&qword_1003B1580);
  __chkstk_darwin(v93);
  v18 = (&v86 - v17);
  v96 = sub_100005AD4(&qword_1003B1588);
  v19 = __chkstk_darwin(v96);
  v95 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v94 = &v86 - v21;
  v110 = sub_100005AD4(&qword_1003B1590);
  __chkstk_darwin(v110);
  v97 = &v86 - v22;
  v114 = sub_100005AD4(&qword_1003B1598);
  v99 = *(v114 - 8);
  __chkstk_darwin(v114);
  v98 = &v86 - v23;
  v115 = sub_100005AD4(&qword_1003B15A0);
  v101 = *(v115 - 8);
  __chkstk_darwin(v115);
  v100 = &v86 - v24;
  v25 = *(v1 + 88);
  LOBYTE(v128) = *(v1 + 80);
  *(&v128 + 1) = v25;
  sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.getter();
  if (v123)
  {
    v26 = 1;
LABEL_5:
    v122 = v26;
    goto LABEL_7;
  }

  if (sub_100113CB0())
  {
    v27 = *(v1 + 72);
    LOBYTE(v128) = *(v1 + 64);
    *(&v128 + 1) = v27;
    State.wrappedValue.getter();
    v26 = v123 ^ 1;
    goto LABEL_5;
  }

  v122 = 0;
LABEL_7:
  if (!sub_100113CB0())
  {
    v28 = *(v1 + 8);
    LOBYTE(v128) = *v1;
    *(&v128 + 1) = v28;
    State.wrappedValue.getter();
  }

  if (sub_100113CB0())
  {
    if (v122)
    {
      v29 = 1;
      v30 = 0.6;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v31 = *(v1 + 24);
  LOBYTE(v128) = *(v1 + 16);
  *(&v128 + 1) = v31;
  State.wrappedValue.getter();
  v29 = v123;
  if (v123)
  {
    v30 = 0.6;
  }

  else
  {
    v30 = 0.0;
  }

  if (!(v122 & 1 | ((v123 & 1) == 0)))
  {
LABEL_16:
    v29 = 1;
    v30 = 1.0;
  }

LABEL_17:
  if (sub_100113CB0())
  {
    if (*(v1 + *(v3 + 60)))
    {
      v107 = v18;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      LODWORD(v109) = BYTE8(v128);
      if (BYTE8(v128) == 255)
      {
        __break(1u);
      }

      else
      {
        v108 = v128;
        type metadata accessor for VisualTranslationObservable();
        sub_100121CCC(&unk_1003B1390, &type metadata accessor for VisualTranslationObservable);
        v32 = StateObject.wrappedValue.getter();
        LocalizedStringKey.init(stringLiteral:)();
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (BYTE8(v128) != 255)
        {
          *&v128 = Image.init(uiImage:)();
          sub_10011E9C8();
          v33 = v87;
          SharePreview<>.init(_:image:)();
          v34 = v108;
          *v15 = v108;
          v15[1] = v32;
          v106 = v32;
          *(v15 + v13[23]) = 1;
          (*(v88 + 32))(v15 + v13[21], v33, v89);
          v35 = (v15 + v13[22]);
          *v35 = sub_10011BFA8;
          v35[1] = 0;
          sub_100005AD4(&qword_1003B1610);
          type metadata accessor for PresentationDetent();
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1002D1370;
          sub_10011C910(v34, v109);

          static PresentationDetent.medium.getter();
          static PresentationDetent.large.getter();
          sub_10011F350(v36);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          sub_10001BAEC(&qword_1003B1600, &qword_1003B1570);
          v37 = v90;
          View.presentationDetents(_:)();

          sub_100009EBC(v15, &qword_1003B1570);
          KeyPath = swift_getKeyPath();
          v39 = swift_allocObject();
          *(v39 + 16) = v122 & 1;
          v40 = v107;
          (*(v91 + 32))(v107, v37, v92);
          v41 = (v40 + *(v93 + 36));
          *v41 = KeyPath;
          v41[1] = sub_100121E64;
          v41[2] = v39;
          LocalizedStringKey.init(stringLiteral:)();
          sub_10011E8A0();
          v42 = v95;
          View.accessibilityLabel(_:)();

          sub_100009EBC(v40, &qword_1003B1580);
          v43 = v94;
          ModifiedContent<>.accessibilityIdentifier(_:)();
          sub_100009EBC(v42, &qword_1003B1588);
          v44 = v97;
          sub_100023BD4(v43, v97, &qword_1003B1588);
          v45 = v110;
          *(v44 + *(v110 + 36)) = v30;
          v46 = v112;
          v47 = v111;
          v48 = v113;
          (*(v112 + 104))(v111, enum case for DynamicTypeSize.large(_:), v113);
          v49 = sub_10011E7E8();
          v50 = v98;
          View.dynamicTypeSize(_:)();
          (*(v46 + 8))(v47, v48);
          sub_100009EBC(v44, &qword_1003B1590);
          v51 = sub_100005AD4(&qword_1003A93D8);
          *&v128 = v45;
          *(&v128 + 1) = v49;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v53 = sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
          v54 = v100;
          v55 = v114;
          View.accessibilityShowsLargeContentViewer<A>(_:)();
          (*(v99 + 8))(v50, v55);
          v56 = v101;
          v57 = v115;
          (*(v101 + 16))(v118, v54, v115);
          swift_storeEnumTagMultiPayload();
          *&v128 = v55;
          *(&v128 + 1) = v51;
          *&v129 = OpaqueTypeConformance2;
          *(&v129 + 1) = v53;
          swift_getOpaqueTypeConformance2();
          v58 = sub_10011E728();
          *&v128 = v117;
          *(&v128 + 1) = v58;
          v59 = swift_getOpaqueTypeConformance2();
          *&v128 = v119;
          *(&v128 + 1) = v51;
          *&v129 = v59;
          *(&v129 + 1) = v53;
          swift_getOpaqueTypeConformance2();
          _ConditionalContent<>.init(storage:)();
          sub_10011C8FC(v108, v109);

          return (*(v56 + 8))(v54, v57);
        }
      }

      __break(1u);
    }

    type metadata accessor for ConversationContext(0);
    sub_100121CCC(&unk_1003BC490, type metadata accessor for ConversationContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  else
  {
    v61 = *(v1 + 8);
    LOBYTE(v123) = *v1;
    *(&v123 + 1) = v61;
    State.projectedValue.getter();
    v62 = v128;
    v63 = v129;
    v64 = v103;
    sub_10011C7A0(v1, v103);
    v65 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v66 = swift_allocObject();
    sub_10011FFFC(v64, v66 + v65, type metadata accessor for ImageTranslationView);
    v67 = swift_getKeyPath();
    v68 = swift_allocObject();
    *(v68 + 16) = v122 & 1;
    v123 = v62;
    LOBYTE(v124) = v63;
    BYTE1(v124) = v29 ^ 1;
    *(&v124 + 1) = sub_10011CE28;
    *&v125 = v66;
    BYTE8(v125) = 1;
    *&v126 = v67;
    *(&v126 + 1) = sub_10011E62C;
    v127 = v68;
    LocalizedStringKey.init(stringLiteral:)();
    sub_100005AD4(&qword_1003B15A8);
    sub_10011E644();
    v69 = v104;
    View.accessibilityLabel(_:)();

    v130 = v125;
    v131 = v126;
    v132 = v127;
    v128 = v123;
    v129 = v124;
    sub_100009EBC(&v128, &qword_1003B15A8);
    ModifiedContent<>.accessibilityIdentifier(_:)();
    sub_100009EBC(v69, &qword_1003B1540);
    v70 = v117;
    *&v7[*(v117 + 36)] = v30;
    v71 = v112;
    v72 = v111;
    v73 = v113;
    (*(v112 + 104))(v111, enum case for DynamicTypeSize.large(_:), v113);
    v74 = sub_10011E728();
    v75 = v106;
    View.dynamicTypeSize(_:)();
    (*(v71 + 8))(v72, v73);
    v76 = sub_100009EBC(v7, &qword_1003B1548);
    __chkstk_darwin(v76);
    *(&v86 - 2) = v2;
    v77 = sub_100005AD4(&qword_1003A93D8);
    *&v123 = v70;
    *(&v123 + 1) = v74;
    v78 = swift_getOpaqueTypeConformance2();
    v79 = sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
    v80 = v108;
    v81 = v119;
    View.accessibilityShowsLargeContentViewer<A>(_:)();
    v107[1](v75, v81);
    v82 = v109;
    v83 = v120;
    (*(v109 + 16))(v118, v80, v120);
    swift_storeEnumTagMultiPayload();
    v84 = sub_10011E7E8();
    *&v123 = v110;
    *(&v123 + 1) = v84;
    v85 = swift_getOpaqueTypeConformance2();
    *&v123 = v114;
    *(&v123 + 1) = v77;
    *&v124 = v85;
    *(&v124 + 1) = v79;
    swift_getOpaqueTypeConformance2();
    *&v123 = v81;
    *(&v123 + 1) = v77;
    *&v124 = v78;
    *(&v124 + 1) = v79;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v82 + 8))(v80, v83);
  }

  return result;
}

void sub_1001185C4()
{
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Camera preview is going away, removing guidance", v3, 2u);
  }

  sub_10010D0A0();
}

uint64_t sub_1001186A8()
{
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Camera preview is going away, removing guidance", v3, 2u);
  }

  sub_10010D0A0();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Camera preview is going away, turning off flashlight", v6, 2u);
  }

  sub_100005AD4(&qword_1003AC8F8);
  return State.wrappedValue.setter();
}

uint64_t sub_100118848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v212 = a2;
  v170 = sub_100005AD4(&qword_1003B1678);
  __chkstk_darwin(v170);
  v171 = &v166[-v3];
  v4 = sub_100005AD4(&qword_1003B1680);
  v207 = *(v4 - 8);
  v208 = v4;
  __chkstk_darwin(v4);
  v169 = &v166[-v5];
  v6 = sub_100005AD4(&qword_1003B1688);
  v7 = __chkstk_darwin(v6 - 8);
  v211 = &v166[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v210 = &v166[-v9];
  v10 = sub_100005AD4(&qword_1003B1690);
  v204 = *(v10 - 8);
  v205 = v10;
  __chkstk_darwin(v10);
  v173 = &v166[-v11];
  v12 = sub_100005AD4(&qword_1003B1698);
  v13 = __chkstk_darwin(v12 - 8);
  v209 = &v166[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v217 = &v166[-v15];
  v196 = sub_100005AD4(&qword_1003A93D8);
  v194 = *(v196 - 8);
  __chkstk_darwin(v196);
  v188 = &v166[-v16];
  v191 = sub_100005AD4(&qword_1003ADA48);
  __chkstk_darwin(v191);
  v190 = &v166[-v17];
  v189 = sub_100005AD4(&qword_1003B16A0);
  v187 = *(v189 - 8);
  __chkstk_darwin(v189);
  v186 = &v166[-v18];
  v185 = sub_100005AD4(&qword_1003B16A8);
  __chkstk_darwin(v185);
  v193 = &v166[-v19];
  v192 = sub_100005AD4(&qword_1003B16B0);
  __chkstk_darwin(v192);
  v198 = &v166[-v20];
  v197 = sub_100005AD4(&qword_1003B16B8);
  v21 = __chkstk_darwin(v197);
  v206 = &v166[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v195 = &v166[-v24];
  __chkstk_darwin(v23);
  v215 = &v166[-v25];
  v175 = type metadata accessor for Material();
  __chkstk_darwin(v175);
  v174 = &v166[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_100005AD4(&qword_1003B16C0);
  v176 = *(v27 - 8);
  v177 = v27;
  __chkstk_darwin(v27);
  v168 = &v166[-v28];
  v29 = type metadata accessor for UserInterfaceSizeClass();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v172 = &v166[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_100005AD4(&qword_1003AC998);
  v33 = __chkstk_darwin(v32);
  v203 = &v166[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v36 = &v166[-v35];
  v37 = sub_100005AD4(&qword_1003AC848);
  v38 = __chkstk_darwin(v37 - 8);
  v201 = &v166[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __chkstk_darwin(v38);
  v213 = &v166[-v41];
  v42 = __chkstk_darwin(v40);
  v200 = &v166[-v43];
  v44 = __chkstk_darwin(v42);
  v46 = &v166[-v45];
  v47 = __chkstk_darwin(v44);
  v49 = &v166[-v48];
  __chkstk_darwin(v47);
  v51 = &v166[-v50];
  v52 = sub_100005AD4(&qword_1003B16C8);
  v53 = __chkstk_darwin(v52 - 8);
  v214 = &v166[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v53);
  v216 = &v166[-v55];
  v218 = a1;
  sub_100113620(v51);
  v56 = *(v30 + 104);
  v180 = enum case for UserInterfaceSizeClass.compact(_:);
  v182 = v30 + 104;
  v179 = v56;
  v56(v49);
  v57 = *(v30 + 56);
  v181 = v30 + 56;
  v178 = v57;
  v57(v49, 0, 1, v29);
  v199 = v32;
  v58 = *(v32 + 48);
  sub_10001F620(v51, v36, &qword_1003AC848);
  sub_10001F620(v49, &v36[v58], &qword_1003AC848);
  v202 = v30;
  v59 = v30;
  v60 = v29;
  v61 = *(v59 + 48);
  v62 = v61(v36, 1, v29);
  v183 = v61;
  v184 = v59 + 48;
  if (v62 != 1)
  {
    sub_10001F620(v36, v46, &qword_1003AC848);
    if (v61(&v36[v58], 1, v29) != 1)
    {
      v63 = v202;
      v64 = v172;
      (*(v202 + 32))(v172, &v36[v58], v60);
      sub_100121CCC(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
      v167 = dispatch thunk of static Equatable.== infix(_:_:)();
      v65 = *(v63 + 8);
      v65(v64, v60);
      sub_100009EBC(v49, &qword_1003AC848);
      sub_100009EBC(v51, &qword_1003AC848);
      v65(v46, v60);
      sub_100009EBC(v36, &qword_1003AC848);
      if (v167)
      {
        goto LABEL_9;
      }

LABEL_7:
      (*(v176 + 56))(v216, 1, 1, v177);
      goto LABEL_10;
    }

    sub_100009EBC(v49, &qword_1003AC848);
    sub_100009EBC(v51, &qword_1003AC848);
    (*(v202 + 8))(v46, v29);
LABEL_6:
    sub_100009EBC(v36, &qword_1003AC998);
    goto LABEL_7;
  }

  sub_100009EBC(v49, &qword_1003AC848);
  sub_100009EBC(v51, &qword_1003AC848);
  if (v61(&v36[v58], 1, v29) != 1)
  {
    goto LABEL_6;
  }

  sub_100009EBC(v36, &qword_1003AC848);
LABEL_9:
  v66 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v220[6] = v227;
  *&v220[22] = v228;
  *&v220[38] = v229;
  static Material.bar.getter();
  v67 = AnyShapeStyle.init<A>(_:)();
  v68 = static Edge.Set.all.getter();
  *v219 = v66;
  *&v219[8] = 256;
  *&v219[10] = *v220;
  *&v219[26] = *&v220[16];
  *&v219[42] = *&v220[32];
  *&v219[56] = *&v220[46];
  *&v219[64] = v67;
  v219[72] = v68;
  v69 = (v218 + *(type metadata accessor for ImageTranslationView() + 48));
  v70 = *v69;
  v71 = v69[1];
  v225 = v70;
  v226 = v71;
  sub_100005AD4(&qword_1003AA820);
  State.projectedValue.getter();
  sub_100005AD4(&qword_1003B1768);
  sub_100120468();
  v72 = v168;
  View.bindGeometry(to:reader:)();

  v223 = *&v219[32];
  v224[0] = *&v219[48];
  *(v224 + 9) = *&v219[57];
  v221 = *v219;
  v222 = *&v219[16];
  sub_100009EBC(&v221, &qword_1003B1768);
  v74 = v176;
  v73 = v177;
  v75 = v216;
  (*(v176 + 32))(v216, v72, v177);
  (*(v74 + 56))(v75, 0, 1, v73);
LABEL_10:
  v76 = v201;
  v77 = v188;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v221 == 5)
  {
    v78 = 0;
    v79 = 0xE000000000000000;
  }

  else
  {
    v78 = sub_10010BBD4(v221);
  }

  *&v221 = v78;
  *(&v221 + 1) = v79;
  sub_10001F278();
  Label<>.init<A>(_:systemImage:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v221 != 5)
  {
    sub_10010BD08();
  }

  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  v80 = v190;
  v81 = v196;
  View.accessibilityIdentifier(_:)();

  (*(v194 + 8))(v77, v81);
  sub_10007ADB8();
  sub_10012006C();
  v82 = v186;
  View.labelStyle<A>(_:)();
  sub_100009EBC(v80, &qword_1003ADA48);
  v83 = v193;
  (*(v187 + 32))(v193, v82, v189);
  *&v83[*(v185 + 36)] = xmmword_1002DE3F0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v221 == 5)
  {
    v84 = 0.0;
  }

  else
  {
    v84 = 1.0;
  }

  v85 = v83;
  v86 = v198;
  sub_100023BD4(v85, v198, &qword_1003B16A8);
  *&v86[*(v192 + 36)] = v84;
  v87 = static Animation.easeInOut.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v88 = v221;
  v89 = v86;
  v90 = v195;
  sub_100023BD4(v89, v195, &qword_1003B16B0);
  v91 = &v90[*(v197 + 36)];
  *v91 = v87;
  v91[8] = v88;
  sub_100023BD4(v90, v215, &qword_1003B16B8);
  *(&v222 + 1) = &type metadata for TranslateFeatures;
  *&v223 = sub_100009DF8();
  LOBYTE(v221) = 2;
  v92 = isFeatureEnabled(_:)();
  v93 = sub_100008664(&v221);
  if (v92)
  {
    __chkstk_darwin(v93);
    *&v166[-16] = v218;
    type metadata accessor for CombinedLanguagePickerPill();
    sub_100121CCC(&qword_1003B1760, type metadata accessor for CombinedLanguagePickerPill);
    v94 = v173;
    GlassEffectContainer.init(spacing:content:)();
    v96 = v204;
    v95 = v205;
    v97 = v217;
    (*(v204 + 32))(v217, v94, v205);
    v98 = 0;
  }

  else
  {
    v98 = 1;
    v97 = v217;
    v96 = v204;
    v95 = v205;
  }

  v99 = v203;
  v100 = v200;
  v101 = v213;
  (*(v96 + 56))(v97, v98, 1, v95);
  sub_100113620(v100);
  v179(v101, v180, v60);
  v178(v101, 0, 1, v60);
  v102 = *(v199 + 48);
  sub_10001F620(v100, v99, &qword_1003AC848);
  sub_10001F620(v101, v99 + v102, &qword_1003AC848);
  v103 = v183;
  if (v183(v99, 1, v60) == 1)
  {
    sub_100009EBC(v101, &qword_1003AC848);
    sub_100009EBC(v100, &qword_1003AC848);
    if (v103(v99 + v102, 1, v60) == 1)
    {
      sub_100009EBC(v99, &qword_1003AC848);
LABEL_29:
      v112 = static VerticalAlignment.center.getter();
      v113 = v171;
      *v171 = v112;
      *(v113 + 8) = 0;
      *(v113 + 16) = 1;
      v114 = sub_100005AD4(&qword_1003B16E0);
      v115 = v218;
      sub_10011A79C((v113 + *(v114 + 44)));
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v116 = (v113 + *(sub_100005AD4(&qword_1003B16E8) + 36));
      v117 = v222;
      *v116 = v221;
      v116[1] = v117;
      v116[2] = v223;
      v118 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v126 = v125;
      v127 = v113 + *(sub_100005AD4(&qword_1003B16F0) + 36);
      *v127 = v118;
      *(v127 + 8) = v120;
      *(v127 + 16) = v122;
      *(v127 + 24) = v124;
      *(v127 + 32) = v126;
      *(v127 + 40) = 0;
      v128 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v130 = v129;
      v132 = v131;
      v134 = v133;
      v136 = v135;
      v137 = v113 + *(sub_100005AD4(&qword_1003B16F8) + 36);
      *v137 = v128;
      *(v137 + 8) = v130;
      *(v137 + 16) = v132;
      *(v137 + 24) = v134;
      *(v137 + 32) = v136;
      *(v137 + 40) = 0;
      v138 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v140 = v139;
      v142 = v141;
      v144 = v143;
      v146 = v145;
      v147 = v113 + *(sub_100005AD4(&qword_1003B1700) + 36);
      *v147 = v138;
      *(v147 + 8) = v140;
      *(v147 + 16) = v142;
      *(v147 + 24) = v144;
      *(v147 + 32) = v146;
      *(v147 + 40) = 0;
      static Material.bar.getter();
      v148 = AnyShapeStyle.init<A>(_:)();
      v149 = static Edge.Set.all.getter();
      v150 = v113 + *(sub_100005AD4(&qword_1003B1708) + 36);
      *v150 = v148;
      *(v150 + 8) = v149;
      *(v113 + *(v170 + 36)) = 256;
      v151 = (v115 + *(type metadata accessor for ImageTranslationView() + 52));
      v152 = *v151;
      v153 = v151[1];
      v225 = v152;
      v226 = v153;
      sub_100005AD4(&qword_1003AA820);
      State.projectedValue.getter();
      sub_1001200C0();
      v154 = v169;
      View.bindGeometry(to:reader:)();

      sub_100009EBC(v113, &qword_1003B1678);
      v107 = v207;
      v106 = v208;
      v105 = v210;
      (*(v207 + 32))(v210, v154, v208);
      v104 = 0;
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  sub_10001F620(v99, v76, &qword_1003AC848);
  if (v103(v99 + v102, 1, v60) == 1)
  {
    sub_100009EBC(v101, &qword_1003AC848);
    sub_100009EBC(v100, &qword_1003AC848);
    (*(v202 + 8))(v76, v60);
LABEL_26:
    sub_100009EBC(v99, &qword_1003AC998);
    goto LABEL_27;
  }

  v108 = v202;
  v109 = v172;
  (*(v202 + 32))(v172, v99 + v102, v60);
  sub_100121CCC(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
  v110 = dispatch thunk of static Equatable.== infix(_:_:)();
  v111 = *(v108 + 8);
  v111(v109, v60);
  sub_100009EBC(v213, &qword_1003AC848);
  sub_100009EBC(v100, &qword_1003AC848);
  v111(v76, v60);
  sub_100009EBC(v99, &qword_1003AC848);
  if (v110)
  {
    goto LABEL_29;
  }

LABEL_27:
  v104 = 1;
  v105 = v210;
  v107 = v207;
  v106 = v208;
LABEL_30:
  (*(v107 + 56))(v105, v104, 1, v106);
  v155 = v214;
  sub_10001F620(v216, v214, &qword_1003B16C8);
  v156 = v215;
  v157 = v206;
  sub_10001F620(v215, v206, &qword_1003B16B8);
  v158 = v209;
  sub_10001F620(v217, v209, &qword_1003B1698);
  v159 = v211;
  sub_10001F620(v105, v211, &qword_1003B1688);
  v160 = v155;
  v161 = v105;
  v162 = v212;
  sub_10001F620(v160, v212, &qword_1003B16C8);
  v163 = sub_100005AD4(&qword_1003B16D8);
  sub_10001F620(v157, v162 + v163[12], &qword_1003B16B8);
  v164 = v162 + v163[16];
  *v164 = 0;
  *(v164 + 8) = 1;
  sub_10001F620(v158, v162 + v163[20], &qword_1003B1698);
  sub_10001F620(v159, v162 + v163[24], &qword_1003B1688);
  sub_100009EBC(v161, &qword_1003B1688);
  sub_100009EBC(v217, &qword_1003B1698);
  sub_100009EBC(v156, &qword_1003B16B8);
  sub_100009EBC(v216, &qword_1003B16C8);
  sub_100009EBC(v159, &qword_1003B1688);
  sub_100009EBC(v158, &qword_1003B1698);
  sub_100009EBC(v157, &qword_1003B16B8);
  return sub_100009EBC(v214, &qword_1003B16C8);
}

double sub_10011A1B8()
{
  v0 = type metadata accessor for GlobalCoordinateSpace();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  return v7 + CGRectGetHeight(v14);
}

uint64_t sub_10011A2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_100005AD4(&qword_1003ABBA0);
  __chkstk_darwin(v3 - 8);
  v33 = &v32 - v4;
  v5 = type metadata accessor for ImageTranslationView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v9 = sub_100005AD4(&qword_1003ABB98);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  sub_10011C7A0(a1, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_10011FFFC(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ImageTranslationView);
  sub_10011C7A0(a1, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  v17 = v33;
  sub_10011FFFC(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13, type metadata accessor for ImageTranslationView);
  type metadata accessor for LanguageOption();
  Binding.init(get:set:)();
  type metadata accessor for ConversationManager();
  sub_100121CCC(&qword_1003B1368, type metadata accessor for ConversationManager);
  v18 = EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  LOBYTE(v36) = 0;
  static Binding.constant(_:)();
  v19 = v39;
  v20 = v40;
  v21 = v41;
  v35 = 0;
  static Binding.constant(_:)();
  if (*(a1 + *(v6 + 68)))
  {
    v22 = v38;
    v24 = v36;
    v23 = v37;
    v25 = v34;
    sub_100023BD4(v11, v34, &qword_1003ABB98);
    v26 = type metadata accessor for CombinedLanguagePickerPill();
    sub_100023BD4(v17, v25 + v26[5], &qword_1003ABBA0);
    v27 = v25 + v26[6];
    *v27 = v19;
    *(v27 + 8) = v20;
    *(v27 + 16) = v21;
    v28 = v25 + v26[7];
    *v28 = v24;
    *(v28 + 8) = v23;
    *(v28 + 16) = v22;
    *(v25 + v26[8]) = 0;
    *(v25 + v26[9]) = 1;
    v29 = (v25 + v26[10]);
    type metadata accessor for LanguagesService();
    sub_100121CCC(&unk_1003ABC30, &type metadata accessor for LanguagesService);

    result = ObservedObject.init(wrappedValue:)();
    *v29 = result;
    v29[1] = v31;
  }

  else
  {
    type metadata accessor for ConversationContext(0);
    sub_100121CCC(&unk_1003BC490, type metadata accessor for ConversationContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10011A79C@<X0>(char *a1@<X8>)
{
  v2 = sub_100005AD4(&qword_1003B1528);
  v3 = __chkstk_darwin(v2 - 8);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = sub_100005AD4(&qword_1003B1530);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v28 - v15;
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  sub_10011625C(&v28 - v17);
  sub_1001168E8(v16);
  v29 = v6;
  sub_10011706C(v6);
  v19 = *(v8 + 16);
  v20 = v13;
  v30 = v13;
  v19(v13, v18, v7);
  v21 = v28;
  v19(v28, v16, v7);
  sub_10001F620(v6, v31, &qword_1003B1528);
  v19(a1, v20, v7);
  v22 = sub_100005AD4(&qword_1003B1798);
  v23 = &a1[v22[12]];
  *v23 = 0;
  v23[8] = 1;
  v19(&a1[v22[16]], v21, v7);
  v24 = &a1[v22[20]];
  *v24 = 0;
  v24[8] = 1;
  v25 = v31;
  sub_10001F620(v31, &a1[v22[24]], &qword_1003B1528);
  sub_100009EBC(v29, &qword_1003B1528);
  v26 = *(v8 + 8);
  v26(v16, v7);
  v26(v18, v7);
  sub_100009EBC(v25, &qword_1003B1528);
  v26(v21, v7);
  return (v26)(v30, v7);
}

double sub_10011AAD0()
{
  v0 = type metadata accessor for GlobalCoordinateSpace();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_10011ABB8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ImagePicker(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ImageTranslationView();
  type metadata accessor for ConversationContext(0);
  sub_100121CCC(&unk_1003BC490, type metadata accessor for ConversationContext);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v14[0] = v14[1];
  v6 = v15;
  v7 = v16;
  *v5 = swift_getKeyPath();
  sub_100005AD4(&unk_1003B1290);
  swift_storeEnumTagMultiPayload();
  v8 = v5 + *(v3 + 28);
  *v8 = v14[0];
  *(v8 + 2) = v6;
  v8[24] = v7;
  v9 = static SafeAreaRegions.container.getter();
  v10 = static SafeAreaRegions.keyboard.getter();
  if (v9)
  {
    if ((v10 & ~v9) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v10)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v9 |= v10;
LABEL_7:
  v11 = static Edge.Set.all.getter();
  sub_10011FFFC(v5, a1, type metadata accessor for ImagePicker);
  result = sub_100005AD4(&qword_1003B14D0);
  v13 = a1 + *(result + 36);
  *v13 = v9;
  *(v13 + 8) = v11;
  return result;
}

uint64_t sub_10011ADB8()
{
  type metadata accessor for ImageTranslationView();
  type metadata accessor for VisualTranslationObservable();
  sub_100121CCC(&unk_1003B1390, &type metadata accessor for VisualTranslationObservable);
  StateObject.wrappedValue.getter();
  dispatch thunk of VisualTranslationObservable.removeAll()();
}

uint64_t sub_10011AE6C()
{
  type metadata accessor for ImageTranslationView();
  sub_100005AD4(&qword_1003AC8F8);
  return State.wrappedValue.setter();
}

uint64_t sub_10011AEE0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10011AF20()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_10011AF90(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AAE10);
  v3 = __chkstk_darwin(v2 - 8);
  v29 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = v24 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v24 - v11;
  v13 = *(type metadata accessor for ImageTranslationView() + 44);
  v14 = sub_100005AD4(&qword_1003B12E0);
  State.wrappedValue.getter();
  Date.timeIntervalSinceNow.getter();
  v16 = v15;
  v17 = *(v7 + 8);
  result = v17(v12, v6);
  if (v16 <= -*(a1 + 96))
  {
    v27 = v17;
    if (sub_100113CB0())
    {
      sub_100113834(1);
      v24[2] = v14;
      type metadata accessor for ConversationContext(0);
      v25 = v10;
      sub_100121CCC(&unk_1003BC490, type metadata accessor for ConversationContext);
      v24[3] = v13;
      EnvironmentObject.projectedValue.getter();
      swift_getKeyPath();
      EnvironmentObject.Wrapper.subscript.getter();

      v19 = v38;
      v26 = v7;
      v20 = v39;
      v32 = v36;
      v33 = v37;
      v34 = v38;
      v35 = v39;
      v30 = 0;
      v31 = -1;
      sub_100005AD4(&qword_1003B12A0);
      Binding.wrappedValue.setter();

      sub_10011C8FC(v19, v20);
      type metadata accessor for CameraConfiguration(0);
      sub_100121CCC(&qword_1003B1378, type metadata accessor for CameraConfiguration);
      v24[1] = StateObject.wrappedValue.getter();
      v21 = type metadata accessor for CameraConfiguration.StaticImage(0);
      v22 = v28;
      (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10001F620(v22, v29, &qword_1003AAE10);
      v10 = v25;
      v7 = v26;
      static Published.subscript.setter();
      sub_100009EBC(v22, &qword_1003AAE10);
      v23 = *(a1 + 56);
      LOBYTE(v36) = *(a1 + 48);
      v37 = v23;
      LOBYTE(v32) = 0;
      sub_100005AD4(&qword_1003AC8F8);
      State.wrappedValue.setter();
    }

    else
    {
      sub_100113834(0);
    }

    static Date.now.getter();
    (*(v7 + 16))(v10, v12, v6);
    State.wrappedValue.setter();
    return v27(v12, v6);
  }

  return result;
}

uint64_t sub_10011B440@<X0>(uint64_t *a1@<X8>)
{
  sub_100113CB0();
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10011B498()
{
  sub_100113CB0();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100113CB0();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_10011B574@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for VisualTranslationOptions();
  __chkstk_darwin(v9);
  v10 = a1;
  v21 = Image.init(uiImage:)();
  sub_100005AD4(&qword_1003B18C0);
  *(swift_allocObject() + 16) = xmmword_1002D3160;

  static VisualTranslationOptions.backgroundRendering.getter();
  sub_100121CCC(&qword_1003B18C8, &type metadata accessor for VisualTranslationOptions);
  sub_100005AD4(&unk_1003BA7D0);
  sub_10001BAEC(&qword_1003B18D0, &unk_1003BA7D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v12 = a5 + *(sub_100005AD4(&qword_1003B18D8) + 36);
  v13 = a3;
  v14 = v10;

  VisualTranslationView.init(observable:options:systemTranslationDismissHandler:)();
  v15 = static Alignment.center.getter();
  v17 = v16;
  result = sub_100005AD4(&qword_1003B18E0);
  v19 = &v12[*(result + 36)];
  *v19 = v15;
  v19[1] = v17;
  *a5 = v21;
  return result;
}

void sub_10011B7FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    sub_1000FF6CC();
  }

  else
  {
    type metadata accessor for FavoritesImporter();
    sub_100121CCC(&qword_1003B1508, type metadata accessor for FavoritesImporter);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10011B8B0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UTType();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100005AD4(&qword_1003B1878);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  static UTType.png.getter();
  sub_100121860();
  DataRepresentation.init(exportedContentType:exporting:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10001BAEC(&qword_1003B1888, &qword_1003B1878);
  TransferRepresentation.suggestedFileName(_:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10011BB68()
{
  v1 = v0[6];
  type metadata accessor for FavoritesImporter();
  sub_100121CCC(&qword_1003B1508, type metadata accessor for FavoritesImporter);
  v2 = v1;

  v0[8] = EnvironmentObject.init()();
  v0[9] = v3;
  v0[10] = type metadata accessor for MainActor();
  v0[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011BC6C, v5, v4);
}

uint64_t sub_10011BC6C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);

  *(v0 + 16) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_100005AD4(&qword_1003B1890);
  swift_allocObject();
  *(v0 + 96) = ImageRenderer.init(content:)();

  return _swift_task_switch(sub_10011BD2C, 0, 0);
}

uint64_t sub_10011BD2C()
{
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011BDB8, v2, v1);
}

uint64_t sub_10011BDB8()
{

  *(v0 + 112) = ImageRenderer.uiImage.getter();

  return _swift_task_switch(sub_10011BE28, 0, 0);
}

uint64_t sub_10011BE28()
{
  v1 = *(v0 + 112);
  if (v1 && (v2 = UIImagePNGRepresentation(*(v0 + 112)), v1, v2))
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2758);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to create image data for sharing", v11, 2u);
    }

    v7 = 0;
    v6 = 0xC000000000000000;
  }

  v12 = *(v0 + 8);

  return v12(v7, v6);
}

uint64_t sub_10011BFA8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10011BFE8()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_10011C058@<X0>(uint64_t *a1@<X8>)
{
  sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.getter();
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10011C0EC()
{
  LocalizedStringKey.init(stringLiteral:)();
  sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.getter();
  return Label<>.init(_:systemImage:)();
}

uint64_t sub_10011C1DC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  LOBYTE(v36) = 0;
  State.init(wrappedValue:)();
  v9 = v38;
  *a1 = v37;
  *(a1 + 8) = v9;
  LOBYTE(v36) = 0;
  State.init(wrappedValue:)();
  v10 = v38;
  *(a1 + 16) = v37;
  *(a1 + 24) = v10;
  if (qword_1003A91F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for GuidanceModel();
  sub_100121CCC(&qword_1003B1358, type metadata accessor for GuidanceModel);

  *(a1 + 32) = ObservedObject.init(wrappedValue:)();
  *(a1 + 40) = v11;
  LOBYTE(v36) = 0;
  State.init(wrappedValue:)();
  v12 = v38;
  *(a1 + 48) = v37;
  *(a1 + 56) = v12;
  LOBYTE(v36) = 0;
  State.init(wrappedValue:)();
  v13 = v38;
  *(a1 + 64) = v37;
  *(a1 + 72) = v13;
  LOBYTE(v36) = 0;
  State.init(wrappedValue:)();
  v14 = v38;
  *(a1 + 80) = v37;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0x3FB999999999999ALL;
  v15 = type metadata accessor for ImageTranslationView();
  static Date.distantPast.getter();
  (*(v3 + 16))(v6, v8, v2);
  State.init(wrappedValue:)();
  (*(v3 + 8))(v8, v2);
  v16 = (a1 + v15[12]);
  v36 = 0;
  State.init(wrappedValue:)();
  v17 = v38;
  *v16 = v37;
  v16[1] = v17;
  v18 = (a1 + v15[13]);
  v36 = 0;
  State.init(wrappedValue:)();
  v19 = v38;
  *v18 = v37;
  v18[1] = v19;
  v20 = (a1 + v15[14]);
  type metadata accessor for ConversationManager();
  sub_100121CCC(&qword_1003B1368, type metadata accessor for ConversationManager);
  *v20 = EnvironmentObject.init()();
  v20[1] = v21;
  v22 = (a1 + v15[15]);
  type metadata accessor for ConversationContext(0);
  sub_100121CCC(&unk_1003BC490, type metadata accessor for ConversationContext);
  *v22 = EnvironmentObject.init()();
  v22[1] = v23;
  v24 = v15[16];
  *(a1 + v24) = swift_getKeyPath();
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  v25 = a1 + v15[17];
  *v25 = sub_100113808;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  v26 = (a1 + v15[18]);
  type metadata accessor for SELFLoggingInvocationWrapper(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_parameters;
  v29 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  UUID.init()();
  *(v27 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics) = 0;
  *(v27 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_tabName) = 2;
  v36 = v27;
  State.init(wrappedValue:)();
  v30 = v38;
  *v26 = v37;
  v26[1] = v30;
  v31 = a1 + v15[19];
  LOBYTE(v36) = 0;
  result = State.init(wrappedValue:)();
  v33 = v38;
  *v31 = v37;
  *(v31 + 8) = v33;
  v34 = a1 + v15[20];
  *v34 = sub_100114318;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  return result;
}

unint64_t sub_10011C6EC()
{
  result = qword_1003B1400;
  if (!qword_1003B1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1400);
  }

  return result;
}

unint64_t sub_10011C748()
{
  result = qword_1003B1428;
  if (!qword_1003B1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1428);
  }

  return result;
}

uint64_t sub_10011C7A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageTranslationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011C824()
{
  result = qword_1003B1438;
  if (!qword_1003B1438)
  {
    sub_100005EA8(&qword_1003ADCD8);
    sub_10011C8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1438);
  }

  return result;
}

unint64_t sub_10011C8A8()
{
  result = qword_1003B1440;
  if (!qword_1003B1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1440);
  }

  return result;
}

void sub_10011C8FC(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

id sub_10011C910(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

unint64_t sub_10011C94C()
{
  result = qword_1003B1488;
  if (!qword_1003B1488)
  {
    sub_100005EA8(&qword_1003B1478);
    sub_10011C9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1488);
  }

  return result;
}

unint64_t sub_10011C9D8()
{
  result = qword_1003B1490;
  if (!qword_1003B1490)
  {
    sub_100005EA8(&qword_1003B1498);
    sub_10011CA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1490);
  }

  return result;
}

unint64_t sub_10011CA64()
{
  result = qword_1003B14A0;
  if (!qword_1003B14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B14A0);
  }

  return result;
}

unint64_t sub_10011CAB8()
{
  result = qword_1003B14A8;
  if (!qword_1003B14A8)
  {
    sub_100005EA8(&qword_1003B1480);
    sub_10011CB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B14A8);
  }

  return result;
}

unint64_t sub_10011CB44()
{
  result = qword_1003B14B0;
  if (!qword_1003B14B0)
  {
    sub_100005EA8(&qword_1003B14B8);
    sub_10011CBD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B14B0);
  }

  return result;
}

unint64_t sub_10011CBD0()
{
  result = qword_1003B14C0;
  if (!qword_1003B14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B14C0);
  }

  return result;
}

uint64_t sub_10011CC24@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ImageTranslationView();

  return sub_10011ABB8(a1);
}

unint64_t sub_10011CC94()
{
  result = qword_1003B14D8;
  if (!qword_1003B14D8)
  {
    sub_100005EA8(&qword_1003B1448);
    sub_10001BAEC(&qword_1003B14E0, &qword_1003B14E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B14D8);
  }

  return result;
}

unint64_t sub_10011CD4C()
{
  result = qword_1003B14F0;
  if (!qword_1003B14F0)
  {
    sub_100005EA8(&qword_1003B14D0);
    sub_100121CCC(&qword_1003B1288, type metadata accessor for ImagePicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B14F0);
  }

  return result;
}

uint64_t sub_10011CE40()
{
  v1 = v0;
  v19 = type metadata accessor for UTType();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005AD4(&qword_1003B1420);
  v5 = swift_allocObject();
  v20 = xmmword_1002D3160;
  *(v5 + 16) = xmmword_1002D3160;
  static UTType.image.getter();
  v6 = DropInfo.hasItemsConforming(to:)(v5);

  if (!v6)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v20;
  static UTType.image.getter();
  v7 = DropInfo.itemProviders(for:)();

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_7:
    v10 = v9;

    static UTType.image.getter();
    UTType.identifier.getter();
    (*(v2 + 8))(v4, v19);
    v11 = String._bridgeToObjectiveC()();

    v12 = *v1;
    v13 = v1[2];
    v25 = *(v1 + 24);
    v26 = v12;
    v23 = v1[4];
    v24 = v13;
    v14 = swift_allocObject();
    v15 = *(v1 + 1);
    *(v14 + 16) = *v1;
    *(v14 + 32) = v15;
    *(v14 + 48) = *(v1 + 2);
    *(v14 + 64) = *(v1 + 48);
    aBlock[4] = sub_1001214EC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011D5F4;
    aBlock[3] = &unk_1003852A8;
    v16 = _Block_copy(aBlock);
    sub_100021C2C(&v26, v21);

    sub_10001F620(&v24, v21, &qword_1003ADCD8);
    sub_100021C2C(&v23, v21);

    v17 = [v10 loadDataRepresentationForTypeIdentifier:v11 completionHandler:v16];

    _Block_release(v16);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D1A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    v24 = v13;
    v25 = result;
    sub_100026AA0();
    v23 = v8;
    sub_100112C80(a1, a2);
    v22 = static OS_dispatch_queue.main.getter();
    v16 = *a4;
    v17 = a4[2];
    v30 = *(a4 + 24);
    v31 = v16;
    v28 = a4[4];
    v29 = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = *(a4 + 1);
    *(v18 + 32) = *a4;
    *(v18 + 48) = v19;
    *(v18 + 64) = *(a4 + 2);
    *(v18 + 80) = *(a4 + 48);
    aBlock[4] = sub_100121560;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100096948;
    aBlock[3] = &unk_1003852F8;
    v20 = _Block_copy(aBlock);
    sub_10012156C(a1, a2);
    sub_100021C2C(&v31, v26);

    sub_10001F620(&v29, v26, &qword_1003ADCD8);
    sub_100021C2C(&v28, v26);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100121CCC(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    sub_100112CD4(a1, a2);
    (*(v23 + 8))(v10, v7);
    return (*(v24 + 8))(v15, v25);
  }

  return result;
}

void sub_10011D53C()
{
  v0 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = [v0 initWithData:isa];

  if (v2)
  {
    sub_100005AD4(&qword_1003B12A0);
    Binding.wrappedValue.setter();
  }
}

uint64_t sub_10011D5F4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100112CD4(v4, v8);
}

BOOL sub_10011D6A0()
{
  sub_100005AD4(&qword_1003BA760);
  Binding.wrappedValue.getter();
  if (v3)
  {
    return 0;
  }

  else
  {
    sub_100005AD4(&qword_1003B1420);
    type metadata accessor for UTType();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1002D3160;
    static UTType.image.getter();
    v0 = DropInfo.hasItemsConforming(to:)(v1);
  }

  return v0;
}

uint64_t sub_10011D7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for TitleOnlyLabelStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B17E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v44 = a1;
  sub_100005AD4(&qword_1003B17E8);
  sub_10011F8C0(&qword_1003B17F0, &qword_1003B17E8, &unk_1002DEBC0, sub_100121588);
  Label.init(title:icon:)();
  TitleOnlyLabelStyle.init()();
  sub_10001BAEC(&qword_1003B1840, &qword_1003B17E0);
  sub_100121CCC(&qword_1003B1848, &type metadata accessor for TitleOnlyLabelStyle);
  v11 = v43;
  View.labelStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  LOBYTE(v10) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v11 + *(sub_100005AD4(&qword_1003B1850) + 36);
  *v20 = v10;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  LOBYTE(v10) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v11 + *(sub_100005AD4(&qword_1003B1858) + 36);
  *v29 = v10;
  *(v29 + 8) = v22;
  *(v29 + 16) = v24;
  *(v29 + 24) = v26;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  static Color.black.getter();
  v30 = Color.opacity(_:)();

  LOBYTE(v10) = static Edge.Set.all.getter();
  v31 = v11 + *(sub_100005AD4(&qword_1003B1860) + 36);
  *v31 = v30;
  *(v31 + 8) = v10;
  v32 = (v11 + *(sub_100005AD4(&qword_1003B1868) + 36));
  v33 = *(type metadata accessor for RoundedRectangle() + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #2.0 }

  *v32 = _Q0;
  result = sub_100005AD4(&qword_1003AC978);
  *&v32[*(result + 36)] = 256;
  return result;
}

uint64_t sub_10011DBF8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v28 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100005AD4(&qword_1003AB5F8);
  __chkstk_darwin(v26);
  v5 = &v24 - v4;
  v6 = sub_100005AD4(&qword_1003B1818);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_100005AD4(&qword_1003B1800);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v27 = sub_100005AD4(&qword_1003B17E8);
  __chkstk_darwin(v27);
  v13 = &v24 - v12;
  LabelStyleConfiguration.title.getter();
  v14 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v16 = &v8[*(v6 + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = enum case for DynamicTypeSize.accessibility1(_:);
  v18 = type metadata accessor for DynamicTypeSize();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  sub_100121CCC(&qword_1003AB628, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100121768();
    v25 = v1;
    sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8);
    View.dynamicTypeSize<A>(_:)();
    sub_100009EBC(v5, &qword_1003AB5F8);
    sub_100009EBC(v8, &qword_1003B1818);
    v20 = swift_getKeyPath();
    v21 = &v11[*(sub_100005AD4(&qword_1003B1810) + 36)];
    *v21 = v20;
    v21[8] = 1;
    static Color.black.getter();
    v22 = Color.opacity(_:)();

    v23 = &v11[*(v9 + 36)];
    *v23 = v22;
    v23[1] = 0x4008000000000000;
    sub_100121588();
    v23[2] = 0;
    v23[3] = 0;
    View.accessibilityIdentifier(_:)();
    sub_100009EBC(v11, &qword_1003B1800);
    static AccessibilityTraits.updatesFrequently.getter();
    ModifiedContent<>.accessibility(addTraits:)();
    (*(v28 + 8))(v3, v25);
    return sub_100009EBC(v13, &qword_1003B17E8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10011E07C(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AAE10);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10001F620(a1, &v9 - v6, &qword_1003AAE10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001F620(v7, v5, &qword_1003AAE10);

  static Published.subscript.setter();
  return sub_100009EBC(v7, &qword_1003AAE10);
}

uint64_t sub_10011E1AC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10011E22C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10011E2DC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v21 = a7;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = *(v10 + 16);
  v16(&v20 - v14, a1, v9);
  v17 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v16(v13, v15, v9);
  v17;
  v18 = static Published.subscript.setter();
  v21(v18);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_10011E464@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10011E4E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10011E558@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10011E588@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10011E644()
{
  result = qword_1003B15B0;
  if (!qword_1003B15B0)
  {
    sub_100005EA8(&qword_1003B15A8);
    sub_10001BAEC(&qword_1003B15B8, &qword_1003B15C0);
    sub_10001BAEC(&qword_1003B15C8, &qword_1003B15D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B15B0);
  }

  return result;
}

unint64_t sub_10011E728()
{
  result = qword_1003B15D8;
  if (!qword_1003B15D8)
  {
    sub_100005EA8(&qword_1003B1548);
    sub_10011F8C0(&qword_1003B15E0, &qword_1003B1540, &unk_1002DE610, sub_10011E644);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B15D8);
  }

  return result;
}

unint64_t sub_10011E7E8()
{
  result = qword_1003B15E8;
  if (!qword_1003B15E8)
  {
    sub_100005EA8(&qword_1003B1590);
    sub_10011F8C0(&qword_1003B15F0, &qword_1003B1588, &unk_1002DE658, sub_10011E8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B15E8);
  }

  return result;
}

unint64_t sub_10011E8A0()
{
  result = qword_1003B15F8;
  if (!qword_1003B15F8)
  {
    sub_100005EA8(&qword_1003B1580);
    sub_100005EA8(&qword_1003B1570);
    sub_10001BAEC(&qword_1003B1600, &qword_1003B1570);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003B15C8, &qword_1003B15D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B15F8);
  }

  return result;
}

unint64_t sub_10011E9C8()
{
  result = qword_1003B1608;
  if (!qword_1003B1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1608);
  }

  return result;
}

void *sub_10011EA1C(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100005AD4(&qword_1003B17B8);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100121CCC(&qword_1003AED28, &type metadata accessor for Locale);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100121CCC(&unk_1003B06F0, &type metadata accessor for Locale);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10011ED3C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100005AD4(&qword_1003B17A0);
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
    sub_100121CCC(&qword_1003AC750, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_100121CCC(&qword_1003B17A8, &type metadata accessor for AnyCancellable);
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

Swift::Int sub_10011EFD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100005AD4(&qword_1003B17D8);
  v3 = static _SetStorage.allocate(capacity:)();
  v4 = 0;
  v36 = v1;
  v37 = a1 + 32;
  while (2)
  {
    v5 = (v37 + 16 * v4);
    v6 = *v5;
    v7 = v5[1];
    Hasher.init(_seed:)();
    v39 = v7;
    if (v6 <= 1)
    {
      if (!v6)
      {
        v8 = 1;
        goto LABEL_16;
      }

      if (v6 == 1)
      {
        v8 = 2;
        goto LABEL_16;
      }

LABEL_45:
      ObjectType = swift_getObjectType();
      v34 = *(v39 + 24);
      swift_unknownObjectRetain();
      v35 = ObjectType;
      v7 = v39;
      v34(v35, v39);
      String.hash(into:)();

      goto LABEL_17;
    }

    if (v6 == 2)
    {
      v8 = 3;
      goto LABEL_16;
    }

    if (v6 == 3)
    {
      v8 = 4;
      goto LABEL_16;
    }

    if (v6 != 4)
    {
      goto LABEL_45;
    }

    v8 = 5;
LABEL_16:
    Hasher._combine(_:)(v8);
LABEL_17:
    result = Hasher._finalize()();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = v3 + 56;
    v14 = *(v3 + 56 + 8 * (v11 >> 6));
    v15 = 1 << v11;
    if (((1 << v11) & v14) == 0)
    {
      goto LABEL_43;
    }

    v16 = ~v10;
    v38 = v4;
    do
    {
      v17 = (*(v3 + 48) + 16 * v11);
      v18 = *v17;
      v19 = v17[1];
      if (*v17 <= 1)
      {
        if (!v18)
        {
          if (!v6)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }

        if (v18 == 1)
        {
          if (v6 == 1)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }
      }

      else
      {
        switch(v18)
        {
          case 2uLL:
            if (v6 == 2)
            {
              goto LABEL_4;
            }

            goto LABEL_20;
          case 3uLL:
            if (v6 == 3)
            {
              goto LABEL_4;
            }

            goto LABEL_20;
          case 4uLL:
            if (v6 == 4)
            {
              goto LABEL_4;
            }

            goto LABEL_20;
        }
      }

      if (v6 >= 5)
      {
        v20 = swift_getObjectType();
        v21 = *(v19 + 24);
        swift_unknownObjectRetain();
        v22 = v21(v20, v19);
        v24 = v23;
        v25 = swift_getObjectType();
        if (v22 == (*(v39 + 24))(v25) && v24 == v26)
        {
          sub_1000950E0(v18);

          sub_1000950E0(v6);
          v1 = v36;
          v4 = v38;
          goto LABEL_4;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000950E0(v18);

        v1 = v36;
        v4 = v38;
        v13 = v3 + 56;
        if (v28)
        {
          sub_1000950E0(v6);
          goto LABEL_4;
        }
      }

LABEL_20:
      v11 = (v11 + 1) & v16;
      v12 = v11 >> 6;
      v14 = *(v13 + 8 * (v11 >> 6));
      v15 = 1 << v11;
    }

    while ((v14 & (1 << v11)) != 0);
    v7 = v39;
LABEL_43:
    *(v13 + 8 * v12) = v14 | v15;
    v29 = (*(v3 + 48) + 16 * v11);
    *v29 = v6;
    v29[1] = v7;
    v30 = *(v3 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      *(v3 + 16) = v32;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

void *sub_10011F350(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100005AD4(&qword_1003B1618);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100121CCC(&qword_1003B1620, &type metadata accessor for PresentationDetent);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100121CCC(&qword_1003B1628, &type metadata accessor for PresentationDetent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10011F6A0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ImageTranslationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10011F724()
{
  result = qword_1003B1650;
  if (!qword_1003B1650)
  {
    sub_100005EA8(&qword_1003B1648);
    sub_10001BAEC(&qword_1003B1658, &qword_1003B1660);
    sub_10001BAEC(&qword_1003B15C8, &qword_1003B15D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1650);
  }

  return result;
}

unint64_t sub_10011F808()
{
  result = qword_1003B1668;
  if (!qword_1003B1668)
  {
    sub_100005EA8(&qword_1003B1638);
    sub_10011F8C0(&qword_1003B1670, &qword_1003B1630, &unk_1002DE6D8, sub_10011F724);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1668);
  }

  return result;
}

uint64_t sub_10011F8C0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    a4();
    sub_100121CCC(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011F9A8()
{
  v1 = type metadata accessor for ImageTranslationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[11];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_100005AD4(&qword_1003B12E0);

  v8 = v1[16];
  sub_100005AD4(&qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  sub_10011C804();

  sub_10011C804();

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_10011FC3C()
{
  v1 = *(type metadata accessor for ImageTranslationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100113BC4(v2);
}

uint64_t sub_10011FCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10011FCDC()
{
  v1 = type metadata accessor for ImageTranslationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[11];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_100005AD4(&qword_1003B12E0);

  v8 = v1[16];
  sub_100005AD4(&qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  sub_10011C804();

  sub_10011C804();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10011FF84(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ImageTranslationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10011FFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10012006C()
{
  result = qword_1003B16D0;
  if (!qword_1003B16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B16D0);
  }

  return result;
}

unint64_t sub_1001200C0()
{
  result = qword_1003B1710;
  if (!qword_1003B1710)
  {
    sub_100005EA8(&qword_1003B1678);
    sub_10012014C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1710);
  }

  return result;
}

unint64_t sub_10012014C()
{
  result = qword_1003B1718;
  if (!qword_1003B1718)
  {
    sub_100005EA8(&qword_1003B1708);
    sub_100120204();
    sub_10001BAEC(&qword_1003B1750, &qword_1003B1758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1718);
  }

  return result;
}

unint64_t sub_100120204()
{
  result = qword_1003B1720;
  if (!qword_1003B1720)
  {
    sub_100005EA8(&qword_1003B1700);
    sub_100120290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1720);
  }

  return result;
}

unint64_t sub_100120290()
{
  result = qword_1003B1728;
  if (!qword_1003B1728)
  {
    sub_100005EA8(&qword_1003B16F8);
    sub_10012031C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1728);
  }

  return result;
}

unint64_t sub_10012031C()
{
  result = qword_1003B1730;
  if (!qword_1003B1730)
  {
    sub_100005EA8(&qword_1003B16F0);
    sub_1001203A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1730);
  }

  return result;
}

unint64_t sub_1001203A8()
{
  result = qword_1003B1738;
  if (!qword_1003B1738)
  {
    sub_100005EA8(&qword_1003B16E8);
    sub_10001BAEC(&qword_1003B1740, &qword_1003B1748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1738);
  }

  return result;
}

unint64_t sub_100120468()
{
  result = qword_1003B1770;
  if (!qword_1003B1770)
  {
    sub_100005EA8(&qword_1003B1768);
    sub_100120520();
    sub_10001BAEC(&qword_1003B1750, &qword_1003B1758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1770);
  }

  return result;
}

unint64_t sub_100120520()
{
  result = qword_1003B1778;
  if (!qword_1003B1778)
  {
    sub_100005EA8(&qword_1003B1780);
    sub_10001BAEC(&qword_1003B1788, &qword_1003B1790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1778);
  }

  return result;
}

uint64_t sub_1001205DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageTranslationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100113F14(v4, a1);
}

uint64_t sub_100120650()
{
  v1 = type metadata accessor for ImageTranslationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[11];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_100005AD4(&qword_1003B12E0);

  v8 = v1[16];
  sub_100005AD4(&qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  sub_10011C804();

  sub_10011C804();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001208E8(uint64_t a1)
{
  v3 = *(type metadata accessor for ImageTranslationView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100114054(a1, v4, v5, v6);
}

void *sub_100120A24(uint64_t a1)
{
  v2 = type metadata accessor for DataScannerViewController.RecognizedDataType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100005AD4(&qword_1003B17C0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100121CCC(&qword_1003B17C8, &type metadata accessor for DataScannerViewController.RecognizedDataType);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100121CCC(&qword_1003B17D0, &type metadata accessor for DataScannerViewController.RecognizedDataType);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_100120D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100005AD4(&qword_1003B1870);
  v3 = static _SetStorage.allocate(capacity:)();
  v4 = 0;
  v5 = v3 + 56;
  v23 = a1 + 32;
  while (1)
  {
    v6 = (v23 + 16 * v4);
    v7 = *v6;
    v8 = v6[1];
    Hasher.init(_seed:)();
    if (v8 > 2)
    {
      if (v8 != 3 && v8 != 4 && v8 != 5)
      {
LABEL_13:

        String.hash(into:)();
      }
    }

    else if (v8 > 2)
    {
      goto LABEL_13;
    }

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << *(v3 + 32));
    v11 = result & v10;
    v12 = (result & v10) >> 6;
    v13 = *(v5 + 8 * v12);
    v14 = 1 << (result & v10);
    v15 = *(v3 + 48);
    if ((v14 & v13) != 0)
    {
      while (1)
      {
        v16 = (v15 + 16 * v11);
        result = *v16;
        v17 = v16[1];
        if (v17 > 2)
        {
          switch(v17)
          {
            case 3:
              if (v8 == 3)
              {
                goto LABEL_4;
              }

              break;
            case 4:
              if (v8 == 4)
              {
                goto LABEL_4;
              }

              break;
            case 5:
              if (v8 == 5)
              {
                goto LABEL_4;
              }

              break;
            default:
LABEL_31:
              if (v8 >= 6)
              {
                v18 = result == v7 && v17 == v8;
                if (v18 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                {
                  sub_10000A958(v7, v8);
                  goto LABEL_4;
                }
              }

              break;
          }
        }

        else if (v17)
        {
          if (v17 == 1)
          {
            if (v8 == 1)
            {
              goto LABEL_4;
            }
          }

          else
          {
            if (v17 != 2)
            {
              goto LABEL_31;
            }

            if (v8 == 2)
            {
              goto LABEL_4;
            }
          }
        }

        else if (!v8)
        {
          goto LABEL_4;
        }

        v11 = (v11 + 1) & v10;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if ((v13 & (1 << v11)) == 0)
        {
          v15 = *(v3 + 48);
          break;
        }
      }
    }

    *(v5 + 8 * v12) = v13 | v14;
    v19 = (v15 + 16 * v11);
    *v19 = v7;
    v19[1] = v8;
    v20 = *(v3 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      break;
    }

    *(v3 + 16) = v22;
LABEL_4:
    if (++v4 == v1)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

void *sub_100121058(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005AD4(&qword_1003B17B0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100121258(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10012126C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100121288(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1001212D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100121350()
{
  sub_100005EA8(&qword_1003B1410);
  sub_100005EA8(&qword_1003ADCD8);
  sub_100005EA8(&qword_1003B1408);
  sub_10001BAEC(&qword_1003B1430, &qword_1003B1408);
  swift_getOpaqueTypeConformance2();
  sub_10011C824();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100121488()
{

  if (*(v0 + 40) != 255)
  {
  }

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1001214F4()
{
  sub_100112CE8(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 56) != 255)
  {
  }

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10012156C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100112C80(a1, a2);
  }

  return a1;
}

unint64_t sub_100121588()
{
  result = qword_1003B17F8;
  if (!qword_1003B17F8)
  {
    sub_100005EA8(&qword_1003B1800);
    sub_100121614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B17F8);
  }

  return result;
}

unint64_t sub_100121614()
{
  result = qword_1003B1808;
  if (!qword_1003B1808)
  {
    sub_100005EA8(&qword_1003B1810);
    sub_100005EA8(&qword_1003B1818);
    sub_100005EA8(&qword_1003AB5F8);
    sub_100121768();
    sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003B1830, &qword_1003B1838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1808);
  }

  return result;
}

unint64_t sub_100121768()
{
  result = qword_1003B1820;
  if (!qword_1003B1820)
  {
    sub_100005EA8(&qword_1003B1818);
    sub_100121CCC(&qword_1003B1828, &type metadata accessor for LabelStyleConfiguration.Title);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1820);
  }

  return result;
}

unint64_t sub_100121860()
{
  result = qword_1003B1880;
  if (!qword_1003B1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1880);
  }

  return result;
}

unint64_t sub_1001218C8()
{
  result = qword_1003B1898;
  if (!qword_1003B1898)
  {
    sub_100005EA8(&qword_1003B1868);
    sub_100121980();
    sub_10001BAEC(&qword_1003B18B8, &qword_1003AC978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1898);
  }

  return result;
}

unint64_t sub_100121980()
{
  result = qword_1003B18A0;
  if (!qword_1003B18A0)
  {
    sub_100005EA8(&qword_1003B1860);
    sub_100121A38();
    sub_10001BAEC(&qword_1003ADB10, &qword_1003ADB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B18A0);
  }

  return result;
}

unint64_t sub_100121A38()
{
  result = qword_1003B18A8;
  if (!qword_1003B18A8)
  {
    sub_100005EA8(&qword_1003B1858);
    sub_100121AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B18A8);
  }

  return result;
}

unint64_t sub_100121AC4()
{
  result = qword_1003B18B0;
  if (!qword_1003B18B0)
  {
    sub_100005EA8(&qword_1003B1850);
    sub_100005EA8(&qword_1003B17E0);
    type metadata accessor for TitleOnlyLabelStyle();
    sub_10001BAEC(&qword_1003B1840, &qword_1003B17E0);
    sub_100121CCC(&qword_1003B1848, &type metadata accessor for TitleOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B18B0);
  }

  return result;
}

uint64_t sub_100121C10()
{
  sub_100005EA8(&qword_1003B1878);
  sub_10001BAEC(&qword_1003B1888, &qword_1003B1878);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100121CCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100121D14()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100121D6C()
{
  result = qword_1003B18E8;
  if (!qword_1003B18E8)
  {
    sub_100005EA8(&qword_1003B18D8);
    sub_10001BAEC(&unk_1003B18F0, &qword_1003B18E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B18E8);
  }

  return result;
}

void *sub_100121E68()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  v0[6] = 0;
  v1 = [objc_opt_self() interruptionController];
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_10012264C;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100096948;
  v6[3] = &unk_1003853F0;
  v3 = _Block_copy(v6);

  v4 = [v1 addObservationBlock:v3];
  _Block_release(v3);

  v0[6] = v4;
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100121FA8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026AA0();
  v10 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10012266C;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100385418;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100122218()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100122270();
  }

  return result;
}

void sub_100122270()
{
  v1 = v0;
  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D28D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "There was a connection issue with translationd; finding code to handle it", v5, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 24);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Asking main scene to handle XPC interruption", v9, 2u);
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, ObjectType, v6);
    swift_unknownObjectRelease();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

LABEL_11:
    v11 = *(v1 + 40);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Asking live activity scene to handle XPC interruption", v14, 2u);
    }

    v15 = swift_getObjectType();
    (*(v11 + 8))(v1, v15, v11);

    swift_unknownObjectRelease();
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_11;
  }

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v16, "There was a connection issue with translationd; this issue is not surfaced in the app because no handlers were registered", v17, 2u);
  }
}

uint64_t sub_1001225A8()
{
  sub_100012FF4(v0 + 16);
  sub_100012FF4(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100122614()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100122654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10012267C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout____lazy_storage___swipeController;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout____lazy_storage___swipeController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout____lazy_storage___swipeController);
  }

  else
  {
    v4 = [objc_allocWithZone(UISwipeActionController) initWithSwipeActionHost:v0 style:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_1001226F8(double a1, double a2, double a3, double a4)
{
  v34 = type metadata accessor for IndexPath();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InvertedCollectionViewLayout();
  v35 = v4;
  v38.receiver = v4;
  v38.super_class = v12;
  v13 = objc_msgSendSuper2(&v38, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  sub_10000A2CC(0, &qword_1003AA720);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_15:

    v18 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_4:
  v37 = _swiftEmptyArrayStorage;
  sub_1000C4C4C(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    goto LABEL_34;
  }

  v17 = 0;
  v18 = v37;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    [v19 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    v37 = v18;
    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      sub_1000C4C4C((v21 > 1), v22 + 1, 1);
      v18 = v37;
    }

    ++v17;
    v18[2] = v22 + 1;
    sub_10005128C(&v36, &v18[4 * v22 + 4]);
  }

  while (v16 != v17);

LABEL_16:
  v15 = sub_1001750B4(v18);

  if (v15)
  {
    v5 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v24 = 0;
      v32 = v10 + 1;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *(v5 + 16))
          {
            goto LABEL_33;
          }

          v25 = *(v15 + 8 * v24 + 32);
        }

        v10 = v25;
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (![v25 representedElementCategory])
        {
          v27 = [v10 indexPath];
          v28 = v33;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v32)(v28, v34);
          v30 = [v35 layoutAttributesForItemAtIndexPath:isa];

          if (v30)
          {
            [v30 frame];
            [v10 setFrame:?];
            [v30 transform];
            [v10 setTransform:&v36];
          }
        }

        ++v24;
        if (v26 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_30:
  }

  return v15;
}

id sub_100122BB8(uint64_t a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v66.receiver = v2;
  v66.super_class = type metadata accessor for InvertedCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v66, "layoutAttributesForItemAtIndexPath:", isa);

  if (v5)
  {
    v6 = [v2 collectionView];
    if (v6)
    {
      v7 = v6;
      CGAffineTransformMakeScale(&v65, 1.0, -1.0);
      [v5 setTransform:&v65];
      v8 = [v7 indexPathsForSelectedItems];
      if (v8 && (v9 = v8, type metadata accessor for IndexPath(), v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v9, LOBYTE(v9) = sub_1001C3AEC(a1, v10), , (v9 & 1) != 0))
      {
        v11 = IndexPath._bridgeToObjectiveC()().super.isa;
        v12 = [v7 cellForItemAtIndexPath:v11];

        if (v12)
        {
          sub_10000A2CC(0, &qword_1003B1AE0);
          sub_100005AD4(&qword_1003B1AE8);
          if (swift_dynamicCast())
          {
            if (*(&v63 + 1))
            {
              sub_100051124(&v62, &v65);
              v13 = v7;
              [v13 contentOffset];
              v15 = v14;
              [v13 adjustedContentInset];
              v61 = v16;

              [v5 frame];
              v18 = v17;
              v20 = v19;
              v22 = v21;
              v24 = v23 - v15;
              v25 = *sub_1000085CC(&v65, *&v65.d);
              v26 = sub_100032204();
              v27 = sub_100293B44();

              [v27 bounds];
              v29 = v28;
              v31 = v30;
              v33 = v32;
              v35 = v34;

              v36 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView;
              v37 = *&v25[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView];
              v38 = sub_100293B44();

              [v25 convertRect:v38 fromCoordinateSpace:{v29, v31, v33, v35}];
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v46 = v45;

              v67.origin.x = v40;
              v67.origin.y = v42;
              v67.size.width = v44;
              v67.size.height = v46;
              MaxY = CGRectGetMaxY(v67);
              [*(*&v25[v36] + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions) frame];
              Height = CGRectGetHeight(v68);
              v69.origin.x = v18;
              v69.origin.y = v24;
              v69.size.width = v20;
              v69.size.height = v22;
              if (CGRectGetMinY(v69) >= v61)
              {
                v59 = *(*sub_1000085CC(&v65, *&v65.d) + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_cardHeight);
                if (!v59)
                {
LABEL_26:

                  sub_100008664(&v65);
                  return v5;
                }

                v60 = v59;
                [v60 setActive:0];
              }

              else
              {
                v49 = MaxY + Height;
                v70.origin.x = v18;
                v70.origin.y = v24;
                v70.size.width = v20;
                v70.size.height = v22;
                v50 = v61 - CGRectGetMinY(v70);
                [v5 frame];
                v51 = CGRectGetHeight(v71);
                [v5 frame];
                v52 = CGRectGetHeight(v72) - v50;
                if (v52 <= v49)
                {
                  v52 = v49;
                }

                if (v52 < v51)
                {
                  v51 = v52;
                }

                v53 = sub_1000085CC(&v65, *&v65.d);
                v54 = *v53;
                v55 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_cardHeight;
                v56 = *(*v53 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_cardHeight);
                if (v56)
                {
                  [v56 setActive:1];
                  v57 = *(v54 + v55);
                }

                else
                {
                  v57 = 0;
                }

                v60 = v57;
                [v60 setConstant:v51];
              }

              goto LABEL_26;
            }
          }

          else
          {
            v64 = 0;
            v62 = 0u;
            v63 = 0u;
          }
        }

        else
        {

          v64 = 0;
          v62 = 0u;
          v63 = 0u;
        }

        sub_100009EBC(&v62, &qword_1003B1AD8);
      }

      else
      {
      }
    }
  }

  return v5;
}

void sub_1001231E0(void *a1, uint64_t a2, void *a3, char a4)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for InvertedCollectionViewLayout();
  v6 = a3;
  v7 = v9.receiver;
  objc_msgSendSuper2(&v9, "prepareForTransitionFromLayout:", v6);
  v8 = sub_10012267C();
  [v8 setSwipeEnabled:{a4 & 1, v9.receiver, v9.super_class}];
}

id sub_100123384(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_cachedAttributes] = _swiftEmptyArrayStorage;
  v3 = &v2[OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_swipeDelegate];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout____lazy_storage___swipeController] = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A3A0C;
  aBlock[3] = &unk_1003854B8;
  v4 = _Block_copy(aBlock);

  v7.receiver = v2;
  v7.super_class = type metadata accessor for InvertedCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v7, "initWithSectionProvider:", v4);

  _Block_release(v4);
  return v5;
}

id sub_1001234E8(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_cachedAttributes] = _swiftEmptyArrayStorage;
  v5 = &v3[OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_swipeDelegate];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout____lazy_storage___swipeController] = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A3A0C;
  aBlock[3] = &unk_100385468;
  v6 = _Block_copy(aBlock);

  v9.receiver = v3;
  v9.super_class = type metadata accessor for InvertedCollectionViewLayout();
  v7 = objc_msgSendSuper2(&v9, "initWithSectionProvider:configuration:", v6, a3);

  _Block_release(v6);
  return v7;
}

id sub_100123728()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvertedCollectionViewLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100123924(void *a1)
{
  v1 = a1;
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;

    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001239F0@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = sub_100005AD4(&unk_1003AB970);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = [v4 collectionView];
  if (!v14)
  {
    v18 = type metadata accessor for IndexPath();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
LABEL_7:
    sub_100009EBC(v13, &unk_1003AB970);
    return IndexPath.init()();
  }

  v15 = v14;
  v16 = [v14 indexPathForItemAtPoint:{a2, a3}];

  if (v16)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for IndexPath();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for IndexPath();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  sub_10012445C(v11, v13);
  type metadata accessor for IndexPath();
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v13, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  return (*(v19 + 32))(a1, v13, v17);
}

id sub_100123E74(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = a5(v11);

  (*(v9 + 8))(v11, v8);

  return v14;
}

void sub_100124068()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v4 = [v2 cellForItemAtIndexPath:isa];

    if (v4)
    {
      type metadata accessor for CardCollectionViewCell();
      if (swift_dynamicCastClass())
      {
        v5 = v4;
        v6 = sub_100032204();
        [v6 safeAreaInsets];

        return;
      }
    }

    _StringGuts.grow(_:)(25);

    v7 = v4;
    sub_100005AD4(&qword_1003B1AD0);
    v8._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v8);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10012424C()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v4 = [v2 cellForItemAtIndexPath:isa];

    if (v4)
    {
      type metadata accessor for CardCollectionViewCell();
      if (swift_dynamicCastClass())
      {
        v5 = v4;
        v6 = sub_100032204();

        return v6;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100124320(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_swipeDelegate;
  swift_beginAccess();
  sub_1001243EC(v1 + v3, v7);
  if (v8)
  {
    sub_100031DD8(v7, v6);
    sub_100009EBC(v7, &unk_1003B1AC0);
    sub_1000085CC(v6, v6[3]);
    v4 = sub_10003AEE4(a1);
    sub_100008664(v6);
  }

  else
  {
    sub_100009EBC(v7, &unk_1003B1AC0);
    return 0;
  }

  return v4;
}

uint64_t sub_1001243EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003B1AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012445C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003AB970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001244CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100124504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_100124538()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
  return Hasher._finalize()();
}

void sub_100124594()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

Swift::Int sub_1001245D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
  return Hasher._finalize()();
}

unint64_t sub_100124640()
{
  result = qword_1003B1AF0;
  if (!qword_1003B1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1AF0);
  }

  return result;
}

unint64_t sub_100124698()
{
  result = qword_1003B1AF8;
  if (!qword_1003B1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1AF8);
  }

  return result;
}

uint64_t sub_100124700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10012478C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for LayoutDirection();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for KaraokeRenderer()
{
  result = qword_1003B1B58;
  if (!qword_1003B1B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100124854()
{
  result = type metadata accessor for LayoutDirection();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001248E4(uint64_t a1, uint64_t *a2)
{
  v183 = a2;
  v178 = type metadata accessor for ShaderFunction();
  v154 = *(v178 - 8);
  __chkstk_darwin(v178);
  v177 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for Shader();
  v153 = *(v176 - 8);
  __chkstk_darwin(v176);
  v175 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_100005AD4(&qword_1003B1BA0);
  v163 = *(v181 - 8);
  __chkstk_darwin(v181);
  v185 = &v153 - v6;
  v7 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v7 - 8);
  v200 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_100005AD4(&unk_1003BBEF0);
  v202 = *(v204 - 8);
  v9 = __chkstk_darwin(v204);
  v162 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v198 = &v153 - v12;
  __chkstk_darwin(v11);
  v203 = &v153 - v13;
  v201 = type metadata accessor for Text.Layout.Run();
  v207 = *(v201 - 8);
  v14 = __chkstk_darwin(v201);
  v196 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v195 = &v153 - v16;
  v187 = sub_100005AD4(&qword_1003B1BA8);
  __chkstk_darwin(v187);
  v18 = &v153 - v17;
  v19 = sub_100005AD4(&qword_1003B1BB0);
  v20 = __chkstk_darwin(v19 - 8);
  v180 = &v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v188 = &v153 - v22;
  v23 = type metadata accessor for Text.Layout();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v167 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100005AD4(&qword_1003B1BB8);
  __chkstk_darwin(v26 - 8);
  v165 = &v153 - v27;
  v166 = sub_100005AD4(&qword_1003B1BC0);
  v28 = __chkstk_darwin(v166);
  v184 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v189 = &v153 - v30;
  v209 = type metadata accessor for LayoutDirection();
  v208 = *(v209 - 1);
  __chkstk_darwin(v209);
  *&v206 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for Text.Layout.Line();
  v211 = *(v197 - 8);
  v32 = __chkstk_darwin(v197);
  v179 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v194 = &v153 - v35;
  __chkstk_darwin(v34);
  *&v213 = &v153 - v36;
  v37 = type metadata accessor for GraphicsContext.Filter();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v172 = &v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v153 - v41;
  static Color.translateAccentColor.getter();
  v171 = *(v2 + 4);
  Color.opacity(_:)();

  v210 = type metadata accessor for KaraokeRenderer();
  v182 = v2;
  static GraphicsContext.Filter.shadow(color:radius:x:y:blendMode:options:)();

  GraphicsContext.addFilter(_:options:)();
  v43 = *(v38 + 8);
  v174 = v37;
  v44 = v23;
  v173 = v38 + 8;
  v170 = v43;
  v43(v42, v37);
  sub_100126AE8(&qword_1003B1BC8, &type metadata accessor for Text.Layout);
  v45 = dispatch thunk of Collection.count.getter();
  v46 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  if (v45)
  {
    v47 = v45;
    v214 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    sub_1000C4D0C(0, v45 & ~(v45 >> 63), 0);
    v48 = v214;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v47 < 0)
    {
      __break(1u);
      return result;
    }

    v168 = v24;
    v50 = v23;
    *&v212 = *&v211 + 16;
    v51 = (*&v211 + 8);
    do
    {
      v52 = dispatch thunk of Collection.subscript.read();
      v53 = v213;
      v54 = v197;
      (**&v212)(v213);
      v52(&v222, 0);
      Text.Layout.Line.typographicBounds.getter();
      (*v51)(v53, v54);
      v214 = v48;
      v56 = *(*&v48 + 16);
      v55 = *(*&v48 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1000C4D0C((v55 > 1), v56 + 1, 1);
        v48 = v214;
      }

      v57 = v217;
      v58 = v219;
      v59 = v218 - v220;
      v60 = v220 + v221;
      *(*&v48 + 16) = v56 + 1;
      v61 = *&v48 + 32 * v56;
      *(v61 + 32) = v57;
      *(v61 + 40) = v59;
      *(v61 + 48) = v58;
      *(v61 + 56) = v60;
      dispatch thunk of Collection.formIndex(after:)();
      --v47;
    }

    while (v47);
    v44 = v50;
    v24 = v168;
    v46 = v48;
  }

  v62 = *(*&v46 + 16);
  v63 = v196;
  v164 = v46;
  if (v62)
  {
    v64 = (*&v46 + 56);
    v65 = 100.0;
    do
    {
      v65 = v65 + CGRectGetWidth(*(v64 - 3));
      v64 += 4;
      --v62;
    }

    while (v62);
  }

  else
  {
    v65 = 100.0;
  }

  v66 = v208;
  v67 = v206;
  v68 = v209;
  (v208[13])(COERCE_DOUBLE(*&v206), enum case for LayoutDirection.rightToLeft(_:), v209);
  LODWORD(v210) = static LayoutDirection.== infix(_:_:)();
  (v66[1])(COERCE_DOUBLE(*&v67), v68);
  v69 = *(v24 + 16);
  v70 = v165;
  v157 = a1;
  v161 = v24 + 16;
  v160 = v69;
  v69(v165, a1, v44);
  v71 = *(v24 + 32);
  v168 = v24 + 32;
  v159 = v71;
  v71(v167, v70, v44);
  v72 = sub_100126AE8(&qword_1003B1BD0, &type metadata accessor for Text.Layout);
  v73 = v164;

  v74 = v189;
  v156 = v44;
  v158 = v72;
  dispatch thunk of Sequence.makeIterator()();
  v75 = v166;
  v76 = (v74 + *(v166 + 52));
  *v76 = v73;
  v76[1] = 0.0;
  *(v74 + *(v75 + 56)) = 0;
  v191 = (*&v211 + 32);
  v186 = (*&v211 + 16);
  v209 = (v207 + 2);
  v208 = (v207 + 4);
  ++v207;
  v193 = v202 + 8;
  v199 = (v202 + 32);
  v190 = (*&v211 + 8);
  *&v213 = _swiftEmptyArrayStorage;
  v77 = 1;
  v78 = 0.0;
  v155 = 50.0 / v65;
  v206 = 50.0 / v65;
  v79 = 0.0;
  v80 = v197;
  v81 = v201;
  v82 = v195;
  while (1)
  {
    v86 = v188;
    sub_1001263CC(v188);
    v87 = sub_100005AD4(&qword_1003B1BD8);
    v88 = *(v87 - 8);
    v89 = *(v88 + 48);
    *&v90 = v88 + 48;
    if (v89(v86, 1, v87) == 1)
    {
      v81 = v87;
      v211 = v90;
      sub_100009EBC(v189, &qword_1003B1BC0);
      v214 = 1.0;
      static UnitCurve.linear.getter();
      sub_100126A8C();
      v18 = v162;
      LinearKeyframe.init(_:duration:timingCurve:)();
      v84 = *&v213;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v212 = *&v89;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_46;
    }

    v91 = &v86[*(v87 + 48)];
    v92 = *v91;
    v93 = v91[1];
    v95 = v91[2];
    v94 = v91[3];
    v96 = v194;
    (*v191)(v194, v86, v80);
    v227.origin.x = v92;
    v227.origin.y = v93;
    v227.size.width = v95;
    v211 = v94;
    v227.size.height = v94;
    Width = CGRectGetWidth(v227);
    (*v186)(v18, v96, v80);
    v97 = *(v187 + 36);
    sub_100126AE8(&qword_1003B1C00, &type metadata accessor for Text.Layout.Line);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v18[v97] != *&v214)
    {
      break;
    }

    v83 = v78;
    v84 = *&v213;
LABEL_15:
    *&v213 = v84;
    v85 = Width / v65;
    sub_100009EBC(v18, &qword_1003B1BA8);
    (*v190)(v194, v80);
    v206 = v206 + v85;
    v78 = v83;
  }

  v212 = v79;
  v84 = *&v213;
  v205 = v95;
  while (1)
  {
    *&v213 = v78;
    v99 = dispatch thunk of Collection.subscript.read();
    (*v209)(v82);
    v99(&v214, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v208)(v63, v82, v81);
    Text.Layout.Run.typographicBounds.getter();
    v100 = v222;
    v101 = v224;
    v102 = v223 - v225;
    v103 = v225 + v226;
    if (v210)
    {
      v228.origin.x = v92;
      v228.origin.y = v93;
      v228.size.width = v95;
      v228.size.height = v211;
      v104 = v93;
      v105 = v92;
      v106 = v65;
      MaxX = CGRectGetMaxX(v228);
      v229.origin.x = v100;
      v229.origin.y = v102;
      v229.size.width = v101;
      v229.size.height = v103;
      v108 = MaxX - CGRectGetMaxX(v229);
      v65 = v106;
      v92 = v105;
      v93 = v104;
      v95 = v205;
    }

    else
    {
      v230.origin.x = v222;
      v230.origin.y = v223 - v225;
      v230.size.width = v224;
      v230.size.height = v225 + v226;
      MinX = CGRectGetMinX(v230);
      v231.origin.x = v92;
      v231.origin.y = v93;
      v231.size.width = v95;
      v231.size.height = v211;
      v108 = MinX - CGRectGetMinX(v231);
    }

    sub_100126B30();
    Text.Layout.Run.subscript.getter();
    if (v215)
    {
      (*v207)(v63, v81);
      v83 = *&v213;
      v79 = v212;
      goto LABEL_20;
    }

    v83 = v214;
    v79 = v214 - *&v213;
    if (v77)
    {
      v110 = 0.0;
    }

    else
    {
      v110 = v206 + v108 / v65;
    }

    if ((v79 > 0.0) | v77 & 1)
    {
      v214 = v110;
      static UnitCurve.linear.getter();
      sub_100126A8C();
      LinearKeyframe.init(_:duration:timingCurve:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = COERCE_DOUBLE(sub_10028CE30(0, *(*&v84 + 16) + 1, 1, *&v84));
      }

      v112 = *(*&v84 + 16);
      v111 = *(*&v84 + 24);
      if (v112 >= v111 >> 1)
      {
        v84 = COERCE_DOUBLE(sub_10028CE30(v111 > 1, v112 + 1, 1, *&v84));
      }

      v113 = v201;
      (*v207)(v63, v201);
      *(*&v84 + 16) = v112 + 1;
      v114 = *&v84 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v112;
      v81 = v113;
      (*(v202 + 32))(v114, v203, v204);
      goto LABEL_42;
    }

    v79 = v212;
    if (v212 <= 0.0)
    {
      (*v207)(v63, v81);
LABEL_42:
      v77 = 0;
      goto LABEL_20;
    }

    if (!*(*&v84 + 16))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v115 = *(*&v84 + 16);
      if (!v115)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v84 = COERCE_DOUBLE(sub_1000A3958(*&v84));
      v115 = *(*&v84 + 16);
      if (!v115)
      {
        goto LABEL_56;
      }
    }

    v116 = v115 - 1;
    v117 = (*(v202 + 80) + 32) & ~*(v202 + 80);
    v118 = *(v202 + 72);
    (*(v202 + 8))(*&v84 + v117 + v118 * (v115 - 1), v204);
    *(*&v84 + 16) = v116;
    v214 = v110;
    static UnitCurve.linear.getter();
    sub_100126A8C();
    LinearKeyframe.init(_:duration:timingCurve:)();
    v120 = *(*&v84 + 16);
    v119 = *(*&v84 + 24);
    if (v120 >= v119 >> 1)
    {
      v84 = COERCE_DOUBLE(sub_10028CE30(v119 > 1, v120 + 1, 1, *&v84));
    }

    v63 = v196;
    v81 = v201;
    (*v207)(v196, v201);
    *(*&v84 + 16) = v120 + 1;
    (*v199)((*&v84 + v117 + v120 * v118), v198, v204);
    v77 = 0;
    v80 = v197;
    v82 = v195;
LABEL_20:
    dispatch thunk of Collection.endIndex.getter();
    v98 = *&v18[v97];
    v212 = v79;
    v78 = v83;
    if (v98 == *&v214)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  v84 = COERCE_DOUBLE(sub_10028CE30(0, *(*&v84 + 16) + 1, 1, *&v84));
LABEL_46:
  v122 = v157;
  v123 = v179;
  v124 = v156;
  v125 = v155;
  v126 = v81;
  v128 = *(*&v84 + 16);
  v127 = *(*&v84 + 24);
  v169 = v65;
  if (v128 >= v127 >> 1)
  {
    v84 = COERCE_DOUBLE(sub_10028CE30(v127 > 1, v128 + 1, 1, *&v84));
  }

  *(*&v84 + 16) = v128 + 1;
  v129 = (*(v202 + 32))(*&v84 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v128, v18, v204);
  v214 = v84;
  v216 = 0;
  __chkstk_darwin(v129);
  *(&v153 - 2) = &v214;
  sub_100005AD4(&qword_1003B1BE8);
  sub_10001BAEC(&qword_1003B1BF0, &qword_1003B1BE8);
  KeyframeTimeline.init<A>(initialValue:content:)();
  v130 = v165;
  v160(v165, v122, v124);
  v159(v167, v130, v124);
  v131 = v184;
  dispatch thunk of Sequence.makeIterator()();
  v132 = v166;
  v133 = (v131 + *(v166 + 52));
  *v133 = v164;
  v133[1] = 0.0;
  *(v131 + *(v132 + 56)) = 0;
  v134 = v180;
  sub_1001263CC(v180);
  v135 = (*&v212)(v134, 1, v81);
  v136 = v197;
  if (v135 != 1)
  {
    v137 = *v191;
    v138 = (v154 + 8);
    v139 = (v153 + 8);
    v213 = xmmword_1002D1370;
    do
    {
      v143 = &v134[*(v126 + 48)];
      v144 = *v143;
      v145 = v143[1];
      v146 = v143[2];
      v147 = v143[3];
      v137(v123, v134, v136);
      v216 = *v183;

      v233.origin.x = v144;
      v233.origin.y = v145;
      v233.size.width = v146;
      v233.size.height = v147;
      v148 = CGRectGetWidth(v233) / v169;
      KeyframeTimeline.value(progress:)();
      v234.origin.x = v144;
      v234.origin.y = v145;
      v234.size.width = v146;
      v234.size.height = v147;
      CGRectGetWidth(v234);
      v149 = v144;
      v150 = v145;
      v151 = v146;
      v152 = v147;
      if (v210)
      {
        CGRectGetMaxX(*&v149);
      }

      else
      {
        CGRectGetMinX(*&v149);
      }

      v232.origin.x = v144;
      v232.origin.y = v145;
      v232.size.width = v146;
      v232.size.height = v147;
      CGRectGetMidY(v232);
      v140 = v177;
      static ShaderLibrary.subscript.getter();
      sub_100005AD4(&qword_1003B1BF8);
      type metadata accessor for Shader.Argument();
      *(swift_allocObject() + 16) = v213;
      static Shader.Argument._float2(_:_:)();
      static Shader.Argument._float(_:)();
      v141 = v175;
      ShaderFunction.dynamicallyCall(withArguments:)();

      (*v138)(v140, v178);
      v142 = v172;
      static GraphicsContext.Filter.layerShader(_:maxSampleOffset:)();
      (*v139)(v141, v176);
      GraphicsContext.addFilter(_:options:)();
      v170(v142, v174);
      v123 = v179;
      GraphicsContext.draw(_:options:)();
      v136 = v197;
      (*v190)(v123, v197);

      v125 = v125 + v148;
      v134 = v180;
      sub_1001263CC(v180);
    }

    while ((*&v212)(v134, 1, v126) != 1);
  }

  sub_100009EBC(v184, &qword_1003B1BC0);
  (*(v163 + 8))(v185, v181);
}

uint64_t sub_1001263CC@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for Text.Layout.Line();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = sub_100005AD4(&qword_1003B1BC0);
  v11 = *(v10 + 56);
  if (*(v1 + v11) != 1)
  {
    v15 = v10;
    *&v31 = v4;
    v16 = *(sub_100005AD4(&qword_1003B1C20) + 36);
    type metadata accessor for Text.Layout();
    sub_100126AE8(&qword_1003B1BC8, &type metadata accessor for Text.Layout);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v1 + v16) != v32[0])
    {
      v30 = a1;
      *&v29 = dispatch thunk of Collection.subscript.read();
      v17 = v31;
      (*(v31 + 16))(v7);
      (v29)(v32, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v18 = *(v17 + 32);
      result = v18(v9, v7, v3);
      v19 = (v1 + *(v15 + 52));
      v20 = v19[1];
      v21 = *(*v19 + 16);
      if (v20 != v21)
      {
        v23 = v30;
        if (v20 >= v21)
        {
          __break(1u);
        }

        else
        {
          v24 = *v19 + 32 * v20;
          v25 = *(v24 + 48);
          v31 = *(v24 + 32);
          v29 = v25;
          v19[1] = v20 + 1;
          v26 = sub_100005AD4(&qword_1003B1BD8);
          v27 = &v23[*(v26 + 48)];
          v18(v23, v9, v3);
          v28 = v29;
          *v27 = v31;
          *(v27 + 1) = v28;
          return (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
        }

        return result;
      }

      (*(v17 + 8))(v9, v3);
      a1 = v30;
    }

    *(v1 + v11) = 1;
    v22 = sub_100005AD4(&qword_1003B1BD8);
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }

  v12 = sub_100005AD4(&qword_1003B1BD8);
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 1, 1, v12);
}

uint64_t sub_100126774()
{
  v0 = sub_100005AD4(&qword_1003B1C10);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;

  v7 = sub_100005AD4(&unk_1003BBEF0);
  v8 = sub_10001BAEC(&qword_1003B1C18, &unk_1003BBEF0);
  static KeyframesBuilder.buildArray<A>(_:)();

  v11[1] = &type metadata for CGFloat;
  v11[2] = v7;
  v11[3] = v8;
  swift_getOpaqueTypeConformance2();
  static KeyframesBuilder.buildExpression<A>(_:)();
  v9 = *(v1 + 8);
  v9(v4, v0);
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  v9(v4, v0);
  return (v9)(v6, v0);
}

float sub_1001269EC@<S0>(float *a1@<X8>)
{
  result = *(v1 + 4);
  *a1 = result;
  return result;
}

float sub_1001269F8(float *a1)
{
  result = *a1;
  *(v1 + 4) = *a1;
  return result;
}

float (*sub_100126A04(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_100126A30;
}

float sub_100126A30(float *a1)
{
  result = a1[2];
  *(*a1 + 4) = result;
  return result;
}

unint64_t sub_100126A8C()
{
  result = qword_1003B1BE0;
  if (!qword_1003B1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1BE0);
  }

  return result;
}

uint64_t sub_100126AE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100126B30()
{
  result = qword_1003B1C08;
  if (!qword_1003B1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1C08);
  }

  return result;
}

uint64_t sub_100126BA4@<X0>(void *a1@<X8>)
{
  sub_10012D14C();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100126BF4()
{
  sub_10012D14C();

  return EnvironmentValues.subscript.setter();
}

BOOL sub_100126C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    return 0;
  }

  if (v2 == v8 && v3 == v7)
  {
    result = 0;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

LABEL_13:
  if (v6 == v11 && v5 == v10)
  {
    return v4 == v9;
  }

  return result;
}

uint64_t sub_100126D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10012CF64();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_100126DB8()
{
  sub_10012CEF0();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100126E14(void (*a1)(void))
{
  a1();
  EnvironmentValues.subscript.getter();
  return v2;
}

uint64_t sub_100126E5C(unint64_t a1, double a2)
{
  v67 = a1;
  v3 = sub_100005AD4(&qword_1003B1F80);
  __chkstk_darwin(v3);
  v59 = &v45 - v4;
  v5 = sub_100005AD4(&qword_1003B1F98);
  v6 = __chkstk_darwin(v5 - 8);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v57 = &v45 - v9;
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for Text.CustomAttributes();
  v54 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for AttributedString.Runs.Index();
  v61 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for AttributedString.Runs.Run();
  v46 = *(v69 - 8);
  v16 = __chkstk_darwin(v69);
  v68 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v55 = &v45 - v18;
  v64 = type metadata accessor for AttributedString.Runs();
  v19 = *(v64 - 8);
  __chkstk_darwin(v64);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AttributedSubstring();
  v22 = *(v63 - 8);
  __chkstk_darwin(v63);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100005AD4(&qword_1003B1FA0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v45 - v27;
  v71 = a2;
  v29 = sub_10001BAEC(&qword_1003B1FA8, &qword_1003B1F80);
  v60 = v3;
  v53 = v29;
  AttributedString.subscript.getter();
  AttributedSubstring.runs.getter();
  (*(v22 + 8))(v24, v63);
  v30 = v64;
  (*(v19 + 16))(v28, v21, v64);
  v31 = *(v26 + 44);
  v62 = sub_10012C738(&qword_1003B1FB0, &type metadata accessor for AttributedString.Runs);
  v63 = v31;
  dispatch thunk of Collection.startIndex.getter();
  (*(v19 + 8))(v21, v30);
  ++v61;
  v52 = (v46 + 2);
  v51 = (v46 + 4);
  v50 = (v54 + 48);
  v45 = (v54 + 32);
  v49 = (v54 + 16);
  v48 = (v54 + 56);
  v47 = (v54 + 8);
  ++v46;
  v54 = v28;
  v56 = v11;
  while (1)
  {
    v37 = v65;
    dispatch thunk of Collection.endIndex.getter();
    sub_10012C738(&qword_1003B1FB8, &type metadata accessor for AttributedString.Runs.Index);
    v38 = v66;
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v61)(v37, v38);
    if (v39)
    {
      break;
    }

    v40 = dispatch thunk of Collection.subscript.read();
    v41 = v55;
    v42 = v69;
    (*v52)(v55);
    v40(v70, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v51)(v68, v41, v42);
    v67 = sub_10012CA24();
    AttributedString.Runs.Run.subscript.getter();
    v43 = *v50;
    if ((*v50)(v11, 1, v12) == 1)
    {
      Text.CustomAttributes.init()();
      if (v43(v11, 1, v12) != 1)
      {
        sub_100009EBC(v11, &qword_1003B1F98);
      }
    }

    else
    {
      (*v45)(v14, v11, v12);
    }

    sub_100126B30();
    Text.CustomAttributes.add<A>(_:)();
    v32 = v59;
    v33 = v68;
    AttributedString.Runs.Run.range.getter();
    v34 = v57;
    (*v49)(v57, v14, v12);
    (*v48)(v34, 0, 1, v12);
    v35 = AttributedString.subscript.modify();
    sub_10001F620(v34, v58, &qword_1003B1F98);
    AttributedSubstring.subscript.setter();
    sub_100009EBC(v34, &qword_1003B1F98);
    v35(v70, 0);
    v36 = v32;
    v11 = v56;
    sub_100009EBC(v36, &qword_1003B1F80);
    (*v47)(v14, v12);
    (*v46)(v33, v69);
    v28 = v54;
  }

  return sub_100009EBC(v28, &qword_1003B1FA0);
}

uint64_t sub_1001277A4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__animationText;
  swift_beginAccess();
  v4 = type metadata accessor for AttributedString();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_10012789C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__animationText;
  swift_beginAccess();
  v5 = type metadata accessor for AttributedString();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100127994(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_100127A60(v4);
}

uint64_t sub_100127A60(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__animationText;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_10012C738(&qword_1003B1FD8, &type metadata accessor for AttributedString);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_100127D00(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__animationText;
  swift_beginAccess();
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100127D9C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackStart;
  swift_beginAccess();
  return sub_10001F620(v5 + v3, a1, &qword_1003B5130);
}

uint64_t sub_100127E74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackStart;
  swift_beginAccess();
  return sub_10001F620(v3 + v4, a2, &qword_1003B5130);
}

uint64_t sub_100127F4C(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10001F620(a1, &v6 - v3, &qword_1003B5130);
  return sub_100127FF8(v4);
}

uint64_t sub_100127FF8(uint64_t a1)
{
  v3 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackStart;
  swift_beginAccess();
  sub_10001F620(v1 + v6, v5, &qword_1003B5130);
  v7 = sub_10012CAC4(v5, a1);
  sub_100009EBC(v5, &qword_1003B5130);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10001F620(a1, v5, &qword_1003B5130);
    swift_beginAccess();
    sub_100081B28(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100009EBC(a1, &qword_1003B5130);
}

uint64_t sub_100128200(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackStart;
  swift_beginAccess();
  sub_10012CE08(a2, a1 + v4);
  return swift_endAccess();
}

double sub_10012826C()
{
  swift_getKeyPath();
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration);
}

double sub_100128314@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration);
  *a2 = result;
  return result;
}

void sub_1001283C4(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration) == a1)
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_1001284E4()
{
  swift_getKeyPath();
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer);
  v2 = v1;
  return v1;
}

id sub_100128594@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer);
  *a2 = v4;

  return v4;
}

void sub_100128654(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer;
  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer);
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
    sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10012CA78();
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

uint64_t sub_1001287DC(double a1, uint64_t a2, uint64_t a3, double *a4)
{
  v68 = sub_100005AD4(&qword_1003B1F78);
  v6 = __chkstk_darwin(v68);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v58 - v8;
  v65 = sub_100005AD4(&qword_1003B1F80);
  __chkstk_darwin(v65);
  v64 = &v58 - v9;
  v78 = type metadata accessor for AttributedString.Index();
  v10 = *(v78 - 8);
  v11 = __chkstk_darwin(v78);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v58 - v14;
  v72 = type metadata accessor for AttributedString.CharacterView();
  v76 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v17 - 8);
  v69 = type metadata accessor for AttributedString();
  v18 = *(v69 - 8);
  v19 = __chkstk_darwin(v69);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v19);
  v77 = &v58 - v23;
  if (*(a4 + 2))
  {
    v24 = a4;
    v25 = a4[2];

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    if (qword_1003A92A0 != -1)
    {
LABEL_27:
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000078E8(v26, qword_1003D28F0);
    v27 = v24;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134349568;
      *(v30 + 4) = v25;
      *(v30 + 12) = 2050;
      *(v30 + 14) = a1;
      *(v30 + 22) = 2048;
      *(v30 + 24) = v25;

      _os_log_impl(&_mh_execute_header, v28, v29, "Animation started. wordTimingInfo.count: %{public}ld. totalDuration: %{public}f %ld", v30, 0x20u);
      v27 = v24;
    }

    else
    {
    }

    v31 = v78;
    v58 = v21;
    v59 = v18;
    v32 = 0.0;
    v33 = v25;
    if (*&v25 != 1)
    {
      v34 = v27[7 * *&v25 + 1];
      v32 = v34 + v34 / (*&v25 - 1);
    }

    v70 = (v76 + 8);
    v35 = v10;
    v10 += 8;
    v62 = (v35 + 32);
    v63 = (v35 + 16);
    if (v32 > a1)
    {
      a1 = v32;
    }

    v24 = v27 + 10;
    v61 = v15;
    do
    {
      v18 = *(v24 - 5);
      v36 = *(v24 - 3);
      v37 = *(v24 - 2);
      v38 = *(v24 - 1);
      v25 = *v24;

      if (v38 == NSNotFound.getter())
      {
      }

      else
      {
        v76 = v36;
        v21 = &v38[*&v25];
        if (__OFADD__(v38, *&v25))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v74 = v18;
        v75 = v33;
        v18 = v71;
        AttributedString.characters.getter();
        v39 = AttributedString.CharacterView._count.getter();
        (*v70)(v18, v72);
        if (v39 < 0)
        {
          goto LABEL_25;
        }

        if (v38 == v21 || (v38 & 0x8000000000000000) == 0 && v39 >= v21)
        {
          AttributedString.startIndex.getter();
          v21 = sub_10012C738(&qword_1003B1F88, &type metadata accessor for AttributedString);
          v40 = v15;
          v15 = v13;
          AttributedStringProtocol.index(_:offsetByCharacters:)();
          v18 = v10;
          v10 = *v10;
          (v10)(v13, v31);
          AttributedStringProtocol.index(_:offsetByCharacters:)();
          sub_10012C738(&qword_1003B1F90, &type metadata accessor for AttributedString.Index);
          if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
          {
            goto LABEL_26;
          }

          v41 = *v63;
          v73 = v10;
          v42 = v66;
          v41(v66, v40, v31);
          v43 = v68;
          v41((v42 + *(v68 + 48)), v13, v31);
          v44 = v67;
          sub_10001F620(v42, v67, &qword_1003B1F78);
          v45 = *(v43 + 48);
          v46 = *v62;
          v47 = v64;
          (*v62)(v64, v44, v78);
          v48 = v44 + v45;
          v49 = v73;
          v73(v48, v78);
          sub_100023BD4(v42, v44, &qword_1003B1F78);
          v46((v47 + *(v65 + 36)), v44 + *(v43 + 48), v78);
          v50 = v44;
          v13 = v15;
          v49(v50, v78);

          sub_100126E5C(v47, v37 / a1);
          v51 = v47;
          v31 = v78;
          sub_100009EBC(v51, &qword_1003B1F80);
          v49(v15, v31);
          v15 = v61;
          v49(v61, v31);
          v33 = v75;
          v10 = v18;
        }

        else
        {

          v33 = v75;
        }
      }

      v24 += 7;
      --*&v33;
    }

    while (v33 != 0.0);
    v52 = v59;
    v53 = v58;
    v54 = v77;
    v55 = v69;
    v59[2](v58, v77, v69);
    v56 = v60;
    sub_100127A60(v53);
    v57 = static Animation.easeInOut(duration:)();
    __chkstk_darwin(v57);
    *(&v58 - 2) = v56;
    *(&v58 - 1) = a1;
    withAnimation<A>(_:_:)();

    swift_getKeyPath();
    v79 = v56;
    sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10012958C(sub_100129320, 0, *&v56[OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration]);
    return (v52[1])(v54, v55);
  }

  return result;
}

uint64_t sub_100129158(uint64_t a1, double a2)
{
  v4 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v4 - 8);
  v6 = v10 - v5;
  Date.init()();
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  result = sub_100127FF8(v6);
  if (*(a1 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration) == a2)
  {
    *(a1 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = a1;
    *&v10[-1] = a2;
    v10[1] = a1;
    sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100129320(uint64_t a1)
{
  swift_getKeyPath();
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer;
  v3 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer);
  if (v3)
  {
    v4 = v3;
    [v4 invalidate];
    if (*(a1 + v2))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
    }
  }

  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1001294C4()
{
  v0 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_100127FF8(v2);
}

void sub_10012958C(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v3 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer))
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = a1;
    v9[4] = a2;
    v12[4] = sub_10012C7F8;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000CF44C;
    v12[3] = &unk_1003855E0;
    v10 = _Block_copy(v12);

    v11 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:a3];
    _Block_release(v10);
    sub_100128654(v11);
  }
}

uint64_t sub_100129758(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (*(result + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    a3(v5);
  }

  return result;
}

uint64_t sub_1001298AC()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__animationText;
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackStart, &qword_1003B5130);

  v3 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1001299E0()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_10012D4C0(319, &qword_1003AE370, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100129B2C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10012D648(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

double sub_100129C7C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    return *(v0 + 56);
  }

  static os_log_type_t.fault.getter();
  v7 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_10002F620(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_100129DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003BA370);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for KaraokeView(0);
  sub_10001F620(v1 + *(v10 + 36), v9, &qword_1003BA370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100129FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = swift_getKeyPath();
  *(a4 + 64) = 0;
  v13 = type metadata accessor for KaraokeView(0);
  v14 = *(v13 + 36);
  *(a4 + v14) = swift_getKeyPath();
  sub_100005AD4(&qword_1003BA370);
  swift_storeEnumTagMultiPayload();
  v15 = a4 + *(v13 + 40);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  type metadata accessor for KaraokeAnimationModel(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackStart;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *(v16 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration) = 0;
  *(v16 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer) = 0;

  ObservationRegistrar.init()();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  result = (*(v10 + 32))(v16 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__animationText, v12, v9);
  *(a4 + 24) = v16;
  *(a4 + 32) = 0;
  return result;
}

uint64_t sub_10012A240@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v85 = type metadata accessor for ColorRenderingMode();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100005AD4(&qword_1003B20F0);
  __chkstk_darwin(v78);
  v80 = &v64 - v4;
  v79 = sub_100005AD4(&qword_1003B20F8);
  __chkstk_darwin(v79);
  v64 = &v64 - v5;
  v6 = type metadata accessor for KaraokeView(0);
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - v9;
  v65 = type metadata accessor for AnimationTimelineSchedule();
  v11 = *(v65 - 8);
  v12 = __chkstk_darwin(v65);
  v66 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v73 = sub_100005AD4(&qword_1003B2100);
  v89 = *(v73 - 8);
  __chkstk_darwin(v73);
  v67 = &v64 - v16;
  v74 = sub_100005AD4(&qword_1003B2108);
  v17 = __chkstk_darwin(v74);
  v69 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v71 = &v64 - v19;
  v76 = sub_100005AD4(&qword_1003B2110);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v64 - v20;
  v90 = sub_100005AD4(&qword_1003B2118);
  __chkstk_darwin(v90);
  v77 = &v64 - v21;
  v82 = sub_100005AD4(&qword_1003B2120);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v91 = &v64 - v22;
  v23 = *(v1 + 32);
  *&v98 = *(v1 + 24);
  *(&v98 + 1) = v23;
  sub_100005AD4(&qword_1003B2128);
  State.wrappedValue.getter();
  v24 = v92;
  swift_getKeyPath();
  *&v98 = v24;
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackStart;
  swift_beginAccess();
  sub_10001F620(v24 + v25, v10, &qword_1003B5130);

  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 48))(v10, 1, v26);
  sub_100009EBC(v10, &qword_1003B5130);
  AnimationTimelineSchedule.init(minimumInterval:paused:)();
  sub_10012D5E4(v2, &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v87 + 80);
  v28 = (v27 + 16) & ~v27;
  v88 = v7;
  v87 = v27;
  v29 = swift_allocObject();
  v68 = v28;
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10012DEB4(v70, v29 + v28, type metadata accessor for KaraokeView);
  v30 = v65;
  (*(v11 + 16))(v66, v15, v65);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10012D658;
  *(v31 + 24) = v29;
  sub_100005AD4(&qword_1003B2130);
  sub_10012C738(&qword_1003B2138, &type metadata accessor for AnimationTimelineSchedule);
  sub_10012D718();
  v32 = v67;
  TimelineView<>.init(_:content:)();
  (*(v11 + 8))(v15, v30);
  v33 = v2;
  if (*(v2 + 16) == 1)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v34 = v64;
    v35 = v73;
    (*(v89 + 2))(v64, v32, v73);
    v36 = (v34 + *(v79 + 36));
    v37 = v103;
    v36[4] = v102;
    v36[5] = v37;
    v36[6] = v104;
    v38 = v99;
    *v36 = v98;
    v36[1] = v38;
    v39 = v101;
    v36[2] = v100;
    v36[3] = v39;
    sub_10001F620(v34, v80, &qword_1003B20F8);
    swift_storeEnumTagMultiPayload();
    sub_10012D888();
    sub_10012D914();
    v40 = v69;
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v34, &qword_1003B20F8);
  }

  else
  {
    v35 = v73;
    (*(v89 + 2))(v80, v32, v73);
    swift_storeEnumTagMultiPayload();
    sub_10012D888();
    sub_10012D914();
    v40 = v69;
    _ConditionalContent<>.init(storage:)();
  }

  (*(v89 + 1))(v32, v35);
  v41 = v71;
  sub_100023BD4(v40, v71, &qword_1003B2108);
  v42 = v84;
  v43 = v83;
  v44 = v85;
  (*(v84 + 104))(v83, enum case for ColorRenderingMode.nonLinear(_:), v85);
  sub_10012D998();
  v45 = v72;
  View.drawingGroup(opaque:colorMode:)();
  (*(v42 + 8))(v43, v44);
  sub_100009EBC(v41, &qword_1003B2108);
  v46 = v33;
  v47 = v33;
  v48 = v70;
  sub_10012D5E4(v47, v70);
  v49 = v68;
  v50 = swift_allocObject();
  v89 = type metadata accessor for KaraokeView;
  sub_10012DEB4(v48, v50 + v49, type metadata accessor for KaraokeView);
  v51 = v77;
  (*(v75 + 32))(v77, v45, v76);
  v52 = (v51 + *(v90 + 36));
  *v52 = sub_10012DB8C;
  v52[1] = v50;
  v52[2] = 0;
  v52[3] = 0;
  v53 = sub_100129B2C();
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = _swiftEmptyArrayStorage;
  }

  v92 = v54;
  sub_10012D5E4(v46, v48);
  v55 = swift_allocObject();
  sub_10012DEB4(v48, v55 + v49, type metadata accessor for KaraokeView);
  v85 = sub_100005AD4(&qword_1003B2008);
  v56 = sub_10012DC6C();
  v57 = sub_10012CFE8();
  v58 = v90;
  View.onChange<A>(of:initial:_:)();

  sub_10012DD34(v51);
  v59 = v46[1];
  v96 = *v46;
  v97 = v59;
  sub_10012D5E4(v46, v48);
  v60 = swift_allocObject();
  sub_10012DEB4(v48, v60 + v49, v89);

  v92 = v58;
  v93 = v85;
  v94 = v56;
  v95 = v57;
  swift_getOpaqueTypeConformance2();
  v61 = v82;
  v62 = v91;
  View.onChange<A>(of:initial:_:)();

  return (*(v81 + 8))(v62, v61);
}

uint64_t sub_10012B01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v53 = type metadata accessor for LayoutDirection();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for KaraokeRenderer() - 8;
  __chkstk_darwin(v51);
  v49 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for AttributedString();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B5130);
  v9 = __chkstk_darwin(v8 - 8);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v43 = a2;
  v13 = *(a2 + 32);
  v61 = *(a2 + 24);
  v14 = v61;
  v62 = v13;
  sub_100005AD4(&qword_1003B2128);
  State.wrappedValue.getter();
  v15 = v59;
  swift_getKeyPath();
  v61 = v15;
  sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration);

  v61 = v14;
  v62 = v13;
  State.wrappedValue.getter();
  v17 = v59;
  swift_getKeyPath();
  v61 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackStart;
  swift_beginAccess();
  sub_10001F620(v17 + v18, v12, &qword_1003B5130);

  v54 = v44;
  v55 = v16;
  v19 = sub_10012B7E8(sub_10012DE38);
  sub_100009EBC(v12, &qword_1003B5130);
  v20 = 1.0;
  if ((v19 & &_mh_execute_header) != 0)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = *&v19;
  }

  v22 = v43;
  sub_10012B9E0(v43, v19 | ((HIDWORD(v19) & 1) << 32));
  v59 = v14;
  v60 = v13;
  State.wrappedValue.getter();
  v23 = v56;
  swift_getKeyPath();
  v59 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__animationText;
  swift_beginAccess();
  (*(v46 + 16))(v45, v23 + v24, v47);

  v25 = Text.init(_:)();
  v46 = v26;
  LODWORD(v45) = v27;
  v47 = v28;
  KeyPath = swift_getKeyPath();
  v56 = v14;
  v57 = v13;
  State.wrappedValue.getter();
  v30 = v58;
  swift_getKeyPath();
  v56 = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackStart;
  swift_beginAccess();
  v32 = v30 + v31;
  v33 = v48;
  sub_10001F620(v32, v48, &qword_1003B5130);

  v34 = type metadata accessor for Date();
  if ((*(*(v34 - 8) + 48))(v33, 1, v34) != 1)
  {
    v20 = 0.5;
  }

  sub_100009EBC(v33, &qword_1003B5130);
  v35 = v50;
  sub_100129DC8(v50);
  if (*(v22 + 16))
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 3.0;
  }

  v37 = v49;
  *v49 = v21;
  *(v37 + 4) = v20;
  v38 = v51;
  (*(v52 + 32))(v37 + *(v51 + 32), v35, v53);
  *(v37 + *(v38 + 36)) = v36;
  v39 = sub_100005AD4(&qword_1003B2130);
  result = sub_10012DEB4(v37, a3 + *(v39 + 36), type metadata accessor for KaraokeRenderer);
  v41 = v46;
  *a3 = v25;
  *(a3 + 8) = v41;
  *(a3 + 16) = v45 & 1;
  *(a3 + 24) = v47;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  return result;
}

float sub_10012B6C8@<S0>(float *a1@<X8>, double a2@<D0>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005AD4(&qword_1003B2198);
  TimelineView.Context.date.getter();
  Date.timeIntervalSince(_:)();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  result = v9 / a2;
  *a1 = result;
  return result;
}

unint64_t sub_10012B7E8(void (*a1)(uint64_t *__return_ptr, char *))
{
  v13 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_10001F620(v1, &v13 - v8, &qword_1003B5130);
  v10 = (*(v4 + 48))(v9, 1, v3);
  if (v10 == 1)
  {
    v11 = 0;
LABEL_5:
    v14 = v10 == 1;
    return v11 | ((v10 == 1) << 32);
  }

  (*(v4 + 32))(v6, v9, v3);
  v13(&v15, v6);
  if (!v2)
  {
    (*(v4 + 8))(v6, v3);
    v11 = v15;
    goto LABEL_5;
  }

  result = (*(v4 + 8))(v6, v3);
  __break(1u);
  return result;
}

BOOL sub_10012B9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for KaraokeView(0) + 40));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v7, v4);
    v9 = v16;
  }

  if (v9)
  {
    if ((a2 & &_mh_execute_header) != 0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = *&a2;
    }

    if (*(v9 + 16) == v12)
    {
      *(v9 + 16) = v12;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v15 - 2) = v9;
      *(&v15 - 2) = v12;
      v16 = v9;
      sub_10012C738(&qword_1003B0328, type metadata accessor for KaraokeProgressMonitor);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return v9 == 0;
}

uint64_t sub_10012BC4C(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = result;
    sub_100005AD4(&qword_1003B2128);
    State.wrappedValue.getter();
    v2 = *v1;
    v3 = v1[1];
    v4 = sub_100129B2C();
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v6 = sub_100129C7C();
    sub_1001287DC(v6, v2, v3, v5);
  }

  return result;
}

uint64_t sub_10012BD08(uint64_t a1, double **a2, uint64_t *a3)
{
  v3 = *a2;
  if (*(*a2 + 2))
  {
    sub_100005AD4(&qword_1003B2128);
    State.wrappedValue.getter();
    v5 = *a3;
    v6 = a3[1];
    v7 = sub_100129C7C();
    sub_1001287DC(v7, v5, v6, v3);
  }

  else
  {
    sub_100005AD4(&qword_1003B2128);
    State.wrappedValue.getter();
    swift_getKeyPath();
    sub_10012C738(&qword_1003B1F70, type metadata accessor for KaraokeAnimationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer;
    v9 = *(v13 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer);
    if (v9)
    {
      v10 = v9;
      [v10 invalidate];
      if (*(v13 + v8))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
      }
    }

    static Animation.easeInOut(duration:)();
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_10012BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 40);
  if (*(a3 + 48) == 1)
  {

    if (v8)
    {
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10012D648(v8, 0);
    v9 = (*(v5 + 8))(v7, v4);
    if (v12[1])
    {
    }
  }

  __chkstk_darwin(v9);
  v12[-2] = a3;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10012C108(uint64_t a1)
{
  v2 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AttributedString();
  __chkstk_darwin(v3 - 8);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v8[2] = *(a1 + 24);
  v8[3] = v6;
  sub_100005AD4(&qword_1003B2128);
  State.wrappedValue.getter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  sub_100127A60(v5);
}

float sub_10012C238()
{
  swift_getKeyPath();
  sub_10012C738(&qword_1003B0328, type metadata accessor for KaraokeProgressMonitor);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

float sub_10012C2D8@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012C738(&qword_1003B0328, type metadata accessor for KaraokeProgressMonitor);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_10012C3A8(float a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012C738(&qword_1003B0328, type metadata accessor for KaraokeProgressMonitor);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10012C4C0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator22KaraokeProgressMonitor___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10012C584()
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

uint64_t sub_10012C624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10012C66C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

float sub_10012C6F4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

void sub_10012C708(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100128654(v1);
}

uint64_t sub_10012C738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012C780()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10012C7B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10012C804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10012C81C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__stopAnimationTimer) = v2;
  v4 = v2;
}

uint64_t sub_10012C8A8(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100005AD4(&qword_1003B2198);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_100005AD4(&unk_1003B21A0);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10012CA0C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC17SequoiaTranslator21KaraokeAnimationModel__playbackDuration) = result;
  return result;
}

unint64_t sub_10012CA24()
{
  result = qword_1003B1FC0;
  if (!qword_1003B1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1FC0);
  }

  return result;
}

unint64_t sub_10012CA78()
{
  result = qword_1003B1FC8;
  if (!qword_1003B1FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B1FC8);
  }

  return result;
}

uint64_t sub_10012CAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100005AD4(&qword_1003B1FD0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10001F620(a1, &v21 - v13, &qword_1003B5130);
  sub_10001F620(a2, &v14[v15], &qword_1003B5130);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10001F620(v14, v10, &qword_1003B5130);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10012C738(&qword_1003AFAF8, &type metadata accessor for Date);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100009EBC(v14, &qword_1003B5130);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100009EBC(v14, &qword_1003B1FD0);
    v17 = 1;
    return v17 & 1;
  }

  sub_100009EBC(v14, &qword_1003B5130);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10012CE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5130);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012CE9C()
{
  result = qword_1003B1FE0;
  if (!qword_1003B1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1FE0);
  }

  return result;
}

unint64_t sub_10012CEF0()
{
  result = qword_1003B1FE8;
  if (!qword_1003B1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1FE8);
  }

  return result;
}

unint64_t sub_10012CF64()
{
  result = qword_1003B1FF0;
  if (!qword_1003B1FF0)
  {
    sub_100005EA8(&qword_1003B1FF8);
    sub_10012CFE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1FF0);
  }

  return result;
}

unint64_t sub_10012CFE8()
{
  result = qword_1003B2000;
  if (!qword_1003B2000)
  {
    sub_100005EA8(&qword_1003B2008);
    sub_10012D06C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2000);
  }

  return result;
}

unint64_t sub_10012D06C()
{
  result = qword_1003B2010;
  if (!qword_1003B2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2010);
  }

  return result;
}

uint64_t sub_10012D0F8@<X0>(void *a1@<X8>)
{
  sub_10012D14C();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10012D14C()
{
  result = qword_1003B2018;
  if (!qword_1003B2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2018);
  }

  return result;
}

uint64_t sub_10012D1C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005AD4(&qword_1003AE478);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10012D294(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003AE478);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10012D344()
{
  sub_10012D4C0(319, &qword_1003B2088, type metadata accessor for KaraokeAnimationModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_10012D574(319, &qword_1003B2090, &qword_1003B1FF8);
    if (v1 <= 0x3F)
    {
      sub_10012D524();
      if (v2 <= 0x3F)
      {
        sub_10012D4C0(319, &qword_1003AE530, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10012D574(319, &qword_1003B20A0, &unk_1003B20A8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10012D4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10012D524()
{
  if (!qword_1003B2098)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B2098);
    }
  }
}

void sub_10012D574(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_100005EA8(a3);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10012D5E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KaraokeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012D648(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10012D658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for KaraokeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10012B01C(a1, v6, a2);
}

uint64_t sub_10012D6D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10012D718()
{
  result = qword_1003B2140;
  if (!qword_1003B2140)
  {
    sub_100005EA8(&qword_1003B2130);
    sub_10012D7D0();
    sub_10001BAEC(&qword_1003B2168, &qword_1003B2170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2140);
  }

  return result;
}

unint64_t sub_10012D7D0()
{
  result = qword_1003B2148;
  if (!qword_1003B2148)
  {
    sub_100005EA8(&qword_1003B2150);
    sub_10001BAEC(&qword_1003B2158, &qword_1003B2160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2148);
  }

  return result;
}

unint64_t sub_10012D888()
{
  result = qword_1003B2178;
  if (!qword_1003B2178)
  {
    sub_100005EA8(&qword_1003B20F8);
    sub_10012D914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2178);
  }

  return result;
}

unint64_t sub_10012D914()
{
  result = qword_1003B2180;
  if (!qword_1003B2180)
  {
    sub_100005EA8(&qword_1003B2100);
    sub_10012D718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2180);
  }

  return result;
}

unint64_t sub_10012D998()
{
  result = qword_1003B2188;
  if (!qword_1003B2188)
  {
    sub_100005EA8(&qword_1003B2108);
    sub_10012D888();
    sub_10012D914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2188);
  }

  return result;
}

uint64_t sub_10012DA28()
{
  v1 = type metadata accessor for KaraokeView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_10012D648(*(v5 + 40), *(v5 + 48));
  sub_10002F620(*(v5 + 56), *(v5 + 64));
  v6 = *(v1 + 36);
  sub_100005AD4(&qword_1003BA370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for LayoutDirection();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  j__swift_release();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10012DB8C()
{
  v1 = *(type metadata accessor for KaraokeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10012BC4C(v2);
}

uint64_t sub_10012DBEC(uint64_t a1, double **a2)
{
  v5 = *(type metadata accessor for KaraokeView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10012BD08(a1, a2, v6);
}

unint64_t sub_10012DC6C()
{
  result = qword_1003B2190;
  if (!qword_1003B2190)
  {
    sub_100005EA8(&qword_1003B2118);
    sub_100005EA8(&qword_1003B2108);
    sub_10012D998();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2190);
  }

  return result;
}

uint64_t sub_10012DD34(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B2118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012DD9C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for KaraokeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10012BF3C(a1, a2, v6);
}

uint64_t sub_10012DE5C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.avoidsOrphans.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10012DEB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012DF1C()
{
  sub_100005EA8(&qword_1003B2120);
  sub_100005EA8(&qword_1003B2118);
  sub_100005EA8(&qword_1003B2008);
  sub_10012DC6C();
  sub_10012CFE8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

char *sub_10012E060(void *a1)
{
  v3 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_100005AD4(&qword_1003B23F8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100005AD4(&qword_1003B2400);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit_textTranslationLocaleSubscription] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit_allowKeyboardLocaleChange] = 1;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit_conversation] = a1;
  v14 = type metadata accessor for KeyboardUpdatingTextViewUIKit();
  v27.receiver = v1;
  v27.super_class = v14;
  v15 = a1;
  v16 = objc_msgSendSuper2(&v27, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
  swift_beginAccess();
  v17 = v16;
  sub_100005AD4(&qword_1003AED68);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000A2CC(0, &qword_1003A9C40);
  v18 = static OS_dispatch_queue.main.getter();
  v26 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  sub_10001BAEC(&qword_1003B2408, &qword_1003B23F8);
  sub_100051450();
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v5, &qword_1003B23F0);

  (*(v7 + 8))(v9, v6);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10001BAEC(&qword_1003B2418, &qword_1003B2400);
  v20 = v24;
  v21 = Publisher<>.sink(receiveValue:)();

  (*(v25 + 8))(v13, v20);
  *&v17[OBJC_IVAR____TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit_textTranslationLocaleSubscription] = v21;

  return v17;
}

void sub_10012E46C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong reloadInputViews];
  }
}

id sub_10012E72C()
{
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit_allowKeyboardLocaleChange) == 1)
  {
    v1 = [objc_opt_self() activeInputModes];
    sub_10000A2CC(0, &qword_1003B2430);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v2 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v9 = v5;
        if (sub_10012E8BC(&v9))
        {

          return v6;
        }

        ++v4;
        if (v7 == i)
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

    return 0;
  }

  else
  {
    v10.receiver = v0;
    v10.super_class = type metadata accessor for KeyboardUpdatingTextViewUIKit();
    return objc_msgSendSuper2(&v10, "textInputMode");
  }
}

uint64_t sub_10012E8BC(id *a1)
{
  v3 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*a1 primaryLanguage];
  if (!v10)
  {
    v15 = 0;
    return v15 & 1;
  }

  v33 = v1;
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_10028B330(45, 0xE100000000000000, v12, v14);
    if (v16)
    {
      v17 = Locale.languageCode.getter();
      if (v18)
      {
        if (v12 == v17 && v18 == v14)
        {
LABEL_9:

LABEL_32:

          v15 = 1;
          goto LABEL_35;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    String.subscript.getter();
    v32 = static String._fromSubstring(_:)();
    v20 = v19;

    v21 = Locale.languageCode.getter();
    if (v22)
    {
      if (v21 == 26746 && v22 == 0xE200000000000000)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (v32 == 26746 && v20 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v24 = String.index(_:offsetBy:)();
        sub_100280B6C(v24, v12, v14);

        v25 = static String._fromSubstring(_:)();
        v27 = v26;

        if (Locale.isTraditionalChinese()())
        {
          if (v25 == 1953390920 && v27 == 0xE400000000000000)
          {
            goto LABEL_32;
          }
        }

        else if (v25 == 1936613704 && v27 == 0xE400000000000000)
        {
          goto LABEL_32;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_34:

        goto LABEL_35;
      }
    }

LABEL_24:

    v28 = Locale.languageCode.getter();
    if (v29)
    {
      if (v32 == v28 && v29 == v20)
      {
        goto LABEL_9;
      }

LABEL_15:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      goto LABEL_34;
    }

LABEL_14:

    v15 = 0;
LABEL_35:
    (*(v7 + 8))(v9, v6);
    return v15 & 1;
  }

  sub_100009EBC(v5, &qword_1003AFCE0);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_10012EDC0()
{
}

uint64_t sub_10012EE88()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    static Published.subscript.getter();

    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_100009EBC(v7, &qword_1003AFCE0);
      v10 = [objc_opt_self() mainBundle];
      v19._object = 0xE000000000000000;
      v11._countAndFlagsBits = 0x545F4F545F504154;
      v11._object = 0xEB00000000455059;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v19._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v19)._countAndFlagsBits;
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_100009EBC(v7, &qword_1003AFCE0);
      v14 = [objc_opt_self() mainBundle];
      v15._countAndFlagsBits = 0x617A696C61636F4CLL;
      v15._object = 0xEB00000000656C62;
      v16._countAndFlagsBits = 0x545F4F545F504154;
      v16._object = 0xEB00000000455059;
      countAndFlagsBits = Locale.ltLocalizedAppString(_:table:bundle:)(v16, v15, v14)._countAndFlagsBits;

      (*(v2 + 8))(v4, v1);
    }

    return countAndFlagsBits;
  }

  else
  {
    type metadata accessor for ConversationManager();
    sub_100130B98(&qword_1003B1368, type metadata accessor for ConversationManager);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10012F1B0()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    v3 = objc_allocWithZone(type metadata accessor for KeyboardUpdatingTextViewUIKit());
    v4 = sub_10012E060(v2);
    sub_10012EE88();
    v5 = sub_10026DB48();
    v6 = String._bridgeToObjectiveC()();

    [v5 setText:v6];

    [v4 setFont:*(v1 + *(type metadata accessor for KeyboardUpdatingTextView(0) + 28))];
    v7 = objc_opt_self();
    v8 = v4;
    v9 = [v7 clearColor];
    [v8 setBackgroundColor:v9];

    v10 = v8;
    sub_100005AD4(&qword_1003B23E8);
    UIViewRepresentableContext.coordinator.getter();
    [v10 setDelegate:v13];

    UIViewRepresentableContext.coordinator.getter();
    [v10 setTextDropDelegate:v13];

    [v10 setReturnKeyType:0];
    [v10 setForceDisableDictation:1];
    [v10 setShowsVerticalScrollIndicator:0];
    [v10 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    [v10 setAdjustsFontForContentSizeCategory:1];
    UIViewRepresentableContext.coordinator.getter();
    v11 = *&v13[OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_keyboardUpdatingTextViewUIKit];
    *&v13[OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_keyboardUpdatingTextViewUIKit] = v10;

    return v10;
  }

  else
  {
    type metadata accessor for ConversationManager();
    sub_100130B98(&qword_1003B1368, type metadata accessor for ConversationManager);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_10012F448(void *a1)
{
  type metadata accessor for KeyboardUpdatingTextViewUIKit();
  if (swift_dynamicCastClass())
  {
    v2 = a1;
    sub_10012EE88();
    v3 = sub_10026DB48();
    v4 = String._bridgeToObjectiveC()();

    [v3 setText:v4];
  }

  type metadata accessor for KeyboardUpdatingTextView(0);
  sub_100005AD4(&qword_1003BA760);
  result = Binding.wrappedValue.getter();
  if (v6 == 1)
  {
    return [a1 becomeFirstResponder];
  }

  return result;
}

id sub_10012F564(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_keyboardUpdatingTextViewUIKit] = 0;
  v1[OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_isReturnKeyChangeReloadInputViews] = 0;
  v3 = OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator__horizontalSizeClass;
  *&v1[v3] = swift_getKeyPath();
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  sub_100130BE0(a1, &v1[OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_keyboardUpdatingTextView]);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for KeyboardUpdatingTextView.Coordinator(0);
  v4 = objc_msgSendSuper2(&v9, "init");
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  [v7 addObserver:v6 selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  sub_100130EE0(a1);
  return v6;
}

uint64_t sub_10012F68C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a4 == 10 && a5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for KeyboardUpdatingTextViewUIKit();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = v5 + OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_keyboardUpdatingTextView;
    v12 = *(v11 + *(type metadata accessor for KeyboardUpdatingTextView(0) + 36));
    v13 = a1;
    v12(v10);

    return 0;
  }

  v14 = [a1 text];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = Range<>.init(_:in:)();
  if (v21)
  {

    return 0;
  }

  v22 = sub_10012F8C4(v19, v20, a4, a5, v16, v18);
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 && (v22 || v24 != 0xE000000000000000))
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v26 = (~v27 & 1);
  }

  else
  {

    v26 = 0;
  }

  if (v26 == [a1 returnKeyType])
  {
    return 1;
  }

  [a1 setReturnKeyType:v26];
  type metadata accessor for KeyboardUpdatingTextViewUIKit();
  v28 = swift_dynamicCastClass();
  result = 1;
  if (v28)
  {
    v29 = OBJC_IVAR____TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit_allowKeyboardLocaleChange;
    v28[OBJC_IVAR____TtC17SequoiaTranslator29KeyboardUpdatingTextViewUIKit_allowKeyboardLocaleChange] = 0;
    v30 = a1;
    [v28 reloadInputViews];
    v28[v29] = 1;

    return 1;
  }

  return result;
}

unint64_t sub_10012F8C4(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  Substring.init<A>(_:)();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  Substring.init<A>(_:)();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_10024B9A8(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = String.UTF8View._foreignDistance(from:to:)();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_10024B9A8(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_10024B9A8(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = String.UTF8View._foreignDistance(from:to:)();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = String.UTF8View._foreignCount()();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        String.reserveCapacity(_:)(result);
LABEL_23:
        String.subscript.getter();
        sub_100130F84();
        String.append<A>(contentsOf:)();

        String.append<A>(contentsOf:)();
        sub_100280B6C(a2, a5, a6);
        String.append<A>(contentsOf:)();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_10012FEDC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v24 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003B23E0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_100005AD4(&qword_1003AC848);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for UserInterfaceSizeClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_keyboardUpdatingTextViewUIKit);
  if (v14)
  {
    sub_10001F620(v0 + OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator__horizontalSizeClass, v6, &qword_1003B23E0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10008E200(v6, v9);
      v15 = v14;
    }

    else
    {
      v16 = v14;
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      v23 = v1;
      v18 = v17;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v24 + 8))(v3, v23);
    }

    v19 = *(v11 + 48);
    if (v19(v9, 1, v10) == 1)
    {
      (*(v11 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v10);
      if (v19(v9, 1, v10) != 1)
      {
        sub_100009EBC(v9, &qword_1003AC848);
      }
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
    }

    v20 = sub_1002C1F50(v13, 0);
    (*(v11 + 8))(v13, v10);
    [v14 setFont:v20];

    v21 = v0 + OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_keyboardUpdatingTextView;
    v22 = type metadata accessor for KeyboardUpdatingTextView(0);
    (*(v21 + *(v22 + 32)))(v14);
  }
}

id sub_1001303E8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001304A8()
{
  type metadata accessor for KeyboardUpdatingTextView(319);
  if (v0 <= 0x3F)
  {
    sub_10013087C(319, &unk_1003B22F0, &type metadata accessor for Environment.Content);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001305D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003B2300);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1001306B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003B2300);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100130784()
{
  sub_1001133F4();
  if (v0 <= 0x3F)
  {
    sub_10013087C(319, &qword_1003B2380, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10003E098();
      if (v2 <= 0x3F)
      {
        sub_10000A2CC(319, qword_1003B2390);
        if (v3 <= 0x3F)
        {
          sub_10002ACA4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10013087C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100005EA8(&qword_1003AC848);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id sub_1001308F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100130BE0(v2, v5);
  v6 = objc_allocWithZone(type metadata accessor for KeyboardUpdatingTextView.Coordinator(0));
  result = sub_10012F564(v5);
  *a2 = result;
  return result;
}

uint64_t sub_1001309D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100130B98(&qword_1003B2420, type metadata accessor for KeyboardUpdatingTextView);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100130A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100130B98(&qword_1003B2420, type metadata accessor for KeyboardUpdatingTextView);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100130AF8()
{
  sub_100130B98(&qword_1003B2420, type metadata accessor for KeyboardUpdatingTextView);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100130B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100130BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyboardUpdatingTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100130C44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100130CC0(uint64_t a1, void **a2)
{
  v4 = sub_100005AD4(&qword_1003AFCE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_10001F620(a1, &v13 - v8, &qword_1003AFCE0);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001F620(v9, v7, &qword_1003AFCE0);
  v11 = v10;
  static Published.subscript.setter();
  return sub_100009EBC(v9, &qword_1003AFCE0);
}

uint64_t sub_100130E34(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AC848);
  __chkstk_darwin(v2 - 8);
  sub_10001F620(a1, &v5 - v3, &qword_1003AC848);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_100130EE0(uint64_t a1)
{
  v2 = type metadata accessor for KeyboardUpdatingTextView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100130F44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100130F84()
{
  result = qword_1003B2428;
  if (!qword_1003B2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2428);
  }

  return result;
}

uint64_t sub_100130FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001310BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LabeledExpandingTextView()
{
  result = qword_1003B2490;
  if (!qword_1003B2490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001311AC()
{
  sub_100131278();
  if (v0 <= 0x3F)
  {
    sub_10003E098();
    if (v1 <= 0x3F)
    {
      sub_1001312D0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Locale();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100131278()
{
  if (!qword_1003B24A0)
  {
    type metadata accessor for LiveActivityViewModel();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B24A0);
    }
  }
}

void sub_1001312D0()
{
  if (!qword_1003B29B0)
  {
    sub_100005EA8(&unk_1003B27F0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B29B0);
    }
  }
}

uint64_t sub_100131350@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a2;
  v3 = type metadata accessor for LayoutDirection();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v82 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for RedactionReasons();
  v80 = *(v77 - 8);
  __chkstk_darwin(v77);
  v79 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100005AD4(&qword_1003B24F8);
  __chkstk_darwin(v65);
  v7 = &v64 - v6;
  v8 = sub_100005AD4(&qword_1003B2500);
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v73 = &v64 - v9;
  v70 = sub_100005AD4(&qword_1003B2508);
  __chkstk_darwin(v70);
  v11 = &v64 - v10;
  v67 = sub_100005AD4(&qword_1003B2510);
  __chkstk_darwin(v67);
  v76 = &v64 - v12;
  v72 = sub_100005AD4(&qword_1003B2518);
  v13 = __chkstk_darwin(v72);
  v81 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v64 - v16;
  __chkstk_darwin(v15);
  v78 = &v64 - v18;
  v19 = a1[8];
  v86 = a1[7];
  v87 = v19;
  sub_10001F278();

  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v69 = Text.font(_:)();
  v68 = v25;
  v66 = v26;
  v71 = v27;
  v28 = v65;

  sub_10002EA54(v20, v22, v24 & 1);

  v29 = a1[9];
  v30 = a1[10];
  v31 = a1[5];
  v32 = a1[6];

  sub_10001AD18(v31);
  sub_1000ED70C(v29, v30, v31, v32, v7);
  static Font.body.getter();
  static Font.Weight.bold.getter();
  v33 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v35 = &v7[*(v28 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  if (*(a1 + *(type metadata accessor for LabeledExpandingTextView() + 40)) == 1)
  {
    v36 = v79;
    static RedactionReasons.placeholder.getter();
    v37 = 0x3FD999999999999ALL;
    v38 = 1.4;
    v39 = v77;
  }

  else
  {
    v86 = _swiftEmptyArrayStorage;
    sub_100131CCC(&qword_1003B2520, &type metadata accessor for RedactionReasons);
    sub_100005AD4(&qword_1003B2528);
    sub_10001BAEC(&qword_1003B2530, &qword_1003B2528);
    v36 = v79;
    v40 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = 0;
    v38 = 1.0;
    v39 = v40;
  }

  sub_100131BE4();
  v41 = v73;
  View.redacted(reason:)();
  (*(v80 + 8))(v36, v39);
  sub_100131D14(v7);
  (*(v74 + 32))(v11, v41, v75);
  *&v11[*(v70 + 36)] = v37;
  static UnitPoint.leading.getter();
  v43 = v42;
  v45 = v44;
  v46 = v76;
  sub_100023BD4(v11, v76, &qword_1003B2508);
  v47 = (v46 + *(v67 + 36));
  *v47 = v38;
  v47[1] = v38;
  *(v47 + 2) = v43;
  *(v47 + 3) = v45;
  v48 = swift_getKeyPath();
  v49 = Locale.isRTL()();
  v51 = v82;
  v50 = v83;
  v52 = &enum case for LayoutDirection.rightToLeft(_:);
  if (!v49)
  {
    v52 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v53 = v84;
  (*(v83 + 104))(v82, *v52, v84);
  v54 = &v17[*(v72 + 36)];
  v55 = sub_100005AD4(&qword_1003AA938);
  (*(v50 + 32))(v54 + *(v55 + 28), v51, v53);
  *v54 = v48;
  sub_100023BD4(v46, v17, &qword_1003B2510);
  v56 = v78;
  sub_100023BD4(v17, v78, &qword_1003B2518);
  v57 = v81;
  sub_100131D84(v56, v81);
  v58 = v85;
  v59 = v69;
  v60 = v68;
  *v85 = v69;
  v58[1] = v60;
  v61 = v66 & 1;
  *(v58 + 16) = v66 & 1;
  v58[3] = v71;
  v62 = sub_100005AD4(&qword_1003B2548);
  sub_100131D84(v57, v58 + *(v62 + 48));
  sub_100005B1C(v59, v60, v61);

  sub_100131DF4(v56);
  sub_100131DF4(v57);
  sub_10002EA54(v59, v60, v61);
}

uint64_t sub_100131B2C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = sub_100005AD4(&qword_1003B24E8);
  sub_100131350(v1, (a1 + *(v3 + 44)));
  v4 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_100005AD4(&qword_1003B24F0);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

unint64_t sub_100131BE4()
{
  result = qword_1003B2538;
  if (!qword_1003B2538)
  {
    sub_100005EA8(&qword_1003B24F8);
    sub_100131CCC(&qword_1003B2540, type metadata accessor for ExpandingLineLimitedTextView);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2538);
  }

  return result;
}

uint64_t sub_100131CCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100131D14(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B24F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100131D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B2518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100131DF4(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B2518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100131E60()
{
  result = qword_1003B2550;
  if (!qword_1003B2550)
  {
    sub_100005EA8(&qword_1003B24F0);
    sub_10001BAEC(&qword_1003B2558, &qword_1003B2560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2550);
  }

  return result;
}

uint64_t sub_100131F2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005AD4(&qword_1003B2568);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100005AD4(&qword_1003AE478);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10013207C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B2568);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100005AD4(&qword_1003AE478);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LabeledTextView()
{
  result = qword_1003B25C8;
  if (!qword_1003B25C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100132204()
{
  sub_100132368(319, &qword_1003B25D8, &type metadata for LabeledTextView.Alignment, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1001312D0();
    if (v1 <= 0x3F)
    {
      sub_1001323B8(319, &qword_1003B25E0, &type metadata accessor for Locale.Language);
      if (v2 <= 0x3F)
      {
        sub_100132368(319, &qword_1003B25E8, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1001323B8(319, &qword_1003AE530, &type metadata accessor for LayoutDirection);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100132368(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1001323B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_100132420()
{
  result = qword_1003B2630;
  if (!qword_1003B2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2630);
  }

  return result;
}

uint64_t sub_100132490@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B0300);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LabeledTextView();
  sub_10001F620(v1 + *(v10 + 36), v9, &qword_1003B0300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale.Language();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100132698()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LabeledTextView() + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10002F620(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1001327F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003BA370);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LabeledTextView();
  sub_10001F620(v1 + *(v10 + 44), v9, &qword_1003BA370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1001329F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100005AD4(&qword_1003B2638);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = *(v1 + 32);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v7 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v7 = static HorizontalAlignment.trailing.getter();
  }

  *v5 = v7;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v8 = sub_100005AD4(&qword_1003B2640);
  sub_100132B34(v1, &v5[*(v8 + 44)]);
  v9 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_100023BD4(v5, a1, &qword_1003B2638);
  result = sub_100005AD4(&qword_1003B2648);
  v19 = a1 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_100132B34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003B2650);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = a1[1];
  v36 = *a1;
  v37 = v10;
  sub_10001F278();

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v16 = Text.font(_:)();
  v32 = v17;
  v33 = v18;
  v34 = v19;

  sub_10002EA54(v11, v13, v15 & 1);

  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = sub_100005AD4(&qword_1003B2658);
  sub_100132E78(a1, &v9[*(v20 + 44)]);
  static Font.body.getter();
  static Font.Weight.bold.getter();
  v21 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v23 = &v9[*(sub_100005AD4(&qword_1003B2660) + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  *&v9[*(sub_100005AD4(&qword_1003B2668) + 36)] = 256;
  v24 = swift_getKeyPath();
  v25 = &v9[*(v5 + 44)];
  v26 = sub_100005AD4(&qword_1003AA938);
  sub_1001335A0(v25 + *(v26 + 28));
  *v25 = v24;
  v27 = v35;
  sub_10001F620(v9, v35, &qword_1003B2650);
  v28 = v32;
  *a2 = v16;
  *(a2 + 8) = v28;
  LOBYTE(v24) = v33 & 1;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = sub_100132E50;
  *(a2 + 40) = 0;
  v29 = sub_100005AD4(&qword_1003B2670);
  sub_10001F620(v27, a2 + *(v29 + 48), &qword_1003B2650);
  sub_100005B1C(v16, v28, v24);

  sub_100009EBC(v9, &qword_1003B2650);
  sub_100009EBC(v27, &qword_1003B2650);
  sub_10002EA54(v16, v28, v24);
}

uint64_t sub_100132E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = type metadata accessor for OpacityTransition();
  v4 = *(v53 - 8);
  v5 = __chkstk_darwin(v53);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v47 - v7;
  v48 = type metadata accessor for TranslateText();
  __chkstk_darwin(v48);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_100005AD4(&qword_1003B2678);
  __chkstk_darwin(v47);
  v49 = &v47 - v10;
  v11 = sub_100005AD4(&qword_1003B2680);
  v12 = __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = &v47 - v15;
  v55 = sub_100005AD4(&qword_1003B2688);
  __chkstk_darwin(v55);
  v58 = &v47 - v16;
  v17 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v47 - v18;
  v54 = sub_100005AD4(&qword_1003B2690);
  __chkstk_darwin(v54);
  v21 = &v47 - v20;
  v22 = sub_100005AD4(&qword_1003B2698);
  v23 = __chkstk_darwin(v22 - 8);
  v57 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v56 = &v47 - v25;
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  if (*(a1 + 33) == 1)
  {
    v59 = 0;

    static Binding.constant(_:)();
    v28 = type metadata accessor for Locale();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    v53 = v11;
    sub_10001AD18(*(a1 + 40));
    ExpandingText.init(_:isExpanded:_:buttonAction:)();
    v29 = static Color.gray.getter();
    KeyPath = swift_getKeyPath();
    v31 = &v21[*(v54 + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    sub_10001F620(v21, v58, &qword_1003B2690);
    swift_storeEnumTagMultiPayload();
    sub_100133AA4();
    sub_100133B8C();
    v32 = v56;
    _ConditionalContent<>.init(storage:)();
    v33 = v21;
    v34 = &qword_1003B2690;
  }

  else
  {
    *v9 = swift_getKeyPath();
    sub_100005AD4(&qword_1003B0300);
    swift_storeEnumTagMultiPayload();
    v35 = v48;
    v36 = (v9 + *(v48 + 24));
    *v36 = v26;
    v36[1] = v27;
    *(v9 + *(v35 + 20)) = 0;

    if (sub_100132698())
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 0.65;
    }

    v38 = v9;
    v39 = v49;
    sub_100133A40(v38, v49);
    *(v39 + *(v47 + 36)) = v37;
    v40 = v52;
    OpacityTransition.init()();
    v41 = v53;
    (*(v4 + 16))(v51, v40, v53);
    sub_100133D00(qword_1003AF5D8, &type metadata accessor for OpacityTransition);
    v42 = AnyTransition.init<A>(_:)();
    (*(v4 + 8))(v40, v41);
    sub_100023BD4(v39, v14, &qword_1003B2678);
    *&v14[*(v11 + 36)] = v42;
    v43 = v50;
    sub_100023BD4(v14, v50, &qword_1003B2680);
    sub_10001F620(v43, v58, &qword_1003B2680);
    swift_storeEnumTagMultiPayload();
    sub_100133AA4();
    sub_100133B8C();
    v32 = v56;
    _ConditionalContent<>.init(storage:)();
    v33 = v43;
    v34 = &qword_1003B2680;
  }

  sub_100009EBC(v33, v34);
  v44 = v57;
  sub_10001F620(v32, v57, &qword_1003B2698);
  sub_10001F620(v44, a2, &qword_1003B2698);
  v45 = a2 + *(sub_100005AD4(&qword_1003B26C0) + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_100009EBC(v32, &qword_1003B2698);
  return sub_100009EBC(v44, &qword_1003B2698);
}

uint64_t sub_1001335A0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for Locale.Language();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for LayoutDirection();
  v6 = *(v35 - 8);
  v7 = __chkstk_darwin(v35);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v34 = &v31 - v11;
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v32 = *(v14 - 8);
  v33 = v14;
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005AD4(&qword_1003BA370);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v20 = *(v1 + 32);
  if (v20 == 2)
  {
    sub_100132490(v5);
    v21 = Locale.Language.isRTL.getter();
    (*(v3 + 8))(v5, v2);
    if (v21)
    {
      v22 = &enum case for LayoutDirection.rightToLeft(_:);
    }

    else
    {
      v22 = &enum case for LayoutDirection.leftToRight(_:);
    }

    return (*(v6 + 104))(v36, *v22, v35);
  }

  else if (v20)
  {
    sub_1001327F0(v13);
    v23 = *(v6 + 32);
    v24 = v35;
    v23(v9, v13, v35);
    v25 = (*(v6 + 88))(v9, v24);
    if (v25 == enum case for LayoutDirection.leftToRight(_:))
    {
      v26 = v34;
      (*(v6 + 104))(v34, enum case for LayoutDirection.rightToLeft(_:), v24);
    }

    else
    {
      v29 = *(v6 + 104);
      v26 = v34;
      if (v25 == enum case for LayoutDirection.rightToLeft(_:))
      {
        (v29)(v34, enum case for LayoutDirection.leftToRight(_:), v24);
      }

      else
      {
        v29(v34);
        (*(v6 + 8))(v9, v24);
      }
    }

    return (v23)(v36, v26, v24);
  }

  else
  {
    v28 = type metadata accessor for LabeledTextView();
    sub_10001F620(v1 + *(v28 + 44), v19, &qword_1003BA370);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return (*(v6 + 32))(v36, v19, v35);
    }

    else
    {
      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      return (*(v32 + 8))(v16, v33);
    }
  }
}

uint64_t sub_100133A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslateText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100133AA4()
{
  result = qword_1003B26A0;
  if (!qword_1003B26A0)
  {
    sub_100005EA8(&qword_1003B2690);
    sub_100133D00(&qword_1003B26A8, &type metadata accessor for ExpandingText);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B26A0);
  }

  return result;
}

unint64_t sub_100133B8C()
{
  result = qword_1003B26B0;
  if (!qword_1003B26B0)
  {
    sub_100005EA8(&qword_1003B2680);
    sub_100133C44();
    sub_10001BAEC(&qword_1003AE9B0, &qword_1003AE9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B26B0);
  }

  return result;
}

unint64_t sub_100133C44()
{
  result = qword_1003B26B8;
  if (!qword_1003B26B8)
  {
    sub_100005EA8(&qword_1003B2678);
    sub_100133D00(&qword_1003B0310, type metadata accessor for TranslateText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B26B8);
  }

  return result;
}

uint64_t sub_100133D00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100133D54()
{
  result = qword_1003B26C8;
  if (!qword_1003B26C8)
  {
    sub_100005EA8(&qword_1003B2648);
    sub_10001BAEC(&qword_1003B26D0, &qword_1003B2638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B26C8);
  }

  return result;
}

id sub_100133E3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LandscapeErrorModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LandscapeErrorModel()
{
  result = qword_1003B2718;
  if (!qword_1003B2718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100133F88()
{
  sub_1000C1BC0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10013403C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LandscapeErrorModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

char *sub_10013407C()
{
  v0 = [objc_allocWithZone(type metadata accessor for LanguageAwareTextView()) init];
  sub_100134148(v0);
  v1 = v0;
  sub_100005AD4(&qword_1003B2870);
  UIViewRepresentableContext.coordinator.getter();
  [v1 setDelegate:v3];

  UIViewRepresentableContext.coordinator.getter();
  [v1 setTextDropDelegate:v3];

  return v1;
}

uint64_t sub_100134148(char *a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AFCE0);
  v5 = __chkstk_darwin(v4 - 8);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = [a1 text];
  if (v9)
  {
    v10 = v9;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v37 = 0;
    v12 = 0;
  }

  v13 = *v2;
  v14 = *(v2 + 1);
  v15 = *(v2 + 2);
  v16 = *(v2 + 3);
  v41 = *v2;
  v42 = v14;
  v43 = v15;
  v44 = v16;
  sub_100005AD4(&unk_1003B2860);
  Binding.wrappedValue.getter();
  if (!v12)
  {
    if (!v40)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (!v40)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v37 == v39 && v12 == v40)
  {

    goto LABEL_15;
  }

  LODWORD(v37) = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_15;
  }

LABEL_11:
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v44 = v16;
  Binding.wrappedValue.getter();
  if (v40)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [a1 setText:v17];

LABEL_15:
  v18 = *(v2 + 5);
  v19 = &a1[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_placeholderLocalizableKey];
  *v19 = *(v2 + 4);
  *(v19 + 1) = v18;

  sub_10013AB10();
  v20 = type metadata accessor for LanguageAwareEditor(0);
  v21 = v20[6];
  v22 = type metadata accessor for Locale();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v8, &v2[v21], v22);
  (*(v23 + 56))(v8, 0, 1, v22);
  v24 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
  swift_beginAccess();
  v25 = v38;
  sub_1000E1D20(&a1[v24], v38);
  swift_beginAccess();
  sub_100135504(v8, &a1[v24]);
  swift_endAccess();
  sub_100139B84(v25);
  sub_1000E20D4(v25);
  sub_1000E20D4(v8);
  [a1 setFont:*&v2[v20[9]]];
  [a1 setReturnKeyType:*&v2[v20[10]]];
  [a1 setTextColor:*&v2[v20[7]]];
  v26 = *&v2[v20[8]];
  v27 = OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholderColor;
  swift_beginAccess();
  v28 = *&a1[v27];
  *&a1[v27] = v26;
  v29 = v26;

  PlaceholderTextView.updatePlaceholderProperties()();
  v30 = &v2[v20[17]];
  v31 = *v30;
  v32 = v30[1];
  v33 = &a1[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_willResignFirstResponder];
  v34 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_willResignFirstResponder];
  *v33 = v31;
  v33[1] = v32;
  sub_10001AD18(v31);
  sub_10001ABE4(v34);
  [a1 setEditable:v2[v20[11]]];
  [a1 setTag:*&v2[v20[18]]];
  return sub_1001396DC();
}