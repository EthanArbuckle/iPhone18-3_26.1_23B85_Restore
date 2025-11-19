uint64_t sub_1001B49D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1001B4A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for MediaAPIUpdate();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001B4B4C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v18 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 bundleID];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == a2 && v12 == a3)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t sub_1001B4CB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  v9 = sub_1001B4B4C(*a1, a2, a3);
  v11 = v9;
  if (v3)
  {
    return v11;
  }

  v34 = a3;
  if (v10)
  {
    if (v8 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = 0;
  v33 = a1;
  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v8 >> 62)
    {
      if (v12 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v11;
      }
    }

    else if (v12 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v11;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v14 = *(v8 + 8 * v12 + 32);
LABEL_16:
    v4 = v14;
    v15 = [v14 bundleID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v16 == a2 && v18 == v34)
    {
LABEL_8:
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        if (v11 != v12)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_52;
            }

            v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11 >= v23)
            {
              goto LABEL_53;
            }

            if (v12 >= v23)
            {
              goto LABEL_54;
            }

            v24 = *(v8 + 32 + 8 * v12);
            v21 = *(v8 + 32 + 8 * v11);
            v22 = v24;
          }

          v25 = v22;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
          {
            v8 = sub_1001B49D4(v8);
            v26 = (v8 >> 62) & 1;
          }

          else
          {
            LODWORD(v26) = 0;
          }

          v27 = v8 & 0xFFFFFFFFFFFFFF8;
          v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
          *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v25;

          if ((v8 & 0x8000000000000000) != 0 || v26)
          {
            v8 = sub_1001B49D4(v8);
            v27 = v8 & 0xFFFFFFFFFFFFFF8;
            if ((v12 & 0x8000000000000000) != 0)
            {
LABEL_45:
              __break(1u);
              return v11;
            }
          }

          else if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (v12 >= *(v27 + 16))
          {
            goto LABEL_51;
          }

          v29 = v27 + 8 * v12;
          v30 = *(v29 + 32);
          *(v29 + 32) = v21;

          *v33 = v8;
        }

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_50;
        }
      }
    }

    v13 = __OFADD__(v12++, 1);
    if (v13)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1001B4F68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_10009FAD4(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B5070(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v4 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v2[34] = v5;
  v2[35] = *(v5 - 8);
  v2[36] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.Event();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[41] = v7;
  v2[42] = *(v7 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_1001B52DC, v1, 0);
}

uint64_t sub_1001B52DC()
{
  v236 = v0;
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[26];
  static Logger.library.getter();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v232 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v6, v232);
  v8 = v0[47];
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[40];
  v13 = v0[37];
  v12 = v0[38];
  v229 = v0;
  if (v7)
  {
    v230 = v5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v235[0] = v15;
    *v14 = 136380675;
    sub_1001B6E38(&qword_10059F628, 255, &type metadata accessor for CKSyncEngine.Event);
    v225 = v8;
    v227 = v10;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    logb = v6;
    v19 = *(v12 + 8);
    v19(v11, v13);
    v20 = sub_1001AD0D8(v16, v18, v235);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, logb, v232, "[RemoteAppLibrary] We received an event: %{private}s", v14, 0xCu);
    sub_100005A00(v15);

    v5 = v230;

    v21 = *(v9 + 8);
    v22 = v225;
    v23 = v227;
  }

  else
  {

    v19 = *(v12 + 8);
    v19(v11, v13);
    v21 = *(v9 + 8);
    v22 = v8;
    v23 = v10;
  }

  v221 = v21;
  v21(v22, v23);
  v24 = v229;
  v26 = v229[38];
  v25 = v229[39];
  v27 = v229[37];
  v5(v25, v229[26], v27);
  v28 = (*(v26 + 88))(v25, v27);
  if (v28 == enum case for CKSyncEngine.Event.stateUpdate(_:) || v28 == enum case for CKSyncEngine.Event.accountChange(_:) || v28 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v29 = v229[39];
    v30 = v229[37];
LABEL_8:
    v19(v29, v30);
LABEL_9:

    v31 = v24[1];

    return v31();
  }

  v33 = v229[39];
  v30 = v229[37];
  if (v28 != enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v29 = v229[39];
    goto LABEL_8;
  }

  v35 = v229[35];
  v34 = v229[36];
  v36 = v229[34];
  v37 = v229[27];
  (*(v229[38] + 96))(v229[39], v30);
  (*(v35 + 32))(v34, v33, v36);
  v38 = _swiftEmptyArrayStorage;
  v39 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
  v40 = *(v39 + 16);
  swift_beginAccess();
  v228 = v37;
  v219 = v40;
  if (!v40)
  {
    v220 = _swiftEmptyArrayStorage;
    v214 = _swiftEmptyArrayStorage;
LABEL_17:

    if (v38 >> 62)
    {
      goto LABEL_164;
    }

    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_87;
    }

    goto LABEL_19;
  }

  v41 = 0;
  v217 = v229[32];
  v214 = _swiftEmptyArrayStorage;
  v215 = (v217 + 8);
  v220 = _swiftEmptyArrayStorage;
  v213 = v39;
  while (1)
  {
    if (v41 >= *(v39 + 16))
    {
      goto LABEL_158;
    }

    log = v41;
    v226 = v38;
    (*(v217 + 16))(v24[33], v39 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v41, v24[31]);
    v54 = CKDatabase.RecordZoneChange.Modification.record.getter();
    v55 = CKRecord.recordType.getter();
    v57 = v56;

    if (v55 == 7368769 && v57 == 0xE300000000000000)
    {
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {
        v208 = v24[35];
        v207 = v24[36];
        v210 = v24[33];
        v209 = v24[34];
        v211 = v229[31];

        v212 = v211;
        v24 = v229;
        (*v215)(v210, v212);
        (*(v208 + 8))(v207, v209);
LABEL_155:

        goto LABEL_9;
      }
    }

    v60 = CKDatabase.RecordZoneChange.Modification.record.getter();
    v61 = sub_1000E5E58();

    if (v61)
    {
      break;
    }

LABEL_26:
    v41 = (&log->isa + 1);
    (*v215)(v24[33], v24[31]);
    v38 = v226;
    if ((&log->isa + 1) == v219)
    {
      goto LABEL_17;
    }
  }

  v62 = *(v37 + 128);
  if (v62 >> 62)
  {
    v233 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v233 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = 0;
  while (1)
  {
    if (v233 == v37)
    {

      v74 = v61;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v39 = v213;
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v226 = _swiftEmptyArrayStorage;
      goto LABEL_22;
    }

    if ((v62 & 0xC000000000000001) != 0)
    {
      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_157;
      }

      v64 = *(v62 + 8 * v37 + 32);
    }

    v65 = v64;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    v66 = [v64 bundleID];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v24 = v61;
    v70 = [v61 bundleID];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    if (v67 == v71 && v69 == v73)
    {

LABEL_52:

      v61 = v24;
      v75 = [v24 progress];
      v37 = v228;
      if (v75)
      {
        v76 = v75;
        v77 = [v61 bundleID];
        if (!v77)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = String._bridgeToObjectiveC()();
        }

        v78 = [objc_allocWithZone(ASDProgress) initWithBundleID:v77];

        if (v78)
        {
          v79 = [v61 bundleID];
          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;

          swift_beginAccess();
          v83 = *(v228 + 136);
          if (*(v83 + 16))
          {
            v84 = sub_1000EE808(v80, v82);
            v86 = v85;

            v39 = v213;
            if (v86)
            {
              v87 = *(*(v83 + 56) + 8 * v84);
              swift_endAccess();
              [v76 fractionCompleted];
              if (v88 >= v87)
              {
                goto LABEL_81;
              }

LABEL_22:
              v37 = v228;
              v24 = v229;
LABEL_23:
              swift_beginAccess();
              v53 = v61;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*(v37 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v37 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();

              goto LABEL_26;
            }
          }

          else
          {

            v39 = v213;
          }

          swift_endAccess();
LABEL_81:
          [v78 setTotalUnitCount:{objc_msgSend(v76, "totalUnitCount", v213)}];
          [v78 setCompletedUnitCount:{objc_msgSend(v76, "completedUnitCount")}];
          v117 = v78;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v220 = _swiftEmptyArrayStorage;
          v118 = [v61 bundleID];
          v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v121 = v120;

          [v76 fractionCompleted];
          v123 = v122;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v235[0] = *(v228 + 136);
          *(v228 + 136) = 0x8000000000000000;
          sub_1001B4864(v119, v121, isUniquelyReferenced_nonNull_native, v123);

          *(v228 + 136) = v235[0];
          swift_endAccess();

          v24 = v229;
          v37 = v228;
          goto LABEL_23;
        }

        v37 = v228;
      }

      v89 = [v61 bundleID];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      swift_beginAccess();
      if (*(*(v37 + 136) + 16))
      {
        sub_1000EE808(v90, v92);
        v94 = v93;

        swift_endAccess();
        v39 = v213;
        if (v94)
        {
          v95 = [v61 bundleID];
          if (!v95)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v95 = String._bridgeToObjectiveC()();
          }

          v96 = [objc_allocWithZone(ASDProgress) initWithBundleID:v95];

          if (v96)
          {
            [v96 setTotalUnitCount:1000];
            [v96 setCompletedUnitCount:1000];
            v97 = v96;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v220 = _swiftEmptyArrayStorage;
            v98 = [v61 bundleID];
            v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v101 = v100;

            swift_beginAccess();
            sub_1001AADD4(0, 1, v99, v101);
            swift_endAccess();
            v102 = [v61 bundleID];
            v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v105 = v104;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v214 = sub_1001AC6FC(0, *(v214 + 2) + 1, 1, v214);
            }

            v107 = *(v214 + 2);
            v106 = *(v214 + 3);
            if (v107 >= v106 >> 1)
            {
              v214 = sub_1001AC6FC((v106 > 1), v107 + 1, 1, v214);
            }

            *(v214 + 2) = v107 + 1;
            v108 = &v214[16 * v107];
            *(v108 + 4) = v103;
            *(v108 + 5) = v105;
            goto LABEL_22;
          }
        }
      }

      else
      {
        swift_endAccess();

        v39 = v213;
      }

      v109 = [v61 bundleID];
      v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v112 = v111;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v113 = v214;
      }

      else
      {
        v113 = sub_1001AC6FC(0, *(v214 + 2) + 1, 1, v214);
      }

      v115 = *(v113 + 2);
      v114 = *(v113 + 3);
      if (v115 >= v114 >> 1)
      {
        v113 = sub_1001AC6FC((v114 > 1), v115 + 1, 1, v113);
      }

      *(v113 + 2) = v115 + 1;
      v214 = v113;
      v116 = &v113[16 * v115];
      *(v116 + 4) = v110;
      *(v116 + 5) = v112;
      v24 = v229;
      goto LABEL_23;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v37;
    v61 = v24;
    if (v63)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_19:
      static Logger.library.getter();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v24[46];
      v46 = v24[41];
      if (v44)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v235[0] = v48;
        *v47 = 136446210;
        sub_10009FAD4(0, &qword_10059F618);

        v49 = Array.description.getter();
        v51 = v50;

        v52 = sub_1001AD0D8(v49, v51, v235);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v42, v43, "[RemoteAppLibrary] Posting register notification for apps: %{public}s", v47, 0xCu);
        sub_100005A00(v48);
      }

      v221(v45, v46);
      sub_10009FAD4(0, &qword_10059F618);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v126 = objc_opt_self();
      v127 = sub_1002A24AC(v126, isa);

      objc_opt_self();
      v128 = sub_100003984();
      sub_1003B8178(v128, v127);

      v37 = v228;
      v24 = v229;
    }

LABEL_87:
    if (!(v220 >> 62))
    {
      if (*((v220 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

LABEL_101:
      if (*(v214 + 2))
      {
        static Logger.library.getter();
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.debug.getter();
        v148 = os_log_type_enabled(v146, v147);
        v149 = v24[44];
        v150 = v24[41];
        if (v148)
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v235[0] = v152;
          *v151 = 136446210;

          v153 = Array.description.getter();
          v155 = v154;

          v156 = sub_1001AD0D8(v153, v155, v235);

          *(v151 + 4) = v156;
          _os_log_impl(&_mh_execute_header, v146, v147, "[RemoteAppLibrary] Posting refresh notification for apps: %{public}s", v151, 0xCu);
          sub_100005A00(v152);
        }

        v221(v149, v150);

        v157 = Array._bridgeToObjectiveC()().super.isa;

        v158 = objc_opt_self();
        v159 = sub_1002A20A8(v158, v157);

        objc_opt_self();
        v160 = sub_100003984();
        sub_1003B8178(v160, v159);

        v37 = v228;
        v24 = v229;
      }

      v161 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
      v162 = v161;
      v234 = *(v161 + 16);
      if (!v234)
      {
LABEL_149:
        v165 = _swiftEmptyArrayStorage;
LABEL_150:

        if (*(v165 + 2))
        {
          static Logger.library.getter();
          v192 = Logger.logObject.getter();
          v193 = static os_log_type_t.debug.getter();
          v194 = os_log_type_enabled(v192, v193);
          v195 = v24[43];
          v196 = v24[41];
          if (v194)
          {
            v197 = swift_slowAlloc();
            v198 = swift_slowAlloc();
            v235[0] = v198;
            *v197 = 136446210;

            v199 = Array.description.getter();
            v201 = v200;

            v202 = sub_1001AD0D8(v199, v201, v235);

            *(v197 + 4) = v202;
            _os_log_impl(&_mh_execute_header, v192, v193, "[RemoteAppLibrary] Posting unregister notification for apps: %{public}s", v197, 0xCu);
            sub_100005A00(v198);
          }

          v221(v195, v196);

          v203 = Array._bridgeToObjectiveC()().super.isa;

          v204 = objc_opt_self();
          v205 = sub_1002A26C0(v204, v203);

          objc_opt_self();
          v206 = sub_100003984();
          sub_1003B8178(v206, v205);

          v24 = v229;
        }

        (*(v24[35] + 8))(v24[36], v24[34]);

        goto LABEL_155;
      }

      v163 = 0;
      v164 = v24[29];
      loga = (v161 + ((*(v164 + 80) + 32) & ~*(v164 + 80)));
      v231 = v164;
      v218 = (v164 + 8);
      v165 = _swiftEmptyArrayStorage;
      v216 = v161;
LABEL_110:
      if (v163 >= *(v162 + 16))
      {
        continue;
      }

      (*(v231 + 16))(v24[30], loga + *(v231 + 72) * v163, v24[28]);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (CKDatabase.RecordZoneChange.Deletion.recordType.getter() == 7368769 && v166 == 0xE300000000000000)
      {

        goto LABEL_120;
      }

      v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v168 & 1) == 0)
      {
        goto LABEL_109;
      }

LABEL_120:
      v169 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      v170 = [v169 recordName];

      v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v172;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v165 = sub_1001AC6FC(0, *(v165 + 2) + 1, 1, v165);
      }

      v174 = *(v165 + 2);
      v173 = *(v165 + 3);
      if (v174 >= v173 >> 1)
      {
        v165 = sub_1001AC6FC((v173 > 1), v174 + 1, 1, v165);
      }

      *(v165 + 2) = v174 + 1;
      v175 = &v165[16 * v174];
      *(v175 + 4) = v171;
      *(v175 + 5) = v24;
      swift_beginAccess();

      v176 = sub_1001B4CB8((v37 + 128), v171, v24);

      v177 = *(v37 + 128);
      v178 = v177 >> 62;
      if (v177 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
        v179 = v37 - v176;
        if (v37 < v176)
        {
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }
      }

      else
      {
        v37 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v179 = v37 - v176;
        if (v37 < v176)
        {
          goto LABEL_148;
        }
      }

      if (v176 < 0)
      {
        goto LABEL_160;
      }

      if (v178)
      {
        v180 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v180 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v180 < v37)
      {
        goto LABEL_161;
      }

      v181 = __OFSUB__(0, v179);
      v182 = -v179;
      if (v181)
      {
        goto LABEL_162;
      }

      if (v178)
      {
        v183 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v183 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v181 = __OFADD__(v183, v182);
      v184 = v183 + v182;
      if (v181)
      {
        goto LABEL_163;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v228 + 128) = v177;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v178)
        {
          if (v184 <= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v186 = v228;
            goto LABEL_144;
          }

LABEL_143:
          v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v186 = v228;
          *(v228 + 128) = v177;
LABEL_144:
          sub_1001B4F68(v176, v37, 0, &qword_10059F618);
          *(v186 + 128) = v177;
          swift_endAccess();
          swift_beginAccess();
          v187 = sub_1000EE808(v171, v24);
          v189 = v188;

          v37 = v186;
          v162 = v216;
          if (v189)
          {
            v190 = swift_isUniquelyReferenced_nonNull_native();
            v191 = *(v37 + 136);
            v235[0] = v191;
            *(v37 + 136) = 0x8000000000000000;
            if (!v190)
            {
              sub_1001B2388();
              v191 = v235[0];
            }

            sub_1001B2D54(v187, v191);
            *(v37 + 136) = v191;
          }

          v24 = v229;
          swift_endAccess();
LABEL_109:
          ++v163;
          (*v218)(v24[30], v24[28]);
          if (v234 == v163)
          {
            goto LABEL_150;
          }

          goto LABEL_110;
        }
      }

      else if (!v178)
      {
        goto LABEL_143;
      }

      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_143;
    }

    break;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_101;
  }

LABEL_89:
  static Logger.library.getter();
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.debug.getter();
  v131 = os_log_type_enabled(v129, v130);
  v132 = v24[45];
  v133 = v24[41];
  if (v131)
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v235[0] = v135;
    *v134 = 136446210;
    sub_10009FAD4(0, &qword_10059F620);
    v136 = v220;

    v137 = Array.description.getter();
    v139 = v138;

    v140 = sub_1001AD0D8(v137, v139, v235);

    *(v134 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v129, v130, "[RemoteAppLibrary] Posting progress for apps: %{public}s", v134, 0xCu);
    sub_100005A00(v135);

    v221(v132, v133);
  }

  else
  {

    v221(v132, v133);
    v136 = v220;
  }

  v37 = v228;
  v24 = v229;
  v220 = v136;
  if (v136 >> 62)
  {
    v141 = _CocoaArrayWrapper.endIndex.getter();
    if (!v141)
    {
      goto LABEL_101;
    }
  }

  else
  {
    v141 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v141)
    {
      goto LABEL_101;
    }
  }

  result = objc_opt_self();
  if (v141 >= 1)
  {

    v142 = 0;
    do
    {
      if ((v136 & 0xC000000000000001) != 0)
      {
        v143 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v143 = *(v136 + 8 * v142 + 32);
      }

      v144 = v143;
      ++v142;
      v145 = sub_100003984();
      sub_1003B8364(v145, v144);

      v37 = v228;
    }

    while (v141 != v142);

    v24 = v229;
    goto LABEL_101;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B6CB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100085384;

  return sub_1001ABB1C(v2, v3, v4);
}

uint64_t sub_1001B6D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseCandidate();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B6DD0(uint64_t a1)
{
  v2 = sub_100085D40(&qword_10059E418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B6E38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B6EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[34] = a2;
  v5 = sub_100085D40(&unk_10059F7C0);
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B6FB4, 0, 0);
}

uint64_t sub_1001B6FB4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BE368;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100512630;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B7238;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100512658;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001B7238()
{

  return _swift_task_switch(sub_1001BE3A8, 0, 0);
}

uint64_t sub_1001B7318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[34] = a2;
  v5 = sub_100085D40(&unk_10059F7C0);
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B73E8, 0, 0);
}

uint64_t sub_1001B73E8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BE28C;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100512770;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B766C;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100512798;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001B766C()
{

  return _swift_task_switch(sub_1001B774C, 0, 0);
}

uint64_t sub_1001B774C()
{
  v2 = v0[40];
  v1 = v0[41];
  sub_100005518((v0 + 24), &unk_10059CC50);
  _Block_release(v1);
  swift_beginAccess();
  v3 = *(v2 + 24);
  if (v3 == 255)
  {
    type metadata accessor for ASDError(0);
    v0[32] = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else if (v3)
  {
    v4 = *(v2 + 16);
    v0[33] = v4;
    sub_100007CE8(v4, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001B78BC(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B798C, 0, 0);
}

uint64_t sub_1001B798C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BE1F4;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_1005126D0;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B7C10;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_1005126F8;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001B7C10()
{

  return _swift_task_switch(sub_1001B7CF0, 0, 0);
}

uint64_t sub_1001B7CF0()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_100005518((v0 + 24), &unk_10059CC50);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    type metadata accessor for ASDError(0);
    v0[32] = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v3)
  {
    v0[33] = v4;
    sub_1001BE228(v4, v5, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v6 = v0[1];

    return v6();
  }

  v8 = v5;

  v9 = v0[1];

  return v9(v4, v5);
}

uint64_t sub_1001B7EA4(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B7F74, 0, 0);
}

uint64_t sub_1001B7F74()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BDF9C;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_1005124F0;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B81F8;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100512518;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001B81F8()
{

  return _swift_task_switch(sub_1001B82D8, 0, 0);
}

uint64_t sub_1001B82D8()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_100005518((v0 + 24), &unk_10059CC50);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 == 255)
  {
    type metadata accessor for ASDError(0);
    v0[32] = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  if (v3)
  {
    v0[33] = v4;
    sub_1001BE1A4(v4, 1, &_swift_bridgeObjectRetain);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v5 = v0[1];

    return v5();
  }

  v7 = v0[1];

  return v7(v4);
}

uint64_t sub_1001B8490(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B8560, 0, 0);
}

uint64_t sub_1001B8560()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BE1B4;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100512590;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B87E4;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_1005125B8;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001B87E4()
{

  return _swift_task_switch(sub_1001B88C4, 0, 0);
}

uint64_t sub_1001B88C4()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_100005518((v0 + 24), &unk_10059CC50);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 == 255)
  {
    type metadata accessor for ASDError(0);
    v0[32] = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  if (v3)
  {
    v0[33] = v4;
    sub_1000E2968(v4, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v5 = v0[1];

    return v5();
  }

  v7 = v4;

  v8 = v0[1];

  return v8(v4);
}

uint64_t sub_1001B8A64(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B8B34, 0, 0);
}

uint64_t sub_1001B8B34()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BE0A8;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100512310;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B8DB8;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100512338;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001B8DB8()
{

  return _swift_task_switch(sub_1001B8E98, 0, 0);
}

uint64_t sub_1001B8E98()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_100005518((v0 + 24), &unk_10059CC50);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 == 255)
  {
    type metadata accessor for ASDError(0);
    v0[32] = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  if (v3)
  {
    v0[33] = v4;
    sub_100007CE8(v4, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v5 = v0[1];

    return v5();
  }

  v7 = v0[1];

  return v7(v4 & 1);
}

uint64_t sub_1001B9034(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B9104, 0, 0);
}

uint64_t sub_1001B9104()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BDFD0;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_1005121D0;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B9388;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_1005121F8;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001B9388()
{

  return _swift_task_switch(sub_1001BE364, 0, 0);
}

uint64_t sub_1001B9468(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B9538, 0, 0);
}

uint64_t sub_1001B9538()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BDFD0;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100512130;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B81F8;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100512158;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001B97BC(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B988C, 0, 0);
}

uint64_t sub_1001B988C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -256;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BE028;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100512270;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B9B10;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100512298;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001B9B10()
{

  return _swift_task_switch(sub_1001B9BF0, 0, 0);
}

uint64_t sub_1001B9BF0()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_100005518((v0 + 24), &unk_10059CC50);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 >> 8 > 0xFE)
  {
    type metadata accessor for ASDError(0);
    v0[32] = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
LABEL_8:

    v7 = v0[1];

    return v7();
  }

  v4 = *(v1 + 16);
  if ((v3 & 0x100) != 0)
  {
    v0[33] = v4;
    sub_1001BE034(v4, v3, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
    goto LABEL_8;
  }

  v5 = v0[1];

  return v5(v4, v3 & 1);
}

uint64_t sub_1001B9DA4(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001B9E74, 0, 0);
}

uint64_t sub_1001B9E74()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BDFD0;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100512450;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B9388;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100512478;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001BA0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a3;
  v4[37] = v3;
  v4[34] = a1;
  v4[35] = a2;
  v5 = sub_100085D40(&unk_10059F7C0);
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();

  return _swift_task_switch(sub_1001BA1C8, 0, 0);
}

uint64_t sub_1001BA1C8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v1[36];
  v15 = v1[37];
  v9 = v1[35];
  v10 = swift_allocObject();
  v1[41] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BE110;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_1005123B0;
  v12 = _Block_copy(v3);
  v1[42] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001BA44C;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_1005123D8;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001BA44C()
{

  return _swift_task_switch(sub_1001BA52C, 0, 0);
}

uint64_t sub_1001BA52C()
{
  v1 = v0[41];
  v2 = v0[42];
  sub_100005518((v0 + 24), &unk_10059CC50);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    type metadata accessor for ASDError(0);
    v0[32] = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v3)
  {
    v0[33] = v4;
    sub_1001BE144(v4, v5, 1, sub_1000FE3F8);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v6 = v0[1];
    goto LABEL_7;
  }

  v7 = v0[34];
  sub_1000FE3F8(v4, v5);

  *v7 = v4;
  v7[1] = v5;

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t sub_1001BA6D0(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001BA7A0, 0, 0);
}

uint64_t sub_1001BA7A0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BDF9C;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100512090;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B9388;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_1005120B8;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001BAA24(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001BAAF4, 0, 0);
}

uint64_t sub_1001BAAF4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BDF9C;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100511FF0;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001B9388;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100512018;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001BAD78(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001BAE48, 0, 0);
}

uint64_t sub_1001BAE48()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BDEC8;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100511F50;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001BB0CC;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100511F78;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001BB0CC()
{

  return _swift_task_switch(sub_1001BB1AC, 0, 0);
}

uint64_t sub_1001BB1AC()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_100005518((v0 + 24), &unk_10059CC50);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    type metadata accessor for ASDError(0);
    v0[32] = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v3)
  {
    v0[33] = v4;
    sub_1001BE144(v4, v5, 1, sub_1001BDEFC);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v6 = v0[1];

    return v6();
  }

  sub_1001BDEFC(v4, v5);

  v8 = v0[1];

  return v8(v4, v5);
}

uint64_t sub_1001BB37C(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_100085D40(&unk_10059F7C0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1001BB44C, 0, 0);
}

uint64_t sub_1001BB44C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0 + 24;
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v1[35];
  v15 = v1[36];
  v9 = v1[34];
  v10 = swift_allocObject();
  v1[40] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1001BDE54;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1001BBD1C;
  v1[21] = &unk_100511EB0;
  v12 = _Block_copy(v3);
  v1[41] = v12;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001BB6D0;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059CC50);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001BBE78;
  v1[13] = &unk_100511ED8;
  [v15 asyncReadUsingSession:v12 completion:?];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001BB6D0()
{

  return _swift_task_switch(sub_1001BB7B0, 0, 0);
}

uint64_t sub_1001BB7B0()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_100005518((v0 + 24), &unk_10059CC50);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 == 255)
  {
    type metadata accessor for ASDError(0);
    v0[32] = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  if (v3)
  {
    v0[33] = v4;
    sub_1001BE1A4(v4, 1, &_swift_unknownObjectRetain);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v5 = v0[1];

    return v5();
  }

  swift_unknownObjectRetain();

  v7 = v0[1];

  return v7(v4);
}

double sub_1001BB968@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, _OWORD *a3@<X8>)
{
  a2(&v9);
  v10 = 0;
  swift_beginAccess();
  v5 = v10;
  v6 = *(a1 + 16);
  *(a1 + 16) = v9;
  v7 = *(a1 + 24);
  *(a1 + 24) = v5;
  sub_100007CF4(v6, v7);
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double sub_1001BBA1C@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, _OWORD *a3@<X8>)
{
  a2(&v9);
  HIBYTE(v10) = 0;
  swift_beginAccess();
  v5 = v10;
  v6 = *(a1 + 16);
  *(a1 + 16) = v9;
  v7 = *(a1 + 24);
  *(a1 + 24) = v5;
  sub_1001BE040(v6, v7);
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double sub_1001BBAD0@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, void (*a3)(uint64_t, uint64_t)@<X4>, _OWORD *a4@<X8>)
{
  a2(&v11);
  v12 = 0;
  swift_beginAccess();
  v7 = v12;
  v8 = *(a1 + 16);
  *(a1 + 16) = v11;
  v9 = *(a1 + 24);
  *(a1 + 24) = v7;
  a3(v8, v9);
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

double sub_1001BBB94@<D0>(uint64_t a1@<X1>, void (*a2)(__int128 *__return_ptr)@<X2>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X4>, _OWORD *a4@<X8>)
{
  a2(&v12);
  v13 = 0;
  swift_beginAccess();
  v7 = v13;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = v12;
  v10 = *(a1 + 32);
  *(a1 + 32) = v7;
  a3(v8, v9, v10);
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

double sub_1001BBC58@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, void (*a3)(uint64_t, uint64_t)@<X4>, _OWORD *a4@<X8>)
{
  a2(&v11);
  v12 = 0;
  swift_beginAccess();
  v7 = v12;
  v8 = *(a1 + 16);
  *(a1 + 16) = v11;
  v9 = *(a1 + 24);
  *(a1 + 24) = v7;
  a3(v8, v9);
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

id sub_1001BBD1C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v10, v2);

  swift_unknownObjectRelease();
  v3 = v11;
  if (v11)
  {
    v4 = sub_100005B60(v10, v11);
    v5 = *(v3 - 8);
    __chkstk_darwin(v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v7, v3);
    sub_100005A00(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1001BBE78(uint64_t a1, uint64_t a2)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a2)
  {
    *(&v7 + 1) = &type metadata for Swift.AnyObject + 8;
    *&v6 = a2;
    sub_1000828A8(&v6, &v4);
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  swift_unknownObjectRetain();
  sub_100085D40(&unk_10059F7C0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001BC1C0(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = sub_100085D40(&qword_10059F798);
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v4 = sub_100085D40(&qword_10059F7A0);
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_1001BC2F4, 0, 0);
}

uint64_t sub_1001BC2F4()
{
  v1 = v0[40];
  objc_opt_self();
  v0[47] = sub_1002BB3F0();
  v2 = swift_allocObject();
  v0[48] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_1001BC404;

  return sub_1001BB37C(sub_1001BDE20, v2);
}

uint64_t sub_1001BC404(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 400) = a1;

  v5 = *(v3 + 376);

  if (v1)
  {

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_1001BC594, 0, 0);
  }
}

uint64_t sub_1001BC594()
{
  v1 = v0[50];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v0[39];
  v3 = objc_allocWithZone(ASDCoastGuard);
  swift_unknownObjectRetain();
  v4 = [v3 init];
  v5 = sub_1003D0F1C(v2);
  if ([v4 isUnrepairableAppWithItemID:v5 externalVersionID:1])
  {
    swift_unknownObjectRelease();

LABEL_5:
    v9 = v0 + 2;
    v11 = v0[45];
    v10 = v0[46];
    v12 = v0[44];
    v13 = v0[40];
    v14 = [objc_opt_self() sharedManager];
    v0[51] = v14;
    v29 = *(v13 + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_requestToken);
    v0[2] = v0;
    v0[7] = v0 + 36;
    v0[3] = sub_1001BCA78;
    swift_continuation_init();
    v0[25] = v12;
    v15 = sub_100005F38(v0 + 22);
    sub_100085D40(&qword_10059F7A8);
    sub_100085D40(&unk_10059DE80);
    CheckedContinuation.init(continuation:function:)();
    (*(v11 + 32))(v15, v10, v12);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1001BD278;
    v0[21] = &unk_100511E10;
    [v14 reloadFromServerWithRequestToken:v29 replyHandler:?];
    (*(v11 + 8))(v15, v12);
    goto LABEL_6;
  }

  v6 = [v1 evid];
  v7 = [v6 unsignedLongLongValue];

  v8 = [v4 isUnrepairableAppWithItemID:v5 externalVersionID:v7];
  swift_unknownObjectRelease();

  if (v8)
  {
    goto LABEL_5;
  }

  v9 = v0 + 10;
  v16 = v0[42];
  v28 = v0[43];
  v18 = v0[40];
  v17 = v0[41];
  v19 = [objc_opt_self() sharedManager];
  v0[53] = v19;
  v0[54] = sub_100085D40(&unk_10059DCD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100434480;
  v21 = v18 + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_bundleID;
  v22 = *(v18 + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_bundleID);
  v0[55] = v22;
  v23 = *(v21 + 8);
  v0[56] = v23;
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[57] = isa;

  v27 = *(v18 + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_requestToken);
  v0[10] = v0;
  v0[15] = v0 + 34;
  v0[11] = sub_1001BCE24;
  swift_continuation_init();
  v0[33] = v17;
  v25 = sub_100005F38(v0 + 30);
  sub_100085D40(&unk_10059F7B0);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v16 + 32))(v25, v28, v17);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1001BD340;
  v0[29] = &unk_100511E38;
  [v19 updateAllWithOrder:isa requestToken:v27 replyHandler:?];
  (*(v16 + 8))(v25, v17);
LABEL_6:

  return _swift_continuation_await(v9);
}

uint64_t sub_1001BCA78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_1001BD0D4;
  }

  else
  {
    v2 = sub_1001BCB88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BCB88()
{

  swift_unknownObjectRelease();
  v1 = v0[42];
  v13 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = [objc_opt_self() sharedManager];
  v0[53] = v4;
  v0[54] = sub_100085D40(&unk_10059DCD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100434480;
  v6 = v3 + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_bundleID;
  v7 = *(v3 + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_bundleID);
  v0[55] = v7;
  v8 = *(v6 + 8);
  v0[56] = v8;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[57] = isa;

  v12 = *(v3 + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_requestToken);
  v0[10] = v0;
  v0[15] = v0 + 34;
  v0[11] = sub_1001BCE24;
  swift_continuation_init();
  v0[33] = v2;
  v10 = sub_100005F38(v0 + 30);
  sub_100085D40(&unk_10059F7B0);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v1 + 32))(v10, v13, v2);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1001BD340;
  v0[29] = &unk_100511E38;
  [v4 updateAllWithOrder:isa requestToken:v12 replyHandler:?];
  (*(v1 + 8))(v10, v2);

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1001BCE24()
{
  v1 = *(*v0 + 112);
  *(*v0 + 464) = v1;
  if (v1)
  {
    v2 = sub_1001BD168;
  }

  else
  {
    v2 = sub_1001BCF34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BCF34()
{
  v1 = v0[57];
  v2 = v0[35];
  swift_unknownObjectRelease();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v5 = v0[55];
    v4 = v0[56];
    v6 = v0[40];
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100434480;
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;

    swift_unknownObjectRelease();
    *(v6 + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_repairedBundleIDs) = v7;
  }

  else
  {
    type metadata accessor for ASDError(0);
    v0[38] = 916;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001BD0D4()
{
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BD168()
{
  v1 = *(v0 + 456);
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1001BD20C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_10040522C(a1, v4);

  *a2 = v5;
}

void sub_1001BD278(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100085D40(&qword_10059F7A0);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10009FAD4(0, &qword_10059DCF8);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100085D40(&qword_10059F7A0);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_1001BD340(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v5 = a4;
    sub_100085D40(&qword_10059F798);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10009FAD4(0, &qword_10059C4D0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100085D40(&qword_10059F798);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001BD598(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000FD000;

  return sub_1001BC1C0(v6);
}

uint64_t sub_1001BD730()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100085384;

  return sub_1001BD598(v2, v3, v4);
}

uint64_t sub_1001BD7E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100086B9C;

  return v6();
}

uint64_t sub_1001BD8CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100085384;

  return v7();
}

uint64_t sub_1001BD9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000044A4(a3, v23 - v10, &qword_10059C3E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100005518(v11, &qword_10059C3E0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100005518(a3, &qword_10059C3E0);

    return v21;
  }

LABEL_8:
  sub_100005518(a3, &qword_10059C3E0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1001BDCB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_1001A0494(a1, v4);
}

uint64_t sub_1001BDD68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100085384;

  return sub_1001A0494(a1, v4);
}

uint64_t sub_1001BDE88(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1001BE194(result, a2 & 1, &_swift_unknownObjectRelease);
  }

  return result;
}

uint64_t sub_1001BDEFC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1001BDF10(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001BE100(result, a2, a3 & 1, sub_100161DFC);
  }

  return result;
}

uint64_t sub_1001BDF50(uint64_t (*a1)(void))
{
  v2 = *(v1 + 24);
  if (v2 != 255)
  {
    sub_1001BE194(*(v1 + 16), v2 & 1, a1);
  }

  return _swift_deallocObject(v1, 25, 7);
}

uint64_t sub_1001BE004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001BE01C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001BE034(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1001BE040(uint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1001BE01C(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_1001BE058(void (*a1)(void, void))
{
  v2 = *(v1 + 24);
  if (v2 != 255)
  {
    a1(*(v1 + 16), v2 & 1);
  }

  return _swift_deallocObject(v1, 25, 7);
}

uint64_t sub_1001BE0B4(uint64_t (*a1)(void))
{
  v2 = *(v1 + 32);
  if (v2 != 255)
  {
    sub_1001BE100(*(v1 + 16), *(v1 + 24), v2 & 1, a1);
  }

  return _swift_deallocObject(v1, 33, 7);
}

uint64_t sub_1001BE100(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
  }

  else
  {
    return a4();
  }
}

uint64_t sub_1001BE144(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return a4();
  }
}

uint64_t sub_1001BE154(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001BE100(result, a2, a3 & 1, sub_1000A7F1C);
  }

  return result;
}

uint64_t sub_1001BE194(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
  }

  else
  {
    return a3();
  }
}

uint64_t sub_1001BE1A4(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a3();
  }
}

void sub_1001BE1E8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1001BE228(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return a2;
  }
}

void sub_1001BE234(uint64_t a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_1001BE1E8(a1, a2, a3 & 1);
  }
}

uint64_t sub_1001BE24C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1001BE3AC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    sub_1001C0808(8);

    v4 = Substring.uppercased()();
    countAndFlagsBits = v4._countAndFlagsBits;
    object = v4._object;
  }

  else
  {
    object = 0xE800000000000000;
    countAndFlagsBits = 0x3F3F3F3F3F3F3F3FLL;
  }

  v7 = objc_allocWithZone(ObjectType);
  *&v7[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v8 = &v7[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v8 = 0;
  v8[1] = 0;
  v30 = sub_1001C08F0;
  v31 = 0;
  v32 = sub_1001C08F4;
  v33 = 0;
  sub_100085D40(&unk_10059F8F0);
  sub_100003DAC(&unk_10059DCC0, &unk_10059F8F0);
  sub_100003B3C();
  v9 = Sequence<>.joined(separator:)();
  v11 = v10;
  v28 = 0;
  v29 = 0xE000000000000000;
  v12._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = countAndFlagsBits;
  v14._object = object;
  String.append(_:)(v14);

  v15 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v15 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = 47;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = 0xE100000000000000;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19._countAndFlagsBits = v9;
  v19._object = v11;
  String.append(_:)(v19);

  v20 = v29;
  v21 = &v7[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v21 = v28;
  v21[1] = v20;
  *&v7[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
  v7[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
  v27.receiver = v7;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, "init");
  v23 = v22;
  if (*&v22[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v24 = v22;
    sub_1000052DC();
  }

  swift_deallocPartialClassInstance();
  v25 = v23;
  sub_1000052DC();

  return v25;
}

id sub_1001BE678()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC9appstored6LogKey_activity])
  {
    v2 = OBJC_IVAR____TtC9appstored6LogKey_activityState;
    swift_beginAccess();
    os_activity_scope_leave(&v0[v2]);
    swift_endAccess();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001BE7A4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1000044A4(a1, v18, &unk_10059CC50);
  v4 = v19;
  if (v19)
  {
    v5 = sub_100005B60(v18, v19);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    sub_100005A00(v18);
  }

  else
  {
    v9 = 0;
  }

  v17.receiver = v1;
  v17.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v17, "isEqual:", v9);
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = 1;
    return v11 & 1;
  }

  sub_1000044A4(a1, v18, &unk_10059CC50);
  if (!v19)
  {
    sub_100005518(v18, &unk_10059CC50);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v11 = 0;
    return v11 & 1;
  }

  v12 = v16;
  if (*&v1[OBJC_IVAR____TtC9appstored6LogKey_value] == *&v16[OBJC_IVAR____TtC9appstored6LogKey_value] && *&v1[OBJC_IVAR____TtC9appstored6LogKey_value + 8] == *&v16[OBJC_IVAR____TtC9appstored6LogKey_value + 8])
  {

    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

void sub_1001BEA60(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  isa = 0;
  if (v8 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000A7F1C(v6, v8);
  }

  v10 = String._bridgeToObjectiveC()();
  [a1 encodeObject:isa forKey:v10];
  swift_unknownObjectRelease();
}

uint64_t sub_1001BEC2C(void *a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  sub_1001C08A4();
  v3 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v3)
  {
    v4 = v3;
    static Data._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

char *sub_1001BEE2C(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = ObjectType;
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = objc_allocWithZone(ObjectType);
  *&v8[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v9 = &v8[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v9 = 0;
  v9[1] = 0;
  v30 = sub_1001C08F0;
  v31 = 0;
  v32 = sub_1001C08F4;
  v33 = 0;
  sub_100085D40(&unk_10059F8F0);
  sub_100003DAC(&unk_10059DCC0, &unk_10059F8F0);
  sub_100003B3C();
  v10 = Sequence<>.joined(separator:)();
  v12 = v11;
  v28 = 0;
  v29 = 0xE000000000000000;
  v13._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v6;
  v15._object = v7;
  String.append(_:)(v15);

  v16 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v16 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = 47;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = 0xE100000000000000;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  v20._countAndFlagsBits = v10;
  v20._object = v12;
  String.append(_:)(v20);

  v21 = v29;
  v22 = &v8[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v22 = v28;
  v22[1] = v21;
  *&v8[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
  v8[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
  v27.receiver = v8;
  v27.super_class = v5;
  v23 = objc_msgSendSuper2(&v27, "init");
  v24 = v23;
  if (*&v23[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v25 = v23;
    sub_1000052DC();
  }

  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t sub_1001BF090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return a4(v5, v6);
}

char *sub_1001BF0D4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v9 = ObjectType;
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  if (!a2)
  {
    a2 = 0xE000000000000000;
  }

  if (a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = objc_allocWithZone(ObjectType);
  *&v13[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v14 = &v13[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v14 = 0;
  v14[1] = 0;
  v38 = sub_1001C08F0;
  v39 = 0;
  v40 = sub_1001C08F4;
  v41 = 0;
  sub_100085D40(&unk_10059F8F0);
  sub_100003DAC(&unk_10059DCC0, &unk_10059F8F0);
  sub_100003B3C();
  v15 = Sequence<>.joined(separator:)();
  v36 = v10;
  v37 = a2;
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v18 = v15;
  v19 = v16;
  v20 = v17 != 0;

  v21._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v11;
  v23._object = v12;
  String.append(_:)(v23);

  v24 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = 47;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = 0xE100000000000000;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v25);

  v28._countAndFlagsBits = v18;
  v28._object = v19;
  String.append(_:)(v28);

  v29 = v37;
  v30 = &v13[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v30 = v36;
  v30[1] = v29;
  *&v13[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;

  v13[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = v20;
  v35.receiver = v13;
  v35.super_class = v9;
  v31 = objc_msgSendSuper2(&v35, "init");
  v32 = v31;
  if (*&v31[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v33 = v31;
    sub_1000052DC();
  }

  swift_deallocPartialClassInstance();
  return v32;
}

char *sub_1001BF3B0(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = ObjectType;
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = objc_allocWithZone(ObjectType);
  *&v8[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v9 = &v8[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v9 = 0;
  v9[1] = 0;
  v29 = 0;
  v30 = sub_1001C08F0;
  v31 = 0;
  v32 = sub_1001C08F4;
  v33 = 0;
  sub_100085D40(&unk_10059F900);
  sub_100003DAC(&qword_10059DCE0, &unk_10059F900);
  sub_100003B3C();
  v10 = Sequence<>.joined(separator:)();
  v12 = v11;

  v27 = 0;
  v28 = 0xE000000000000000;
  v13._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = v6;
  v14._object = v7;
  String.append(_:)(v14);

  v15 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = 47;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = 0xE100000000000000;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19._countAndFlagsBits = v10;
  v19._object = v12;
  String.append(_:)(v19);

  v20 = v28;
  v21 = &v8[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v21 = v27;
  v21[1] = v20;
  *&v8[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
  v8[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
  v26.receiver = v8;
  v26.super_class = v5;
  v22 = objc_msgSendSuper2(&v26, "init");
  v23 = v22;
  if (*&v22[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v24 = v22;
    sub_1000052DC();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v23;
}

char *sub_1001BF62C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v9 = ObjectType;
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  if (a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v33 = v12;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = objc_allocWithZone(ObjectType);
  *&v14[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v15 = &v14[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v15 = 0;
  v15[1] = 0;
  v37 = sub_1001C08F0;
  v38 = 0;
  v39 = sub_1001C08F4;
  v40 = 0;
  sub_100085D40(&unk_10059F8F0);
  sub_100003DAC(&unk_10059DCC0, &unk_10059F8F0);
  sub_100003B3C();
  v16 = Sequence<>.joined(separator:)();
  v18 = v17;
  v35 = 0;
  v36 = 0xE000000000000000;
  v19._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = v10;
  v20._object = v11;
  String.append(_:)(v20);

  v21._countAndFlagsBits = v33;
  v21._object = v13;
  String.append(_:)(v21);

  v22 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v22 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = 47;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = 0xE100000000000000;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);

  v26._countAndFlagsBits = v16;
  v26._object = v18;
  String.append(_:)(v26);

  v27 = v36;
  v28 = &v14[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v28 = v35;
  v28[1] = v27;
  *&v14[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
  v14[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
  v34.receiver = v14;
  v34.super_class = v9;
  v29 = objc_msgSendSuper2(&v34, "init");
  v30 = v29;
  if (*&v29[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v31 = v29;
    sub_1000052DC();
  }

  swift_deallocPartialClassInstance();
  return v30;
}

uint64_t sub_1001BF8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
    v7 = 0;
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0;
    return a5(v7, v9, v10, v12);
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  return a5(v7, v9, v10, v12);
}

char *sub_1001BFB8C(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v29._countAndFlagsBits = v5;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  swift_stdlib_random();
  sub_1000046F8();
  v7 = String.init<A>(_:radix:uppercase:)();
  v9 = v8;
  v10 = objc_allocWithZone(ObjectType);
  *&v10[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v11 = &v10[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v11 = 0;
  v11[1] = 0;
  v33 = 0;
  v34 = sub_1001C08F0;
  v35 = 0;
  v36 = sub_1001C08F4;
  v37 = 0;
  sub_100085D40(&unk_10059F900);
  sub_100003DAC(&qword_10059DCE0, &unk_10059F900);
  sub_100003B3C();
  v12 = Sequence<>.joined(separator:)();
  v14 = v13;

  v31 = 0;
  v32 = 0xE000000000000000;
  v15._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = v29._countAndFlagsBits;
  v16._object = v6;
  String.append(_:)(v16);

  v17._countAndFlagsBits = v7;
  v17._object = v9;
  String.append(_:)(v17);

  v18 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v18 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = 47;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = 0xE100000000000000;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v21 = v20;
  String.append(_:)(*&v19);

  v22._countAndFlagsBits = v12;
  v22._object = v14;
  String.append(_:)(v22);

  v23 = v32;
  v24 = &v10[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v24 = v31;
  v24[1] = v23;
  *&v10[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
  v10[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
  v29._object = v10;
  v30 = ObjectType;
  v25 = objc_msgSendSuper2(&v29._object, "init");
  v26 = v25;
  if (*&v25[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v27 = v25;
    sub_1000052DC();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v26;
}

uint64_t sub_1001BFE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
    v7 = 0;
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    return a5(v7, v9, v10);
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return a5(v7, v9, v10);
}

id sub_1001BFEF8(uint64_t (*a1)(), unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v76 = a1;
  v7 = v4;
  ObjectType = swift_getObjectType();
  v8 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v72 - v9;
  v11 = type metadata accessor for UUID();
  v12 = __chkstk_darwin(v11);
  v14 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v17 = &v72 - v16;
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v78 = a3;
  v21 = v20;
  sub_1000044A4(a3, v10, &unk_10059EED0);
  if ((*(v21 + 48))(v10, 1, v11) == 1)
  {
    sub_100005518(v10, &unk_10059EED0);
    v77 = swift_getObjectType();
    if (a2)
    {
      v22 = v76;
    }

    else
    {
      v22 = 0;
    }

    if (a2)
    {
      v23 = a2;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v24 = ObjectType;
    v25 = objc_allocWithZone(ObjectType);
    *&v25[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
    v26 = &v25[OBJC_IVAR____TtC9appstored6LogKey_activityState];
    *v26 = 0;
    v26[1] = 0;
    v82 = sub_1001C08F8;
    v83 = 0;
    v84 = sub_1001C08F0;
    v85 = 0;
    v86 = sub_1001C08F4;
    v87 = 0;
    sub_100085D40(&unk_10059F8F0);
    sub_100003DAC(&unk_10059DCC0, &unk_10059F8F0);
    sub_100003B3C();
    v27 = Sequence<>.joined(separator:)();
    v29 = v28;
    v82 = v22;
    v83 = v23;
    v30 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v30 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v31 = v30 != 0;

    v32._countAndFlagsBits = StaticString.description.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0x3F3F3F3F3F3F3F3FLL;
    v34._object = 0xE800000000000000;
    String.append(_:)(v34);
    v35 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v35 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v36 = 47;
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = 0xE100000000000000;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v38 = v37;
    String.append(_:)(*&v36);

    v39._countAndFlagsBits = v27;
    v39._object = v29;
    String.append(_:)(v39);

    v40 = v83;
    v41 = &v25[OBJC_IVAR____TtC9appstored6LogKey_value];
    *v41 = v82;
    v41[1] = v40;
    *&v25[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;

    v25[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = v31;
    v81.receiver = v25;
    v81.super_class = v24;
    v42 = objc_msgSendSuper2(&v81, "init");
    v43 = v42;
    if (*&v42[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
    {
      v44 = v42;
      sub_1000052DC();
    }

    sub_100005518(v78, &unk_10059EED0);
  }

  else
  {
    (*(v21 + 32))(v19, v10, v11);
    v75 = v7;
    v77 = swift_getObjectType();
    v45 = v76;
    if (!a2)
    {
      v45 = 0;
    }

    v72 = v45;
    v73 = v21;
    if (a2)
    {
      v46 = a2;
    }

    else
    {
      v46 = 0xE000000000000000;
    }

    v47 = *(v21 + 16);
    v74 = v19;
    v47(v17, v19, v11);
    v47(v14, v17, v11);
    v76 = v14;
    LODWORD(v82) = bswap32(UUID.uuid.getter());
    sub_1000046F8();
    v48 = String.init<A>(_:radix:uppercase:)();
    v50 = v49;
    v51 = objc_allocWithZone(ObjectType);
    *&v51[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
    v52 = &v51[OBJC_IVAR____TtC9appstored6LogKey_activityState];
    *v52 = 0;
    v52[1] = 0;
    v82 = sub_1001C08F8;
    v83 = 0;
    v84 = sub_1001C08F0;
    v85 = 0;
    v86 = sub_1001C08F4;
    v87 = 0;
    sub_100085D40(&unk_10059F8F0);
    sub_100003DAC(&unk_10059DCC0, &unk_10059F8F0);
    sub_100003B3C();
    v53 = Sequence<>.joined(separator:)();
    v55 = v54;
    v82 = v72;
    v83 = v46;
    v56 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v56 = v72 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v72) = v56 != 0;

    v57._countAndFlagsBits = StaticString.description.getter();
    String.append(_:)(v57);

    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    String.append(_:)(v58);
    v59._countAndFlagsBits = v48;
    v59._object = v50;
    String.append(_:)(v59);

    v60 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v60 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v60)
    {
      v61 = 47;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = 0xE100000000000000;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    v63 = v62;
    String.append(_:)(*&v61);

    v64._countAndFlagsBits = v53;
    v64._object = v55;
    String.append(_:)(v64);

    v65 = v83;
    v66 = &v51[OBJC_IVAR____TtC9appstored6LogKey_value];
    *v66 = v82;
    v66[1] = v65;
    *&v51[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;

    v51[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = v72;
    v80.receiver = v51;
    v80.super_class = ObjectType;
    v67 = objc_msgSendSuper2(&v80, "init");
    v68 = v67;
    if (*&v67[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
    {
      v69 = v67;
      sub_1000052DC();
    }

    v43 = v68;
    sub_1000052DC();

    v70 = *(v73 + 8);
    v70(v17, v11);
    v70(v76, v11);
    sub_100005518(v78, &unk_10059EED0);
    v70(v74, v11);
  }

  swift_deallocPartialClassInstance();
  return v43;
}

uint64_t sub_1001C07B0()
{
  qword_10059F7D0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_1001C07EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    *a2 = *a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C0808(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t sub_1001C08A4()
{
  result = qword_10059F920;
  if (!qword_10059F920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10059F920);
  }

  return result;
}

char *sub_1001C08FC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 objectForKeyedSubscript:BAInitialRestrictionsEssentialDownloadAllowance];
  objc_opt_class();
  v3 = sub_1001C09E4(v2);

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 objectForKeyedSubscript:BAInitialRestrictionsDownloadAllowance];
  objc_opt_class();
  v6 = sub_1001C09E4(v5);

  if (v6)
  {
    v4 = &v4[[v6 unsignedLongLongValue]];
  }

  return v4;
}

id sub_1001C09E4(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1001C0ABC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1001C0AD4(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1001C0ABC;
    v14 = sub_1001C0ACC;
    v15 = 0;
    v5 = a1[2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001C0C0C;
    v7[3] = &unk_10051AE98;
    v9 = &v10;
    v7[4] = a1;
    v8 = v3;
    sub_100379C5C(v5, v7);
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_1001C0BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C0C0C(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001C0C5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 16);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001C0D24;
    v9[3] = &unk_10051AEE8;
    v9[4] = a1;
    v10 = v6;
    v11 = v5;
    sub_100379C5C(v8, v9);
  }
}

id sub_1001C0DF0()
{
  objc_opt_self();
  if (qword_1005AA720 != -1)
  {
    dispatch_once(&qword_1005AA720, &stru_10051AF08);
  }

  v0 = qword_1005AA718;

  return v0;
}

void sub_1001C0E48(id a1)
{
  v1 = objc_alloc_init(Environment);
  v2 = qword_1005AA718;
  qword_1005AA718 = v1;
}

id sub_1001C0EC4(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 24);
    if (!v2)
    {
      objc_opt_self();
      v3 = sub_10029C3FC();
      v4 = [v3 stringByAppendingPathComponent:@"storeSystem.db"];

      v5 = sub_100271284([SQLiteConnectionOptions alloc], v4);
      v6 = sub_100200E90([SQLiteDatabase alloc], v5);
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;

      v2 = *(a1 + 24);
    }

    v8 = v2;
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1001C0FB8(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 16);
    if (!v2)
    {
      v3 = sub_10029BDD4();
      v4 = [v3 stringByAppendingPathComponent:@"storeUser.db"];

      v5 = sub_100271284([SQLiteConnectionOptions alloc], v4);
      v6 = sub_100200E90([SQLiteDatabase alloc], v5);
      v7 = *(a1 + 16);
      *(a1 + 16) = v6;

      v2 = *(a1 + 16);
    }

    v8 = v2;
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1001C13C8()
{
  objc_opt_self();
  if (qword_1005AA730 != -1)
  {
    dispatch_once(&qword_1005AA730, &stru_10051AF48);
  }

  v0 = qword_1005AA728;

  return v0;
}

void sub_1001C1420(id a1)
{
  v1 = objc_alloc_init(ODRBackgroundMaintenance);
  v2 = qword_1005AA728;
  qword_1005AA728 = v1;
}

void sub_1001C14D8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Cancelling maintenance operations.", buf, 2u);
    }

    v3 = v1[1];
    if (v3)
    {
      [*(v3 + 8) cancelAllOperations];
      v4 = v1[1];
      if (v4)
      {
        [*(v4 + 8) waitUntilAllOperationsAreFinished];
      }
    }

    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "All maintenance operations should now be complete.", v6, 2u);
    }

    objc_sync_exit(v1);
  }
}

void sub_1001C15E8(uint64_t a1)
{
  if (a1)
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136446210;
      v7 = "[ODRBackgroundMaintenance startBackgroundMaintenanceOperations]";
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%{public}s", &v6, 0xCu);
    }

    v3 = *(a1 + 8);
    v4 = objc_opt_new();
    if (v3)
    {
      [*(v3 + 8) addOperation:v4];
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      [*(v5 + 8) waitUntilAllOperationsAreFinished];
    }
  }
}

id sub_1001C1764(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7 = NSUnderlyingErrorKey;
    v3 = ASDErrorWithSafeUserInfo();
    v8 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSError errorWithDomain:@"IAPInfoItemsRequestOperationErrorDomain" code:a1 userInfo:v4];

  return v5;
}

id *sub_1001C1850(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = SystemAppBootstrapTask;
    a1 = objc_msgSendSuper2(&v21, "init");
    if (a1)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = a1[5];
      a1[5] = v4;

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = v3;
      v6 = v3;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = sub_10023E0F8(v11, @"bundle_id");
            if (v12)
            {
              v13 = [v11 copy];
              [a1[5] setObject:v13 forKeyedSubscript:v12];
            }

            else
            {
              v13 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Refusing to bootstrap system app with missing bundle identifier", buf, 2u);
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v8);
      }

      v3 = v15;
    }
  }

  return a1;
}

void *sub_1001C2464(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = ODRApplicationPurgeTask;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v6 = [v5 copy];
      v7 = a1[5];
      a1[5] = v6;

      a1[6] = a3;
    }
  }

  return a1;
}

void *sub_1001C2588(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = sub_100208FBC();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001C2624;
    v3[3] = &unk_10051AF70;
    v3[4] = v1;
    [v2 modifyUsingTransaction:v3];

    return [v1 completeWithSuccess];
  }

  return result;
}

void *sub_1001C27FC(void *a1, void *a2)
{
  v3 = a2;
  if (a1 && (v50.receiver = a1, v50.super_class = ClipDownloadVariant, (v4 = objc_msgSendSuper2(&v50, "init")) != 0))
  {
    v5 = v4;
    v6 = sub_1002380D8(v3, @"assetToken");
    v7 = v5[2];
    v5[2] = v6;

    v8 = sub_100238210(v3, @"assetUrl");
    v9 = v5[1];
    v5[1] = v8;

    v10 = sub_1002380D8(v3, @"md5");
    v11 = v5[3];
    v48 = v5;
    v5[3] = v10;

    v49 = v3;
    v12 = sub_100237778(v3, @"targets");
    objc_opt_self();
    v13 = objc_alloc_init(NSMutableArray);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v47 = v12;
    v14 = sub_100396BF0(v12);
    v15 = [v14 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v52;
      do
      {
        v18 = 0;
        do
        {
          if (*v52 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = sub_100228B7C(VariantDescriptor, *(*(&v51 + 1) + 8 * v18), 1);
          if (v19)
          {
            [v13 addObjectsFromArray:v19];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v16);
    }

    v20 = [v13 copy];
    v21 = v48[5];
    v48[5] = v20;

    v22 = sub_100237778(v49, @"deltasInfo");
    objc_opt_self();
    v23 = objc_alloc_init(NSMutableArray);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v46 = v22;
    v24 = sub_100396BF0(v22);
    v25 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v52;
      do
      {
        v28 = 0;
        do
        {
          if (*v52 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v51 + 1) + 8 * v28);
          v30 = [ClipDownloadVariantDelta alloc];
          v31 = v29;
          if (v30)
          {
            v55.receiver = v30;
            v55.super_class = ClipDownloadVariantDelta;
            v30 = objc_msgSendSuper2(&v55, "init");
            if (v30)
            {
              v32 = sub_1002380D8(v31, @"assetToken");
              assetToken = v30->_assetToken;
              v30->_assetToken = v32;

              v34 = sub_100238210(v31, @"assetUrl");
              assetURL = v30->_assetURL;
              v30->_assetURL = v34;

              v36 = sub_1002380D8(v31, @"md5");
              md5 = v30->_md5;
              v30->_md5 = v36;

              v38 = sub_1002380D8(v31, @"fromAssetToken");
              fromAssetToken = v30->_fromAssetToken;
              v30->_fromAssetToken = v38;

              v40 = sub_10023790C(v31, @"previousExternalVersionId");
              previousExternalVersionID = v30->_previousExternalVersionID;
              v30->_previousExternalVersionID = v40;
            }
          }

          [v23 addObject:v30];
          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v26);
    }

    v42 = [v23 copy];
    v43 = v48;
    v44 = v48[4];
    v48[4] = v42;

    v3 = v49;
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

id sub_1001C2C30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = *(a1 + 32);
    v5 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          if (v10)
          {
            Property = objc_getProperty(*(*(&v14 + 1) + 8 * v9), v7, 32, 1);
          }

          else
          {
            Property = 0;
          }

          if ([Property isEqualToString:{v4, v14}])
          {
            v5 = v10;
            goto LABEL_17;
          }

          v9 = v9 + 1;
        }

        while (v5 != v9);
        v12 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v5 = v12;
      }

      while (v12);
    }

LABEL_17:
  }

  return v5;
}

id sub_1001C2F98(void *a1)
{
  if (a1)
  {
    a1 = sub_1001C2FCC(a1, 0);
    v1 = vars8;
  }

  return a1;
}

id sub_1001C2FCC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1001C50B0;
    v13 = sub_1001C50C0;
    v14 = objc_opt_new();
    v4 = [a1 connection];
    v5 = sub_1002D4C68(ODRAssetDownload, v4, v3);

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C50C8;
    v8[3] = &unk_10051B010;
    v8[4] = &v9;
    [v5 enumerateMemoryEntitiesUsingBlock:v8];
    v6 = [NSArray arrayWithArray:v10[5]];

    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1001C3134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001C314C(void *a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [a1 connection];
    v4 = sub_1002D4C68(ODRManifest, v3, 0);

    v11 = @"bundle_id";
    v5 = [NSArray arrayWithObjects:&v11 count:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001C32C4;
    v9[3] = &unk_10051B038;
    v10 = v2;
    v6 = v2;
    [v4 enumerateMemoryEntitiesWithProperties:v5 usingBlock:v9];

    v7 = [NSArray arrayWithArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1001C32C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10023E0F8(a2, @"bundle_id");
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

uint64_t sub_1001C3330(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1001C34B8(a1, v3);
    v5 = sub_1001FE38C(ODRAssetPack, v3);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = sub_100269390(*(*(&v13 + 1) + 8 * i));
          v11 = [v10 absoluteString];

          if (v11 && [v11 hasPrefix:v5])
          {

            v7 = 1;
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1001C34B8(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_10039A6A0(a2);
    v2 = sub_1001C3840(v2, v3, 0);
  }

  return v2;
}

id sub_1001C351C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];
      a1 = sub_1001C2FCC(a1, v5);
    }

    else
    {
      a1 = &__NSArray0__struct;
    }
  }

  return a1;
}

id sub_1001C35B0(id a1, uint64_t a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a2];
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_key" equalToValue:v5];

    v12[0] = v6;
    v12[1] = v7;
    v8 = [NSArray arrayWithObjects:v12 count:2];
    v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

    v10 = [v3 connection];
    v3 = sub_1002D4B20(ODRAssetDownload, v10, v9);
  }

  return v3;
}

id sub_1001C3700(id a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"coordinator_id" equalToValue:a2];
    v6 = [NSNumber numberWithInteger:a3];
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v6];

    v11[0] = v5;
    v11[1] = v7;
    v8 = [NSArray arrayWithObjects:v11 count:2];
    v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

    v3 = sub_1001C2FCC(v3, v9);
  }

  return v3;
}

id sub_1001C3840(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v5];
      v8 = [NSMutableArray arrayWithObjects:v7, 0];
      if (a3)
      {
        v9 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"local_url"];
        [v8 addObject:v9];
      }

      v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];
      a1 = sub_1001C3B00(a1, v10, 0);
    }

    else
    {
      a1 = &__NSArray0__struct;
    }
  }

  return a1;
}

id sub_1001C3958(void *a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    a1 = sub_1001C3988(a1, a2, a3, a4);
    v4 = vars8;
  }

  return a1;
}

id sub_1001C3988(id a1, void *a2, uint64_t a3, void *a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = sub_1001C50DC(a2, a3, a4);
    v8[0] = @"effective_preservation_priority";
    v8[1] = @"last_used_date";
    v6 = [NSArray arrayWithObjects:v8 count:2];
    v4 = sub_1001C52CC(v4, v5, v6, 0);
  }

  return v4;
}

id sub_1001C3A68(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_key" equalToValue:a2];
    v4 = [v2 connection];
    v2 = sub_1002D4B20(ODRAssetPack, v4, v3);
  }

  return v2;
}

id sub_1001C3B00(void *a1, void *a2, char a3)
{
  v3 = sub_1001C52CC(a1, a2, 0, a3);

  return v3;
}

id sub_1001C3B34(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 absoluteString];
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"local_url" equalToValue:v3];

    v5 = [v2 connection];
    v2 = sub_1002D4B20(ODRAssetPack, v5, v4);
  }

  return v2;
}

id sub_1001C3BE8(id a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a2;
    v6 = sub_10039A6A0(a3);
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v6];

    v8 = [v5 allObjects];

    v9 = [SQLiteContainsPredicate containsPredicateWithProperty:@"name" values:v8];

    v25[0] = v7;
    v25[1] = v9;
    v10 = [NSArray arrayWithObjects:v25 count:2];
    v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

    v12 = objc_opt_new();
    v13 = [v3 connection];
    v14 = sub_1002D3F5C(ODRTagEntity, v13, v11);

    v24 = @"bundle_key";
    v15 = [NSArray arrayWithObjects:&v24 count:1];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001C3E98;
    v21[3] = &unk_10051B038;
    v22 = v12;
    v16 = v12;
    [v14 enumerateMemoryEntitiesWithProperties:v15 usingBlock:v21];

    v17 = [SQLiteContainsPredicate containsPredicateWithProperty:@"bundle_key" values:v16];
    v23[0] = v7;
    v23[1] = v17;
    v18 = [NSArray arrayWithObjects:v23 count:2];
    v19 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v18];

    v3 = sub_1001C3B00(v3, v19, 0);
  }

  return v3;
}

void sub_1001C3E98(uint64_t a1, uint64_t a2)
{
  v3 = sub_10023E0F8(a2, @"bundle_key");
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

id sub_1001C3F04(void *a1, void *a2)
{
  if (a1)
  {
    a1 = sub_1001C3840(a1, a2, 1);
    v2 = vars8;
  }

  return a1;
}

void sub_1001C3F38(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {
    v9 = a5;
    v10 = sub_1001C50DC(a2, a3, a4);
    v20[0] = @"effective_preservation_priority";
    v20[1] = @"last_used_date";
    v11 = [NSArray arrayWithObjects:v20 count:2];
    v12 = v9;
    v13 = v11;
    v14 = v10;
    v15 = [a1 connection];
    v16 = sub_1002D4D18(ODRAssetPack, v15, v14, v13);

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001C54E0;
    v18[3] = &unk_10051AFE8;
    v17 = v12;
    v19 = v17;
    [v16 enumerateMemoryEntitiesUsingBlock:v18];
  }
}

id sub_1001C40CC(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && (sub_10039A6A0(v3), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_opt_new();
    v7 = sub_10039A6A0(v4);
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v7];
    [v6 addObject:v8];

    v9 = sub_10039B05C(v4);

    if (v9)
    {
      v10 = sub_10039B05C(v4);
      v11 = [SQLiteComparisonPredicate predicateWithProperty:@"evid" equalToValue:v10];
      [v6 addObject:v11];
    }

    v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];
    v13 = [a1 connection];
    v14 = sub_1002D4B20(ODRManifest, v13, v12);

    v15 = sub_1001C34B8(a1, v4);
    sub_100281080(v14, v15);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1001C427C(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_10039A6A0(a2);
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];

    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"download_priority" equalToValue:&off_100546D80];
    v9[0] = v4;
    v9[1] = v5;
    v6 = [NSArray arrayWithObjects:v9 count:2];
    v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

    v2 = sub_1001C3B00(v2, v7, 1);
  }

  return v2;
}

id sub_1001C43B8(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_10039A6A0(a2);
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];

    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"download_priority" value:&off_100546D98 comparisonType:5];
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"download_priority" value:&off_100546D80 comparisonType:3];
    v10[0] = v4;
    v10[1] = v5;
    v10[2] = v6;
    v7 = [NSArray arrayWithObjects:v10 count:3];
    v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

    v2 = sub_1001C3B00(v2, v8, 1);
  }

  return v2;
}

id sub_1001C4524(void *a1)
{
  if (a1)
  {
    a1 = sub_1001C3988(a1, 0, 0, 0);
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1001C4560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_10039B1A4(v3))
    {
      v12 = 0;
      v5 = sub_1001C4714(a1, v4, &v12);
      v6 = v12;
      if (v5)
      {
        if (sub_1001C3330(a1, v4))
        {
          a1 = 4;
        }

        else
        {
          v8 = sub_1001C4808(a1, v4);
          v9 = [v8 count];

          if (v9)
          {
            a1 = 5;
          }

          else
          {
            a1 = 3;
          }
        }
      }

      else if (ASDErrorIsEqual())
      {
        a1 = 2;
      }

      else
      {
        if ((ASDErrorIsEqual() & 1) == 0)
        {
          v10 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v14 = v4;
            v15 = 2114;
            v16 = v6;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Forcing refresh after unexpected failure validating manifest during preflight for %{public}@ error: %{public}@", buf, 0x16u);
          }
        }

        a1 = 3;
      }
    }

    else
    {
      v7 = sub_1001C40CC(a1, v4);
      a1 = v7 == 0;
    }
  }

  return a1;
}

uint64_t sub_1001C4714(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = sub_1001C40CC(a1, v5);
    v7 = v6;
    if (v6)
    {
      v8 = sub_100280CE4(v6);
      v9 = sub_10039B79C(v5);
      v10 = v9;
      if (v8 && v9 && ([v8 isEqualToString:v9] & 1) != 0)
      {
        v11 = 1;
      }

      else if (a3)
      {
        [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:118 userInfo:0];
        *a3 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_1001C4808(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_10039A6A0(a2);
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];

    v2 = sub_1001C4AE4(v2, v4);
  }

  return v2;
}

id sub_1001C489C(void *a1)
{
  if (a1)
  {
    a1 = sub_1001C3988(a1, 0, 1, 0);
    v1 = vars8;
  }

  return a1;
}

id sub_1001C48D8(id a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = sub_10039A6A0(a3);
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v5];

    v7 = [NSNumber numberWithInteger:a2];
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"purge_reason" equalToValue:v7];

    v12[0] = v6;
    v12[1] = v8;
    v9 = [NSArray arrayWithObjects:v12 count:2];
    v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

    v3 = sub_1001C3B00(v3, v10, 0);
  }

  return v3;
}

id sub_1001C4A38(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a2];
    v4 = [v2 connection];
    v5 = sub_1002D4B20(ODRManifest, v4, v3);

    v2 = sub_100280C74(v5);
  }

  return v2;
}

id sub_1001C4AE4(void *a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1001C50B0;
  v13 = sub_1001C50C0;
  v14 = objc_opt_new();
  v4 = [a1 connection];
  v5 = sub_1002D4C68(ODRTag, v4, v3);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C5558;
  v8[3] = &unk_10051B010;
  v8[4] = &v9;
  [v5 enumerateMemoryEntitiesUsingBlock:v8];
  v6 = [NSArray arrayWithArray:v10[5]];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1001C4C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001C4C58(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_key" equalToValue:a2];
    v2 = sub_1001C4AE4(v2, v3);
  }

  return v2;
}

id sub_1001C4CC8(id a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a2;
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a3];
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"name" equalToValue:v5];

    v12[0] = v6;
    v12[1] = v7;
    v8 = [NSArray arrayWithObjects:v12 count:2];
    v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

    v10 = [v3 connection];
    v3 = sub_1002D4B20(ODRTag, v10, v9);
  }

  return v3;
}

void **sub_1001C4E18(void **a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];
      v10[0] = v5;
      v6 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"local_url"];
      v10[1] = v6;
      v7 = [NSArray arrayWithObjects:v10 count:2];
      v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

      a1 = sub_1002D45CC(ODRAssetPackEntity, @"uncompressed_size", v8, a1[1]);
    }

    else
    {
      a1 = &off_100546D98;
    }
  }

  return a1;
}

void **sub_1001C4F60(void **a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];
      v10[0] = v5;
      v6 = [SQLiteComparisonPredicate predicateWithProperty:@"pin_count" value:&off_100546D98 comparisonType:5];
      v10[1] = v6;
      v7 = [NSArray arrayWithObjects:v10 count:2];
      v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

      a1 = sub_1002D45CC(ODRAssetPackEntity, @"uncompressed_size", v8, a1[1]);
    }

    else
    {
      a1 = &off_100546D98;
    }
  }

  return a1;
}

uint64_t sub_1001C50B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1001C50DC(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 5;
  }

  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"pin_count" value:&off_100546D98 comparisonType:v7];
  v9 = [NSNumber numberWithBool:a2];
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"purgeable" equalToValue:v9];

  v11 = [NSMutableArray arrayWithObjects:v8, v10, 0];
  if (v5)
  {
    v12 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v5];
    [v11 addObject:v12];
  }

  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    v14 = [SQLiteComparisonPredicate predicateWithProperty:@"last_used_date" value:v13 comparisonType:3];

    [v11 addObject:v14];
  }

  objc_opt_self();
  v15 = [SQLiteComparisonPredicate predicateWithProperty:@"effective_always_preserve" equalToValue:&off_100546D98];
  [v11 addObject:v15];

  v16 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

  return v16;
}

id sub_1001C52CC(void *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001C50B0;
  v19 = sub_1001C50C0;
  v20 = objc_opt_new();
  v9 = [a1 connection];
  v10 = sub_1002D4D18(ODRAssetPack, v9, v7, v8);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001C5464;
  v13[3] = &unk_10051AFC0;
  v14 = a4;
  v13[4] = &v15;
  [v10 enumerateMemoryEntitiesUsingBlock:v13];
  v11 = [NSArray arrayWithArray:v16[5]];

  _Block_object_dispose(&v15, 8);

  return v11;
}

void sub_1001C544C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C5464(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) != 1 || (sub_100269CA8(v3) & 1) == 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void sub_1001C54E0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
}

id *sub_1001C5584(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = _ProtocolHandler;
    v4 = objc_msgSendSuper2(&v6, "init");
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

void *sub_1001C5944(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = StoreDRM;
    a1 = objc_msgSendSuper2(&v8, "init");
    if (a1)
    {
      v4 = sub_100396BF0(v3);
      v5 = sub_1004024C4(v4, &stru_10051B078);
      v6 = a1[1];
      a1[1] = v5;
    }
  }

  return a1;
}

id sub_1001C59DC(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = sub_100339970([StoreSinf alloc], v2);

  return v3;
}

id *sub_1001C5A34(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = a1[1];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
LABEL_4:
      v9 = 0;
      v10 = v7;
      while (1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = sub_1003399E4(*(*(&v13 + 1) + 8 * v9), v3);

        if ([v7 length])
        {
          break;
        }

        v9 = v9 + 1;
        v10 = v7;
        if (v6 == v9)
        {
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if ([v7 length])
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    a1 = v11;
  }

  return a1;
}

uint64_t sub_1001C5BA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if ([v7 count])
    {
      v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          v14 = 0;
          do
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v24 + 1) + 8 * v14) adamId];
            if (v15)
            {
              [v9 addObject:v15];
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);
      }

      if ([v9 count])
      {
        v16 = sub_100402F34([v9 count]);
        v17 = [NSString stringWithFormat:@"DELETE FROM iap_info_iaps WHERE dsid = ? AND adam_id IN (%@)", v16];;

        v18 = *(a1 + 8);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1001C5E00;
        v21[3] = &unk_10051B0C8;
        v22 = v8;
        v23 = v9;
        v19 = sub_10022C810(v18, v17, a4, v21);
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_1001C5E00(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNumber:*(a1 + 32) atPosition:1];
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C5EA8;
  v6[3] = &unk_10051B0A0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

uint64_t sub_1001C5EB8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v34 = a1;
  v35 = a3;
  if (a1)
  {
    if ([v5 count])
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v5;
      v6 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v37;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v37 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v36 + 1) + 8 * i);
            v11 = [v10 adamId];

            if (v11)
            {
              v12 = objc_alloc_init(NSMutableDictionary);
              [v12 setObject:v35 forKeyedSubscript:@"dsid"];
              v13 = [v10 adamId];
              [v12 setObject:v13 forKeyedSubscript:@"adam_id"];

              v14 = [v10 appAdamId];
              [v12 setObject:v14 forKeyedSubscript:@"app_adam_id"];

              v15 = [v10 purchaseDate];
              [v12 setObject:v15 forKeyedSubscript:@"purchase_date"];

              v16 = [v10 lastModifiedDate];
              [v12 setObject:v16 forKeyedSubscript:@"last_modified_date"];

              v17 = [v10 expirationDate];
              [v12 setObject:v17 forKeyedSubscript:@"expiration_date"];

              v18 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v10 type]);
              [v12 setObject:v18 forKeyedSubscript:@"type"];

              v19 = [v10 subscriptionFamilyId];
              [v12 setObject:v19 forKeyedSubscript:@"sub_family_id"];

              v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 autoRenewStatus]);
              [v12 setObject:v20 forKeyedSubscript:@"auto_renew_status"];

              v21 = [v10 hasUsedFreeOffer];
              if ([v10 hasUsedIntroPricingOffer])
              {
                v22 = v21 | 2;
              }

              else
              {
                v22 = v21;
              }

              v23 = [NSNumber numberWithInt:v22];
              [v12 setObject:v23 forKeyedSubscript:@"intro_offer_status"];

              v24 = [IAPInfoIAPEntity alloc];
              v25 = [v34 connection];
              v26 = [(SQLiteEntity *)v24 initWithPropertyValues:v12 onConnection:v25];

              LODWORD(v25) = [(SQLiteEntity *)v26 existsInDatabase];
              if (!v25)
              {
                v30 = 0;
                goto LABEL_22;
              }
            }

            else
            {
              v27 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = objc_opt_class();
                v32 = v28;
                v29 = [v10 appAdamId];
                *buf = 138412802;
                v41 = v28;
                v42 = 2114;
                v43 = v29;
                v44 = 2112;
                v45 = v35;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%@]: Trying to insert IAP with nil adamId. App adamId: %{public}@, accountID: %@", buf, 0x20u);
              }
            }
          }

          v7 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
        }

        while (v7);
        v30 = 1;
      }

      else
      {
        v30 = 1;
      }

LABEL_22:
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

uint64_t sub_1001C6334(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 connection];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001C6408;
    v9[3] = &unk_10051B0F0;
    v10 = v5;
    v7 = sub_10022C810(v6, @"DELETE FROM iap_info_iaps WHERE dsid = ?;", a3, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_1001C6418(void *result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v6 = result;
    v7 = a3;
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%i", [a2 intValue]);
    v9 = sub_100301CF0(IAPInfoDatabaseSession, v7);

    v10 = sub_1001C64D4(v6, v8, v9, a4);
    return v10;
  }

  return result;
}

uint64_t sub_1001C64D4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a1 connection];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001C6674;
  v14[3] = &unk_10051B0C8;
  v10 = v7;
  v15 = v10;
  v11 = v8;
  v16 = v11;
  v12 = sub_10022C810(v9, @"INSERT OR REPLACE INTO iap_info_db_properties (value, key) VALUES (?, ?);", a4, v14);

  return v12;
}

void *sub_1001C65CC(void *result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v6 = result;
    v7 = a3;
    [a2 timeIntervalSince1970];
    v8 = [NSNumber numberWithDouble:?];
    v9 = sub_100301AA4(IAPInfoDatabaseSession, v7);

    v10 = sub_1001C64D4(v6, v8, v9, a4);
    return v10;
  }

  return result;
}

void sub_1001C6674(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_100402CF4(v4, 1, v3);
  [v4 bindString:*(a1 + 40) atPosition:2];
}

id *sub_1001C66D8(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = FetchTVProviderAppsTask;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 5, a2);
    }
  }

  return a1;
}

void sub_1001C6968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C69B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001C69C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v6)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 32) + 64);
      v12 = 138412546;
      v13 = v11;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Error fetching identity provider apps: %{public}@", &v12, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  if ([v5 count])
  {
    v9 = [NSSet setWithArray:v5];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = WeakRetained[7];
  WeakRetained[7] = v9;

  dispatch_semaphore_signal(*(a1 + 40));
}

id *sub_1001C6BA8(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = UPPManifestAsset;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

id *sub_1001C6C20(id *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_1001C6C9C(a1);
    v4 = [v3 isEqualToString:@"software-receipt"];

    if (v4)
    {
      a1 = sub_100237B38(v2[1], @"data");
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}

id *sub_1001C6C9C(id *a1)
{
  if (a1)
  {
    a1 = sub_1002380D8(a1[1], @"kind");
    v1 = vars8;
  }

  return a1;
}

id *sub_1001C6CD8(id *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_1001C6C9C(a1);
    v4 = [v3 isEqualToString:@"software-SINF"];

    if (v4)
    {
      a1 = sub_100237B38(v2[1], @"data");
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}

id *sub_1001C6D54(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100237778(a1[1], @"md5s");
    if (!v2)
    {
      v3 = sub_1002380D8(v1[1], @"md5");
      v4 = v3;
      if (v3)
      {
        v7 = v3;
        v2 = [NSArray arrayWithObjects:&v7 count:1];
      }

      else
      {
        v2 = 0;
      }
    }

    v5 = sub_100396CC8(v2);
    v1 = [v5 allObjects];
  }

  return v1;
}

void **sub_1001C6E50(void **a1)
{
  if (a1)
  {
    a1 = sub_10023790C(a1[1], @"md5-size");
    v1 = vars8;
  }

  return a1;
}

id *sub_1001C6E8C(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100237778(a1[1], @"sha256s");
    if (!v2)
    {
      v3 = sub_1002380D8(v1[1], @"sha256");
      v4 = v3;
      if (v3)
      {
        v7 = v3;
        v2 = [NSArray arrayWithObjects:&v7 count:1];
      }

      else
      {
        v2 = 0;
      }
    }

    v5 = sub_100396CC8(v2);
    v1 = [v5 allObjects];
  }

  return v1;
}

void **sub_1001C6F88(void **a1)
{
  if (a1)
  {
    a1 = sub_10023790C(a1[1], @"sha256-size");
    v1 = vars8;
  }

  return a1;
}

id sub_1001C6FC4(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1002380D8(*(a1 + 8), @"url");
    if (v1)
    {
      v2 = [NSURL URLWithString:v1];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1001C7040(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_100237778(*(a1 + 8), @"variantDescriptors");
    v2 = sub_100396BF0(v1);

    v3 = sub_1004022E4(v2, &stru_10051B160);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001C70D0(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_100237778(*(a1 + 8), @"variantIds");
    v2 = sub_100396CC8(v1);

    v3 = sub_1004024C4(v2, &stru_10051B1A0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001C7150(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100229018([VariantDescriptor alloc], v2);

  return v3;
}

IAPInfoItemsRequestContext *sub_1001C71B4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  objc_opt_self();
  v12 = [IAPInfoItemsRequestContext alloc];
  v14 = [v8 processInfo];
  if (v8)
  {
    Property = objc_getProperty(v8, v13, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v16 = Property;

  v17 = v11;
  v18 = v10;
  v19 = v9;
  v20 = v14;
  v21 = v16;
  if (v12)
  {
    v25.receiver = v12;
    v25.super_class = IAPInfoItemsRequestContext;
    v12 = objc_msgSendSuper2(&v25, "init");
    if (v12)
    {
      v22 = [v17 copy];
      knownIAPs = v12->_knownIAPs;
      v12->_knownIAPs = v22;

      objc_storeStrong(&v12->_revision, a3);
      objc_storeStrong(&v12->_account, a4);
      objc_storeStrong(&v12->_clientInfo, v14);
      objc_storeStrong(&v12->_logKey, Property);
    }
  }

  return v12;
}

id sub_1001C73A4()
{
  objc_opt_self();
  if (qword_1005AA740 != -1)
  {
    dispatch_once(&qword_1005AA740, &stru_10051B1E0);
  }

  v0 = qword_1005AA738;

  return v0;
}

void sub_1001C73FC(id a1)
{
  v1 = objc_alloc_init(URLSessionManager);
  v2 = qword_1005AA738;
  qword_1005AA738 = v1;
}

id sub_1001C74B8(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [AMSMutableLazyPromise alloc];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001C75A4;
    v9[3] = &unk_10051B2A8;
    v9[4] = a1;
    v10 = v5;
    v11 = v6;
    a1 = [v7 initWithBlock:v9];
  }

  return a1;
}

void sub_1001C75A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BagService appstoredService];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C7684;
  v8[3] = &unk_10051B280;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  [v4 recentBagWithCompletionHandler:v8];
}

void sub_1001C7684(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else
  {
    v6 = *(*(a1 + 40) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C7780;
    block[3] = &unk_10051B258;
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    v12 = v5;
    v13 = *(a1 + 56);
    v14 = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void sub_1001C7780(uint64_t a1)
{
  v2 = sub_10033CA88(*(a1 + 32));
  if (!v2)
  {
    v2 = sub_10000479C();
  }

  if (*(a1 + 40))
  {
    v3 = sub_10024AA54(AMSURLSession, v2, *(a1 + 48), 0);
    v4 = objc_alloc_init(URLResponseDecoder);
    [v3 setResponseDecoder:v4];
  }

  else
  {
    v3 = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001C794C;
  v14[3] = &unk_10051B208;
  v5 = *(a1 + 56);
  v15 = *(a1 + 64);
  v6 = [v3 dataTaskWithRequest:v5 completionHandler:v14];
  v7 = [v3 responseDecoder];
  sub_10020ED5C(v7, *(a1 + 32), v6);
  [v6 resume];
  v8 = *(a1 + 64);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001C7960;
  v11[3] = &unk_10051B230;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 addErrorBlock:v11];
}

id sub_1001C794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithResult:a2];
  }
}

void sub_1001C7960(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 1 || objc_msgSend(v3, "code") == 3072)
  {
    [*(a1 + 32) cancel];
  }

  sub_10020EC84(*(a1 + 40), *(a1 + 32));
}

id *sub_1001C79DC(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  if (a1)
  {
    v88.receiver = a1;
    v88.super_class = ClipSession;
    v10 = objc_msgSendSuper2(&v88, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a3);
      objc_storeStrong(a1 + 4, a5);
      objc_storeStrong(a1 + 19, a4);
      v11 = [v9 uniqueID];
      v12 = a1[7];
      a1[7] = v11;

      v13 = [NSProgress progressWithTotalUnitCount:2];
      v14 = a1[17];
      a1[17] = v13;

      v15 = [NSProgress progressWithTotalUnitCount:100];
      v16 = a1[18];
      a1[18] = v15;

      [a1[17] addChild:a1[18] withPendingUnitCount:1];
      [a1[17] addObserver:a1 forKeyPath:@"fractionCompleted" options:1 context:0];
      v17 = sub_1002332F8([ClipDownloadData alloc], v9, a1[4]);
      v18 = a1[11];
      a1[11] = v17;

      v20 = [_TtC9appstored6LogKey alloc];
      v21 = a1[7];
      Property = a1[11];
      if (Property)
      {
        Property = objc_getProperty(Property, v19, 32, 1);
      }

      v24 = Property;
      v25 = a1[11];
      if (v25)
      {
        v25 = objc_getProperty(v25, v23, 8, 1);
      }

      v26 = v25;
      v27 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v26 longLongValue]);
      v84 = [(LogKey *)v20 initWithBatchLogKey:0 logCode:@"CLP" externalID:v21 bundleID:v24 itemID:v27];

      v28 = sub_1001D5578(v84, a1[7]);
      v30 = v29;
      v31 = a1[8];
      a1[8] = v28;

      a1[9] = v30;
      v32 = a1[11];
      v33 = a1[8];
      v34 = v33;
      if (!ClipSession)
      {

        v46 = 0;
LABEL_30:
        v55 = a1[12];
        a1[12] = v46;

        v56 = [v9 placeholderArtwork];
        v57 = a1[25];
        a1[25] = v56;

        *(a1 + 208) = [v9 prefetchDecryption];
        v58 = sub_100003C04();
        v59 = sub_100200BA0(DiagnosticPublisher, v58);
        v60 = a1[24];
        a1[24] = v59;

        v61 = [DispatchQueue alloc];
        v68 = sub_1002DC148(&v61->super.isa, @"com.apple.appstored.ClipSession.%@", v62, v63, v64, v65, v66, v67, a1[8]);
        v69 = a1[5];
        a1[5] = v68;

        v70 = [v9 installSourceBundleID];
        v71 = a1[32];
        a1[32] = v70;

        v72 = [v9 sourceURL];
        v73 = a1[34];
        a1[34] = v72;

        v74 = [v9 referrerType];
        v75 = a1[33];
        a1[33] = v74;

        *(a1 + 240) = [v9 thirdPartyWithNoAppReferrer];
        v76 = [v9 dictionary];
        v77 = sub_100237DCC(v76, @"attributes.platformAttributes.ios.backgroundAssetsInfo");
        v78 = a1[29];
        a1[29] = v77;

        goto LABEL_31;
      }

      v35 = v32;
      objc_opt_self();
      v37 = [LSApplicationRecord alloc];
      if (v35)
      {
        v38 = objc_getProperty(v35, v36, 32, 1);
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;
      v89 = 0;
      v40 = [v37 initWithBundleIdentifier:v39 allowPlaceholder:0 error:&v89];
      v83 = v89;

      if (v40)
      {
        *(a1 + 209) = 1;
        if (v35)
        {
          v42 = objc_getProperty(v35, v41, 72, 1);
        }

        else
        {
          v42 = 0;
        }

        v43 = v42;
        v44 = v40;
        v45 = v43;
        objc_opt_self();
        if ([v44 isPlaceholder])
        {
          v46 = 0;
        }

        else
        {
          v90 = 0;
          v50 = sub_100407160(AppMetadataLoader, v44, &v90);
          v82 = v90;
          v51 = [v50 assetToken];
          v52 = v51 == 0;

          if (v52)
          {
            v53 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v92 = v44;
              v93 = 2114;
              v94 = v82;
              _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Unable to determine variant for %{public}@: %{public}@", buf, 0x16u);
            }

            v46 = 0;
          }

          else
          {
            v53 = [v50 assetToken];
            v46 = sub_1001C2C30(v45, v53);
          }
        }

        if (v46)
        {
          goto LABEL_29;
        }
      }

      else if ([v83 code] != -10814)
      {
        v48 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          if (v35)
          {
            v80 = objc_getProperty(v35, v49, 32, 1);
          }

          else
          {
            v80 = 0;
          }

          v81 = v80;
          *buf = 138412802;
          v92 = v34;
          v93 = 2114;
          v94 = v81;
          v95 = 2114;
          v96 = v83;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "[%@] Fetching record for '%{public}@' failed: %{public}@", buf, 0x20u);
        }
      }

      if (v35)
      {
        v54 = objc_getProperty(v35, v47, 72, 1);
      }

      else
      {
        v54 = 0;
      }

      v46 = v54;
LABEL_29:

      goto LABEL_30;
    }
  }

LABEL_31:

  return a1;
}

void sub_1001C80CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    v5 = v4;
    v6 = *(a1 + 72);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v6, "Clip::Event/Begin", "", buf, 2u);
    }

    v7 = ASDLogHandleForCategory();
    v8 = v7;
    v9 = *(a1 + 72);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Clip::Session/Download", "", buf, 2u);
    }

    v10 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001C82A4;
    v14[3] = &unk_10051B2D0;
    v14[4] = a1;
    v15 = v3;
    if (v10)
    {
      dispatch_sync(*(v10 + 8), v14);
    }

    v11 = ASDLogHandleForCategory();
    v12 = v11;
    v13 = *(a1 + 72);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "Clip::Session/Download", "", buf, 2u);
    }
  }
}

void sub_1001C82A4(uint64_t a1)
{
  if (*(*(a1 + 32) + 208))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  sub_1001C82C0(*(a1 + 32), v1, *(a1 + 40));
}

void sub_1001C82C0(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      dispatch_assert_queue_V2(*(v6 + 8));
    }

    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Performing action: %ld", buf, 0x16u);
    }

    if ((*(a1 + 184) & 0x10) != 0)
    {
      v28 = ASDErrorWithDescription();
      v29 = sub_1001CE458(LazyPromise, v28);
    }

    else
    {
      v9 = sub_1001CE3A0(LazyPromise, &__kCFBooleanTrue);
      v10 = *(a1 + 184);
      if ((v10 & 1) == 0)
      {
        v11 = *(a1 + 40);
        if (v11)
        {
          dispatch_assert_queue_V2(*(v11 + 8));
          v12 = *(a1 + 40);
          v10 = *(a1 + 184);
        }

        else
        {
          v12 = 0;
        }

        *(a1 + 184) = v10 | 1;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1001CA830;
        v36 = &unk_10051B370;
        v37 = a1;
        v13 = sub_1001CE32C(LazyPromise, v12, buf);
        v14 = [v9 joinWithPromise:v13];

        v9 = v14;
      }

      if (a2 == 1)
      {
        goto LABEL_28;
      }

      v15 = *(a1 + 184);
      if ((v15 & 2) == 0)
      {
        v16 = *(a1 + 40);
        if (v16)
        {
          dispatch_assert_queue_V2(*(v16 + 8));
          v17 = *(a1 + 40);
          v15 = *(a1 + 184);
        }

        else
        {
          v17 = 0;
        }

        *(a1 + 184) = v15 | 2;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1001CB778;
        v36 = &unk_10051B370;
        v37 = a1;
        v18 = sub_1001CE32C(LazyPromise, v17, buf);
        v19 = [v9 joinWithPromise:v18];

        v9 = v19;
      }

      if (a2 < 3)
      {
        goto LABEL_28;
      }

      v20 = *(a1 + 184);
      if ((v20 & 4) == 0)
      {
        v21 = *(a1 + 40);
        if (v21)
        {
          dispatch_assert_queue_V2(*(v21 + 8));
          v22 = *(a1 + 40);
          v20 = *(a1 + 184);
        }

        else
        {
          v22 = 0;
        }

        *(a1 + 184) = v20 | 4;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1001CB094;
        v36 = &unk_10051B370;
        v37 = a1;
        v23 = sub_1001CE32C(LazyPromise, v22, buf);
        v24 = [v9 joinWithPromise:v23];

        v9 = v24;
      }

      if (a2 == 3)
      {
        goto LABEL_28;
      }

      v25 = *(a1 + 184);
      if ((v25 & 8) != 0)
      {
        goto LABEL_28;
      }

      v26 = *(a1 + 40);
      if (v26)
      {
        dispatch_assert_queue_V2(*(v26 + 8));
        v27 = *(a1 + 40);
        v25 = *(a1 + 184);
      }

      else
      {
        v27 = 0;
      }

      *(a1 + 184) = v25 | 8;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1001CB2F8;
      v36 = &unk_10051B370;
      v37 = a1;
      v28 = sub_1001CE32C(LazyPromise, v27, buf);
      v29 = [v9 joinWithPromise:v28];
    }

    v9 = v29;
LABEL_28:
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001CBC58;
    v33[3] = &unk_10051B3C0;
    v34 = v5;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001CBC70;
    v31[3] = &unk_10051B548;
    v32 = v34;
    v30 = sub_10020B714();
    [v9 thenPerform:v33 orCatchError:v31 onScheduler:v30];
  }
}

void sub_1001C87A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    v5 = v4;
    v6 = *(a1 + 72);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v6, "Clip::Event/Cancel", "", buf, 2u);
    }

    v7 = ASDLogHandleForCategory();
    v8 = v7;
    v9 = *(a1 + 72);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Clip::Session/Cancel", "", buf, 2u);
    }

    v10 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001C8980;
    v14[3] = &unk_10051B2D0;
    v14[4] = a1;
    v15 = v3;
    if (v10)
    {
      dispatch_sync(*(v10 + 8), v14);
    }

    v11 = ASDLogHandleForCategory();
    v12 = v11;
    v13 = *(a1 + 72);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "Clip::Session/Cancel", "", buf, 2u);
    }
  }
}

void sub_1001C8980(uint64_t a1)
{
  v2 = [NSError errorWithDomain:ASDErrorDomain code:907 userInfo:0];
  v3 = sub_1001C8A60(*(a1 + 32), v2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001C8C04;
  v4[3] = &unk_10051B2F8;
  v5 = *(a1 + 40);
  sub_1001CE6D8(v3, v4, *(*(a1 + 32) + 40));
}

id sub_1001C8A60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      dispatch_assert_queue_V2(*(v4 + 8));
    }

    if ((*(a1 + 184) & 0x10) != 0)
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 64);
        *buf = 138412546;
        v12 = v8;
        v13 = 2114;
        v14 = v3;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Ignoring cancellation for invalidated session, reason was: %{public}@", buf, 0x16u);
      }

      a1 = sub_1001CE3A0(Promise, &__kCFBooleanTrue);
    }

    else
    {
      *(a1 + 184) |= 0x10u;
      v5 = *(a1 + 40);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001C9F18;
      v9[3] = &unk_10051B598;
      v9[4] = a1;
      v10 = v3;
      a1 = sub_1001CE32C(Promise, v5, v9);
    }
  }

  return a1;
}

void sub_1001C8C04(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 BOOLValue];
  v7 = ASDErrorWithSafeUserInfo();

  (*(v4 + 16))(v4, v6, v7);
}

void sub_1001C8C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    v5 = v4;
    v6 = *(a1 + 72);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v6, "Clip::Event/Commit", "", buf, 2u);
    }

    v7 = ASDLogHandleForCategory();
    v8 = v7;
    v9 = *(a1 + 72);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Clip::Session/Commit", "", buf, 2u);
    }

    v10 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001C8E64;
    v14[3] = &unk_10051B2D0;
    v14[4] = a1;
    v15 = v3;
    if (v10)
    {
      dispatch_sync(*(v10 + 8), v14);
    }

    v11 = ASDLogHandleForCategory();
    v12 = v11;
    v13 = *(a1 + 72);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "Clip::Session/Commit", "", buf, 2u);
    }
  }
}

void sub_1001C8E74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ASDLogHandleForCategory();
    v8 = v7;
    v9 = *(a1 + 72);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, v9, "Clip::Event/Open", "", buf, 2u);
    }

    v10 = ASDLogHandleForCategory();
    v11 = v10;
    v12 = *(a1 + 72);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Clip::Session/Open", "", buf, 2u);
    }

    v13 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C9074;
    block[3] = &unk_10051B320;
    block[4] = a1;
    v18 = v5;
    v19 = v6;
    if (v13)
    {
      dispatch_sync(*(v13 + 8), block);
    }

    v14 = ASDLogHandleForCategory();
    v15 = v14;
    v16 = *(a1 + 72);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "Clip::Session/Open", "", buf, 2u);
    }
  }
}

void sub_1001C9074(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 64);
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Opening session", buf, 0xCu);
  }

  v4 = [NSString stringWithFormat:@"com.apple.appstored.ClipSession-%@", *(*(a1 + 32) + 64)];
  [v4 UTF8String];
  v5 = os_transaction_create();
  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  *(v6 + 80) = v5;

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = v8;

  v11 = objc_retainBlock(*(a1 + 48));
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  v14 = *(a1 + 32);
  v15 = *(v14 + 16);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001C9204;
  v17[3] = &unk_10051B5C0;
  v17[4] = v14;
  v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v17];
  [v16 channelStateDidOpen];
}

void sub_1001C9204(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(*(a1 + 32) + 64);
    *buf = 138412546;
    v13 = v9;
    v14 = 2114;
    v15 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Failed to open session: %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C934C;
  v10[3] = &unk_10051B570;
  v10[4] = v5;
  v11 = v3;
  v7 = v3;
  v8 = v7;
  if (v6)
  {
    dispatch_async(*(v6 + 8), v10);
    v8 = v11;
  }
}

void sub_1001C9374(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    v5 = v4;
    v6 = *(a1 + 72);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v6, "Clip::Event/Placeholder", "", buf, 2u);
    }

    v7 = ASDLogHandleForCategory();
    v8 = v7;
    v9 = *(a1 + 72);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Clip::Session/Placeholder", "", buf, 2u);
    }

    v10 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001C954C;
    v14[3] = &unk_10051B2D0;
    v14[4] = a1;
    v15 = v3;
    if (v10)
    {
      dispatch_sync(*(v10 + 8), v14);
    }

    v11 = ASDLogHandleForCategory();
    v12 = v11;
    v13 = *(a1 + 72);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "Clip::Session/Placeholder", "", buf, 2u);
    }
  }
}

void sub_1001C9790(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      dispatch_assert_queue_V2(*(v2 + 8));
    }

    if ((*(v1 + 184) & 0x10) != 0)
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = *(v1 + 64);
        LODWORD(v7) = 138412290;
        *(&v7 + 4) = v6;
        _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "[%@] Ignoring completion for invalidated session!", &v7, 0xCu);
      }

      v4 = sub_1001CE3A0(Promise, &__kCFBooleanTrue);
    }

    else
    {
      *(v1 + 184) |= 0x10u;
      v3 = *(v1 + 40);
      *&v7 = _NSConcreteStackBlock;
      *(&v7 + 1) = 3221225472;
      v8 = sub_1001CA5E8;
      v9 = &unk_10051B370;
      v10 = v1;
      v4 = sub_1001CE32C(Promise, v3, &v7);
    }
  }

  else
  {
    v4 = 0;
  }
}

void sub_1001C9A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 32) + 64);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Failed to notify placeholder: %{public}@", &v6, 0x16u);
  }
}

void sub_1001C9B28(uint64_t a1, uint64_t a2)
{
  if (a1 && *(a1 + 224))
  {
    if (a2 == 1)
    {
      v3 = 5;
    }

    else if (a2 == 3)
    {
      v3 = 30;
    }

    else if (*(a1 + 209))
    {
      v3 = 11;
    }

    else
    {
      v3 = 10;
    }

    v5 = [LSApplicationRecord alloc];
    Property = *(a1 + 88);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 32, 1);
    }

    v7 = Property;
    v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

    if (v8)
    {
      v9 = [v8 URL];
      if (v9)
      {
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 64);
          *buf = 138412546;
          v22 = v11;
          v23 = 2048;
          v24 = v3;
        }

        v13 = *(a1 + 88);
        if (v13)
        {
          v13 = objc_getProperty(v13, v12, 32, 1);
        }

        v14 = v13;
        v15 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v14 appBundleURL:v9 event:v3 client:0];

        [v15 setUserInitiated:1];
        [v15 setAutomaticInstall:0];
        v16 = *(a1 + 224);
        v20 = 0;
        LOBYTE(v14) = [v16 performEventWithDescriptor:v15 error:&v20];
        v17 = v20;
        if ((v14 & 1) == 0)
        {
          v18 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = *(a1 + 64);
            *buf = 138412546;
            v22 = v19;
            v23 = 2114;
            v24 = v17;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] Failed to send event to Background Assets: %{public}@", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }
}

void sub_1001C9E74(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001CD31C;
    v5[3] = &unk_10051B5C0;
    v5[4] = a1;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v5];
    [v4 channelNotifyDidProgress:a2];
  }
}

void sub_1001C9F18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 184);
  if ((v7 & 2) != 0)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 64);
      v11 = *(v9 + 160);
      *buf = 138412546;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Cancelling download task: %{public}@", buf, 0x16u);
    }

    sub_1002DD100(*(*(a1 + 32) + 160), *(a1 + 40));
    v7 = *(*(a1 + 32) + 184);
  }

  if (v7)
  {
    v13 = IXCreateUserPresentableError();
    v14 = *(*(a1 + 32) + 168);
    v25 = 0;
    v15 = [v14 cancelForReason:v13 client:1 error:&v25];
    v12 = v25;
    if ((v15 & 1) == 0)
    {
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = *(*(a1 + 32) + 64);
        *buf = 138412546;
        v27 = v23;
        v28 = 2114;
        v29 = v12;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%@] Unexpected error occurred when cancelling coordinator: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = [*(a1 + 40) domain];
  if ([v17 isEqualToString:ASDErrorDomain])
  {
    v18 = [*(a1 + 40) code];

    if (v18 == 521)
    {
      sub_1001CA1C4(*(a1 + 32), v19);
    }
  }

  else
  {
  }

  v20 = *(a1 + 32);
  v21 = *(v20 + 16);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001CA2EC;
  v24[3] = &unk_10051B5C0;
  v24[4] = v20;
  v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v24];
  [v22 channelNotifyDidFailWithError:*(a1 + 40)];

  sub_1001CA3C0(*(a1 + 32));
  v5[2](v5, &__kCFBooleanTrue);
}

void sub_1001CA1C4(uint64_t a1, const char *a2)
{
  if (a1 && *(a1 + 209) == 1)
  {
    Property = *(a1 + 88);
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 32, 1);
    }

    v3 = Property;
    v8 = v3;
    v9 = &off_100546DB0;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001CA4C8;
    v6[3] = &unk_10051B348;
    v7 = v3;
    v5 = v3;
    [LSApplicationRecord setUpdateAvailabilityForApplicationsWithBundleIdentifiers:v4 completionHandler:v6];
  }
}

void sub_1001CA2EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 32) + 64);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Failed to notify failure: %{public}@", &v6, 0x16u);
  }
}

void sub_1001CA3C0(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      dispatch_assert_queue_V2(*(v2 + 8));
    }

    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[8];
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Invalidating session", &v9, 0xCu);
    }

    v5 = a1[3];
    if (v5)
    {
      (*(v5 + 16))(v5, 1, 0);
      v6 = a1[3];
      a1[3] = 0;
    }

    v7 = a1[6];
    if (v7)
    {
      (*(v7 + 16))();
      v8 = a1[6];
      a1[6] = 0;
    }
  }
}

void sub_1001CA4C8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ASDLogHandleForCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set updateAvailability to Unknown for %{public}@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set updateAvailability to Unknown for %{public}@: %{public}@", &v10, 0x16u);
  }
}

void sub_1001CA5E8(uint64_t a1)
{
  sub_1001C9E74(*(a1 + 32), 1.0);
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001CA75C;
  v21[3] = &unk_10051B5C0;
  v21[4] = v2;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v21];
  [v4 channelNotifyDidComplete];

  sub_1001C9B28(*(a1 + 32), 2);
  sub_1001C9B28(*(a1 + 32), 3);
  sub_1001CA1C4(*(a1 + 32), v5);
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = sub_1002B5560();
    Property = *(v6 + 88);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 32, 1);
    }

    v10 = Property;
    v12 = *(v6 + 264);
    v11 = *(v6 + 272);
    v13 = *(v6 + 240);
    v16 = v6 + 248;
    v14 = *(v6 + 248);
    v15 = *(v16 + 8);
    v17 = v11;
    v18 = v15;
    v19 = v12;
    sub_1002B81C8(v8, v10, v19, v18, v17, v13, v14);

    v20 = *(a1 + 32);
  }

  else
  {
    v20 = 0;
  }

  sub_1001CA3C0(v20);
}

void sub_1001CA75C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 32) + 64);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Failed to notify completion: %{public}@", &v6, 0x16u);
  }
}

void sub_1001CA830(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 64);
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Creating placeholder", buf, 0xCu);
  }

  v9 = *(a1 + 32);
  if (*(v9 + 209))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(v9 + 200);
  v12 = ASDLogHandleForCategory();
  v13 = v12;
  v14 = *(v9 + 72);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Clip::Coordinator/Create", "", buf, 2u);
  }

  Property = *(v9 + 88);
  if (Property)
  {
    Property = objc_getProperty(Property, v15, 32, 1);
  }

  v17 = Property;
  v77 = 0;
  v18 = sub_100247FE0(IXAppInstallCoordinator, v17, v10, 3, 1, &v77);
  v19 = v77;

  v20 = ASDLogHandleForCategory();
  v21 = v20;
  v22 = *(v9 + 72);
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v22, "Clip::Coordinator/Create", "", buf, 2u);
  }

  if (v18)
  {
    v23 = ASDLogHandleForCategory();
    v24 = v23;
    v25 = *(v9 + 72);
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v25, "Clip::Coordinator/Placeholder", "", buf, 2u);
    }

    v26 = objc_alloc_init(PlaceholderBuilder);
    v28 = v26;
    if (v26)
    {
      objc_setProperty_atomic(v26, v27, v11, 24);
    }

    v29 = *(v9 + 88);
    if (v29)
    {
      v29 = objc_getProperty(v29, v27, 32, 1);
    }

    v31 = v29;
    if (v28)
    {
      objc_setProperty_atomic(v28, v30, v31, 40);
    }

    v33 = *(v9 + 88);
    if (v33)
    {
      v33 = objc_getProperty(v33, v32, 16, 1);
    }

    v72 = v11;
    v35 = v33;
    if (v28)
    {
      objc_setProperty_atomic(v28, v34, v35, 48);
    }

    v36 = *(v9 + 88);
    objc_opt_self();
    v37 = objc_alloc_init(NSMutableDictionary);
    [v37 setObject:&__kCFBooleanTrue forKeyedSubscript:@"com.apple.developer.on-demand-install-capable"];
    if (v36)
    {
      v39 = objc_getProperty(v36, v38, 48, 1);
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    v41 = @"<null>";
    if (v40)
    {
      v41 = v40;
    }

    *buf = v41;
    v42 = [NSArray arrayWithObjects:buf count:1, v72];
    [v37 setObject:v42 forKeyedSubscript:@"com.apple.developer.parent-application-identifiers"];

    v43 = [v37 copy];
    if (v28)
    {
      objc_setProperty_atomic(v28, v44, v43, 72);

      v28->_installType = 1;
      objc_setProperty_atomic(v28, v45, *(v9 + 64), 96);
      v28->_sourceType = 0;
    }

    else
    {
    }

    v47 = sub_1001CB500(ClipSession, *(v9 + 88));
    if (v28)
    {
      objc_setProperty_atomic(v28, v46, v47, 128);
    }

    v76 = v19;
    v48 = sub_1002FE870(v28, &v76);
    v49 = v76;

    if (v48)
    {
      v75 = v49;
      v50 = [v18 setPlaceholderPromise:v48 error:&v75];
      v19 = v75;

      if (v50)
      {

        v51 = 0;
        v11 = v73;
        goto LABEL_60;
      }

      v60 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v69 = *(v9 + 64);
        *buf = 138412546;
        *&buf[4] = v69;
        v79 = 2114;
        v80 = v19;
        _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "[%@}] Failed to set placeholder error: %{public}@", buf, 0x16u);
      }

      v61 = sub_1001C8A60(v9, v19);
      v74 = 0;
      v62 = [v18 cancelForReason:v19 client:1 error:&v74];
      v55 = v74;
      if ((v62 & 1) == 0)
      {
        v63 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v71 = *(v9 + 64);
          *buf = 138412546;
          *&buf[4] = v71;
          v79 = 2114;
          v80 = v55;
          _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "[%@}] Unable to cancel coordinator after setting placeholder failed: %{public}@", buf, 0x16u);
        }
      }

      v64 = ASDLogHandleForCategory();
      v58 = v64;
      v65 = *(v9 + 72);
      if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_END, v65, "Clip::Coordinator/Placeholder", "", buf, 2u);
      }

      v49 = v19;
    }

    else
    {
      v52 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v68 = *(v9 + 64);
        *buf = 138412546;
        *&buf[4] = v68;
        v79 = 2114;
        v80 = v49;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "[%@}] Failed to create placeholder error: %{public}@", buf, 0x16u);
      }

      v53 = sub_1001C8A60(v9, v49);
      v75 = 0;
      v54 = [v18 cancelForReason:v49 client:1 error:&v75];
      v55 = v75;
      if ((v54 & 1) == 0)
      {
        v56 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v70 = *(v9 + 64);
          *buf = 138412546;
          *&buf[4] = v70;
          v79 = 2114;
          v80 = v55;
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[%@}] Unable to cancel coordinator after placeholder creation failed: %{public}@", buf, 0x16u);
        }
      }

      v57 = ASDLogHandleForCategory();
      v58 = v57;
      v59 = *(v9 + 72);
      if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_END, v59, "Clip::Coordinator/Placeholder", "", buf, 2u);
      }
    }

    v19 = v49;
    v11 = v73;
  }

  v66 = v19;
  v18 = 0;
  v51 = v19;
LABEL_60:

  v67 = v51;
  if (v18)
  {
    objc_storeStrong((*(a1 + 32) + 168), v18);
    [*(*(a1 + 32) + 168) setObserver:?];
    v5[2](v5, &__kCFBooleanTrue);
  }

  else
  {
    v6[2](v6, v67);
  }
}

void sub_1001CB094(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 64);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Fetching additional data", &buf, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 40);
    if (v10)
    {
      dispatch_assert_queue_V2(*(v10 + 8));
    }

    *(v9 + 184) |= 4u;
    v11 = sub_1001CC5D4(v9);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v18 = sub_1001CC760;
    v19 = &unk_10051B480;
    v20 = v9;
    v12 = sub_1001CEB34(v11, &buf, *(v9 + 40));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001CC8F0;
    v16[3] = &unk_10051B4F8;
    v16[4] = v9;
    v13 = sub_1001CEB34(v12, v16, *(v9 + 40));
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001CD234;
    v15[3] = &unk_10051B5C0;
    v15[4] = v9;
    if (v12)
    {
      [(Promise *)v12 thenPerform:&stru_10051B6A0 orCatchError:v15 onScheduler:*(v9 + 40)];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_10020B714();
  [v13 thenPerform:v6 orCatchError:v5 onScheduler:v14];
}

void sub_1001CB2F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 64);
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Permitting installation", buf, 0xCu);
  }

  v9 = objc_alloc_init(MIInstallOptions);
  [v9 setSinfData:*(*(a1 + 32) + 216)];
  [v9 setInstallTargetType:1];
  v10 = sub_1001CB500(ClipSession, *(*(a1 + 32) + 88));
  [v9 setITunesMetadata:v10];

  v11 = *(*(a1 + 32) + 168);
  v18 = 0;
  v12 = sub_10024A028(v11, v9, &v18);
  v13 = v18;
  if (v12)
  {
    v5[2](v5, &__kCFBooleanTrue);
  }

  else
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = *(v15 + 64);
      v17 = *(v15 + 168);
      *buf = 138412802;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@] Setting installation options for: %{public}@ failed: %{public}@", buf, 0x20u);
    }

    v6[2](v6, v13);
  }
}

id sub_1001CB500(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v4 = objc_alloc_init(MIStoreMetadata);
  if (v2)
  {
    v5 = objc_getProperty(v2, v3, 72, 1);
    v6 = [v5 assetToken];
    [v4 setAssetToken:v6];

    Property = objc_getProperty(v2, v7, 8, 1);
  }

  else
  {
    v28 = [0 assetToken];
    [v4 setAssetToken:v28];

    Property = 0;
  }

  v9 = Property;
  v10 = sub_1002C5248(v9);
  [v4 setItemID:v10];

  if (v2)
  {
    v12 = objc_getProperty(v2, v11, 16, 1);
    [v4 setItemName:v12];

    [v4 setKind:@"software"];
    v14 = objc_getProperty(v2, v13, 56, 1);
  }

  else
  {
    [v4 setItemName:0];
    [v4 setKind:@"software"];
    v14 = 0;
  }

  v15 = v14;
  [v4 setRatingLabel:v15];

  if (v2)
  {
    v17 = objc_getProperty(v2, v16, 64, 1);
    [v4 setRatingRank:v17];

    v19 = objc_getProperty(v2, v18, 32, 1);
  }

  else
  {
    [v4 setRatingRank:0];
    v19 = 0;
  }

  v20 = v19;
  [v4 setSoftwareVersionBundleID:v20];

  if (v2)
  {
    v22 = objc_getProperty(v2, v21, 40, 1);
    [v4 setSoftwareVersionExternalIdentifier:v22];

    v24 = objc_getProperty(v2, v23, 80, 1);
  }

  else
  {
    [v4 setSoftwareVersionExternalIdentifier:0];
    v24 = 0;
  }

  v25 = v24;

  v26 = sub_1002291AC(v25);
  [v4 setVariantID:v26];

  return v4;
}

void sub_1001CB778(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 64);
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Starting download", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 192);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001CBAD8;
  v27[3] = &unk_10051B398;
  v27[4] = v6;
  sub_100200CAC(v7, 1001, v27);
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19 = v18[8];
    v21 = v18[11];
    v20 = v18[12];
    *buf = 138412802;
    v29 = v19;
    v30 = 2114;
    v31 = v21;
    v32 = 2114;
    v33 = v20;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%@] Beginning session using: %{public}@ variant: %{public}@", buf, 0x20u);
  }

  obj = 0;
  v26 = 0;
  sub_1001CFD34(BufferedStream, &obj, &v26);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(*(a1 + 32) + 64);
    *buf = 138412802;
    v29 = v10;
    v30 = 2114;
    v31 = v26;
    v32 = 2114;
    v33 = obj;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%@] Created download buffer: %{public}@ -> %{public}@", buf, 0x20u);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 136);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001CBBD4;
  v23[3] = &unk_10051B570;
  v23[4] = v11;
  v24 = v26;
  [v12 becomeCurrentWithPendingUnitCount:1 inBlock:v23];
  Property = *(*(a1 + 32) + 160);
  if (Property)
  {
    Property = objc_getProperty(Property, v13, 40, 1);
  }

  v15 = Property;
  v16 = v15;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001CBC34;
  v22[3] = &unk_10051B5C0;
  v17 = *(a1 + 32);
  v22[4] = v17;
  if (v15)
  {
    [v15 thenPerform:&stru_10051B6A0 orCatchError:v22 onScheduler:*(v17 + 40)];
  }

  objc_storeStrong((*(a1 + 32) + 104), obj);
  v3[2](v3, &__kCFBooleanTrue);
}

void sub_1001CBAD8(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 96);
  v4 = a2;
  v5 = [v3 assetToken];
  if (v4)
  {
    [v4[1] setObject:v5 forKeyedSubscript:@"variantToken"];
  }

  v6 = [*(*(a1 + 32) + 96) assetURL];
  if (v4)
  {
    [v4[1] setObject:v6 forKeyedSubscript:@"variantURL"];
  }

  Property = *(*(a1 + 32) + 88);
  if (Property)
  {
    Property = objc_getProperty(Property, v7, 80, 1);
  }

  v10 = Property;
  v9 = sub_1002291AC(v10);
  if (v4)
  {
    [v4[1] setObject:v9 forKeyedSubscript:@"variantProduct"];
  }
}

id *sub_1001CBBD4(uint64_t a1)
{
  v2 = sub_100334254(*(*(a1 + 32) + 152), *(*(a1 + 32) + 96), *(a1 + 40), *(*(a1 + 32) + 64));
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  v5 = *(*(a1 + 32) + 160);

  return sub_1002DD1F4(v5);
}

void sub_1001CBC70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ASDErrorWithSafeUserInfo();
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1001CBCD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = v9;
  if (!v8)
  {

    goto LABEL_15;
  }

  v11 = v7;
  objc_opt_self();
  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:SZExtractorOptionsDenyInvalidSymlinks];
  if (v11)
  {
    v13 = v11[3];
    v14 = v11[2];
    if (v11[6] == 1)
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] LZMA compressed package, not providing hashes to StreamingZip", buf, 0xCu);
      }

LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (![v13 count] || !objc_msgSend(v14, "unsignedLongLongValue"))
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v41 = v10;
      v42 = 2114;
      v43 = v11;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "[%@] Additional data didn't provide valid hashes: %{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  [v12 setObject:SZExtractorHashTypeMD5 forKeyedSubscript:SZExtractorOptionsHashType];
  [v12 setObject:v13 forKeyedSubscript:SZExtractorOptionsHashesArray];
  [v12 setObject:v14 forKeyedSubscript:SZExtractorOptionsHashedChunkSize];
  [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:SZExtractorOptionsPerformCachedWrites];
LABEL_14:
  v8 = [v12 copy];

LABEL_15:
  v16 = [IXPromisedStreamingZipTransfer alloc];
  v17 = [*(a1 + 64) description];
  v18 = *(a1 + 32);
  if (v18)
  {
    v18 = v18[8];
  }

  v19 = v18;
  v20 = [v16 initWithName:v17 client:1 streamingZipOptions:v8 archiveSize:0 diskSpaceNeeded:{objc_msgSend(v19, "unsignedLongLongValue")}];

  v21 = *(a1 + 40);
  v39 = 0;
  LOBYTE(v19) = sub_100249E38(v21, v20, &v39);
  v22 = v39;
  if (v19)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3254779904;
    v31[2] = sub_1001CC1D4;
    v31[3] = &unk_10051B3E8;
    v35 = v6;
    v32 = *(a1 + 48);
    v33 = *(a1 + 32);
    v34 = v20;
    v36 = v5;
    v23 = *(a1 + 64);
    v24 = *(a1 + 72);
    v37 = v23;
    v38 = v24;
    [v34 prepareForExtraction:v31];

    v25 = v35;
  }

  else
  {
    v26 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 64);
      v30 = *(a1 + 40);
      *buf = 138412802;
      v41 = v29;
      v42 = 2114;
      v43 = v30;
      v44 = 2114;
      v45 = v22;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%@] Setting app asset promise for: %{public}@ failed: %{public}@", buf, 0x20u);
    }

    [v20 cancelForReason:v22 client:1 error:0];
    (*(v6 + 2))(v6, v22);
    v27 = ASDLogHandleForCategory();
    v25 = v27;
    v28 = *(a1 + 72);
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, v28, "Clip::Coordinator/Promise", "", buf, 2u);
    }
  }
}

void sub_1001CC1D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 32);
      v8 = v7;
      if (v7 && [v7 length])
      {
        v28 = 0;
        v9 = sub_100308018([FairPlayStreamReader alloc], v8, v5, &v28);
        v10 = v28;

        v5 = v9;
        if (!v9)
        {
LABEL_7:
          if (!v10)
          {
            v10 = ASDErrorWithDescription();
          }

          (*(*(a1 + 56) + 16))();
LABEL_31:

          goto LABEL_32;
        }

LABEL_12:
        v11 = *(a1 + 40);
        if (v11 && *(v11 + 48) == 1)
        {
          v12 = *(v11 + 24);
          if (v12)
          {
            v13 = *(a1 + 40);
            if (v13)
            {
              v13 = v13[2];
            }

            v14 = v13;

            if (v14)
            {
              v15 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "(ClipSession) Using supplied hashes to verify LZMA data", buf, 2u);
              }

              v12 = objc_alloc_init(ChunkedDigest);
              v16 = *(a1 + 40);
              if (v16)
              {
                v16 = v16[3];
              }

              v17 = v16;
              sub_100275058(v12, v17);

              v18 = *(a1 + 40);
              if (v18)
              {
                v18 = v18[2];
              }

              v19 = v18;
              v20 = [v19 unsignedIntValue];
              if (v12)
              {
                v12->_chunkSize = v20;

                v12->_chunkType = 0;
              }

              else
              {
              }
            }

            else
            {
              v12 = 0;
            }
          }

          v21 = sub_1003D4498();
          v22 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            v30 = v21;
            _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "(ClipSession) Chaining LZMA decompression (autodetection enabled = %d)", buf, 8u);
          }

          v23 = sub_100260EBC([LZMAStreamReader alloc], v5, v12, !v21);
          v5 = v23;
        }

        v24 = sub_1002DD344([StreamingZipStreamConsumer alloc], v5, *(a1 + 48));
        (*(*(a1 + 64) + 16))();

        goto LABEL_31;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
LABEL_32:
  v25 = ASDLogHandleForCategory();
  v26 = v25;
  v27 = *(a1 + 80);
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v27, "Clip::Coordinator/Promise", "", buf, 2u);
  }
}

id sub_1001CC554(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

id sub_1001CC594(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

Promise *sub_1001CC5D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 8));
  }

  v3 = objc_alloc_init(Promise);
  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_1001CE9E4(v3, v5);
  }

  else
  {
    v6 = +[BagService appstoredService];
    v7 = sub_1002DC370(*(a1 + 40));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001CC6DC;
    v9[3] = &unk_10051B458;
    v10 = v4;
    v11 = a1;
    [v6 recentBagOnQueue:v7 completionHandler:v9];
  }

  return v4;
}

void sub_1001CC6DC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(a1 + 40) + 8), a2);
    sub_1001CE9E4(*(a1 + 32), v6);
  }

  else
  {
    sub_1001CEA8C(*(a1 + 32), a3);
  }
}

id sub_1001CC760(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  v5 = a2;
  v6 = v3;
  v7 = v4;
  objc_opt_self();
  v8 = sub_1003CB1E8([ClipAdditionalDataTask alloc], v5);

  v9 = [v7 assetToken];

  if (v8)
  {
    objc_setProperty_atomic(v8, v10, v9, 32);
  }

  if (v6)
  {
    Property = objc_getProperty(v6, v11, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = Property;
  if (v8)
  {
    objc_setProperty_atomic(v8, v13, v14, 24);
  }

  if (v6)
  {
    v16 = objc_getProperty(v6, v15, 32, 1);
  }

  else
  {
    v16 = 0;
  }

  v18 = v16;
  if (v8)
  {
    objc_setProperty_atomic(v8, v17, v18, 40);
  }

  if (v6)
  {
    v20 = objc_getProperty(v6, v19, 40, 1);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v23 = [v21 stringValue];
  if (v8)
  {
    objc_setProperty_atomic(v8, v22, v23, 56);
  }

  v24 = sub_1003CB280(v8);

  return v24;
}

id sub_1001CC8F0(uint64_t a1, id self)
{
  if (self)
  {
    v3 = 1;
    v4 = objc_getProperty(self, self, 8, 1);
    v5 = v4;
    if (v4)
    {
      v3 = 0;
      v6 = v4[5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v3 = 1;
  }

  objc_storeStrong((*(a1 + 32) + 248), v6);
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5[7];
  }

  objc_storeStrong((*(a1 + 32) + 216), v7);
  v8 = *(a1 + 32);
  if (v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5[8];
  }

  v10 = v9;
  if (v8 && v8[29])
  {
    v11 = sub_1001CC5D4(v8);
    *buf = _NSConcreteStackBlock;
    v43 = 3221225472;
    v44 = sub_1001CD434;
    v45 = &unk_10051B520;
    v46 = v8;
    v47 = v10;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1001CD720;
    v41[3] = &unk_10051B5C0;
    v41[4] = v8;
    [v11 thenPerform:buf orCatchError:v41 onScheduler:v8[5]];
  }

  v12 = *(*(a1 + 32) + 192);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001CCD5C;
  v39[3] = &unk_10051B398;
  v13 = v5;
  v40 = v13;
  sub_100200CAC(v12, 1002, v39);
  v14 = *(a1 + 32);
  v15 = *(v14 + 104);
  v16 = *(v14 + 168);
  v17 = *(v14 + 64);
  v18 = v17;
  if (ClipSession)
  {
    v19 = *(v14 + 72);
    v20 = v15;
    v21 = v16;
    v22 = v13;
    v23 = objc_opt_self();
    v24 = ASDLogHandleForCategory();
    v25 = v24;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Clip::Coordinator/Promise", "", buf, 2u);
    }

    v26 = sub_10020B714();
    *buf = _NSConcreteStackBlock;
    v43 = 3254779904;
    v44 = sub_1001CBCD4;
    v45 = &unk_10051B420;
    v49 = v23;
    v27 = v22;
    v46 = v27;
    v28 = v18;
    v50 = v28;
    v51 = v19;
    v29 = v21;
    v47 = v29;
    v30 = v20;
    v48 = v30;
    v31 = sub_1001CE32C(Promise, v26, buf);
  }

  else
  {

    v31 = 0;
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001CCDD8;
  v36[3] = &unk_10051B4D0;
  v37 = *(a1 + 32);
  v38 = v13;
  v32 = *(v37 + 40);
  v33 = v13;
  v34 = sub_1001CEB34(v31, v36, v32);

  return v34;
}