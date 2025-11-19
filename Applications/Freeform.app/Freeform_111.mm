uint64_t sub_100DF3C18(void *a1)
{
  if ((*(*v1 + 544))())
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if ((*(*v1 + 552))(a1))
  {
    v3 |= 8uLL;
  }

  v4 = (*(*v1 + 560))(a1);
  v5 = v3 | 0x200;
  if ((v4 & 1) == 0)
  {
    v5 = v3;
  }

  if (v1[3] != a1[3])
  {
    v5 |= 0x20uLL;
  }

  if (v1[4] != a1[4])
  {
    v5 |= 0x80uLL;
  }

  if (v1[5] != a1[5])
  {
    v5 |= 0x100uLL;
  }

  if (v1[2] == a1[2])
  {
    return v5;
  }

  else
  {
    return v5 | 0x40;
  }
}

uint64_t sub_100DF3D48(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v110 = *(v3 - 8);
  __chkstk_darwin(v3);
  v109 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v7 = &v106 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  v13 = *(v9 + 104);
  v114 = enum case for DispatchPredicate.onQueue(_:);
  v115 = v13;
  v116 = v9 + 104;
  v13(v11);
  v14 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v17 = *(v9 + 8);
  v15 = v9 + 8;
  v16 = v17;
  v17(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v108 = v3;
  v113 = v16;
  v111 = v15;
  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(151);
  v18._countAndFlagsBits = 0x20455441445055;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x74695F6472616F62;
  v19._object = 0xEB00000000736D65;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x2054455320;
  v20._object = 0xE500000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x755F746E65726170;
  v21._object = 0xEB00000000646975;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x202C3F203D20;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v23._object = 0xEB00000000617461;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x202C3F203D20;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x6369666963657073;
  v25._object = 0xED0000617461645FLL;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x202C3F203D20;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x6E6F7473626D6F74;
  v27._object = 0xEA00000000006465;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x202C3F203D20;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29._object = 0x80000001015A33D0;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C3F203D20;
  v30._object = 0xE600000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x7461645F636E7973;
  v31._object = 0xE900000000000061;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x202C3F203D20;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000014;
  v33._object = 0x80000001015A3590;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x202C3F203D20;
  v34._object = 0xE600000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v35._object = 0xEE00736E6F697470;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x202C3F203D20;
  v36._object = 0xE600000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD00000000000002DLL;
  v37._object = 0x80000001015A3760;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x202C3F203D20;
  v38._object = 0xE600000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD000000000000026;
  v39._object = 0x80000001015A33F0;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x202C3F203D20;
  v40._object = 0xE600000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD00000000000001BLL;
  v41._object = 0x80000001015A3790;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x202C3F203D20;
  v42._object = 0xE600000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x6D6574695F627573;
  v43._object = 0xED0000657079745FLL;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x202C3F203D20;
  v44._object = 0xE600000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x5F656C7573706163;
  v45._object = 0xEC00000061746164;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x202C3F203D20;
  v46._object = 0xE600000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD000000000000019;
  v47._object = 0x80000001015A37B0;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x48570A203F203D20;
  v48._object = 0xED00002820455245;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x6975755F6D657469;
  v49._object = 0xE900000000000064;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x444E41203F203D20;
  v50._object = 0xE900000000000020;
  String.append(_:)(v50);
  v51._object = 0x8000000101585360;
  v51._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x293F203D20;
  v52._object = 0xE500000000000000;
  String.append(_:)(v52);
  v53 = v117;
  v54 = v118;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v56 = v112;
  v57 = sub_10001CC04(v55, v53, v54);

  if (v56)
  {
    return result;
  }

  v59 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  swift_beginAccess();
  sub_10000BE14(a1 + v59, v7, &qword_1019F6990);
  sub_10089BD40(v7, 1);
  sub_10000CAAC(v7, &qword_1019F6990);
  v60 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v61 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  sub_100024E84(v60, v61);
  sub_10089BB64(v60, v61, 2);
  sub_100025870(v60, v61);
  v62 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v63 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  sub_100024E84(v62, v63);
  sub_10089BB64(v62, v63, 3);
  sub_100025870(v62, v63);
  sub_10089B9A4(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone), 4);
  sub_100034254(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges), 5);
  v64 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v65 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  sub_100024E84(v64, v65);
  sub_10089BB64(v64, v65, 6);
  sub_100025870(v64, v65);
  v66 = a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  sub_100034254(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions), 7);
  sub_100034254(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions), 8);
  sub_100034254(*(v66 + 8), 9);
  sub_100034254(*(v66 + 16), 10);
  v67 = *(v66 + 32);
  v112 = 0;
  if (v67)
  {
    v68 = *(*(v57 + 16) + 32);
    *v11 = v68;
    v115(v11, v114, v8);
    v69 = v68;
    LOBYTE(v68) = _dispatchPreconditionTest(_:)();
    v113(v11, v8);
    v70 = v110;
    if ((v68 & 1) == 0)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v71 = v8;
    swift_beginAccess();
    sqlite3_bind_null(*(v57 + 24), 11);
  }

  else
  {
    v71 = v8;
    sub_100034254(*(v66 + 24), 11);
    v70 = v110;
  }

  sub_10089C088(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8), *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16), 12);
  v72 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v73 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
  sub_100024E84(v72, v73);
  sub_10089BB64(v72, v73, 13);
  sub_100025870(v72, v73);
  v74 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v75 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  sub_100024E84(v74, v75);
  sub_10089BB64(v74, v75, 14);
  sub_100025870(v74, v75);
  v76 = *(v70 + 16);
  v110 = a1;
  v77 = v109;
  v78 = v108;
  v76(v109, a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v108);
  v79 = UUID.crl_data()();
  v81 = v80;
  v82 = *(*(v57 + 16) + 32);
  *v11 = v82;
  v115(v11, v114, v71);
  v83 = v82;
  LOBYTE(v82) = _dispatchPreconditionTest(_:)();
  v107 = v71;
  v113(v11, v71);
  if ((v82 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v84 = v112;
  sub_100DCCAB4(v79, v81, v57, 15);
  sub_10002640C(v79, v81);
  (*(v70 + 8))(v77, v78);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v85 = sub_10084DAE4();
  v112 = v86;
  if (v84)
  {
    v87 = *(*(v57 + 16) + 32);
    *v11 = v87;
    v88 = v107;
    v115(v11, v114, v107);
    v89 = v87;
    LOBYTE(v87) = _dispatchPreconditionTest(_:)();
    v85 = (v113)(v11, v88);
    if (v87)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v90 = v85;
  v91 = *(*(v57 + 16) + 32);
  *v11 = v91;
  v92 = v114;
  v93 = v107;
  v115(v11, v114, v107);
  v94 = v91;
  LOBYTE(v91) = _dispatchPreconditionTest(_:)();
  v95 = v113;
  v113(v11, v93);
  if ((v91 & 1) == 0)
  {
    goto LABEL_25;
  }

  v110 = v90;
  sub_100DCCAB4(v90, v112, v57, 16);
  v96 = *(*(v57 + 16) + 32);
  *v11 = v96;
  v115(v11, v92, v93);
  v97 = v96;
  LOBYTE(v96) = _dispatchPreconditionTest(_:)();
  v95(v11, v93);
  if ((v96 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v98 = *(v57 + 16);

  v99 = sub_10001CEC4(v98, v57);

  if (v99 == 101)
  {
    sub_10002640C(v110, v112);
    v100 = *(*(v57 + 16) + 32);
    *v11 = v100;
    v115(v11, v114, v93);
    v101 = v100;
    LOBYTE(v100) = _dispatchPreconditionTest(_:)();
    v113(v11, v93);
    if (v100)
    {
      swift_beginAccess();
      v102 = *(v57 + 24);
      if (v102)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_27;
  }

  sub_10089C7D0();
  swift_allocError();
  *v103 = v99;
  *(v103 + 8) = 0xD00000000000001BLL;
  *(v103 + 16) = 0x80000001015A4F00;
  swift_willThrow();
  sub_10002640C(v110, v112);
  v104 = *(*(v57 + 16) + 32);
  *v11 = v104;
  v115(v11, v114, v93);
  v105 = v104;
  LOBYTE(v104) = _dispatchPreconditionTest(_:)();
  v113(v11, v93);
  if ((v104 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_18:
  swift_beginAccess();
  v102 = *(v57 + 24);
  if (v102)
  {
LABEL_19:
    sqlite3_finalize(v102);
    *(v57 + 24) = 0;
  }
}

uint64_t sub_100DF4A2C(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v78 = a3;
  v80 = type metadata accessor for String.Encoding();
  v6 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  v13 = *(v9 + 104);
  v81 = enum case for DispatchPredicate.onQueue(_:);
  v82 = v13;
  v83 = v9 + 104;
  v13(v11);
  v14 = v12;
  v15 = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  v85 = v11;
  v86 = v9 + 8;
  v87 = v8;
  v84 = v16;
  v16(v11, v8);
  if ((v15 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    __break(1u);
    goto LABEL_28;
  }

  v77 = v6;
  v17 = *(a2 + 16);
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v91 = 0xD00000000000006CLL;
  v92 = 0x80000001015A4600;
  v89 = sub_1000341B8(0x3F, 0xE100000000000000, v17);
  sub_1005B981C(&unk_1019F4D80);
  v18 = a2;
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 10537;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24 = v91;
  v25 = v92;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v27 = v88;
  v28 = sub_10001CC04(v26, v24, v25);

  if (!v27)
  {
    v88 = v18;
    sub_100034254(v78, 1);
    v30 = sub_1005C6934();
    v76[1] = a1;
    v32 = v31;
    v33 = v30;
    v34 = *(*(v28 + 16) + 32);
    v35 = v85;
    *v85 = v34;
    v36 = v87;
    v82(v35, v81, v87);
    v37 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v84(v35, v36);
    if ((v34 & 1) == 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    sub_100DCCAB4(v33, v32, v28, 2);
    v76[0] = 0;
    sub_10002640C(v33, v32);
    if (v17)
    {
      swift_beginAccess();
      v78 = (v77 + 8);
      v38 = (v88 + 40);
      v39 = 3;
      v40 = 2147483645;
      while (1)
      {
        v88 = v17;
        v42 = *(v38 - 1);
        v41 = *v38;
        v43 = v28;
        v44 = *(*(v28 + 16) + 32);
        v45 = v85;
        *v85 = v44;
        v46 = v87;
        v82(v45, v81, v87);

        v47 = v44;
        LOBYTE(v44) = _dispatchPreconditionTest(_:)();
        v84(v45, v46);
        if ((v44 & 1) == 0)
        {
          break;
        }

        v89 = v42;
        v90 = v41;
        v48 = v79;
        static String.Encoding.utf8.getter();
        sub_100017CD8();
        v49 = StringProtocol.cString(using:)();
        (*v78)(v48, v80);

        if (!v40)
        {
          goto LABEL_26;
        }

        v28 = v43;
        v50 = *(v43 + 24);
        if (qword_1019F17C8 != -1)
        {
          v52 = *(v43 + 24);
          swift_once();
          v50 = v52;
        }

        if (v49)
        {
          v51 = (v49 + 32);
        }

        else
        {
          v51 = 0;
        }

        sqlite3_bind_text(v50, v39, v51, -1, qword_101AD69D0);

        ++v39;
        --v40;
        v38 += 2;
        v17 = v88 - 1;
        if (v88 == 1)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_14:
    v53 = *(*(v28 + 16) + 32);
    v54 = v85;
    *v85 = v53;
    v55 = v87;
    v82(v54, v81, v87);
    v56 = v53;
    v57 = _dispatchPreconditionTest(_:)();
    v84(v54, v55);
    if ((v57 & 1) == 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v58 = *(v28 + 16);

    v59 = v28;
    v60 = sub_10001CEC4(v58, v28);

    if (v60 == 101)
    {
      v61 = *(*(v59 + 16) + 32);
      v62 = v85;
      *v85 = v61;
      v63 = v87;
      v82(v62, v81, v87);
      v64 = v61;
      v65 = _dispatchPreconditionTest(_:)();
      v84(v62, v63);
      if ((v65 & 1) == 0)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
      }

      swift_beginAccess();
      v66 = *(v59 + 24);
      if (v66)
      {
        sqlite3_finalize(v66);
        *(v59 + 24) = 0;
      }
    }

    else
    {
      v89 = 0;
      v90 = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      v67._object = 0x80000001015A4670;
      v67._countAndFlagsBits = 0xD00000000000004CLL;
      String.append(_:)(v67);
      type metadata accessor for CRLAssetReferrerIdentifier(0);
      _print_unlocked<A, B>(_:_:)();
      v68 = v89;
      v69 = v90;
      sub_10089C7D0();
      swift_allocError();
      *v70 = v60;
      *(v70 + 8) = v68;
      *(v70 + 16) = v69;
      swift_willThrow();
      v71 = *(*(v59 + 16) + 32);
      v72 = v85;
      *v85 = v71;
      v73 = v87;
      v82(v72, v81, v87);
      v74 = v71;
      LOBYTE(v69) = _dispatchPreconditionTest(_:)();
      v84(v72, v73);
      if ((v69 & 1) == 0)
      {
        goto LABEL_31;
      }

      swift_beginAccess();
      v75 = *(v59 + 24);
      if (v75)
      {
        sqlite3_finalize(v75);
        *(v59 + 24) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100DF52B8(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = sub_1005B981C(&qword_1019FB750);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = &v69 - v15;
  v90 = type metadata accessor for UUID();
  v16 = *(v90 - 8);
  v17 = __chkstk_darwin(v90);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v80 = &v69 - v21;
  v81 = v22;
  __chkstk_darwin(v20);
  v82 = &v69 - v23;
  if (v10)
  {
    v24 = a5 + 56;
    v25 = 1 << *(a5 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(a5 + 56);
    v74 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManagerLock;
    v84 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager;
    v70 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    v28 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v29 = (v25 + 63) >> 6;
    v87 = v16 + 32;
    v88 = v16 + 16;
    v71 = (v16 + 8);

    v31 = 0;
    v69 = xmmword_1014B6240;
    v79 = v5;
    v83 = v16;
    v77 = v14;
    v75 = a5 + 56;
    v73 = v28;
    v72 = v29;
    v78 = a5;
    v76 = v19;
    while (v27)
    {
LABEL_11:
      v33 = *(a5 + 48) + *(v16 + 72) * (__clz(__rbit64(v27)) | (v31 << 6));
      v34 = v80;
      v35 = v90;
      v85 = *(v16 + 16);
      v85(v80, v33, v90);
      v86 = *(v16 + 32);
      v86(v19, v34, v35);
      v36 = *&v5[v74];
      os_unfair_lock_lock(*(v36 + 16));
      if (*&v5[v84])
      {
        v37 = *&v5[v84];
      }

      else
      {
        v38 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v39 = v5;
        v40 = *&v5[v70];
        os_unfair_lock_lock(*(v40 + 16));
        v41 = *&v5[v28];
        if (v41)
        {
          v42 = *&v5[v28];
        }

        else
        {
          v43 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
          v44 = v5;
          v45 = sub_10001F1A0(v44);

          v46 = *&v39[v28];
          *&v39[v28] = v45;
          v42 = v45;

          v41 = 0;
        }

        v47 = *(v40 + 16);
        v48 = v41;
        os_unfair_lock_unlock(v47);
        type metadata accessor for CRLAssetDownloadManager();
        v37 = swift_allocObject();
        swift_defaultActor_initialize();
        *(v37 + 224) = 0u;
        *(v37 + 240) = 0u;
        *(v37 + 192) = 0u;
        *(v37 + 208) = 0u;
        *(v37 + 176) = 0u;
        *(v37 + 256) = 0;
        *(v37 + 264) = _swiftEmptySetSingleton;
        *(v37 + 272) = _swiftEmptyDictionarySingleton;
        *(v37 + 112) = v42;
        *(v37 + 120) = sub_100EA25D0;
        *(v37 + 128) = v38;
        *(v37 + 136) = sub_10072CF0C;
        *(v37 + 144) = 0;
        *(v37 + 152) = 3;
        *(v37 + 160) = v69;
        *&v39[v84] = v37;

        v16 = v83;
      }

      v49 = *(v36 + 16);

      os_unfair_lock_unlock(v49);
      v50 = type metadata accessor for TaskPriority();
      v51 = *(v50 - 8);
      v52 = v89;
      (*(v51 + 56))(v89, 1, 1, v50);
      v53 = v82;
      v54 = v19;
      v55 = v90;
      v85(v82, v54, v90);
      v56 = (*(v16 + 80) + 40) & ~*(v16 + 80);
      v57 = swift_allocObject();
      *(v57 + 2) = 0;
      *(v57 + 3) = 0;
      *(v57 + 4) = v37;
      v86(&v57[v56], v53, v55);
      v58 = v77;
      sub_10000BE14(v52, v77, &qword_1019FB750);
      LODWORD(v56) = (*(v51 + 48))(v58, 1, v50);

      if (v56 == 1)
      {
        sub_10000CAAC(v58, &qword_1019FB750);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v51 + 8))(v58, v50);
      }

      v59 = *(v57 + 2);
      swift_unknownObjectRetain();

      v28 = v73;
      if (v59)
      {
        swift_getObjectType();
        v60 = dispatch thunk of Actor.unownedExecutor.getter();
        v62 = v61;
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      sub_10000CAAC(v89, &qword_1019FB750);
      v63 = swift_allocObject();
      *(v63 + 16) = &unk_1014B67C0;
      *(v63 + 24) = v57;
      if (v62 | v60)
      {
        v91 = 0;
        v92 = 0;
        v93 = v60;
        v94 = v62;
      }

      a5 = v78;
      v5 = v79;
      v16 = v83;
      v27 &= v27 - 1;
      swift_task_create();

      v19 = v76;
      result = (*v71)(v76, v90);
      v24 = v75;
      v29 = v72;
    }

    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
      }

      v27 = *(v24 + 8 * v32);
      ++v31;
      if (v27)
      {
        v31 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v64 = sub_100DF6D54(a3, a4, 0);

    v65 = sub_100DCAE8C(v64);
    if (*(v65 + 16))
    {
      v66 = v65;
      v67 = v82;
      v68 = v90;
      (*(v16 + 16))(v82, a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v90);
      sub_10069A48C(v66, v67, a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier);

      return (*(v16 + 8))(v67, v68);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100DF5A90(uint64_t a1)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = &v165 - v5;
  v7 = type metadata accessor for UUID();
  v171 = *(v7 - 8);
  __chkstk_darwin(v7);
  v170 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v174 = v1;
  v13 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  v14 = *(v10 + 104);
  v176 = enum case for DispatchPredicate.onQueue(_:);
  v177 = v14;
  v178 = v10 + 104;
  v14(v12);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v10 + 8);
  v179 = v12;
  v180 = v10 + 8;
  v181 = v9;
  v17 = v9;
  v18 = v16;
  v16(v12, v17);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_4;
  }

  v169 = v6;
  v168 = (a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
  v19 = v2;
  v20 = v18;
  if (*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues) != 11)
  {
    goto LABEL_5;
  }

  v166 = v2;
  v172 = v7;
  v173 = a1;
  v175 = v18;
  v165 = objc_opt_self();
  LODWORD(v6) = [v165 _atomicIncrementAssertCount];
  v187 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v187);
  StaticString.description.getter();
  v167 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v21 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a1 = v23;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_31;
  }

LABEL_4:
  v24 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v26 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v26;
  v27 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v27;
  v28 = v167;
  *(inited + 72) = v167;
  *(inited + 136) = &type metadata for String;
  v29 = sub_1000053B0();
  *(inited + 112) = v18;
  *(inited + 120) = a1;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v29;
  *(inited + 152) = 3679;
  v30 = v187;
  *(inited + 216) = v26;
  *(inited + 224) = v27;
  *(inited + 192) = v30;
  v31 = v28;
  v32 = v30;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v34, "Attempted to save FreehandDrawingShapeItem (BoardItem_11) to SQL.", 65, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v35[4] = 0;
  v35[5] = 0;
  v36 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  v40 = v165;
  [v165 handleFailureInFunction:v37 file:v38 lineNumber:3679 isFatal:0 format:v39 args:v36];

  [v40 logFullBacktrace];
  v20 = v175;
  v7 = v172;
  a1 = v173;
  v19 = v166;
LABEL_5:
  v187 = 0;
  v188 = 0xE000000000000000;
  _StringGuts.grow(_:)(144);
  v41._countAndFlagsBits = 0x4920545245534E49;
  v41._object = 0xEC000000204F544ELL;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x74695F6472616F62;
  v42._object = 0xEB00000000736D65;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 10272;
  v43._object = 0xE200000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x6975755F6D657469;
  v44._object = 0xE900000000000064;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 8236;
  v45._object = 0xE200000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x755F746E65726170;
  v46._object = 0xEB00000000646975;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 8236;
  v47._object = 0xE200000000000000;
  String.append(_:)(v47);
  v48._object = 0x8000000101585360;
  v48._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 8236;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x7079745F6D657469;
  v50._object = 0xE900000000000065;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 8236;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x6D6574695F627573;
  v52._object = 0xED0000657079745FLL;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 8236;
  v53._object = 0xE200000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v54._object = 0xEB00000000617461;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 8236;
  v55._object = 0xE200000000000000;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 0x6369666963657073;
  v56._object = 0xED0000617461645FLL;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 8236;
  v57._object = 0xE200000000000000;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 0x5F656C7573706163;
  v58._object = 0xEC00000061746164;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 8236;
  v59._object = 0xE200000000000000;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 0x6E6F7473626D6F74;
  v60._object = 0xEA00000000006465;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 8236;
  v61._object = 0xE200000000000000;
  String.append(_:)(v61);
  v62._object = 0x80000001015A33D0;
  v62._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 8236;
  v63._object = 0xE200000000000000;
  String.append(_:)(v63);
  v64._countAndFlagsBits = 0x7461645F636E7973;
  v64._object = 0xE900000000000061;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 8236;
  v65._object = 0xE200000000000000;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 0xD000000000000019;
  v66._object = 0x80000001015A37B0;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 8236;
  v67._object = 0xE200000000000000;
  String.append(_:)(v67);
  v68._countAndFlagsBits = 0xD000000000000014;
  v68._object = 0x80000001015A3590;
  String.append(_:)(v68);
  v69._countAndFlagsBits = 8236;
  v69._object = 0xE200000000000000;
  String.append(_:)(v69);
  v70._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v70._object = 0xEE00736E6F697470;
  String.append(_:)(v70);
  v71._countAndFlagsBits = 8236;
  v71._object = 0xE200000000000000;
  String.append(_:)(v71);
  v72._countAndFlagsBits = 0xD00000000000002DLL;
  v72._object = 0x80000001015A3760;
  String.append(_:)(v72);
  v73._countAndFlagsBits = 8236;
  v73._object = 0xE200000000000000;
  String.append(_:)(v73);
  v74._countAndFlagsBits = 0xD000000000000026;
  v74._object = 0x80000001015A33F0;
  String.append(_:)(v74);
  v75._countAndFlagsBits = 8236;
  v75._object = 0xE200000000000000;
  String.append(_:)(v75);
  v76._countAndFlagsBits = 0xD00000000000001BLL;
  v76._object = 0x80000001015A3790;
  String.append(_:)(v76);
  v77._countAndFlagsBits = 0xD00000000000003ELL;
  v77._object = 0x80000001015A4AA0;
  String.append(_:)(v77);
  v78 = v187;
  v79 = v188;
  v80 = *(v174 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v82 = sub_10001CC04(v81, v78, v79);

  if (v19)
  {
    return result;
  }

  v167 = v80;
  v84 = v170;
  v85 = v171;
  v86 = *(v171 + 16);
  v173 = a1;
  v86(v170, a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v7);
  v87 = UUID.crl_data()();
  v172 = v7;
  v89 = v88;
  v174 = v82;
  v175 = v20;
  v90 = *(*(v82 + 16) + 32);
  v91 = v179;
  *v179 = v90;
  v92 = v181;
  v177(v91, v176, v181);
  v93 = v90;
  LOBYTE(v90) = _dispatchPreconditionTest(_:)();
  v175(v91, v92);
  if ((v90 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v94 = v174;

  sub_100DCCAB4(v87, v89, v94, 1);
  sub_10002640C(v87, v89);
  (*(v85 + 8))(v84, v172);
  v95 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  v96 = v173;
  swift_beginAccess();
  v97 = v169;
  sub_10000BE14(v96 + v95, v169, &qword_1019F6990);
  sub_10089BD40(v97, 2);
  sub_10000CAAC(v97, &qword_1019F6990);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v98 = sub_10084DAE4();
  v100 = v99;
  v101 = v98;
  v102 = v174;
  v103 = *(*(v174 + 16) + 32);
  v104 = v179;
  *v179 = v103;
  v105 = v181;
  v177(v104, v176, v181);
  v106 = v103;
  LOBYTE(v103) = _dispatchPreconditionTest(_:)();
  v107 = v104;
  v108 = v175;
  v175(v107, v105);
  if ((v103 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_100DCCAB4(v101, v100, v102, 3);
  sub_10002640C(v101, v100);
  v109 = v168;
  v110 = *v168;
  if (*v168 < 0xFFFFFFFF80000000)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v110 > 0x7FFFFFFF)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v111 = *(*(v102 + 16) + 32);
  v112 = v179;
  *v179 = v111;
  v113 = v181;
  v177(v112, v176, v181);
  v114 = v111;
  LOBYTE(v111) = _dispatchPreconditionTest(_:)();
  v108(v112, v113);
  if ((v111 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v115 = (v102 + 24);
  swift_beginAccess();
  sqlite3_bind_int(*(v102 + 24), 4, v110);
  sub_10089C088(v109[1], *(v109 + 16), 5);
  v116 = v173;
  v117 = *(v173 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v118 = *(v173 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  sub_100024E84(v117, v118);
  sub_10089BB64(v117, v118, 6);
  sub_100025870(v117, v118);
  v119 = *(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v120 = *(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  sub_100024E84(v119, v120);
  sub_10089BB64(v119, v120, 7);
  sub_100025870(v119, v120);
  v121 = *(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v122 = *(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
  sub_100024E84(v121, v122);
  sub_10089BB64(v121, v122, 8);
  sub_100025870(v121, v122);
  sub_10089B9A4(*(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone), 9);
  sub_100034254(*(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges), 10);
  v123 = *(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v124 = *(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  sub_100024E84(v123, v124);
  sub_10089BB64(v123, v124, 11);
  sub_100025870(v123, v124);
  v125 = *(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v126 = *(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  sub_100024E84(v125, v126);
  sub_10089BB64(v125, v126, 12);
  sub_100025870(v125, v126);
  v127 = v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  sub_100034254(*(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions), 13);
  sub_100034254(*(v116 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions), 14);
  sub_100034254(*(v127 + 8), 15);
  sub_100034254(*(v127 + 16), 16);
  if (*(v127 + 32))
  {
    v128 = *(*(v102 + 16) + 32);
    v129 = v179;
    *v179 = v128;
    v130 = v181;
    v177(v129, v176, v181);
    v131 = v128;
    LOBYTE(v128) = _dispatchPreconditionTest(_:)();
    v108(v129, v130);
    if ((v128 & 1) == 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    sqlite3_bind_null(*v115, 17);
  }

  else
  {
    sub_100034254(*(v127 + 24), 17);
  }

  v132 = *(*(v102 + 16) + 32);
  v133 = v179;
  *v179 = v132;
  v134 = v181;
  v177(v133, v176, v181);
  v135 = v132;
  LOBYTE(v132) = _dispatchPreconditionTest(_:)();
  v108(v133, v134);
  if ((v132 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v136 = *(v102 + 16);

  v137 = sub_10001CEC4(v136, v102);

  if (v137 != 101)
  {
LABEL_23:
    v184 = 0xD00000000000001BLL;
    v185 = 0x80000001015A4AE0;
    if (sqlite3_errstr(v137))
    {
      v142 = v137;
      v143._countAndFlagsBits = String.init(cString:)();
      v186._countAndFlagsBits = 8250;
      v186._object = 0xE200000000000000;
      String.append(_:)(v143);

      String.append(_:)(v186);

      v144 = v167;
      v145 = *(v167 + 4);
      v146 = v179;
      *v179 = v145;
      v147 = v181;
      v177(v146, v176, v181);
      v148 = v145;
      LOBYTE(v145) = _dispatchPreconditionTest(_:)();
      v108(v146, v147);
      if ((v145 & 1) == 0)
      {
        goto LABEL_40;
      }

      swift_beginAccess();
      v149 = sqlite3_extended_errcode(v144[2]);
      v137 = v142;
      if (sqlite3_errstr(v149))
      {
        v183._countAndFlagsBits = 11552;
        v183._object = 0xE200000000000000;
        v182 = v149;
        v150._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v150);

        v151._countAndFlagsBits = 8237;
        v151._object = 0xE200000000000000;
        String.append(_:)(v151);
        countAndFlagsBits = v183._countAndFlagsBits;
        object = v183._object;
        v154 = String.init(cString:)();
        v156 = v155;
        v183._countAndFlagsBits = countAndFlagsBits;
        v183._object = object;

        v157._countAndFlagsBits = v154;
        v157._object = v156;
        String.append(_:)(v157);

        String.append(_:)(v183);
      }
    }

    v158 = v184;
    v159 = v185;
    sub_10089C7D0();
    swift_allocError();
    *v160 = v137;
    *(v160 + 8) = v158;
    *(v160 + 16) = v159;
    swift_willThrow();
    v161 = *(*(v102 + 16) + 32);
    v162 = v179;
    *v179 = v161;
    v163 = v181;
    v177(v162, v176, v181);
    v164 = v161;
    LOBYTE(v161) = _dispatchPreconditionTest(_:)();
    v108(v162, v163);
    if (v161)
    {
      goto LABEL_28;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  v138 = *(*(v102 + 16) + 32);
  v139 = v179;
  *v179 = v138;
  v140 = v181;
  v177(v139, v176, v181);
  v141 = v138;
  LOBYTE(v138) = _dispatchPreconditionTest(_:)();
  v108(v139, v140);
  if ((v138 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  if (*v115)
  {
    sqlite3_finalize(*v115);
    *v115 = 0;
  }
}

uint64_t sub_100DF6D54(uint64_t a1, uint64_t a2, int a3)
{
  v214 = a3;
  v253 = a1;
  v5 = sub_1005B981C(&qword_101A21DF8);
  __chkstk_darwin(v5 - 8);
  v226 = &v204 - v6;
  v220 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v220);
  v219 = &v204 - v7;
  v248 = type metadata accessor for UUID();
  v8 = *(v248 - 8);
  v9 = __chkstk_darwin(v248);
  v230 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v204 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v204 - v15;
  v17 = __chkstk_darwin(v14);
  v222 = &v204 - v18;
  v19 = __chkstk_darwin(v17);
  v216 = &v204 - v20;
  v21 = __chkstk_darwin(v19);
  v227 = &v204 - v22;
  v23 = __chkstk_darwin(v21);
  v233 = &v204 - v24;
  __chkstk_darwin(v23);
  v237 = &v204 - v25;
  v225 = sub_1005B981C(&qword_1019F6990);
  v250 = *(v225 - 8);
  v26 = __chkstk_darwin(v225);
  v28 = &v204 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v215 = &v204 - v30;
  v31 = __chkstk_darwin(v29);
  v211 = &v204 - v32;
  v33 = __chkstk_darwin(v31);
  v212 = &v204 - v34;
  v35 = __chkstk_darwin(v33);
  v217 = &v204 - v36;
  v37 = __chkstk_darwin(v35);
  v223 = &v204 - v38;
  v39 = __chkstk_darwin(v37);
  v229 = &v204 - v40;
  v41 = __chkstk_darwin(v39);
  v239 = &v204 - v42;
  v43 = __chkstk_darwin(v41);
  v228 = &v204 - v44;
  __chkstk_darwin(v43);
  v234 = &v204 - v45;
  v247 = sub_1005B981C(&qword_1019F6998);
  v46 = __chkstk_darwin(v247);
  v246 = (&v204 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v46);
  v252 = (&v204 - v48);
  v49 = type metadata accessor for DispatchPredicate();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = (&v204 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v52 = v53;
  (*(v50 + 104))(v52, enum case for DispatchPredicate.onQueue(_:), v49);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  (*(v50 + 8))(v52, v49);
  if ((v53 & 1) == 0)
  {
    goto LABEL_108;
  }

  v213 = v16;
  v240 = v28;
  v231 = v13;
  v55 = a2 + 64;
  v56 = 1 << *(a2 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(a2 + 64);
  v59 = (v56 + 63) >> 6;
  v251 = (v8 + 48);
  v244 = (v8 + 32);
  v235 = (v8 + 16);
  v221 = (v8 + 56);
  v242 = (v8 + 8);
  v232 = v8;
  v224 = v8 + 40;

  v60 = 0;
  v61 = &unk_10146D2F0;
  v238 = _swiftEmptyDictionarySingleton;
  v236 = _swiftEmptyDictionarySingleton;
  v243 = a2;
  v62 = v248;
  v241 = v59;
  if (v58)
  {
    while (1)
    {
      v63 = v253;
LABEL_10:
      v65 = __clz(__rbit64(v58)) | (v60 << 6);
      v66 = *(a2 + 56);
      v67 = (*(a2 + 48) + 16 * v65);
      v68 = *v67;
      v69 = v67[1];
      v70 = *(v250 + 72);
      v71 = v252;
      v245 = *(v247 + 48);
      sub_10000BE14(v66 + v70 * v65, v252 + v245, &qword_1019F6990);
      *v71 = v68;
      v71[1] = v69;
      v72 = *(v63 + 16);
      v249 = v69;
      v73 = v68;

      if (!v72)
      {
        goto LABEL_19;
      }

      v74 = sub_10000BE7C(v68, v249);
      if ((v75 & 1) == 0)
      {
        goto LABEL_19;
      }

      v76 = *(v253 + 56) + v74 * v70;
      v77 = v228;
      v78 = v61;
      sub_10000BE14(v76, v228, &qword_1019F6990);
      v79 = v77;
      v80 = v234;
      sub_10003DFF8(v79, v234, &qword_1019F6990);
      v81 = v229;
      sub_10000BE14(v80, v229, &qword_1019F6990);
      v82 = *v251;
      if ((*v251)(v81, 1, v62) == 1)
      {
        sub_10000CAAC(v80, &qword_1019F6990);
        v83 = v81;
LABEL_18:
        sub_10000CAAC(v83, &qword_1019F6990);
        v61 = v78;
LABEL_19:
        v88 = v239;
        sub_10000BE14(v252 + v245, v239, &qword_1019F6990);
        if ((*v251)(v88, 1, v62) != 1)
        {
          v90 = *v244;
          v91 = v237;
          (*v244)(v237, v88, v62);
          if (qword_1019F2878 != -1)
          {
            swift_once();
          }

          sub_1005EB3DC(v62, qword_101AD8F08);
          sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            (*v242)(v91, v62);
            a2 = v243;
          }

          else
          {
            (*v235)(v233, v91, v62);
            v92 = v249;

            v93 = v238;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v254 = v93;
            v96 = sub_10000BE7C(v73, v92);
            v97 = v93[2];
            v98 = (v95 & 1) == 0;
            v99 = v97 + v98;
            if (__OFADD__(v97, v98))
            {
              goto LABEL_109;
            }

            v100 = v95;
            if (v93[3] >= v99)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100AABED8();
              }
            }

            else
            {
              sub_100A96648(v99, isUniquelyReferenced_nonNull_native);
              v101 = sub_10000BE7C(v73, v249);
              if ((v100 & 1) != (v102 & 1))
              {
                goto LABEL_115;
              }

              v96 = v101;
            }

            v103 = v237;
            v104 = v254;
            v238 = v254;
            if (v100)
            {
              v62 = v248;
              (*(v232 + 40))(v254[7] + *(v232 + 72) * v96, v233, v248);
            }

            else
            {
              v254[(v96 >> 6) + 8] |= 1 << v96;
              v105 = (v104[6] + 16 * v96);
              v62 = v248;
              v106 = v249;
              *v105 = v73;
              v105[1] = v106;
              v90((v104[7] + *(v232 + 72) * v96), v233, v62);
              v107 = v104[2];
              v108 = __OFADD__(v107, 1);
              v109 = v107 + 1;
              if (v108)
              {
                goto LABEL_111;
              }

              v104[2] = v109;
            }

            (*v242)(v103, v62);
            a2 = v243;
            v61 = &unk_10146D2F0;
          }

          goto LABEL_37;
        }

        goto LABEL_20;
      }

      v218 = v82;
      v84 = *v244;
      v85 = v227;
      (*v244)(v227, v81, v62);
      if (qword_1019F2878 != -1)
      {
        swift_once();
      }

      v86 = sub_1005EB3DC(v62, qword_101AD8F08);
      v87 = sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*v242)(v85, v62);
        v83 = v234;
        v78 = &unk_10146D2F0;
        goto LABEL_18;
      }

      v207 = v87;
      v206 = v86;
      v210 = v84;
      v110 = v223;
      v208 = *v235;
      v208(v223, v85, v62);
      v205 = *v221;
      v205(v110, 0, 1, v62);
      v111 = *(v220 + 48);
      v112 = v219;
      sub_10000BE14(v110, v219, &qword_1019F6990);
      v209 = v111;
      sub_10000BE14(v252 + v245, v112 + v111, &qword_1019F6990);
      v113 = v218;
      if (v218(v112, 1, v62) == 1)
      {
        sub_10000CAAC(v110, &qword_1019F6990);
        v114 = v113(v112 + v209, 1, v62);
        v115 = v227;
        v116 = v210;
        if (v114 == 1)
        {
          sub_10000CAAC(v112, &qword_1019F6990);
          v117 = v234;
LABEL_62:
          if (v214)
          {
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v143 = static OS_os_log.boardStore;
            v144 = static os_log_type_t.default.getter();
            sub_100005404(v143, &_mh_execute_header, v144, "Should deleteAllExistingReferencesFirst, so we need to add the newAssetUUID back into insert if it equals oldAssetUUID", 118, 2, _swiftEmptyArrayStorage);
            v145 = v212;
            v61 = &unk_10146D2F0;
            sub_10000BE14(v252 + v245, v212, &qword_1019F6990);
            if (v218(v145, 1, v62) == 1)
            {
              v146 = v249;

              sub_10000CAAC(v145, &qword_1019F6990);
              v147 = v146;
              v148 = v238;
              v149 = sub_10000BE7C(v73, v147);
              v150 = v211;
              if (v151)
              {
                v152 = v149;
                v153 = swift_isUniquelyReferenced_nonNull_native();
                v254 = v148;
                if (!v153)
                {
                  sub_100AABED8();
                  v148 = v254;
                }

                v154 = v248;
                v210(v150, *(v148 + 56) + *(v232 + 72) * v152, v248);
                v238 = v148;
                sub_100BD1308(v152, v148);
                v155 = 0;
              }

              else
              {
                v155 = 1;
                v154 = v248;
              }

              v205(v150, v155, 1, v154);

              sub_10000CAAC(v150, &qword_1019F6990);
              v62 = v154;
            }

            else
            {
              v210(v216, v145, v62);
              v156 = v249;

              v157 = v238;
              v158 = swift_isUniquelyReferenced_nonNull_native();
              v254 = v157;
              v159 = v227;
              sub_100AA0B88(v216, v73, v156, v158);
              v115 = v159;

              v238 = v254;
            }

            v59 = v241;
            (*v242)(v115, v62);
            sub_10000CAAC(v234, &qword_1019F6990);
            a2 = v243;
            goto LABEL_38;
          }

          (*v242)(v115, v62);
          v89 = v117;
          v61 = &unk_10146D2F0;
          goto LABEL_21;
        }
      }

      else
      {
        v118 = v217;
        sub_10000BE14(v112, v217, &qword_1019F6990);
        if (v113(v112 + v209, 1, v62) != 1)
        {
          v140 = v216;
          v210(v216, v112 + v209, v62);
          v141 = dispatch thunk of static Equatable.== infix(_:_:)();
          v142 = *v242;
          (*v242)(v140, v248);
          sub_10000CAAC(v223, &qword_1019F6990);
          v142(v217, v248);
          v62 = v248;
          v116 = v210;
          sub_10000CAAC(v112, &qword_1019F6990);
          v115 = v227;
          v117 = v234;
          if (v141)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        sub_10000CAAC(v223, &qword_1019F6990);
        (*v242)(v118, v62);
        v115 = v227;
        v116 = v210;
      }

      sub_10000CAAC(v112, &unk_101A0AFE0);
LABEL_46:
      v208(v222, v115, v62);
      v119 = v249;

      v120 = v236;
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v254 = v120;
      v122 = sub_10000BE7C(v73, v119);
      v124 = v120[2];
      v125 = (v123 & 1) == 0;
      v108 = __OFADD__(v124, v125);
      v126 = v124 + v125;
      if (v108)
      {
        goto LABEL_113;
      }

      v127 = v123;
      if (v120[3] >= v126)
      {
        if ((v121 & 1) == 0)
        {
          v160 = v122;
          sub_100AABED8();
          v122 = v160;
        }
      }

      else
      {
        sub_100A96648(v126, v121);
        v122 = sub_10000BE7C(v73, v249);
        if ((v127 & 1) != (v128 & 1))
        {
          goto LABEL_115;
        }
      }

      v62 = v248;
      v129 = v254;
      v236 = v254;
      if (v127)
      {
        (*(v232 + 40))(v254[7] + *(v232 + 72) * v122, v222, v248);
      }

      else
      {
        v254[(v122 >> 6) + 8] |= 1 << v122;
        v130 = (v129[6] + 16 * v122);
        v131 = v249;
        *v130 = v73;
        v130[1] = v131;
        v116((v129[7] + *(v232 + 72) * v122), v222, v62);
        v132 = v129[2];
        v108 = __OFADD__(v132, 1);
        v133 = v132 + 1;
        if (v108)
        {
          goto LABEL_114;
        }

        v129[2] = v133;
      }

      v88 = v215;
      v61 = &unk_10146D2F0;
      sub_10000BE14(v252 + v245, v215, &qword_1019F6990);
      if (v218(v88, 1, v62) != 1)
      {
        v134 = v116;
        v135 = v213;
        v134(v213, v88, v62);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          v208(v216, v135, v62);
          v136 = v249;

          v137 = v238;
          v138 = swift_isUniquelyReferenced_nonNull_native();
          v254 = v137;
          sub_100AA0B88(v216, v73, v136, v138);

          v238 = v254;
        }

        v139 = *v242;
        (*v242)(v135, v62);
        v139(v227, v62);
        v89 = v234;
        goto LABEL_21;
      }

      (*v242)(v227, v62);
      sub_10000CAAC(v234, &qword_1019F6990);
LABEL_20:
      v89 = v88;
LABEL_21:
      sub_10000CAAC(v89, &qword_1019F6990);
      a2 = v243;
LABEL_37:
      v59 = v241;
LABEL_38:
      v58 &= v58 - 1;
      sub_10000CAAC(v252, &qword_1019F6998);
      if (!v58)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v64 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v64 >= v59)
    {
      break;
    }

    v58 = *(v55 + 8 * v64);
    ++v60;
    if (v58)
    {
      v63 = v253;
      v60 = v64;
      goto LABEL_10;
    }
  }

  v161 = v253 + 64;
  v162 = 1 << *(v253 + 32);
  v163 = -1;
  if (v162 < 64)
  {
    v163 = ~(-1 << v162);
  }

  v164 = v163 & *(v253 + 64);
  v165 = (v162 + 63) >> 6;
  v241 = (v250 + 56);

  v166 = 0;
  v167 = v231;
  v249 = v165;
  while (v164)
  {
LABEL_85:
    v169 = __clz(__rbit64(v164)) | (v166 << 6);
    v170 = *(v253 + 56);
    v171 = (*(v253 + 48) + 16 * v169);
    v172 = *v171;
    v173 = v171[1];
    v245 = *(v250 + 72);
    v174 = v246;
    v175 = *(v247 + 48);
    sub_10000BE14(v170 + v245 * v169, v246 + v175, &qword_1019F6990);
    v252 = v172;
    *v174 = v172;
    v174[1] = v173;
    v176 = v174 + v175;
    v177 = v240;
    sub_10000BE14(v176, v240, &qword_1019F6990);
    v178 = v248;
    if ((*v251)(v177, 1, v248) == 1)
    {

      v179 = v177;
      v180 = &qword_1019F6990;
LABEL_87:
      sub_10000CAAC(v179, v180);
      goto LABEL_79;
    }

    v181 = *v244;
    (*v244)(v167, v177, v178);
    v182 = qword_1019F2878;

    if (v182 != -1)
    {
      swift_once();
    }

    sub_1005EB3DC(v178, qword_101AD8F08);
    sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      (*v242)(v167, v178);
      goto LABEL_79;
    }

    v183 = v243;
    if (*(v243 + 16))
    {
      v184 = sub_10000BE7C(v252, v173);
      if (v185)
      {
        v186 = v226;
        sub_10000BE14(*(v183 + 56) + v184 * v245, v226, &qword_1019F6990);
        (*v241)(v186, 0, 1, v225);
        (*v242)(v167, v248);
        v179 = v186;
        v180 = &qword_101A21DF8;
        goto LABEL_87;
      }
    }

    v187 = v226;
    (*v241)(v226, 1, 1, v225);
    sub_10000CAAC(v187, &qword_101A21DF8);
    (*v235)(v230, v167, v248);

    v188 = v236;
    v189 = swift_isUniquelyReferenced_nonNull_native();
    v254 = v188;
    v191 = sub_10000BE7C(v252, v173);
    v192 = v188[2];
    v193 = (v190 & 1) == 0;
    v194 = v192 + v193;
    if (__OFADD__(v192, v193))
    {
      goto LABEL_110;
    }

    v195 = v190;
    if (v188[3] >= v194)
    {
      if ((v189 & 1) == 0)
      {
        sub_100AABED8();
      }
    }

    else
    {
      sub_100A96648(v194, v189);
      v196 = sub_10000BE7C(v252, v173);
      if ((v195 & 1) != (v197 & 1))
      {
        goto LABEL_115;
      }

      v191 = v196;
    }

    v198 = v254;
    v236 = v254;
    if (v195)
    {
      v199 = v248;
      (*(v232 + 40))(v254[7] + *(v232 + 72) * v191, v230, v248);
    }

    else
    {
      v254[(v191 >> 6) + 8] |= 1 << v191;
      v200 = (v198[6] + 16 * v191);
      *v200 = v252;
      v200[1] = v173;
      v181((v198[7] + *(v232 + 72) * v191), v230, v248);
      v201 = v198[2];
      v108 = __OFADD__(v201, 1);
      v202 = v201 + 1;
      if (v108)
      {
        goto LABEL_112;
      }

      v198[2] = v202;
      v199 = v248;
    }

    v167 = v231;
    (*v242)(v231, v199);
LABEL_79:
    v165 = v249;
    v164 &= v164 - 1;
    sub_10000CAAC(v246, &qword_1019F6998);
  }

  while (1)
  {
    v168 = v166 + 1;
    if (__OFADD__(v166, 1))
    {
      break;
    }

    if (v168 >= v165)
    {

      return v238;
    }

    v164 = *(v161 + 8 * v168);
    ++v166;
    if (v164)
    {
      v166 = v168;
      goto LABEL_85;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100DF8718(unint64_t a1)
{
  v2 = v1;
  v75 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v66 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v13 = v14;
  v15 = *(v11 + 104);
  v72 = enum case for DispatchPredicate.onQueue(_:);
  v73 = v11 + 104;
  v74 = v15;
  v15(v13);
  v16 = v14;
  v17 = _dispatchPreconditionTest(_:)();
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v69 = v10;
  v71 = v19;
  v19(v13, v10);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v70 = v13;
  v20 = v78;
  result = sub_100E34410(v75);
  if (v20)
  {
    return result;
  }

  v17 = v2;
  v68 = 0;
  v78 = result;
  if (result >> 62)
  {
LABEL_18:
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_19:

    v24 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v22 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_19;
  }

LABEL_5:
  v79 = _swiftEmptyArrayStorage;
  sub_100776524(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v66 = v18;
  v67 = v17;
  v23 = v78;
  v24 = v79;
  if ((v78 & 0xC000000000000001) != 0)
  {
    v25 = 0;
    v77 = (v4 + 32);
    do
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      (*(v4 + 16))(v9, v26 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v3);
      swift_unknownObjectRelease();
      v79 = v24;
      v28 = v24[2];
      v27 = v24[3];
      if (v28 >= v27 >> 1)
      {
        sub_100776524(v27 > 1, v28 + 1, 1);
        v24 = v79;
      }

      ++v25;
      v24[2] = v28 + 1;
      (*(v4 + 32))(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v9, v3);
    }

    while (v22 != v25);
  }

  else
  {
    v29 = *(v4 + 16);
    v76 = v4 + 32;
    v77 = v29;
    v30 = 32;
    do
    {
      v77(v7, *(v23 + v30) + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v3);
      v79 = v24;
      v32 = v24[2];
      v31 = v24[3];
      if (v32 >= v31 >> 1)
      {
        sub_100776524(v31 > 1, v32 + 1, 1);
        v24 = v79;
      }

      v24[2] = v32 + 1;
      (*(v4 + 32))(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v7, v3);
      v30 += 8;
      --v22;
      v23 = v78;
    }

    while (v22);
  }

  v17 = v67;
LABEL_20:
  v33 = sub_100E93A84(v24);

  v34 = v74;
  if (!v33[2])
  {
  }

  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v36 = v68;
  v37 = sub_10001CC04(v35, 0xD00000000000003CLL, 0x80000001015A4450);

  if (v36)
  {
  }

  v67 = v17;
  v38 = sub_1005C6934();
  v78 = v39;
  v40 = v38;
  v41 = *(*(v37 + 16) + 32);
  v42 = v34;
  v44 = v69;
  v43 = v70;
  *v70 = v41;
  v42(v43, v72, v44);
  v45 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v46 = v71;
  v71(v43, v44);
  if ((v41 & 1) == 0)
  {
    goto LABEL_35;
  }

  v47 = v40;
  v48 = v40;
  v49 = v78;
  sub_100DCCAB4(v48, v78, v37, 1);
  sub_10002640C(v47, v49);
  v50 = *(*(v37 + 16) + 32);
  *v43 = v50;
  v74(v43, v72, v44);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  v46(v43, v44);
  if ((v50 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v52 = *(v37 + 16);

  v53 = sub_10001CEC4(v52, v37);

  if (v53 == 101)
  {
    sub_100E339A0(v33);
    v53 = v71;
    v43 = v74;
    goto LABEL_30;
  }

  v79 = 0;
  v80 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v54._object = 0x80000001015A4490;
  v54._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v54);
  type metadata accessor for CRLAssetReferrerIdentifier(0);
  _print_unlocked<A, B>(_:_:)();
  v55 = v79;
  v56 = v80;
  sub_10089C7D0();
  swift_allocError();
  *v57 = v53;
  *(v57 + 8) = v55;
  *(v57 + 16) = v56;
  swift_willThrow();
  v58 = *(*(v37 + 16) + 32);
  v59 = v70;
  *v70 = v58;
  v74(v59, v72, v44);
  v60 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v71(v59, v44);
  if ((v58 & 1) == 0)
  {
    __break(1u);
LABEL_30:

    v61 = *(*(v37 + 16) + 32);
    v63 = v69;
    v62 = v70;
    *v70 = v61;
    (v43)(v62, v72, v63);
    v64 = v61;
    LOBYTE(v61) = _dispatchPreconditionTest(_:)();
    v53(v62, v63);
    if (v61)
    {
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
  }

LABEL_31:
  swift_beginAccess();
  v65 = *(v37 + 24);
  if (v65)
  {
    sqlite3_finalize(v65);
    *(v37 + 24) = 0;
  }
}

void *sub_100DF8FA8(void (**a1)(unint64_t, void *), void *a2)
{
  v94 = a1;
  v93 = type metadata accessor for String.Encoding();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v12 = v7 + 104;
  v11 = *(v7 + 104);
  v95 = enum case for DispatchPredicate.onQueue(_:);
  v96 = v11;
  v11(v9);
  v13 = v10;
  v14 = _dispatchPreconditionTest(_:)();
  v17 = *(v7 + 8);
  v16 = v7 + 8;
  v15 = v17;
  result = (v17)(v9, v6);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    __break(1u);
    goto LABEL_35;
  }

  v19 = a2[2];
  if (v19)
  {
    result = sub_100E328FC(v94, a2);
    if (!v3)
    {
      if (result[2])
      {
        v84 = result;
        v87 = v12;
        v88 = v9;
        v89 = v6;
        v91 = v19;
        v100 = 0;
        v101 = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        v100 = 0xD000000000000058;
        v101 = 0x80000001015A47D0;
        v98 = sub_1000341B8(0x3F, 0xE100000000000000, v91);
        sub_1005B981C(&unk_1019F4D80);
        sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
        v20 = BidirectionalCollection<>.joined(separator:)();
        v22 = v21;

        v23._countAndFlagsBits = v20;
        v23._object = v22;
        String.append(_:)(v23);

        v24._countAndFlagsBits = 10537;
        v24._object = 0xE200000000000000;
        String.append(_:)(v24);
        v25 = v100;
        v26 = v101;
        type metadata accessor for SQLiteStatement();
        swift_initStackObject();

        v28 = sub_10001CC04(v27, v25, v26);

        v29 = sub_1005C6934();
        v83 = v30;
        v82 = v29;
        v31 = *(*(v28 + 16) + 32);
        v32 = v28;
        v33 = v88;
        v34 = v89;
        *v88 = v31;
        v96(v33, v95, v34);
        v35 = v31;
        v36 = _dispatchPreconditionTest(_:)();
        v86 = v15;
        v15(v33, v34);
        if (v36)
        {
          v37 = v32;

          v38 = v82;
          v39 = v83;
          sub_100DCCAB4(v82, v83, v32, 1);
          v81 = 0;
          sub_10002640C(v38, v39);
          swift_beginAccess();
          ++v90;
          v40 = a2 + 5;
          v41 = 2;
          v42 = 2147483646;
          v85 = v37;
          do
          {
            v43 = *(v40 - 1);
            v44 = *v40;
            v45 = *(*(v37 + 16) + 32);
            v46 = v88;
            *v88 = v45;
            v47 = v16;
            v48 = v89;
            v96(v46, v95, v89);

            v49 = v45;
            LOBYTE(v45) = _dispatchPreconditionTest(_:)();
            v50 = v48;
            v16 = v47;
            v86(v46, v50);
            if ((v45 & 1) == 0)
            {
              goto LABEL_33;
            }

            v98 = v43;
            v99 = v44;
            v51 = v92;
            static String.Encoding.utf8.getter();
            sub_100017CD8();
            v52 = StringProtocol.cString(using:)();
            (*v90)(v51, v93);

            if (!v42)
            {
              goto LABEL_34;
            }

            v37 = v85;
            v53 = *(v85 + 24);
            if (qword_1019F17C8 != -1)
            {
              v55 = *(v85 + 24);
              swift_once();
              v53 = v55;
            }

            if (v52)
            {
              v54 = (v52 + 32);
            }

            else
            {
              v54 = 0;
            }

            sqlite3_bind_text(v53, v41, v54, -1, qword_101AD69D0);

            ++v41;
            --v42;
            v40 += 2;
            --v91;
          }

          while (v91);
          v56 = *(*(v37 + 16) + 32);
          v57 = v37;
          v58 = v88;
          v59 = v89;
          *v88 = v56;
          v96(v58, v95, v59);
          v60 = v56;
          v61 = _dispatchPreconditionTest(_:)();
          v86(v58, v59);
          if (v61)
          {
            v62 = *(v57 + 16);

            v63 = v62;
            v64 = v81;
            LODWORD(v65) = sub_10001CEC4(v63, v57);

            if (v65 != 101)
            {
              goto LABEL_25;
            }

            sub_100E339A0(v84);
            if (v64)
            {

              v65 = v85;
              v66 = *(*(v85 + 16) + 32);
              *v58 = v66;
              v96(v58, v95, v59);
              v67 = v66;
              v68 = _dispatchPreconditionTest(_:)();
              v86(v58, v59);
              if ((v68 & 1) == 0)
              {
                __break(1u);
LABEL_25:

                v98 = 0;
                v99 = 0xE000000000000000;
                _StringGuts.grow(_:)(43);
                v69._object = 0x80000001015A4830;
                v69._countAndFlagsBits = 0xD000000000000029;
                String.append(_:)(v69);
                type metadata accessor for CRLAssetReferrerIdentifier(0);
                _print_unlocked<A, B>(_:_:)();
                v70 = v98;
                v71 = v99;
                sub_10089C7D0();
                swift_allocError();
                *v72 = v65;
                *(v72 + 8) = v70;
                *(v72 + 16) = v71;
                swift_willThrow();
                v73 = *(*(v57 + 16) + 32);
                *v58 = v73;
                v96(v58, v95, v59);
                v74 = v73;
                LOBYTE(v71) = _dispatchPreconditionTest(_:)();
                v86(v58, v59);
                if (v71)
                {
                  swift_beginAccess();
                  v75 = *(v57 + 24);
                  if (v75)
                  {
                    sqlite3_finalize(v75);
                    *(v57 + 24) = 0;
                  }
                }

                goto LABEL_37;
              }
            }

            else
            {

              v65 = v85;
              v76 = *(*(v85 + 16) + 32);
              *v58 = v76;
              v96(v58, v95, v59);
              v77 = v76;
              v78 = _dispatchPreconditionTest(_:)();
              v86(v58, v59);
              if ((v78 & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            swift_beginAccess();
            v79 = *(v65 + 24);
            if (v79)
            {
              sqlite3_finalize(v79);
              *(v65 + 24) = 0;
            }
          }

LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }
  }

  return result;
}

uint64_t sub_100DF9920(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v5 = v4;
  v204 = a3;
  v216 = a2;
  v217 = type metadata accessor for UUID();
  v203 = *(v217 - 8);
  v7 = __chkstk_darwin(v217);
  v199 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v198 = &v194 - v9;
  v212 = sub_1005B981C(&qword_101A22DF0);
  v10 = __chkstk_darwin(v212);
  v211 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v219 = (&v194 - v12);
  v13 = sub_1005B981C(&qword_101A21DE8);
  v14 = __chkstk_darwin(v13 - 8);
  v214 = &v194 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v213 = (&v194 - v16);
  v17 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v18 = __chkstk_darwin(v17);
  v205 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v194 - v20;
  v22 = sub_1005B981C(&unk_1019F52D0);
  v23 = __chkstk_darwin(v22 - 8);
  v207 = &v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v218 = &v194 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v29 = v30;
  v31 = *(v27 + 104);
  v221 = enum case for DispatchPredicate.onQueue(_:);
  v222 = v31;
  v223 = v27 + 104;
  v31(v29);
  v197 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v33 = *(v27 + 8);
  v32 = v27 + 8;
  v225 = v29;
  v226 = v26;
  v224 = v33;
  v33(v29, v26);
  if ((v30 & 1) == 0)
  {
    goto LABEL_79;
  }

  sub_10000C83C(a1, v21, type metadata accessor for CRLAssetReferrerIdentifier);
  v208 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v220 = a1;
  if (EnumCaseMultiPayload == 1)
  {
    v35 = sub_1005B981C(&qword_1019F4720);
    v36 = v218;
    sub_100025668(&v21[*(v35 + 48)], v218, type metadata accessor for CRLBoardIdentifier);
    v37 = type metadata accessor for CRLBoardIdentifier(0);
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    (*(v203 + 8))(v21, v217);
  }

  else
  {
    v38 = v218;
    sub_100025668(v21, v218, type metadata accessor for CRLBoardIdentifier);
    v39 = type metadata accessor for CRLBoardIdentifier(0);
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  }

  v40 = *(v216 + 16);
  if (!v40)
  {
    return sub_10000CAAC(v218, &unk_1019F52D0);
  }

  v42 = sub_100DCAE8C(v41);
  v43 = sub_100E31084(v42);
  if (v4)
  {
    sub_10000CAAC(v218, &unk_1019F52D0);
  }

  else
  {
    v45 = v43[2];
    v46 = v42[2];
    v195 = v3;
    if (v45 > v46 >> 3)
    {
      v47 = sub_1012D5CC4(v43, v42);
    }

    else
    {
      v228 = v42;
      sub_1012D4DC4(v43);

      v47 = v228;
    }

    v48 = 0;
    v227._countAndFlagsBits = 0;
    v227._object = 0xE000000000000000;
    do
    {
      v49._countAndFlagsBits = 0xD000000000000012;
      v49._object = 0x80000001015A46E0;
      String.append(_:)(v49);
      if (v48 < v40 - 1)
      {
        v50._countAndFlagsBits = 8236;
        v50._object = 0xE200000000000000;
        String.append(_:)(v50);
      }

      ++v48;
    }

    while (v40 != v48);
    v228 = 0;
    v229 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v51._countAndFlagsBits = 0x4920545245534E49;
    v51._object = 0xEC000000204F544ELL;
    String.append(_:)(v51);
    v52._object = 0x80000001015A3180;
    v52._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v52);
    v53._countAndFlagsBits = 10272;
    v53._object = 0xE200000000000000;
    String.append(_:)(v53);
    v54._countAndFlagsBits = 0xD000000000000013;
    v54._object = 0x80000001015A3FA0;
    String.append(_:)(v54);
    v55._countAndFlagsBits = 8236;
    v55._object = 0xE200000000000000;
    String.append(_:)(v55);
    v56._object = 0x8000000101585360;
    v56._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v56);
    v57._countAndFlagsBits = 8236;
    v57._object = 0xE200000000000000;
    String.append(_:)(v57);
    v58._countAndFlagsBits = 0x7265727265666572;
    v58._object = 0xED0000657079745FLL;
    String.append(_:)(v58);
    v59._countAndFlagsBits = 8236;
    v59._object = 0xE200000000000000;
    String.append(_:)(v59);
    v60._countAndFlagsBits = 0xD000000000000013;
    v60._object = 0x80000001015A3FC0;
    String.append(_:)(v60);
    v61._countAndFlagsBits = 8236;
    v61._object = 0xE200000000000000;
    String.append(_:)(v61);
    v62._countAndFlagsBits = 0x75755F7465737361;
    v62._object = 0xEA00000000006469;
    String.append(_:)(v62);
    v63._countAndFlagsBits = 8236;
    v63._object = 0xE200000000000000;
    String.append(_:)(v63);
    v64._object = 0x80000001015A33D0;
    v64._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v64);
    v65._countAndFlagsBits = 0x5345554C41562029;
    v65._object = 0xE900000000000020;
    String.append(_:)(v65);
    String.append(_:)(v227);

    v66._countAndFlagsBits = 0x464E4F43204E4F20;
    v66._object = 0xEE0028205443494CLL;
    String.append(_:)(v66);
    v67._countAndFlagsBits = 0xD000000000000013;
    v67._object = 0x80000001015A3FA0;
    String.append(_:)(v67);
    v68._countAndFlagsBits = 8236;
    v68._object = 0xE200000000000000;
    String.append(_:)(v68);
    v69._countAndFlagsBits = 0xD000000000000013;
    v69._object = 0x80000001015A3FC0;
    String.append(_:)(v69);
    v70._object = 0x80000001015A4700;
    v70._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v70);
    v71._countAndFlagsBits = 0x75755F7465737361;
    v71._object = 0xEA00000000006469;
    String.append(_:)(v71);
    v72._countAndFlagsBits = 0x756C637865203D20;
    v72._object = 0xEC0000002E646564;
    String.append(_:)(v72);
    v73._countAndFlagsBits = 0x75755F7465737361;
    v73._object = 0xEA00000000006469;
    String.append(_:)(v73);
    v74 = v228;
    v75 = v229;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v77 = sub_10001CC04(v76, v74, v75);
    v194 = v47;

    v78 = -1 << *(v216 + 32);
    v79 = *(v216 + 64);
    v80 = ~v78;
    v81 = -v78;
    v228 = v216;
    v229 = v216 + 64;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v230 = v80;
    v231 = 0;
    v232 = v82 & v79;
    v233 = 0;

    swift_beginAccess();
    v201 = (v203 + 32);
    v196 = (v203 + 8);
    v200 = v77;
    v202 = v32;
    while (1)
    {
      v83 = v214;
      sub_100DCBCD4(v214);
      v84 = v83;
      v85 = v213;
      sub_10003DFF8(v84, v213, &qword_101A21DE8);
      v86 = sub_1005B981C(&qword_101A21DF0);
      if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
      {
        break;
      }

      v216 = *v85;
      v87 = (v85 + *(v86 + 48));
      v89 = *v87;
      v88 = v87[1];
      v90 = v212;
      v91 = *(v212 + 48);
      v92 = *v201;
      v93 = v211;
      v94 = v217;
      (*v201)(&v211[v91], v87 + v91, v217);
      v95 = *(v90 + 48);
      v96 = v219;
      v210 = v89;
      *v219 = v89;
      v96[1] = v88;
      v209 = v88;
      v92(v96 + v95, &v93[v91], v94);
      v97 = 6 * v216;
      if ((v216 * 6) >> 64 != (6 * v216) >> 63)
      {
        goto LABEL_77;
      }

      v98 = sub_1005C6934();
      if (v5)
      {
        sub_100035F90();

        sub_10000CAAC(v219, &qword_101A22DF0);
        v147 = v200;
        v148 = *(*(v200 + 16) + 32);
        v150 = v225;
        v149 = v226;
        *v225 = v148;
        v222(v150, v221, v149);
        v151 = v148;
        LOBYTE(v148) = _dispatchPreconditionTest(_:)();
        v224(v150, v149);
        if ((v148 & 1) == 0)
        {
          goto LABEL_92;
        }

LABEL_47:
        v152 = *(v147 + 24);
        if (v152)
        {
LABEL_48:
          sqlite3_finalize(v152);
          sub_10000CAAC(v218, &unk_1019F52D0);
          *(v147 + 24) = 0;
        }

        goto LABEL_70;
      }

      v100 = v98;
      v101 = v99;
      v206 = v95;
      v102 = v200;
      v103 = *(*(v200 + 16) + 32);
      v105 = v225;
      v104 = v226;
      *v225 = v103;
      v222(v105, v221, v104);
      v106 = v103;
      LOBYTE(v103) = _dispatchPreconditionTest(_:)();
      v224(v105, v104);
      if ((v103 & 1) == 0)
      {
        goto LABEL_78;
      }

      v216 = v97;
      sub_100DCCAB4(v100, v101, v102, v97 | 1);
      sub_10002640C(v100, v101);
      v107 = v207;
      sub_10000BE14(v218, v207, &unk_1019F52D0);
      v108 = type metadata accessor for CRLBoardIdentifier(0);
      if ((*(*(v108 - 8) + 48))(v107, 1, v108) == 1)
      {
        v215 = 0;
        sub_10000CAAC(v107, &unk_1019F52D0);
        v109 = 0;
        v110 = 0xF000000000000000;
      }

      else
      {
        type metadata accessor for CRLBoardIdentifierStorage(0);
        v111 = sub_10084DAE4();
        v215 = 0;
        v109 = v111;
        v110 = v112;
        sub_100026028(v107, type metadata accessor for CRLBoardIdentifier);
      }

      v113 = v216;
      if (__OFADD__(v216, 2))
      {
        goto LABEL_80;
      }

      sub_10089BB64(v109, v110, v216 + 2);
      sub_100025870(v109, v110);
      v114 = v205;
      sub_10000C83C(v220, v205, type metadata accessor for CRLAssetReferrerIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v115 = sub_1005B981C(&qword_1019F4720);
        sub_100026028(v114 + *(v115 + 48), type metadata accessor for CRLBoardIdentifier);
        (*v196)(v114, v217);
        v116 = 1;
      }

      else
      {
        sub_100026028(v114, type metadata accessor for CRLAssetReferrerIdentifier);
        v116 = 0;
      }

      v117 = v113 + 3;
      if (__OFADD__(v113, 3))
      {
        goto LABEL_81;
      }

      v118 = *(*(v102 + 16) + 32);
      v120 = v225;
      v119 = v226;
      *v225 = v118;
      v222(v120, v221, v119);
      v121 = v118;
      LOBYTE(v118) = _dispatchPreconditionTest(_:)();
      v224(v120, v119);
      if ((v118 & 1) == 0)
      {
        goto LABEL_82;
      }

      if (v117 < 0xFFFFFFFF80000000)
      {
        goto LABEL_83;
      }

      if (v117 > 0x7FFFFFFF)
      {
        goto LABEL_84;
      }

      sqlite3_bind_int(*(v102 + 24), v113 + 3, v116);
      if (__OFADD__(v113, 4))
      {
        goto LABEL_85;
      }

      sub_1000285F8(v210, v209, v113 + 4);
      if (__OFADD__(v113, 5))
      {
        goto LABEL_86;
      }

      v122 = UUID.crl_data()();
      v124 = v123;
      v125 = v102;
      v126 = *(*(v102 + 16) + 32);
      v128 = v225;
      v127 = v226;
      *v225 = v126;
      v222(v128, v221, v127);
      v129 = v126;
      v130 = _dispatchPreconditionTest(_:)();
      v224(v128, v127);
      if ((v130 & 1) == 0)
      {
        goto LABEL_87;
      }

      v131 = v215;
      sub_100DCCAB4(v122, v124, v125, v113 + 5);
      v5 = v131;
      sub_10002640C(v122, v124);
      if (__OFADD__(v216, 6))
      {
        goto LABEL_88;
      }

      v77 = v125;
      sub_100034254(v204, v216 + 6);
      sub_10000CAAC(v219, &qword_101A22DF0);
    }

    sub_100035F90();
    v132 = *(*(v77 + 16) + 32);
    v134 = v225;
    v133 = v226;
    *v225 = v132;
    v222(v134, v221, v133);
    v135 = v132;
    LOBYTE(v132) = _dispatchPreconditionTest(_:)();
    v224(v134, v133);
    if ((v132 & 1) == 0)
    {
      goto LABEL_91;
    }

    v136 = *(v77 + 16);

    v137 = sub_10001CEC4(v136, v77);

    v138 = v195;
    if (v137 == 101)
    {
      v215 = v5;
      v139 = 0;
      v140 = v194;
      v141 = v194 + 7;
      v142 = 1 << *(v194 + 32);
      v143 = -1;
      if (v142 < 64)
      {
        v143 = ~(-1 << v142);
      }

      v144 = v143 & v194[7];
      v216 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
      v145 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
      v146 = ((v142 + 63) >> 6);
      v220 = v203 + 16;
      v219 = v146;
LABEL_51:
      if (v144)
      {
        v153 = v145;
        v154 = v139;
        goto LABEL_57;
      }

      while (1)
      {
        v154 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          goto LABEL_89;
        }

        if (v154 >= v146)
        {
          break;
        }

        v144 = v141[v154];
        ++v139;
        if (v144)
        {
          v153 = v145;
LABEL_57:
          v155 = v203;
          v156 = v198;
          v157 = v217;
          (*(v203 + 16))(v198, v140[6] + *(v203 + 72) * (__clz(__rbit64(v144)) | (v154 << 6)), v217);
          (*(v155 + 32))(v199, v156, v157);
          v159 = v225;
          v158 = v226;
          v160 = v197;
          *v225 = v197;
          v222(v159, v221, v158);
          v161 = v160;
          LOBYTE(v160) = _dispatchPreconditionTest(_:)();
          v224(v159, v158);
          if ((v160 & 1) == 0)
          {
            goto LABEL_90;
          }

          v162 = v215;
          v163 = sub_100E39C08();
          v215 = v162;
          if (v162)
          {
            (*v196)(v199, v217);
            goto LABEL_75;
          }

          v164 = v163;
          v144 &= v144 - 1;
          if (!v163)
          {
            (*v196)(v199, v217);
            v139 = v154;
            v140 = v194;
            v145 = v153;
            goto LABEL_50;
          }

          v165 = v138;
          v166 = *&v138[v216];
          os_unfair_lock_lock(*(v166 + 16));
          v145 = v153;
          v167 = *&v138[v153];
          if (v167)
          {
            v168 = *&v138[v153];
          }

          else
          {
            v169 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
            v170 = v138;
            v171 = sub_10001F1A0(v170);

            v172 = *&v165[v145];
            *&v165[v145] = v171;
            v168 = v171;

            v167 = 0;
          }

          v173 = *(v166 + 16);
          v174 = v167;
          os_unfair_lock_unlock(v173);
          v175 = v199;
          v176 = v215;
          sub_101091618(v199, *(v164 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension), *(v164 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8));
          v215 = v176;
          if (!v176)
          {
            (*v196)(v175, v217);

            v139 = v154;
            v138 = v195;
            v140 = v194;
LABEL_50:
            v146 = v219;
            goto LABEL_51;
          }

          (*v196)(v175, v217);

LABEL_75:

          v147 = v200;
          v190 = *(*(v200 + 16) + 32);
          v192 = v225;
          v191 = v226;
          *v225 = v190;
          v222(v192, v221, v191);
          v193 = v190;
          LOBYTE(v190) = _dispatchPreconditionTest(_:)();
          v224(v192, v191);
          if ((v190 & 1) == 0)
          {
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
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
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
            __break(1u);
LABEL_94:
            __break(1u);
          }

          goto LABEL_47;
        }
      }

      v147 = v200;
      v186 = *(*(v200 + 16) + 32);
      v188 = v225;
      v187 = v226;
      *v225 = v186;
      v222(v188, v221, v187);
      v189 = v186;
      LOBYTE(v186) = _dispatchPreconditionTest(_:)();
      v224(v188, v187);
      if ((v186 & 1) == 0)
      {
        goto LABEL_94;
      }

      v152 = *(v147 + 24);
      if (v152)
      {
        goto LABEL_48;
      }
    }

    else
    {

      v228 = 0;
      v229 = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      v177._countAndFlagsBits = 0xD00000000000003ALL;
      v177._object = 0x80000001015A4720;
      String.append(_:)(v177);
      _print_unlocked<A, B>(_:_:)();
      v178 = v228;
      v179 = v229;
      sub_10089C7D0();
      swift_allocError();
      *v180 = v137;
      *(v180 + 8) = v178;
      *(v180 + 16) = v179;
      swift_willThrow();
      v181 = *(*(v77 + 16) + 32);
      v183 = v225;
      v182 = v226;
      *v225 = v181;
      v222(v183, v221, v182);
      v184 = v181;
      LOBYTE(v181) = _dispatchPreconditionTest(_:)();
      v224(v183, v182);
      if ((v181 & 1) == 0)
      {
        goto LABEL_93;
      }

      v185 = *(v77 + 24);
      if (v185)
      {
        sqlite3_finalize(v185);
        sub_10000CAAC(v218, &unk_1019F52D0);
        *(v77 + 24) = 0;
      }
    }

LABEL_70:
    sub_10000CAAC(v218, &unk_1019F52D0);
  }
}

char *sub_100DFB14C(void (**a1)(char *, uint64_t, uint64_t, uint64_t), void *a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v7 + 104);
  v68 = enum case for DispatchPredicate.onQueue(_:);
  v69 = v11;
  v66 = v7 + 104;
  v11(v9);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v7 + 8);
  v67 = v6;
  v13(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = sub_100DFB858(a1, a2);
  if (v3)
  {
    return result;
  }

  v63 = a2;
  v64 = a1;
  v65 = v13;
  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v15._countAndFlagsBits = 0x20455441445055;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x74695F6472616F62;
  v16._object = 0xEB00000000736D65;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x2054455320;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6E6F7473626D6F74;
  v18._object = 0xEA00000000006465;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x202C31203D20;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._object = 0x80000001015A33D0;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 2112800;
  v21._object = 0xE300000000000000;
  String.append(_:)(v21);
  v22._object = 0x80000001015A33D0;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x454857203F207C20;
  v23._object = 0xEC00000028204552;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x6975755F6D657469;
  v24._object = 0xE900000000000064;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._object = 0x8000000101585360;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x28204E492029;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = sub_100E9D4E0(&off_101874AC0, 0);
  String.append(_:)(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v70;
  v31 = v71;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v33 = sub_10001CC04(v32, v30, v31);

  sub_100034254(16, 1);
  v34 = UUID.crl_data()();
  v36 = v35;
  v37 = *(*(v33 + 16) + 32);
  *v9 = v37;
  v38 = v67;
  v69(v9, v68, v67);
  v39 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  v65(v9, v38);
  if ((v37 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100DCCAB4(v34, v36, v33, 2);
  sub_10002640C(v34, v36);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v40 = sub_10084DAE4();
  v64 = 0;
  v62 = v40;
  v63 = v41;
  v42 = *(*(v33 + 16) + 32);
  *v9 = v42;
  v43 = v68;
  v44 = v69;
  v69(v9, v68, v38);
  v45 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v46 = v65;
  v65(v9, v38);
  if ((v42 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v47 = v64;
  sub_100DCCAB4(v62, v63, v33, 3);
  v64 = v47;
  v48 = *(*(v33 + 16) + 32);
  *v9 = v48;
  v44(v9, v43, v38);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v46(v9, v38);
  if ((v48 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v50 = *(v33 + 16);

  v51 = sub_10001CEC4(v50, v33);

  if (v51 == 101)
  {
    sub_10002640C(v62, v63);
    v52 = *(*(v33 + 16) + 32);
    *v9 = v52;
    v69(v9, v68, v38);
    v53 = v52;
    v54 = _dispatchPreconditionTest(_:)();
    v65(v9, v38);
    if (v54)
    {
      swift_beginAccess();
      v55 = *(v33 + 24);
      if (v55)
      {
        sqlite3_finalize(v55);
        *(v33 + 24) = 0;
      }
    }

    goto LABEL_20;
  }

  sub_10089C7D0();
  v56 = swift_allocError();
  *v57 = v51;
  *(v57 + 8) = 0xD000000000000024;
  *(v57 + 16) = 0x80000001015A5280;
  v64 = v56;
  swift_willThrow();
  sub_10002640C(v62, v63);
  v58 = *(*(v33 + 16) + 32);
  *v9 = v58;
  v69(v9, v68, v38);
  v59 = v58;
  v60 = _dispatchPreconditionTest(_:)();
  v65(v9, v38);
  if ((v60 & 1) == 0)
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  v61 = *(v33 + 24);
  if (v61)
  {
    sqlite3_finalize(v61);
    *(v33 + 24) = 0;
  }
}

char *sub_100DFB858(void (**a1)(char *, uint64_t, uint64_t, uint64_t), void *a2)
{
  v75 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v75);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  v12 = *(v8 + 104);
  v79 = enum case for DispatchPredicate.onQueue(_:);
  v80 = v12;
  v78 = v8 + 104;
  v12(v10);
  v13 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v8 + 8);
  v76 = v8 + 8;
  v14(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    __break(1u);
    goto LABEL_23;
  }

  result = sub_100E34C00(a1, a2);
  if (!v3)
  {
    if (*(result + 2))
    {
      v72 = v14;
      v73 = v7;
      v74 = result;
      v81 = 0;
      v82 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v81 = 0xD00000000000004FLL;
      v82 = 0x80000001015A6060;
      v16._countAndFlagsBits = sub_100E9D4E0(&off_101874A98, 0);
      String.append(_:)(v16);

      v17._countAndFlagsBits = 41;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v18 = v81;
      v19 = v82;
      type metadata accessor for SQLiteStatement();
      swift_initStackObject();

      v21 = sub_10001CC04(v20, v18, v19);

      v22 = *(sub_1005B981C(&qword_1019F4720) + 48);
      v23 = type metadata accessor for UUID();
      v24 = v77;
      (*(*(v23 - 8) + 16))(v77, a1, v23);
      sub_10000C83C(a2, v24 + v22, type metadata accessor for CRLBoardIdentifier);
      swift_storeEnumTagMultiPayload();
      v25 = sub_1005C6934();
      v70 = v23;
      v27 = v26;
      v28 = v21;
      v29 = v25;
      v75 = v28;
      v30 = *(*(v28 + 16) + 32);
      *v10 = v30;
      v31 = v73;
      v80(v10, v79, v73);
      v32 = v30;
      LOBYTE(v30) = _dispatchPreconditionTest(_:)();
      v72(v10, v31);
      if (v30)
      {
        v33 = v75;

        sub_100DCCAB4(v29, v27, v33, 1);
        sub_10002640C(v29, v27);
        type metadata accessor for CRLBoardIdentifierStorage(0);
        v34 = sub_10084DAE4();
        v71 = 0;
        v68 = v34;
        v69 = v35;
        v36 = *(*(v75 + 16) + 32);
        *v10 = v36;
        v37 = v79;
        v38 = v73;
        v80(v10, v79, v73);
        v39 = v36;
        LOBYTE(v36) = _dispatchPreconditionTest(_:)();
        v40 = v72;
        v72(v10, v38);
        if (v36)
        {
          v41 = v75;

          v42 = v71;
          sub_100DCCAB4(v68, v69, v41, 2);
          v71 = v42;
          v43 = *(*(v41 + 16) + 32);
          *v10 = v43;
          v80(v10, v37, v38);
          v44 = v43;
          LOBYTE(v43) = _dispatchPreconditionTest(_:)();
          v40(v10, v38);
          if (v43)
          {
            v45 = v75;
            v46 = *(v75 + 16);

            v47 = v46;
            v48 = v71;
            LODWORD(v49) = sub_10001CEC4(v47, v45);

            if (v49 != 101)
            {
              goto LABEL_14;
            }

            v50 = v75;
            v51 = sub_100E93A84(v74);

            sub_100E339A0(v51);
            if (v48)
            {
              sub_100026028(v77, type metadata accessor for CRLAssetReferrerIdentifier);

              sub_10002640C(v68, v69);
              v52 = *(*(v50 + 16) + 32);
              *v10 = v52;
              v49 = v73;
              v80(v10, v79, v73);
              v53 = v52;
              LOBYTE(v52) = _dispatchPreconditionTest(_:)();
              v72(v10, v49);
              if ((v52 & 1) == 0)
              {
                __break(1u);
LABEL_14:

                v81 = 0;
                v82 = 0xE000000000000000;
                _StringGuts.grow(_:)(73);
                v54._object = 0x80000001015A60B0;
                v54._countAndFlagsBits = 0xD000000000000047;
                String.append(_:)(v54);
                sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID);
                v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v55);

                v56 = v81;
                v57 = v82;
                sub_10089C7D0();
                swift_allocError();
                *v58 = v49;
                *(v58 + 8) = v56;
                *(v58 + 16) = v57;
                swift_willThrow();
                sub_10002640C(v68, v69);
                sub_100026028(v77, type metadata accessor for CRLAssetReferrerIdentifier);
                v59 = v75;
                v60 = *(*(v75 + 16) + 32);
                *v10 = v60;
                v61 = v73;
                v80(v10, v79, v73);
                v62 = v60;
                LOBYTE(v60) = _dispatchPreconditionTest(_:)();
                v72(v10, v61);
                if (v60)
                {
                  swift_beginAccess();
                  v63 = *(v59 + 24);
                  if (v63)
                  {
                    sqlite3_finalize(v63);
                    *(v59 + 24) = 0;
                  }
                }

                goto LABEL_26;
              }
            }

            else
            {
              sub_100026028(v77, type metadata accessor for CRLAssetReferrerIdentifier);

              sub_10002640C(v68, v69);
              v64 = *(*(v50 + 16) + 32);
              *v10 = v64;
              v65 = v73;
              v80(v10, v79, v73);
              v66 = v64;
              LOBYTE(v64) = _dispatchPreconditionTest(_:)();
              v72(v10, v65);
              if ((v64 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            swift_beginAccess();
            v67 = *(v50 + 24);
            if (v67)
            {
              sqlite3_finalize(v67);
              *(v50 + 24) = 0;
            }
          }

LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      __break(1u);
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_100DFC224(uint64_t a1, unint64_t a2)
{
  v70 = a2;
  v4 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  v13 = *(v8 + 104);
  v68 = enum case for DispatchPredicate.onQueue(_:);
  v66 = v13;
  v64 = v8 + 104;
  v13(v11, v9);
  v14 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = *(v8 + 8);
  v62 = v11;
  v63 = v8 + 8;
  v65 = v7;
  v67 = v15;
  v15(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = *(sub_1005B981C(&qword_1019F4720) + 48);
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 16))(v6, a1, v17);
  sub_10000C83C(v70, &v6[v16], type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v18 = v69;
  sub_100DF8718(v6);
  result = sub_100026028(v6, type metadata accessor for CRLAssetReferrerIdentifier);
  if (v18)
  {
    return result;
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v20._countAndFlagsBits = 0x20455441445055;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x74695F6472616F62;
  v21._object = 0xEB00000000736D65;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x2054455320;
  v22._object = 0xE500000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x6E6F7473626D6F74;
  v23._object = 0xEA00000000006465;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x202C31203D20;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25._object = 0x80000001015A33D0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 2112800;
  v26._object = 0xE300000000000000;
  String.append(_:)(v26);
  v27._object = 0x80000001015A33D0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x454857203F207C20;
  v28._object = 0xEB00000000204552;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x6975755F6D657469;
  v29._object = 0xE900000000000064;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x444E41203F203D20;
  v30._object = 0xE900000000000020;
  String.append(_:)(v30);
  v31._object = 0x8000000101585360;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 1059077408;
  v32._object = 0xE400000000000000;
  String.append(_:)(v32);
  v33 = v71;
  v34 = v72;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v36 = sub_10001CC04(v35, v33, v34);

  sub_100034254(16, 1);
  v37 = UUID.crl_data()();
  v39 = v38;
  v40 = *(*(v36 + 16) + 32);
  v41 = v62;
  *v62 = v40;
  v42 = v65;
  v66(v41, v68, v65);
  v43 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v67(v41, v42);
  if ((v40 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_100DCCAB4(v37, v39, v36, 2);
  sub_10002640C(v37, v39);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v44 = sub_10084DAE4();
  v70 = v45;
  v69 = v44;
  v46 = *(*(v36 + 16) + 32);
  *v41 = v46;
  v47 = v65;
  v48 = v66;
  v66(v41, v68, v65);
  v49 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v50 = v67;
  v67(v41, v47);
  if ((v46 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100DCCAB4(v69, v70, v36, 3);
  v51 = *(*(v36 + 16) + 32);
  *v41 = v51;
  v48(v41, v68, v47);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  v50(v41, v47);
  if ((v51 & 1) == 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v53 = *(v36 + 16);

  v54 = sub_10001CEC4(v53, v36);

  if (v54 == 101)
  {
    sub_10002640C(v69, v70);
    v55 = *(*(v36 + 16) + 32);
    *v41 = v55;
    v66(v41, v68, v47);
    v56 = v55;
    LOBYTE(v55) = _dispatchPreconditionTest(_:)();
    v67(v41, v47);
    if (v55)
    {
      swift_beginAccess();
      v57 = *(v36 + 24);
      if (v57)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_19;
  }

  sub_10089C7D0();
  swift_allocError();
  *v58 = v54;
  *(v58 + 8) = 0xD000000000000024;
  *(v58 + 16) = 0x80000001015A5280;
  swift_willThrow();
  sub_10002640C(v69, v70);
  v59 = *(*(v36 + 16) + 32);
  *v41 = v59;
  v66(v41, v68, v47);
  v60 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  v67(v41, v47);
  if ((v59 & 1) == 0)
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v57 = *(v36 + 24);
  if (v57)
  {
LABEL_12:
    sqlite3_finalize(v57);
    *(v36 + 24) = 0;
  }
}

uint64_t sub_100DFCA00(void (**a1)(char *, uint64_t, uint64_t, uint64_t), void *a2)
{
  v109 = a2;
  v4 = v2;
  v106 = type metadata accessor for UUID();
  v102 = *(v106 - 8);
  v6 = __chkstk_darwin(v106);
  v105 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v104 = v89 - v8;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v103 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v14 = v15;
  v17 = v12 + 104;
  v16 = *(v12 + 104);
  v107 = enum case for DispatchPredicate.onQueue(_:);
  (v16)(v14);
  v18 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v21 = *(v12 + 8);
  v19 = v12 + 8;
  v20 = v21;
  v21(v14, v11);
  if (v15)
  {
    v3 = v108;
    result = sub_100DFB858(a1, v109);
    if (v3)
    {
      return result;
    }

    v100 = v16;
    v23 = sub_100DEC510(a1, v109, 1);
    v16 = v23;
    v98 = v4;
    v90 = v20;
    v93 = v14;
    v94 = v19;
    v110 = _swiftEmptyArrayStorage;
    v99 = a1;
    if (!(v23 >> 62))
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
LABEL_32:
    __break(1u);
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:
  v25 = v107;
  v92 = v17;
  v91 = v11;
  v101 = v3;
  if (v24)
  {
    v11 = 0;
    v17 = v16 & 0xC000000000000001;
    v26 = v16 & 0xFFFFFFFFFFFFFF8;
    v108 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v28 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v30 = v110;
          goto LABEL_22;
        }
      }

      else
      {
        if (v11 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v27 = *(v16 + 8 * v11 + 32);

        v28 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_19;
        }
      }

      v29 = *(v27 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges);
      if (v29 & 2) == 0 || (v29)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v25 = v107;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v26 = v108;
      }

      ++v11;
      if (v28 == v24)
      {
        goto LABEL_20;
      }
    }
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_22:

  v32 = v30 < 0 || (v30 & 0x4000000000000000) != 0;
  if (v32)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v103;
    if (!v31)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v33 = v103;
    if (!*(v30 + 16))
    {
      goto LABEL_44;
    }
  }

  v108 = v30 & 0xC000000000000001;
  v97 = v30;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    sub_10000C83C(v36 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v33, type metadata accessor for CRLBoardIdentifier);
    swift_unknownObjectRelease();
    v37 = v101;
    v31 = sub_100DEB448();
    v34 = v37;
    if (v37)
    {
      v33 = v103;
      goto LABEL_30;
    }
  }

  else
  {
    v34 = *(v30 + 16);
    if (v34)
    {
      sub_10000C83C(*(v30 + 32) + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v33, type metadata accessor for CRLBoardIdentifier);
      v35 = v101;
      v31 = sub_100DEB448();
      if (v35)
      {
LABEL_30:
        sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
      }

      goto LABEL_40;
    }

    __break(1u);
  }

  v35 = v34;
  v25 = v107;
  v33 = v103;
  v30 = v97;
LABEL_40:
  v101 = v35;
  if (v31)
  {
    v38 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
    v39 = v31;
    swift_beginAccess();
    v40 = v102;
    v41 = *(v102 + 16);
    v96 = v102 + 16;
    v95 = v41;
    v41(v104, v39 + v38, v106);
    v89[1] = v39;
    if (v32)
    {
      v42 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v42 = *(v30 + 16);
    }

    v74 = (v40 + 8);
    if (v42)
    {
      v102 = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v75 = 0;
      do
      {
        if (v108)
        {
          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v77 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v75 >= *(v30 + 16))
          {
            goto LABEL_76;
          }

          v76 = *(v30 + 8 * v75 + 32);

          v77 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
          }
        }

        v79 = v105;
        v78 = v106;
        v95(v105, v76 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v106);
        sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
        v80 = dispatch thunk of static Equatable.== infix(_:_:)();
        v81 = *v74;
        (*v74)(v79, v78);
        if (v80)
        {
          v30 = v97;
        }

        else
        {
          v82 = v101;
          sub_100DFD6B8(v76, v104, v98);
          v101 = v82;
          v30 = v97;
          if (v82)
          {

            v81(v104, v106);
            return sub_100026028(v103, type metadata accessor for CRLBoardIdentifier);
          }
        }

        ++v75;
      }

      while (v77 != v42);

      v33 = v103;
    }

    else
    {

      v81 = *v74;
    }

    v81(v104, v106);
    sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
    v25 = v107;
    goto LABEL_45;
  }

  sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
LABEL_44:

LABEL_45:
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v44 = v101;
  v45 = sub_10001CC04(v43, 0xD000000000000046, 0x80000001015A5FF0);

  if (!v44)
  {
    v46 = UUID.crl_data()();
    v48 = v47;
    v49 = *(*(v45 + 16) + 32);
    v50 = v93;
    *v93 = v49;
    v51 = v91;
    v100(v50, v25, v91);
    v52 = v49;
    v53 = _dispatchPreconditionTest(_:)();
    v54 = v50;
    v55 = v90;
    v90(v54, v51);
    if ((v53 & 1) == 0)
    {
      goto LABEL_77;
    }

    sub_100DCCAB4(v46, v48, v45, 1);
    sub_10002640C(v46, v48);
    type metadata accessor for CRLBoardIdentifierStorage(0);
    v56 = sub_10084DAE4();
    v109 = v57;
    v101 = 0;
    v108 = v56;
    v58 = *(*(v45 + 16) + 32);
    v59 = v55;
    v60 = v93;
    *v93 = v58;
    v61 = v100;
    v100(v60, v107, v51);
    v62 = v58;
    v63 = _dispatchPreconditionTest(_:)();
    v59(v60, v51);
    if ((v63 & 1) == 0)
    {
      goto LABEL_78;
    }

    sub_100DCCAB4(v108, v109, v45, 2);
    v64 = *(*(v45 + 16) + 32);
    *v60 = v64;
    v61(v60, v107, v51);
    v65 = v64;
    LOBYTE(v64) = _dispatchPreconditionTest(_:)();
    v59(v60, v51);
    if ((v64 & 1) == 0)
    {
      goto LABEL_79;
    }

    v66 = v59;
    v67 = *(v45 + 16);

    v68 = sub_10001CEC4(v67, v45);

    if (v68 == 101)
    {
      sub_10002640C(v108, v109);
      v69 = *(*(v45 + 16) + 32);
      v70 = v93;
      *v93 = v69;
      v100(v70, v107, v51);
      v71 = v69;
      v72 = _dispatchPreconditionTest(_:)();
      v66(v70, v51);
      if ((v72 & 1) == 0)
      {
        goto LABEL_80;
      }

      swift_beginAccess();
      v73 = *(v45 + 24);
      if (v73)
      {
        sqlite3_finalize(v73);
        *(v45 + 24) = 0;
      }
    }

    else
    {
      sub_10089C7D0();
      swift_allocError();
      *v83 = v68;
      *(v83 + 8) = 0xD00000000000001DLL;
      *(v83 + 16) = 0x80000001015A6040;
      swift_willThrow();
      sub_10002640C(v108, v109);
      v84 = *(*(v45 + 16) + 32);
      v85 = v93;
      *v93 = v84;
      v100(v85, v107, v51);
      v86 = v84;
      v87 = _dispatchPreconditionTest(_:)();
      v66(v85, v51);
      if ((v87 & 1) == 0)
      {
        goto LABEL_81;
      }

      swift_beginAccess();
      v88 = *(v45 + 24);
      if (v88)
      {
        sqlite3_finalize(v88);
        *(v45 + 24) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100DFD6B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v121 = a3;
  v127 = a2;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v118 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v114 = (&v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v116 = &v97 - v11;
  __chkstk_darwin(v10);
  v115 = &v97 - v12;
  v13 = sub_1005B981C(&unk_101A0AFE0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v97 - v15;
  v17 = sub_1005B981C(&qword_1019F6990);
  v18 = __chkstk_darwin(v17 - 8);
  v117 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v119 = &v97 - v21;
  v22 = __chkstk_darwin(v20);
  v125 = &v97 - v23;
  __chkstk_darwin(v22);
  v25 = &v97 - v24;
  v26 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  swift_beginAccess();
  v27 = *(v7 + 16);
  v122 = v7 + 16;
  v120 = v27;
  v27(v25, v127, v6);
  v123 = *(v7 + 56);
  v124 = v7 + 56;
  v123(v25, 0, 1, v6);
  v28 = *(v14 + 56);
  v29 = a1 + v26;
  v30 = a1;
  sub_10000BE14(v29, v16, &qword_1019F6990);
  sub_10000BE14(v25, &v16[v28], &qword_1019F6990);
  v31 = *(v7 + 48);
  if (v31(v16, 1, v6) == 1)
  {
    sub_10000CAAC(v25, &qword_1019F6990);
    if (v31(&v16[v28], 1, v6) == 1)
    {
      return sub_10000CAAC(v16, &qword_1019F6990);
    }
  }

  else
  {
    sub_10000BE14(v16, v125, &qword_1019F6990);
    if (v31(&v16[v28], 1, v6) != 1)
    {
      v43 = v115;
      (*(v7 + 32))(v115, &v16[v28], v6);
      sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
      v44 = v125;
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v113 = v7;
      v46 = *(v7 + 8);
      v46(v43, v6);
      sub_10000CAAC(v25, &qword_1019F6990);
      v33 = v6;
      v46(v44, v6);
      result = sub_10000CAAC(v16, &qword_1019F6990);
      v34 = v126;
      v35 = v123;
      if (v45)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_10000CAAC(v25, &qword_1019F6990);
    (*(v7 + 8))(v125, v6);
  }

  v113 = v7;
  v33 = v6;
  sub_10000CAAC(v16, &unk_101A0AFE0);
  v34 = v126;
  v35 = v123;
LABEL_7:
  result = sub_100E929EC(v30);
  if (result)
  {
    v36 = result;
    v37 = v119;
    v38 = v33;
    v39 = v33;
    v40 = v120;
    v120(v119, v127, v39);
    v125 = v38;
    v35(v37, 0, 1, v38);
    (*(*v36 + 280))(v37);
    v41 = (*(*v36 + 520))(*(v121 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext), 0);
    if (v34)
    {
    }

    v111 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) | 0x16;
    v47 = (*v36 + 264);
    v48 = *v47;
    v112 = v42;
    v123 = v41;
    v100 = v48;
    v99 = v47;
    v48();
    v106 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 32);
    v105 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
    v49 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 16);
    v104 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
    v103 = v49;
    v50 = v117;
    v51 = v125;
    v40(v117, v127, v125);
    v35(v50, 0, 1, v51);
    v52 = v35;
    v98 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier;
    sub_10000C83C(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v118, type metadata accessor for CRLBoardIdentifier);
    v53 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8);
    v110 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
    v109 = v53;
    v108 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16);
    v126 = 0;
    v54 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    v102 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v101 = v54;
    v55 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    v122 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v120 = v55;
    v56 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    v119 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v127 = v56;
    v57 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
    v107 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v58 = v107;
    v115 = v57;
    type metadata accessor for CRLBoardItemDatabaseRow();
    v59 = swift_allocObject();
    v60 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
    v52(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v51);
    v124 = v30;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
    (*(v113 + 32))(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v116, v51);
    v61 = v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
    v62 = v103;
    *v61 = v104;
    *(v61 + 16) = v62;
    *(v61 + 32) = v106;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = v105;
    swift_beginAccess();
    v63 = v123;
    v64 = v112;
    sub_100024E98(v123, v112);
    v65 = v102;
    v66 = v101;
    sub_100024E84(v102, v101);
    sub_100024E84(v122, v120);
    sub_100024E84(v119, v127);
    sub_100024E84(v58, v115);
    sub_10002C638(v117, v59 + v60, &qword_1019F6990);
    swift_endAccess();
    sub_100025668(v118, v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v67 = v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
    v68 = v109;
    *v67 = v110;
    *(v67 + 8) = v68;
    *(v67 + 16) = v108;
    v69 = v64;
    v70 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v71 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v72 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
    sub_100024E98(v63, v69);
    *v70 = v63;
    v70[1] = v69;
    sub_100025870(v71, v72);
    sub_10002640C(v63, v69);
    v73 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v74 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v75 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    sub_100024E84(v65, v66);
    *v73 = v65;
    v73[1] = v66;
    sub_100025870(v74, v75);
    sub_100025870(v65, v66);
    v76 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v77 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v78 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    v79 = v122;
    v80 = v120;
    sub_100024E84(v122, v120);
    *v76 = v79;
    v76[1] = v80;
    sub_100025870(v77, v78);
    sub_100025870(v79, v80);
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 1;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = v111;
    v81 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v82 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v83 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    v84 = v119;
    v85 = v127;
    sub_100024E84(v119, v127);
    *v81 = v84;
    v81[1] = v85;
    sub_100025870(v82, v83);
    sub_100025870(v84, v85);
    v86 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v87 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v88 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
    v89 = v107;
    v90 = v115;
    sub_100024E84(v107, v115);
    *v86 = v89;
    v86[1] = v90;
    sub_100025870(v87, v88);
    sub_100025870(v89, v90);
    v91 = v126;
    v92 = sub_100DF3D48(v59);
    if (!v91)
    {
      v93 = v123;
      v94 = v113;
      v95 = v114;
      v96 = v125;
      (v100)(v92);
      sub_100DFB14C(v95, (v124 + v98));
      (*(v94 + 8))(v95, v96);
      sub_10002640C(v93, v112);
      swift_setDeallocating();
      sub_100FE3A40();
      swift_deallocClassInstance();
    }

    sub_10002640C(v123, v69);

    swift_setDeallocating();
    sub_100FE3A40();
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_100DFE34C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v43) = a4;
  v41 = a2;
  v42 = a3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v45 = *(v8 + 104);
  v45(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v44 = *(v8 + 8);
  v44(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v40[1] = a1;
  v46 = v12;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v15 = sub_10001CC04(v14, 0xD00000000000005BLL, 0x80000001015A3DA0);

  if (v5)
  {
    return result;
  }

  v17 = v42;
  sub_10089BB64(v41, v42, 1);
  sub_10089B9A4(v43 & (v17 >> 60 != 15), 2);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v18 = sub_10084DAE4();
  v43 = v19;
  v20 = v18;
  v21 = *(*(v15 + 16) + 32);
  *v10 = v21;
  v45(v10, v46, v7);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v23 = v44;
  v44(v10, v7);
  if ((v21 & 1) == 0)
  {
    goto LABEL_15;
  }

  v24 = v20;
  v25 = v20;
  v26 = v43;
  sub_100DCCAB4(v25, v43, v15, 3);
  sub_10002640C(v24, v26);
  v27 = *(*(v15 + 16) + 32);
  *v10 = v27;
  v28 = v45;
  v45(v10, v46, v7);
  v29 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v23(v10, v7);
  if ((v27 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v30 = *(v15 + 16);

  v31 = sub_10001CEC4(v30, v15);

  if (v31 == 101)
  {
    v32 = *(*(v15 + 16) + 32);
    *v10 = v32;
    v28(v10, v46, v7);
    v33 = v32;
    v34 = _dispatchPreconditionTest(_:)();
    v23(v10, v7);
    if (v34)
    {
      swift_beginAccess();
      v35 = *(v15 + 24);
      if (v35)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

  sub_10089C7D0();
  swift_allocError();
  *v36 = v31;
  *(v36 + 8) = 0xD000000000000023;
  *(v36 + 16) = 0x80000001015A3E00;
  swift_willThrow();
  v37 = *(*(v15 + 16) + 32);
  *v10 = v37;
  v28(v10, v46, v7);
  v38 = v37;
  v39 = _dispatchPreconditionTest(_:)();
  v44(v10, v7);
  if ((v39 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v35 = *(v15 + 24);
  if (v35)
  {
LABEL_11:
    sqlite3_finalize(v35);
    *(v15 + 24) = 0;
  }
}

uint64_t sub_100DFE838(uint64_t (*a1)(uint64_t a1), int a2, uint64_t a3, unint64_t a4, int a5, int a6)
{
  LODWORD(v422) = a6;
  LODWORD(v430) = a5;
  v420 = a4;
  v414 = a3;
  LODWORD(v428) = a2;
  v435 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v398 = *(v9 - 8);
  __chkstk_darwin(v9);
  v395 = &v384 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v396 = *(v11 - 8);
  v397 = v11;
  __chkstk_darwin(v11);
  v394 = &v384 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v13 = __chkstk_darwin(v400);
  v393 = &v384 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v401 = &v384 - v15;
  v406 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v16 = __chkstk_darwin(v406);
  v388 = (&v384 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v402 = &v384 - v19;
  __chkstk_darwin(v18);
  v418 = (&v384 - v20);
  v21 = type metadata accessor for MergeResult();
  v404 = *(v21 - 8);
  v405 = v21;
  __chkstk_darwin(v21);
  v403 = &v384 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  v23 = __chkstk_darwin(v423);
  v410 = &v384 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v409 = &v384 - v25;
  v26 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v26 - 8);
  *&v425 = &v384 - v27;
  *&v431 = type metadata accessor for CRLBoardCRDTData(0);
  *&v424 = *(v431 - 8);
  v28 = __chkstk_darwin(v431);
  v408 = &v384 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v384 - v31;
  v33 = __chkstk_darwin(v30);
  v419 = &v384 - v34;
  v35 = __chkstk_darwin(v33);
  v426 = &v384 - v36;
  v37 = __chkstk_darwin(v35);
  v413 = &v384 - v38;
  v39 = __chkstk_darwin(v37);
  v412 = &v384 - v40;
  v41 = __chkstk_darwin(v39);
  v411 = &v384 - v42;
  __chkstk_darwin(v41);
  v446 = &v384 - v43;
  v429 = type metadata accessor for UUID();
  v427 = *(v429 - 8);
  v44 = __chkstk_darwin(v429);
  v417 = (&v384 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __chkstk_darwin(v44);
  v416 = &v384 - v47;
  __chkstk_darwin(v46);
  v436 = &v384 - v48;
  v49 = type metadata accessor for CRLBoardIdentifier(0);
  v389 = *(v49 - 8);
  v50 = __chkstk_darwin(v49 - 8);
  v391 = &v384 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v390 = &v384 - v53;
  v54 = __chkstk_darwin(v52);
  v399 = &v384 - v55;
  v56 = __chkstk_darwin(v54);
  v58 = &v384 - v57;
  v59 = __chkstk_darwin(v56);
  v432 = &v384 - v60;
  __chkstk_darwin(v59);
  v433 = &v384 - v61;
  v62 = type metadata accessor for DispatchPredicate();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v65 = (&v384 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v437 = v6;
  v66 = *&v6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v65 = v66;
  (*(v63 + 104))(v65, enum case for DispatchPredicate.onQueue(_:), v62);
  v67 = v66;
  LOBYTE(v66) = _dispatchPreconditionTest(_:)();
  v69 = *(v63 + 8);
  v68 = v63 + 8;
  v69(v65, v62);
  if ((v66 & 1) == 0)
  {
    __break(1u);
    goto LABEL_134;
  }

  v407 = v32;
  v415 = v58;
  v392 = v9;
  v71 = v435;
  v72 = v435 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v73 = v446;
  sub_10000C83C(v72, v446, type metadata accessor for CRLBoardCRDTData);
  v74 = sub_1005B981C(&unk_1019F5250);
  v75 = v436;
  CRRegister.wrappedValue.getter();
  sub_100026028(v73, type metadata accessor for CRLBoardCRDTData);
  v76 = *(v71 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v77 = *(v71 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  v78 = v433;
  sub_10084BD4C(v75, v76, v77, v433);
  v79 = v434;
  v80 = sub_100DEB448();
  *&v434 = v79;
  if (v79)
  {
    v435 = type metadata accessor for CRLBoardIdentifier;
    sub_100026028(v78, type metadata accessor for CRLBoardIdentifier);
    v81 = v446;
    sub_10000C83C(v72, v446, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_100026028(v81, type metadata accessor for CRLBoardCRDTData);

    v82 = v432;
    sub_10084BD4C(v75, v76, v77, v432);
    swift_beginAccess();
    sub_101270EDC(v82, 1);
    swift_endAccess();
    v83 = v82;
    v84 = v435;
    return sub_100026028(v83, v84);
  }

  v85 = v80;
  v386 = v77;
  v387 = v72;
  v421 = v74;
  v385 = v76;
  sub_100026028(v78, type metadata accessor for CRLBoardIdentifier);
  if (!v85)
  {
    v118 = v434;
    if (v430 & 1) != 0 || (v422)
    {
      v428 = v428 == 0;
      v119 = *&v437[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
      v120 = v387;
      v121 = v419;
      sub_10000C83C(v387, v419, type metadata accessor for CRLBoardCRDTData);
      v122 = v446;
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v123 = type metadata accessor for CRCodableVersion();
      v124 = sub_1005EB3DC(v123, qword_101AD6348);
      sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);
      v125 = CRDT.serializedData(_:version:)();
      if (v118)
      {
        sub_100026028(v121, type metadata accessor for CRLBoardCRDTData);
        sub_10000C83C(v120, v122, type metadata accessor for CRLBoardCRDTData);
        v127 = v436;
        CRRegister.wrappedValue.getter();
        sub_100026028(v122, type metadata accessor for CRLBoardCRDTData);
        v128 = v386;

        v129 = v432;
        sub_10084BD4C(v127, v385, v128, v432);
        swift_beginAccess();
        sub_101270EDC(v129, 1);
        swift_endAccess();
        return sub_100026028(v129, type metadata accessor for CRLBoardIdentifier);
      }

      v412 = v124;
      v413 = v119;
      v433 = v126;
      *&v434 = 0;
      v430 = v125;
      sub_100026028(v121, type metadata accessor for CRLBoardCRDTData);
      sub_10000C83C(v120, v122, type metadata accessor for CRLBoardCRDTData);
      v198 = v436;
      CRRegister.wrappedValue.getter();
      sub_100026028(v122, type metadata accessor for CRLBoardCRDTData);
      v199 = v386;

      sub_10084BD4C(v198, v385, v199, v415);
      v200 = v122;
      LODWORD(v426) = *(v435 + 56);
      v201 = *(v435 + 24);
      v424 = *(v435 + 40);
      v425 = v201;
      v202 = v407;
      sub_10000C83C(v120, v407, type metadata accessor for CRLBoardCRDTData);
      CRRegister.wrappedValue.getter();
      sub_100026028(v202, type metadata accessor for CRLBoardCRDTData);
      v203 = v408;
      sub_10000C83C(v120, v408, type metadata accessor for CRLBoardCRDTData);
      type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
      CRRegister.wrappedValue.getter();
      sub_100026028(v203, type metadata accessor for CRLBoardCRDTData);
      sub_100024E98(v430, v433);
      static Date.timeIntervalSinceReferenceDate.getter();
      v205 = v204;
      sub_10000C83C(v120, v200, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&qword_1019F4858);
      CRMaxRegister.wrappedValue.getter();
      sub_100026028(v200, type metadata accessor for CRLBoardCRDTData);
      v206 = v440;
      sub_10000C83C(v120, v200, type metadata accessor for CRLBoardCRDTData);
      v411 = sub_1005B981C(&qword_101A2C810);
      CRRegister.wrappedValue.getter();
      sub_100026028(v200, type metadata accessor for CRLBoardCRDTData);
      LODWORD(v423) = v440;
      v419 = sub_10001FF1C();
      type metadata accessor for CRLBoardDatabaseRow();
      v108 = swift_allocObject();
      v431 = xmmword_101486780;
      *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data] = xmmword_101486780;
      *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData] = xmmword_101486780;
      *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData] = xmmword_101486780;
      v207 = v415;
      sub_10000C83C(v415, &v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], type metadata accessor for CRLBoardIdentifier);
      v208 = (v207 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v209 = v207;
      v210 = *v208;
      v211 = v208[1];

      sub_100026028(v209, type metadata accessor for CRLBoardIdentifier);
      v212 = &v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName];
      *v212 = v210;
      v212[1] = v211;
      v418 = v211;
      v213 = &v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions];
      v214 = v424;
      *v213 = v425;
      *(v213 + 1) = v214;
      v213[32] = v426;
      v215 = v427[4];
      v216 = v429;
      v215(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID], v416, v429);
      v215(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID], v417, v216);
      v217 = &v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data];
      v218 = *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data];
      v219 = *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8];
      v220 = v430;
      v221 = v433;
      sub_100024E98(v430, v433);
      *v217 = v220;
      v217[1] = v221;
      sub_100025870(v218, v219);
      sub_10002640C(v220, v221);
      v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone] = 0;
      *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges] = v428;
      v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges] = 0;
      v222 = &v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData];
      v223 = *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData];
      v224 = *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8];
      v225 = v414;
      v226 = v420;
      sub_100024E84(v414, v420);
      *v222 = v225;
      v222[1] = v226;
      sub_100025870(v223, v224);
      *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate] = v205;
      v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted] = 0;
      v227 = *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData];
      v228 = *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8];
      *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData] = v431;
      sub_100025870(v227, v228);
      *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime] = v206;
      v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable] = v423;
      *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion] = v419;
      v229 = v434;
      sub_100E03D90(v108);
      if (!v229)
      {
        sub_100E04BA4(v435);
        v170 = 0;
        goto LABEL_109;
      }

      sub_10002640C(v430, v433);
      swift_setDeallocating();
      sub_100026028(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], type metadata accessor for CRLBoardIdentifier);

      v230 = v427[1];
      v230(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID], v216);
      v230(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID], v216);
      sub_100025870(*&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data], *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8]);
      sub_100025870(*&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData], *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8]);
      sub_100025870(*&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData], *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8]);
      swift_deallocClassInstance();
      v231 = v446;
      sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
      v232 = v436;
      CRRegister.wrappedValue.getter();
      sub_100026028(v231, type metadata accessor for CRLBoardCRDTData);
      v233 = v386;

      v234 = v432;
      sub_10084BD4C(v232, v385, v233, v432);
      swift_beginAccess();
      sub_101270EDC(v234, 1);
      swift_endAccess();
      v83 = v234;
LABEL_63:
      v84 = type metadata accessor for CRLBoardIdentifier;
      return sub_100026028(v83, v84);
    }

LABEL_26:
    v132 = 0;
    goto LABEL_27;
  }

  v86 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone;
  v87 = *(v85 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone);
  v419 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges;
  v88 = *(v85 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges);
  v89 = (v85 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v90 = *(v85 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  v91 = v434;
  v384 = v85;
  v417 = (v85 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  if (v90 >> 60 == 15)
  {
    if (v430)
    {
LABEL_7:
      v92 = v88 | 2;
      if (v87)
      {
        v92 = 4;
      }

      if (v428)
      {
        v92 = 0;
      }

      v415 = v86;
      v416 = v92;
      v93 = v435;

      v94 = sub_100BD5554(_swiftEmptyArrayStorage);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v425 = _swiftEmptyDictionarySingleton;
      *&v440 = _swiftEmptyDictionarySingleton;
      sub_100E9CD68(v94, sub_100E8FDF4, 0, isUniquelyReferenced_nonNull_native, &v440);
      v422 = v91;
      v96 = v384;

      v430 = v440;

      LODWORD(v409) = 0;
      LODWORD(v410) = 0;
      LODWORD(v424) = 0;
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v416 = v88;
  LODWORD(v433) = v87;
  v108 = *v89;
  sub_100024E84(*v89, v90);
  sub_100024E84(v108, v90);
  sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

  v107 = v425;
  v130 = v431;
  v131 = v85;
  v110 = v91;
  CRDT.init(serializedData:)();
  if (v91)
  {

    sub_100025870(v108, v90);

    (*(v424 + 56))(v107, 1, 1, v130);
    sub_10000CAAC(v107, &qword_101A21C68);
    v91 = 0;
    v87 = v433;
    v88 = v416;
    if (v430)
    {
      goto LABEL_7;
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_57:
  v422 = v110;
  v415 = v86;
  (*(v424 + 56))(v107, 0, 1, v130);
  v184 = v411;
  sub_100025668(v107, v411, type metadata accessor for CRLBoardCRDTData);
  LODWORD(v425) = *(v131 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
  v185 = *(v131 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
  v434 = *(v131 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
  v424 = v185;
  v186 = v446;
  sub_10000C83C(v184, v446, type metadata accessor for CRLBoardCRDTData);
  v187 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v188 = (v131 + v187 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v190 = *v188;
  v189 = v188[1];
  type metadata accessor for CRLBoardData(0);
  v191 = swift_allocObject();

  v192 = v108;
  v193 = v191;
  sub_100025870(v192, v90);

  sub_100026028(v184, type metadata accessor for CRLBoardCRDTData);
  *(v191 + 16) = 7;
  *(v191 + 40) = v424;
  *(v191 + 24) = v434;
  *(v191 + 56) = v425;
  sub_100025668(v186, v191 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
  v194 = (v191 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  *v194 = v190;
  v194[1] = v189;
  if (v428)
  {
    if (v428 == 1)
    {
      v195 = (v416 >> 2) & 1;
      v196 = sub_100E02DAC(v435);
      v197 = v431;
      if (v433 & v195)
      {
        v196 |= 4uLL;
LABEL_76:
        v416 = v196;
        LODWORD(v411) = 1;
        LODWORD(v424) = 1;
LABEL_81:
        v430 = _swiftEmptyDictionarySingleton;
        *&v425 = _swiftEmptyDictionarySingleton;
        goto LABEL_85;
      }

      if (v433)
      {
        v416 = v196;
        LODWORD(v424) = (v430 ^ 1) & v433;
LABEL_80:
        LODWORD(v411) = 1;
        goto LABEL_81;
      }
    }

    else
    {
      v196 = 0;
      v197 = v431;
      if (v433)
      {
        goto LABEL_76;
      }
    }
  }

  else
  {
    v253 = sub_100E02DAC(v191);
    v196 = v253 | v416;
    v197 = v431;
    if (v433)
    {
      LODWORD(v424) = v430 ^ 1;
      if (v430)
      {
        v196 |= 4uLL;
      }

      v416 = v196;
      goto LABEL_80;
    }
  }

  v416 = v196;
  v254 = v446;
  sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
  swift_beginAccess();
  sub_1000066D0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);
  v255 = CRStruct_6.hasDelta(from:)();
  sub_100026028(v254, type metadata accessor for CRLBoardCRDTData);
  if (v255)
  {
    v256 = sub_100BD5554(_swiftEmptyArrayStorage);
    v257 = swift_isUniquelyReferenced_nonNull_native();
    *&v440 = _swiftEmptyDictionarySingleton;
    v258 = v422;
    sub_100E9CD68(v256, sub_100E8FDF4, 0, v257, &v440);
    v197 = v431;

    *&v425 = v440;
    v259 = sub_100BD5554(_swiftEmptyArrayStorage);
    v260 = swift_isUniquelyReferenced_nonNull_native();
    *&v440 = _swiftEmptyDictionarySingleton;
    sub_100E9CD68(v259, sub_100E8FDF4, 0, v260, &v440);
    v422 = v258;

    LODWORD(v411) = 0;
    LODWORD(v424) = 0;
    v430 = v440;
  }

  else
  {
    LODWORD(v411) = 0;
    LODWORD(v424) = 0;
    v430 = _swiftEmptyDictionarySingleton;
    *&v425 = _swiftEmptyDictionarySingleton;
  }

LABEL_85:
  v407 = v193;
  v261 = v193 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v408 = v261;
  v262 = v412;
  sub_10000C83C(v261, v412, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_100026028(v262, type metadata accessor for CRLBoardCRDTData);
  v263 = v440;
  v264 = v413;
  sub_10000C83C(v387, v413, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_100026028(v264, type metadata accessor for CRLBoardCRDTData);
  if (v263 == v440)
  {

LABEL_88:
    v266 = v409;
    sub_10000C83C(v408 + *(v197 + 32), v409, type metadata accessor for CRLSharedBoardMetadataCRDTData);
    v267 = v197;
    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.getter();
    sub_100026028(v266, type metadata accessor for CRLSharedBoardMetadataCRDTData);
    v268 = v440;
    v269 = *(v267 + 32);
    v270 = v387;
    v271 = v410;
    sub_10000C83C(&v387[v269], v410, type metadata accessor for CRLSharedBoardMetadataCRDTData);
    CRRegister.wrappedValue.getter();
    sub_100026028(v271, type metadata accessor for CRLSharedBoardMetadataCRDTData);
    LODWORD(v409) = v268 ^ v440;
    goto LABEL_90;
  }

  v265 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v265)
  {
    goto LABEL_88;
  }

  LODWORD(v409) = 1;
  v270 = v387;
LABEL_90:
  v93 = v435;
  v272 = v407;
  v273 = sub_10001FF1C() < v434;
  if (v428 == 2)
  {
    swift_retain_n();
  }

  else
  {
    v274 = v270;
    v275 = v446;
    sub_10000C83C(v274, v446, type metadata accessor for CRLBoardCRDTData);
    swift_beginAccess();
    sub_1000066D0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);
    swift_retain_n();
    v276 = v403;
    CRStruct_6.merge(_:)();
    sub_100026028(v275, type metadata accessor for CRLBoardCRDTData);
    (*(v404 + 8))(v276, v405);
    swift_endAccess();
    v277 = *(v93 + 40);
    v444[0] = *(v93 + 24);
    v444[1] = v277;
    v445 = *(v93 + 56);
    sub_1012F22F0(v444);
    v93 = v272;
  }

  v96 = v384;
  LODWORD(v410) = v273;
  if (v433)
  {
    if ((v424 & 1) == 0)
    {

      v278 = sub_100BD5554(_swiftEmptyArrayStorage);
      v279 = v430;
      v280 = swift_isUniquelyReferenced_nonNull_native();
      *&v440 = v279;
      v281 = v422;
      sub_100E9CD68(v278, sub_100E8FDF4, 0, v280, &v440);
      v422 = v281;

      v96 = v384;

      LODWORD(v424) = 0;
      v430 = v440;
LABEL_12:
      LODWORD(v411) = 1;
      goto LABEL_13;
    }

    LODWORD(v424) = 1;
  }

  else
  {
  }

LABEL_13:
  v413 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime;
  v7 = *(v96 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime);
  v97 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v433 = v97;
  v98 = v446;
  *&v434 = type metadata accessor for CRLBoardCRDTData;
  sub_10000C83C(v93 + v97, v446, type metadata accessor for CRLBoardCRDTData);
  v412 = sub_1005B981C(&qword_1019F4858);
  CRMaxRegister.wrappedValue.getter();
  v435 = type metadata accessor for CRLBoardCRDTData;
  sub_100026028(v98, type metadata accessor for CRLBoardCRDTData);
  v8 = *&v440;
  v99 = *(v93 + 56);
  v100 = v96 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
  v101 = *(v93 + 40);
  *v100 = *(v93 + 24);
  *(v100 + 16) = v101;
  *(v100 + 32) = v99;
  sub_10000C83C(v93 + v97, v98, type metadata accessor for CRLBoardCRDTData);
  v102 = v436;
  CRRegister.wrappedValue.getter();
  sub_100026028(v98, type metadata accessor for CRLBoardCRDTData);
  v103 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  v104 = v384;
  swift_beginAccess();
  v105 = v427[5];
  v105(v104 + v103, v102, v429);
  swift_endAccess();
  sub_10000C83C(v93 + v433, v98, v434);
  type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
  CRRegister.wrappedValue.getter();
  sub_100026028(v98, v435);
  v106 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
  swift_beginAccess();
  v105(v104 + v106, v102, v429);
  swift_endAccess();
  v435 = v93;
  v107 = v433;
  v108 = v426;
  sub_10000C83C(v93 + v433, v426, v434);
  if (qword_1019F1520 != -1)
  {
LABEL_151:
    swift_once();
  }

  v109 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v109, qword_101AD6348);
  sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);
  v110 = v422;
  v111 = CRDT.serializedData(_:version:)();
  v113 = v386;
  if (v110)
  {

    sub_100026028(v108, type metadata accessor for CRLBoardCRDTData);

    v114 = v446;
    sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
    v115 = v436;
    CRRegister.wrappedValue.getter();
    sub_100026028(v114, type metadata accessor for CRLBoardCRDTData);

    v116 = v432;
    sub_10084BD4C(v115, v385, v113, v432);
    swift_beginAccess();
    sub_101270EDC(v116, 1);
    swift_endAccess();
    v84 = type metadata accessor for CRLBoardIdentifier;
    v83 = v116;
    return sub_100026028(v83, v84);
  }

  v137 = v111;
  v138 = v112;
  *&v434 = 0;
  sub_100026028(v108, type metadata accessor for CRLBoardCRDTData);
  v139 = v417;
  v140 = *v417;
  v141 = v417[1];
  *v417 = v137;
  v139[1] = v138;
  sub_100025870(v140, v141);
  v142 = v435;
  v143 = v446;
  sub_10000C83C(v107 + v435, v446, type metadata accessor for CRLBoardCRDTData);
  CRMaxRegister.wrappedValue.getter();
  sub_100026028(v143, type metadata accessor for CRLBoardCRDTData);
  v144 = v384;
  *(v384 + v413) = v440;
  v145 = v415;
  *(v144 + v419) = v416;
  *(v144 + v145) = v424 & 1;
  v146 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable;
  LODWORD(v429) = *(v144 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable);
  sub_10000C83C(v107 + v142, v143, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  v147 = v144;
  v68 = v386;
  sub_100026028(v143, type metadata accessor for CRLBoardCRDTData);
  v148 = v440;
  *(v147 + v146) = v440;
  if ((v429 & 1) != 0 || !v148)
  {
LABEL_65:
    v239 = v420;
    if (v420 >> 60 != 15)
    {
      v240 = (v147 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
      v241 = *(v147 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
      v242 = v240[1];
      v243 = v414;
      *v240 = v414;
      v240[1] = v239;
      sub_100024E98(v243, v239);
      v244 = v241;
      v147 = v384;
      sub_100025870(v244, v242);
    }

    v245 = v437;
    v246 = v434;
    sub_100E02F80(v147);
    v32 = v436;
    v247 = v430;
    if (v246)
    {

      v248 = v446;
      sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
      CRRegister.wrappedValue.getter();
      sub_100026028(v248, type metadata accessor for CRLBoardCRDTData);

      v249 = v432;
      sub_10084BD4C(v32, v385, v68, v432);
      swift_beginAccess();
      sub_101270EDC(v249, 1);
      swift_endAccess();
      return sub_100026028(v249, type metadata accessor for CRLBoardIdentifier);
    }

    if (v428)
    {
      v250 = sub_100BD5554(_swiftEmptyArrayStorage);
      v251 = sub_100DCB0EC(v250);

      v433 = sub_1012D944C(v252, v251);
    }

    else
    {
      v433 = _swiftEmptySetSingleton;
    }

    v282 = v385;
    v283 = v446;
    sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_100026028(v283, type metadata accessor for CRLBoardCRDTData);

    sub_10084BD4C(v32, v282, v68, v418);
    swift_storeEnumTagMultiPayload();
    if (*(v425 + 16))
    {
      goto LABEL_103;
    }

    v284 = v411;
    if (*(v247 + 16))
    {
      v284 = 1;
    }

    if (v284)
    {
LABEL_103:
      v285 = v68;
      v286 = v411;
      v288 = sub_100DF6D54(v425, v247, v411);
      v289 = v287;
      if (v286)
      {
        sub_100DF8718(v418);
        v68 = v285;
      }

      else
      {
        *&v434 = 0;
        v290 = *(v287 + 16);
        if (v290)
        {
          v291 = sub_100B39C98(*(v287 + 16), 0);
          *&v431 = sub_100B3C454(&v440, v291 + 4, v290, v289);

          result = sub_100035F90();
          if (v431 != v290)
          {
            __break(1u);
            goto LABEL_158;
          }

          v32 = v436;
          v282 = v385;
          v68 = v386;
        }

        else
        {
          v291 = _swiftEmptyArrayStorage;
          v68 = v285;
        }

        v302 = v434;
        sub_100DF8FA8(v418, v291);
        if (v302)
        {

          sub_100026028(v418, type metadata accessor for CRLAssetReferrerIdentifier);
          v303 = v446;
          sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
          CRRegister.wrappedValue.getter();
          sub_100026028(v303, type metadata accessor for CRLBoardCRDTData);

          v304 = v432;
          sub_10084BD4C(v32, v282, v68, v432);
          swift_beginAccess();
          sub_101270EDC(v304, 1);
          swift_endAccess();
          return sub_100026028(v304, type metadata accessor for CRLBoardIdentifier);
        }
      }

      sub_100DF9920(v418, v288, 1);

      v245 = v437;
    }

    else
    {
    }

    sub_100026028(v418, type metadata accessor for CRLAssetReferrerIdentifier);
    v305 = v446;
    sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_100026028(v305, type metadata accessor for CRLBoardCRDTData);

    sub_10084BD4C(v32, v282, v68, v402);
    swift_storeEnumTagMultiPayload();
    v306 = *(v433 + 16);
    if (v306)
    {
      v307 = sub_100B39C98(*(v433 + 16), 0);
      v308 = sub_100B3B5B0(&v440, v307 + 4, v306, v433);
      sub_100035F90();
      if (v308 == v306)
      {
LABEL_121:
        v309 = v402;
        sub_100DF4A2C(v402, v307, 0);
        sub_100026028(v309, type metadata accessor for CRLAssetReferrerIdentifier);

        v310 = *(v435 + 3);

        v311 = sub_10001FF1C();

        if (v311 >= v310)
        {
          v312 = _swiftEmptySetSingleton;
          v443 = _swiftEmptySetSingleton;
          v70 = 0;
          if (v409)
          {
            *&v434 = 0;
            goto LABEL_132;
          }

          goto LABEL_135;
        }

        v312 = _swiftEmptySetSingleton;
        v70 = 0;
        if ((v410 & 1) == 0)
        {
          *&v434 = 0;
          goto LABEL_131;
        }

        v443 = _swiftEmptySetSingleton;
        if (v409)
        {
          *&v434 = 0;
          LODWORD(v410) = 0;
          goto LABEL_132;
        }

LABEL_134:
        LODWORD(v410) = 0;
LABEL_135:
        v348 = v385;
        if (v7 != v8)
        {
          *&v434 = v70;
          sub_1005B981C(&unk_101A19BD0);
          v349 = (*(v389 + 80) + 32) & ~*(v389 + 80);
          v350 = swift_allocObject();
          *(v350 + 16) = xmmword_10146C6B0;
          v351 = v446;
          sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
          CRRegister.wrappedValue.getter();
          sub_100026028(v351, type metadata accessor for CRLBoardCRDTData);

          sub_10084BD4C(v32, v348, v68, v350 + v349);
          v352 = sub_1005BF2F8(v350);
          swift_setDeallocating();
          sub_100026028(v350 + v349, type metadata accessor for CRLBoardIdentifier);
          swift_deallocClassInstance();
          v353 = sub_100BD9514(_swiftEmptyArrayStorage);
          if (v352[2])
          {
            sub_100006370(0, &qword_1019F2D90);
            v433 = static OS_dispatch_queue.main.getter();
            v354 = swift_allocObject();
            v355 = v437;
            *(v354 + 16) = v437;
            *(v354 + 24) = v352;
            *(v354 + 32) = 0;
            *(v354 + 40) = v353;
            *&v442[0] = sub_10007A264;
            *(&v442[0] + 1) = v354;
            *&v440 = _NSConcreteStackBlock;
            *(&v440 + 1) = *"";
            *&v441 = sub_100007638;
            *(&v441 + 1) = &unk_1018A5258;
            v356 = _Block_copy(&v440);
            v357 = v355;

            v358 = v394;
            static DispatchQoS.unspecified.getter();
            *&v440 = _swiftEmptyArrayStorage;
            sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
            sub_1005B981C(&unk_1019FF400);
            sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
            v359 = v395;
            v360 = v392;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v361 = v433;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v356);

            (*(v398 + 8))(v359, v360);
            (*(v396 + 8))(v358, v397);
          }

          else
          {
LABEL_147:
          }

          goto LABEL_148;
        }

        v132 = v435;
LABEL_27:
        v133 = v446;
        sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
        v134 = v436;
        CRRegister.wrappedValue.getter();
        sub_100026028(v133, type metadata accessor for CRLBoardCRDTData);
        v135 = v386;

        v136 = v432;
        sub_10084BD4C(v134, v385, v135, v432);
        swift_beginAccess();
        sub_101270EDC(v136, 1);
        swift_endAccess();

        sub_100026028(v136, type metadata accessor for CRLBoardIdentifier);
        return v132;
      }

      __break(1u);
    }

    v307 = _swiftEmptyArrayStorage;
    goto LABEL_121;
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v150 = UUID.uuidString.getter();
  v152 = v151;
  *(inited + 56) = &type metadata for String;
  v153 = sub_1000053B0();
  *(inited + 32) = v150;
  v433 = inited + 32;
  *&v431 = v153;
  *(inited + 64) = v153;
  *(inited + 40) = v152;
  v426 = objc_opt_self();
  v154 = [v426 _atomicIncrementAssertCount];
  *&v440 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v440);
  StaticString.description.getter();
  v429 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v155 = String._bridgeToObjectiveC()();

  v156 = [v155 lastPathComponent];

  v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v427 = v158;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v159 = static OS_os_log.crlAssert;
  v160 = swift_initStackObject();
  *(v160 + 16) = xmmword_10146CA70;
  *(v160 + 56) = &type metadata for Int32;
  *(v160 + 64) = &protocol witness table for Int32;
  *(v160 + 32) = v154;
  v161 = sub_100006370(0, &qword_1019F4D30);
  *(v160 + 96) = v161;
  v162 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  v163 = v429;
  *(v160 + 72) = v429;
  v164 = v431;
  *(v160 + 136) = &type metadata for String;
  *(v160 + 144) = v164;
  *(v160 + 104) = v162;
  *(v160 + 112) = v157;
  *(v160 + 120) = v427;
  *(v160 + 176) = &type metadata for UInt;
  *(v160 + 184) = &protocol witness table for UInt;
  *(v160 + 152) = 4152;
  v165 = v440;
  *(v160 + 216) = v161;
  *(v160 + 224) = v162;
  *(v160 + 192) = v165;
  v166 = v163;
  v167 = v165;
  v168 = static os_log_type_t.error.getter();
  sub_100005404(v159, &_mh_execute_header, v168, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v160);
  swift_setDeallocating();
  v429 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v169 = static os_log_type_t.error.getter();
  sub_100005404(v159, &_mh_execute_header, v169, "Non-discardable board became discardable for %{public}@. This can cause data loss.", 82, 2, inited);

  type metadata accessor for __VaListBuilder();
  v86 = swift_allocObject();
  v86[2] = 8;
  v86[3] = 0;
  v107 = v86 + 3;
  v86[4] = 0;
  v86[5] = 0;
  *&v431 = *(inited + 16);
  if (!v431)
  {
LABEL_64:
    v235 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v236 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v237 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v238 = String._bridgeToObjectiveC()();

    [v426 handleFailureInFunction:v236 file:v237 lineNumber:4152 isFatal:0 format:v238 args:v235];

    swift_setDeallocating();
    swift_arrayDestroy();
    v68 = v386;
    v147 = v384;
    goto LABEL_65;
  }

  v170 = 0;
  while (1)
  {
    v108 = inited;
    v171 = (v433 + 40 * v170);
    v131 = v171[3];
    v90 = v171[4];
    sub_100020E58(v171, v131);
    v172 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v130 = *v107;
    v173 = *(v172 + 16);
    v174 = __OFADD__(*v107, v173);
    v175 = *v107 + v173;
    if (v174)
    {
      __break(1u);
      goto LABEL_147;
    }

    v176 = v86[4];
    if (v176 >= v175)
    {
      goto LABEL_49;
    }

    if (v176 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v90 = v86[5];
    if (2 * v176 > v175)
    {
      v175 = 2 * v176;
    }

    v86[4] = v175;
    if ((v175 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_150;
    }

    v131 = v172;
    v177 = swift_slowAlloc();
    v178 = v177;
    v86[5] = v177;
    if (v90)
    {
      if (v177 != v90 || v177 >= v90 + 8 * v130)
      {
        memmove(v177, v90, 8 * v130);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v172 = v131;
LABEL_49:
      v178 = v86[5];
      if (!v178)
      {
        goto LABEL_56;
      }

      goto LABEL_50;
    }

    v172 = v131;
    if (!v178)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_50:
    inited = v108;
    v180 = *(v172 + 16);
    if (v180)
    {
      break;
    }

LABEL_34:

    if (++v170 == v431)
    {
      goto LABEL_64;
    }
  }

  v181 = (v172 + 32);
  v182 = *v107;
  while (1)
  {
    v183 = *v181++;
    v178[v182] = v183;
    v182 = *v107 + 1;
    if (__OFADD__(*v107, 1))
    {
      break;
    }

    *v107 = v182;
    if (!--v180)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_109:
  *(v401 + *(v400 + 36)) = _swiftEmptyDictionarySingleton;
  LOBYTE(v438[0]) = 0;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v438[0]) = 1;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v438[0]) = 1;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v438[0]) = 0;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v438[0]) = 0;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v438[0]) = 1;
  v440 = 0x3FF0000000000000uLL;
  v441 = 0uLL;
  LOBYTE(v442[0]) = 1;
  *(v442 + 8) = v431;
  *(&v442[1] + 8) = v431;
  BYTE8(v442[2]) = 0;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v438[2] = v442[0];
  v439[0] = v442[1];
  *(v439 + 9) = *(&v442[1] + 9);
  v438[0] = v440;
  v438[1] = v441;
  sub_100EA2550();
  v292 = v170;
  v293 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v295 = v446;
  v296 = v427;
  if (v292)
  {
    sub_100026028(v401, type metadata accessor for CRLUserBoardMetadataCRDTData);

    swift_setDeallocating();
    sub_100026028(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], type metadata accessor for CRLBoardIdentifier);

    v297 = v296[1];
    v298 = v429;
    v297(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID], v429);
    v297(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID], v298);
    sub_100025870(*&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data], *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8]);
    sub_100025870(*&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData], *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8]);
    sub_100025870(*&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData], *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8]);
    swift_deallocClassInstance();
    sub_10002640C(v430, v433);
    sub_1006D62E4(&v440);
    sub_10000C83C(v387, v295, type metadata accessor for CRLBoardCRDTData);
    v299 = v436;
    CRRegister.wrappedValue.getter();
    sub_100026028(v295, type metadata accessor for CRLBoardCRDTData);
    v300 = v386;

    v301 = v432;
    sub_10084BD4C(v299, v385, v300, v432);
    swift_beginAccess();
    sub_101270EDC(v301, 1);
    swift_endAccess();
    v83 = v301;
    goto LABEL_63;
  }

  *&v425 = v293;
  v426 = v294;

  sub_1006D62E4(&v440);
  sub_10000C83C(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], v399, type metadata accessor for CRLBoardIdentifier);
  v313 = v393;
  sub_10000C83C(v401, v393, type metadata accessor for CRLUserBoardMetadataCRDTData);
  sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData);
  v314 = CRDT.serializedData(_:version:)();
  *&v434 = 0;
  *&v424 = 0x1000000000000;
  v419 = v314;
  v417 = v315;
  CRRegister.wrappedValue.getter();
  LODWORD(v416) = LOBYTE(v438[0]);
  CRRegister.wrappedValue.getter();
  v316 = v438[0];
  CRRegister.wrappedValue.getter();
  LODWORD(v423) = LOBYTE(v438[0]);
  CRRegister.wrappedValue.getter();
  LODWORD(v420) = LOBYTE(v438[0]);
  CRRegister.wrappedValue.getter();
  sub_100026028(v313, type metadata accessor for CRLUserBoardMetadataCRDTData);
  v317 = v438[0];
  v318 = v390;
  sub_100025668(v399, v390, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for CRLUserBoardMetadataDatabaseRow();
  v319 = swift_allocObject();
  v320 = (v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
  *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData) = v431;
  sub_100025668(v318, v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v321 = (v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
  v322 = v417;
  *v321 = v419;
  v321[1] = v322;
  *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite) = v416;
  *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors) = v316;
  v323 = (v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
  v324 = v426;
  *v323 = v425;
  v323[1] = v324;
  v325 = v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion;
  *v325 = 0;
  *(v325 + 8) = 1;
  *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = 1;
  v326 = *v320;
  v327 = v320[1];
  *v320 = v431;
  sub_100025870(v326, v327);
  *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity) = v424;
  *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) = v423;
  *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled) = v420;
  *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen) = v317;
  v328 = v434;
  sub_100E064E4(v319);
  v329 = v328;
  if (v328)
  {
    sub_10002640C(v430, v433);
    swift_setDeallocating();
    sub_100026028(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
    sub_10002640C(*(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
    sub_100025870(*(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
    swift_deallocClassInstance();
    swift_setDeallocating();
    sub_100026028(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], type metadata accessor for CRLBoardIdentifier);

    v330 = v427[1];
    v331 = v429;
    v330(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID], v429);
    v330(&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID], v331);
    sub_100025870(*&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data], *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8]);
    sub_100025870(*&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData], *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8]);
    sub_100025870(*&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData], *&v108[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8]);
    swift_deallocClassInstance();
    sub_100026028(v401, type metadata accessor for CRLUserBoardMetadataCRDTData);
    v332 = v446;
    sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
    v333 = v436;
    CRRegister.wrappedValue.getter();
    sub_100026028(v332, type metadata accessor for CRLBoardCRDTData);
    v334 = v386;

    v335 = v432;
    sub_10084BD4C(v333, v385, v334, v432);
    swift_beginAccess();
    sub_101270EDC(v335, 1);
    swift_endAccess();
    return sub_100026028(v335, type metadata accessor for CRLBoardIdentifier);
  }

  v362 = _swiftEmptyArrayStorage;
  v363 = sub_100BD5554(_swiftEmptyArrayStorage);
  v364 = v446;
  sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
  v365 = v436;
  CRRegister.wrappedValue.getter();
  sub_100026028(v364, type metadata accessor for CRLBoardCRDTData);
  v366 = v386;

  v367 = v388;
  sub_10084BD4C(v365, v385, v366, v388);
  swift_storeEnumTagMultiPayload();
  v368 = sub_100BD5554(_swiftEmptyArrayStorage);
  if (!*(v368 + 16) && !*(v363 + 16))
  {
    *&v434 = 0;
    goto LABEL_154;
  }

  v429 = v368;
  *&v431 = v363;
  v369 = sub_100DF6D54(v368, v363, 0);
  v371 = v369;
  v372 = v370[2];
  v427 = v370;
  if (!v372)
  {
    goto LABEL_144;
  }

  v373 = v370;
  v426 = v369;
  *&v434 = 0;
  *&v425 = sub_100B39C98(v372, 0);
  v374 = sub_100B3C454(v438, (v425 + 32), v372, v373);

  result = sub_100035F90();
  if (v374 == v372)
  {
    v329 = v434;
    v367 = v388;
    v371 = v426;
    v362 = v425;
LABEL_144:
    sub_100DF8FA8(v367, v362);
    if (v329)
    {
      *&v434 = v329;

      v375 = v436;
      v377 = v386;
      v376 = v387;
      v378 = v401;
      sub_10002640C(v430, v433);
      sub_100026028(v367, type metadata accessor for CRLAssetReferrerIdentifier);
      sub_100026028(v378, type metadata accessor for CRLUserBoardMetadataCRDTData);
      v379 = v376;
      v380 = v446;
      sub_10000C83C(v379, v446, type metadata accessor for CRLBoardCRDTData);
      CRRegister.wrappedValue.getter();
      sub_100026028(v380, type metadata accessor for CRLBoardCRDTData);

      v381 = v432;
      sub_10084BD4C(v375, v385, v377, v432);
      swift_beginAccess();
      sub_101270EDC(v381, 1);
      swift_endAccess();
      v84 = type metadata accessor for CRLBoardIdentifier;
      v83 = v381;
      return sub_100026028(v83, v84);
    }

    sub_100DF9920(v367, v371, v428);
    *&v434 = 0;

LABEL_154:

    sub_100026028(v388, type metadata accessor for CRLAssetReferrerIdentifier);
    v382 = *(v435 + 3);

    v383 = sub_10001FF1C();
    sub_10002640C(v430, v433);

    swift_setDeallocating();
    sub_100026028(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
    sub_10002640C(*(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
    sub_100025870(*(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v319 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
    swift_deallocClassInstance();
    sub_100026028(v401, type metadata accessor for CRLUserBoardMetadataCRDTData);

    if (v383 >= v382)
    {
      LODWORD(v410) = 0;
      v312 = _swiftEmptySetSingleton;
      v443 = _swiftEmptySetSingleton;
      v245 = v437;
    }

    else
    {
      v245 = v437;
LABEL_131:
      v443 = _swiftEmptySetSingleton;
      v336 = v446;
      sub_10000C83C(v387, v446, type metadata accessor for CRLBoardCRDTData);
      v337 = v436;
      CRRegister.wrappedValue.getter();
      sub_100026028(v336, type metadata accessor for CRLBoardCRDTData);
      v338 = v386;

      v339 = v391;
      sub_10084BD4C(v337, v385, v338, v391);
      v340 = v432;
      sub_100031F10(v432, v339);
      sub_100026028(v340, type metadata accessor for CRLBoardIdentifier);
      LODWORD(v410) = 2;
      v312 = v443;
    }

LABEL_132:
    sub_100006370(0, &qword_1019F2D90);
    v433 = static OS_dispatch_queue.main.getter();
    v341 = swift_allocObject();
    *(v341 + 16) = _swiftEmptySetSingleton;
    *(v341 + 24) = _swiftEmptySetSingleton;
    *(v341 + 32) = v312;
    *(v341 + 40) = 0;
    *(v341 + 48) = v245;
    *&v442[0] = sub_100079418;
    *(&v442[0] + 1) = v341;
    *&v440 = _NSConcreteStackBlock;
    *(&v440 + 1) = *"";
    *&v441 = sub_100007638;
    *(&v441 + 1) = &unk_1018A52A8;
    v342 = _Block_copy(&v440);
    v343 = v245;

    v344 = v394;
    static DispatchQoS.unspecified.getter();
    *&v440 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v345 = v395;
    v346 = v392;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v347 = v433;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v342);

    (*(v398 + 8))(v345, v346);
    (*(v396 + 8))(v344, v397);
LABEL_148:
    v132 = v435;
    goto LABEL_27;
  }

LABEL_158:
  __break(1u);
  return result;
}

uint64_t sub_100E02DAC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10000C83C(v1 + v10, v9, type metadata accessor for CRLBoardCRDTData);
  v11 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10000C83C(a1 + v11, v7, type metadata accessor for CRLBoardCRDTData);
  sub_1000066D0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);
  v12 = CRStruct_6.hasDelta(from:)();
  sub_100026028(v7, type metadata accessor for CRLBoardCRDTData);
  sub_100026028(v9, type metadata accessor for CRLBoardCRDTData);
  v13 = 2;
  if ((v12 & 1) == 0)
  {
    v13 = 0;
  }

  if (v2[3] != a1[3])
  {
    v13 |= 8uLL;
  }

  if (v2[4] != a1[4])
  {
    v13 |= 0x20uLL;
  }

  if (v2[5] == a1[5])
  {
    return v13;
  }

  else
  {
    return v13 | 0x40;
  }
}

uint64_t sub_100E02F80(unint64_t a1)
{
  v143 = a1;
  v2 = type metadata accessor for UUID();
  v140 = *(v2 - 8);
  __chkstk_darwin(v2);
  v136 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v5 + 104);
  v142 = v5 + 104;
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v141 = v14;
  v14(v7, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v139 = v2;
  v144 = v9;
  v145 = v10;
  v146 = 0;
  v147 = 0xE000000000000000;
  _StringGuts.grow(_:)(162);
  v15._countAndFlagsBits = 0x20455441445055;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x736472616F62;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x2054455320;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x656E6961746E6F63;
  v18._object = 0xEE00646975755F72;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x202C3F203D20;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD000000000000018;
  v20._object = 0x80000001015A34C0;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x202C3F203D20;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 1635017060;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x202C3F203D20;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x6E6F7473626D6F74;
  v24._object = 0xEA00000000006465;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x202C3F203D20;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._object = 0x80000001015A33D0;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x202C3F203D20;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000018;
  v28._object = 0x80000001015A37D0;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x202C3F203D20;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x7461645F636E7973;
  v30._object = 0xE900000000000061;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C3F203D20;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);
  v32._object = 0xEE00657461645F65;
  v32._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x202C3F203D20;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD00000000000001ALL;
  v34._object = 0x80000001015A37F0;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x202C3F203D20;
  v35._object = 0xE600000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x5F65726168736B63;
  v36._object = 0xEC00000061746164;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x202C3F203D20;
  v37._object = 0xE600000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000014;
  v38._object = 0x80000001015A3590;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x202C3F203D20;
  v39._object = 0xE600000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD000000000000012;
  v40._object = 0x80000001015A3810;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x202C3F203D20;
  v41._object = 0xE600000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x61637369645F7369;
  v42._object = 0xEE00656C62616472;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x202C3F203D20;
  v43._object = 0xE600000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD00000000000002DLL;
  v44._object = 0x80000001015A3760;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x202C3F203D20;
  v45._object = 0xE600000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD000000000000026;
  v46._object = 0x80000001015A33F0;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x202C3F203D20;
  v47._object = 0xE600000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  v48._object = 0x80000001015A3790;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x202C3F203D20;
  v49._object = 0xE600000000000000;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0xD000000000000015;
  v50._object = 0x80000001015A3830;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0x48570A203F203D20;
  v51._object = 0xEC00000020455245;
  String.append(_:)(v51);
  v52._object = 0x8000000101585360;
  v52._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 1059077408;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v54 = v146;
  v55 = v147;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v57 = v138;
  v58 = sub_10001CC04(v56, v54, v55);

  if (v57)
  {
    return result;
  }

  v135 = 0;
  v60 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  v61 = v143;
  swift_beginAccess();
  v62 = v136;
  v134 = v140[2];
  v134(v136, v61 + v60, v139);
  v63 = UUID.crl_data()();
  v65 = v64;
  v66 = *(*(v58 + 16) + 32);
  *v7 = v66;
  v145(v7, v144, v4);
  v67 = v66;
  LOBYTE(v66) = _dispatchPreconditionTest(_:)();
  v137 = v4;
  v138 = v13;
  v141(v7, v4);
  if ((v66 & 1) == 0)
  {
    goto LABEL_25;
  }

  v68 = v135;
  sub_100DCCAB4(v63, v65, v58, 1);
  v135 = v68;
  sub_10002640C(v63, v65);
  v69 = v139;
  v70 = v140[1];
  ++v140;
  v70(v62, v139);
  v71 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
  v72 = v143;
  swift_beginAccess();
  v134(v62, v72 + v71, v69);
  v73 = UUID.crl_data()();
  v75 = v74;
  v76 = *(*(v58 + 16) + 32);
  *v7 = v76;
  v77 = v137;
  v145(v7, v144, v137);
  v78 = v76;
  LOBYTE(v72) = _dispatchPreconditionTest(_:)();
  v141(v7, v77);
  if ((v72 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v79 = v135;
  sub_100DCCAB4(v73, v75, v58, 2);
  v135 = v79;
  sub_10002640C(v73, v75);
  v70(v62, v139);
  v80 = v143;
  v81 = *(v143 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v82 = *(v143 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  sub_100024E84(v81, v82);
  sub_10089BB64(v81, v82, 3);
  sub_100025870(v81, v82);
  sub_10089B9A4(*(v80 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone), 4);
  sub_100034254(*(v80 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges), 5);
  sub_10089B9A4(*(v80 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges), 6);
  v83 = *(v80 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
  v84 = *(v80 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8);
  sub_100024E84(v83, v84);
  sub_10089BB64(v83, v84, 7);
  v85 = v137;
  sub_100025870(v83, v84);
  v86 = *(v80 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate);
  v87 = *(*(v58 + 16) + 32);
  *v7 = v87;
  v88 = v144;
  v145(v7, v144, v85);
  v89 = v87;
  LOBYTE(v87) = _dispatchPreconditionTest(_:)();
  v90 = v85;
  v91 = v141;
  v141(v7, v90);
  if ((v87 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  swift_beginAccess();
  sqlite3_bind_double(*(v58 + 24), 8, v86);
  v92 = v91;
  v93 = v143;
  sub_10089B9A4(*(v143 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted), 9);
  v94 = *(v93 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
  v95 = *(v93 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
  sub_100024E84(v94, v95);
  sub_10089BB64(v94, v95, 10);
  v96 = v94;
  v97 = v137;
  sub_100025870(v96, v95);
  v98 = v93 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
  sub_100034254(*(v93 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions), 11);
  v99 = *(v93 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime);
  v100 = *(*(v58 + 16) + 32);
  *v7 = v100;
  v145(v7, v88, v97);
  v101 = v100;
  LOBYTE(v100) = _dispatchPreconditionTest(_:)();
  v140 = v7;
  v92(v7, v97);
  if ((v100 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sqlite3_bind_double(*(v58 + 24), 12, v99);
  v102 = v143;
  sub_10089B9A4(*(v143 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable), 13);
  sub_100034254(*(v98 + 8), 14);
  sub_100034254(*(v98 + 16), 15);
  if (*(v98 + 32))
  {
    v103 = *(*(v58 + 16) + 32);
    v104 = v140;
    *v140 = v103;
    v105 = v145;
    v145(v104, v144, v97);
    v106 = v103;
    LOBYTE(v103) = _dispatchPreconditionTest(_:)();
    v92(v104, v97);
    if (v103)
    {
      sqlite3_bind_null(*(v58 + 24), 16);
      goto LABEL_11;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_100034254(*(v98 + 24), 16);
  v105 = v145;
LABEL_11:
  sub_100034254(*(v102 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion), 17);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v107 = v135;
  v108 = sub_10084DAE4();
  if (v107)
  {
    v110 = *(*(v58 + 16) + 32);
    v111 = v140;
    *v140 = v110;
    v105(v111, v144, v97);
    v112 = v110;
    v113 = _dispatchPreconditionTest(_:)();
    v108 = (v141)(v111, v97);
    if (v113)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v143 = v109;
  v114 = v105;
  v115 = v108;
  v116 = *(*(v58 + 16) + 32);
  v117 = v140;
  *v140 = v116;
  v114(v117, v144, v97);
  v118 = v116;
  v119 = _dispatchPreconditionTest(_:)();
  v141(v117, v97);
  if ((v119 & 1) == 0)
  {
    goto LABEL_30;
  }

  v120 = v143;
  sub_100DCCAB4(v115, v143, v58, 18);
  sub_10002640C(v115, v120);
  v121 = *(*(v58 + 16) + 32);
  *v117 = v121;
  v145(v117, v144, v97);
  v122 = v121;
  v123 = _dispatchPreconditionTest(_:)();
  v141(v117, v97);
  if ((v123 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v124 = *(v58 + 16);

  v125 = sub_10001CEC4(v124, v58);

  if (v125 != 101)
  {
    goto LABEL_19;
  }

  v126 = *(*(v58 + 16) + 32);
  *v117 = v126;
  v145(v117, v144, v97);
  v127 = v126;
  v125 = _dispatchPreconditionTest(_:)();
  v141(v117, v97);
  if ((v125 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    sub_10089C7D0();
    swift_allocError();
    *v128 = v125;
    *(v128 + 8) = 0xD000000000000016;
    *(v128 + 16) = 0x80000001015A46C0;
    swift_willThrow();
    v129 = *(*(v58 + 16) + 32);
    *v117 = v129;
    v145(v117, v144, v97);
    v130 = v129;
    v131 = _dispatchPreconditionTest(_:)();
    v141(v117, v97);
    if (v131)
    {
      goto LABEL_20;
    }

LABEL_32:
    __break(1u);
  }

LABEL_20:
  v132 = *(v58 + 24);
  if (v132)
  {
    sqlite3_finalize(v132);
    *(v58 + 24) = 0;
  }
}

uint64_t sub_100E03D90(uint64_t a1)
{
  v123 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v120 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v11 = v6 + 104;
  v10 = *(v6 + 104);
  v128 = enum case for DispatchPredicate.onQueue(_:);
  v127 = v10;
  v10(v8);
  v12 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v124 = v6 + 8;
  v125 = v5;
  v13(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v122 = v3;
  v121 = v2;
  v129 = 0;
  v130 = 0xE000000000000000;
  _StringGuts.grow(_:)(149);
  v14._countAndFlagsBits = 0x4920545245534E49;
  v14._object = 0xEC000000204F544ELL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x736472616F62;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._object = 0x8000000101585360;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x616E5F72656E776FLL;
  v19._object = 0xEA0000000000656DLL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x656E6961746E6F63;
  v21._object = 0xEE00646975755F72;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD000000000000018;
  v23._object = 0x80000001015A34C0;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 1635017060;
  v25._object = 0xE400000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x6E6F7473626D6F74;
  v27._object = 0xEA00000000006465;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29._object = 0x80000001015A33D0;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 8236;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x7461645F636E7973;
  v31._object = 0xE900000000000061;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._object = 0xEE00657461645F65;
  v33._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 8236;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001ALL;
  v35._object = 0x80000001015A37F0;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x5F65726168736B63;
  v37._object = 0xEC00000061746164;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD000000000000014;
  v39._object = 0x80000001015A3590;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 8236;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD000000000000012;
  v41._object = 0x80000001015A3810;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 8236;
  v42._object = 0xE200000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x61637369645F7369;
  v43._object = 0xEE00656C62616472;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 8236;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0xD00000000000002DLL;
  v45._object = 0x80000001015A3760;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 8236;
  v46._object = 0xE200000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD000000000000026;
  v47._object = 0x80000001015A33F0;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 8236;
  v48._object = 0xE200000000000000;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0xD00000000000001BLL;
  v49._object = 0x80000001015A3790;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 8236;
  v50._object = 0xE200000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0xD000000000000015;
  v51._object = 0x80000001015A3830;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0xD00000000000003FLL;
  v52._object = 0x80000001015A4B00;
  String.append(_:)(v52);
  v53 = v129;
  v54 = v130;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v56 = v126;
  v57 = sub_10001CC04(v55, v53, v54);

  if (v56)
  {
    return result;
  }

  v59 = v13;
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v60 = sub_10084DAE4();
  v62 = v61;
  v63 = *(*(v57 + 16) + 32);
  *v8 = v63;
  v64 = v125;
  v126 = v11;
  v127(v8, v128, v125);
  v65 = v63;
  LOBYTE(v63) = _dispatchPreconditionTest(_:)();
  v119 = v59;
  v59(v8, v64);
  if ((v63 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100DCCAB4(v60, v62, v57, 1);
  v117 = 0;
  sub_10002640C(v60, v62);
  v66 = v123;
  sub_1000285F8(*(v123 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName), *(v123 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName + 8), 2);
  v67 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  swift_beginAccess();
  v68 = v120;
  v118 = *(v122 + 16);
  v118(v120, v66 + v67, v121);
  v69 = UUID.crl_data()();
  v71 = v70;
  v72 = *(*(v57 + 16) + 32);
  *v8 = v72;
  v73 = v125;
  v127(v8, v128, v125);
  v74 = v72;
  LOBYTE(v72) = _dispatchPreconditionTest(_:)();
  v119(v8, v73);
  if ((v72 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v75 = v117;
  sub_100DCCAB4(v69, v71, v57, 3);
  v116 = v75;
  sub_10002640C(v69, v71);
  v76 = *(v122 + 8);
  v77 = v121;
  v122 += 8;
  v117 = v76;
  v76(v68, v121);
  v78 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
  swift_beginAccess();
  v118(v68, v66 + v78, v77);
  v79 = UUID.crl_data()();
  v81 = v80;
  v82 = *(*(v57 + 16) + 32);
  *v8 = v82;
  v83 = v125;
  v84 = v127;
  v127(v8, v128, v125);
  v85 = v82;
  LOBYTE(v82) = _dispatchPreconditionTest(_:)();
  v119(v8, v83);
  if ((v82 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v86 = v116;
  sub_100DCCAB4(v79, v81, v57, 4);
  v118 = v86;
  sub_10002640C(v79, v81);
  (v117)(v68, v121);
  v87 = *(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v88 = *(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  sub_100024E84(v87, v88);
  sub_10089BB64(v87, v88, 5);
  sub_100025870(v87, v88);
  sub_10089B9A4(*(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone), 6);
  sub_100034254(*(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges), 7);
  v89 = *(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
  v90 = *(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8);
  sub_100024E84(v89, v90);
  sub_10089BB64(v89, v90, 8);
  sub_100025870(v89, v90);
  v91 = *(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate);
  v92 = *(*(v57 + 16) + 32);
  *v8 = v92;
  v93 = v125;
  v84(v8, v128, v125);
  v94 = v92;
  LOBYTE(v92) = _dispatchPreconditionTest(_:)();
  v119(v8, v93);
  if ((v92 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v122 = v57 + 24;
  swift_beginAccess();
  sqlite3_bind_double(*(v57 + 24), 9, v91);
  sub_10089B9A4(*(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted), 10);
  v95 = v66;
  v96 = *(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
  v97 = *(v66 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
  sub_100024E84(v96, v97);
  sub_10089BB64(v96, v97, 11);
  sub_100025870(v96, v97);
  v98 = v95 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
  sub_100034254(*(v95 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions), 12);
  v99 = *(v95 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime);
  v100 = *(*(v57 + 16) + 32);
  *v8 = v100;
  v84(v8, v128, v93);
  v101 = v100;
  LOBYTE(v100) = _dispatchPreconditionTest(_:)();
  v102 = v119;
  v119(v8, v93);
  if ((v100 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sqlite3_bind_double(*(v57 + 24), 13, v99);
  sub_10089B9A4(*(v95 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable), 14);
  sub_100034254(*(v98 + 8), 15);
  sub_100034254(*(v98 + 16), 16);
  if (*(v98 + 32))
  {
    v103 = *(*(v57 + 16) + 32);
    *v8 = v103;
    v104 = v128;
    v127(v8, v128, v93);
    v105 = v103;
    LOBYTE(v103) = _dispatchPreconditionTest(_:)();
    v102(v8, v93);
    v106 = v122;
    if ((v103 & 1) == 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sqlite3_bind_null(*v122, 17);
  }

  else
  {
    sub_100034254(*(v98 + 24), 17);
    v104 = v128;
    v106 = v122;
  }

  sub_100034254(*(v123 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion), 18);
  v107 = *(*(v57 + 16) + 32);
  *v8 = v107;
  v127(v8, v104, v93);
  v108 = v107;
  LOBYTE(v107) = _dispatchPreconditionTest(_:)();
  v102(v8, v93);
  if ((v107 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v109 = *(v57 + 16);

  v110 = sub_10001CEC4(v109, v57);

  if (v110 != 101)
  {
    goto LABEL_20;
  }

  v111 = *(*(v57 + 16) + 32);
  *v8 = v111;
  v127(v8, v104, v93);
  v112 = v111;
  v110 = _dispatchPreconditionTest(_:)();
  v102(v8, v93);
  if ((v110 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    sub_10089C7D0();
    swift_allocError();
    *v113 = v110;
    *(v113 + 8) = 0xD000000000000016;
    *(v113 + 16) = 0x80000001015A4B40;
    swift_willThrow();
    v114 = *(*(v57 + 16) + 32);
    *v8 = v114;
    v127(v8, v104, v93);
    v115 = v114;
    LOBYTE(v114) = _dispatchPreconditionTest(_:)();
    v119(v8, v93);
    if (v114)
    {
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
  }

LABEL_21:
  if (*v106)
  {
    sqlite3_finalize(*v106);
    *v106 = 0;
  }
}

uint64_t sub_100E04BA4(char *a1)
{
  v209 = a1;
  v3 = sub_1005B981C(&qword_1019F6990);
  v4 = __chkstk_darwin(v3 - 8);
  v179 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v197 = &v168 - v7;
  v8 = __chkstk_darwin(v6);
  v184 = &v168 - v9;
  __chkstk_darwin(v8);
  v199 = &v168 - v10;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v12 = __chkstk_darwin(v11 - 8);
  v178 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v185 = &v168 - v15;
  v16 = __chkstk_darwin(v14);
  v183 = &v168 - v17;
  v18 = __chkstk_darwin(v16);
  v195 = &v168 - v19;
  v20 = __chkstk_darwin(v18);
  v194 = &v168 - v21;
  v22 = __chkstk_darwin(v20);
  *&v202 = &v168 - v23;
  __chkstk_darwin(v22);
  v213 = &v168 - v24;
  v25 = type metadata accessor for UUID();
  v207 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v177 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v196 = &v168 - v29;
  v30 = __chkstk_darwin(v28);
  v182 = &v168 - v31;
  v32 = __chkstk_darwin(v30);
  v198 = &v168 - v33;
  v34 = __chkstk_darwin(v32);
  v201 = &v168 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v168 - v37;
  __chkstk_darwin(v36);
  v211 = &v168 - v39;
  *&v212 = type metadata accessor for CRLBoardCRDTData(0);
  v40 = __chkstk_darwin(v212);
  v180 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v44 = &v168 - v43;
  v45 = __chkstk_darwin(v42);
  v200 = (&v168 - v46);
  v47 = __chkstk_darwin(v45);
  v208 = &v168 - v48;
  __chkstk_darwin(v47);
  v50 = &v168 - v49;
  v51 = type metadata accessor for DispatchPredicate();
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = (&v168 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v206 = v2;
  v55 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v54 = v55;
  v56 = *(v52 + 104);
  v189 = enum case for DispatchPredicate.onQueue(_:);
  v190 = v52 + 104;
  v188 = v56;
  v56(v54);
  v186 = v55;
  LOBYTE(v55) = _dispatchPreconditionTest(_:)();
  v58 = *(v52 + 8);
  v57 = v52 + 8;
  v191 = v54;
  v193 = v51;
  v192 = v57;
  v187 = v58;
  v58(v54, v51);
  if ((v55 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_11;
  }

  v181 = v44;
  v210 = v25;
  v59 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  v60 = v209;
  swift_beginAccess();
  sub_10000C83C(&v60[v59], v50, type metadata accessor for CRLBoardCRDTData);
  v61 = v38;
  v62 = sub_1005B981C(&unk_1019F5250);
  v63 = v211;
  CRRegister.wrappedValue.getter();
  sub_100026028(v50, type metadata accessor for CRLBoardCRDTData);
  v205 = v59;
  v64 = v208;
  sub_10000C83C(&v60[v59], v208, type metadata accessor for CRLBoardCRDTData);
  v203 = v62;
  CRRegister.wrappedValue.getter();
  sub_100026028(v64, type metadata accessor for CRLBoardCRDTData);
  v66 = *&v60[OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName];
  v65 = *&v60[OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8];

  v67 = v213;
  sub_10084BD4C(v61, v66, v65, v213);
  v68 = v204;
  v69 = sub_100DECDC4(v63, v67);
  if (v68)
  {
    sub_100026028(v213, type metadata accessor for CRLBoardIdentifier);
    return (*(v207 + 8))(v211, v210);
  }

  v174 = v69;
  sub_100026028(v213, type metadata accessor for CRLBoardIdentifier);
  v175 = v61;
  v213 = v66;
  v204 = *(v207 + 8);
  v176 = v207 + 8;
  v204(v211, v210);
  v211 = 0;
  v71 = v209;
  v72 = v200;
  sub_10000C83C(&v209[v205], v200, type metadata accessor for CRLBoardCRDTData);
  v173 = type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
  v73 = v201;
  CRRegister.wrappedValue.getter();
  v74 = v175;
  sub_100026028(v72, type metadata accessor for CRLBoardCRDTData);
  v75 = v208;
  sub_10000C83C(&v71[v205], v208, type metadata accessor for CRLBoardCRDTData);
  v76 = v213;
  CRRegister.wrappedValue.getter();
  sub_100026028(v75, type metadata accessor for CRLBoardCRDTData);

  v77 = v202;
  sub_10084BD4C(v74, v76, v65, v202);
  v78 = v211;
  v79 = sub_100DECDC4(v73, v77);
  v44 = v71;
  if (v78)
  {

    sub_100026028(v77, type metadata accessor for CRLBoardIdentifier);
    return (v204)(v73, v210);
  }

  v80 = v79;
  v172 = v65;
  sub_100026028(v77, type metadata accessor for CRLBoardIdentifier);
  v81 = v210;
  v204(v73, v210);
  if (v174)
  {
    v82 = 0;
    goto LABEL_8;
  }

  v171 = v80;
  v211 = 0;
  v1 = v208;
  v57 = v172;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_20;
  }

LABEL_11:
  v200 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *&v202 = type metadata accessor for CRLBoardCRDTData;
  sub_10000C83C(&v44[v205], v1, type metadata accessor for CRLBoardCRDTData);
  v83 = v175;
  CRRegister.wrappedValue.getter();
  v201 = type metadata accessor for CRLBoardCRDTData;
  sub_100026028(v1, type metadata accessor for CRLBoardCRDTData);
  swift_bridgeObjectRetain_n();
  v86 = v194;
  sub_10084BD4C(v83, v213, v57, v194);
  v87 = v207;
  v88 = v44;
  v89 = *(v207 + 16);
  v90 = v210;
  v170 = v207 + 16;
  v169 = v89;
  v89(v83, v86, v210);
  sub_100026028(v86, type metadata accessor for CRLBoardIdentifier);
  v91 = UUID.uuidString.getter();
  v93 = v92;
  v204(v83, v90);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v91;
  *(inited + 40) = v93;
  v94 = static os_log_type_t.default.getter();
  sub_100005404(v200, &_mh_execute_header, v94, "Inserting placeholder root container for board %{public}@", 57, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v95 = v205;
  v96 = &v88[v205];
  v97 = v181;
  v98 = v202;
  sub_10000C83C(v96, v181, v202);
  CRRegister.wrappedValue.getter();
  v99 = v97;
  v81 = v201;
  sub_100026028(v99, v201);
  v200 = *(v87 + 56);
  (v200)(v199, 1, 1, v90);
  sub_10000C83C(&v209[v95], v1, v98);
  CRRegister.wrappedValue.getter();
  sub_100026028(v1, v81);
  v100 = v195;
  sub_10084BD4C(v83, v213, v172, v195);
  v101 = v191;
  v102 = v186;
  *v191 = v186;
  v103 = v193;
  v188(v101, v189, v193);
  v104 = v102;
  v84 = _dispatchPreconditionTest(_:)();
  v187(v101, v103);
  if ((v84 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  v105 = v182;
  v106 = v210;
  v169(v182, v198, v210);
  v201 = 0x2000400000000;
  v107 = v184;
  sub_10000BE14(v199, v184, &qword_1019F6990);
  v108 = v183;
  sub_10000C83C(v100, v183, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for CRLBoardItemDatabaseRow();
  v109 = swift_allocObject();
  v110 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  (v200)(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v106);
  v202 = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
  (*(v207 + 32))(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v105, v106);
  v111 = v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  v112 = v201;
  *v111 = 0x1000000000000;
  *(v111 + 8) = v112;
  *(v111 + 16) = 0x1000000000000;
  *(v111 + 24) = 0;
  *(v111 + 32) = 1;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
  swift_beginAccess();
  sub_10002C638(v107, v109 + v110, &qword_1019F6990);
  swift_endAccess();
  sub_100025668(v108, v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v113 = v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
  *v113 = xmmword_101474CF0;
  *(v113 + 16) = 0;
  v114 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v115 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v202;
  sub_100025870(v114, v115);
  v116 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v117 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v202;
  sub_100025870(v116, v117);
  v118 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v119 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v202;
  sub_100025870(v118, v119);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
  v120 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v121 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = v202;
  sub_100025870(v120, v121);
  v122 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v123 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = v202;
  sub_100025870(v122, v123);
  v124 = v211;
  sub_100DF5A90(v109);
  v82 = v124;
  if (v124)
  {

    swift_setDeallocating();
    sub_100FE3A40();
    swift_deallocClassInstance();
    sub_100026028(v195, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v199, &qword_1019F6990);
    v125 = v198;
    v126 = v210;
    return (v204)(v125, v126);
  }

  swift_setDeallocating();
  sub_100FE3A40();
  swift_deallocClassInstance();
  sub_100026028(v195, type metadata accessor for CRLBoardIdentifier);
  sub_10000CAAC(v199, &qword_1019F6990);
  v81 = v210;
  v204(v198, v210);
  v80 = v171;
LABEL_8:
  v83 = v207;
  v84 = v205;
  if (v80)
  {
  }

  v211 = v82;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_22;
  }

LABEL_15:
  *&v202 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v127 = swift_initStackObject();
  *(v127 + 16) = xmmword_10146C6B0;
  v200 = type metadata accessor for CRLBoardCRDTData;
  v128 = v208;
  sub_10000C83C(&v209[v84], v208, type metadata accessor for CRLBoardCRDTData);
  v129 = v175;
  CRRegister.wrappedValue.getter();
  v201 = type metadata accessor for CRLBoardCRDTData;
  sub_100026028(v128, type metadata accessor for CRLBoardCRDTData);
  v130 = v172;
  swift_bridgeObjectRetain_n();
  v131 = v194;
  sub_10084BD4C(v129, v213, v130, v194);
  v132 = *(v83 + 16);
  v199 = v83 + 16;
  v198 = v132;
  (v132)(v129, v131, v81);
  sub_100026028(v131, type metadata accessor for CRLBoardIdentifier);
  v133 = UUID.uuidString.getter();
  v134 = v81;
  v136 = v135;
  v204(v129, v134);
  *(v127 + 56) = &type metadata for String;
  *(v127 + 64) = sub_1000053B0();
  *(v127 + 32) = v133;
  *(v127 + 40) = v136;
  v137 = static os_log_type_t.default.getter();
  sub_100005404(v202, &_mh_execute_header, v137, "Inserting placeholder alternate root container for board %{public}@", 67, 2, v127);
  swift_setDeallocating();
  sub_100005070(v127 + 32);
  v138 = v209;
  v139 = v205;
  v140 = v180;
  v141 = v200;
  sub_10000C83C(&v209[v205], v180, v200);
  CRRegister.wrappedValue.getter();
  v142 = v140;
  v143 = v201;
  sub_100026028(v142, v201);
  *&v212 = *(v83 + 56);
  (v212)(v197, 1, 1, v210);
  sub_10000C83C(&v138[v139], v128, v141);
  CRRegister.wrappedValue.getter();
  sub_100026028(v128, v143);
  v144 = v185;
  sub_10084BD4C(v129, v213, v172, v185);
  v145 = v191;
  v146 = v186;
  *v191 = v186;
  v147 = v193;
  v188(v145, v189, v193);
  v148 = v146;
  LOBYTE(v146) = _dispatchPreconditionTest(_:)();
  result = (v187)(v145, v147);
  if (v146)
  {
    v149 = v177;
    v150 = v210;
    (v198)(v177, v196, v210);
    v213 = 0x2000400000000;
    v151 = v179;
    sub_10000BE14(v197, v179, &qword_1019F6990);
    v152 = v178;
    sub_10000C83C(v144, v178, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for CRLBoardItemDatabaseRow();
    v153 = swift_allocObject();
    v154 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
    (v212)(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v150);
    v212 = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
    (*(v207 + 32))(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v149, v150);
    v155 = v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
    v156 = v213;
    *v155 = 0x1000000000000;
    *(v155 + 8) = v156;
    *(v155 + 16) = 0x1000000000000;
    *(v155 + 24) = 0;
    *(v155 + 32) = 1;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
    swift_beginAccess();
    sub_10002C638(v151, v153 + v154, &qword_1019F6990);
    swift_endAccess();
    sub_100025668(v152, v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v157 = v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
    *v157 = xmmword_101474CF0;
    *(v157 + 16) = 0;
    v158 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v159 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v212;
    sub_100025870(v158, v159);
    v160 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v161 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v212;
    sub_100025870(v160, v161);
    v162 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v163 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v212;
    sub_100025870(v162, v163);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
    v164 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v165 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = v212;
    sub_100025870(v164, v165);
    v166 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v167 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = v212;
    sub_100025870(v166, v167);
    sub_100DF5A90(v153);

    swift_setDeallocating();
    sub_100FE3A40();
    swift_deallocClassInstance();
    sub_100026028(v185, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v197, &qword_1019F6990);
    v125 = v196;
    v126 = v150;
    return (v204)(v125, v126);
  }

  __break(1u);
  return result;
}

uint64_t sub_100E064E4(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = *(v5 + 104);
  v78 = enum case for DispatchPredicate.onQueue(_:);
  v79 = v9;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v77 = a1;
  v80 = 0;
  v81 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v12._countAndFlagsBits = 0x4920545245534E49;
  v12._object = 0xEC000000204F544ELL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x6D5F736472616F62;
  v13._object = 0xEF61746164617465;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._object = 0x8000000101585360;
  v15._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x7461645F74647263;
  v17._object = 0xE900000000000061;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x726F7661665F7369;
  v19._object = 0xEB00000000657469;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v21._object = 0x80000001015A3390;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x6174735F77656976;
  v23._object = 0xEF617461645F6574;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000019;
  v25._object = 0x80000001015A33B0;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._object = 0x80000001015A33D0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000026;
  v29._object = 0x80000001015A33F0;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000021;
  v30._object = 0x80000001015A4950;
  String.append(_:)(v30);
  v31 = v80;
  v32 = v81;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v34 = sub_10001CC04(v33, v31, v32);

  if (v2)
  {
    return result;
  }

  v76 = v11;
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v36 = sub_10084DAE4();
  v38 = v37;
  v39 = v4;
  v40 = v36;
  v41 = *(*(v34 + 16) + 32);
  *v7 = v41;
  v79(v7, v78, v39);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v76(v7, v39);
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_100DCCAB4(v40, v38, v34, 1);
  v75 = 0;
  sub_10002640C(v40, v38);
  v43 = v77;
  v44 = *(v77 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
  v45 = *(v77 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8);
  v46 = *(*(v34 + 16) + 32);
  *v7 = v46;
  v79(v7, v78, v39);
  v47 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v76(v7, v39);
  if ((v46 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v48 = v75;
  sub_100DCCAB4(v44, v45, v34, 2);
  v75 = v48;
  sub_10089B9A4(*(v43 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite), 3);
  sub_10089B9A4(*(v43 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors), 4);
  v49 = *(v43 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
  v50 = *(v43 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8);
  v51 = *(*(v34 + 16) + 32);
  *v7 = v51;
  v79(v7, v78, v39);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  v74 = v39;
  v53 = v39;
  v54 = v76;
  v76(v7, v53);
  if ((v51 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_100DCCAB4(v49, v50, v34, 5);
  if (*(v43 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion + 8))
  {
    v55 = *(*(v34 + 16) + 32);
    *v7 = v55;
    v56 = v74;
    v57 = v79;
    v79(v7, v78, v74);
    v58 = v55;
    LOBYTE(v55) = _dispatchPreconditionTest(_:)();
    v54(v7, v56);
    if ((v55 & 1) == 0)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    swift_beginAccess();
    sqlite3_bind_null(*(v34 + 24), 6);
  }

  else
  {
    sub_100034254(*(v43 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion), 6);
    v56 = v74;
    v57 = v79;
  }

  v59 = v77;
  sub_100034254(*(v77 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges), 7);
  sub_100034254(*(v59 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity), 8);
  v60 = *(*(v34 + 16) + 32);
  *v7 = v60;
  v61 = v78;
  v57(v7, v78, v56);
  v62 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  v76(v7, v56);
  if ((v60 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v63 = *(v34 + 16);

  v64 = sub_10001CEC4(v63, v34);

  if (v64 == 101)
  {
    v65 = *(*(v34 + 16) + 32);
    *v7 = v65;
    v79(v7, v61, v56);
    v66 = v65;
    v67 = _dispatchPreconditionTest(_:)();
    v76(v7, v56);
    if (v67)
    {
      swift_beginAccess();
      v68 = *(v34 + 24);
      if (v68)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_26;
  }

  sub_10089C7D0();
  swift_allocError();
  *v69 = v64;
  *(v69 + 8) = 0xD00000000000001FLL;
  *(v69 + 16) = 0x80000001015A4980;
  swift_willThrow();
  v70 = *(*(v34 + 16) + 32);
  *v7 = v70;
  v79(v7, v61, v56);
  v71 = v70;
  v72 = _dispatchPreconditionTest(_:)();
  v76(v7, v56);
  if ((v72 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v68 = *(v34 + 24);
  if (v68)
  {
LABEL_17:
    sqlite3_finalize(v68);
    *(v34 + 24) = 0;
  }
}

uint64_t sub_100E06DBC(uint64_t a1, int a2, unint64_t a3, unint64_t a4, int a5)
{
  v7 = v5;
  LODWORD(v100) = a5;
  v103 = a4;
  v102 = a3;
  LODWORD(v99) = a2;
  v9 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v10 = __chkstk_darwin(v9);
  v101 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v97 = &v87 - v13;
  __chkstk_darwin(v12);
  v98 = &v87 - v14;
  v15 = type metadata accessor for CRLBoardIdentifier(0);
  v16 = __chkstk_darwin(v15 - 8);
  v96 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v112 = &v87 - v19;
  __chkstk_darwin(v18);
  v21 = &v87 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v7 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v25 = v26;
  (*(v23 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v22);
  v27 = v26;
  v28 = _dispatchPreconditionTest(_:)();
  v30 = *(v23 + 8);
  v29 = v23 + 8;
  v30(v25, v22);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_57:
    swift_once();
LABEL_42:
    v61 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v61, qword_101AD6348);
    sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData);
    v62 = CRDT.serializedData(_:version:)();
    if (v29)
    {

      v29 = v103;
      v64 = v102;
      sub_100025870(v103, v102);
      v65 = v100;
      sub_10002640C(v100, v21);

      sub_100025870(v29, v64);
      sub_10002640C(v65, v21);

      sub_100026028(v9, type metadata accessor for CRLUserBoardMetadataCRDTData);
      sub_100026028(v112, type metadata accessor for CRLBoardIdentifier);
      v33 = v28;
      goto LABEL_50;
    }

    v66 = v62;
    v67 = v63;
    v93 = 0;
    v89 = v28;
    v90 = a1;
    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.getter();
    v68 = v104;
    CRRegister.wrappedValue.getter();
    v91 = v21;
    v69 = v104;
    CRRegister.wrappedValue.getter();
    v88 = v104;
    CRRegister.wrappedValue.getter();
    v87 = v104;
    CRRegister.wrappedValue.getter();
    sub_100026028(v9, type metadata accessor for CRLUserBoardMetadataCRDTData);
    v70 = v104;
    v71 = v96;
    sub_100025668(v112, v96, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for CRLUserBoardMetadataDatabaseRow();
    v72 = swift_allocObject();
    v73 = (v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
    *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData) = xmmword_101486780;
    sub_100025668(v71, v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v74 = (v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
    *v74 = v66;
    v74[1] = v67;
    *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite) = v68;
    *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors) = v69;
    v75 = v91;
    v76 = (v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
    v77 = v100;
    *v76 = v100;
    v76[1] = v75;
    v78 = v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion;
    *v78 = v97;
    *(v78 + 8) = v92;
    *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = v99;
    v79 = *v73;
    v80 = v73[1];
    v81 = v102;
    *v73 = v103;
    v73[1] = v81;
    sub_100025870(v79, v80);
    *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity) = v101;
    *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) = v88;
    *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled) = v87;
    *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen) = v70;
    if (v94)
    {
      v82 = v93;
      sub_100E08660(v72);
      v29 = v90;
      v83 = v89;
      if (v82)
      {

        sub_10002640C(v77, v75);
        sub_100025870(v103, v81);
        swift_setDeallocating();
        sub_100026028(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        sub_10002640C(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
        sub_10002640C(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
        sub_100025870(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
        swift_deallocClassInstance();

LABEL_49:

        v33 = v83;
        goto LABEL_50;
      }

      v86 = sub_100969E64(v72);

      if ((v86 & 1) == 0)
      {

        sub_10002640C(v77, v91);
        sub_100025870(v103, v102);
        swift_setDeallocating();
        sub_100026028(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        sub_10002640C(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
        sub_10002640C(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
        sub_100025870(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
        swift_deallocClassInstance();

LABEL_55:
        sub_100026028(v83, type metadata accessor for CRLBoardIdentifier);
        return v29;
      }
    }

    else
    {
      v84 = v93;
      sub_100E064E4(v72);
      v29 = v90;
      v83 = v89;
      if (v84)
      {

        sub_10002640C(v77, v75);
        sub_100025870(v103, v81);
        swift_setDeallocating();
        sub_100026028(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        sub_10002640C(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
        sub_10002640C(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
        sub_100025870(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
        swift_deallocClassInstance();
        goto LABEL_49;
      }
    }

    sub_100DE02C4(v83, &unk_1018A4C78, sub_100E58E54, &unk_1018A4C90);
    sub_10002640C(v77, v91);
    sub_100025870(v103, v102);

    swift_setDeallocating();
    sub_100026028(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
    sub_10002640C(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
    sub_100025870(*(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v72 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
    swift_deallocClassInstance();
    goto LABEL_55;
  }

  sub_10000C83C(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, v21, type metadata accessor for CRLBoardIdentifier);
  v31 = sub_100E07F54();
  v32 = v6;
  v28 = v21;
  if (v6)
  {
    v33 = v21;
LABEL_50:
    sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
    return v29;
  }

  v34 = v31;
  v95 = v7;
  if (v31)
  {
    v35 = swift_retain_n();
    v36 = sub_100EA2998(v35);
    v37 = v9;
    if (v36)
    {
      v38 = v36;
      v93 = 0;
      if (v99)
      {
        if (!v99)
        {
          v99 = 0;
          goto LABEL_25;
        }

        v39 = v34;
        v40 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
        swift_beginAccess();
        v41 = v98;
        sub_10000C83C(v38 + v40, v98, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v42 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
        swift_beginAccess();
        v43 = a1 + v42;
        v34 = v39;
        v44 = v97;
        sub_10000C83C(v43, v97, type metadata accessor for CRLUserBoardMetadataCRDTData);
        sub_1000066D0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v45 = CRStruct_5.hasDelta(from:)();
        sub_100026028(v44, type metadata accessor for CRLUserBoardMetadataCRDTData);
        sub_100026028(v41, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v46 = 2;
        if ((v45 & 1) == 0)
        {
          v46 = 0;
        }

        if (*(v38 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) != *(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity))
        {
          v46 |= 4uLL;
        }
      }

      else
      {
        v100 = *(v34 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges);
        v48 = v34;
        v49 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
        swift_beginAccess();
        v50 = v98;
        sub_10000C83C(a1 + v49, v98, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v51 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
        swift_beginAccess();
        v52 = v38 + v51;
        v34 = v48;
        v53 = v97;
        sub_10000C83C(v52, v97, type metadata accessor for CRLUserBoardMetadataCRDTData);
        sub_1000066D0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v54 = CRStruct_5.hasDelta(from:)();
        sub_100026028(v53, type metadata accessor for CRLUserBoardMetadataCRDTData);
        sub_100026028(v50, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v55 = 2;
        if ((v54 & 1) == 0)
        {
          v55 = 0;
        }

        if (*(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) != *(v38 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity))
        {
          v55 |= 4uLL;
        }

        v46 = v55 | v100;
      }

      v99 = v46;
LABEL_25:
      v98 = v37;
      swift_retain_n();
      sub_100D64DB0(a1);

      a1 = v38;
      v32 = v93;
      v9 = v101;
      goto LABEL_26;
    }

    v9 = v101;
    if (v100)
    {
      v98 = v37;
      v99 = !v99;
      swift_retain_n();
LABEL_26:
      v56 = *(v34 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
      v21 = *(v34 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8);
      v97 = *(v34 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion);
      v92 = *(v34 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion + 8);
      v100 = v56;
      sub_100024E98(v56, v21);
      if (v103 >= 0xF000000000000000)
      {
        v57 = 0xF000000000000000;
      }

      else
      {
        v57 = v103;
      }

      if (v103 >> 60 == 15)
      {
        v58 = 0;
      }

      else
      {
        v58 = v102;
      }

      v94 = v34;
      if (v103 >> 60 == 15)
      {
        v58 = *(v34 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
        v57 = *(v34 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8);
        sub_100024E84(v58, v57);
      }

LABEL_41:
      v29 = v32;
      sub_10000C83C(v28, v112, type metadata accessor for CRLBoardIdentifier);
      v60 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
      swift_beginAccess();
      sub_10000C83C(a1 + v60, v9, type metadata accessor for CRLUserBoardMetadataCRDTData);
      v101 = *(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity);
      sub_100024E84(v102, v103);
      sub_100024E98(v100, v21);
      v103 = v58;
      v102 = v57;
      sub_100024E84(v58, v57);
      if (qword_1019F1520 == -1)
      {
        goto LABEL_42;
      }

      goto LABEL_57;
    }
  }

  else if (v100)
  {
    v94 = 0;
    LOBYTE(v105) = 1;
    v109 = 0x3FF0000000000000uLL;
    v110 = 0uLL;
    v111[0] = 1;
    *&v111[8] = xmmword_101486780;
    *&v111[24] = xmmword_101486780;
    v111[40] = 0;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    swift_retain_n();
    JSONEncoder.init()();
    v107 = *v111;
    v108[0] = *&v111[16];
    *(v108 + 9) = *&v111[25];
    v105 = v109;
    v106 = v110;
    sub_100EA2550();
    v47 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v21 = v59;
    v98 = v9;
    v100 = v47;

    v99 = !v99;
    sub_1006D62E4(&v109);
    v97 = 0;
    if (v103 >> 60 == 15)
    {
      v58 = 0;
    }

    else
    {
      v58 = v102;
    }

    if (v103 >= 0xF000000000000000)
    {
      v57 = 0xF000000000000000;
    }

    else
    {
      v57 = v103;
    }

    v92 = 1;
    v32 = 0;
    v9 = v101;
    goto LABEL_41;
  }

  sub_100026028(v21, type metadata accessor for CRLBoardIdentifier);

  return 0;
}

uint64_t sub_100E07F54()
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
  v9._countAndFlagsBits = sub_100EA017C(0, 0xE000000000000000);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x204D4F524620;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x6D5F736472616F62;
  v11._object = 0xEF61746164617465;
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

        v23 = sub_100EA0450(v40, 0);

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
  sub_100005404(v21, &_mh_execute_header, v26, "Failed to fetch board metadata record with error %@", 51, 2, v22);
  swift_setDeallocating();
  sub_100005070(v22 + 32);
  swift_willThrow();
  return v23;
}

uint64_t sub_100E08660(unint64_t a1)
{
  v95 = a1;
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v90[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v90[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v7 + 104);
  v99 = enum case for DispatchPredicate.onQueue(_:);
  v97 = v7 + 104;
  v11(v9);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v13 = v15;
  v15(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v96 = v5;
  v98 = v11;
  v102 = 0;
  v103 = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  v16._countAndFlagsBits = 0x20455441445055;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6D5F736472616F62;
  v17._object = 0xEF61746164617465;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x2054455320;
  v18._object = 0xE500000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x7461645F74647263;
  v19._object = 0xE900000000000061;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x202C3F203D20;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x726F7661665F7369;
  v21._object = 0xEB00000000657469;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x202C3F203D20;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD00000000000001BLL;
  v23._object = 0x80000001015A3390;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x202C3F203D20;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x6174735F77656976;
  v25._object = 0xEF617461645F6574;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x202C3F203D20;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000019;
  v27._object = 0x80000001015A33B0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x202C3F203D20;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29._object = 0x80000001015A33D0;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C3F203D20;
  v30._object = 0xE600000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x7461645F636E7973;
  v31._object = 0xE900000000000061;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x202C3F203D20;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000026;
  v33._object = 0x80000001015A33F0;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x454857203F203D20;
  v34._object = 0xEB00000000204552;
  String.append(_:)(v34);
  v35._object = 0x8000000101585360;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 1059077408;
  v36._object = 0xE400000000000000;
  String.append(_:)(v36);
  v37 = v102;
  v38 = v103;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v40 = sub_10001CC04(v39, v37, v38);

  if (v2)
  {
    return result;
  }

  v42 = v95;
  v43 = *(v95 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8);
  v94 = *(v95 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
  v44 = v13;
  v45 = *(*(v40 + 16) + 32);
  *v9 = v45;
  v98(v9, v99, v6);
  v46 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  v44(v9, v6);
  if ((v45 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100DCCAB4(v94, v43, v40, 1);
  v92 = 0;
  v91 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite);
  sub_10089B9A4(v91, 2);
  sub_10089B9A4(*(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors), 3);
  v47 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
  v48 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8);
  v49 = *(*(v40 + 16) + 32);
  *v9 = v49;
  v98(v9, v99, v6);
  v50 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  v94 = v44;
  v44(v9, v6);
  if ((v49 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v51 = v92;
  sub_100DCCAB4(v47, v48, v40, 4);
  v52 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion + 8);
  v93 = v14;
  if (v52)
  {
    v53 = *(*(v40 + 16) + 32);
    *v9 = v53;
    v98(v9, v99, v6);
    v54 = v53;
    LOBYTE(v53) = _dispatchPreconditionTest(_:)();
    v94(v9, v6);
    v55 = v96;
    if (v53)
    {
      swift_beginAccess();
      sqlite3_bind_null(*(v40 + 24), 5);
      goto LABEL_9;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_100034254(*(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion), 5);
  v55 = v96;
LABEL_9:
  sub_100034254(*(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges), 6);
  v56 = v42;
  v57 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
  v58 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8);
  sub_100024E84(v57, v58);
  sub_10089BB64(v57, v58, 7);
  sub_100025870(v57, v58);
  sub_100034254(*(v56 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity), 8);
  sub_10000C83C(v56 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v55, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v59 = sub_10084DAE4();
  if (v51)
  {
    sub_100026028(v55, type metadata accessor for CRLBoardIdentifier);
    v61 = *(*(v40 + 16) + 32);
    *v9 = v61;
    v98(v9, v99, v6);
    v62 = v61;
    LOBYTE(v61) = _dispatchPreconditionTest(_:)();
    v59 = (v94)(v9, v6);
    if (v61)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v95 = v60;
  v63 = v59;
  v64 = *(*(v40 + 16) + 32);
  *v9 = v64;
  v65 = v98;
  v98(v9, v99, v6);
  v66 = v64;
  LOBYTE(v64) = _dispatchPreconditionTest(_:)();
  v94(v9, v6);
  if ((v64 & 1) == 0)
  {
    goto LABEL_33;
  }

  v67 = v63;
  v68 = v63;
  v69 = v95;
  sub_100DCCAB4(v68, v95, v40, 9);
  sub_10002640C(v67, v69);
  v70 = *(*(v40 + 16) + 32);
  *v9 = v70;
  v65(v9, v99, v6);
  v71 = v70;
  LOBYTE(v70) = _dispatchPreconditionTest(_:)();
  v95 = v6;
  v94(v9, v6);
  if ((v70 & 1) == 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v72 = *(v40 + 16);

  v73 = sub_10001CEC4(v72, v40);

  if (v73 == 101)
  {
    sub_100026028(v96, type metadata accessor for CRLBoardIdentifier);
    v74 = *(*(v40 + 16) + 32);
    *v9 = v74;
    v75 = v95;
    v98(v9, v99, v95);
    v76 = v74;
    LOBYTE(v74) = _dispatchPreconditionTest(_:)();
    v94(v9, v75);
    if (v74)
    {
      swift_beginAccess();
      v77 = *(v40 + 24);
      if (v77)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_35;
  }

  v100 = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v100 = 0xD000000000000019;
  v101 = 0x80000001015A5820;
  if (v91)
  {
    v78 = 1702195828;
  }

  else
  {
    v78 = 0x65736C6166;
  }

  if (v91)
  {
    v79 = 0xE400000000000000;
  }

  else
  {
    v79 = 0xE500000000000000;
  }

  v80 = v79;
  String.append(_:)(*&v78);

  v81._countAndFlagsBits = 0x616F6220726F6620;
  v81._object = 0xEB00000000206472;
  String.append(_:)(v81);
  v82 = v96;
  v83._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v83);

  v84 = v100;
  v85 = v101;
  sub_10089C7D0();
  swift_allocError();
  *v86 = v73;
  *(v86 + 8) = v84;
  *(v86 + 16) = v85;
  swift_willThrow();
  sub_100026028(v82, type metadata accessor for CRLBoardIdentifier);
  v87 = *(*(v40 + 16) + 32);
  *v9 = v87;
  v88 = v95;
  v98(v9, v99, v95);
  v89 = v87;
  LOBYTE(v87) = _dispatchPreconditionTest(_:)();
  v94(v9, v88);
  if ((v87 & 1) == 0)
  {
LABEL_36:
    __break(1u);
  }

LABEL_25:
  swift_beginAccess();
  v77 = *(v40 + 24);
  if (v77)
  {
LABEL_26:
    sqlite3_finalize(v77);
    *(v40 + 24) = 0;
  }
}

uint64_t sub_100E09120(uint64_t a1, sqlite3_int64 a2)
{
  v37 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v39 = enum case for DispatchPredicate.onQueue(_:);
  v40 = v10;
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v12;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD00000000000004BLL, 0x80000001015A83B0);

  if (v3)
  {
    return result;
  }

  sub_100034254(a2, 1);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v16 = sub_10084DAE4();
  v18 = v17;
  v19 = v16;
  v20 = *(*(v14 + 16) + 32);
  *v8 = v20;
  v40(v8, v39, v5);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v38(v8, v5);
  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_100DCCAB4(v19, v18, v14, 2);
  sub_10002640C(v19, v18);
  v22 = *(*(v14 + 16) + 32);
  *v8 = v22;
  v40(v8, v39, v5);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v24 = v38;
  v38(v8, v5);
  if ((v22 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v25 = *(v14 + 16);

  v26 = sub_10001CEC4(v25, v14);

  if (v26 == 101)
  {
    v27 = *(*(v14 + 16) + 32);
    *v8 = v27;
    v40(v8, v39, v5);
    v28 = v27;
    LOBYTE(v27) = _dispatchPreconditionTest(_:)();
    v24(v8, v5);
    if (v27)
    {
      swift_beginAccess();
      v29 = *(v14 + 24);
      if (v29)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(86);
  v30._countAndFlagsBits = 0xD000000000000054;
  v30._object = 0x80000001015A8400;
  String.append(_:)(v30);
  v31._countAndFlagsBits = sub_10084B8C8();
  String.append(_:)(v31);

  v32 = v41;
  v33 = v42;
  sub_10089C7D0();
  swift_allocError();
  *v34 = v26;
  *(v34 + 8) = v32;
  *(v34 + 16) = v33;
  swift_willThrow();
  v35 = *(*(v14 + 16) + 32);
  *v8 = v35;
  v40(v8, v39, v5);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v38(v8, v5);
  if ((v35 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v29 = *(v14 + 24);
  if (v29)
  {
LABEL_11:
    sqlite3_finalize(v29);
    *(v14 + 24) = 0;
  }
}

uint64_t sub_100E09624(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a2;
  aBlock[4] = sub_100EA3058;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A58E8;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  sub_10002E7A8(a3);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_100E09920(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, int a5)
{
  v36 = a5;
  v38 = a4;
  v39 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[2] = a2;
  v40[3] = a1;
  sub_10002FA9C(sub_100EA3068, v40);
  v32 = a1;
  v33 = v11;
  v14 = a2;
  v34 = v7;
  v35 = v10;
  if (v39)
  {
    v39(0);
  }

  v15 = sub_100BD9514(_swiftEmptyArrayStorage);
  v16 = v14;
  v17 = v9;
  v18 = v13;
  v19 = v32;
  if (*(v14 + 16))
  {
    sub_100006370(0, &qword_1019F2D90);
    v39 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v14;
    *(v20 + 32) = 1;
    *(v20 + 40) = v15;
    v45 = sub_10007A268;
    v46 = v20;
    v41 = _NSConcreteStackBlock;
    v42 = *"";
    v43 = sub_100007638;
    v44 = &unk_1018A5938;
    v21 = _Block_copy(&v41);
    v22 = v19;

    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v23 = v34;
    v24 = &unk_101466000;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v39;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v37 + 8))(v17, v23);
    v26 = v33;
    (*(v33 + 8))(v18, v35);
  }

  else
  {

    v24 = &unk_101466000;
    v26 = v33;
    v23 = v34;
  }

  sub_100006370(0, &qword_1019F2D90);
  v39 = static OS_dispatch_queue.main.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = v16;
  *(v27 + 24) = _swiftEmptySetSingleton;
  *(v27 + 32) = _swiftEmptySetSingleton;
  *(v27 + 40) = v36 & 1;
  *(v27 + 48) = v19;
  v45 = sub_1000260F4;
  v46 = v27;
  v41 = _NSConcreteStackBlock;
  v42 = v24[308];
  v43 = sub_100007638;
  v44 = &unk_1018A5988;
  v28 = _Block_copy(&v41);
  v29 = v19;

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v39;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v37 + 8))(v17, v23);
  return (*(v26 + 8))(v18, v35);
}

uint64_t sub_100E0A0D4()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v64 = enum case for DispatchPredicate.onQueue(_:);
  v63 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_100E0E004();
  if (v1)
  {
    return result;
  }

  v61 = v10;
  v62 = 0;
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v12._countAndFlagsBits = 0x20455441445055;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x736472616F62;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x2054455320;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x6E6F7473626D6F74;
  v15._object = 0xEA00000000006465;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x202C31203D20;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  v17._object = 0x80000001015A33D0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 2112800;
  v18._object = 0xE300000000000000;
  String.append(_:)(v18);
  v19._object = 0x80000001015A33D0;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x202C3F207C20;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._object = 0xEE00657461645F65;
  v21._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x454857203F203D20;
  v22._object = 0xEB00000000204552;
  String.append(_:)(v22);
  v23._object = 0x8000000101585360;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 1059077408;
  v24._object = 0xE400000000000000;
  String.append(_:)(v24);
  v25 = v65;
  v26 = v66;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v28 = v62;
  v29 = sub_10001CC04(v27, v25, v26);

  if (v28)
  {
    return result;
  }

  sub_100034254(4, 1);
  static Date.timeIntervalSinceReferenceDate.getter();
  v31 = v30;
  v32 = *(*(v29 + 16) + 32);
  *v6 = v32;
  v63(v6, v64, v2);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v34 = v61;
  v61(v6, v2);
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  sqlite3_bind_double(*(v29 + 24), 2, v31);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v35 = sub_10084DAE4();
  v62 = 0;
  v60 = v36;
  v37 = v35;
  v38 = *(*(v29 + 16) + 32);
  *v6 = v38;
  v39 = v63;
  v63(v6, v64, v2);
  v40 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v34(v6, v2);
  if ((v38 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = v37;
  v42 = v37;
  v43 = v60;
  v44 = v62;
  sub_100DCCAB4(v42, v60, v29, 3);
  v62 = v44;
  sub_10002640C(v41, v43);
  v45 = *(*(v29 + 16) + 32);
  *v6 = v45;
  v39(v6, v64, v2);
  v46 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  v34(v6, v2);
  if ((v45 & 1) == 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v47 = *(v29 + 16);

  v48 = sub_10001CEC4(v47, v29);

  if (v48 == 101)
  {
    v49 = *(*(v29 + 16) + 32);
    *v6 = v49;
    v63(v6, v64, v2);
    v50 = v49;
    v51 = _dispatchPreconditionTest(_:)();
    v34(v6, v2);
    if (v51)
    {
      v52 = *(v29 + 24);
      if (v52)
      {
        sqlite3_finalize(v52);
        *(v29 + 24) = 0;
      }
    }

    goto LABEL_21;
  }

  sub_10089C7D0();
  v53 = swift_allocError();
  *v54 = v48;
  *(v54 + 8) = 0xD00000000000001FLL;
  *(v54 + 16) = 0x80000001015A5460;
  v62 = v53;
  swift_willThrow();
  v55 = *(*(v29 + 16) + 32);
  *v6 = v55;
  v63(v6, v64, v2);
  v56 = v55;
  v57 = _dispatchPreconditionTest(_:)();
  v34(v6, v2);
  if ((v57 & 1) == 0)
  {
    goto LABEL_22;
  }

  v58 = *(v29 + 24);
  if (v58)
  {
    sqlite3_finalize(v58);
    *(v29 + 24) = 0;
  }
}

uint64_t sub_100E0A750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLBoardIdentifier);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLBoardIdentifier);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA26E4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5410;
  v21 = _Block_copy(aBlock);
  v22 = v3;
  sub_10002E7A8(a2);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_100E0AB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_10007AF24();
  v7 = sub_10079DDA0(a2, v6);

  if (v7)
  {
    __chkstk_darwin(result);
    v9[2] = a2;
    v9[3] = a1;
    result = sub_10002FA9C(sub_100EA2710, v9);
    if (a3)
    {
      return a3(0);
    }
  }

  return result;
}

uint64_t sub_100E0AD74(uint64_t a1)
{
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v8, "Permanently deleting discardable board %{public}@", 49, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100E0A0D4();
  if (!v1)
  {
    sub_1005B981C(&unk_101A19BD0);
    v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10146C6B0;
    sub_10000C83C(a1, v11 + v10, type metadata accessor for CRLBoardIdentifier);
    v12 = sub_1005BF2F8(v11);
    swift_setDeallocating();
    sub_100026028(v11 + v10, type metadata accessor for CRLBoardIdentifier);
    swift_deallocClassInstance();
    sub_100032648(0, v12);
  }

  return 1;
}

uint64_t sub_100E0AFBC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[2] = a2;
  v37[3] = a1;
  sub_10002FA9C(sub_100EA2FF8, v37);
  v30 = v8;
  v31 = v6;
  v33 = v9;
  if (v36)
  {
    v36(0);
  }

  v13 = sub_100BD9514(_swiftEmptyArrayStorage);
  v14 = *(a2 + 16);
  v15 = a1;
  v32 = v10;
  if (v14)
  {
    sub_100006370(0, &qword_1019F2D90);
    v36 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = 1;
    *(v16 + 40) = v13;
    v42 = sub_10007A268;
    v43 = v16;
    v38 = _NSConcreteStackBlock;
    v39 = *"";
    v40 = sub_100007638;
    v41 = &unk_1018A5758;
    v17 = _Block_copy(&v38);
    v18 = a1;

    v19 = v12;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v21 = v30;
    v20 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v36;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    v23 = v34;
    (*(v34 + 8))(v21, v20);
    (*(v32 + 8))(v12, v33);
  }

  else
  {

    v23 = v34;
    v21 = v30;
    v20 = v31;
    v19 = v12;
  }

  sub_100006370(0, &qword_1019F2D90);
  v36 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = _swiftEmptySetSingleton;
  *(v24 + 24) = _swiftEmptySetSingleton;
  *(v24 + 32) = _swiftEmptySetSingleton;
  *(v24 + 40) = 0;
  *(v24 + 48) = v15;
  v42 = sub_1000260F4;
  v43 = v24;
  v38 = _NSConcreteStackBlock;
  v39 = *"";
  v40 = sub_100007638;
  v41 = &unk_1018A57A8;
  v25 = _Block_copy(&v38);
  v26 = v15;

  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v36;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v23 + 8))(v21, v20);
  return (*(v32 + 8))(v19, v33);
}

uint64_t sub_100E0B760(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v18 = a3;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_10000C83C(*(a1 + 48) + *(v6 + 72) * (v16 | (v15 << 6)), v8, type metadata accessor for CRLBoardIdentifier);
    v18(v8);
    result = sub_100026028(v8, type metadata accessor for CRLBoardIdentifier);
    if (v3)
    {
LABEL_11:

      return 1;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100E0B910()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v42 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    __break(1u);
    goto LABEL_16;
  }

  result = sub_100DEB448();
  if (!v1 && result)
  {
    v39 = v10;
    v40 = result;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v13 = sub_10001CC04(v12, 0xD000000000000051, 0x80000001015A5CD0);

    sub_100034254(*(v40 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges) | 4, 1);
    type metadata accessor for CRLBoardIdentifierStorage(0);
    v14 = sub_10084DAE4();
    v38 = 0;
    v37 = v15;
    v16 = v14;
    v17 = *(*(v13 + 16) + 32);
    *v6 = v17;
    v42(v6, v41, v2);
    v18 = v17;
    v19 = _dispatchPreconditionTest(_:)();
    v20 = v39;
    v39(v6, v2);
    if (v19)
    {

      v21 = v16;
      v22 = v16;
      v24 = v37;
      v23 = v38;
      sub_100DCCAB4(v22, v37, v13, 2);
      v38 = v23;
      sub_10002640C(v21, v24);
      v25 = *(*(v13 + 16) + 32);
      *v6 = v25;
      v42(v6, v41, v2);
      v26 = v25;
      LOBYTE(v21) = _dispatchPreconditionTest(_:)();
      v20(v6, v2);
      if (v21)
      {
        v27 = *(v13 + 16);

        v28 = sub_10001CEC4(v27, v13);

        if (v28 == 101)
        {
          v29 = *(*(v13 + 16) + 32);
          *v6 = v29;
          v42(v6, v41, v2);
          v30 = v29;
          v31 = _dispatchPreconditionTest(_:)();
          v20(v6, v2);
          if ((v31 & 1) == 0)
          {
            __break(1u);
          }

LABEL_12:
          swift_beginAccess();
          v36 = *(v13 + 24);
          if (v36)
          {
            sqlite3_finalize(v36);

            *(v13 + 24) = 0;
          }

          else
          {
          }
        }

        sub_10089C7D0();
        swift_allocError();
        *v32 = v28;
        *(v32 + 8) = 0xD00000000000001ELL;
        *(v32 + 16) = 0x80000001015A5D30;
        swift_willThrow();
        v33 = *(*(v13 + 16) + 32);
        *v6 = v33;
        v42(v6, v41, v2);
        v34 = v33;
        v35 = _dispatchPreconditionTest(_:)();
        v20(v6, v2);
        if (v35)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_100E0BF00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1005B981C(&unk_101A050F0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_100E09624(a3, a4, sub_100EA6324, v13);
}

uint64_t sub_100E0C060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E14284(a3, sub_100EA6324, v11, &unk_1018A56F0, sub_100EA2FEC, &unk_1018A5708);
}

uint64_t sub_100E0C1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E14284(a3, sub_100EA6324, v11, &unk_1018A5808, sub_100EA302C, &unk_1018A5820);
}

uint64_t sub_100E0C348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5[2] = a2;
  v5[3] = a1;
  result = sub_10002FA9C(sub_100EA3038, v5);
  if (a3)
  {
    return a3(0);
  }

  return result;
}

uint64_t sub_100E0C5F8(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v15 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_10000C83C(*(a1 + 48) + *(v15 + 72) * (v13 | (v12 << 6)), v5, type metadata accessor for CRLBoardIdentifier);
    sub_100E0C7BC(v5, 0xD00000000000001BLL, 0x80000001015A5DA0, 1);
    result = sub_100026028(v5, type metadata accessor for CRLBoardIdentifier);
    if (v1)
    {
LABEL_11:

      return 1;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}