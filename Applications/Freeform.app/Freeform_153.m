uint64_t sub_1011E8598(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A2C9D0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  sub_10000BE14(a1, &v15 - v8, &unk_101A2C9D0);
  v10 = *(v7 + 56);
  v11 = _s6CellIDVMa(0);
  (*(v3 + 16))(v5, &v9[*(v11 + 20)], v2);
  sub_1011F0B80(v9, _s6CellIDVMa);
  v12 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  v13 = sub_1005B981C(&qword_1019FA378);
  (*(*(v13 - 8) + 8))(&v9[v10], v13);
  return v12 & 1;
}

void sub_1011E8788(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_101A2C9E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(_s6CellIDVMa(0) - 8);
    v8 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      swift_getKeyPath();
      v10 = Capsule.Ref.subscript.modify();
      sub_1005B981C(&qword_1019FA370);
      CRDictionary.removeValue(forKey:)();
      sub_10000CAAC(v5, &qword_101A2C9E0);
      v10(v11, 0);

      v8 += v9;
      --v6;
    }

    while (v6);
  }
}

id sub_1011E8918()
{
  v1 = v0;
  type metadata accessor for CRLTableItemData();
  swift_dynamicCastClassUnconditional();

  v2 = sub_1011FA8B4(0);

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v4 = objc_allocWithZone(type metadata accessor for CRLTableItem());
  v5 = &v4[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
  *v5 = 0u;
  v5[1] = 0u;
  v4[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] = 1;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v3;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v2;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for CRLBoardItemBase(0);
  v6 = v3;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1011E8A6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A2C890);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  v10 = sub_1005B981C(&qword_101A2C930);
  __chkstk_darwin(v10 - 8);
  v55 = &v53 - v11;
  type metadata accessor for CRLTableItem();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v57 = a1;
    swift_unknownObjectRetain();
    v56 = sub_1011ED8A0(v13, v2);
    type metadata accessor for CRLTableItemData();
    v14 = swift_dynamicCastClassUnconditional();
    v15 = qword_101AD9268;
    swift_beginAccess();
    v16 = *(v5 + 16);
    v16(v9, v14 + v15, v4);
    v17 = swift_dynamicCastClassUnconditional();
    v18 = qword_101AD9268;
    swift_beginAccess();
    v19 = v17 + v18;
    v20 = v54;
    v16(v54, v19, v4);
    v21 = v55;
    Capsule.actionUndoingDifference(from:)();
    v22 = *(v5 + 8);
    v22(v20, v4);
    v22(v9, v4);
    v23 = type metadata accessor for CapsuleUndoAction();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v21, 1, v23) == 1)
    {
      sub_10000CAAC(v21, &qword_101A2C930);
      memset(v58, 0, sizeof(v58));
      v59 = 1;
    }

    else
    {
      v59 = v23;
      v25 = sub_10002C58C(v58);
      (*(v24 + 32))(v25, v21, v23);
    }

    v26 = v56;
    swift_beginAccess();
    sub_100BC1DF4(v58, 10);
    swift_endAccess();
    swift_unknownObjectRelease();
    return v26;
  }

  else
  {
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
    *(inited + 152) = 871;
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

    [v28 handleFailureInFunction:v48 file:v49 lineNumber:871 isFatal:1 format:v50 args:v47];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v51, v52);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1011E9174(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A2C938);
  __chkstk_darwin(v2 - 8);
  v244 = &v232 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v242 = &v232 - v5;
  __chkstk_darwin(v6);
  v240 = &v232 - v7;
  __chkstk_darwin(v8);
  v238 = &v232 - v9;
  __chkstk_darwin(v10);
  v236 = &v232 - v11;
  __chkstk_darwin(v12);
  v246 = &v232 - v13;
  v14 = sub_1005B981C(&qword_101A01F00);
  __chkstk_darwin(v14 - 8);
  v245 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v243 = &v232 - v17;
  __chkstk_darwin(v18);
  v241 = &v232 - v19;
  __chkstk_darwin(v20);
  v239 = &v232 - v21;
  __chkstk_darwin(v22);
  v237 = &v232 - v23;
  __chkstk_darwin(v24);
  v235 = &v232 - v25;
  v26 = sub_1005B981C(&qword_101A2C948);
  __chkstk_darwin(v26 - 8);
  v247 = (&v232 - v27);
  v28 = sub_1005B981C(&qword_101A2C950);
  __chkstk_darwin(v28 - 8);
  v234 = &v232 - v29;
  v30 = sub_1005B981C(&qword_101A2C958);
  __chkstk_darwin(v30 - 8);
  v233 = &v232 - v31;
  v32 = sub_1005B981C(&qword_101A2C960);
  __chkstk_darwin(v32 - 8);
  v232 = &v232 - v33;
  v254 = sub_1005B981C(&qword_101A2C968);
  v250 = *(v254 - 8);
  __chkstk_darwin(v254);
  v253 = &v232 - v34;
  v35 = sub_1005B981C(&unk_101A2C890);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v252 = &v232 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v232 - v39;
  v41 = sub_1005B981C(&unk_101A2C970);
  __chkstk_darwin(v41 - 8);
  v255 = &v232 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v251 = &v232 - v44;
  type metadata accessor for CRLTableItem();
  v45 = swift_dynamicCastClass();
  if (v45)
  {
    v46 = v45;
    v248 = a1;
    swift_unknownObjectRetain();
    v249 = sub_1011EDC24(v46);
    type metadata accessor for CRLTableItemData();
    v47 = swift_dynamicCastClassUnconditional();
    v48 = qword_101AD9268;
    swift_beginAccess();
    v49 = *(v36 + 16);
    v49(v40, v47 + v48, v35);
    v50 = swift_dynamicCastClassUnconditional();
    v51 = qword_101AD9268;
    swift_beginAccess();
    v52 = v50 + v51;
    v53 = v252;
    v49(v252, v52, v35);
    v54 = v251;
    Capsule.observableDifference(from:)();
    v55 = *(v36 + 8);
    v55(v53, v35);
    v55(v40, v35);
    v56 = v255;
    sub_10000BE14(v54, v255, &unk_101A2C970);
    v57 = v250;
    v58 = v254;
    if ((*(v250 + 48))(v56, 1, v254) == 1)
    {
      sub_10000CAAC(v56, &unk_101A2C970);
      v255 = _swiftEmptyArrayStorage;
      goto LABEL_82;
    }

    v59 = v253;
    (*(v57 + 32))(v253, v56, v58);
    swift_getKeyPath();
    v60 = v232;
    Capsule.ObservableDifference.subscript.getter();

    v61 = sub_1005B981C(&unk_101A09E40);
    v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
    sub_10000CAAC(v60, &qword_101A2C960);
    if (v62 == 1)
    {
      v255 = _swiftEmptyArrayStorage;
    }

    else
    {
      v63 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
      v65 = *(v63 + 2);
      v64 = *(v63 + 3);
      v255 = v63;
      v66 = v246;
      if (v65 >= v64 >> 1)
      {
        v255 = sub_100024CBC((v64 > 1), v65 + 1, 1, v255);
      }

      v67 = v255;
      *(v255 + 2) = v65 + 1;
      v68 = &v67[16 * v65];
      *(v68 + 4) = 0xD000000000000011;
      *(v68 + 5) = 0x800000010158B630;
      if (v249[2])
      {
        sub_1007C8124(1);
        if (v69)
        {
LABEL_14:
          swift_getKeyPath();
          v92 = v233;
          Capsule.ObservableDifference.subscript.getter();

          v93 = sub_1005B981C(&qword_101A2C980);
          v94 = (*(*(v93 - 8) + 48))(v92, 1, v93);
          sub_10000CAAC(v92, &qword_101A2C958);
          if (v94 != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v255 = sub_100024CBC(0, *(v255 + 2) + 1, 1, v255);
            }

            v96 = *(v255 + 2);
            v95 = *(v255 + 3);
            if (v96 >= v95 >> 1)
            {
              v255 = sub_100024CBC((v95 > 1), v96 + 1, 1, v255);
            }

            v97 = v255;
            *(v255 + 2) = v96 + 1;
            v98 = &v97[16 * v96];
            *(v98 + 4) = 1937207154;
            *(v98 + 5) = 0xE400000000000000;
          }

          swift_getKeyPath();
          v99 = v234;
          Capsule.ObservableDifference.subscript.getter();

          v100 = sub_1005B981C(&qword_101A2C988);
          v101 = (*(*(v100 - 8) + 48))(v99, 1, v100);
          sub_10000CAAC(v99, &qword_101A2C950);
          if (v101 != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v255 = sub_100024CBC(0, *(v255 + 2) + 1, 1, v255);
            }

            v103 = *(v255 + 2);
            v102 = *(v255 + 3);
            if (v103 >= v102 >> 1)
            {
              v255 = sub_100024CBC((v102 > 1), v103 + 1, 1, v255);
            }

            v104 = v255;
            *(v255 + 2) = v103 + 1;
            v105 = &v104[16 * v103];
            *(v105 + 4) = 0x736E6D756C6F63;
            *(v105 + 5) = 0xE700000000000000;
          }

          swift_getKeyPath();
          v106 = v247;
          Capsule.ObservableDifference.subscript.getter();

          v107 = sub_1005B981C(&qword_101A2C990);
          v108 = (*(*(v107 - 8) + 48))(v106, 1, v107);
          sub_10000CAAC(v106, &qword_101A2C948);
          if (v108 != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v255 = sub_100024CBC(0, *(v255 + 2) + 1, 1, v255);
            }

            v110 = *(v255 + 2);
            v109 = *(v255 + 3);
            if (v110 >= v109 >> 1)
            {
              v255 = sub_100024CBC((v109 > 1), v110 + 1, 1, v255);
            }

            v111 = v255;
            *(v255 + 2) = v110 + 1;
            v112 = &v111[16 * v110];
            *(v112 + 4) = 0x736C6C6563;
            *(v112 + 5) = 0xE500000000000000;
          }

          swift_getKeyPath();
          Capsule.ObservableDifference.subscript.getter();

          v113 = sub_1005B981C(&qword_101A2C998);
          v114 = *(v113 - 1);
          v115 = *(v114 + 48);
          v252 = (v114 + 48);
          v116 = v115(v66, 1, v113);
          v247 = v115;
          if (v116 == 1)
          {
            sub_10000CAAC(v66, &unk_101A2C938);
            v117 = type metadata accessor for CRValueObservableDifference();
            v118 = v235;
            (*(*(v117 - 8) + 56))(v235, 1, 1, v117);
            v119 = v236;
          }

          else
          {
            v120 = v113[12];
            v233 = v113[16];
            v234 = v120;
            v121 = v113[20];
            v122 = v113[24];
            v123 = v113[28];
            v124 = v235;
            sub_10003DFF8(v66, v235, &qword_101A01F00);
            v125 = v253;
            sub_10000CAAC(v66 + v123, &qword_101A01F00);
            v58 = v254;
            sub_10000CAAC(v66 + v122, &qword_101A01F00);
            sub_10000CAAC(v66 + v121, &qword_101A01F00);
            sub_10000CAAC(v66 + v233, &qword_101A01F00);
            v59 = v125;
            v115 = v247;
            v118 = v124;
            sub_10000CAAC(&v234[v66], &qword_101A01F00);
            v126 = type metadata accessor for CRValueObservableDifference();
            v127 = (*(*(v126 - 8) + 48))(v124, 1, v126);
            v119 = v236;
            if (v127 != 1)
            {
              sub_10000CAAC(v124, &qword_101A01F00);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v255 = sub_100024CBC(0, *(v255 + 2) + 1, 1, v255);
              }

              v129 = *(v255 + 2);
              v128 = *(v255 + 3);
              if (v129 >= v128 >> 1)
              {
                v255 = sub_100024CBC((v128 > 1), v129 + 1, 1, v255);
              }

              v130 = v255;
              *(v255 + 2) = v129 + 1;
              v131 = &v130[16 * v129];
              strcpy(v131 + 32, "borderStroke");
              v131[45] = 0;
              *(v131 + 23) = -5120;
LABEL_41:
              swift_getKeyPath();
              Capsule.ObservableDifference.subscript.getter();

              if (v115(v119, 1, v113) == 1)
              {
                sub_10000CAAC(v119, &unk_101A2C938);
                v132 = type metadata accessor for CRValueObservableDifference();
                v133 = v237;
                (*(*(v132 - 8) + 56))(v237, 1, 1, v132);
                v134 = v238;
              }

              else
              {
                v135 = v113[16];
                v136 = v113[20];
                v137 = v113[24];
                v138 = v113[28];
                v139 = v237;
                sub_10003DFF8(v119 + v113[12], v237, &qword_101A01F00);
                sub_10000CAAC(v119 + v138, &qword_101A01F00);
                sub_10000CAAC(v119 + v137, &qword_101A01F00);
                v59 = v253;
                sub_10000CAAC(v119 + v136, &qword_101A01F00);
                v58 = v254;
                sub_10000CAAC(v119 + v135, &qword_101A01F00);
                v133 = v139;
                v115 = v247;
                sub_10000CAAC(v119, &qword_101A01F00);
                v140 = type metadata accessor for CRValueObservableDifference();
                v141 = (*(*(v140 - 8) + 48))(v133, 1, v140);
                v134 = v238;
                if (v141 != 1)
                {
                  sub_10000CAAC(v133, &qword_101A01F00);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v255 = sub_100024CBC(0, *(v255 + 2) + 1, 1, v255);
                  }

                  v143 = *(v255 + 2);
                  v142 = *(v255 + 3);
                  if (v143 >= v142 >> 1)
                  {
                    v255 = sub_100024CBC((v142 > 1), v143 + 1, 1, v255);
                  }

                  v144 = v255;
                  *(v255 + 2) = v143 + 1;
                  v145 = &v144[16 * v143];
                  *(v145 + 4) = 0x7453726564726F62;
                  *(v145 + 5) = 0xEB00000000656C79;
LABEL_50:
                  swift_getKeyPath();
                  Capsule.ObservableDifference.subscript.getter();

                  if (v115(v134, 1, v113) == 1)
                  {
                    sub_10000CAAC(v134, &unk_101A2C938);
                    v146 = type metadata accessor for CRValueObservableDifference();
                    v147 = v239;
                    (*(*(v146 - 8) + 56))(v239, 1, 1, v146);
                    v148 = v240;
                  }

                  else
                  {
                    v149 = v113[12];
                    v150 = v113[20];
                    v151 = v113[24];
                    v152 = v113[28];
                    v153 = v239;
                    sub_10003DFF8(v134 + v113[16], v239, &qword_101A01F00);
                    sub_10000CAAC(v134 + v152, &qword_101A01F00);
                    sub_10000CAAC(v134 + v151, &qword_101A01F00);
                    v59 = v253;
                    sub_10000CAAC(v134 + v150, &qword_101A01F00);
                    v58 = v254;
                    sub_10000CAAC(v134 + v149, &qword_101A01F00);
                    v147 = v153;
                    v115 = v247;
                    sub_10000CAAC(v134, &qword_101A01F00);
                    v154 = type metadata accessor for CRValueObservableDifference();
                    v155 = (*(*(v154 - 8) + 48))(v147, 1, v154);
                    v148 = v240;
                    if (v155 != 1)
                    {
                      sub_10000CAAC(v147, &qword_101A01F00);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v255 = sub_100024CBC(0, *(v255 + 2) + 1, 1, v255);
                      }

                      v157 = *(v255 + 2);
                      v156 = *(v255 + 3);
                      if (v157 >= v156 >> 1)
                      {
                        v255 = sub_100024CBC((v156 > 1), v157 + 1, 1, v255);
                      }

                      v158 = v255;
                      *(v255 + 2) = v157 + 1;
                      v159 = &v158[16 * v157];
                      *(v159 + 4) = 0xD000000000000011;
                      *(v159 + 5) = 0x800000010158B480;
LABEL_59:
                      swift_getKeyPath();
                      v160 = v59;
                      Capsule.ObservableDifference.subscript.getter();

                      if (v115(v148, 1, v113) == 1)
                      {
                        sub_10000CAAC(v148, &unk_101A2C938);
                        v161 = type metadata accessor for CRValueObservableDifference();
                        v162 = v241;
                        (*(*(v161 - 8) + 56))(v241, 1, 1, v161);
                      }

                      else
                      {
                        v246 = v113[12];
                        v163 = v113[16];
                        v164 = v113[24];
                        v165 = v113[28];
                        v166 = v148 + v113[20];
                        v167 = v148;
                        v162 = v241;
                        sub_10003DFF8(v166, v241, &qword_101A01F00);
                        sub_10000CAAC(v167 + v165, &qword_101A01F00);
                        sub_10000CAAC(v167 + v164, &qword_101A01F00);
                        v160 = v253;
                        sub_10000CAAC(v167 + v163, &qword_101A01F00);
                        v58 = v254;
                        sub_10000CAAC(v167 + v246, &qword_101A01F00);
                        v168 = v167;
                        v115 = v247;
                        sub_10000CAAC(v168, &qword_101A01F00);
                        v169 = type metadata accessor for CRValueObservableDifference();
                        if ((*(*(v169 - 8) + 48))(v162, 1, v169) != 1)
                        {
                          sub_10000CAAC(v162, &qword_101A01F00);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v255 = sub_100024CBC(0, *(v255 + 2) + 1, 1, v255);
                          }

                          v170 = v242;
                          v172 = *(v255 + 2);
                          v171 = *(v255 + 3);
                          if (v172 >= v171 >> 1)
                          {
                            v255 = sub_100024CBC((v171 > 1), v172 + 1, 1, v255);
                          }

                          v173 = v255;
                          *(v255 + 2) = v172 + 1;
                          v174 = &v173[16 * v172];
                          *(v174 + 4) = 0xD000000000000010;
                          *(v174 + 5) = 0x80000001015C54C0;
LABEL_68:
                          swift_getKeyPath();
                          Capsule.ObservableDifference.subscript.getter();

                          if (v115(v170, 1, v113) == 1)
                          {
                            sub_10000CAAC(v170, &unk_101A2C938);
                            v175 = type metadata accessor for CRValueObservableDifference();
                            v176 = v243;
                            (*(*(v175 - 8) + 56))(v243, 1, 1, v175);
                            v177 = v245;
                          }

                          else
                          {
                            v246 = v113[12];
                            v178 = v113[16];
                            v179 = v113[20];
                            v180 = v113[28];
                            v181 = v170 + v113[24];
                            v182 = v170;
                            v176 = v243;
                            sub_10003DFF8(v181, v243, &qword_101A01F00);
                            sub_10000CAAC(v182 + v180, &qword_101A01F00);
                            sub_10000CAAC(v182 + v179, &qword_101A01F00);
                            v160 = v253;
                            sub_10000CAAC(v182 + v178, &qword_101A01F00);
                            v58 = v254;
                            sub_10000CAAC(v182 + v246, &qword_101A01F00);
                            v183 = v182;
                            v115 = v247;
                            sub_10000CAAC(v183, &qword_101A01F00);
                            v184 = type metadata accessor for CRValueObservableDifference();
                            v185 = (*(*(v184 - 8) + 48))(v176, 1, v184);
                            v177 = v245;
                            if (v185 != 1)
                            {
                              sub_10000CAAC(v176, &qword_101A01F00);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v255 = sub_100024CBC(0, *(v255 + 2) + 1, 1, v255);
                              }

                              v186 = v244;
                              v188 = *(v255 + 2);
                              v187 = *(v255 + 3);
                              if (v188 >= v187 >> 1)
                              {
                                v255 = sub_100024CBC((v187 > 1), v188 + 1, 1, v255);
                              }

                              v189 = v255;
                              *(v255 + 2) = v188 + 1;
                              v190 = &v189[16 * v188];
                              *(v190 + 4) = 0x4C54527369;
                              *(v190 + 5) = 0xE500000000000000;
                              goto LABEL_77;
                            }
                          }

                          sub_10000CAAC(v176, &qword_101A01F00);
                          v186 = v244;
LABEL_77:
                          swift_getKeyPath();
                          Capsule.ObservableDifference.subscript.getter();

                          if (v115(v186, 1, v113) == 1)
                          {
                            (*(v250 + 8))(v160, v58);
                            sub_10000CAAC(v186, &unk_101A2C938);
                            v191 = type metadata accessor for CRValueObservableDifference();
                            (*(*(v191 - 8) + 56))(v177, 1, 1, v191);
                          }

                          else
                          {
                            v192 = v113[12];
                            v193 = v113[16];
                            v194 = v113[20];
                            v195 = v113[24];
                            sub_10003DFF8(v186 + v113[28], v177, &qword_101A01F00);
                            sub_10000CAAC(v186 + v195, &qword_101A01F00);
                            sub_10000CAAC(v186 + v194, &qword_101A01F00);
                            sub_10000CAAC(v186 + v193, &qword_101A01F00);
                            sub_10000CAAC(v186 + v192, &qword_101A01F00);
                            sub_10000CAAC(v186, &qword_101A01F00);
                            v196 = type metadata accessor for CRValueObservableDifference();
                            if ((*(*(v196 - 8) + 48))(v177, 1, v196) != 1)
                            {
                              sub_10000CAAC(v177, &qword_101A01F00);
                              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                              v202 = v253;
                              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                              {
                                v255 = sub_100024CBC(0, *(v255 + 2) + 1, 1, v255);
                              }

                              v54 = v251;
                              v204 = *(v255 + 2);
                              v203 = *(v255 + 3);
                              if (v204 >= v203 >> 1)
                              {
                                v255 = sub_100024CBC((v203 > 1), v204 + 1, 1, v255);
                              }

                              (*(v250 + 8))(v202);
                              v205 = v255;
                              *(v255 + 2) = v204 + 1;
                              v206 = &v205[16 * v204];
                              *(v206 + 4) = 0x6C6946726F6C6F63;
                              *(v206 + 5) = 0xE90000000000006CLL;
                              goto LABEL_82;
                            }

                            (*(v250 + 8))(v253, v254);
                          }

                          sub_10000CAAC(v177, &qword_101A01F00);
                          v54 = v251;
LABEL_82:
                          if (*(v255 + 2))
                          {
                            v197 = v249;
                            v198 = swift_isUniquelyReferenced_nonNull_native();
                            v256 = v197;
                            sub_100A9B080(v255, 10, v198);
                            swift_unknownObjectRelease();
                            v199 = v256;
                            sub_10000CAAC(v54, &unk_101A2C970);
                          }

                          else
                          {
                            sub_10000CAAC(v54, &unk_101A2C970);

                            swift_unknownObjectRelease();
                            return v249;
                          }

                          return v199;
                        }
                      }

                      sub_10000CAAC(v162, &qword_101A01F00);
                      v170 = v242;
                      goto LABEL_68;
                    }
                  }

                  sub_10000CAAC(v147, &qword_101A01F00);
                  goto LABEL_59;
                }
              }

              sub_10000CAAC(v133, &qword_101A01F00);
              goto LABEL_50;
            }
          }

          sub_10000CAAC(v118, &qword_101A01F00);
          goto LABEL_41;
        }
      }

      v252 = objc_opt_self();
      v70 = [v252 _atomicIncrementAssertCount];
      v256 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v256);
      StaticString.description.getter();
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v72 = String._bridgeToObjectiveC()();

      v73 = [v72 lastPathComponent];

      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v77 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v70;
      v79 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v79;
      v80 = sub_1005CF04C();
      *(inited + 104) = v80;
      *(inited + 72) = v71;
      *(inited + 136) = &type metadata for String;
      v81 = sub_1000053B0();
      *(inited + 112) = v74;
      *(inited + 120) = v76;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v81;
      *(inited + 152) = 892;
      v82 = v256;
      *(inited + 216) = v79;
      *(inited + 224) = v80;
      *(inited + 192) = v82;
      v83 = v71;
      v84 = v82;
      v85 = static os_log_type_t.error.getter();
      sub_100005404(v77, &_mh_execute_header, v85, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v86 = static os_log_type_t.error.getter();
      sub_100005404(v77, &_mh_execute_header, v86, "if the containerCRDTData has changed, super should have built keys for it already", 81, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v87 = swift_allocObject();
      v87[2] = 8;
      v87[3] = 0;
      v87[4] = 0;
      v87[5] = 0;
      v88 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v89 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v90 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v91 = String._bridgeToObjectiveC()();

      [v252 handleFailureInFunction:v89 file:v90 lineNumber:892 isFatal:0 format:v91 args:v88];

      v59 = v253;
      v58 = v254;
    }

    v66 = v246;
    goto LABEL_14;
  }

  v207 = objc_opt_self();
  v208 = [v207 _atomicIncrementAssertCount];
  v257 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v257);
  StaticString.description.getter();
  v209 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v210 = String._bridgeToObjectiveC()();

  v211 = [v210 lastPathComponent];

  v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v214 = v213;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v215 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v216 = swift_initStackObject();
  *(v216 + 16) = xmmword_10146CA70;
  *(v216 + 56) = &type metadata for Int32;
  *(v216 + 64) = &protocol witness table for Int32;
  *(v216 + 32) = v208;
  v217 = sub_100006370(0, &qword_1019F4D30);
  *(v216 + 96) = v217;
  v218 = sub_1005CF04C();
  *(v216 + 104) = v218;
  *(v216 + 72) = v209;
  *(v216 + 136) = &type metadata for String;
  v219 = sub_1000053B0();
  *(v216 + 112) = v212;
  *(v216 + 120) = v214;
  *(v216 + 176) = &type metadata for UInt;
  *(v216 + 184) = &protocol witness table for UInt;
  *(v216 + 144) = v219;
  *(v216 + 152) = 882;
  v220 = v257;
  *(v216 + 216) = v217;
  *(v216 + 224) = v218;
  *(v216 + 192) = v220;
  v221 = v209;
  v222 = v220;
  v223 = static os_log_type_t.error.getter();
  sub_100005404(v215, &_mh_execute_header, v223, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v216);

  v224 = static os_log_type_t.error.getter();
  sub_100005404(v215, &_mh_execute_header, v224, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v225 = swift_allocObject();
  v225[2] = 8;
  v225[3] = 0;
  v225[4] = 0;
  v225[5] = 0;
  v226 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v227 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v228 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v229 = String._bridgeToObjectiveC()();

  [v207 handleFailureInFunction:v227 file:v228 lineNumber:882 isFatal:1 format:v229 args:v226];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v230, v231);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1011EB310(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A2C930);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for CapsuleUndoAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10096B2B0(a1);
  if (!v1)
  {
    v14 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v15 = *(a1 + v14);
    if (*(v15 + 16))
    {

      v16 = sub_1007C8124(10);
      if (v17)
      {
        sub_10000BE14(*(v15 + 56) + 32 * v16, &v21, &unk_1019F4D00);

        v23[0] = v21;
        v23[1] = v22;
        if (*(&v22 + 1))
        {
          v18 = swift_dynamicCast();
          v19 = *(v10 + 56);
          v19(v8, v18 ^ 1u, 1, v9);
          if ((*(v10 + 48))(v8, 1, v9) != 1)
          {
            (*(v10 + 32))(v12, v8, v9);
            type metadata accessor for CRLTableItemData();
            swift_dynamicCastClassUnconditional();
            (*(v10 + 16))(v5, v12, v9);
            v19(v5, 0, 1, v9);
            swift_beginAccess();

            sub_1005B981C(&unk_101A2C890);
            Capsule.apply(_:)();
            sub_10000CAAC(v5, &qword_101A2C930);
            swift_endAccess();

            return (*(v10 + 8))(v12, v9);
          }

          return sub_10000CAAC(v8, &qword_101A2C930);
        }

        sub_10000CAAC(v23, &unk_1019F4D00);
      }

      else
      {
      }
    }

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_10000CAAC(v8, &qword_101A2C930);
  }

  return result;
}

char *sub_1011EB6CC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4;
  v169 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v169);
  v168 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v171 = &v151 - v12;
  v174 = sub_1005B981C(&unk_101A2C890);
  v13 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v151 - v14;
  v172 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v172);
  v167 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v170 = &v151 - v17;
  if (a3 == 10)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {

      return sub_10096B6D8(a1, a2, a3, a4);
    }
  }

  v177 = *(a2 + 16);
  if (!v177)
  {
    return result;
  }

  v20 = 0;
  v21 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v175 = OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid;
  v176 = a2 + 32;
  v163 = 0x80000001015C54C0;
  v164 = 0x800000010158B480;
  v165 = (v13 + 8);
  v166 = (v13 + 16);
  v22 = &unk_1019F4D00;
  v162 = xmmword_10146C6B0;
  v161 = xmmword_10146CA70;
  while (1)
  {
    v25 = (v176 + 16 * v20);
    v27 = *v25;
    v26 = v25[1];
    v28 = *v25 == 0xD000000000000011 && 0x800000010158B630 == v26;
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v49 = v27 == 1937207154 && v26 == 0xE400000000000000;
    if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      type metadata accessor for CRLTableItemData();
      swift_dynamicCastClassUnconditional();

      v23 = sub_1011FAF9C();

      *(&v179 + 1) = sub_1005B981C(&unk_101A2C920);
      *&v178 = v23;
      sub_10000BE14(&v178, &v201, v22);
      swift_beginAccess();
      v24 = 58;
    }

    else
    {
      v50 = v27 == 0x736E6D756C6F63 && v26 == 0xE700000000000000;
      if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v27 == 0x736C6C6563 && v26 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData();
          swift_dynamicCastClassUnconditional();

          v52 = sub_1011FD9CC();

          *(&v179 + 1) = sub_1005B981C(&qword_101A2C910);
          *&v178 = v52;
          sub_10000BE14(&v178, &v201, v22);
          swift_beginAccess();
          sub_100BC1F00(&v201, 60);
          goto LABEL_30;
        }

        if (v27 == 0x7453726564726F62 && v26 == 0xEC000000656B6F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData();
          v53 = swift_dynamicCastClassUnconditional();
          v54 = qword_101AD9268;
          swift_beginAccess();
          v55 = v53 + v54;
          v56 = v173;
          v57 = v174;
          (*v166)(v173, v55, v174);
          v58 = v22;
          v59 = v170;
          Capsule.root.getter();
          (*v165)(v56, v57);
          v60 = v171;
          sub_1011F0BE0(&v59[*(v172 + 32)], v171, _s13StyleCRDTDataVMa);
          v61 = v59;
          v22 = v58;
          sub_1011F0B80(v61, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&qword_101A2C7B0);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v60, _s13StyleCRDTDataVMa);
          v208[12] = v190;
          v208[13] = v191;
          v209 = v192;
          v208[8] = v186;
          v208[9] = v187;
          v208[11] = v189;
          v208[10] = v188;
          v208[4] = v182;
          v208[5] = v183;
          v208[6] = v184;
          v208[7] = v185;
          v208[0] = v178;
          v208[1] = v179;
          v208[2] = v180;
          v208[3] = v181;
          v62 = sub_100B946C8(v208, 0);
          sub_100B98B80(v208);
          *(&v179 + 1) = sub_100006370(0, &qword_101A0C7F0);
          *&v178 = v62;
          sub_10000BE14(&v178, &v201, v58);
          swift_beginAccess();
          sub_100BC1F00(&v201, 61);
          goto LABEL_30;
        }

        if (v27 == 0x7453726564726F62 && v26 == 0xEB00000000656C79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData();
          v63 = swift_dynamicCastClassUnconditional();
          v64 = qword_101AD9268;
          swift_beginAccess();
          v65 = v63 + v64;
          v66 = v173;
          v67 = v174;
          (*v166)(v173, v65, v174);
          v68 = v22;
          v69 = v170;
          Capsule.root.getter();
          (*v165)(v66, v67);
          v70 = v171;
          sub_1011F0BE0(&v69[*(v172 + 32)], v171, _s13StyleCRDTDataVMa);
          v71 = v69;
          v22 = v68;
          sub_1011F0B80(v71, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&unk_101A2D9E0);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v70, _s13StyleCRDTDataVMa);
          *(&v179 + 1) = &_s13StyleCRDTDataV11BorderStyleVN;
          sub_10000BE14(&v178, &v201, v68);
          swift_beginAccess();
          sub_100BC1F00(&v201, 62);
          goto LABEL_30;
        }

        if (v27 == 0xD000000000000011 && v164 == v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData();
          v72 = swift_dynamicCastClassUnconditional();
          v73 = qword_101AD9268;
          swift_beginAccess();
          v74 = v72 + v73;
          v75 = v173;
          v76 = v174;
          (*v166)(v173, v74, v174);
          v77 = v22;
          v78 = v170;
          Capsule.root.getter();
          (*v165)(v75, v76);
          v79 = v171;
          sub_1011F0BE0(&v78[*(v172 + 32)], v171, _s13StyleCRDTDataVMa);
          v80 = v78;
          v22 = v77;
          sub_1011F0B80(v80, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&qword_101A2C810);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v79, _s13StyleCRDTDataVMa);
          *(&v179 + 1) = &type metadata for Bool;
          sub_10000BE14(&v178, &v201, v77);
          swift_beginAccess();
          sub_100BC1F00(&v201, 63);
          goto LABEL_30;
        }

        if (v27 == 0xD000000000000010 && v163 == v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData();
          v82 = swift_dynamicCastClassUnconditional();
          v83 = qword_101AD9268;
          swift_beginAccess();
          v84 = v82 + v83;
          v85 = v173;
          v86 = v174;
          (*v166)(v173, v84, v174);
          v87 = v22;
          v88 = v170;
          Capsule.root.getter();
          (*v165)(v85, v86);
          v89 = v171;
          sub_1011F0BE0(&v88[*(v172 + 32)], v171, _s13StyleCRDTDataVMa);
          v90 = v88;
          v22 = v87;
          sub_1011F0B80(v90, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&qword_101A2C810);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v89, _s13StyleCRDTDataVMa);
          *(&v179 + 1) = &type metadata for Bool;
          sub_10000BE14(&v178, &v201, v87);
          swift_beginAccess();
          sub_100BC1F00(&v201, 64);
          goto LABEL_30;
        }

        if (v27 == 0x4C54527369 && v26 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData();
          v91 = swift_dynamicCastClassUnconditional();
          v92 = qword_101AD9268;
          swift_beginAccess();
          v93 = v91 + v92;
          v94 = v173;
          v95 = v174;
          (*v166)(v173, v93, v174);
          v96 = v170;
          Capsule.root.getter();
          (*v165)(v94, v95);
          v97 = v171;
          sub_1011F0BE0(v96 + *(v172 + 32), v171, _s13StyleCRDTDataVMa);
          sub_1011F0B80(v96, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&qword_101A2C810);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v97, _s13StyleCRDTDataVMa);
          *(&v179 + 1) = &type metadata for Bool;
          v22 = &unk_1019F4D00;
          sub_10000BE14(&v178, &v201, &unk_1019F4D00);
          swift_beginAccess();
          sub_100BC1F00(&v201, 65);
          goto LABEL_30;
        }

        if (v27 == 0x6C6946726F6C6F63 && v26 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          type metadata accessor for CRLTableItemData();
          v98 = swift_dynamicCastClassUnconditional();
          v99 = qword_101AD9268;
          swift_beginAccess();
          v100 = v98 + v99;
          v101 = v173;
          v102 = v174;
          (*v166)(v173, v100, v174);
          v103 = v167;
          Capsule.root.getter();
          (*v165)(v101, v102);
          v104 = v168;
          sub_1011F0BE0(v103 + *(v172 + 32), v168, _s13StyleCRDTDataVMa);
          sub_1011F0B80(v103, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&unk_101A10690);
          CRRegister.wrappedValue.getter();
          sub_1011F0B80(v104, _s13StyleCRDTDataVMa);
          v201 = v194;
          v202 = v195;
          v206 = v199;
          v207 = v200;
          v204 = v197;
          v205 = v198;
          v203 = v196;
          v178 = v194;
          v179 = v195;
          v183 = v199;
          v184 = v200;
          v181 = v197;
          v182 = v198;
          v180 = v196;
          if (v200)
          {
            sub_100006370(0, &qword_101A00EB0);
            v210[2] = v204;
            v210[3] = v205;
            v210[4] = v206;
            v211 = v207;
            v210[0] = v202;
            v210[1] = v203;
            sub_10074A990(&v179, &v194);
            v105 = sub_1008B0490(v210);
            if (BYTE8(v178))
            {
              if (qword_1019F2268 != -1)
              {
                swift_once();
              }

              v106 = static OS_os_log.persistence;
              v107 = static os_log_type_t.info.getter();
              sub_100005404(v106, &_mh_execute_header, v107, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
            }

            v108 = [objc_allocWithZone(CRLColorFill) initWithColor:v105];

            sub_10000CAAC(&v201, &qword_1019FFF80);
            *(&v195 + 1) = sub_100006370(0, &qword_101A2BF30);
            *&v194 = v108;
          }

          else
          {
            v194 = 0u;
            v195 = 0u;
          }

          v22 = &unk_1019F4D00;
          sub_10000BE14(&v194, v193, &unk_1019F4D00);
          swift_beginAccess();
          sub_100BC1F00(v193, 66);
          swift_endAccess();
          v48 = &v194;
          goto LABEL_31;
        }

        v160 = sub_1005B981C(&qword_1019F54E0);
        v109 = swift_allocObject();
        *(v109 + 16) = v162;
        *(v109 + 56) = &type metadata for String;
        v110 = sub_1000053B0();
        *(v109 + 32) = v27;
        v158 = v109 + 32;
        v156 = v110;
        *(v109 + 64) = v110;
        *(v109 + 40) = v26;
        v111 = objc_opt_self();

        v152 = v111;
        LODWORD(v159) = [v111 _atomicIncrementAssertCount];
        *&v178 = [objc_allocWithZone(NSString) init];
        v154 = v109;
        sub_100604538(v109, &v178);
        StaticString.description.getter();
        v157 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v112 = String._bridgeToObjectiveC()();

        v113 = [v112 lastPathComponent];

        v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v153 = v114;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v115 = static OS_os_log.crlAssert;
        v116 = swift_allocObject();
        *(v116 + 16) = v161;
        *(v116 + 56) = &type metadata for Int32;
        *(v116 + 64) = &protocol witness table for Int32;
        *(v116 + 32) = v159;
        v160 = v116 + 32;
        v117 = sub_100006370(0, &qword_1019F4D30);
        *(v116 + 96) = v117;
        v118 = sub_1005CF04C();
        v119 = v157;
        *(v116 + 72) = v157;
        v120 = v155;
        v121 = v156;
        *(v116 + 136) = &type metadata for String;
        *(v116 + 144) = v121;
        *(v116 + 104) = v118;
        *(v116 + 112) = v120;
        *(v116 + 120) = v153;
        *(v116 + 176) = &type metadata for UInt;
        *(v116 + 152) = 969;
        v122 = v178;
        *(v116 + 216) = v117;
        *(v116 + 224) = v118;
        *(v116 + 184) = &protocol witness table for UInt;
        *(v116 + 192) = v122;
        v123 = v119;
        v159 = v122;
        v124 = static os_log_type_t.error.getter();
        sub_100005404(v115, &_mh_execute_header, v124, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v116);
        swift_setDeallocating();
        v153 = sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v125 = static os_log_type_t.error.getter();
        v126 = v154;

        type metadata accessor for __VaListBuilder();
        v127 = swift_allocObject();
        v127[2] = 8;
        v127[3] = 0;
        v128 = v127 + 3;
        v127[4] = 0;
        v127[5] = 0;
        v159 = v127;
        v157 = *(v126 + 16);
        if (!v157)
        {
LABEL_105:
          v160 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v156 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v148 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v149 = String._bridgeToObjectiveC()();

          v150 = v156;
          [v152 handleFailureInFunction:v156 file:v148 lineNumber:969 isFatal:0 format:v149 args:v160];

          swift_setDeallocating();
          swift_arrayDestroy();
          result = swift_deallocClassInstance();
          v22 = &unk_1019F4D00;
          goto LABEL_8;
        }

        v129 = 0;
        while (2)
        {
          v130 = (v158 + 40 * v129);
          v131 = v130[3];
          v160 = v130[4];
          sub_100020E58(v130, v131);
          v132 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v133 = *v128;
          v134 = *(v132 + 16);
          v39 = __OFADD__(*v128, v134);
          v135 = *v128 + v134;
          if (v39)
          {
            goto LABEL_113;
          }

          v136 = v132;
          v137 = v159;
          v138 = v159[4];
          if (v138 >= v135)
          {
LABEL_97:
            result = v137[5];
            if (!result)
            {
              goto LABEL_117;
            }
          }

          else
          {
            v156 = v129;
            v160 = v132;
            if (v138 + 0x4000000000000000 < 0)
            {
              goto LABEL_114;
            }

            v139 = v159[5];
            v155 = v138;
            v140 = 2 * v138;
            if (2 * v138 <= v135)
            {
              v140 = v135;
            }

            v159[4] = v140;
            if ((v140 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_115;
            }

            v141 = v137;
            result = swift_slowAlloc();
            v141[5] = result;
            if (v139)
            {
              if (result != v139 || result >= &v139[8 * v133])
              {
                memmove(result, v139, 8 * v133);
              }

              v143 = v159;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
              v137 = v143;
              v136 = v160;
              v129 = v156;
              goto LABEL_97;
            }

            v136 = v160;
            v129 = v156;
            if (!result)
            {
              goto LABEL_117;
            }
          }

          v144 = *(v136 + 16);
          if (v144)
          {
            v145 = (v136 + 32);
            v146 = *v128;
            do
            {
              v147 = *v145++;
              *&result[8 * v146] = v147;
              v146 = *v128 + 1;
              if (__OFADD__(*v128, 1))
              {
                goto LABEL_112;
              }

              *v128 = v146;
            }

            while (--v144);
          }

          v129 = v129 + 1;
          if (v129 == v157)
          {
            goto LABEL_105;
          }

          continue;
        }
      }

      type metadata accessor for CRLTableItemData();
      swift_dynamicCastClassUnconditional();

      v51 = sub_1011FC4B4();

      *(&v179 + 1) = sub_1005B981C(&qword_101A2C918);
      *&v178 = v51;
      sub_10000BE14(&v178, &v201, v22);
      swift_beginAccess();
      v24 = 59;
    }

    sub_100BC1F00(&v201, v24);
    swift_endAccess();
    result = sub_10000CAAC(&v178, v22);
    *(v5 + v175) = 1;
LABEL_8:
    if (++v20 == v177)
    {
      return result;
    }
  }

  v29 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v30 = *(v5 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
  if (!v30)
  {
    sub_10096C7D4();
    v30 = *(v5 + v29);
  }

  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  *(&v179 + 1) = sub_1005B981C(&qword_101A0A360);
  *&v178 = v31;
  swift_beginAccess();
  v32 = v22;
  sub_10000BE14(&v178, &v201, v22);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v193[0] = *(a1 + v21);
  v34 = v193[0];
  *(a1 + v21) = 0x8000000000000000;
  v35 = sub_1007CF108();
  v37 = *(v34 + 16);
  v38 = (v36 & 1) == 0;
  v39 = __OFADD__(v37, v38);
  v40 = v37 + v38;
  if (!v39)
  {
    v41 = v36;
    if (*(v34 + 24) >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = v35;
        sub_100AA3EA4();
        v35 = v81;
      }
    }

    else
    {
      sub_100A890C0(v40, isUniquelyReferenced_nonNull_native);
      v35 = sub_1007CF108();
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_116;
      }
    }

    v22 = v32;
    v43 = v193[0];
    if (v41)
    {
      sub_10002C638(&v201, *(v193[0] + 56) + 32 * v35, v32);
    }

    else
    {
      *(v193[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v43[6] + 8 * v35) = 4;
      v44 = (v43[7] + 32 * v35);
      v45 = v202;
      *v44 = v201;
      v44[1] = v45;
      v46 = v43[2];
      v39 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v39)
      {
        goto LABEL_111;
      }

      v43[2] = v47;
    }

    *(a1 + v21) = v43;
LABEL_30:
    swift_endAccess();
    v48 = &v178;
LABEL_31:
    result = sub_10000CAAC(v48, v22);
    goto LABEL_8;
  }

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
  type metadata accessor for CRLChangeProperty(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_117:
  __break(1u);
  return result;
}

id sub_1011ED314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTableItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLTableItem()
{
  result = qword_101A2C868;
  if (!qword_101A2C868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1011ED4AC()
{
  if (qword_1019F2AC0 != -1)
  {
    swift_once();
  }

  qword_101AD9178 = qword_101AD9300;
  unk_101AD9180 = *algn_101AD9308;
}

uint64_t sub_1011ED650(void *a1, uint64_t a2)
{
  v16 = type metadata accessor for UUID();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _swiftEmptyDictionarySingleton;
  v7 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v8 = *(**(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 632);
  v9 = a1;

  v8(&v17, v10);

  if (v18)
  {
    sub_10000BF3C(&v17, v19);
    sub_100064288(v19, &v17);
    sub_100BC1CF0(&v17, 0);
    v11 = sub_100005070(v19);
    v12 = v20;
  }

  else
  {
    v11 = sub_10000CAAC(&v17, &unk_1019F4D00);
    v12 = _swiftEmptyDictionarySingleton;
  }

  (*(**(a2 + v7) + 264))(v11);
  v13 = sub_1010A7F08(v12);

  type metadata accessor for CRLTransactableUndoingMutations(0);
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_id, v6, v16);
  *(v14 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values) = v13;
  return v14;
}

uint64_t sub_1011ED8A0(void *a1, uint64_t a2)
{
  v24 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_1005B981C(&qword_101A09E58);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = a1;
  v25 = sub_1011ED650(v12, a2);
  type metadata accessor for CRLContainerItemData(0);
  v13 = *(*swift_dynamicCastClassUnconditional() + 840);

  v13(v14);

  v15 = v12;
  v16 = *(*swift_dynamicCastClassUnconditional() + 840);

  v16(v17);

  sub_100068574(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData);
  CRStruct_1.actionUndoingDifference(from:)();
  sub_1011F0B80(v5, type metadata accessor for CRLContainerItemCRDTData);
  sub_1011F0B80(v8, type metadata accessor for CRLContainerItemCRDTData);
  v18 = sub_1005B981C(&qword_101A09E60);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_10000CAAC(v11, &qword_101A09E58);
    memset(v26, 0, sizeof(v26));
    v27 = 1;
  }

  else
  {
    v27 = v18;
    v20 = sub_10002C58C(v26);
    (*(v19 + 32))(v20, v11, v18);
  }

  v21 = v25;
  swift_beginAccess();
  sub_100BC1DF4(v26, 1);
  swift_endAccess();

  return v21;
}

void *sub_1011EDC24(void *a1)
{
  v2 = sub_1005B981C(&unk_101A2C9A0);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v45 = &v44 - v3;
  v4 = sub_1005B981C(&unk_101A09E40);
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v44 - v7;
  v50 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v50);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = sub_1005B981C(&qword_101A2C960);
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  type metadata accessor for CRLContainerItemData(0);
  v19 = *(*swift_dynamicCastClassUnconditional() + 840);
  v20 = a1;

  v19(v21);
  v22 = v20;

  v23 = *(*swift_dynamicCastClassUnconditional() + 840);

  v23(v24);

  sub_100068574(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData);
  CRType.observableDifference(from:)();
  sub_1011F0B80(v9, type metadata accessor for CRLContainerItemCRDTData);
  sub_1011F0B80(v12, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000BE14(v18, v15, &qword_101A2C960);
  if ((*(v51 + 48))(v15, 1, v52) == 1)
  {
    v25 = &qword_101A2C960;
    v26 = v15;
LABEL_5:
    sub_10000CAAC(v26, v25);
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v27 = v15;
  v28 = v46;
  sub_10003DFF8(v27, v46, &unk_101A09E40);
  v29 = v47;
  sub_10000BE14(v28, v47, &unk_101A09E40);
  v31 = v48;
  v30 = v49;
  if ((*(v48 + 48))(v29, 1, v49) == 1)
  {
    sub_10000CAAC(v28, &unk_101A09E40);
    v25 = &unk_101A2C9B0;
    v26 = v29;
    goto LABEL_5;
  }

  v36 = v45;
  (*(v31 + 32))(v45, v29, v30);
  v32 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v38 = *(v32 + 2);
  v37 = *(v32 + 3);
  if (v38 >= v37 >> 1)
  {
    v32 = sub_100024CBC((v37 > 1), v38 + 1, 1, v32);
  }

  *(v32 + 2) = v38 + 1;
  v39 = &v32[16 * v38];
  *(v39 + 4) = 0x736D657469;
  *(v39 + 5) = 0xE500000000000000;
  v40 = *(CROrderedSet.ObservableDifference.moved.getter() + 16);

  if (v40)
  {
    v42 = *(v32 + 2);
    v41 = *(v32 + 3);
    if (v42 >= v41 >> 1)
    {
      v32 = sub_100024CBC((v41 > 1), v42 + 1, 1, v32);
    }

    (*(v31 + 8))(v36, v30);
    sub_10000CAAC(v28, &unk_101A09E40);
    *(v32 + 2) = v42 + 1;
    v43 = &v32[16 * v42];
    *(v43 + 4) = 0x6564724F6D657469;
    *(v43 + 5) = 0xE900000000000072;
  }

  else
  {
    (*(v31 + 8))(v36, v30);
    sub_10000CAAC(v28, &unk_101A09E40);
  }

LABEL_6:
  if (*(v32 + 2))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = _swiftEmptyDictionarySingleton;
    sub_100A9B080(v32, 1, isUniquelyReferenced_nonNull_native);

    v34 = v53;
    sub_10000CAAC(v18, &qword_101A2C960);
  }

  else
  {
    sub_10000CAAC(v18, &qword_101A2C960);

    return _swiftEmptyDictionarySingleton;
  }

  return v34;
}

uint64_t sub_1011EE2D4(uint64_t a1, uint64_t a2)
{
  v130 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v140 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v147 = &v129 - v8;
  v9 = __chkstk_darwin(v7);
  v149 = &v129 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v129 - v12;
  v14 = __chkstk_darwin(v11);
  v148 = &v129 - v15;
  __chkstk_darwin(v14);
  v151 = &v129 - v16;
  v17 = sub_1005B981C(&qword_101A2C878);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v138 = (&v129 - v19);
  v20 = sub_1005B981C(&unk_101A2C880);
  v21 = __chkstk_darwin(v20 - 8);
  v134 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v133 = (&v129 - v24);
  v25 = __chkstk_darwin(v23);
  v27 = &v129 - v26;
  __chkstk_darwin(v25);
  v29 = (&v129 - v28);
  v129 = sub_100068574(&qword_1019FB870, &type metadata accessor for UUID);
  v146 = Dictionary.init(minimumCapacity:)();
  v30 = Dictionary.init(minimumCapacity:)();
  v31 = 0;
  v131 = a1;
  v32 = *(a1 + 16);
  v153 = v4;
  v154 = (v4 + 16);
  v143 = (v18 + 48);
  v144 = (v18 + 56);
  v150 = (v4 + 32);
  v152 = (v4 + 8);
  v132 = v4 + 40;
  v141 = v17;
  v135 = v27;
  v136 = v32;
  i = v29;
  while (1)
  {
    if (v31 == v32)
    {
      v33 = 1;
      v142 = v32;
    }

    else
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      if (v31 >= *(v131 + 16))
      {
        goto LABEL_64;
      }

      v34 = (v31 + 1);
      v35 = v153;
      v36 = v131 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31;
      v37 = *(v17 + 48);
      v38 = v138;
      *v138 = v31;
      (*(v35 + 16))(v38 + v37, v36, v3);
      sub_10003DFF8(v38, v27, &qword_101A2C878);
      v33 = 0;
      v142 = v34;
    }

    v145 = v30;
    v39 = *v144;
    (*v144)(v27, v33, 1, v17);
    sub_10003DFF8(v27, v29, &unk_101A2C880);
    v40 = *v143;
    if ((*v143)(v29, 1, v17) == 1)
    {
      v142 = v40;

      v78 = *(v130 + 16);
      v79 = Dictionary.init(minimumCapacity:)();
      v151 = v3;
      v80 = Dictionary.init(minimumCapacity:)();
      v81 = 0;
      v82 = v134;
      v139 = v39;
      for (i = v78; ; v78 = i)
      {
        if (v81 == v78)
        {
          v84 = 1;
          v85 = v78;
        }

        else
        {
          if (v81 >= v78)
          {
            goto LABEL_67;
          }

          if (__OFADD__(v81, 1))
          {
            goto LABEL_68;
          }

          v86 = v153;
          v87 = v130 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v81;
          v88 = *(v17 + 48);
          v89 = v138;
          *v138 = v81;
          (*(v86 + 16))(v89 + v88, v87, v151);
          sub_10003DFF8(v89, v82, &qword_101A2C878);
          v84 = 0;
          v85 = v81 + 1;
        }

        v39(v82, v84, 1, v17);
        v90 = v133;
        sub_10003DFF8(v82, v133, &unk_101A2C880);
        if (v142(v90, 1, v17) == 1)
        {
          return v146;
        }

        v148 = v85;
        v91 = *v90;
        v92 = *(v17 + 48);
        v93 = v149;
        v94 = *v150;
        v95 = v151;
        (*v150)(v149, v90 + v92, v151);
        v96 = *v154;
        v97 = v147;
        (*v154)(v147, v93, v95);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v155 = v79;
        v100 = sub_10003E994(v97);
        v101 = v79[2];
        v102 = (v99 & 1) == 0;
        v103 = v101 + v102;
        if (__OFADD__(v101, v102))
        {
          goto LABEL_61;
        }

        v104 = v99;
        if (v79[3] >= v103)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v79 = v155;
            if (v99)
            {
              goto LABEL_45;
            }
          }

          else
          {
            sub_100AA4430();
            v79 = v155;
            if (v104)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          sub_10003ECE0(v103, isUniquelyReferenced_nonNull_native);
          v105 = sub_10003E994(v147);
          if ((v104 & 1) != (v106 & 1))
          {
            goto LABEL_73;
          }

          v100 = v105;
          v79 = v155;
          if (v104)
          {
LABEL_45:
            *(v79[7] + 8 * v100) = v91;
            v107 = v151;
            v108 = *v152;
            (*v152)(v147, v151);
            goto LABEL_49;
          }
        }

        v109 = v94;
        v79[(v100 >> 6) + 8] |= 1 << v100;
        v110 = v153;
        v111 = v147;
        v112 = v151;
        v96(v79[6] + *(v153 + 72) * v100, v147, v151);
        *(v79[7] + 8 * v100) = v91;
        v113 = *(v110 + 8);
        v113(v111, v112);
        v114 = v79[2];
        v64 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (v64)
        {
          goto LABEL_69;
        }

        v79[2] = v115;
        v107 = v151;
        v94 = v109;
        v108 = v113;
LABEL_49:
        v96(v140, v149, v107);
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v155 = v80;
        v117 = sub_1007C7EC0(v91);
        v119 = v80[2];
        v120 = (v118 & 1) == 0;
        v64 = __OFADD__(v119, v120);
        v121 = v119 + v120;
        if (v64)
        {
          goto LABEL_62;
        }

        v122 = v118;
        if (v80[3] >= v121)
        {
          v81 = v148;
          if ((v116 & 1) == 0)
          {
            v127 = v117;
            sub_100AA41C8();
            v117 = v127;
          }
        }

        else
        {
          sub_100A89788(v121, v116);
          v117 = sub_1007C7EC0(v91);
          v81 = v148;
          if ((v122 & 1) != (v123 & 1))
          {
            goto LABEL_71;
          }
        }

        v82 = v134;
        v80 = v155;
        if (v122)
        {
          v83 = v151;
          (*(v153 + 40))(v155[7] + *(v153 + 72) * v117, v140, v151);
          v108(v149, v83);
        }

        else
        {
          v155[(v117 >> 6) + 8] |= 1 << v117;
          *(v80[6] + 8 * v117) = v91;
          v124 = v151;
          v94((v80[7] + *(v153 + 72) * v117), v140, v151);
          v108(v149, v124);
          v125 = v80[2];
          v64 = __OFADD__(v125, 1);
          v126 = v125 + 1;
          if (v64)
          {
            goto LABEL_70;
          }

          v80[2] = v126;
        }

        v17 = v141;
        v39 = v139;
      }
    }

    v41 = v13;
    v42 = *v29;
    v43 = v151;
    v44 = v29 + *(v17 + 48);
    v139 = *v150;
    (v139)(v151, v44, v3);
    v45 = *v154;
    v46 = v148;
    (*v154)(v148, v43, v3);
    v47 = v146;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v155 = v47;
    v50 = sub_10003E994(v46);
    v51 = *(v47 + 16);
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      break;
    }

    v54 = v49;
    if (*(v47 + 24) >= v53)
    {
      if ((v48 & 1) == 0)
      {
        sub_100AA4430();
      }
    }

    else
    {
      sub_10003ECE0(v53, v48);
      v55 = sub_10003E994(v148);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_72;
      }

      v50 = v55;
    }

    v57 = v155;
    v146 = v155;
    if (v54)
    {
      *(v155[7] + 8 * v50) = v42;
      v58 = *v152;
      v59 = v3;
      (*v152)(v148, v3);
    }

    else
    {
      v155[(v50 >> 6) + 8] |= 1 << v50;
      v60 = v153;
      v61 = v148;
      v45(v57[6] + *(v153 + 72) * v50, v148, v3);
      *(v57[7] + 8 * v50) = v42;
      v62 = v57;
      v58 = *(v60 + 8);
      v58(v61, v3);
      v63 = v62[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_65;
      }

      v62[2] = v65;
      v59 = v3;
    }

    v13 = v41;
    v45(v41, v151, v59);
    v66 = v145;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v155 = v66;
    v68 = sub_1007C7EC0(v42);
    v70 = v66[2];
    v71 = (v69 & 1) == 0;
    v64 = __OFADD__(v70, v71);
    v72 = v70 + v71;
    if (v64)
    {
      goto LABEL_60;
    }

    v73 = v69;
    if (v66[3] >= v72)
    {
      v32 = v136;
      v29 = i;
      if ((v67 & 1) == 0)
      {
        v77 = v68;
        sub_100AA41C8();
        v68 = v77;
      }
    }

    else
    {
      sub_100A89788(v72, v67);
      v68 = sub_1007C7EC0(v42);
      v32 = v136;
      v29 = i;
      if ((v73 & 1) != (v74 & 1))
      {
        goto LABEL_71;
      }
    }

    v30 = v155;
    if (v73)
    {
      (*(v153 + 40))(v155[7] + *(v153 + 72) * v68, v13, v3);
      v58(v151, v3);
    }

    else
    {
      v155[(v68 >> 6) + 8] |= 1 << v68;
      *(v30[6] + 8 * v68) = v42;
      (v139)(v30[7] + *(v153 + 72) * v68, v13, v3);
      v58(v151, v3);
      v75 = v30[2];
      v64 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v64)
      {
        goto LABEL_66;
      }

      v30[2] = v76;
    }

    v17 = v141;
    v31 = v142;
    v27 = v135;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_72:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_73:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1011EEF84(void *a1, uint64_t a2, void *a3)
{
  v156 = a1;
  v167 = _s14ColumnCRDTDataVMa(0);
  __chkstk_darwin(v167);
  v175 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = _s11RowCRDTDataVMa(0);
  __chkstk_darwin(v165);
  v173 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1005B981C(&unk_101A2C890);
  v180 = *(v182 - 8);
  __chkstk_darwin(v182);
  *&v163 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v172 = &v135 - v9;
  v10 = type metadata accessor for CRKeyPath();
  v170 = *(v10 - 8);
  v171 = v10;
  __chkstk_darwin(v10);
  v153 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v169 = &v135 - v13;
  *&v176 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v176);
  v152 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v168 = &v135 - v16;
  v149 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v149);
  v154 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v155 = &v135 - v19;
  __chkstk_darwin(v20);
  v179 = &v135 - v21;
  v22 = sub_1005B981C(&unk_101A09DC0);
  v147 = *(v22 - 8);
  v148 = v22;
  __chkstk_darwin(v22);
  v146 = &v135 - v23;
  v184 = type metadata accessor for UUID();
  v24 = *(v184 - 8);
  __chkstk_darwin(v184);
  v174 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v164 = &v135 - v27;
  __chkstk_darwin(v28);
  v145 = &v135 - v29;
  __chkstk_darwin(v30);
  v161 = &v135 - v31;
  v181 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v181);
  v150 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v151 = &v135 - v34;
  __chkstk_darwin(v35);
  v162 = (&v135 - v36);
  __chkstk_darwin(v37);
  v177 = &v135 - v38;
  v39 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v39 - 8);
  v143 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v135 - v42;
  v44 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v44 - 8);
  v139 = &v135 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v135 - v47;
  v142 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v142);
  v144 = &v135 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v160 = (&v135 - v51);
  v53 = __chkstk_darwin(v52);
  v166 = &v135 - v54;
  if (a3)
  {
    v55 = a3;
  }

  else
  {
    v55 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{640.0, 480.0}];
  }

  v178 = a3;
  v183 = v24;
  v56 = *(v24 + 16);
  v140 = v24 + 16;
  v141 = v56;
  v159 = a2;
  v57 = v184;
  (v56)(v48, a2, v184, v53);
  v138 = *(v24 + 56);
  v136 = v48;
  v138(v48, 0, 1, v57);
  v196 = 1;
  v58 = type metadata accessor for CRLTableAnchorHint();
  v137 = *(*(v58 - 8) + 56);
  v137(v43, 1, 1, v58);
  v59 = v55;
  v135 = a3;
  sub_101271CCC(v59, v205);
  v158 = v59;

  v60 = v139;
  sub_10000BE14(v48, v139, &qword_1019F6990);
  v61 = v143;
  sub_10000BE14(v43, v143, &unk_101A09DD0);
  v62 = v166;
  v138(v166, 1, 1, v57);
  v63 = v142;
  v64 = *(v142 + 28);
  v65 = v62 + *(v142 + 24);
  v137((v62 + v64), 1, 1, v58);
  *(v62 + *(v63 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v60, v62, &qword_1019F6990);
  sub_10000CAAC(v43, &unk_101A09DD0);
  sub_10000CAAC(v136, &qword_1019F6990);
  v66 = (v62 + *(v63 + 20));
  v67 = v205[1];
  *v66 = v205[0];
  v66[1] = v67;
  *v65 = 0u;
  *(v65 + 16) = 0u;
  *(v65 + 32) = 0u;
  *(v65 + 48) = 0u;
  *(v65 + 64) = v196;
  sub_10002C638(v61, v62 + v64, &unk_101A09DD0);
  v68 = v160;
  sub_1011F0BE0(v62, v160, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v197);
  v69 = v161;
  UUID.init()();
  v70 = v181;
  v143 = *(v181 + 52);
  v192 = v201;
  v193 = v202;
  v194 = v203;
  v195 = v204;
  v188 = v197;
  v189 = v198;
  v190 = v199;
  v191 = v200;
  v139 = sub_1005B981C(&unk_101A09DE0);
  sub_1007492B8();
  v71 = v177;
  CRRegister.init(wrappedValue:)();
  *(v71 + *(v70 + 56)) = _swiftEmptyDictionarySingleton;
  v72 = v69;
  v73 = v69;
  v74 = v184;
  v141(v145, v72, v184);
  CRRegister.init(_:)();
  sub_1011F0BE0(v68, v144, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100068574(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  v75 = v71;
  CRRegister.init(_:)();
  LOBYTE(v188) = 0;
  CRRegister.init(_:)();
  LOBYTE(v188) = 0;
  CRRegister.init(_:)();
  *&v188 = 0;
  *(&v188 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v192 = v201;
  v193 = v202;
  v194 = v203;
  v195 = v204;
  v188 = v197;
  v189 = v198;
  v190 = v199;
  v191 = v200;
  v76 = v146;
  CRRegister.init(_:)();
  v77 = *(v183 + 8);
  v183 += 8;
  v181 = v77;
  v77(v73, v74);
  sub_1011F0B80(v160, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v147 + 40))(v75 + v143, v76, v148);
  v78 = v149;
  *(v179 + v149[5]) = _swiftEmptyDictionarySingleton;
  sub_100068574(&qword_1019FB870, &type metadata accessor for UUID);
  CROrderedSet.init()();
  v79 = v168;
  *(v168 + v78[5]) = _swiftEmptyDictionarySingleton;
  CROrderedSet.init()();
  v80 = v176;
  sub_1012023CC(v79 + *(v176 + 32));
  *(v79 + *(v80 + 36)) = _swiftEmptyDictionarySingleton;
  v148 = *(v80 + 20);
  sub_1005B981C(&qword_1019FA3A8);
  v149 = &protocol conformance descriptor for Ref<A>;
  sub_10001A2F8(&qword_101A2C8A0, &qword_1019FA3A8);
  v160 = &protocol conformance descriptor for Ref<A>;
  sub_10001A2F8(&qword_101A2C8A8, &qword_1019FA3A8);
  CROrderedDictionary.init()();
  v148 = *(v176 + 24);
  sub_1005B981C(&qword_101A2C8B0);
  sub_10001A2F8(&qword_101A2C8B8, &qword_101A2C8B0);
  sub_10001A2F8(&unk_101A2C8C0, &qword_101A2C8B0);
  CROrderedDictionary.init()();
  _s6CellIDVMa(0);
  sub_1005B981C(&qword_1019FA378);
  sub_100068574(&qword_101A2C8D0, _s6CellIDVMa);
  sub_100068574(&qword_101A21DA8, _s6CellIDVMa);
  sub_10001A2F8(&qword_101A2C8E0, &qword_1019FA378);
  sub_10001A2F8(&qword_101A2C8E8, &qword_1019FA378);
  CRDictionary.init()();
  v160 = sub_1005B981C(&unk_1019F5250);
  v81 = v177;
  CRRegister.wrappedValue.getter();
  v82 = v169;
  CRKeyPath.init(_:)();
  sub_1011F0BE0(v79, v152, _s15CapsuleDatabaseVMa);
  (*(v170 + 16))(v153, v82, v171);
  sub_100068574(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
  v83 = v172;
  Capsule.init(_:id:)();
  v84 = v162;
  sub_10000BE14(v81, v162, &unk_101A226A0);
  v85 = v155;
  sub_1011F0BE0(v179, v155, type metadata accessor for CRLContainerItemCRDTData);
  v86 = v180;
  v87 = *(v180 + 16);
  v88 = v163;
  v89 = v182;
  v87(v163, v83, v182);
  *&v188 = 0x4000000000000;
  *(&v188 + 1) = 0x2000400000000;
  v189 = 0x4000000000000uLL;
  LOBYTE(v190) = 1;
  v161 = type metadata accessor for CRLTableItemData();
  v90 = swift_allocObject();
  v87(v90 + qword_101AD9268, v88, v89);
  v91 = v151;
  sub_10000BE14(v84, v151, &unk_101A226A0);
  v92 = v154;
  sub_1011F0BE0(v85, v154, type metadata accessor for CRLContainerItemCRDTData);
  sub_1011F0BE0(v92, v90 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v93 = v150;
  sub_10000BE14(v91, v150, &unk_101A226A0);
  sub_10000BE14(v93, v90 + *(*v90 + 736), &unk_101A226A0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v93, &unk_101A226A0);
  sub_1011F0B80(v92, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v91, &unk_101A226A0);
  v94 = *(v86 + 8);
  v180 = v86 + 8;
  v160 = v94;
  (v94)(v163, v89);
  sub_1011F0B80(v85, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v162, &unk_101A226A0);
  v95 = sub_100747AF0(&v188, 12);
  v96 = objc_allocWithZone(type metadata accessor for CRLTableItem());
  v97 = &v96[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
  *v97 = 0u;
  v97[1] = 0u;
  v96[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] = 1;
  *&v96[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v96[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v96[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v96[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v96[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  v98 = v156;
  *&v96[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v156;
  *&v96[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v95;
  v99 = type metadata accessor for CRLBoardItemBase(0);
  v187.receiver = v96;
  v187.super_class = v99;
  v156 = v98;
  v162 = v95;

  v100 = objc_msgSendSuper2(&v187, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v101 = v178;
  if (v178)
  {
    v102 = v135;
    v103 = v100;
    [v102 size];
    v176 = v104;
    [v102 size];
    v163 = v105;

    *(&v107 + 1) = *(&v176 + 1);
    *&v106.f64[0] = v163;
    *&v106.f64[1] = v176;
    *&v107 = vmaxnm_f32(vmul_f32(vcvt_f32_f64(v106), 0x3F0000003F000000), 0x4100000041000000);
  }

  else
  {
    v108 = v100;
    v107 = 0uLL;
  }

  v163 = v107;
  v109 = v173;
  v110 = sub_1005FEB28();
  v185 = 0;
  v186 = 1;
  sub_1005B981C(&unk_101A095E0);
  *&v176 = v110;
  CRRegister.init(wrappedValue:)();
  v111 = *(v165 + 20);
  *&v109[v111] = _swiftEmptyDictionarySingleton;
  LODWORD(v157) = DWORD1(v163);
  v185 = DWORD1(v163);
  v186 = v101 == 0;
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.setter();
  *&v109[v111] = _swiftEmptyDictionarySingleton;
  v112 = v164;
  v113 = UUID.init()();
  if (sub_1011255D0(v113))
  {
    v114 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v114);
    v115 = v164;
    *(&v135 - 2) = v109;
    *(&v135 - 1) = v115;
    swift_beginAccess();

    v109 = v173;
    v101 = v178;
    Capsule.mutate<A>(_:)();
    swift_endAccess();
    v112 = v164;
  }

  (v181)(v112, v184);
  sub_1011F0B80(v109, _s11RowCRDTDataVMa);
  v185 = 0;
  v186 = 1;
  v164 = sub_1005B981C(&unk_101A095E0);
  CRRegister.init(wrappedValue:)();
  v116 = *(v165 + 20);
  *&v109[v116] = _swiftEmptyDictionarySingleton;
  v185 = v157;
  v186 = v101 == 0;
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.setter();
  *&v109[v116] = _swiftEmptyDictionarySingleton;
  v117 = UUID.init()();
  if (sub_1011255D0(v117))
  {
    v118 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v118);
    *(&v135 - 2) = v173;
    *(&v135 - 1) = v112;
    swift_beginAccess();

    Capsule.mutate<A>(_:)();
    swift_endAccess();

    v109 = v173;
    v101 = v178;
  }

  v119 = v175;
  v120 = v101 == 0;
  (v181)(v112, v184);
  sub_1011F0B80(v109, _s11RowCRDTDataVMa);
  v185 = 0;
  v186 = 1;
  CRRegister.init(wrappedValue:)();
  v121 = *(v167 + 20);
  *&v119[v121] = _swiftEmptyDictionarySingleton;
  v122 = v163;
  v185 = v163;
  v186 = v120;
  CRRegister.wrappedValue.setter();
  *&v119[v121] = _swiftEmptyDictionarySingleton;
  v123 = v174;
  v124 = UUID.init()();
  if (sub_1011255D0(v124))
  {
    v125 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v125);
    *(&v135 - 2) = v175;
    *(&v135 - 1) = v123;
    swift_beginAccess();

    v123 = v174;
    v119 = v175;
    Capsule.mutate<A>(_:)();
    swift_endAccess();
  }

  v126 = v178 == 0;
  (v181)(v123, v184);
  sub_1011F0B80(v119, _s14ColumnCRDTDataVMa);
  v185 = 0;
  v186 = 1;
  CRRegister.init(wrappedValue:)();
  v127 = *(v167 + 20);
  *&v119[v127] = _swiftEmptyDictionarySingleton;
  v185 = v122;
  v186 = v126;
  CRRegister.wrappedValue.setter();
  *&v119[v127] = _swiftEmptyDictionarySingleton;
  v128 = UUID.init()();
  if (sub_1011255D0(v128))
  {
    v129 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v129);
    v130 = v174;
    *(&v135 - 2) = v119;
    *(&v135 - 1) = v130;
    swift_beginAccess();

    v123 = v174;
    v119 = v175;
    Capsule.mutate<A>(_:)();
    swift_endAccess();
  }

  v131 = v123;
  v132 = v184;
  v133 = v181;
  (v181)(v131, v184);
  sub_1011F0B80(v119, _s14ColumnCRDTDataVMa);
  sub_1011E7AE8();

  v133(v159, v132);
  v160(v172, v182);
  (*(v170 + 8))(v169, v171);
  sub_1011F0B80(v168, _s15CapsuleDatabaseVMa);
  sub_1011F0B80(v179, type metadata accessor for CRLContainerItemCRDTData);
  sub_1011F0B80(v166, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10000CAAC(v177, &unk_101A226A0);
  return v100;
}

uint64_t sub_1011F0B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011F0B80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011F0BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1011F0CE8()
{
  if (!qword_1019F5C80)
  {
    sub_1005C4E5C(&unk_101A095E0);
    sub_1005FEB28();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F5C80);
    }
  }
}

uint64_t sub_1011F0D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_101A2C7E0);
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

    return (v10 + 1);
  }
}

uint64_t sub_1011F0E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&unk_101A2C7E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1011F0F2C()
{
  sub_1011F0CE8();
  if (v0 <= 0x3F)
  {
    sub_100039F68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1011F0FB4()
{
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.getter();
  return v1 | (v2 << 32);
}

uint64_t sub_1011F1000()
{
  qword_101AD9190 = 97;
  *algn_101AD9198 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD91A0 = result;
  return result;
}

uint64_t sub_1011F1084()
{
  if (qword_1019F2A80 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD9190;

  return v0;
}

uint64_t sub_1011F1104(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_1011F1170(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CB80, _s11RowCRDTDataVMa);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1011F11DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1011F1258()
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_1011F12DC()
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_1011F1358()
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_1011F13D4()
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_1011F1468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F14E4()
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_1011F1560(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F15E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F1668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1011F16FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1011F1778()
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_1011F17E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1011F1860()
{
  sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.merge(_:)();
}

uint64_t sub_1011F18E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F1B68(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CC08, _s11RowCRDTDataVMa);

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1011F1CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1011F1EA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t (*a5)(void))
{
  v9 = sub_1005B981C(a2);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = a4(0, v10);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - v15;
  sub_100601584(a1, &v21);
  if (!v23)
  {
    sub_10000CAAC(&v21, &unk_1019F4D00);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_7;
  }

  v17 = swift_dynamicCast();
  (*(v14 + 56))(v12, v17 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_7:
    sub_10000CAAC(v12, a2);
    return 0;
  }

  sub_1011F32E4(v12, v16, a5);
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.getter();
  v18 = v21;
  v19 = v22;
  CRRegister.wrappedValue.getter();
  sub_1011F3284(v16, a5);
  if (v19)
  {
    return v22;
  }

  else
  {
    return (v18 == v21) & ~v22;
  }
}

uint64_t sub_1011F2100()
{
  qword_101AD91A8 = 97;
  unk_101AD91B0 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD91B8 = result;
  return result;
}

uint64_t sub_1011F2140()
{
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  if (v4)
  {
    return v2;
  }

  else
  {
    return (v3 == v1) & ~v2;
  }
}

uint64_t sub_1011F2214()
{
  if (qword_1019F2A88 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD91A8;

  return v0;
}

uint64_t sub_1011F2294(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_1011F2300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1005B981C(&unk_101A095E0);
  sub_1005FEB28();
  CRRegister.init(wrappedValue:)();
  v4 = *(a1 + 20);
  *(a2 + v4) = _swiftEmptyDictionarySingleton;
  sub_1005B981C(&unk_101A2C7E0);
  result = CRRegister.wrappedValue.setter();
  *(a2 + v4) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1011F23AC(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CBC0, _s14ColumnCRDTDataVMa);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1011F2418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1011F2494()
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_1011F2518()
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_1011F2594()
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_1011F2610()
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_1011F26A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F2720()
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_1011F279C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F2820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F28A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1011F2938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1011F29B4()
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_1011F2A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1011F2A9C()
{
  sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.merge(_:)();
}

uint64_t sub_1011F2B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F2DA4(uint64_t a1)
{
  v2 = sub_1011F1CB4(&qword_101A2CBF8, _s14ColumnCRDTDataVMa);

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1011F2E60@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  v15 = 0;
  v16 = 1;
  sub_1005B981C(&unk_101A095E0);
  sub_1005FEB28();
  CRRegister.init(wrappedValue:)();
  *(a3 + *(v6 + 28)) = _swiftEmptyDictionarySingleton;
  v13 = 0;
  v14 = 1;
  CRRegister.init(wrappedValue:)();
  v9 = *(v6 + 28);
  *&v8[v9] = _swiftEmptyDictionarySingleton;
  v11[2] = 0;
  v12 = 1;
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.setter();
  sub_1011F3284(a3, a2);
  *&v8[v9] = _swiftEmptyDictionarySingleton;
  return sub_1011F32E4(v8, a3, a2);
}

uint64_t sub_1011F3218()
{
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t sub_1011F3284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011F32E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15CapsuleDatabaseVMa()
{
  result = qword_101A2CC68;
  if (!qword_101A2CC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1011F33E0()
{
  type metadata accessor for CRLContainerItemCRDTData(319);
  if (v0 <= 0x3F)
  {
    sub_1011F34C4();
    if (v1 <= 0x3F)
    {
      sub_1011F3600();
      if (v2 <= 0x3F)
      {
        sub_1011F373C();
        if (v3 <= 0x3F)
        {
          _s13StyleCRDTDataVMa();
          if (v4 <= 0x3F)
          {
            sub_100039F68();
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

void sub_1011F34C4()
{
  if (!qword_101A2CC78)
  {
    type metadata accessor for UUID();
    sub_1005C4E5C(&qword_1019FA3A8);
    sub_1000685BC(&qword_1019FB870, &type metadata accessor for UUID);
    sub_10001A2F8(&qword_101A2C8A0, &qword_1019FA3A8);
    sub_10001A2F8(&qword_101A2C8A8, &qword_1019FA3A8);
    v0 = type metadata accessor for CROrderedDictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_101A2CC78);
    }
  }
}

void sub_1011F3600()
{
  if (!qword_101A2CC80)
  {
    type metadata accessor for UUID();
    sub_1005C4E5C(&qword_101A2C8B0);
    sub_1000685BC(&qword_1019FB870, &type metadata accessor for UUID);
    sub_10001A2F8(&qword_101A2C8B8, &qword_101A2C8B0);
    sub_10001A2F8(&unk_101A2C8C0, &qword_101A2C8B0);
    v0 = type metadata accessor for CROrderedDictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_101A2CC80);
    }
  }
}

void sub_1011F373C()
{
  if (!qword_101A2CC88)
  {
    _s6CellIDVMa(255);
    sub_1005C4E5C(&qword_1019FA378);
    sub_1000685BC(&qword_101A2C8D0, _s6CellIDVMa);
    sub_1000685BC(&qword_101A21DA8, _s6CellIDVMa);
    sub_10001A2F8(&qword_101A2C8E0, &qword_1019FA378);
    sub_10001A2F8(&qword_101A2C8E8, &qword_1019FA378);
    v0 = type metadata accessor for CRDictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_101A2CC88);
    }
  }
}

uint64_t sub_1011F389C()
{
  qword_101AD91C0 = 97;
  *algn_101AD91C8 = 0xE100000000000000;
  qword_101AD91D0 = swift_getKeyPath();
  unk_101AD91D8 = 98;
  qword_101AD91E0 = 0xE100000000000000;
  qword_101AD91E8 = swift_getKeyPath();
  qword_101AD91F0 = 99;
  qword_101AD91F8 = 0xE100000000000000;
  qword_101AD9200 = swift_getKeyPath();
  unk_101AD9208 = 100;
  qword_101AD9210 = 0xE100000000000000;
  qword_101AD9218 = swift_getKeyPath();
  qword_101AD9220 = 101;
  qword_101AD9228 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9230 = result;
  return result;
}

uint64_t sub_1011F393C@<X0>(void *a1@<X8>)
{
  if (qword_1019F2A90 != -1)
  {
    v16 = a1;
    swift_once();
    a1 = v16;
  }

  v1 = *algn_101AD91C8;
  v3 = qword_101AD91D0;
  v2 = unk_101AD91D8;
  v4 = qword_101AD91E0;
  v5 = qword_101AD91E8;
  v6 = qword_101AD91F0;
  v7 = qword_101AD91F8;
  v9 = qword_101AD9200;
  v8 = unk_101AD9208;
  v10 = qword_101AD9210;
  v11 = qword_101AD9218;
  v12 = qword_101AD9220;
  v13 = qword_101AD9228;
  v14 = qword_101AD9230;
  *a1 = qword_101AD91C0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v11;
  a1[12] = v12;
  a1[13] = v13;
  a1[14] = v14;
}

uint64_t sub_1011F3A50(uint64_t a1)
{
  v2 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return static CRStruct_5.fieldKeys.getter(a1, v2);
}

uint64_t sub_1011F3ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for CRLContainerItemCRDTData(0) + 20)) = _swiftEmptyDictionarySingleton;
  type metadata accessor for UUID();
  sub_1000685BC(&qword_1019FB870, &type metadata accessor for UUID);
  CROrderedSet.init()();
  sub_1012023CC(a2 + *(a1 + 32));
  *(a2 + *(a1 + 36)) = _swiftEmptyDictionarySingleton;
  sub_1005B981C(&qword_1019FA3A8);
  sub_10001A2F8(&qword_101A2C8A0, &qword_1019FA3A8);
  sub_10001A2F8(&qword_101A2C8A8, &qword_1019FA3A8);
  CROrderedDictionary.init()();
  sub_1005B981C(&qword_101A2C8B0);
  sub_10001A2F8(&qword_101A2C8B8, &qword_101A2C8B0);
  sub_10001A2F8(&unk_101A2C8C0, &qword_101A2C8B0);
  CROrderedDictionary.init()();
  _s6CellIDVMa(0);
  sub_1005B981C(&qword_1019FA378);
  sub_1000685BC(&qword_101A2C8D0, _s6CellIDVMa);
  sub_1000685BC(&qword_101A21DA8, _s6CellIDVMa);
  sub_10001A2F8(&qword_101A2C8E0, &qword_1019FA378);
  sub_10001A2F8(&qword_101A2C8E8, &qword_1019FA378);
  return CRDictionary.init()();
}

uint64_t sub_1011F3DA8(uint64_t a1)
{
  v2 = sub_1000685BC(&qword_101A2CD08, _s15CapsuleDatabaseVMa);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1011F3E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1011F3E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1011F3F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.apply(_:)(a1, a2, v4);
}

uint64_t sub_1011F3F90()
{
  sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.hasDelta(from:)();
}

uint64_t sub_1011F400C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1011F40A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F411C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F4198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F421C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F42A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1011F4334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1011F43B0()
{
  sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.needToFinalizeTimestamps()();
}

uint64_t sub_1011F441C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1011F4498()
{
  sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.merge(_:)();
}

uint64_t sub_1011F451C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F46A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000685BC(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1011F4824(uint64_t a1)
{
  v2 = sub_1000685BC(&qword_101A2CD28, _s15CapsuleDatabaseVMa);

  return CRStruct_5.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1011F4C38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A2C9E0);
  __chkstk_darwin(v4 - 8);
  v184 = v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v186 = v160 - v7;
  v8 = _s12CellCRDTDataVMa(0);
  __chkstk_darwin(v8);
  v182 = v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v181 = v160 - v11;
  __chkstk_darwin(v12);
  v183 = v160 - v13;
  __chkstk_darwin(v14);
  v187 = v160 - v15;
  v206 = sub_1005B981C(&unk_101A2C9D0);
  __chkstk_darwin(v206);
  v205 = v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v204 = v160 - v18;
  v19 = _s6CellIDVMa(0);
  v207 = *(v19 - 8);
  __chkstk_darwin(v19 - 8);
  v188 = v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v185 = v160 - v22;
  __chkstk_darwin(v23);
  v196 = v160 - v24;
  __chkstk_darwin(v25);
  v178 = v160 - v26;
  v180 = sub_1005B981C(&qword_101A2CD30);
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v176 = v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v177 = v160 - v29;
  v195 = sub_1005B981C(&qword_101A2CD38);
  v193 = *(v195 - 8);
  __chkstk_darwin(v195);
  v191 = v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v190 = v160 - v32;
  __chkstk_darwin(v33);
  v192 = v160 - v34;
  v189 = sub_1005B981C(&qword_101A2CD40);
  __chkstk_darwin(v189);
  v194 = v160 - v35;
  v202 = sub_1005B981C(&qword_101A2CD48);
  v36 = *(v202 - 8);
  __chkstk_darwin(v202);
  v38 = v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v198 = v160 - v40;
  __chkstk_darwin(v41);
  v199 = v160 - v42;
  v197 = sub_1005B981C(&qword_101A2CD50);
  __chkstk_darwin(v197);
  v201 = v160 - v43;
  v44 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v44);
  v46 = v160 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = v160 - v48;
  sub_1005B981C(&unk_101A2C890);
  Capsule.root.getter();
  v203 = a1;
  Capsule.root.getter();
  v200 = v44;
  v50 = *(v44 + 32);
  v210 = _s13StyleCRDTDataVMa();
  v51 = sub_10002C58C(&v209);
  sub_1011F6E9C(&v46[v50], v51, _s13StyleCRDTDataVMa);
  LOBYTE(v50) = sub_101202700(&v209);
  sub_10000CAAC(&v209, &unk_1019F4D00);
  if (v50 & 1) != 0 && (v52 = type metadata accessor for UUID(), sub_1000685BC(&qword_1019FB870, &type metadata accessor for UUID), v175 = v52, (static CROrderedSet.== infix(_:_:)()) && (v172 = v2, v53 = v200, v54 = v200[5], sub_1005B981C(&unk_101A2C7D0), v173 = v54, v55 = CROrderedDictionary.count.getter(), v174 = v53[5], v55 == CROrderedDictionary.count.getter()) && (v56 = v53[6], v57 = sub_1005B981C(&unk_101A2D830), v163 = v56, v58 = CROrderedDictionary.count.getter(), v164 = v53[6], v58 == CROrderedDictionary.count.getter()) && (v59 = v53[7], v60 = sub_1005B981C(&qword_1019FA370), v165 = v59, v171 = CRDictionary.count.getter(), v160[3] = v53[7], v170 = v60, v61 = CRDictionary.count.getter(), v171 == v61))
  {
    v160[2] = v57;
    v169 = v38;
    __chkstk_darwin(v61);
    v160[-2] = v172;
    v162 = v49;
    v62 = CROrderedDictionary._map<A>(_:)();
    __chkstk_darwin(v62);
    v63 = v203;
    v160[-2] = v203;
    v161 = v46;
    v65 = v64;
    result = CROrderedDictionary._map<A>(_:)();
    v67 = result;
    v160[1] = 0;
    v68 = 0;
    v173 = v175 - 8;
    v171 = *(v65 + 16);
    v160[0] = v8;
    v69 = v201;
    v166 = v36;
    v168 = v65;
    v167 = result;
    while (1)
    {
      if (v171 == v68)
      {

        goto LABEL_19;
      }

      if (v68 >= *(v65 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v70 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v71 = *(v36 + 72) * v68;
      v72 = v199;
      result = sub_10000BE14(v65 + v70 + v71, v199, &qword_101A2CD48);
      v73 = *(v67 + 16);
      if (v68 == v73)
      {
        break;
      }

      if (v68++ >= v73)
      {
        goto LABEL_64;
      }

      v74 = v69 + *(v197 + 48);
      sub_10003DFF8(v72, v69, &qword_101A2CD48);
      sub_10000BE14(v67 + v70 + v71, v74, &qword_101A2CD48);
      v75 = v202;
      v76 = *(v202 + 48);
      v77 = v175;
      v78 = *(*(v175 - 8) + 16);
      v79 = v198;
      v78(v198, v69, v175);
      v174 = *(v75 + 48);
      sub_1011F6E9C(v69 + v76, v79 + v174, _s11RowCRDTDataVMa);
      v80 = v169;
      v78(v169, v74, v77);
      sub_1011F6E9C(v74 + v76, v80 + *(v75 + 48), _s11RowCRDTDataVMa);
      sub_1000685BC(&qword_1019F37C0, &type metadata accessor for UUID);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        sub_10000CAAC(v80, &qword_101A2CD48);
        sub_10000CAAC(v79, &qword_101A2CD48);
        sub_10000CAAC(v201, &qword_101A2CD50);
LABEL_57:

LABEL_58:

LABEL_59:
        sub_1011F6E3C(v161, _s15CapsuleDatabaseVMa);
        v82 = v162;
        goto LABEL_15;
      }

      _s11RowCRDTDataVMa(0);
      sub_1000685BC(&qword_101A2CB88, _s11RowCRDTDataVMa);
      v81 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10000CAAC(v80, &qword_101A2CD48);
      sub_10000CAAC(v79, &qword_101A2CD48);
      v69 = v201;
      result = sub_10000CAAC(v201, &qword_101A2CD50);
      v63 = v203;
      v36 = v166;
      v65 = v168;
      v67 = v167;
      if ((v81 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v83 = sub_10000CAAC(v72, &qword_101A2CD48);
    v63 = v203;
LABEL_19:
    __chkstk_darwin(v83);
    v160[-2] = v172;
    v84 = CROrderedDictionary._map<A>(_:)();
    __chkstk_darwin(v84);
    v160[-2] = v63;
    result = CROrderedDictionary._map<A>(_:)();
    v85 = result;
    v86 = 0;
    v201 = *(v84 + 16);
    v87 = v196;
    v88 = v194;
    v198 = result;
    v199 = v84;
    while (1)
    {
      if (v201 == v86)
      {

        goto LABEL_30;
      }

      if (v86 >= *(v84 + 16))
      {
        goto LABEL_65;
      }

      v89 = (*(v193 + 80) + 32) & ~*(v193 + 80);
      v90 = *(v193 + 72) * v86;
      v91 = v192;
      result = sub_10000BE14(v84 + v89 + v90, v192, &qword_101A2CD38);
      v92 = *(v85 + 2);
      if (v86 == v92)
      {
        break;
      }

      if (v86++ >= v92)
      {
        goto LABEL_66;
      }

      v93 = v88 + *(v189 + 48);
      sub_10003DFF8(v91, v88, &qword_101A2CD38);
      sub_10000BE14(&v85[v89 + v90], v93, &qword_101A2CD38);
      v94 = v195;
      v95 = *(v195 + 48);
      v96 = v175;
      v97 = *(*(v175 - 8) + 16);
      v98 = v88;
      v99 = v190;
      v97(v190, v98, v175);
      v202 = *(v94 + 48);
      sub_1011F6E9C(v98 + v95, v99 + v202, _s14ColumnCRDTDataVMa);
      v100 = v191;
      v97(v191, v93, v96);
      sub_1011F6E9C(v93 + v95, v100 + *(v94 + 48), _s14ColumnCRDTDataVMa);
      sub_1000685BC(&qword_1019F37C0, &type metadata accessor for UUID);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        sub_10000CAAC(v100, &qword_101A2CD38);
        sub_10000CAAC(v99, &qword_101A2CD38);
        sub_10000CAAC(v194, &qword_101A2CD40);
        goto LABEL_57;
      }

      _s14ColumnCRDTDataVMa(0);
      sub_1000685BC(&qword_101A2CBC8, _s14ColumnCRDTDataVMa);
      v101 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10000CAAC(v100, &qword_101A2CD38);
      sub_10000CAAC(v99, &qword_101A2CD38);
      v88 = v194;
      result = sub_10000CAAC(v194, &qword_101A2CD40);
      v87 = v196;
      v85 = v198;
      v84 = v199;
      if ((v101 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    sub_10000CAAC(v91, &qword_101A2CD38);
LABEL_30:
    v102 = sub_10001A2F8(&qword_101A2CD58, &qword_1019FA370);
    v103 = v170;
    v202 = v102;
    v104 = dispatch thunk of Collection.count.getter();
    v105 = _swiftEmptyArrayStorage;
    v106 = v178;
    if (v104)
    {
      v107 = v104;
      v208 = _swiftEmptyArrayStorage;
      sub_1007764C4(0, v104 & ~(v104 >> 63), 0);
      v105 = v208;
      v108 = v177;
      result = dispatch thunk of Collection.startIndex.getter();
      if (v107 < 0)
      {
        goto LABEL_68;
      }

      v109 = v103;
      do
      {
        v110 = dispatch thunk of Collection.subscript.read();
        v111 = v204;
        sub_10000BE14(v112, v204, &unk_101A2C9D0);
        v110(&v209, 0);
        v113 = v111;
        v114 = v205;
        sub_10003DFF8(v113, v205, &unk_101A2C9D0);
        v115 = *(v206 + 48);
        sub_1011F6DD4(v114, v106, _s6CellIDVMa);
        v116 = sub_1005B981C(&qword_1019FA378);
        (*(*(v116 - 8) + 8))(v114 + v115, v116);
        v208 = v105;
        v117 = v108;
        v118 = v109;
        v120 = v105[2];
        v119 = v105[3];
        if (v120 >= v119 >> 1)
        {
          sub_1007764C4(v119 > 1, v120 + 1, 1);
          v105 = v208;
        }

        v105[2] = v120 + 1;
        sub_1011F6DD4(v106, v105 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v120, _s6CellIDVMa);
        dispatch thunk of Collection.formIndex(after:)();
        --v107;
        v109 = v118;
        v108 = v117;
      }

      while (v107);
      (*(v179 + 8))(v117, v180);
      v87 = v196;
    }

    v121 = sub_100E92710(v105);

    v122 = dispatch thunk of Collection.count.getter();
    v123 = _swiftEmptyArrayStorage;
    v201 = v121;
    if (v122)
    {
      v124 = v122;
      v208 = _swiftEmptyArrayStorage;
      sub_1007764C4(0, v122 & ~(v122 >> 63), 0);
      v123 = v208;
      v125 = v176;
      result = dispatch thunk of Collection.startIndex.getter();
      if (v124 < 0)
      {
        goto LABEL_69;
      }

      do
      {
        v126 = dispatch thunk of Collection.subscript.read();
        v127 = v204;
        sub_10000BE14(v128, v204, &unk_101A2C9D0);
        v126(&v209, 0);
        v129 = v205;
        sub_10003DFF8(v127, v205, &unk_101A2C9D0);
        v130 = *(v206 + 48);
        sub_1011F6DD4(v129, v87, _s6CellIDVMa);
        v131 = sub_1005B981C(&qword_1019FA378);
        (*(*(v131 - 8) + 8))(v129 + v130, v131);
        v208 = v123;
        v133 = v123[2];
        v132 = v123[3];
        if (v133 >= v132 >> 1)
        {
          sub_1007764C4(v132 > 1, v133 + 1, 1);
          v123 = v208;
        }

        v123[2] = v133 + 1;
        sub_1011F6DD4(v87, v123 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v133, _s6CellIDVMa);
        dispatch thunk of Collection.formIndex(after:)();
        --v124;
      }

      while (v124);
      (*(v179 + 8))(v125, v180);
      v121 = v201;
    }

    v134 = sub_100E92710(v123);

    sub_100BC4CAC(v121, v134);
    v136 = v135;

    v137 = v186;
    if ((v136 & 1) == 0)
    {
      goto LABEL_58;
    }

    v138 = 0;
    v139 = *(v121 + 56);
    v205 = v121 + 56;
    v140 = 1 << *(v121 + 32);
    v141 = -1;
    if (v140 < 64)
    {
      v141 = ~(-1 << v140);
    }

    v142 = v141 & v139;
    v204 = (v140 + 63) >> 6;
    v143 = v188;
    while (1)
    {
      v144 = v162;
      if (!v142)
      {
        break;
      }

LABEL_52:
      v146 = v185;
      sub_1011F6E9C(*(v121 + 48) + *(v207 + 72) * (__clz(__rbit64(v142)) | (v138 << 6)), v185, _s6CellIDVMa);
      sub_1011F6DD4(v146, v143, _s6CellIDVMa);
      CRDictionary.subscript.getter();
      v147 = sub_1005B981C(&qword_1019FA378);
      v148 = *(v147 - 8);
      v149 = v137;
      v150 = *(v148 + 48);
      if (v150(v149, 1, v147) == 1)
      {

        sub_1011F6E3C(v188, _s6CellIDVMa);
        sub_1011F6E3C(v161, _s15CapsuleDatabaseVMa);
        sub_1011F6E3C(v162, _s15CapsuleDatabaseVMa);
        sub_10000CAAC(v149, &qword_101A2C9E0);
        return 0;
      }

      sub_1000685BC(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
      v151 = v183;
      Ref.subscript.getter();
      v206 = v150;
      v152 = *(v148 + 8);
      v152(v149, v147);
      sub_1011F6DD4(v151, v187, _s12CellCRDTDataVMa);
      v153 = v184;
      CRDictionary.subscript.getter();
      if ((v206)(v153, 1, v147) == 1)
      {

        sub_1011F6E3C(v187, _s12CellCRDTDataVMa);
        sub_1011F6E3C(v188, _s6CellIDVMa);
        sub_1011F6E3C(v161, _s15CapsuleDatabaseVMa);
        sub_1011F6E3C(v162, _s15CapsuleDatabaseVMa);
        sub_10000CAAC(v153, &qword_101A2C9E0);
        return 0;
      }

      v142 &= v142 - 1;
      v154 = v182;
      Ref.subscript.getter();
      v152(v153, v147);
      v155 = v154;
      v156 = v181;
      sub_1011F6DD4(v155, v181, _s12CellCRDTDataVMa);
      v210 = v160[0];
      v157 = sub_10002C58C(&v209);
      sub_1011F6E9C(v156, v157, _s12CellCRDTDataVMa);
      v158 = v187;
      v159 = sub_1011F70DC(&v209);
      sub_1011F6E3C(v156, _s12CellCRDTDataVMa);
      sub_1011F6E3C(v158, _s12CellCRDTDataVMa);
      v143 = v188;
      sub_1011F6E3C(v188, _s6CellIDVMa);
      result = sub_10000CAAC(&v209, &unk_1019F4D00);
      v137 = v186;
      v121 = v201;
      if (!v159)
      {

        goto LABEL_59;
      }
    }

    while (1)
    {
      v145 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        break;
      }

      if (v145 >= v204)
      {
        sub_1011F6E3C(v161, _s15CapsuleDatabaseVMa);
        sub_1011F6E3C(v144, _s15CapsuleDatabaseVMa);

        return 1;
      }

      v142 = *(v205 + 8 * v145);
      ++v138;
      if (v142)
      {
        v138 = v145;
        goto LABEL_52;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  else
  {
    sub_1011F6E3C(v46, _s15CapsuleDatabaseVMa);
    v82 = v49;
LABEL_15:
    sub_1011F6E3C(v82, _s15CapsuleDatabaseVMa);
    return 0;
  }

  return result;
}

uint64_t sub_1011F67BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v26 = a2;
  v6 = sub_1005B981C(&unk_101A2CA40);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v27 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  v29 = type metadata accessor for UUID();
  v15 = *(v29 - 8);
  v24 = v15;
  (*(v15 + 16))(v14, a1, v29);
  v16 = *(v7 + 56);
  v17 = sub_1005B981C(&qword_1019FA3A8);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], v26, v17);
  v23[1] = *(sub_1005B981C(&qword_101A2CD48) + 48);
  v25 = v11;
  sub_10000BE14(v14, v11, &unk_101A2CA40);
  v26 = *(v7 + 56);
  (*(v15 + 32))(a4, v11, v29);
  v19 = v27;
  sub_10000BE14(v14, v27, &unk_101A2CA40);
  v20 = *(v7 + 56);
  _s15CapsuleDatabaseVMa();
  sub_1000685BC(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
  Ref.subscript.getter();
  sub_10000CAAC(v14, &unk_101A2CA40);
  v21 = *(v18 + 8);
  v21(v19 + v20, v17);
  (*(v24 + 8))(v19, v29);
  return (v21)(&v25[v26], v17);
}

uint64_t sub_1011F6AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v26 = a2;
  v6 = sub_1005B981C(&qword_101A2CA38);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v27 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  v29 = type metadata accessor for UUID();
  v15 = *(v29 - 8);
  v24 = v15;
  (*(v15 + 16))(v14, a1, v29);
  v16 = *(v7 + 56);
  v17 = sub_1005B981C(&qword_101A2C8B0);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], v26, v17);
  v23[1] = *(sub_1005B981C(&qword_101A2CD38) + 48);
  v25 = v11;
  sub_10000BE14(v14, v11, &qword_101A2CA38);
  v26 = *(v7 + 56);
  (*(v15 + 32))(a4, v11, v29);
  v19 = v27;
  sub_10000BE14(v14, v27, &qword_101A2CA38);
  v20 = *(v7 + 56);
  _s15CapsuleDatabaseVMa();
  sub_1000685BC(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
  Ref.subscript.getter();
  sub_10000CAAC(v14, &qword_101A2CA38);
  v21 = *(v18 + 8);
  v21(v19 + v20, v17);
  (*(v24 + 8))(v19, v29);
  return (v21)(&v25[v26], v17);
}

uint64_t sub_1011F6DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011F6E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011F6E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1011F6F7C()
{
  type metadata accessor for CRLWPStorageCRDTData(319);
  if (v0 <= 0x3F)
  {
    sub_100FEFFEC();
    if (v1 <= 0x3F)
    {
      sub_100039F68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1011F7060@<Q0>(_OWORD *a1@<X8>)
{
  _s12CellCRDTDataVMa(0);
  sub_1005B981C(&unk_101A10690);
  CRRegister.wrappedValue.getter();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

BOOL sub_1011F70DC(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A2CF20);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = _s12CellCRDTDataVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BE14(a1, v36, &unk_1019F4D00);
  if (!*&v36[24])
  {
    sub_10000CAAC(v36, &unk_1019F4D00);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_10;
  }

  v10 = swift_dynamicCast();
  (*(v7 + 56))(v5, v10 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_10:
    sub_10000CAAC(v5, &qword_101A2CF20);
    return 0;
  }

  sub_1011FA124(v5, v9);
  sub_1005B981C(&unk_101A10690);
  v24 = v1;
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v11 = v51;
  v48 = v55;
  v49 = v56;
  v50[0] = *v57;
  v12 = v58;
  *(v50 + 15) = *&v57[15];
  v46 = v53;
  v47 = v54;
  v13 = v67;
  if (!v58)
  {
    if (!v66)
    {
      *v36 = v51;
      v36[8] = v52;
      *&v36[41] = v55;
      *&v36[57] = v56;
      *&v36[73] = *v57;
      *&v36[9] = v53;
      *&v36[25] = v54;
      *&v36[88] = *&v57[15];
      *&v36[96] = 0;
      v37 = v59;
      sub_10000CAAC(v36, &qword_1019FFF80);
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (!v66)
  {
LABEL_12:
    *v36 = v51;
    v36[8] = v52;
    *&v36[41] = v55;
    *&v36[57] = v56;
    *&v36[73] = *v57;
    *&v36[9] = v53;
    *&v36[25] = v54;
    *&v36[88] = *&v57[15];
    *&v36[96] = v58;
    v37 = v59;
    v38 = v60;
    v39 = v61;
    v42 = v64;
    v43 = v65;
    v40 = v62;
    v41 = v63;
    v44 = v66;
    v45 = v67;
    v17 = &qword_1019FFF90;
    v18 = v36;
LABEL_14:
    sub_10000CAAC(v18, v17);
    goto LABEL_15;
  }

  v23 = v59;
  *v36 = v60;
  *&v36[16] = v61;
  *&v36[64] = v64;
  *&v36[80] = v65;
  *&v36[32] = v62;
  *&v36[48] = v63;
  *&v36[96] = v66;
  v37 = v67;
  v34[0] = *&v36[9];
  v34[1] = *&v36[25];
  *(&v34[4] + 15) = *&v36[88];
  v34[3] = *&v36[57];
  v34[4] = *&v36[73];
  v34[2] = *&v36[41];
  v35[0] = v53;
  v35[1] = v54;
  *(&v35[4] + 15) = *&v57[15];
  v35[3] = v56;
  v35[4] = *v57;
  v35[2] = v55;
  *&v70[0] = v51;
  v14 = v52;
  BYTE8(v70[0]) = v52 & 1;
  *&v68[0] = v60;
  BYTE8(v68[0]) = BYTE8(v60) & 1;
  sub_10000BE14(&v51, &v25, &qword_1019FFF80);
  sub_10000BE14(&v60, &v25, &qword_1019FFF80);
  sub_100A1B84C();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0 || (v68[2] = *(&v35[2] + 7), v68[3] = *(&v35[3] + 7), v68[4] = *(&v35[4] + 7), v68[0] = *(v35 + 7), v68[1] = *(&v35[1] + 7), v69 = v12, v70[2] = *(&v34[2] + 7), v70[3] = *(&v34[3] + 7), v70[4] = *(&v34[4] + 7), v71 = *(&v34[5] + 7), v70[0] = *(v34 + 7), v70[1] = *(&v34[1] + 7), (sub_1008AFE44(v68, v70) & 1) == 0))
  {
    sub_10000CAAC(v36, &qword_1019FFF80);
    sub_10000CAAC(&v60, &qword_1019FFF80);
    sub_10000CAAC(&v51, &qword_1019FFF80);
    v29 = v48;
    v30 = v49;
    *v31 = v50[0];
    v27 = v46;
    v25 = v11;
    v26 = v14;
    v28 = v47;
    *&v31[15] = *(v50 + 15);
    v32 = v12;
    v33 = v23;
    v18 = &v25;
    v17 = &qword_1019FFF80;
    goto LABEL_14;
  }

  v15 = v23;
  v16 = sub_100B3216C(v23, v13);
  sub_10000CAAC(v36, &qword_1019FFF80);
  sub_10000CAAC(&v60, &qword_1019FFF80);
  sub_10000CAAC(&v51, &qword_1019FFF80);
  v29 = v48;
  v30 = v49;
  *v31 = v50[0];
  v27 = v46;
  v25 = v11;
  v26 = v14;
  v28 = v47;
  *&v31[15] = *(v50 + 15);
  v32 = v12;
  v33 = v15;
  sub_10000CAAC(&v25, &qword_1019FFF80);
  if ((v16 & 1) == 0)
  {
LABEL_15:
    sub_1011FA188(v9, _s12CellCRDTDataVMa);
    return 0;
  }

LABEL_19:
  v20 = v24;
  if ((sub_100A3EB88(v24) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = type metadata accessor for CRLWPStorageCRDTData(0);
  v22 = sub_100A3EB88(v20 + *(v21 + 20));
  sub_1011FA188(v9, _s12CellCRDTDataVMa);
  return (v22 & 1) != 0;
}

uint64_t sub_1011F7724(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2CF38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1011F84C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1011F82DC(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    _s6CellIDVMa(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1011F78E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = type metadata accessor for UUID();
  v26 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v27 = &v21 - v7;
  v8 = sub_1005B981C(&qword_101A2CF30);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = _s6CellIDVMa(0);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1011F84C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v12;
  v23 = v5;
  v24 = v14;
  v15 = v26;
  v32 = 0;
  sub_1011F82DC(&qword_1019F43A8, &type metadata accessor for UUID);
  v16 = v27;
  v17 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = *(v15 + 32);
  (v27)(v24, v16, v30);
  v31 = 1;
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v17);
  v19 = v24;
  (v27)(&v24[*(v22 + 20)], v18, v30);
  sub_1011FA1E8(v19, v25, _s6CellIDVMa);
  sub_100005070(a1);
  return sub_1011FA188(v19, _s6CellIDVMa);
}

uint64_t sub_1011F7CAC()
{
  if (*v0)
  {
    return 0x44496E6D756C6F63;
  }

  else
  {
    return 0x4449776F72;
  }
}

uint64_t sub_1011F7CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496E6D756C6F63 && a2 == 0xE800000000000000)
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

uint64_t sub_1011F7DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F8468();
  v5 = sub_1011F84C0();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_1011F7E24(uint64_t a1)
{
  v2 = sub_1011F84C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011F7E60(uint64_t a1)
{
  v2 = sub_1011F84C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011F7F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F82DC(&qword_101A2C8D0, _s6CellIDVMa);
  v7 = sub_1011F82DC(&qword_101A2CF18, _s6CellIDVMa);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1011F80C4(uint64_t a1)
{
  v2 = sub_1011F82DC(&qword_101A2CF40, _s6CellIDVMa);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1011F81C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&unk_101A0B020, _s6CellIDVMa);

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for CRKeyPath);
}

uint64_t sub_1011F82DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1011F83B8()
{
  result = qword_101A2CE90;
  if (!qword_101A2CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2CE90);
  }

  return result;
}

unint64_t sub_1011F8410()
{
  result = qword_101A2CE98;
  if (!qword_101A2CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2CE98);
  }

  return result;
}

unint64_t sub_1011F8468()
{
  result = qword_101A2CEA0;
  if (!qword_101A2CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2CEA0);
  }

  return result;
}

unint64_t sub_1011F84C0()
{
  result = qword_101A2CEA8;
  if (!qword_101A2CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2CEA8);
  }

  return result;
}

unint64_t sub_1011F8518()
{
  result = qword_101A2CEB0;
  if (!qword_101A2CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2CEB0);
  }

  return result;
}

unint64_t sub_1011F8570()
{
  result = qword_101A2CEB8;
  if (!qword_101A2CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2CEB8);
  }

  return result;
}

uint64_t sub_1011F8608()
{
  qword_101AD9238 = 97;
  unk_101AD9240 = 0xE100000000000000;
  qword_101AD9248 = swift_getKeyPath();
  unk_101AD9250 = 98;
  qword_101AD9258 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9260 = result;
  return result;
}

uint64_t sub_1011F8664@<X0>(void *a1@<X8>)
{
  if (qword_1019F2A98 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_101AD9240;
  v3 = qword_101AD9248;
  v2 = unk_101AD9250;
  v4 = qword_101AD9258;
  v5 = qword_101AD9260;
  *a1 = qword_101AD9238;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1011F8708(uint64_t a1)
{
  v2 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_1011F8774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10068D144();
  CRAttributedString.init()();
  CRAttributedString.init(_:)();
  *&v7[*(v5 + 32)] = _swiftEmptyDictionarySingleton;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_1005B981C(&qword_1019FFF80);
  sub_1006BD16C();
  CRRegister.init(wrappedValue:)();
  *(a2 + *(a1 + 24)) = _swiftEmptyDictionarySingleton;
  sub_1011FA1E8(v7, a2, type metadata accessor for CRLWPStorageCRDTData);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_1005B981C(&unk_101A10690);
  CRRegister.wrappedValue.setter();
  return sub_1011FA188(v7, type metadata accessor for CRLWPStorageCRDTData);
}

uint64_t sub_1011F8908(uint64_t a1)
{
  v2 = sub_1011F82DC(&qword_101A2CEE0, _s12CellCRDTDataVMa);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1011F8974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1011F89F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1011F8A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_1011F8AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_1011F8B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1011F8C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F8C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1011F8CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F8D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1011F8E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1011F8E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1011F8F10()
{
  sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_1011F8F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1011F8FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F907C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1011F9208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1011F82DC(&unk_101A2CA20, _s12CellCRDTDataVMa);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1011F9384(uint64_t a1)
{
  v2 = sub_1011F82DC(&qword_101A2CF28, _s12CellCRDTDataVMa);

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

Swift::Int sub_1011F96CC()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1011F9760()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1011F97B0()
{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1011F82DC(&unk_101A0B020, _s6CellIDVMa);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_1011F82DC(&unk_101A2C5A0, &type metadata accessor for CRKeyPath);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1011F9968@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for CRKeyPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for UUID();
  v61 = *(v16 - 8);
  __chkstk_darwin(v16);
  v58 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v57 = &v46 - v19;
  __chkstk_darwin(v20);
  v56 = &v46 - v21;
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  v25 = CRKeyPath.components.getter();
  if (v25)
  {
    v26 = v25;
    v60 = a1;
    if (*(v25 + 16) == 2)
    {
      v52 = v6;
      v53 = v24;
      v55 = a2;
      v27 = *(v11 + 16);
      v49 = v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v50 = v27;
      (v27)(v15);
      CRKeyPath.uuid.getter();
      v28 = *(v11 + 8);
      v28(v15, v10);
      v29 = v61;
      v30 = *(v61 + 48);
      v54 = v16;
      v51 = v30;
      if (v30(v9, 1, v16) == 1)
      {
        v28(v60, v10);

        v31 = v9;
      }

      else
      {
        v48 = v28;
        v32 = v53;
        v47 = *(v29 + 32);
        result = v47(v53, v9, v54);
        if (*(v26 + 16) < 2uLL)
        {
          __break(1u);
          return result;
        }

        v34 = v59;
        v50(v59, v49 + *(v11 + 72), v10);

        v35 = v52;
        CRKeyPath.uuid.getter();
        v36 = v48;
        v48(v60, v10);
        v36(v34, v10);
        v37 = v54;
        if (v51(v35, 1, v54) != 1)
        {
          v39 = v56;
          v40 = v35;
          v41 = v47;
          v47(v56, v40, v37);
          v42 = v57;
          v41(v57, v32, v37);
          v43 = v58;
          v41(v58, v39, v37);
          v44 = v55;
          v41(v55, v42, v37);
          v45 = _s6CellIDVMa(0);
          v41(&v44[*(v45 + 20)], v43, v37);
          return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
        }

        (*(v61 + 8))(v32, v37);
        v31 = v35;
      }

      sub_10000CAAC(v31, &qword_1019F6990);
      a2 = v55;
    }

    else
    {
      (*(v11 + 8))(v60, v10);
    }
  }

  else
  {
    (*(v11 + 8))(a1, v10);
  }

  v38 = _s6CellIDVMa(0);
  return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
}

uint64_t sub_1011F9ED8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_1019FA380);
  type metadata accessor for CRKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  v8 = *(v4 + 16);
  v8(v6, v1, v3);
  CRKeyPath.init(_:)();
  v8(v6, v1 + *(a1 + 20), v3);
  CRKeyPath.init(_:)();
  v10[1] = v7;
  sub_1005B981C(&qword_1019FA388);
  sub_10001A2F8(&qword_1019FA390, &qword_1019FA388);
  return CRKeyPath.init<A>(_:)();
}

uint64_t sub_1011FA124(uint64_t a1, uint64_t a2)
{
  v4 = _s12CellCRDTDataVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011FA188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011FA1E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1011FA264()
{
  result = qword_101A2CF48;
  if (!qword_101A2CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2CF48);
  }

  return result;
}

uint64_t sub_1011FA2B8()
{
  v1 = sub_1005B981C(&unk_101A2C890);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = qword_101AD9268;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  swift_getKeyPath();
  Capsule.subscript.getter();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1011FA3EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012017B4(a2, v5, type metadata accessor for CRLContainerItemCRDTData);
  return Capsule.Ref.subscript.setter();
}

void (*sub_1011FA4B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1005B981C(&unk_101A2C890);
  v4[10] = v5;
  v6 = *(v5 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v5 - 8) + 64));
  }

  v8 = v7;
  v4[11] = v7;
  v9 = *(*(type metadata accessor for CRLContainerItemCRDTData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = qword_101AD9268;
  v4[13] = v10;
  v4[14] = v11;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v11, v5);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v6 + 8))(v8, v5);
  return sub_1011FA680;
}

void sub_1011FA680(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = sub_1012017B4(*(*a1 + 104), v5, type metadata accessor for CRLContainerItemCRDTData);
    __chkstk_darwin(v6);
    __chkstk_darwin(v7);
    swift_beginAccess();
    Capsule.mutate<A>(_:)();
    swift_endAccess();
    sub_100D62090(v5);
  }

  else
  {
    __chkstk_darwin(a1);
    __chkstk_darwin(v8);
    swift_beginAccess();
    Capsule.mutate<A>(_:)();
    swift_endAccess();
  }

  sub_100D62090(v3);
  free(v3);
  free(v5);
  free(v4);
  free(v2);
}

uint64_t *sub_1011FA8B4(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A2C890);
  v53 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v46 - v7;
  v8 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v46 - v11;
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v15);
  v47 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v46 - v18;
  __chkstk_darwin(v19);
  v51 = &v46 - v20;
  __chkstk_darwin(v21);
  v55 = &v46 - v22;
  v23 = *(*v2 + 736);
  swift_beginAccess();
  if (a1)
  {
    v24 = v51;
    sub_10000BE14(v2 + v23, v51, &unk_101A226A0);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0);
    CRType.copy(renamingReferences:)();
    sub_10000CAAC(v24, &unk_101A226A0);
    v25 = qword_101AD8098;
    swift_beginAccess();
    v26 = v2 + v25;
    v27 = v52;
    sub_1012017B4(v26, v52, type metadata accessor for CRLContainerItemCRDTData);
    sub_10120176C(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData);
    v28 = v14;
    CRType.copy(renamingReferences:)();
    sub_100D62090(v27);
    v29 = qword_101AD9268;
    swift_beginAccess();
    v30 = v53;
    v31 = *(v53 + 16);
    v32 = v2 + v29;
    v33 = v54;
    v31(v54, v32, v4);
    Capsule.copy()();
    v34 = v4;
    (*(v30 + 8))(v33, v4);
  }

  else
  {
    sub_10000BE14(v2 + v23, v55, &unk_101A226A0);
    v35 = qword_101AD8098;
    swift_beginAccess();
    v28 = v14;
    sub_1012017B4(v2 + v35, v14, type metadata accessor for CRLContainerItemCRDTData);
    v36 = qword_101AD9268;
    swift_beginAccess();
    v31 = *(v53 + 16);
    v34 = v4;
    v31(v56, v2 + v36, v4);
  }

  v37 = v51;
  sub_10000BE14(v55, v51, &unk_101A226A0);
  v48 = v28;
  v38 = v52;
  sub_1012017B4(v28, v52, type metadata accessor for CRLContainerItemCRDTData);
  v39 = v54;
  v31(v54, v56, v34);
  v57[0] = 0x4000000000000;
  v57[1] = 0x2000400000000;
  v57[2] = 0x4000000000000;
  v57[3] = 0;
  v58 = 1;
  type metadata accessor for CRLTableItemData();
  v40 = swift_allocObject();
  v31((v40 + qword_101AD9268), v39, v34);
  v41 = v49;
  sub_10000BE14(v37, v49, &unk_101A226A0);
  v42 = v50;
  sub_1012017B4(v38, v50, type metadata accessor for CRLContainerItemCRDTData);
  sub_1012017B4(v42, v40 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v43 = v47;
  sub_10000BE14(v41, v47, &unk_101A226A0);
  sub_10000BE14(v43, v40 + *(*v40 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v43, &unk_101A226A0);
  sub_100D62090(v42);
  sub_10000CAAC(v41, &unk_101A226A0);
  v44 = *(v53 + 8);
  v44(v54, v34);
  sub_100D62090(v38);
  sub_10000CAAC(v37, &unk_101A226A0);
  v44(v56, v34);
  sub_100D62090(v48);
  sub_10000CAAC(v55, &unk_101A226A0);
  return sub_100747AF0(v57, 12);
}

uint64_t sub_1011FAF9C()
{
  v1 = _s10RowElementVMa(0);
  v91 = *(v1 - 8);
  v92 = v1;
  __chkstk_darwin(v1);
  v80 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = (&v71 - v4);
  v5 = sub_1005B981C(&qword_101A2D390);
  __chkstk_darwin(v5 - 8);
  v99 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v71 - v8;
  v94 = sub_1005B981C(&unk_101A2CA40);
  v77 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v71 - v11;
  __chkstk_darwin(v12);
  v75 = &v71 - v13;
  v96 = sub_1005B981C(&qword_101A2D3B8);
  v73 = *(v96 - 8);
  __chkstk_darwin(v96);
  v15 = &v71 - v14;
  v16 = sub_1005B981C(&unk_101A2C7D0);
  v74 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  v22 = sub_1005B981C(&unk_101A2C890);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v86 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v71 - v26;
  v28 = qword_101AD9268;
  swift_beginAccess();
  v29 = *(v23 + 16);
  v93 = v0;
  v84 = v23 + 16;
  v85 = v28;
  v83 = v29;
  v29(v27, v0 + v28, v22);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v23 + 8);
  v87 = v23 + 8;
  v88 = v22;
  v82 = v30;
  v30(v27, v22);
  sub_10001A2F8(&qword_101A2D3B0, &unk_101A2C7D0);
  v31 = dispatch thunk of Sequence.underestimatedCount.getter();
  v100 = _swiftEmptyArrayStorage;
  sub_1007766C4(0, v31 & ~(v31 >> 63), 0);
  v32 = v100;
  v33 = *(v74 + 16);
  v72 = v21;
  v33(v18, v21, v16);
  v95 = v15;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v31 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v71 = v16;
  if (v31)
  {
    v79 = (v77 + 48);
    v78 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8);
    v35 = v99;
    v36 = v90;
    v37 = v86;
    while (1)
    {
      v98 = v31;
      v38 = v32;
      dispatch thunk of IteratorProtocol.next()();
      v39 = v94;
      result = (*v79)(v35, 1, v94);
      if (result == 1)
      {
        goto LABEL_18;
      }

      v40 = v35;
      v41 = v89;
      sub_10000BE14(v40, v89, &unk_101A2CA40);
      v97 = *(v39 + 48);
      sub_10000BE14(v99, v36, &unk_101A2CA40);
      v42 = *(v39 + 48);
      v43 = v88;
      v83(v37, v93 + v85, v88);
      v44 = sub_1005B981C(&qword_1019FA3A8);
      _s15CapsuleDatabaseVMa();
      sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
      v45 = v80;
      Ref.subscript.getter();
      v82(v37, v43);
      v46 = *(*(v44 - 8) + 8);
      v46(v36 + v42, v44);
      v47 = type metadata accessor for UUID();
      v48 = *(v47 - 8);
      (*(v48 + 32))(v45, v41, v47);
      (*(v48 + 8))(v36, v47);
      v49 = v41 + v97;
      v35 = v99;
      v46(v49, v44);
      sub_10000CAAC(v35, &unk_101A2CA40);
      v32 = v38;
      v100 = v38;
      v51 = v38[2];
      v50 = v38[3];
      if (v51 >= v50 >> 1)
      {
        sub_1007766C4(v50 > 1, v51 + 1, 1);
        v32 = v100;
      }

      *(v32 + 16) = v51 + 1;
      sub_10120181C(v45, v32 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v51, _s10RowElementVMa);
      v31 = v98 - 1;
      v52 = v81;
      if (v98 == 1)
      {
        goto LABEL_10;
      }
    }
  }

  v52 = v81;
LABEL_10:
  v53 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8);
  v54 = v76;
  v97 = v53;
  dispatch thunk of IteratorProtocol.next()();
  v55 = *(v77 + 48);
  v56 = v94;
  v77 += 48;
  v81 = v55;
  if (v55(v54, 1, v94) != 1)
  {
    v57 = v89;
    do
    {
      v99 = v32;
      v58 = v54;
      v59 = v75;
      sub_10003DFF8(v58, v75, &unk_101A2CA40);
      sub_10000BE14(v59, v57, &unk_101A2CA40);
      v98 = *(v56 + 48);
      v60 = v90;
      sub_10000BE14(v59, v90, &unk_101A2CA40);
      v61 = *(v56 + 48);
      v62 = v86;
      v63 = v88;
      v83(v86, v93 + v85, v88);
      v64 = sub_1005B981C(&qword_1019FA3A8);
      _s15CapsuleDatabaseVMa();
      sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
      Ref.subscript.getter();
      v65 = v63;
      v32 = v99;
      v82(v62, v65);
      sub_10000CAAC(v59, &unk_101A2CA40);
      v66 = *(*(v64 - 8) + 8);
      v54 = v76;
      v66(v60 + v61, v64);
      v67 = type metadata accessor for UUID();
      v68 = *(v67 - 8);
      (*(v68 + 32))(v52, v57, v67);
      (*(v68 + 8))(v60, v67);
      v66(v57 + v98, v64);
      v100 = v32;
      v70 = *(v32 + 16);
      v69 = *(v32 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1007766C4(v69 > 1, v70 + 1, 1);
        v32 = v100;
      }

      *(v32 + 16) = v70 + 1;
      sub_10120181C(v52, v32 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v70, _s10RowElementVMa);
      dispatch thunk of IteratorProtocol.next()();
      v56 = v94;
    }

    while (v81(v54, 1, v94) != 1);
  }

  (*(v73 + 8))(v95, v96);
  (*(v74 + 8))(v72, v71);
  sub_10000CAAC(v54, &qword_101A2D390);
  return v32;
}

uint64_t sub_1011FBBD8()
{
  v66 = type metadata accessor for UUID();
  v69 = *(v66 - 8);
  v1 = __chkstk_darwin(v66);
  v65 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v54 = &v54 - v3;
  v4 = sub_1005B981C(&qword_101A2D390);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v54 - v8;
  v67 = sub_1005B981C(&unk_101A2CA40);
  v61 = *(v67 - 8);
  v9 = __chkstk_darwin(v67);
  v68 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v54 - v11;
  v70 = sub_1005B981C(&qword_101A2D3B8);
  v57 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - v12;
  v13 = sub_1005B981C(&unk_101A2C7D0);
  v59 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = sub_1005B981C(&unk_101A2C890);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v22 = qword_101AD9268;
  swift_beginAccess();
  (*(v19 + 16))(v21, v0 + v22, v18);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v19 + 8))(v21, v18);
  sub_10001A2F8(&qword_101A2D3B0, &unk_101A2C7D0);
  v23 = dispatch thunk of Sequence.underestimatedCount.getter();
  v73 = _swiftEmptyArrayStorage;
  sub_100776524(0, v23 & ~(v23 >> 63), 0);
  v72 = v73;
  v24 = *(v59 + 16);
  v55 = v17;
  v24(v64, v17, v13);
  v56 = v13;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v23 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v23)
  {
    v63 = (v61 + 48);
    v26 = (v69 + 32);
    v64 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8);
    v62 = v7;
    do
    {
      dispatch thunk of IteratorProtocol.next()();
      v27 = v67;
      result = (*v63)(v7, 1, v67);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v28 = v68;
      sub_10000BE14(v7, v68, &unk_101A2CA40);
      v29 = *(v27 + 48);
      v30 = *v26;
      v32 = v65;
      v31 = v66;
      (*v26)(v65, v28, v66);
      v33 = sub_1005B981C(&qword_1019FA3A8);
      (*(*(v33 - 8) + 8))(v28 + v29, v33);
      sub_10000CAAC(v7, &unk_101A2CA40);
      v34 = v72;
      v73 = v72;
      v36 = v72[2];
      v35 = v72[3];
      if (v36 >= v35 >> 1)
      {
        sub_100776524(v35 > 1, v36 + 1, 1);
        v31 = v66;
        v34 = v73;
      }

      v34[2] = v36 + 1;
      v37 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v72 = v34;
      v30(v34 + v37 + *(v69 + 72) * v36, v32, v31);
      --v23;
      v7 = v62;
    }

    while (v23);
  }

  v38 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8);
  v39 = v58;
  v65 = v38;
  dispatch thunk of IteratorProtocol.next()();
  v40 = *(v61 + 48);
  v41 = v67;
  v61 += 48;
  v64 = v40;
  if ((v40)(v39, 1, v67) == 1)
  {
    v42 = v72;
  }

  else
  {
    v43 = (v69 + 32);
    v44 = v66;
    v45 = v54;
    v42 = v72;
    do
    {
      v46 = v60;
      sub_10003DFF8(v39, v60, &unk_101A2CA40);
      v47 = v68;
      sub_10003DFF8(v46, v68, &unk_101A2CA40);
      v48 = *(v41 + 48);
      v49 = *v43;
      (*v43)(v45, v47, v44);
      v50 = sub_1005B981C(&qword_1019FA3A8);
      (*(*(v50 - 8) + 8))(v47 + v48, v50);
      v73 = v42;
      v51 = v39;
      v53 = v42[2];
      v52 = v42[3];
      if (v53 >= v52 >> 1)
      {
        sub_100776524(v52 > 1, v53 + 1, 1);
        v42 = v73;
      }

      v42[2] = v53 + 1;
      v49(v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v53, v45, v44);
      dispatch thunk of IteratorProtocol.next()();
      v39 = v51;
    }

    while ((v64)(v51, 1, v41) != 1);
  }

  (*(v57 + 8))(v71, v70);
  (*(v59 + 8))(v55, v56);
  sub_10000CAAC(v39, &qword_101A2D390);
  return v42;
}

uint64_t sub_1011FC4B4()
{
  v1 = _s13ColumnElementVMa(0);
  v91 = *(v1 - 8);
  v92 = v1;
  __chkstk_darwin(v1);
  v80 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = (&v71 - v4);
  v5 = sub_1005B981C(&qword_101A2D370);
  __chkstk_darwin(v5 - 8);
  v99 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v71 - v8;
  v94 = sub_1005B981C(&qword_101A2CA38);
  v77 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v71 - v11;
  __chkstk_darwin(v12);
  v75 = &v71 - v13;
  v96 = sub_1005B981C(&qword_101A2D3D0);
  v73 = *(v96 - 8);
  __chkstk_darwin(v96);
  v15 = &v71 - v14;
  v16 = sub_1005B981C(&unk_101A2D830);
  v74 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  v22 = sub_1005B981C(&unk_101A2C890);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v86 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v71 - v26;
  v28 = qword_101AD9268;
  swift_beginAccess();
  v29 = *(v23 + 16);
  v93 = v0;
  v84 = v23 + 16;
  v85 = v28;
  v83 = v29;
  v29(v27, v0 + v28, v22);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v23 + 8);
  v87 = v23 + 8;
  v88 = v22;
  v82 = v30;
  v30(v27, v22);
  sub_10001A2F8(&qword_101A2D3C8, &unk_101A2D830);
  v31 = dispatch thunk of Sequence.underestimatedCount.getter();
  v100 = _swiftEmptyArrayStorage;
  sub_1007766E4(0, v31 & ~(v31 >> 63), 0);
  v32 = v100;
  v33 = *(v74 + 16);
  v72 = v21;
  v33(v18, v21, v16);
  v95 = v15;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v31 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v71 = v16;
  if (v31)
  {
    v79 = (v77 + 48);
    v78 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0);
    v35 = v99;
    v36 = v90;
    v37 = v86;
    while (1)
    {
      v98 = v31;
      v38 = v32;
      dispatch thunk of IteratorProtocol.next()();
      v39 = v94;
      result = (*v79)(v35, 1, v94);
      if (result == 1)
      {
        goto LABEL_18;
      }

      v40 = v35;
      v41 = v89;
      sub_10000BE14(v40, v89, &qword_101A2CA38);
      v97 = *(v39 + 48);
      sub_10000BE14(v99, v36, &qword_101A2CA38);
      v42 = *(v39 + 48);
      v43 = v88;
      v83(v37, v93 + v85, v88);
      v44 = sub_1005B981C(&qword_101A2C8B0);
      _s15CapsuleDatabaseVMa();
      sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
      v45 = v80;
      Ref.subscript.getter();
      v82(v37, v43);
      v46 = *(*(v44 - 8) + 8);
      v46(v36 + v42, v44);
      v47 = type metadata accessor for UUID();
      v48 = *(v47 - 8);
      (*(v48 + 32))(v45, v41, v47);
      (*(v48 + 8))(v36, v47);
      v49 = v41 + v97;
      v35 = v99;
      v46(v49, v44);
      sub_10000CAAC(v35, &qword_101A2CA38);
      v32 = v38;
      v100 = v38;
      v51 = v38[2];
      v50 = v38[3];
      if (v51 >= v50 >> 1)
      {
        sub_1007766E4(v50 > 1, v51 + 1, 1);
        v32 = v100;
      }

      *(v32 + 16) = v51 + 1;
      sub_10120181C(v45, v32 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v51, _s13ColumnElementVMa);
      v31 = v98 - 1;
      v52 = v81;
      if (v98 == 1)
      {
        goto LABEL_10;
      }
    }
  }

  v52 = v81;
LABEL_10:
  v53 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0);
  v54 = v76;
  v97 = v53;
  dispatch thunk of IteratorProtocol.next()();
  v55 = *(v77 + 48);
  v56 = v94;
  v77 += 48;
  v81 = v55;
  if (v55(v54, 1, v94) != 1)
  {
    v57 = v89;
    do
    {
      v99 = v32;
      v58 = v54;
      v59 = v75;
      sub_10003DFF8(v58, v75, &qword_101A2CA38);
      sub_10000BE14(v59, v57, &qword_101A2CA38);
      v98 = *(v56 + 48);
      v60 = v90;
      sub_10000BE14(v59, v90, &qword_101A2CA38);
      v61 = *(v56 + 48);
      v62 = v86;
      v63 = v88;
      v83(v86, v93 + v85, v88);
      v64 = sub_1005B981C(&qword_101A2C8B0);
      _s15CapsuleDatabaseVMa();
      sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
      Ref.subscript.getter();
      v65 = v63;
      v32 = v99;
      v82(v62, v65);
      sub_10000CAAC(v59, &qword_101A2CA38);
      v66 = *(*(v64 - 8) + 8);
      v54 = v76;
      v66(v60 + v61, v64);
      v67 = type metadata accessor for UUID();
      v68 = *(v67 - 8);
      (*(v68 + 32))(v52, v57, v67);
      (*(v68 + 8))(v60, v67);
      v66(v57 + v98, v64);
      v100 = v32;
      v70 = *(v32 + 16);
      v69 = *(v32 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1007766E4(v69 > 1, v70 + 1, 1);
        v32 = v100;
      }

      *(v32 + 16) = v70 + 1;
      sub_10120181C(v52, v32 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v70, _s13ColumnElementVMa);
      dispatch thunk of IteratorProtocol.next()();
      v56 = v94;
    }

    while (v81(v54, 1, v94) != 1);
  }

  (*(v73 + 8))(v95, v96);
  (*(v74 + 8))(v72, v71);
  sub_10000CAAC(v54, &qword_101A2D370);
  return v32;
}

uint64_t sub_1011FD0F0()
{
  v66 = type metadata accessor for UUID();
  v69 = *(v66 - 8);
  v1 = __chkstk_darwin(v66);
  v65 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v54 = &v54 - v3;
  v4 = sub_1005B981C(&qword_101A2D370);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v54 - v8;
  v67 = sub_1005B981C(&qword_101A2CA38);
  v61 = *(v67 - 8);
  v9 = __chkstk_darwin(v67);
  v68 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v54 - v11;
  v70 = sub_1005B981C(&qword_101A2D3D0);
  v57 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - v12;
  v13 = sub_1005B981C(&unk_101A2D830);
  v59 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = sub_1005B981C(&unk_101A2C890);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v22 = qword_101AD9268;
  swift_beginAccess();
  (*(v19 + 16))(v21, v0 + v22, v18);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v19 + 8))(v21, v18);
  sub_10001A2F8(&qword_101A2D3C8, &unk_101A2D830);
  v23 = dispatch thunk of Sequence.underestimatedCount.getter();
  v73 = _swiftEmptyArrayStorage;
  sub_100776524(0, v23 & ~(v23 >> 63), 0);
  v72 = v73;
  v24 = *(v59 + 16);
  v55 = v17;
  v24(v64, v17, v13);
  v56 = v13;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v23 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v23)
  {
    v63 = (v61 + 48);
    v26 = (v69 + 32);
    v64 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0);
    v62 = v7;
    do
    {
      dispatch thunk of IteratorProtocol.next()();
      v27 = v67;
      result = (*v63)(v7, 1, v67);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v28 = v68;
      sub_10000BE14(v7, v68, &qword_101A2CA38);
      v29 = *(v27 + 48);
      v30 = *v26;
      v32 = v65;
      v31 = v66;
      (*v26)(v65, v28, v66);
      v33 = sub_1005B981C(&qword_101A2C8B0);
      (*(*(v33 - 8) + 8))(v28 + v29, v33);
      sub_10000CAAC(v7, &qword_101A2CA38);
      v34 = v72;
      v73 = v72;
      v36 = v72[2];
      v35 = v72[3];
      if (v36 >= v35 >> 1)
      {
        sub_100776524(v35 > 1, v36 + 1, 1);
        v31 = v66;
        v34 = v73;
      }

      v34[2] = v36 + 1;
      v37 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v72 = v34;
      v30(v34 + v37 + *(v69 + 72) * v36, v32, v31);
      --v23;
      v7 = v62;
    }

    while (v23);
  }

  v38 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0);
  v39 = v58;
  v65 = v38;
  dispatch thunk of IteratorProtocol.next()();
  v40 = *(v61 + 48);
  v41 = v67;
  v61 += 48;
  v64 = v40;
  if ((v40)(v39, 1, v67) == 1)
  {
    v42 = v72;
  }

  else
  {
    v43 = (v69 + 32);
    v44 = v66;
    v45 = v54;
    v42 = v72;
    do
    {
      v46 = v60;
      sub_10003DFF8(v39, v60, &qword_101A2CA38);
      v47 = v68;
      sub_10003DFF8(v46, v68, &qword_101A2CA38);
      v48 = *(v41 + 48);
      v49 = *v43;
      (*v43)(v45, v47, v44);
      v50 = sub_1005B981C(&qword_101A2C8B0);
      (*(*(v50 - 8) + 8))(v47 + v48, v50);
      v73 = v42;
      v51 = v39;
      v53 = v42[2];
      v52 = v42[3];
      if (v53 >= v52 >> 1)
      {
        sub_100776524(v52 > 1, v53 + 1, 1);
        v42 = v73;
      }

      v42[2] = v53 + 1;
      v49(v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v53, v45, v44);
      dispatch thunk of IteratorProtocol.next()();
      v39 = v51;
    }

    while ((v64)(v51, 1, v41) != 1);
  }

  (*(v57 + 8))(v71, v70);
  (*(v59 + 8))(v55, v56);
  sub_10000CAAC(v39, &qword_101A2D370);
  return v42;
}

uint64_t sub_1011FD9CC()
{
  v179 = _s12CellCRDTDataVMa(0);
  __chkstk_darwin(v179);
  v178 = &v168 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_101A2D368);
  __chkstk_darwin(v2 - 8);
  v212 = (&v168 - v3);
  v192 = sub_1005B981C(&qword_1019F6CB8);
  v194 = *(v192 - 8);
  __chkstk_darwin(v192);
  v211 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v193 = &v168 - v6;
  v224 = sub_1005B981C(&unk_101A2C9D0);
  v222 = *(v224 - 8);
  __chkstk_darwin(v224);
  v233 = &v168 - v7;
  v8 = sub_1005B981C(&qword_101A2C9E8);
  __chkstk_darwin(v8 - 8);
  v218 = &v168 - v9;
  v221 = sub_1005B981C(&qword_101A2C9F0);
  v170 = *(v221 - 8);
  __chkstk_darwin(v221);
  v220 = &v168 - v10;
  v182 = sub_1005B981C(&qword_1019FA370);
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v169 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v180 = &v168 - v13;
  v14 = sub_1005B981C(&qword_101A2D370);
  __chkstk_darwin(v14 - 8);
  v217 = &v168 - v15;
  v177 = sub_1005B981C(&qword_101A2CA38);
  v219 = *(v177 - 8);
  __chkstk_darwin(v177);
  v200 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v199 = &v168 - v18;
  __chkstk_darwin(v19);
  v203 = &v168 - v20;
  v202 = sub_1005B981C(&qword_101A2D378);
  __chkstk_darwin(v202);
  v201 = (&v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v198 = (&v168 - v23);
  v176 = sub_1005B981C(&unk_101A2D830);
  v173 = *(v176 - 8);
  __chkstk_darwin(v176);
  v175 = &v168 - v24;
  v174 = sub_1005B981C(&qword_101A2D380);
  __chkstk_darwin(v174);
  v216 = &v168 - v25;
  v26 = sub_1005B981C(&qword_101A2D388);
  __chkstk_darwin(v26 - 8);
  v172 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v183 = &v168 - v29;
  v30 = sub_1005B981C(&qword_101A145A0);
  v230 = *(v30 - 8);
  v231 = v30;
  __chkstk_darwin(v30);
  v197 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v210 = &v168 - v33;
  v34 = sub_1005B981C(&qword_101A2D390);
  __chkstk_darwin(v34 - 8);
  v36 = &v168 - v35;
  v232 = sub_1005B981C(&unk_101A2CA40);
  v223 = *(v232 - 8);
  __chkstk_darwin(v232);
  v209 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v208 = &v168 - v39;
  __chkstk_darwin(v40);
  v215 = (&v168 - v41);
  v214 = sub_1005B981C(&qword_101A2D398);
  __chkstk_darwin(v214);
  v213 = (&v168 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v43);
  v207 = (&v168 - v44);
  v45 = sub_1005B981C(&unk_101A2C7D0);
  v228 = *(v45 - 8);
  v229 = v45;
  __chkstk_darwin(v45);
  v227 = &v168 - v46;
  v47 = sub_1005B981C(&qword_101A2D3A0);
  v48 = v47 - 8;
  __chkstk_darwin(v47);
  v50 = &v168 - v49;
  v51 = sub_1005B981C(&unk_101A2C890);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v168 = &v168 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = &v168 - v55;
  v57 = sub_1005B981C(&qword_101A2D3A8);
  __chkstk_darwin(v57 - 8);
  v59 = &v168 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v168 - v61;
  v63 = qword_101AD9268;
  swift_beginAccess();
  v64 = *(v52 + 16);
  v191 = v0;
  v188 = v63;
  v187 = v52 + 16;
  v186 = v64;
  v64(v56, v0 + v63, v51);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v65 = *(v52 + 8);
  v184 = v56;
  v190 = v51;
  v66 = v51;
  v67 = v50;
  v189 = v52 + 8;
  v185 = v65;
  v65(v56, v66);
  v234 = _swiftEmptyArrayStorage;
  sub_100776724(0, 0, 0);
  v68 = v234;
  v171 = v62;
  sub_10000BE14(v62, v59, &qword_101A2D3A8);
  (*(v228 + 32))(v227, v59, v229);
  sub_10001A2F8(&qword_101A2D3B0, &unk_101A2C7D0);
  dispatch thunk of Sequence.makeIterator()();
  v206 = *(v48 + 44);
  *&v50[v206] = 0;
  v69 = sub_10001A2F8(&qword_101A2D3C0, &qword_101A2D3B8);
  sub_1005B981C(&qword_101A2D3B8);
  v205 = v69;
  dispatch thunk of IteratorProtocol.next()();
  v70 = *(v223 + 48);
  v223 += 48;
  v204 = v70;
  if (v70(v36, 1, v232) != 1)
  {
    v72 = 0;
    v196 = v36;
    v195 = v50;
    while (1)
    {
      v73 = v215;
      sub_10003DFF8(v36, v215, &unk_101A2CA40);
      v74 = v214;
      v75 = *(v214 + 48);
      v76 = v213;
      *v213 = v72;
      sub_10003DFF8(v73, v76 + v75, &unk_101A2CA40);
      if (__OFADD__(v72, 1))
      {
        break;
      }

      v228 = v72;
      *(v67 + v206) = v72 + 1;
      v229 = v68;
      v77 = v207;
      sub_10003DFF8(v76, v207, &qword_101A2D398);
      v78 = *v77;
      v79 = v77 + *(v74 + 48);
      v80 = v232;
      v225 = *(v232 + 48);
      v226 = v231[12];
      v227 = v78;
      v81 = type metadata accessor for UUID();
      v82 = *(v81 - 8);
      v83 = v208;
      (*(v82 + 16))(v208, v79, v81);
      v84 = *(v80 + 48);
      v85 = sub_1005B981C(&qword_1019FA3A8);
      v86 = *(v85 - 8);
      (*(v86 + 16))(v83 + v84, &v79[v225], v85);
      v87 = v209;
      sub_10003DFF8(v83, v209, &unk_101A2CA40);
      v88 = *(v80 + 48);
      v89 = v210;
      (*(v82 + 32))(v210, v87, v81);
      (*(v86 + 8))(v87 + v88, v85);
      *(v89 + v226) = v227;
      v90 = v77;
      v68 = v229;
      sub_10000CAAC(v90, &qword_101A2D398);
      v234 = v68;
      v92 = v68[2];
      v91 = v68[3];
      if (v92 >= v91 >> 1)
      {
        sub_100776724(v91 > 1, v92 + 1, 1);
        v68 = v234;
      }

      v68[2] = v92 + 1;
      sub_10003DFF8(v89, v68 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v92, &qword_101A145A0);
      sub_1005B981C(&qword_101A2D3B8);
      v36 = v196;
      v67 = v195;
      dispatch thunk of IteratorProtocol.next()();
      v93 = v204(v36, 1, v232);
      v72 = v228 + 1;
      if (v93 == 1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_2:
  sub_10000CAAC(v67, &qword_101A2D3A0);
  sub_10000CAAC(v171, &qword_101A2D3A8);
  sub_10000CAAC(v36, &qword_101A2D390);
  if (v68[2])
  {
    sub_1005B981C(&qword_101A0EE70);
    v71 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v71 = _swiftEmptyDictionarySingleton;
  }

  v94 = v216;
  v234 = v71;

  sub_101201220(v95, 1, &v234);
  v213 = 0;

  v214 = v234;
  v96 = v184;
  v97 = v190;
  v186(v184, v191 + v188, v190);
  swift_getKeyPath();
  v98 = v183;
  Capsule.subscript.getter();

  v185(v96, v97);
  v234 = _swiftEmptyArrayStorage;
  sub_100776724(0, 0, 0);
  v99 = v234;
  v100 = v172;
  sub_10000BE14(v98, v172, &qword_101A2D388);
  (*(v173 + 32))(v175, v100, v176);
  sub_10001A2F8(&qword_101A2D3C8, &unk_101A2D830);
  dispatch thunk of Sequence.makeIterator()();
  v225 = *(v174 + 36);
  *(v94 + v225) = 0;
  v101 = sub_10001A2F8(&qword_101A2D3D8, &qword_101A2D3D0);
  sub_1005B981C(&qword_101A2D3D0);
  v102 = v217;
  v223 = v101;
  dispatch thunk of IteratorProtocol.next()();
  v103 = *(v219 + 48);
  v104 = v177;
  v219 += 48;
  v215 = v103;
  if ((v103)(v102, 1, v177) != 1)
  {
    v106 = 0;
    while (1)
    {
      v107 = v102;
      v108 = v203;
      sub_10003DFF8(v107, v203, &qword_101A2CA38);
      v109 = v202;
      v110 = *(v202 + 48);
      v111 = v201;
      *v201 = v106;
      sub_10003DFF8(v108, v111 + v110, &qword_101A2CA38);
      if (__OFADD__(v106, 1))
      {
        break;
      }

      v229 = v106;
      *(v94 + v225) = v106 + 1;
      v112 = v198;
      sub_10003DFF8(v111, v198, &qword_101A2D378);
      v113 = *v112;
      v114 = v112 + *(v109 + 48);
      v226 = *(v104 + 48);
      v227 = v231[12];
      v228 = v113;
      v115 = type metadata accessor for UUID();
      v116 = *(v115 - 8);
      v232 = v99;
      v117 = v116;
      v118 = v199;
      (*(v116 + 16))(v199, v114, v115);
      v119 = *(v104 + 48);
      v120 = sub_1005B981C(&qword_101A2C8B0);
      v121 = *(v120 - 8);
      (*(v121 + 16))(v118 + v119, &v114[v226], v120);
      v122 = v200;
      sub_10003DFF8(v118, v200, &qword_101A2CA38);
      v123 = *(v104 + 48);
      v124 = v197;
      (*(v117 + 32))(v197, v122, v115);
      v99 = v232;
      (*(v121 + 8))(v122 + v123, v120);
      v125 = v124;
      *&v227[v124] = v228;
      sub_10000CAAC(v112, &qword_101A2D378);
      v234 = v99;
      v127 = v99[2];
      v126 = v99[3];
      if (v127 >= v126 >> 1)
      {
        sub_100776724(v126 > 1, v127 + 1, 1);
        v99 = v234;
      }

      v99[2] = v127 + 1;
      sub_10003DFF8(v125, v99 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v127, &qword_101A145A0);
      sub_1005B981C(&qword_101A2D3D0);
      v102 = v217;
      v94 = v216;
      dispatch thunk of IteratorProtocol.next()();
      v128 = (v215)(v102, 1, v104);
      v106 = v229 + 1;
      if (v128 == 1)
      {
        goto LABEL_12;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

LABEL_12:
  sub_10000CAAC(v94, &qword_101A2D380);
  sub_10000CAAC(v183, &qword_101A2D388);
  sub_10000CAAC(v102, &qword_101A2D370);
  if (v99[2])
  {
    sub_1005B981C(&qword_101A0EE70);
    v105 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v105 = _swiftEmptyDictionarySingleton;
  }

  v129 = v214;
  v130 = v213;
  v234 = v105;

  sub_101201220(v131, 1, &v234);
  if (v130)
  {
    goto LABEL_44;
  }

  v232 = v234;
  v132 = v168;
  v133 = v190;
  v186(v168, v191 + v188, v190);
  swift_getKeyPath();
  v134 = v180;
  Capsule.subscript.getter();

  v185(v132, v133);
  (*(v181 + 16))(v169, v134, v182);
  sub_10001A2F8(&qword_101A2C9F8, &qword_1019FA370);
  dispatch thunk of Sequence.makeIterator()();
  v135 = sub_10001A2F8(&unk_101A2CA00, &qword_101A2C9F0);
  v136 = v218;
  dispatch thunk of IteratorProtocol.next()();
  v137 = *(v222 + 48);
  v222 += 48;
  if ((v137)(v136, 1, v224) == 1)
  {
    v138 = _swiftEmptyArrayStorage;
  }

  else
  {
    v141 = (v194 + 56);
    v142 = (v194 + 48);
    v138 = _swiftEmptyArrayStorage;
    v143 = v192;
    v231 = v137;
    do
    {
      v144 = v233;
      sub_10003DFF8(v136, v233, &unk_101A2C9D0);
      if (*(v129 + 16) && (v145 = sub_10003E994(v144), (v146 & 1) != 0) && (v147 = v232, *(v232 + 16)))
      {
        v148 = v135;
        v149 = *(*(v129 + 56) + 8 * v145);
        v150 = _s6CellIDVMa(0);
        v151 = v233;
        v152 = sub_10003E994(v233 + *(v150 + 20));
        if (v153)
        {
          v230 = *(*(v147 + 56) + 8 * v152);
          v154 = v184;
          v155 = v190;
          v186(v184, v191 + v188, v190);
          sub_10120176C(&unk_101A2CA20, _s12CellCRDTDataVMa);
          v156 = v178;
          Capsule.subscript.getter();
          v157 = v155;
          v129 = v214;
          v185(v154, v157);
          v158 = *(v143 + 48);
          v159 = *(v192 + 64);
          v160 = v212;
          v161 = v230;
          *v212 = v149;
          *(v160 + 8) = v161;
          sub_1012017B4(v151, v160 + v158, _s6CellIDVMa);
          v162 = v160 + v159;
          v143 = v192;
          sub_10120181C(v156, v162, _s12CellCRDTDataVMa);
          v163 = 0;
        }

        else
        {
          v163 = 1;
          v160 = v212;
        }

        v135 = v148;
        v137 = v231;
      }

      else
      {
        v163 = 1;
        v160 = v212;
      }

      (*v141)(v160, v163, 1, v143);
      sub_10000CAAC(v233, &unk_101A2C9D0);
      if ((*v142)(v160, 1, v143) == 1)
      {
        sub_10000CAAC(v160, &qword_101A2D368);
      }

      else
      {
        v164 = v160;
        v165 = v193;
        sub_10003DFF8(v164, v193, &qword_1019F6CB8);
        sub_10003DFF8(v165, v211, &qword_1019F6CB8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_100B362D4(0, v138[2] + 1, 1, v138);
        }

        v167 = v138[2];
        v166 = v138[3];
        if (v167 >= v166 >> 1)
        {
          v138 = sub_100B362D4(v166 > 1, v167 + 1, 1, v138);
        }

        v138[2] = v167 + 1;
        sub_10003DFF8(v211, v138 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v167, &qword_1019F6CB8);
      }

      v136 = v218;
      dispatch thunk of IteratorProtocol.next()();
    }

    while ((v137)(v136, 1, v224) != 1);
  }

  (*(v170 + 8))(v220, v221);
  (*(v181 + 8))(v180, v182);
  v139 = sub_10064032C(v138);

  return v139;
}

uint64_t sub_1011FF670()
{
  v1 = sub_1005B981C(&unk_101A2C890);
  v44 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v40 - v5;
  v45 = type metadata accessor for UUID();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  type metadata accessor for CRLTableItemData();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v18;
  v41 = v3;
  v42 = v1;
  v20 = *(*v0 + 736);
  swift_beginAccess();
  v40 = v0;
  sub_10000BE14(v0 + v20, v17, &unk_101A226A0);
  v21 = *(*v19 + 736);
  swift_beginAccess();
  sub_10000BE14(v19 + v21, v14, &unk_101A226A0);

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v22 = static UUID.== infix(_:_:)();
  v23 = *(v6 + 8);
  v24 = v8;
  v25 = v45;
  v23(v24, v45);
  v23(v11, v25);
  if ((v22 & 1) == 0)
  {

    sub_10000CAAC(v14, &unk_101A226A0);
    sub_10000CAAC(v17, &unk_101A226A0);
LABEL_7:
    v37 = 0;
    return v37 & 1;
  }

  v26 = sub_101279020();
  sub_10000CAAC(v14, &unk_101A226A0);
  sub_10000CAAC(v17, &unk_101A226A0);
  if ((v26 & 1) == 0)
  {

    goto LABEL_7;
  }

  v27 = qword_101AD9268;
  v28 = v40;
  swift_beginAccess();
  v30 = v43;
  v29 = v44;
  v31 = *(v44 + 16);
  v32 = v28 + v27;
  v33 = v42;
  v31(v43, v32, v42);
  v34 = qword_101AD9268;
  swift_beginAccess();
  v35 = v19 + v34;
  v36 = v41;
  v31(v41, v35, v33);
  v37 = sub_1011F4C38(v36);

  v38 = *(v29 + 8);
  v38(v36, v33);
  v38(v30, v33);
  return v37 & 1;
}

uint64_t sub_1011FFAF0()
{
  v0 = sub_1005B981C(&unk_101A2C890);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-v2];
  type metadata accessor for CRLTableItemData();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = qword_101AD9268;
    v6 = result;
    swift_beginAccess();
    (*(v1 + 16))(v3, v6 + v5, v0);
    swift_beginAccess();
    _s15CapsuleDatabaseVMa();
    sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);

    Capsule.merge<A>(_:)();
    (*(v1 + 8))(v3, v0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1011FFCAC()
{
  v1 = type metadata accessor for CRCodableVersion();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A2C890);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = qword_101AD9268;
  swift_beginAccess();
  (*(v6 + 16))(v8, v0 + v9, v5);
  (*(v2 + 104))(v4, enum case for CRCodableVersion.version4(_:), v1);
  v10 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_1011FFEC0()
{
  v1 = sub_1005B981C(&unk_101A2C890);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v15[-v6];
  type metadata accessor for CRLTableItemData();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = qword_101AD9268;
    swift_beginAccess();
    v11 = *(v2 + 16);
    v11(v7, v0 + v10, v1);
    v12 = qword_101AD9268;
    swift_beginAccess();
    v11(v4, v9 + v12, v1);
    LOBYTE(v12) = Capsule.hasDelta(from:)();
    v13 = *(v2 + 8);
    v13(v4, v1);
    v13(v7, v1);
    return v12 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1012000CC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = v2;
  v5 = type metadata accessor for CRCodableVersion();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A2C890);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = sub_1005B981C(&qword_101A102C8);
  __chkstk_darwin(v14 - 8);
  v40 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v43 = &v35 - v17;
  v39 = a1;
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = qword_101AD9268;
    swift_beginAccess();
    v21 = *(v8 + 16);
    v21(v13, v3 + v20, v7);
    v22 = qword_101AD9268;
    swift_beginAccess();
    v21(v10, v19 + v22, v7);

    v23 = v43;
    Capsule.delta(_:from:)();
    v24 = *(v8 + 8);
    v24(v10, v7);
    v24(v13, v7);
    v25 = v40;
    sub_10000BE14(v23, v40, &qword_101A102C8);
    v26 = type metadata accessor for CapsuleMergeableDelta();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_10000CAAC(v23, &qword_101A102C8);

      sub_10000CAAC(v25, &qword_101A102C8);
      return 0;
    }

    else
    {
      v30 = v36;
      v29 = v37;
      v31 = v38;
      (*(v37 + 104))(v36, enum case for CRCodableVersion.version4(_:), v38);
      v32 = v42;
      v33 = CapsuleMergeableDelta.deltaSerializedData(_:version:)();
      if (v32)
      {

        (*(v29 + 8))(v30, v31);
        sub_10000CAAC(v43, &qword_101A102C8);
        return (*(v27 + 8))(v25, v26);
      }

      else
      {
        v34 = v33;

        (*(v29 + 8))(v30, v31);
        sub_10000CAAC(v43, &qword_101A102C8);
        (*(v27 + 8))(v25, v26);
        return v34;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1012005D4(uint64_t a1, unint64_t a2)
{
  v42 = a2;
  v41 = a1;
  v38 = type metadata accessor for UUID();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_101A2C890);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = type metadata accessor for CRCodableVersion();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapsuleMergeableDelta();
  v40 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for CRCodableVersion.version4(_:), v8, v13);
  v16 = qword_101AD9268;
  swift_beginAccess();
  v17 = *(v5 + 16);
  v39 = v2;
  v17(v7, v2 + v16, v4);
  v18 = v41;
  sub_100024E98(v41, v42);
  _s15CapsuleDatabaseVMa();
  sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
  v19 = v43;
  CapsuleMergeableDelta.init<A>(serializedData:version:in:)();
  if (!v19)
  {
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v42 = v12;
    v43 = 0;
    v23 = v39;
    swift_beginAccess();
    v18 = Capsule.merge(delta:)();
    swift_endAccess();
    if ((v18 & 1) == 0)
    {
      v41 = v15;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v35 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v25 = *(*v23 + 744);
      swift_beginAccess();
      v26 = v22;
      (*(v21 + 16))(v20, v23 + v25, v22);
      v27 = UUID.uuidString.getter();
      v29 = v28;
      (*(v21 + 8))(v20, v26);
      *(inited + 56) = &type metadata for String;
      v30 = sub_1000053B0();
      *(inited + 64) = v30;
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v44 = v23;
      type metadata accessor for CRLTableItemData();

      v31 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v30;
      *(inited + 72) = v31;
      *(inited + 80) = v32;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v35, &_mh_execute_header, v33, "Capsule delta failed to apply for %{public}@%{public}@", 54, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v15 = v41;
    }

    (*(v40 + 8))(v15, v42);
  }

  return v18 & 1;
}

uint64_t sub_101200B40(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) != 1)
  {
    return sub_100D5EFEC(a1);
  }

  __chkstk_darwin(a1);
  v3 = v2;
  __chkstk_darwin(v2);
  swift_beginAccess();
  sub_1005B981C(&unk_101A2C890);
  Capsule.mutate<A>(_:)();
  if (!v1)
  {
    swift_endAccess();
    a1 = v3;
    return sub_100D5EFEC(a1);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_101200C8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&unk_101A28650);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  swift_getKeyPath();
  v7 = Capsule.Ref.subscript.modify();
  v9 = v7;
  if (*(a2 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v10 = v8;
    v13 = v7;
    __chkstk_darwin(v7);
    *(&v12 - 2) = a2;
    type metadata accessor for UUID();
    v15 = CROrderedSet.map<A>(_:)();
    sub_1005B981C(&qword_101A0A360);
    sub_10120176C(&qword_1019FB870, &type metadata accessor for UUID);
    sub_10001A2F8(&unk_101A09E20, &qword_101A0A360);
    CROrderedSet.init<A>(_:)();
    (*(v4 + 40))(v10, v6, v3);
    v9 = v13;
  }

  v9(v14, 0);
}

uint64_t sub_101200EEC()
{
  v1 = qword_101AD9268;
  v2 = sub_1005B981C(&unk_101A2C890);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_101200F60()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100D62090(v0 + qword_101AD8098);
  v3 = qword_101AD9268;
  v4 = sub_1005B981C(&unk_101A2C890);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLTableItemData()
{
  result = qword_101A2CF78;
  if (!qword_101A2CF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1012010E0()
{
  sub_101201170();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_101201170()
{
  if (!qword_101A2CF88)
  {
    _s15CapsuleDatabaseVMa();
    sub_10120176C(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
    v0 = type metadata accessor for Capsule();
    if (!v1)
    {
      atomic_store(v0, &qword_101A2CF88);
    }
  }
}

uint64_t sub_101201220(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A145A0);
  __chkstk_darwin(v11);
  v15 = v56 - v14;
  v61 = *(a1 + 16);
  if (!v61)
  {
  }

  v56[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v62 = a1;
  sub_10000BE14(a1 + v17, v56 - v14, &qword_101A145A0);
  v57 = v8;
  v63 = *(v8 + 32);
  v64 = v7;
  v63(v10, v15, v7);
  v59 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_10003E994(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_10003ECE0(v25, a2 & 1);
    v20 = sub_10003E994(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v20;
  sub_100AA4430();
  v20 = v31;
  v18 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v67 = v28;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v57 + 8))(v10, v64);
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v18;
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v58 = *(v57 + 72);
  v35 = v20;
  v63((v34 + v58 * v20), v10, v64);
  *(v33[7] + 8 * v35) = v32;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v62;
    if (v61 == 1)
    {
    }

    v39 = v62 + v60 + v17;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_10000BE14(v39, v15, &qword_101A145A0);
      v63(v10, v15, v64);
      v41 = *&v15[v59];
      v42 = *a3;
      v43 = sub_10003E994(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_10003ECE0(v47, 1);
        v43 = sub_10003E994(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v63((v50[6] + v58 * v43), v10, v64);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v60;
      v38 = v62;
      if (v61 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v54._object = 0x800000010159A770;
  v54._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v54);
  _print_unlocked<A, B>(_:_:)();
  v55._countAndFlagsBits = 39;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10120176C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1012017B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10120181C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1012018CC()
{
  result = qword_101A2D3E0;
  if (!qword_101A2D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D3E0);
  }

  return result;
}

Swift::Int sub_101201980()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1012019DC()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_101201A18()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_101201AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = a4(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_101201C04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = a5(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_101201DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_101201E64()
{
  if (!qword_101A2D570)
  {
    sub_101201EBC();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A2D570);
    }
  }
}

unint64_t sub_101201EBC()
{
  result = qword_101A2BF30;
  if (!qword_101A2BF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A2BF30);
  }

  return result;
}

uint64_t sub_101201F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v4 = v7;
  if (v9)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v8 != v6)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s13StyleCRDTDataVMa()
{
  result = qword_101A2D628;
  if (!qword_101A2D628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101202040()
{
  sub_10120215C(319, &qword_101A2D638, sub_1005FEA64);
  if (v0 <= 0x3F)
  {
    sub_10120215C(319, &qword_101A2D640, sub_1012021BC);
    if (v1 <= 0x3F)
    {
      sub_101202210();
      if (v2 <= 0x3F)
      {
        sub_100FEFFEC();
        if (v3 <= 0x3F)
        {
          sub_100039F68();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10120215C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for CRRegister();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1012021BC()
{
  result = qword_101A2D648;
  if (!qword_101A2D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D648);
  }

  return result;
}

void sub_101202210()
{
  if (!qword_1019F7D40)
  {
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F7D40);
    }
  }
}

__n128 sub_101202278@<Q0>(uint64_t a1@<X8>)
{
  sub_1005B981C(&qword_101A2C7B0);
  CRRegister.wrappedValue.getter();
  *(a1 + 192) = v15;
  *(a1 + 208) = v16;
  *(a1 + 224) = v17;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  *(a1 + 176) = v14;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1012022FC()
{
  _s13StyleCRDTDataVMa();
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  return v1;
}

__n128 sub_101202350@<Q0>(_OWORD *a1@<X8>)
{
  _s13StyleCRDTDataVMa();
  sub_1005B981C(&unk_101A10690);
  CRRegister.wrappedValue.getter();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1012023CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2A68 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() strokeWithColor:qword_101AD9170 width:1.0];
  sub_100B965E4(v2, &v6);
  if (qword_1019F2A70 != -1)
  {
    swift_once();
  }

  sub_1004A48FC();
  if (qword_1019F2A78 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD9188;
  sub_1008B2170([v3 color], v7);

  v4 = _s13StyleCRDTDataVMa();
  sub_1005B981C(&qword_1019FFF80);
  sub_1006BD16C();
  CRRegister.init(wrappedValue:)();
  *(a1 + *(v4 + 40)) = _swiftEmptyDictionarySingleton;
  sub_1005FEA64();
  CRRegister.init(wrappedValue:)();
  sub_1012021BC();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  sub_1005B981C(&unk_101A10690);
  return CRRegister.wrappedValue.setter();
}

BOOL sub_101202700(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A2D768);
  __chkstk_darwin(v3 - 8);
  v5 = &v33[-v4];
  v6 = _s13StyleCRDTDataVMa();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v33[-v11];
  sub_10000BE14(a1, v90, &unk_1019F4D00);
  if (!v90[3])
  {
    sub_10000CAAC(v90, &unk_1019F4D00);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_10;
  }

  v13 = swift_dynamicCast();
  (*(v7 + 56))(v5, v13 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_10:
    v20 = &qword_101A2D768;
    v21 = v5;
    goto LABEL_11;
  }

  sub_101204DA4(v5, v12);
  sub_100FC5D18(v1, v9);
  sub_1005B981C(&qword_101A2C7B0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v14 = sub_100B931E0(v89, v90);
  sub_100B98B80(v90);
  sub_100B98B80(v89);
  if (v14)
  {
    sub_1005B981C(&unk_101A2D9E0);
    CRRegister.wrappedValue.getter();
    v15 = *v47;
    CRRegister.wrappedValue.getter();

    v16 = *v47;

    if (v15 == v16)
    {
      sub_1005B981C(&qword_101A2C810);
      CRRegister.wrappedValue.getter();
      v17 = v47[0];
      CRRegister.wrappedValue.getter();
      if (v17 == v47[0])
      {
        CRRegister.wrappedValue.getter();
        v18 = v47[0];
        CRRegister.wrappedValue.getter();
        if (v18 == v47[0])
        {
          CRRegister.wrappedValue.getter();
          v19 = v47[0];
          CRRegister.wrappedValue.getter();
          if (v19 == v47[0])
          {
            sub_1005B981C(&unk_101A10690);
            CRRegister.wrappedValue.getter();
            CRRegister.wrappedValue.getter();
            v65 = v72;
            v66 = v73;
            v67[0] = *v74;
            v23 = v75;
            *(v67 + 15) = *&v74[15];
            v63 = v70;
            v64 = v71;
            v24 = v76;
            v61 = v81;
            v62 = v82;
            v59 = v79;
            v60 = v80;
            v57 = v77;
            v58 = v78;
            v25 = v83;
            v26 = v84;
            if (v75)
            {
              if (v83)
              {
                v35 = v76;
                *v47 = v77;
                *&v47[16] = v78;
                *&v47[64] = v81;
                *&v47[80] = v82;
                *&v47[32] = v79;
                *&v47[48] = v80;
                *&v47[96] = v83;
                v48 = v84;
                v45[0] = *&v47[9];
                v45[1] = *&v47[25];
                *(&v45[4] + 15) = *&v47[88];
                v45[3] = *&v47[57];
                v45[4] = *&v47[73];
                v45[2] = *&v47[41];
                v46[0] = v70;
                v46[1] = v71;
                *(&v46[4] + 15) = *&v74[15];
                v46[3] = v73;
                v46[4] = *v74;
                v46[2] = v72;
                v27 = v68;
                *&v87[0] = v68;
                v34 = v69;
                BYTE8(v87[0]) = v69 & 1;
                *&v85[0] = v77;
                BYTE8(v85[0]) = BYTE8(v77) & 1;
                sub_10000BE14(&v68, &v36, &qword_1019FFF80);
                sub_10000BE14(&v77, &v36, &qword_1019FFF80);
                sub_100A1B84C();
                if (static CRExtensible.== infix(_:_:)())
                {
                  v85[2] = *(&v46[2] + 7);
                  v85[3] = *(&v46[3] + 7);
                  v85[4] = *(&v46[4] + 7);
                  v85[0] = *(v46 + 7);
                  v85[1] = *(&v46[1] + 7);
                  v86 = v23;
                  v87[2] = *(&v45[2] + 7);
                  v87[3] = *(&v45[3] + 7);
                  v87[4] = *(&v45[4] + 7);
                  v88 = *(&v45[5] + 7);
                  v87[0] = *(v45 + 7);
                  v87[1] = *(&v45[1] + 7);
                  if (sub_1008AFE44(v85, v87))
                  {
                    v28 = v35;
                    v29 = sub_100B3216C(v35, v26);
                    sub_10000CAAC(v47, &qword_1019FFF80);
                    sub_10000CAAC(&v77, &qword_1019FFF80);
                    sub_10000CAAC(&v68, &qword_1019FFF80);
                    sub_101204E08(v9);
                    sub_101204E08(v12);
                    v40 = v65;
                    v41 = v66;
                    *v42 = v67[0];
                    v38 = v63;
                    v36 = v27;
                    v37 = v34;
                    v39 = v64;
                    *&v42[15] = *(v67 + 15);
                    v43 = v23;
                    v44 = v28;
                    sub_10000CAAC(&v36, &qword_1019FFF80);
                    return (v29 & 1) != 0;
                  }
                }

                sub_10000CAAC(v47, &qword_1019FFF80);
                sub_10000CAAC(&v77, &qword_1019FFF80);
                sub_10000CAAC(&v68, &qword_1019FFF80);
                sub_101204E08(v9);
                sub_101204E08(v12);
                v40 = v65;
                v41 = v66;
                *v42 = v67[0];
                v38 = v63;
                v36 = v27;
                v37 = v34;
                v39 = v64;
                *&v42[15] = *(v67 + 15);
                v43 = v23;
                v44 = v35;
                v21 = &v36;
                v20 = &qword_1019FFF80;
LABEL_11:
                sub_10000CAAC(v21, v20);
                return 0;
              }

              v30 = v84;
              v31 = v68;
              v32 = v69;
              sub_101204E08(v9);
              sub_101204E08(v12);
            }

            else
            {
              v30 = v84;
              v31 = v68;
              v32 = v69;
              sub_101204E08(v9);
              sub_101204E08(v12);
              if (!v25)
              {
                *&v47[41] = v65;
                *&v47[57] = v66;
                *&v47[73] = v67[0];
                *&v47[9] = v63;
                *v47 = v31;
                v47[8] = v32;
                *&v47[25] = v64;
                *&v47[88] = *(v67 + 15);
                *&v47[96] = 0;
                v48 = v24;
                sub_10000CAAC(v47, &qword_1019FFF80);
                return 1;
              }
            }

            *v47 = v31;
            v47[8] = v32;
            *&v47[41] = v65;
            *&v47[57] = v66;
            *&v47[73] = v67[0];
            *&v47[9] = v63;
            *&v47[25] = v64;
            *&v47[88] = *(v67 + 15);
            *&v47[96] = v23;
            v48 = v24;
            v49 = v57;
            v50 = v58;
            v53 = v61;
            v54 = v62;
            v51 = v59;
            v52 = v60;
            v55 = v25;
            v56 = v30;
            v20 = &qword_1019FFF90;
            v21 = v47;
            goto LABEL_11;
          }
        }
      }
    }
  }

  sub_101204E08(v9);
  sub_101204E08(v12);
  return 0;
}

uint64_t sub_101202F04()
{
  *&xmmword_101AD9270 = 97;
  *(&xmmword_101AD9270 + 1) = 0xE100000000000000;
  qword_101AD9280 = swift_getKeyPath();
  unk_101AD9288 = 99;
  *&xmmword_101AD9290 = 0xE100000000000000;
  *(&xmmword_101AD9290 + 1) = swift_getKeyPath();
  unk_101AD92A0 = 100;
  qword_101AD92A8 = 0xE100000000000000;
  *&xmmword_101AD92B0 = swift_getKeyPath();
  *(&xmmword_101AD92B0 + 1) = 101;
  qword_101AD92C0 = 0xE100000000000000;
  qword_101AD92C8 = swift_getKeyPath();
  unk_101AD92D0 = 102;
  qword_101AD92D8 = 0xE100000000000000;
  qword_101AD92E0 = swift_getKeyPath();
  unk_101AD92E8 = 103;
  *&xmmword_101AD92F0 = 0xE100000000000000;
  result = swift_getKeyPath();
  *(&xmmword_101AD92F0 + 1) = result;
  return result;
}

__n128 sub_101202FBC@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1019F2AA0 != -1)
  {
    swift_once();
  }

  *v20 = *&qword_101AD92D0;
  *&v20[16] = *&qword_101AD92E0;
  v21 = xmmword_101AD92F0;
  v17 = xmmword_101AD9290;
  *v18 = *&qword_101AD92A0;
  *&v18[16] = xmmword_101AD92B0;
  v19 = *&qword_101AD92C0;
  *v16 = xmmword_101AD9270;
  *&v16[16] = *&qword_101AD9280;
  v2 = xmmword_101AD9270;
  v3 = unk_101AD9288;
  v4 = qword_101AD92A0;
  v5 = *(&xmmword_101AD92B0 + 1);
  v6 = qword_101AD92D0;
  v7 = unk_101AD92E8;
  v9 = *&v16[8];
  v10 = xmmword_101AD9290;
  v11 = *&v18[8];
  v12 = *&qword_101AD92C0;
  v13 = *&v20[8];
  v14 = xmmword_101AD92F0;
  sub_10000BE14(v16, v15, &qword_101A2D770);
  *a1 = v2;
  *(a1 + 8) = v9;
  *(a1 + 24) = v3;
  *(a1 + 32) = v10;
  *(a1 + 48) = v4;
  *(a1 + 56) = v11;
  *(a1 + 72) = v5;
  *(a1 + 80) = v12;
  *(a1 + 96) = v6;
  result = v14;
  *(a1 + 104) = v13;
  *(a1 + 120) = v7;
  *(a1 + 128) = v14;
  return result;
}

uint64_t sub_1012030FC(uint64_t a1)
{
  v2 = sub_101204E64(&qword_101A2D778);

  return static CRStruct_6.fieldKeys.getter(a1, v2);
}

uint64_t sub_101203160(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1012031C0(uint64_t a1)
{
  v2 = sub_101204E64(&qword_101A2D720);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_101203218(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778);

  return CRStruct_6.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_101203280()
{
  sub_101204E64(&qword_101A2D778);

  return CRStruct_6.actionUndoingDifference(from:)();
}

uint64_t sub_1012032F0()
{
  sub_101204E64(&qword_101A2D778);

  return CRStruct_6.apply(_:)();
}

uint64_t sub_101203358()
{
  sub_101204E64(&qword_101A2D778);

  return CRStruct_6.hasDelta(from:)();
}

uint64_t sub_1012033C0()
{
  sub_101204E64(&qword_101A2D778);

  return CRStruct_6.delta(_:from:)();
}

uint64_t sub_101203440(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778);

  return CRStruct_6.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012034A8()
{
  sub_101204E64(&qword_101A2D778);

  return CRStruct_6.merge(delta:)();
}

uint64_t sub_101203510(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_101203580(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012035F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_101204E64(&qword_101A2D778);

  return CRStruct_6.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_101203670(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778);

  return CRStruct_6.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012036D8()
{
  sub_101204E64(&qword_101A2D778);

  return CRStruct_6.needToFinalizeTimestamps()();
}

uint64_t sub_101203730(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778);

  return CRStruct_6.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_101203798()
{
  sub_101204E64(&qword_101A2D778);

  return CRStruct_6.merge(_:)();
}

uint64_t sub_101203808(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204E64(&qword_101A2D778);

  return CRStruct_6.merge(_:)(a1, a2, v4);
}

uint64_t sub_101203958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_101204E64(&qword_101A2CCF0);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_101203A98(uint64_t a1)
{
  v2 = sub_101204E64(&qword_101A2D778);

  return CRStruct_6.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_101203B58()
{
  if (qword_1019F2AA8 != -1)
  {
    swift_once();
  }

  v0 = qword_101A2D5A0;
  v1 = qword_1019F2AB0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_101A2D5B0;
  v3 = qword_1019F2AB8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_101A2D5C0;
  if ((v2 & ~v0) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v0;
  if ((qword_101A2D5C0 & ~v6) == 0)
  {
    v4 = 0;
  }

  v7 = v4 | v6;

  result = swift_arrayDestroy();
  qword_101AD9300 = v7;
  *algn_101AD9308 = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_101203C94()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

uint64_t sub_101203CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_101203DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1012047BC();
  v5 = sub_101204814();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_101203E20(uint64_t a1)
{
  v2 = sub_101204814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101203E5C(uint64_t a1)
{
  v2 = sub_101204814();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_101203E98@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_101203EBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2 | *a1;
  a2[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_101203F0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2 & *a1;
  a2[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_101203F28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2 ^ *a1;
  a2[1] = _swiftEmptyDictionarySingleton;
}

BOOL sub_101203F78(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *v2;
  v7 = *v2 & *a2;
  if (v7 == *a2)
  {

    v4 = _swiftEmptyDictionarySingleton;
  }

  else
  {

    *v2 = v6 | v5;
    v2[1] = _swiftEmptyDictionarySingleton;
  }

  result = v7 != v5;
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t *sub_101203FF4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  v6 = *v2 & *result;
  if (v6)
  {

    v7 = _swiftEmptyDictionarySingleton;
    *v2 = v5 & ~v4;
    v2[1] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_101204058@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  v6 = _swiftEmptyDictionarySingleton;
  *v2 = v5 | v4;
  v2[1] = _swiftEmptyDictionarySingleton;
  if ((v5 & v4) == 0)
  {
    v6 = 0;
  }

  *a2 = v5 & v4;
  a2[1] = v6;
}

uint64_t sub_1012040C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v3 | v2;
  v1[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_101204120(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v3 & v2;
  v1[1] = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_101204160(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v3 ^ v2;
  v1[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_1012041B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2 & ~*a1;
  a2[1] = _swiftEmptyDictionarySingleton;
}

uint64_t sub_1012041D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v3 & ~v2;
  v1[1] = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_101204214@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100BE78F0(a1);
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_101204308(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204EA8();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10120435C(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204EA8();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012043B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1012021BC();
  v7 = sub_101204960();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_101204420(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204EA8();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_101204504(uint64_t a1)
{
  v2 = sub_101204A10();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012045A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_101204A68();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_101204600()
{
  result = qword_101A2D690;
  if (!qword_101A2D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D690);
  }

  return result;
}

unint64_t sub_10120465C()
{
  result = qword_101A2D698;
  if (!qword_101A2D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D698);
  }

  return result;
}

unint64_t sub_1012046B4()
{
  result = qword_101A2D6A0;
  if (!qword_101A2D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6A0);
  }

  return result;
}

unint64_t sub_10120470C()
{
  result = qword_101A2D6A8;
  if (!qword_101A2D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6A8);
  }

  return result;
}

unint64_t sub_101204764()
{
  result = qword_101A2D6B0;
  if (!qword_101A2D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6B0);
  }

  return result;
}

unint64_t sub_1012047BC()
{
  result = qword_101A2D6B8;
  if (!qword_101A2D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6B8);
  }

  return result;
}

unint64_t sub_101204814()
{
  result = qword_101A2D6C0;
  if (!qword_101A2D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6C0);
  }

  return result;
}

unint64_t sub_10120486C()
{
  result = qword_101A2D6C8;
  if (!qword_101A2D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6C8);
  }

  return result;
}

unint64_t sub_1012048C4()
{
  result = qword_101A2D6D0;
  if (!qword_101A2D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6D0);
  }

  return result;
}

unint64_t sub_101204960()
{
  result = qword_101A2D6E8;
  if (!qword_101A2D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6E8);
  }

  return result;
}

unint64_t sub_1012049B8()
{
  result = qword_101A2D6F0;
  if (!qword_101A2D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6F0);
  }

  return result;
}

unint64_t sub_101204A10()
{
  result = qword_101A2D6F8;
  if (!qword_101A2D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D6F8);
  }

  return result;
}

unint64_t sub_101204A68()
{
  result = qword_101A2D700;
  if (!qword_101A2D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D700);
  }

  return result;
}

unint64_t sub_101204AC0()
{
  result = qword_101A2D708;
  if (!qword_101A2D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D708);
  }

  return result;
}

unint64_t sub_101204D50()
{
  result = qword_101A2D760;
  if (!qword_101A2D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D760);
  }

  return result;
}

uint64_t sub_101204DA4(uint64_t a1, uint64_t a2)
{
  v4 = _s13StyleCRDTDataVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101204E08(uint64_t a1)
{
  v2 = _s13StyleCRDTDataVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101204E64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s13StyleCRDTDataVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101204EA8()
{
  result = qword_101A2D780;
  if (!qword_101A2D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D780);
  }

  return result;
}

unint64_t sub_101204F10()
{
  result = qword_101A2D788;
  if (!qword_101A2D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D788);
  }

  return result;
}

double sub_101204F64()
{
  result = 15.0;
  qword_101AD9310 = 0x402E000000000000;
  return result;
}

void sub_101204F7C()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 systemImageNamed:v1];

  if (v2)
  {

    v3 = [objc_allocWithZone(CRLImage) initWithUIImage:v2];
    qword_101AD9318 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_101205028()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 systemImageNamed:v1];

  if (v2)
  {

    v3 = [objc_allocWithZone(CRLImage) initWithUIImage:v2];
    qword_101AD9320 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1012050D4()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 systemImageNamed:v1];

  if (v2)
  {

    v3 = [objc_allocWithZone(CRLImage) initWithUIImage:v2];
    qword_101AD9328 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_101205258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTableKnob();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1012052B0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1012052D8()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8) == 1)
    {
      if (qword_1019F2AE0 != -1)
      {
        swift_once();
      }

      v1 = &qword_101AD9328;
    }

    else
    {
      if (qword_1019F2AD0 != -1)
      {
        swift_once();
      }

      v1 = &qword_101AD9318;
    }
  }

  else
  {
    if (qword_1019F2AD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_101AD9320;
  }

  return *v1;
}

id sub_1012053C8()
{
  v1 = [v0 layoutController];
  v2 = [v1 canvas];

  [v2 invalidateReps];
  if (v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16] == 1)
  {
    v3 = &v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed];
    *v3 = 0u;
    *(v3 + 1) = 0u;
    v3[32] = 1;
    v4 = &v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
    swift_beginAccess();
    v5 = *v4;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    return sub_1011DABBC(v5);
  }

  else
  {

    return sub_101207574();
  }
}

char *sub_1012054CC()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    sub_1011DAB7C(v2);

    sub_1011DABBC(v2);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8);
  }

  v4 = *(v3 + 16);
  if (v4 >= 2)
  {
    v7 = (v3 + 32);
    v8 = v4 - 1;
    v5 = _swiftEmptyArrayStorage;
    v9 = 0.0;
    do
    {
      v10 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100B37F88(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100B37F88((v11 > 1), v12 + 1, 1, v5);
      }

      v9 = v9 + v10;
      *(v5 + 2) = v12 + 1;
      *&v5[8 * v12 + 32] = v9;
      ++v7;
      --v8;
    }

    while (v8);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  swift_unknownObjectRelease();
  return v5;
}

char *sub_101205638()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    sub_1011DAB7C(v2);

    sub_1011DABBC(v3);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState);
  }

  v4 = *(v2 + 16);
  if (v4 >= 2)
  {
    v7 = (v2 + 32);
    v8 = v4 - 1;
    v5 = _swiftEmptyArrayStorage;
    v9 = 0.0;
    do
    {
      v10 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100B37F88(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100B37F88((v11 > 1), v12 + 1, 1, v5);
      }

      v9 = v9 + v10;
      *(v5 + 2) = v12 + 1;
      *&v5[8 * v12 + 32] = v9;
      ++v7;
      --v8;
    }

    while (v8);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  swift_unknownObjectRelease();
  return v5;
}

id sub_10120579C(uint64_t a1)
{
  v4 = v1;
  result = [v1 boardItem];
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = result;
  type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  v8 = sub_1011DB2A8(a1);
  v10 = v9;

  if (v10)
  {
    v35 = objc_opt_self();
    LODWORD(v11) = [v35 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v14;

    if (qword_1019F20A0 == -1)
    {
LABEL_4:
      v15 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v11;
      v17 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v17;
      v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v18;
      *(inited + 72) = v8;
      *(inited + 136) = &type metadata for String;
      v19 = sub_1000053B0();
      *(inited + 112) = v2;
      *(inited + 120) = v3;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v19;
      *(inited + 152) = 135;
      v20 = v36;
      *(inited + 216) = v17;
      *(inited + 224) = v18;
      *(inited + 192) = v20;
      v21 = v8;
      v22 = v20;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v25 = swift_allocObject();
      v25[2] = 8;
      v25[3] = 0;
      v25[4] = 0;
      v25[5] = 0;
      v26 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v28 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      [v35 handleFailureInFunction:v27 file:v28 lineNumber:135 isFatal:0 format:v29 args:v26];

      v30 = 0;
LABEL_9:
      v37 = v10 & 1;
      return (v30 | ((v10 & 1) << 32));
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v31 = &v4[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  swift_beginAccess();
  v11 = *v31;
  if (!*v31)
  {
    v32 = *&v4[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8];

    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v32 = v31[1];
  sub_1011DAB7C(*v31);

  result = sub_1011DABBC(v11);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v8 < *(v32 + 16))
  {
    v33 = *(v32 + 8 * v8 + 32);

    *&v34 = v33;
    v30 = v34;
    goto LABEL_9;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_101205C90(uint64_t a1)
{
  v4 = v1;
  result = [v1 boardItem];
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = result;
  type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  v8 = sub_1011DB340(a1);
  v10 = v9;

  if (v10)
  {
    v35 = objc_opt_self();
    LODWORD(v11) = [v35 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v14;

    if (qword_1019F20A0 == -1)
    {
LABEL_4:
      v15 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v11;
      v17 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v17;
      v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v18;
      *(inited + 72) = v8;
      *(inited + 136) = &type metadata for String;
      v19 = sub_1000053B0();
      *(inited + 112) = v2;
      *(inited + 120) = v3;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v19;
      *(inited + 152) = 140;
      v20 = v36;
      *(inited + 216) = v17;
      *(inited + 224) = v18;
      *(inited + 192) = v20;
      v21 = v8;
      v22 = v20;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v25 = swift_allocObject();
      v25[2] = 8;
      v25[3] = 0;
      v25[4] = 0;
      v25[5] = 0;
      v26 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v28 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      [v35 handleFailureInFunction:v27 file:v28 lineNumber:140 isFatal:0 format:v29 args:v26];

      v30 = 0;
LABEL_9:
      v37 = v10 & 1;
      return (v30 | ((v10 & 1) << 32));
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v31 = &v4[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  swift_beginAccess();
  v11 = *v31;
  if (!*v31)
  {
    v11 = *&v4[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];

    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1011DAB7C(v11);

  result = sub_1011DABBC(v32);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v8 < *(v11 + 16))
  {
    v33 = *(v11 + 8 * v8 + 32);

    *&v34 = v33;
    v30 = v34;
    goto LABEL_9;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10120617C()
{
  v1 = [v0 children];
  sub_100006370(0, &qword_101A287B0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
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
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 invalidatePosition];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

id sub_1012064F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState;
  if (v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState] != 1)
  {
    goto LABEL_4;
  }

  result = [v0 boardItem];
  if (result)
  {
    v4 = result;
    type metadata accessor for CRLTableItem();
    v5 = swift_dynamicCastClassUnconditional();
    v6 = sub_1011E5958();
    v7 = sub_1011E3CA8();
    v8 = *(**(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v10 = v8(v9);

    [v10 position];
    v12 = v11;
    v14 = v13;

    v15 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
    *v15 = v6;
    v15[1] = v7;
    v15[2] = v12;
    v15[3] = v14;

    v1[v2] = 0;
LABEL_4:
    v16.receiver = v1;
    v16.super_class = type metadata accessor for CRLTableLayout();
    return objc_msgSendSuper2(&v16, "validate");
  }

  __break(1u);
  return result;
}

void sub_101206730(objc_class *a1)
{
  v2 = v1;
  isa = a1;
  if (a1)
  {
    type metadata accessor for CRLChangeRecord();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v18.receiver = v2;
  v18.super_class = type metadata accessor for CRLTableLayout();
  [(objc_class *)&v18 processChanges:isa];

  v4 = OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState;
  if (v2[OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState] == 1)
  {
    v5 = [v2 boardItem];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for CRLTableItem();
      v7 = swift_dynamicCastClassUnconditional();
      v8 = sub_1011E5958();
      v9 = sub_1011E3CA8();
      v10 = *(**(v7 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

      v12 = v10(v11);

      [v12 position];
      v14 = v13;
      v16 = v15;

      v17 = &v2[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
      *v17 = v8;
      v17[1] = v9;
      v17[2] = v14;
      v17[3] = v16;

      v2[v4] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_101206940(uint64_t a1)
{
  if ((a1 - 6) < 2)
  {
    v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState] = 1;
  }

  else if ((a1 - 58) >= 2)
  {
    if (a1 == 4)
    {
      [v1 invalidateChildren];
      v5 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
      v6 = *&v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 4) = 0;
      sub_101210C44(v6);
    }
  }

  else
  {
    v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState] = 1;
    v3 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
    v4 = *&v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
    *v3 = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 4) = 0;
    sub_101210C44(v4);
    [v1 invalidateSize];
    sub_10120617C();
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for CRLTableLayout();
  return objc_msgSendSuper2(&v8, "processChangedProperty:", a1);
}

void sub_101206A94()
{
  v1 = &v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    sub_1011DAB7C(*v1);

    sub_1011DABBC(v3);
    v4 = *(v2 + 16);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];

    v4 = *(v2 + 16);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 <= 3)
  {
    v5 = 0;
    v6 = 0.0;
LABEL_10:
    v9 = v4 - v5;
    v10 = (v2 + 8 * v5 + 32);
    do
    {
      v11 = *v10++;
      v6 = v6 + v11;
      --v9;
    }

    while (v9);
    goto LABEL_12;
  }

  v5 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = (v2 + 48);
  v6 = 0.0;
  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v6 = v6 + *(v7 - 2) + *(v7 - 1) + *v7 + v7[1];
    v7 += 4;
    v8 -= 4;
  }

  while (v8);
  if (v4 != v5)
  {
    goto LABEL_10;
  }

LABEL_12:

  v12 = *v1;
  if (*v1)
  {
    v13 = v1[1];
    sub_1011DAB7C(*v1);

    sub_1011DABBC(v12);
    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = *&v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8];

    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (v14 > 3)
  {
    v15 = v14 & 0x7FFFFFFFFFFFFFFCLL;
    v17 = (v13 + 48);
    v16 = 0.0;
    v18 = v14 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v16 = v16 + *(v17 - 2) + *(v17 - 1) + *v17 + v17[1];
      v17 += 4;
      v18 -= 4;
    }

    while (v18);
    if (v14 == v15)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0.0;
  }

  v19 = v14 - v15;
  v20 = (v13 + 8 * v15 + 32);
  do
  {
    v21 = *v20++;
    v16 = v16 + v21;
    --v19;
  }

  while (v19);
LABEL_23:

  v22 = *v1;
  if (*v1)
  {

    sub_1011DABBC(v22);
  }

  else
  {
    v23 = [v0 boardItem];
    if (v23)
    {
      v24 = v23;
      type metadata accessor for CRLTableItem();
      v25 = *(**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

      v27 = v25(v26);

      [v27 position];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_101206E5C(void *a1)
{
  v2 = v1;
  v80.receiver = v2;
  v80.super_class = type metadata accessor for CRLTableLayout();
  objc_msgSendSuper2(&v80, "takeSizeFromTracker:", a1);
  if (!a1)
  {
    goto LABEL_60;
  }

  type metadata accessor for CRLTableRowColumnResizeKnobTracker();
  if (!swift_dynamicCastClass())
  {
    [a1 transformForLayout:v2];
    v4 = [v2 originalGeometry];
    if (!v4)
    {
      goto LABEL_61;
    }

    v5 = v4;
    v6 = [v4 geometryByTransformingBy:&v78];

    v8 = sub_101207514();
    if (*v7)
    {
      v9 = v7;
      [v6 frame];
      v9[2] = v10;
      v9[3] = v11;
    }

    (v8)(&v78, 0);
    v12 = &v2[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
    swift_beginAccess();
    v13 = *v12;
    v15 = v12[2];
    v14 = v12[3];
    sub_1011DAB7C(v13);
    sub_1011DABBC(v13);
    v16 = &v2[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
    if (!v13 || v16[2] != v15 || v16[3] != v14)
    {
      [v2 invalidatePosition];
    }

    [v6 frame];
    v18 = v17;
    v20 = v19;
    v21 = [v2 originalGeometry];
    if (v21)
    {
      v22 = v21;
      [v21 frame];
      v24 = v23;
      v26 = v25;

      sub_101210784(v81);
      v27 = sub_10011F31C(v24, v26, v82);
      v29 = v28;
      sub_101210784(v83);
      v31 = sub_10011F31C(v18, v20, v84);
      v32 = *(v16 + 1);
      v33 = *(v32 + 16);
      if (v30 >= v29)
      {
        if (v33)
        {
          v76 = v6;
          v46 = v20 / v26;

          v47 = 0;
          while (1)
          {
            v48 = *(v32 + 32 + 8 * v47);
            v50 = sub_101207514();
            if (*v49)
            {
              v51 = v49;
              v52 = v49[1];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51[1] = v52;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v52 = sub_10113CF98(v52);
                v51[1] = v52;
              }

              if (v47 >= *(v52 + 2))
              {
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              *&v52[8 * v47 + 32] = v46 * v48;
            }

            (v50)(&v78, 0);
            if (v33 == ++v47)
            {
LABEL_31:

              v6 = v76;
              break;
            }
          }
        }
      }

      else if (v33)
      {
        v76 = v6;
        v34 = v30 / v29;

        v35 = 0;
        while (1)
        {
          v36 = *(v32 + 32 + 8 * v35);
          sub_101210784(v85);
          v37 = v86;
          v38 = 8.0;
          if (*(v86 + 16))
          {
            v39 = sub_1007C7EC0(v35);
            if (v40)
            {
              v38 = *(*(v37 + 56) + 8 * v39);
            }
          }

          v42 = sub_101207514();
          if (*v41)
          {
            v43 = v41;
            v44 = v41[1];
            v45 = swift_isUniquelyReferenced_nonNull_native();
            v43[1] = v44;
            if ((v45 & 1) == 0)
            {
              v44 = sub_10113CF98(v44);
              v43[1] = v44;
            }

            if (v35 >= *(v44 + 2))
            {
              __break(1u);
              goto LABEL_57;
            }

            *&v44[8 * v35 + 32] = v38 + v34 * (v36 - v38);
          }

          (v42)(&v78, 0);
          if (v33 == ++v35)
          {
            goto LABEL_31;
          }
        }
      }

      v54 = *v16;
      v55 = *(*v16 + 16);
      if (v31 >= v27)
      {
        if (v55)
        {
          v68 = v18 / v24;

          for (i = 0; i != v55; ++i)
          {
            v70 = *(v54 + 32 + 8 * i);
            v72 = sub_101207514();
            v73 = *v71;
            if (*v71)
            {
              v74 = v71;
              v75 = swift_isUniquelyReferenced_nonNull_native();
              *v74 = v73;
              if ((v75 & 1) == 0)
              {
                v73 = sub_10113CF98(v73);
                *v74 = v73;
              }

              if (i >= *(v73 + 2))
              {
                goto LABEL_59;
              }

              *&v73[8 * i + 32] = v68 * v70;
            }

            (v72)(&v78, 0);
          }

LABEL_53:
        }
      }

      else if (v55)
      {
        v56 = v31 / v27;

        v57 = 0;
        while (1)
        {
          v58 = *(v54 + 32 + 8 * v57);
          sub_101210784(&v78);
          v59 = v79;
          v60 = 8.0;
          if (*(v79 + 16))
          {
            v61 = sub_1007C7EC0(v57);
            if (v62)
            {
              v60 = *(*(v59 + 56) + 8 * v61);
            }
          }

          v64 = sub_101207514();
          v65 = *v63;
          if (*v63)
          {
            v66 = v63;
            v67 = swift_isUniquelyReferenced_nonNull_native();
            *v66 = v65;
            if ((v67 & 1) == 0)
            {
              v65 = sub_10113CF98(v65);
              *v66 = v65;
            }

            if (v57 >= *(v65 + 2))
            {
              goto LABEL_58;
            }

            *&v65[8 * v57 + 32] = v60 + v56 * (v58 - v60);
          }

          (v64)(v77, 0);
          if (v55 == ++v57)
          {
            goto LABEL_53;
          }
        }
      }

      [v2 invalidateSize];
      sub_10120617C();
    }

    else
    {
LABEL_62:
      __break(1u);
    }
  }
}

BOOL sub_1012074A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((sub_100673058(*a1, *a2) & 1) == 0 || (sub_100673058(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v6)
  {
    return v4 == v7;
  }

  return 0;
}

id sub_101207574()
{
  v1 = &v0[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  result = swift_beginAccess();
  if (!*v1)
  {
    result = [v0 boardItem];
    if (result)
    {
      v3 = result;
      type metadata accessor for CRLTableItem();
      swift_dynamicCastClassUnconditional();
      v4 = sub_1011E5958();

      result = [v0 boardItem];
      if (result)
      {
        v5 = result;
        swift_dynamicCastClassUnconditional();
        v6 = sub_1011E3CA8();

        result = [v0 boardItem];
        if (result)
        {
          v7 = result;
          v8 = *(**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

          v10 = v8(v9);

          [v10 position];
          v12 = v11;
          v14 = v13;

          v15 = *v1;
          *v1 = v4;
          v1[1] = v6;
          v1[2] = v12;
          v1[3] = v14;
          return sub_1011DABBC(v15);
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

id sub_101207744()
{
  v1 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v244 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v244 - v5;
  __chkstk_darwin(v7);
  v9 = &v244 - v8;
  __chkstk_darwin(v10);
  v12 = (&v244 - v11);
  v13 = type metadata accessor for CRLTableAnchorHint();
  v253 = *(v13 - 8);
  __chkstk_darwin(v13);
  v267 = &v244 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  *&v266 = &v244 - v17;
  v262 = v0;
  result = [v0 boardItem];
  if (!result)
  {
    goto LABEL_145;
  }

  v19 = result;
  v255 = type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  v20 = sub_1011DCD58();

  if (v20 >> 62)
  {
    goto LABEL_141;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v22 = &unk_10146C000;
  v260 = v3;
  v271 = v13;
  v272 = v6;
  if (v21)
  {
    v3 = 0;
    v265 = (v20 & 0xC000000000000001);
    v254 = (v20 & 0xFFFFFFFFFFFFFF8);
    v23 = _swiftEmptyDictionarySingleton;
    v274 = (v253 + 48);
    v256 = xmmword_10146CA70;
    v257 = v9;
    v263 = v20;
    v264 = *&v12;
    *&v259 = v21;
    while (1)
    {
      if (v265)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v3 >= v254[2])
        {
          goto LABEL_140;
        }

        v24 = *(v20 + 8 * v3 + 32);
        v25 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_137;
        }
      }

      v270 = v25;
      v261 = v23;
      v26 = *((swift_isaMask & *v24) + 0x128);
      v268 = v24;
      v26();
      v273 = *v274;
      v27 = v273(v9, 1, v13);
      v269 = v3;
      if (v27 == 1)
      {
        v258 = objc_opt_self();
        v28 = [v258 _atomicIncrementAssertCount];
        v276[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v276);
        StaticString.description.getter();
        v29 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v30 = String._bridgeToObjectiveC()();

        v31 = [v30 lastPathComponent];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v35 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v256;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v28;
        v37 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v37;
        v38 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v38;
        *(inited + 72) = v29;
        *(inited + 136) = &type metadata for String;
        v39 = sub_1000053B0();
        *(inited + 112) = v32;
        *(inited + 120) = v34;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v39;
        *(inited + 152) = 411;
        v40 = v276[0];
        *(inited + 216) = v37;
        *(inited + 224) = v38;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v40;
        v41 = v29;
        v42 = v40;
        v43 = static os_log_type_t.error.getter();
        sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v44 = static os_log_type_t.error.getter();
        sub_100005404(v35, &_mh_execute_header, v44, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v45 = swift_allocObject();
        v45[2] = 8;
        v45[3] = 0;
        v45[4] = 0;
        v45[5] = 0;
        v46 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v47 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v48 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v49 = String._bridgeToObjectiveC()();

        [v258 handleFailureInFunction:v47 file:v48 lineNumber:411 isFatal:0 format:v49 args:v46];

        v13 = v271;
        v6 = v272;
        v9 = v257;
        v20 = v263;
        *&v12 = v264;
        v21 = v259;
        v3 = v269;
      }

      sub_10003DFF8(v9, v12, &unk_101A09DD0);
      if (v273(v12, 1, v13) != 1)
      {
        break;
      }

      sub_10000CAAC(v12, &unk_101A09DD0);
      v23 = v261;
LABEL_7:
      ++v3;
      if (v270 == v21)
      {

        v112 = v23;
        v22 = &unk_10146C000;
        v3 = v260;
        goto LABEL_42;
      }
    }

    sub_10074A42C(v12, *&v266);
    v50 = v262;
    result = [v262 boardItem];
    if (!result)
    {
      goto LABEL_143;
    }

    v51 = result;
    swift_dynamicCastClassUnconditional();
    sub_1011DB114();
    v53 = v52;
    if (*(v52 + 16) && (v54 = sub_10003E994(*&v266), (v55 & 1) != 0))
    {
      v56 = *(*(v53 + 56) + 8 * v54);

      v57 = _s6CellIDVMa(0);
      v58 = v50;
      v59 = *(v57 + 20);
      result = [v58 boardItem];
      if (!result)
      {
        goto LABEL_144;
      }

      v60 = result;
      swift_dynamicCastClassUnconditional();
      v61 = sub_1011DB114();
      if (*(v61 + 16))
      {
        v62 = sub_10003E994(*&v266 + v59);
        if (v63)
        {
          v64 = *(*(v61 + 56) + 8 * v62);

          v65 = v261;
          if (v261[2] && (v66 = sub_1007CF110(v56, v64), (v67 & 1) != 0))
          {
            v276[0] = *(v65[7] + 8 * v66);
          }

          else
          {
            v276[0] = _swiftEmptyArrayStorage;
          }

          v20 = v263;
          *&v12 = v264;
          v109 = v268;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v276[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v276[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v65 = v261;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v110 = v276[0];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v275 = v65;
          sub_100AA1C6C(v110, v56, v64, isUniquelyReferenced_nonNull_native);

          v23 = v275;
          sub_101210BE4(*&v266, type metadata accessor for CRLTableAnchorHint);
          v13 = v271;
          v6 = v272;
          goto LABEL_35;
        }
      }

      v273 = objc_opt_self();
      v90 = [v273 _atomicIncrementAssertCount];
      v276[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v276);
      StaticString.description.getter();
      v91 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v92 = String._bridgeToObjectiveC()();

      v93 = [v92 lastPathComponent];

      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v97 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v98 = swift_allocObject();
      *(v98 + 16) = v256;
      *(v98 + 56) = &type metadata for Int32;
      *(v98 + 64) = &protocol witness table for Int32;
      *(v98 + 32) = v90;
      v99 = sub_100006370(0, &qword_1019F4D30);
      *(v98 + 96) = v99;
      v100 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v98 + 104) = v100;
      *(v98 + 72) = v91;
      *(v98 + 136) = &type metadata for String;
      v101 = sub_1000053B0();
      *(v98 + 112) = v94;
      *(v98 + 120) = v96;
      *(v98 + 176) = &type metadata for UInt;
      *(v98 + 144) = v101;
      *(v98 + 152) = 413;
      v102 = v276[0];
      *(v98 + 216) = v99;
      *(v98 + 224) = v100;
      *(v98 + 184) = &protocol witness table for UInt;
      *(v98 + 192) = v102;
      v103 = v91;
      v104 = v102;
      v105 = static os_log_type_t.error.getter();
      sub_100005404(v97, &_mh_execute_header, v105, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v106 = static os_log_type_t.error.getter();
      sub_100005404(v97, &_mh_execute_header, v106, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v107 = swift_allocObject();
      v107[2] = 8;
      v107[3] = 0;
      v107[4] = 0;
      v107[5] = 0;
      v108 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v87 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v88 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v89 = String._bridgeToObjectiveC()();

      [v273 handleFailureInFunction:v87 file:v88 lineNumber:413 isFatal:0 format:v89 args:v108];
    }

    else
    {

      v273 = objc_opt_self();
      v68 = [v273 _atomicIncrementAssertCount];
      v276[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v276);
      StaticString.description.getter();
      v69 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v70 = String._bridgeToObjectiveC()();

      v71 = [v70 lastPathComponent];

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v75 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v76 = swift_initStackObject();
      *(v76 + 16) = v256;
      *(v76 + 56) = &type metadata for Int32;
      *(v76 + 64) = &protocol witness table for Int32;
      *(v76 + 32) = v68;
      v77 = sub_100006370(0, &qword_1019F4D30);
      *(v76 + 96) = v77;
      v78 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v76 + 104) = v78;
      *(v76 + 72) = v69;
      *(v76 + 136) = &type metadata for String;
      v79 = sub_1000053B0();
      *(v76 + 112) = v72;
      *(v76 + 120) = v74;
      *(v76 + 176) = &type metadata for UInt;
      *(v76 + 144) = v79;
      *(v76 + 152) = 412;
      v80 = v276[0];
      *(v76 + 216) = v77;
      *(v76 + 224) = v78;
      *(v76 + 184) = &protocol witness table for UInt;
      *(v76 + 192) = v80;
      v81 = v69;
      v82 = v80;
      v83 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v83, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v76);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v84 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v84, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v85 = swift_allocObject();
      v85[2] = 8;
      v85[3] = 0;
      v85[4] = 0;
      v85[5] = 0;
      v86 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v87 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v88 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v89 = String._bridgeToObjectiveC()();

      [v273 handleFailureInFunction:v87 file:v88 lineNumber:412 isFatal:0 format:v89 args:v86];
    }

    sub_101210BE4(*&v266, type metadata accessor for CRLTableAnchorHint);
    v23 = v261;
    v13 = v271;
    v6 = v272;
    v9 = v257;
    v20 = v263;
    *&v12 = v264;
LABEL_35:
    v21 = v259;
    v3 = v269;
    goto LABEL_7;
  }

  v112 = _swiftEmptyDictionarySingleton;
LABEL_42:
  v113 = v112[8];
  v245 = v112 + 8;
  v114 = 1 << *(v112 + 32);
  v115 = -1;
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  v116 = v115 & v113;
  v247 = (v114 + 63) >> 6;
  y = CGRectNull.origin.y;
  x = CGRectNull.origin.x;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v249 = width;
  v12 = (v253 + 48);
  v261 = v112;

  v118 = 0;
  v259 = v22[167];
  v9 = &unk_101A09DD0;
  v119 = _swiftEmptyDictionarySingleton;
  v254 = _swiftEmptyDictionarySingleton;
  v257 = _swiftEmptyDictionarySingleton;
  v263 = v12;
  while (2)
  {
    *&v256 = v119;
    if (v116)
    {
      goto LABEL_52;
    }

    do
    {
      v122 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      if (v122 >= v247)
      {

        v206 = v262;
        v207 = &v262[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
        swift_beginAccess();
        v208 = *v207;
        if (*v207)
        {
          v12 = *(v207 + 1);
          sub_1011DAB7C(*v207);

          sub_1011DABBC(v208);
          v13 = *(v12 + 2);
        }

        else
        {
          v13 = *(*&v206[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8] + 16);
        }

        v20 = _swiftEmptyArrayStorage;
        if (v13)
        {
          v275 = _swiftEmptyArrayStorage;
          sub_100776504(0, v13, 0);
          *&v12 = 0.0;
          v209 = v275;
          v210 = v257;
          while (v13 != v12)
          {
            v211 = 8.0;
            if (*(v210 + 2))
            {
              v212 = sub_1007C7EC0(v12);
              v210 = v257;
              if (v213)
              {
                v211 = *(*(v257 + 7) + 8 * v212);
              }
            }

            v275 = v209;
            v6 = v209[2];
            v214 = v209[3];
            v3 = v6 + 1;
            if (v6 >= v214 >> 1)
            {
              sub_100776504((v214 > 1), v6 + 1, 1);
              v210 = v257;
              v209 = v275;
            }

            v12 = (v12 + 1);
            v209[2] = v3;
            *&v209[v6 + 4] = v211;
            if (v13 == v12)
            {
              goto LABEL_101;
            }
          }

LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v209 = _swiftEmptyArrayStorage;
LABEL_101:
        v215 = v209[2];
        if (!v215)
        {

          v217 = 0.0;
          v218 = *v207;
          if (*v207)
          {
            goto LABEL_117;
          }

LABEL_105:
          v219 = *(*&v262[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState] + 16);
          if (!v219)
          {
            goto LABEL_106;
          }

          goto LABEL_118;
        }

        if (v215 <= 3)
        {
          v216 = 0;
          v217 = 0.0;
          goto LABEL_114;
        }

        v216 = v215 & 0x7FFFFFFFFFFFFFFCLL;
        v225 = (v209 + 6);
        v217 = 0.0;
        v226 = v215 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v217 = v217 + *(v225 - 2) + *(v225 - 1) + *v225 + v225[1];
          v225 += 4;
          v226 -= 4;
        }

        while (v226);
        if (v215 != v216)
        {
LABEL_114:
          v227 = v215 - v216;
          v228 = &v209[v216 + 4];
          do
          {
            v229 = *v228++;
            v217 = v217 + v229;
            --v227;
          }

          while (v227);
        }

        v218 = *v207;
        if (!*v207)
        {
          goto LABEL_105;
        }

LABEL_117:
        sub_1011DAB7C(v218);

        sub_1011DABBC(v230);
        v219 = *(v218 + 16);

        if (!v219)
        {
LABEL_106:
          v220 = _swiftEmptyArrayStorage;
LABEL_107:
          v221 = v220[2];
          v222 = v262;
          if (v221)
          {
            if (v221 <= 3)
            {
              v223 = 0;
              v224 = 0.0;
              goto LABEL_130;
            }

            v223 = v221 & 0x7FFFFFFFFFFFFFFCLL;
            v236 = (v220 + 6);
            v224 = 0.0;
            v237 = v221 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v224 = v224 + *(v236 - 2) + *(v236 - 1) + *v236 + v236[1];
              v236 += 4;
              v237 -= 4;
            }

            while (v237);
            if (v221 != v223)
            {
LABEL_130:
              v238 = v221 - v223;
              v239 = &v220[v223 + 4];
              do
              {
                v240 = *v239++;
                v224 = v224 + v240;
                --v238;
              }

              while (v238);
            }
          }

          else
          {

            v224 = 0.0;
          }

          v241 = &v222[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
          v242 = *&v222[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
          v243 = v257;
          *v241 = v254;
          *(v241 + 1) = v243;
          *(v241 + 2) = v256;
          *(v241 + 3) = v224;
          *(v241 + 4) = v217;

          sub_101210C44(v242);
        }

LABEL_118:
        v275 = _swiftEmptyArrayStorage;
        sub_100776504(0, v219, 0);
        v13 = 0;
        v220 = v275;
        v231 = v256;
        while (v219 != v13)
        {
          v232 = 8.0;
          if (*(v231 + 16))
          {
            v233 = sub_1007C7EC0(v13);
            v231 = v256;
            if (v234)
            {
              v232 = *(*(v256 + 56) + 8 * v233);
            }
          }

          v275 = v220;
          v3 = v220[2];
          v235 = v220[3];
          v12 = (v3 + 1);
          if (v3 >= v235 >> 1)
          {
            sub_100776504((v235 > 1), v3 + 1, 1);
            v231 = v256;
            v220 = v275;
          }

          ++v13;
          *(v220 + 2) = *&v12;
          *&v220[v3 + 4] = v232;
          if (v219 == v13)
          {
            goto LABEL_107;
          }
        }

LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v21 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v116 = v245[v122];
      ++v118;
    }

    while (!v116);
    v118 = v122;
LABEL_52:
    v252 = v118;
    v253 = v116;
    v123 = __clz(__rbit64(v116)) | (v118 << 6);
    v124 = v261[7];
    v125 = (v261[6] + 16 * v123);
    v126 = *v125;
    v255 = v125[1];
    v20 = *(v124 + 8 * v123);
    if (v20 >> 62)
    {
      v127 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v127 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v129 = y;
    v128 = x;
    v130 = height;
    v131 = v249;
    if (!v127)
    {
LABEL_75:
      v185 = v255;
      sub_10120C854(v126, v255);
      v286.size.width = v186;
      v286.size.height = v187;
      v286.origin.x = 0.0;
      v286.origin.y = 0.0;
      v280.origin.x = v128;
      v280.origin.y = v129;
      v280.size.width = v131;
      v280.size.height = v130;
      v281 = CGRectIntersection(v280, v286);
      v188 = v281.origin.x;
      v189 = v281.origin.y;
      v190 = v281.size.width;
      v191 = v281.size.height;
      v192 = v254;
      v193 = swift_isUniquelyReferenced_nonNull_native();
      v276[0] = v192;
      sub_100AA1B14(v126, v185, v193, v188, v189, v190, v191);
      v254 = v276[0];
      v194 = v257;
      if (*(v257 + 2) && (v195 = sub_1007C7EC0(v126), v194 = v257, (v196 & 1) != 0))
      {
        v197 = *(*(v257 + 7) + 8 * v195);
        v282.origin.x = v188;
        v282.origin.y = v189;
        v282.size.width = v190;
        v282.size.height = v191;
        v198 = CGRectGetHeight(v282);
        if (v197 <= v198)
        {
          v197 = v198;
        }
      }

      else
      {
        v283.origin.x = v188;
        v283.origin.y = v189;
        v283.size.width = v190;
        v283.size.height = v191;
        v197 = CGRectGetHeight(v283);
      }

      v199 = swift_isUniquelyReferenced_nonNull_native();
      v276[0] = v194;
      sub_100AA19EC(v126, v199, v197);
      v257 = v276[0];
      v116 = (v253 - 1) & v253;
      v201 = v255;
      v200 = v256;
      if (*(v256 + 16) && (v202 = sub_1007C7EC0(v255), v200 = v256, (v203 & 1) != 0))
      {
        v204 = *(*(v256 + 56) + 8 * v202);
        v284.origin.x = v188;
        v284.origin.y = v189;
        v284.size.width = v190;
        v284.size.height = v191;
        v205 = CGRectGetWidth(v284);
        if (v204 > v205)
        {
          v120 = v204;
        }

        else
        {
          v120 = v205;
        }
      }

      else
      {
        v277.origin.x = v188;
        v277.origin.y = v189;
        v277.size.width = v190;
        v277.size.height = v191;
        v120 = CGRectGetWidth(v277);
      }

      v121 = swift_isUniquelyReferenced_nonNull_native();
      v276[0] = v200;
      sub_100AA19EC(v201, v121, v120);
      v119 = v276[0];
      v118 = v252;
      continue;
    }

    break;
  }

  v246 = v126;
  v270 = v20 & 0xC000000000000001;
  v258 = (v20 & 0xFFFFFFFFFFFFFF8);
  v268 = v127;

  v132 = 0;
  v129 = y;
  v128 = x;
  v130 = height;
  v131 = v249;
  v269 = v20;
  while (1)
  {
    if (v270)
    {
      v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v135 = (v132 + 1);
      if (__OFADD__(v132, 1))
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v132 >= *(v258 + 2))
      {
        goto LABEL_136;
      }

      v134 = *(v20 + 8 * v132 + 32);
      v135 = (v132 + 1);
      if (__OFADD__(v132, 1))
      {
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }
    }

    v274 = v135;
    v136 = *((swift_isaMask & *v134) + 0x128);
    v273 = v134;
    v136();
    v137 = *v12;
    if ((*v12)(v3, 1, v13) == 1)
    {
      v266 = v137;
      v265 = objc_opt_self();
      v138 = [v265 _atomicIncrementAssertCount];
      v276[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v276);
      StaticString.description.getter();
      v264 = COERCE_DOUBLE(String._bridgeToObjectiveC()());

      StaticString.description.getter();
      v139 = String._bridgeToObjectiveC()();

      v140 = [v139 lastPathComponent];

      v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v143 = v142;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v144 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v145 = swift_initStackObject();
      *(v145 + 16) = v259;
      *(v145 + 56) = &type metadata for Int32;
      *(v145 + 64) = &protocol witness table for Int32;
      *(v145 + 32) = v138;
      v146 = sub_100006370(0, &qword_1019F4D30);
      *(v145 + 96) = v146;
      v147 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v145 + 104) = v147;
      v148 = v264;
      *(v145 + 72) = v264;
      *(v145 + 136) = &type metadata for String;
      v149 = sub_1000053B0();
      *(v145 + 112) = v141;
      *(v145 + 120) = v143;
      *(v145 + 176) = &type metadata for UInt;
      *(v145 + 144) = v149;
      *(v145 + 152) = 431;
      v150 = v276[0];
      *(v145 + 216) = v146;
      *(v145 + 224) = v147;
      *(v145 + 184) = &protocol witness table for UInt;
      *(v145 + 192) = v150;
      v151 = *&v148;
      v152 = v150;
      v153 = static os_log_type_t.error.getter();
      sub_100005404(v144, &_mh_execute_header, v153, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v145);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v154 = static os_log_type_t.error.getter();
      sub_100005404(v144, &_mh_execute_header, v154, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v155 = swift_allocObject();
      v155[2] = 8;
      v155[3] = 0;
      v155[4] = 0;
      v155[5] = 0;
      v156 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v157 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v158 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v159 = String._bridgeToObjectiveC()();

      [v265 handleFailureInFunction:v157 file:v158 lineNumber:431 isFatal:0 format:v159 args:v156];

      v3 = v260;
      v13 = v271;
      v6 = v272;
      v12 = v263;
      v9 = &unk_101A09DD0;
      v137 = v266;
    }

    sub_10003DFF8(v3, v6, &unk_101A09DD0);
    if ((*&v137)(v6, 1, v13) != 1)
    {
      break;
    }

    sub_10000CAAC(v6, &unk_101A09DD0);
    v20 = v269;
    v133 = v274;
LABEL_57:
    ++v132;
    if (v133 == v268)
    {

      v126 = v246;
      goto LABEL_75;
    }
  }

  sub_10074A42C(v6, v267);
  result = [v262 layoutController];
  if (result)
  {
    v160 = result;
    v161 = v273;
    v162 = [result layoutForInfo:v273];

    if (v162)
    {
      [v162 boundsForStandardKnobs];
      v265 = v164;
      v266 = v163;
      v165 = v267;
      v166 = v267 + *(v13 + 20);
      v167 = *v166;
      v168 = *(v166 + 4);
      v264 = v130;
      v169 = v128;
      v170 = *(v166 + 8);
      v171 = *(v166 + 12);
      v172 = *(v166 + 16);
      v173 = *(v166 + 20);
      v174 = *(v166 + 21);
      v175 = *(v166 + 22);
      v176 = v3;
      v177 = *(v166 + 23);
      v178 = objc_allocWithZone(CRLCanvasInfoGeometry);
      v179 = v174;
      v13 = v271;
      v180 = v175;
      v12 = v263;
      v181 = v177;
      v3 = v176;
      v182 = [v178 initWithPosition:v173 size:v179 widthValid:v180 heightValid:v181 horizontalFlip:v167 verticalFlip:v168 angle:{v170, v171, v172}];
      [v182 transformedBoundsOrigin];
      v285.origin.x = v183;
      v285.origin.y = v184;
      v278.origin.x = v169;
      v278.origin.y = v129;
      v278.size.width = v131;
      v278.size.height = v264;
      *&v285.size.height = v265;
      v285.size.width = v266;
      v279 = CGRectUnion(v278, v285);
      v128 = v279.origin.x;
      v129 = v279.origin.y;
      v131 = v279.size.width;
      v130 = v279.size.height;

      v6 = v272;
      sub_101210BE4(v165, type metadata accessor for CRLTableAnchorHint);
    }

    else
    {
      sub_101210BE4(v267, type metadata accessor for CRLTableAnchorHint);
    }

    v20 = v269;
    v133 = v274;
    v9 = &unk_101A09DD0;
    goto LABEL_57;
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}