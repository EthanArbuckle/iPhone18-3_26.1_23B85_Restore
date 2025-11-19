uint64_t sub_100DDA4C4()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v8 = v3 + 104;
  v7 = *(v3 + 104);
  v93 = enum case for DispatchPredicate.onQueue(_:);
  v94 = v7;
  v7(v5);
  v9 = v6;
  v10 = _dispatchPreconditionTest(_:)();
  v13 = *(v3 + 8);
  v12 = v3 + 8;
  v11 = v13;
  v13(v5, v2);
  if (v10)
  {
    v96 = v0;
    v97 = v1;
    v91 = v2;
    v92 = v8;
    v89 = v11;
    v90 = v12;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = 0xD000000000000010;
  v15 = static OS_os_log.boardStore;
  v16 = static os_log_type_t.info.getter();
  sub_100005404(v15, &_mh_execute_header, v16, "Creating schema for the boards table", 36, 2, &_swiftEmptyArrayStorage);
  v98 = 0;
  v99 = 0xE000000000000000;
  _StringGuts.grow(_:)(479);
  v17._countAndFlagsBits = 0x5420455441455243;
  v17._object = 0xED000020454C4241;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x736472616F62;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 10272;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._object = 0x8000000101585360;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD00000000000001CLL;
  v21._object = 0x8000000101585A40;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x616E5F72656E776FLL;
  v22._object = 0xEA0000000000656DLL;
  String.append(_:)(v22);
  v23._object = 0x80000001015AA320;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x656E6961746E6F63;
  v24._object = 0xEE00646975755F72;
  String.append(_:)(v24);
  v25._object = 0x80000001015AA270;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v95 = "N (board_items_2.";
  v26._countAndFlagsBits = 0xD000000000000018;
  v26._object = 0x80000001015A34C0;
  String.append(_:)(v26);
  v27._object = 0x80000001015AA270;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 1635017060;
  v28._object = 0xE400000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x202C424F4C4220;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000012;
  v30._object = 0x80000001015A3810;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C4C41455220;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x6E6F7473626D6F74;
  v32._object = 0xEA00000000006465;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000013;
  v33._object = 0x80000001015AA340;
  String.append(_:)(v33);
  v34._object = 0x80000001015A33D0;
  v34._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x80000001015AA630;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD000000000000018;
  v36._object = 0x80000001015A37D0;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000014;
  v37._object = 0x80000001015AA9F0;
  String.append(_:)(v37);
  v38._object = 0xE900000000000061;
  v38._countAndFlagsBits = 0x7461645F636E7973;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x202C424F4C4220;
  v39._object = 0xE700000000000000;
  String.append(_:)(v39);
  v40._object = 0xEE00657461645F65;
  v40._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x202C4C41455220;
  v41._object = 0xE700000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD00000000000001ALL;
  v42._object = 0x80000001015A37F0;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000013;
  v43._object = 0x80000001015AA340;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x5F65726168736B63;
  v44._object = 0xEC00000061746164;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x202C424F4C4220;
  v45._object = 0xE700000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD000000000000014;
  v46._object = 0x80000001015A3590;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD00000000000001DLL;
  v47._object = 0x80000001015AA630;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x61637369645F7369;
  v48._object = 0xEE00656C62616472;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0xD000000000000020;
  v49._object = 0x80000001015AAA10;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x656E6961746E6F63;
  v50._object = 0xEE00646975755F72;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 8236;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v52._object = 0x8000000101585360;
  v52._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x4552454645522029;
  v53._object = 0xED0000205345434ELL;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0x74695F6472616F62;
  v54._object = 0xEB00000000736D65;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 10272;
  v55._object = 0xE200000000000000;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 0x6975755F6D657469;
  v56._object = 0xE900000000000064;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 8236;
  v57._object = 0xE200000000000000;
  String.append(_:)(v57);
  v58._object = 0x8000000101585360;
  v58._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 0xD000000000000040;
  v59._object = 0x80000001015AAA40;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 0xD000000000000018;
  v60._object = (v95 | 0x8000000000000000);
  String.append(_:)(v60);
  v61._countAndFlagsBits = 8236;
  v61._object = 0xE200000000000000;
  String.append(_:)(v61);
  v62._object = 0x8000000101585360;
  v62._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 0x4552454645522029;
  v63._object = 0xED0000205345434ELL;
  String.append(_:)(v63);
  v64._countAndFlagsBits = 0x74695F6472616F62;
  v64._object = 0xEB00000000736D65;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 10272;
  v65._object = 0xE200000000000000;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 0x6975755F6D657469;
  v66._object = 0xE900000000000064;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 8236;
  v67._object = 0xE200000000000000;
  String.append(_:)(v67);
  v68._object = 0x8000000101585360;
  v68._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v68);
  v69._countAndFlagsBits = 0xD000000000000033;
  v69._object = 0x80000001015AAA90;
  String.append(_:)(v69);
  v70 = v98;
  v71 = v99;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v73 = v97;
  v74 = sub_10001CC04(v72, v70, v71);

  if (v73)
  {
    return result;
  }

  v76 = *(*(v74 + 16) + 32);
  *v5 = v76;
  v77 = v91;
  v94(v5, v93, v91);
  v78 = v76;
  LOBYTE(v76) = _dispatchPreconditionTest(_:)();
  v79 = v89;
  v89(v5, v77);
  if ((v76 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v80 = *(v74 + 16);

  v81 = sub_10001CEC4(v80, v74);

  if (v81 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v83 = v81;
    *(v83 + 8) = v14 + 17;
    *(v83 + 16) = 0x80000001015AAAD0;
    swift_willThrow();
    v84 = *(*(v74 + 16) + 32);
    *v5 = v84;
    v94(v5, v93, v77);
    v85 = v84;
    v86 = _dispatchPreconditionTest(_:)();
    v79(v5, v77);
    if (v86)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v14 = *(*(v74 + 16) + 32);
  *v5 = v14;
  v94(v5, v93, v77);
  v82 = v14;
  v81 = _dispatchPreconditionTest(_:)();
  v79(v5, v77);
  if ((v81 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v87 = *(v74 + 24);
  if (v87)
  {
    sqlite3_finalize(v87);
    *(v74 + 24) = 0;
  }
}

uint64_t sub_100DDAD7C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v54 = enum case for DispatchPredicate.onQueue(_:);
  v55 = v7;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v56 = v1;
    v53 = v9;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = 0xD000000000000010;
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Creating schema for the boards metadata table", 45, 2, &_swiftEmptyArrayStorage);
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x6D5F736472616F62;
  v14._object = 0xEF61746164617465;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._object = 0x8000000101585360;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000026;
  v17._object = 0x80000001015AA960;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x736472616F62;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 10272;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._object = 0x8000000101585360;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD000000000000015;
  v21._object = 0x80000001015AA020;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x7461645F74647263;
  v22._object = 0xE900000000000061;
  String.append(_:)(v22);
  v23._object = 0x80000001015AA270;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x726F7661665F7369;
  v24._object = 0xEB00000000657469;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000013;
  v25._object = 0x80000001015AA340;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  v26._object = 0x80000001015A3390;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x80000001015AA340;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x6174735F77656976;
  v28._object = 0xEF617461645F6574;
  String.append(_:)(v28);
  v29._object = 0x80000001015AA270;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000019;
  v30._object = 0x80000001015A33B0;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000020;
  v31._object = 0x8000000101585A60;
  String.append(_:)(v31);
  v32._object = 0x80000001015A33D0;
  v32._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD00000000000001DLL;
  v33._object = 0x80000001015AA630;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x7461645F636E7973;
  v34._object = 0xE900000000000061;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x2920424F4C4220;
  v35._object = 0xE700000000000000;
  String.append(_:)(v35);
  v36 = v57;
  v37 = v58;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v39 = v56;
  v40 = sub_10001CC04(v38, v36, v37);

  if (v39)
  {
    return result;
  }

  v42 = *(*(v40 + 16) + 32);
  *v5 = v42;
  v55(v5, v54, v2);
  v43 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v44 = v53;
  v53(v5, v2);
  if ((v42 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v45 = *(v40 + 16);

  v46 = sub_10001CEC4(v45, v40);

  if (v46 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v49 = v46;
    *(v49 + 8) = v10 + 26;
    *(v49 + 16) = 0x80000001015AA990;
    swift_willThrow();
    v50 = *(*(v40 + 16) + 32);
    *v5 = v50;
    v55(v5, v54, v2);
    v51 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v53(v5, v2);
    if (v50)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v47 = *(*(v40 + 16) + 32);
  *v5 = v47;
  v55(v5, v54, v2);
  v48 = v47;
  v10 = _dispatchPreconditionTest(_:)();
  v44(v5, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v52 = *(v40 + 24);
  if (v52)
  {
    sqlite3_finalize(v52);
    *(v40 + 24) = 0;
  }
}

uint64_t sub_100DDB3B4()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v84 = enum case for DispatchPredicate.onQueue(_:);
  v85 = v7;
  v86 = v3 + 104;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v87 = *(v3 + 8);
  v87(v5, v2);
  if (v6)
  {
    v89 = v0;
    v90 = v1;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = 0xD000000000000010;
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.info.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Creating schema for the board items table", 41, 2, &_swiftEmptyArrayStorage);
  v88 = "(item_uuid, board_identifier)";
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(328);
  v12._countAndFlagsBits = 0x5420455441455243;
  v12._object = 0xED000020454C4241;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x74695F6472616F62;
  v13._object = 0xEB00000000736D65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x6975755F6D657469;
  v15._object = 0xE900000000000064;
  String.append(_:)(v15);
  v16._object = 0x80000001015AA270;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x755F746E65726170;
  v17._object = 0xEB00000000646975;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x202C424F4C4220;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._object = 0x8000000101585360;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  v20._object = 0x80000001015AA000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x736472616F62;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 10272;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._object = 0x8000000101585360;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000015;
  v24._object = 0x80000001015AA020;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x7079745F6D657469;
  v25._object = 0xE900000000000065;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000013;
  v26._object = 0x80000001015AA340;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v27._object = 0xEB00000000617461;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x202C424F4C4220;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x6369666963657073;
  v29._object = 0xED0000617461645FLL;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C424F4C4220;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x6E6F7473626D6F74;
  v31._object = 0xEA00000000006465;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD000000000000013;
  v32._object = 0x80000001015AA340;
  String.append(_:)(v32);
  v33._object = 0x80000001015A33D0;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v34._object = 0x80000001015AA630;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x7461645F636E7973;
  v35._object = 0xE900000000000061;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x202C424F4C4220;
  v36._object = 0xE700000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000014;
  v37._object = 0x80000001015A3590;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD00000000000001DLL;
  v38._object = 0x80000001015AA630;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v39._object = 0xEE00736E6F697470;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD000000000000029;
  v40._object = 0x80000001015AA7B0;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD00000000000001DLL;
  v41._object = 0x80000001015AA770;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x474945524F460A2CLL;
  v42._object = 0xEE002059454B204ELL;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD00000000000001FLL;
  v43._object = (v88 | 0x8000000000000000);
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x4E45524546455220;
  v44._object = 0xEC00000020534543;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x74695F6472616F62;
  v45._object = 0xEB00000000736D65;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 32;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD00000000000001DLL;
  v47._object = 0x80000001015AA770;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD000000000000014;
  v48._object = 0x80000001015AA7E0;
  String.append(_:)(v48);
  v49 = v91;
  v50 = v92;
  v51 = *(v89 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v53 = v90;
  v54 = sub_10001CC04(v52, v49, v50);
  if (v53)
  {
  }

  v55 = v54;

  v56 = *(*(v55 + 16) + 32);
  *v5 = v56;
  v85(v5, v84, v2);
  v57 = v56;
  v58 = _dispatchPreconditionTest(_:)();
  v87(v5, v2);
  if ((v58 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v59 = *(v55 + 16);

  v60 = sub_10001CEC4(v59, v55);

  if (v60 == 101)
  {
    v61 = sub_10001C924(v51, 0xD000000000000035, 0x80000001015AA830);
    if (v61 == 101)
    {
      v62 = sub_10001C924(v51, 0xD00000000000004FLL, 0x80000001015AA8B0);
      if (v62 == 101)
      {
        v63 = *(*(v55 + 16) + 32);
        *v5 = v63;
        v85(v5, v84, v2);
        v64 = v63;
        LOBYTE(v63) = _dispatchPreconditionTest(_:)();
        v87(v5, v2);
        if (v63)
        {
          swift_beginAccess();
          v65 = *(v55 + 24);
          if (v65)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_10089C7D0();
    swift_allocError();
    *v66 = v60;
    *(v66 + 8) = 0xD000000000000026;
    *(v66 + 16) = 0x80000001015AA800;
    swift_willThrow();
    v67 = *(*(v55 + 16) + 32);
    *v5 = v67;
    v85(v5, v84, v2);
    v68 = v67;
    v9 = _dispatchPreconditionTest(_:)();
    v61 = (v87)(v5, v2);
    if (v9)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v69 = v61;
  sub_10089C7D0();
  swift_allocError();
  *v70 = v69;
  *(v70 + 8) = v9 + 40;
  *(v70 + 16) = 0x80000001015AA870;
  swift_willThrow();
  v71 = *(*(v55 + 16) + 32);
  *v5 = v71;
  v85(v5, v84, v2);
  v72 = v71;
  v9 = _dispatchPreconditionTest(_:)();
  v62 = (v87)(v5, v2);
  if (v9)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v73 = v62;
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v74._countAndFlagsBits = v9 + 7;
  v74._object = 0x80000001015AA6F0;
  String.append(_:)(v74);
  v75._countAndFlagsBits = 0x74695F6472616F62;
  v75._object = 0xEB00000000736D65;
  String.append(_:)(v75);
  v76._countAndFlagsBits = v9 + 27;
  v76._object = 0x80000001015AA900;
  String.append(_:)(v76);
  v77 = v91;
  v78 = v92;
  sub_10089C7D0();
  swift_allocError();
  *v79 = v73;
  *(v79 + 8) = v77;
  *(v79 + 16) = v78;
  swift_willThrow();
  v80 = *(*(v55 + 16) + 32);
  *v5 = v80;
  v85(v5, v84, v2);
  v81 = v80;
  LOBYTE(v80) = _dispatchPreconditionTest(_:)();
  v87(v5, v2);
  if ((v80 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v65 = *(v55 + 24);
  if (v65)
  {
LABEL_17:
    sqlite3_finalize(v65);
    *(v55 + 24) = 0;
  }
}

uint64_t sub_100DDBD58()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v75 = enum case for DispatchPredicate.onQueue(_:);
  v76 = v7;
  v77 = v3 + 104;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v78 = v10;
  v10(v5, v2);
  if (v6)
  {
    v79 = v0;
    v80 = v1;
    v73 = v9;
    v74 = v2;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = 0xD000000000000010;
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.info.getter();
  sub_100005404(v12, &_mh_execute_header, v13, "Creating schema for the board drawings table", 44, 2, &_swiftEmptyArrayStorage);
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v14._countAndFlagsBits = 0x5420455441455243;
  v14._object = 0xED000020454C4241;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000018;
  v72 = "asset_references";
  v15._object = 0x80000001015A31A0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000011;
  v17._object = 0x80000001015A38C0;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x80000001015AA000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x736472616F62;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._object = 0x8000000101585360;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD000000000000015;
  v22._object = 0x80000001015AA020;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x695F74656B637562;
  v23._object = 0xEC0000007865646ELL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000013;
  v24._object = 0x80000001015AA340;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x645F74656B637562;
  v25._object = 0xEB00000000617461;
  String.append(_:)(v25);
  v26._object = 0x80000001015AA270;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._object = 0x80000001015A33D0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD00000000000001DLL;
  v28._object = 0x80000001015AA630;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x7461645F636E7973;
  v29._object = 0xE900000000000061;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C424F4C4220;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD00000000000001ELL;
  v31._object = 0x80000001015A3920;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x202C424F4C4220;
  v32._object = 0xE700000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD00000000000001FLL;
  v33._object = 0x80000001015A3940;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v34._object = 0x80000001015AA630;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001ELL;
  v35._object = 0x80000001015A3960;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD000000000000024;
  v36._object = 0x80000001015AA360;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000011;
  v37._object = 0x80000001015A38C0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 44;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x695F74656B637562;
  v39._object = 0xEC0000007865646ELL;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 10537;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  v41 = v81;
  v42 = v82;
  v43 = *(v79 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v45 = v80;
  v46 = sub_10001CC04(v44, v41, v42);

  if (v45)
  {
    return result;
  }

  v48 = *(*(v46 + 16) + 32);
  *v5 = v48;
  v49 = v74;
  v76(v5, v75, v74);
  v50 = v48;
  v51 = _dispatchPreconditionTest(_:)();
  v78(v5, v49);
  if ((v51 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v52 = *(v46 + 16);

  v53 = sub_10001CEC4(v52, v46);

  if (v53 == 101)
  {
    v54 = sub_10001C924(v43, 0xD00000000000006ALL, 0x80000001015AA680);
    if (v54 == 101)
    {
      v55 = *(*(v46 + 16) + 32);
      *v5 = v55;
      v76(v5, v75, v49);
      v56 = v55;
      v57 = _dispatchPreconditionTest(_:)();
      v78(v5, v49);
      if (v57)
      {
        swift_beginAccess();
        v58 = *(v46 + 24);
        if (v58)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    sub_10089C7D0();
    swift_allocError();
    *v59 = v53;
    *(v59 + 8) = 0xD000000000000029;
    *(v59 + 16) = 0x80000001015AA650;
    swift_willThrow();
    v60 = *(*(v46 + 16) + 32);
    *v5 = v60;
    v76(v5, v75, v49);
    v61 = v60;
    v11 = _dispatchPreconditionTest(_:)();
    v54 = (v78)(v5, v49);
    if (v11)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v62 = v54;
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v63._countAndFlagsBits = v11 + 7;
  v63._object = 0x80000001015AA6F0;
  String.append(_:)(v63);
  v64._countAndFlagsBits = v11 + 8;
  v64._object = (v72 | 0x8000000000000000);
  String.append(_:)(v64);
  v65._countAndFlagsBits = v11 + 30;
  v65._object = 0x80000001015AA710;
  String.append(_:)(v65);
  v66 = v81;
  v67 = v82;
  sub_10089C7D0();
  swift_allocError();
  *v68 = v62;
  *(v68 + 8) = v66;
  *(v68 + 16) = v67;
  swift_willThrow();
  v69 = *(*(v46 + 16) + 32);
  *v5 = v69;
  v76(v5, v75, v49);
  v70 = v69;
  LOBYTE(v67) = _dispatchPreconditionTest(_:)();
  v78(v5, v49);
  if ((v67 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  swift_beginAccess();
  v58 = *(v46 + 24);
  if (v58)
  {
LABEL_14:
    sqlite3_finalize(v58);
    *(v46 + 24) = 0;
  }
}

uint64_t sub_100DDC508()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v38 = *(v3 + 104);
  v38(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v37 = v9;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.info.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Creating schema for the key/value table", 39, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v12._countAndFlagsBits = 0x5420455441455243;
  v12._object = 0xED000020454C4241;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x756C61765F79656BLL;
  v13._object = 0xEE00617461645F65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 7955819;
  v15._object = 0xE300000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  v16._object = 0x80000001015AA5B0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x65756C6176;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._object = 0x80000001015AA320;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6E695F6172747865;
  v19._object = 0xEA00000000006F66;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x29205458455420;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21 = v39;
  v22 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = sub_10001CC04(v23, v21, v22);

  if (v1)
  {
    return result;
  }

  v26 = *(*(v24 + 16) + 32);
  *v5 = v26;
  v38(v5, v7, v2);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v28 = v37;
  v37(v5, v2);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = *(v24 + 16);

  LODWORD(v30) = sub_10001CEC4(v29, v24);

  if (v30 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = 0xD000000000000024;
    *(v32 + 16) = 0x80000001015AA5D0;
    swift_willThrow();
    v33 = *(*(v24 + 16) + 32);
    *v5 = v33;
    v38(v5, v7, v2);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v37(v5, v2);
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v30 = *(*(v24 + 16) + 32);
  *v5 = v30;
  v38(v5, v7, v2);
  v31 = v30;
  v7 = _dispatchPreconditionTest(_:)();
  v28(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v36 = *(v24 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v24 + 24) = 0;
  }
}

uint64_t sub_100DDC9E4()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v38 = *(v3 + 104);
  v38(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v37 = v9;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.info.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Creating schema for the assets table", 36, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v12._countAndFlagsBits = 0x5420455441455243;
  v12._object = 0xED000020454C4241;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x737465737361;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x75755F7465737361;
  v15._object = 0xEA00000000006469;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  v16._object = 0x8000000101585A40;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6F69736E65747865;
  v17._object = 0xE90000000000006ELL;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x202C5458455420;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6E6F7473626D6F74;
  v19._object = 0xEE00657461645F65;
  String.append(_:)(v19);
  v20._object = 0x80000001015AA530;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21 = v39;
  v22 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = sub_10001CC04(v23, v21, v22);

  if (v1)
  {
    return result;
  }

  v26 = *(*(v24 + 16) + 32);
  *v5 = v26;
  v38(v5, v7, v2);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v28 = v37;
  v37(v5, v2);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = *(v24 + 16);

  LODWORD(v30) = sub_10001CEC4(v29, v24);

  if (v30 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = 0xD000000000000021;
    *(v32 + 16) = 0x80000001015AA550;
    swift_willThrow();
    v33 = *(*(v24 + 16) + 32);
    *v5 = v33;
    v38(v5, v7, v2);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v37(v5, v2);
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v30 = *(*(v24 + 16) + 32);
  *v5 = v30;
  v38(v5, v7, v2);
  v31 = v30;
  v7 = _dispatchPreconditionTest(_:)();
  v28(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v36 = *(v24 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v24 + 24) = 0;
  }
}

uint64_t sub_100DDCECC()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v61 = enum case for DispatchPredicate.onQueue(_:);
  v62 = v8;
  v60[1] = v4 + 104;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v63 = *(v4 + 8);
  v63(v6, v3);
  if (v7)
  {
    v64 = v1;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.info.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Creating schema for the asset_references table", 46, 2, &_swiftEmptyArrayStorage);
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(146);
  v12._countAndFlagsBits = 0x5420455441455243;
  v12._object = 0xED000020454C4241;
  String.append(_:)(v12);
  v13._object = 0x80000001015A3180;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x80000001015A3FA0;
  String.append(_:)(v15);
  v16._object = 0x80000001015AA270;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._object = 0x8000000101585360;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x202C424F4C4220;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000013;
  v19._object = 0x80000001015A3FC0;
  String.append(_:)(v19);
  v20._object = 0x80000001015AA320;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x75755F7465737361;
  v21._object = 0xEA00000000006469;
  String.append(_:)(v21);
  v22._object = 0x80000001015AA270;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x7265727265666572;
  v23._object = 0xED0000657079745FLL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000013;
  v24._object = 0x80000001015AA340;
  String.append(_:)(v24);
  v25._object = 0x80000001015A33D0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000024;
  v26._object = 0x80000001015AA360;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x80000001015A3FA0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 44;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000013;
  v29._object = 0x80000001015A3FC0;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 10537;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31 = v65;
  v32 = v66;
  v33 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v35 = v64;
  v36 = sub_10001CC04(v34, v31, v32);
  if (v35)
  {
  }

  v37 = v36;

  v38 = *(*(v37 + 16) + 32);
  *v6 = v38;
  v62(v6, v61, v3);
  v39 = v38;
  v40 = _dispatchPreconditionTest(_:)();
  v63(v6, v3);
  if ((v40 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v41 = *(v37 + 16);

  v42 = sub_10001CEC4(v41, v37);

  if (v42 == 101)
  {
    v43 = sub_10001C924(v33, 0xD00000000000004ELL, 0x80000001015AA3C0);
    if (v43 == 101)
    {
      v44 = sub_10001C924(v33, 0xD00000000000004DLL, 0x80000001015AA460);
      v45 = 0xD000000000000010;
      if (v44 == 101)
      {
        v46 = *(*(v37 + 16) + 32);
        *v6 = v46;
        v62(v6, v61, v3);
        v47 = v46;
        LOBYTE(v46) = _dispatchPreconditionTest(_:)();
        v63(v6, v3);
        if (v46)
        {
          swift_beginAccess();
          v48 = *(v37 + 24);
          if (v48)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_10089C7D0();
    swift_allocError();
    *v49 = v42;
    *(v49 + 8) = 0xD00000000000002BLL;
    *(v49 + 16) = 0x80000001015AA390;
    swift_willThrow();
    v50 = *(*(v37 + 16) + 32);
    *v6 = v50;
    v62(v6, v61, v3);
    v51 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v43 = (v63)(v6, v3);
    if (v50)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v45 = v43;
  sub_10089C7D0();
  swift_allocError();
  *v52 = v45;
  *(v52 + 8) = 0xD000000000000044;
  *(v52 + 16) = 0x80000001015AA410;
  swift_willThrow();
  v53 = *(*(v37 + 16) + 32);
  *v6 = v53;
  v62(v6, v61, v3);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v44 = (v63)(v6, v3);
  if (v53)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v55 = v44;
  sub_10089C7D0();
  swift_allocError();
  *v56 = v55;
  *(v56 + 8) = v45 + 48;
  *(v56 + 16) = 0x80000001015AA4B0;
  swift_willThrow();
  v57 = *(*(v37 + 16) + 32);
  *v6 = v57;
  v62(v6, v61, v3);
  v58 = v57;
  LOBYTE(v57) = _dispatchPreconditionTest(_:)();
  v63(v6, v3);
  if ((v57 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v48 = *(v37 + 24);
  if (v48)
  {
LABEL_17:
    sqlite3_finalize(v48);
    *(v37 + 24) = 0;
  }
}

uint64_t sub_100DDD654()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v48 = enum case for DispatchPredicate.onQueue(_:);
  v49 = v7;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v50 = v1;
    v47 = v9;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = 0xD000000000000010;
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Creating schema for the command_history_items table", 51, 2, &_swiftEmptyArrayStorage);
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(167);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x80000001015A3160;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x64695F6D657469;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000024;
  v17._object = 0x80000001015AA240;
  String.append(_:)(v17);
  v18._object = 0x8000000101585360;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x80000001015AA000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x736472616F62;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._object = 0x8000000101585360;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x80000001015AA020;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x6975755F6D657469;
  v24._object = 0xE900000000000064;
  String.append(_:)(v24);
  v25._object = 0x80000001015AA270;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x7461645F6D657469;
  v26._object = 0xE900000000000061;
  String.append(_:)(v26);
  v27._object = 0x80000001015AA270;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x616C665F6F646E75;
  v28._object = 0xE900000000000067;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000013;
  v29._object = 0x80000001015AA290;
  String.append(_:)(v29);
  v30 = v51;
  v31 = v52;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v33 = v50;
  v34 = sub_10001CC04(v32, v30, v31);

  if (v33)
  {
    return result;
  }

  v36 = *(*(v34 + 16) + 32);
  *v5 = v36;
  v49(v5, v48, v2);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v38 = v47;
  v47(v5, v2);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v39 = *(v34 + 16);

  v40 = sub_10001CEC4(v39, v34);

  if (v40 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v10 + 32;
    *(v43 + 16) = 0x80000001015AA2B0;
    swift_willThrow();
    v44 = *(*(v34 + 16) + 32);
    *v5 = v44;
    v49(v5, v48, v2);
    v45 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    v47(v5, v2);
    if (v44)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v41 = *(*(v34 + 16) + 32);
  *v5 = v41;
  v49(v5, v48, v2);
  v42 = v41;
  v10 = _dispatchPreconditionTest(_:)();
  v38(v5, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v46 = *(v34 + 24);
  if (v46)
  {
    sqlite3_finalize(v46);
    *(v34 + 24) = 0;
  }
}

uint64_t sub_100DDDBE0()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v69 = enum case for DispatchPredicate.onQueue(_:);
  v70 = v8;
  v71 = v4 + 104;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v68 = v3;
  (v10)(v6, v3);
  if (v7)
  {
    v67 = v10;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Creating schema for the command_history_asset_references table", 62, 2, &_swiftEmptyArrayStorage);
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(105);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000020;
  v14._object = 0x80000001015A3130;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._object = 0x80000001015A9FE0;
  v16._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x80000001015AA000;
  String.append(_:)(v17);
  v18._object = 0x80000001015A3160;
  v18._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 10272;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x64695F6D657469;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._object = 0x80000001015AA020;
  v21._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x75755F7465737361;
  v22._object = 0xEA00000000006469;
  String.append(_:)(v22);
  v23._object = 0x80000001015AA040;
  v23._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v23);
  v24._object = 0x80000001015A9FE0;
  v24._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x75755F7465737361;
  v26._object = 0xEA00000000006469;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 10537;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  v28 = v72;
  v29 = v73;
  v30 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v32 = sub_10001CC04(v31, v28, v29);
  if (v1)
  {
  }

  v33 = v32;

  v34 = *(*(v33 + 16) + 32);
  *v6 = v34;
  v35 = v68;
  v70(v6, v69, v68);
  v36 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v37 = v35;
  v38 = v67;
  (v67)(v6, v37);
  if ((v34 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v39 = *(v33 + 16);

  v40 = sub_10001CEC4(v39, v33);

  if (v40 == 101)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v41._countAndFlagsBits = 0xD00000000000002ELL;
    v41._object = 0x80000001015AA0A0;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0xD000000000000020;
    v42._object = 0x80000001015A3130;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 10272;
    v43._object = 0xE200000000000000;
    String.append(_:)(v43);
    v44._object = 0x80000001015A9FE0;
    v44._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v44);
    v45._countAndFlagsBits = 41;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v38 = v73;
    v46 = sub_10001C924(v30, v72, v73);

    if (v46 == 101)
    {
      v47 = sub_10001C924(v30, 0xD00000000000006DLL, 0x80000001015AA130);
      v30 = v67;
      v38 = 0xD000000000000017;
      if (v47 == 101)
      {
        v48 = *(*(v33 + 16) + 32);
        *v6 = v48;
        v49 = v68;
        v70(v6, v69, v68);
        v50 = v48;
        LOBYTE(v48) = _dispatchPreconditionTest(_:)();
        (v30)(v6, v49);
        if (v48)
        {
          swift_beginAccess();
          v51 = *(v33 + 24);
          if (v51)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_10089C7D0();
    swift_allocError();
    *v52 = v40;
    *(v52 + 8) = 0xD00000000000003BLL;
    *(v52 + 16) = 0x80000001015AA060;
    swift_willThrow();
    v53 = *(*(v33 + 16) + 32);
    *v6 = v53;
    v54 = v68;
    v70(v6, v69, v68);
    v55 = v53;
    v46 = _dispatchPreconditionTest(_:)();
    (v38)(v6, v54);
    if (v46)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  sub_10089C7D0();
  swift_allocError();
  *v56 = v46;
  *(v56 + 8) = 0xD00000000000005FLL;
  *(v56 + 16) = 0x80000001015AA0D0;
  swift_willThrow();
  v57 = *(*(v33 + 16) + 32);
  *v6 = v57;
  v58 = v68;
  v70(v6, v69, v68);
  v59 = v57;
  LOBYTE(v57) = _dispatchPreconditionTest(_:)();
  v47 = (v67)(v6, v58);
  if (v57)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v60 = v47;
  sub_10089C7D0();
  swift_allocError();
  *v61 = v60;
  *(v61 + 8) = v38 + 57;
  *(v61 + 16) = 0x80000001015AA1A0;
  swift_willThrow();
  v62 = *(*(v33 + 16) + 32);
  *v6 = v62;
  v63 = v68;
  v70(v6, v69, v68);
  v64 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  (v30)(v6, v63);
  if ((v62 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v51 = *(v33 + 24);
  if (v51)
  {
LABEL_17:
    sqlite3_finalize(v51);
    *(v33 + 24) = 0;
  }
}

unint64_t sub_100DDE69C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EA391C(*a1);
  *a2 = result;
  return result;
}

NSString sub_100DDE6E8()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8580 = result;
  return result;
}

NSString sub_100DDE720()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8588 = result;
  return result;
}

NSString sub_100DDE758()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8590 = result;
  return result;
}

id sub_100DDE790()
{
  if (qword_1019F2520 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD8568;
  qword_101AD8598 = qword_101AD8568;

  return v1;
}

uint64_t sub_100DDE8A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100DDE9EC()
{
  v65 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  v1 = __chkstk_darwin(v65);
  v59 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v64 = &v50 - v3;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v11 = v5 + 104;
  v10 = *(v5 + 104);
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v12 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v15 = *(v5 + 8);
  v14 = v5 + 8;
  v13 = v15;
  v15(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v62 = sub_10061A1C8();
  v66 = v16;
  v17 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v17;
  v58 = v9;
  v10(v7, v9, v4);
  v57 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v60 = v7;
  v61 = v13;
  v13(v7, v4);
  if ((v17 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_7;
  }

  v18 = v14;
  v19 = v64;
  swift_storeEnumTagMultiPayload();
  v20 = v63;
  v21 = sub_100E266C0(v19);
  if (v20)
  {
LABEL_4:

    return sub_100026028(v19, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  }

  v14 = v22;
  v63 = v21;
  v53 = v18;
  v51 = v4;
  v52 = v11;
  v54 = v10;
  v55 = v0;
  v56 = 0;
  sub_100026028(v19, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  if (qword_1019F2258 != -1)
  {
    goto LABEL_34;
  }

LABEL_7:
  v24 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v26 = sub_1000053B0();
  v27 = v66;
  v28 = 7104878;
  v29 = v62;
  if (!v66)
  {
    v29 = 7104878;
  }

  *(inited + 32) = v29;
  v30 = 0xE300000000000000;
  if (v27)
  {
    v31 = v27;
  }

  else
  {
    v31 = 0xE300000000000000;
  }

  *(inited + 40) = v31;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v26;
  if (v14)
  {
    v28 = v63;
    v30 = v14;
  }

  v32 = v26;
  *(inited + 64) = v26;
  *(inited + 72) = v28;
  *(inited + 80) = v30;

  v33 = static os_log_type_t.default.getter();
  sub_100005404(v24, &_mh_execute_header, v33, "Ensuring ownership of data. currentAccountIdentifier: %{public}@. accountIdentifierFromDatabase: %{public}@", 107, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v34 = v61;
  v35 = v60;
  if (!v14)
  {
    v36 = v24;
    if (!v27)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  if (v27)
  {
    if (v63 == v62 && v14 == v27)
    {

LABEL_23:
      v36 = v24;

LABEL_24:
      v38 = static os_log_type_t.default.getter();
      return sub_100005404(v36, &_mh_execute_header, v38, "No ownership change. Continuing.", 32, 2, &_swiftEmptyArrayStorage);
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v39 = static os_log_type_t.default.getter();
  sub_100005404(v24, &_mh_execute_header, v39, "Ownership of data changed. Deleting data.", 41, 2, &_swiftEmptyArrayStorage);
  v36 = v24;
  v40 = v56;
  sub_100DDF1A0();
  if (v40)
  {
  }

  v56 = 0;
  if (v66)
  {
LABEL_27:
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_10146C6B0;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = v32;
    v42 = v62;
    *(v41 + 32) = v62;
    v43 = v66;
    *(v41 + 40) = v66;

    v44 = static os_log_type_t.default.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "Previously unowned data is being claimed by owner: %@", 53, 2, v41);
    swift_setDeallocating();
    sub_100005070(v41 + 32);
    sub_100DDFDF8(v42, v43);
  }

  v45 = static os_log_type_t.default.getter();
  sub_100005404(v24, &_mh_execute_header, v45, "Owner set to nil.", 17, 2, &_swiftEmptyArrayStorage);
  v46 = v57;
  *v35 = v57;
  v47 = v51;
  v54(v35, v58, v51);
  v48 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  result = v34(v35, v47);
  if (v46)
  {
    v19 = v59;
    swift_storeEnumTagMultiPayload();
    v49 = v56;
    sub_100E266C0(v19);
    if (v49)
    {
      return sub_100026028(v19, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_100DDF1A0()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v81 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v80 = *(v6 - 8);
  __chkstk_darwin(v6);
  v79 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v89 = v71 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v77 = v6;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = static OS_os_log.boardStore;
  v17 = static os_log_type_t.default.getter();
  sub_100005404(v16, &_mh_execute_header, v17, "Removing all assets.", 20, 2, &_swiftEmptyArrayStorage);
  v18 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v18 + 16));
  v19 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v20 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  v78 = v4;
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v22 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v23 = v2;
    v24 = sub_10001F1A0(v23);

    v25 = *&v2[v19];
    *&v2[v19] = v24;
    v21 = v24;

    v20 = 0;
  }

  v26 = *(v18 + 16);
  v27 = v20;
  os_unfair_lock_unlock(v26);
  sub_10108974C();

  if (!v1)
  {
    v76 = v3;
    v28 = sub_100DCB394();
    v29 = type metadata accessor for TaskPriority();
    v30 = *(v29 - 8);
    v31 = *(v30 + 56);
    v32 = v89;
    v75 = v29;
    v74 = v31;
    v73 = v30 + 56;
    (v31)(v89, 1, 1);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v28;
    sub_10064191C(0, 0, v32, &unk_1014B6A40, v33);

    v34 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v34 + 16));
    v35 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v36 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    v37 = &unk_101A17000;
    if (v36)
    {
      v38 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    }

    else
    {
      *&v82 = type metadata accessor for CRLAssetManager();
      v39 = objc_allocWithZone(v82);
      v72 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
      swift_unknownObjectWeakInit();
      v40 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v41 = swift_allocObject();
      v42 = v2;
      v43 = swift_slowAlloc();
      *v43 = 0;
      *(v41 + 16) = v43;
      atomic_thread_fence(memory_order_acq_rel);
      *&v39[v40] = v41;
      *&v39[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = &_swiftEmptyDictionarySingleton;
      v44 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v39[v44] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v39[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      swift_unknownObjectWeakAssign();
      v88.receiver = v39;
      v88.super_class = v82;
      v45 = objc_msgSendSuper2(&v88, "init");

      v37 = &unk_101A17000;
      v46 = *&v2[v35];
      *&v2[v35] = v45;
      v38 = v45;

      v36 = 0;
    }

    v47 = *(v34 + 16);
    v48 = v36;
    os_unfair_lock_unlock(v47);
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v49 = static OS_os_log.assetManagement;
    v50 = static os_log_type_t.default.getter();
    sub_100005404(v49, &_mh_execute_header, v50, "reset() asset cache", 19, 2, &_swiftEmptyArrayStorage);
    v51 = v37[504];
    swift_beginAccess();
    *&v38[v51] = &_swiftEmptyDictionarySingleton;

    v71[0] = sub_100DE90F4();
    v52 = 0;
    v72 = 0x80000001015A30F0;
    v71[5] = 0x80000001015A3110;
    v71[4] = 0x80000001015A3130;
    v71[3] = 0x80000001015A3160;
    v71[2] = 0x80000001015A3180;
    v71[1] = 0x80000001015A31A0;
    v82 = xmmword_10146C6B0;
    do
    {
      v53 = *(&off_101873560 + v52++ + 32);
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v82;
      v55 = 0xE600000000000000;
      v56 = 0x736472616F62;
      v57 = inited;
      switch(v53)
      {
        case 1:
          v56 = 0x74695F6472616F62;
          v55 = 0xEB00000000736D65;
          break;
        case 2:
          v56 = 0x756C61765F79656BLL;
          v55 = 0xEE00617461645F65;
          break;
        case 3:
          v56 = 0x737465737361;
          break;
        case 4:
          v56 = 0xD000000000000010;
          p_super_class = &v85;
          goto LABEL_27;
        case 5:
          v56 = 0xD000000000000015;
          p_super_class = &v86;
          goto LABEL_27;
        case 6:
          v56 = 0xD000000000000020;
          p_super_class = &v87;
          goto LABEL_27;
        case 7:
          v56 = 0x6D5F736472616F62;
          v55 = 0xEF61746164617465;
          break;
        case 8:
          v56 = 0xD000000000000018;
          p_super_class = &v84;
          goto LABEL_27;
        case 9:
          v56 = 0x64726F6365726B63;
          v55 = 0xEE0065686361635FLL;
          break;
        case 10:
          v56 = 0x635F656E6F7A6B63;
          v55 = 0xEC00000065686361;
          break;
        case 11:
          v56 = 0xD000000000000015;
          p_super_class = &v88;
          goto LABEL_27;
        case 12:
          v55 = 0xE700000000000000;
          v56 = 0x737265646C6F66;
          break;
        case 13:
          v56 = 0xD000000000000010;
          p_super_class = &v88.super_class;
LABEL_27:
          v55 = *(p_super_class - 32);
          break;
        default:
          break;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(v57 + 32) = v56;
      *(v57 + 40) = v55;
      v59 = static os_log_type_t.default.getter();
      sub_100005404(v16, &_mh_execute_header, v59, "Removing data for table: %@", 27, 2, v57);
      swift_setDeallocating();
      sub_100005070(v57 + 32);
      sub_100E69940(v53);
    }

    while (v52 != 14);
    v60 = static os_log_type_t.default.getter();
    sub_100005404(v16, &_mh_execute_header, v60, "Clearing sync metadata.", 23, 2, &_swiftEmptyArrayStorage);
    if (*&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper])
    {
      v61 = v89;
      v74(v89, 1, 1, v75);
      v62 = swift_allocObject();
      swift_weakInit();
      v63 = swift_allocObject();
      v63[2] = 0;
      v63[3] = 0;
      v63[4] = v62;

      sub_100CA64C8(0, 0, v61, &unk_1014B6A48, v63);

      sub_10000CAAC(v61, &qword_1019FB750);
    }

    sub_100006370(0, &qword_1019F2D90);
    v64 = static OS_dispatch_queue.main.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v71[0];
    *(v65 + 24) = &_swiftEmptySetSingleton;
    *(v65 + 32) = &_swiftEmptySetSingleton;
    *(v65 + 40) = 0;
    *(v65 + 48) = v2;
    aBlock[4] = sub_1000260F4;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018A6400;
    v66 = _Block_copy(aBlock);
    v67 = v2;

    v68 = v79;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v69 = v81;
    v70 = v76;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v66);

    (*(v78 + 8))(v69, v70);
    (*(v80 + 8))(v68, v77);
  }
}

uint64_t sub_100DDFDF8(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v19 = a1;
  v22 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v22);
  v23 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  result = v13(v7, v4);
  if (v12)
  {
    v15 = v23;
    swift_storeEnumTagMultiPayload();
    *v7 = v11;
    v10(v7, v9, v4);
    v16 = _dispatchPreconditionTest(_:)();
    result = v13(v7, v4);
    if (v16)
    {
      v17 = v21;

      sub_100E24C64(v15, 0, 0, v20, v19, v17);
      return sub_100026028(v15, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100DE0028(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v9 = [objc_opt_self() defaultCenter];
  if (qword_1019F2528 != -1)
  {
    swift_once();
  }

  v10 = qword_101AD8570;
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1005B981C(&unk_101A22E80);
  *(inited + 72) = a2;

  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = a3 & 1;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = a4 & 1;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = sub_1005B981C(&qword_101A21E00);
  *(inited + 288) = a5;

  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019FB8B0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v10 object:a1 userInfo:isa];
}

uint64_t sub_100DE02C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = v4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  sub_100006370(0, &qword_1019F2D90);
  v16 = static OS_dispatch_queue.main.getter();
  sub_10000C83C(a1, &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  sub_100025668(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CRLBoardIdentifier);
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);
  v20 = v5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v9, v7);
  return (*(v25 + 8))(v12, v26);
}

void sub_100DE066C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = [objc_opt_self() defaultCenter];
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  AnyHashable.init<A>(_:)();
  sub_1005B981C(&unk_101A19BD0);
  v11 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10146C6B0;
  sub_10000C83C(a2, v13 + v12, type metadata accessor for CRLBoardIdentifier);
  v14 = sub_10004B3DC(v13);
  swift_setDeallocating();
  sub_100026028(v13 + v12, type metadata accessor for CRLBoardIdentifier);
  swift_deallocClassInstance();
  *(inited + 96) = sub_1005B981C(&unk_101A22E80);
  *(inited + 72) = v14;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 postNotificationName:v9 object:a1 userInfo:isa];
}

uint64_t sub_100DE08EC()
{
  v1 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.upgrade;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Running upgrade code for rdar://102994991", 41, 2, _swiftEmptyArrayStorage);
  v6 = swift_storeEnumTagMultiPayload();
  __chkstk_darwin(v6);
  *&v8[-32] = v0;
  *&v8[-24] = xmmword_101486780;
  *&v8[-8] = v3;
  OS_dispatch_queue.sync<A>(execute:)();
  return sub_100026028(v3, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
}

uint64_t sub_100DE0BD8()
{
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.upgrade;
  v1 = static os_log_type_t.default.getter();
  v2 = sub_100005404(v0, &_mh_execute_header, v1, "Running upgrade code for rdar://119152219", 41, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v2);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100DE0D10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5[2] = a1;
  result = sub_10002FA9C(sub_100EA4F00, v5);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100DE0D68(int a1)
{
  LODWORD(v42) = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v4 + 104);
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v43 = *(v4 + 8);
  v43(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v44 = v9;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000037, 0x80000001015A9680);
  if (v2)
  {
LABEL_13:

    if (qword_1019F2258 == -1)
    {
LABEL_14:
      v35 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = v38;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v37;
      *(inited + 40) = v39;
      v40 = static os_log_type_t.error.getter();
      sub_100005404(v35, &_mh_execute_header, v40, "Failed to removeAllBoardItemDatabaseRows with error %@", 54, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_16:
    swift_once();
    goto LABEL_14;
  }

  v14 = v13;
  v41 = 0;

  v15 = *(*(v14 + 16) + 32);
  *v7 = v15;
  (v10)(v7, v44, v3);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v18 = v10;
  v19 = v43;
  v43(v7, v3);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  swift_beginAccess();
  sqlite3_bind_int(*(v14 + 24), 1, v42);
  v20 = *(*(v14 + 16) + 32);
  *v7 = v20;
  v42 = v18;
  v18(v7, v44, v3);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v19(v7, v3);
  if ((v20 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v19;
  v23 = *(v14 + 16);

  v24 = sub_10001CEC4(v23, v14);

  if (v24 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v30 = v24;
    *(v30 + 8) = 0xD00000000000003ELL;
    *(v30 + 16) = 0x80000001015A9700;
    swift_willThrow();
    v31 = *(*(v14 + 16) + 32);
    *v7 = v31;
    v42(v7, v44, v3);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v43(v7, v3);
    if ((v33 & 1) == 0)
    {
      goto LABEL_20;
    }

    v34 = *(v14 + 24);
    if (v34)
    {
      sqlite3_finalize(v34);
      *(v14 + 24) = 0;
    }

    goto LABEL_13;
  }

  v25 = *(*(v14 + 16) + 32);
  *v7 = v25;
  v42(v7, v44, v3);
  v26 = v25;
  v27 = _dispatchPreconditionTest(_:)();
  v22(v7, v3);
  if ((v27 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v28 = *(v14 + 24);
  if (v28)
  {
    sqlite3_finalize(v28);
    *(v14 + 24) = 0;
  }
}

uint64_t sub_100DE12E0(int a1)
{
  v72 = type metadata accessor for CKSyncEngine.State.Serialization();
  v68 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v4);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v61 - v7;
  __chkstk_darwin(v8);
  v11 = &v61 - v10;
  if (a1)
  {
    v12 = 6;
  }

  else
  {
    v12 = 5;
  }

  v74 = v9;
  v73 = v12;
  swift_storeEnumTagMultiPayload();
  v75 = v1;
  v79 = v1;
  v80 = v11;
  sub_1005B981C(&qword_1019FB5E0);
  OS_dispatch_queue.sync<A>(execute:)();
  LODWORD(v77) = a1;
  v13 = v82;
  v76 = v81;
  sub_100026028(v11, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.upgrade;
  sub_1005B981C(&qword_1019F54E0);
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = xmmword_10146C6B0;
  if (v77)
  {
    v17 = 0x5320646572616853;
  }

  else
  {
    v17 = 0x2065746176697250;
  }

  if (v77)
  {
    v18 = 0xEC00000065706F63;
  }

  else
  {
    v18 = 0xED000065706F6353;
  }

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_1000053B0();
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v14, &_mh_execute_header, v19, "Successfully fetched %{public}@ oldSyncMetadata", 47, 2, v16);
  swift_setDeallocating();
  sub_100005070(v16 + 32);
  swift_deallocClassInstance();
  v20 = v70;
  v21 = swift_storeEnumTagMultiPayload();
  v22 = *(v75 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  __chkstk_darwin(v21);
  *(&v61 - 4) = v23;
  *(&v61 - 24) = xmmword_101486780;
  *(&v61 - 1) = v20;
  v64 = v22;
  OS_dispatch_queue.sync<A>(execute:)();
  v69 = v13;
  sub_100026028(v20, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.upgrade;
  sub_1005B981C(&qword_1019F54E0);
  v25 = swift_allocObject();
  v26 = v25;
  *(v25 + 16) = xmmword_10146C6B0;
  if (v77)
  {
    v27 = 0x5320646572616853;
  }

  else
  {
    v27 = 0x2065746176697250;
  }

  if (v77)
  {
    v28 = 0xEC00000065706F63;
  }

  else
  {
    v28 = 0xED000065706F6353;
  }

  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1000053B0();
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  v29 = static os_log_type_t.default.getter();
  sub_100005404(v24, &_mh_execute_header, v29, "Successfully deleted %{public}@ syncMetadata database entry", 59, 2, v26);
  swift_setDeallocating();
  sub_100005070(v26 + 32);
  swift_deallocClassInstance();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v70 = PropertyListEncoder.init()();
  if (v13 >> 60 == 15)
  {
    v30 = 0x2065746176697250;
    if (qword_1019F22A0 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.upgrade;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v33 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    if (v77)
    {
      v30 = 0x5320646572616853;
      v34 = 0xEC00000065706F63;
    }

    else
    {
      v34 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v33 + 32) = v30;
    *(v33 + 40) = v34;
    v35 = static os_log_type_t.default.getter();
    sub_100005404(v31, &_mh_execute_header, v35, "There was no %{public}@ oldSyncMetadata to convert.", 51, 2, v33);
    swift_setDeallocating();
    sub_100005070(v33 + 32);
    v36 = v76;
    if (qword_1019F22A0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.upgrade;
    sub_1005B981C(&qword_1019F54E0);
    v38 = swift_initStackObject();
    v39 = v38;
    *(v38 + 16) = xmmword_10146C6B0;
    if (v77)
    {
      v40 = 0x5320646572616853;
    }

    else
    {
      v40 = 0x2065746176697250;
    }

    if (v77)
    {
      v41 = 0xEC00000065706F63;
    }

    else
    {
      v41 = 0xED000065706F6353;
    }

    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_1000053B0();
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    v42 = static os_log_type_t.default.getter();
    sub_100005404(v37, &_mh_execute_header, v42, "There was no converted %{public}@ oldSyncMetadata to save.", 58, 2, v39);

    sub_100025870(v36, v13);
    swift_setDeallocating();
    return sub_100005070(v39 + 32);
  }

  else
  {
    sub_100024E98(v76, v13);
    CKSyncEngine.State.Serialization.init(deprecatedData:)();
    sub_1000066D0(&qword_1019FF728, &type metadata accessor for CKSyncEngine.State.Serialization);
    v65 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v67 = v44;
    v45 = 0xED000065706F6353;
    if (qword_1019F22A0 != -1)
    {
      swift_once();
    }

    v46 = static OS_os_log.upgrade;
    v63 = sub_1005B981C(&qword_1019F54E0);
    v47 = swift_allocObject();
    v48 = v47;
    v61 = xmmword_10146C6B0;
    *(v47 + 16) = xmmword_10146C6B0;
    if (v77)
    {
      v49 = 0x5320646572616853;
    }

    else
    {
      v49 = 0x2065746176697250;
    }

    if (v77)
    {
      v45 = 0xEC00000065706F63;
    }

    *(v47 + 56) = &type metadata for String;
    v50 = sub_1000053B0();
    v77 = v45;
    v78 = v50;
    v48[8] = v50;
    v48[4] = v49;
    v48[5] = v45;
    v51 = static os_log_type_t.default.getter();
    v62 = v46;
    sub_100005404(v46, &_mh_execute_header, v51, "Successfully converted %{public}@ oldSyncMetadata into new format.", 66, 2, v48);
    swift_setDeallocating();
    sub_100005070((v48 + 4));
    swift_deallocClassInstance();
    (*(v68 + 8))(v71, v72);
    v52 = v66;
    v53 = swift_storeEnumTagMultiPayload();
    __chkstk_darwin(v53);
    v54 = v65;
    *(&v61 - 4) = v75;
    *(&v61 - 3) = v54;
    v55 = v67;
    *(&v61 - 2) = v67;
    *(&v61 - 1) = v52;
    sub_100024E98(v54, v55);
    OS_dispatch_queue.sync<A>(execute:)();
    v56 = v76;
    sub_10002640C(v54, v55);
    sub_100026028(v52, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    v57 = swift_allocObject();
    *(v57 + 16) = v61;
    v58 = v77;
    v59 = v78;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = v59;
    *(v57 + 32) = v49;
    *(v57 + 40) = v58;
    v60 = static os_log_type_t.default.getter();
    sub_100005404(v62, &_mh_execute_header, v60, "Successfully saved the new format of %{public}@ sync metadata", 61, 2, v57);

    sub_100025870(v56, v13);
    sub_10002640C(v54, v55);
    swift_setDeallocating();
    sub_100005070(v57 + 32);
    return swift_deallocClassInstance();
  }
}

uint64_t sub_100DE36B8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v4 = v5;
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v2 + 104);
  v7(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v20 = v5;
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  result = v9(v4, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v21;
  result = sub_100DE38A4();
  if (v11)
  {
    return result;
  }

  v19 = result;
  v21 = 0;
  v12 = v20;
  *v4 = v20;
  v7(v4, v6, v1);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  result = v9(v4, v1);
  if ((v14 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = v21;
  v16 = sub_100DE4F8C();
  if (v15)
  {
  }

  v17 = sub_100DC9150(v16);

  v18 = sub_10004B3DC(v17);

  return sub_1010ACDC4(v18, v19);
}

uint64_t sub_100DE38A4()
{
  v127 = type metadata accessor for UUID();
  v1 = *(v127 - 8);
  __chkstk_darwin(v127);
  v3 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v4 = __chkstk_darwin(v126);
  v125 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v124 = &v117 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = __chkstk_darwin(v7 - 8);
  v123 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v122 = &v117 - v11;
  v12 = __chkstk_darwin(v10);
  v121 = &v117 - v13;
  v14 = __chkstk_darwin(v12);
  v120 = &v117 - v15;
  __chkstk_darwin(v14);
  v130 = &v117 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = v0;
  v21 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v20 = v21;
  v22 = enum case for DispatchPredicate.onQueue(_:);
  v24 = v18 + 104;
  v23 = *(v18 + 104);
  v23(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v25 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v27 = *(v18 + 8);
  v26 = v18 + 8;
  v134 = v27;
  v27(v20, v17);
  if ((v21 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v119 = v1;
  v132 = v23;
  v133 = v22;
  v129 = v26;
  v131 = v3;
  v139 = 0;
  v140 = 0xE000000000000000;
  _StringGuts.grow(_:)(102);
  v28._countAndFlagsBits = 0x205443454C4553;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x736472616F62;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 46;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._object = 0x8000000101585360;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x204D4F524620;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x736472616F62;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x4A2052454E4E4920;
  v34._object = 0xEC000000204E494FLL;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x74695F6472616F62;
  v35._object = 0xEB00000000736D65;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 542002976;
  v36._object = 0xE400000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x74695F6472616F62;
  v37._object = 0xEB00000000736D65;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 46;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._object = 0x8000000101585360;
  v39._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 2112800;
  v40._object = 0xE300000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x736472616F62;
  v41._object = 0xE600000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 46;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v43._object = 0x8000000101585360;
  v43._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x20455245485720;
  v44._object = 0xE700000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x736472616F62;
  v45._object = 0xE600000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 46;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD000000000000014;
  v47._object = 0x80000001015A3590;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x20524F203F203E20;
  v48._object = 0xE900000000000028;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x74695F6472616F62;
  v49._object = 0xEB00000000736D65;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 46;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0xD000000000000014;
  v51._object = 0x80000001015A3590;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x444E41203F203E20;
  v52._object = 0xEA00000000002820;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x74695F6472616F62;
  v53._object = 0xEB00000000736D65;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 46;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v55._object = 0xEE00736E6F697470;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 0x203E20293F202620;
  v56._object = 0xEA00000000002930;
  String.append(_:)(v56);
  v57 = v139;
  v58 = v140;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v60 = v137;
  v61 = sub_10001CC04(v59, v57, v58);
  v135 = v60;
  if (v60)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v62 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v64 = Error.localizedDescription.getter();
      v66 = v65;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v64;
      *(inited + 40) = v66;
      v67 = static os_log_type_t.error.getter();
      sub_100005404(v62, &_mh_execute_header, v67, "Failed to fetch list of unsupported boards with error %@", 56, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v64;
    }

LABEL_32:
    swift_once();
    goto LABEL_4;
  }

  v68 = v61;

  v69 = sub_10001FF1C();
  sub_100034254(v69, 1);
  sub_100034254(v69, 2);
  sub_100034254(1, 3);
  v138 = _swiftEmptySetSingleton;
  v70 = *(*(v68 + 16) + 32);
  *v20 = v70;
  v71 = v133;
  v72 = v132;
  v132(v20, v133, v17);
  v73 = v70;
  LOBYTE(v70) = _dispatchPreconditionTest(_:)();
  v74 = v134;
  v134(v20, v17);
  if ((v70 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for SQLiteRowIterator();
  v75 = swift_initStackObject();
  v75[3] = 0;
  v136 = v75 + 3;
  v75[4] = 0;
  v118 = v75 + 4;
  v75[5] = 1;
  v137 = v75;
  v75[2] = v68;

  swift_beginAccess();
  v76 = *(*(v68 + 16) + 32);
  *v20 = v76;
  v72(v20, v71, v17);
  v77 = v76;
  LOBYTE(v76) = _dispatchPreconditionTest(_:)();
  v74(v20, v17);
  if ((v76 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v119 += 4;
  v128 = v24;
  while (1)
  {
    v94 = v136;
    *v136 = 0;
    v94[1] = 0;
    v137[5] = 1;
    v95 = sqlite3_step(*(v68 + 24));
    if (v95 != 100)
    {
      break;
    }

    v96 = *(*(v68 + 16) + 32);
    *v20 = v96;
    v72(v20, v71, v17);

    v97 = v96;
    LOBYTE(v96) = _dispatchPreconditionTest(_:)();
    v74(v20, v17);
    if ((v96 & 1) == 0)
    {
      goto LABEL_29;
    }

    v98 = *(*(v68 + 16) + 32);
    *v20 = v98;
    v72(v20, v71, v17);
    v99 = v98;
    LOBYTE(v98) = _dispatchPreconditionTest(_:)();
    v74(v20, v17);
    if ((v98 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (sqlite3_column_type(*(v68 + 24), 0) == 5)
    {
      goto LABEL_17;
    }

    v100 = sqlite3_column_blob(*(v68 + 24), 0);
    if (!v100)
    {
      goto LABEL_17;
    }

    v101 = v100;
    v102 = sqlite3_column_bytes(*(v68 + 24), 0);
    v103 = sub_100024DD4(v101, v102);
    v105 = v104;
    sub_100024E98(v103, v104);
    v106 = v131;
    v107 = v135;
    sub_100024EEC(v131, v103, v105);
    if (v107)
    {

      sub_10002640C(v103, v105);
      sub_10002640C(v103, v105);
      v135 = 0;
      v71 = v133;
      v72 = v132;
      v74 = v134;
LABEL_17:
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v110 = static OS_os_log.boardStore;
      v111 = static os_log_type_t.error.getter();
      sub_100005404(v110, &_mh_execute_header, v111, "Failure reading board identifier data.", 38, 2, _swiftEmptyArrayStorage);

      goto LABEL_9;
    }

    v78 = v108;
    v79 = v109;
    v135 = 0;
    sub_10002640C(v103, v105);
    v80 = v125;
    (*v119)(v125, v106, v127);
    v81 = (v80 + *(v126 + 20));
    *v81 = v78;
    v81[1] = v79;
    v82 = v124;
    sub_100025668(v80, v124, type metadata accessor for CRLBoardIdentifierStorage);
    v83 = v82;
    v84 = v121;
    sub_100025668(v83, v121, type metadata accessor for CRLBoardIdentifierStorage);
    v85 = v84;
    v86 = v120;
    sub_100025668(v85, v120, type metadata accessor for CRLBoardIdentifier);
    v87 = v86;
    v88 = v130;
    sub_100025668(v87, v130, type metadata accessor for CRLBoardIdentifier);
    v89 = v88;
    v90 = v123;
    sub_10000C83C(v89, v123, type metadata accessor for CRLBoardIdentifier);
    v91 = v122;
    sub_100031F10(v122, v90);

    sub_10002640C(v103, v105);
    sub_100026028(v91, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v130, type metadata accessor for CRLBoardIdentifier);
    v71 = v133;
    v72 = v132;
    v74 = v134;
LABEL_9:
    v92 = *(*(v68 + 16) + 32);
    *v20 = v92;
    v72(v20, v71, v17);
    v93 = v92;
    LOBYTE(v92) = _dispatchPreconditionTest(_:)();
    v74(v20, v17);
    if ((v92 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v95 && v95 != 101)
  {
    *v136 = v95;
    v112 = v118;
    *v118 = 0;
    v112[1] = 0;
  }

  v64 = v138;
  v113 = *(*(v68 + 16) + 32);
  *v20 = v113;
  v72(v20, v71, v17);
  v114 = v113;
  LOBYTE(v113) = _dispatchPreconditionTest(_:)();
  v134(v20, v17);
  if ((v113 & 1) == 0)
  {
LABEL_34:
    __break(1u);
  }

  v115 = *(v68 + 24);
  if (v115)
  {
    sqlite3_finalize(v115);
    *(v68 + 24) = 0;
  }

  return v64;
}

uint64_t sub_100DE4638()
{
  v90 = type metadata accessor for UUID();
  v81 = *(v90 - 8);
  __chkstk_darwin(v90);
  v3 = v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v89);
  v88 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v87 = v80 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v86 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = v80 - v10;
  __chkstk_darwin(v11);
  v84 = v80 - v12;
  __chkstk_darwin(v13);
  v83 = v80 - v14;
  __chkstk_darwin(v15);
  v82 = v80 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = (v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v21 = v22;
  v24 = v18 + 104;
  v23 = *(v18 + 104);
  v93 = enum case for DispatchPredicate.onQueue(_:);
  v94 = v23;
  v23(v21, v19);
  v25 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v28 = *(v18 + 8);
  v27 = v18 + 8;
  v26 = v28;
  v28(v21, v17);
  if ((v22 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v98 = v26;
  v92 = v3;
  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v30 = sub_10001CC04(v29, 0xD000000000000050, 0x80000001015ABF20);
  v97 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v31 = static OS_os_log.boardStore;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v31, &_mh_execute_header, v32, "Failed to fetch shared boards that were deleted while offline", 61, 2, _swiftEmptyArrayStorage);
      v33 = v97;
      swift_willThrow();
      v97 = v33;
      return inited;
    }

LABEL_31:
    swift_once();
    goto LABEL_4;
  }

  v34 = v30;

  v99 = _swiftEmptySetSingleton;
  v35 = *(*(v34 + 16) + 32);
  *v21 = v35;
  v36 = v93;
  v37 = v94;
  v94(v21, v93, v17);
  v38 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v39 = v98;
  v98(v21, v17);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  type metadata accessor for SQLiteRowIterator();
  v40 = swift_initStackObject();
  v40[3] = 0;
  v95 = v40 + 3;
  v40[4] = 0;
  v80[0] = v40 + 4;
  v40[5] = 1;
  v96 = v40;
  v40[2] = v34;

  swift_beginAccess();
  v41 = *(*(v34 + 16) + 32);
  *v21 = v41;
  v37(v21, v36, v17);
  v42 = v41;
  inited = _dispatchPreconditionTest(_:)();
  v39(v21, v17);
  if ((inited & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v81 += 4;
  v91 = v27;
  v80[1] = v24;
  while (1)
  {
    v46 = v95;
    v45 = v96;
    *v95 = 0;
    v46[1] = 0;
    v45[5] = 1;
    v47 = sqlite3_step(*(v34 + 24));
    if (v47 != 100)
    {
      break;
    }

    v48 = *(*(v34 + 16) + 32);
    *v21 = v48;
    v37(v21, v36, v17);

    v49 = v48;
    inited = _dispatchPreconditionTest(_:)();
    v50 = v98;
    v98(v21, v17);
    if ((inited & 1) == 0)
    {
      goto LABEL_28;
    }

    v51 = *(*(v34 + 16) + 32);
    *v21 = v51;
    v37(v21, v36, v17);
    v52 = v51;
    inited = _dispatchPreconditionTest(_:)();
    v50(v21, v17);
    if ((inited & 1) == 0)
    {
      goto LABEL_29;
    }

    if (sqlite3_column_type(*(v34 + 24), 0) == 5 || (v53 = sqlite3_column_blob(*(v34 + 24), 0)) == 0)
    {
    }

    else
    {
      v54 = v53;
      v55 = sqlite3_column_bytes(*(v34 + 24), 0);
      v56 = sub_100024DD4(v54, v55);
      v58 = v57;
      sub_100024E98(v56, v57);
      v59 = v92;
      v60 = v97;
      sub_100024EEC(v92, v56, v58);
      if (v60)
      {

        sub_10002640C(v56, v58);

        sub_10002640C(v56, v58);
        v97 = 0;
      }

      else
      {
        v63 = v61;
        v64 = v62;
        v97 = 0;
        sub_10002640C(v56, v58);
        v65 = v88;
        (*v81)(v88, v59, v90);
        v66 = (v65 + *(v89 + 20));
        *v66 = v63;
        v66[1] = v64;
        v67 = v87;
        sub_100025668(v65, v87, type metadata accessor for CRLBoardIdentifierStorage);
        v68 = v67;
        v69 = v84;
        sub_100025668(v68, v84, type metadata accessor for CRLBoardIdentifierStorage);
        v70 = v69;
        v71 = v83;
        sub_100025668(v70, v83, type metadata accessor for CRLBoardIdentifier);
        v72 = v82;
        sub_100025668(v71, v82, type metadata accessor for CRLBoardIdentifier);
        v73 = v86;
        sub_10000C83C(v72, v86, type metadata accessor for CRLBoardIdentifier);
        v74 = v85;
        sub_100031F10(v85, v73);

        sub_10002640C(v56, v58);
        sub_100026028(v74, type metadata accessor for CRLBoardIdentifier);
        sub_100026028(v72, type metadata accessor for CRLBoardIdentifier);
      }

      v36 = v93;
      v37 = v94;
    }

    v43 = *(*(v34 + 16) + 32);
    *v21 = v43;
    v37(v21, v36, v17);
    v44 = v43;
    inited = _dispatchPreconditionTest(_:)();
    v98(v21, v17);
    if ((inited & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v47 && v47 != 101)
  {
    *v95 = v47;
    v75 = v80[0];
    *v80[0] = 0;
    *(v75 + 8) = 0;
  }

  inited = v99;
  v76 = *(*(v34 + 16) + 32);
  *v21 = v76;
  v94(v21, v36, v17);
  v77 = v76;
  LOBYTE(v76) = _dispatchPreconditionTest(_:)();
  v98(v21, v17);
  if ((v76 & 1) == 0)
  {
LABEL_33:
    __break(1u);
  }

  v78 = *(v34 + 24);
  if (v78)
  {
    sqlite3_finalize(v78);
    *(v34 + 24) = 0;
  }

  return inited;
}

uint64_t sub_100DE4F8C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = (&v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v4 = v5;
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = v2 + 104;
  v8 = *(v2 + 104);
  (v8)(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v5;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v2 + 8);
  v85 = v1;
  v91 = (v2 + 8);
  (v11)(v4, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v89 = v8;
  v90 = v11;
  v95 = 0;
  v96 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v12._countAndFlagsBits = 0x205443454C4553;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x65756C6176;
  v13._object = 0xE500000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x204D4F524620;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x756C61765F79656BLL;
  v15._object = 0xEE00617461645F65;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x20455245485720;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 7955819;
  v17._object = 0xE300000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x2720454B494C20;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000016;
  v19._object = 0x80000001015A36D0;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x4320444E41202725;
  v20._object = 0xEC00000028545341;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x6E695F6172747865;
  v21._object = 0xEA00000000006F66;
  String.append(_:)(v21);
  v22._object = 0x80000001015A36F0;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23 = v95;
  v24 = v96;
  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v27 = v23;
  v10 = inited;
  v28 = v88;
  v29 = sub_10001CC04(v26, v27, v24);
  if (v28)
  {
LABEL_3:

    if (qword_1019F2160 == -1)
    {
LABEL_4:
      v30 = static OS_os_log.crlZoneRefetch;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v31, "Failed to fetch unsupported zones needing refetching from the datastore.", 72, 2, _swiftEmptyArrayStorage);
      swift_willThrow();
      return v10;
    }

LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  v32 = v29;

  v94 = _swiftEmptySetSingleton;
  v33 = *(*(v32 + 16) + 32);
  *v4 = v33;
  v34 = v85;
  (v89)(v4, v6, v85);
  v35 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v36 = v90;
  (v90)(v4, v34);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v84 = 0;
  type metadata accessor for SQLiteRowIterator();
  v37 = swift_initStackObject();
  v37[3] = 0;
  v87 = v37 + 3;
  v37[4] = 0;
  v83 = v37 + 4;
  v37[5] = 1;
  v88 = v37;
  v37[2] = v32;

  swift_beginAccess();
  v38 = *(*(v32 + 16) + 32);
  *v4 = v38;
  (v89)(v4, v6, v34);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  (v36)(v4, v34);
  v40 = v89;
  if (v38)
  {
    v36 = v32;
    v82 = xmmword_1014B6250;
    v86 = v7;
    while (1)
    {
      v41 = v87;
      *v87 = 0;
      v41[1] = 0;
      v88[5] = 1;
      v42 = sqlite3_step(v36[3]);
      if (v42 != 100)
      {
        break;
      }

      v43 = *(v36[2] + 4);
      *v4 = v43;
      (v40)(v4, v6, v34);

      v44 = v43;
      LOBYTE(v43) = _dispatchPreconditionTest(_:)();
      v45 = v40;
      v40 = v6;
      v32 = v7;
      v46 = v90;
      v6 = v91;
      (v90)(v4, v34);
      if ((v43 & 1) == 0)
      {
        goto LABEL_37;
      }

      v47 = *(v36[2] + 4);
      *v4 = v47;
      v48 = v34;
      v34 = v40;
      v49 = v40;
      v40 = v48;
      v45(v4, v49);
      v50 = v47;
      LOBYTE(v47) = _dispatchPreconditionTest(_:)();
      v32 = v40;
      (v46)(v4, v40);
      if ((v47 & 1) == 0)
      {
        goto LABEL_38;
      }

      if (sqlite3_column_type(v36[3], 0) != 5 && (v51 = sqlite3_column_blob(v36[3], 0)) != 0)
      {
        v85 = v51;
        v59 = sqlite3_column_bytes(v36[3], 0);
        v40 = v89;
        v6 = v34;
        v7 = v86;
        if (v59)
        {
          v34 = v32;
          if (v59 <= 14)
          {
            memset(__dst, 0, sizeof(__dst));
            v93 = v59;
            memcpy(__dst, v85, v59);
            v85 = *__dst;
            v32 = v81 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v93 << 16)) << 32);
            v81 = v32;
          }

          else
          {
            v60 = v59;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            if (v60 == 0x7FFFFFFF)
            {
              v61 = __DataStorage.init(bytes:length:)();
              type metadata accessor for Data.RangeReference();
              v85 = swift_allocObject();
              *(v85 + 1) = v82;
              v32 = v61 | 0x8000000000000000;
            }

            else
            {
              v62 = __DataStorage.init(bytes:length:)();
              v85 = (v60 << 32);
              v32 = v62 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v85 = 0;
          v34 = v32;
          v32 = 0xC000000000000000;
        }

        sub_100006370(0, &qword_101A1AEB0);
        sub_100006370(0, &qword_1019F69D0);
        v63 = v84;
        v64 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        v84 = v63;
        if (v63)
        {
          goto LABEL_39;
        }

        if (v64)
        {
          v65 = v64;
          sub_100E7227C(__dst, v65, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
          sub_10002640C(v85, v32);
        }

        else
        {

          sub_10002640C(v85, v32);
        }

        v66 = *(v36[2] + 4);
        *v4 = v66;
        (v40)(v4, v6, v34);
        v67 = v66;
        v56 = _dispatchPreconditionTest(_:)();
        v57 = v4;
        v58 = v34;
      }

      else
      {

        v52 = *(v36[2] + 4);
        *v4 = v52;
        v6 = v34;
        v53 = v34;
        v34 = v40;
        v54 = v40;
        v40 = v89;
        v7 = v86;
        (v89)(v4, v53, v54);
        v55 = v52;
        v56 = _dispatchPreconditionTest(_:)();
        v57 = v4;
        v58 = v32;
      }

      (v90)(v57, v58);
      if ((v56 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v68 = v34;
    v69 = v4;
    if (v42 && v42 != 101)
    {
      *v87 = v42;
      v70 = v83;
      *v83 = 0;
      v70[1] = 0;
    }

    v10 = v94;
    v71 = v36;
    v72 = *(v36[2] + 4);
    *v69 = v72;
    (v40)(v69, v6, v68);
    v73 = v72;
    v74 = _dispatchPreconditionTest(_:)();
    (v90)(v69, v68);
    if (v74)
    {
      v75 = v71[3];
      if (v75)
      {
        sqlite3_finalize(v75);
        v71[3] = 0;
      }

      return v10;
    }

LABEL_45:
    __break(1u);
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  sub_10002640C(v85, v32);

  v77 = *(v36[2] + 4);
  *v4 = v77;
  (v40)(v4, v6, v34);
  v78 = v77;
  v10 = _dispatchPreconditionTest(_:)();
  result = (v90)(v4, v34);
  if (v10)
  {
    v79 = v36[3];
    if (v79)
    {
      sqlite3_finalize(v79);
      v36[3] = 0;
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE5990(uint64_t a1)
{
  v87 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = v1;
  v6 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v81 = v7;
  v82 = v8;
  v83 = v3 + 104;
  v84 = v10;
  v80 = v2;
  v88 = 0;
  v89 = 0xE000000000000000;
  _StringGuts.grow(_:)(131);
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = 0x80000001015A3570;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x736472616F62;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x4A2052454E4E4920;
  v13._object = 0xEC000000204E494FLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x74695F6472616F62;
  v14._object = 0xEB00000000736D65;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 542002976;
  v15._object = 0xE400000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x74695F6472616F62;
  v16._object = 0xEB00000000736D65;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._object = 0x8000000101585360;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 2112800;
  v19._object = 0xE300000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x736472616F62;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._object = 0x8000000101585360;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x20455245485720;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x736472616F62;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26._object = 0x8000000101585360;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x444E41203F203D20;
  v27._object = 0xEA00000000002820;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x736472616F62;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 46;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000014;
  v30._object = 0x80000001015A3590;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x20524F203F203E20;
  v31._object = 0xE900000000000028;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x74695F6472616F62;
  v32._object = 0xEB00000000736D65;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000014;
  v34._object = 0x80000001015A3590;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x444E41203F203E20;
  v35._object = 0xEA00000000002820;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x74695F6472616F62;
  v36._object = 0xEB00000000736D65;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 46;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v38._object = 0xEE00736E6F697470;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x203E20293F202620;
  v39._object = 0xEC00000029292930;
  String.append(_:)(v39);
  v40 = v88;
  v41 = v89;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v43 = v86;
  v44 = sub_10001CC04(v42, v40, v41);
  if (v43)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v47 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v49 = UUID.uuidString.getter();
      v51 = v50;
      *(inited + 56) = &type metadata for String;
      v52 = sub_1000053B0();
      *(inited + 64) = v52;
      *(inited + 32) = v49;
      *(inited + 40) = v51;
      swift_getErrorValue();
      v53 = Error.localizedDescription.getter();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v52;
      *(inited + 72) = v53;
      *(inited + 80) = v54;
      v55 = static os_log_type_t.error.getter();
      sub_100005404(v47, &_mh_execute_header, v55, "Failed to fetch if specific board %@ is unsupported with error %@", 65, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_willThrow();
      return v47 & 1;
    }

LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  v45 = v44;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v46 = sub_10084DAE4();
  v58 = v57;
  v59 = v46;
  v60 = *(*(v45 + 16) + 32);
  *v5 = v60;
  v61 = v80;
  v82(v5, v81, v80);
  v62 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  v84(v5, v61);
  if ((v60 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_100DCCAB4(v59, v58, v45, 1);
  sub_10002640C(v59, v58);
  v63 = sub_10001FF1C();
  sub_100034254(v63, 2);
  sub_100034254(v63, 3);
  sub_100034254(1, 4);
  v64 = *(*(v45 + 16) + 32);
  *v5 = v64;
  v82(v5, v81, v61);
  v65 = v64;
  LOBYTE(v64) = _dispatchPreconditionTest(_:)();
  v84(v5, v61);
  if ((v64 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v66 = swift_initStackObject();
  v66[4] = 0;
  v66[5] = 1;
  v66[2] = v45;
  v66[3] = 0;

  v67 = sub_10001E1D0();
  if (!v67)
  {

    swift_setDeallocating();
    sub_10001E364(v66[3], v66[4], v66[5]);
LABEL_14:
    v75 = *(*(v45 + 16) + 32);
    *v5 = v75;
    v76 = v80;
    v82(v5, v81, v80);
    v77 = v75;
    LOBYTE(v75) = _dispatchPreconditionTest(_:)();
    v84(v5, v76);
    if (v75)
    {
      v74 = (v45 + 24);
      swift_beginAccess();
      LOBYTE(v47) = 0;
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v68 = sub_10001E378(0, v67);
  v70 = v69;

  swift_setDeallocating();
  sub_10001E364(v66[3], v66[4], v66[5]);
  if (v70)
  {
    goto LABEL_14;
  }

  v71 = *(*(v45 + 16) + 32);
  *v5 = v71;
  v72 = v80;
  v82(v5, v81, v80);
  v73 = v71;
  LOBYTE(v71) = _dispatchPreconditionTest(_:)();
  v84(v5, v72);
  if ((v71 & 1) == 0)
  {
    goto LABEL_24;
  }

  LOBYTE(v47) = v68 > 0;
  v74 = (v45 + 24);
  swift_beginAccess();
LABEL_16:
  v78 = *(v45 + 24);
  if (v78)
  {
    sqlite3_finalize(v78);
    *v74 = 0;
  }

  return v47 & 1;
}

void *sub_100DE62C0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v2 - 8);
  v159 = &v139 - v3;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v155 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v154 = &v139 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  v14 = enum case for DispatchPredicate.onQueue(_:);
  v15 = *(v10 + 104);
  v162 = v10 + 104;
  v165 = v15;
  v15(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v163 = v13;
  v16 = _dispatchPreconditionTest(_:)();
  v19 = *(v10 + 8);
  v18 = v10 + 8;
  v17 = v19;
  v19(v12, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_63:
    sub_100025870(v5, v9);

    sub_100025870(v5, v9);

    v136 = *(*(v18 + 16) + 32);
    *v12 = v136;
    v165(v12, v166, v4);
    v137 = v136;
    v138 = _dispatchPreconditionTest(_:)();
    result = (v160)(v12, v4);
    if (v138)
    {
      v135 = *(v18 + 24);
      if (!v135)
      {
        goto LABEL_6;
      }

LABEL_5:
      sqlite3_finalize(v135);
      *(v18 + 24) = 0;
      goto LABEL_6;
    }

LABEL_71:
    __break(1u);
    return result;
  }

  v153 = v5;
  v158 = v4;
  v166 = v14;
  v160 = v17;
  v157 = v18;
  v156 = v9;
  v167 = 0;
  v168 = 0xE000000000000000;
  _StringGuts.grow(_:)(179);
  v20._countAndFlagsBits = 0x205443454C4553;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = sub_1000820E8(0x736472616F62, 0xE600000000000000);
  String.append(_:)(v21);

  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xED0000315F736D65);
  String.append(_:)(v23);

  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xED0000325F736D65);
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x204D4F524620;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x736472616F62;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x4A2052454E4E4920;
  v28._object = 0xEC000000204E494FLL;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x74695F6472616F62;
  v29._object = 0xEB00000000736D65;
  String.append(_:)(v29);
  v30._object = 0x80000001015A3460;
  v30._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x6975755F6D657469;
  v31._object = 0xE900000000000064;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 2112800;
  v32._object = 0xE300000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x736472616F62;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 46;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x656E6961746E6F63;
  v35._object = 0xEE00646975755F72;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x2052454E4E492029;
  v36._object = 0xED0000204E494F4ALL;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x74695F6472616F62;
  v37._object = 0xEB00000000736D65;
  String.append(_:)(v37);
  v38._object = 0x80000001015A3490;
  v38._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x6975755F6D657469;
  v39._object = 0xE900000000000064;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 2112800;
  v40._object = 0xE300000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x736472616F62;
  v41._object = 0xE600000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 46;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000018;
  v43._object = 0x80000001015A34C0;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x2045524548572029;
  v44._object = 0xE800000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x736472616F62;
  v45._object = 0xE600000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 46;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 1635017060;
  v47._object = 0xE400000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD000000000000011;
  v48._object = 0x80000001015A3B00;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x736472616F62;
  v49._object = 0xE600000000000000;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 46;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0x6E6F7473626D6F74;
  v51._object = 0xEA00000000006465;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 807419168;
  v52._object = 0xE400000000000000;
  String.append(_:)(v52);
  v53 = v167;
  v54 = v168;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v56 = v164;
  v57 = sub_10001CC04(v55, v53, v54);
  if (v56)
  {
LABEL_6:

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v61 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v63 = Error.localizedDescription.getter();
    v65 = v64;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v63;
    *(inited + 40) = v65;
    v66 = static os_log_type_t.error.getter();
    sub_100005404(v61, &_mh_execute_header, v66, "Failed to fetch a board and its container records and CKShares with error %@", 76, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    return swift_willThrow();
  }

  v18 = v57;

  v58 = v163;
  *v12 = v163;
  v4 = v156;
  v165(v12, v166, v156);
  v146 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v59 = v160;
  v160(v12, v4);
  if ((v58 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v60 = sub_100DE4F8C();
  v142 = v1;
  v68 = sub_100DC9150(v60);
  v161 = 0;

  v144 = sub_10004B3DC(v68);

  v69 = *(*(v18 + 16) + 32);
  *v12 = v69;
  v70 = v165;
  v165(v12, v166, v4);
  v71 = v69;
  v72 = _dispatchPreconditionTest(_:)();
  v59(v12, v4);
  if ((v72 & 1) == 0)
  {
    goto LABEL_67;
  }

  type metadata accessor for SQLiteRowIterator();
  v73 = swift_initStackObject();
  v73[3] = 0;
  v163 = v73 + 3;
  v73[4] = 0;
  v143 = v73 + 4;
  v73[5] = 1;
  v164 = v73;
  v73[2] = v18;

  swift_beginAccess();
  v74 = *(*(v18 + 16) + 32);
  *v12 = v74;
  v70(v12, v166, v4);
  v75 = v74;
  v76 = _dispatchPreconditionTest(_:)();
  v59(v12, v4);
  if ((v76 & 1) == 0)
  {
LABEL_58:
    __break(1u);
LABEL_59:

    swift_bridgeObjectRelease_n();

    v132 = *(*(v18 + 16) + 32);
    *v12 = v132;
    v165(v12, v166, v4);
    v133 = v132;
    v134 = _dispatchPreconditionTest(_:)();
    result = (v59)(v12, v4);
    if (v134)
    {
      v135 = *(v18 + 24);
      if (!v135)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_71;
  }

  v145 = _swiftEmptyArrayStorage;
  v153 += 7;
  while (1)
  {
    v80 = v163;
    *v163 = 0;
    v80[1] = 0;
    v164[5] = 1;
    v81 = sqlite3_step(*(v18 + 24));
    if (v81 != 100)
    {
      break;
    }

    v82 = swift_retain_n();
    v83 = sub_1000826B0(v82, 0);
    if (!v83)
    {
      goto LABEL_32;
    }

    v84 = v83;
    v85 = (v83 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
    v86 = *(v83 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
    if (v86 >> 60 == 15)
    {
    }

    else
    {
      v87 = *v85;
      sub_100024E84(*v85, v86);
      sub_100024E84(v87, v86);
      sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

      v88 = v159;
      v89 = v158;
      v90 = v161;
      CRDT.init(serializedData:)();
      if (v90)
      {

        sub_100025870(v87, v86);

        (*v153)(v88, 1, 1, v89);
        sub_10000CAAC(v88, &qword_101A21C68);
        v161 = 0;
      }

      else
      {
        v161 = 0;
        (*v153)(v88, 0, 1, v89);
        v152 = type metadata accessor for CRLBoardCRDTData;
        v91 = v154;
        sub_100025668(v88, v154, type metadata accessor for CRLBoardCRDTData);
        LODWORD(v151) = *(v84 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
        v92 = *(v84 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
        v150 = *(v84 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
        v149 = v92;
        v93 = v155;
        sub_10000C83C(v91, v155, type metadata accessor for CRLBoardCRDTData);
        v94 = v84 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
        v95 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v147 = v94;
        v96 = (v94 + v95);
        v97 = v96[1];
        v148 = *v96;
        type metadata accessor for CRLBoardData(0);
        v98 = swift_allocObject();

        sub_100025870(v87, v86);

        sub_100026028(v91, type metadata accessor for CRLBoardCRDTData);
        *(v98 + 16) = 7;
        *(v98 + 40) = v149;
        *(v98 + 24) = v150;
        *(v98 + 56) = v151;
        sub_100025668(v93, v98 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v152);
        v99 = (v98 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
        *v99 = v148;
        v99[1] = v97;

        v101 = sub_100E9B7E0(v100, 19);
        if (v101)
        {
          v102 = v101;
          v103 = sub_100E929EC(v101);
          v4 = v156;
          v59 = v160;
          if (v103)
          {
            v152 = v102;
            v104 = v103;
            type metadata accessor for CRLContainerItemData(0);
            v105 = swift_dynamicCastClass();
            if (v105 && (*&v149 = v105, v151 = v104, v106 = , (v107 = sub_100E9B7E0(v106, 36)) != 0))
            {
              *&v150 = v107;
              v108 = sub_100E929EC(v107);
              if (v108)
              {
                v148 = v108;
                v109 = swift_dynamicCastClass();
                if (v109)
                {
                  v139 = v109;
                  v141 = v98;
                  v9 = *(v84 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
                  if (v9 >> 60 == 15)
                  {
                    v140 = 0;
                  }

                  else
                  {
                    v5 = *(v84 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
                    sub_100006370(0, &qword_101A1AEB0);
                    sub_100006370(0, &qword_1019F52C0);
                    sub_100024E98(v5, v9);
                    sub_100024E98(v5, v9);
                    v110 = v161;
                    v111 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
                    if (v110)
                    {
                      goto LABEL_63;
                    }

                    v161 = 0;
                    if (v111)
                    {
                      v140 = v111;
                      v112 = v111;
                      sub_100CE94A4();
                      sub_100025870(v5, v9);
                    }

                    else
                    {
                      sub_100025870(v5, v9);
                      v140 = 0;
                    }

                    sub_100025870(v5, v9);
                    v59 = v160;
                  }

                  v113 = v146;
                  *v12 = v146;
                  v165(v12, v166, v4);
                  v114 = v113;

                  LOBYTE(v113) = _dispatchPreconditionTest(_:)();
                  v59(v12, v4);
                  if ((v113 & 1) == 0)
                  {
                    goto LABEL_69;
                  }

                  v115 = v161;
                  v116 = sub_100DE5990(v147);
                  v161 = v115;
                  if (v115)
                  {
                    goto LABEL_59;
                  }

                  if (v116)
                  {

                    goto LABEL_45;
                  }

                  v117 = sub_10079DDA0(v147, v144);

                  if (v117)
                  {
LABEL_45:
                    v118 = v145;
                    v119 = 1;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
LABEL_46:
                      v145 = v118;
                      v121 = v118[2];
                      v120 = v118[3];
                      if (v121 >= v120 >> 1)
                      {
                        v145 = sub_100B38D30((v120 > 1), v121 + 1, 1, v145);
                      }

                      v122 = v145;
                      v145[2] = v121 + 1;
                      v123 = &v122[5 * v121];
                      v124 = v149;
                      v123[4] = v141;
                      v123[5] = v124;
                      v125 = v140;
                      v123[6] = v139;
                      v123[7] = v125;
                      *(v123 + 64) = v119;
                      goto LABEL_13;
                    }
                  }

                  else
                  {
                    v118 = v145;
                    v119 = 0;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      goto LABEL_46;
                    }
                  }

                  v118 = sub_100B38D30(0, v118[2] + 1, 1, v118);
                  goto LABEL_46;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {
          }

LABEL_32:

          goto LABEL_13;
        }

        v4 = v156;
      }

      v59 = v160;
    }

LABEL_13:
    v77 = *(*(v18 + 16) + 32);
    *v12 = v77;
    v70 = v165;
    v165(v12, v166, v4);
    v78 = v77;
    v79 = _dispatchPreconditionTest(_:)();
    v59(v12, v4);
    if ((v79 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v126 = v81;

  if (v126 && v126 != 101)
  {
    *v163 = v126;
    v127 = v143;
    *v143 = 0;
    v127[1] = 0;
  }

  v128 = *(*(v18 + 16) + 32);
  *v12 = v128;
  v70(v12, v166, v4);
  v129 = v128;
  v130 = _dispatchPreconditionTest(_:)();
  v59(v12, v4);
  if ((v130 & 1) == 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  v131 = *(v18 + 24);
  if (v131)
  {
    sqlite3_finalize(v131);
    *(v18 + 24) = 0;
  }

  return v145;
}

uint64_t sub_100DE778C@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v5 - 8);
  v180 = v168 - v6;
  v179 = type metadata accessor for CRLBoardCRDTData(0);
  *&v178 = *(v179 - 1);
  v7 = __chkstk_darwin(v179);
  v177 = v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v176 = (v168 - v9);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v13 = v14;
  v15 = enum case for DispatchPredicate.onQueue(_:);
  v16 = *(v11 + 104);
  v187 = v11 + 104;
  v185 = v16;
  v16(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v182 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v186 = v18;
  v18(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v188 = v15;
  v183 = v10;
  v184 = v17;
  v181 = a1;
  v190 = 0;
  v191 = 0xE000000000000000;
  _StringGuts.grow(_:)(195);
  v19._countAndFlagsBits = 0x205443454C4553;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = sub_1000820E8(0x736472616F62, 0xE600000000000000);
  String.append(_:)(v20);

  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xED0000315F736D65);
  String.append(_:)(v22);

  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xED0000325F736D65);
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x204D4F524620;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x736472616F62;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x4A2052454E4E4920;
  v27._object = 0xEC000000204E494FLL;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x74695F6472616F62;
  v28._object = 0xEB00000000736D65;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000021;
  v29._object = 0x80000001015A3460;
  String.append(_:)(v29);
  v189 = v3;
  v30._countAndFlagsBits = 0x6975755F6D657469;
  v30._object = 0xE900000000000064;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 2112800;
  v31._object = 0xE300000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x736472616F62;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x656E6961746E6F63;
  v34._object = 0xEE00646975755F72;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x2052454E4E492029;
  v35._object = 0xED0000204E494F4ALL;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x74695F6472616F62;
  v36._object = 0xEB00000000736D65;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000021;
  v37._object = 0x80000001015A3490;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x6975755F6D657469;
  v38._object = 0xE900000000000064;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 2112800;
  v39._object = 0xE300000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x736472616F62;
  v40._object = 0xE600000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 46;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD000000000000018;
  v42._object = 0x80000001015A34C0;
  String.append(_:)(v42);
  v43._object = 0x80000001015A34E0;
  v43._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD000000000000010;
  v44._object = 0x8000000101585360;
  String.append(_:)(v44);
  v45._object = 0x80000001015A3500;
  v45._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x6E6F7473626D6F74;
  v46._object = 0xEA00000000006465;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x2930203D20;
  v47._object = 0xE500000000000000;
  String.append(_:)(v47);
  v48 = v190;
  v49 = v191;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v51 = sub_10001CC04(v50, v48, v49);
  if (v2)
  {
LABEL_9:

    if (qword_1019F2258 == -1)
    {
LABEL_10:
      v75 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v77 = Error.localizedDescription.getter();
      v79 = v78;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v77;
      *(inited + 40) = v79;
      v80 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v80, "Failed to fetch a board and its container records and CKShare with error %@", 75, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_45:
    swift_once();
    goto LABEL_10;
  }

  v52 = v51;

  v53 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v54 = sub_10084DAE4();
  v173 = v53;
  v174 = 0;
  v56 = v55;
  v57 = v54;
  v58 = *(*(v52 + 16) + 32);
  *v13 = v58;
  v59 = v183;
  v60 = v185;
  v185(v13, v188, v183);
  v61 = v58;
  v62 = _dispatchPreconditionTest(_:)();
  v63 = v186;
  v64 = v186(v13, v59);
  if ((v62 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v175 = v52;
  v65 = v174;
  sub_100DCCAB4(v57, v56, v52, 1);
  v62 = v65;
  sub_10002640C(v57, v56);
  v66 = v182;
  *v13 = v182;
  v60(v13, v188, v59);
  v67 = v66;
  LOBYTE(v66) = _dispatchPreconditionTest(_:)();
  v182 = v13;
  v56 = v59;
  v64 = v63(v13, v59);
  if ((v66 & 1) == 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v68 = v60;
  v69 = sub_100DE4F8C();
  v60 = v65;
  if (v65)
  {
    v70 = v175;
    v71 = *(*(v175 + 16) + 32);
    v72 = v182;
    *v182 = v71;
    v68(v72, v188, v56);
    v73 = v71;
    v62 = _dispatchPreconditionTest(_:)();
    v64 = v186(v72, v56);
    if (v62)
    {
      swift_beginAccess();
      v74 = *(v70 + 24);
      if (v74)
      {
        sqlite3_finalize(v74);
        *(v70 + 24) = 0;
      }

      goto LABEL_9;
    }

    goto LABEL_55;
  }

  v172 = v67;
  v82 = sub_100DC9150(v69);
  v60 = 0;

  v174 = sub_10004B3DC(v82);

  v83 = v175;
  v84 = *(*(v175 + 16) + 32);
  v85 = v182;
  *v182 = v84;
  v68(v85, v188, v56);
  v86 = v84;
  LOBYTE(v84) = _dispatchPreconditionTest(_:)();
  v186(v85, v56);
  if ((v84 & 1) == 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  type metadata accessor for SQLiteRowIterator();
  v87 = swift_initStackObject();
  v87[4] = 0;
  v87[5] = 1;
  v87[2] = v83;
  v87[3] = 0;

  v88 = sub_10001E1D0();
  if (!v88)
  {

    swift_setDeallocating();
    sub_10001E364(v87[3], v87[4], v87[5]);
    v95 = *(*(v83 + 16) + 32);
    v96 = v182;
    *v182 = v95;
    v68(v96, v188, v56);
    v97 = v95;
    LOBYTE(v95) = _dispatchPreconditionTest(_:)();
    v186(v96, v56);
    if (v95)
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_18;
  }

  v89 = v88;

  v91 = sub_1000826B0(v90, 0);
  if (!v91)
  {
LABEL_18:
    v83 = v175;

    swift_setDeallocating();
    sub_10001E364(v87[3], v87[4], v87[5]);
    v98 = *(*(v83 + 16) + 32);
    v94 = v182;
    *v182 = v98;
    v68(v94, v188, v56);
    v99 = v98;
    v93 = _dispatchPreconditionTest(_:)();
    v186(v94, v56);
    if (v93)
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_20;
  }

  v171 = v89;
  v170 = v87;
  v92 = (v91 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v93 = *(v91 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  v94 = v91;
  if (v93 >> 60 == 15)
  {
    v83 = v175;

    v103 = v170;
    swift_setDeallocating();
    sub_10001E364(v103[3], v103[4], v103[5]);
    v104 = *(*(v83 + 16) + 32);
    v105 = v182;
    *v182 = v104;
    v68(v105, v188, v56);
    v106 = v104;
    LOBYTE(v104) = _dispatchPreconditionTest(_:)();
    v186(v105, v56);
    if (v104)
    {
LABEL_22:
      swift_beginAccess();
      v107 = *(v83 + 24);
      if (v107)
      {
        sqlite3_finalize(v107);
        *(v83 + 24) = 0;
      }

LABEL_24:

      v56 = 0;
      v108 = 0;
      v62 = 0;
      v109 = 0;
      v110 = 0;
      goto LABEL_25;
    }

LABEL_73:
    __break(1u);
  }

LABEL_20:
  v100 = *v92;
  sub_100024E84(*v92, v93);
  sub_100024E84(v100, v93);
  sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

  v101 = v180;
  v102 = v179;
  CRDT.init(serializedData:)();
  (*(v178 + 56))(v101, 0, 1, v102);
  v179 = type metadata accessor for CRLBoardCRDTData;
  v112 = v176;
  sub_100025668(v101, v176, type metadata accessor for CRLBoardCRDTData);
  LODWORD(v180) = v94[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32];
  v113 = *&v94[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16];
  v178 = *&v94[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions];
  v169 = v113;
  v114 = v94;
  v115 = v177;
  sub_10000C83C(v112, v177, type metadata accessor for CRLBoardCRDTData);
  v116 = &v114[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier];
  v117 = &v114[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier + *(v173 + 20)];
  v118 = v117[1];
  v173 = *v117;
  type metadata accessor for CRLBoardData(0);
  v56 = swift_allocObject();

  sub_100025870(v100, v93);

  sub_100026028(v112, type metadata accessor for CRLBoardCRDTData);
  *(v56 + 16) = 7;
  *(v56 + 40) = v169;
  *(v56 + 24) = v178;
  *(v56 + 56) = v180;
  sub_100025668(v115, v56 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v179);
  v119 = (v56 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  *v119 = v173;
  v119[1] = v118;

  v121 = sub_100E9B7E0(v120, 19);
  if (!v121)
  {
    v133 = v175;

    v134 = v170;
    swift_setDeallocating();
    sub_10001E364(v134[3], v134[4], v134[5]);
    v135 = *(*(v133 + 16) + 32);
    v136 = v182;
    *v182 = v135;
    v137 = v183;
    v185(v136, v188, v183);
    v138 = v135;
    LOBYTE(v135) = _dispatchPreconditionTest(_:)();
    result = v186(v136, v137);
    if (v135)
    {
      swift_beginAccess();
      v139 = *(v133 + 24);
      if (v139)
      {
        sqlite3_finalize(v139);
        *(v133 + 24) = 0;
      }

      goto LABEL_24;
    }

    goto LABEL_75;
  }

  v180 = v114;
  v122 = sub_100E929EC(v121);
  v123 = v183;
  v124 = v175;
  v125 = v182;
  if (!v122)
  {
LABEL_40:

    v140 = *(*(v124 + 16) + 32);
    *v125 = v140;
    v185(v125, v188, v123);
    v141 = v140;
    LOBYTE(v140) = _dispatchPreconditionTest(_:)();
    result = v186(v125, v123);
    if (v140)
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  *&v178 = v116;
  v126 = v122;
  type metadata accessor for CRLContainerItemData(0);
  v127 = swift_dynamicCastClass();
  if (!v127)
  {

    goto LABEL_40;
  }

  v179 = v126;
  v177 = v127;

  v129 = sub_100E9B7E0(v128, 36);
  if (v129)
  {
    v130 = sub_100E929EC(v129);
    if (v130)
    {
      v176 = v130;
      v131 = swift_dynamicCastClass();
      if (v131)
      {
        v62 = v131;
        v132 = &v180[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData];
        v124 = *&v180[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8];
        if (v124 >> 60 == 15)
        {
          v109 = 0;
          goto LABEL_59;
        }

        goto LABEL_52;
      }
    }
  }

  else
  {

    v143 = v170;
    swift_setDeallocating();
    sub_10001E364(v143[3], v143[4], v143[5]);
    v144 = *(*(v124 + 16) + 32);
    *v125 = v144;
    v185(v125, v188, v123);
    v145 = v144;
    LOBYTE(v144) = _dispatchPreconditionTest(_:)();
    v186(v125, v123);
    if (v144)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  v146 = v170;
  swift_setDeallocating();
  sub_10001E364(v146[3], v146[4], v146[5]);
  v147 = *(*(v124 + 16) + 32);
  *v125 = v147;
  v185(v125, v188, v123);
  v148 = v147;
  v62 = _dispatchPreconditionTest(_:)();
  v186(v125, v123);
  if (v62)
  {
LABEL_41:
    swift_beginAccess();
    v142 = *(v124 + 24);
    if (v142)
    {
      sqlite3_finalize(v142);
      *(v124 + 24) = 0;
    }

    goto LABEL_24;
  }

  __break(1u);
  __break(1u);
LABEL_52:
  v149 = *v132;
  v168[1] = sub_100006370(0, &qword_101A1AEB0);
  sub_100006370(0, &qword_1019F52C0);
  sub_100024E98(v149, v124);
  *&v169 = v149;
  v173 = v124;
  v64 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
LABEL_56:
  v109 = v64;
  if (v64)
  {
    v150 = v64;
    sub_100CE94A4();
  }

  sub_100025870(v169, v173);
  v123 = v183;
  v125 = v182;
LABEL_59:
  v151 = v172;
  *v125 = v172;
  v185(v125, v188, v123);
  v152 = v151;
  LOBYTE(v151) = _dispatchPreconditionTest(_:)();
  result = v186(v125, v123);
  if (v151)
  {
    v153 = sub_100DE5990(v178);
    if (v60)
    {
      v154 = v175;

      v155 = v170;
      swift_setDeallocating();
      sub_10001E364(v155[3], v155[4], v155[5]);
      v156 = *(*(v154 + 16) + 32);
      *v125 = v156;
      v185(v125, v188, v123);
      v157 = v156;
      LOBYTE(v156) = _dispatchPreconditionTest(_:)();
      result = v186(v125, v123);
      if (v156)
      {
        swift_beginAccess();
        v158 = *(v154 + 24);
        if (v158)
        {
          sqlite3_finalize(v158);
          *(v154 + 24) = 0;
        }

        goto LABEL_9;
      }

      goto LABEL_77;
    }

    if (v153)
    {
      v159 = 1;
    }

    else
    {
      v159 = sub_10079DDA0(v178, v174);
    }

    v160 = v175;

    v161 = v170;
    swift_setDeallocating();
    sub_10001E364(v161[3], v161[4], v161[5]);
    v162 = *(*(v160 + 16) + 32);
    v163 = v182;
    *v182 = v162;
    v164 = v183;
    v185(v163, v188, v183);
    v165 = v162;
    LOBYTE(v161) = _dispatchPreconditionTest(_:)();
    result = v186(v163, v164);
    if ((v161 & 1) == 0)
    {
      goto LABEL_78;
    }

    v166 = v175;
    swift_beginAccess();
    v167 = *(v166 + 24);
    if (v167)
    {
      sqlite3_finalize(v167);
      *(v166 + 24) = 0;
    }

    v110 = v159 & 1;
    v108 = v177;
LABEL_25:
    v111 = v181;
    *v181 = v56;
    v111[1] = v108;
    v111[2] = v62;
    v111[3] = v109;
    *(v111 + 32) = v110;
    return result;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_100DE90F4()
{
  v96 = type metadata accessor for UUID();
  v87 = *(v96 - 8);
  __chkstk_darwin(v96);
  v3 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v4 = __chkstk_darwin(v95);
  v94 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v93 = &v84 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = __chkstk_darwin(v7 - 8);
  v92 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v91 = &v84 - v11;
  v12 = __chkstk_darwin(v10);
  v90 = &v84 - v13;
  v14 = __chkstk_darwin(v12);
  v89 = &v84 - v15;
  __chkstk_darwin(v14);
  v88 = &v84 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v20 = v21;
  v23 = v18 + 104;
  v22 = *(v18 + 104);
  v99 = enum case for DispatchPredicate.onQueue(_:);
  v100 = v22;
  v22(v20);
  v24 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v27 = *(v18 + 8);
  v25 = v18 + 8;
  v26 = v27;
  v27(v20, v17);
  if ((v21 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v104 = v26;
  v98 = v3;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v29 = sub_10001CC04(v28, 0xD000000000000023, 0x80000001015A99A0);
  v103 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v30 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v32 = v103;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = v34;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v33;
      *(inited + 40) = v35;
      v36 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v36, "Failed to fetch all board identifiers with error %@", 51, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      v103 = v32;
      return v30;
    }

LABEL_32:
    swift_once();
    goto LABEL_4;
  }

  v37 = v29;

  v105 = &_swiftEmptySetSingleton;
  v38 = *(*(v37 + 16) + 32);
  *v20 = v38;
  v39 = v99;
  v40 = v100;
  v100(v20, v99, v17);
  v41 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v42 = v104;
  v104(v20, v17);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for SQLiteRowIterator();
  v43 = swift_initStackObject();
  v43[3] = 0;
  v101 = v43 + 3;
  v43[4] = 0;
  v85 = v43 + 4;
  v43[5] = 1;
  v102 = v43;
  v43[2] = v37;

  swift_beginAccess();
  v44 = *(*(v37 + 16) + 32);
  *v20 = v44;
  v40(v20, v39, v17);
  v45 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  v42(v20, v17);
  if ((v44 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v87 += 4;
  v97 = v25;
  v86 = v23;
  while (1)
  {
    v60 = v101;
    *v101 = 0;
    v60[1] = 0;
    v102[5] = 1;
    v61 = sqlite3_step(*(v37 + 24));
    if (v61 != 100)
    {
      break;
    }

    v62 = *(*(v37 + 16) + 32);
    *v20 = v62;
    v40(v20, v39, v17);

    v63 = v62;
    LOBYTE(v62) = _dispatchPreconditionTest(_:)();
    v64 = v104;
    v104(v20, v17);
    if ((v62 & 1) == 0)
    {
      goto LABEL_29;
    }

    v65 = *(*(v37 + 16) + 32);
    *v20 = v65;
    v40(v20, v39, v17);
    v66 = v65;
    LOBYTE(v65) = _dispatchPreconditionTest(_:)();
    v64(v20, v17);
    if ((v65 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (sqlite3_column_type(*(v37 + 24), 0) == 5)
    {
      goto LABEL_17;
    }

    v67 = sqlite3_column_blob(*(v37 + 24), 0);
    if (!v67)
    {
      goto LABEL_17;
    }

    v68 = v67;
    v69 = sqlite3_column_bytes(*(v37 + 24), 0);
    v70 = sub_100024DD4(v68, v69);
    v72 = v71;
    sub_100024E98(v70, v71);
    v73 = v98;
    v74 = v103;
    sub_100024EEC(v98, v70, v72);
    if (v74)
    {

      sub_10002640C(v70, v72);
      sub_10002640C(v70, v72);
      v103 = 0;
      v39 = v99;
      v40 = v100;
LABEL_17:
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v77 = static OS_os_log.boardStore;
      v78 = static os_log_type_t.error.getter();
      sub_100005404(v77, &_mh_execute_header, v78, "Failure reading board identifier data.", 38, 2, &_swiftEmptyArrayStorage);

      goto LABEL_9;
    }

    v46 = v75;
    v47 = v76;
    v103 = 0;
    sub_10002640C(v70, v72);
    v48 = v94;
    (*v87)(v94, v73, v96);
    v49 = &v48[*(v95 + 20)];
    *v49 = v46;
    *(v49 + 1) = v47;
    v50 = v48;
    v51 = v93;
    sub_100025668(v50, v93, type metadata accessor for CRLBoardIdentifierStorage);
    v52 = v90;
    sub_100025668(v51, v90, type metadata accessor for CRLBoardIdentifierStorage);
    v53 = v52;
    v54 = v89;
    sub_100025668(v53, v89, type metadata accessor for CRLBoardIdentifier);
    v55 = v88;
    sub_100025668(v54, v88, type metadata accessor for CRLBoardIdentifier);
    v56 = v92;
    sub_10000C83C(v55, v92, type metadata accessor for CRLBoardIdentifier);
    v57 = v91;
    sub_100031F10(v91, v56);

    sub_10002640C(v70, v72);
    sub_100026028(v57, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v55, type metadata accessor for CRLBoardIdentifier);
    v39 = v99;
    v40 = v100;
LABEL_9:
    v58 = *(*(v37 + 16) + 32);
    *v20 = v58;
    v40(v20, v39, v17);
    v59 = v58;
    LOBYTE(v58) = _dispatchPreconditionTest(_:)();
    v104(v20, v17);
    if ((v58 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v61 && v61 != 101)
  {
    *v101 = v61;
    v79 = v85;
    *v85 = 0;
    v79[1] = 0;
  }

  v30 = v105;
  v80 = *(*(v37 + 16) + 32);
  *v20 = v80;
  v100(v20, v39, v17);
  v81 = v80;
  LOBYTE(v80) = _dispatchPreconditionTest(_:)();
  v104(v20, v17);
  if ((v80 & 1) == 0)
  {
LABEL_34:
    __break(1u);
  }

  v82 = *(v37 + 24);
  if (v82)
  {
    sqlite3_finalize(v82);
    *(v37 + 24) = 0;
  }

  return v30;
}

__n128 sub_100DE9BC0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v118 = enum case for DispatchPredicate.onQueue(_:);
  v116 = v6 + 104;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v14 = *(v6 + 8);
  v13 = v6 + 8;
  v120 = v5;
  v114 = v14;
  v14(v9, v5);
  if ((v10 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v115 = a1;
  v119 = v11;
  v113 = v13;
  v111 = a2;
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  v15._countAndFlagsBits = 0x205443454C4553;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x6D5F736472616F62;
  v16._object = 0xEF61746164617465;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6174735F77656976;
  v18._object = 0xEF617461645F6574;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x204D4F524620;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x6D5F736472616F62;
  v20._object = 0xEF61746164617465;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x4A2052454E4E4920;
  v21._object = 0xEC000000204E494FLL;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 542002976;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x736472616F62;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26._object = 0x8000000101585360;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 2112800;
  v27._object = 0xE300000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x6D5F736472616F62;
  v28._object = 0xEF61746164617465;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 46;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._object = 0x8000000101585360;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x2820455245485720;
  v31._object = 0xE800000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x6E6F7473626D6F74;
  v32._object = 0xEA00000000006465;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x444E412030203D20;
  v33._object = 0xE900000000000020;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x6D5F736472616F62;
  v34._object = 0xEF61746164617465;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 46;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36._object = 0x8000000101585360;
  v36._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x293F203D20;
  v37._object = 0xE500000000000000;
  String.append(_:)(v37);
  v38 = v127;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v40 = v117;
  v41 = sub_10001CC04(v39, v38, *(&v38 + 1));
  if (v40)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v45 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      v49 = v48;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v47;
      *(inited + 40) = v49;
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v45, &_mh_execute_header, v50, "Failed to fetch view state with error %@", 40, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return result;
    }

LABEL_34:
    swift_once();
    goto LABEL_5;
  }

  v42 = v41;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v43 = sub_10084DAE4();
  v112 = 0;
  v117 = v44;
  v52 = v43;
  v53 = *(*(v42 + 16) + 32);
  *v9 = v53;
  v54 = v118;
  v55 = v120;
  v119(v9, v118, v120);
  v56 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v57 = v114;
  v114(v9, v55);
  if ((v53 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v58 = v52;
  v59 = v52;
  v60 = v117;
  v61 = v112;
  sub_100DCCAB4(v59, v117, v42, 1);
  v112 = v61;
  sub_10002640C(v58, v60);
  v62 = *(*(v42 + 16) + 32);
  *v9 = v62;
  v63 = v120;
  v119(v9, v54, v120);
  v64 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  v57(v9, v63);
  if ((v62 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  type metadata accessor for SQLiteRowIterator();
  v65 = swift_initStackObject();
  v65[3] = 0;
  v115 = v65 + 3;
  v65[4] = 0;
  v108 = v65 + 4;
  v65[5] = 1;
  v117 = v65;
  v65[2] = v42;

  swift_beginAccess();
  v129 = 0u;
  memset(v130, 0, 24);
  v127 = 0u;
  v128 = 0u;
  BYTE8(v130[1]) = 2;
  v66 = *(*(v42 + 16) + 32);
  *v9 = v66;
  v67 = v120;
  v119(v9, v54, v120);
  v68 = v66;
  LOBYTE(v66) = _dispatchPreconditionTest(_:)();
  v57(v9, v67);
  if ((v66 & 1) == 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v109 = xmmword_10146C6B0;
  while (1)
  {
    v72 = v115;
    *v115 = 0;
    v72[1] = 0;
    v117[5] = 1;
    v73 = sqlite3_step(*(v42 + 24));
    if (v73 != 100)
    {
      break;
    }

    v74 = *(*(v42 + 16) + 32);
    *v9 = v74;
    v75 = v54;
    v77 = v119;
    v76 = v120;
    v119(v9, v75, v120);

    v78 = v74;
    LOBYTE(v74) = _dispatchPreconditionTest(_:)();
    v57(v9, v76);
    if ((v74 & 1) == 0)
    {
      goto LABEL_31;
    }

    v79 = *(*(v42 + 16) + 32);
    *v9 = v79;
    v77(v9, v118, v76);
    v80 = v79;
    LOBYTE(v79) = _dispatchPreconditionTest(_:)();
    v57(v9, v76);
    if ((v79 & 1) == 0)
    {
      goto LABEL_32;
    }

    if (sqlite3_column_type(*(v42 + 24), 0) == 5 || (v81 = sqlite3_column_blob(*(v42 + 24), 0)) == 0)
    {

      v54 = v118;
    }

    else
    {
      v82 = v81;
      v83 = sqlite3_column_bytes(*(v42 + 24), 0);
      v84 = sub_100024DD4(v82, v83);
      v86 = v85;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_100EA559C();
      v87 = v112;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v87)
      {
        v110 = v84;
        v112 = v86;

        if (qword_1019F2098 != -1)
        {
          swift_once();
        }

        v88 = static OS_os_log.crlDefault;
        sub_1005B981C(&qword_1019F54E0);
        v89 = swift_initStackObject();
        *(v89 + 16) = v109;
        *&v121 = v87;
        swift_errorRetain();
        sub_1005B981C(&unk_1019F6B40);
        v90 = String.init<A>(describing:)();
        v92 = v91;
        *(v89 + 56) = &type metadata for String;
        *(v89 + 64) = sub_1000053B0();
        *(v89 + 32) = v90;
        *(v89 + 40) = v92;
        v93 = static os_log_type_t.error.getter();
        v94 = 2;
        sub_100005404(v88, &_mh_execute_header, v93, "Error unarchiving view state: %@", 32, 2, v89);

        sub_10000CAAC(&v127, &qword_1019FE618);
        sub_10002640C(v110, v112);

        swift_setDeallocating();
        sub_100005070(v89 + 32);
        v95 = 0;
        v112 = 0;
        v96 = 0uLL;
        v97 = 0uLL;
        v98 = 0uLL;
        v99 = 0uLL;
        v57 = v114;
        v54 = v118;
      }

      else
      {
        v112 = 0;
        sub_10000CAAC(&v127, &qword_1019FE618);
        sub_10002640C(v84, v86);

        v96 = v121;
        v97 = v122;
        v98 = v123;
        v99 = v124;
        v95 = v125;
        v94 = v126;
        v54 = v118;
      }

      v127 = v96;
      v128 = v97;
      v129 = v98;
      v130[0] = v99;
      *&v130[1] = v95;
      BYTE8(v130[1]) = v94;
    }

    v69 = *(*(v42 + 16) + 32);
    *v9 = v69;
    v70 = v120;
    v119(v9, v54, v120);
    v71 = v69;
    LOBYTE(v69) = _dispatchPreconditionTest(_:)();
    v57(v9, v70);
    if ((v69 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v73 && v73 != 101)
  {
    *v115 = v73;
    v100 = v108;
    *v108 = 0;
    v100[1] = 0;
  }

  v101 = *(*(v42 + 16) + 32);
  *v9 = v101;
  v102 = v120;
  v119(v9, v54, v120);
  v103 = v101;
  LOBYTE(v101) = _dispatchPreconditionTest(_:)();
  v57(v9, v102);
  if ((v101 & 1) == 0)
  {
LABEL_37:
    __break(1u);
  }

  v104 = *(v42 + 24);
  if (v104)
  {
    sqlite3_finalize(v104);
    *(v42 + 24) = 0;
  }

  v105 = v130[0];
  v106 = v111;
  *(v111 + 32) = v129;
  *(v106 + 48) = v105;
  *(v106 + 57) = *(v130 + 9);
  result = v128;
  *v106 = v127;
  *(v106 + 16) = result;
  return result;
}

uint64_t (*sub_100DEA7B4(sqlite3_int64 a1))(uint64_t a1)
{
  v96 = a1;
  v3 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v3 - 8);
  v93 = &v81 - v4;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  v91 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v89 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v81 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  v14 = *(v10 + 104);
  v99 = enum case for DispatchPredicate.onQueue(_:);
  v98 = v10 + 104;
  v14(v12);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v16 = v18;
  v18(v12, v9);
  if ((v13 & 1) == 0)
  {
    goto LABEL_29;
  }

  v92 = v5;
  v95 = v17;
  v101 = 0;
  v102 = 0xE000000000000000;
  _StringGuts.grow(_:)(85);
  v19._countAndFlagsBits = 0x205443454C4553;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x204D4F524620;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x20455245485720;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x6E6F7473626D6F74;
  v24._object = 0xEA00000000006465;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x444E412031203D20;
  v25._object = 0xE900000000000020;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD00000000000001ALL;
  v26._object = 0x80000001015A37F0;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x444E412030203D20;
  v27._object = 0xE900000000000020;
  String.append(_:)(v27);
  LOBYTE(v100) = 4;
  _print_unlocked<A, B>(_:_:)();
  v28._object = 0x80000001015A3C00;
  v28._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v28);
  v29._object = 0xEE00657461645F65;
  v29._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x494C0A4353454420;
  v30._object = 0xED00003F2054494DLL;
  String.append(_:)(v30);
  v31 = v101;
  v32 = v102;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v34 = sub_10001CC04(v33, v31, v32);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v35 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = v38;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v37;
      *(inited + 40) = v39;
      v40 = static os_log_type_t.error.getter();
      sub_100005404(v35, &_mh_execute_header, v40, "Failed to fetch list of recently deleted boards with error %@", 61, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_30:
    swift_once();
    goto LABEL_4;
  }

  v42 = v34;

  v43 = *(*(v42 + 16) + 32);
  *v12 = v43;
  v44 = v14;
  v45 = v99;
  v97 = v44;
  v44(v12, v99, v9);
  v46 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v94 = v16;
  v16(v12, v9);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  swift_beginAccess();
  sqlite3_bind_int64(*(v42 + 24), 1, v96);
  v100 = _swiftEmptyArrayStorage;
  v47 = *(*(v42 + 16) + 32);
  *v12 = v47;
  v48 = v97;
  v97(v12, v45, v9);
  v49 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v94(v12, v9);
  if ((v47 & 1) == 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  type metadata accessor for SQLiteRowIterator();
  v50 = swift_initStackObject();
  v51 = v45;
  v50[3] = 0;
  v52 = v50 + 3;
  v50[4] = 0;
  v86 = v50 + 4;
  v50[5] = 1;
  v96 = v50;
  v50[2] = v42;
  v53 = *(*(v42 + 16) + 32);
  *v12 = v53;

  v48(v12, v51, v9);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v55 = v94;
  v94(v12, v9);
  if ((v53 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v91 += 7;
  v87 = _swiftEmptyArrayStorage;
  v90 = v9;
  while (1)
  {
    *v52 = 0;
    v52[1] = 0;
    v96[5] = 1;
    v56 = sqlite3_step(*(v42 + 24));
    if (v56 != 100)
    {
      break;
    }

    v57 = swift_retain_n();
    v58 = sub_1000826B0(v57, 0);
    if (!v58)
    {

      goto LABEL_15;
    }

    v59 = v58;
    v60 = (v58 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
    v61 = *(v58 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
    if (v61 >> 60 == 15)
    {

LABEL_15:
      v65 = *(*(v42 + 16) + 32);
      *v12 = v65;
      v97(v12, v99, v9);
      v66 = v65;
      LOBYTE(v65) = _dispatchPreconditionTest(_:)();
      v55(v12, v9);
      if ((v65 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v62 = v93;
      v63 = *v60;
      sub_100024E84(*v60, v61);
      sub_100024E84(v63, v61);
      sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

      v64 = v92;
      CRDT.init(serializedData:)();
      (*v91)(v62, 0, 1, v64);
      v87 = type metadata accessor for CRLBoardCRDTData;
      v67 = v62;
      v68 = v88;
      sub_100025668(v67, v88, type metadata accessor for CRLBoardCRDTData);
      v85 = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
      v69 = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
      v84 = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
      v83 = v69;
      sub_10000C83C(v68, v89, type metadata accessor for CRLBoardCRDTData);
      v70 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
      v71 = (v59 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20) + v70);
      v72 = v71[1];
      v82 = *v71;
      type metadata accessor for CRLBoardData(0);
      v73 = swift_allocObject();

      sub_100025870(v63, v61);

      sub_100026028(v88, type metadata accessor for CRLBoardCRDTData);
      *(v73 + 16) = 7;
      *(v73 + 40) = v83;
      *(v73 + 24) = v84;
      *(v73 + 56) = v85;
      sub_100025668(v89, v73 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v87);
      v74 = (v73 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      *v74 = v82;
      v74[1] = v72;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v87 = v100;
      v75 = *(*(v42 + 16) + 32);
      *v12 = v75;
      v9 = v90;
      v97(v12, v99, v90);
      v76 = v75;
      LOBYTE(v75) = _dispatchPreconditionTest(_:)();
      v55 = v94;
      v94(v12, v9);
      if ((v75 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  if (v56 && v56 != 101)
  {
    *v52 = v56;
    v77 = v86;
    *v86 = 0;
    v77[1] = 0;
  }

  v78 = *(*(v42 + 16) + 32);
  *v12 = v78;
  v97(v12, v99, v9);
  v79 = v78;
  LOBYTE(v78) = _dispatchPreconditionTest(_:)();
  v55(v12, v9);
  if ((v78 & 1) == 0)
  {
LABEL_33:
    __break(1u);
  }

  v80 = *(v42 + 24);
  if (v80)
  {
    sqlite3_finalize(v80);
    *(v42 + 24) = 0;
  }

  return v87;
}

uint64_t sub_100DEB448()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v52 = enum case for DispatchPredicate.onQueue(_:);
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v50 = *(v3 + 8);
  v50(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  v51 = v7;
  v49 = v2;
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v53 = 0x205443454C4553;
  v54 = 0xE700000000000000;
  v9._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x204D4F524620;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x736472616F62;
  v11._object = 0xE600000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x2820455245485720;
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  v13._object = 0x8000000101585360;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x293F203D20;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15 = v53;
  v16 = v54;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v18 = sub_10001CC04(v17, v15, v16);
  if (!v1)
  {
    v19 = v18;

    type metadata accessor for CRLBoardIdentifierStorage(0);
    v20 = sub_10084DAE4();
    v48 = v28;
    v29 = v20;
    v30 = *(*(v19 + 16) + 32);
    *v5 = v30;
    v31 = v49;
    v51(v5, v52, v49);
    v32 = v30;
    LOBYTE(v30) = _dispatchPreconditionTest(_:)();
    v33 = v50;
    v50(v5, v31);
    if (v30)
    {

      v34 = v29;
      v35 = v29;
      v36 = v48;
      sub_100DCCAB4(v35, v48, v19, 1);
      sub_10002640C(v34, v36);
      v37 = *(*(v19 + 16) + 32);
      *v5 = v37;
      v51(v5, v52, v31);
      v38 = v37;
      LOBYTE(v37) = _dispatchPreconditionTest(_:)();
      v33(v5, v31);
      if (v37)
      {
        type metadata accessor for SQLiteRowIterator();
        inited = swift_initStackObject();
        inited[4] = 0;
        inited[5] = 1;
        inited[2] = v19;
        inited[3] = 0;

        v40 = sub_10001E1D0();
        if (!v40)
        {

          swift_setDeallocating();
          sub_10001E364(inited[3], inited[4], inited[5]);
          v45 = *(*(v19 + 16) + 32);
          *v5 = v45;
          v51(v5, v52, v31);
          v46 = v45;
          LOBYTE(v45) = _dispatchPreconditionTest(_:)();
          v33(v5, v31);
          if (v45)
          {
            v43 = (v19 + 24);
            swift_beginAccess();
            v23 = 0;
            v44 = *(v19 + 24);
            if (!v44)
            {
              goto LABEL_13;
            }

            goto LABEL_12;
          }

LABEL_22:
          __break(1u);
        }

        v23 = sub_1000826B0(v40, 0);

        swift_setDeallocating();
        sub_10001E364(inited[3], inited[4], inited[5]);
        v41 = *(*(v19 + 16) + 32);
        *v5 = v41;
        v51(v5, v52, v31);
        v42 = v41;
        LOBYTE(v41) = _dispatchPreconditionTest(_:)();
        v33(v5, v31);
        if (v41)
        {
          v43 = (v19 + 24);
          swift_beginAccess();
          v44 = *(v19 + 24);
          if (!v44)
          {
LABEL_13:

            return v23;
          }

LABEL_12:
          sqlite3_finalize(v44);
          *v43 = 0;
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_18;
  }

LABEL_5:
  v21 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v23 = Error.localizedDescription.getter();
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_1000053B0();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v26 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v26, "Failed to fetch a board record with error %@", 44, 2, v22);
  swift_setDeallocating();
  sub_100005070(v22 + 32);
  swift_willThrow();
  return v23;
}

uint64_t sub_100DEBB44(uint64_t a1, unint64_t a2)
{
  v83 = a2;
  v75 = a1;
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v77 = &v73 - v4;
  v5 = type metadata accessor for UUID();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = __chkstk_darwin(v5);
  v74 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v82 = &v73 - v9;
  __chkstk_darwin(v8);
  v87 = (&v73 - v10);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = v2;
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v14 = v15;
  v16 = enum case for DispatchPredicate.onQueue(_:);
  v17 = v12 + 104;
  v18 = *(v12 + 104);
  v18(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v19 = v15;
  v20 = _dispatchPreconditionTest(_:)();
  v23 = *(v12 + 8);
  v21 = v12 + 8;
  v22 = v23;
  v23(v14, v11);
  if ((v20 & 1) == 0)
  {
    goto LABEL_71;
  }

  *v14 = v19;
  v18(v14, v16, v11);
  v24 = _dispatchPreconditionTest(_:)();
  v22(v14, v11);
  if ((v24 & 1) == 0)
  {
    goto LABEL_72;
  }

  v25 = v84;
  v26 = sub_100DEC510(v75, v83, 0);
  if (!v25)
  {
    v21 = v26;
    v73 = 0;
    v86 = _swiftEmptyArrayStorage;
    v17 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      goto LABEL_73;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    if (!v27)
    {
      v81 = _swiftEmptyArrayStorage;
LABEL_24:

      v33 = v81;
      if (v81 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_80;
        }

        v84 = _CocoaArrayWrapper.endIndex.getter();
        if (!v84)
        {
          v34 = &_swiftEmptyDictionarySingleton;
          goto LABEL_77;
        }
      }

      else
      {
        v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v84)
        {
          goto LABEL_80;
        }
      }

      v21 = 0;
      v83 = v33 & 0xC000000000000001;
      v76 = v33 & 0xFFFFFFFFFFFFFF8;
      v78 = v79 + 16;
      v85 = (v79 + 8);
      v34 = &_swiftEmptyDictionarySingleton;
      while (2)
      {
        if (v83)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v39 = v38;
          v17 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v21 >= *(v76 + 16))
          {
            goto LABEL_70;
          }

          v39 = *(v33 + 8 * v21 + 32);

          v17 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_67;
          }
        }

        v40 = v87;
        (*(*v39 + 264))(v38);
        type metadata accessor for CRLBoardItemDatabaseResult();
        v41 = swift_allocObject();
        *(v41 + 16) = v39;
        *(v41 + 24) = _swiftEmptyArrayStorage;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v34;
        v44 = sub_10003E994(v40);
        v45 = v34[2];
        v46 = (v43 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
          goto LABEL_68;
        }

        v48 = v43;
        if (v34[3] >= v47)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v34 = v86;
            if ((v43 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            sub_100AABEC4();
            v34 = v86;
            if ((v48 & 1) == 0)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          sub_100A96634(v47, isUniquelyReferenced_nonNull_native);
          v49 = sub_10003E994(v87);
          if ((v48 & 1) != (v50 & 1))
          {
            goto LABEL_83;
          }

          v44 = v49;
          v34 = v86;
          if ((v48 & 1) == 0)
          {
LABEL_42:
            v34[(v44 >> 6) + 8] |= 1 << v44;
            v52 = v79;
            v51 = v80;
            v53 = v87;
            (*(v79 + 16))(v34[6] + *(v79 + 72) * v44, v87, v80);
            *(v34[7] + 8 * v44) = v41;
            v36 = v51;

            v35 = *(v52 + 8);
            v35(v53, v51);
            v54 = v34[2];
            v55 = __OFADD__(v54, 1);
            v56 = v54 + 1;
            if (v55)
            {
              goto LABEL_69;
            }

            v34[2] = v56;
LABEL_28:
            ++v21;
            v33 = v81;
            v37 = v82;
            if (v17 == v84)
            {
              if (v84 < 1)
              {
                __break(1u);
LABEL_83:
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              v57 = 0;
              v58 = (v79 + 48);
              v87 = (v79 + 32);
              do
              {
                if (v83)
                {
                  v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v60 = v59;
                }

                else
                {
                  v60 = *(v33 + 8 * v57 + 32);
                }

                (*(*v60 + 264))(v59);
                if (v34[2] && (sub_10003E994(v37), (v61 & 1) != 0))
                {

                  v62 = (v35)(v37, v36);
                  v63 = v77;
                  (*(*v60 + 272))(v62);
                  if ((*v58)(v63, 1, v36) == 1)
                  {

                    sub_10000CAAC(v63, &qword_1019F6990);
                  }

                  else
                  {
                    v64 = v74;
                    (*v87)(v74);
                    if (v34[2] && (v65 = sub_10003E994(v64), (v66 & 1) != 0))
                    {
                      v67 = *(v34[7] + 8 * v65);
                      swift_beginAccess();

                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*((*(v67 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v67 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v79 = *((*(v67 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      swift_endAccess();

                      v68 = v64;
                      v36 = v80;
                      v35(v68, v80);
                    }

                    else
                    {
                      v69 = v64;
                      v36 = v80;
                      v35(v69, v80);
                    }
                  }

                  v33 = v81;
                  v37 = v82;
                }

                else
                {
                  v35(v37, v36);
                }

                ++v57;
              }

              while (v84 != v57);
LABEL_77:

              if (v34[2])
              {
                v70 = sub_10003E994(v75);
                if (v71)
                {
                  v17 = *(v34[7] + 8 * v70);

                  return v17;
                }
              }

LABEL_80:

              return 0;
            }

            continue;
          }
        }

        break;
      }

      *(v34[7] + 8 * v44) = v41;

      v35 = *v85;
      v36 = v80;
      (*v85)(v87, v80);
      goto LABEL_28;
    }

    v28 = v21 & 0xC000000000000001;
    v81 = _swiftEmptyArrayStorage;
    v29 = 0;
    if ((v21 & 0xC000000000000001) != 0)
    {
LABEL_20:
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_65;
      }

      goto LABEL_14;
    }

    while (1)
    {
      while (1)
      {
        if (v29 >= *(v17 + 16))
        {
          goto LABEL_66;
        }

        v30 = *(v21 + 8 * v29 + 32);

        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          v27 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_6;
        }

LABEL_14:
        if ((*(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) & 1) == 0)
        {
          break;
        }

LABEL_10:
        ++v29;
        if (v31 == v27)
        {
          goto LABEL_24;
        }

        if (v28)
        {
          goto LABEL_20;
        }
      }

      v32 = sub_100E929EC(v30);

      if (!v32)
      {
        goto LABEL_10;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v81 = v86;
      if (v31 == v27)
      {
        goto LABEL_24;
      }

      v29 = v31;
      if (v28)
      {
        goto LABEL_20;
      }
    }
  }

  return v17;
}

void *sub_100DEC510(uint64_t a1, unint64_t a2, char a3)
{
  v59 = a2;
  v60 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v6 + 104);
  v11(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v63 = *(v6 + 8);
  v63(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_30;
  }

  v62 = v6 + 104;
  v65 = v10;
  v64 = v11;
  if (qword_1019F19A8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v13 = qword_101AD6CA0;
    CRLAnalyticsOSSignpostManager.beginSignpostInterval(for:with:)(30, 1, _swiftEmptyArrayStorage);
    v14 = sub_100E9D4E0(&off_1018734C0, a3 & 1);
    v16 = v15;
    v66 = _swiftEmptyArrayStorage;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v18 = v61;
    v19 = sub_10001CC04(v17, v14, v16);
    if (v18)
    {
      break;
    }

    v20 = v19;
    v61 = v13;

    v21 = UUID.crl_data()();
    v23 = v22;
    v24 = *(*(v20 + 16) + 32);
    *v8 = v24;
    v64(v8, v65, v5);
    v25 = v24;
    LOBYTE(v24) = _dispatchPreconditionTest(_:)();
    v63(v8, v5);
    if ((v24 & 1) == 0)
    {
      __break(1u);
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_100DCCAB4(v21, v23, v20, 1);
    sub_10002640C(v21, v23);
    type metadata accessor for CRLBoardIdentifierStorage(0);
    v26 = sub_10084DAE4();
    v59 = v34;
    v60 = v26;
    v35 = *(*(v20 + 16) + 32);
    *v8 = v35;
    v36 = v64;
    a3 = v62;
    v64(v8, v65, v5);
    v37 = v35;
    LOBYTE(v35) = _dispatchPreconditionTest(_:)();
    v38 = v63;
    v63(v8, v5);
    if ((v35 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_100DCCAB4(v60, v59, v20, 2);
    v58 = 0;
    v39 = *(*(v20 + 16) + 32);
    *v8 = v39;
    v36(v8, v65, v5);
    v40 = v39;
    LOBYTE(v39) = _dispatchPreconditionTest(_:)();
    v38(v8, v5);
    if ((v39 & 1) == 0)
    {
      goto LABEL_34;
    }

    type metadata accessor for SQLiteRowIterator();
    inited = swift_initStackObject();
    inited[3] = 0;
    v42 = inited + 3;
    inited[4] = 0;
    v56 = inited + 4;
    inited[5] = 1;
    inited[2] = v20;

    swift_beginAccess();
    v43 = *(*(v20 + 16) + 32);
    *v8 = v43;
    v64(v8, v65, v5);
    v44 = v43;
    LOBYTE(v43) = _dispatchPreconditionTest(_:)();
    v38(v8, v5);
    if (v43)
    {
      v13 = _swiftEmptyArrayStorage;
      a3 = 1;
      while (1)
      {
        *v42 = 0;
        inited[4] = 0;
        inited[5] = 1;
        v45 = sqlite3_step(*(v20 + 24));
        if (v45 != 100)
        {
          break;
        }

        v46 = swift_retain_n();
        v47 = sub_100E9B7E0(v46, 0);
        if (v47)
        {
          v57 = v47;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v55 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v13 = v66;
        }

        else
        {
        }

        v48 = *(*(v20 + 16) + 32);
        *v8 = v48;
        v64(v8, v65, v5);
        v49 = v48;
        LOBYTE(v48) = _dispatchPreconditionTest(_:)();
        v63(v8, v5);
        if ((v48 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v50 = v45;
      sub_10002640C(v60, v59);
      if (v50 && v50 != 101)
      {
        *v42 = v50;
        v51 = v56;
        *v56 = 0;
        v51[1] = 0;
      }

      v52 = *(*(v20 + 16) + 32);
      *v8 = v52;
      v64(v8, v65, v5);
      v53 = v52;
      LOBYTE(v52) = _dispatchPreconditionTest(_:)();
      v63(v8, v5);
      if (v52)
      {
        v54 = *(v20 + 24);
        if (v54)
        {
          sqlite3_finalize(v54);
          *(v20 + 24) = 0;
        }

        CRLAnalyticsOSSignpostManager.endSignpostInterval(for:)(0x1EuLL, 1);
        return v13;
      }

LABEL_35:
      __break(1u);
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v29 = Error.localizedDescription.getter();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_1000053B0();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v32, "Failed to fetch a board item record with error %@", 49, 2, v28);
  swift_setDeallocating();
  sub_100005070(v28 + 32);
  swift_willThrow();
  return v13;
}

uint64_t sub_100DECDC4(unint64_t a1, uint64_t a2)
{
  v54 = a2;
  v55 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v5 + 104);
  v58 = enum case for DispatchPredicate.onQueue(_:);
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  v56 = v9;
  v57 = v11;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v59 = 0x205443454C4553;
  v60 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_100E9B2F4(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x74695F6472616F62;
  v14._object = 0xEB00000000736D65;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x6975755F6D657469;
  v16._object = 0xE900000000000064;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x444E41203F203D20;
  v17._object = 0xE900000000000020;
  String.append(_:)(v17);
  v18._object = 0x8000000101585360;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x293F203D20;
  v19._object = 0xE500000000000000;
  String.append(_:)(v19);
  v20 = v59;
  v21 = v60;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);
  if (!v3)
  {
    v24 = v23;

    v25 = UUID.crl_data()();
    v27 = v26;
    v28 = *(*(v24 + 16) + 32);
    *v7 = v28;
    v56(v7, v58, v4);
    v29 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    v57(v7, v4);
    if (v28)
    {

      sub_100DCCAB4(v25, v27, v24, 1);
      sub_10002640C(v25, v27);
      type metadata accessor for CRLBoardIdentifierStorage(0);
      v54 = sub_10084DAE4();
      v55 = v37;
      v38 = *(*(v24 + 16) + 32);
      *v7 = v38;
      v39 = v56;
      v56(v7, v58, v4);
      v40 = v38;
      LOBYTE(v38) = _dispatchPreconditionTest(_:)();
      v41 = v57;
      v57(v7, v4);
      if (v38)
      {

        sub_100DCCAB4(v54, v55, v24, 2);
        v42 = *(*(v24 + 16) + 32);
        *v7 = v42;
        v39(v7, v58, v4);
        v43 = v42;
        LOBYTE(v42) = _dispatchPreconditionTest(_:)();
        v41(v7, v4);
        if (v42)
        {
          type metadata accessor for SQLiteRowIterator();
          inited = swift_initStackObject();
          inited[4] = 0;
          inited[5] = 1;
          inited[2] = v24;
          inited[3] = 0;

          v45 = sub_10001E1D0();
          if (!v45)
          {
            sub_10002640C(v54, v55);

            swift_setDeallocating();
            sub_10001E364(inited[3], inited[4], inited[5]);
            v51 = *(*(v24 + 16) + 32);
            *v7 = v51;
            v56(v7, v58, v4);
            v52 = v51;
            LOBYTE(v51) = _dispatchPreconditionTest(_:)();
            v57(v7, v4);
            if (v51)
            {
              v49 = (v24 + 24);
              swift_beginAccess();
              v32 = 0;
              v50 = *(v24 + 24);
              if (!v50)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

LABEL_24:
            __break(1u);
          }

          v32 = sub_100E9B7E0(v45, 0);
          sub_10002640C(v54, v55);

          swift_setDeallocating();
          sub_10001E364(inited[3], inited[4], inited[5]);
          v46 = *(*(v24 + 16) + 32);
          *v7 = v46;
          v56(v7, v58, v4);
          v47 = v46;
          v48 = _dispatchPreconditionTest(_:)();
          v57(v7, v4);
          if (v48)
          {
            v49 = (v24 + 24);
            swift_beginAccess();
            v50 = *(v24 + 24);
            if (!v50)
            {
LABEL_14:

              return v32;
            }

LABEL_13:
            sqlite3_finalize(v50);
            *v49 = 0;
            goto LABEL_14;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_19;
  }

LABEL_6:
  v30 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v32 = Error.localizedDescription.getter();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_1000053B0();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v35, "Failed to fetch a board item record with error %@", 49, 2, v31);
  swift_setDeallocating();
  sub_100005070(v31 + 32);
  swift_willThrow();
  return v32;
}

uint64_t sub_100DED5D0(uint64_t a1)
{
  v81 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3 + 104;
  v10 = *(v3 + 104);
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v11 = v7;
  v12 = _dispatchPreconditionTest(_:)();
  v15 = *(v3 + 8);
  v14 = v3 + 8;
  v13 = v15;
  v15(v6, v2);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v83 = v8;
  v79 = v10;
  v84 = v9;
  v82 = v13;
  v85 = v14;
  v80 = v2;
  v87 = 0;
  v88 = 0xE000000000000000;
  _StringGuts.grow(_:)(120);
  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x80000001015A3EF0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x74695F6472616F62;
  v17._object = 0xEB00000000736D65;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x20455245485720;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x74695F6472616F62;
  v19._object = 0xEB00000000736D65;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._object = 0x8000000101585360;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x444E41203F203D20;
  v22._object = 0xE900000000000020;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x74695F6472616F62;
  v23._object = 0xEB00000000736D65;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._object = 0x80000001015A33D0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD00000000000001DLL;
  v26._object = 0x80000001015A6950;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x736472616F62;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x20455245485720;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x736472616F62;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 46;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._object = 0x8000000101585360;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x444E410A3F203D20;
  v32._object = 0xE900000000000020;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x736472616F62;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 46;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35._object = 0x80000001015A33D0;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x292030203E20;
  v36._object = 0xE600000000000000;
  String.append(_:)(v36);
  v37 = v87;
  v38 = v88;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v40 = v86;
  v41 = sub_10001CC04(v39, v37, v38);
  if (v40)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v43 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v45 = Error.localizedDescription.getter();
      v47 = v46;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v45;
      *(inited + 40) = v47;
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v48, "Failed to fetch a board syncData with error %@", 46, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v45 & 1;
    }

LABEL_21:
    swift_once();
    goto LABEL_5;
  }

  v42 = v41;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v81 = sub_10084DAE4();
  v86 = v50;
  v51 = *(*(v42 + 16) + 32);
  *v6 = v51;
  v52 = v80;
  v53 = v79;
  v79(v6, v83, v80);
  v54 = v51;
  v55 = _dispatchPreconditionTest(_:)();
  v56 = v82;
  v82(v6, v52);
  if ((v55 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v57 = v81;
  v58 = v86;
  sub_100DCCAB4(v81, v86, v42, 1);
  v78[1] = 0;
  v59 = *(*(v42 + 16) + 32);
  *v6 = v59;
  v53(v6, v83, v52);
  v60 = v59;
  v61 = _dispatchPreconditionTest(_:)();
  v56(v6, v52);
  if ((v61 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_100DCCAB4(v57, v58, v42, 2);
  v62 = *(*(v42 + 16) + 32);
  *v6 = v62;
  v53(v6, v83, v52);
  v63 = v62;
  v64 = _dispatchPreconditionTest(_:)();
  v56(v6, v52);
  if ((v64 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v65 = swift_initStackObject();
  v65[4] = 0;
  v65[5] = 1;
  v65[2] = v42;
  v65[3] = 0;

  v66 = sub_10001E1D0();
  if (!v66)
  {
    sub_10002640C(v81, v86);

    swift_setDeallocating();
    sub_10001E364(v65[3], v65[4], v65[5]);
LABEL_15:
    v74 = *(*(v42 + 16) + 32);
    *v6 = v74;
    v53(v6, v83, v52);
    v75 = v74;
    v76 = _dispatchPreconditionTest(_:)();
    v82(v6, v52);
    if (v76)
    {
      v73 = (v42 + 24);
      swift_beginAccess();
      LOBYTE(v45) = 0;
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v67 = sub_10001E378(0, v66);
  v69 = v68;
  sub_10002640C(v81, v86);

  swift_setDeallocating();
  sub_10001E364(v65[3], v65[4], v65[5]);
  if (v69)
  {
    goto LABEL_15;
  }

  v70 = *(*(v42 + 16) + 32);
  *v6 = v70;
  v53(v6, v83, v52);
  v71 = v70;
  v72 = _dispatchPreconditionTest(_:)();
  v82(v6, v52);
  if ((v72 & 1) == 0)
  {
    goto LABEL_26;
  }

  LOBYTE(v45) = v67 > 0;
  v73 = (v42 + 24);
  swift_beginAccess();
LABEL_17:
  v77 = *(v42 + 24);
  if (v77)
  {
    sqlite3_finalize(v77);
    *v73 = 0;
  }

  return v45 & 1;
}

void *sub_100DEDF04()
{
  v2 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    swift_storeEnumTagMultiPayload();
    v12 = sub_10002BB60(v4);
    v14 = v13;
    result = sub_100026028(v4, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    if (!v1)
    {
      if (v14 >> 60 == 15)
      {
        return &_swiftEmptySetSingleton;
      }

      else
      {
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_1005B981C(&unk_101A22E80);
        sub_100034CCC(&qword_101A21F10, &qword_1019F4758);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        sub_100025870(v12, v14);

        return v15[1];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100DEE194(int64_t a1)
{
  v53 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = v4 + 104;
  v10 = *(v4 + 104);
  v56 = enum case for DispatchPredicate.onQueue(_:);
  v10(v7, v5);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v12(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v55 = v10;
  v54 = v12;
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v13._object = 0x80000001015A3EF0;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x736472616F62;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x20455245485720;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._object = 0x8000000101585360;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x444E41203F203D20;
  v17._object = 0xE900000000000020;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x7461645F636E7973;
  v18._object = 0xE900000000000061;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x20544F4E20534920;
  v19._object = 0xEE0029204C4C554ELL;
  String.append(_:)(v19);
  v20 = v57;
  v21 = v58;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v26 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = v29;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v31, "Failed to fetch a board syncData with error %@", 46, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v9 & 1;
    }

LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  v24 = v23;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v25 = sub_10084DAE4();
  v53 = v33;
  v34 = v25;
  v35 = *(*(v24 + 16) + 32);
  *v7 = v35;
  v55(v7, v56, v3);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v37 = v54;
  v54(v7, v3);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v38 = v34;
  v39 = v34;
  v40 = v53;
  sub_100DCCAB4(v39, v53, v24, 1);
  sub_10002640C(v38, v40);
  v41 = *(*(v24 + 16) + 32);
  *v7 = v41;
  v55(v7, v56, v3);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v37(v7, v3);
  if ((v41 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v43 = swift_initStackObject();
  v43[4] = 0;
  v43[5] = 1;
  v43[2] = v24;
  v43[3] = 0;

  v44 = sub_10001E1D0();
  if (!v44)
  {

    swift_setDeallocating();
    sub_10001E364(v43[3], v43[4], v43[5]);
LABEL_14:
    v50 = *(*(v24 + 16) + 32);
    *v7 = v50;
    v55(v7, v56, v3);
    v51 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v54(v7, v3);
    if (v50)
    {
      v49 = (v24 + 24);
      swift_beginAccess();
      v9 = 0;
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v53 = sub_10001E378(0, v44);
  v46 = v45;

  swift_setDeallocating();
  sub_10001E364(v43[3], v43[4], v43[5]);
  if (v46)
  {
    goto LABEL_14;
  }

  v47 = *(*(v24 + 16) + 32);
  *v7 = v47;
  v55(v7, v56, v3);
  v48 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v54(v7, v3);
  if ((v47 & 1) == 0)
  {
    goto LABEL_24;
  }

  v9 = v53 > 0;
  v49 = (v24 + 24);
  swift_beginAccess();
LABEL_16:
  v52 = *(v24 + 24);
  if (v52)
  {
    sqlite3_finalize(v52);
    *v49 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100DEE8DC(uint64_t a1, char a2)
{
  v3 = v2;
  v52[1] = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = v6 + 104;
  v11 = *(v6 + 104);
  v55 = enum case for DispatchPredicate.onQueue(_:);
  v11(v8);
  v12 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v54 = v11;
  v53 = v13;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xD000000000000012;
  }

  if (a2)
  {
    v15 = 0xE000000000000000;
  }

  else
  {
    v15 = 0x80000001015A6D50;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v57 = 0xD00000000000003FLL;
  v58 = 0x80000001015A6D70;
  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 10528;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = v57;
  v19 = v58;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = v56;
  v22 = sub_10001CC04(v20, v18, v19);
  if (v21)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_11:
      v25 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v25, &_mh_execute_header, v30, "Failed to fetch a board with error %@", 37, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v10 & 1;
    }

LABEL_26:
    swift_once();
    goto LABEL_11;
  }

  v23 = v22;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v24 = sub_10084DAE4();
  v56 = v32;
  v33 = v24;
  v34 = *(*(v23 + 16) + 32);
  *v8 = v34;
  v54(v8, v55, v5);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v36 = v53;
  v53(v8, v5);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v37 = v33;
  v38 = v33;
  v39 = v56;
  sub_100DCCAB4(v38, v56, v23, 1);
  sub_10002640C(v37, v39);
  v40 = *(*(v23 + 16) + 32);
  *v8 = v40;
  v54(v8, v55, v5);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v36(v8, v5);
  if ((v40 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v42 = swift_initStackObject();
  v42[4] = 0;
  v42[5] = 1;
  v42[2] = v23;
  v42[3] = 0;

  v43 = sub_10001E1D0();
  if (!v43)
  {

    swift_setDeallocating();
    sub_10001E364(v42[3], v42[4], v42[5]);
LABEL_20:
    v49 = *(*(v23 + 16) + 32);
    *v8 = v49;
    v54(v8, v55, v5);
    v50 = v49;
    LOBYTE(v49) = _dispatchPreconditionTest(_:)();
    v53(v8, v5);
    if (v49)
    {
      v48 = (v23 + 24);
      swift_beginAccess();
      v10 = 0;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v56 = sub_10001E378(0, v43);
  v45 = v44;

  swift_setDeallocating();
  sub_10001E364(v42[3], v42[4], v42[5]);
  if (v45)
  {
    goto LABEL_20;
  }

  v46 = *(*(v23 + 16) + 32);
  *v8 = v46;
  v54(v8, v55, v5);
  v47 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v53(v8, v5);
  if ((v46 & 1) == 0)
  {
    goto LABEL_30;
  }

  v10 = v56 > 0;
  v48 = (v23 + 24);
  swift_beginAccess();
LABEL_22:
  v51 = *(v23 + 24);
  if (v51)
  {
    sqlite3_finalize(v51);
    *v48 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100DEEFC0(uint64_t a1, unint64_t a2)
{
  v57 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v5 + 104);
  v61 = enum case for DispatchPredicate.onQueue(_:);
  v59 = v9;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v60 = v5 + 104;
  v58 = v11;
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v12._countAndFlagsBits = 0xD00000000000001DLL;
  v12._object = 0x80000001015A3EF0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x74695F6472616F62;
  v13._object = 0xEB00000000736D65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x2820455245485720;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x6975755F6D657469;
  v15._object = 0xE900000000000064;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x444E41203F203D20;
  v16._object = 0xE900000000000020;
  String.append(_:)(v16);
  v17._object = 0x8000000101585360;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x2920293F203D20;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19 = v62;
  v20 = v63;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = sub_10001CC04(v21, v19, v20);
  if (v3)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_6:
      v30 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = v33;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v32;
      *(inited + 40) = v34;
      v35 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v35, "Failed to fetch a board item record with error %@", 49, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v30 & 1;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  v23 = v22;

  v24 = UUID.crl_data()();
  v26 = v25;
  v27 = *(*(v23 + 16) + 32);
  *v7 = v27;
  v59(v7, v61, v4);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v29 = v58;
  v58(v7, v4);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_100DCCAB4(v24, v26, v23, 1);
  sub_10002640C(v24, v26);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v56 = sub_10084DAE4();
  v57 = v37;
  v38 = *(*(v23 + 16) + 32);
  *v7 = v38;
  v39 = v59;
  v59(v7, v61, v4);
  v40 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v29(v7, v4);
  if ((v38 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_100DCCAB4(v56, v57, v23, 2);
  v41 = *(*(v23 + 16) + 32);
  *v7 = v41;
  v39(v7, v61, v4);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v29(v7, v4);
  if ((v41 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v43 = swift_initStackObject();
  v43[4] = 0;
  v43[5] = 1;
  v43[2] = v23;
  v43[3] = 0;

  v44 = sub_10001E1D0();
  if (!v44)
  {
    sub_10002640C(v56, v57);

    swift_setDeallocating();
    sub_10001E364(v43[3], v43[4], v43[5]);
    v47 = v61;
LABEL_15:
    v51 = *(*(v23 + 16) + 32);
    *v7 = v51;
    v39(v7, v47, v4);
    v52 = v51;
    LOBYTE(v51) = _dispatchPreconditionTest(_:)();
    v58(v7, v4);
    if (v51)
    {
      v50 = (v23 + 24);
      swift_beginAccess();
      LOBYTE(v30) = 0;
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v45 = sub_10001E378(0, v44);
  v55 = v46;
  sub_10002640C(v56, v57);

  swift_setDeallocating();
  sub_10001E364(v43[3], v43[4], v43[5]);
  v47 = v61;
  if (v55)
  {
    goto LABEL_15;
  }

  v48 = *(*(v23 + 16) + 32);
  *v7 = v48;
  v39(v7, v47, v4);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v58(v7, v4);
  if ((v48 & 1) == 0)
  {
    goto LABEL_26;
  }

  LOBYTE(v30) = v45 > 0;
  v50 = (v23 + 24);
  swift_beginAccess();
LABEL_17:
  v53 = *(v23 + 24);
  if (v53)
  {
    sqlite3_finalize(v53);
    *v50 = 0;
  }

  return v30 & 1;
}

sqlite3_int64 sub_100DEF7D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v56 = a3;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v55 = &v49[-v7];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  v13 = *(v9 + 104);
  v59 = enum case for DispatchPredicate.onQueue(_:);
  v57 = v13;
  v13(v11);
  v14 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v58 = *(v9 + 8);
  v58(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v54 = a1;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v16 = sub_10001CC04(v15, 0xD000000000000064, 0x80000001015A4F20);
  if (v4)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_6:
      v23 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = v26;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v28, "Failed to fetch a board item's parent UUID with error %@", 56, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v27;
    }

LABEL_24:
    swift_once();
    goto LABEL_6;
  }

  v17 = v16;

  v18 = UUID.crl_data()();
  v20 = v19;
  v21 = *(*(v17 + 16) + 32);
  *v11 = v21;
  v57(v11, v59, v8);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v58(v11, v8);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_100DCCAB4(v18, v20, v17, 1);
  sub_10002640C(v18, v20);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v53 = sub_10084DAE4();
  v56 = v30;
  v31 = *(*(v17 + 16) + 32);
  *v11 = v31;
  v32 = v57;
  v57(v11, v59, v8);
  v33 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v34 = v58;
  v58(v11, v8);
  if ((v31 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100DCCAB4(v53, v56, v17, 2);
  v35 = *(*(v17 + 16) + 32);
  *v11 = v35;
  v32(v11, v59, v8);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v34(v11, v8);
  if ((v35 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  type metadata accessor for SQLiteRowIterator();
  v37 = swift_initStackObject();
  v37[4] = 0;
  v37[5] = 1;
  v37[2] = v17;
  v37[3] = 0;

  v38 = sub_10001E1D0();
  v39 = v55;
  if (v38)
  {
    sub_100083B64(0, v38, v55);
    v51 = sub_100028894(1, v38);
    v50 = v45;

    v52 = v38;

    sub_10002640C(v53, v56);
    if (v50)
    {
      v27 = 0;
    }

    else
    {
      v27 = v51;
    }

    sub_10003DFF8(v39, v54, &qword_1019F6990);
    v46 = *(*(v17 + 16) + 32);
    *v11 = v46;
    v57(v11, v59, v8);
    v47 = v46;
    LOBYTE(v46) = _dispatchPreconditionTest(_:)();
    v58(v11, v8);
    if (v46)
    {
      swift_beginAccess();
      v48 = *(v17 + 24);
      if (v48)
      {
        sqlite3_finalize(v48);
        *(v17 + 24) = 0;
      }

      return v27;
    }

LABEL_29:
    __break(1u);
  }

  sub_10002640C(v53, v56);

  swift_setDeallocating();
  sub_10001E364(v37[3], v37[4], v37[5]);
  v40 = *(*(v17 + 16) + 32);
  *v11 = v40;
  v57(v11, v59, v8);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v58(v11, v8);
  if ((v40 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v52 = v38;
  swift_beginAccess();
  v42 = *(v17 + 24);
  v43 = v54;
  if (v42)
  {
    sqlite3_finalize(v42);
    *(v17 + 24) = 0;
  }

  v44 = type metadata accessor for UUID();
  (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
  return 0;
}

uint64_t *sub_100DF00A0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, int a6, int a7, uint64_t a8, unint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v12 = v11;
  LODWORD(v467) = a7;
  LODWORD(v469) = a6;
  v462 = a5;
  v458 = a4;
  v472 = a3;
  v481 = a1;
  v15 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v15 - 8);
  v457 = &v435 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v17 = __chkstk_darwin(v455);
  v454 = (&v435 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v452 = &v435 - v20;
  __chkstk_darwin(v19);
  v460 = (&v435 - v21);
  v468 = sub_1005B981C(&unk_101A0AFE0);
  v22 = __chkstk_darwin(v468);
  v466 = &v435 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v464 = &v435 - v24;
  v25 = sub_1005B981C(&qword_1019F6990);
  v26 = __chkstk_darwin(v25 - 8);
  v456 = &v435 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v459 = &v435 - v29;
  v30 = __chkstk_darwin(v28);
  v463 = &v435 - v31;
  v32 = __chkstk_darwin(v30);
  v461 = &v435 - v33;
  v34 = __chkstk_darwin(v32);
  v471 = &v435 - v35;
  __chkstk_darwin(v34);
  v470 = &v435 - v36;
  v37 = type metadata accessor for UUID();
  v475 = *(v37 - 8);
  v476 = v37;
  v38 = __chkstk_darwin(v37);
  v453 = &v435 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v474 = &v435 - v41;
  __chkstk_darwin(v40);
  v43 = &v435 - v42;
  v44 = type metadata accessor for DispatchPredicate();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = (&v435 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = *(v12 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v47 = v48;
  (*(v45 + 104))(v47, enum case for DispatchPredicate.onQueue(_:), v44);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v51 = *(v45 + 8);
  v50 = (v45 + 8);
  v52 = v51(v47, v44);
  if ((v48 & 1) == 0)
  {
    __break(1u);
    goto LABEL_236;
  }

  v53 = (*v481 + 264);
  v54 = *v53;
  v55 = v53;
  (*v53)(v52);
  v56 = v477;
  v57 = sub_100DECDC4(v43, a2);
  v473 = a2;
  v477 = v56;
  if (v56)
  {
    v58 = *(v475 + 8);
    v59 = v43;
    v43 = v476;
    v60 = v58(v59, v476);
    v61 = v474;
    (v54)(v60);
    swift_beginAccess();
    sub_101270DAC(v61, v473);
    swift_endAccess();
    v58(v61, v43);
    return v43;
  }

  v62 = v57;
  v465 = v12;
  v446 = a8;
  v450 = v55;
  v451 = v54;
  v63 = v476;
  v64 = v475 + 8;
  v65 = *(v475 + 8);
  v66 = v65(v43, v476);
  if (!v62)
  {
    v73 = v481;
    v74 = v472;
    if ((v469 & 1) == 0)
    {
      v77 = v473;
LABEL_113:
      v121 = v474;
      (v451)(v66);
      swift_beginAccess();
      sub_101270DAC(v121, v77);
      swift_endAccess();
      v65(v121, v63);
      return 0;
    }

    v449 = v65;
    v469 = v472 == 0;
    if (a9 >> 60 == 15)
    {
      v470 = 0xF000000000000000;
      v471 = 0;
      v75 = v472 == 0;
      v76 = v465;
    }

    else
    {
      v448 = v64;
      v122 = *v481;
      v123 = swift_conformsToProtocol2();
      if (v123)
      {
        v124 = v123;
        v125 = *(v465 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
        v126 = v446;
        sub_100024E84(v446, a9);

        v127 = v477;
        sub_100F185A8(v126, a9, 0, 0xF000000000000000, v125, v74 == 2, v122, v124);
        v477 = v127;
        if (v127)
        {

          v131 = sub_100025870(v126, a9);
          v43 = v474;
          (v451)(v131);
          swift_beginAccess();
          sub_101270DAC(v43, v473);
          swift_endAccess();
          v449(v43, v63);
          return v43;
        }

        v156 = v128;
        v470 = v130;
        v471 = v129;
        sub_100025870(v126, a9);
      }

      else
      {
        v143 = v446;
        sub_100024E84(v446, a9);
        v447 = a9;
        if (qword_1019F22B8 != -1)
        {
          swift_once();
        }

        v471 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        v145 = v481;
        *(inited + 16) = xmmword_10146BDE0;
        (*(*v145 + 464))();
        v146 = sub_1009B6B8C();
        v148 = v147;
        *(inited + 56) = &type metadata for String;
        v149 = sub_1000053B0();
        *(inited + 64) = v149;
        *(inited + 32) = v146;
        *(inited + 40) = v148;
        v150 = v474;
        v451();
        v151 = UUID.uuidString.getter();
        v153 = v152;
        v154 = v150;
        v63 = v476;
        v449(v154, v476);
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v149;
        *(inited + 72) = v151;
        *(inited + 80) = v153;
        v155 = static os_log_type_t.error.getter();
        sub_100005404(v471, &_mh_execute_header, v155, "Attempting to merge a ckmergeableRecordValue into a board item type (%{public}@) that does not support mergeable capsules. item id: %{public}@", 142, 2, inited);
        sub_100025870(v143, v447);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v156 = 0;
        v470 = 0xF000000000000000;
        v471 = 0;
      }

      v75 = v156 | v469;
      v76 = v465;
      v64 = v448;
      v73 = v481;
    }

    v262 = *(v76 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
    v263 = v477;
    v264 = (*(*v73 + 520))(v262, 0);
    v266 = v73;
    if (v263)
    {
      v43 = v474;
      (v451)(v264);
      swift_beginAccess();
      sub_101270DAC(v43, v473);
      swift_endAccess();
      sub_100025870(v471, v470);
      v449(v43, v63);
      return v43;
    }

    v467 = v264;
    v468 = v265;
    v466 = (*(*v73 + 528))(v262, 0);
    v268 = v267;
    v269 = (*(*v73 + 536))(v262, 0);
    v448 = v64;
    v352 = v453;
    v463 = v353;
    v461 = v269;
    v354 = (v451)();
    v464 = v268;
    LODWORD(v446) = *(v73 + 56);
    v447 = v73[2];
    v355 = *(*v73 + 272);
    v356 = *(v73 + 3);
    v444 = *(v73 + 5);
    v445 = v356;
    v477 = 0;
    v355(v354);
    v357 = sub_10000C83C(v473, v457, type metadata accessor for CRLBoardIdentifier);
    v358 = (*(*v73 + 464))(v357);
    v361 = sub_100A03BC4(v358, v360, v359 & 0x1FF);
    v459 = v362;
    v460 = v361;
    LODWORD(v452) = v363;
    type metadata accessor for CRLBoardItemDatabaseRow();
    v364 = swift_allocObject();
    v365 = v63;
    v366 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
    v367 = v475;
    (*(v475 + 56))(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v365);
    *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
    *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
    *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
    *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
    *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
    (*(v367 + 32))(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v352, v365);
    v368 = v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
    v369 = v444;
    *v368 = v445;
    *(v368 + 16) = v369;
    *(v368 + 32) = v446;
    *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = v447;
    swift_beginAccess();
    v371 = v467;
    v370 = v468;
    sub_100024E98(v467, v468);
    sub_100024E98(v466, v464);
    sub_100024E84(v461, v463);
    sub_100024E84(v471, v470);
    sub_10002C638(v456, v364 + v366, &qword_1019F6990);
    swift_endAccess();
    sub_100025668(v457, v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v372 = v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
    v373 = v459;
    *v372 = v460;
    *(v372 + 8) = v373;
    *(v372 + 16) = v452 & 1;
    v374 = (v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v375 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v376 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
    sub_100024E98(v371, v370);
    *v374 = v371;
    v374[1] = v370;
    sub_100025870(v375, v376);
    sub_10002640C(v371, v370);
    v377 = (v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v378 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v379 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    v380 = v466;
    v381 = v464;
    sub_100024E98(v466, v464);
    *v377 = v380;
    v377[1] = v381;
    sub_100025870(v378, v379);
    sub_10002640C(v380, v381);
    v382 = (v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v383 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v384 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    v385 = v461;
    v386 = v463;
    sub_100024E84(v461, v463);
    *v382 = v385;
    v382[1] = v386;
    sub_100025870(v383, v384);
    sub_100025870(v385, v386);
    *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
    *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = v75;
    v387 = (v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v388 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v389 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    v390 = v458;
    v391 = v462;
    sub_100024E84(v458, v462);
    *v387 = v390;
    v387[1] = v391;
    v392 = v470;
    sub_100025870(v388, v389);
    v393 = (v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v394 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v395 = *(v364 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
    v396 = v471;
    sub_100024E84(v471, v392);
    *v393 = v396;
    v393[1] = v392;
    sub_100025870(v394, v395);
    sub_100025870(v396, v392);
    v397 = v477;
    v398 = sub_100DF5A90(v364);
    if (v397)
    {
      sub_10002640C(v467, v468);
      sub_10002640C(v466, v464);
      sub_100025870(v461, v463);
      swift_setDeallocating();
      sub_100FE3A40();
      v399 = swift_deallocClassInstance();
      v43 = v474;
      (v451)(v399);
      swift_beginAccess();
      sub_101270DAC(v43, v473);
      swift_endAccess();
      sub_100025870(v471, v392);
      v449(v43, v476);
      return v43;
    }

    v475 = v364;
    v403 = (*(*v266 + 664))(v398);
    v404 = (*(*v266 + 672))();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v478[0] = v403;
    sub_100E9CD68(v404, sub_100E8FDF4, 0, isUniquelyReferenced_nonNull_native, v478);
    v477 = 0;

    v406 = v478[0];
    v407 = *(sub_1005B981C(&qword_1019F4720) + 48);
    v408 = v454;
    v451();
    sub_10000C83C(v473, v408 + v407, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    v409 = sub_100BD5554(_swiftEmptyArrayStorage);
    if (*(v409 + 16) || *(v406 + 16))
    {
      v410 = sub_100DF6D54(v409, v406, 0);
      v412 = v411;

      v413 = sub_100EE970C(v412);
      v414 = v477;
      sub_100DF8FA8(v454, v413);
      v477 = v414;
      if (v414)
      {
        sub_10002640C(v467, v468);
        sub_10002640C(v466, v464);
        sub_100025870(v461, v463);

LABEL_241:

        sub_100026028(v454, type metadata accessor for CRLAssetReferrerIdentifier);

        v43 = v474;
        (v451)(v418);
        swift_beginAccess();
        sub_101270DAC(v43, v473);
        swift_endAccess();
        sub_100025870(v471, v470);
        v449(v43, v476);
        return v43;
      }

      v417 = v477;
      sub_100DF9920(v454, v410, v469);
      v477 = v417;
      if (v417)
      {
        sub_10002640C(v467, v468);
        sub_10002640C(v466, v464);
        sub_100025870(v461, v463);

        goto LABEL_241;
      }
    }

    sub_100026028(v454, type metadata accessor for CRLAssetReferrerIdentifier);
    v430 = sub_100BD5554(_swiftEmptyArrayStorage);
    v431 = v481;
    v432 = sub_100743DF0();
    sub_100DF52B8(v475, v472, v430, v406, v432);

    sub_10073E718();

    sub_10002640C(v467, v468);
    sub_10002640C(v466, v464);
    v433 = sub_100025870(v461, v463);
    v434 = v474;
    (v451)(v433);
    swift_beginAccess();
    sub_101270DAC(v434, v473);
    swift_endAccess();
    sub_100025870(v471, v470);
    v449(v434, v476);

    return v431;
  }

  v447 = a9;
  v441 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone;
  LODWORD(v456) = *(v62 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone);
  v454 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges;
  *&v445 = *(v62 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges);
  v67 = v62 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
  v68 = sub_100A0557C(*(v62 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues), *(v62 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8), *(v62 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16));
  v71 = v481;
  v72 = v472;
  v457 = v62;
  if ((v70 & 0x10000) == 0)
  {
    if ((v70 & 0x100) != 0)
    {
      if ((v68 | v69 || v70) && (v68 != 1 || v69 || v70) && (v68 != 2 || v69 || v70) && (v68 != 3 || v69 || v70) && (v68 != 4 || v69 || v70) && (v68 != 5 || v69 || v70) && (v68 != 6 || v69 || v70) && (v68 != 7 || v69 || v70) && (v68 != 8 || v69 || v70) && (v68 != 9 || v69 || v70) && (v68 != 10 || v69 || v70))
      {
        goto LABEL_82;
      }
    }

    else if ((v70 & 1) == 0 && v69)
    {
      goto LABEL_82;
    }
  }

  v78 = (*v481 + 464);
  v79 = *v78;
  v80 = (*v78)(v68);
  if ((v82 & 0x100) != 0)
  {
    v62 = v457;
    if ((v80 | v81 || v82) && (v80 != 1 || v81 || v82) && (v80 != 2 || v81 || v82) && (v80 != 3 || v81 || v82) && (v80 != 4 || v81 || v82) && (v80 != 5 || v81 || v82) && (v80 != 6 || v81 || v82) && (v80 != 7 || v81 || v82) && (v80 != 8 || v81 || v82) && (v80 != 9 || v81 || v82) && (v80 != 10 || v81 || v82))
    {
      goto LABEL_49;
    }
  }

  else
  {
    v62 = v457;
    if ((v82 & 1) == 0 && v81)
    {
LABEL_49:
      v83 = v79(v80);
      v62 = v457;
      *v67 = sub_100A03BC4(v83, v85, v84 & 0x1FF);
      *(v67 + 8) = v86;
      *(v67 + 16) = v87 & 1;
    }
  }

LABEL_82:
  v442 = (v62 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v88 = *(v62 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8) >> 60;
  v448 = v64;
  v449 = v65;
  if (v88 < 0xF)
  {
    v107 = v72;
    v92 = v471;
  }

  else
  {
    v89 = v477;
    v90 = (*(*v71 + 536))(*(v465 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext), 0);
    v477 = v89;
    v92 = v471;
    if (v89)
    {
      v93 = v65;
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v453 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      v94 = swift_initStackObject();
      *(v94 + 16) = xmmword_10146C4D0;
      v95 = v474;
      v96 = v457;
      v97 = v476;
      (*(v475 + 16))(v474, v457 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v476);
      v98 = UUID.uuidString.getter();
      v100 = v99;
      v93(v95, v97);
      *(v94 + 56) = &type metadata for String;
      v101 = sub_1000053B0();
      *(v94 + 64) = v101;
      *(v94 + 32) = v98;
      *(v94 + 40) = v100;
      v102 = UUID.uuidString.getter();
      *(v94 + 96) = &type metadata for String;
      *(v94 + 104) = v101;
      *(v94 + 72) = v102;
      *(v94 + 80) = v103;
      swift_getErrorValue();
      v104 = Error.localizedDescription.getter();
      v62 = v96;
      *(v94 + 136) = &type metadata for String;
      *(v94 + 144) = v101;
      *(v94 + 112) = v104;
      *(v94 + 120) = v105;
      v106 = static os_log_type_t.error.getter();
      sub_100005404(v453, &_mh_execute_header, v106, "Serializing incoming capsuleData failed when trying to write it in for the database for item %{public}@ in board %{public}@ with error %{public}@", 145, 2, v94);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v477 = 0;
      v71 = v481;
      v107 = v472;
      v92 = v471;
    }

    else
    {
      if (v91 >> 60 != 15)
      {
        v108 = v442;
        v109 = *v442;
        v110 = v442[1];
        *v442 = v90;
        v108[1] = v91;
        sub_100025870(v109, v110);
      }

      v62 = v457;
      v107 = v72;
    }
  }

  LODWORD(v453) = a10;
  v111 = sub_100E929EC(v62);
  if (v111)
  {
    v112 = v111;
    LODWORD(v444) = a11;
    if (v107)
    {
      if (v107 == 1)
      {
        v113 = (v445 >> 4) & 1;
        v114 = sub_100DF3C18(v71);
        v115 = v114;
        if (v467 == 2)
        {
          if ((v456 & v113 & 1) == 0)
          {
            if ((v113 & ~v456 & 1) == 0)
            {
              goto LABEL_139;
            }

LABEL_129:
            v443 = 0;
            v115 = v114 | 0x10;
            if ((v456 & 1) == 0)
            {
LABEL_130:
              if (v443)
              {
                v439 = 1;
                v157 = _swiftEmptyDictionarySingleton;
                v443 = 1;
                v158 = _swiftEmptyDictionarySingleton;
                goto LABEL_142;
              }

              goto LABEL_132;
            }

LABEL_141:
            v439 = 1;
            v157 = _swiftEmptyDictionarySingleton;
            v158 = _swiftEmptyDictionarySingleton;
            goto LABEL_142;
          }
        }

        else
        {
          if ((v456 & v113 & 1) == 0)
          {
            if ((v113 & ~v456 & 1) == 0)
            {
LABEL_139:
              v132 = (v469 ^ 1) & v456;
LABEL_140:
              v443 = v132;
              if (v456)
              {
                goto LABEL_141;
              }

              goto LABEL_130;
            }

            if ((v467 & 1) == 0)
            {
              v443 = 0;
              if (v456)
              {
                goto LABEL_141;
              }

              goto LABEL_130;
            }

            goto LABEL_129;
          }

          if (v467)
          {
LABEL_120:
            v132 = 1;
            goto LABEL_140;
          }
        }

        v115 = v114 | 0x10;
        goto LABEL_120;
      }

      v115 = 0;
      if (v456)
      {
        v443 = 0;
        goto LABEL_141;
      }
    }

    else
    {
      v120 = sub_100DF3C18(v111);
      v115 = v120 | v445;
      if (v456)
      {
        v443 = v469 ^ 1;
        if (v469)
        {
          v115 |= 0x10uLL;
        }

        goto LABEL_141;
      }
    }

LABEL_132:
    v159 = (*(*v71 + 544))(v112);
    v158 = _swiftEmptyDictionarySingleton;
    v469 = v115;
    if (v159)
    {
      v160 = (*(*v112 + 664))();
      v161 = swift_isUniquelyReferenced_nonNull_native();
      v478[0] = _swiftEmptyDictionarySingleton;
      v162 = v477;
      sub_100E9CD68(v160, sub_100E8FDF4, 0, v161, v478);

      v164 = v478[0];
      v165 = (*(*v71 + 664))(v163);
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v478[0] = _swiftEmptyDictionarySingleton;
      sub_100E9CD68(v165, sub_100E8FDF4, 0, v166, v478);
      v477 = v162;

      v157 = v478[0];
      v107 = v472;
      v158 = v164;
    }

    else
    {
      v157 = _swiftEmptyDictionarySingleton;
    }

    if ((*(*v71 + 552))(v112))
    {
      v167 = (*(*v112 + 672))();
      v168 = swift_isUniquelyReferenced_nonNull_native();
      v478[0] = v158;
      v169 = v477;
      sub_100E9CD68(v167, sub_100E8FDF4, 0, v168, v478);

      v171 = v478[0];
      v172 = (*(*v71 + 672))(v170);
      v173 = swift_isUniquelyReferenced_nonNull_native();
      v478[0] = v157;
      v158 = v171;
      sub_100E9CD68(v172, sub_100E8FDF4, 0, v173, v478);
      v477 = v169;

      v439 = 0;
      v443 = 0;
      v157 = v478[0];
    }

    else
    {
      v439 = 0;
      v443 = 0;
    }

    v115 = v469;
    v92 = v471;
LABEL_142:
    v438 = sub_10073E718();
    (*(*v112 + 272))();
    v467 = v158;
    if (v107 == 2)
    {
      if (v447 >> 60 == 15)
      {
        v447 = 0;
        *&v445 = 0xF000000000000000;
        goto LABEL_162;
      }

      v174 = *v71;
      v175 = swift_conformsToProtocol2();
      v469 = v115;
      v440 = v157;
      if (v175)
      {
        v176 = v175;
        v177 = *(v465 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
        v179 = v446;
        v178 = v447;
        sub_100024E84(v446, v447);

        v180 = v477;
        sub_100F185A8(v179, v178, 0, 0xF000000000000000, v177, 1, v174, v176);
        v477 = v180;
        if (v180)
        {
          sub_100025870(v179, v178);

          sub_10000CAAC(v470, &qword_1019F6990);

          goto LABEL_150;
        }

        v209 = v181;
        v224 = v182;
        *&v445 = v183;
        sub_100025870(v179, v178);

        v447 = v224;
      }

      else
      {
        v198 = v446;
        sub_100024E84(v446, v447);
        if (qword_1019F22B8 != -1)
        {
          swift_once();
        }

        v475 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0);
        v199 = swift_initStackObject();
        *(v199 + 16) = xmmword_10146BDE0;
        (*(*v71 + 464))();
        v200 = sub_1009B6B8C();
        v202 = v201;
        *(v199 + 56) = &type metadata for String;
        v203 = sub_1000053B0();
        *(v199 + 64) = v203;
        *(v199 + 32) = v200;
        *(v199 + 40) = v202;
        v204 = v474;
        v451();
        v205 = UUID.uuidString.getter();
        v207 = v206;
        v449(v204, v476);
        *(v199 + 96) = &type metadata for String;
        *(v199 + 104) = v203;
        *(v199 + 72) = v205;
        *(v199 + 80) = v207;
        v71 = v481;
        v208 = static os_log_type_t.error.getter();
        sub_100005404(v475, &_mh_execute_header, v208, "Attempting to merge a ckmergeableRecordValue into a board item type (%{public}@) that does not support mergeable capsules. item id: %{public}@", 142, 2, v199);
        sub_100025870(v198, v447);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v209 = 0;
        v447 = 0;
        *&v445 = 0xF000000000000000;
      }

      v157 = v440;
      v115 = v209 | v469;
      v92 = v471;
LABEL_162:
      v225 = *(*v71 + 272);
      v226 = swift_retain_n();
      v227 = v225(v226);
      v43 = v71;
      if (!v456)
      {
        goto LABEL_185;
      }

      goto LABEL_184;
    }

    v469 = v115;
    v440 = v157;
    if (v447 >> 60 == 15)
    {
      v447 = 0;
      *&v445 = 0xF000000000000000;
    }

    else
    {
      v185 = *(v457 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
      v184 = *(v457 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
      v186 = *v112;
      v187 = swift_conformsToProtocol2();
      if (v187)
      {
        v188 = v187;
        v189 = v184;
        *&v445 = *(v465 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
        v190 = v446;
        v191 = v185;
        v192 = v447;
        sub_100024E84(v446, v447);
        sub_100024E84(v191, v189);

        v193 = v477;
        sub_100F185A8(v190, v192, v191, v189, v445, 0, v186, v188);
        if (v193)
        {
          sub_100025870(v190, v192);

          sub_100025870(v191, v189);

          sub_10000CAAC(v470, &qword_1019F6990);

          v43 = v474;
          (v451)(v197);
          swift_beginAccess();
          sub_101270DAC(v43, v473);
          swift_endAccess();
          v449(v43, v476);
          return v43;
        }

        v222 = v195;
        v223 = v196;
        v477 = 0;
        v228 = v194;
        sub_100025870(v190, v192);
        sub_100025870(v191, v189);

        v221 = v228;
      }

      else
      {
        v210 = v446;
        sub_100024E84(v446, v447);
        sub_100024E84(v185, v184);
        *&v445 = v184;
        v437 = v185;
        if (qword_1019F22B8 != -1)
        {
          swift_once();
        }

        v436 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0);
        v211 = swift_initStackObject();
        *(v211 + 16) = xmmword_10146BDE0;
        (*(*v112 + 464))();
        v212 = sub_1009B6B8C();
        v214 = v213;
        *(v211 + 56) = &type metadata for String;
        v215 = sub_1000053B0();
        *(v211 + 64) = v215;
        *(v211 + 32) = v212;
        *(v211 + 40) = v214;
        v216 = v474;
        (*(*v112 + 264))();
        v217 = UUID.uuidString.getter();
        v219 = v218;
        v449(v216, v476);
        *(v211 + 96) = &type metadata for String;
        *(v211 + 104) = v215;
        *(v211 + 72) = v217;
        *(v211 + 80) = v219;
        v220 = static os_log_type_t.error.getter();
        sub_100005404(v436, &_mh_execute_header, v220, "Attempting to merge a ckmergeableRecordValue into a board item type (%{public}@) that does not support mergeable capsules. item id: %{public}@", 142, 2, v211);
        sub_100025870(v210, v447);
        sub_100025870(v437, v445);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v221 = 0;
        v222 = 0;
        v223 = 0xF000000000000000;
      }

      *&v445 = v223;
      v447 = v222;
      v469 |= v221;
      v107 = v472;
      v92 = v471;
    }

    v446 = v112 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v229 = *(*v112 + 496);
    swift_retain_n();
    v230 = v481;
    v229(v481);
    (*(*v112 + 488))(v230);
    (*(*v112 + 480))(v230);
    v231 = *(v230 + 5);
    v479[0] = *(v230 + 3);
    v479[1] = v231;
    v480 = *(v230 + 56);
    v232 = sub_10073E870(v479, v230[2]);
    (*(*v112 + 272))(v232);
    v233 = *(v468 + 48);
    v234 = (v475 + 48);
    if (v107)
    {
      v235 = v466;
      sub_10000BE14(v470, v466, &qword_1019F6990);
      sub_10000BE14(v92, v235 + v233, &qword_1019F6990);
      v236 = *v234;
      if ((*v234)(v235, 1, v476) == 1)
      {
        v237 = v236(v235 + v233, 1, v476);
        v92 = v471;
        v157 = v440;
        if (v237 == 1)
        {
          v227 = sub_10000CAAC(v235, &qword_1019F6990);
          v115 = v469;
LABEL_182:
          v115 &= ~2uLL;
          goto LABEL_183;
        }
      }

      else
      {
        v242 = v463;
        sub_10000BE14(v235, v463, &qword_1019F6990);
        if (v236(v235 + v233, 1, v476) != 1)
        {
          v244 = v235 + v233;
          v245 = v235;
          v246 = v474;
          v247 = v242;
          v248 = v476;
          (*(v475 + 32))(v474, v244, v476);
          sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
          v249 = dispatch thunk of static Equatable.== infix(_:_:)();
          v250 = v246;
          v251 = v449;
          v449(v250, v248);
          v251(v247, v248);
          v227 = sub_10000CAAC(v245, &qword_1019F6990);
          v92 = v471;
          v157 = v440;
          v115 = v469;
          if ((v249 & 1) == 0)
          {
            goto LABEL_183;
          }

          goto LABEL_182;
        }

        v449(v242, v476);
        v92 = v471;
        v157 = v440;
      }

      v241 = &unk_101A0AFE0;
LABEL_176:
      v227 = sub_10000CAAC(v235, v241);
      v43 = v112;
      v115 = v469;
      if (!v456)
      {
        goto LABEL_185;
      }

LABEL_184:
      if ((v443 & 1) == 0)
      {
        v253 = (*(*v43 + 664))(v227);
        v254 = swift_isUniquelyReferenced_nonNull_native();
        v469 = v115;
        v478[0] = v157;
        v255 = v477;
        sub_100E9CD68(v253, sub_100E8FDF4, 0, v254, v478);

        v257 = v478[0];
        v258 = (*(*v43 + 672))(v256);
        v259 = swift_isUniquelyReferenced_nonNull_native();
        v478[0] = v257;
        sub_100E9CD68(v258, sub_100E8FDF4, 0, v259, v478);
        v477 = v255;

        sub_10000CAAC(v92, &qword_1019F6990);
        sub_10000CAAC(v470, &qword_1019F6990);
        v157 = v478[0];
        v252 = v469;
        v439 = 1;
LABEL_187:
        v260 = v465;
        v261 = v457;
        if ((v453 & 1) == 0)
        {
          goto LABEL_204;
        }

        goto LABEL_203;
      }

LABEL_185:

      v252 = v115;
      sub_10000CAAC(v92, &qword_1019F6990);
      sub_10000CAAC(v470, &qword_1019F6990);
      goto LABEL_187;
    }

    v238 = v464;
    sub_10000BE14(v470, v464, &qword_1019F6990);
    v235 = v238;
    sub_10000BE14(v92, v238 + v233, &qword_1019F6990);
    v239 = *v234;
    if ((*v234)(v238, 1, v476) == 1)
    {
      v240 = v239(v238 + v233, 1, v476);
      v92 = v471;
      v157 = v440;
      if (v240 == 1)
      {
        v241 = &qword_1019F6990;
        goto LABEL_176;
      }
    }

    else
    {
      v243 = v461;
      sub_10000BE14(v238, v461, &qword_1019F6990);
      if (v239(v238 + v233, 1, v476) != 1)
      {
        v283 = v474;
        v284 = v243;
        v285 = v476;
        (*(v475 + 32))(v474, v238 + v233, v476);
        sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
        v286 = dispatch thunk of static Equatable.== infix(_:_:)();
        v287 = v283;
        v288 = v449;
        v449(v287, v285);
        v288(v284, v285);
        v227 = sub_10000CAAC(v238, &qword_1019F6990);
        v92 = v471;
        v157 = v440;
        v115 = v469;
        if ((v286 & 1) == 0)
        {
          v115 = v469 | 2;
        }

LABEL_183:
        v43 = v112;
        if (!v456)
        {
          goto LABEL_185;
        }

        goto LABEL_184;
      }

      v449(v243, v476);
      v92 = v471;
      v157 = v440;
    }

    v227 = sub_10000CAAC(v238, &unk_101A0AFE0);
    v115 = v469 | 2;
    goto LABEL_183;
  }

  if ((v469 & 1) == 0)
  {

    v63 = v476;
    v77 = v473;
    v65 = v449;
    goto LABEL_113;
  }

  v116 = v445 | 1;
  if (v456)
  {
    v116 = 16;
  }

  if (v107)
  {
    v117 = 0;
  }

  else
  {
    v117 = v116;
  }

  v118 = v447;
  LODWORD(v444) = a11;
  v469 = v117;
  if (v447 >> 60 == 15)
  {

    v447 = 0;
    *&v445 = 0xF000000000000000;
  }

  else
  {
    v133 = *v71;
    v134 = swift_conformsToProtocol2();
    if (v134)
    {
      v135 = v134;
      v136 = *(v465 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
      v137 = v446;
      sub_100024E84(v446, v118);

      v138 = v477;
      sub_100F185A8(v137, v118, 0, 0xF000000000000000, v136, v107 == 2, v133, v135);
      v477 = v138;
      if (v138)
      {

        sub_100025870(v137, v118);

LABEL_150:
        v43 = v474;
        (v451)(v142);
        swift_beginAccess();
        sub_101270DAC(v43, v473);
        swift_endAccess();
LABEL_220:
        v449(v43, v476);
        return v43;
      }

      v282 = v139;
      v289 = v140;
      *&v445 = v141;
      v119 = sub_100025870(v137, v118);
      v447 = v289;
    }

    else
    {
      v270 = v446;
      sub_100024E84(v446, v118);
      v271 = qword_1019F22B8;

      if (v271 != -1)
      {
        swift_once();
      }

      v475 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0);
      v272 = swift_initStackObject();
      *(v272 + 16) = xmmword_10146BDE0;
      (*(*v71 + 464))();
      v273 = sub_1009B6B8C();
      v275 = v274;
      *(v272 + 56) = &type metadata for String;
      v276 = sub_1000053B0();
      *(v272 + 64) = v276;
      *(v272 + 32) = v273;
      *(v272 + 40) = v275;
      v277 = v474;
      v451();
      v278 = UUID.uuidString.getter();
      v280 = v279;
      v449(v277, v476);
      *(v272 + 96) = &type metadata for String;
      *(v272 + 104) = v276;
      v71 = v481;
      *(v272 + 72) = v278;
      *(v272 + 80) = v280;
      v281 = static os_log_type_t.error.getter();
      sub_100005404(v475, &_mh_execute_header, v281, "Attempting to merge a ckmergeableRecordValue into a board item type (%{public}@) that does not support mergeable capsules. item id: %{public}@", 142, 2, v272);
      sub_100025870(v270, v447);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      v119 = swift_arrayDestroy();
      v282 = 0;
      v447 = 0;
      *&v445 = 0xF000000000000000;
    }

    v469 |= v282;
  }

  v290 = (*(*v71 + 664))(v119);
  v291 = swift_isUniquelyReferenced_nonNull_native();
  v467 = _swiftEmptyDictionarySingleton;
  v478[0] = _swiftEmptyDictionarySingleton;
  v292 = v477;
  sub_100E9CD68(v290, sub_100E8FDF4, 0, v291, v478);

  v294 = v478[0];
  v295 = (*(*v71 + 672))(v293);
  v296 = swift_isUniquelyReferenced_nonNull_native();
  v478[0] = v294;
  sub_100E9CD68(v295, sub_100E8FDF4, 0, v296, v478);
  v477 = v292;

  v157 = v478[0];
  if ((v453 & 1) == 0)
  {
    v297 = v478[0];
    v438 = 0;
    v443 = 0;
    v467 = _swiftEmptyDictionarySingleton;
    v439 = 1;
    v43 = v71;
    v261 = v457;
    v252 = v469;
    v260 = v465;
    if ((v444 & 1) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_205;
  }

  v443 = 0;
  v438 = 0;
  v439 = 1;
  v43 = v71;
  v261 = v457;
  v252 = v469;
  v260 = v465;
LABEL_203:
  v252 = *(v454 + v261) & 0xFFFFFFFFFFFFFDFFLL | (((v252 >> 9) & 1) << 9);
LABEL_204:
  v297 = v157;
  if (v444)
  {
LABEL_205:
    v252 = v252 & 0xFFFFFFFFFFFFFDFFLL | (((*(v454 + v261) >> 9) & 1) << 9);
  }

LABEL_206:
  v298 = v43[56];
  v299 = v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  v300 = *(v43 + 40);
  *v299 = *(v43 + 24);
  *(v299 + 16) = v300;
  *(v299 + 32) = v298;
  *(v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = *(v43 + 2);
  v301 = *(v260 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  v302 = v477;
  v303 = (*(*v43 + 520))(v301, 0);
  if (v302)
  {

    v43 = v474;
    (v451)(v305);
    swift_beginAccess();
    sub_101270DAC(v43, v473);
    swift_endAccess();
    sub_100025870(v447, v445);
    v449(v43, v476);
    return v43;
  }

  v306 = (v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v307 = *(v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v308 = *(v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  *v306 = v303;
  v306[1] = v304;
  sub_100025870(v307, v308);
  v309 = (*(*v43 + 528))(v301, 0);
  v310 = (v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v311 = *(v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v312 = *(v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  *v310 = v309;
  v310[1] = v313;
  sub_100025870(v311, v312);
  v314 = (*(*v43 + 536))(v301, 0);
  v477 = 0;
  v316 = v297;
  v317 = v442;
  v318 = *v442;
  v319 = v442[1];
  *v442 = v314;
  v317[1] = v315;
  v320 = sub_100025870(v318, v319);
  v321 = v459;
  (*(*v43 + 272))(v320);
  v322 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  swift_beginAccess();
  sub_10002C638(v321, v261 + v322, &qword_1019F6990);
  swift_endAccess();
  *(v454 + v261) = v252;
  *(v261 + v441) = v443 & 1;
  v323 = (v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v324 = *(v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v325 = *(v261 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  v326 = v447;
  v327 = v445;
  *v323 = v447;
  v323[1] = v327;
  sub_100024E84(v326, v327);
  v328 = sub_100025870(v324, v325);
  v329 = v462;
  v330 = v481;
  if (v462 >> 60 != 15)
  {
    v331 = v458;
    v332 = (v457 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v333 = *(v457 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v334 = *(v457 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    *v332 = v458;
    v332[1] = v329;
    sub_100024E98(v331, v329);
    v328 = sub_100025870(v333, v334);
  }

  if (v472)
  {
    v335 = (*(*v330 + 664))(v328);
    v336 = sub_100DCB0EC(v335);
    v337 = (*(*v330 + 672))();
    v338 = sub_100DCB0EC(v337);
    v339 = sub_1010ACCC0(v338, v336);

    v50 = sub_1012D944C(v340, v339);
  }

  else
  {
    v50 = _swiftEmptySetSingleton;
  }

  v341 = v477;
  sub_100DF3D48(v457);
  v477 = v341;
  if (v341)
  {

    v43 = v474;
    (v451)(v342);
    swift_beginAccess();
    sub_101270DAC(v43, v473);
    swift_endAccess();
    sub_100025870(v326, v445);
    goto LABEL_220;
  }

  v344 = v449;
  v12 = sub_1005B981C(&qword_1019F4720);
  v345 = *(v12 + 48);
  v346 = (*v43 + 264);
  v347 = *v346;
  v440 = v316;
  v348 = v460;
  v475 = v347;
  v471 = v346;
  v347();
  sub_10000C83C(v473, v348 + v345, type metadata accessor for CRLBoardIdentifier);
  v349 = v440;
  swift_storeEnumTagMultiPayload();
  if (!*(v467 + 16) && ((*(v349 + 16) == 0) & ~v439) != 0)
  {
    goto LABEL_243;
  }

  v350 = v439;
  v47 = sub_100DF6D54(v467, v349, v439);
  if (v350)
  {
    v351 = v477;
    sub_100DF8718(v460);
    v477 = v351;
    if (v351)
    {
      goto LABEL_238;
    }

    goto LABEL_237;
  }

  v401 = sub_100EE970C(v400);
  v402 = v477;
  sub_100DF8FA8(v460, v401);
  v477 = v402;
  if (v402)
  {

LABEL_238:

    sub_100026028(v460, type metadata accessor for CRLAssetReferrerIdentifier);

    v43 = v474;
    (v451)(v416);
    swift_beginAccess();
    sub_101270DAC(v43, v473);
    swift_endAccess();
    sub_100025870(v447, v445);
    v449(v43, v476);
    return v43;
  }

LABEL_236:

LABEL_237:
  v415 = v477;
  sub_100DF9920(v460, v47, 1);
  v477 = v415;
  if (v415)
  {
    goto LABEL_238;
  }

  v344 = v449;
LABEL_243:
  v419 = sub_100026028(v460, type metadata accessor for CRLAssetReferrerIdentifier);
  v420 = *(v12 + 48);
  v421 = v452;
  (v475)(v419);
  v422 = v473;
  sub_10000C83C(v473, v421 + v420, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v423 = sub_100EE979C(v50);
  v424 = v477;
  sub_100DF4A2C(v421, v423, 0);
  v477 = v424;
  sub_100026028(v421, type metadata accessor for CRLAssetReferrerIdentifier);

  if (v424)
  {

    v43 = v474;
    (v451)(v425);
    swift_beginAccess();
    sub_101270DAC(v43, v422);
    swift_endAccess();
    sub_100025870(v447, v445);
    v344(v43, v476);
  }

  else
  {
    v426 = sub_100743DF0();
    sub_100DF52B8(v457, v472, v467, v440, v426);

    sub_10073E718();
    v427 = v476;

    v429 = v474;
    (v451)(v428);
    swift_beginAccess();
    sub_101270DAC(v429, v422);
    swift_endAccess();
    sub_100025870(v447, v445);
    v449(v429, v427);
  }

  return v43;
}