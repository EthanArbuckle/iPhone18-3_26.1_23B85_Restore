uint64_t sub_100EA017C(uint64_t a1, void *a2)
{
  if (String.count.getter() < 1)
  {
    v5 = 0;
    a2 = 0xE000000000000000;
  }

  else
  {

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    v5 = a1;
  }

  _StringGuts.grow(_:)(52);
  v6._countAndFlagsBits = v5;
  v6._object = a2;
  String.append(_:)(v6);
  v7._object = 0x8000000101585360;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x7461645F74647263;
  v10._object = 0xE900000000000061;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x726F7661665F7369;
  v13._object = 0xEB00000000657469;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v5;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v16._object = 0x80000001015A3390;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v5;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6174735F77656976;
  v19._object = 0xEF617461645F6574;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = a2;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x80000001015A33B0;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v5;
  v24._object = a2;
  String.append(_:)(v24);
  v25._object = 0x80000001015A33D0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v5;
  v27._object = a2;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x7461645F636E7973;
  v28._object = 0xE900000000000061;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v5;
  v30._object = a2;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0xD000000000000026;
  v31._object = 0x80000001015A33F0;
  String.append(_:)(v31);
  return 0;
}

uint64_t sub_100EA0450(uint64_t a1, uint64_t a2)
{
  v155 = a2;
  v3 = sub_1005B981C(&unk_101A22E60);
  v4 = __chkstk_darwin(v3 - 8);
  v139 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v138 = &v128 - v7;
  __chkstk_darwin(v6);
  v137 = &v128 - v8;
  v9 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v10 = *(v9 - 8);
  v140 = v9;
  v141 = v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v136 = &v128 - v15;
  __chkstk_darwin(v14);
  v135 = &v128 - v16;
  v17 = type metadata accessor for UUID();
  v146 = *(v17 - 8);
  v147 = v17;
  __chkstk_darwin(v17);
  v19 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v20 = __chkstk_darwin(v145);
  v144 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v143 = &v128 - v22;
  v23 = type metadata accessor for CRLBoardIdentifier(0);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v142 = &v128 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v128 - v30;
  __chkstk_darwin(v29);
  v148 = &v128 - v32;
  v33 = type metadata accessor for DispatchPredicate();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = (&v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(*(a1 + 16) + 32);
  *v36 = v39;
  v37 = *(v34 + 104);
  LODWORD(v152) = enum case for DispatchPredicate.onQueue(_:);
  v153 = v34 + 104;
  v151 = v37;
  v37(v36);
  v38 = v39;
  LODWORD(v39) = _dispatchPreconditionTest(_:)();
  v41 = *(v34 + 8);
  v40 = v34 + 8;
  v154 = v33;
  v150 = v41;
  v41(v36, v33);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v42 = sub_10002C280(v155, a1);
  if (v42)
  {
    v133 = v13;
    v134 = v26;
    v149 = a1;
    v44 = sub_100024DD4(v42, v43);
    v46 = v45;
    sub_100024E98(v44, v45);
    sub_100024EEC(v19, v44, v46);
    v48 = v47;
    v50 = v49;
    v131 = v44;
    v132 = v46;
    sub_10002640C(v44, v46);
    v51 = v144;
    (*(v146 + 32))(v144, v19, v147);
    v52 = (v51 + *(v145 + 20));
    *v52 = v48;
    v52[1] = v50;
    v53 = v143;
    sub_100025668(v51, v143, type metadata accessor for CRLBoardIdentifierStorage);
    v54 = v53;
    v19 = v142;
    sub_100025668(v54, v142, type metadata accessor for CRLBoardIdentifierStorage);
    sub_100025668(v19, v31, type metadata accessor for CRLBoardIdentifier);
    v55 = v148;
    sub_100025668(v31, v148, type metadata accessor for CRLBoardIdentifier);
    v39 = v155 + 1;
    if (!__OFADD__(v155, 1))
    {
      v56 = v149;
      v57 = *(*(v149 + 16) + 32);
      *v36 = v57;
      v58 = v154;
      v151(v36, v152, v154);
      v59 = v57;
      v19 = _dispatchPreconditionTest(_:)();
      v150(v36, v58);
      if (v19)
      {
        v60 = sub_10002C280(v39, v56);
        if (!v60)
        {
          goto LABEL_22;
        }

        v63 = sub_100024DD4(v60, v61);
        v39 = v155;
        if (!__OFADD__(v155, 2))
        {
          v64 = v62;
          v65 = sub_100083D68(v155 + 2, v56);
          if (v65 == 2)
          {
LABEL_12:
            sub_100026028(v55, type metadata accessor for CRLBoardIdentifier);
            sub_10002640C(v131, v132);
            v67 = v63;
            v68 = v64;
LABEL_13:
            sub_10002640C(v67, v68);

            return 0;
          }

          v19 = v65;
          if (!__OFADD__(v39, 3))
          {
            v66 = sub_100083D68(v39 + 3, v56);
            if (v66 == 2)
            {
              goto LABEL_12;
            }

            LODWORD(v144) = v66;
            LODWORD(v145) = v19;
            v147 = v39 + 4;
            if (!__OFADD__(v39, 4))
            {
              v69 = *(*(v56 + 16) + 32);
              *v36 = v69;
              v39 = v154;
              v151(v36, v152, v154);
              v70 = v69;
              v19 = _dispatchPreconditionTest(_:)();
              v150(v36, v39);
              if (v19)
              {
                v71 = sub_10002C280(v147, v56);
                if (v71)
                {
                  v146 = sub_100024DD4(v71, v72);
                  v147 = v73;
                  v39 = v155;
                  if (!__OFADD__(v155, 5))
                  {
                    v130 = sub_100028894(v155 + 5, v56);
                    if (!__OFADD__(v39, 6))
                    {
                      v19 = v74;
                      v75 = sub_100028894(v39 + 6, v56);
                      if (v76)
                      {
                        sub_100026028(v55, type metadata accessor for CRLBoardIdentifier);
                        sub_10002640C(v131, v132);
                        sub_10002640C(v63, v64);
                        v67 = v146;
                        v68 = v147;
                        goto LABEL_13;
                      }

                      v142 = v64;
                      v143 = v63;
                      v129 = v75;
                      v78 = v155 + 7;
                      if (!__OFADD__(v155, 7))
                      {
                        v79 = v56;
                        v80 = *(*(v56 + 16) + 32);
                        *v36 = v80;
                        v39 = v154;
                        v151(v36, v152, v154);
                        v81 = v80;
                        LOBYTE(v80) = _dispatchPreconditionTest(_:)();
                        v150(v36, v39);
                        if (v80)
                        {
                          v82 = sub_10002C280(v78, v79);
                          v40 = v132;
                          if (v82)
                          {
                            v36 = sub_100024DD4(v82, v83);
                            v85 = v84;
                          }

                          else
                          {
                            v36 = 0;
                            v85 = 0xF000000000000000;
                          }

                          v39 = v142;
                          if (!__OFADD__(v155, 8))
                          {
                            v86 = sub_100028894(v155 + 8, v79);
                            if (v87)
                            {
                              sub_100026028(v148, type metadata accessor for CRLBoardIdentifier);
                              sub_10002640C(v131, v40);
                              sub_10002640C(v143, v39);
                              sub_10002640C(v146, v147);
                              sub_100025870(v36, v85);

                              return 0;
                            }

                            v153 = v86;
                            v154 = v36;
                            v88 = v134;
                            sub_10000C83C(v148, v134, type metadata accessor for CRLBoardIdentifier);
                            type metadata accessor for CRLUserBoardMetadataDatabaseRow();
                            v89 = v85;
                            v90 = swift_allocObject();
                            v91 = (v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
                            *(v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData) = xmmword_101486780;
                            sub_10000C83C(v88, v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
                            v92 = (v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
                            v93 = v143;
                            *v92 = v143;
                            v92[1] = v39;
                            *(v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite) = v145 & 1;
                            *(v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors) = v144 & 1;
                            v94 = (v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
                            v96 = v146;
                            v95 = v147;
                            *v94 = v146;
                            v94[1] = v95;
                            v97 = v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion;
                            *v97 = v130;
                            *(v97 + 8) = v19 & 1;
                            *(v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = v129;
                            v98 = v91[1];
                            v152 = *v91;
                            sub_100024E98(v93, v39);
                            sub_100024E98(v96, v95);
                            v99 = v154;
                            sub_100024E84(v154, v89);
                            *v91 = v99;
                            v91[1] = v89;
                            v151 = v89;
                            sub_100025870(v152, v98);
                            *(v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity) = v153;
                            sub_100024E98(v93, v39);
                            v100 = sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            v101 = v137;
                            v102 = v140;
                            v153 = v100;
                            CRDT.init(serializedData:)();
                            v155 = v90;
                            v118 = *(v141 + 56);
                            v118(v101, 0, 1, v102);
                            v119 = v135;
                            sub_100025668(v101, v135, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            sub_1005B981C(&qword_101A2C810);
                            CRRegister.wrappedValue.getter();
                            sub_100026028(v119, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            *(v90 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) = v156;
                            v120 = v142;
LABEL_34:
                            sub_100024E98(v143, v120);
                            v121 = v138;
                            CRDT.init(serializedData:)();
                            v118(v121, 0, 1, v102);
                            v122 = v121;
                            v123 = v136;
                            sub_100025668(v122, v136, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            sub_1005B981C(&qword_101A2C810);
                            CRRegister.wrappedValue.getter();
                            sub_100026028(v123, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            *(v155 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled) = v156;
                            v124 = v143;
                            sub_100024E98(v143, v120);
                            v125 = v139;
                            CRDT.init(serializedData:)();
                            v126 = v131;
                            v118(v125, 0, 1, v102);
                            v127 = v133;
                            sub_100025668(v125, v133, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            sub_1005B981C(&qword_101A2C810);
                            CRRegister.wrappedValue.getter();

                            sub_100025870(v154, v151);
                            sub_10002640C(v146, v147);
                            sub_10002640C(v124, v120);
                            sub_10002640C(v126, v132);
                            sub_100026028(v127, type metadata accessor for CRLUserBoardMetadataCRDTData);
                            sub_100026028(v134, type metadata accessor for CRLBoardIdentifier);
                            sub_100026028(v148, type metadata accessor for CRLBoardIdentifier);
                            result = v155;
                            *(v155 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen) = v156;
                            return result;
                          }

LABEL_46:
                          __break(1u);
                          swift_once();
                          v103 = static OS_os_log.crlAssert;
                          sub_1005B981C(&qword_1019F54E0);
                          inited = swift_initStackObject();
                          *(inited + 16) = xmmword_10146CA70;
                          *(inited + 56) = &type metadata for Int32;
                          *(inited + 64) = &protocol witness table for Int32;
                          *(inited + 32) = v39;
                          v105 = sub_100006370(0, &qword_1019F4D30);
                          *(inited + 96) = v105;
                          v106 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
                          *(inited + 104) = v106;
                          *(inited + 72) = v19;
                          *(inited + 136) = &type metadata for String;
                          v107 = sub_1000053B0();
                          *(inited + 112) = v40;
                          *(inited + 120) = v36;
                          *(inited + 176) = &type metadata for UInt;
                          *(inited + 144) = v107;
                          *(inited + 152) = 92;
                          v108 = v156;
                          *(inited + 216) = v105;
                          *(inited + 224) = v106;
                          *(inited + 184) = &protocol witness table for UInt;
                          *(inited + 192) = v108;
                          v109 = v19;
                          v110 = v108;
                          v111 = static os_log_type_t.error.getter();
                          sub_100005404(v103, &_mh_execute_header, v111, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                          swift_setDeallocating();
                          sub_1005B981C(&unk_1019F5670);
                          swift_arrayDestroy();
                          v112 = static os_log_type_t.error.getter();
                          sub_100005404(v103, &_mh_execute_header, v112, "Unable to deserialize user board metadata.", 42, 2, _swiftEmptyArrayStorage);

                          type metadata accessor for __VaListBuilder();
                          v113 = swift_allocObject();
                          v113[2] = 8;
                          v113[3] = 0;
                          v113[4] = 0;
                          v113[5] = 0;
                          v114 = __VaListBuilder.va_list()();
                          StaticString.description.getter();
                          v115 = String._bridgeToObjectiveC()();

                          StaticString.description.getter();
                          v116 = String._bridgeToObjectiveC()();

                          StaticString.description.getter();
                          v117 = String._bridgeToObjectiveC()();

                          [v150 handleFailureInFunction:v115 file:v116 lineNumber:92 isFatal:0 format:v117 args:v114];

                          *(v155 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) = 1;
                          v120 = v142;
                          v102 = v140;
                          v118 = v152;
                          goto LABEL_34;
                        }

LABEL_45:
                        __break(1u);
                        goto LABEL_46;
                      }

LABEL_44:
                      __break(1u);
                      goto LABEL_45;
                    }

LABEL_43:
                    __break(1u);
                    goto LABEL_44;
                  }

LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                sub_10002640C(v63, v64);
LABEL_22:
                sub_10002640C(v131, v132);

                sub_100026028(v55, type metadata accessor for CRLBoardIdentifier);
                return 0;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  return 0;
}

uint64_t sub_100EA1DC0(uint64_t a1, char a2)
{
  sub_1005B981C(&qword_101A21C58);

  return sub_100E12F5C(a1, a2 & 1);
}

unint64_t sub_100EA1E60(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100EA2038()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E193D4(v5, v0 + v2, v4, v6, v7);
}

uint64_t sub_100EA2238(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, unint64_t, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1005B981C(a1) - 8);
  return a4(*(v4 + 16), v4 + v9, v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a3);
}

uint64_t sub_100EA2350()
{
  sub_1005B981C(&unk_101A050F0);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_100E282C8(v1, v2, v3);
}

uint64_t sub_100EA2420()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E13864(v6, v0 + v2, v0 + v5, v7);
}

unint64_t sub_100EA2550()
{
  result = qword_101A21DD8;
  if (!qword_101A21DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21DD8);
  }

  return result;
}

uint64_t sub_100EA25EC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10072D200(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100EA2730()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);

  return sub_100E2D6F4(v5, v0 + v2, v7, v8, v9);
}

uint64_t sub_100EA2840(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v6 = *(a1(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1005B981C(a2) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return a4(v10, v4 + v7, v11);
}

uint64_t sub_100EA2998(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A22E60);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v18[-v13];
  sub_100024E98(*(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
  sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData);
  CRDT.init(serializedData:)();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100025668(v7, v14, type metadata accessor for CRLUserBoardMetadataCRDTData);
  sub_10000C83C(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v4, type metadata accessor for CRLBoardIdentifier);
  sub_100025668(v14, v12, type metadata accessor for CRLUserBoardMetadataCRDTData);
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity);

  type metadata accessor for CRLUserBoardMetadataData();
  v16 = swift_allocObject();
  sub_100025668(v4, v16 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  sub_100025668(v12, v16 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData, type metadata accessor for CRLUserBoardMetadataCRDTData);
  result = v16;
  *(v16 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) = v15;
  return result;
}

uint64_t sub_100EA2D30()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1005B981C(&unk_101A050F0);
  v4 = *(v0 + 16);

  return sub_100E15E5C(v4, v0 + v2, v0 + v3);
}

unint64_t sub_100EA2F30()
{
  result = qword_101A21E90;
  if (!qword_101A21E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21E90);
  }

  return result;
}

uint64_t sub_100EA313C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100E27568(a1, a2, v6);
}

uint64_t sub_100EA31D4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1005B981C(&unk_101A050F0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_100EA32CC(uint64_t a1)
{

  if (*(v1 + 32))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_100EA3410()
{
  result = qword_101A21F28;
  if (!qword_101A21F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21F28);
  }

  return result;
}

unint64_t sub_100EA3464()
{
  result = qword_101A21F38;
  if (!qword_101A21F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21F38);
  }

  return result;
}

uint64_t sub_100EA34DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100F05124(*(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100EA3530()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100EA364C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100EA5524;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A67C0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

unint64_t sub_100EA391C(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

Class sub_100EA392C(void *a1, void *a2)
{
  v34[0] = a1;
  v34[1] = a2;
  sub_100017CD8();
  v2 = StringProtocol.components<A>(separatedBy:)();
  v3 = v2;
  if (*(v2 + 16) == 2)
  {
LABEL_7:
    v27 = v3[4];
    v26 = v3[5];
    v28 = v3[6];
    v29 = v3[7];

    sub_100006370(0, &qword_1019F69D0);
    v30._countAndFlagsBits = v27;
    v30._object = v26;
    v31._countAndFlagsBits = v28;
    v31._object = v29;
    return CKRecordZoneID.init(zoneName:ownerName:)(v30, v31).super.isa;
  }

  else
  {
    v33 = *(v2 + 16);
    v32 = objc_opt_self();
    LODWORD(v4) = [v32 _atomicIncrementAssertCount];
    v34[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v34);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v13;
      v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 12743;
      v16 = v34[0];
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Tried to deserialized sqliteString for CKRecordZone.ID that has incorrect number of components", 94, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v5 = swift_allocObject();
      v5[2] = 8;
      v5[3] = 0;
      v5[4] = 0;
      v5[5] = 0;
      v4 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v22 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      [v32 handleFailureInFunction:v21 file:v22 lineNumber:12743 isFatal:0 format:v23 args:v4];

      if (v33 < 2)
      {
        break;
      }

      v25 = v3[2];
      if (v25)
      {
        if (v25 != 1)
        {
          goto LABEL_7;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_10:
      swift_once();
    }

    return 0;
  }
}

Class sub_100EA3DBC(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v37[0] = 58;
  v37[1] = 0xE100000000000000;
  sub_100017CD8();
  v2 = StringProtocol.components<A>(separatedBy:)();
  v38 = v2;
  if (*(v2 + 16) == 3)
  {
    v3 = 3;
  }

  else
  {
    v36 = objc_opt_self();
    v4 = [v36 _atomicIncrementAssertCount];
    v37[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v37);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 12719;
    v16 = v37[0];
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Tried to deserialized sqliteRepresentation for CKRecord.ID that has incorrect number of components", 98, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v23 file:v24 lineNumber:12719 isFatal:0 format:v25 args:v22];

    v3 = *(v2 + 16);
    if (v3 < 3)
    {
      goto LABEL_12;
    }
  }

  v27 = *(v2 + 32);
  v26 = *(v2 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v2;
  if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > *(v2 + 24) >> 1)
  {
    v2 = sub_100024CBC(isUniquelyReferenced_nonNull_native, v3, 1, v2);
    v38 = v2;
  }

  sub_10067DBF8(0, 1, 0);
  v37[0] = v2;

  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  v32 = sub_100EA392C(v29, v31);

  if (v32)
  {
    sub_100006370(0, &qword_1019F6E98);
    v33._countAndFlagsBits = v27;
    v33._object = v26;
    isa = CKRecordID.init(recordName:zoneID:)(v33, v32).super.isa;

    return isa;
  }

LABEL_12:

  return 0;
}

uint64_t sub_100EA4328()
{
  if (*(v0 + 34))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100E5FBAC(*(v0 + 16), *(v0 + 24), v2 | *(v0 + 32) | v1) & 1;
}

uint64_t sub_100EA4424@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 32);
  v6[1] = *(v1 + 16);
  v6[2] = v4;
  result = sub_10002FA9C(sub_100EA61C0, v6);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100EA4480()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E2C868(v2, v3, v4);
}

uint64_t sub_100EA4578()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E2BB74(v2, v3, v4);
}

uint64_t sub_100EA466C()
{
  v1 = sub_1005B981C(&unk_101A050F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100EA4788()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E2ABD8(v2, v3, v4);
}

uint64_t sub_100EA483C()
{
  v1 = *(type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v2 + v3) & ~v2;
  sub_1005B981C(&unk_101A050F0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_100E2A41C(v5, v6, v0 + v3, v0 + v4);
}

uint64_t sub_100EA494C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100EA4994()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E29BCC(v2, v3, v4);
}

uint64_t sub_100EA4A50()
{
  v1 = *(type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1005B981C(&unk_101A050F0);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);

  return sub_100E29744(v4, v0 + v2, v5);
}

uint64_t sub_100EA4B68()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002D4C8;

  return sub_100E28CF4(v2, v3, v5, v4);
}

uint64_t sub_100EA4C34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E10814(v2, v3, v4);
}

uint64_t sub_100EA4CF0(uint64_t *a1)
{
  v2 = sub_1005B981C(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100EA4EBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6[2] = *(v2 + 16);
  result = sub_10002FA9C(a1, v6);
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100EA4F2C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  v7[1] = *(v1 + 24);
  v8 = v4;
  v9 = v5;
  result = sub_10002FA9C(sub_100EA4E6C, v7);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100EA4FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10072F93C(a1, v4, v5, v6);
}

uint64_t sub_100EA506C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_10112D6EC(a1, v4, v5, v6);
}

uint64_t sub_100EA5120()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_100DD55E4(v2, v3);
}

uint64_t sub_100EA51D4()
{
  v1 = *(v0 + 24);
  v2 = sub_100DD4EA0(1);
  return v1(v2);
}

uint64_t sub_100EA5218()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_100DD4AF0(v2, v3);
}

uint64_t sub_100EA52CC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_100035F90();
  }

  return result;
}

unint64_t sub_100EA5330()
{
  result = qword_101A21FD8;
  if (!qword_101A21FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21FD8);
  }

  return result;
}

uint64_t sub_100EA5384(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

unint64_t sub_100EA541C()
{
  result = qword_101A21FF0;
  if (!qword_101A21FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21FF0);
  }

  return result;
}

uint64_t sub_100EA54A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100EA54FC(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_1009F5E18(a1, a2, a3, a4, a5);
  }
}

void sub_100EA5510(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_1009F5D34(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_100EA559C()
{
  result = qword_101A22048;
  if (!qword_101A22048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22048);
  }

  return result;
}

uint64_t sub_100EA55F0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1005B981C(&qword_101A21E58);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);

  return sub_100E2E93C(v4, v0 + v2, v5, v6);
}

uint64_t sub_100EA5708()
{
  v1 = type metadata accessor for CRLFolder();
  v19 = *(*(v1 - 1) + 80);
  v2 = (v19 + 24) & ~v19;
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  type metadata accessor for CRLFolderIdentifierStorage(0);

  v7 = v0 + v2 + v1[5];
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v6(v7, v5);
  }

  v9 = v4 + v1[7];
  v10 = sub_1005B981C(&qword_101A1A020);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for CRLFolderCRDTData();
  v12 = v11[5];
  v13 = sub_1005B981C(&qword_1019F4850);
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  v14 = v11[6];
  v15 = sub_1005B981C(&qword_1019F4858);
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v16 = v11[7];
  v17 = sub_1005B981C(&qword_1019F4860);
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v19 | 7);
}

uint64_t sub_100EA5A28(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v2 + 16);
  v6 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(v5, v2 + v4, v7, v8);
}

uint64_t getEnumTagSinglePayload for CRLBoardDataStore.CRLBoardColumn(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardDataStore.CRLBoardColumn(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100EA5C88(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100EA5CA4()
{
  result = qword_101A22110;
  if (!qword_101A22110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22110);
  }

  return result;
}

unint64_t sub_100EA5D40()
{
  result = qword_101A22128;
  if (!qword_101A22128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22128);
  }

  return result;
}

unint64_t sub_100EA5D98()
{
  result = qword_101A22130;
  if (!qword_101A22130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22130);
  }

  return result;
}

unint64_t sub_100EA5DF0()
{
  result = qword_101A22138;
  if (!qword_101A22138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22138);
  }

  return result;
}

unint64_t sub_100EA5E48()
{
  result = qword_101A22140;
  if (!qword_101A22140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22140);
  }

  return result;
}

unint64_t sub_100EA5EA0()
{
  result = qword_101A22148;
  if (!qword_101A22148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22148);
  }

  return result;
}

uint64_t sub_100EA5EF4()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E1A8A8(v3, v4, v0 + v2, v5);
}

uint64_t sub_100EA5FF0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100EA604C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100EA63DC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CRLForceDeviceIsNotCapableForUpdateUserDefault"];

  if ((v1 & 1) == 0)
  {
    v3 = [objc_opt_self() sharedDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 dictionaryForKey:v4];

    if (v5)
    {
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_100C08818(v6);

      if (v7)
      {
        if (*(v7 + 16))
        {
          v8 = sub_10000BE7C(0xD000000000000012, 0x80000001015935E0);
          if (v9)
          {
            v10 = *(*(v7 + 56) + 8 * v8);

            v11 = [objc_opt_self() crl_platformString];
            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;

            v18[0] = v12;
            v18[1] = v14;
            __chkstk_darwin(v15);
            v17[2] = v18;
            LOBYTE(v11) = sub_100C08644(sub_1008335B4, v17, v10);

            v2 = v11 ^ 1;
            return v2 & 1;
          }
        }
      }
    }

    v2 = 1;
    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t sub_100EA661C()
{
  v0 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  sub_10061655C(v0, qword_101AD8680);
  sub_1005EB3DC(v0, qword_101AD8680);
  return NSRunLoop.SchedulerTimeType.Stride.init(integerLiteral:)();
}

id sub_100EA66BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommonConstants();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100EA6718()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[4] + *v2[4]);
    v6 = swift_task_alloc();
    v2[7] = v6;
    *v6 = v3;
    v6[1] = sub_100EA68E8;
    v7 = v2[2];

    return v8(v7);
  }
}

uint64_t sub_100EA68E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100EA69DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100EA78F8();
  }

  return result;
}

uint64_t sub_100EA6A3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1009E0B1C();
    sub_1009E0B1C();
  }

  return result;
}

void sub_100EA6AA0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.dataSync;
    v3 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v3, "User attempted to share a board that has not yet synced, ensuring we save this board as soon as possible. Saving immediately.", 125, 2, _swiftEmptyArrayStorage);
    v4 = *(v1 + 24);
    sub_1009E0B44();
  }
}

uint64_t sub_100EA6B74()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = *(v0 + 80);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 96);
  if (v7)
  {
    v8 = objc_opt_self();
    swift_unknownObjectRetain();
    v9 = [v8 defaultCenter];
    [v9 removeObserver:v7];
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 88);
  if (v10)
  {
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = [v11 defaultCenter];
    [v12 removeObserver:v10];
    swift_unknownObjectRelease();
  }

  v13 = *(v0 + 104);
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver:v13];
    swift_unknownObjectRelease();
  }

  v16 = *(v0 + 24);
  v17 = *(v0 + 40);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;
  v19[5] = v17;
  v19[6] = &off_1018B8A98;
  v20 = v16;
  swift_retain_n();
  v21 = v20;
  sub_10064191C(0, 0, v3, &unk_1014B7328, v19);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100EA6E78()
{
  sub_100EA6B74();

  return swift_deallocClassInstance();
}

void sub_100EA6EAC(char a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
  if (v2 != (a1 & 1) && (*(v1 + 137) & 1) == 0)
  {
    if (a1)
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v3 = static OS_os_log.crlDefault;
      v4 = static os_log_type_t.default.getter();
      sub_100005404(v3, &_mh_execute_header, v4, "Posting syncDidBegin notification.", 34, 2, _swiftEmptyArrayStorage);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1019F2568 != -1)
      {
        v10 = v5;
        swift_once();
        v5 = v10;
      }

      v6 = &qword_101AD86A0;
    }

    else
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.crlDefault;
      v8 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v8, "Posting syncDidEnd notification.", 32, 2, _swiftEmptyArrayStorage);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1019F2560 != -1)
      {
        v11 = v5;
        swift_once();
        v5 = v11;
      }

      v6 = &qword_101AD8698;
    }

    v9 = v5;
    [v5 postNotificationName:*v6 object:v1 userInfo:0];
  }
}

void sub_100EA70C0(char a1)
{
  v2 = *(v1 + 137);
  *(v1 + 137) = a1;
  if (v2 != (a1 & 1) && (*(v1 + 136) & 1) == 0)
  {
    if (a1)
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v3 = static OS_os_log.crlDefault;
      v4 = static os_log_type_t.default.getter();
      sub_100005404(v3, &_mh_execute_header, v4, "Posting syncDidBegin notification.", 34, 2, _swiftEmptyArrayStorage);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1019F2568 != -1)
      {
        v10 = v5;
        swift_once();
        v5 = v10;
      }

      v6 = &qword_101AD86A0;
    }

    else
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.crlDefault;
      v8 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v8, "Posting syncDidEnd notification.", 32, 2, _swiftEmptyArrayStorage);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1019F2560 != -1)
      {
        v11 = v5;
        swift_once();
        v5 = v11;
      }

      v6 = &qword_101AD8698;
    }

    v9 = v5;
    [v5 postNotificationName:*v6 object:v1 userInfo:0];
  }
}

uint64_t sub_100EA72F4()
{
  sub_1009E0B1C();
  sub_1009E0B1C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100EA7364(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_1005B981C(&qword_1019FB750);
  *(v2 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100EA7400, 0, 0);
}

uint64_t sub_100EA7400()
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = static OS_os_log.dataSync;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "About to moveEntirePersistedCacheIntoDataModel as a startup maintenance task", 76, 2, _swiftEmptyArrayStorage);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  v0[4] = sub_10064191C(0, 0, v2, &unk_1014B7320, v6);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_100EA75B0;

  return Task<>.value.getter();
}

uint64_t sub_100EA75B0()
{

  return _swift_task_switch(sub_100EA76C8, 0, 0);
}

uint64_t sub_100EA76C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100EA774C()
{
  v1 = *(*(v0[8] + 56) + 16);
  v2 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1009F75C8;
  *(v4 + 24) = v3;
  v0[6] = sub_10002AAE4;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_10002AAB8;
  v0[5] = &unk_1018A7218;
  v5 = _Block_copy(v0 + 2);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }

  return result;
}

void sub_100EA78F8()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v56[-v3];
  v5 = *(v0 + 128);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = *(v1 + 112);
  os_unfair_lock_unlock(*(v5 + 16));
  v7 = Notification.name.getter();
  v8 = qword_1019F2530;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    if (!v6)
    {
      return;
    }

    goto LABEL_9;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {

    if (!v6)
    {
      return;
    }

    goto LABEL_9;
  }

  if (qword_1019F2528 != -1)
  {
    swift_once();
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

LABEL_17:
    v20 = Notification.userInfo.getter();
    if (v20)
    {
      v21 = sub_10007C02C(v20);

      if (v21)
      {
        if (*(v21 + 16) && (v22 = sub_10000BE7C(0xD000000000000019, 0x80000001015A4B80), (v23 & 1) != 0))
        {
          sub_100064288(*(v21 + 56) + 32 * v22, v58);

          if (swift_dynamicCast())
          {
            v24 = v57;
LABEL_28:
            v32 = Notification.userInfo.getter();
            if (v32)
            {
              v33 = sub_10007C02C(v32);

              if (v33)
              {
                if (*(v33 + 16) && (v34 = sub_10000BE7C(0xD000000000000010, 0x80000001015A4BA0), (v35 & 1) != 0))
                {
                  sub_100064288(*(v33 + 56) + 32 * v34, v58);

                  if (swift_dynamicCast())
                  {
                    v36 = v57;
                    goto LABEL_36;
                  }
                }

                else
                {
                }
              }
            }

            v36 = 0;
LABEL_36:
            if (!v6)
            {
              return;
            }

            v37 = Notification.userInfo.getter();
            if (!v37)
            {
              goto LABEL_45;
            }

            v38 = sub_10007C02C(v37);

            if (!v38)
            {
              goto LABEL_45;
            }

            if (!*(v38 + 16) || (v39 = sub_10000BE7C(0xD000000000000010, 0x800000010155F8A0), (v40 & 1) == 0))
            {

              goto LABEL_45;
            }

            sub_100064288(*(v38 + 56) + 32 * v39, v58);

            sub_1005B981C(&unk_101A22E80);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_45:
              if (qword_1019F2270 != -1)
              {
                swift_once();
              }

              v42 = static OS_os_log.dataSync;
              v43 = static os_log_type_t.error.getter();
              sub_100005404(v42, &_mh_execute_header, v43, "Missing board ownerName in data store save notification", 55, 2, _swiftEmptyArrayStorage);
              sub_1009E0B44();
LABEL_9:
              sub_1009E0B44();
              return;
            }

            sub_100BC1A90(v57, v4);

            v41 = type metadata accessor for CRLBoardIdentifier(0);
            if ((*(*(v41 - 8) + 48))(v4, 1, v41) == 1)
            {
              sub_10000CAAC(v4, &unk_1019F52D0);
              goto LABEL_45;
            }

            v44 = &v4[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
            v46 = *v44;
            v45 = v44[1];

            sub_100086F34(v4);
            if ((v46 || v45 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if (v46 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v45 != v47)
              {
                v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v48 = 32;
                if (v55)
                {
                  v48 = 24;
                }

                goto LABEL_55;
              }
            }

            v48 = 24;
LABEL_55:
            v49 = *(v1 + v48);
            v50 = qword_1019F2270;
            v51 = v49;
            if (v50 != -1)
            {
              swift_once();
            }

            v52 = static OS_os_log.dataSync;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146BDE0;
            *(inited + 56) = &type metadata for Bool;
            *(inited + 64) = &protocol witness table for Bool;
            *(inited + 32) = v24;
            *(inited + 96) = &type metadata for Bool;
            *(inited + 104) = &protocol witness table for Bool;
            *(inited + 72) = v36;
            v54 = static os_log_type_t.default.getter();
            sub_100005404(v52, &_mh_execute_header, v54, "Scheduling a sync after saving data. Has significant changes: %d, newAssetsAdded: %d", 84, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            sub_1009E0B44();

            return;
          }
        }

        else
        {
        }
      }
    }

    v24 = 0;
    goto LABEL_28;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_17;
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_10146C6B0;
  v27 = Notification.name.getter();
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000053B0();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v31, "Encountered unknown notification in handleDataStoreDidSaveSyncableData named: %@", 80, 2, v26);
  swift_setDeallocating();
  sub_100005070(v26 + 32);
}

uint64_t sub_100EA81A0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002D3D4;

  return (sub_100EA8404)(a2);
}

void sub_100EA8260(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLSyncController();
  *(inited + 64) = sub_10002A8DC(&qword_101A22428, type metadata accessor for CRLSyncController);
  *(inited + 32) = a1;
  v10 = a1;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v11, a2, a3, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100006370(0, &qword_1019F54D0);
  if (static NSObject.== infix(_:_:)())
  {
    sub_100EA6EAC(a4 & 1);
  }

  else if (static NSObject.== infix(_:_:)())
  {
    sub_100EA70C0(a4 & 1);
  }
}

uint64_t sub_100EA8404(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100EA8424, 0, 0);
}

uint64_t sub_100EA8424()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 128);
  os_unfair_lock_lock(*(v3 + 16));
  *(v2 + 112) = v1 != 0;
  os_unfair_lock_unlock(*(v3 + 16));
  if (*(v2 + 112) != 1 || (sub_1009E0B44(), sub_1009E0B44(), sub_1009E0B1C(), sub_1009E0B1C(), (*(v2 + 112) & 1) == 0))
  {
    v4 = v0[3];
    if ((*(v4 + 136) & 1) != 0 || *(v4 + 137) == 1)
    {
      sub_100EA8260(*(v4 + 24), "Fetch did end for sync controller: %@", 37, 0);
      sub_100EA8260(*(v4 + 32), "Fetch did end for sync controller: %@", 37, 0);
    }
  }

  v5 = v0[1];

  return v5();
}

unint64_t sub_100EA8530()
{
  result = qword_1019F69D8;
  if (!qword_1019F69D8)
  {
    sub_100006370(255, &qword_1019F69D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F69D8);
  }

  return result;
}

uint64_t sub_100EA8598(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002D4C8;

  return sub_100EA72D4(a1, v1);
}

uint64_t sub_100EA8634(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002D3D4;

  return sub_100EA7364(a1, v1);
}

uint64_t sub_100EA86D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100EA8710()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100EA877C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100EA87FC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  sub_100034080(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v5 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v30 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v32 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 8 * v7);
    v13 = *a2;
    if (*(*a2 + 16) && (v14 = sub_1007CF108(), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + 8 * v14);
    }

    else
    {
      v16 = 0;
    }

    result = sub_100D62774(v16, v12);
    v33 = v3;
    v19 = v3[2];
    v18 = v3[3];
    if (v19 >= v18 >> 1)
    {
      v29 = result;
      v28 = v17;
      sub_100034080((v18 > 1), v19 + 1, 1);
      v17 = v28;
      result = v29;
      v3 = v33;
    }

    v3[2] = v19 + 1;
    v20 = &v3[2 * v19];
    v20[4] = result;
    v20[5] = v17;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_26;
    }

    v5 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v11);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_27;
    }

    if (v32 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v30;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v10 = v30;
      v25 = (a1 + 72 + 8 * v11);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1000341AC(v7, v32, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v7, v32, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_100EA8A5C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLFreehandDrawingShapeItem();
    sub_100EB64C8(&qword_101A21DC8, type metadata accessor for CRLFreehandDrawingShapeItem);
    Set.Iterator.init(_cocoa:)();
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      do
      {
        v23 = v16;
        sub_100EB1208(&v23, a2);

        if (v3)
        {
          break;
        }

        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for CRLFreehandDrawingShapeItem();
        swift_dynamicCast();
        v16 = v23;
        v14 = v7;
        v15 = v8;
      }

      while (v23);
    }

LABEL_19:
    sub_100035F90();
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100EA8C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v55 = type metadata accessor for UUID();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v54 = &v47 - v18;
  __chkstk_darwin(v19);
  v24 = &v47 - v23;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019FAE60)
  {
    v47 = v22;
    v48 = v7;
    v49 = a2;
    v50 = v21;
    v51 = v20;
    v52 = v4;

    v25 = sub_1006CF3CC(1);

    v26 = v11;
    v27 = v25 + *(*v25 + 736);
    swift_beginAccess();
    v60 = v24;
    sub_10000BE14(v27, v13, &unk_101A0F400);

    v28 = sub_1005B981C(&unk_101A0F410);
    CRRegister.wrappedValue.getter();
    v29 = v60;
    sub_10000CAAC(v13, &unk_101A0F400);
    sub_10000BE14(v10, v29, &qword_1019F6990);
    sub_100EB6578(v10, type metadata accessor for CRLShapeItemParentAffinity);
    swift_beginAccess();
    v30 = v57;
    sub_10124E270(v56);
    swift_endAccess();
    if (v30)
    {

      sub_10000CAAC(v29, &qword_1019F6990);
    }

    else
    {
      v56 = v28;
      v57 = v26;
      sub_10000BE14(v27, v13, &unk_101A0F400);
      sub_1005B981C(&unk_1019F5250);
      v31 = v48;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v13, &unk_101A0F400);
      v32 = *(*v25 + 744);
      swift_beginAccess();
      v33 = v53;
      v34 = v55;
      (*(v53 + 40))(v25 + v32, v31, v55);
      swift_endAccess();
      v35 = v47;
      sub_10000BE14(v49, v47, &qword_1019F6990);
      v36 = *(v33 + 48);
      if (v36(v35, 1, v34) == 1)
      {
        v37 = v54;
        sub_10000BE14(v60, v54, &qword_1019F6990);
        if (v36(v35, 1, v34) != 1)
        {
          sub_10000CAAC(v35, &qword_1019F6990);
        }
      }

      else
      {
        v37 = v54;
        (*(v33 + 32))(v54, v35, v34);
        (*(v33 + 56))(v37, 0, 1, v34);
      }

      v38 = v51;
      sub_10000BE14(v37, v51, &qword_1019F6990);
      swift_beginAccess();
      v39 = v50;
      sub_10000BE14(v38, v50, &qword_1019F6990);
      v40 = CRRegister.wrappedValue.modify();
      sub_10002C638(v39, v41, &qword_1019F6990);
      v40(v59, 0);
      sub_10000CAAC(v38, &qword_1019F6990);
      swift_endAccess();

      sub_10000CAAC(v37, &qword_1019F6990);
      v42 = *(v52 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
      v43 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem());
      *&v43[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
      *&v43[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
      v44 = &v43[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
      *v44 = 0u;
      *(v44 + 1) = 0u;
      *(v44 + 2) = 0u;
      *(v44 + 6) = 0;
      *&v43[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v42;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v25;
      v45 = type metadata accessor for CRLBoardItemBase(0);
      v58.receiver = v43;
      v58.super_class = v45;
      v46 = v42;
      objc_msgSendSuper2(&v58, "init");
      sub_10000CAAC(v60, &qword_1019F6990);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100EA9414()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for CRLFreehandDrawingItem();
    if ([v1 isKindOfClass:swift_getObjCClassFromMetadata()])
    {

      return 1;
    }

    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v46 = v1;
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = NSStringFromClass(ObjCClassFromMetadata);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(inited + 56) = &type metadata for String;
    v8 = sub_1000053B0();
    *(inited + 32) = v5;
    v9 = inited + 32;
    *(inited + 64) = v8;
    *(inited + 40) = v7;
    v45 = objc_opt_self();
    LODWORD(v10) = [v45 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v47);
    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_36;
    }

LABEL_5:
    v17 = static OS_os_log.crlAssert;
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146CA70;
    *(v18 + 56) = &type metadata for Int32;
    *(v18 + 64) = &protocol witness table for Int32;
    *(v18 + 32) = v10;
    v19 = sub_100006370(0, &qword_1019F4D30);
    *(v18 + 96) = v19;
    v20 = sub_1005CF04C();
    *(v18 + 72) = v11;
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v8;
    *(v18 + 104) = v20;
    *(v18 + 112) = v14;
    *(v18 + 120) = v16;
    *(v18 + 176) = &type metadata for UInt;
    *(v18 + 184) = &protocol witness table for UInt;
    *(v18 + 152) = 68;
    v8 = v47;
    *(v18 + 216) = v19;
    *(v18 + 224) = v20;
    *(v18 + 192) = v8;
    v21 = v11;
    v22 = v8;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v24, "Freehand shapes should only be inside freehand drawings (got %@).", 65, 2, inited);

    type metadata accessor for __VaListBuilder();
    v11 = swift_allocObject();
    v11[2] = 8;
    v11[3] = 0;
    v25 = v11 + 3;
    v11[4] = 0;
    v11[5] = 0;
    v16 = *(inited + 16);
    if (!v16)
    {
LABEL_30:
      v40 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v41 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v42 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v43 = String._bridgeToObjectiveC()();

      [v45 handleFailureInFunction:v41 file:v42 lineNumber:68 isFatal:0 format:v43 args:v40];

      swift_setDeallocating();
      swift_arrayDestroy();

      return 1;
    }

    v26 = 0;
    inited = 40;
    while (1)
    {
      v27 = (v9 + 40 * v26);
      v14 = v27[3];
      sub_100020E58(v27, v14);
      v28 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v10 = *v25;
      v29 = *(v28 + 16);
      v30 = __OFADD__(*v25, v29);
      v31 = *v25 + v29;
      if (v30)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        swift_once();
        goto LABEL_5;
      }

      v32 = v11[4];
      if (v32 >= v31)
      {
        goto LABEL_22;
      }

      if (v32 + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v14 = v11[5];
      if (2 * v32 > v31)
      {
        v31 = 2 * v32;
      }

      v11[4] = v31;
      if ((v31 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      v8 = v28;
      v33 = swift_slowAlloc();
      v34 = v33;
      v11[5] = v33;
      if (v14)
      {
        break;
      }

      v28 = v8;
      if (!v34)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_23:
      v36 = *(v28 + 16);
      if (v36)
      {
        v37 = (v28 + 32);
        v38 = *v25;
        while (1)
        {
          v39 = *v37++;
          *&v34[8 * v38] = v39;
          v38 = *v25 + 1;
          if (__OFADD__(*v25, 1))
          {
            break;
          }

          *v25 = v38;
          if (!--v36)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

LABEL_7:

      if (++v26 == v16)
      {
        goto LABEL_30;
      }
    }

    if (v33 != v14 || v33 >= &v14[8 * v10])
    {
      memmove(v33, v14, 8 * v10);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v28 = v8;
LABEL_22:
    v34 = v11[5];
    if (!v34)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  return 1;
}

void sub_100EA9A2C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v9 != &off_1019FAE60)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v10 = qword_1019FB140;
  swift_beginAccess();
  sub_10000BE14(v9 + v10, v7, &unk_101A0F400);
  sub_1005B981C(&unk_101A0F410);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v7, &unk_101A0F400);
  v11 = &v4[*(v2 + 28)];
  v12 = *v11;
  v13 = v11[8];
  sub_100EB6578(v4, type metadata accessor for CRLShapeItemParentAffinity);
  if (v13 == 255 || (v13 & 1) != 0)
  {
    v14 = sub_100D62344(0);
    if (v15)
    {
      return;
    }
  }

  else
  {
    v16 = CRLiCloudConnectionStatus.rawValue.getter(v12);
    v14 = sub_100D62344(v16);
    if (v17)
    {
      return;
    }
  }

  v18 = *(v1 + v8);
  v19 = (*v18 + 464);
  v20 = *v19;
  v21 = (*v19)(v14);
  if ((v23 & 0x100) != 0 && (v21 | v22 || v23 != 0))
  {
    v25 = v21 == 1 && v22 == 0;
    if (v25 && v23 == 0)
    {
      v27 = *v18;
      if (swift_conformsToProtocol2())
      {
        v28 = *(v27 + 840);

        v30 = v28(v29);

        v31 = [v30 inferredAccessibilityDescriptionNoShapeNames];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        return;
      }

      goto LABEL_24;
    }
  }

  v20(v21);
  sub_1009B6B8C();
}

void sub_100EA9DE8()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019FAE60)
  {

    v1 = sub_1006CF3CC(0);

    v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v3 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem());
    *&v3[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
    *&v3[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
    v4 = &v3[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 6) = 0;
    *&v3[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v2;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v1;
    v6.receiver = v3;
    v6.super_class = type metadata accessor for CRLBoardItemBase(0);
    v5 = v2;
    objc_msgSendSuper2(&v6, "init");
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100EA9F20(uint64_t a1)
{
  v3 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_1005B981C(&qword_101A0F3D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - v10;
  type metadata accessor for CRLFreehandDrawingShapeItem();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v57 = sub_1011F0C64(v13, v1);
    v14 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v14 == &off_1019FAE60)
    {
      v56 = a1;
      v15 = qword_1019FB1D8;
      swift_beginAccess();
      sub_100EB6510(v14 + v15, v8, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      v16 = *(v13 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v16 == &off_1019FAE60)
      {
        swift_beginAccess();
        sub_100EB6510(v16 + v15, v5, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        sub_100EB64C8(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        CRStruct_1.actionUndoingDifference(from:)();
        sub_100EB6578(v5, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        sub_100EB6578(v8, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        v17 = sub_1005B981C(&qword_101A22498);
        if ((*(*(v17 - 1) + 48))(v11, 1, v17) == 1)
        {
          sub_10000CAAC(v11, &qword_101A0F3D0);
          memset(v58, 0, sizeof(v58));
          v59 = 1;
        }

        else
        {
          v18 = v17[12];
          v19 = v17[16];
          v20 = v17[24];
          v54 = v17[20];
          v55 = v20;
          v59 = v17;
          v21 = sub_10002C58C(v58);
          v22 = v17[12];
          v23 = v17[16];
          v24 = v17[20];
          v25 = v17[24];
          sub_10003DFF8(v11, v21, &qword_101A224A0);
          sub_10003DFF8(&v11[v18], v21 + v22, &qword_101A13F60);
          sub_10003DFF8(&v11[v19], v21 + v23, &qword_101A224A8);
          sub_10003DFF8(&v11[v54], v21 + v24, &qword_101A224A8);
          sub_10003DFF8(&v11[v55], v21 + v25, &qword_101A224B0);
        }

        v26 = v57;
        swift_beginAccess();
        sub_100BC1DF4(v58, 5);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v28 = objc_opt_self();
  v29 = [v28 _atomicIncrementAssertCount];
  v58[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v58);
  StaticString.description.getter();
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v31 lastPathComponent];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v29;
  v38 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v38;
  v39 = sub_1005CF04C();
  *(inited + 104) = v39;
  *(inited + 72) = v30;
  *(inited + 136) = &type metadata for String;
  v40 = sub_1000053B0();
  *(inited + 112) = v33;
  *(inited + 120) = v35;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v40;
  *(inited + 152) = 92;
  v41 = v58[0];
  *(inited + 216) = v38;
  *(inited + 224) = v39;
  *(inited + 192) = v41;
  v42 = v30;
  v43 = v41;
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v45 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v45, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v46 = swift_allocObject();
  v46[2] = 8;
  v46[3] = 0;
  v46[4] = 0;
  v46[5] = 0;
  v47 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  [v28 handleFailureInFunction:v48 file:v49 lineNumber:92 isFatal:1 format:v50 args:v47];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v51, v52);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100EAA6CC()
{
  type metadata accessor for CRLFreehandDrawingShapeItem();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = sub_100EB16F4(v2, v0);
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v30 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v30);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 104;
    v18 = v30;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:104 isFatal:1 format:v27 args:v24];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v28, v29);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100EAAAC8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0F3D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_1005B981C(&qword_101A22498);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  result = sub_1009B611C(a1);
  if (!v2)
  {
    v16 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v17 = *(a1 + v16);
    if (*(v17 + 16))
    {

      v18 = sub_1007C8124(5);
      if (v19)
      {
        sub_10000BE14(*(v17 + 56) + 32 * v18, &v25, &unk_1019F4D00);

        v27[0] = v25;
        v27[1] = v26;
        if (*(&v26 + 1))
        {
          v20 = swift_dynamicCast();
          v21 = *(v12 + 56);
          v21(v10, v20 ^ 1u, 1, v11);
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            result = sub_10003DFF8(v10, v14, &qword_101A22498);
            if (**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019FAE60)
            {
              __break(1u);
              return result;
            }

            sub_10000BE14(v14, v7, &qword_101A22498);
            v21(v7, 0, 1, v11);
            swift_beginAccess();
            type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
            sub_100EB64C8(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData);

            CRStruct_1.apply(_:)();
            sub_10000CAAC(v7, &qword_101A0F3D0);
            swift_endAccess();

            v22 = v14;
            v23 = &qword_101A22498;
            return sub_10000CAAC(v22, v23);
          }

LABEL_11:
          v23 = &qword_101A0F3D0;
          v22 = v10;
          return sub_10000CAAC(v22, v23);
        }

        sub_10000CAAC(v27, &unk_1019F4D00);
      }

      else
      {
      }
    }

    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100EAAECC(char *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, ProtocolDescriptor *a5)
{
  v184 = a1;
  v9 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v9);
  v11 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v161 - v13;
  v195 = type metadata accessor for CRLPKStrokePathData();
  v203 = *(v195 - 8);
  __chkstk_darwin(v195);
  v164 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v169 = &v161 - v17;
  __chkstk_darwin(v18);
  v168 = &v161 - v19;
  v20 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v20 - 8);
  v182 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v181 = &v161 - v23;
  v202 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v202);
  v180 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v179 = &v161 - v26;
  __chkstk_darwin(v27);
  v178 = &v161 - v28;
  __chkstk_darwin(v29);
  v177 = &v161 - v30;
  __chkstk_darwin(v31);
  v176 = &v161 - v32;
  __chkstk_darwin(v33);
  v35 = &v161 - v34;
  __chkstk_darwin(v36);
  v190 = &v161 - v37;
  __chkstk_darwin(v38);
  v189 = &v161 - v39;
  v204 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v204);
  v175 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v174 = &v161 - v42;
  __chkstk_darwin(v43);
  v173 = &v161 - v44;
  __chkstk_darwin(v45);
  v172 = &v161 - v46;
  __chkstk_darwin(v47);
  v171 = &v161 - v48;
  __chkstk_darwin(v49);
  v170 = &v161 - v50;
  __chkstk_darwin(v51);
  v188 = &v161 - v52;
  __chkstk_darwin(v53);
  v187 = &v161 - v54;
  if (a3 == 5)
  {
    v200 = v14;
    v198 = v11;
    type metadata accessor for CRLShapeItem();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v144 = result;
    v202 = *(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v197 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
    result = swift_conformsToProtocol2();
    v199 = result;
    if (!result)
    {
      goto LABEL_93;
    }

    v192 = v144;
    v145 = *(a2 + 16);
    v146 = v200;
    v162 = a2;
    v163 = a4;
    if (!v145)
    {
      swift_unknownObjectRetain();

LABEL_87:
      swift_unknownObjectRetain();
      sub_100EB39A8(v184, v162, 5u, v192, v201);
LABEL_88:

      return swift_unknownObjectRelease_n();
    }

    v194 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace;
    v195 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes;
    v193 = v201 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
    v196 = (v199 + 16);
    swift_unknownObjectRetain();

    v147 = (a2 + 40);
    while (1)
    {
      v148 = *(v147 - 1) == 0x7974536570616873 && *v147 == 0xEE0061746144656CLL;
      if (!v148 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_65;
      }

      v203 = v147;
      v204 = v145;
      (*(v199 + 2))(*v202);
      sub_1005B981C(&unk_101A0D9D0);
      CRRegister.wrappedValue.getter();
      sub_100EB6578(v146, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v236 = v223[12];
      v237 = v223[13];
      v238 = *&v223[14];
      v232 = v223[8];
      v233 = v223[9];
      v235 = v223[11];
      v234 = v223[10];
      v228 = v223[4];
      v229 = v223[5];
      v231 = v223[7];
      v230 = v223[6];
      v224 = v223[0];
      v225 = v223[1];
      v149 = *(v201 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      v227 = v223[3];
      v226 = v223[2];
      v150 = *v149;
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_91;
      }

      v151 = result;
      v152 = *(result + 16);

      v153 = v198;
      v152(v150, v151);

      CRRegister.wrappedValue.getter();
      sub_100EB6578(v153, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v251 = v223[12];
      v252 = v223[13];
      v247 = v223[8];
      v248 = v223[9];
      v250 = v223[11];
      v249 = v223[10];
      v243 = v223[4];
      v244 = v223[5];
      v246 = v223[7];
      v245 = v223[6];
      v239 = v223[0];
      v240 = v223[1];
      v242 = v223[3];
      v241 = v223[2];
      v223[12] = v236;
      v223[13] = v237;
      v223[8] = v232;
      v223[9] = v233;
      v223[11] = v235;
      v223[10] = v234;
      v223[4] = v228;
      v223[5] = v229;
      v223[7] = v231;
      v223[6] = v230;
      v223[0] = v224;
      v223[1] = v225;
      v223[3] = v227;
      v223[2] = v226;
      *(&v223[26] + 8) = v251;
      *(&v223[27] + 8) = v252;
      *(&v223[22] + 8) = v247;
      *(&v223[23] + 8) = v248;
      *(&v223[24] + 8) = v249;
      *(&v223[25] + 8) = v250;
      *(&v223[18] + 8) = v243;
      *(&v223[19] + 8) = v244;
      *(&v223[20] + 8) = v245;
      *(&v223[21] + 8) = v246;
      *(&v223[14] + 8) = v239;
      *(&v223[15] + 8) = v240;
      *(&v223[16] + 8) = v241;
      *(&v223[17] + 8) = v242;
      v254[12] = v236;
      v254[13] = v237;
      v254[8] = v232;
      v254[9] = v233;
      v254[11] = v235;
      v254[10] = v234;
      v254[4] = v228;
      v254[5] = v229;
      v254[7] = v231;
      v254[6] = v230;
      v254[0] = v224;
      v254[1] = v225;
      v253 = *&v223[14];
      *&v223[14] = v238;
      *(&v223[28] + 1) = v253;
      v255 = v238;
      v254[3] = v227;
      v254[2] = v226;
      if (sub_1000C0FB4(v254) != 1)
      {
        break;
      }

      v222[13] = *(&v223[27] + 8);
      *&v222[14] = *(&v223[28] + 1);
      v222[8] = *(&v223[22] + 8);
      v222[9] = *(&v223[23] + 8);
      v222[11] = *(&v223[25] + 8);
      v222[12] = *(&v223[26] + 8);
      v222[10] = *(&v223[24] + 8);
      v222[4] = *(&v223[18] + 8);
      v222[5] = *(&v223[19] + 8);
      v222[6] = *(&v223[20] + 8);
      v222[7] = *(&v223[21] + 8);
      v222[0] = *(&v223[14] + 8);
      v222[1] = *(&v223[15] + 8);
      v222[2] = *(&v223[16] + 8);
      v222[3] = *(&v223[17] + 8);
      v154 = sub_1000C0FB4(v222);
      v147 = v203;
      if (v154 != 1)
      {
        v146 = v200;
        v145 = v204;
        goto LABEL_77;
      }

      v219 = v223[12];
      v220 = v223[13];
      v221 = *&v223[14];
      v215 = v223[8];
      v216 = v223[9];
      v217 = v223[10];
      v218 = v223[11];
      v211 = v223[4];
      v212 = v223[5];
      v213 = v223[6];
      v214 = v223[7];
      v207 = v223[0];
      v208 = v223[1];
      v209 = v223[2];
      v210 = v223[3];
      sub_10000CAAC(&v207, &unk_101A106C0);
      v146 = v200;
      v145 = v204;
LABEL_65:
      v147 += 2;
      if (!--v145)
      {
        goto LABEL_87;
      }
    }

    v222[13] = *(&v223[27] + 8);
    *&v222[14] = *(&v223[28] + 1);
    v222[8] = *(&v223[22] + 8);
    v222[9] = *(&v223[23] + 8);
    v222[11] = *(&v223[25] + 8);
    v222[12] = *(&v223[26] + 8);
    v222[10] = *(&v223[24] + 8);
    v222[4] = *(&v223[18] + 8);
    v222[5] = *(&v223[19] + 8);
    v222[6] = *(&v223[20] + 8);
    v222[7] = *(&v223[21] + 8);
    v222[0] = *(&v223[14] + 8);
    v222[1] = *(&v223[15] + 8);
    v222[2] = *(&v223[16] + 8);
    v222[3] = *(&v223[17] + 8);
    if (sub_1000C0FB4(v222) == 1)
    {
      v146 = v200;
      v147 = v203;
      v145 = v204;
LABEL_77:
      memcpy(v222, v223, sizeof(v222));
      sub_10000CAAC(v222, &qword_1019F5EE0);
    }

    else
    {
      v205[12] = *(&v223[26] + 8);
      v205[13] = *(&v223[27] + 8);
      v205[8] = *(&v223[22] + 8);
      v205[9] = *(&v223[23] + 8);
      v205[10] = *(&v223[24] + 8);
      v205[11] = *(&v223[25] + 8);
      v205[4] = *(&v223[18] + 8);
      v205[5] = *(&v223[19] + 8);
      v205[6] = *(&v223[20] + 8);
      v205[7] = *(&v223[21] + 8);
      v205[0] = *(&v223[14] + 8);
      v205[1] = *(&v223[15] + 8);
      v205[2] = *(&v223[16] + 8);
      v205[3] = *(&v223[17] + 8);
      v270 = *(&v223[26] + 8);
      v271 = *(&v223[27] + 8);
      v266 = *(&v223[22] + 8);
      v267 = *(&v223[23] + 8);
      v269 = *(&v223[25] + 8);
      v268 = *(&v223[24] + 8);
      v262 = *(&v223[18] + 8);
      v263 = *(&v223[19] + 8);
      v265 = *(&v223[21] + 8);
      v264 = *(&v223[20] + 8);
      v258 = *(&v223[14] + 8);
      v259 = *(&v223[15] + 8);
      v206 = *(&v223[28] + 1);
      v272 = *(&v223[28] + 1);
      v261 = *(&v223[17] + 8);
      v260 = *(&v223[16] + 8);
      v256[12] = v223[12];
      v256[13] = v223[13];
      v257 = *&v223[14];
      v256[8] = v223[8];
      v256[9] = v223[9];
      v256[11] = v223[11];
      v256[10] = v223[10];
      v256[4] = v223[4];
      v256[5] = v223[5];
      v256[7] = v223[7];
      v256[6] = v223[6];
      v256[0] = v223[0];
      v256[1] = v223[1];
      v256[3] = v223[3];
      v256[2] = v223[2];
      sub_10000BE14(&v224, &v207, &unk_101A106C0);
      sub_10000BE14(&v239, &v207, &unk_101A106C0);
      v157 = sub_100B93EBC(v256, &v258);
      sub_10000CAAC(&v239, &unk_101A106C0);
      sub_10000CAAC(&v224, &unk_101A106C0);
      sub_10000CAAC(v205, &unk_101A106C0);
      v219 = v223[12];
      v220 = v223[13];
      v221 = *&v223[14];
      v215 = v223[8];
      v216 = v223[9];
      v217 = v223[10];
      v218 = v223[11];
      v211 = v223[4];
      v212 = v223[5];
      v213 = v223[6];
      v214 = v223[7];
      v207 = v223[0];
      v208 = v223[1];
      v209 = v223[2];
      v210 = v223[3];
      sub_10000CAAC(&v207, &unk_101A106C0);
      v146 = v200;
      v147 = v203;
      v145 = v204;
      if (v157)
      {
        goto LABEL_65;
      }
    }

    v155 = v201;
    *(v201 + v195) = 0;

    *(v155 + v194) = 0;

    v156 = v193;
    *(v193 + 1) = 0u;
    *(v156 + 2) = 0u;
    *(v156 + 6) = 0;
    *v156 = 0u;

    goto LABEL_65;
  }

  if (a3)
  {
    ObjectType = swift_getObjectType();
    v159 = v184;
    v160 = v201;

    return sub_100C38590(v159, a2, a3, a4, v160, ObjectType, a5);
  }

  type metadata accessor for CRLShapeItem();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v161 = result;
  v56 = *(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v167 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    goto LABEL_92;
  }

  v57 = *(a2 + 16);
  v162 = a2;
  v163 = a4;
  if (!v57)
  {
    swift_unknownObjectRetain();

LABEL_85:
    swift_unknownObjectRetain();
    sub_100EB39A8(v184, v162, 0, v161, v201);
    goto LABEL_88;
  }

  v192 = v201 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  v193 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace;
  v191 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes;
  v183 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v165 = (v203 + 6);
  swift_unknownObjectRetain();

  v58 = (a2 + 40);
  v166 = v35;
  v194 = v56;
  while (1)
  {
    v61 = *(v58 - 1) == 0x6641746E65726170 && *v58 == 0xEE007974696E6966;
    if (!v61 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_10;
    }

    v185 = v58;
    v186 = v57;
    v62 = *(v201 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    v65 = *(*v56 + 752);
    v66 = v187;
    v198 = *v56 + 752;
    v199 = v65;
    (v65)(result, v63, v64);

    v67 = sub_1005B981C(&unk_101A0F410);
    v68 = v189;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v66, &unk_101A0F400);
    v69 = type metadata accessor for CRLBoardItemParentAffinity();
    v70 = (v68 + *(v69 + 20));
    v71 = v70[1];
    v222[0] = *v70;
    v222[1] = v71;
    sub_10074A4EC(v222, &v258);
    v72 = sub_100EB6578(v68, type metadata accessor for CRLShapeItemParentAffinity);
    v73 = *v62;
    v74 = *(*v62 + 752);
    v75 = v188;
    v200 = v62;
    v196 = v74;
    v197 = (v73 + 752);
    v74(v72);
    v76 = v190;
    v203 = v67;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v75, &unk_101A0F400);
    v77 = (v76 + *(v69 + 20));
    v78 = *v77;
    v223[1] = v77[1];
    v223[0] = v78;
    sub_10074A4EC(v223, &v258);
    sub_100EB6578(v76, type metadata accessor for CRLShapeItemParentAffinity);
    v79 = sub_101271C28(v222, v223);
    sub_10074A710(v223);
    v80 = sub_10074A710(v222);
    if ((v79 & 1) == 0)
    {
      *&v193[v201] = 0;

      v81 = v192;
      *(v192 + 1) = 0u;
      *(v81 + 2) = 0u;
      *(v81 + 6) = 0;
      *v81 = 0u;
    }

    v82 = v187;
    (v199)(v80);
    v83 = v189;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v82, &unk_101A0F400);
    v84 = v202;
    v85 = v181;
    sub_100EB6510(v83 + *(v202 + 20), v181, type metadata accessor for CRLPathSourceData);
    v86 = sub_100EB6578(v83, type metadata accessor for CRLShapeItemParentAffinity);
    v87 = v188;
    v196(v86);
    v88 = v190;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v87, &unk_101A0F400);
    v89 = v88 + *(v84 + 20);
    v90 = v182;
    sub_100EB6510(v89, v182, type metadata accessor for CRLPathSourceData);
    sub_100EB6578(v88, type metadata accessor for CRLShapeItemParentAffinity);
    v91 = sub_100C48FE0(v85, v90);
    sub_100EB6578(v90, type metadata accessor for CRLPathSourceData);
    v92 = sub_100EB6578(v85, type metadata accessor for CRLPathSourceData);
    if ((v91 & 1) == 0)
    {
      v93 = v201;
      *(v201 + v191) = 0;

      *&v193[v93] = 0;

      v94 = v192;
      *(v192 + 1) = 0u;
      *(v94 + 2) = 0u;
      *(v94 + 6) = 0;
      *v94 = 0u;
    }

    v95 = v170;
    (v199)(v92);
    v96 = v166;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v95, &unk_101A0F400);
    v97 = *(v202 + 24);
    v98 = *v165;
    v99 = (*v165)(v96 + v97, 1, v195);
    v100 = v176;
    if (v99)
    {
      v101 = sub_100EB6578(v96, type metadata accessor for CRLShapeItemParentAffinity);
      v102 = 0;
    }

    else
    {
      v103 = v96 + v97;
      v104 = v168;
      sub_100EB6510(v103, v168, type metadata accessor for CRLPKStrokePathData);
      sub_100EB6578(v96, type metadata accessor for CRLShapeItemParentAffinity);
      v102 = sub_100CD1A6C();
      v101 = sub_100EB6578(v104, type metadata accessor for CRLPKStrokePathData);
    }

    v105 = v171;
    v196(v101);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v105, &unk_101A0F400);
    v106 = *(v202 + 24);
    if (v98(v100 + v106, 1, v195))
    {
      v107 = sub_100EB6578(v100, type metadata accessor for CRLShapeItemParentAffinity);
      if (!v102)
      {
        goto LABEL_29;
      }

LABEL_26:
      v108 = v102;
LABEL_27:

LABEL_28:
      *(&v259 + 1) = &type metadata for Bool;
      LOBYTE(v258) = 1;
      sub_10000BE14(&v258, v256, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(v256, 26);
      swift_endAccess();
      sub_10000CAAC(&v258, &unk_1019F4D00);
      v109 = v201;
      *(v201 + v191) = 0;

      *&v193[v109] = 0;

      v110 = v192;
      *(v192 + 1) = 0u;
      *(v110 + 2) = 0u;
      *(v110 + 6) = 0;
      *v110 = 0u;

      goto LABEL_29;
    }

    v117 = v100 + v106;
    v118 = v168;
    sub_100EB6510(v117, v168, type metadata accessor for CRLPKStrokePathData);
    sub_100EB6578(v100, type metadata accessor for CRLShapeItemParentAffinity);
    v108 = sub_100CD1A6C();
    v107 = sub_100EB6578(v118, type metadata accessor for CRLPKStrokePathData);
    if (v102)
    {
      if (!v108)
      {
        goto LABEL_26;
      }

      sub_100006370(0, &qword_101A22490);
      v119 = static NSObject.== infix(_:_:)();

      if ((v119 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v108)
    {
      goto LABEL_27;
    }

LABEL_29:
    v111 = v172;
    (v199)(v107);
    v112 = v177;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v111, &unk_101A0F400);
    v113 = *(v202 + 24);
    if (v98(v112 + v113, 1, v195))
    {
      v114 = sub_100EB6578(v112, type metadata accessor for CRLShapeItemParentAffinity);
      v115 = 0;
      v116 = v178;
    }

    else
    {
      v120 = v112 + v113;
      v121 = v169;
      sub_100EB6510(v120, v169, type metadata accessor for CRLPKStrokePathData);
      sub_100EB6578(v112, type metadata accessor for CRLShapeItemParentAffinity);
      v116 = v178;
      if (*(v121 + 88))
      {
        sub_100006370(0, &qword_101A02480);

        v115 = sub_100C58684(v122);
      }

      else
      {
        v115 = 0;
      }

      v114 = sub_100EB6578(v169, type metadata accessor for CRLPKStrokePathData);
    }

    v123 = v173;
    v196(v114);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v123, &unk_101A0F400);
    v124 = *(v202 + 24);
    if (v98(v116 + v124, 1, v195))
    {
      v125 = sub_100EB6578(v116, type metadata accessor for CRLShapeItemParentAffinity);
      if (!v115)
      {
        goto LABEL_45;
      }

LABEL_43:

LABEL_44:
      v126 = v201;
      *(v201 + v191) = 0;

      *&v193[v126] = 0;

      v127 = v192;
      *(v192 + 1) = 0u;
      *(v127 + 2) = 0u;
      *(v127 + 6) = 0;
      *v127 = 0u;

      goto LABEL_45;
    }

    v140 = v164;
    sub_100EB6510(v116 + v124, v164, type metadata accessor for CRLPKStrokePathData);
    sub_100EB6578(v116, type metadata accessor for CRLShapeItemParentAffinity);
    if (*(v140 + 88))
    {
      sub_100006370(0, &qword_101A02480);

      v142 = sub_100C58684(v141);

      v125 = sub_100EB6578(v140, type metadata accessor for CRLPKStrokePathData);
      if (v115)
      {
        if (!v142)
        {
          goto LABEL_43;
        }

        v143 = static NSObject.== infix(_:_:)();

        if ((v143 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v115 = v142;
        if (v142)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v125 = sub_100EB6578(v140, type metadata accessor for CRLPKStrokePathData);
      if (v115)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    v128 = v174;
    (v199)(v125);
    v129 = v179;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v128, &unk_101A0F400);
    v130 = v202;
    v131 = v129 + *(v202 + 28);
    v199 = *v131;
    v132 = *(v131 + 8);
    v133 = sub_100EB6578(v129, type metadata accessor for CRLShapeItemParentAffinity);
    v134 = v175;
    v196(v133);
    v135 = v180;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v134, &unk_101A0F400);
    v136 = v135 + *(v130 + 28);
    v137 = *v136;
    v138 = *(v136 + 8);
    sub_100EB6578(v135, type metadata accessor for CRLShapeItemParentAffinity);
    if (v132 == 255)
    {
      v56 = v194;
      if (v138 == 255)
      {
LABEL_55:

        goto LABEL_9;
      }
    }

    else
    {
      *&v258 = v199;
      BYTE8(v258) = v132;
      if (v138 == 255)
      {
        v56 = v194;
      }

      else
      {
        *&v256[0] = v137;
        BYTE8(v256[0]) = v138 & 1;
        sub_100D63CC0();
        v139 = static CRExtensible.== infix(_:_:)();
        v56 = v194;
        if (v139)
        {
          goto LABEL_55;
        }
      }
    }

    *(&v259 + 1) = &type metadata for Bool;
    LOBYTE(v258) = 1;
    sub_10000BE14(&v258, v256, &unk_1019F4D00);
    swift_beginAccess();
    sub_100BC1F00(v256, 27);
    swift_endAccess();

    sub_10000CAAC(&v258, &unk_1019F4D00);
    v59 = v201;
    *(v201 + v191) = 0;

    *&v193[v59] = 0;

    v60 = v192;
    *(v192 + 1) = 0u;
    *(v60 + 2) = 0u;
    *(v60 + 6) = 0;
    *v60 = 0u;

LABEL_9:
    v58 = v185;
    v57 = v186;
LABEL_10:
    v58 += 2;
    if (!--v57)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

void sub_100EACA80()
{
  v1 = type metadata accessor for CRLPKStrokePathData();
  v87 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v4);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v75 - v8;
  v10 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v15 = v75 - v14;
  v16 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes;
  if (*(v0 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes))
  {
LABEL_20:

    return;
  }

  v83 = v9;
  v84 = v12;
  v80 = v3;
  v81 = v13;
  v82 = v6;
  v85 = v4;
  v86 = 0;
  v17 = sub_100EAE0D4();
  if (!v17)
  {
LABEL_9:
    v36 = objc_opt_self();
    v37 = [v36 _atomicIncrementAssertCount];
    v88 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v88);
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v37;
    v46 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v46;
    v47 = sub_1005CF04C();
    *(inited + 104) = v47;
    *(inited + 72) = v38;
    *(inited + 136) = &type metadata for String;
    v48 = sub_1000053B0();
    *(inited + 112) = v41;
    *(inited + 120) = v43;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v48;
    *(inited + 152) = 230;
    v49 = v88;
    *(inited + 216) = v46;
    *(inited + 224) = v47;
    *(inited + 192) = v49;
    v50 = v38;
    v51 = v49;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v56 file:v57 lineNumber:230 isFatal:0 format:v58 args:v55];

    goto LABEL_20;
  }

  v18 = v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    goto LABEL_9;
  }

  v20 = v19;
  v78 = v18;
  v79 = v16;
  v21 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v22 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (swift_conformsToProtocol2())
  {
    v23 = v0;
    v77 = v20;
    v24 = *(v22 + 840);

    v26 = v24(v25);

    v27 = [v26 bezierPath];

    v28 = *(v0 + v21);
    v29 = v87;
    if (*v28 == &off_1019FAE60)
    {
      v30 = v23;
      v76 = v27;
      v31 = qword_1019FB140;
      swift_beginAccess();
      v75[0] = v31;
      sub_10000BE14(v28 + v31, v15, &unk_101A0F400);
      v32 = sub_1005B981C(&unk_101A0F410);
      v33 = v83;
      v75[1] = v32;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v15, &unk_101A0F400);
      v34 = *(v85 + 24);
      if ((*(v29 + 48))(v33 + v34, 1, v1))
      {
        sub_100EB6578(v33, type metadata accessor for CRLShapeItemParentAffinity);
        v35 = 0;
      }

      else
      {
        v59 = v33 + v34;
        v60 = v80;
        sub_100EB6510(v59, v80, type metadata accessor for CRLPKStrokePathData);
        sub_100EB6578(v33, type metadata accessor for CRLShapeItemParentAffinity);
        v35 = sub_100CD1A6C();
        sub_100EB6578(v60, type metadata accessor for CRLPKStrokePathData);
      }

      v61 = v82;
      sub_100EAF3B0();
      v63 = *(v23 + v21);
      if (*v63 == &off_1019FAE60)
      {
        v64 = v62;
        v65 = v75[0];
        swift_beginAccess();
        v66 = v81;
        sub_10000BE14(v63 + v65, v81, &unk_101A0F400);
        CRRegister.wrappedValue.getter();
        sub_10000CAAC(v66, &unk_101A0F400);
        v67 = v61 + *(v85 + 28);
        v68 = *v67;
        v69 = *(v67 + 8);
        sub_100EB6578(v61, type metadata accessor for CRLShapeItemParentAffinity);
        if (v69 == 255)
        {
          v72 = 0;
          v70 = v76;
          v71 = v77;
        }

        else
        {
          v70 = v76;
          v71 = v77;
          if (v69)
          {
            v72 = 0;
          }

          else
          {
            v72 = CRLiCloudConnectionStatus.rawValue.getter(v68);
          }
        }

        v73 = [objc_opt_self() pencilKitStrokesFromPath:v70 inkStroke:v71 strokePathCompactData:v35 maskPath:v64 snappedShapeType:v72];

        type metadata accessor for PKStroke();
        v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *(v30 + v79) = v74;

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_100EAD3B0()
{
  v1 = v0;
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace;
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace);
  if (v10)
  {
  }

  else
  {
    v39 = v36 - v8;
    v11 = v7;
    v12 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v14 = v12(v13);

    [v14 transform];
    v45 = v48;
    v46 = v49;
    v15 = v50;
    v16 = v51;

    sub_100EACA80();
    if (v17)
    {
      v44 = v5;
      v18 = *(v17 + 16);
      if (v18)
      {
        v37 = v9;
        v38 = v0;
        v47 = _swiftEmptyArrayStorage;
        v19 = v17;
        sub_100776904(0, v18, 0);
        v10 = v47;
        v20 = v3 + 16;
        v43 = *(v3 + 16);
        v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v36[1] = v19;
        v42 = v21;
        v22 = v19 + v21;
        v23 = *(v3 + 72);
        v40 = (v3 + 8);
        v41 = v23;
        v24 = (v3 + 32);
        v25 = v11;
        v26 = v39;
        do
        {
          v27 = v44;
          v28 = v20;
          v43(v44, v22, v25);
          isa = PKStroke._bridgeToObjectiveC()().super.isa;
          v49 = v46;
          v48 = v45;
          v50 = v15;
          v51 = v16;
          v30 = [(objc_class *)isa _strokeByAppendingTransform:&v48];

          static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
          (*v40)(v27, v25);
          v47 = v10;
          v31 = v25;
          v33 = v10[2];
          v32 = v10[3];
          if (v33 >= v32 >> 1)
          {
            sub_100776904(v32 > 1, v33 + 1, 1);
            v26 = v39;
            v10 = v47;
          }

          v10[2] = v33 + 1;
          v34 = v41;
          (*v24)(v10 + v42 + v33 * v41, v26, v31);
          v22 += v34;
          --v18;
          v25 = v31;
          v20 = v28;
        }

        while (v18);

        v9 = v37;
        v1 = v38;
      }

      else
      {

        v10 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v10 = 0;
    }

    *(v1 + v9) = v10;
  }

  return v10;
}

Class sub_100EAD710(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    type metadata accessor for PKStroke();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t sub_100EAD788()
{
  v1 = type metadata accessor for PKStroke();
  v43 = *(v1 - 8);
  __chkstk_darwin(v1);
  v42 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v40 - v4;
  v5 = v0;
  b = 0.0;
  a = 1.0;
  Strong = v5;
  c = 0.0;
  d = 1.0;
  tx = 0.0;
  ty = 0.0;
  do
  {
    v13 = *((swift_isaMask & *Strong) + 0xE0);
    v14 = Strong;
    v15 = v13();
    [v15 transform];
    v48 = *&t1.a;
    v47 = *&t1.c;
    v46 = *&t1.tx;

    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v48;
    *&t2.c = v47;
    *&t2.tx = v46;
    CGAffineTransformConcat(&v51, &t1, &t2);
    a = v51.a;
    b = v51.b;
    c = v51.c;
    d = v51.d;
    tx = v51.tx;
    ty = v51.ty;
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  while (Strong);
  v16 = v5 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  v17 = *(v5 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace);
  if (v17 != 0.0)
  {
    *&t2.a = *(v16 + 8);
    *&t2.c = *(v16 + 24);
    v41 = v5 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
    *&t2.tx = *(v16 + 40);
    v18 = v5;

    v48 = xmmword_101463BB0;
    v47 = xmmword_101466510;
    v19 = 0.0;
    v20 = 0.0;
    do
    {
      v21 = *((swift_isaMask & *v18) + 0xE0);
      v22 = v18;
      v23 = v21();
      [v23 transform];
      v46 = *&v51.a;
      v45 = *&v51.c;
      v44 = *&v51.tx;

      v51.tx = v19;
      v51.ty = v20;
      *&v50.a = v46;
      *&v50.c = v45;
      *&v50.tx = v44;
      *&v51.c = v48;
      *&v51.a = v47;
      CGAffineTransformConcat(&v49, &v51, &v50);
      v48 = *&v49.c;
      v47 = *&v49.a;
      t1 = v49;
      v19 = v49.tx;
      v20 = v49.ty;
      v18 = swift_unknownObjectWeakLoadStrong();
    }

    while (v18);
    if (static CGAffineTransform.== infix(_:_:)())
    {
      return *&v17;
    }

    v16 = v41;
  }

  sub_100EACA80();
  if (v24)
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      v41 = v16;
      *&v50.a = _swiftEmptyArrayStorage;
      v26 = v24;
      sub_100776904(0, v25, 0);
      v17 = v50.a;
      *&v48 = *(v43 + 16);
      v27 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      *&v45 = v26;
      *&v47 = v27;
      v28 = v26 + v27;
      *&v46 = *(v43 + 72);
      v29 = (v43 + 8);
      v43 += 16;
      v30 = (v43 + 16);
      v31 = v40;
      do
      {
        v32 = v42;
        (v48)(v42, v28, v1);
        isa = PKStroke._bridgeToObjectiveC()().super.isa;
        v51.a = a;
        v51.b = b;
        v51.c = c;
        v51.d = d;
        v51.tx = tx;
        v51.ty = ty;
        v34 = [(objc_class *)isa _strokeByAppendingTransform:&v51];

        static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
        (*v29)(v32, v1);
        v50.a = v17;
        v35 = v1;
        v37 = *(*&v17 + 16);
        v36 = *(*&v17 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_100776904(v36 > 1, v37 + 1, 1);
          v31 = v40;
          v17 = v50.a;
        }

        *(*&v17 + 16) = v37 + 1;
        v38 = v46;
        (*v30)(*&v17 + v47 + v37 * v46, v31, v35);
        v28 += v38;
        --v25;
        v1 = v35;
      }

      while (v25);

      v16 = v41;
    }

    else
    {

      v17 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    *v16 = v17;
    *(v16 + 1) = a;
    *(v16 + 2) = b;
    *(v16 + 3) = c;
    *(v16 + 4) = d;
    *(v16 + 5) = tx;
    *(v16 + 6) = ty;
  }

  else
  {
    v17 = 0.0;
  }

  return *&v17;
}

void sub_100EADEC0(void *a1)
{
  v2 = v1;
  v3 = a1;
  if ((sub_1011255D4(v3) & 1) != 0 && (v4 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData, v5 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296), v6 = , v7 = v5(v6), , sub_100006370(0, &unk_1019F5730), v8 = static NSObject.== infix(_:_:)(), v7, (v8 & 1) == 0))
  {
    v9 = *(**(v2 + v4) + 304);

    v9(v3);
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = (*((swift_isaMask & *Strong) + 0x388))();

    if (v12)
    {
      return;
    }
  }

  else
  {
  }

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

  v13 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *v13 = 0u;
}

uint64_t sub_100EAE0D4()
{
  v1 = OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
  v3 = v2;
  if (v2)
  {
    goto LABEL_6;
  }

  v4 = v0;
  v5 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v7 = result;
    v8 = *(result + 8);

    v8(v12, v5, v7);
    v26 = v12[12];
    v27 = v12[13];
    v28 = v13;
    v22 = v12[8];
    v23 = v12[9];
    v24 = v12[10];
    v25 = v12[11];
    v18 = v12[4];
    v19 = v12[5];
    v20 = v12[6];
    v21 = v12[7];
    v14 = v12[0];
    v15 = v12[1];
    v16 = v12[2];
    v17 = v12[3];
    if (sub_1000C0FB4(&v14) == 1)
    {

      v3 = 0;
    }

    else
    {
      v29[12] = v26;
      v29[13] = v27;
      v30 = v28;
      v29[8] = v22;
      v29[9] = v23;
      v29[10] = v24;
      v29[11] = v25;
      v29[4] = v18;
      v29[5] = v19;
      v29[6] = v20;
      v29[7] = v21;
      v29[0] = v14;
      v29[1] = v15;
      v29[2] = v16;
      v29[3] = v17;

      v3 = sub_100B946C8(v29, 1);
      sub_10000CAAC(v12, &unk_101A106C0);
      v9 = *(v0 + v1);
      *(v4 + v1) = v3;
      v10 = v3;
    }

LABEL_6:
    v11 = v2;
    return v3;
  }

  __break(1u);
  return result;
}

void sub_100EAE318(void *a1)
{
  v2 = v1;
  v4 = a1;
  sub_100D654FC(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((swift_isaMask & *Strong) + 0x388))();

    if (v7)
    {
      return;
    }
  }

  else
  {
  }

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes) = 0;

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

  v8 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *v8 = 0u;
}

void sub_100EAE550(void *a1)
{
  v2 = v1;
  v3 = a1;
  if (sub_1011255D0(v3))
  {
    v4 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (!swift_conformsToProtocol2())
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 848);

    v5(v3);
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (*((swift_isaMask & *Strong) + 0x388))();

    if (v8)
    {
      return;
    }
  }

  else
  {
  }

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes) = 0;

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

  v9 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *v9 = 0u;
}

uint64_t sub_100EAE818@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_100EACA80();
  if (v12)
  {
    if (*(v12 + 16))
    {
      (*(v6 + 16))(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      (*(v6 + 32))(v11, v8, v5);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v14 = [(objc_class *)isa _renderGroupID];

      if (v14)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      (*(v6 + 8))(v11, v5);
      v19 = type metadata accessor for UUID();
      (*(*(v19 - 8) + 56))(v4, v15, 1, v19);
      return sub_10003DFF8(v4, a1, &qword_1019F6990);
    }
  }

  v16 = type metadata accessor for UUID();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}

void sub_100EAEB0C()
{
  v1 = type metadata accessor for CRLPKStrokePathData();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v11 == &off_1019FAE60)
  {
    v15 = v4;
    v12 = qword_1019FB140;
    swift_beginAccess();
    sub_10000BE14(v11 + v12, v10, &unk_101A0F400);
    sub_1005B981C(&unk_101A0F410);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v10, &unk_101A0F400);
    v13 = *(v5 + 24);
    if ((*(v2 + 48))(&v7[v13], 1, v1))
    {
      sub_100EB6578(v7, type metadata accessor for CRLShapeItemParentAffinity);
    }

    else
    {
      v14 = v15;
      sub_100EB6510(&v7[v13], v15, type metadata accessor for CRLPKStrokePathData);
      sub_100EB6578(v7, type metadata accessor for CRLShapeItemParentAffinity);
      sub_100CD1A6C();
      sub_100EB6578(v14, type metadata accessor for CRLPKStrokePathData);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100EAEE34(void *a1)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for CRLPKStrokePathData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_1005B981C(&qword_101A224B8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v30 - v15;
  if (sub_1011255D0(v14))
  {
    if (v33)
    {
      v32 = v4;
      v17 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v17 != &off_1019FAE60)
      {
        __break(1u);
        return;
      }

      v18 = qword_1019FB140;
      swift_beginAccess();
      sub_10000BE14(v17 + v18, v12, &unk_101A0F400);
      v31 = v33;

      v33 = sub_1005B981C(&unk_101A0F410);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v12, &unk_101A0F400);
      v19 = *(v7 + 24);
      if ((*(v32 + 48))(&v9[v19], 1, v3))
      {
        sub_100EB6578(v9, type metadata accessor for CRLShapeItemParentAffinity);
        v20 = 0;
      }

      else
      {
        sub_100EB6510(&v9[v19], v6, type metadata accessor for CRLPKStrokePathData);
        sub_100EB6578(v9, type metadata accessor for CRLShapeItemParentAffinity);
        if (*(v6 + 11))
        {
          sub_100006370(0, &qword_101A02480);

          v20 = sub_100C58684(v22);
        }

        else
        {
          v20 = 0;
        }

        sub_100EB6578(v6, type metadata accessor for CRLPKStrokePathData);
      }

      v23 = v31;
      sub_100CD0B98(v23, v20, v16);
      (*(v32 + 56))(v16, 0, 1, v3);
      swift_beginAccess();
      v24 = CRRegister.wrappedValue.modify();
      sub_10002C638(v16, v25 + *(v7 + 24), &qword_101A224B8);
      v24(v34, 0);
      swift_endAccess();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v27 = Strong;
        v28 = (*((swift_isaMask & *Strong) + 0x388))();

        if (v28)
        {
          return;
        }
      }

      else
      {
      }

      *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes) = 0;

      *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

      v29 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
      *(v29 + 16) = 0u;
      *(v29 + 32) = 0u;
      *(v29 + 48) = 0;
      *v29 = 0u;
    }
  }

  else
  {
    v21 = v33;
  }
}

void sub_100EAF3B0()
{
  v1 = type metadata accessor for CRLPKStrokePathData();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v11 == &off_1019FAE60)
  {
    v16 = v4;
    v12 = qword_1019FB140;
    swift_beginAccess();
    sub_10000BE14(v11 + v12, v10, &unk_101A0F400);
    sub_1005B981C(&unk_101A0F410);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v10, &unk_101A0F400);
    v13 = *(v5 + 24);
    if ((*(v2 + 48))(&v7[v13], 1, v1))
    {
      sub_100EB6578(v7, type metadata accessor for CRLShapeItemParentAffinity);
    }

    else
    {
      v14 = v16;
      sub_100EB6510(&v7[v13], v16, type metadata accessor for CRLPKStrokePathData);
      sub_100EB6578(v7, type metadata accessor for CRLShapeItemParentAffinity);
      if (*(v14 + 88))
      {
        sub_100006370(0, &qword_101A02480);

        sub_100C58684(v15);
      }

      sub_100EB6578(v14, type metadata accessor for CRLPKStrokePathData);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100EAF710(void *a1)
{
  v45 = a1;
  v2 = sub_1005B981C(&qword_101A224B8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v39 - v6;
  v8 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  v14 = type metadata accessor for CRLPKStrokePathData();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1011255D0(v16) & 1) == 0)
  {
    v25 = v45;

    return;
  }

  v44 = v15;
  v19 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v19 != &off_1019FAE60)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v41 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v42 = v18;
  v40 = v5;
  v43 = v1;
  v20 = v8;
  v21 = qword_1019FB140;
  swift_beginAccess();
  v22 = v19 + v21;
  v23 = v20;
  sub_10000BE14(v22, v13, &unk_101A0F400);
  v24 = sub_1005B981C(&unk_101A0F410);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v13, &unk_101A0F400);
  sub_10000BE14(&v10[*(v20 + 24)], v7, &qword_101A224B8);
  sub_100EB6578(v10, type metadata accessor for CRLShapeItemParentAffinity);
  if ((*(v44 + 48))(v7, 1, v14) == 1)
  {

    sub_10000CAAC(v7, &qword_101A224B8);
    return;
  }

  v39[1] = v24;
  v26 = v42;
  sub_100EB65D8(v7, v42);
  v27 = v43;
  if (**(v43 + v41) != &off_1019FAE60)
  {
    goto LABEL_16;
  }

  v28 = sub_100CD1A6C();
  v29 = v45;
  v30 = v23;
  v31 = v40;
  sub_100CD0B98(v28, v45, v40);
  (*(v44 + 56))(v31, 0, 1, v14);
  swift_beginAccess();
  v32 = v26;
  v33 = CRRegister.wrappedValue.modify();
  sub_10002C638(v31, v34 + *(v30 + 24), &qword_101A224B8);
  v33(v46, 0);
  swift_endAccess();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v37 = (*((swift_isaMask & *Strong) + 0x388))();

    sub_100EB6578(v32, type metadata accessor for CRLPKStrokePathData);
    if (v37)
    {
      return;
    }
  }

  else
  {

    sub_100EB6578(v26, type metadata accessor for CRLPKStrokePathData);
  }

  *(v27 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes) = 0;

  *(v27 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

  v38 = v27 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0;
  *v38 = 0u;
}

void sub_100EAFCDC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v8 == &off_1019FAE60)
  {
    v9 = qword_1019FB140;
    swift_beginAccess();
    sub_10000BE14(v8 + v9, v7, &unk_101A0F400);
    sub_1005B981C(&unk_101A0F410);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v7, &unk_101A0F400);
    v10 = v4[*(v2 + 28) + 8];
    sub_100EB6578(v4, type metadata accessor for CRLShapeItemParentAffinity);
    if (v10 == 255)
    {
      sub_100EAF3B0();
      if (v11)
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100EB00C4()
{
  v1 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v7 == &off_1019FAE60)
  {
    v8 = qword_1019FB140;
    swift_beginAccess();
    sub_10000BE14(v7 + v8, v6, &unk_101A0F400);
    sub_1005B981C(&unk_101A0F410);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v6, &unk_101A0F400);
    v9 = &v3[*(v1 + 28)];
    v10 = *v9;
    v11 = v9[8];
    sub_100EB6578(v3, type metadata accessor for CRLShapeItemParentAffinity);
    if (v11 != 255 && (v11 & 1) == 0)
    {
      CRLiCloudConnectionStatus.rawValue.getter(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100EB02F4(unint64_t a1)
{
  v2 = v1;
  if ((sub_1011255D0(a1) & 1) == 0)
  {
    return;
  }

  v4 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (!a1)
  {
    if (v4 == &off_1019FAE60)
    {
      swift_beginAccess();
      sub_1005B981C(&unk_101A0F400);

      sub_1005B981C(&unk_101A0F410);
      v9 = CRRegister.wrappedValue.modify();
      v11 = v10 + *(type metadata accessor for CRLShapeItemParentAffinity(0) + 28);
      *v11 = 0;
      *(v11 + 8) = -1;
      v9(v16, 0);
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v4 != &off_1019FAE60)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = sub_100D633A8(a1);
  swift_beginAccess();
  sub_1005B981C(&unk_101A0F400);
  sub_1005B981C(&unk_101A0F410);
  v6 = CRRegister.wrappedValue.modify();
  v8 = v7 + *(type metadata accessor for CRLShapeItemParentAffinity(0) + 28);
  *v8 = v5;
  *(v8 + 8) = 0;
  v6(v16, 0);
LABEL_7:
  swift_endAccess();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v13 = Strong, v14 = (*((swift_isaMask & *Strong) + 0x388))(), v13, (v14 & 1) == 0))
  {
    *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

    v15 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    *v15 = 0u;
  }
}

uint64_t sub_100EB058C(uint64_t a1)
{
  v3 = type metadata accessor for CRLPKStrokePathData();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v67[0] = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v81);
  v72 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = v67 - v7;
  v80 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v80);
  v71 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = v67 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(type metadata accessor for CRLCommandGroup()) init];
  v16 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v77 = a1;
  v17 = *(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v19 = v17(v18);

  v20 = objc_allocWithZone(type metadata accessor for CRLCommandSetInfoGeometry());
  v83 = v1;
  v84 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  (*(**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v22 = *(v12 + 8);
  v85 = v12 + 8;
  v22(v14, v11);
  v23 = [v20 initWithId:isa geometry:v19];

  v24 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  v25 = v23;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v82 = v16;
  v26 = v77;
  v27 = **(v77 + v16);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v29 = v26;
    v30 = *(v27 + 840);

    v32 = v30(v31);

    v33 = objc_allocWithZone(type metadata accessor for CRLCommandSetPathSource());
    (*(**&v83[v84] + 264))();
    v34 = UUID._bridgeToObjectiveC()().super.isa;
    v22(v14, v11);
    v35 = [v33 initWithId:v34 pathSource:v32];

    swift_beginAccess();
    v36 = v35;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v37 = *(v29 + v82);
    if (*v37 == &off_1019FAE60)
    {
      v69 = v36;
      v78 = v22;
      v70 = v25;
      v38 = v29;
      v79 = v11;
      v39 = v83;
      v40 = qword_1019FB140;
      swift_beginAccess();
      v68 = v40;
      v41 = &v37[v40];
      v42 = v73;
      sub_10000BE14(v41, v73, &unk_101A0F400);
      v43 = sub_1005B981C(&unk_101A0F410);
      v44 = v74;
      v67[1] = v43;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v42, &unk_101A0F400);
      v45 = *(v81 + 24);
      if ((*(v75 + 48))(v44 + v45, 1, v76))
      {
        sub_100EB6578(v44, type metadata accessor for CRLShapeItemParentAffinity);
        v46 = 0;
      }

      else
      {
        v47 = v44 + v45;
        v48 = v67[0];
        sub_100EB6510(v47, v67[0], type metadata accessor for CRLPKStrokePathData);
        sub_100EB6578(v44, type metadata accessor for CRLShapeItemParentAffinity);
        v46 = sub_100CD1A6C();
        sub_100EB6578(v48, type metadata accessor for CRLPKStrokePathData);
      }

      v25 = v39;
      v11 = v38;
      sub_100EAF3B0();
      v50 = v49;
      v51 = objc_allocWithZone(type metadata accessor for CRLCommandSetFreehandDrawingShapeItemPKData());
      (*(**&v25[v84] + 264))();
      v52 = UUID._bridgeToObjectiveC()().super.isa;
      v78(v14, v79);
      v53 = [v51 initWithId:v52 strokePathCompactData:v46 maskPath:v50];

      swift_beginAccess();
      v37 = v53;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_11:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v54 = *(v11 + v82);
        if (*v54 == &off_1019FAE60)
        {
          v25 = v37;
          v55 = v68;
          swift_beginAccess();
          v56 = v71;
          sub_10000BE14(v54 + v55, v71, &unk_101A0F400);
          v57 = v72;
          CRRegister.wrappedValue.getter();
          sub_10000CAAC(v56, &unk_101A0F400);
          v58 = v57 + *(v81 + 28);
          v59 = *v58;
          v60 = *(v58 + 8);
          sub_100EB6578(v57, type metadata accessor for CRLShapeItemParentAffinity);
          if (v60 == 255)
          {
            v63 = 0;
            v61 = v78;
            v62 = v79;
          }

          else
          {
            v61 = v78;
            v62 = v79;
            if (v60)
            {
              v63 = 0;
            }

            else
            {
              v63 = CRLiCloudConnectionStatus.rawValue.getter(v59);
            }
          }

          v64 = objc_allocWithZone(type metadata accessor for CRLCommandSetFreehandDrawingShapeItemSnappedShapeType());
          (*(**&v83[v84] + 264))();
          v65 = UUID._bridgeToObjectiveC()().super.isa;
          v61(v14, v62);
          v66 = [v64 initWithId:v65 snappedShapeType:v63];

          swift_beginAccess();
          v37 = v66;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          __break(1u);
        }

        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_18:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        return v15;
      }
    }

    else
    {
      __break(1u);
    }

    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EB1080()
{
}

id sub_100EB10D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFreehandDrawingShapeItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLFreehandDrawingShapeItem()
{
  result = qword_101A22480;
  if (!qword_101A22480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EB1208(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  v11 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = *a1;
  v18 = *(*a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v18 != &off_1019FAE60)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v42 = v17;
  v37 = v7;
  v39 = a2;
  v40 = v2;
  v19 = qword_1019FB140;
  swift_beginAccess();
  sub_10000BE14(v18 + v19, v16, &unk_101A0F400);
  v36[1] = v11;
  sub_1005B981C(&unk_101A0F410);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v16, &unk_101A0F400);
  v38 = v5;
  v20 = &v10[*(v5 + 28)];
  v21 = *v20;
  v22 = v20[8];
  sub_100EB6578(v10, type metadata accessor for CRLShapeItemParentAffinity);
  if (v22 == 255 || (v22 & 1) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = CRLiCloudConnectionStatus.rawValue.getter(v21);
  }

  v24 = *(v42 + v41);
  if (*v24 != &off_1019FAE60)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  sub_10000BE14(v24 + v19, v13, &unk_101A0F400);
  v25 = v37;
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v13, &unk_101A0F400);
  v26 = v25 + *(v38 + 28);
  v27 = *v26;
  v28 = *(v26 + 8);
  sub_100EB6578(v25, type metadata accessor for CRLShapeItemParentAffinity);
  if (v28 == 255)
  {
    v29 = v39;
  }

  else
  {
    v29 = v39;
    if ((v28 & 1) == 0)
    {
      CRLiCloudConnectionStatus.rawValue.getter(v27);
    }
  }

  v30 = *v29;
  v31 = *(*v29 + 16);
  if (v31)
  {
    v32 = sub_1007CF108();
    if (v33)
    {
      v31 = *(*(v30 + 56) + 8 * v32);
    }

    else
    {
      v31 = 0;
    }
  }

  v34 = v31 + 1;
  if (v31 != -1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v29;
    *v29 = 0x8000000000000000;
    sub_100AA1180(v34, v23, isUniquelyReferenced_nonNull_native);
    *v29 = v43;

    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100EB16F4(void *a1, uint64_t a2)
{
  v30 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_1005B981C(&qword_101A15C38);
  __chkstk_darwin(v9 - 8);
  v31 = &v29 - v10;
  v11 = **(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v13 = result;
    v14 = *(result + 16);
    v15 = a1;

    v16 = v11;
    v17 = v15;
    v14(v16, v13);

    v18 = **&v15[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    result = swift_conformsToProtocol2();
    if (result)
    {
      v19 = result;
      v20 = *(result + 16);

      v20(v18, v19);

      sub_100EB64C8(&qword_101A15C40, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v21 = v31;
      CRType.observableDifference(from:)();
      sub_100EB6578(v5, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      sub_100EB6578(v8, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v22 = sub_1005B981C(&qword_101A15C48);
      if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
      {
        v23 = _swiftEmptyArrayStorage;
        if (!_swiftEmptyArrayStorage[2])
        {

          v24 = _swiftEmptyDictionarySingleton;
LABEL_10:
          sub_10000CAAC(v21, &qword_101A15C38);
          return v24;
        }
      }

      else
      {
        v23 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        if (v26 >= v25 >> 1)
        {
          v23 = sub_100024CBC((v25 > 1), v26 + 1, 1, v23);
        }

        *(v23 + 2) = v26 + 1;
        v27 = &v23[16 * v26];
        strcpy(v27 + 32, "shapeStyleData");
        v27[47] = -18;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = _swiftEmptyDictionarySingleton;
      sub_100A9B080(v23, 5, isUniquelyReferenced_nonNull_native);

      v24 = v32;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100EB1AD8(char *a1, uint64_t a2, unsigned __int8 a3, char *a4, void *a5)
{
  v206 = a5;
  v202 = a4;
  v204 = a1;
  v198 = type metadata accessor for UUID();
  v7 = *(v198 - 8);
  __chkstk_darwin(v198 - 8);
  v178 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v185);
  v10 = &v174 - v9;
  v11 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v11 - 8);
  v181 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v184 = &v174 - v14;
  __chkstk_darwin(v15);
  v17 = &v174 - v16;
  __chkstk_darwin(v18);
  v199 = &v174 - v19;
  if (a3)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_4;
    }

    sub_1005B981C(&qword_1019F54E0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10146BDE0;
    v135 = CRLTransactablePropertyMapKeys.rawValue.getter(a3);
    v137 = v136;
    *(v43 + 56) = &type metadata for String;
    v138 = sub_1000053B0();
    *(v43 + 32) = v135;
    v10 = (v43 + 32);
    v205 = v138;
    *(v43 + 64) = v138;
    *(v43 + 40) = v137;
    *(v43 + 96) = type metadata accessor for CRLBoardItemBase(0);
    *(v43 + 104) = sub_100EB64C8(&qword_101A0AFF0, type metadata accessor for CRLBoardItemBase);
    v45 = v206;
    *(v43 + 72) = v206;
    v139 = objc_opt_self();
    v140 = v45;
    v204 = v139;
    LODWORD(v45) = [v139 _atomicIncrementAssertCount];
    *&v215[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v43, v215);
    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v141 = String._bridgeToObjectiveC()();

    v142 = [v141 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v143;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_139;
    }

LABEL_102:
    v144 = static OS_os_log.crlAssert;
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_10146CA70;
    *(v145 + 56) = &type metadata for Int32;
    *(v145 + 64) = &protocol witness table for Int32;
    *(v145 + 32) = v45;
    v146 = sub_100006370(0, &qword_1019F4D30);
    *(v145 + 96) = v146;
    v147 = sub_1005CF04C();
    *(v145 + 72) = v39;
    v148 = v205;
    *(v145 + 136) = &type metadata for String;
    *(v145 + 144) = v148;
    *(v145 + 104) = v147;
    *(v145 + 112) = v17;
    *(v145 + 120) = v23;
    *(v145 + 176) = &type metadata for UInt;
    *(v145 + 184) = &protocol witness table for UInt;
    *(v145 + 152) = 1092;
    v149 = *&v215[0];
    *(v145 + 216) = v146;
    *(v145 + 224) = v147;
    *(v145 + 192) = v149;
    v150 = v39;
    v151 = v149;
    v152 = static os_log_type_t.error.getter();
    sub_100005404(v144, &_mh_execute_header, v152, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v145);
    swift_setDeallocating();
    v205 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v153 = static os_log_type_t.error.getter();
    sub_100005404(v144, &_mh_execute_header, v153, "Unhandled CRLTransactablePropertyMapKeys key %@ for transactable %@", 67, 2, v43);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v154 = v39 + 3;
    v39[4] = 0;
    v39[5] = 0;
    v206 = v43;
    v155 = *(v43 + 16);
    if (!v155)
    {
LABEL_127:
      v170 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v171 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v172 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v173 = String._bridgeToObjectiveC()();

      [v204 handleFailureInFunction:v171 file:v172 lineNumber:1092 isFatal:0 format:v173 args:v170];

      swift_setDeallocating();
      swift_arrayDestroy();

      return swift_deallocClassInstance();
    }

    v156 = 0;
    v43 = 40;
    while (1)
    {
      v157 = &v10[40 * v156];
      v17 = *(v157 + 4);
      LODWORD(v45) = sub_100020E58(v157, *(v157 + 3));
      v158 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v23 = *v154;
      v159 = *(v158 + 16);
      v50 = __OFADD__(*v154, v159);
      v160 = *v154 + v159;
      if (v50)
      {
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        swift_once();
        goto LABEL_102;
      }

      v45 = v39[4];
      if (v45 >= v160)
      {
        goto LABEL_119;
      }

      if (v45 + 0x4000000000000000 < 0)
      {
        goto LABEL_134;
      }

      v17 = v39[5];
      if (2 * v45 > v160)
      {
        v160 = 2 * v45;
      }

      v39[4] = v160;
      if ((v160 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_135;
      }

      v161 = v10;
      v162 = v158;
      v163 = swift_slowAlloc();
      v164 = v163;
      v39[5] = v163;
      if (v17)
      {
        break;
      }

      v158 = v162;
      v10 = v161;
      v43 = 40;
      if (!v164)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

LABEL_120:
      v166 = *(v158 + 16);
      if (v166)
      {
        v167 = (v158 + 32);
        v168 = *v154;
        while (1)
        {
          v169 = *v167++;
          *&v164[8 * v168] = v169;
          v168 = *v154 + 1;
          if (__OFADD__(*v154, 1))
          {
            break;
          }

          *v154 = v168;
          if (!--v166)
          {
            goto LABEL_104;
          }
        }

        __break(1u);
        goto LABEL_133;
      }

LABEL_104:

      if (++v156 == v155)
      {
        goto LABEL_127;
      }
    }

    if (v163 != v17 || v163 >= &v17[8 * v23])
    {
      memmove(v163, v17, 8 * v23);
    }

    LODWORD(v45) = v39;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v158 = v162;
    v10 = v161;
    v43 = 40;
LABEL_119:
    v164 = v39[5];
    if (!v164)
    {
      goto LABEL_126;
    }

    goto LABEL_120;
  }

LABEL_4:
  v197 = *(a2 + 16);
  if (!v197)
  {
    return result;
  }

  v205 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v22 = *&v202[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  v23 = 0xEE007974696E6966;
  v203 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v196 = a2 + 32;
  v176 = 0x8000000101563120;
  v177 = 0x8000000101563140;
  v200 = (v7 + 48);
  v179 = (v7 + 8);
  v180 = (v7 + 32);
  v182 = v202;
  v183 = v22;

  v24 = 0;
  v175 = xmmword_10146C6B0;
  v174 = xmmword_10146CA70;
  v25 = v198;
  v194 = v17;
  v195 = v10;
  while (1)
  {
    v26 = (v196 + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = *v26 == 0x6641746E65726170 && v28 == 0xEE007974696E6966;
    if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v201 = v24;
    v23 = v199;
    (*(*v183 + 272))();
    v30 = *(**(v206 + v205) + 272);

    v30(v31);

    v32 = *(v185 + 48);
    sub_10000BE14(v23, v10, &qword_1019F6990);
    sub_10000BE14(v17, &v10[v32], &qword_1019F6990);
    v33 = *v200;
    if ((*v200)(v10, 1, v25) == 1)
    {
      sub_10000CAAC(v17, &qword_1019F6990);
      sub_10000CAAC(v23, &qword_1019F6990);
      if (v33(&v10[v32], 1, v25) != 1)
      {
        goto LABEL_18;
      }

      v34 = sub_10000CAAC(v10, &qword_1019F6990);
    }

    else
    {
      sub_10000BE14(v10, v184, &qword_1019F6990);
      if (v33(&v10[v32], 1, v25) == 1)
      {
        sub_10000CAAC(v17, &qword_1019F6990);
        sub_10000CAAC(v199, &qword_1019F6990);
        (*v179)(v184, v25);
LABEL_18:
        sub_10000CAAC(v10, &unk_101A0AFE0);
LABEL_19:
        v35 = *(**(v206 + v205) + 272);

        v37 = v181;
        v35(v36);

        if (v33(v37, 1, v25) == 1)
        {
          sub_10000CAAC(v37, &qword_1019F6990);
          v209 = 0u;
          v210 = 0u;
        }

        else
        {
          *(&v210 + 1) = v25;
          v53 = sub_10002C58C(&v209);
          (*v180)(v53, v37, v25);
        }

        sub_10000BE14(&v209, v208, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(v208, 0);
        swift_endAccess();
        v34 = sub_10000CAAC(&v209, &unk_1019F4D00);
        v17 = v194;
        goto LABEL_32;
      }

      v58 = &v10[v32];
      v59 = v25;
      v60 = v178;
      (*v180)(v178, v58, v59);
      sub_100EB64C8(&qword_1019F37C0, &type metadata accessor for UUID);
      v23 = v17;
      v61 = v184;
      v193.i32[0] = dispatch thunk of static Equatable.== infix(_:_:)();
      v62 = *v179;
      v63 = v60;
      v25 = v59;
      (*v179)(v63, v59);
      sub_10000CAAC(v23, &qword_1019F6990);
      sub_10000CAAC(v199, &qword_1019F6990);
      v64 = v61;
      v17 = v23;
      v62(v64, v59);
      v34 = sub_10000CAAC(v195, &qword_1019F6990);
      if ((v193.i8[0] & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_32:
    v54 = (*((swift_isaMask & *v206) + 0xE0))(v34);
    v55 = (*((swift_isaMask & *v182) + 0xE0))();
    v56 = sub_100006370(0, &unk_1019F5730);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      if ([v54 isEqualExceptForPosition:v55])
      {
        *(&v210 + 1) = v56;
        *&v209 = v54;
        sub_10000BE14(&v209, v208, &unk_1019F4D00);
        v23 = v203;
        swift_beginAccess();
        v57 = v54;
        sub_100BC1F00(v208, 6);
        swift_endAccess();
        sub_10000CAAC(&v209, &unk_1019F4D00);
        v17 = v194;
      }

      else
      {
        *(&v210 + 1) = v56;
        *&v209 = v54;
        sub_10000BE14(&v209, v208, &unk_1019F4D00);
        v23 = v203;
        swift_beginAccess();
        v65 = v54;
        sub_100BC1F00(v208, 7);
        swift_endAccess();
        sub_10000CAAC(&v209, &unk_1019F4D00);
        [v65 angle];
        v67 = v66;
        [v55 angle];
        v69 = sub_1009C2C44(v67, v68);
        v17 = v194;
        if (!v69)
        {
          *(&v210 + 1) = v56;
          *&v209 = v65;
          sub_10000BE14(&v209, v208, &unk_1019F4D00);
          v23 = v203;
          swift_beginAccess();
          v70 = v65;
          sub_100BC1F00(v208, 8);
          swift_endAccess();
          v17 = v194;
          sub_10000CAAC(&v209, &unk_1019F4D00);
        }
      }
    }

    v71 = v205;
    v72 = *(**(v206 + v205) + 320);

    v72(v211, v73);
    v190 = v211[1];
    v191 = v211[0];
    v192 = v211[3];
    v193 = v211[2];

    v74 = *(**&v202[v71] + 320);

    v74(v213, v75);
    v186 = v213[1];
    v187 = v213[0];
    v188 = v213[3];
    v189 = v213[2];

    if (v212)
    {
      if ((v214 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if ((v214 & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v190, v186), vceqq_f32(v191, v187)), vandq_s8(vceqq_f32(v193, v189), vceqq_f32(v192, v188)))) & 0x80000000) == 0)
    {
LABEL_44:
      v76 = *(**(v206 + v205) + 320);

      v76(v215, v77);

      if (v216)
      {
        v209 = 0u;
        v210 = 0u;
      }

      else
      {
        *(&v210 + 1) = &type metadata for CRL3DTransform;
        v78 = swift_allocObject();
        *&v209 = v78;
        v79 = v215[1];
        v78[1] = v215[0];
        v78[2] = v79;
        v80 = v215[3];
        v78[3] = v215[2];
        v78[4] = v80;
      }

      v24 = v201;
      sub_10000BE14(&v209, v208, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(v208, 9);
      swift_endAccess();

      sub_10000CAAC(&v209, &unk_1019F4D00);
      v10 = v195;
      goto LABEL_7;
    }

    v10 = v195;
    v24 = v201;
LABEL_7:
    ++v24;
    v25 = v198;
    if (v24 == v197)
    {
    }
  }

  v38 = v27 == 0x64656B636F6CLL && v28 == 0xE600000000000000;
  if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v39 = v10;
    v10 = v17;
    v17 = v24;
    v40 = *(**(v206 + v205) + 368);

    LOBYTE(v40) = v40(v41);

    *(&v210 + 1) = &type metadata for Bool;
    LOBYTE(v209) = v40 & 1;
    v43 = v203;
    v42 = v204;
    swift_beginAccess();
    sub_10000BE14(&v209, v208, &unk_1019F4D00);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *&v42[v43];
    v207 = v45;
    v46 = sub_1007CF108();
    v48 = *(v45 + 16);
    v49 = (v47 & 1) == 0;
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    if (v50)
    {
      goto LABEL_136;
    }

    v43 = v47;
    if (*(v45 + 24) >= v51)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v134 = v46;
        sub_100AA3EA4();
        v46 = v134;
      }
    }

    else
    {
      sub_100A890C0(v51, isUniquelyReferenced_nonNull_native);
      v46 = sub_1007CF108();
      if ((v43 & 1) != (v52 & 1))
      {
        goto LABEL_144;
      }
    }

    v24 = v17;
    v45 = v207;
    v17 = v10;
    if (v43)
    {
      sub_10002C638(v208, v207[7] + 32 * v46, &unk_1019F4D00);
    }

    else
    {
      v207[(v46 >> 6) + 8] |= 1 << v46;
      *(*(v45 + 48) + 8 * v46) = 12;
      v81 = (*(v45 + 56) + 32 * v46);
      v82 = v208[1];
      *v81 = v208[0];
      v81[1] = v82;
      v83 = *(v45 + 16);
      v50 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v50)
      {
        goto LABEL_137;
      }

      *(v45 + 16) = v84;
    }

    *&v204[v203] = v45;
    swift_endAccess();
    sub_10000CAAC(&v209, &unk_1019F4D00);
    v10 = v39;
    goto LABEL_7;
  }

  v85 = v27 == 0xD000000000000011 && v177 == v28;
  if (v85 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v86 = *(**(v206 + v205) + 392);
    v87 = v17;

    LOBYTE(v86) = v86(v88);

    *(&v210 + 1) = &type metadata for Bool;
    LOBYTE(v209) = v86 & 1;
    v89 = v10;
    sub_10000BE14(&v209, v208, &unk_1019F4D00);
    swift_beginAccess();
    v90 = 13;
LABEL_61:
    sub_100BC1F00(v208, v90);
    swift_endAccess();
    v10 = v89;
    v17 = v87;
    sub_10000CAAC(&v209, &unk_1019F4D00);
    goto LABEL_7;
  }

  if (v27 == 0xD000000000000018 && v176 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v91 = *(**(v206 + v205) + 416);
    v87 = v17;
    v92 = v24;

    v94 = v91(v93);
    v96 = v95;

    *(&v210 + 1) = &type metadata for String;
    *&v209 = v94;
    *(&v209 + 1) = v96;
    v24 = v92;
    v89 = v10;
    sub_10000BE14(&v209, v208, &unk_1019F4D00);
    swift_beginAccess();
    v90 = 15;
    goto LABEL_61;
  }

  if (v27 == 0x776F64616873 && v28 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(&v210 + 1) = &type metadata for Bool;
    LOBYTE(v209) = 1;
    sub_10000BE14(&v209, v208, &unk_1019F4D00);
    swift_beginAccess();
    sub_100BC1F00(v208, 17);
    swift_endAccess();
    sub_10000CAAC(&v209, &unk_1019F4D00);
    goto LABEL_7;
  }

  if (v27 == 0x6574726F70707573 && v28 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v97 = (*((swift_isaMask & *v206) + 0x3F0))();
    *(&v210 + 1) = &type metadata for Bool;
    LOBYTE(v209) = v97 & 1;
    sub_10000BE14(&v209, v208, &unk_1019F4D00);
    swift_beginAccess();
    sub_100BC1F00(v208, 14);
    swift_endAccess();
    sub_10000CAAC(&v209, &unk_1019F4D00);
    v17 = v194;
    v10 = v195;
    goto LABEL_7;
  }

  v201 = v24;
  sub_1005B981C(&qword_1019F54E0);
  v98 = swift_allocObject();
  *(v98 + 16) = v175;
  *(v98 + 56) = &type metadata for String;
  v23 = sub_1000053B0();
  *(v98 + 32) = v27;
  v192.i64[0] = v98 + 32;
  *(v98 + 64) = v23;
  *(v98 + 40) = v28;
  v99 = objc_opt_self();

  v188.i64[0] = v99;
  v193.i32[0] = [v99 _atomicIncrementAssertCount];
  *&v209 = [objc_allocWithZone(NSString) init];
  v189.i64[0] = v98;
  sub_100604538(v98, &v209);
  StaticString.description.getter();
  v100 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v101 = String._bridgeToObjectiveC()();

  v102 = [v101 lastPathComponent];

  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v106 = static OS_os_log.crlAssert;
  v107 = swift_allocObject();
  *(v107 + 16) = v174;
  *(v107 + 56) = &type metadata for Int32;
  *(v107 + 64) = &protocol witness table for Int32;
  *(v107 + 32) = v193.i32[0];
  v108 = sub_100006370(0, &qword_1019F4D30);
  *(v107 + 96) = v108;
  v109 = sub_1005CF04C();
  *(v107 + 72) = v100;
  *(v107 + 136) = &type metadata for String;
  *(v107 + 144) = v23;
  *(v107 + 104) = v109;
  *(v107 + 112) = v103;
  *(v107 + 120) = v105;
  *(v107 + 176) = &type metadata for UInt;
  *(v107 + 152) = 1088;
  v110 = v209;
  *(v107 + 216) = v108;
  *(v107 + 224) = v109;
  *(v107 + 184) = &protocol witness table for UInt;
  *(v107 + 192) = v110;
  v111 = v100;
  v112 = v110;
  v113 = static os_log_type_t.error.getter();
  sub_100005404(v106, &_mh_execute_header, v113, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v107);
  swift_setDeallocating();
  v187.i64[0] = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v114 = static os_log_type_t.error.getter();
  v115 = v106;
  v116 = v189.i64[0];

  type metadata accessor for __VaListBuilder();
  v117 = swift_allocObject();
  v117[2] = 8;
  v117[3] = 0;
  v118 = v117 + 3;
  v117[4] = 0;
  v117[5] = 0;
  v193.i64[0] = v117;
  v17 = v194;
  v10 = v195;
  v191.i64[0] = *(v116 + 16);
  if (!v191.i64[0])
  {
LABEL_100:
    v23 = v193.i64[0];
    v190.i64[0] = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v131 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v132 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v133 = String._bridgeToObjectiveC()();

    [v188.i64[0] handleFailureInFunction:v131 file:v132 lineNumber:1088 isFatal:0 format:v133 args:v190.i64[0]];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v24 = v201;
    goto LABEL_7;
  }

  v43 = 0;
  while (2)
  {
    LODWORD(v45) = sub_100020E58((v192.i64[0] + 40 * v43), *(v192.i64[0] + 40 * v43 + 24));
    v119 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v120 = *v118;
    v121 = *(v119 + 16);
    v50 = __OFADD__(*v118, v121);
    v122 = *v118 + v121;
    if (!v50)
    {
      v39 = v119;
      v123 = v193.i64[0];
      v124 = *(v193.i64[0] + 32);
      if (v124 >= v122)
      {
        goto LABEL_93;
      }

      if (v124 + 0x4000000000000000 < 0)
      {
        goto LABEL_141;
      }

      v23 = *(v193.i64[0] + 40);
      v190.i64[0] = *(v193.i64[0] + 32);
      if (2 * v124 > v122)
      {
        v122 = 2 * v124;
      }

      *(v193.i64[0] + 32) = v122;
      if ((v122 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_142;
      }

      v45 = v123;
      v125 = swift_slowAlloc();
      *(v45 + 40) = v125;
      if (v23)
      {
        if (v125 != v23 || v125 >= v23 + 8 * v120)
        {
          memmove(v125, v23, 8 * v120);
          LODWORD(v45) = v193.i32[0];
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v123 = v193.i64[0];
LABEL_93:
        v125 = *(v123 + 40);
      }

      if (!v125)
      {
        goto LABEL_143;
      }

      v127 = v39[2];
      if (v127)
      {
        v128 = v39 + 4;
        v129 = *v118;
        do
        {
          v130 = *v128++;
          *(v125 + v129) = v130;
          v129 = *v118 + 1;
          if (__OFADD__(*v118, 1))
          {
            goto LABEL_138;
          }

          *v118 = v129;
          --v127;
        }

        while (v127);
      }

      if (++v43 == v191.i64[0])
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  type metadata accessor for CRLChangeProperty(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100EB39A8(char *a1, uint64_t a2, unsigned __int8 a3, char *a4, void *a5)
{
  v336 = a5;
  v328 = a1;
  v327 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v327);
  v301 = &v291 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v300 = &v291 - v10;
  __chkstk_darwin(v11);
  v308 = &v291 - v12;
  __chkstk_darwin(v13);
  v317 = &v291 - v14;
  __chkstk_darwin(v15);
  v309 = &v291 - v16;
  __chkstk_darwin(v17);
  v310 = &v291 - v18;
  __chkstk_darwin(v19);
  v311 = &v291 - v20;
  __chkstk_darwin(v21);
  v313 = &v291 - v22;
  __chkstk_darwin(v23);
  v312 = &v291 - v24;
  __chkstk_darwin(v25);
  v314 = &v291 - v26;
  __chkstk_darwin(v27);
  v303 = &v291 - v28;
  __chkstk_darwin(v29);
  v315 = &v291 - v30;
  __chkstk_darwin(v31);
  v316 = &v291 - v32;
  v33 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v33 - 8);
  v35 = &v291 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v291 - v37;
  v39 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v39);
  v41 = &v291 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v291 - v43;
  v45 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v45);
  __chkstk_darwin(v46);
  if (!a3)
  {
    v326 = &v291 - v48;
    v327 = v49;
    v329 = v47;
    v330 = v41;
    v331 = v39;
    v332 = v35;
    v269 = *&a4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    v333 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
    v334 = v269;
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_143;
    }

    v270 = *(a2 + 16);
    v321 = a2;
    v322 = a4;
    if (!v270)
    {
      v289 = a4;

LABEL_124:
      v290 = v322;
      sub_100EB1AD8(v328, v321, 0, v290, v336);

      return;
    }

    v323 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
    v271 = a4;

    v272 = (a2 + 40);
    v324 = v38;
    v325 = v44;
    while (1)
    {
      v277 = *(v272 - 1) == 0x6641746E65726170 && *v272 == 0xEE007974696E6966;
      if (v277 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v335 = v270;
        v278 = *(v336 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
        if (!swift_conformsToProtocol2())
        {
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          return;
        }

        v279 = v326;
        (*(*v334 + 752))();

        sub_1005B981C(&unk_101A0F410);
        CRRegister.wrappedValue.getter();
        sub_10000CAAC(v279, &unk_101A0F400);
        v280 = v331;
        sub_100EB6510(&v44[*(v331 + 20)], v38, type metadata accessor for CRLPathSourceData);
        v281 = sub_100EB6578(v44, type metadata accessor for CRLShapeItemParentAffinity);
        v282 = v327;
        (*(*v278 + 752))(v281);
        v283 = v330;
        CRRegister.wrappedValue.getter();
        sub_10000CAAC(v282, &unk_101A0F400);
        v284 = v283 + *(v280 + 20);
        v285 = v332;
        sub_100EB6510(v284, v332, type metadata accessor for CRLPathSourceData);
        v38 = v324;
        sub_100EB6578(v283, type metadata accessor for CRLShapeItemParentAffinity);
        v286 = sub_100C48FE0(v38, v285);
        sub_100EB6578(v285, type metadata accessor for CRLPathSourceData);
        sub_100EB6578(v38, type metadata accessor for CRLPathSourceData);
        if (v286)
        {
        }

        else
        {
          v273 = *(*v278 + 864);

          v273(v274);

          v276 = (*((swift_isaMask & *v336) + 0x530))(v275);
          *(&v367[1] + 1) = sub_100006370(0, &qword_101A031A8);
          *&v367[0] = v276;
          sub_10000BE14(v367, v366, &unk_1019F4D00);
          swift_beginAccess();
          sub_100BC1F00(v366, 21);
          swift_endAccess();

          sub_10000CAAC(v367, &unk_1019F4D00);
        }

        v44 = v325;
        v270 = v335;
      }

      v272 += 2;
      v270 = (v270 - 1);
      if (!v270)
      {
        goto LABEL_124;
      }
    }
  }

  if (a3 != 5)
  {
    v287 = v328;
    v288 = v336;

    sub_100EB1AD8(v287, a2, a3, a4, v288);
    return;
  }

  v333 = *&a4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  v335 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  v332 = swift_conformsToProtocol2();
  if (!v332)
  {
    goto LABEL_142;
  }

  v307 = *(a2 + 16);
  if (!v307)
  {
    return;
  }

  v326 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v306 = a2 + 32;
  v331 = (v332 + 16);
  v302 = &v367[14] + 8;
  v292 = a4;

  v50 = 0;
  v294 = xmmword_10146C6B0;
  v293 = xmmword_10146CA70;
  while (1)
  {
    v324 = v50;
    v55 = (v306 + 16 * v50);
    v57 = *v55;
    v56 = v55[1];
    v58 = *v55 == 0x7974536570616873 && v56 == 0xEE0061746144656CLL;
    if (!v58 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v59 = *&v333->Flags;
    v60 = v316;
    v329 = *(v332 + 2);
    v330 = v59;
    v329(v59);
    sub_1005B981C(&unk_101A10690);
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v60, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v402[4] = v367[4];
    v402[5] = v367[5];
    v403 = v367[6];
    v402[0] = v367[0];
    v402[1] = v367[1];
    v334 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v61 = *(v336 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v402[3] = v367[3];
    v402[2] = v367[2];
    v62 = *v61;
    v63 = swift_conformsToProtocol2();
    if (!v63)
    {
      goto LABEL_133;
    }

    v64 = v63;
    v65 = *(v63 + 16);

    v66 = v315;
    v65(v62, v64);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v66, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v408 = v367[4];
    v409 = v367[5];
    v410 = v367[6];
    v404 = v367[0];
    v405 = v367[1];
    v407 = v367[3];
    v406 = v367[2];
    v67 = *&v402[0];
    v68 = BYTE8(v402[0]);
    v380 = *(&v402[2] + 9);
    v381 = *(&v402[3] + 9);
    v382[0] = *(&v402[4] + 9);
    *(v382 + 15) = *(&v402[5] + 1);
    v378 = *(v402 + 9);
    v379 = *(&v402[1] + 9);
    v69 = v403;
    v70 = v367[6];
    if (!v403)
    {
      if (*&v367[6])
      {
LABEL_20:
        *&v367[0] = *&v402[0];
        BYTE8(v367[0]) = BYTE8(v402[0]);
        *(&v367[2] + 9) = *(&v402[2] + 9);
        *(&v367[3] + 9) = *(&v402[3] + 9);
        *(&v367[4] + 9) = *(&v402[4] + 9);
        *(&v367[5] + 1) = *(&v402[5] + 1);
        *(v367 + 9) = *(v402 + 9);
        *(&v367[1] + 9) = *(&v402[1] + 9);
        v367[6] = v403;
        v367[7] = v404;
        v367[8] = v405;
        v367[11] = v408;
        v367[12] = v409;
        v367[9] = v406;
        v367[10] = v407;
        v367[13] = v70;
        sub_10000CAAC(v367, &qword_1019FFF90);
LABEL_50:
        v113 = **(v336 + v334);
        v114 = swift_conformsToProtocol2();
        if (!v114)
        {
          goto LABEL_138;
        }

        v115 = v114;
        v116 = *(v114 + 16);

        v117 = v303;
        v116(v113, v115);

        CRRegister.wrappedValue.getter();
        sub_100EB6578(v117, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
        v366[0] = v392[0];
        v366[1] = v392[1];
        v366[5] = v392[5];
        v366[6] = v393;
        v366[2] = v392[2];
        v366[3] = v392[3];
        v366[4] = v392[4];
        v367[1] = v392[1];
        v367[0] = v392[0];
        v367[6] = v393;
        v367[5] = v392[5];
        v367[4] = v392[4];
        v367[2] = v392[2];
        v367[3] = v392[3];
        if (v393)
        {
          sub_100006370(0, &qword_101A00EB0);
          v433[2] = v366[3];
          v433[3] = v366[4];
          v433[4] = v366[5];
          v434 = *&v366[6];
          v433[0] = v366[1];
          v433[1] = v366[2];
          sub_10074A990(&v367[1], v392);
          v118 = sub_1008B0490(v433);
          if (BYTE8(v367[0]))
          {
            if (qword_1019F2268 != -1)
            {
              swift_once();
            }

            v119 = static OS_os_log.persistence;
            v120 = static os_log_type_t.info.getter();
            sub_100005404(v119, &_mh_execute_header, v120, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
          }

          v121 = [objc_allocWithZone(CRLColorFill) initWithColor:v118];

          sub_10000CAAC(v366, &qword_1019FFF80);
          *(&v392[1] + 1) = sub_100006370(0, &qword_101A2BF30);
          *&v392[0] = v121;
        }

        else
        {
          memset(v392, 0, 32);
        }

        sub_10000BE14(v392, &v378, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(&v378, 22);
        swift_endAccess();
        v122 = v392;
        v123 = &unk_1019F4D00;
      }

      else
      {
        *&v367[0] = *&v402[0];
        BYTE8(v367[0]) = BYTE8(v402[0]);
        *(&v367[2] + 9) = *(&v402[2] + 9);
        *(&v367[3] + 9) = *(&v402[3] + 9);
        *(&v367[4] + 9) = *(&v402[4] + 9);
        *(&v367[5] + 1) = *(&v402[5] + 1);
        *(v367 + 9) = *(v402 + 9);
        *(&v367[1] + 9) = *(&v402[1] + 9);
        *&v367[6] = 0;
        *(&v367[6] + 1) = *(&v403 + 1);
        v122 = v367;
        v123 = &qword_1019FFF80;
      }

      sub_10000CAAC(v122, v123);
      goto LABEL_60;
    }

    if (!*&v367[6])
    {
      goto LABEL_20;
    }

    v367[0] = v404;
    v367[1] = v405;
    v367[5] = v409;
    v367[4] = v408;
    v367[3] = v407;
    v367[2] = v406;
    v392[1] = *(&v367[1] + 9);
    v392[0] = *(v367 + 9);
    *(&v392[4] + 15) = *(&v367[5] + 8);
    v392[4] = *(&v367[4] + 9);
    v392[3] = *(&v367[3] + 9);
    v392[2] = *(&v367[2] + 9);
    v368[1] = *(&v402[1] + 9);
    v368[0] = *(v402 + 9);
    *(&v368[4] + 15) = *(&v402[5] + 1);
    v368[4] = *(&v402[4] + 9);
    v368[3] = *(&v402[3] + 9);
    v368[2] = *(&v402[2] + 9);
    *&v351 = *&v402[0];
    BYTE8(v351) = BYTE8(v402[0]) & 1;
    *&v337[0] = v404;
    BYTE8(v337[0]) = BYTE8(v404) & 1;
    sub_10000BE14(v402, v366, &qword_1019FFF80);
    sub_10000BE14(&v404, v366, &qword_1019FFF80);
    sub_100A1B84C();
    if (static CRExtensible.== infix(_:_:)() & 1) != 0 && (v435[2] = *(&v368[2] + 7), v435[3] = *(&v368[3] + 7), v435[4] = *(&v368[4] + 7), v435[1] = *(&v368[1] + 7), v435[0] = *(v368 + 7), v436 = v69, v437[2] = *(&v392[2] + 7), v437[3] = *(&v392[3] + 7), v437[4] = *(&v392[4] + 7), v438 = *(&v392[5] + 7), v437[0] = *(v392 + 7), v437[1] = *(&v392[1] + 7), (sub_1008B1A4C(v435, v437)))
    {
      v71 = sub_100B3216C(*(&v69 + 1), *(&v70 + 1));
    }

    else
    {
      v71 = 0;
    }

    sub_10000CAAC(v367, &qword_1019FFF80);
    sub_10000CAAC(&v404, &qword_1019FFF80);
    sub_10000CAAC(v402, &qword_1019FFF80);
    *(&v366[2] + 9) = v380;
    *(&v366[3] + 9) = v381;
    *(&v366[4] + 9) = v382[0];
    *(v366 + 9) = v378;
    *&v366[0] = v67;
    BYTE8(v366[0]) = v68;
    *(&v366[5] + 1) = *(v382 + 15);
    *(&v366[1] + 9) = v379;
    v366[6] = v69;
    sub_10000CAAC(v366, &qword_1019FFF80);
    if ((v71 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_60:
    v124 = v314;
    (v329)(v330, v332);
    sub_1005B981C(&unk_101A0D9D0);
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v124, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v375 = v367[12];
    v376 = v367[13];
    v377 = *&v367[14];
    v371 = v367[8];
    v372 = v367[9];
    v374 = v367[11];
    v373 = v367[10];
    v368[4] = v367[4];
    v368[5] = v367[5];
    v370 = v367[7];
    v369 = v367[6];
    v368[0] = v367[0];
    v368[1] = v367[1];
    v125 = *(v336 + v334);
    v368[3] = v367[3];
    v368[2] = v367[2];
    v126 = *v125;
    v127 = swift_conformsToProtocol2();
    if (!v127)
    {
      goto LABEL_134;
    }

    v128 = v127;
    v129 = *(v127 + 16);

    v130 = v312;
    v129(v126, v128);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v130, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v389 = v367[12];
    v390 = v367[13];
    v385 = v367[8];
    v386 = v367[9];
    v388 = v367[11];
    v387 = v367[10];
    v382[0] = v367[4];
    v382[1] = v367[5];
    v384 = v367[7];
    v383 = v367[6];
    v378 = v367[0];
    v379 = v367[1];
    v381 = v367[3];
    v380 = v367[2];
    v131 = v375;
    v132 = v376;
    v367[12] = v375;
    v367[13] = v376;
    v133 = v371;
    v134 = v372;
    v367[8] = v371;
    v367[9] = v372;
    v135 = v374;
    v136 = v373;
    v367[11] = v374;
    v367[10] = v373;
    v137 = v368[4];
    v138 = v368[5];
    v367[4] = v368[4];
    v367[5] = v368[5];
    v139 = v370;
    v140 = v369;
    v367[7] = v370;
    v367[6] = v369;
    v141 = v368[0];
    v142 = v368[1];
    v367[0] = v368[0];
    v367[1] = v368[1];
    v143 = v368[3];
    v144 = v368[2];
    v367[3] = v368[3];
    v367[2] = v368[2];
    v145 = v390;
    v146 = v302;
    *(v302 + 12) = v389;
    *(v146 + 13) = v145;
    v147 = v386;
    *(v146 + 8) = v385;
    *(v146 + 9) = v147;
    v148 = v388;
    *(v146 + 10) = v387;
    *(v146 + 11) = v148;
    v149 = v382[1];
    *(v146 + 4) = v382[0];
    *(v146 + 5) = v149;
    v150 = v384;
    *(v146 + 6) = v383;
    *(v146 + 7) = v150;
    v151 = v379;
    *v146 = v378;
    *(v146 + 1) = v151;
    v152 = v381;
    *(v146 + 2) = v380;
    *(v146 + 3) = v152;
    v399 = v131;
    v400 = v132;
    v395 = v133;
    v396 = v134;
    v398 = v135;
    v397 = v136;
    v392[4] = v137;
    v392[5] = v138;
    v394 = v139;
    v393 = v140;
    v392[0] = v141;
    v392[1] = v142;
    v391 = *&v367[14];
    v153 = v377;
    *&v367[14] = v377;
    *(v146 + 28) = v391;
    v401 = v153;
    v392[3] = v143;
    v392[2] = v144;
    if (sub_1000C0FB4(v392) == 1)
    {
      v154 = *(v146 + 13);
      v366[12] = *(v146 + 12);
      v366[13] = v154;
      *&v366[14] = *(v146 + 28);
      v155 = *(v146 + 9);
      v366[8] = *(v146 + 8);
      v366[9] = v155;
      v156 = *(v146 + 10);
      v366[11] = *(v146 + 11);
      v366[10] = v156;
      v157 = *(v146 + 5);
      v366[4] = *(v146 + 4);
      v366[5] = v157;
      v158 = *(v146 + 7);
      v366[6] = *(v146 + 6);
      v366[7] = v158;
      v159 = *(v146 + 1);
      v366[0] = *v146;
      v366[1] = v159;
      v160 = *(v146 + 3);
      v366[2] = *(v146 + 2);
      v366[3] = v160;
      if (sub_1000C0FB4(v366) == 1)
      {
        v363 = v367[12];
        v364 = v367[13];
        v365 = *&v367[14];
        v359 = v367[8];
        v360 = v367[9];
        v361 = v367[10];
        v362 = v367[11];
        v355 = v367[4];
        v356 = v367[5];
        v357 = v367[6];
        v358 = v367[7];
        v351 = v367[0];
        v352 = v367[1];
        v353 = v367[2];
        v354 = v367[3];
        v161 = &v351;
        v162 = &unk_101A106C0;
      }

      else
      {
LABEL_65:
        memcpy(v366, v367, sizeof(v366));
        sub_10000CAAC(v366, &qword_1019F5EE0);
LABEL_66:
        v170 = v336;
        v171 = *(v336 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
        *(v336 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke) = 0;

        v172 = (*((swift_isaMask & *v170) + 0x4D8))();
        if (v172)
        {
          v173 = v172;
          *(&v367[1] + 1) = sub_100006370(0, &qword_101A0C7F0);
          *&v367[0] = v173;
        }

        else
        {
          memset(v367, 0, 32);
        }

        sub_10000BE14(v367, v366, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(v366, 16);
        swift_endAccess();
        v161 = v367;
        v162 = &unk_1019F4D00;
      }

      sub_10000CAAC(v161, v162);
      goto LABEL_73;
    }

    v163 = *(v146 + 13);
    v366[12] = *(v146 + 12);
    v366[13] = v163;
    *&v366[14] = *(v146 + 28);
    v164 = *(v146 + 9);
    v366[8] = *(v146 + 8);
    v366[9] = v164;
    v165 = *(v146 + 10);
    v366[11] = *(v146 + 11);
    v366[10] = v165;
    v166 = *(v146 + 5);
    v366[4] = *(v146 + 4);
    v366[5] = v166;
    v167 = *(v146 + 7);
    v366[6] = *(v146 + 6);
    v366[7] = v167;
    v168 = *(v146 + 1);
    v366[0] = *v146;
    v366[1] = v168;
    v169 = *(v146 + 3);
    v366[2] = *(v146 + 2);
    v366[3] = v169;
    if (sub_1000C0FB4(v366) == 1)
    {
      goto LABEL_65;
    }

    v174 = *(v146 + 11);
    v175 = *(v146 + 13);
    v348 = *(v146 + 12);
    v349 = v175;
    v176 = *(v146 + 7);
    v177 = *(v146 + 9);
    v344 = *(v146 + 8);
    v345 = v177;
    v178 = *(v146 + 9);
    v179 = *(v146 + 11);
    v346 = *(v146 + 10);
    v347 = v179;
    v180 = *(v146 + 3);
    v181 = *(v146 + 5);
    v340 = *(v146 + 4);
    v341 = v181;
    v182 = *(v146 + 5);
    v183 = *(v146 + 7);
    v342 = *(v146 + 6);
    v343 = v183;
    v184 = *(v146 + 1);
    v337[0] = *v146;
    v337[1] = v184;
    v185 = *(v146 + 3);
    v187 = *v146;
    v186 = *(v146 + 1);
    v338 = *(v146 + 2);
    v339 = v185;
    v188 = *(v146 + 13);
    v431[12] = v348;
    v431[13] = v188;
    v431[8] = v344;
    v431[9] = v178;
    v431[11] = v174;
    v431[10] = v346;
    v431[4] = v340;
    v431[5] = v182;
    v431[7] = v176;
    v431[6] = v342;
    v431[0] = v187;
    v431[1] = v186;
    v350 = *(v146 + 28);
    v432 = *(v146 + 28);
    v431[3] = v180;
    v431[2] = v338;
    v429[12] = v367[12];
    v429[13] = v367[13];
    v430 = *&v367[14];
    v429[8] = v367[8];
    v429[9] = v367[9];
    v429[11] = v367[11];
    v429[10] = v367[10];
    v429[4] = v367[4];
    v429[5] = v367[5];
    v429[7] = v367[7];
    v429[6] = v367[6];
    v429[0] = v367[0];
    v429[1] = v367[1];
    v429[3] = v367[3];
    v429[2] = v367[2];
    sub_10000BE14(v368, &v351, &unk_101A106C0);
    sub_10000BE14(&v378, &v351, &unk_101A106C0);
    v189 = sub_100B93EBC(v429, v431);
    sub_10000CAAC(&v378, &unk_101A106C0);
    sub_10000CAAC(v368, &unk_101A106C0);
    sub_10000CAAC(v337, &unk_101A106C0);
    v363 = v367[12];
    v364 = v367[13];
    v365 = *&v367[14];
    v359 = v367[8];
    v360 = v367[9];
    v361 = v367[10];
    v362 = v367[11];
    v355 = v367[4];
    v356 = v367[5];
    v357 = v367[6];
    v358 = v367[7];
    v351 = v367[0];
    v352 = v367[1];
    v353 = v367[2];
    v354 = v367[3];
    sub_10000CAAC(&v351, &unk_101A106C0);
    if ((v189 & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_73:
    v190 = v313;
    (v329)(v330, v332);
    v191 = sub_1005B981C(&unk_101A10680);
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v190, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v320 = *&v367[0];
    v321 = *&v367[1];
    v318 = *(&v367[0] + 1);
    v319 = *(&v367[1] + 1);
    v192 = *(&v367[2] + 1);
    v193 = *(v336 + v334);
    v322 = *&v367[2];
    v323 = *&v367[3];
    v194 = *v193;
    v195 = swift_conformsToProtocol2();
    if (!v195)
    {
      goto LABEL_135;
    }

    v196 = v195;
    v197 = *(v195 + 16);

    v198 = v311;
    v197(v194, v196);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v198, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v199 = v367[0];
    v200 = v367[1];
    v201 = v367[2];
    v325 = v191;
    v202 = v192;
    if (v192)
    {
      if (*(&v367[2] + 1))
      {
        v427[0] = v367[0];
        v427[1] = v367[1];
        v427[2] = v367[2];
        v428 = *&v367[3];
        v304 = *&v367[1];
        v305 = *&v367[3];
        v426[0] = v320;
        v204 = v318;
        v203 = v319;
        v426[1] = v318;
        v426[2] = v321;
        v426[3] = v319;
        v205 = *(&v367[1] + 1);
        v426[4] = v322;
        v426[5] = v192;
        v206 = *(&v367[0] + 1);
        v207 = *&v367[2];
        v426[6] = v323;
        v298 = v202;
        sub_100C3B15C(v320, v318, v321, v319, v322, v202);
        v296 = *(&v199 + 1);
        v297 = v205;
        v208 = v304;
        v295 = v207;
        sub_100C3B15C(v199, *(&v199 + 1), v304, v205, v207, *(&v201 + 1));
        LODWORD(v299) = sub_1009CE0AC(v426, v427);
        sub_100810A00(v199, v206, v208, v205, v207, *(&v201 + 1));
        v209 = v320;
        v210 = v321;
        v211 = v322;
        v212 = v298;
        sub_100810A00(v320, v204, v321, v203, v322, v298);
        sub_100810A00(v199, v296, v304, v297, v295, *(&v201 + 1));
        v213 = sub_100810A00(v209, v204, v210, v203, v211, v212);
        if (v299)
        {
          goto LABEL_86;
        }

        goto LABEL_80;
      }
    }

    else if (!*(&v367[2] + 1))
    {
      sub_100810A00(v320, v318, v321, v319, v322, 0);
      goto LABEL_86;
    }

    sub_100810A00(v320, v318, v321, v319, v322, v192);
    v213 = sub_100810A00(v199, *(&v199 + 1), v200, *(&v200 + 1), v201, *(&v201 + 1));
LABEL_80:
    if ((*((swift_isaMask & *v336) + 0x578))(v213))
    {
      goto LABEL_84;
    }

    v214 = **(v336 + v334);
    v215 = swift_conformsToProtocol2();
    if (!v215)
    {
      goto LABEL_140;
    }

    v216 = v215;
    v217 = *(v215 + 16);

    v218 = v301;
    v217(v214, v216);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v218, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v219 = *(&v367[2] + 1);
    if (!*(&v367[2] + 1))
    {
LABEL_84:
      memset(v367, 0, 32);
    }

    else
    {
      v220 = v367[0];
      v221 = v367[1];
      v222 = *&v367[2];
      LOBYTE(v366[0]) = v367[1] & 1;
      v420 = v367[0];
      v421 = v367[1] & 1;
      v422 = *(&v367[1] + 4);
      v423 = BYTE12(v367[1]) & 1;
      v424 = v367[2];
      v425 = *&v367[3];
      v223 = sub_100006370(0, &qword_101A14D70);
      v224 = sub_1009CE208(&v420);
      sub_100810A00(v220, *(&v220 + 1), v221, *(&v221 + 1), v222, v219);
      *(&v367[1] + 1) = v223;
      *&v367[0] = v224;
    }

    sub_10000BE14(v367, v366, &unk_1019F4D00);
    swift_beginAccess();
    sub_100BC1F00(v366, 23);
    swift_endAccess();
    sub_10000CAAC(v367, &unk_1019F4D00);
LABEL_86:
    v225 = v310;
    (v329)(v330, v332);
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v225, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v320 = *&v367[0];
    v321 = *&v367[1];
    v318 = *(&v367[0] + 1);
    v319 = *(&v367[1] + 1);
    v226 = *(&v367[2] + 1);
    v227 = *(v336 + v334);
    v322 = *&v367[2];
    v323 = *&v367[3];
    v228 = *v227;
    v229 = swift_conformsToProtocol2();
    if (!v229)
    {
      goto LABEL_136;
    }

    v230 = v229;
    v231 = *(v229 + 16);

    v232 = v309;
    v231(v228, v230);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v232, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v233 = v367[0];
    v234 = v367[1];
    v235 = v367[2];
    v236 = v226;
    if (v226)
    {
      if (*(&v367[2] + 1))
      {
        v418[0] = v367[0];
        v418[1] = v367[1];
        v418[2] = v367[2];
        v419 = *&v367[3];
        v305 = *&v367[3];
        v417[0] = v320;
        v237 = v318;
        v238 = v319;
        v417[1] = v318;
        v239 = *&v367[1];
        v417[2] = v321;
        v417[3] = v319;
        v417[4] = v322;
        v417[5] = v236;
        v240 = *&v367[2];
        v417[6] = v323;
        v299 = v236;
        sub_100C3B15C(v320, v318, v321, v319, v322, v236);
        v297 = *(&v233 + 1);
        v298 = v239;
        v295 = v240;
        v296 = *(&v234 + 1);
        sub_100C3B15C(v233, *(&v233 + 1), v239, *(&v234 + 1), v240, *(&v235 + 1));
        LODWORD(v304) = sub_1009CE0AC(v417, v418);
        sub_100810A00(v233, *(&v233 + 1), v239, *(&v234 + 1), v240, *(&v235 + 1));
        v241 = v320;
        v242 = v321;
        v243 = v322;
        v244 = v299;
        sub_100810A00(v320, v237, v321, v238, v322, v299);
        sub_100810A00(v233, v297, v298, v296, v295, *(&v235 + 1));
        v245 = sub_100810A00(v241, v237, v242, v238, v243, v244);
        if (v304)
        {
          goto LABEL_99;
        }

        goto LABEL_93;
      }
    }

    else if (!*(&v367[2] + 1))
    {
      sub_100810A00(v320, v318, v321, v319, v322, 0);
      goto LABEL_99;
    }

    sub_100810A00(v320, v318, v321, v319, v322, v226);
    v245 = sub_100810A00(v233, *(&v233 + 1), v234, *(&v234 + 1), v235, *(&v235 + 1));
LABEL_93:
    if ((*((swift_isaMask & *v336) + 0x578))(v245))
    {
      goto LABEL_97;
    }

    v246 = **(v336 + v334);
    v247 = swift_conformsToProtocol2();
    if (!v247)
    {
      goto LABEL_141;
    }

    v248 = v247;
    v249 = *(v247 + 16);

    v250 = v300;
    v249(v246, v248);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v250, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v251 = *(&v367[2] + 1);
    if (!*(&v367[2] + 1))
    {
LABEL_97:
      memset(v367, 0, 32);
    }

    else
    {
      v252 = v367[0];
      v253 = v367[1];
      v254 = *&v367[2];
      LOBYTE(v366[0]) = v367[1] & 1;
      v411 = v367[0];
      v412 = v367[1] & 1;
      v413 = *(&v367[1] + 4);
      v414 = BYTE12(v367[1]) & 1;
      v415 = v367[2];
      v416 = *&v367[3];
      v255 = sub_100006370(0, &qword_101A14D70);
      v256 = sub_1009CE208(&v411);
      sub_100810A00(v252, *(&v252 + 1), v253, *(&v253 + 1), v254, v251);
      *(&v367[1] + 1) = v255;
      *&v367[0] = v256;
    }

    sub_10000BE14(v367, v366, &unk_1019F4D00);
    swift_beginAccess();
    sub_100BC1F00(v366, 24);
    swift_endAccess();
    sub_10000CAAC(v367, &unk_1019F4D00);
LABEL_99:
    v257 = v317;
    (v329)(v330, v332);
    sub_1005B981C(&unk_101A0D9C0);
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v257, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v258 = *v367;
    v259 = **(v336 + v334);
    v260 = swift_conformsToProtocol2();
    if (!v260)
    {
      goto LABEL_137;
    }

    v261 = v260;
    v262 = *(v260 + 16);

    v263 = v308;
    v262(v259, v261);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v263, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    if (v258 != *v367)
    {
      v264 = **(v336 + v334);
      v265 = swift_conformsToProtocol2();
      if (!v265)
      {
        goto LABEL_139;
      }

      v266 = v265;
      v267 = *(v265 + 16);

      v268 = v317;
      v267(v264, v266);

      CRRegister.wrappedValue.getter();
      sub_100EB6578(v268, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      *(&v367[1] + 1) = &type metadata for CGFloat;
      *v367 = *v367;
      sub_10000BE14(v367, v366, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(v366, 25);
      swift_endAccess();
      sub_10000CAAC(v367, &unk_1019F4D00);
    }

LABEL_7:
    v50 = v324 + 1;
    if (v324 + 1 == v307)
    {
      goto LABEL_126;
    }
  }

  sub_1005B981C(&qword_1019F54E0);
  v72 = swift_allocObject();
  *(v72 + 16) = v294;
  *(v72 + 56) = &type metadata for String;
  v73 = sub_1000053B0();
  *(v72 + 32) = v57;
  v74 = v72 + 32;
  v334 = v73;
  *(v72 + 64) = v73;
  *(v72 + 40) = v56;
  v75 = objc_opt_self();

  v329 = v75;
  LODWORD(v330) = [v75 _atomicIncrementAssertCount];
  *&v367[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v72, v367);
  StaticString.description.getter();
  v76 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v77 = String._bridgeToObjectiveC()();

  v78 = [v77 lastPathComponent];

  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v82 = static OS_os_log.crlAssert;
  v83 = swift_allocObject();
  *(v83 + 16) = v293;
  *(v83 + 56) = &type metadata for Int32;
  *(v83 + 64) = &protocol witness table for Int32;
  *(v83 + 32) = v330;
  v84 = sub_100006370(0, &qword_1019F4D30);
  *(v83 + 96) = v84;
  v85 = sub_1005CF04C();
  *(v83 + 72) = v76;
  v86 = v334;
  *(v83 + 136) = &type metadata for String;
  *(v83 + 144) = v86;
  *(v83 + 104) = v85;
  *(v83 + 112) = v79;
  *(v83 + 120) = v81;
  *(v83 + 176) = &type metadata for UInt;
  *(v83 + 152) = 398;
  v87 = *&v367[0];
  *(v83 + 216) = v84;
  *(v83 + 224) = v85;
  *(v83 + 184) = &protocol witness table for UInt;
  *(v83 + 192) = v87;
  v88 = v76;
  v89 = v87;
  v90 = static os_log_type_t.error.getter();
  sub_100005404(v82, &_mh_execute_header, v90, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v83);
  swift_setDeallocating();
  v330 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v91 = static os_log_type_t.error.getter();

  type metadata accessor for __VaListBuilder();
  v92 = swift_allocObject();
  v92[2] = 8;
  v92[3] = 0;
  v93 = v92 + 3;
  v92[4] = 0;
  v92[5] = 0;
  v94 = *(v72 + 16);
  if (!v94)
  {
LABEL_6:
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    [v329 handleFailureInFunction:v52 file:v53 lineNumber:398 isFatal:0 format:v54 args:v51];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_7;
  }

  v95 = 0;
  v334 = *(v72 + 16);
  while (2)
  {
    sub_100020E58((v74 + 40 * v95), *(v74 + 40 * v95 + 24));
    v96 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v97 = *v93;
    v98 = *(v96 + 16);
    v99 = __OFADD__(*v93, v98);
    v100 = *v93 + v98;
    if (v99)
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v101 = v92[4];
    if (v101 >= v100)
    {
LABEL_40:
      v107 = v92[5];
      if (!v107)
      {
        goto LABEL_131;
      }
    }

    else
    {
      if (v101 + 0x4000000000000000 < 0)
      {
        goto LABEL_129;
      }

      v102 = v92[5];
      if (2 * v101 > v100)
      {
        v100 = 2 * v101;
      }

      v92[4] = v100;
      if ((v100 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_130;
      }

      v103 = v74;
      v104 = v72;
      v105 = v96;
      v106 = swift_slowAlloc();
      v107 = v106;
      v92[5] = v106;
      if (v102)
      {
        if (v106 != v102 || v106 >= &v102[8 * v97])
        {
          memmove(v106, v102, 8 * v97);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v96 = v105;
        v72 = v104;
        v74 = v103;
        v94 = v334;
        goto LABEL_40;
      }

      v96 = v105;
      v72 = v104;
      v74 = v103;
      v94 = v334;
      if (!v107)
      {
        goto LABEL_131;
      }
    }

    v109 = *(v96 + 16);
    if (!v109)
    {
LABEL_25:

      if (++v95 == v94)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v110 = (v96 + 32);
  v111 = *v93;
  while (1)
  {
    v112 = *v110++;
    *&v107[8 * v111] = v112;
    v111 = *v93 + 1;
    if (__OFADD__(*v93, 1))
    {
      break;
    }

    *v93 = v111;
    if (!--v109)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_126:
}

uint64_t sub_100EB64C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100EB6510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EB6578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100EB65D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLPKStrokePathData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100EB66E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUnknownLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100EB673C(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  type metadata accessor for CRLBoardCRDTData(0);
  v2[27] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[28] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_100EB6824, 0, 0);
}

uint64_t sub_100EB6824()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v6 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v7 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v7 + v8, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v3, type metadata accessor for CRLBoardCRDTData);
  v9 = (*(v4 + v6) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v10 = *v9;
  v11 = v9[1];

  sub_10084BD4C(v2, v10, v11, v1);
  v12 = swift_task_alloc();
  v0[30] = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v1;
  v13 = swift_task_alloc();
  v0[31] = v13;
  v14 = sub_1005B981C(&qword_1019FE618);
  *v13 = v0;
  v13[1] = sub_100EB6A04;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x80000001015ADE30, sub_100EDE6B8, v12, v14);
}

uint64_t sub_100EB6A04()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100EB6C04;
  }

  else
  {
    v2 = sub_100EB6B18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EB6B18()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v3;
  *(v0 + 153) = *(v0 + 73);
  v4 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v4;
  sub_10003D69C(v1, type metadata accessor for CRLBoardIdentifier);
  *v2 = *(v0 + 96);
  v6 = *(v0 + 128);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);
  *(v2 + 57) = *(v0 + 153);
  v2[2] = v6;
  v2[3] = v5;
  v2[1] = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100EB6C04()
{
  v1 = *(v0 + 232);

  sub_10003D69C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100EB6CA8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v11 + v12, v6, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v6, type metadata accessor for CRLBoardCRDTData);
  LOBYTE(v6) = static UUID.== infix(_:_:)();
  (*(v8 + 8))(v10, v7);
  if ((v6 & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap;
    swift_beginAccess();
    v14 = *(v2 + v13);
    if (*(v14 + 16))
    {

      v15 = sub_10003E994(a1);
      if (v16)
      {
        v2 = *(*(v14 + 56) + 16 * v15);
        swift_unknownObjectRetain();

        return v2;
      }
    }

    return 0;
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_100EB6EE0(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for UUID();
  v52 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v53 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = v45 - v6;
  v7 = sub_1005B981C(&unk_101A22798);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v45 - v11;
  sub_10000BE14(a1, v57, &unk_1019F4D00);
  if (!v58)
  {
    sub_10000CAAC(v57, &unk_1019F4D00);
    return 0;
  }

  sub_1005B981C(&unk_101A228F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*(v55 + 16) != *(v56[0] + 16))
  {

    return 0;
  }

  v49 = v56[0];
  v50 = v12;
  v48 = v3;
  v13 = *(v55 + 64);
  v45[0] = v55 + 64;
  v14 = 1 << *(v55 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v45[1] = v52 + 16;
  v54 = (v52 + 32);
  v47 = (v52 + 8);

  v19 = 0;
  v46 = v10;
  while (v16)
  {
    v20 = v19;
    v21 = v48;
LABEL_17:
    v25 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v26 = v25 | (v20 << 6);
    v27 = v55;
    v29 = v51;
    v28 = v52;
    (*(v52 + 16))(v51, *(v55 + 48) + *(v52 + 72) * v26, v21);
    v30 = *(*(v27 + 56) + 8 * v26);
    v31 = sub_1005B981C(&qword_101A1F1B0);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v10 = v46;
    v33(v46, v29, v21);
    *&v10[v32] = v30;
    (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
    v34 = v30;
    v24 = v50;
LABEL_18:
    sub_10003DFF8(v10, v24, &unk_101A22798);
    v35 = sub_1005B981C(&qword_101A1F1B0);
    v36 = (*(*(v35 - 8) + 48))(v24, 1, v35);
    v37 = v53;
    if (v36 == 1)
    {

      return 1;
    }

    v38 = *(v24 + *(v35 + 48));
    (*v54)(v53, v24, v21);
    v39 = v49;
    if (!*(v49 + 16) || (v40 = sub_10003E994(v37), (v41 & 1) == 0))
    {

      (*v47)(v37, v21);
      return 0;
    }

    sub_10000630C(*(v39 + 56) + 40 * v40, v57);
    (*v47)(v37, v21);
    v43 = v58;
    v42 = v59;
    sub_100020E58(v57, v58);
    v56[3] = type metadata accessor for CRLBoardItem(0);
    v56[0] = v38;
    LOBYTE(v42) = (*(v42 + 8))(v56, v43, v42);
    sub_10000CAAC(v56, &unk_1019F4D00);
    result = sub_100005070(v57);
    if ((v42 & 1) == 0)
    {

      return 0;
    }
  }

  if (v17 <= v19 + 1)
  {
    v22 = v19 + 1;
  }

  else
  {
    v22 = v17;
  }

  v23 = v22 - 1;
  v21 = v48;
  v24 = v50;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      v44 = sub_1005B981C(&qword_101A1F1B0);
      (*(*(v44 - 8) + 56))(v10, 1, 1, v44);
      v16 = 0;
      v19 = v23;
      goto LABEL_18;
    }

    v16 = *(v45[0] + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void *sub_100EB7474()
{
  v62 = type metadata accessor for PKDrawing();
  v54 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for PKStroke();
  v67 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v9 = sub_100ED3AE4(v8);

  v63 = [objc_allocWithZone(NSMutableDictionary) init];
  v85 = _swiftEmptyArrayStorage;
  v55 = v9;
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    v60 = v55 & 0xC000000000000001;
    v59 = v55 & 0xFFFFFFFFFFFFFF8;
    v58 = v55 + 32;
    v77 = (v67 + 8);
    v78 = v67 + 16;
    v76 = (v67 + 32);
    v56 = (v54 + 8);
    v80 = v4;
    v81 = v7;
    v79 = v2;
    v57 = i;
    while (1)
    {
      if (v60)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v11 >= *(v59 + 16))
        {
          goto LABEL_39;
        }

        v22 = *(v58 + 8 * v11);
        v23 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_38;
        }
      }

      v64 = v11;
      v66 = v23;
      v24 = v22;
      v25 = sub_1005F387C();
      v65 = v24;

      if (v25 >> 62)
      {
        break;
      }

      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_11;
      }

LABEL_4:
      v12 = _swiftEmptyArrayStorage;
LABEL_5:

      swift_bridgeObjectRetain_n();
      sub_10079AD64(v12);
      strcpy(v84, "Drawing");
      v84[1] = 0xE700000000000000;
      v83 = v64;
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = v84[0];
      v15 = v84[1];
      v84[0] = v12;
      sub_1005B981C(&unk_101A22650);
      sub_10001A2F8(&qword_101A12070, &unk_101A22650);
      v16 = v61;
      PKDrawing.init<A>(strokes:)();
      v17 = PKDrawing.dataRepresentation()();
      v19 = v18;
      (*v56)(v16, v62);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v21 = v19;
      v7 = v81;
      sub_10002640C(v17, v21);
      v84[0] = v14;
      v84[1] = v15;
      [v63 __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      v11 = v66;
      if (v66 == v57)
      {
        v40 = v85;
        goto LABEL_42;
      }
    }

    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (!v26)
    {
      goto LABEL_4;
    }

LABEL_11:
    v27 = 0;
    v28 = v25 & 0xC000000000000001;
    v68 = (v25 + 32);
    v69 = v25 & 0xFFFFFFFFFFFFFF8;
    v12 = _swiftEmptyArrayStorage;
    v71 = v26;
    v72 = v25;
    v70 = v25 & 0xC000000000000001;
    while (1)
    {
      if (v28)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v69 + 16))
        {
          goto LABEL_37;
        }

        v30 = v68[v27];
      }

      v29 = v30;
      if (__OFADD__(v27++, 1))
      {
        break;
      }

      type metadata accessor for CRLFreehandDrawingShapeItem();
      if (swift_dynamicCastClass())
      {
        v75 = v29;
        v32 = sub_100EAD788();
        if (v32)
        {
          v73 = v32;
          v74 = v27;
          v33 = *(v32 + 16);
          if (v33)
          {
            v82 = (*(v67 + 80) + 32) & ~*(v67 + 80);
            v34 = v32 + v82;
            v35 = *(v67 + 72);
            v36 = *(v67 + 16);
            do
            {
              v36(v7, v34, v2);
              v36(v4, v7, v2);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_100B36FA8(0, v12[2] + 1, 1, v12);
              }

              v38 = v12[2];
              v37 = v12[3];
              if (v38 >= v37 >> 1)
              {
                v12 = sub_100B36FA8(v37 > 1, v38 + 1, 1, v12);
              }

              v7 = v81;
              v2 = v79;
              (*v77)(v81, v79);
              v12[2] = v38 + 1;
              v39 = v12 + v82 + v38 * v35;
              v4 = v80;
              (*v76)(v39, v80, v2);
              v34 += v35;
              --v33;
            }

            while (v33);
          }

          v26 = v71;
          v27 = v74;
          v28 = v70;
        }

        v29 = v75;
      }

      if (v27 == v26)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_42:

  v84[0] = v40;
  sub_1005B981C(&unk_101A22650);
  sub_10001A2F8(&qword_101A12070, &unk_101A22650);
  v41 = v61;
  PKDrawing.init<A>(strokes:)();
  v42 = PKDrawing.dataRepresentation()();
  v44 = v43;
  (*(v54 + 8))(v41, v62);
  v45 = Data._bridgeToObjectiveC()().super.isa;
  sub_10002640C(v42, v44);
  strcpy(v84, "MergedDrawing");
  HIWORD(v84[1]) = -4864;
  v46 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v47 = v63;
  [v63 __swift_setObject:v45 forKeyedSubscript:v46];

  swift_unknownObjectRelease();
  v48 = objc_opt_self();
  v84[0] = 0;
  v49 = [v48 archivedDataWithRootObject:v47 requiringSecureCoding:1 error:v84];
  v50 = v84[0];
  if (v49)
  {
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v51 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v51;
}

uint64_t sub_100EB7CFC(uint64_t a1, uint64_t a2)
{
  v13 = 1;
  v14 = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = swift_allocObject();
  v5[2] = &v13;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = &v14;
  v6 = swift_allocObject();
  v6[2] = sub_100EDE68C;
  v6[3] = v5;
  aBlock[4] = sub_10002AAE0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_1018A79C8;
  v7 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v8 = [ObjCClassFromMetadata crl_catchExceptionsInBlock:v7 error:aBlock];
  _Block_release(v7);
  v9 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_10;
  }

  if (!v8)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  if (!v14)
  {
    if ((v13 & 1) == 0)
    {
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  swift_willThrow();
  swift_errorRetain();
LABEL_6:
}

void *sub_100EB7F18(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = 0;
  return result;
}

char *sub_100EB7F94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v57 = a5;
  v58 = a4;
  v59 = a3;
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  __chkstk_darwin(v12 - 8);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v14 - 8);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v51 - v17;
  v18 = objc_allocWithZone(v6);
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext] = 0;
  v19 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  v20 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  v21 = &v18[OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData];
  *v21 = _swiftEmptySetSingleton;
  v21[1] = _swiftEmptySetSingleton;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_cancellables] = _swiftEmptySetSingleton;
  v22 = OBJC_IVAR____TtC8Freeform8CRLBoard_opportunisticallyBuiltAffectedItemSetIncludingParents;
  *&v18[v22] = sub_100BD4D84(_swiftEmptyArrayStorage);
  v23 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedChangeAvailablePublisher;
  sub_1005B981C(&unk_101A22670);
  swift_allocObject();
  *&v18[v23] = PassthroughSubject.init()();
  v24 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedRealTimeChangesAvailablePublisher;
  swift_allocObject();
  *&v18[v24] = PassthroughSubject.init()();
  v25 = OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher;
  sub_1005B981C(&qword_101A12970);
  swift_allocObject();
  *&v18[v25] = PassthroughSubject.init()();
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable] = 0;
  swift_unknownObjectWeakInit();
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_store] = a1;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_data] = a2;
  v18[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported] = a6;
  v26 = type metadata accessor for CRLRootContainerItem(0);
  v27 = objc_allocWithZone(v26);
  swift_unknownObjectWeakInit();
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v59;
  v28 = type metadata accessor for CRLBoardItemBase(0);
  v63.receiver = v27;
  v63.super_class = v28;
  v29 = a1;

  v30 = objc_msgSendSuper2(&v63, "init");
  v31 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] = v30;
  v32 = objc_allocWithZone(v26);
  swift_unknownObjectWeakInit();
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v29;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v58;
  v62.receiver = v32;
  v62.super_class = v28;
  v51 = v29;

  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] = objc_msgSendSuper2(&v62, "init");
  v33 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v34 = a2 + v33;
  v35 = v54;
  sub_10004FECC(v34, v54, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  v36 = v53;
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v35, type metadata accessor for CRLBoardCRDTData);
  v37 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v38 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  v39 = v52;
  sub_10084BD4C(v36, v37, v38, v52);
  v40 = v55;
  v41 = sub_10004FECC(v39, v55, type metadata accessor for CRLBoardIdentifier);
  (*(**(*&v18[v31] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v41);
  type metadata accessor for CRLBoardChangeSet(0);
  swift_allocObject();
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] = sub_100768A10(v40, v36, 0);
  type metadata accessor for CRLFreehandDrawingShapeItemBucketManager();
  v42 = swift_allocObject();
  sub_1005B981C(&qword_101A12978);
  v43 = swift_allocObject();
  *(v43 + 16) = _swiftEmptyDictionarySingleton;
  *(v43 + 24) = _swiftEmptyDictionarySingleton;
  *(v42 + 16) = v43;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager] = v42;
  type metadata accessor for CRLActiveBoardShareState();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  swift_unknownObjectWeakInit();
  v45 = *(v44 + 16);
  v46 = v57;
  *(v44 + 16) = v57;
  v47 = v46;

  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] = v44;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime] = 0;
  v61.receiver = v18;
  v61.super_class = v56;
  v48 = objc_msgSendSuper2(&v61, "init");
  swift_unknownObjectWeakAssign();
  v60 = *(*&v48[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v48;

  sub_1005B981C(&unk_101A22680);
  sub_10001A2F8(&qword_101A12980, &unk_101A22680);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10003D69C(v39, type metadata accessor for CRLBoardIdentifier);
  return v49;
}

NSString sub_100EB87A0()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD86A8 = result;
  return result;
}

NSString sub_100EB87D8()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD86B0 = result;
  return result;
}

uint64_t sub_100EB89A8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v12 + v13, v4, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v14 = (*(v1 + v11) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v15 = *v14;
  v16 = v14[1];

  sub_10084BD4C(v7, v15, v16, v10);
  v28 = UUID.uuidString.getter();
  v29 = v17;

  v18._countAndFlagsBits = 58;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19 = v28;
  v20 = v29;
  v21 = &v10[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
  v22 = *v21;
  v23 = v21[1];
  v28 = v19;
  v29 = v20;

  v24._countAndFlagsBits = v22;
  v24._object = v23;
  String.append(_:)(v24);

  v25 = v28;
  sub_10003D69C(v10, type metadata accessor for CRLBoardIdentifier);
  return v25;
}

Class sub_100EB8C18()
{
  type metadata accessor for UUID();
  type metadata accessor for CRLBoardItem(0);
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);

  v0.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

uint64_t sub_100EB8D4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v2 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v4 = v1;
  if (!v3)
  {
    sub_10096C7D4();
    v3 = *&v1[v2];
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  if (v5 >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v6 = v5;
  }

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = [v7 BOOLForKey:@"CRLScenesDebugView"];

  if (v8)
  {
    v9 = sub_100EC8784();
    if (v9 >> 62)
    {
      sub_1005B981C(&qword_1019F5720);
      v10 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v10 = v9;
    }

    sub_10079AD4C(v10);
  }

  return v6;
}

uint64_t sub_100EB8FAC(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v93 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v83 - v9;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v83 - v15;
  __chkstk_darwin(v17);
  v19 = &v83 - v18;
  __chkstk_darwin(v20);
  v92 = (&v83 - v21);
  __chkstk_darwin(v22);
  v24 = &v83 - v23;
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  sub_10000BE14(a1, v96, &unk_1019F4D00);
  if (!v97)
  {
    sub_10000CAAC(v96, &unk_1019F4D00);
    goto LABEL_8;
  }

  type metadata accessor for CRLBoard(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v36 = 0;
    return v36 & 1;
  }

  if (v95 == v94)
  {

    v36 = 1;
    return v36 & 1;
  }

  v84 = v7;
  v85 = v19;
  v86 = v5;
  v90 = v95;
  v28 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v29 = v94;
  v30 = *(v94 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v31 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v30 + v31, v4, type metadata accessor for CRLBoardCRDTData);
  v91 = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v32 = (*(v29 + v28) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v33 = *v32;
  v34 = v32[1];

  sub_10084BD4C(v10, v33, v34, v27);
  v89 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v35 = &v27[*(v89 + 20)];
  if (*v35 || *(v35 + 1) != 0xE000000000000000)
  {
    LODWORD(v87) = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  else
  {
    LODWORD(v87) = 0;
  }

  sub_10003D69C(v27, type metadata accessor for CRLBoardIdentifier);
  v38 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v39 = v90;
  v40 = *(v90 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v41 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v40 + v41, v4, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v88 = v38;
  v42 = (*(v39 + v38) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v43 = *v42;
  v44 = v42[1];

  sub_10084BD4C(v10, v43, v44, v24);
  v45 = &v24[*(v89 + 20)];
  if (*v45 || *(v45 + 1) != 0xE000000000000000)
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    sub_10003D69C(v24, type metadata accessor for CRLBoardIdentifier);
    v66 = (v87 & 1) == v65;
    v46 = v94;
    if (!v66)
    {
      goto LABEL_15;
    }

LABEL_21:
    v67 = *(v46 + v28);
    v68 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v94 = type metadata accessor for CRLBoardCRDTData;
    sub_10004FECC(v67 + v68, v4, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    v92 = type metadata accessor for CRLBoardCRDTData;
    sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
    v69 = (*(v46 + v28) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v70 = *v69;
    v71 = v69[1];

    sub_10084BD4C(v10, v70, v71, v16);
    v72 = v93;
    v89 = *(v93 + 16);
    v73 = v86;
    (v89)(v10, v16, v86);
    v87 = type metadata accessor for CRLBoardIdentifier;
    sub_10003D69C(v16, type metadata accessor for CRLBoardIdentifier);
    v74 = v90;
    v75 = v88;
    v76 = *(v90 + v88);
    v77 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v76 + v77, v4, v94);
    v78 = v84;
    CRRegister.wrappedValue.getter();
    sub_10003D69C(v4, v92);
    v79 = (*(v74 + v75) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v80 = *v79;
    v81 = v79[1];

    sub_10084BD4C(v78, v80, v81, v13);
    (v89)(v78, v13, v73);
    sub_10003D69C(v13, v87);
    v36 = static UUID.== infix(_:_:)();

    v82 = *(v72 + 8);
    v82(v78, v73);
    v82(v10, v73);
    return v36 & 1;
  }

  sub_10003D69C(v24, type metadata accessor for CRLBoardIdentifier);
  v46 = v94;
  if (v87)
  {
    goto LABEL_21;
  }

LABEL_15:
  v47 = *(v46 + v28);
  v48 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v47 + v48, v4, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v49 = (*(v46 + v28) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v50 = *v49;
  v51 = v49[1];

  v52 = v92;
  sub_10084BD4C(v10, v50, v51, v92);
  v53 = v90;
  v54 = v88;
  v55 = *(v90 + v88);
  v56 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v55 + v56, v4, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v57 = (*(v53 + v54) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v58 = *v57;
  v59 = v57[1];

  v60 = v85;
  sub_10084BD4C(v10, v58, v59, v85);
  if (static UUID.== infix(_:_:)())
  {
    v61 = *(v89 + 20);
    v62 = *(v52 + v61);
    v63 = *(v52 + v61 + 8);
    v64 = (v60 + v61);
    if (v62 == *v64 && v63 == v64[1])
    {
      v36 = 1;
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v36 = 0;
  }

  sub_10003D69C(v60, type metadata accessor for CRLBoardIdentifier);
  sub_10003D69C(v52, type metadata accessor for CRLBoardIdentifier);
  return v36 & 1;
}

uint64_t sub_100EB98A4(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v29[-v7];
  sub_10000BE14(a1, v31, &unk_1019F4D00);
  v9 = v32;
  if (v32)
  {
    v10 = sub_100020E58(v31, v32);
    v11 = *(v9 - 8);
    __chkstk_darwin(v10);
    v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v11 + 16))(v13);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v13, v9);
    sub_100005070(v31);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v1 isEqual:v14];
  swift_unknownObjectRelease();
  if (!v15)
  {
    goto LABEL_12;
  }

  sub_10000BE14(a1, v31, &unk_1019F4D00);
  if (!v32)
  {
    sub_10000CAAC(v31, &unk_1019F4D00);
    goto LABEL_12;
  }

  type metadata accessor for CRLBoard(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v27 = 0;
    return v27 & 1;
  }

  v16 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v17 = v30;
  v18 = *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v19 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v16 + v19, v8, type metadata accessor for CRLBoardCRDTData);
  v20 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v18 + v20, v6, type metadata accessor for CRLBoardCRDTData);
  v21 = sub_100084FA4(v8);
  sub_10003D69C(v6, type metadata accessor for CRLBoardCRDTData);
  sub_10003D69C(v8, type metadata accessor for CRLBoardCRDTData);
  if ((v21 & 1) == 0 || (v22 = *(*&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items), v23 = *(*&v17[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items), v24 = sub_1005B981C(&qword_101A228E8), v32 = v24, v31[0] = v23, , , LOBYTE(v23) = sub_100EB6EE0(v31, v22), , sub_10000CAAC(v31, &unk_1019F4D00), (v23 & 1) == 0))
  {

    goto LABEL_12;
  }

  v25 = *(*&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  v26 = *(*&v17[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  v32 = v24;
  v31[0] = v26;

  v27 = sub_100EB6EE0(v31, v25);

  sub_10000CAAC(v31, &unk_1019F4D00);
  return v27 & 1;
}

uint64_t sub_100EB9C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8 & 1;
}

Swift::Int sub_100EB9D68()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Hasher.init()();
  v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v12 + v13, v4, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v14 = (*(v1 + v11) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v15 = *v14;
  v16 = v14[1];

  sub_10084BD4C(v7, v15, v16, v10);
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  sub_10003D69C(v10, type metadata accessor for CRLBoardIdentifier);
  return Hasher.finalize()();
}

uint64_t sub_100EBA32C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v8 + v9, v7, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v7, type metadata accessor for CRLBoardCRDTData);
  if (v12[2] == a1 && v12[3] == a2)
  {
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    v12[0] = a1;
    v12[1] = a2;

    CRRegister.wrappedValue.setter();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100EBA548(char *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = v4;
  v561 = a2;
  v569 = a1;
  v9 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v9 - 8);
  v536 = &v500 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019F6990);
  v12 = __chkstk_darwin(v11 - 8);
  v532 = &v500 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v538 = &v500 - v14;
  v15 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  v16 = __chkstk_darwin(v15 - 8);
  v543 = &v500 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v542 = &v500 - v18;
  v534 = sub_1005B981C(&unk_101A0F400);
  v19 = __chkstk_darwin(v534);
  v541 = &v500 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v540 = &v500 - v22;
  v23 = __chkstk_darwin(v21);
  v539 = &v500 - v24;
  __chkstk_darwin(v23);
  v545 = &v500 - v25;
  v26 = sub_1005B981C(&qword_101A1F610);
  v27 = __chkstk_darwin(v26 - 8);
  v549 = &v500 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v548 = &v500 - v29;
  v30 = sub_1005B981C(&qword_101A22850);
  __chkstk_darwin(v30 - 8);
  v547 = &v500 - v31;
  v558 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  v530 = *(v558 - 8);
  __chkstk_darwin(v558);
  v552 = &v500 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1005B981C(&qword_101A22858);
  v34 = __chkstk_darwin(v33 - 8);
  v555 = &v500 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v553 = &v500 - v36;
  v544 = sub_1005B981C(&unk_101A22860);
  v528 = *(v544 - 8);
  __chkstk_darwin(v544);
  v531 = &v500 - v37;
  v551 = sub_1005B981C(&unk_101A341C0);
  v527 = *(v551 - 8);
  __chkstk_darwin(v551);
  v550 = &v500 - v38;
  *&v556 = sub_1005B981C(&qword_101A22870);
  v529 = *(v556 - 8);
  __chkstk_darwin(v556);
  *&v557 = &v500 - v39;
  v40 = type metadata accessor for CRLBoardIdentifier(0);
  v41 = __chkstk_darwin(v40 - 8);
  v535 = (&v500 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __chkstk_darwin(v41);
  v559 = &v500 - v44;
  v45 = __chkstk_darwin(v43);
  v564 = (&v500 - v46);
  __chkstk_darwin(v45);
  v565 = &v500 - v47;
  v560 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v560);
  v570 = &v500 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v585 = *(v49 - 1);
  v50 = __chkstk_darwin(v49);
  v546 = &v500 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v537 = &v500 - v53;
  v54 = __chkstk_darwin(v52);
  v533 = &v500 - v55;
  v56 = __chkstk_darwin(v54);
  v554 = &v500 - v57;
  v58 = __chkstk_darwin(v56);
  v566 = &v500 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v500 - v61;
  v63 = __chkstk_darwin(v60);
  v579 = &v500 - v64;
  *&v526 = v65;
  __chkstk_darwin(v63);
  v584 = &v500 - v66;
  v581 = sub_1005B981C(&qword_1019FEF98);
  v67 = __chkstk_darwin(v581);
  v573 = &v500 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __chkstk_darwin(v67);
  v580 = (&v500 - v70);
  __chkstk_darwin(v69);
  v574 = &v500 - v71;
  v72 = [objc_opt_self() standardUserDefaults];
  v73 = String._bridgeToObjectiveC()();
  v74 = [v72 BOOLForKey:v73];

  if (v74)
  {
    sub_100EDE564();
    swift_allocError();
    *v75 = xmmword_101463530;
    return swift_willThrow();
  }

  v524 = a4;
  v77 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges];
  v525 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;
  v575 = *(v77 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas);
  v78 = *(v575 + 16);
  v571 = v6;
  v563 = a3;
  v582 = v49;
  v567 = v62;
  v568 = v77;
  if (!v78 && !*(*(v77 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) + 16))
  {
    v79 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
    swift_beginAccess();
    if (!*(*(v77 + v79) + 16))
    {
      v584 = _swiftEmptyArrayStorage;
      goto LABEL_35;
    }
  }

  v80 = (v575 + 64);
  v81 = 1 << *(v575 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v575 + 64);
  v84 = (v81 + 63) >> 6;
  v578 = (v585 + 16);
  v577 = v585 + 32;
  swift_bridgeObjectRetain_n();
  v85 = 0;
  v583 = _swiftEmptyArrayStorage;
  v572 = v80;
  if (v83)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v86 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v574 = v84;
      v575 = a3;
      v227 = v77;
      v228 = v581;
      v229 = *&v49[v581];
      v230 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v231 = v229 + v230;
      v232 = v570;
      sub_10004FECC(v231, v570, type metadata accessor for CRLBoardCRDTData);
      CRRegister.wrappedValue.getter();
      sub_10003D69C(v232, type metadata accessor for CRLBoardCRDTData);
      v233 = (*&v49[v228] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v235 = *v233;
      v234 = v233[1];

      v236 = v559;
      sub_10084BD4C(v85, v235, v234, v559);
      v237 = v569;
      swift_beginAccess();
      v238 = *(v237 + 4);
      v239 = *(v238 + 16);

      if (!v239 || (v240 = sub_1000486F0(v236), (v241 & 1) == 0))
      {

        sub_10003D69C(v236, type metadata accessor for CRLBoardIdentifier);
        sub_100EDE564();
        swift_allocError();
        *v261 = 0;
        v261[1] = 0;
        swift_willThrow();

        goto LABEL_59;
      }

      v242 = *(*(v238 + 56) + 8 * v240);

      sub_10003D69C(v236, type metadata accessor for CRLBoardIdentifier);

      v243 = v571;
      v244 = *&v571[v581];
      v245 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v246 = v244 + v245;
      v247 = v570;
      sub_10004FECC(v246, v570, type metadata accessor for CRLBoardCRDTData);
      type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
      v248 = v567;
      CRRegister.wrappedValue.getter();
      v249 = sub_10003D69C(v247, type metadata accessor for CRLBoardCRDTData);
      v250 = v566;
      (*(**(v242 + 16) + 264))(v249);
      LOBYTE(v244) = static UUID.== infix(_:_:)();
      v251 = v250;
      v252 = v582;
      v253 = v578;
      v578(v251, v582);
      v253(v248, v252);
      if ((v244 & 1) == 0)
      {

        sub_100EDE564();
        swift_allocError();
        *v262 = 0xD00000000000003CLL;
        v262[1] = 0x80000001015ADA90;
        swift_willThrow();

        goto LABEL_59;
      }

      v254 = *(v242 + 16);
      v255 = *&v243[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer];

      v256 = v255;
      sub_1012E0400(v256, &off_10188FE10);
      v257 = v227;
      if (v227)
      {

        goto LABEL_59;
      }

      v258 = *&v256[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
      v259 = *(*v258 + 496);

      v259(v254);
      (*(*v258 + 488))(v254);
      (*(*v258 + 480))(v254);
      v602[0] = *(v254 + 24);
      v602[1] = *(v254 + 40);
      v603 = *(v254 + 56);
      v559 = v254;
      sub_10073E870(v602, *(v254 + 16));

      v260 = v524;
      sub_1012CF6CC(v256, &off_10188FE10, v524);

      v263 = v566;
      (*(*v559 + 264))();
      swift_beginAccess();
      v264 = v567;
      sub_100E6AF38(v567, v263);
      swift_endAccess();
      v578(v264, v582);
      v520 = v242;
      sub_100EBF540(v242, v589, v580, v563 & 1, v571, v561, v260);
      v562 = 0;
      v588 = _swiftEmptySetSingleton;
      v265 = v571;
      v266 = v581;
      v267 = *&v571[v581];
      v268 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v269 = v267 + v268;
      v270 = v570;
      sub_10004FECC(v269, v570, type metadata accessor for CRLBoardCRDTData);
      v271 = v567;
      CRRegister.wrappedValue.getter();
      sub_10003D69C(v270, type metadata accessor for CRLBoardCRDTData);
      v272 = (*&v265[v266] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v274 = *v272;
      v273 = v272[1];

      sub_10084BD4C(v271, v274, v273, v535);
      v275 = v569;
      swift_beginAccess();
      v276 = *(v275 + 5);
      if (*(v276 + 16))
      {

        v277 = sub_1000486F0(v535);
        if (v278)
        {
          v279 = *(*(v276 + 56) + 8 * v277);

          sub_10003D69C(v535, type metadata accessor for CRLBoardIdentifier);

          v280 = *&v571[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager];

          v504 = v279;
          sub_100ED5960(v279);

          v502 = v280;
          v281 = v280;
          v282 = sub_100D8878C();
          v283 = 0;
          v284 = *(v282 + 64);
          v506 = v282 + 64;
          v285 = 1 << *(v282 + 32);
          if (v285 < 64)
          {
            v286 = ~(-1 << v285);
          }

          else
          {
            v286 = -1;
          }

          v516 = v286 & v284;
          v511 = v282;
          v512 = OBJC_IVAR____TtC8Freeform8CRLBoard_store;
          v505 = (v285 + 63) >> 6;
          v535 = v527 + 2;
          ++v527;
          v509 = (v528 + 8);
          v572 = (v585 + 32);
          v564 = (v585 + 16);
          v525 = v526 + 32;
          v522 = (v530 + 48);
          v523 = (v530 + 56);
          v515 = (v585 + 48);
          v508 = xmmword_10146C4D0;
          v501 = xmmword_101465920;
          v500 = xmmword_10146C6B0;
          v510 = (v529 + 8);
          v514 = v580 + 7;
LABEL_83:
          if (v516)
          {
            v513 = v283;
LABEL_89:
            v289 = __clz(__rbit64(v516));
            v516 &= v516 - 1;
            v290 = *(*(v511 + 56) + ((v513 << 9) | (8 * v289)));
            v291 = *(*v290 + 120);
            swift_beginAccess();
            v529 = *v535;
            v530 = v291;
            v292 = v290 + v291;
            v293 = v550;
            v294 = v551;
            (v529)(v550, v292, v551);

            v295 = v531;
            Capsule.root.getter();
            v528 = *v527;
            (v528)(v293, v294);
            v296 = v544;
            CRDictionary.makeIterator()();
            (*v509)(v295, v296);
            v297 = *v290;
            v560 = *(*v290 + 136);
            v298 = *(v297 + 128);
            v565 = v290;
            v521 = v290 + v298;
            v299 = v582;
            v300 = v553;
            v301 = v554;
LABEL_90:
            v302 = v572;
            while (1)
            {
              while (1)
              {
                v264 = v555;
                CRDictionary.Iterator.next()();
                sub_10003DFF8(v264, v300, &qword_101A22858);
                v281 = sub_1005B981C(&qword_101A22898);
                if ((*(*(v281 - 8) + 48))(v300, 1, v281) == 1)
                {
                  (*v510)(v557, v556);

                  v283 = v513;
                  goto LABEL_83;
                }

                v573 = *(v281 + 48);
                v569 = *v302;
                (v569)(v301, v300, v299);
                v257 = v564;
                v304 = *v564;
                v305 = v566;
                (*v564)(v566, v301, v299);
                swift_beginAccess();
                v306 = v567;
                sub_100E6AF38(v567, v305);
                swift_endAccess();
                v307 = v578;
                v578(v306, v299);
                if (*(v565 + v560) != 1)
                {
                  v307(v301, v299);
                  goto LABEL_134;
                }

                v309 = v550;
                v308 = v551;
                (v529)(v550, v565 + v530, v551);
                *&v526 = v304;
                v310 = v304(v306, v301, v299);
                __chkstk_darwin(v310);
                v312 = (&v500 - ((v311 + 15) & 0xFFFFFFFFFFFFFFF0));
                v313 = v558;
                *v312 = v299;
                v312[1] = v313;
                v312[2] = sub_100ED5648(&qword_101A228A8, &type metadata accessor for UUID);
                v312[3] = sub_100ED5648(&unk_101A228B0, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
                (v569)(v312 + 4, v306, v299);
                swift_getKeyPath();
                v314 = v548;
                Capsule.subscript.getter();
                v315 = v309;

                (v528)(v309, v308);
                v316 = v549;
                sub_10000BE14(v314, v549, &qword_101A1F610);
                v317 = sub_1005B981C(&qword_101A228A0);
                v257 = *(v317 - 8);
                if ((*(v257 + 48))(v316, 1, v317) == 1)
                {
                  sub_10000CAAC(v314, &qword_101A1F610);
                  sub_10000CAAC(v316, &qword_101A1F610);
                  v318 = 1;
                  v319 = v547;
                }

                else
                {
                  (v529)(v315, v565 + v530, v308);
                  sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
                  v319 = v547;
                  Ref.subscript.getter();
                  (v528)(v315, v308);
                  sub_10000CAAC(v314, &qword_101A1F610);
                  (*(v257 + 8))(v316, v317);
                  v318 = 0;
                }

                v320 = v317;
                v321 = v558;
                (*v523)(v319, v318, 1, v558);
                v322 = (*v522)(v319, 1, v321);
                v300 = v553;
                v301 = v554;
                v323 = v319;
                v302 = v572;
                if (v322 != 1)
                {
                  break;
                }

                v299 = v582;
                v578(v554, v582);
                sub_10000CAAC(v323, &qword_101A22850);
                v303 = *(v257 + 8);
                v257 += 8;
                v303(v300 + v573, v320);
              }

              sub_100EDD3F4(v319, v552, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
              v324 = *(v521 + 8);
              v599 = *(v521 + 24);
              v598 = v324;
              v600 = 0;
              v601 = 1;
              isa = UUID._bridgeToObjectiveC()().super.isa;
              v326 = [v571 getBoardItemForUUID:isa];

              v518 = v257;
              v519 = v320;
              if (v326)
              {
                type metadata accessor for CRLFreehandDrawingShapeItem();
                v569 = swift_dynamicCastClass();
                if (v569)
                {
                  v327 = v558;
                  v328 = v552;
                  v329 = v545;
                  v257 = &unk_1014746E0;
                  sub_10000BE14(v552 + *(v558 + 20), v545, &unk_101A0F400);
                  v330 = v542;
                  v331 = sub_10004FECC(v328 + *(v327 + 24), v542, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  v332 = *((swift_isaMask & *v326) + 0x3F8);
                  *&v526 = v326;
                  v332(v331);
                  v334 = v333;
                  ObjectType = swift_getObjectType();
                  *&v517 = (*(v334 + 32))(ObjectType, v334);
                  swift_unknownObjectRelease();
                  type metadata accessor for CRLFreehandDrawingShapeItemData(0);
                  v336 = swift_allocObject();
                  v337 = v539;
                  sub_10000BE14(v329, v539, &unk_101A0F400);
                  v338 = v543;
                  sub_10004FECC(v330, v543, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  sub_10004FECC(v338, v336 + *(*v336 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  v339 = v540;
                  sub_10000BE14(v337, v540, &unk_101A0F400);
                  *(v336 + qword_101A27318) = 0;
                  v340 = v541;
                  sub_10000BE14(v339, v541, &unk_101A0F400);
                  sub_10000BE14(v340, v336 + *(*v336 + 736), &unk_101A0F400);
                  CRRegister.wrappedValue.getter();
                  sub_10000CAAC(v340, &unk_101A0F400);
                  sub_10000CAAC(v339, &unk_101A0F400);
                  sub_10003D69C(v338, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  sub_10000CAAC(v337, &unk_101A0F400);
                  sub_10003D69C(v330, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  sub_10000CAAC(v545, &unk_101A0F400);
                  v341 = sub_100747AF0(&v598, v517);
                  v342 = v562;
                  sub_1012E0400(v569, &off_10188FE10);
                  v562 = v342;
                  if (v342 || (v343 = v569, v344 = *&v569[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData], v345 = *(*v344 + 496), , v345(v341), (*(*v344 + 488))(v341), (*(*v344 + 480))(v341), v596[0] = *(v341 + 3), v596[1] = *(v341 + 5), v597 = *(v341 + 56), sub_10073E870(v596, v341[2]), , v346 = v562, sub_1012CF6CC(v343, &off_10188FE10, v524), (v562 = v346) != 0))
                  {

                    sub_10003D69C(v552, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
                    v578(v554, v582);
                    goto LABEL_192;
                  }
                }

                else
                {
                  if (qword_1019F2098 != -1)
                  {
                    swift_once();
                  }

                  v351 = static OS_os_log.crlDefault;
                  v352 = static os_log_type_t.error.getter();
                  sub_100005404(v351, &_mh_execute_header, v352, "Tried to merge freehand drawing shape data to non freehand drawing shape item.", 78, 2, _swiftEmptyArrayStorage);
                }

                sub_10003D69C(v552, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
                v301 = v554;
                v299 = v582;
                v578(v554, v582);
                goto LABEL_133;
              }

              v347 = v552 + *(v558 + 20);
              v257 = sub_1005B981C(&unk_101A0F410);
              *&v517 = v347;
              v348 = v536;
              CRRegister.wrappedValue.getter();
              v349 = v538;
              sub_10000BE14(v348, v538, &qword_1019F6990);
              sub_10003D69C(v348, type metadata accessor for CRLShapeItemParentAffinity);
              v350 = *v515;
              if ((*v515)(v349, 1, v582) == 1)
              {
                sub_10000CAAC(v538, &qword_1019F6990);
              }

              else
              {
                (v569)(v533, v538, v582);
                v353 = UUID._bridgeToObjectiveC()().super.isa;
                v354 = [v571 getBoardItemForUUID:v353];

                v569 = v354;
                if (v354)
                {
                  type metadata accessor for CRLContainerItem(0);
                  if (swift_dynamicCastClass())
                  {
                    if (v580[2])
                    {
                      v355 = v580;
                      sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);
                      v356 = dispatch thunk of Hashable._rawHashValue(seed:)();
                      v357 = -1 << *(v355 + 32);
                      v358 = v356 & ~v357;
                      if ((*(v514 + ((v358 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v358))
                      {
                        v359 = ~v357;
                        v360 = *(v585 + 72);
                        while (1)
                        {
                          v361 = v567;
                          v362 = v582;
                          (v526)(v567, v580[6] + v360 * v358, v582);
                          sub_100ED5648(&qword_1019F37C0, &type metadata accessor for UUID);
                          v363 = dispatch thunk of static Equatable.== infix(_:_:)();
                          v578(v361, v362);
                          if (v363)
                          {
                            break;
                          }

                          v358 = (v358 + 1) & v359;
                          if (((*(v514 + ((v358 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v358) & 1) == 0)
                          {
                            goto LABEL_117;
                          }
                        }

                        v299 = v582;
                        v429 = v578;
                        v578(v533, v582);
                        sub_10003D69C(v552, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
                        v301 = v554;
                        v429(v554, v299);
                        v300 = v553;
                        (*(v518 + 8))(&v553[v573], v519);
                        goto LABEL_90;
                      }
                    }

LABEL_117:
                    v364 = v545;
                    v257 = &unk_1014746E0;
                    sub_10000BE14(v517, v545, &unk_101A0F400);
                    v365 = v542;
                    sub_10004FECC(v552 + *(v558 + 24), v542, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    type metadata accessor for CRLFreehandDrawingShapeItemData(0);
                    v366 = swift_allocObject();
                    v367 = v539;
                    sub_10000BE14(v364, v539, &unk_101A0F400);
                    v368 = v543;
                    sub_10004FECC(v365, v543, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    sub_10004FECC(v368, v366 + *(*v366 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    v369 = v540;
                    sub_10000BE14(v367, v540, &unk_101A0F400);
                    *(v366 + qword_101A27318) = 0;
                    v370 = v541;
                    sub_10000BE14(v369, v541, &unk_101A0F400);
                    sub_10000BE14(v370, v366 + *(*v366 + 736), &unk_101A0F400);
                    CRRegister.wrappedValue.getter();
                    sub_10000CAAC(v370, &unk_101A0F400);
                    sub_10000CAAC(v369, &unk_101A0F400);
                    sub_10003D69C(v368, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    sub_10000CAAC(v367, &unk_101A0F400);
                    sub_10003D69C(v365, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    sub_10000CAAC(v545, &unk_101A0F400);
                    v371 = sub_100747AF0(&v598, 2);
                    v372 = *&v571[v512];
                    v373 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem());
                    *&v373[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
                    *&v373[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
                    v374 = &v373[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
                    *v374 = 0u;
                    *(v374 + 1) = 0u;
                    *(v374 + 2) = 0u;
                    *(v374 + 6) = 0;
                    *&v373[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
                    *&v373[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v372;
                    *&v373[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v371;
                    v375 = type metadata accessor for CRLBoardItemBase(0);
                    v586.receiver = v373;
                    v586.super_class = v375;
                    v376 = v372;

                    v377 = objc_msgSendSuper2(&v586, "init");
                    v378 = *(**&v377[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

                    v380 = v378(v379);

                    [v380 transform];
                    v526 = v590;
                    v517 = v591;
                    v503 = v592;

                    v593 = v526;
                    v594 = v517;
                    v595 = v503;
                    if (sub_10026171C(&v593))
                    {
                      sub_1005B981C(&unk_1019F4D60);
                      v381 = swift_allocObject();
                      *(v381 + 16) = v501;
                      *(v381 + 32) = v377;
                      v382 = v377;
                      v383 = NSNotFound.getter();
                      sub_1005B981C(&unk_101A09DB0);
                      v384 = swift_allocObject();
                      *(v384 + 16) = v500;
                      *(v384 + 32) = v383;
                      v385 = v384 + 32;
                      *(v384 + 40) = v381;
                      v386 = sub_100BD4E94(v384);
                      swift_setDeallocating();
                      sub_10000CAAC(v385, &qword_101A039D0);
                      swift_deallocClassInstance();
                      v387 = v562;
                      sub_100971EFC(v386, v561);
                      v562 = v387;
                      if (v387)
                      {
                        goto LABEL_194;
                      }
                    }

                    else
                    {
                    }

                    v426 = v533;
                    goto LABEL_132;
                  }
                }

                v578(v533, v582);
              }

              if ((v563 & 1) == 0)
              {
                break;
              }

LABEL_131:
              v410 = v545;
              sub_10000BE14(v517, v545, &unk_101A0F400);
              v411 = v542;
              sub_10004FECC(v552 + *(v558 + 24), v542, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              type metadata accessor for CRLFreehandDrawingShapeItemData(0);
              v412 = swift_allocObject();
              v257 = v539;
              sub_10000BE14(v410, v539, &unk_101A0F400);
              v413 = v543;
              sub_10004FECC(v411, v543, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              sub_10004FECC(v413, v412 + *(*v412 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              v414 = v540;
              sub_10000BE14(v257, v540, &unk_101A0F400);
              *(v412 + qword_101A27318) = 0;
              v415 = v541;
              sub_10000BE14(v414, v541, &unk_101A0F400);
              sub_10000BE14(v415, v412 + *(*v412 + 736), &unk_101A0F400);
              CRRegister.wrappedValue.getter();
              sub_10000CAAC(v415, &unk_101A0F400);
              sub_10000CAAC(v414, &unk_101A0F400);
              sub_10003D69C(v413, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              sub_10000CAAC(v257, &unk_101A0F400);
              sub_10003D69C(v411, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              sub_10000CAAC(v545, &unk_101A0F400);
              v416 = sub_100747AF0(&v598, 2);
              v417 = *&v571[v512];
              v418 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem());
              *&v418[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
              *&v418[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
              v419 = &v418[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
              *v419 = 0u;
              *(v419 + 1) = 0u;
              *(v419 + 2) = 0u;
              *(v419 + 6) = 0;
              *&v418[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
              *&v418[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v417;
              *&v418[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v416;
              v420 = type metadata accessor for CRLBoardItemBase(0);
              v587.receiver = v418;
              v587.super_class = v420;
              v421 = v417;

              v422 = objc_msgSendSuper2(&v587, "init");
              v423 = sub_1012DDB58(v422, 0, 1, v561);
              v424 = v566;
              (*(**&v422[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v423);
              v425 = v567;
              sub_100E6AF38(v567, v424);

              v426 = v425;
LABEL_132:
              v299 = v582;
              v427 = v578;
              v578(v426, v582);
              sub_10003D69C(v552, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
              v301 = v554;
              v427(v554, v299);
LABEL_133:
              v300 = v553;
LABEL_134:
              v302 = v572;
              v428 = sub_1005B981C(&qword_101A228A0);
              (*(*(v428 - 8) + 8))(v300 + v573, v428);
            }

            if (qword_1019F22B8 != -1)
            {
              swift_once();
            }

            v569 = static OS_os_log.boardItemLifecycle;
            sub_1005B981C(&qword_1019F54E0);
            v388 = swift_allocObject();
            *(v388 + 16) = v508;
            v389 = UUID.uuidString.getter();
            v391 = v390;
            *(v388 + 56) = &type metadata for String;
            v392 = sub_1000053B0();
            *(v388 + 32) = v389;
            v393 = v392;
            *(v388 + 64) = v392;
            *(v388 + 40) = v391;
            v394 = v536;
            CRRegister.wrappedValue.getter();
            v395 = v532;
            sub_10000BE14(v394, v532, &qword_1019F6990);
            sub_10003D69C(v394, type metadata accessor for CRLShapeItemParentAffinity);
            if (v350(v395, 1, v582) == 1)
            {
              sub_10000CAAC(v532, &qword_1019F6990);
              v396 = (v388 + 72);
              *(v388 + 96) = &type metadata for String;
              *(v388 + 104) = v393;
            }

            else
            {
              v397 = v532;
              v398 = UUID.uuidString.getter();
              v400 = v399;
              v578(v397, v582);
              v396 = (v388 + 72);
              *(v388 + 96) = &type metadata for String;
              *(v388 + 104) = v393;
              if (v400)
              {
                *v396 = v398;
LABEL_130:
                *(v388 + 80) = v400;
                v401 = *&v571[v581];
                v402 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
                swift_beginAccess();
                v403 = v401 + v402;
                v404 = v570;
                sub_10004FECC(v403, v570, type metadata accessor for CRLBoardCRDTData);
                v405 = v567;
                CRRegister.wrappedValue.getter();
                sub_10003D69C(v404, type metadata accessor for CRLBoardCRDTData);
                v406 = UUID.uuidString.getter();
                v408 = v407;
                v578(v405, v582);
                *(v388 + 136) = &type metadata for String;
                *(v388 + 144) = v393;
                *(v388 + 112) = v406;
                *(v388 + 120) = v408;
                v409 = static os_log_type_t.default.getter();
                sub_100005404(v569, &_mh_execute_header, v409, "🚖 mergeDatabaseChanges() found orphaned stroke %{public}@ missing parent %{public}@. Board: %{public}@", 105, 0, v388);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670);
                swift_arrayDestroy();
                swift_deallocClassInstance();
                goto LABEL_131;
              }
            }

            *v396 = 7104878;
            v400 = 0xE300000000000000;
            goto LABEL_130;
          }

          while (1)
          {
            v287 = v283 + 1;
            if (__OFADD__(v283, 1))
            {
              __break(1u);
              goto LABEL_196;
            }

            if (v287 >= v505)
            {
              break;
            }

            v288 = *(v506 + 8 * v287);
            ++v283;
            if (v288)
            {
              v513 = v287;
              v516 = v288;
              goto LABEL_89;
            }
          }

          v281 = *(v502 + 16);
          swift_beginAccess();
          v430 = 0;
          v431 = *(v281 + 16);
          v432 = 1 << *(v431 + 32);
          v433 = -1;
          if (v432 < 64)
          {
            v433 = ~(-1 << v432);
          }

          v434 = v433 & *(v431 + 64);
          for (i = (v432 + 63) >> 6; v434; *(v437 + *(*v437 + 136)) = 0)
          {
            v436 = v430;
LABEL_148:
            v437 = *(*(v431 + 56) + ((v436 << 9) | (8 * __clz(__rbit64(v434)))));
            v434 &= v434 - 1;
          }

          while (1)
          {
            v436 = v430 + 1;
            if (__OFADD__(v430, 1))
            {
              break;
            }

            if (v436 >= i)
            {

              goto LABEL_151;
            }

            v434 = *(v431 + 64 + 8 * v436);
            ++v430;
            if (v434)
            {
              v430 = v436;
              goto LABEL_148;
            }
          }

LABEL_196:
          __break(1u);
          goto LABEL_197;
        }
      }

      sub_10003D69C(v535, type metadata accessor for CRLBoardIdentifier);
LABEL_151:
      v264 = sub_100E93A84(v584);

      swift_beginAccess();

      v580 = sub_100EA61FC(v438);
      v281 = sub_100BD4EA8(_swiftEmptyArrayStorage);
      v257 = *(v568 + v577);
      if (!(v257 >> 62))
      {
        v584 = *((v257 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v584)
        {
LABEL_161:
          v444 = sub_100EA61FC(v281);
          swift_beginAccess();

          v446 = sub_100767620(v445);

          v447 = sub_1010ACAA4(v446, v444);
          v573 = v589[0];
          if (*(v589[0] + 16) <= v580[2] >> 3)
          {
            *&v593 = v580;
            sub_1012D4DC4(v573);
            v448 = v593;
          }

          else
          {
            v448 = sub_1012D5CC4(v573, v580);
          }

          if (*(v264 + 16) <= v448[2] >> 3)
          {
            *&v593 = v448;
            sub_1012D4DC4(v264);

            v449 = v593;
          }

          else
          {
            v449 = sub_1012D5CC4(v264, v448);
          }

          if (*(v447 + 16) <= v449[2] >> 3)
          {
            *&v593 = v449;
            sub_1012D4DC4(v447);

            v584 = v593;
          }

          else
          {
            v584 = sub_1012D5CC4(v447, v449);
          }

          sub_100D87D4C(v588);

          v450 = 0;
          v451 = *(v584 + 56);
          v572 = (v584 + 56);
          v452 = 1 << *(v584 + 32);
          v453 = -1;
          if (v452 < 64)
          {
            v453 = ~(-1 << v452);
          }

          v382 = v453 & v451;
          v569 = ((v452 + 63) >> 6);
          v580 = (v585 + 16);
          v577 = v585 + 32;
          v556 = xmmword_10146BDE0;
          v557 = xmmword_10146C4D0;
          while (v382)
          {
LABEL_181:
            v475 = v585;
            v476 = v537;
            v477 = v582;
            (*(v585 + 16))(v537, *(v584 + 48) + *(v585 + 72) * (__clz(__rbit64(v382)) | (v450 << 6)), v582);
            (*(v475 + 32))(v546, v476, v477);
            v478 = UUID._bridgeToObjectiveC()().super.isa;
            v479 = [v571 getBoardItemForUUID:v478];

            if (v479)
            {
              if ((v563 & 1) == 0)
              {
                if (qword_1019F22B8 != -1)
                {
                  swift_once();
                }

                v565 = static OS_os_log.boardItemLifecycle;
                sub_1005B981C(&qword_1019F54E0);
                inited = swift_initStackObject();
                *(inited + 16) = v557;
                v455 = v567;
                (*((swift_isaMask & *v479) + 0x88))();
                v456 = UUID.uuidString.getter();
                v458 = v457;
                v578(v455, v582);
                *(inited + 56) = &type metadata for String;
                v459 = sub_1000053B0();
                *(inited + 64) = v459;
                *(inited + 32) = v456;
                v564 = (inited + 32);
                *(inited + 40) = v458;
                v460 = v479;
                v461 = [v460 description];
                v560 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v558 = v462;

                *(inited + 96) = &type metadata for String;
                *(inited + 104) = v459;
                v463 = v558;
                *(inited + 72) = v560;
                *(inited + 80) = v463;
                v464 = *&v571[v581];
                v465 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
                swift_beginAccess();
                v466 = v464 + v465;
                v467 = v570;
                sub_10004FECC(v466, v570, type metadata accessor for CRLBoardCRDTData);
                v468 = v566;
                CRRegister.wrappedValue.getter();
                sub_10003D69C(v467, type metadata accessor for CRLBoardCRDTData);
                v469 = UUID.uuidString.getter();
                v471 = v470;
                v578(v468, v582);
                *(inited + 136) = &type metadata for String;
                *(inited + 144) = v459;
                *(inited + 112) = v469;
                *(inited + 120) = v471;
                v472 = static os_log_type_t.default.getter();
                sub_100005404(v565, &_mh_execute_header, v472, "🚖 ⭕ mergeDatabaseChanges() deleted %{public}@%{public}@. Board: %{public}@", 79, 0, inited);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670);
                swift_arrayDestroy();
              }

              v473 = v479;
              sub_1012DCC7C(v473, 0, 0, v561);
            }

            else if ((v563 & 1) == 0)
            {
              if (qword_1019F22B8 != -1)
              {
                swift_once();
              }

              v565 = static OS_os_log.boardItemLifecycle;
              sub_1005B981C(&qword_1019F54E0);
              v480 = swift_initStackObject();
              *(v480 + 16) = v556;
              v481 = UUID.uuidString.getter();
              v483 = v482;
              *(v480 + 56) = &type metadata for String;
              v484 = sub_1000053B0();
              *(v480 + 64) = v484;
              *(v480 + 32) = v481;
              *(v480 + 40) = v483;
              v485 = *&v571[v581];
              v486 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
              swift_beginAccess();
              v487 = v485 + v486;
              v488 = v570;
              sub_10004FECC(v487, v570, type metadata accessor for CRLBoardCRDTData);
              v489 = v567;
              CRRegister.wrappedValue.getter();
              sub_10003D69C(v488, type metadata accessor for CRLBoardCRDTData);
              v490 = UUID.uuidString.getter();
              v492 = v491;
              v578(v489, v582);
              *(v480 + 96) = &type metadata for String;
              *(v480 + 104) = v484;
              *(v480 + 72) = v490;
              *(v480 + 80) = v492;
              v493 = static os_log_type_t.error.getter();
              sub_100005404(v565, &_mh_execute_header, v493, "🚖 ⭕ ERROR: Unable to remove item %{public}@. Board %{public}@", 66, 0, v480);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
            }

            v382 &= v382 - 1;
            v578(v546, v582);
          }

          while (1)
          {
            v474 = v450 + 1;
            if (__OFADD__(v450, 1))
            {
              __break(1u);
LABEL_194:

              v498 = v582;
              v499 = v578;
              v578(v533, v582);
              sub_10003D69C(v552, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
              v499(v554, v498);
LABEL_192:
              (*v510)(v557, v556);

              (*(v518 + 8))(&v553[v573], v519);
            }

            if (v474 >= v569)
            {
              break;
            }

            v382 = v572[v474];
            ++v450;
            if (v382)
            {
              v450 = v474;
              goto LABEL_181;
            }
          }

          v494 = v568;
          v495 = *(v568 + v576);
          v496 = swift_allocObject();
          *(v496 + 16) = sub_100EDE700;
          *(v496 + 24) = v494;
          *&v595 = sub_10002AAE0;
          *(&v595 + 1) = v496;
          *&v593 = _NSConcreteStackBlock;
          *(&v593 + 1) = v5;
          *&v594 = sub_10002AAB8;
          *(&v594 + 1) = &unk_1018A7930;
          v497 = _Block_copy(&v593);

          dispatch_sync(v495, v497);
          _Block_release(v497);
          LOBYTE(v495) = swift_isEscapingClosureAtFileLocation();

          if ((v495 & 1) == 0)
          {
            return result;
          }

          __break(1u);
          goto LABEL_200;
        }

LABEL_153:
        if (v584 >= 1)
        {

          v439 = 0;
          while (1)
          {
            if ((v257 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
            }

            swift_beginAccess();

            v441 = sub_1007727A4(v440);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v593 = v281;
            v443 = v562;
            sub_100EDA0A0(v441, sub_100ED9FEC, 0, isUniquelyReferenced_nonNull_native, sub_100EDA5A4, 0);
            v562 = v443;
            if (v443)
            {
              goto LABEL_201;
            }

            v439 = (v439 + 1);
            v281 = v593;
            if (v584 == v439)
            {

              goto LABEL_161;
            }
          }
        }

LABEL_200:
        __break(1u);
LABEL_201:

        __break(1u);
        return result;
      }

LABEL_197:
      v584 = _CocoaArrayWrapper.endIndex.getter();
      if (!v584)
      {
        goto LABEL_161;
      }

      goto LABEL_153;
    }

    if (v86 >= v84)
    {
      break;
    }

    v83 = v80[v86];
    ++v85;
    if (v83)
    {
      v85 = v86;
      do
      {
LABEL_13:
        v87 = __clz(__rbit64(v83)) | (v85 << 6);
        v88 = v575;
        v89 = *(v575 + 48);
        v90 = v585;
        v576 = *(v585 + 72);
        v91 = v574;
        (*(v585 + 16))(v574, v89 + v576 * v87, v49);
        *&v91[*(v581 + 48)] = *(*(v88 + 56) + 8 * v87);
        v92 = v91;
        v77 = v580;
        sub_10003DFF8(v92, v580, &qword_1019FEF98);

        a3 = *(v90 + 32);
        (a3)(v584, v77, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v583 = sub_100B356D0(0, v583[2] + 1, 1, v583);
        }

        v94 = v583[2];
        v93 = v583[3];
        if (v94 >= v93 >> 1)
        {
          v583 = sub_100B356D0(v93 > 1, v94 + 1, 1, v583);
        }

        v83 &= v83 - 1;
        v95 = v583;
        v583[2] = v94 + 1;
        v96 = v95 + ((*(v585 + 80) + 32) & ~*(v585 + 80)) + v94 * v576;
        v49 = v582;
        (a3)(v96, v584, v582);
        v80 = v572;
      }

      while (v83);
    }
  }

  v97 = *(v568 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);
  v100 = *(v97 + 64);
  v99 = (v97 + 64);
  v98 = v100;
  v101 = 1 << *(*(v568 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v103 = v102 & v98;
  v84 = (v101 + 63) >> 6;
  v575 = *(v568 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);
  swift_bridgeObjectRetain_n();
  v85 = 0;
  v584 = _swiftEmptyArrayStorage;
  v574 = v99;
  if (v103)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v104 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      goto LABEL_64;
    }

    if (v104 >= v84)
    {
      break;
    }

    v103 = *&v99[8 * v104];
    ++v85;
    if (v103)
    {
      v85 = v104;
      do
      {
LABEL_26:
        v105 = __clz(__rbit64(v103)) | (v85 << 6);
        v106 = v575;
        v107 = *(v575 + 48);
        v108 = v585;
        v576 = *(v585 + 72);
        v109 = v573;
        (*(v585 + 16))(v573, v107 + v576 * v105, v49);
        *(v109 + *(v581 + 48)) = *(*(v106 + 56) + 8 * v105);
        v110 = v109;
        v77 = v580;
        sub_10003DFF8(v110, v580, &qword_1019FEF98);

        a3 = *(v108 + 32);
        (a3)(v579, v77, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v584 = sub_100B356D0(0, *(v584 + 16) + 1, 1, v584);
        }

        v112 = *(v584 + 16);
        v111 = *(v584 + 24);
        if (v112 >= v111 >> 1)
        {
          v584 = sub_100B356D0(v111 > 1, v112 + 1, 1, v584);
        }

        v103 &= v103 - 1;
        v113 = v584;
        *(v584 + 16) = v112 + 1;
        v114 = v113 + ((*(v585 + 80) + 32) & ~*(v585 + 80)) + v112 * v576;
        v49 = v582;
        (a3)(v114, v579, v582);
        v99 = v574;
      }

      while (v103);
    }
  }

  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  v115 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0);
  v116 = swift_initStackObject();
  *(v116 + 16) = xmmword_10146C4D0;
  v117 = sub_1005B981C(&qword_101A0A360);
  *(v116 + 56) = v117;
  v118 = sub_10001A2F8(&qword_101A22878, &qword_101A0A360);
  *(v116 + 32) = v583;
  *(v116 + 96) = v117;
  *(v116 + 104) = v118;
  v119 = v584;
  *(v116 + 64) = v118;
  *(v116 + 72) = v119;
  v120 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
  v77 = v568;
  swift_beginAccess();
  v121 = *(v77 + v120);
  *(v116 + 136) = sub_1005B981C(&qword_101A22880);
  *(v116 + 144) = sub_10001A2F8(&qword_101A22888, &qword_101A22880);
  *(v116 + 112) = v121;

  v122 = static os_log_type_t.default.getter();
  sub_100005404(v115, &_mh_execute_header, v122, "🚖 mergeDatabaseChanges() hasSignificantChanges: pendingchanges, removedItemKeys: %{public}@, addedItemKeys: %{public}@, removedNewlyCreatedKeys: %{public}@", 158, 0, v116);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v6 = v571;
  LOBYTE(a3) = v563;
  v62 = v567;
LABEL_35:
  v123 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue;
  v124 = *(v77 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v125 = swift_allocObject();
  *(v125 + 16) = sub_100EDE704;
  *(v125 + 24) = v77;
  *&v595 = sub_10002AAE0;
  *(&v595 + 1) = v125;
  *&v593 = _NSConcreteStackBlock;
  v5 = *"";
  *(&v593 + 1) = *"";
  *&v594 = sub_10002AAB8;
  *(&v594 + 1) = &unk_1018A78E0;
  v126 = _Block_copy(&v593);

  dispatch_sync(v124, v126);
  _Block_release(v126);
  LOBYTE(v124) = swift_isEscapingClosureAtFileLocation();

  if (v124)
  {
    __break(1u);
  }

  else
  {
    v127 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_processingQueue;
    swift_beginAccess();
    v128 = *(v77 + v127);
    v576 = v123;
    v577 = v127;
    if (!(v128 >> 62))
    {
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_38:
    v583 = objc_opt_self();
    v129 = [v583 _atomicIncrementAssertCount];
    *&v593 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v593);
    StaticString.description.getter();
    v581 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v130 = String._bridgeToObjectiveC()();

    v131 = [v130 lastPathComponent];

    v580 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v132;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v134 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v135 = swift_initStackObject();
    *(v135 + 16) = xmmword_10146CA70;
    *(v135 + 56) = &type metadata for Int32;
    *(v135 + 64) = &protocol witness table for Int32;
    *(v135 + 32) = v129;
    v136 = sub_100006370(0, &qword_1019F4D30);
    *(v135 + 96) = v136;
    v137 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v135 + 104) = v137;
    v138 = v581;
    *(v135 + 72) = v581;
    *(v135 + 136) = &type metadata for String;
    v139 = sub_1000053B0();
    *(v135 + 112) = v580;
    *(v135 + 120) = v133;
    *(v135 + 176) = &type metadata for UInt;
    *(v135 + 184) = &protocol witness table for UInt;
    *(v135 + 144) = v139;
    *(v135 + 152) = 276;
    v140 = v593;
    *(v135 + 216) = v136;
    *(v135 + 224) = v137;
    *(v135 + 192) = v140;
    v141 = v138;
    v142 = v140;
    v143 = static os_log_type_t.error.getter();
    sub_100005404(v134, &_mh_execute_header, v143, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v135);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v144 = static os_log_type_t.error.getter();
    sub_100005404(v134, &_mh_execute_header, v144, "If we have unprocessed items while we're about to mergeDatabaseChanges() they might not be considered for created/undeleted pending items.", 138, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v145 = swift_allocObject();
    v145[2] = 8;
    v145[3] = 0;
    v145[4] = 0;
    v145[5] = 0;
    v146 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    a3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v147 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v148 = String._bridgeToObjectiveC()();

    [v583 handleFailureInFunction:a3 file:v147 lineNumber:276 isFatal:0 format:v148 args:v146];

    v6 = v571;
    LOBYTE(a3) = v563;
    v62 = v567;
  }

LABEL_41:
  if (a3)
  {
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v149 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0);
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_10146C6B0;
    v151 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v152 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v153 = v151 + v152;
    v154 = v570;
    sub_10004FECC(v153, v570, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10003D69C(v154, type metadata accessor for CRLBoardCRDTData);
    v155 = UUID.uuidString.getter();
    v157 = v156;
    (*(v585 + 8))(v62, v582);
    *(v150 + 56) = &type metadata for String;
    *(v150 + 64) = sub_1000053B0();
    *(v150 + 32) = v155;
    *(v150 + 40) = v157;
    v6 = v571;
    v158 = static os_log_type_t.default.getter();
    sub_100005404(v149, &_mh_execute_header, v158, "🚖 mergeDatabaseChanges() logs squelched. Board: %{public}@", 61, 0, v150);
    swift_setDeallocating();
    sub_100005070(v150 + 32);
    swift_deallocClassInstance();
  }

  v159 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v160 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v161 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v162 = v160 + v161;
  v163 = v570;
  sub_10004FECC(v162, v570, type metadata accessor for CRLBoardCRDTData);
  v583 = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v163, type metadata accessor for CRLBoardCRDTData);
  v581 = v159;
  v164 = (*&v6[v159] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v166 = *v164;
  v165 = v164[1];

  v167 = v565;
  sub_10084BD4C(v62, v166, v165, v565);
  v168 = v569;
  swift_beginAccess();
  v169 = *(v168 + 2);
  v170 = v582;
  if (!*(v169 + 16))
  {
    goto LABEL_50;
  }

  v171 = sub_1000486F0(v167);
  if ((v172 & 1) == 0)
  {

LABEL_50:
    sub_10003D69C(v167, type metadata accessor for CRLBoardIdentifier);
    goto LABEL_51;
  }

  v173 = *(v169 + 56) + 40 * v171;
  v174 = v167;
  v175 = *v173;
  v176 = *(v173 + 8);
  v177 = v6;
  v178 = *(v173 + 16);
  v179 = *(v173 + 24);
  v180 = *(v173 + 32);
  v580 = v179;

  sub_10003D69C(v174, type metadata accessor for CRLBoardIdentifier);

  v181 = sub_100006370(0, &qword_101A228C8);
  __chkstk_darwin(v181);
  *(&v500 - 8) = v175;
  *(&v500 - 7) = v176;
  *(&v500 - 6) = v178;
  *(&v500 - 5) = v179;
  *(&v500 - 32) = v180;
  v182 = v561;
  *(&v500 - 3) = v177;
  *(&v500 - 2) = v182;
  *(&v500 - 8) = v524;
  v183 = v562;
  sub_100EB7CFC(sub_100EDE648, (&v500 - 5));
  if (v183)
  {
  }

  v562 = 0;

  v6 = v177;
  v170 = v582;
LABEL_51:
  v589[0] = _swiftEmptySetSingleton;
  v184 = v581;
  v185 = *&v6[v581];
  v186 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v580 = type metadata accessor for CRLBoardCRDTData;
  v187 = v570;
  sub_10004FECC(v185 + v186, v570, type metadata accessor for CRLBoardCRDTData);
  v188 = v566;
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v187, type metadata accessor for CRLBoardCRDTData);
  v189 = v567;
  sub_100E6AF38(v567, v188);
  v190 = *(v585 + 8);
  v579 = (v585 + 8);
  v578 = v190;
  v190(v189, v170);

  v192 = sub_100767620(v191);

  swift_beginAccess();

  v194 = sub_1010ACAA4(v193, v192);
  v195 = *&v571[v184];
  v196 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v197 = v195 + v196;
  v198 = v571;
  sub_10004FECC(v197, v187, v580);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v187, type metadata accessor for CRLBoardCRDTData);
  v199 = (*&v198[v184] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v201 = *v199;
  v200 = v199[1];

  v202 = v564;
  sub_10084BD4C(v189, v201, v200, v564);
  v203 = v569;
  swift_beginAccess();
  v204 = *(v203 + 3);
  v205 = *(v204 + 16);

  if (v205 && (v206 = sub_1000486F0(v202), (v207 & 1) != 0))
  {
    a3 = *(*(v204 + 56) + 8 * v206);

    sub_10003D69C(v202, type metadata accessor for CRLBoardIdentifier);

    v208 = *&v198[v581];
    v209 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v210 = v208 + v209;
    v211 = v570;
    sub_10004FECC(v210, v570, type metadata accessor for CRLBoardCRDTData);
    v212 = v567;
    CRRegister.wrappedValue.getter();
    v213 = sub_10003D69C(v211, type metadata accessor for CRLBoardCRDTData);
    v214 = v566;
    (*(**(a3 + 16) + 264))(v213);
    LOBYTE(v208) = static UUID.== infix(_:_:)();
    v215 = v582;
    v216 = v578;
    v578(v214, v582);
    v216(v212, v215);
    if (v208)
    {
      v580 = v194;
      v84 = *(a3 + 16);
      v217 = *&v198[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];

      v218 = v217;
      v219 = v561;
      v220 = v562;
      sub_1012E0400(v218, &off_10188FE10);
      v77 = v220;
      if (!v220)
      {
        v221 = *&v218[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
        v222 = *(*v221 + 496);

        v222(v84);
        (*(*v221 + 488))(v84);
        (*(*v221 + 480))(v84);
        v604[0] = *(v84 + 24);
        v604[1] = *(v84 + 40);
        v605 = *(v84 + 56);
        sub_10073E870(v604, *(v84 + 16));

        v223 = v524;
        sub_1012CF6CC(v218, &off_10188FE10, v524);

        v226 = v566;
        (*(*v84 + 264))();
        swift_beginAccess();
        v85 = v567;
        sub_100E6AF38(v567, v226);
        swift_endAccess();
        v578(v85, v582);
        v49 = v571;
        sub_100EBF540(a3, v589, v580, v563 & 1, v571, v219, v223);
        goto LABEL_65;
      }
    }

    else
    {

      sub_100EDE564();
      swift_allocError();
      *v225 = 0xD000000000000023;
      v225[1] = 0x80000001015ADA60;
      swift_willThrow();
    }

LABEL_59:
  }

  else
  {

    sub_10003D69C(v202, type metadata accessor for CRLBoardIdentifier);
    sub_100EDE564();
    swift_allocError();
    *v224 = 0;
    v224[1] = 0;
    swift_willThrow();
  }
}