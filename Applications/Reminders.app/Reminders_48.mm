void *sub_10054210C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result text];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0xE000000000000000;
    }

    sub_10014F30C(v3, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1005421BC()
{
  result = qword_10078C0F0;
  if (!qword_10078C0F0)
  {
    type metadata accessor for TTRIGroupDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C0F0);
  }

  return result;
}

uint64_t AnyListEntityQuery.init(queryType:)(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsDependencyKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100058000(&qword_100767540);
  (*(v3 + 104))(v8, enum case for AppIntentsDependencyKey.remStore(_:), v2);
  (*(v3 + 16))(v5, v8, v2);
  sub_10054FD8C(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  (*(v3 + 8))(v8, v2);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return a1;
}

uint64_t AnyListEntityQuery.init()()
{
  v0 = type metadata accessor for AppIntentsDependencyKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  sub_100058000(&qword_100767540);
  (*(v1 + 104))(v6, enum case for AppIntentsDependencyKey.remStore(_:), v0);
  (*(v1 + 16))(v3, v6, v0);
  sub_10054FD8C(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  (*(v1 + 8))(v6, v0);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return 0;
}

uint64_t AnyListEntityQuery.entities(for:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 448) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a3;
  sub_100058000(&qword_10078C100);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = *(type metadata accessor for AnyListEntity() - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v5 = type metadata accessor for SmartListType();
  *(v3 + 224) = v5;
  *(v3 + 232) = *(v5 - 8);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v6 = type metadata accessor for AnyListEntityID();
  *(v3 + 256) = v6;
  *(v3 + 264) = *(v6 - 8);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v7 = type metadata accessor for REMAccountsListDataView.Model();
  *(v3 + 344) = v7;
  *(v3 + 352) = *(v7 - 8);
  *(v3 + 360) = swift_task_alloc();
  v8 = type metadata accessor for REMAccountsListDataView.Result();
  *(v3 + 368) = v8;
  *(v3 + 376) = *(v8 - 8);
  *(v3 + 384) = swift_task_alloc();
  Style = type metadata accessor for REMAccountsListDataView.CachablePropertyFetchStyle();
  *(v3 + 392) = Style;
  *(v3 + 400) = *(Style - 8);
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  *(v3 + 424) = Options;
  *(v3 + 432) = *(Options - 8);
  *(v3 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_100542A18, 0, 0);
}

uint64_t sub_100542A18()
{
  v222 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v3 = enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:);
  v4 = *(*(v0 + 400) + 104);
  v4(*(v0 + 416), enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:), v2);
  v4(v1, v3, v2);
  REMAccountsListDataView.FetchOptions.init(fetchAccounts:fetchReminderCounts:fetchHashtagLabels:fetchSmartListHashtagLabels:fetchUserDefinedVisibilityOfPredefinedSmartLists:fetchOrderedPinnedLists:)();
  type metadata accessor for REMAccountsListDataView();
  AppDependency.wrappedValue.getter();
  v5 = *(v0 + 16);
  static REMAccountsListDataView.fetchModel(store:diffingAgainst:options:)();
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 344);
  v9 = *(v0 + 88);

  REMAccountsListDataView.Result.model.getter();
  v197 = REMAccountsListDataView.Model.userDefinedVisibilityOfPredefinedSmartLists.getter();
  (*(v7 + 8))(v6, v8);
  v10 = _swiftEmptyArrayStorage;
  v11 = *(v9 + 16);
  v196 = v11;
  if (v11)
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 232);
    v14 = *(v0 + 128);
    LODWORD(v204) = *(v0 + 448);
    v209 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = *(v0 + 88) + v209;
    v205 = (v14 + 16);
    v207 = (v14 + 32);
    v16 = (v14 + 8);
    v201 = (v13 + 8);
    v203 = (v13 + 32);
    v199 = *(v0 + 168);
    v200 = (v13 + 16);
    v211 = &_swiftEmptyDictionarySingleton;
    v213 = _swiftEmptyArrayStorage;
    v215 = *(v12 + 72);
    v198 = (v14 + 8);
    while (1)
    {
      v26 = *(v0 + 328);
      v25 = *(v0 + 336);
      sub_10054FFD4(v15, v25, type metadata accessor for AnyListEntityID);
      sub_10054FFD4(v25, v26, type metadata accessor for AnyListEntityID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v28 = *(v0 + 336);
          v29 = *(v0 + 312);
          (*v207)(*(v0 + 160), *(v0 + 328), *(v0 + 120));
          sub_10054FFD4(v28, v29, type metadata accessor for AnyListEntityID);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v30 = v213;
          }

          else
          {
            v30 = sub_100548964(0, v213[2] + 1, 1, v213, &qword_10078C2F8, &unk_100645EA0, type metadata accessor for AnyListEntityID);
          }

          v32 = v30[2];
          v31 = v30[3];
          if (v32 >= v31 >> 1)
          {
            v30 = sub_100548964(v31 > 1, v32 + 1, 1, v30, &qword_10078C2F8, &unk_100645EA0, type metadata accessor for AnyListEntityID);
          }

          v214 = v10;
          v33 = *(v0 + 312);
          v35 = *(v0 + 152);
          v34 = *(v0 + 160);
          v36 = *(v0 + 120);
          v213 = v30;
          v30[2] = v32 + 1;
          sub_10055003C(v33, v30 + v209 + v32 * v215, type metadata accessor for AnyListEntityID);
          (*v205)(v35, v34, v36);
          v37 = [objc_opt_self() cdEntityName];
          if (!v37)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = String._bridgeToObjectiveC()();
          }

          v17 = *(v0 + 152);
          v18 = *(v0 + 120);
          v19 = objc_allocWithZone(REMObjectID);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          [v19 initWithUUID:isa entityName:v37];

          v21 = *v16;
          (*v16)(v17, v18);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v22 = *(v0 + 336);
          v23 = *(v0 + 160);
          v24 = *(v0 + 120);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v21(v23, v24);
          sub_10054FC30(v22, type metadata accessor for AnyListEntityID);
        }

        else
        {
          v44 = *(v0 + 336);
          v45 = *(v0 + 304);
          (*v207)(*(v0 + 144), *(v0 + 328), *(v0 + 120));
          sub_10054FFD4(v44, v45, type metadata accessor for AnyListEntityID);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_100548964(0, v10[2] + 1, 1, v10, &qword_10078C2F8, &unk_100645EA0, type metadata accessor for AnyListEntityID);
          }

          v47 = v10[2];
          v46 = v10[3];
          if (v47 >= v46 >> 1)
          {
            v10 = sub_100548964(v46 > 1, v47 + 1, 1, v10, &qword_10078C2F8, &unk_100645EA0, type metadata accessor for AnyListEntityID);
          }

          v48 = *(v0 + 304);
          v50 = *(v0 + 136);
          v49 = *(v0 + 144);
          v51 = *(v0 + 120);
          v214 = v10;
          v10[2] = v47 + 1;
          sub_10055003C(v48, v10 + v209 + v47 * v215, type metadata accessor for AnyListEntityID);
          (*v205)(v50, v49, v51);
          v52 = [objc_opt_self() cdEntityName];
          if (!v52)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = String._bridgeToObjectiveC()();
          }

          v53 = *(v0 + 136);
          v54 = *(v0 + 120);
          v55 = objc_allocWithZone(REMObjectID);
          v56 = UUID._bridgeToObjectiveC()().super.isa;
          [v55 initWithUUID:v56 entityName:v52];

          v57 = *v16;
          (*v16)(v53, v54);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v58 = *(v0 + 336);
          v59 = *(v0 + 144);
          v60 = *(v0 + 120);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v57(v59, v60);
          sub_10054FC30(v58, type metadata accessor for AnyListEntityID);
        }

        v10 = v214;
        goto LABEL_7;
      }

      (*v203)(*(v0 + 248), *(v0 + 328), *(v0 + 224));
      if (v204)
      {
        v38 = SmartListType.remSmartListType.getter();
        v39 = v38;
        if (*(v197 + 16) && (v40 = sub_1003B3EE0(v38), (v41 & 1) != 0))
        {
          v42 = *(*(v197 + 56) + 8 * v40);

          if (v42 == 2)
          {
            v43 = *(v0 + 336);
            (*v201)(*(v0 + 248), *(v0 + 224));
            sub_10054FC30(v43, type metadata accessor for AnyListEntityID);
            goto LABEL_7;
          }
        }

        else
        {
        }
      }

      v61 = *(v0 + 320);
      v63 = *(v0 + 240);
      v62 = *(v0 + 248);
      v65 = *(v0 + 216);
      v64 = *(v0 + 224);
      v66 = *(v0 + 208);
      sub_10054FFD4(*(v0 + 336), v61, type metadata accessor for AnyListEntityID);
      (*v200)(v63, v62, v64);
      sub_10046D10C(v63, v65);
      sub_10055003C(v65, v66, type metadata accessor for AnyListEntity);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v219[0] = v211;
      v68 = sub_1003AB9AC(v61);
      v70 = v211[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_111;
      }

      v74 = v69;
      if (v211[3] >= v73)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = v68;
          sub_1003B0B9C();
          v68 = v85;
          v211 = v219[0];
        }
      }

      else
      {
        v75 = *(v0 + 320);
        sub_10054E2C8(v73, isUniquelyReferenced_nonNull_native);
        v211 = v219[0];
        v68 = sub_1003AB9AC(v75);
        if ((v74 & 1) != (v76 & 1))
        {
LABEL_106:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v77 = *(v0 + 336);
      v78 = *(v0 + 320);
      v79 = *(v0 + 248);
      v80 = *(v0 + 224);
      v81 = *(v0 + 208);
      if (v74)
      {
        sub_100128850(*(v0 + 208), v211[7] + *(v199 + 72) * v68);
        sub_10054FC30(v78, type metadata accessor for AnyListEntityID);
        (*v201)(v79, v80);
        sub_10054FC30(v77, type metadata accessor for AnyListEntityID);
        v16 = v198;
      }

      else
      {
        v214 = *(v0 + 336);
        v211[(v68 >> 6) + 8] |= 1 << v68;
        v82 = v68;
        sub_10054FFD4(v78, v211[6] + v68 * v215, type metadata accessor for AnyListEntityID);
        sub_10055003C(v81, v211[7] + *(v199 + 72) * v82, type metadata accessor for AnyListEntity);
        sub_10054FC30(v78, type metadata accessor for AnyListEntityID);
        (*v201)(v79, v80);
        sub_10054FC30(v214, type metadata accessor for AnyListEntityID);
        v83 = v211[2];
        v72 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v72)
        {
          goto LABEL_116;
        }

        v211[2] = v84;
        v16 = v198;
      }

LABEL_7:
      v15 += v215;
      if (!--v11)
      {
        goto LABEL_43;
      }
    }
  }

  v211 = &_swiftEmptyDictionarySingleton;
  v213 = _swiftEmptyArrayStorage;
LABEL_43:

  AppDependency.wrappedValue.getter();
  v86 = *(v0 + 24);
  sub_100003540(0, &qword_10076BA50);
  v87 = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 32) = 0;
  v88 = [v86 fetchListsWithObjectIDs:v87 error:v0 + 32];

  v89 = *(v0 + 32);
  if (!v88)
  {
    v112 = *(v0 + 432);
    v216 = *(v0 + 440);
    v113 = *(v0 + 424);
    v115 = *(v0 + 376);
    v114 = *(v0 + 384);
    v116 = *(v0 + 368);
    v117 = v89;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v115 + 8))(v114, v116);
    (*(v112 + 8))(v216, v113);
LABEL_103:

    v155 = *(v0 + 8);

    return v155();
  }

  v214 = v10;
  LODWORD(v203) = *(v0 + 448);
  v90 = sub_100003540(0, &qword_10076ABC0);
  sub_1001288B4();
  v91 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v89;

  v93 = v213;
  v94 = v213[2];
  if (!v94)
  {
LABEL_70:

    goto LABEL_73;
  }

  v95 = 0;
  v96 = *(v0 + 264);
  v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  v97 = v91 & 0xFFFFFFFFFFFFFF8;
  if (v91 < 0)
  {
    v97 = v91;
  }

  v204 = v97;
  v202 = *(v0 + 264);
  while (1)
  {
    if (v95 >= v93[2])
    {
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
      goto LABEL_118;
    }

    sub_10054FFD4(v93 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v95, *(v0 + 296), type metadata accessor for AnyListEntityID);
    if (_swiftEmptyArrayStorage >> 62)
    {
      break;
    }

    if (v95 == *(v11 + 16))
    {
      goto LABEL_72;
    }

LABEL_53:
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v95 >= *(v11 + 16))
      {
        goto LABEL_110;
      }

      v98 = _swiftEmptyArrayStorage[v95 + 4];
    }

    v99 = v98;
    v100 = *(v0 + 288);
    v101 = *(v0 + 112);
    sub_10055003C(*(v0 + 296), v101, type metadata accessor for AnyListEntityID);
    sub_10055003C(v101, v100, type metadata accessor for AnyListEntityID);
    if ((v91 & 0xC000000000000001) != 0)
    {
      v102 = __CocoaDictionary.lookup(_:)();
      if (v102)
      {
        *(v0 + 48) = v102;
        swift_dynamicCast();
        v103 = *(v0 + 40);
        if (v103)
        {
          goto LABEL_63;
        }
      }
    }

    else if (*(v91 + 16))
    {
      v104 = sub_1002613B0(v99);
      if (v105)
      {
        v103 = *(*(v91 + 56) + 8 * v104);
        if (v103)
        {
LABEL_63:
          if (v203 == 1 && ![v103 isPinned])
          {
            sub_10054FC30(*(v0 + 288), type metadata accessor for AnyListEntityID);
          }

          else
          {
            v106 = *(v0 + 288);
            v107 = *(v0 + 200);
            v220 = v90;
            v221 = &protocol witness table for REMList;
            v219[0] = v103;
            v108 = v103;
            v109 = v90;
            v110 = v108;
            sub_10046D708(v219, v107);
            v111 = swift_isUniquelyReferenced_nonNull_native();
            v219[0] = v211;
            sub_100128324(v107, v106, v111);

            v90 = v109;
            v96 = v202;
            sub_10054FC30(v106, type metadata accessor for AnyListEntityID);

            v211 = v219[0];
          }

          goto LABEL_49;
        }
      }
    }

    sub_10054FC30(*(v0 + 288), type metadata accessor for AnyListEntityID);

LABEL_49:
    ++v95;
    v93 = v213;
    v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    if (v94 == v95)
    {
      goto LABEL_70;
    }
  }

  if (v95 != _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_53;
  }

LABEL_72:
  v118 = *(v0 + 296);

  sub_10054FC30(v118, type metadata accessor for AnyListEntityID);
LABEL_73:
  AppDependency.wrappedValue.getter();
  v119 = *(v0 + 56);
  *(v0 + 64) = 0;
  v120 = [v119 fetchCustomSmartListsWithError:v0 + 64];

  v121 = *(v0 + 64);
  if (!v120)
  {
    v148 = *(v0 + 432);
    v149 = *(v0 + 440);
    v150 = *(v0 + 424);
    v152 = *(v0 + 376);
    v151 = *(v0 + 384);
    v153 = *(v0 + 368);
    v154 = v121;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v152 + 8))(v151, v153);
    (*(v148 + 8))(v149, v150);
    goto LABEL_103;
  }

  v204 = sub_100003540(0, &qword_100770978);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v122 = v121;

  if (v11 >> 62)
  {
LABEL_118:
    v123 = _CocoaArrayWrapper.endIndex.getter();
    v124 = v214;
    if (!v123)
    {
      goto LABEL_119;
    }

LABEL_76:
    v125 = 0;
    v217 = v11 & 0xC000000000000001;
    v210 = v11 & 0xFFFFFFFFFFFFFF8;
    v126 = &_swiftEmptyDictionarySingleton;
    v206 = v123;
    v208 = v11;
    while (1)
    {
      if (v217)
      {
        v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v125 >= *(v210 + 16))
        {
          goto LABEL_113;
        }

        v130 = *(v11 + 8 * v125 + 32);
      }

      v131 = v130;
      v11 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        goto LABEL_112;
      }

      v132 = [v130 objectID];
      if ((v126 & 0xC000000000000001) != 0)
      {
        if (v126 < 0)
        {
          v133 = v126;
        }

        else
        {
          v133 = v126 & 0xFFFFFFFFFFFFFF8;
        }

        v134 = v131;
        v135 = __CocoaDictionary.count.getter();
        if (__OFADD__(v135, 1))
        {
          goto LABEL_115;
        }

        v126 = sub_100548B64(v133, v135 + 1, &qword_100781320, &unk_10063CF08, &qword_100770978);
      }

      else
      {
        v136 = v131;
      }

      v137 = swift_isUniquelyReferenced_nonNull_native();
      v219[0] = v126;
      v139 = sub_1002613B0(v132);
      v140 = *(v126 + 16);
      v141 = (v138 & 1) == 0;
      v142 = v140 + v141;
      if (__OFADD__(v140, v141))
      {
        goto LABEL_114;
      }

      v143 = v138;
      if (*(v126 + 24) >= v142)
      {
        if (v137)
        {
          if (v138)
          {
            goto LABEL_77;
          }
        }

        else
        {
          sub_1003B0E90();
          v126 = v219[0];
          if (v143)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        sub_10054EA0C(v142, v137, &qword_100781320);
        v126 = v219[0];
        v144 = sub_1002613B0(v132);
        if ((v143 & 1) != (v145 & 1))
        {
          goto LABEL_106;
        }

        v139 = v144;
        if (v143)
        {
LABEL_77:
          v127 = *(v126 + 56);
          v128 = *(v127 + 8 * v139);
          *(v127 + 8 * v139) = v131;

          goto LABEL_78;
        }
      }

      *(v126 + 8 * (v139 >> 6) + 64) |= 1 << v139;
      *(*(v126 + 48) + 8 * v139) = v132;
      *(*(v126 + 56) + 8 * v139) = v131;

      v146 = *(v126 + 16);
      v72 = __OFADD__(v146, 1);
      v147 = v146 + 1;
      if (v72)
      {
        goto LABEL_117;
      }

      *(v126 + 16) = v147;
LABEL_78:
      ++v125;
      v129 = v11 == v206;
      v124 = v214;
      v11 = v208;
      if (v129)
      {
        goto LABEL_120;
      }
    }
  }

  v123 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v124 = v214;
  if (v123)
  {
    goto LABEL_76;
  }

LABEL_119:
  v126 = &_swiftEmptyDictionarySingleton;
LABEL_120:

  v218 = *(v124 + 16);
  if (v218)
  {
    v157 = 0;
    v158 = *(v0 + 264);
    v159 = v211;
    while (1)
    {
      if (v157 >= *(v214 + 16))
      {
        __break(1u);
LABEL_161:
        __break(1u);
      }

      sub_10054FFD4(v214 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v157, *(v0 + 280), type metadata accessor for AnyListEntityID);
      if (_swiftEmptyArrayStorage >> 62)
      {
        if (v157 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_155:
          v190 = *(v0 + 280);

          sub_10054FC30(v190, type metadata accessor for AnyListEntityID);
          v174 = v196;
          if (!v196)
          {
            goto LABEL_156;
          }

LABEL_146:
          v175 = *(v0 + 264);
          v176 = *(v0 + 168);
          v177 = *(v0 + 88) + ((*(v175 + 80) + 32) & ~*(v175 + 80));
          v178 = *(v175 + 72);
          v179 = _swiftEmptyArrayStorage;
          v212 = v159;
          do
          {
            if (v159[2])
            {
              v181 = sub_1003AB9AC(v177);
              if (v182)
              {
                v184 = *(v0 + 184);
                v183 = *(v0 + 192);
                v185 = *(v0 + 176);
                v186 = v159[7];
                v187 = *(v176 + 72);
                sub_10054FFD4(v186 + v187 * v181, v184, type metadata accessor for AnyListEntity);
                sub_10055003C(v184, v183, type metadata accessor for AnyListEntity);
                sub_10055003C(v183, v185, type metadata accessor for AnyListEntity);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v179 = sub_100548964(0, v179[2] + 1, 1, v179, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
                }

                v189 = v179[2];
                v188 = v179[3];
                if (v189 >= v188 >> 1)
                {
                  v179 = sub_100548964(v188 > 1, v189 + 1, 1, v179, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
                }

                v180 = *(v0 + 176);
                v179[2] = v189 + 1;
                sub_10055003C(v180, v179 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + v189 * v187, type metadata accessor for AnyListEntity);
                v159 = v212;
              }
            }

            v177 += v178;
            --v174;
          }

          while (v174);
          goto LABEL_157;
        }
      }

      else if (v157 == *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_155;
      }

      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v157 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_161;
        }

        v160 = _swiftEmptyArrayStorage[v157 + 4];
      }

      v161 = v160;
      v162 = *(v0 + 272);
      v163 = *(v0 + 104);
      sub_10055003C(*(v0 + 280), v163, type metadata accessor for AnyListEntityID);
      sub_10055003C(v163, v162, type metadata accessor for AnyListEntityID);
      if ((v126 & 0xC000000000000001) != 0)
      {
        v164 = __CocoaDictionary.lookup(_:)();
        if (v164)
        {
          *(v0 + 80) = v164;
          swift_dynamicCast();
          v165 = *(v0 + 72);
          if (v165)
          {
            goto LABEL_137;
          }
        }
      }

      else if (*(v126 + 16))
      {
        v166 = sub_1002613B0(v161);
        if (v167)
        {
          v165 = *(*(v126 + 56) + 8 * v166);
          if (v165)
          {
LABEL_137:
            if (v203 == 1 && ![v165 isPinned])
            {
              sub_10054FC30(*(v0 + 272), type metadata accessor for AnyListEntityID);
            }

            else
            {
              v168 = *(v0 + 272);
              v169 = *(v0 + 200);
              v220 = v204;
              v221 = &protocol witness table for REMSmartList;
              v219[0] = v165;
              v170 = v165;
              v171 = v159;
              v172 = v170;
              sub_10046D708(v219, v169);
              v173 = swift_isUniquelyReferenced_nonNull_native();
              v219[0] = v171;
              sub_100128324(v169, v168, v173);

              sub_10054FC30(v168, type metadata accessor for AnyListEntityID);
              v159 = v219[0];
            }

            goto LABEL_123;
          }
        }
      }

      sub_10054FC30(*(v0 + 272), type metadata accessor for AnyListEntityID);

LABEL_123:
      if (v218 == ++v157)
      {
        goto LABEL_145;
      }
    }
  }

  v159 = v211;
LABEL_145:

  v174 = v196;
  if (v196)
  {
    goto LABEL_146;
  }

LABEL_156:
  v179 = _swiftEmptyArrayStorage;
LABEL_157:
  v191 = v179;
  v192 = *(v0 + 432);
  v193 = *(v0 + 440);
  v194 = *(v0 + 424);
  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
  (*(v192 + 8))(v193, v194);

  v195 = *(v0 + 8);

  return v195(v191);
}

uint64_t AnyListEntityQuery.suggestedEntities()(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 448) = a1;
  v3 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = type metadata accessor for REMAccountsListDataView.Model.Group();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  v5 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  *(v2 + 80) = v5;
  *(v2 + 88) = *(v5 - 8);
  *(v2 + 96) = swift_task_alloc();
  v6 = type metadata accessor for REMAccountsListDataView.Model.Account();
  *(v2 + 104) = v6;
  *(v2 + 112) = *(v6 - 8);
  *(v2 + 120) = swift_task_alloc();
  sub_100058000(&qword_10078C108);
  *(v2 + 128) = swift_task_alloc();
  v7 = type metadata accessor for SmartListType();
  *(v2 + 136) = v7;
  *(v2 + 144) = *(v7 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  sub_100058000(&qword_100767520);
  *(v2 + 168) = swift_task_alloc();
  v8 = type metadata accessor for AnyListEntity();
  *(v2 + 176) = v8;
  *(v2 + 184) = *(v8 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  v9 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  *(v2 + 272) = v9;
  *(v2 + 280) = *(v9 - 8);
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  v10 = type metadata accessor for REMAccountsListDataView.Model();
  *(v2 + 336) = v10;
  *(v2 + 344) = *(v10 - 8);
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = swift_task_alloc();
  v11 = type metadata accessor for REMAccountsListDataView.Result();
  *(v2 + 368) = v11;
  *(v2 + 376) = *(v11 - 8);
  *(v2 + 384) = swift_task_alloc();
  Style = type metadata accessor for REMAccountsListDataView.CachablePropertyFetchStyle();
  *(v2 + 392) = Style;
  *(v2 + 400) = *(Style - 8);
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  *(v2 + 424) = Options;
  *(v2 + 432) = *(Options - 8);
  *(v2 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_100544A48, 0, 0);
}

void sub_100544A48()
{
  v211 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v199 = *(v0 + 448);
  v3 = enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:);
  v4 = *(*(v0 + 400) + 104);
  v4(*(v0 + 416), enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:), v2);
  v4(v1, v3, v2);
  REMAccountsListDataView.FetchOptions.init(fetchAccounts:fetchReminderCounts:fetchHashtagLabels:fetchSmartListHashtagLabels:fetchUserDefinedVisibilityOfPredefinedSmartLists:fetchOrderedPinnedLists:)();
  type metadata accessor for REMAccountsListDataView();
  AppDependency.wrappedValue.getter();
  v5 = *(v0 + 16);
  static REMAccountsListDataView.fetchModel(store:diffingAgainst:options:)();
  v6 = *(v0 + 360);
  v7 = *(v0 + 336);
  v8 = *(v0 + 344);

  REMAccountsListDataView.Result.model.getter();
  v9 = REMAccountsListDataView.Model.orderedPinnedLists.getter();
  v10 = *(v8 + 8);
  v10(v6, v7);
  REMAccountsListDataView.Result.model.getter();
  v177 = REMAccountsListDataView.Model.userDefinedVisibilityOfPredefinedSmartLists.getter();
  v159 = v10;
  v10(v6, v7);
  v197 = *(v9 + 16);
  if (v197)
  {
    v11 = v9;
    v12 = 0;
    v13 = *(v0 + 280);
    v184 = *(v0 + 448);
    v190 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    v182 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v178 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v187 = (v13 + 8);
    v201 = (v13 + 32);
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        return;
      }

      v15 = *(v0 + 328);
      v16 = *(v0 + 312);
      v17 = *(v0 + 272);
      v204 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = *(v13 + 72);
      v19 = *(v13 + 16);
      v19(v15, v11 + v204 + v18 * v12, v17);
      v19(v16, v15, v17);
      v20 = (*(v13 + 88))(v16, v17);
      if (v20 != v190)
      {
        break;
      }

      v21 = *(v0 + 312);
      (*(v13 + 96))(v21, *(v0 + 272));
      v22 = *v21;
      if (!v184 || !*(v177 + 16) || (v23 = sub_1003B3EE0(v22), (v24 & 1) == 0))
      {

LABEL_14:
        v26 = *v201;
        (*v201)(*(v0 + 304), *(v0 + 328), *(v0 + 272));
        v208[0] = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1004A26B8(0, *(v14 + 2) + 1, 1);
          v14 = v208[0];
        }

        v28 = *(v14 + 2);
        v27 = *(v14 + 3);
        if (v28 >= v27 >> 1)
        {
          sub_1004A26B8(v27 > 1, v28 + 1, 1);
          v14 = v208[0];
        }

        v29 = *(v0 + 304);
        v30 = *(v0 + 272);
        *(v14 + 2) = v28 + 1;
        v26(&v14[v204 + v28 * v18], v29, v30);
        goto LABEL_19;
      }

      v25 = *(*(v177 + 56) + 8 * v23);

      if (v25 != 2)
      {
        goto LABEL_14;
      }

      (*v187)(*(v0 + 328), *(v0 + 272));
LABEL_19:
      ++v12;
      v11 = v9;
      if (v197 == v12)
      {
        goto LABEL_22;
      }
    }

    if (v20 != v182 && v20 != v178)
    {
LABEL_122:

      _diagnoseUnexpectedEnumCase<A>(type:)();
      return;
    }

    (*v187)(*(v0 + 312), *(v0 + 272));
    goto LABEL_14;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_22:
  v31 = *(v14 + 2);
  if (!v31)
  {

    v37 = _swiftEmptyArrayStorage;
    if (v199 != 1)
    {
      goto LABEL_44;
    }

LABEL_62:
    v206 = v37;
    goto LABEL_119;
  }

  v32 = *(v0 + 280);
  v33 = *(v32 + 16);
  v32 += 16;
  v195 = v33;
  v34 = *(v0 + 144);
  v35 = &v14[(*(v32 + 64) + 32) & ~*(v32 + 64)];
  v193 = (v32 + 72);
  v185 = (v32 - 8);
  v188 = (v32 + 80);
  v175 = (v34 + 48);
  v165 = (v34 + 32);
  v163 = (v34 + 104);
  v36 = *(v0 + 184);
  v183 = *(v32 + 56);
  v191 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
  v173 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
  v161 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
  v160 = enum case for SmartListType.today(_:);
  v169 = (v34 + 8);
  v171 = (v34 + 16);
  v167 = v36;
  v179 = (v36 + 48);
  v181 = (v36 + 56);
  v37 = _swiftEmptyArrayStorage;
  do
  {
    v39 = *(v0 + 320);
    v41 = *(v0 + 288);
    v40 = *(v0 + 296);
    v42 = *(v0 + 272);
    v195(v39, v35, v42);
    v195(v40, v39, v42);
    v195(v41, v40, v42);
    v43 = (*v193)(v41, v42);
    v202 = v31;
    if (v43 == v191)
    {
      v44 = *(v0 + 288);
      v46 = *(v0 + 128);
      v45 = *(v0 + 136);
      (*v188)(v44, *(v0 + 272));
      v47 = *v44;
      SmartListType.init(remSmartListType:)();
      v48 = *v175;
      v49 = (*v175)(v46, 1, v45);
      v50 = *(v0 + 160);
      v52 = *(v0 + 128);
      v51 = *(v0 + 136);
      if (v49 == 1)
      {
        (*v163)(v50, v160, *(v0 + 136));
        if (v48(v52, 1, v51) != 1)
        {
          sub_1000079B4(*(v0 + 128), &qword_10078C108);
        }
      }

      else
      {
        (*v165)(v50, *(v0 + 128), *(v0 + 136));
      }

      v60 = *(v0 + 296);
      v61 = *(v0 + 272);
      v62 = *(v0 + 256);
      v63 = *(v0 + 152);
      v64 = *(v0 + 160);
      v65 = *(v0 + 136);
      (*v171)(v63, v64, v65);
      sub_10046D10C(v63, v62);

      v66 = *v185;
      (*v185)(v60, v61);
      (*v169)(v64, v65);
    }

    else
    {
      if (v43 == v173)
      {
        v54 = *(v0 + 288);
        v53 = *(v0 + 296);
        v55 = *(v0 + 272);
        v56 = *(v0 + 256);
        (*v188)(v54, v55);
        v57 = *v54;
        v58 = type metadata accessor for REMList_Codable();
        v59 = &protocol witness table for REMList;
      }

      else
      {
        if (v43 != v161)
        {
          goto LABEL_122;
        }

        v67 = *(v0 + 288);
        v53 = *(v0 + 296);
        v55 = *(v0 + 272);
        v56 = *(v0 + 256);
        (*v188)(v67, v55);
        v57 = *v67;
        v58 = type metadata accessor for REMSmartList_Codable();
        v59 = &protocol witness table for REMSmartList;
      }

      v209 = v58;
      v210 = v59;
      v208[0] = v57;
      sub_10046D708(v208, v56);
      v66 = *v185;
      (*v185)(v53, v55);
    }

    v68 = *(v0 + 320);
    v69 = *(v0 + 272);
    v71 = *(v0 + 168);
    v70 = *(v0 + 176);
    sub_10055003C(*(v0 + 256), v71, type metadata accessor for AnyListEntity);
    (*v181)(v71, 0, 1, v70);
    v66(v68, v69);
    if ((*v179)(v71, 1, v70) == 1)
    {
      sub_1000079B4(*(v0 + 168), &qword_100767520);
      v38 = v199;
    }

    else
    {
      sub_10055003C(*(v0 + 168), *(v0 + 264), type metadata accessor for AnyListEntity);
      v38 = v199;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_100548964(0, v37[2] + 1, 1, v37, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
      }

      v73 = v37[2];
      v72 = v37[3];
      if (v73 >= v72 >> 1)
      {
        v37 = sub_100548964(v72 > 1, v73 + 1, 1, v37, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
      }

      v74 = *(v0 + 264);
      v37[2] = v73 + 1;
      sub_10055003C(v74, v37 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v73, type metadata accessor for AnyListEntity);
    }

    v35 += v183;
    v31 = v202 - 1;
  }

  while (v202 != 1);

  if (v38 == 1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v75 = *(v0 + 352);
  v76 = *(v0 + 336);
  REMAccountsListDataView.Result.model.getter();
  v77 = REMAccountsListDataView.Model.accounts.getter();
  v159(v75, v76);
  v78 = *(v77 + 16);
  if (!v78)
  {

    v96 = _swiftEmptyArrayStorage;
    v97 = _swiftEmptyArrayStorage[2];
    if (!v97)
    {
      goto LABEL_118;
    }

LABEL_64:
    v98 = 0;
    v192 = *(v0 + 184);
    v99 = *(v0 + 64);
    v180 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
    v172 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
    v168 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
    v186 = *(v0 + 88);
    v176 = (v186 + 96);
    v166 = (v99 + 32);
    v196 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
    v203 = *(v0 + 40);
    v194 = (v203 + 96);
    v162 = (v99 + 8);
    v100 = &selRef_defaultStore;
    v189 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
    v174 = v96;
    v164 = v97;
    while (1)
    {
      if (v98 >= v96[2])
      {
        goto LABEL_131;
      }

      v101 = *(v0 + 96);
      v102 = *(v0 + 80);
      (*(v186 + 16))(v101, v96 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v98, v102);
      v103 = (*(v186 + 88))(v101, v102);
      if (v103 == v180)
      {
        v104 = *(v0 + 96);
        (*v176)(v104, *(v0 + 80));
        v105 = *v104;
        if ([v105 v100[18]])
        {
          goto LABEL_75;
        }

        v106 = v98;
        v108 = *(v0 + 240);
        v107 = *(v0 + 248);
        v209 = type metadata accessor for REMList_Codable();
        v210 = &protocol witness table for REMList;
        v208[0] = v105;
        v109 = v105;
        sub_10046D708(v208, v107);
        sub_10054FFD4(v107, v108, type metadata accessor for AnyListEntity);
        v110 = sub_100548964(0, 1, 1, _swiftEmptyArrayStorage, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        v112 = v110[2];
        v111 = v110[3];
        v113 = v112 + 1;
        if (v112 >= v111 >> 1)
        {
          v110 = sub_100548964(v111 > 1, v112 + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        }

        v115 = *(v0 + 240);
        v114 = *(v0 + 248);
LABEL_100:

        sub_10054FC30(v114, type metadata accessor for AnyListEntity);
        v110[2] = v113;
        sub_10055003C(v115, v110 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v112, type metadata accessor for AnyListEntity);
        v98 = v106;
        v100 = &selRef_defaultStore;
        goto LABEL_103;
      }

      if (v103 == v172)
      {
        v116 = *(v0 + 96);
        (*v176)(v116, *(v0 + 80));
        v105 = *v116;
        if ([v105 v100[18]])
        {
LABEL_75:

          v110 = _swiftEmptyArrayStorage;
          goto LABEL_103;
        }

        v106 = v98;
        v143 = *(v0 + 224);
        v142 = *(v0 + 232);
        v209 = type metadata accessor for REMSmartList_Codable();
        v210 = &protocol witness table for REMSmartList;
        v208[0] = v105;
        v109 = v105;
        sub_10046D708(v208, v142);
        sub_10054FFD4(v142, v143, type metadata accessor for AnyListEntity);
        v110 = sub_100548964(0, 1, 1, _swiftEmptyArrayStorage, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        v112 = v110[2];
        v144 = v110[3];
        v113 = v112 + 1;
        if (v112 >= v144 >> 1)
        {
          v110 = sub_100548964(v144 > 1, v112 + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        }

        v115 = *(v0 + 224);
        v114 = *(v0 + 232);
        goto LABEL_100;
      }

      if (v103 != v168)
      {
        goto LABEL_122;
      }

      v170 = v98;
      v207 = v37;
      v117 = *(v0 + 96);
      v118 = *(v0 + 72);
      v119 = *(v0 + 56);
      (*v176)(v117, *(v0 + 80));
      (*v166)(v118, v117, v119);
      v120 = REMAccountsListDataView.Model.Group.lists.getter();
      v121 = v120;
      v122 = *(v120 + 16);
      if (v122)
      {
        break;
      }

      v110 = _swiftEmptyArrayStorage;
LABEL_102:
      (*v162)(*(v0 + 72), *(v0 + 56));

      v37 = v207;
      v97 = v164;
      v98 = v170;
LABEL_103:
      v145 = v110[2];
      v146 = v37[2];
      v147 = v146 + v145;
      if (__OFADD__(v146, v145))
      {
        goto LABEL_132;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v147 <= v37[3] >> 1)
      {
        if (!v110[2])
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v146 <= v147)
        {
          v149 = v146 + v145;
        }

        else
        {
          v149 = v146;
        }

        v37 = sub_100548964(isUniquelyReferenced_nonNull_native, v149, 1, v37, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
        if (!v110[2])
        {
LABEL_65:

          v96 = v174;
          if (v145)
          {
            goto LABEL_133;
          }

          goto LABEL_66;
        }
      }

      if ((v37[3] >> 1) - v37[2] < v145)
      {
        goto LABEL_134;
      }

      swift_arrayInitWithCopy();

      v96 = v174;
      if (v145)
      {
        v150 = v37[2];
        v94 = __OFADD__(v150, v145);
        v151 = v150 + v145;
        if (v94)
        {
          goto LABEL_135;
        }

        v37[2] = v151;
      }

LABEL_66:
      if (++v98 == v97)
      {
        goto LABEL_118;
      }
    }

    v123 = 0;
    v110 = _swiftEmptyArrayStorage;
    v124 = *(v120 + 16);
    while (1)
    {
      if (v123 >= *(v121 + 16))
      {
        goto LABEL_126;
      }

      v125 = *(v0 + 48);
      v126 = *(v0 + 32);
      (*(v203 + 16))(v125, v121 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v123, v126);
      v127 = (*(v203 + 88))(v125, v126);
      if (v127 == v196)
      {
        v128 = *(v0 + 48);
        (*v194)(v128, *(v0 + 32));
        v129 = *v128;
        if (([v129 v100[18]] & 1) == 0)
        {
          v131 = *(v0 + 208);
          v130 = *(v0 + 216);
          v209 = type metadata accessor for REMList_Codable();
          v210 = &protocol witness table for REMList;
          v208[0] = v129;
          v132 = v129;
          sub_10046D708(v208, v130);
          sub_10054FFD4(v130, v131, type metadata accessor for AnyListEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_100548964(0, v110[2] + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
          }

          v134 = v110[2];
          v133 = v110[3];
          v135 = v134 + 1;
          if (v134 >= v133 >> 1)
          {
            v110 = sub_100548964(v133 > 1, v134 + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
          }

          v137 = *(v0 + 208);
          v136 = *(v0 + 216);
LABEL_96:

          sub_10054FC30(v136, type metadata accessor for AnyListEntity);
          v110[2] = v135;
          sub_10055003C(v137, v110 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v134, type metadata accessor for AnyListEntity);
          v100 = &selRef_defaultStore;
          v122 = v124;
          goto LABEL_80;
        }
      }

      else
      {
        if (v127 != v189)
        {
          goto LABEL_122;
        }

        v138 = *(v0 + 48);
        (*v194)(v138, *(v0 + 32));
        v129 = *v138;
        if (([v129 v100[18]] & 1) == 0)
        {
          v140 = *(v0 + 192);
          v139 = *(v0 + 200);
          v209 = type metadata accessor for REMSmartList_Codable();
          v210 = &protocol witness table for REMSmartList;
          v208[0] = v129;
          v132 = v129;
          sub_10046D708(v208, v139);
          sub_10054FFD4(v139, v140, type metadata accessor for AnyListEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_100548964(0, v110[2] + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
          }

          v134 = v110[2];
          v141 = v110[3];
          v135 = v134 + 1;
          if (v134 >= v141 >> 1)
          {
            v110 = sub_100548964(v141 > 1, v134 + 1, 1, v110, &qword_10078C2F0, &unk_100645E90, type metadata accessor for AnyListEntity);
          }

          v137 = *(v0 + 192);
          v136 = *(v0 + 200);
          goto LABEL_96;
        }
      }

LABEL_80:
      if (v122 == ++v123)
      {
        goto LABEL_102;
      }
    }
  }

  v205 = v37;
  v79 = *(v0 + 112);
  v80 = *(v79 + 16);
  v79 += 16;
  v200 = v80;
  v81 = v77 + ((*(v79 + 64) + 32) & ~*(v79 + 64));
  v198 = *(v79 + 56);
  v82 = (v79 - 8);
  v83 = _swiftEmptyArrayStorage;
  do
  {
    v84 = *(v0 + 120);
    v85 = *(v0 + 104);
    v200(v84, v81, v85);
    v86 = REMAccountsListDataView.Model.Account.children.getter();
    (*v82)(v84, v85);
    v87 = *(v86 + 16);
    v88 = v83[2];
    v89 = v88 + v87;
    if (__OFADD__(v88, v87))
    {
      goto LABEL_127;
    }

    v90 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v83;
    if (v90 && v89 <= v83[3] >> 1)
    {
      if (!*(v86 + 16))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v88 <= v89)
      {
        v92 = v88 + v87;
      }

      else
      {
        v92 = v88;
      }

      v91 = sub_100548964(v90, v92, 1, v83, &qword_10078C2E8, &unk_100645E80, &type metadata accessor for REMAccountsListDataView.Model.AccountChild);
      if (!*(v86 + 16))
      {
LABEL_46:
        v83 = v91;

        if (v87)
        {
          goto LABEL_128;
        }

        goto LABEL_47;
      }
    }

    if ((*(v91 + 24) >> 1) - *(v91 + 16) < v87)
    {
      goto LABEL_129;
    }

    v83 = v91;
    swift_arrayInitWithCopy();

    if (v87)
    {
      v93 = v83[2];
      v94 = __OFADD__(v93, v87);
      v95 = v93 + v87;
      if (v94)
      {
        goto LABEL_130;
      }

      v83[2] = v95;
    }

LABEL_47:
    v81 += v198;
    --v78;
  }

  while (v78);

  v37 = v205;
  v96 = v83;
  v97 = v83[2];
  if (v97)
  {
    goto LABEL_64;
  }

LABEL_118:
  v206 = v37;

LABEL_119:
  v153 = *(v0 + 432);
  v152 = *(v0 + 440);
  v154 = *(v0 + 424);
  v155 = *(v0 + 376);
  v156 = *(v0 + 384);
  v157 = *(v0 + 368);

  (*(v155 + 8))(v156, v157);
  (*(v153 + 8))(v152, v154);

  v158 = *(v0 + 8);

  v158(v206);
}

uint64_t sub_10054632C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AppIntentsDependencyKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100058000(&qword_100767540);
  (*(v3 + 104))(v8, enum case for AppIntentsDependencyKey.remStore(_:), v2);
  (*(v3 + 16))(v5, v8, v2);
  sub_10054FD8C(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  (*(v3 + 8))(v8, v2);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  *a1 = 0;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005464E4(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = *v1;
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1005500B4;

  return AnyListEntityQuery.entities(for:)(a1, v5, v4);
}

uint64_t sub_100546590(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_100546630;

  return AnyListEntityQuery.suggestedEntities()(v4, v3);
}

uint64_t sub_100546630(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100546740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1004F3200;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100546800(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10046BBA8();
  *v5 = v2;
  v5[1] = sub_10001AA3C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1005468B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001AA3C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

char *sub_100546970(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&unk_100771E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

char *sub_100546A7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C140);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100546B80(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007699E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100546C7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C148);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

char *sub_100546DD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10076B848);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

char *sub_100546F48(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C180);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

char *sub_1005470E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&unk_100777760);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100547498(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100774070);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1005476A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10077FE80);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100547808(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100785FC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10054792C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C288);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100547A78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007860D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100547B84(void *result, int64_t a2, char a3, void *a4)
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
    sub_100058000(&qword_100786510);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&unk_10076BCD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100547CE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C260);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

void *sub_100547E48(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100058000(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100547F7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C1E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100548184(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_10078C290);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_100548310(void *result, int64_t a2, char a3, void *a4)
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
    sub_100058000(&qword_10078C1F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_100781C20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1005484A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  sub_100058000(a5);
  v14 = *(sub_100058000(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
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
  v19 = *(sub_100058000(a7) - 8);
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

void *sub_1005486D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100058000(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_1(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_10054881C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100058000(&qword_10078C228);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_10078C230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100548964(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_100058000(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
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

Swift::Int sub_100548B64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    sub_100058000(a3);
    v7 = static _DictionaryStorage.convert(_:capacity:)();
    v24 = v7;
    __CocoaDictionary.makeIterator()();
    v8 = __CocoaDictionary.Iterator.next()();
    if (v8)
    {
      v9 = v8;
      sub_100003540(0, &qword_10076BA50);
      v10 = v9;
      do
      {
        v22 = v10;
        swift_dynamicCast();
        sub_100003540(0, a5);
        swift_dynamicCast();
        v17 = *(v7 + 16);
        if (*(v7 + 24) <= v17)
        {
          sub_10054EA0C(v17 + 1, 1, a3);
        }

        v7 = v24;
        result = NSObject._rawHashValue(seed:)(*(v24 + 40));
        v12 = v24 + 64;
        v13 = -1 << *(v24 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v24 + 64 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v24 + 64 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v24 + 48) + 8 * v16) = v23;
        *(*(v24 + 56) + 8 * v16) = v22;
        ++*(v24 + 16);
        v10 = __CocoaDictionary.Iterator.next()();
      }

      while (v10);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v7;
}

uint64_t sub_100548DC4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_1007812A0);
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

      sub_10054FD8C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
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

uint64_t sub_1005491B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&unk_10076B980);
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

uint64_t sub_10054945C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&qword_100781260);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_41;
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

        if (v38)
        {
          v36 = 1 << *(v5 + 32);
          if (v36 >= 64)
          {
            bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v9 = -1 << v36;
          }

          *(v5 + 16) = 0;
        }

        v3 = v2;
        goto LABEL_39;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v26 = v25;
      }

      Hasher.init(_seed:)();
      if (!v24)
      {
        break;
      }

      if (v24 == 1)
      {
        v27 = 4;
LABEL_21:
        Hasher._combine(_:)(v27);
        v28 = v23;
        goto LABEL_23;
      }

      v28 = qword_100645EC8[v23];
LABEL_23:
      Hasher._combine(_:)(v28);
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v37;
    }

    v27 = 2;
    goto LABEL_21;
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_100549754(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100058000(&qword_100781278);
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
        sub_10055003C(v27 + v28 * v24, v47, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_10054FFD4(v29 + v28 * v24, v47, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
      }

      sub_10054FD8C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
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
      result = sub_10055003C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
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

uint64_t sub_100549BF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&qword_100781308);
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

uint64_t sub_100549E64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&qword_100775FE8);
  v35 = a2;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10054A0E8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRRemindersListPostponeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_100781300);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_10054FD8C(&qword_100781290, &type metadata accessor for TTRRemindersListPostponeType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10054A4A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&qword_1007812F8);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      if ((v33 & 1) == 0)
      {
        v22 = v20;
      }

      Hasher.init(_seed:)();
      if (v20)
      {
        Hasher._combine(_:)(1u);
        v23 = v20;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_38;
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

    if (v33)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10054A754(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove(0);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100058000(&qword_1007812C8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_10055003C(v25, v7, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      }

      else
      {
        sub_10054FFD4(v25, v7, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        v26 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v10 + 40));
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_10055003C(v7, *(v10 + 56) + v24 * v18, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_10054AA9C(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRSectionID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100058000(&qword_100781270);
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

      sub_10054FD8C(&qword_1007758E0, &type metadata accessor for TTRSectionID);
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

uint64_t sub_10054AF44(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100058000(&qword_100781280);
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

uint64_t sub_10054B2D8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100058000(a3);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v21 + 16));
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_10054B560(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_100781238);
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

      sub_10054FD8C(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
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

uint64_t sub_10054B950(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100058000(a3);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v6 + 48) + 8 * v21);
      v23 = (*(v6 + 56) + 16 * v21);
      v24 = *v23;
      v34 = v23[1];
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v22 + 16));
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v34;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v32 = 1 << *(v6 + 32);
    v4 = v3;
    if (v32 >= 64)
    {
      bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_10054BBF0(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100058000(&qword_100781248);
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

      sub_10054FD8C(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
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

uint64_t sub_10054C098(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100058000(&qword_100781240);
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

      sub_10054FD8C(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
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

uint64_t sub_10054C540(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&qword_100781258);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v2;
    v44 = v5;
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
    v45 = result;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v51 = *v23;
      v25 = *(v5 + 56) + 56 * v22;
      v49 = *v25;
      v26 = *(v25 + 16);
      v48 = *(v25 + 24);
      v28 = *(v25 + 32);
      v27 = *(v25 + 40);
      v29 = *(v25 + 48);
      if ((v46 & 1) == 0)
      {

        v30 = v27;
      }

      v50 = v27;
      v31 = v29;
      v32 = v28;
      v33 = v26;
      v34 = v24;
      v7 = v45;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v50;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v50;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v45 + 48) + 16 * v15);
      *v17 = v51;
      v17[1] = v34;
      v18 = *(v45 + 56) + 56 * v15;
      *v18 = v49;
      v12 = v47;
      *(v18 + 16) = v33;
      *(v18 + 24) = v48;
      *(v18 + 32) = v32;
      *(v18 + 40) = v16;
      *(v18 + 48) = v31;
      ++*(v45 + 16);
      v5 = v44;
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
        v47 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_33;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10054C868(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&qword_1007812F0);
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
      v21 = *(*(v5 + 56) + v19);
      if ((a2 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
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

uint64_t sub_10054CAE0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100058000(a3);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v6 + 48) + 8 * v21);
      v23 = *(v6 + 56) + 16 * v21;
      v24 = *v23;
      v34 = *(v23 + 8);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v22 + 16));
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v34;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v32 = 1 << *(v6 + 32);
    v4 = v3;
    if (v32 >= 64)
    {
      bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_10054CD80(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100058000(&qword_100781328);
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

      sub_10054FD8C(&qword_10076BB40, &type metadata accessor for UUID);
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

uint64_t sub_10054D228(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&qword_100781338);
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

uint64_t sub_10054D4F4(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = v4;
  v43 = a3(0);
  v8 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v38 - v9;
  v10 = *v4;
  sub_100058000(a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v4;
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
    v19 = (v8 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v8 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
        v29 = v26;
      }

      result = NSObject._rawHashValue(seed:)(*(v12 + 40));
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v8 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v6 = v12;
  return result;
}

uint64_t sub_10054D840(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_1007812D0);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      v26 = 32 * v23;
      if (v40)
      {
        (*v41)(v43, v25, v44);
        sub_10016A43C(*(v9 + 56) + v26, v45);
      }

      else
      {
        (*v37)(v43, v25, v44);
        sub_10016A5B4(*(v9 + 56) + v26, v45);
      }

      sub_10054FD8C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v9 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v9 = v39;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v42 * v19), v43, v44);
      result = sub_10016A43C(v45, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10054DC1C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_1007812D8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
        swift_unknownObjectRetain();
      }

      sub_10054FD8C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
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
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
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

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
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

uint64_t sub_10054DFF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&qword_100781288);
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

uint64_t sub_10054E2C8(uint64_t a1, int a2)
{
  v3 = v2;
  v54 = type metadata accessor for UUID();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SmartListType();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyListEntity();
  v58 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v62 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyListEntityID();
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v63 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = v47 - v14;
  v15 = *v2;
  sub_100058000(&qword_100781318);
  v59 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v15 + 16))
  {
    v47[0] = v2;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v52 = (v5 + 32);
    v51 = v5 + 8;
    v48 = (v7 + 32);
    v47[1] = v7 + 8;
    v24 = result + 64;
    v55 = v15;
    v25 = v60;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v61 = *(v56 + 72);
      v32 = v31 + v61 * v30;
      if (v59)
      {
        sub_10055003C(v32, v25, type metadata accessor for AnyListEntityID);
        v33 = *(v58 + 72);
        sub_10055003C(*(v15 + 56) + v33 * v30, v62, type metadata accessor for AnyListEntity);
      }

      else
      {
        sub_10054FFD4(v32, v25, type metadata accessor for AnyListEntityID);
        v33 = *(v58 + 72);
        sub_10054FFD4(*(v15 + 56) + v33 * v30, v62, type metadata accessor for AnyListEntity);
      }

      Hasher.init(_seed:)();
      sub_10054FFD4(v25, v63, type metadata accessor for AnyListEntityID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v35 = v53;
        v36 = v54;
        if (EnumCaseMultiPayload == 1)
        {
          (*v52)(v53, v63, v54);
          v37 = 1;
        }

        else
        {
          (*v52)(v53, v63, v54);
          v37 = 2;
        }

        Hasher._combine(_:)(v37);
        sub_10054FD8C(&qword_10076BB40, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v38 = &v65;
      }

      else
      {
        v35 = v49;
        v36 = v50;
        (*v48)(v49, v63, v50);
        Hasher._combine(_:)(0);
        sub_10054FD8C(&qword_100777A20, &type metadata accessor for SmartListType);
        dispatch thunk of Hashable.hash(into:)();
        v38 = &v64;
      }

      (**(v38 - 32))(v35, v36);
      result = Hasher._finalize()();
      v39 = -1 << *(v17 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v24 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v25 = v60;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v24 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v24 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v25 = v60;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_10055003C(v25, *(v17 + 48) + v61 * v26, type metadata accessor for AnyListEntityID);
      result = sub_10055003C(v62, *(v17 + 56) + v33 * v26, type metadata accessor for AnyListEntity);
      ++*(v17 + 16);
      v15 = v55;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v47[0];
      goto LABEL_40;
    }

    v46 = 1 << *(v15 + 32);
    v3 = v47[0];
    if (v46 >= 64)
    {
      bzero(v19, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_40:
  *v3 = v17;
  return result;
}

uint64_t sub_10054EA0C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100058000(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_10054EC94(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100058000(a3);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_10054EF30(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100058000(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v38 = a2;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 48) + 32 * v21;
      v23 = *(v22 + 8);
      v24 = *v22;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      v39 = *(*(v6 + 56) + 16 * v21);
      Hasher.init(_seed:)();
      if (v23 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v27 = v24;
        }

        else
        {
          v27 = 0;
        }

        Hasher._combine(_:)(v27);
      }

      if (v26 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v26;
      }

      Hasher._combine(_:)(*&v28);
      if (v25 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v25;
      }

      Hasher._combine(_:)(*&v29);
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 32 * v16;
      *v17 = v24;
      *(v17 + 8) = v23;
      *(v17 + 16) = v26;
      *(v17 + 24) = v25;
      *(*(v8 + 56) + 16 * v16) = v39;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v38)
    {
      v37 = 1 << *(v6 + 32);
      if (v37 >= 64)
      {
        bzero((v6 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v37;
      }

      *(v6 + 16) = 0;
    }

    v4 = v3;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_10054F224(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100058000(&qword_1007812B8);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100007DD8(v22, v36);
      }

      else
      {
        sub_1000046FC(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_100007DD8(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_10054F50C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10054F550(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10054F594(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10054F5F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_10054F708(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
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

unint64_t sub_10054F76C(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10054F7B0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10054F82C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

unint64_t sub_10054F92C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10054F974(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_10016A43C(a3, a4[7] + 32 * a1);
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

unint64_t sub_10054FA34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_10054FA84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AnyListEntityID();
  sub_10055003C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for AnyListEntityID);
  v10 = a4[7];
  v11 = type metadata accessor for AnyListEntity();
  result = sub_10055003C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for AnyListEntity);
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

unint64_t sub_10054FB70(unint64_t result, uint64_t a2, char a3, void *a4, double a5, double a6, double a7, double a8)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v8 = a4[6] + 32 * result;
  *v8 = a2;
  *(v8 + 8) = a3 & 1;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v9 = (a4[7] + 16 * result);
  *v9 = a7;
  v9[1] = a8;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_10054FBC8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100007DD8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10054FC30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10054FC94()
{
  result = qword_10078C110;
  if (!qword_10078C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C110);
  }

  return result;
}

unint64_t sub_10054FCF0()
{
  result = qword_10078C118;
  if (!qword_10078C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C118);
  }

  return result;
}

uint64_t sub_10054FD8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10054FDD8()
{
  result = qword_10078C120;
  if (!qword_10078C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C120);
  }

  return result;
}

unint64_t sub_10054FE78()
{
  result = qword_10078C128;
  if (!qword_10078C128)
  {
    sub_10005D20C(&qword_10078C130);
    sub_10054FD8C(&qword_100778DB8, type metadata accessor for AnyListEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C128);
  }

  return result;
}

uint64_t assignWithCopy for AnyListEntityQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for AnyListEntityQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_10054FFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10055003C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005500B8()
{
  if ((static IndexPath.== infix(_:_:)() & 1) == 0 || (static IndexPath.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static IndexPath.== infix(_:_:)();
}

uint64_t sub_100550134()
{
  v1 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnID;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_100550C4C(v0 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_lastTargetIndexPathForMoveOfItem);

  return swift_deallocClassInstance();
}

void sub_10055023C()
{
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  if (v0 <= 0x3F)
  {
    sub_100550350();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100550350()
{
  if (!qword_10078C338)
  {
    sub_10005D20C(&qword_10077CFF0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10078C338);
    }
  }
}

uint64_t initializeWithCopy for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 64);
  *(a1 + 64) = v3;
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v3;
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a1 + 64);
  v7 = *(a2 + 8);
  *(a1 + 64) = v7;
  v8 = v7;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t *sub_1005505B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexPath();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v7);
    v8((a1 + *(a3 + 24)), (a2 + *(a3 + 24)), v7);
  }

  return a1;
}

uint64_t sub_1005506B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), a1, v4);
  v7(a1 + *(a2 + 20), v4);
  v5 = a1 + *(a2 + 24);

  return (v7)(v5, v4);
}

uint64_t sub_10055076C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_100550820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_1005508D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_100550988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_100550A84()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_100550B18()
{
  result = qword_10078C4B0;
  if (!qword_10078C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C4B0);
  }

  return result;
}

uint64_t sub_100550B6C()
{
  v1 = *v0;
  v2 = 0x7472617453746F6ELL;
  v3 = 0x697474696D6D6F63;
  if (v1 != 5)
  {
    v3 = 0x6465646E65;
  }

  v4 = 0x69726564726F6572;
  if (v1 != 3)
  {
    v4 = 0x646574697865;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E697466696CLL;
  if (v1 != 1)
  {
    v5 = 0x696C6C65636E6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100550C4C(uint64_t a1)
{
  v2 = sub_100058000(&unk_1007845C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100550CB4()
{
  v0 = sub_100058000(&qword_10077CF90);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  sub_100550DBC();
  sub_100315B44();
  v4 = static FromTo.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100550EB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v3 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v4;
  v44 = type metadata accessor for IndexPath();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10078C4B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v45 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v15 - 8);
  v17 = &v36 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &qword_100772140;
    v23 = v17;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      (*(v19 + 8))(v21, v18);
      v22 = &unk_10076BB50;
      v23 = v11;
    }

    else
    {
      v40 = a1;
      v24 = v45;
      v38 = *(v13 + 32);
      v39 = v13 + 32;
      v38(v45, v11, v12);
      TTRRemindersBoardMainDiffableDataSource.lastAppliedPresentationTrees.getter();
      v25 = type metadata accessor for TTRRemindersBoardPresentationTrees();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v8, 1, v25) == 1)
      {
        (*(v13 + 8))(v24, v12);
        (*(v19 + 8))(v21, v18);
        v22 = &qword_10078C4B8;
      }

      else
      {
        v37 = v13;
        v27 = TTRRemindersBoardPresentationTrees.finalTree.getter();
        (*(v26 + 8))(v8, v25);
        swift_getObjectType();
        v47 = v27;
        v8 = v43;
        TTRTreeContentsQueryable.indexPath(for:)();
        v28 = v42;
        v29 = v44;
        if ((*(v42 + 48))(v8, 1, v44) != 1)
        {
          v32 = *(v28 + 32);
          v33 = v41;
          v32(v41, v8, v29);
          sub_10055154C();
          swift_unknownObjectRelease();
          (*(v19 + 8))(v21, v18);
          v34 = v46;
          v38(v46, v45, v12);
          v35 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
          v32(&v34[*(v35 + 20)], v33, v29);
          (*(v37 + 16))(&v34[*(v35 + 24)], v40, v12);
          return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
        }

        swift_unknownObjectRelease();
        (*(v37 + 8))(v24, v12);
        (*(v19 + 8))(v21, v18);
        v22 = &unk_100771B10;
      }

      v23 = v8;
    }
  }

  sub_1000079B4(v23, v22);
  v30 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  return (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
}

uint64_t sub_10055154C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100551738();
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v12 != v11[0])
  {
    v6 = dispatch thunk of Collection.subscript.read();
    v8 = *v7;
    v6(v11, 0);
    (*(v2 + 16))(v4, v0, v1);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.index(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v9 = *(v2 + 8);
    result = v9(v0, v1);
    if (v10 >= v12)
    {
      v11[0] = v12;
      v11[1] = v10;
      dispatch thunk of Collection.subscript.getter();
      v9(v4, v1);
      return v8;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_100551738()
{
  result = qword_10078C4C0;
  if (!qword_10078C4C0)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C4C0);
  }

  return result;
}

void sub_100551790(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v34 = a3;
  v33 = type metadata accessor for TTRSectionLite();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v33);
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSectionID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  TTRSectionLite.sectionID.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for TTRSectionID.sectioned(_:))
  {
    (*(v10 + 96))(v12, v9);
    v14 = *v12;
    v15 = TTRSectionLite.displayName.getter();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (v16)
    {
      v18 = v16;
    }

    v29[1] = v18;
    v29[2] = v17;
    v19 = v31;
    if (!*(v31 + 24))
    {
      v20 = v31[2];
      sub_100003540(0, &qword_100775690);
      v21 = v20;
      static NSObject.== infix(_:_:)();
      sub_100263FE4(v20, 0);
    }

    v29[0] = sub_100003540(0, &qword_10076BA60);
    sub_10048AE00(v19, v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = *(v4 + 16);
    v23 = v32;
    v31 = v14;
    v24 = v33;
    v22(v32, a1, v33);
    v25 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v26 = (v7 + *(v4 + 80) + v25) & ~*(v4 + 80);
    v27 = swift_allocObject();
    sub_10048AE64(v8, v27 + v25);
    (*(v4 + 32))(v27 + v26, v23, v24);
    v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    goto LABEL_12;
  }

  if (v13 == enum case for TTRSectionID.sectionless(_:))
  {
    v28 = 0;
LABEL_12:
    *v34 = v28;
    return;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_100551B4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) + 44));
  (*(v4 + 104))(v6, enum case for TTRSectionID.sectionless(_:), v3);
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100551C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8 - 8);
  v12 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + *(result + 60));
  if (v13)
  {
    sub_10048AE00(a3, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    sub_10048AE64(v12, v16 + v14);
    *(v16 + v15) = a4;
    v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v17 = a1;
    v17[1] = a2;

    v13(sub_1005548DC, v16);
  }

  return result;
}

uint64_t sub_100551DC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003540(0, &qword_100777780);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v51 = *(a1 + 16);
    if (v51)
    {
      v49 = a5;
      v50 = a4;
      v48 = a2;
      v16 = *(a2 + 8);

      v18 = sub_1004B61FC(v17);

      v53 = a3;
      sub_100058000(&qword_10078C4C8);
      sub_100554988();
      v19 = Sequence.compactMapToSet<A>(_:)();
      v47 = v16;
      v53 = v16;
      v20 = Sequence.compactMapToSet<A>(_:)();
      v45 = 0;
      v46 = v20;
      v21 = sub_100553684(v19, v18);

      v22 = 0;
      v52 = a1 + 32;
      v23 = v21 + 56;
      v24 = _swiftEmptyArrayStorage;
      v25 = v51;
      while (1)
      {
        if (v22 >= v25)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_28;
        }

        v27 = (v52 + 16 * v22);
        v29 = *v27;
        v28 = v27[1];
        ++v22;
        if (*(v21 + 16))
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v30 = Hasher._finalize()();
          v31 = -1 << *(v21 + 32);
          v32 = v30 & ~v31;
          if ((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            v33 = ~v31;
            while (1)
            {
              v34 = (*(v21 + 48) + 16 * v32);
              v35 = *v34 == v29 && v34[1] == v28;
              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v32 = (v32 + 1) & v33;
              if (((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_5;
          }
        }

        else
        {
        }

LABEL_17:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1CD0(0, v24[2] + 1, 1);
          v24 = v54;
        }

        v38 = v24[2];
        v37 = v24[3];
        if (v38 >= v37 >> 1)
        {
          sub_1004A1CD0((v37 > 1), v38 + 1, 1);
          v24 = v54;
        }

        v24[2] = v38 + 1;
        v39 = &v24[2 * v38];
        v39[4] = v29;
        v39[5] = v28;
        v25 = v51;
LABEL_5:
        if (v26 == v25)
        {

          __chkstk_darwin(v40);
          v41 = v47;
          *(&v45 - 4) = v46;
          *(&v45 - 3) = v41;
          *(&v45 - 2) = v48;
          v42 = sub_100399B0C(sub_1005549EC, (&v45 - 6), v24);

          if (v42 >> 62)
          {
            goto LABEL_30;
          }

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100003540(0, &qword_10076C550);
          v43 = v42;
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
LABEL_29:
    __break(1u);
LABEL_30:
    sub_100003540(0, &qword_10076C550);

    v43 = _bridgeCocoaArray<A>(_:)();

LABEL_25:
    v44 = v50;

    v44(v43);
  }

  return result;
}

uint64_t sub_100552280@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v58 = a4;
  v8 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v57 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v59 = v9;
  v60 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRSectionLite();
  v56 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v16 = __chkstk_darwin(v13);
  v52 = &v49 - v17;
  v53 = v18;
  __chkstk_darwin(v16);
  v55 = &v49 - v19;
  v20 = a1[1];
  v62 = *a1;
  v63 = v20;
  if ((sub_1000AA9A4(v62, v20, a2) & 1) == 0 || (v21 = *(a3 + 16)) == 0)
  {
LABEL_13:
    sub_100003540(0, &qword_10076BA60);
    v34 = v60;
    sub_10048AE00(v58, v60);
    v35 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v36 = (v59 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    sub_10048AE64(v34, v37 + v35);
    v38 = (v37 + v36);
    v39 = v63;
    *v38 = v62;
    v38[1] = v39;
    swift_bridgeObjectRetain_n();
    result = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v41 = v61;
    goto LABEL_14;
  }

  v64 = *(v56 + 16);
  v22 = *(v56 + 80);
  v50 = ~v22;
  v51 = v22;
  v23 = a3 + ((v22 + 32) & ~v22);
  v24 = (v56 + 8);
  v25 = *(v56 + 72);
  v64(v15, v23, v10);
  while (1)
  {
    v27 = TTRSectionLite.canonicalName.getter();
    if (!v28)
    {
      goto LABEL_5;
    }

    if (v27 == v62 && v28 == v63)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_11;
    }

LABEL_5:
    (*v24)(v15, v10);
    v23 += v25;
    if (!--v21)
    {
      goto LABEL_13;
    }

    v64(v15, v23, v10);
  }

LABEL_11:
  v29 = v56 + 32;
  v30 = *(v56 + 32);
  v31 = v52;
  v30(v52, v15, v10);
  v56 = v29;
  v52 = v30;
  v30(v55, v31, v10);
  v32 = TTRSectionLite.displayName.getter();
  if (v33)
  {
    v62 = v32;
    v63 = v33;
  }

  else
  {
  }

  v41 = v61;
  v61 = sub_100003540(0, &qword_10076BA60);
  v42 = v60;
  sub_10048AE00(v58, v60);
  v43 = v54;
  v44 = v55;
  v64(v54, v55, v10);
  v45 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v46 = (v59 + v51 + v45) & v50;
  v47 = swift_allocObject();
  sub_10048AE64(v42, v47 + v45);
  (v52)(v47 + v46, v43, v10);
  v48 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  (*v24)(v44, v10);
  result = v48;
LABEL_14:
  *v41 = result;
  return result;
}

uint64_t sub_10055275C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) + 44));
  TTRSectionLite.sectionID.getter();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

void *sub_100552850(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100553848(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1005528E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100058000(&qword_10078C4E0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100554D5C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100552C08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100058000(&unk_10078C4F0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100554D5C(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100552F30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100058000(&qword_10078C4D8);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100554D5C(&qword_100769AC0, &type metadata accessor for IndexPath);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}