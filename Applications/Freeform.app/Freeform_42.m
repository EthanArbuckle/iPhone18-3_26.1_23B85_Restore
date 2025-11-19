uint64_t sub_100769DCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) == 1)
  {
    v30 = objc_opt_self();
    v4 = [v30 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
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
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 313;
    v16 = v31;
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
    sub_100005404(v11, &_mh_execute_header, v20, "Pending changes should only come from closed transactions.", 58, 2, _swiftEmptyArrayStorage);

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

    [v30 handleFailureInFunction:v23 file:v24 lineNumber:313 isFatal:0 format:v25 args:v22];
  }

  if (*(a2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.realTimeSync;
    v29 = static os_log_type_t.default.getter();
    sub_100005404(v28, &_mh_execute_header, v29, "CRLBoardChangeSet updateWithChange()", 36, 2, _swiftEmptyArrayStorage);
    result = sub_10076A298(a1);
    if (result)
    {
      return sub_10076BD80();
    }
  }

  else
  {
    v26 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_processingQueue;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + v26) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v26) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10076A298(uint64_t a1)
{
  v220 = type metadata accessor for UUID();
  v216 = *(v220 - 8);
  __chkstk_darwin(v220);
  v5 = &v201 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v12 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v208 = v12;

  v14 = sub_1007669D0(v13);

  v214 = sub_100E93A84(v14);

  swift_beginAccess();

  v16 = sub_1007669D0(v15);

  v212 = sub_100E93A84(v16);

  v18 = sub_100E93A84(v17);

  v19 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
  swift_beginAccess();

  v21 = sub_1007669D0(v20);

  v22 = sub_100E93A84(v21);

  v24 = sub_1007735D0(v23, a1);

  v25 = v24;
  v210 = v18;
  v211 = v1;
  v213 = a1;
  v209 = v22;
  v207 = 0;
  v205 = v19;
  if ((v24 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_1000064D8(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper);
    Set.Iterator.init(_cocoa:)();
    v26 = v227;
    v2 = v228;
    v27 = v229;
    isUniquelyReferenced_nonNull_native = v230;
    v29 = v231;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = 0;
    v30 = -1 << *(v24 + 32);
    v2 = v24 + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(v24 + 56);
    v26 = v25;
  }

  v206 = v27;
  v33 = (v27 + 64) >> 6;
  v215 = v216 + 16;
  v219 = (v216 + 8);
  v222 = &_swiftEmptyDictionarySingleton;
  v218 = v33;
  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v39 = __CocoaSet.Iterator.next()();
  if (v39)
  {
    v225[6] = v39;
    type metadata accessor for CRLTransactableHashableWrapper();
    swift_dynamicCast();
    v38 = v226;
    v36 = isUniquelyReferenced_nonNull_native;
    v37 = v29;
    if (v226)
    {
      while (1)
      {
        v221 = v37;
        v40 = v38[3];
        ObjectType = swift_getObjectType();
        (*(v40 + 32))(ObjectType, v40);
        v42 = v38[3];
        type metadata accessor for CRLTransactableData(0);
        v43 = swift_allocObject();
        v44 = swift_unknownObjectRetain();
        sub_100766DF8(v44, v42);
        v45 = v222;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v226 = v45;
        v46 = sub_10003E994(v5);
        v48 = v45[2];
        v49 = (v47 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          break;
        }

        v52 = v47;
        if (v45[3] >= v51)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = v46;
            sub_100AA4714();
            v46 = v64;
          }
        }

        else
        {
          sub_100A89AFC(v51, isUniquelyReferenced_nonNull_native);
          v46 = sub_10003E994(v5);
          if ((v52 & 1) != (v53 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_60;
          }
        }

        v54 = v226;
        v222 = v226;
        if (v52)
        {
          *(v226[7] + 8 * v46) = v43;

          (*v219)(v5, v220);
          isUniquelyReferenced_nonNull_native = v36;
          v29 = v221;
          v33 = v218;
          if (v26 < 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v55 = v2;
          v2 = v26;
          v226[(v46 >> 6) + 8] |= 1 << v46;
          v56 = v5;
          v57 = v216;
          v58 = v54[6] + *(v216 + 72) * v46;
          v59 = *(v216 + 16);
          v217 = v46;
          v60 = v220;
          v59(v58, v56, v220);
          *(v54[7] + 8 * v217) = v43;

          v61 = *(v57 + 8);
          v5 = v56;
          v61(v56, v60);
          v62 = v54[2];
          v50 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v50)
          {
            goto LABEL_57;
          }

          v54[2] = v63;
          isUniquelyReferenced_nonNull_native = v36;
          v29 = v221;
          v26 = v2;
          v2 = v55;
          v33 = v218;
          if (v26 < 0)
          {
            goto LABEL_17;
          }
        }

LABEL_11:
        v34 = isUniquelyReferenced_nonNull_native;
        v35 = v29;
        v36 = isUniquelyReferenced_nonNull_native;
        if (!v29)
        {
          while (1)
          {
            v36 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v36 >= v33)
            {
              goto LABEL_29;
            }

            v35 = *(v2 + 8 * v36);
            ++v34;
            if (v35)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          break;
        }

LABEL_15:
        v37 = (v35 - 1) & v35;
        v38 = *(*(v26 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));

        if (!v38)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

LABEL_29:
  sub_100035F90();
  v65 = v213;
  if (*(v213 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) != 1)
  {

    v84 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas;
    v43 = v211;
    v85 = *(v211 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);

    v86 = v214;
    v87 = sub_10076B904(v214, v85);

    *(v43 + v84) = v87;

    v88 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;
    v89 = *(v43 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas);

    v90 = sub_10076B904(v86, v89);

    *(v43 + v88) = v90;

    v91 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas;
    v92 = *(v43 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas);

    v93 = sub_10076B904(v86, v92);

    *(v43 + v91) = v93;

    swift_beginAccess();
    sub_1012D4DC4(v212);
    swift_endAccess();

    swift_beginAccess();
    v26 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas;
    swift_beginAccess();

    sub_100769208(v94);
    swift_endAccess();

    swift_beginAccess();
    swift_beginAccess();

    sub_1012D4DC4(v95);
    swift_endAccess();

    swift_beginAccess();
    v96 = v222;

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v225[0] = *(v43 + v26);
    *(v43 + v26) = 0x8000000000000000;
    v98 = v207;
    sub_10077486C(v96, sub_100ED9FEC, 0, v97, v225);
    if (!v98)
    {

      *(v43 + v26) = v225[0];

      swift_endAccess();
      swift_beginAccess();

      sub_100636EA0(v99);
      swift_endAccess();
      v100 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
      swift_beginAccess();
      v101 = *(v43 + v100);
      v102 = v210;
      if (v101)
      {
        v103 = v214;
        if (*(v210 + 16) <= v214[2] >> 3)
        {
          v225[0] = v214;

          sub_1012D4DC4(v102);

          v104 = v225[0];
        }

        else
        {

          v104 = sub_1012D5CC4(v102, v103);
        }

        v199 = sub_10076BB40(v104, v101);

        v198 = 0;
        *(v43 + v100) = v199;
      }

      else
      {

        v198 = 0;
      }

      goto LABEL_54;
    }

    goto LABEL_61;
  }

  v221 = sub_1007727A4(v66);

  v206 = sub_1007727A4(v67);

  v68 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
  swift_beginAccess();
  v215 = v68;
  v69 = *(v65 + v68);
  v70 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
  swift_beginAccess();
  v201 = v70;
  v218 = v69;

  v72 = sub_100DCA060(v71);
  isUniquelyReferenced_nonNull_native = sub_1007727A4(v72);

  swift_beginAccess();

  v74 = sub_100DCA060(v73);
  v26 = sub_1007727A4(v74);

  v75 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas;
  v2 = v211;
  v76 = *(v211 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);

  v78 = sub_100EA61FC(v77);
  v43 = sub_100BD2660(v76, v78);
  v79 = v207;
  v80 = sub_100773FE4(isUniquelyReferenced_nonNull_native, v43);

  if (!*(v80 + 16))
  {

    v83 = v214;
    goto LABEL_38;
  }

  v81 = *(v2 + v75);

  v82 = swift_isUniquelyReferenced_nonNull_native();
  v225[0] = v81;
  sub_1007741A4(v80, sub_100ED9FEC, 0, v82, v225);

  v83 = v214;
  if (!v79)
  {
    *(v2 + v75) = v225[0];

LABEL_38:
    v219 = v75;
    v105 = *(v2 + v75);

    v106 = v221;

    v107 = swift_isUniquelyReferenced_nonNull_native();
    v225[0] = v105;
    sub_1007741A4(v106, sub_100ED9FEC, 0, v107, v225);

    if (!v79)
    {
      v216 = isUniquelyReferenced_nonNull_native;
      v207 = v26;
      v108 = sub_10076B904(v83, v225[0]);

      v109 = v212;
      v110 = sub_10076B904(v212, v108);

      v111 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;

      v113 = sub_100767620(v112);

      v114 = sub_10076B904(v113, v110);

      v217 = v111;
      v115 = *(v2 + v111);

      v116 = swift_isUniquelyReferenced_nonNull_native();
      v225[0] = v115;
      sub_10077486C(v206, sub_100ED9FEC, 0, v116, v225);

      v117 = v225[0];
      v118 = sub_100767620(v221);
      v119 = sub_10076B904(v118, v117);

      v121 = sub_100767620(v120);

      v122 = sub_10076B904(v121, v119);

      v203 = sub_10076B904(v218, v122);

      v123 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
      swift_beginAccess();
      v218 = v123;
      v124 = *(v2 + v123);

      v126 = sub_1010ACAA4(v125, v124);

      v128 = sub_1012D8334(v127, v126);

      v130 = sub_1012D8334(v129, v128);

      v131 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas;
      v132 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas);

      v133 = swift_isUniquelyReferenced_nonNull_native();
      v224[0] = v132;
      sub_1007741A4(v216, sub_100ED9FEC, 0, v133, v224);

      v134 = v214;
      v135 = sub_10076B904(v214, v224[0]);

      v136 = sub_10076B904(v109, v135);

      v138 = sub_100EA61FC(v137);
      v216 = sub_10076B904(v138, v136);

      v205 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas;
      v139 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas);

      v140 = swift_isUniquelyReferenced_nonNull_native();
      v224[0] = v139;
      sub_1007741A4(v207, sub_100ED9FEC, 0, v140, v224);

      v202 = 0;
      v141 = sub_10076B904(v134, v224[0]);

      v142 = sub_10076B904(v109, v141);

      v144 = sub_100EA61FC(v143);
      v204 = sub_10076B904(v144, v142);

      v145 = v219;
      v146 = *(v219 + v2);

      LOBYTE(v141) = sub_100B33ED0(v114, v146);

      v147 = v217;
      v148 = v203;
      LODWORD(v207) = (v141 & 1) == 0 || (v149 = *(v2 + v217), , v150 = sub_100B33ED0(v148, v149), , (v150 & 1) == 0) || (v151 = *(v2 + v131), , v152 = sub_100B33ED0(v216, v151), , (v152 & 1) == 0) || (v153 = *(v2 + v218), , v154 = sub_100BC5FB8(v130, v153), , (v154 & 1) == 0);
      v206 = v131;
      *(v145 + v2) = v114;

      *(v2 + v147) = v148;

      *(v2 + v218) = v130;

      if (qword_1019F2288 == -1)
      {
LABEL_46:
        v203 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C4D0;
        type metadata accessor for CRLTransactableData(0);
        sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID);

        v156 = Dictionary.Keys.description.getter();
        v158 = v157;

        *(inited + 56) = &type metadata for String;
        v159 = sub_1000053B0();
        *(inited + 64) = v159;
        *(inited + 32) = v156;
        *(inited + 40) = v158;

        v160 = Dictionary.Keys.description.getter();
        v162 = v161;

        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v159;
        *(inited + 72) = v160;
        *(inited + 80) = v162;

        v163 = Set.description.getter();
        v165 = v164;

        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v159;
        isUniquelyReferenced_nonNull_native = v2;
        *(inited + 112) = v163;
        *(inited + 120) = v165;
        v166 = static os_log_type_t.default.getter();
        sub_100005404(v203, &_mh_execute_header, v166, "CRLBoardChangeSet _applyChange addedItemDatas: %{public}@, removedItemDatas: %{public}@, removedNewlyCreatedItemIds: %{public}@", 127, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();

        v168 = v202;
        v169 = sub_1007664E0(v167);

        v170 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedFreehandItemIDsSubset;
        v171 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedFreehandItemIDsSubset);

        v172 = sub_101104CFC(v169, v171);

        v173 = v221;

        v175 = sub_1012D8334(v174, v172);

        v177 = sub_1012D8334(v176, v175);

        *(v2 + v170) = v177;

        v178 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs;
        v179 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs);

        v180 = sub_1010ACAA4(v210, v179);
        v181 = sub_1012D8334(v173, v180);

        v183 = sub_1012D8334(v182, v181);

        *(v2 + v178) = v183;

        *(v2 + v206) = v216;

        *(v2 + v205) = v204;

        v26 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas;
        swift_beginAccess();
        v184 = v209;
        sub_100769208(v209);

        sub_100769208(v185);
        swift_endAccess();

        swift_beginAccess();
        swift_beginAccess();

        sub_1012D4DC4(v186);
        swift_endAccess();

        swift_beginAccess();
        v187 = v222;

        v188 = swift_isUniquelyReferenced_nonNull_native();
        v223[0] = *(v2 + v26);
        *(v2 + v26) = 0x8000000000000000;
        sub_10077486C(v187, sub_100ED9FEC, 0, v188, v223);
        if (!v168)
        {

          *(v2 + v26) = v223[0];

          swift_endAccess();
          swift_beginAccess();

          sub_100636EA0(v189);
          swift_endAccess();
          v190 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
          swift_beginAccess();
          v191 = *(v2 + v190);
          if (v191)
          {

            v193 = sub_1012CE518(v192);

            v194 = swift_isUniquelyReferenced_nonNull_native();
            v223[0] = v191;
            sub_1007744E8(v193, sub_100771BE4, 0, v194, v223);

            v195 = sub_10076BB40(v214, v223[0]);

            v196 = sub_10076BB40(v212, v195);

            v197 = sub_10076BB40(v184, v196);

            *(v2 + v190) = v197;
          }

          else
          {
          }

          v198 = v207;
LABEL_54:

          return v198;
        }

        goto LABEL_62;
      }

LABEL_59:
      swift_once();
      goto LABEL_46;
    }

LABEL_60:

    __break(1u);
LABEL_61:

    *(v43 + v26) = v225[0];

    __break(1u);
LABEL_62:

    *(isUniquelyReferenced_nonNull_native + v26) = v223[0];

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10076B904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v27 = v5 + 16;
  v13 = (v5 + 8);

  v28 = a1;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(v5 + 72);
    (*(v5 + 16))(v7, *(v28 + 48) + v18 * (v17 | (v15 << 6)), v4);
    v19 = sub_10003E994(v7);
    if (v20)
    {
      v26 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA4714();
        a2 = v29;
      }

      v22 = (*(a2 + 48) + v26 * v18);
      v23 = v26;
      v25 = *v13;
      v25(v22, v4);

      sub_100BDBB9C(v23, a2);
      result = v25(v7, v4);
    }

    else
    {
      result = (*v13)(v7, v4);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return a2;
    }

    v11 = *(v8 + 8 * v15);
    ++v16;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10076BB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v27 = v5 + 16;
  v13 = (v5 + 8);

  v28 = a1;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(v5 + 72);
    (*(v5 + 16))(v7, *(v28 + 48) + v18 * (v17 | (v15 << 6)), v4);
    v19 = sub_10003E994(v7);
    if (v20)
    {
      v26 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA37A4();
        a2 = v29;
      }

      v22 = (*(a2 + 48) + v26 * v18);
      v23 = v26;
      v25 = *v13;
      v25(v22, v4);
      swift_unknownObjectRelease();
      sub_100BCC908(v23, a2);
      result = v25(v7, v4);
    }

    else
    {
      result = (*v13)(v7, v4);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return a2;
    }

    v11 = *(v8 + 8 * v15);
    ++v16;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10076BD80()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    result = sub_100768904();
    if (result)
    {
      if (*(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas) + 16) || *(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) + 16))
      {
        v8 = 1;
      }

      else
      {
        v9 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
        swift_beginAccess();
        v8 = *(*(v0 + v9) + 16) != 0;
      }

      v10[31] = v8;

      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10076BF24@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, BOOL *a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v421 = *(v8 - 8);
  __chkstk_darwin(v8);
  v412 = &v383 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v413 = &v383 - v11;
  __chkstk_darwin(v12);
  v414 = &v383 - v13;
  __chkstk_darwin(v14);
  v16 = &v383 - v15;
  __chkstk_darwin(v17);
  v417 = &v383 - v18;
  __chkstk_darwin(v19);
  v410 = &v383 - v20;
  __chkstk_darwin(v21);
  v422 = &v383 - v22;
  __chkstk_darwin(v23);
  v399 = &v383 - v24;
  __chkstk_darwin(v25);
  v424 = (&v383 - v26);
  __chkstk_darwin(v27);
  v411 = &v383 - v28;
  __chkstk_darwin(v29);
  v427 = &v383 - v30;
  __chkstk_darwin(v31);
  v423 = &v383 - v32;
  __chkstk_darwin(v33);
  v418 = (&v383 - v34);
  __chkstk_darwin(v35);
  v426 = &v383 - v36;
  __chkstk_darwin(v37);
  v39 = &v383 - v38;
  __chkstk_darwin(v40);
  v428 = &v383 - v41;
  if (!sub_100768904() || *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) > 0)
  {
    v42 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
    return (*(*(v42 - 8) + 56))(a4, 1, 1, v42);
  }

  v384 = v16;
  v387 = a4;
  v388 = a2;
  v393 = a3;
  v435 = _swiftEmptyArrayStorage;
  v44 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas;
  swift_beginAccess();
  v397 = v44;

  v46 = sub_100767620(v45);

  v47 = v46 + 7;
  v48 = 1 << *(v46 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v46[7];
  i = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas;
  v409 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas;
  v419 = a1;
  v415 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
  v416 = v46;
  swift_beginAccess();
  v51 = 0;
  v52 = (v48 + 63) >> 6;
  v420 = (v421 + 32);
  v429 = (v421 + 16);
  v430 = (v421 + 8);
  v401 = _swiftEmptyArrayStorage;
  if (v50)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v54 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v55 = v421;
        v56 = v428;
        (*(v421 + 16))(v428, v416[6] + *(v421 + 72) * (v54 | (v51 << 6)), v8);
        (*(v55 + 32))(v39, v56, v8);
        v57 = *(v419 + v415);
        if (*(v57 + 16))
        {
          break;
        }

LABEL_20:
        (*v430)(v39, v8);
        if (!v50)
        {
          goto LABEL_7;
        }
      }

      v58 = sub_10003E994(v39);
      if ((v59 & 1) == 0)
      {
        goto LABEL_19;
      }

      v60 = *(*(v57 + 56) + 8 * v58);

      if (*(*(i + v419) + 16))
      {

        sub_10003E994(v39);
        if (v61)
        {
          goto LABEL_18;
        }
      }

      if (*(*(v419 + v409) + 16))
      {

        sub_10003E994(v39);
        if (v62)
        {
LABEL_18:

LABEL_19:

          goto LABEL_20;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v435 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v435 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v407 = v60;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v430)(v39, v8);
      v401 = v435;
      if (!v50)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
      goto LABEL_290;
    }

    if (v53 >= v52)
    {
      break;
    }

    v50 = v47[v53];
    ++v51;
    if (v50)
    {
      v51 = v53;
      goto LABEL_11;
    }
  }

  v63 = *v429;
  v64 = v419;
  v394 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier;
  v65 = v426;
  v428 = v63;
  (v63)(v426, v419 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier, v8);
  v66 = i;
  v67 = *(i + v64);
  if (*(v67 + 16))
  {

    v68 = sub_10003E994(v65);
    v69 = v430;
    v70 = v418;
    if (v71)
    {
      v72 = *(*(v67 + 56) + 8 * v68);
      v73 = *v430;

      v426 = v73;
      v73(v65, v8);
      v74 = v72;

      v75 = *(v72 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
      if ((v75 & 0x8000000000000000) == 0)
      {
        v392 = v74;

        goto LABEL_33;
      }

LABEL_493:
      v345 = objc_opt_self();

      v346 = [v345 _atomicIncrementAssertCount];
      v433 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v433);
      StaticString.description.getter();
      v347 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v348 = String._bridgeToObjectiveC()();

      v349 = [v348 lastPathComponent];

      v350 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v352 = v351;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v353 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v354 = swift_allocObject();
      *(v354 + 16) = xmmword_10146CA70;
      *(v354 + 56) = &type metadata for Int32;
      *(v354 + 64) = &protocol witness table for Int32;
      *(v354 + 32) = v346;
      v355 = sub_100006370(0, &qword_1019F4D30);
      *(v354 + 96) = v355;
      v356 = sub_1005CF04C();
      *(v354 + 104) = v356;
      *(v354 + 72) = v347;
      *(v354 + 136) = &type metadata for String;
      v357 = sub_1000053B0();
      *(v354 + 112) = v350;
      *(v354 + 120) = v352;
      *(v354 + 176) = &type metadata for UInt;
      *(v354 + 184) = &protocol witness table for UInt;
      *(v354 + 144) = v357;
      *(v354 + 152) = 481;
      v358 = v433;
      *(v354 + 216) = v355;
      *(v354 + 224) = v356;
      *(v354 + 192) = v358;
      v359 = v347;
      v360 = v358;
      v361 = static os_log_type_t.error.getter();
      sub_100005404(v353, &_mh_execute_header, v361, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v354);

      v362 = static os_log_type_t.error.getter();
      sub_100005404(v353, &_mh_execute_header, v362, "Non-board data found associted with boardUUID", 45, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Non-board data found associted with boardUUID");
      v363 = 481;
LABEL_499:
      sub_10063E178(_swiftEmptyArrayStorage, "getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2, v363);
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v381, v382);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v426 = *v69;
    (v426)(v65, v8);
    v75 = 0;
    v392 = 0;
  }

  else
  {
    v426 = *v430;
    (v426)(v65, v8);
    v75 = 0;
    v392 = 0;
    v70 = v418;
  }

LABEL_33:
  (v428)(v70, v64 + v394, v8);
  v76 = *(v64 + v409);
  if (!*(v76 + 16))
  {
LABEL_40:
    (v426)(v70, v8);
    v389 = 0;
    goto LABEL_44;
  }

  v77 = sub_10003E994(v70);
  if ((v78 & 1) == 0)
  {

    goto LABEL_40;
  }

  v79 = *(*(v76 + 56) + 8 * v77);

  (v426)(v70, v8);

  v389 = v79;
  if (v392)
  {
    v390 = v75;
    v80 = objc_opt_self();

    v81 = [v80 _atomicIncrementAssertCount];
    v433 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v433);
    StaticString.description.getter();
    v418 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    v83 = [v82 lastPathComponent];

    v416 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v86 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v81;
    v88 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v88;
    v89 = sub_1005CF04C();
    *(inited + 104) = v89;
    v90 = v418;
    *(inited + 72) = v418;
    *(inited + 136) = &type metadata for String;
    v91 = sub_1000053B0();
    *(inited + 112) = v416;
    *(inited + 120) = v85;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v91;
    *(inited + 152) = 488;
    v92 = v433;
    *(inited + 216) = v88;
    *(inited + 224) = v89;
    *(inited + 192) = v92;
    v93 = v90;
    v94 = v92;
    v95 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v95, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v96 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v96, "Shouldn't have a board modification if we're creating the board.", 64, 2, _swiftEmptyArrayStorage);

    sub_100604780(_swiftEmptyArrayStorage, "getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2, 488);
    v64 = v419;
    v79 = v389;
  }

  else
  {
  }

  v75 = *(v79 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
  if (v75 < 0)
  {
    v364 = [objc_opt_self() _atomicIncrementAssertCount];
    v433 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v433);
    StaticString.description.getter();
    v365 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v366 = String._bridgeToObjectiveC()();

    v367 = [v366 lastPathComponent];

    v368 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v370 = v369;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v371 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v372 = swift_initStackObject();
    *(v372 + 16) = xmmword_10146CA70;
    *(v372 + 56) = &type metadata for Int32;
    *(v372 + 64) = &protocol witness table for Int32;
    *(v372 + 32) = v364;
    v373 = sub_100006370(0, &qword_1019F4D30);
    *(v372 + 96) = v373;
    v374 = sub_1005CF04C();
    *(v372 + 104) = v374;
    *(v372 + 72) = v365;
    *(v372 + 136) = &type metadata for String;
    v375 = sub_1000053B0();
    *(v372 + 112) = v368;
    *(v372 + 120) = v370;
    *(v372 + 176) = &type metadata for UInt;
    *(v372 + 184) = &protocol witness table for UInt;
    *(v372 + 144) = v375;
    *(v372 + 152) = 492;
    v376 = v433;
    *(v372 + 216) = v373;
    *(v372 + 224) = v374;
    *(v372 + 192) = v376;
    v377 = v365;
    v378 = v376;
    v379 = static os_log_type_t.error.getter();
    sub_100005404(v371, &_mh_execute_header, v379, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v372);

    v380 = static os_log_type_t.error.getter();
    sub_100005404(v371, &_mh_execute_header, v380, "Non-board data found associted with boardUUID", 45, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Non-board data found associted with boardUUID");
    v363 = 492;
    goto LABEL_499;
  }

  v66 = i;
LABEL_44:
  v97 = *(v66 + v64);

  v39 = sub_100767A60(v98);

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
  {
    v39 = sub_10113E260(v39);
  }

  v390 = v75;
  v50 = v39 & 0xFFFFFFFFFFFFFF8;
  v99 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = (v39 & 0xFFFFFFFFFFFFFF8) + 32;
  v47 = &off_1019FAE60;
  v51 = 0;
  if (v99)
  {
LABEL_49:
    v100 = (v52 + 8 * v51);
    while (1)
    {
      v101 = *v100;
      if (**v100 == &off_1019FAE60)
      {
        break;
      }

      ++v51;
      ++v100;
      if (v51 >= v99)
      {
        goto LABEL_57;
      }
    }

    v102 = v99 - 1;
    v103 = (v52 + 8 * v99);
    while (v51 < v102)
    {
      v105 = *--v103;
      v104 = v105;
      --v102;
      if (*v105 != &off_1019FAE60)
      {
        *v100 = v104;
        *v103 = v101;
        ++v51;
        v99 = v102 + 1;
        if (v51 < v102 + 1)
        {
          goto LABEL_49;
        }

        break;
      }
    }
  }

LABEL_57:
  v418 = (v39 >> 62);
  if (!(v39 >> 62))
  {
    v106 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v106 >= v51)
    {
      goto LABEL_59;
    }

LABEL_296:
    __break(1u);
    goto LABEL_297;
  }

LABEL_290:
  if ((v39 & 0x8000000000000000) != 0)
  {
    v97 = v39;
  }

  else
  {
    v97 = v50;
  }

  v252 = _CocoaArrayWrapper.endIndex.getter();
  if (v252 < v51)
  {
    __break(1u);
LABEL_492:
    __break(1u);
    goto LABEL_493;
  }

  v106 = v252;
  if (_CocoaArrayWrapper.endIndex.getter() < v51)
  {
    __break(1u);
    goto LABEL_296;
  }

LABEL_59:
  if (v51 < 0)
  {
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

  if (v418)
  {
    v107 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v107 = *(v50 + 16);
  }

  if (v107 < v106)
  {
    goto LABEL_298;
  }

  v415 = v52;
  if (v106 < 0)
  {
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  i = (v39 & 0xC000000000000001);
  if ((v39 & 0xC000000000000001) == 0 || v51 == v106)
  {
  }

  else
  {
    if (v51 >= v106)
    {
      goto LABEL_475;
    }

    v97 = type metadata accessor for CRLBoardItemData();

    v108 = v51;
    do
    {
      v109 = v108 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v108);
      v108 = v109;
    }

    while (v106 != v109);
  }

  v396 = v39;
  v416 = v50;
  if (v418)
  {

    v110 = _CocoaArrayWrapper.subscript.getter();
    v52 = v112;
    v106 = v113 >> 1;
  }

  else
  {
    v110 = v50;
    v111 = v415;
    v52 = v51;
  }

  v50 = v106 - v52;
  if (__OFSUB__(v106, v52))
  {
    goto LABEL_300;
  }

  v431 = v8;
  if (v50)
  {
    v406 = v110;
    v407 = v111;
    v8 = v47;
    v433 = _swiftEmptyArrayStorage;
    v97 = &v433;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_473;
    }

    if (v52 <= v106)
    {
      v114 = v106;
    }

    else
    {
      v114 = v52;
    }

    v39 = v114 - v52;
    v47 = (v407 + 8 * v52);
    do
    {
      if (!v39)
      {
        goto LABEL_283;
      }

      v52 = *v47;
      if (**v47 != v8)
      {
        goto LABEL_284;
      }

      v97 = &v433;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v39;
      ++v47;
      --v50;
    }

    while (v50);
    swift_unknownObjectRelease();
    v50 = v433;
    v47 = v8;
    v8 = v431;
  }

  else
  {
    swift_unknownObjectRelease();
    v50 = _swiftEmptyArrayStorage;
  }

  v39 = v396;
  if (v418)
  {
    if (v396 < 0)
    {
      v97 = v396;
    }

    else
    {
      v97 = v416;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_476;
    }

    v115 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v115 = v416[2];
  }

  if (v115 < v51)
  {
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  if (i && v51)
  {
    type metadata accessor for CRLBoardItemData();

    v116 = 0;
    do
    {
      v117 = v116 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v116);
      v116 = v117;
    }

    while (v51 != v117);
    if (!v418)
    {
      goto LABEL_100;
    }

LABEL_102:

    v118 = _CocoaArrayWrapper.subscript.getter();
    v415 = v119;
    v416 = v118;
    v97 = v120;
    v52 = v121;
    if ((v121 & 1) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  if (v418)
  {
    goto LABEL_102;
  }

LABEL_100:
  v97 = 0;
  v52 = (2 * v51) | 1;
LABEL_104:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v123 = swift_dynamicCastClass();
  if (!v123)
  {
    swift_unknownObjectRelease();
    v123 = _swiftEmptyArrayStorage;
  }

  v124 = v123[2];

  if (__OFSUB__(v52 >> 1, v97))
  {
    goto LABEL_477;
  }

  if (v124 != (v52 >> 1) - v97)
  {
    goto LABEL_478;
  }

  v125 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  i = v125;
  if (v125)
  {
    goto LABEL_111;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v122)
  {
    swift_unknownObjectRelease();
LABEL_111:

    v39 = sub_100767A60(v126);

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
    {
      v39 = sub_10113E260(v39);
    }

    v97 = (v39 & 0xFFFFFFFFFFFFFF8);
    v127 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v416 = ((v39 & 0xFFFFFFFFFFFFFF8) + 32);
    v433 = v416;
    v434 = v127;
    v128 = v425;
    v52 = sub_100771D5C(&v433);
    v51 = v128;
    v425 = v39 >> 62;
    v418 = (v39 & 0xFFFFFFFFFFFFFF8);
    if (v39 >> 62)
    {
LABEL_302:
      if ((v39 & 0x8000000000000000) != 0)
      {
        v97 = v39;
      }

      v253 = _CocoaArrayWrapper.endIndex.getter();
      if (v253 < v52)
      {
        goto LABEL_492;
      }

      v129 = v253;
      if (_CocoaArrayWrapper.endIndex.getter() < v52)
      {
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }
    }

    else
    {
      v129 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v129 < v52)
      {
        goto LABEL_307;
      }
    }

    if (v52 < 0)
    {
      goto LABEL_308;
    }

    if (v425)
    {
      v130 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v130 = v418[2];
    }

    if (v130 < v129)
    {
      goto LABEL_309;
    }

    if (v129 < 0)
    {
      goto LABEL_310;
    }

    v386 = v51;
    v415 = v39 & 0xC000000000000001;
    if ((v39 & 0xC000000000000001) == 0 || v52 == v129)
    {
    }

    else
    {
      if (v52 >= v129)
      {
        __break(1u);
LABEL_480:
        __break(1u);
LABEL_481:
        __break(1u);
LABEL_482:
        __break(1u);
LABEL_483:
        __break(1u);
LABEL_484:
        __break(1u);
        goto LABEL_485;
      }

      type metadata accessor for CRLBoardItemData();

      v131 = v52;
      do
      {
        v132 = v131 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v131);
        v131 = v132;
      }

      while (v129 != v132);
    }

    v395 = v39;
    v385 = v50;
    if (v425)
    {

      v133 = _CocoaArrayWrapper.subscript.getter();
      v51 = v135;
      v129 = v136 >> 1;
    }

    else
    {
      v133 = v418;
      v134 = v416;
      v51 = v52;
    }

    v50 = v129 - v51;
    if (__OFSUB__(v129, v51))
    {
      goto LABEL_311;
    }

    if (!v50)
    {
      swift_unknownObjectRelease();
      v51 = _swiftEmptyArrayStorage;
      goto LABEL_145;
    }

    v8 = v134;
    v409 = v133;
    v433 = _swiftEmptyArrayStorage;
    v97 = &v433;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v50 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_473:
    __break(1u);
LABEL_474:
    __break(1u);
LABEL_475:
    __break(1u);
LABEL_476:
    __break(1u);
LABEL_477:
    __break(1u);
LABEL_478:
    swift_unknownObjectRelease();
LABEL_103:
    sub_100676648(v416, v415, v97, v52);
  }

  if (v51 <= v129)
  {
    v137 = v129;
  }

  else
  {
    v137 = v51;
  }

  v39 = v137 - v51;
  v8 += 8 * v51;
  do
  {
    if (!v39)
    {
      goto LABEL_285;
    }

    v51 = *v8;
    if (**v8 != v47)
    {
      goto LABEL_286;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    --v39;
    v8 += 8;
    --v50;
  }

  while (v50);
  swift_unknownObjectRelease();
  v51 = v433;
  v8 = v431;
LABEL_145:
  v47 = v418;
  v50 = v419;
  if (!v425)
  {
    v138 = v418[2];
    goto LABEL_152;
  }

  if (v395 < 0)
  {
    v97 = v395;
  }

  else
  {
    v97 = v418;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    goto LABEL_483;
  }

  v138 = _CocoaArrayWrapper.endIndex.getter();
LABEL_152:
  if (v138 < v52)
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v383 = v51;
  if (v415 && v52)
  {
    type metadata accessor for CRLBoardItemData();

    v139 = 0;
    do
    {
      v140 = v139 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v139);
      v139 = v140;
    }

    while (v52 != v140);
    if (!v425)
    {
LABEL_158:
      v97 = 0;
      v52 = (2 * v52) | 1;
      goto LABEL_161;
    }
  }

  else
  {

    if (!v425)
    {
      goto LABEL_158;
    }
  }

  v47 = _CocoaArrayWrapper.subscript.getter();
  v416 = v141;
  v97 = v142;
  v52 = v143;
LABEL_161:
  v39 = v423;
  v51 = v426;
  if ((v52 & 1) == 0)
  {
LABEL_162:
    sub_100676648(v47, v416, v97, v52);
    v145 = v144;
    goto LABEL_169;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v146 = swift_dynamicCastClass();
  if (!v146)
  {
    swift_unknownObjectRelease();
    v146 = _swiftEmptyArrayStorage;
  }

  v147 = v146[2];

  if (__OFSUB__(v52 >> 1, v97))
  {
    goto LABEL_484;
  }

  if (v147 != (v52 >> 1) - v97)
  {
LABEL_485:
    swift_unknownObjectRelease();
    v39 = v423;
    v51 = v426;
    goto LABEL_162;
  }

  v145 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v39 = v423;
  v51 = v426;
  if (!v145)
  {
    v145 = _swiftEmptyArrayStorage;
LABEL_169:
    swift_unknownObjectRelease();
  }

  v402 = v145;
  v391 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;

  v52 = sub_100767A60(v148);

  v433 = _swiftEmptyArrayStorage;
  if (!(v52 >> 62))
  {
    v149 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_172;
  }

LABEL_313:
  v149 = _CocoaArrayWrapper.endIndex.getter();
LABEL_172:
  v418 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs;
  if (!v149)
  {
    v176 = _swiftEmptyArrayStorage;
    goto LABEL_200;
  }

  v47 = 0;
  v406 = v52 & 0xFFFFFFFFFFFFFF8;
  v407 = v52 & 0xC000000000000001;
  v403 = v52 + 32;
  v404 = v149;
  v405 = v52;
  while (2)
  {
    if (v407)
    {
      v150 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v151 = __OFADD__(v47, 1);
      v152 = v47 + 1;
      if (v151)
      {
        goto LABEL_197;
      }

LABEL_177:
      v415 = v152;
      v153 = *(v418 + v50);
      v154 = (*v150 + 264);
      v155 = *v154;
      v416 = v150;
      v409 = v154;
      v155();
      if (*(v153 + 16))
      {
        v400 = v155;
        v156 = sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID);

        v398 = v156;
        v157 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v158 = -1 << *(v153 + 32);
        v159 = v157 & ~v158;
        if ((*(v153 + 56 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159))
        {
          v160 = ~v158;
          v425 = *(v421 + 72);
          while (1)
          {
            v161 = v427;
            v162 = v431;
            (v428)(v427, *(v153 + 48) + v425 * v159, v431);
            sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID);
            v163 = dispatch thunk of static Equatable.== infix(_:_:)();
            (v426)(v161, v162);
            if (v163)
            {
              break;
            }

            v159 = (v159 + 1) & v160;
            if (((*(v153 + 56 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
            {
              goto LABEL_182;
            }
          }

          v39 = v423;
          v8 = v431;
          v164 = v426;
          (v426)(v423, v431);

          v166 = sub_100767620(v165);

          v168 = v411;
          (v400)(v167);
          if (*(v166 + 16))
          {
            v169 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v170 = -1 << *(v166 + 32);
            v171 = v169 & ~v170;
            if ((*(v166 + 56 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171))
            {
              v172 = ~v170;
              while (1)
              {
                v173 = v427;
                v174 = v431;
                (v428)(v427, *(v166 + 48) + v171 * v425, v431);
                v175 = dispatch thunk of static Equatable.== infix(_:_:)();
                (v426)(v173, v174);
                if (v175)
                {
                  break;
                }

                v171 = (v171 + 1) & v172;
                if (((*(v166 + 56 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
                {
                  goto LABEL_192;
                }
              }

              v8 = v431;
              v51 = v426;
              (v426)(v411, v431);
              v50 = v419;
              v39 = v423;
LABEL_185:
              v52 = v405;
              v47 = v415;
              if (v415 == v404)
              {
                goto LABEL_198;
              }

              continue;
            }

LABEL_192:

            v8 = v431;
            v51 = v426;
            (v426)(v411, v431);
            v50 = v419;
            v39 = v423;
          }

          else
          {

            v164(v168, v8);
            v51 = v164;
            v50 = v419;
          }
        }

        else
        {
LABEL_182:

          v39 = v423;
          v8 = v431;
          v51 = v426;
          (v426)(v423, v431);
          v50 = v419;
        }
      }

      else
      {
        (v51)(v39, v8);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_185;
    }

    break;
  }

  if (v47 >= *(v406 + 16))
  {
    goto LABEL_287;
  }

  v151 = __OFADD__(v47, 1);
  v152 = v47 + 1;
  if (!v151)
  {
    goto LABEL_177;
  }

LABEL_197:
  __break(1u);
LABEL_198:
  v176 = v433;
LABEL_200:
  v400 = v176;

  v178 = sub_100EE94AC(v177);
  v47 = v178;
  v179 = _swiftEmptyArrayStorage;
  v51 = v399;
  v180 = v424;
  v411 = *(v178 + 2);
  if (v411)
  {
    v181 = 0;
    v407 = v178;
    do
    {
      if (v181 >= v47[2])
      {
        goto LABEL_288;
      }

      v416 = ((*(v421 + 80) + 32) & ~*(v421 + 80));
      v182 = *(v421 + 72);
      v423 = v181;
      v425 = v182;
      (v428)(v180, v416 + v47 + v182 * v181, v8);
      v183 = *(v418 + v50);
      if (*(v183 + 16))
      {
        v415 = v179;
        v184 = sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID);

        v185 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v186 = -1 << *(v183 + 32);
        v187 = v185 & ~v186;
        if ((*(v183 + 56 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187))
        {
          v409 = v184;
          v188 = ~v186;
          while (1)
          {
            v189 = v427;
            v190 = v431;
            (v428)(v427, *(v183 + 48) + v187 * v425, v431);
            sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID);
            v191 = dispatch thunk of static Equatable.== infix(_:_:)();
            (v426)(v189, v190);
            if (v191)
            {
              break;
            }

            v187 = (v187 + 1) & v188;
            if (((*(v183 + 56 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187) & 1) == 0)
            {
LABEL_208:
              v8 = v431;
              v51 = v399;
              goto LABEL_217;
            }
          }

          v193 = sub_100767620(v192);

          v51 = v399;
          if (!*(v193 + 16))
          {
            v8 = v431;
LABEL_217:
            v180 = v424;
LABEL_218:
            v47 = v407;
            goto LABEL_219;
          }

          v180 = v424;
          v8 = v431;
          v194 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v52 = v193 + 56;
          v195 = -1 << *(v193 + 32);
          v39 = v194 & ~v195;
          if (((*(v193 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_218;
          }

          v196 = ~v195;
          while (1)
          {
            v197 = v427;
            v198 = v431;
            (v428)(v427, *(v193 + 48) + v39 * v425, v431);
            v199 = dispatch thunk of static Equatable.== infix(_:_:)();
            v200 = v198;
            v201 = v426;
            (v426)(v197, v200);
            if (v199)
            {
              break;
            }

            v39 = (v39 + 1) & v196;
            if (((*(v52 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_208;
            }
          }

          v206 = v424;
          v8 = v431;
          v201(v424, v431);
          v180 = v206;
          v50 = v419;
          v51 = v399;
          v179 = v415;
          v47 = v407;
          goto LABEL_225;
        }

        v8 = v431;
LABEL_219:

        v179 = v415;
      }

      v39 = *v420;
      (*v420)(v51, v180, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v433 = v179;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776524(0, v179[2] + 1, 1);
        v179 = v433;
      }

      v50 = v419;
      v204 = v179[2];
      v203 = v179[3];
      v52 = v204 + 1;
      if (v204 >= v203 >> 1)
      {
        sub_100776524(v203 > 1, v204 + 1, 1);
        v179 = v433;
      }

      v179[2] = v52;
      v205 = v416 + v179 + v204 * v425;
      v8 = v431;
      (v39)(v205, v51, v431);
LABEL_225:
      v181 = v423 + 1;
    }

    while (v423 + 1 != v411);
  }

  v415 = v179;

  v208 = sub_100767A60(v207);

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v208 & 0x8000000000000000) != 0 || (v208 & 0x4000000000000000) != 0)
  {
    v208 = sub_10113E260(v208);
  }

  v209 = v386;
  v210 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v433 = ((v208 & 0xFFFFFFFFFFFFFF8) + 32);
  v434 = v210;
  v211 = sub_100771D5C(&v433);
  v403 = v209;
  if (v211 < 0)
  {
    __break(1u);
  }

  else
  {
    v212 = v211;
    sub_100771A90(0, v208);
    sub_100771A90(v212, v208);
    v399 = v208;
    v213 = sub_100771AFC(0, v212, v208);
    v215 = v214;
    v217 = v216;
    v219 = v218;
    v220 = sub_100771E34(v213, v214, v216, v218);
    if (!v220)
    {
      sub_100676648(v213, v215, v217, v219);
    }

    v39 = v220;
    swift_unknownObjectRelease();
    v51 = v422;
    v433 = _swiftEmptyArrayStorage;
    v180 = v430;
    if ((v39 & 0x8000000000000000) == 0 && (v39 & 0x4000000000000000) == 0)
    {
      v52 = *(v39 + 16);
      goto LABEL_238;
    }
  }

  v52 = _CocoaArrayWrapper.endIndex.getter();
LABEL_238:
  v221 = _swiftEmptyArrayStorage;
  if (!v52)
  {
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_268;
  }

  v222 = 0;
  v411 = (v39 & 0xC000000000000001);
  v407 = v39 + 32;
  v404 = v39;
  v409 = v52;
  while (2)
  {
    if (v411)
    {
      v223 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v151 = __OFADD__(v222, 1);
      v224 = v222 + 1;
      if (v151)
      {
        goto LABEL_265;
      }

LABEL_243:
      v423 = v224;
      v47 = *(v418 + v50);
      v225 = (*v223 + 264);
      v226 = *v225;
      v424 = v223;
      v416 = v225;
      v226();
      if (v47[2])
      {
        v406 = v226;
        v227 = sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID);

        v405 = v227;
        v228 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v229 = -1 << *(v47 + 32);
        v230 = v228 & ~v229;
        v425 = (v47 + 7);
        if ((*(v47 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v230))
        {
          v231 = ~v229;
          v426 = *(v421 + 72);
          while (1)
          {
            v232 = v427;
            v233 = v431;
            (v428)(v427, v47[6] + v426 * v230, v431);
            sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID);
            v234 = dispatch thunk of static Equatable.== infix(_:_:)();
            v235 = *v430;
            (*v430)(v232, v233);
            if (v234)
            {
              break;
            }

            v230 = (v230 + 1) & v231;
            v51 = v422;
            if (((*(v425 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v230) & 1) == 0)
            {
              goto LABEL_248;
            }
          }

          v180 = v430;
          v8 = v431;
          v235(v422, v431);

          v47 = sub_100767620(v236);

          v238 = v410;
          (v406)(v237);
          if (v47[2])
          {
            v239 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v240 = -1 << *(v47 + 32);
            v241 = v239 & ~v240;
            v425 = (v47 + 7);
            if ((*(v47 + ((v241 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v241))
            {
              v242 = ~v240;
              while (1)
              {
                v243 = v427;
                v244 = v431;
                (v428)(v427, v47[6] + v241 * v426, v431);
                v245 = dispatch thunk of static Equatable.== infix(_:_:)();
                v235(v243, v244);
                if (v245)
                {
                  break;
                }

                v241 = (v241 + 1) & v242;
                if (((*(v425 + ((v241 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v241) & 1) == 0)
                {
                  goto LABEL_255;
                }
              }

              v180 = v430;
              v8 = v431;
              v235(v410, v431);
              v50 = v419;
              v51 = v422;
              v39 = v404;
LABEL_260:
              v52 = v409;
              v222 = v423;
              if (v423 == v409)
              {
                goto LABEL_266;
              }

              continue;
            }

LABEL_255:

            v246 = v410;
            v180 = v430;
            v8 = v431;
          }

          else
          {

            v246 = v238;
          }

          v235(v246, v8);
          v50 = v419;
          v51 = v422;
        }

        else
        {
LABEL_248:

          v180 = v430;
          v8 = v431;
          (*v430)(v51, v431);
          v50 = v419;
        }

        v39 = v404;
      }

      else
      {
        (*v180)(v51, v8);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_260;
    }

    break;
  }

  if (v222 >= *(v39 + 16))
  {
    goto LABEL_289;
  }

  v151 = __OFADD__(v222, 1);
  v224 = v222 + 1;
  if (!v151)
  {
    goto LABEL_243;
  }

LABEL_265:
  __break(1u);
LABEL_266:
  v52 = v433;
  v221 = _swiftEmptyArrayStorage;
LABEL_268:

  if (v52 < 0 || (v52 & 0x4000000000000000) != 0)
  {
    v247 = _CocoaArrayWrapper.endIndex.getter();
    if (!v247)
    {
      goto LABEL_317;
    }

LABEL_271:
    v433 = _swiftEmptyArrayStorage;
    v97 = &v433;
    sub_100880670(v247);
    if ((v247 & 0x8000000000000000) == 0)
    {
      v248 = 0;
      do
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v249 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v249 = *(v52 + 8 * v248 + 32);
        }

        (*(*v249 + 264))();

        v221 = v433;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776524(0, v221[2] + 1, 1);
          v221 = v433;
        }

        v251 = v221[2];
        v250 = v221[3];
        if (v251 >= v250 >> 1)
        {
          sub_100776524(v250 > 1, v251 + 1, 1);
          v221 = v433;
        }

        ++v248;
        v221[2] = v251 + 1;
        (*(v421 + 32))(v221 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v251, v417, v431);
        v433 = v221;
      }

      while (v247 != v248);

      v50 = v419;
      goto LABEL_318;
    }

    goto LABEL_474;
  }

  v247 = *(v52 + 16);
  if (v247)
  {
    goto LABEL_271;
  }

LABEL_317:

LABEL_318:
  v254 = sub_100E93A84(v221);

  v255 = *(v50 + v397);
  v50 = v255 + 64;
  v256 = 1 << *(v255 + 32);
  v257 = -1;
  if (v256 < 64)
  {
    v257 = ~(-1 << v256);
  }

  v258 = v257 & *(v255 + 64);
  v47 = ((v256 + 63) >> 6);
  v259 = swift_bridgeObjectRetain_n();
  v8 = 0;
  v430 = _swiftEmptyArrayStorage;
  while (v258)
  {
LABEL_327:
    v262 = __clz(__rbit64(v258));
    v258 &= v258 - 1;
    v263 = *(*(v255 + 56) + ((v8 << 9) | (8 * v262)));
    v264 = *(v263 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
    if (v264 < 0)
    {
      LODWORD(v221) = *(v263 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
      v259 = (*(*(v264 & 0x7FFFFFFFFFFFFFFFLL) + 464))(v259);
      if ((v266 & 0x100) == 0 || (!(v259 | v265) ? (v267 = v266 == 0) : (v267 = 0), v267 || (v259 == 1 ? (v268 = v265 == 0) : (v268 = 0), v268 ? (v269 = v266 == 0) : (v269 = 0), v269 || (v259 == 2 ? (v270 = v265 == 0) : (v270 = 0), v270 ? (v271 = v266 == 0) : (v271 = 0), v271 || (v259 == 3 ? (v272 = v265 == 0) : (v272 = 0), v272 ? (v273 = v266 == 0) : (v273 = 0), v273 || (v259 == 4 ? (v274 = v265 == 0) : (v274 = 0), v274 ? (v275 = v266 == 0) : (v275 = 0), v275 || (v259 == 5 ? (v276 = v265 == 0) : (v276 = 0), v276 ? (v277 = v266 == 0) : (v277 = 0), v277 || (v259 == 6 ? (v278 = v265 == 0) : (v278 = 0), v278 ? (v279 = v266 == 0) : (v279 = 0), v279 || (v259 == 7 ? (v280 = v265 == 0) : (v280 = 0), v280 ? (v281 = v266 == 0) : (v281 = 0), v281 || (v259 == 8 ? (v282 = v265 == 0) : (v282 = 0), v282 ? (v283 = v266 == 0) : (v283 = 0), v283 || (v259 == 9 ? (v284 = v265 == 0) : (v284 = 0), v284 ? (v285 = v266 == 0) : (v285 = 0), !v285)))))))))))
      {
        (v428)(v384, v263 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_id, v431);
        v286 = v254;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v430 = sub_100B356D0(0, v430[2] + 1, 1, v430);
        }

        v288 = v430[2];
        v287 = v430[3];
        v221 = (v288 + 1);
        if (v288 >= v287 >> 1)
        {
          v430 = sub_100B356D0(v287 > 1, v288 + 1, 1, v430);
        }

        v290 = v430;
        v289 = v431;
        v430[2] = v221;
        v259 = (*(v421 + 32))(v290 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v288, v384, v289);
        v254 = v286;
      }
    }
  }

  v260 = i;
  while (2)
  {
    v261 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_468:
      v340 = _CocoaArrayWrapper.endIndex.getter();
      v292 = v260;
      if (!v340)
      {
        goto LABEL_409;
      }

      goto LABEL_412;
    }

    if (v261 < v47)
    {
      v258 = *(v50 + 8 * v261);
      ++v8;
      if (v258)
      {
        v8 = v261;
        goto LABEL_327;
      }

      continue;
    }

    break;
  }

  v291 = sub_101104CFC(v430, v254);

  v430 = sub_100EE94AC(v291);
  if (v388)
  {

    sub_100D86480(v385, v383, v415);

    v427 = sub_100D88530();
  }

  else
  {

    v427 = _swiftEmptyDictionarySingleton;
  }

  v254 = v419;
  v8 = v431;
  v47 = v393;
  v50 = v396;
  v292 = v260;
  LODWORD(v221) = v260 < 0 || (v260 & 0x4000000000000000) != 0;
  if (v221 == 1)
  {
    goto LABEL_468;
  }

  if (*(v260 + 16))
  {
    goto LABEL_412;
  }

LABEL_409:
  if ((v402 & 0x8000000000000000) != 0 || (v402 & 0x4000000000000000) != 0)
  {
    v341 = _CocoaArrayWrapper.endIndex.getter();
    v292 = v260;
    if (!v341)
    {
      goto LABEL_487;
    }

LABEL_412:
    v433 = _swiftEmptyArrayStorage;
    if (v221)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = v292[2];
    }

    v293 = _swiftEmptyArrayStorage;
    if (v52)
    {
      v432 = _swiftEmptyArrayStorage;
      v97 = &v432;
      sub_100880670(v52);
      if (v52 < 0)
      {
        goto LABEL_480;
      }

      v294 = 0;
      v295 = v260;
      v8 = v260 & 0xC000000000000001;
      do
      {
        if (v8)
        {
          v296 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v296 = v295[v294 + 4];
        }

        (*(*v296 + 264))();

        v293 = v432;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776524(0, v293[2] + 1, 1);
          v293 = v432;
        }

        v298 = v293[2];
        v297 = v293[3];
        if (v298 >= v297 >> 1)
        {
          sub_100776524(v297 > 1, v298 + 1, 1);
          v293 = v432;
        }

        ++v294;
        v293[2] = v298 + 1;
        (*(v421 + 32))(v293 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v298, v414, v431);
        v432 = v293;
        v295 = i;
      }

      while (v52 != v294);
      v254 = v419;
      v50 = v396;
    }

    sub_100799B18(v299);
    if ((v402 & 0x8000000000000000) != 0 || (v402 & 0x4000000000000000) != 0)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *(v402 + 16);
    }

    v300 = _swiftEmptyArrayStorage;
    if (v52)
    {
      v432 = _swiftEmptyArrayStorage;
      v97 = &v432;
      sub_100880670(v52);
      if (v52 < 0)
      {
        goto LABEL_481;
      }

      v301 = 0;
      v302 = v402;
      v303 = v402 & 0xC000000000000001;
      do
      {
        if (v303)
        {
          v304 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v304 = *(v302 + 8 * v301 + 32);
        }

        (*(*v304 + 264))();

        v300 = v432;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776524(0, v300[2] + 1, 1);
          v300 = v432;
        }

        v302 = v402;
        v306 = v300[2];
        v305 = v300[3];
        v8 = v306 + 1;
        if (v306 >= v305 >> 1)
        {
          sub_100776524(v305 > 1, v306 + 1, 1);
          v302 = v402;
          v300 = v432;
        }

        ++v301;
        v300[2] = v8;
        (*(v421 + 32))(v300 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v306, v413, v431);
        v432 = v300;
      }

      while (v52 != v301);
      v254 = v419;
      v47 = v393;
      v50 = v396;
    }

    sub_100799B18(v300);
    if (v401 >> 62)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((v401 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v307 = _swiftEmptyArrayStorage;
    if (v52)
    {
      v432 = _swiftEmptyArrayStorage;
      v97 = &v432;
      sub_100880670(v52);
      if (v52 < 0)
      {
        goto LABEL_482;
      }

      v308 = 0;
      v309 = v401 & 0xC000000000000001;
      do
      {
        if (v309)
        {
          v310 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v310 = *(v401 + 8 * v308 + 32);
        }

        (*(*v310 + 264))();

        v307 = v432;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776524(0, v307[2] + 1, 1);
          v307 = v432;
        }

        v312 = v307[2];
        v311 = v307[3];
        if (v312 >= v311 >> 1)
        {
          sub_100776524(v311 > 1, v312 + 1, 1);
          v307 = v432;
        }

        ++v308;
        v307[2] = v312 + 1;
        (*(v421 + 32))(v307 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v312, v412, v431);
        v432 = v307;
      }

      while (v52 != v308);
      v254 = v419;
      v47 = v393;
    }

    sub_100799B18(v307);
    v313 = v47[3];
    v314 = v47[4];
    sub_100020E58(v47, v313);
    v315 = (v314[1])(v433, v293, v313, v314);

    if ((v315 & 0xC000000000000001) != 0)
    {
      v316 = __CocoaSet.count.getter();
      v8 = v431;
      if (v316)
      {
LABEL_458:

        v318 = sub_100767620(v317);

        v319 = v403;
        sub_100772240(v315, v318);
        v426 = v320;
        v403 = v319;

        swift_bridgeObjectRelease_n();
        goto LABEL_461;
      }
    }

    else
    {
      v8 = v431;
      if (*(v315 + 16))
      {
        goto LABEL_458;
      }
    }

    v426 = 0;
LABEL_461:
    v292 = i;
    v321 = v392;
    if (!v392)
    {
      goto LABEL_488;
    }

    goto LABEL_462;
  }

  if (*(v402 + 16))
  {
    goto LABEL_412;
  }

LABEL_487:
  v426 = 0;
  v321 = v392;
  if (!v392)
  {
LABEL_488:
    v339 = v292;

    goto LABEL_489;
  }

LABEL_462:
  if (!*(*(v254 + v391) + 16))
  {
    v339 = v292;

LABEL_489:

    goto LABEL_490;
  }

  v322 = [objc_opt_self() _atomicIncrementAssertCount];
  v433 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v433);
  StaticString.description.getter();
  v323 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v324 = String._bridgeToObjectiveC()();

  v325 = [v324 lastPathComponent];

  v326 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v328 = v327;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v329 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v330 = swift_initStackObject();
  *(v330 + 16) = xmmword_10146CA70;
  *(v330 + 56) = &type metadata for Int32;
  *(v330 + 64) = &protocol witness table for Int32;
  *(v330 + 32) = v322;
  v331 = sub_100006370(0, &qword_1019F4D30);
  *(v330 + 96) = v331;
  v332 = sub_1005CF04C();
  *(v330 + 104) = v332;
  *(v330 + 72) = v323;
  *(v330 + 136) = &type metadata for String;
  v333 = sub_1000053B0();
  *(v330 + 112) = v326;
  *(v330 + 120) = v328;
  *(v330 + 176) = &type metadata for UInt;
  *(v330 + 184) = &protocol witness table for UInt;
  *(v330 + 144) = v333;
  *(v330 + 152) = 570;
  v334 = v433;
  *(v330 + 216) = v331;
  *(v330 + 224) = v332;
  *(v330 + 192) = v334;
  v335 = v323;
  v336 = v334;
  v337 = static os_log_type_t.error.getter();
  sub_100005404(v329, &_mh_execute_header, v337, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v330);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v338 = static os_log_type_t.error.getter();
  sub_100005404(v329, &_mh_execute_header, v338, "A board creation should not include deleted items", 49, 2, _swiftEmptyArrayStorage);

  sub_100604780(_swiftEmptyArrayStorage, "getBoardDataStoreChangeSet(freehandDrawingBucketManager:ancestorDependencyProvider:)", 84, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2, 570);

  v321 = v392;

  v254 = v419;
  v8 = v431;
  v339 = i;
LABEL_490:
  v342 = v321 != 0;
  v343 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
  v344 = v387;
  sub_10004FD94(v254 + v394, &v387[v343[5]], type metadata accessor for CRLBoardIdentifier);
  (v428)(&v344[v343[6]], v254 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_rootContainerUUID, v8);
  *v344 = v342;
  *&v344[v343[7]] = v390;
  *&v344[v343[8]] = v339;
  *&v344[v343[9]] = v402;
  *&v344[v343[10]] = v400;
  *&v344[v343[11]] = v430;
  *&v344[v343[12]] = v427;
  *&v344[v343[13]] = v426;
  *&v344[v343[14]] = v401;
  return (*(*(v343 - 1) + 56))(v344, 0, 1, v343);
}

uint64_t sub_10076F5BC(uint64_t a1, uint64_t a2)
{
  sub_10000630C(a2, v17);
  v3 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardAuxiliaryChanges;
  swift_beginAccess();
  v4 = *(a1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100B37740(0, v4[2] + 1, 1, v4);
    *(a1 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_100B37740((v6 > 1), v7 + 1, 1, v4);
    *(a1 + v3) = v4;
  }

  v8 = v18;
  v9 = v19;
  v10 = sub_10002A948(v17, v18);
  v11 = __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  (*(v14 + 16))(v13, v11);
  sub_100725200(v7, v13, (a1 + v3), v8, v9);
  sub_100005070(v17);
  *(a1 + v3) = v4;
  result = swift_endAccess();
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    return sub_10076BD80();
  }

  return result;
}

uint64_t sub_10076F774(uint64_t a1)
{
  swift_beginAccess();

  sub_10079B020(v2);
  result = swift_endAccess();
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    return sub_10076BD80();
  }

  return result;
}

uint64_t sub_10076F7F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_10000630C(a5, v23);
  v11 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_coalescableBoardAuxiliaryChanges;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22[0] = *(a1 + v11);
  v13 = *&v22[0];
  *(a1 + v11) = 0x8000000000000000;
  v15 = sub_1007C7EFC(a2, a3, a4);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(a1 + v11) = v13;
      if (v14)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_10000630C(v23, v22);
      sub_100AA2E24(v15, a2, a3, a4, v22, v13);

      goto LABEL_9;
    }

LABEL_13:
    sub_100AA82D4();
    v13 = *&v22[0];
    *(a1 + v11) = *&v22[0];
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100A90024(v18, isUniquelyReferenced_nonNull_native);
  v13 = *&v22[0];
  v19 = sub_1007C7EFC(a2, a3, a4);
  if ((v5 & 1) != (v20 & 1))
  {
    sub_100005070(v23);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v19;
  *(a1 + v11) = *&v22[0];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_100774FCC((v13[7] + 40 * v15), a5);
  swift_endAccess();
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    sub_10076BD80();
  }

  return sub_100005070(v23);
}

uint64_t sub_10076F9BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v147 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v151 = v123 - v9;
  __chkstk_darwin(v10);
  v12 = v123 - v11;
  __chkstk_darwin(v13);
  v15 = v123 - v14;
  if (!sub_100768904() || *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) > 0)
  {
    v16 = type metadata accessor for CRLBoardPeerChangeSet(0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  v135 = v2;
  v18 = *(v6 + 16);
  v131 = 0x2000400000000;
  v132 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier;
  v145 = v18;
  v146 = v6 + 16;
  v18(v15, a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier, v5);
  v129 = a2;
  v130 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas;
  v19 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas);
  v20 = *(v19 + 16);
  v150 = v5;
  v142 = v6;
  if (!v20)
  {
    v149 = *(v6 + 8);
    v149(v15, v5);
    v128 = 0;
    v33 = 0;
    v124 = 0xF000000000000000;
    v125 = 0;
    v127 = 1;
    v126 = 0x1000000000000;
    v48 = 0x1000000000000;
LABEL_18:
    v27 = v135;
    goto LABEL_19;
  }

  v21 = sub_10003E994(v15);
  if ((v22 & 1) == 0)
  {

    v149 = *(v142 + 8);
    v149(v15, v5);
    v128 = 0;
    v33 = 0;
    v124 = 0xF000000000000000;
    v125 = 0;
    v127 = 1;
    v48 = 0x1000000000000;
    v126 = 0x1000000000000;
    goto LABEL_18;
  }

  v23 = *(*(v19 + 56) + 8 * v21);
  v24 = *(v142 + 8);
  v133 = 0x1000000000000;
  v134 = v23;

  v149 = v24;
  v24(v15, v5);

  v25 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
  swift_beginAccess();
  v26 = *(a1 + v25);
  if (!v26)
  {
    v128 = 0;
    v124 = 0xF000000000000000;
    v125 = 0;
    v127 = 1;
    v48 = v133;
    v33 = v134;
    v126 = v133;
    goto LABEL_18;
  }

  v145(v12, a1 + v132, v5);
  v27 = v135;
  if (*(v26 + 16))
  {
    v28 = v134;

    v29 = sub_10003E994(v12);
    if (v30)
    {
      v31 = *(*(v26 + 56) + 16 * v29);
      swift_unknownObjectRetain();
      v149(v12, v5);

      type metadata accessor for CRLBoard(0);
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v148 = v31;
        v33 = v134;
        v34 = *(v134 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
        if (v34 < 0)
        {
          goto LABEL_59;
        }

        v35 = *(v34 + 32);
        v133 = *(v34 + 24);
        v131 = v35;
        v36 = *(v32 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
        v37 = *(v34 + 48);
        v126 = *(v34 + 40);
        v128 = v37;
        v38 = *(v36 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
        v127 = *(v34 + 56);

        v39 = v38;

        v41 = sub_1012EFEB4(v40, v39);
        if (v27)
        {

          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v144 = static OS_os_log.realTimeSync;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          swift_getErrorValue();
          v44 = Error.localizedDescription.getter();
          v46 = v45;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v44;
          *(inited + 40) = v46;
          v47 = static os_log_type_t.error.getter();
          sub_100005404(v144, &_mh_execute_header, v47, "Failed to serialize delta for board with error: %@", 50, 2, inited);

          v33 = v134;

          swift_unknownObjectRelease();

          swift_setDeallocating();
          sub_100005070(inited + 32);
          v27 = 0;
          v124 = 0xF000000000000000;
          v125 = 0;
        }

        else
        {
          v124 = v42;
          v125 = v41;

          swift_unknownObjectRelease();

          v27 = 0;
        }

        v48 = v133;
      }

      else
      {
        v33 = v134;

        swift_unknownObjectRelease();
        v128 = 0;
        v124 = 0xF000000000000000;
        v125 = 0;
        v127 = 1;
        v48 = v133;
        v126 = v133;
      }
    }

    else
    {

      v149(v12, v5);
      v128 = 0;
      v124 = 0xF000000000000000;
      v125 = 0;
      v127 = 1;
      v48 = v133;
      v126 = v133;
      v33 = v28;
    }
  }

  else
  {
    v149(v12, v5);
    v128 = 0;
    v124 = 0xF000000000000000;
    v125 = 0;
    v127 = 1;
    v48 = v133;
    v33 = v134;
    v126 = v133;
  }

LABEL_19:

  v50 = sub_100767A60(v49);

  v152 = _swiftEmptyArrayStorage;
  if (v50 >> 62)
  {
    goto LABEL_57;
  }

  v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
  v134 = v33;
  v135 = v27;
  v141 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas;
  swift_beginAccess();
  v27 = _swiftEmptyArrayStorage;
  v133 = v48;
  if (v51)
  {
    v52 = 0;
    v139 = v50 & 0xFFFFFFFFFFFFFF8;
    v140 = v50 & 0xC000000000000001;
    v123[1] = v50;
    v136 = v50 + 32;
    v137 = v51;
    v33 = v142;
    v148 = v142 + 8;
    v48 = v151;
    v138 = a1;
    while (1)
    {
      if (v140)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          v27 = v152;
          break;
        }
      }

      else
      {
        if (v52 >= *(v139 + 16))
        {
          __break(1u);
LABEL_57:
          v51 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_21;
        }

        v27 = *(v136 + 8 * v52);

        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_37;
        }
      }

      v50 = sub_100767620(v55);

      (*(*v27 + 264))(v56);
      v57 = *(v50 + 16);
      v143 = v27;
      v144 = v54;
      if (v57 && (sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID), v58 = dispatch thunk of Hashable._rawHashValue(seed:)(), v59 = -1 << *(v50 + 32), v60 = v58 & ~v59, ((*(v50 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
      {
        v61 = ~v59;
        v62 = *(v33 + 72);
        while (1)
        {
          v27 = v147;
          v63 = v150;
          v145(v147, *(v50 + 48) + v62 * v60, v150);
          sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID);
          v64 = dispatch thunk of static Equatable.== infix(_:_:)();
          v149(v27, v63);
          if (v64)
          {
            break;
          }

          v60 = (v60 + 1) & v61;
          if (((*(v50 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v48 = v151;
        v149(v151, v150);
      }

      else
      {
LABEL_23:

        v48 = v151;
        v149(v151, v150);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v50 = v152[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      a1 = v138;
      v52 = v144;
      v33 = v142;
      if (v144 == v137)
      {
        goto LABEL_38;
      }
    }
  }

  v65 = *(a1 + v130);
  v66 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
  swift_beginAccess();
  if (*(a1 + v66))
  {

    v68 = sub_100767C8C(v67, v65);

    v70 = sub_100767620(v69);

    swift_beginAccess();

    v72 = sub_100767620(v71);

    v74 = sub_10119E374(v73, v72);

    v75 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerDeletedItemIds;
    swift_beginAccess();
    if (*(*(a1 + v75) + 16) <= v74[2] >> 3)
    {
      v152 = v74;

      sub_1012D4DC4(v78);

      v77 = v152;
    }

    else
    {

      v77 = sub_1012D5CC4(v76, v74);
    }

    v79 = v142;
    if (v77[2] <= v70[2] >> 3)
    {
      v152 = v70;
      sub_1012D4DC4(v77);

      v80 = v152;
    }

    else
    {
      v80 = sub_1012D5CC4(v77, v70);
    }

    swift_beginAccess();

    v82 = sub_1010ACAA4(v81, v80);
    v83 = v82;
    v84 = *(v82 + 16);
    if (v84)
    {
      v85 = sub_100B39BF4(*(v82 + 16), 0);
      v86 = sub_100B3AA50(&v152, &v85[(*(v79 + 80) + 32) & ~*(v79 + 80)], v84, v83);
      sub_100035F90();
      if (v86 == v84)
      {
LABEL_50:
        v87 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_coalescableBoardAuxiliaryChanges;
        swift_beginAccess();
        v88 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardAuxiliaryChanges;
        swift_beginAccess();

        sub_10079B168(v89);
        swift_endAccess();
        *(a1 + v87) = sub_100BD4C44(_swiftEmptyArrayStorage);

        v90 = *(a1 + v88);

        *(a1 + v88) = _swiftEmptyArrayStorage;

        v91 = v129;
        v145(v129, a1 + v132, v150);
        v92 = type metadata accessor for CRLBoardPeerChangeSet(0);
        v93 = &v91[v92[5]];
        v94 = v131;
        *v93 = v133;
        *(v93 + 1) = v94;
        v95 = v128;
        *(v93 + 2) = v126;
        *(v93 + 3) = v95;
        v93[32] = v127;
        v96 = &v91[v92[6]];
        v97 = v124;
        *v96 = v125;
        v96[1] = v97;
        *&v91[v92[7]] = v68;
        *&v91[v92[8]] = v27;
        *&v91[v92[9]] = v85;
        *&v91[v92[10]] = v90;
        return (*(*(v92 - 1) + 56))(v91, 0, 1, v92);
      }

      __break(1u);
    }

    v85 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  __break(1u);
LABEL_59:
  v98 = objc_opt_self();
  v99 = [v98 _atomicIncrementAssertCount];
  v152 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v152);
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
  sub_1005B981C(&qword_1019F54E0);
  v107 = swift_initStackObject();
  *(v107 + 16) = xmmword_10146CA70;
  *(v107 + 56) = &type metadata for Int32;
  *(v107 + 64) = &protocol witness table for Int32;
  *(v107 + 32) = v99;
  v108 = sub_100006370(0, &qword_1019F4D30);
  *(v107 + 96) = v108;
  v109 = sub_1005CF04C();
  *(v107 + 104) = v109;
  *(v107 + 72) = v100;
  *(v107 + 136) = &type metadata for String;
  v110 = sub_1000053B0();
  *(v107 + 112) = v103;
  *(v107 + 120) = v105;
  *(v107 + 176) = &type metadata for UInt;
  *(v107 + 184) = &protocol witness table for UInt;
  *(v107 + 144) = v110;
  *(v107 + 152) = 632;
  v111 = v152;
  *(v107 + 216) = v108;
  *(v107 + 224) = v109;
  *(v107 + 192) = v111;
  v112 = v100;
  v113 = v111;
  v114 = static os_log_type_t.error.getter();
  sub_100005404(v106, &_mh_execute_header, v114, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v107);

  v115 = static os_log_type_t.error.getter();
  sub_100005404(v106, &_mh_execute_header, v115, "Non-board data found associted with boardUUID", 45, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Non-board data found associted with boardUUID");
  type metadata accessor for __VaListBuilder();
  v116 = swift_allocObject();
  v116[2] = 8;
  v116[3] = 0;
  v116[4] = 0;
  v116[5] = 0;
  v117 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v118 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v119 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v120 = String._bridgeToObjectiveC()();

  [v98 handleFailureInFunction:v118 file:v119 lineNumber:632 isFatal:1 format:v120 args:v117];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v121, v122);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100770A7C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1007751E8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101885A58;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000064D8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_100770D4C(uint64_t a1, unint64_t a2)
{
  result = sub_100770D8C(a2);
  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) <= 0)
  {
    return sub_10076BD80();
  }

  return result;
}

uint64_t sub_100770D8C(unint64_t a1)
{
  v2 = v1;
  v65 = type metadata accessor for UUID();
  v58 = *(v65 - 8);
  __chkstk_darwin(v65);
  v68 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v55 - v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = *(v8 + 8);
  v14 = v8 + 8;
  result = v15(v11, v7);
  if ((v12 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    result = _CocoaArrayWrapper.endIndex.getter();
    v17 = result;
    if (result)
    {
      goto LABEL_4;
    }

    return result;
  }

  v14 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter);
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
LABEL_4:
    v18 = 0;
    v59 = v17;
    v60 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
    v67 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatasToProcessAfterUnlock;
    v55 = v7 & 0xFFFFFFFFFFFFFF8;
    v56 = v14;
    v57 = v58 + 16;
    v63 = (v58 + 8);
    v64 = v7 & 0xC000000000000001;
    v62 = v7;
    do
    {
      if (v64)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v18 >= *(v55 + 16))
        {
          goto LABEL_40;
        }

        v20 = *(v7 + 8 * v18 + 32);

        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      v21 = *(*v20 + 264);
      if (v14 <= 0)
      {
        v34 = v61;
        v21();
        v35 = v60;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = *(v2 + v35);
        v7 = v69;
        *(v2 + v35) = 0x8000000000000000;
        v38 = sub_10003E994(v34);
        v39 = *(v7 + 16);
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_41;
        }

        v42 = v37;
        if (*(v7 + 24) >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v7 = v69;
            if ((v37 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            sub_100AA82C0();
            v7 = v69;
            if ((v42 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          sub_100A90010(v41, isUniquelyReferenced_nonNull_native);
          v43 = sub_10003E994(v61);
          if ((v42 & 1) != (v44 & 1))
          {
LABEL_47:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v38 = v43;
          v7 = v69;
          if ((v42 & 1) == 0)
          {
LABEL_35:
            *(v7 + 8 * (v38 >> 6) + 64) |= 1 << v38;
            v51 = v58;
            v14 = v61;
            v52 = v65;
            (*(v58 + 16))(*(v7 + 48) + *(v58 + 72) * v38, v61, v65);
            *(*(v7 + 56) + 8 * v38) = v20;
            (*(v51 + 8))(v14, v52);
            v53 = *(v7 + 16);
            v30 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v30)
            {
              goto LABEL_43;
            }

            *(v7 + 16) = v54;
            v14 = v56;
            goto LABEL_37;
          }
        }

        *(*(v7 + 56) + 8 * v38) = v20;

        (*v63)(v61, v65);
LABEL_37:
        *(v2 + v60) = v7;

        swift_endAccess();
        v7 = v62;
        v17 = v59;
        goto LABEL_7;
      }

      v66 = v19;
      v22 = v17;
      v23 = v14;
      v24 = v68;
      v21();
      v14 = v67;
      swift_beginAccess();

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v69 = *(v2 + v14);
      v7 = v69;
      *(v2 + v14) = 0x8000000000000000;
      v26 = sub_10003E994(v24);
      v28 = *(v7 + 16);
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_39;
      }

      v32 = v27;
      if (*(v7 + 24) >= v31)
      {
        v14 = v23;
        if (v25)
        {
          v7 = v69;
          if ((v27 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v50 = v26;
          sub_100AA82C0();
          v26 = v50;
          v7 = v69;
          if ((v32 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_100A90010(v31, v25);
        v26 = sub_10003E994(v68);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_47;
        }

        v14 = v23;
        v7 = v69;
        if ((v32 & 1) == 0)
        {
LABEL_27:
          *(v7 + 8 * (v26 >> 6) + 64) |= 1 << v26;
          v14 = v58;
          v45 = v26;
          v46 = v68;
          v47 = v65;
          (*(v58 + 16))(*(v7 + 48) + *(v58 + 72) * v26, v68, v65);
          *(*(v7 + 56) + 8 * v45) = v20;
          (*(v14 + 8))(v46, v47);
          v48 = *(v7 + 16);
          v30 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v30)
          {
            goto LABEL_42;
          }

          *(v7 + 16) = v49;
          v14 = v56;
          v17 = v59;
          goto LABEL_6;
        }
      }

      *(*(v7 + 56) + 8 * v26) = v20;

      (*v63)(v68, v65);
      v17 = v22;
LABEL_6:
      *(v2 + v67) = v7;

      swift_endAccess();
      v7 = v62;
      v19 = v66;
LABEL_7:

      ++v18;
    }

    while (v19 != v17);
  }

  return result;
}

uint64_t sub_10077141C()
{
  sub_10003D45C(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v1 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_rootContainerUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1007715B0()
{
  sub_10077141C();

  return swift_deallocClassInstance();
}

uint64_t sub_100771630()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100771754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1007717B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100771820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10077187C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_100771904()
{
  result = qword_1019FEF78;
  if (!qword_1019FEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FEF78);
  }

  return result;
}

unint64_t *sub_100771958(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100772C20(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1007719F4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100773B44(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100771A90(uint64_t result, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= result)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  result = v2;
  if (v3 < v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

Swift::Int sub_100771AFC(Swift::Int result, Swift::Int a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:

LABEL_8:
    if (a3 >> 62)
    {

      return _CocoaArrayWrapper.subscript.getter();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    type metadata accessor for CRLBoardItemData();

    result = v5;
    do
    {
      v6 = result + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(result);
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100771BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1005B981C(&qword_1019FEFB8) + 48);
  v5 = *(sub_1005B981C(&qword_1019FEFB0) + 48);
  v6 = type metadata accessor for UUID();
  v8 = *(a1 + v4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  *(a2 + v5) = v8;

  return swift_unknownObjectRetain();
}

uint64_t sub_100771CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1005B981C(&qword_1019FEF90) + 48);
  v5 = *(sub_1005B981C(&qword_1019FEF88) + 48);
  v6 = *(a1 + v4);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

uint64_t sub_100771D5C(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
LABEL_3:
  v4 = *a1;
  for (i = (*a1 + 8 * result); ; ++i)
  {
    v6 = *i;
    if (**i == &off_1019FAE60)
    {
      break;
    }

    if (++result >= v1)
    {
      return result;
    }
  }

  v7 = v1 - 1;
  v8 = (v4 + 8 * v1);
  while (result < v7)
  {
    v10 = *--v8;
    v9 = v10;
    --v7;
    if (*v10 != &off_1019FAE60)
    {
      if (v4)
      {
        v1 = v7 + 1;
        *i = v9;
        *v8 = v6;
        if (++result < v7 + 1)
        {
          goto LABEL_3;
        }
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  return result;
}

void *sub_100771E34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100771EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
  v11 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
  if (v10 < 0)
  {
    if (v11 < 0)
    {
      return (*(*(v10 & 0x7FFFFFFFFFFFFFFFLL) + 512))(v11 & 0x7FFFFFFFFFFFFFFFLL) & 1;
    }

    goto LABEL_6;
  }

  if (v11 < 0)
  {
LABEL_6:
    v14 = 0;
    return v14 & 1;
  }

  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v10 + v12, v9, type metadata accessor for CRLBoardCRDTData);
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v11 + v13, v6, type metadata accessor for CRLBoardCRDTData);
  v14 = sub_1012F2368(v9);
  sub_10003D45C(v6, type metadata accessor for CRLBoardCRDTData);
  sub_10003D45C(v9, type metadata accessor for CRLBoardCRDTData);
  return v14 & 1;
}

uint64_t sub_1007720B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v7);
  v10 = &v15[-v9];
  if (a1 < 0)
  {
    if (a2 < 0)
    {
      return (*(*(a1 & 0x7FFFFFFFFFFFFFFFLL) + 512))(a2 & 0x7FFFFFFFFFFFFFFFLL, v8) & 1;
    }

    goto LABEL_5;
  }

  if (a2 < 0)
  {
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  v11 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(a1 + v11, v10, type metadata accessor for CRLBoardCRDTData);
  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(a2 + v12, v6, type metadata accessor for CRLBoardCRDTData);
  v13 = sub_1012F2368(v10);
  sub_10003D45C(v6, type metadata accessor for CRLBoardCRDTData);
  sub_10003D45C(v10, type metadata accessor for CRLBoardCRDTData);
  return v13 & 1;
}

void sub_100772240(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for UUID();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = v33 - v6;
  v54 = _swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_1000064D8(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    Set.Iterator.init(_cocoa:)();
    a1 = v49;
    v7 = v50;
    v8 = v51;
    v9 = v52;
    v10 = v53;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v33[1] = v8;
  v14 = (v8 + 64) >> 6;
  v43 = v45 + 56;
  v41 = v35 + 16;
  v34 = _swiftEmptyArrayStorage;
  v44 = (v35 + 8);
  v37 = v7;
  v38 = a1;
  v36 = v14;
LABEL_8:
  v15 = v9;
  while (a1 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20 || (v47 = v20, type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), v19 = v48, v9 = v15, v18 = v10, !v48))
    {
LABEL_28:
      sub_100035F90();
      return;
    }

LABEL_19:
    v40 = v18;
    v21 = *((swift_isaMask & *v19) + 0x88);
    v39 = v19;
    v21();
    if (*(v45 + 16))
    {
      v22 = v45;
      sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v22 + 32);
      v25 = v23 & ~v24;
      if ((*(v43 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        v27 = *(v35 + 72);
        v28 = *(v35 + 16);
        while (1)
        {
          v29 = v42;
          v28(v42, *(v45 + 48) + v27 * v25, v3);
          sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          v31 = *v44;
          (*v44)(v29, v3);
          if (v30)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v43 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v31(v46, v3);
        v32 = v39;
        (*((swift_isaMask & *v39) + 0x258))(0);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v34 = v54;
        v7 = v37;
        a1 = v38;
        v14 = v36;
        v10 = v40;
        goto LABEL_8;
      }
    }

LABEL_9:
    (*v44)(v46, v3);

    v15 = v9;
    v10 = v40;
    v7 = v37;
    a1 = v38;
    v14 = v36;
  }

  v16 = v15;
  v17 = v10;
  v9 = v15;
  if (v10)
  {
LABEL_15:
    v18 = (v17 - 1) & v17;
    v19 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v19)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_28;
    }

    v17 = *(v7 + 8 * v9);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1007727A4(uint64_t a1)
{
  v48 = type metadata accessor for UUID();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_1000064D8(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper);
    Set.Iterator.init(_cocoa:)();
    a1 = v52;
    v3 = v53;
    v5 = v54;
    v4 = v55;
    v6 = v56;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v42[1] = v5;
  v10 = (v5 + 64) >> 6;
  v44 = v45 + 16;
  v47 = (v45 + 8);
  v11 = &_swiftEmptyDictionarySingleton;
  v46 = a1;
  v43 = v10;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  v17 = __CocoaSet.Iterator.next()();
  if (!v17 || (v50 = v17, type metadata accessor for CRLTransactableHashableWrapper(), swift_dynamicCast(), v16 = v51, v14 = v4, v15 = v6, !v51))
  {
LABEL_29:
    sub_100035F90();
    return v11;
  }

  while (1)
  {
    v18 = v16[3];
    ObjectType = swift_getObjectType();
    v20 = v49;
    (*(v18 + 32))(ObjectType, v18);
    v21 = v16[3];
    type metadata accessor for CRLTransactableData(0);
    v22 = swift_allocObject();
    v23 = swift_unknownObjectRetain();
    sub_100766DF8(v23, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v11;
    v25 = sub_10003E994(v20);
    v27 = v11[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v11[3] < v30)
    {
      sub_100A89AFC(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_10003E994(v49);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      v11 = v51;
      if (v31)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v40 = v25;
    sub_100AA4714();
    v25 = v40;
    v11 = v51;
    if (v31)
    {
LABEL_9:
      *(v11[7] + 8 * v25) = v22;

      (*v47)(v49, v48);
      v4 = v14;
      v6 = v15;
      a1 = v46;
      if (v46 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

LABEL_24:
    v33 = v3;
    v11[(v25 >> 6) + 8] |= 1 << v25;
    v34 = v45;
    v35 = v25;
    v36 = v48;
    v37 = v49;
    (*(v45 + 16))(v11[6] + *(v45 + 72) * v25, v49, v48);
    *(v11[7] + 8 * v35) = v22;

    (*(v34 + 8))(v37, v36);
    v38 = v11[2];
    v29 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v29)
    {
      goto LABEL_32;
    }

    v11[2] = v39;
    v4 = v14;
    v6 = v15;
    a1 = v46;
    v3 = v33;
    v10 = v43;
    if (v46 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v12 = v4;
    v13 = v6;
    v14 = v4;
    if (!v6)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {
          goto LABEL_29;
        }

        v13 = *(v3 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      break;
    }

LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100772C20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v40 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v52 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v38 - v10;
  v47 = a3;
  v11 = *(a3 + 56);
  v41 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v11;
  v45 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  v46 = a4;
  result = swift_beginAccess();
  v16 = 0;
  v17 = 0;
  v18 = (v12 + 63) >> 6;
  v51 = v7 + 16;
  v39 = v7;
  v54 = (v7 + 8);
  v44 = v18;
  while (2)
  {
    v42 = v16;
    while (1)
    {
      if (!v14)
      {
        v20 = v17;
        while (1)
        {
          v17 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v17 >= v18)
          {
            goto LABEL_23;
          }

          v21 = *(v41 + 8 * v17);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v49 = (v21 - 1) & v21;
            goto LABEL_14;
          }
        }

        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64(v14));
      v49 = (v14 - 1) & v14;
LABEL_14:
      v22 = v19 | (v17 << 6);
      v23 = *(v47 + 48);
      v43 = v22;
      v24 = *(v23 + 8 * v22);
      v25 = *(v46 + v45);
      v26 = *(v24 + 24);
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 32);
      v48 = v24;

      v28(ObjectType, v26);
      if (*(v25 + 16))
      {
        sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID);
        v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v30 = -1 << *(v25 + 32);
        v31 = v29 & ~v30;
        v53 = v25 + 56;
        if ((*(v25 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          break;
        }
      }

LABEL_6:

      (*v54)(v55, v6);

      v18 = v44;
      v14 = v49;
    }

    v50 = ~v30;
    v32 = *(v39 + 72);
    v33 = *(v39 + 16);
    while (1)
    {
      v34 = v52;
      v33(v52, *(v25 + 48) + v32 * v31, v6);
      sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *v54;
      (*v54)(v34, v6);
      if (v35)
      {
        break;
      }

      v31 = (v31 + 1) & v50;
      if (((*(v53 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v36(v55, v6);

    *(v40 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    v16 = v42 + 1;
    v18 = v44;
    v14 = v49;
    if (!__OFADD__(v42, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  v37 = v47;

  return sub_1010F3F24(v40, v38, v42, v37);
}

uint64_t sub_100773054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = type metadata accessor for UUID();
  v6 = *(v57 - 8);
  v7 = __chkstk_darwin(v57);
  v54 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v38 - v9;
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v37 = swift_slowAlloc();

      v35 = sub_100771958(v37, v12, a1, a2);

      return v35;
    }
  }

  v39 = v12;
  v40 = v3;
  v38 = &v38;
  __chkstk_darwin(v14);
  v42 = &v38 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v42, v13);
  v15 = *(a1 + 56);
  v43 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v16 = ~(-1 << v13);
  }

  else
  {
    v16 = -1;
  }

  v3 = v16 & v15;
  v46 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  swift_beginAccess();
  v17 = 0;
  v18 = 0;
  v19 = (v13 + 63) >> 6;
  v53 = v6 + 16;
  v41 = v6;
  v56 = (v6 + 8);
  v47 = v19;
  v48 = a1;
  v49 = a2;
  while (2)
  {
    v44 = v17;
    while (1)
    {
      if (!v3)
      {
        v21 = v18;
        while (1)
        {
          v18 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v18 >= v19)
          {
            goto LABEL_24;
          }

          v22 = *(v43 + 8 * v18);
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v51 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v20 = __clz(__rbit64(v3));
      v51 = (v3 - 1) & v3;
LABEL_15:
      v23 = v20 | (v18 << 6);
      v24 = *(a1 + 48);
      v45 = v23;
      v12 = *(v24 + 8 * v23);
      v25 = *(a2 + v46);
      v6 = *(v12 + 16);
      v26 = *(v12 + 24);
      ObjectType = swift_getObjectType();
      v13 = v26 + 32;
      v28 = *(v26 + 32);
      v50 = v12;

      v28(ObjectType, v26);
      if (*(v25 + 16))
      {
        sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID);
        v6 = v58;
        v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v30 = -1 << *(v25 + 32);
        v13 = v29 & ~v30;
        v55 = v25 + 56;
        if ((*(v25 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          break;
        }
      }

LABEL_7:

      (*v56)(v58, v57);

      a1 = v48;
      a2 = v49;
      v19 = v47;
      v3 = v51;
    }

    v52 = ~v30;
    v31 = *(v41 + 9);
    v32 = *(v41 + 2);
    while (1)
    {
      v12 = v54;
      v6 = v57;
      v32(v54, *(v25 + 48) + v31 * v13, v57);
      sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *v56;
      (*v56)(v12, v6);
      if (v33)
      {
        break;
      }

      v13 = (v13 + 1) & v52;
      if (((*(v55 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v34(v58, v57);

    *&v42[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
    v17 = v44 + 1;
    a1 = v48;
    a2 = v49;
    v19 = v47;
    v3 = v51;
    if (!__OFADD__(v44, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v35 = sub_1010F3F24(v42, v39, v44, a1);

  return v35;
}

Swift::Int sub_1007735D0(uint64_t a1, uint64_t a2)
{
  v55 = type metadata accessor for UUID();
  v45 = *(v55 - 8);
  v4 = __chkstk_darwin(a1);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v56 = &v43 - v7;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_100773054(v6, a2);
  }

  v59 = _swiftEmptySetSingleton;

  v8 = __CocoaSet.makeIterator()();
  v49 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  swift_beginAccess();
  v50 = v8;
  v9 = __CocoaSet.Iterator.next()();
  if (v9)
  {
    v10 = v9;
    v47 = type metadata accessor for CRLTransactableHashableWrapper();
    v11 = v10;
    v51 = v45 + 16;
    v44 = _swiftEmptySetSingleton;
    v54 = (v45 + 8);
    v48 = a2;
    do
    {
      v57 = v11;
      swift_dynamicCast();
      v12 = *(a2 + v49);
      v13 = *(v58 + 24);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 32);

      v15(ObjectType, v13);
      if (*(v12 + 16) && (v46 = sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID), v16 = dispatch thunk of Hashable._rawHashValue(seed:)(), v17 = -1 << *(v12 + 32), v18 = v16 & ~v17, v53 = v12 + 56, ((*(v12 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        v20 = *(v45 + 72);
        v21 = *(v45 + 16);
        while (1)
        {
          v22 = v52;
          v23 = v55;
          v21(v52, *(v12 + 48) + v20 * v18, v55);
          sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID);
          v24 = dispatch thunk of static Equatable.== infix(_:_:)();
          v25 = *v54;
          (*v54)(v22, v23);
          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v53 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v25(v56, v55);
        v26 = v58;
        if (v44[3] <= v44[2])
        {
          sub_100E7400C();
        }

        v27 = v59;
        Hasher.init(_seed:)();
        v28 = *(v26 + 24);
        v29 = swift_getObjectType();
        v30 = v52;
        (*(v28 + 32))(v29, v28);
        v31 = v55;
        dispatch thunk of Hashable.hash(into:)();
        v25(v30, v31);
        result = Hasher._finalize()();
        v33 = v27 + 7;
        v34 = -1 << *(v27 + 32);
        v35 = result & ~v34;
        v36 = v35 >> 6;
        a2 = v48;
        if (((-1 << v35) & ~v27[(v35 >> 6) + 7]) != 0)
        {
          v37 = __clz(__rbit64((-1 << v35) & ~v27[(v35 >> 6) + 7])) | v35 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v38 = 0;
          v39 = (63 - v34) >> 6;
          do
          {
            if (++v36 == v39 && (v38 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v40 = v36 == v39;
            if (v36 == v39)
            {
              v36 = 0;
            }

            v38 |= v40;
            v41 = v33[v36];
          }

          while (v41 == -1);
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
        }

        *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        *(v27[6] + 8 * v37) = v26;
        v42 = v27[2] + 1;
        v44 = v27;
        v27[2] = v42;
      }

      else
      {
LABEL_4:

        (*v54)(v56, v55);

        a2 = v48;
      }

      v11 = __CocoaSet.Iterator.next()();
    }

    while (v11);
  }

  else
  {
    v44 = _swiftEmptySetSingleton;
  }

  return v44;
}

uint64_t sub_100773B44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a1;
  v50 = sub_1005B981C(&qword_1019FEF98);
  __chkstk_darwin(v50);
  v7 = &v41 - v6;
  v8 = type metadata accessor for UUID();
  v9 = __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v15 = &v41 - v13;
  v16 = 0;
  v51 = a3;
  v17 = *(a3 + 64);
  v44 = a3 + 64;
  v45 = 0;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v54 = a4 + 56;
  v48 = &v41 - v13;
  v49 = v14;
  v56 = (v14 + 8);
  v57 = v14 + 16;
  v58 = v7;
  v47 = v21;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v53 = (v20 - 1) & v20;
LABEL_14:
    v25 = v22 | (v16 << 6);
    v26 = v51;
    v27 = v51[6];
    v55 = *(v49 + 72);
    v28 = *(v49 + 16);
    v28(v15, v27 + v55 * v25, v8);
    v29 = v26[7];
    v46 = v25;
    v30 = *(v29 + 8 * v25);
    v31 = v58;
    v28(v58, v15, v8);
    *(v31 + *(v50 + 48)) = v30;
    v32 = *(a4 + 16);
    v52 = v30;
    if (!v32)
    {
      swift_retain_n();
      goto LABEL_6;
    }

    sub_1000064D8(&qword_1019FB870, &type metadata accessor for UUID);
    swift_retain_n();
    v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = -1 << *(a4 + 32);
    v35 = v33 & ~v34;
    if ((*(v54 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
    {
      v36 = ~v34;
      while (1)
      {
        v37 = a4;
        v28(v11, *(a4 + 48) + v35 * v55, v8);
        sub_1000064D8(&qword_1019F37C0, &type metadata accessor for UUID);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = *v56;
        (*v56)(v11, v8);
        if (v38)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        a4 = v37;
        if (((*(v54 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      sub_10000CAAC(v58, &qword_1019FEF98);

      v15 = v48;
      result = v39(v48, v8);
      *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v40 = __OFADD__(v45++, 1);
      a4 = v37;
      v21 = v47;
      v20 = v53;
      if (v40)
      {
        __break(1u);
        return sub_100A7A4C8(v43, v42, v45, v51);
      }
    }

    else
    {
LABEL_6:
      sub_10000CAAC(v58, &qword_1019FEF98);

      v15 = v48;
      result = (*v56)(v48, v8);
      v21 = v47;
      v20 = v53;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return sub_100A7A4C8(v43, v42, v45, v51);
    }

    v24 = *(v44 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100773FE4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1007719F4(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100773B44((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1007741A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A228E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_100E9082C(v14);
    v21 = sub_1005B981C(&qword_1019FEFC0);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_100035F90();
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v42);
    v24 = *&v14[v22];
    v25 = *v50;
    v27 = sub_10003E994(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA4714();
      }
    }

    else
    {
      sub_100A89AFC(v30, a4 & 1);
      v32 = sub_10003E994(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v50;
    if (v31)
    {
      (*v40)(v11, v42);
      *(v34[7] + 8 * v27) = v24;

      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v41 + 72) * v27), v11, v42);
      *(v34[7] + 8 * v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1007744E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_1019FEFA8);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v45 = a1;
  v46 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v47 = v17;
  v48 = 0;
  v49 = v20 & v18;
  v50 = a2;
  v51 = a3;
  v21 = (v10 + 32);
  v41 = (v10 + 8);
  v42 = v10;

  v40 = a3;

  while (1)
  {
    sub_100E90FF4(v15);
    v22 = sub_1005B981C(&qword_1019FEFB0);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_100035F90();
    }

    v23 = *(v22 + 48);
    v24 = *v21;
    v25 = v9;
    (*v21)(v12, v15, v9);
    v44 = *&v15[v23];
    v26 = *v52;
    v28 = sub_10003E994(v12);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA37A4();
      }
    }

    else
    {
      sub_100A8812C(v31, a4 & 1);
      v33 = sub_10003E994(v12);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_19;
      }

      v28 = v33;
    }

    v35 = *v52;
    if (v32)
    {
      v43 = *(v35[7] + 16 * v28);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v9 = v25;
      (*v41)(v12, v25);
      *(v35[7] + 16 * v28) = v43;
      swift_unknownObjectRelease();
      a4 = 1;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v9 = v25;
      v24((v35[6] + *(v42 + 72) * v28), v12, v25);
      *(v35[7] + 16 * v28) = v44;
      v36 = v35[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v35[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10077486C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v43 = type metadata accessor for UUID();
  v9 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A228E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v44 = a1;
  v45 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v46 = v16;
  v47 = 0;
  v48 = v19 & v17;
  v49 = a2;
  v50 = a3;
  v20 = (v9 + 32);
  v41 = (v9 + 8);
  v42 = v9;

  v40 = a3;

  while (1)
  {
    sub_100E9082C(v14);
    v22 = sub_1005B981C(&qword_1019FEFC0);
    if ((*(*(v22 - 8) + 48))(v14, 1, v22) == 1)
    {
      sub_100035F90();
    }

    v23 = *(v22 + 48);
    v24 = *v20;
    (*v20)(v11, v14, v43);
    v25 = *&v14[v23];
    v26 = *v51;
    v28 = sub_10003E994(v11);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA4714();
      }
    }

    else
    {
      sub_100A89AFC(v31, a4 & 1);
      v33 = sub_10003E994(v11);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_19;
      }

      v28 = v33;
    }

    v35 = *v51;
    if (v32)
    {
      v21 = *(v35[7] + 8 * v28);

      (*v41)(v11, v43);
      *(v35[7] + 8 * v28) = v21;

      a4 = 1;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v24((v35[6] + *(v42 + 72) * v28), v11, v43);
      *(v35[7] + 8 * v28) = v25;
      v36 = v35[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v35[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100774BC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v43 = type metadata accessor for UUID();
  v9 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019FEF80);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v44 = a1;
  v45 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v46 = v16;
  v47 = 0;
  v48 = v19 & v17;
  v49 = a2;
  v50 = a3;
  v20 = (v9 + 32);
  v41 = (v9 + 8);
  v42 = v9;

  v40 = a3;

  while (1)
  {
    sub_100E913E0(v14);
    v22 = sub_1005B981C(&qword_1019FEF88);
    if ((*(*(v22 - 8) + 48))(v14, 1, v22) == 1)
    {
      sub_100035F90();
    }

    v23 = *(v22 + 48);
    v24 = *v20;
    (*v20)(v11, v14, v43);
    v25 = *&v14[v23];
    v26 = *v51;
    v28 = sub_10003E994(v11);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_100AA82C0();
      }
    }

    else
    {
      sub_100A90010(v31, a4 & 1);
      v33 = sub_10003E994(v11);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_19;
      }

      v28 = v33;
    }

    v35 = *v51;
    if (v32)
    {
      v21 = *(v35[7] + 8 * v28);

      (*v41)(v11, v43);
      *(v35[7] + 8 * v28) = v21;

      a4 = 1;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v24((v35[6] + *(v42 + 72) * v28), v11, v43);
      *(v35[7] + 8 * v28) = v25;
      v36 = v35[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v35[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100774F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_100774FCC(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

void sub_100775220()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10003FE44();
    if (v1 <= 0x3F)
    {
      sub_1007755C4(319, &qword_1019FF040, type metadata accessor for CRLBoardItemDeltaChange, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1007755C4(319, &qword_1019FF048, type metadata accessor for CRLBoardItemData, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_1007755C4(319, &unk_101A2C060, &type metadata accessor for UUID, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_10077569C(319, &unk_1019FF050, &unk_101A00080, &unk_10147A9D8, &type metadata accessor for Array);
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

void sub_1007753F0()
{
  type metadata accessor for CRLBoardIdentifier(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_1007755C4(319, &qword_1019FF100, type metadata accessor for CRLBoardData, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1007755C4(319, &qword_1019FF048, type metadata accessor for CRLBoardItemData, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_1007755C4(319, &unk_101A2C060, &type metadata accessor for UUID, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_100775628();
            if (v5 <= 0x3F)
            {
              sub_10077569C(319, &qword_1019FF110, &unk_1019FF118, &unk_10147AA08, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
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

void sub_1007755C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100775628()
{
  if (!qword_1019FF108)
  {
    sub_1005C4E5C(&unk_101A228D0);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FF108);
    }
  }
}

void sub_10077569C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1005C4E5C(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1007757E0(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v14 = *v5;
  v9 = a1[3];
  v10 = a1[4];
  sub_100020E58(a1, v9);
  v11 = *(v10 + 8);
  v12 = sub_100775A04(a4, a5);
  return v11(&v14, a2, v12, v9, v10);
}

uint64_t sub_100775960(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = a1[3];
  v8 = a1[4];
  sub_100020E58(a1, v9);
  v10 = *(v8 + 8);
  v11 = sub_100775A04(a4, a5);
  return v10(v5, a2, v11, v9, v8);
}

uint64_t sub_100775A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100775A4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10067672C(a1, a1 + 32, 1, (2 * v2) | 1);
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v3 = sub_100775A4C();

    v4 = *(v3 + 16);
    if (v4)
    {
      result = sub_100776AC4(0, v4, 0);
      v6 = 0;
      while (v6 < *(v3 + 16))
      {
        v7 = *(v3 + 32 + 8 * v6);
        sub_1005B981C(&unk_1019F6F30);
        inited = swift_initStackObject();
        inited[1] = xmmword_10146C6B0;
        inited[2] = v19;
        v9 = inited + 2;
        inited[3] = v20;
        v10 = *(v7 + 16);
        swift_bridgeObjectRetain_n();
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v11 = *(v7 + 24) >> 1, v12 = v7, v11 <= v10))
        {
          result = sub_100B378BC(result, v10 + 1, 1, v7);
          v12 = result;
          v11 = *(result + 24) >> 1;
        }

        v13 = *(v12 + 16);
        if (v11 <= v13)
        {
          goto LABEL_15;
        }

        v14 = v9[1];
        v15 = v12 + 32 * v13;
        *(v15 + 32) = *v9;
        *(v15 + 48) = v14;

        ++*(v12 + 16);

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          result = sub_100776AC4((v16 > 1), v17 + 1, 1);
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v17 + 1;
        _swiftEmptyArrayStorage[v17 + 4] = v12;
        if (v4 == v6)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_12:
      sub_10079B558(_swiftEmptyArrayStorage);
      return v3;
    }
  }

  else
  {
    sub_1005B981C(&qword_1019FF1C8);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10146C6B0;
    *(v18 + 32) = a1;

    return v18;
  }

  return result;
}

uint64_t CRLImageFaceAnalyzerResult.init(faceRectValues:)(unint64_t a1)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

LABEL_21:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_4:

  v36 = sub_100777CB8(v1, sub_100B3D660, sub_1007A9DB4);
  sub_100776448(&v36);

  v2 = v36;
  if ((v36 & 0x8000000000000000) == 0 && (v36 & 0x4000000000000000) == 0)
  {
    v3 = *(v36 + 16);
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_23:

    v5 = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyArrayStorage[2];
    if (v19)
    {
LABEL_16:
      v20 = (v5 + 7);
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      do
      {
        v21 = sub_10011FC04(v21, v22, v23, v24, *(v20 - 3), *(v20 - 2), *(v20 - 1), *v20);
        v20 += 4;
        --v19;
      }

      while (v19);
      goto LABEL_25;
    }

LABEL_24:
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
LABEL_25:
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v30 = sub_100777D5C(v5);

    v31 = type metadata accessor for CRLImageFaceAnalyzerResult();
    v32 = objc_allocWithZone(v31);
    v33 = &v32[OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_interestingFacesRect];
    *v33 = v26;
    *(v33 + 1) = v27;
    *(v33 + 2) = v28;
    *(v33 + 3) = v29;
    *&v32[OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_faceRectCombinations] = v30;
    v35.receiver = v32;
    v35.super_class = v31;
    v34 = objc_msgSendSuper2(&v35, "init");
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v34;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_7:
  v36 = _swiftEmptyArrayStorage;
  sub_100776AA4(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v36;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      [v6 CGRectValue];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v36 = v5;
      v17 = v5[2];
      v16 = v5[3];
      if (v17 >= v16 >> 1)
      {
        sub_100776AA4((v16 > 1), v17 + 1, 1);
        v5 = v36;
      }

      ++v4;
      v5[2] = v17 + 1;
      v18 = &v5[4 * v17];
      v18[4] = v9;
      v18[5] = v11;
      v18[6] = v13;
      v18[7] = v15;
    }

    while (v3 != v4);

    v19 = v5[2];
    if (v19)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  __break(1u);

  __break(1u);
  return result;
}

void CRLImageFaceAnalyzerResult.maskCenterForFaces(imageSize:maskSize:defaultCenter:)(float64_t a1, float64_t a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_faceRectCombinations);
  v6 = *(v5 + 16);
  if (v6)
  {
    sub_100776AA4(0, v6, 0);
    v9 = _swiftEmptyArrayStorage[2];
    v10.f64[0] = a1;
    v10.f64[1] = a2;
    v11 = 4 * v9;
    v12 = (v5 + 48);
    do
    {
      v13 = v12[-1];
      v14 = *v12;
      v15 = _swiftEmptyArrayStorage[3];
      if (v9++ >= v15 >> 1)
      {
        v61 = v10;
        v56 = *v12;
        v57 = v12[-1];
        sub_100776AA4((v15 > 1), v9, 1);
        v14 = v56;
        v13 = v57;
        v10 = v61;
      }

      _swiftEmptyArrayStorage[2] = v9;
      v17 = &_swiftEmptyArrayStorage[v11];
      v17[2] = vmulq_f64(v13, v10);
      v17[3] = vmulq_f64(v14, v10);
      v11 += 4;
      v12 += 2;
      --v6;
    }

    while (v6);
    v18 = &_swiftEmptyArrayStorage[4];
    v19 = &_swiftEmptyArrayStorage[7];
    do
    {
      v23 = *(v19 - 1);
      v24 = *v19;
      if (v23 <= a3 && v24 <= a4)
      {
        v62 = *(v19 - 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776AA4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          sub_100776AA4((v20 > 1), v21 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[4 * v21];
        *(v22 + 2) = v62;
        *(v22 + 6) = v23;
        *(v22 + 7) = v24;
      }

      v19 += 4;
      --v9;
    }

    while (v9);
    v26 = _swiftEmptyArrayStorage[2];
    if (v26)
    {

      v27 = 0;
      v28 = 0;
      v29 = &_swiftEmptyArrayStorage[7];
      v30 = 1.79769313e308;
      do
      {
        v31 = a4 - *v29;
        v32 = a3 - *(v29 - 1) + v31;
        if (v32 < v30)
        {
          v27 = v28;
        }

        v33 = v28 + 1;
        if (v32 < v30)
        {
          v30 = a3 - *(v29 - 1) + v31;
        }

        v29 += 4;
        ++v28;
      }

      while (v26 != v33);
      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v27 < _swiftEmptyArrayStorage[2])
      {
        v18 = &_swiftEmptyArrayStorage[4 * v27 + 4];
        v34 = v18 + 1;
        v35 = v18 + 2;
        v36 = v18 + 3;
LABEL_29:
        v37 = *v35;
        v38 = *v34;
        v39 = *v18;
        v40 = *v36;

        v41 = sub_10011ECB4();
        v43 = v42;
        v63 = v44;
        v60 = v45;
        v46 = sub_100120414(v39, v38, v37, v40);
        v48 = sub_10011EC70(v46, v47, a3);
        v52 = sub_100120B08(v48, v49, v50, v51, v41, v43, v63, v60);
        sub_100120414(v52, v53, v54, v55);
        return;
      }

      __break(1u);
    }

    else
    {

      if (_swiftEmptyArrayStorage[2])
      {
        v34 = &_swiftEmptyArrayStorage[5];
        v35 = &_swiftEmptyArrayStorage[6];
        v36 = &_swiftEmptyArrayStorage[7];
        goto LABEL_29;
      }
    }

    __break(1u);
  }
}

id CRLImageFaceAnalyzerResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLImageFaceAnalyzerResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100776448(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10113E268(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100776DC4(v6);
  return specialized ContiguousArray._endMutation()();
}

size_t sub_1007764C4(size_t a1, int64_t a2, char a3)
{
  result = sub_10113A4BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007764E4(char *a1, int64_t a2, char a3)
{
  result = sub_10113A4E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776504(char *a1, int64_t a2, char a3)
{
  result = sub_10113A628(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776524(size_t a1, int64_t a2, char a3)
{
  result = sub_10113A600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776544(char *a1, int64_t a2, char a3)
{
  result = sub_10113A72C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776564(char *a1, int64_t a2, char a3)
{
  result = sub_10113A830(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776584(char *a1, int64_t a2, char a3)
{
  result = sub_10113A924(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007765A4(char *a1, int64_t a2, char a3)
{
  result = sub_10113A938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007765C4(char *a1, int64_t a2, char a3)
{
  result = sub_10113A94C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007765E4(char *a1, int64_t a2, char a3)
{
  result = sub_10113A960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776604(char *a1, int64_t a2, char a3)
{
  result = sub_10113AA70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776624(char *a1, int64_t a2, char a3)
{
  result = sub_10113AB64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776644(void *a1, int64_t a2, char a3)
{
  result = sub_10113AC68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776664(void *a1, int64_t a2, char a3)
{
  result = sub_10113AC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776684(void *a1, int64_t a2, char a3)
{
  result = sub_10113ACB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007766A4(void *a1, int64_t a2, char a3)
{
  result = sub_10113ADE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1007766C4(size_t a1, int64_t a2, char a3)
{
  result = sub_10113AF2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1007766E4(size_t a1, int64_t a2, char a3)
{
  result = sub_10113AF54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776704(size_t a1, int64_t a2, char a3)
{
  result = sub_10113AF7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776724(size_t a1, int64_t a2, char a3)
{
  result = sub_10113AFA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776744(void *a1, int64_t a2, char a3)
{
  result = sub_10113AFC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776764(size_t a1, int64_t a2, char a3)
{
  result = sub_10113AFE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776784(char *a1, int64_t a2, char a3)
{
  result = sub_10113B010(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007767A4(void *a1, int64_t a2, char a3)
{
  result = sub_10113B02C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007767C4(char *a1, int64_t a2, char a3)
{
  result = sub_10113B050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1007767E4(void *a1, int64_t a2, char a3)
{
  result = sub_10113B160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776804(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B184(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776824(char *a1, int64_t a2, char a3)
{
  result = sub_10113B1AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776844(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B2A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776864(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B2C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776884(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B2F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1007768A4(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1007768C4(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B33C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1007768E4(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776904(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B38C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776924(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B3B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776944(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776964(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776984(char *a1, int64_t a2, char a3)
{
  result = sub_10113B42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1007769A4(char *a1, int64_t a2, char a3)
{
  result = sub_10113B440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1007769C4(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B54C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1007769E4(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776A04(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B59C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776A24(void *a1, int64_t a2, char a3)
{
  result = sub_10113B5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776A44(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776A64(void *a1, int64_t a2, char a3)
{
  result = sub_10113B60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776A84(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B754(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776AA4(char *a1, int64_t a2, char a3)
{
  result = sub_10113B778(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776AC4(void *a1, int64_t a2, char a3)
{
  result = sub_10113B87C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776AE4(char *a1, int64_t a2, char a3)
{
  result = sub_10113B9FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776B04(char *a1, int64_t a2, char a3)
{
  result = sub_10113BB08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776B24(char *a1, int64_t a2, char a3)
{
  result = sub_10113BC28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776B44(char *a1, int64_t a2, char a3)
{
  result = sub_10113BC44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776B64(void *a1, int64_t a2, char a3)
{
  result = sub_10113BD6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776B84(size_t a1, int64_t a2, char a3)
{
  result = sub_10113BED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776BA4(char *a1, int64_t a2, char a3)
{
  result = sub_10113BF00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776BC4(void *a1, int64_t a2, char a3)
{
  result = sub_10113C16C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776BE4(void *a1, int64_t a2, char a3)
{
  result = sub_10113C2A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776C04(void *a1, int64_t a2, char a3)
{
  result = sub_10113C2C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776C24(char *a1, int64_t a2, char a3)
{
  result = sub_10113C41C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776C44(size_t a1, int64_t a2, char a3)
{
  result = sub_10113B8A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776C64(size_t a1, int64_t a2, char a3)
{
  result = sub_10113C634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776C84(size_t a1, int64_t a2, char a3)
{
  result = sub_10113C65C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776CA4(char *a1, int64_t a2, char a3)
{
  result = sub_10113C684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776CC4(void *a1, int64_t a2, char a3)
{
  result = sub_10113C780(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776CE4(void *a1, int64_t a2, char a3)
{
  result = sub_10113C7A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776D04(size_t a1, int64_t a2, char a3)
{
  result = sub_10113C8FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776D24(void *a1, int64_t a2, char a3)
{
  result = sub_10113CB08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100776D44(void *a1, int64_t a2, char a3)
{
  result = sub_10113CB2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776D64(size_t a1, int64_t a2, char a3)
{
  result = sub_10113CC84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100776D84(char *a1, int64_t a2, char a3)
{
  result = sub_10113CCAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100776DA4(size_t a1, int64_t a2, char a3)
{
  result = sub_10113CDCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100776DC4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10077804C();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100776FDC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100776EC8(0, v2, 1, a1);
  }
}

void sub_100776EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 CGRectValue];
      v15 = v14;
      v17 = v16;
      [v13 CGRectValue];
      v19 = v18;
      v21 = v20;

      if (v19 * v21 >= v15 * v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v22 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v22;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100776FDC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_10113DE48(v8);
    }

    v113 = v5;
    v114 = *(v8 + 2);
    if (v114 >= 2)
    {
      while (*a3)
      {
        v5 = v114 - 1;
        v115 = *&v8[16 * v114];
        v116 = *&v8[16 * v114 + 24];
        sub_10077768C((*a3 + 8 * v115), (*a3 + 8 * *&v8[16 * v114 + 16]), (*a3 + 8 * v116), v9);
        if (v113)
        {
          goto LABEL_98;
        }

        if (v116 < v115)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v114 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v117 = &v8[16 * v114];
        *v117 = v115;
        *(v117 + 1) = v116;
        sub_10113DDBC(v114 - 1);
        v114 = *(v8 + 2);
        if (v114 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v119 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 CGRectValue];
      v19 = v18;
      v21 = v20;
      [v17 CGRectValue];
      v23 = v22;
      v25 = v24;

      v26 = v19 * v21;
      v27 = v23 * v25;
      v28 = v12 + 2;
      while (v6 != v28)
      {
        v29 = *(v14 - 1);
        v30 = *v14;
        v31 = v29;
        [v30 CGRectValue];
        v33 = v32;
        v35 = v34;
        [v31 CGRectValue];
        v37 = v36;
        v39 = v38;

        ++v28;
        ++v14;
        if (v27 < v26 == v37 * v39 >= v33 * v35)
        {
          v6 = (v28 - 1);
          break;
        }
      }

      v9 = v12;
      if (v27 < v26)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v40 = 8 * v6 - 8;
          v41 = v6;
          v42 = v12;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v5);
              *(v44 + v5) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v5 += 8;
          }

          while (v42 < v41);
        }
      }

      v10 = v6;
      v5 = v119;
    }

    v45 = a3[1];
    if (v10 < v45)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = (v9 + a4);
        }

        if (v46 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v46)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100B355CC(0, *(v8 + 2) + 1, 1, v8);
    }

    v68 = *(v8 + 2);
    v67 = *(v8 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v8 = sub_100B355CC((v67 > 1), v68 + 1, 1, v8);
    }

    *(v8 + 2) = v69;
    v70 = &v8[16 * v68];
    *(v70 + 4) = v9;
    *(v70 + 5) = v10;
    v71 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v125 = v10;
    if (v68)
    {
      while (1)
      {
        v72 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v73 = *(v8 + 4);
          v74 = *(v8 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_57:
          if (v76)
          {
            goto LABEL_105;
          }

          v89 = &v8[16 * v69];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_108;
          }

          v95 = &v8[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_112;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v69 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v99 = &v8[16 * v69];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_71:
        if (v94)
        {
          goto LABEL_107;
        }

        v102 = &v8[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_110;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_78:
        v110 = v72 - 1;
        if (v72 - 1 >= v69)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
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
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v111 = *&v8[16 * v110 + 32];
        v9 = *&v8[16 * v72 + 40];
        sub_10077768C((*a3 + 8 * v111), (*a3 + 8 * *&v8[16 * v72 + 32]), (*a3 + 8 * v9), v71);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v111)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v110 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v112 = &v8[16 * v110];
        *(v112 + 4) = v111;
        *(v112 + 5) = v9;
        sub_10113DDBC(v72);
        v69 = *(v8 + 2);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v8[16 * v69 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_103;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_104;
      }

      v84 = &v8[16 * v69];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_106;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_109;
      }

      if (v88 >= v80)
      {
        v106 = &v8[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_113;
        }

        if (v75 < v109)
        {
          v72 = v69 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v125;
    v6 = a3[1];
    if (v125 >= v6)
    {
      goto LABEL_88;
    }
  }

  v120 = v5;
  v47 = v9;
  v48 = *a3;
  v49 = *a3 + 8 * v10 - 8;
  v121 = v47;
  v50 = v47 - v10;
  v123 = v46;
LABEL_30:
  v124 = v10;
  v51 = *(v48 + 8 * v10);
  v52 = v50;
  v53 = v49;
  while (1)
  {
    v54 = *v53;
    v55 = v51;
    v56 = v54;
    [v55 CGRectValue];
    v58 = v57;
    v60 = v59;
    [v56 CGRectValue];
    v62 = v61;
    v64 = v63;

    if (v62 * v64 >= v58 * v60)
    {
LABEL_29:
      v10 = v124 + 1;
      v49 += 8;
      --v50;
      if ((v124 + 1) != v123)
      {
        goto LABEL_30;
      }

      v10 = v123;
      v5 = v120;
      v9 = v121;
      goto LABEL_37;
    }

    if (!v48)
    {
      break;
    }

    v65 = *v53;
    v51 = *(v53 + 8);
    *v53 = v51;
    *(v53 + 8) = v65;
    v53 -= 8;
    if (__CFADD__(v52++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_10077768C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v29 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v29;
    }

    v28 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v49 = v4;
LABEL_26:
      __dst = v28;
      v30 = v28 - 1;
      --v5;
      v31 = v14;
      do
      {
        v32 = v5 + 1;
        v33 = *--v31;
        v34 = v30;
        v35 = *v30;
        v36 = v33;
        v37 = v35;
        [v36 CGRectValue];
        v39 = v38;
        v41 = v40;
        [v37 CGRectValue];
        v43 = v42;
        v45 = v44;

        if (v43 * v45 < v39 * v41)
        {
          v46 = v34;
          if (v32 != __dst)
          {
            *v5 = *v34;
          }

          v4 = v49;
          if (v14 <= v49 || (v28 = v46, v46 <= v6))
          {
            v28 = v46;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v32 != v14)
        {
          *v5 = *v31;
        }

        --v5;
        v14 = v31;
        v30 = v34;
      }

      while (v31 > v49);
      v14 = v31;
      v28 = __dst;
      v4 = v49;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 CGRectValue];
        v19 = v18;
        v21 = v20;
        [v17 CGRectValue];
        v23 = v22;
        v25 = v24;

        if (v23 * v25 >= v19 * v21)
        {
          break;
        }

        v26 = v13;
        v27 = v6 == v13++;
        if (!v27)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v26 = v4;
      v27 = v6 == v4++;
      if (v27)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v26;
      goto LABEL_17;
    }

LABEL_19:
    v28 = v6;
  }

LABEL_37:
  if (v28 != v4 || v28 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t (*sub_100777974(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100778098;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1007779F4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10077809C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100777A74(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1007780A0;
  }

  __break(1u);
  return result;
}

void (*sub_100777AF4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100777B74;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100777B7C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100777BFC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100777C04(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100777C84;
  }

  __break(1u);
  return result;
}

void *sub_100777CB8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

char *sub_100777D5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  if (v1 == 1)
  {

    return v3;
  }

  v4 = 16;
  if (v1 < 0x10)
  {
    v4 = *(a1 + 16);
  }

  if (v1 == v4 - 1)
  {

    v5 = v3;
  }

  else
  {
LABEL_27:
    sub_10067672C(v3, v3 + 32, 1, (2 * v4) | 1);
    v5 = v27;
  }

  v6 = sub_100775A4C(v5);

  v7 = *(v6 + 16);
  if (!v7)
  {

    return _swiftEmptyArrayStorage;
  }

  sub_100776AA4(0, v7, 0);
  v8 = 0;
  v28 = *(v3 + 32);
  v29 = *(v3 + 48);
  v3 = v2;
  while (1)
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v9 = *(v6 + 32 + 8 * v8);
    sub_1005B981C(&unk_1019F6F30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = v28;
    *(inited + 48) = v29;
    v11 = *(v9 + 16);

    if (v11)
    {
      break;
    }

    v12 = 1;
LABEL_14:
    ++v8;
    v13 = (inited + 56);
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      v14 = sub_10011FC04(v14, v15, v16, v17, *(v13 - 3), *(v13 - 2), *(v13 - 1), *v13);
      v13 += 4;
      --v12;
    }

    while (v12);
    v18 = v17;
    v19 = v16;
    v20 = v15;
    v21 = v14;

    v2 = *(v3 + 16);
    v22 = *(v3 + 24);
    if (v2 >= v22 >> 1)
    {
      sub_100776AA4((v22 > 1), v2 + 1, 1);
    }

    *(v3 + 16) = v2 + 1;
    v23 = (v3 + 32 * v2);
    v23[4] = v21;
    v23[5] = v20;
    v23[6] = v19;
    v23[7] = v18;
    if (v8 == v7)
    {

      return v3;
    }
  }

  result = sub_100B378BC(1, v11 + 1, 1, inited);
  if (*(v9 + 16))
  {
    inited = result;
    v25 = *(result + 2);
    if ((*(result + 3) >> 1) - v25 < v11)
    {
      __break(1u);
LABEL_29:
      __break(1u);
    }

    memcpy(&result[32 * v25 + 32], (v9 + 32), 32 * v11);
    v26 = *(inited + 16);
    v12 = v26 + v11;
    if (__OFADD__(v26, v11))
    {
      goto LABEL_29;
    }

    *(inited + 16) = v12;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_10077804C()
{
  result = qword_101A04270;
  if (!qword_101A04270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A04270);
  }

  return result;
}

id sub_10077820C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100778278(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  v11 = v10;
  v22 = objc_allocWithZone(v11);
  if (a9 <= a10)
  {
    v60 = a6;
    v47 = a2;
    v48 = OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_id;
    v49 = type metadata accessor for UUID();
    v58 = v11;
    v50 = a3;
    v51 = *(v49 - 8);
    (*(v51 + 16))(&v22[v48], a1, v49);
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_movieData] = v47;
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterImageData] = v50;
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterTime] = a8;
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_startTime] = a9;
    *&v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_endTime] = a10;
    v52 = &v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_title];
    *v52 = a4;
    *(v52 + 1) = a5;
    v53 = &v22[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_creator];
    *v53 = v60;
    *(v53 + 1) = a7;
    v61.receiver = v22;
    v61.super_class = v58;
    v54 = objc_msgSendSuper2(&v61, "init");
    (*(v51 + 8))(a1, v49);
    return v54;
  }

  else
  {
    v56 = a2;
    v57 = a3;
    v59 = a1;

    v55 = objc_opt_self();
    v23 = [v55 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62);
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 lastPathComponent];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v23;
    v32 = sub_1005CF000();
    *(inited + 96) = v32;
    v33 = sub_1005CF04C();
    *(inited + 104) = v33;
    *(inited + 72) = v24;
    *(inited + 136) = &type metadata for String;
    v34 = sub_1000053B0();
    *(inited + 112) = v27;
    *(inited + 120) = v29;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v34;
    *(inited + 152) = 23;
    v35 = v62;
    *(inited + 216) = v32;
    *(inited + 224) = v33;
    *(inited + 192) = v35;
    v36 = v24;
    v37 = v35;
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v39, "Attempting to set startTime after endTime will only lead to misery.", 67, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v40 = swift_allocObject();
    v40[2] = 8;
    v40[3] = 0;
    v40[4] = 0;
    v40[5] = 0;
    v41 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    [v55 handleFailureInFunction:v42 file:v43 lineNumber:23 isFatal:0 format:v44 args:v41];

    v45 = type metadata accessor for UUID();
    (*(*(v45 - 8) + 8))(v59, v45);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_100778818(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  if (a9 <= a10)
  {
    v45 = OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_id;
    v46 = type metadata accessor for UUID();
    v47 = a1;
    v48 = *(v46 - 8);
    (*(v48 + 16))(&v10[v45], v47, v46);
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_movieData] = a2;
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterImageData] = a3;
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterTime] = a8;
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_startTime] = a9;
    *&v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_endTime] = a10;
    v49 = &v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_title];
    *v49 = a4;
    *(v49 + 1) = a5;
    v50 = &v10[OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_creator];
    *v50 = a6;
    *(v50 + 1) = a7;
    v55.receiver = v10;
    v55.super_class = type metadata accessor for CRLCommandSetMoviePosterTime();
    v51 = objc_msgSendSuper2(&v55, "init");
    (*(v48 + 8))(v47, v46);
    return v51;
  }

  else
  {

    v16 = objc_opt_self();
    v17 = [v16 _atomicIncrementAssertCount];
    v56 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v56);
    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_1005CF000();
    *(inited + 96) = v26;
    v27 = sub_1005CF04C();
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 23;
    v29 = v56;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "Attempting to set startTime after endTime will only lead to misery.", 67, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    [v16 handleFailureInFunction:v36 file:v37 lineNumber:23 isFatal:0 format:v38 args:v35];

    v39 = type metadata accessor for UUID();
    (*(*(v39 - 8) + 8))(a1, v39);
    type metadata accessor for CRLCommandSetMoviePosterTime();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_100778ED4(char *a1, void *a2, void *a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28[0] = a9;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**&a1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v20);
  v23.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v19 + 8))(v22, v18);
  if (!a8)
  {
    v24 = 0;
    if (a10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v25 = 0;
    goto LABEL_6;
  }

  v24 = String._bridgeToObjectiveC()();

  if (!a10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v25 = String._bridgeToObjectiveC()();

LABEL_6:
  v26 = [v28[1] initWithId:v23.super.isa movieData:a2 posterImageData:a3 posterTime:v24 startTime:v25 endTime:a4 title:a5 creator:{a6, v28[0]}];

  return v26;
}

void sub_1007791B0(void *a1, uint64_t a2, int a3)
{
  v8 = v3;
  v200 = a3;
  v204 = a2;
  v10 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v10 - 8);
  v189 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v194 = &v163 - v13;
  __chkstk_darwin(v14);
  v193 = &v163 - v15;
  __chkstk_darwin(v16);
  v198 = (&v163 - v17);
  __chkstk_darwin(v18);
  v197 = &v163 - v19;
  v199 = type metadata accessor for CRLAssetData();
  v201 = *(v199 - 8);
  __chkstk_darwin(v199);
  v188 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v202 = &v163 - v22;
  __chkstk_darwin(v23);
  v191 = &v163 - v24;
  __chkstk_darwin(v25);
  v192 = &v163 - v26;
  __chkstk_darwin(v27);
  v203 = &v163 - v28;
  v29 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v29);
  v195 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v196 = &v163 - v32;
  __chkstk_darwin(v33);
  v35 = &v163 - v34;
  __chkstk_darwin(v36);
  v38 = &v163 - v37;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v40 = [a1 getBoardItemForUUID:isa];

  if (v40)
  {
    type metadata accessor for CRLMovieItem();
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      v42 = v41;
      v43 = v40;
      sub_1012E0400(v42, &off_10188FE10);

      if (v4)
      {

        return;
      }

      if (**(v42 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
      {
        v185 = v43;
        v186 = 0;
        v187 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        v44 = *(v8 + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterImageData);
        v181 = *(v8 + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_movieData);
        v182 = v44;
        v5 = *(v8 + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_posterTime);
        v6 = *(v8 + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_startTime);
        v7 = *(v8 + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_endTime);
        swift_beginAccess();

        v43 = v38;
        v45 = sub_1005B981C(&qword_101A28680);
        CRRegister.wrappedValue.getter();
        v46 = v43[*(v29 + 36)];
        swift_endAccess();

        v183 = v43;
        sub_10077ABDC(v43, type metadata accessor for CRLMovieItemAssetData);
        if (**(v42 + v187) == &off_1019F58C8)
        {
          v180 = v46;
          v47 = *(v8 + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_title);
          v184 = *(v8 + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_title + 8);
          v48 = *(v8 + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_creator);
          v49 = *(v8 + OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_creator + 8);
          v178 = v48;
          v179 = v47;
          swift_beginAccess();

          CRRegister.wrappedValue.getter();
          v43 = v29;
          v177 = v35[*(v29 + 48)];
          swift_endAccess();

          v50 = sub_10077ABDC(v35, type metadata accessor for CRLMovieItemAssetData);
          v51 = sub_1011255D0(v50);
          v190 = v42;
          if ((v51 & 1) == 0)
          {
LABEL_27:
            v137 = v185;
            sub_1012CF6CC(v190, &off_10188FE10, v200);

            return;
          }

          v176 = v49;
          v170 = v45;
          if (qword_1019F2878 == -1)
          {
LABEL_9:
            v52 = type metadata accessor for UUID();
            v53 = sub_1005EB3DC(v52, qword_101AD8F08);
            v54 = *(v52 - 8);
            v55 = v203;
            v174 = *(v54 + 16);
            v175 = v53;
            v173 = v54 + 16;
            v174(v203);
            v56 = v199;
            v57 = (v55 + *(v199 + 20));
            *v57 = 0;
            v57[1] = 0xE000000000000000;
            *(v55 + *(v56 + 24)) = _swiftEmptyDictionarySingleton;
            v58 = v181;
            sub_10000630C(v181 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v206);
            v172 = v58;
            v59 = sub_1005B981C(&qword_1019FF208);
            v168 = type metadata accessor for CRLAssetBackedAssetStorage();
            v169 = v59;
            v60 = swift_dynamicCast();
            v61 = v201;
            v171 = v43;
            v62 = v198;
            if (!v60)
            {
              v166 = v52;
              v181 = *(v201 + 56);
              v181(v198, 1, 1, v56);
              v165 = objc_opt_self();
              v167 = [v165 _atomicIncrementAssertCount];
              v206[0] = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, v206);
              StaticString.description.getter();
              v164 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v63 = String._bridgeToObjectiveC()();

              v64 = [v63 lastPathComponent];

              v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v67 = v66;

              if (qword_1019F20A0 != -1)
              {
                goto LABEL_32;
              }

              goto LABEL_12;
            }

            sub_10077AB74(v205 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v198, type metadata accessor for CRLAssetData);

            v181 = *(v61 + 56);
            v181(v62, 0, 1, v56);
            while (1)
            {
              v84 = v197;
              sub_100601198(v62, v197);
              v86 = *(v61 + 48);
              v85 = (v61 + 48);
              v87 = v86(v84, 1, v56);
              v198 = v86;
              if (v87 == 1)
              {

                sub_100619FC8(v84);
              }

              else
              {
                v88 = v203;
                sub_10077ABDC(v203, type metadata accessor for CRLAssetData);
                v197 = v85;
                v89 = v192;
                sub_1006008F0(v84, v192);
                sub_10077AB74(v89, v88, type metadata accessor for CRLAssetData);
                v90 = v191;
                sub_10077AB74(v89, v191, type metadata accessor for CRLAssetData);
                sub_100D8EE78(v90);

                sub_10077ABDC(v89, type metadata accessor for CRLAssetData);
              }

              v91 = v182;
              v92 = v202;
              (v174)(v202, v175, v52);
              v93 = (v92 + *(v56 + 20));
              *v93 = 0;
              v93[1] = 0xE000000000000000;
              *(v92 + *(v56 + 24)) = _swiftEmptyDictionarySingleton;
              v94 = v181;
              v95 = v203;
              if (v91)
              {
                sub_10000630C(v91 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v206);
                v197 = v91;
                if (swift_dynamicCast())
                {
                  v96 = v194;
                  sub_10077AB74(v205 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v194, type metadata accessor for CRLAssetData);
                  v97 = v96;

                  v94(v96, 0, 1, v56);
                  v98 = v202;
                }

                else
                {
                  v94(v194, 1, 1, v56);
                  v192 = objc_opt_self();
                  v99 = [v192 _atomicIncrementAssertCount];
                  v206[0] = [objc_allocWithZone(NSString) init];
                  sub_100604538(_swiftEmptyArrayStorage, v206);
                  StaticString.description.getter();
                  v182 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v100 = String._bridgeToObjectiveC()();

                  v101 = [v100 lastPathComponent];

                  v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v103 = v102;

                  if (qword_1019F20A0 != -1)
                  {
                    swift_once();
                  }

                  v191 = static OS_os_log.crlAssert;
                  sub_1005B981C(&qword_1019F54E0);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_10146CA70;
                  *(inited + 56) = &type metadata for Int32;
                  *(inited + 64) = &protocol witness table for Int32;
                  *(inited + 32) = v99;
                  v105 = sub_1005CF000();
                  *(inited + 96) = v105;
                  v106 = sub_1005CF04C();
                  *(inited + 104) = v106;
                  v107 = v182;
                  *(inited + 72) = v182;
                  *(inited + 136) = &type metadata for String;
                  v108 = sub_1000053B0();
                  *(inited + 112) = v175;
                  *(inited + 120) = v103;
                  *(inited + 176) = &type metadata for UInt;
                  *(inited + 184) = &protocol witness table for UInt;
                  *(inited + 144) = v108;
                  *(inited + 152) = 265;
                  v109 = v206[0];
                  *(inited + 216) = v105;
                  *(inited + 224) = v106;
                  *(inited + 192) = v109;
                  v110 = v107;
                  v111 = v109;
                  v112 = static os_log_type_t.error.getter();
                  v113 = v191;
                  sub_100005404(v191, &_mh_execute_header, v112, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                  swift_setDeallocating();
                  sub_1005B981C(&unk_1019F5670);
                  swift_arrayDestroy();
                  v114 = static os_log_type_t.error.getter();
                  sub_100005404(v113, &_mh_execute_header, v114, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                  type metadata accessor for __VaListBuilder();
                  v115 = swift_allocObject();
                  v115[2] = 8;
                  v115[3] = 0;
                  v115[4] = 0;
                  v115[5] = 0;
                  v116 = __VaListBuilder.va_list()();
                  StaticString.description.getter();
                  v117 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v118 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v119 = String._bridgeToObjectiveC()();

                  [v192 handleFailureInFunction:v117 file:v118 lineNumber:265 isFatal:0 format:v119 args:v116];

                  v98 = v202;
                  v95 = v203;
                  v56 = v199;
                  v97 = v194;
                  v94 = v181;
                }

                v120 = v97;
                v121 = v193;
                sub_100601198(v120, v193);
                if (v198(v121, 1, v56) == 1)
                {

                  sub_100619FC8(v121);
                }

                else
                {
                  sub_10077ABDC(v98, type metadata accessor for CRLAssetData);
                  v122 = v98;
                  v123 = v188;
                  sub_1006008F0(v121, v188);
                  sub_10077AB74(v123, v122, type metadata accessor for CRLAssetData);
                  v124 = v95;
                  v125 = v189;
                  sub_10077AB74(v123, v189, type metadata accessor for CRLAssetData);
                  v94(v125, 0, 1, v56);
                  v126 = v125;
                  v95 = v124;
                  sub_100D8F180(v126);

                  sub_10077ABDC(v123, type metadata accessor for CRLAssetData);
                }
              }

              v127 = v183;
              sub_10077AB74(v95, v183, type metadata accessor for CRLAssetData);
              v65 = v171;
              v128 = v171[5];
              sub_10077AB74(v202, v127 + v128, type metadata accessor for CRLAssetData);
              v94(v127 + v128, 0, 1, v56);
              *(v127 + v65[6]) = v5;
              *(v127 + v65[7]) = v6;
              *(v127 + v65[8]) = v7;
              *(v127 + v65[9]) = v180;
              v129 = v177 & 1;
              v130 = (v127 + v65[10]);
              v131 = v190;
              v132 = v184;
              *v130 = v179;
              v130[1] = v132;
              v133 = (v127 + v65[11]);
              v67 = v176;
              *v133 = v178;
              v133[1] = v67;
              *(v127 + v65[12]) = v129;
              *(v127 + v65[13]) = _swiftEmptyDictionarySingleton;
              if (**(v131 + v187) == &off_1019F58C8)
              {
                break;
              }

              __break(1u);
LABEL_32:
              swift_once();
LABEL_12:
              v163 = static OS_os_log.crlAssert;
              sub_1005B981C(&qword_1019F54E0);
              v68 = swift_initStackObject();
              *(v68 + 16) = xmmword_10146CA70;
              *(v68 + 56) = &type metadata for Int32;
              *(v68 + 64) = &protocol witness table for Int32;
              *(v68 + 32) = v167;
              v69 = sub_1005CF000();
              *(v68 + 96) = v69;
              v70 = sub_1005CF04C();
              *(v68 + 104) = v70;
              v71 = v164;
              *(v68 + 72) = v164;
              *(v68 + 136) = &type metadata for String;
              v72 = sub_1000053B0();
              *(v68 + 112) = v65;
              *(v68 + 120) = v67;
              *(v68 + 176) = &type metadata for UInt;
              *(v68 + 184) = &protocol witness table for UInt;
              *(v68 + 144) = v72;
              *(v68 + 152) = 259;
              v73 = v206[0];
              *(v68 + 216) = v69;
              *(v68 + 224) = v70;
              *(v68 + 192) = v73;
              v74 = v71;
              v75 = v73;
              v76 = static os_log_type_t.error.getter();
              v77 = v163;
              sub_100005404(v163, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v68);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v78 = static os_log_type_t.error.getter();
              sub_100005404(v77, &_mh_execute_header, v78, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

              type metadata accessor for __VaListBuilder();
              v79 = swift_allocObject();
              v79[2] = 8;
              v79[3] = 0;
              v79[4] = 0;
              v79[5] = 0;
              v80 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v81 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v82 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v83 = String._bridgeToObjectiveC()();

              [v165 handleFailureInFunction:v81 file:v82 lineNumber:259 isFatal:0 format:v83 args:v80];

              v62 = v198;
              v56 = v199;
              v61 = v201;
              v52 = v166;
            }

            v134 = v196;
            sub_10077AB74(v127, v196, type metadata accessor for CRLMovieItemAssetData);
            swift_beginAccess();
            sub_10077AB74(v134, v195, type metadata accessor for CRLMovieItemAssetData);

            CRRegister.wrappedValue.setter();
            sub_10077ABDC(v134, type metadata accessor for CRLMovieItemAssetData);
            swift_endAccess();

            sub_10077ABDC(v127, type metadata accessor for CRLMovieItemAssetData);
            sub_10077ABDC(v202, type metadata accessor for CRLAssetData);
            sub_10077ABDC(v203, type metadata accessor for CRLAssetData);
            v135 = *(v131 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData);
            *(v131 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData) = 0;

            v136 = *(v131 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData);
            *(v131 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData) = 0;

            *(v131 + OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial) = 2;
            goto LABEL_27;
          }

LABEL_30:
          swift_once();
          goto LABEL_9;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  v138 = objc_opt_self();
  v139 = [v138 _atomicIncrementAssertCount];
  v206[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v206);
  StaticString.description.getter();
  v140 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v141 = String._bridgeToObjectiveC()();

  v142 = [v141 lastPathComponent];

  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v145 = v144;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v146 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v147 = swift_initStackObject();
  *(v147 + 16) = xmmword_10146CA70;
  *(v147 + 56) = &type metadata for Int32;
  *(v147 + 64) = &protocol witness table for Int32;
  *(v147 + 32) = v139;
  v148 = sub_1005CF000();
  *(v147 + 96) = v148;
  v149 = sub_1005CF04C();
  *(v147 + 104) = v149;
  *(v147 + 72) = v140;
  *(v147 + 136) = &type metadata for String;
  v150 = sub_1000053B0();
  *(v147 + 112) = v143;
  *(v147 + 120) = v145;
  *(v147 + 176) = &type metadata for UInt;
  *(v147 + 184) = &protocol witness table for UInt;
  *(v147 + 144) = v150;
  *(v147 + 152) = 42;
  v151 = v206[0];
  *(v147 + 216) = v148;
  *(v147 + 224) = v149;
  *(v147 + 192) = v151;
  v152 = v140;
  v153 = v151;
  v154 = static os_log_type_t.error.getter();
  sub_100005404(v146, &_mh_execute_header, v154, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v147);

  v155 = static os_log_type_t.error.getter();
  sub_100005404(v146, &_mh_execute_header, v155, "Unable to retrieve movie item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve movie item");
  type metadata accessor for __VaListBuilder();
  v156 = swift_allocObject();
  v156[2] = 8;
  v156[3] = 0;
  v156[4] = 0;
  v156[5] = 0;
  v157 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v158 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v159 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v160 = String._bridgeToObjectiveC()();

  [v138 handleFailureInFunction:v158 file:v159 lineNumber:42 isFatal:1 format:v160 args:v157];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v161, v162);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10077A8C0()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLCommandSetMoviePosterTime_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_10077A970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetMoviePosterTime();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetMoviePosterTime()
{
  result = qword_1019FF1F8;
  if (!qword_1019FF1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10077AAB0()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10077AB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10077ABDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10077AC40()
{
  result = qword_1019FF210;
  if (!qword_1019FF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF210);
  }

  return result;
}

unint64_t sub_10077AC98()
{
  result = qword_1019FF218;
  if (!qword_1019FF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF218);
  }

  return result;
}

uint64_t sub_10077ADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  type metadata accessor for CRLBoardIdentifier(0);
  v4[8] = swift_task_alloc();
  v4[9] = type metadata accessor for CRLBoardEntity();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_10077AF2C, 0, 0);
}

uint64_t sub_10077AF2C()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.appIntents;
  Logger.init(_:)();
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 192))
  {
    if (*(v0 + 192) == 1)
    {
      v2 = 0;
    }

    else
    {
      v3 = *(v0 + 112);
      IntentParameter.wrappedValue.getter();
      EntityProperty.wrappedValue.getter();
      v4 = *(v0 + 193);
      sub_10077CA0C(v3, type metadata accessor for CRLBoardEntity);
      v2 = v4 ^ 1;
    }
  }

  else
  {
    v2 = 1;
  }

  v5 = v2 & 1;
  *(v0 + 195) = v2 & 1;
  v6 = *(v0 + 104);
  AppDependency.wrappedValue.getter();
  *(v0 + 144) = *(v0 + 16);
  sub_1005B981C(&qword_101A28700);
  v7 = (type metadata accessor for CRLBoardIdentifierAndValue(0) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  v10 = v9 + v8;
  IntentParameter.wrappedValue.getter();
  sub_10000C564(v6, v10, type metadata accessor for CRLBoardIdentifier);
  sub_10077CA0C(v6, type metadata accessor for CRLBoardEntity);
  *(v10 + v7[7]) = v5;
  v11 = sub_100E947F4(v9);
  *(v0 + 152) = v11;
  swift_setDeallocating();
  sub_10077CA0C(v10, type metadata accessor for CRLBoardIdentifierAndValue);
  swift_deallocClassInstance();
  *(v0 + 160) = type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_10077B1FC;

  return sub_1010B5C4C(v11);
}

uint64_t sub_10077B1FC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_10077B618;
  }

  else
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_10077B384;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_10077B384()
{
  v1 = *(v0 + 144);

  return _swift_task_switch(sub_10077B3FC, 0, 0);
}

uint64_t sub_10077B3FC()
{
  v1 = *(v0 + 195);
  v2 = *(v0 + 128);
  v10 = *(v0 + 120);
  v11 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  IntentParameter.wrappedValue.getter();
  *(v0 + 194) = v1;
  EntityProperty.wrappedValue.setter();
  sub_10077CA0C(v4, type metadata accessor for CRLBoardEntity);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v7 = sub_100B0768C();
  sub_10000C564(v3, v6, type metadata accessor for CRLBoardEntity);
  sub_10000C564(v6, v5, type metadata accessor for CRLBoardEntity);
  IntentParameter.wrappedValue.setter();
  sub_10077CA0C(v6, type metadata accessor for CRLBoardEntity);
  sub_10077CA0C(v3, type metadata accessor for CRLBoardEntity);
  *(v0 + 24) = v7;
  sub_10070C278(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_10077CA0C(v4, type metadata accessor for CRLBoardEntity);
  (*(v2 + 8))(v11, v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10077B618()
{

  return _swift_task_switch(sub_10077B68C, 0, 0);
}

uint64_t sub_10077B68C()
{
  v19 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v5 = 136315394;
    IntentParameter.wrappedValue.getter();
    sub_10000C564(v3, v4, type metadata accessor for CRLBoardIdentifier);
    sub_10077CA0C(v3, type metadata accessor for CRLBoardEntity);
    v8 = sub_10084B8C8();
    v10 = v9;
    sub_10077CA0C(v4, type metadata accessor for CRLBoardIdentifier);
    v11 = sub_101007640(v8, v10, &v18);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Problem changing dot grid for board: %s - %@", v5, 0x16u);
    sub_10077CA6C(v6);

    sub_100005070(v7);
  }

  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[15];
  type metadata accessor for AppIntentError();
  sub_10070C278(&qword_1019F8B08, &type metadata accessor for AppIntentError);
  swift_allocError();
  static AppIntentError.Unrecoverable.unknown.getter();
  swift_willThrow();

  (*(v13 + 8))(v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10077B9BC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD64A8);
  sub_1005EB3DC(v6, qword_101AD64A8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10077BBB4()
{
  v0 = sub_1005B981C(&qword_1019FF248);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_1019FF250);
  __chkstk_darwin(v1);
  sub_10077C9B8();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019FF258);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x69726720746F6420;
  v3._object = 0xEE0020726F662064;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019FF260);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10077BDC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD64A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10077BE6C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_10077ADDC(a1, v4, v5, v6);
}

_BYTE *sub_10077BF20@<X0>(void *a1@<X8>)
{
  result = sub_10077C020();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10077BF4C(uint64_t a1)
{
  v2 = sub_10077C9B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10077BF88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10077BFD0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *sub_10077C020()
{
  v52 = type metadata accessor for InputConnectionBehavior();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v34[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v1 - 8);
  v49 = &v34[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v48 = &v34[-v4];
  v5 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v5 - 8);
  v50 = &v34[-v6];
  v7 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v7 - 8);
  v46 = &v34[-v8];
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v47 = type metadata accessor for LocalizedStringResource();
  v53 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v45 = &v34[-v17];
  v43 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = v18;
  v37 = v9;
  v19(v12, v18, v9);
  v36 = v10 + 104;
  v38 = v19;
  v20 = v46;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = *(v53 + 56);
  v53 += 56;
  v44 = v21;
  v21(v20, 0, 1, v47);
  v22 = type metadata accessor for CRLBoardEntity();
  (*(*(v22 - 8) + 56))(v50, 1, 1, v22);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v12, v18, v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = v48;
  IntentDialog.init(_:)();
  v24 = type metadata accessor for IntentDialog();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v39 = v26;
  v40 = v25 + 56;
  v26(v23, 0, 1, v24);
  v26(v49, 1, 1, v24);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v54 + 104);
  v54 += 104;
  v42 = v27;
  v27(v51);
  sub_10070C278(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  v28 = v46;
  v50 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v43 = sub_1005B981C(&qword_1019FF230);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v35;
  v30 = v37;
  v31 = v38;
  v38(v12, v35, v37);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v12, v29, v30);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v44(v28, 0, 1, v47);
  v57 = 0;
  v32 = v39;
  v39(v48, 1, 1, v24);
  v32(v49, 1, 1, v24);
  (v42)(v51, v41, v52);
  sub_10077C964();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_1005B981C(&qword_1019F6280);
  v55 = 0xD00000000000001FLL;
  v56 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v50;
}