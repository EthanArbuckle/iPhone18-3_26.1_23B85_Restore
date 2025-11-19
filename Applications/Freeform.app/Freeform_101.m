uint64_t sub_100CEA76C(uint64_t a1, uint64_t a2)
{
  if (qword_1019F2020 != -1)
  {
    swift_once();
  }

  result = sub_100CE89B4(a1, a2);
  if (result == 1)
  {
    v5 = objc_opt_self();
    v6 = [v5 descriptorForRequiredKeysForStyle:0];
    v7 = CNContactEmailAddressesKey;
    v8 = [v5 descriptorForRequiredKeysForNameOrder];
    v9 = objc_opt_self();
    v10 = [v9 descriptorForAllComparatorKeys];
    sub_1005B981C(&unk_1019F4D60);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10146E8B0;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
    *(v11 + 48) = v8;
    *(v11 + 56) = v10;
    v33 = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v12 = a1;
    v34 = a2;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v9 predicateForContactsMatchingEmailAddress:v13];

    v15 = [v9 comparatorForNameSortOrder:1];
    v16 = swift_allocObject();
    v16[2] = v15;
    v17 = [objc_allocWithZone(CNContactStore) init];
    sub_1005B981C(&qword_101A00EB8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v35[0] = 0;
    v19 = [v17 unifiedContactsMatchingPredicate:v14 keysToFetch:isa error:v35];

    v20 = v35[0];
    if (!v19)
    {
      v26 = v35[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1019F2098 == -1)
      {
LABEL_12:
        v32 = static OS_os_log.crlDefault;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        *(inited + 56) = &type metadata for String;
        v28 = sub_1000053B0();
        *(inited + 64) = v28;
        *(inited + 32) = v12;
        *(inited + 40) = v34;
        swift_getErrorValue();

        v29 = Error.localizedDescription.getter();
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v28;
        *(inited + 72) = v29;
        *(inited + 80) = v30;
        v31 = static os_log_type_t.error.getter();
        sub_100005404(v32, &_mh_execute_header, v31, "Error getting contacts for email (%@): %@", 41, 2, inited);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        v23 = v34;
        swift_arrayDestroy();
        v25 = 0;
        goto LABEL_15;
      }

LABEL_19:
      swift_once();
      goto LABEL_12;
    }

    sub_100006370(0, &qword_101A00EC0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    LOBYTE(v35[0]) = 0;
    v35[1] = 1;
    v35[2] = sub_100CEAE5C;
    v35[3] = v16;
    sub_1005B981C(&qword_101A1B098);
    sub_1000067A8(&qword_101A1B0A0, &qword_101A1B098);
    sub_100CEAE64();
    v22 = Sequence.sorted<A>(using:)();

    if (v22 >> 62)
    {
      v23 = v34;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_7;
      }
    }

    else
    {
      v23 = v34;
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_10;
        }

        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v24 = *(v22 + 32);
LABEL_10:
          v25 = v24;

LABEL_15:
          sub_100CE8BDC(v25, v12, v23);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return v25;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    v25 = 0;
    goto LABEL_15;
  }

  return result;
}

void *sub_100CEAD08(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (([v4 isCurrentUser] & 1) != 0 || (sub_100CE7CBC(0), !v7))
      {
      }

      else
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100CEAE64()
{
  result = qword_101A1B0A8;
  if (!qword_101A1B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1B0A8);
  }

  return result;
}

BOOL sub_100CEAEC8(void *a1, void *a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (!a2)
  {
    return 0;
  }

  sub_100006370(0, &qword_1019F54D0);
  v4 = a1;
  v5 = a2;
  v6 = [v4 recordID];
  v7 = v5;
  v8 = [v7 recordID];
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_56;
  }

  v10 = [v4 owner];
  v11 = [v7 owner];
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_56;
  }

  v13 = &selRef_canRemoveImageBackground;
  v14 = [v4 permission];
  if (v14 != [v7 permission])
  {
    goto LABEL_56;
  }

  v15 = [v4 publicPermission];
  if (v15 != [v7 publicPermission])
  {
    goto LABEL_56;
  }

  v16 = [v4 recordChangeTag];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v22 = [v7 recordChangeTag];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v20)
    {
      if (!v26)
      {
        goto LABEL_46;
      }

      if (v18 == v24 && v20 == v26)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v26)
    {

      goto LABEL_56;
    }
  }

  else if (v20)
  {
    goto LABEL_46;
  }

  static CKShare.SystemFieldKey.title.getter();
  v28 = CKRecord.subscript.getter();

  if (v28)
  {
    sub_1005B981C(&qword_101A1B0B0);
    v29 = swift_dynamicCast();
    if (v29)
    {
      v30 = v84;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v85;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  static CKShare.SystemFieldKey.title.getter();
  v32 = CKRecord.subscript.getter();

  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  sub_1005B981C(&qword_101A1B0B0);
  v33 = swift_dynamicCast();
  if (v33)
  {
    v34 = v84;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v85;
  }

  else
  {
    v35 = 0;
  }

  if (!v31)
  {
    if (!v35)
    {
      goto LABEL_49;
    }

LABEL_46:

    goto LABEL_47;
  }

  if (!v35)
  {
    goto LABEL_46;
  }

  if (v30 == v34 && v31 == v35)
  {

    goto LABEL_49;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v36 & 1) == 0)
  {
LABEL_56:

    goto LABEL_57;
  }

LABEL_49:
  static CKShare.SystemFieldKey.thumbnailImageData.getter();
  v37 = CKRecord.subscript.getter();

  v38 = 0xF000000000000000;
  if (v37)
  {
    sub_1005B981C(&qword_101A1B0B0);
    v39 = swift_dynamicCast();
    if (v39)
    {
      v40 = v84;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v38 = v85;
    }
  }

  else
  {
    v40 = 0;
  }

  static CKShare.SystemFieldKey.thumbnailImageData.getter();
  v41 = CKRecord.subscript.getter();

  if (v41)
  {
    sub_1005B981C(&qword_101A1B0B0);
    v42 = swift_dynamicCast();
    if (v42)
    {
      v43 = v84;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v85;
    }

    else
    {
      v44 = 0xF000000000000000;
    }

    if (v38 >> 60 == 15)
    {
      if (v44 >> 60 != 15)
      {

        v44 = v85;
LABEL_121:
        sub_100025870(v40, v38);
        sub_100025870(v43, v44);
        return 0;
      }

      goto LABEL_71;
    }

    if (v44 >> 60 != 15)
    {
      sub_100024E84(v40, v38);
      sub_100024E84(v43, v44);
      v73 = sub_1009F9488(v40, v38, v43, v44);
      sub_100025870(v43, v44);
      sub_100025870(v43, v44);
      sub_100025870(v40, v38);
      sub_100025870(v40, v38);
      if (v73)
      {
        goto LABEL_72;
      }

LABEL_57:
      return 0;
    }

LABEL_120:
    sub_100024E84(v40, v38);
    sub_100024E84(v43, v44);

    sub_100025870(v43, v44);
    sub_100025870(v40, v38);
    goto LABEL_121;
  }

  if (v38 >> 60 != 15)
  {
    v43 = 0;
    v44 = 0xF000000000000000;
    goto LABEL_120;
  }

LABEL_71:
  sub_100025870(v40, v38);
LABEL_72:
  v45 = &selRef_editAccessibilityDescription_;
  v46 = [v4 participants];
  v47 = sub_100006370(0, &qword_1019F5520);
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v48 >> 62)
  {
    goto LABEL_129;
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_74:

  v50 = [v7 *(v45 + 2192)];
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v51 >> 62)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v49 != v52)
  {

    return 0;
  }

  v53 = [v4 *(v45 + 2192)];
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v54 >> 62)
  {
    goto LABEL_132;
  }

  v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
LABEL_133:

    return 1;
  }

LABEL_79:
  v56 = 0;
  v78 = v55;
  v79 = v54 & 0xC000000000000001;
  v74 = v54 + 32;
  v75 = v54 & 0xFFFFFFFFFFFFFF8;
  v76 = v54;
  v77 = v47;
  while (1)
  {
    if (v79)
    {
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v56 >= *(v75 + 16))
      {
        __break(1u);
LABEL_132:
        v55 = _CocoaArrayWrapper.endIndex.getter();
        if (!v55)
        {
          goto LABEL_133;
        }

        goto LABEL_79;
      }

      v57 = *(v74 + 8 * v56);
    }

    v83 = v57;
    v80 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_127;
    }

    v58 = [v7 *(v45 + 2192)];
    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v59 >> 62)
    {
      v60 = _CocoaArrayWrapper.endIndex.getter();
      if (!v60)
      {
        goto LABEL_102;
      }

LABEL_87:
      v45 = 0;
      v81 = v59 & 0xFFFFFFFFFFFFFF8;
      v82 = v59 & 0xC000000000000001;
      while (1)
      {
        if (v82)
        {
          v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v45 >= *(v81 + 16))
          {
            goto LABEL_126;
          }

          v61 = *(v59 + 8 * v45 + 32);
        }

        v62 = v61;
        v63 = (v45 + 1);
        if (__OFADD__(v45, 1))
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          v49 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_74;
        }

        v13 = v60;
        v64 = v59;
        v47 = CKShareParticipant.participantID.getter();
        v66 = v65;
        if (v47 == CKShareParticipant.participantID.getter() && v66 == v67)
        {
          break;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v47)
        {
          goto LABEL_98;
        }

LABEL_89:
        v59 = v64;
        ++v45;
        if (v63 == v60)
        {
          v13 = &selRef_canRemoveImageBackground;
          v45 = 0x10197D000;
          v54 = v76;
          v47 = v77;
          goto LABEL_102;
        }
      }

LABEL_98:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_89;
    }

    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
      goto LABEL_87;
    }

LABEL_102:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_122:

        goto LABEL_124;
      }
    }

    else if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_122;
    }

    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!_swiftEmptyArrayStorage[2])
      {
        goto LABEL_128;
      }

      v68 = _swiftEmptyArrayStorage[4];
    }

    v69 = v68;

    v70 = [v83 acceptanceStatus];
    if (v70 != [v69 acceptanceStatus])
    {
      break;
    }

    v71 = [v83 v13[129]];
    v72 = [v69 v13[129]];

    if (v71 != v72)
    {
      goto LABEL_124;
    }

    v56 = v80;
    if (v80 == v78)
    {
      goto LABEL_133;
    }
  }

LABEL_124:
LABEL_47:

  return 0;
}

uint64_t sub_100CEB8FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100CEB944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100CEB998()
{
  result = qword_101A1B0B8;
  if (!qword_101A1B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1B0B8);
  }

  return result;
}

unint64_t sub_100CEB9F0()
{
  result = qword_101A1B0C0;
  if (!qword_101A1B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1B0C0);
  }

  return result;
}

void *sub_100CEBA58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100776BC4(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = (*(a1 + 56) + 16 * v5);
    v10 = v9[1];
    v22 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_100776BC4((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[4 * v11];
    v13[4] = 0x617453656B617761;
    v13[5] = 0xEA00000000006574;
    v13[6] = v22;
    v13[7] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1000341AC(v5, v23, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_100CEBCBC()
{
  *&result = 1060439283;
  xmmword_101A1B0D0 = xmmword_1014ABCF0;
  return result;
}

uint64_t sub_100CEBCD0(char a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 112) = a1;
  *(v3 + 64) = a2;
  type metadata accessor for MainActor();
  *(v3 + 80) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return _swift_task_switch(sub_100CEBD70, v5, v4);
}

unint64_t sub_100CEBD70()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v40 = v2;
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;

  v10 = 0;
  v36 = v3 + 64;
  v37 = v3;
  v35 = v8;
  v38 = v1;
  v39 = v0;
  while (v7)
  {
LABEL_12:
    v15 = (v10 << 10) | (16 * __clz(__rbit64(v7)));
    v16 = (*(v3 + 48) + v15);
    v17 = v16[1];
    v41 = *v16;
    v18 = (*(v3 + 56) + v15);
    v19 = *v18;
    if (!v18[1])
    {

      goto LABEL_19;
    }

    swift_retain_n();

    if ((AnimationPlaybackController.isValid.getter() & 1) == 0)
    {

LABEL_19:
      AnimationResource.repeat(duration:)();
      v20 = Entity.playAnimation(_:transitionDuration:startsPaused:)();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v1 + v40);
      *(v1 + v40) = 0x8000000000000000;
      result = sub_10000BE7C(v41, v17);
      v23 = v42[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      v27 = v22;
      if (v42[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v33 = result;
        sub_100AA8D20();
        result = v33;
        if (v27)
        {
          goto LABEL_4;
        }

LABEL_25:
        v12 = v42;
        v42[(result >> 6) + 8] |= 1 << result;
        v29 = (v42[6] + 16 * result);
        *v29 = v41;
        v29[1] = v17;
        v30 = (v42[7] + 16 * result);
        *v30 = v19;
        v30[1] = v20;
        v31 = v42[2];
        v25 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v25)
        {
          goto LABEL_37;
        }

        v42[2] = v32;
      }

      else
      {
        sub_100A91008(v26, isUniquelyReferenced_nonNull_native);
        result = sub_10000BE7C(v41, v17);
        if ((v27 & 1) != (v28 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_24:
        if ((v27 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_4:
        v11 = result;

        v12 = v42;
        v13 = (v42[7] + 16 * v11);
        *v13 = v19;
        v13[1] = v20;
      }

      v1 = v38;
      v0 = v39;
      *(v38 + v40) = v12;
      swift_endAccess();

      v4 = v36;
      v3 = v37;
      v8 = v35;
      goto LABEL_6;
    }

    if (dispatch thunk of AnimationPlaybackController.isPaused.getter())
    {
      dispatch thunk of AnimationPlaybackController.resume()();
    }

LABEL_6:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_12;
    }
  }

  v34 = swift_task_alloc();
  *(v0 + 104) = v34;
  *v34 = v0;
  v34[1] = sub_100CEC180;

  return sub_100CEDA50();
}

uint64_t sub_100CEC180()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100CEC2A0, v3, v2);
}

uint64_t sub_100CEC2A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CEC300()
{
  v1[5] = v0;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_100CEC398, v3, v2);
}

uint64_t sub_100CEC398()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + ((v9 << 10) | (16 * v11)) + 8))
    {

      if (AnimationPlaybackController.isValid.getter())
      {
        dispatch thunk of AnimationPlaybackController.pause()();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_100CEC534;

  return sub_100CEDA50();
}

uint64_t sub_100CEC534()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100CEC654, v3, v2);
}

uint64_t sub_100CEC654()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CEC6B4()
{
  v1[5] = v0;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_100CEC74C, v3, v2);
}

uint64_t sub_100CEC74C()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + ((v9 << 10) | (16 * v11)) + 8))
    {

      if (AnimationPlaybackController.isValid.getter())
      {
        dispatch thunk of AnimationPlaybackController.resume()();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_100CEC8E8;

  return sub_100CEDA50();
}

uint64_t sub_100CEC8E8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100CF0320, v3, v2);
}

uint64_t sub_100CECA08()
{
  v1[8] = v0;
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_100CECAA0, v3, v2);
}

unint64_t sub_100CECAA0()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v39 = v2;
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v38 = v3;

  v10 = 0;
  v36 = v4;
  v37 = v0;
  while (v7)
  {
LABEL_11:
    v15 = (v10 << 10) | (16 * __clz(__rbit64(v7)));
    v16 = (*(v38 + 48) + v15);
    v17 = v16[1];
    v40 = *v16;
    v18 = (*(v38 + 56) + v15);
    v19 = *v18;
    if (v18[1])
    {
      swift_retain_n();

      if (AnimationPlaybackController.isValid.getter())
      {
        dispatch thunk of AnimationPlaybackController.stop()();
      }
    }

    else
    {
    }

    swift_beginAccess();
    v20 = v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v1 + v39);
    v22 = v1;
    *(v1 + v39) = 0x8000000000000000;
    result = sub_10000BE7C(v40, v17);
    v24 = v41[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v28 = v23;
    if (v41[3] < v27)
    {
      sub_100A91008(v27, isUniquelyReferenced_nonNull_native);
      result = sub_10000BE7C(v40, v17);
      if ((v28 & 1) != (v29 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_21:
      if (v28)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v34 = result;
    sub_100AA8D20();
    result = v34;
    if (v28)
    {
LABEL_4:
      v11 = result;

      v12 = v41;
      v13 = (v41[7] + 16 * v11);
      *v13 = v20;
      v13[1] = 0;

      goto LABEL_5;
    }

LABEL_22:
    v12 = v41;
    v41[(result >> 6) + 8] |= 1 << result;
    v30 = (v41[6] + 16 * result);
    *v30 = v40;
    v30[1] = v17;
    v31 = (v41[7] + 16 * result);
    *v31 = v20;
    v31[1] = 0;
    v32 = v41[2];
    v26 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v26)
    {
      goto LABEL_34;
    }

    v41[2] = v33;
LABEL_5:
    v7 &= v7 - 1;
    *(v22 + v39) = v12;
    v1 = v22;
    v0 = v37;
    swift_endAccess();

    v4 = v36;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_11;
    }
  }

  v35 = swift_task_alloc();
  *(v0 + 96) = v35;
  *v35 = v0;
  v35[1] = sub_100CECE28;

  return sub_100CEDA50();
}

uint64_t sub_100CECE28()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100CECF48, v3, v2);
}

uint64_t sub_100CECF48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CECFA8()
{
  v1[5] = v0;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_100CED040, v3, v2);
}

uint64_t sub_100CED040()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + ((v9 << 10) | (16 * v11)) + 8))
    {

      if (AnimationPlaybackController.isValid.getter())
      {
        AnimationPlaybackController.time.setter();
        dispatch thunk of AnimationPlaybackController.pause()();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_100CEC8E8;

  return sub_100CEDA50();
}

uint64_t sub_100CED1E4(float a1)
{
  *(v2 + 40) = v1;
  *(v2 + 36) = a1;
  *(v2 + 48) = type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return _swift_task_switch(sub_100CED284, v4, v3);
}

uint64_t sub_100CED284()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 36);
  v3 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 48) * v2;
  v4 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 56) * v2;
  v5 = static MainActor.shared.getter();
  *(v0 + 80) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = sub_1005B981C(qword_101A0BFA0);
  *v7 = v0;
  v7[1] = sub_100CED3C8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v5, &protocol witness table for MainActor, 0xD000000000000011, 0x800000010156F580, sub_100CF0314, v6, v8);
}

uint64_t sub_100CED3C8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100CED558;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100CED4EC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100CED4EC()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_100CED558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CED5D0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (qword_1019F1AB0 != -1)
  {
    v8 = a4;
    v9 = a3;
    swift_once();
    a3 = v9;
    a4 = v8;
  }

  result = sub_1009FC4E8(a2, a1, a3, a4);
  if ((result & 1) == 0)
  {
    sub_10086E6A0();
    swift_allocError();
    *v7 = 0xD000000000000018;
    *(v7 + 8) = 0x800000010159A790;
    *(v7 + 16) = 5;
    sub_1005B981C(&qword_101A1B3C0);
    return CheckedContinuation.resume(throwing:)();
  }

  return result;
}

uint64_t sub_100CED6CC@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_weakLoadStrong();
  v44 = a1;
  if (Strong && (v4 = *(Strong + 32), v5 = v4, , v4))
  {
    v43 = v5[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame];
  }

  else
  {
    v43 = 1;
  }

  v41 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds + 16);
  v42 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds);
  v6 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v7 = *(v1 + v6);
  sub_1005B981C(&unk_101A1B3B0);
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  v10 = v7 + 64;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v45 = v8 + 64;
  v50 = v7;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v19 = v16 | (v15 << 6);
      v20 = (*(v50 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      if (*(*(v50 + 56) + 16 * v19 + 8))
      {
        v49 = *v20;

        v48 = dispatch thunk of AnimationPlaybackController.isPaused.getter();
        v47 = dispatch thunk of AnimationPlaybackController.isComplete.getter();
        v46 = AnimationPlaybackController.isPlaying.getter();
        v23 = AnimationPlaybackController.isStopped.getter();
        AnimationPlaybackController.speed.getter();
        v25 = v24;

        v22 = v49;

        v26 = 256;
        if ((v47 & 1) == 0)
        {
          v26 = 0;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL | v48 & 1;
        v28 = 0x10000;
        if ((v46 & 1) == 0)
        {
          v28 = 0;
        }

        v29 = 0x1000000;
        if ((v23 & 1) == 0)
        {
          v29 = 0;
        }

        v30 = v27 | v28 | v29 | (v25 << 32);
      }

      else
      {

        v30 = 2;
      }

      *(v45 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v31 = (v9[6] + 16 * v19);
      *v31 = v22;
      v31[1] = v21;
      *(v9[7] + 8 * v19) = v30;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v9[2] = v34;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

LABEL_31:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_9:
    v17 = v15;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v15 >= v14)
      {
        break;
      }

      v18 = *(v10 + 8 * v15);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    v36 = sub_100CEBA58(v35);

    if (v36[2])
    {
      sub_1005B981C(&qword_101A0F110);
      v37 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v37 = _swiftEmptyDictionarySingleton;
    }

    v51 = v37;

    sub_100CEEE80(v38, 1, &v51);

    v40 = v51;
    *v44 = v42;
    *(v44 + 16) = v41;
    *(v44 + 32) = v9;
    *(v44 + 40) = v43;
    *(v44 + 48) = v40;
  }

  return result;
}

uint64_t sub_100CEDA50()
{
  v1[9] = v0;
  v1[10] = type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_100CEDAEC, v3, v2);
}

uint64_t sub_100CEDAEC()
{
  v1 = *(v0 + 72);
  sub_100CED6CC(v0 + 16);
  v2 = v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
  v4 = *(v0 + 32);
  v3 = *(v0 + 48);
  v5 = *(v0 + 64);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v4;
  *(v2 + 48) = v5;
  *(v2 + 32) = v3;

  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    *(v0 + 120) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 128) = v8;
    *(v0 + 136) = v7;

    return _swift_task_switch(sub_100CEDC04, v8, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100CEDC04()
{
  v1 = v0[14];
  v2 = v1[6];
  v0[18] = v2;
  v0[19] = v1[7];
  v0[20] = v1[8];
  v3 = v1[9];
  v0[21] = v3;
  v0[22] = v1[10];
  v0[23] = v1[11];
  v0[24] = v1[12];
  v0[25] = v1[13];
  v0[26] = v1[14];
  v0[27] = v1[15];
  v0[28] = v1[16];
  if (v3 >> 62 == 1 && v0[9] == v2)
  {

    v6 = swift_task_alloc();
    v0[29] = v6;
    *v6 = v0;
    v6[1] = sub_100CEDD54;

    return sub_100868BA4();
  }

  else
  {

    v4 = v0[12];
    v5 = v0[13];

    return _swift_task_switch(sub_1007102F8, v4, v5);
  }
}

uint64_t sub_100CEDD54()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100CEDE74, v3, v2);
}

uint64_t sub_100CEDE74()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  sub_10086E484(v4, v3, v2, v1);

  v5 = v0[12];
  v6 = v0[13];

  return _swift_task_switch(sub_1007102F8, v5, v6);
}

uint64_t sub_100CEDF50()
{
  v1 = *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration);
  BoundingBox.boundingRadius.getter();
  v3 = v2;
  v4 = ((v1 * 0.5) * 3.1416) / 180.0;
  if (v1 <= 0.0)
  {
    v4 = 0.0087266;
  }

  v5 = v3 / sinf(v4);
  sub_1005B981C(&qword_101A11B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  sub_100CEF5FC(inited);
  swift_setDeallocating();
  type metadata accessor for AnchorEntity();
  HasTransform.position.setter();
  type metadata accessor for PerspectiveCamera();
  v7 = HasPerspectiveCamera.camera.modify();
  PerspectiveCameraComponent.fieldOfViewInDegrees.setter();
  v7(v9, 0);
  HasTransform.orientation.setter();
  sub_100CEF5FC(&off_101874CF8);
  return HasTransform.position.setter();
}

uint64_t sub_100CEE0F4()
{
  v1 = type metadata accessor for ImageBasedLightComponent.Source();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A1B3A0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v16[-v7];
  v9 = *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_lighting);
  v10 = (v2 + 104);
  if (v9)
  {
    *v4 = v9;
    (*v10)(v4, enum case for ImageBasedLightComponent.Source.single(_:), v1, v6);
    swift_retain_n();
    ImageBasedLightComponent.init(source:intensityExponent:)();
    v11 = type metadata accessor for ImageBasedLightComponent();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    v12 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v12(v16, 0);
  }

  else
  {
    type metadata accessor for EnvironmentResource();
    *v4 = static EnvironmentResource.defaultObject()();
    (*v10)(v4, enum case for ImageBasedLightComponent.Source.single(_:), v1);
    ImageBasedLightComponent.init(source:intensityExponent:global:)();
    v14 = type metadata accessor for ImageBasedLightComponent();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    v15 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    return v15(v16, 0);
  }
}

uint64_t sub_100CEE3D0()
{
  v1 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(v2 + 56) + ((v8 << 10) | (16 * v10)) + 8))
    {

      if (AnimationPlaybackController.isValid.getter())
      {
        v11 = AnimationPlaybackController.isPlaying.getter();

        if (v11)
        {
          v12 = 1;
LABEL_15:

          return v12;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v12 = 0;
      goto LABEL_15;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100CEE500()
{
  Hasher.init()();
  v1 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = (*(v2 + 56) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v10;
    v12 = v10[1];

    String.hash(into:)();

    Hasher._combine(_:)(v11);
    if (v12)
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v12);
      v13 = AnimationPlaybackController.isValid.getter();
      Hasher._combine(_:)(v13 & 1);
      v14 = AnimationPlaybackController.isPlaying.getter();
      Hasher._combine(_:)(v14 & 1);
      v15 = dispatch thunk of AnimationPlaybackController.isPaused.getter();
      Hasher._combine(_:)(v15 & 1);
      v16 = AnimationPlaybackController.isStopped.getter();
      Hasher._combine(_:)(v16 & 1);
      AnimationPlaybackController.speed.getter();
      if (v17 == 0.0)
      {
        v17 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v17));
      AnimationPlaybackController.time.getter();
      if (v18 == 0.0)
      {
        v18 = 0.0;
      }

      Hasher._combine(_:)(*&v18);
      AnimationPlaybackController.blendFactor.getter();
      if (v19 == 0.0)
      {
        v19 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v19));
      AnimationPlaybackController.duration.getter();
      if (v20 == 0.0)
      {
        v20 = 0.0;
      }

      Hasher._combine(_:)(*&v20);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return Hasher.finalize()();
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100CEE774()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100CEE7E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100CEE83C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101876AD8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100CEE8B0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_metadata);
  *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_metadata) = a1;

  v8 = sub_100B34A48(v7, v6);

  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = v1;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_10064191C(0, 0, v5, &unk_1014ABFB0, v13);
  }

  return result;
}

uint64_t sub_100CEEA1C()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100CEEB44()
{
  sub_100CEEA1C();

  return swift_deallocClassInstance();
}

uint64_t _s11ClientSceneCMa()
{
  result = qword_101A1B110;
  if (!qword_101A1B110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100CEEBF0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100CEED0C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_100CEED20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
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

uint64_t sub_100CEED7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100CEEDE4()
{
  result = qword_101A1B360;
  if (!qword_101A1B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1B360);
  }

  return result;
}

uint64_t sub_100CEEE80(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10000BE7C(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100A90D48(v15, v4 & 1);
    v10 = sub_10000BE7C(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100AA8BA8();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x800000010159A770;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_10000BE7C(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_100A90D48(v31, 1);
        v27 = sub_10000BE7C(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100CEF230(void *a1, char a2, void *a3)
{
  v46 = a1[2];
  if (!v46)
  {
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v11 = sub_10000BE7C(v5, v6);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100AA8D20();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_28;
  }

  sub_100A91008(v14, a2 & 1);
  v16 = sub_10000BE7C(v5, v6);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_27:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    v44._object = 0x800000010159A770;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v44);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v16;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v20 = (v19[6] + 16 * v11);
  *v20 = v5;
  v20[1] = v6;
  v21 = (v19[7] + 16 * v11);
  *v21 = v7;
  v21[1] = v8;
  v22 = v19[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19[2] = v24;
  if (v46 != 1)
  {
    v25 = a1 + 11;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 3);
      v27 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = *v25;
      v31 = *a3;

      v32 = sub_10000BE7C(v28, v27);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v23 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v23)
      {
        goto LABEL_24;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_100A91008(v36, 1);
        v32 = sub_10000BE7C(v28, v27);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_27;
        }
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v29;
      v41[1] = v30;
      v42 = v39[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      ++v26;
      v39[2] = v43;
      v25 += 4;
      if (v46 == v26)
      {
      }
    }

    goto LABEL_26;
  }
}

uint64_t sub_100CEF5FC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

double sub_100CEF648()
{
  v0 = sub_1005B981C(&qword_101A1B380);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for __REAnchoringType.Alignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  type metadata accessor for Entity();
  HasTransform.orientation.getter();
  v17 = v10;
  Scene.__anchoringType.getter();
  v11 = type metadata accessor for __REAnchoringType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v2, 1, v11) == 1)
  {
    sub_100CF013C(v2);
  }

  else if ((*(v12 + 88))(v2, v11) == enum case for __REAnchoringType.surface(_:))
  {
    (*(v12 + 96))(v2, v11);
    v13 = *(sub_1005B981C(&qword_101A1B388) + 48);
    (*(v4 + 32))(v9, v2, v3);
    v14 = type metadata accessor for __REAnchoringType.Classification();
    (*(*(v14 - 8) + 8))(&v2[v13], v14);
    static __REAnchoringType.Alignment.vertical.getter();
    sub_100CF01A4(&unk_101A1B390, &type metadata accessor for __REAnchoringType.Alignment);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v15 = *(v4 + 8);
    v15(v6, v3);
    if (v19 == v18)
    {
      if (qword_1019F2028 != -1)
      {
        swift_once();
      }

      v17 = xmmword_101A1B0D0;
    }

    v15(v9, v3);
  }

  else
  {
    (*(v12 + 8))(v2, v11);
  }

  return *&v17;
}

uint64_t sub_100CEF9B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  *&v64 = type metadata accessor for Scene.AnchorCollection();
  *&v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  v15 = v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_compression;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_loadReceipt) = 0;
  v16 = v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_lighting;
  *v16 = 0;
  *(v16 + 8) = 0;
  v17 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_metadata;
  *(v7 + v17) = sub_100BD6A7C(_swiftEmptyArrayStorage);
  v18 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_uuid;
  v19 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_uuid;
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 16))(v7 + v19, a1 + v18, v20);
  v58[1] = a1;
  swift_weakAssign();
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_scene) = a2;
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_objectEntity) = a3;
  *v15 = a4;
  *(v15 + 8) = a5 & 1;
  v21 = v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration;
  v22 = *(a6 + 48);
  *(v21 + 32) = *(a6 + 32);
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a6 + 64);
  v23 = *(a6 + 16);
  *v21 = *a6;
  *(v21 + 16) = v23;
  type metadata accessor for AnchorEntity();
  sub_100CEF5FC(&off_101874D28);
  v61 = v24;

  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelAnchor) = AnchorEntity.__allocating_init(world:)();
  type metadata accessor for Entity();
  HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
  v25 = (v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds);
  *v25 = v26;
  v25[1] = v27;
  BoundingBox.center.getter();
  HasTransform.position.setter();

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  type metadata accessor for PerspectiveCamera();
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_cameraEntity) = PerspectiveCamera.init()();
  sub_100CEF5FC(&off_101874D58);
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_cameraAnchor) = AnchorEntity.__allocating_init(world:)();

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  dispatch thunk of Scene.addAnchor(_:)();

  dispatch thunk of Scene.addAnchor(_:)();

  *v28.i64 = sub_100CEF648();
  v61 = v28;
  HasTransform.orientation.getter();
  if ((vminv_u16(vmovn_s32(vceqq_f32(v61, v29))) & 1) == 0)
  {
    HasTransform.orientation.setter();
  }

  swift_allocObject();
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_environmentEntity) = Entity.init()();

  dispatch thunk of Entity.name.setter();

  Entity.turnIntoNinja()();

  v30 = v62;
  dispatch thunk of Scene.anchors.getter();

  Scene.AnchorCollection.appendNinja(_:)();

  (*(v63 + 8))(v30, v64);
  v31 = Entity.availableAnimations.getter();
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = a2;
    v60 = v7;
    if (v32)
    {
      goto LABEL_5;
    }

LABEL_23:

    v35 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_24:
      v48 = _swiftEmptyDictionarySingleton;
      goto LABEL_25;
    }

LABEL_19:
    sub_1005B981C(&unk_101A1B370);
    v48 = static _DictionaryStorage.allocate(capacity:)();
LABEL_25:
    *&v67[0] = v48;
    sub_100CEF230(v35, 1, v67);
    v50 = v60;
    *(v60 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations) = *&v67[0];
    v51 = *(v50 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds);
    v63 = *(v50 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds + 16);
    v64 = v51;
    v52 = sub_100BD6B64(_swiftEmptyArrayStorage);
    v53 = sub_100BD6968(_swiftEmptyArrayStorage);
    v54 = v50 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
    v55 = v63;
    *v54 = v64;
    *(v54 + 16) = v55;
    *(v54 + 32) = v52;
    *(v54 + 40) = 0;
    *(v54 + 48) = v53;
    sub_100CEDF50();
    sub_100CEE0F4();
    sub_100CED6CC(v67);

    v56 = v67[1];
    *v54 = v67[0];
    *(v54 + 16) = v56;
    *(v54 + 32) = v67[2];
    *(v54 + 48) = v68;

    return v50;
  }

LABEL_22:
  v49 = v31;
  v32 = _CocoaArrayWrapper.endIndex.getter();
  v31 = v49;
  v59 = a2;
  v60 = v7;
  if (!v32)
  {
    goto LABEL_23;
  }

LABEL_5:
  v33 = v31;
  v66 = _swiftEmptyArrayStorage;
  v31 = sub_100776BE4(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v61.i64[0] = a3;
    v34 = 0;
    v35 = v66;
    v36 = v33;
    *&v64 = v33 & 0xC000000000000001;
    v62 = (v33 & 0xFFFFFFFFFFFFFF8);
    *&v63 = v33;
    v37 = v32;
    do
    {
      a3 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v64)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *(v62 + 2))
        {
          goto LABEL_21;
        }

        v38 = *(v36 + 8 * v34 + 32);
      }

      v65 = ObjectIdentifier.hashValue.getter();
      *&v67[0] = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v67[0] + 1) = v39;
      v40._countAndFlagsBits = 47;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      v41 = AnimationResource.name.getter();
      if (v42)
      {
        v43 = v42;
      }

      else
      {
        v41 = 0x64656D616E6E75;
        v43 = 0xE700000000000000;
      }

      v44 = v43;
      String.append(_:)(*&v41);

      v7 = *(&v67[0] + 1);
      v45 = *&v67[0];
      v66 = v35;
      a2 = v35[2];
      v46 = v35[3];
      if (a2 >= v46 >> 1)
      {
        v31 = sub_100776BE4((v46 > 1), a2 + 1, 1);
        v35 = v66;
      }

      v35[2] = a2 + 1;
      v47 = &v35[4 * a2];
      v47[4] = v45;
      v47[5] = v7;
      v47[6] = v38;
      v47[7] = 0;
      ++v34;
      v36 = v63;
    }

    while (a3 != v37);

    if (!v35[2])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_100CF013C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A1B380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100CF01A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100CF01EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 == a2)
  {
    goto LABEL_10;
  }

  if ((a3 >> 1) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = (a3 >> 1) + ~a2;
  if (v3 > 3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = *(result + 4 * a2 + 4 * v4);
    v7 = v5;
    *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) = v6;
    v5 = v7;
    ++v4;
  }

  while ((a3 >> 1) - a2 != v4);
  if (v3 != 3)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100CF0260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_100867E24();
}

id sub_100CF051C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a5;
  v38 = a1;
  v39 = a2;
  swift_getObjectType();
  v9 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30[-v10];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v41;
  v17 = sub_100CF0DAC(v15, a3, a4);
  if (v16)
  {
    v40 = v16;

    swift_unknownObjectRelease();
    sub_10002640C(v38, v39);
  }

  else
  {
    v18 = v37;
    v31 = v17;
    v32 = a3;
    v33 = a4;
    v34 = v13;
    v35 = v11;
    Data.write(to:options:)();
    v36 = v6;
    v40 = 0;
    v19 = v18;
    v21 = v34;
    v20 = v35;
    v34[2](v35, v15, v12);
    (v21[7])(v20, 0, 1, v12);
    v22 = type metadata accessor for CRLPreinsertionAssetWrapper();
    v23 = objc_allocWithZone(v22);
    sub_10000BE14(v20, &v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], &unk_1019F33C0);
    v24 = &v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
    v25 = v33;
    *v24 = v32;
    v24[1] = v25;
    *&v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = v19;
    *&v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = 0;
    v26 = v31;
    *&v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = v31;
    v42.receiver = v23;
    v42.super_class = v22;
    v27 = v12;
    v28 = v26;
    swift_unknownObjectRetain();
    v13 = objc_msgSendSuper2(&v42, "init");
    sub_10002640C(v38, v39);
    swift_unknownObjectRelease();

    (v21[1])(v15, v27);
    sub_10000CAAC(v20, &unk_1019F33C0);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id sub_100CF0DAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20[1] = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v13 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
  }

  else
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v10 + 8))(v12, v9);
  }

  v14 = objc_allocWithZone(CRLTemporaryDirectory);
  v21 = 0;
  v15 = [v14 initWithError:&v21];
  if (v15)
  {
    v16 = v21;
    v17 = [v15 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.appendingPathComponent(_:isDirectory:)();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v18 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v15;
}

uint64_t sub_100CF111C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v41 = a5;
  v39 = a2;
  ObjectType = swift_getObjectType();
  v10 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100CF0DAC(v16, a3, a4);
  if (v5)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v35 = v12;
    v36 = 0;
    v18 = v39;
    v38 = v17;
    v19 = a1;
    v20 = URL.isFileURL.getter();
    v37 = v13;
    v34 = a3;
    if (v20)
    {
      URL.path.getter();
    }

    else
    {
      URL.absoluteString.getter();
    }

    v21 = String._bridgeToObjectiveC()();

    v22 = v14;
    if (v18)
    {
      v23.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v23.super.isa = 0;
    }

    v24 = a4;
    v25 = sub_100511630(v19, v21, v23.super.isa);

    if (v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = v35;
      URL.init(fileURLWithPath:)();

      v27 = v16;
      v28 = v37;
      (*(v22 + 56))(v26, 0, 1, v37);
      v29 = type metadata accessor for CRLPreinsertionAssetWrapper();
      v30 = objc_allocWithZone(v29);
      sub_10000BE14(v26, &v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], &unk_1019F33C0);
      v31 = &v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
      *v31 = v34;
      v31[1] = v24;
      *&v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = v41;
      *&v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = 0;
      *&v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = v38;
      v40.receiver = v30;
      v40.super_class = v29;
      ObjectType = objc_msgSendSuper2(&v40, "init");

      (*(v22 + 8))(v27, v28);
      sub_10000CAAC(v26, &unk_1019F33C0);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return ObjectType;
    }

    ObjectType = NSCocoaErrorDomain;
    [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:512 userInfo:0];
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v22 + 8))(v16, v37);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return ObjectType;
}

id sub_100CF1690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v8);
  v10 = (*(v9 + 16))(v8, v9);
  v12 = v11;
  v13 = type metadata accessor for CRLPreinsertionAssetWrapper();
  v14 = objc_allocWithZone(v13);
  sub_10000BE14(v6, &v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], &unk_1019F33C0);
  v15 = &v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
  *v15 = v10;
  v15[1] = v12;
  *&v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = a2;
  *&v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = a1;
  *&v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = 0;
  v18.receiver = v14;
  v18.super_class = v13;
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_10000CAAC(v6, &unk_1019F33C0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t sub_100CF18DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for CRLAssetData();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100CF197C, 0, 0);
}

uint64_t sub_100CF197C()
{
  v1 = v0[9];
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v2)
  {
    sub_10000630C(v2 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, (v0 + 2));
    sub_1005B981C(&qword_1019FF208);
    type metadata accessor for CRLAssetBackedAssetStorage();
    if (swift_dynamicCast())
    {
      v3 = v0[11];
      v4 = v0[12];
      v5 = v0[8];
      sub_1008786E0(v0[7] + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v3);

      sub_1006008F0(v3, v4);
      sub_1006008F0(v4, v5);

      v6 = v0[1];

      return v6();
    }

    v1 = v0[9];
  }

  v8 = swift_task_alloc();
  v0[13] = v8;
  *(v8 + 16) = v1;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100CF1B5C;
  v10 = v0[10];
  v11 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000012, 0x800000010159A9A0, sub_100CF5EB0, v8, v10);
}

uint64_t sub_100CF1B5C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100CF1CAC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100CF1CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CF1D24()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for CRLAssetData();
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100CF1DB8, 0, 0);
}

uint64_t sub_100CF1DB8()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v2)
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *(v6 + 16) = v1;
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_100CF1F08;
    v9 = v0[3];
    v8 = v0[4];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000012, 0x800000010159A9A0, sub_100CF5C88, v6, v9);
  }
}

uint64_t sub_100CF1F08()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100CF20C0;
  }

  else
  {

    v2 = sub_100CF2024;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100CF2024()
{
  v1 = *(v0 + 32);
  swift_getObjectType();
  v2 = sub_1009F7AA0(v1);
  sub_10072C8E4(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100CF20C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CF22A0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1007142A8;

  return sub_100CF1D24();
}

uint64_t sub_100CF2348(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v3 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v3 - 8);
  v96 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A1B430);
  __chkstk_darwin(v5);
  v7 = (&v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v78 - v9);
  v11 = sub_1005B981C(&qword_101A1B438);
  v12 = *(v11 - 8);
  v91 = *(v12 + 64);
  __chkstk_darwin(v11);
  v92 = &v78 - v13;
  v14 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v14 - 8);
  v97 = &v78 - v15;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v93 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v90 = &v78 - v20;
  __chkstk_darwin(v21);
  v23 = &v78 - v22;
  if (static Task<>.isCancelled.getter())
  {
LABEL_8:
    *v10 = [objc_opt_self() crl_errorWithCode:4 userInfo:0];
    swift_storeEnumTagMultiPayload();
    sub_10000BE14(v10, v7, &qword_101A1B430);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v99 = *v7;
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      sub_1006008F0(v7, v96);
      CheckedContinuation.resume(returning:)();
    }

    return sub_10000CAAC(v10, &qword_101A1B430);
  }

  v86 = v5;
  v24 = OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url;
  v25 = v17[6];
  v88 = v17 + 6;
  v87 = v25;
  v26 = v25(a2 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url, 1, v16);
  v89 = v16;
  v95 = v23;
  v94 = v17;
  if (v26 == 1)
  {
    v83 = v24;
    v82 = a2;
    v84 = v12;
    v85 = v11;
    v81 = objc_opt_self();
    v27 = [v81 _atomicIncrementAssertCount];
    v99 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v99);
    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 lastPathComponent];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v79 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v27;
    v34 = sub_1005CF000();
    *(inited + 96) = v34;
    v35 = sub_1005CF04C();
    *(inited + 104) = v35;
    v36 = v80;
    *(inited + 72) = v80;
    *(inited + 136) = &type metadata for String;
    v37 = sub_1000053B0();
    *(inited + 112) = v30;
    *(inited + 120) = v32;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v37;
    *(inited + 152) = 118;
    v38 = v99;
    *(inited + 216) = v34;
    *(inited + 224) = v35;
    *(inited + 192) = v38;
    v39 = v36;
    v40 = v38;
    v41 = static os_log_type_t.error.getter();
    v42 = v79;
    sub_100005404(v79, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v43, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v44 = swift_allocObject();
    v44[2] = 8;
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = 0;
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    [v81 handleFailureInFunction:v46 file:v47 lineNumber:118 isFatal:0 format:v48 args:v45];

    v11 = v85;
    v17 = v94;
    v16 = v89;
    v23 = v95;
    v12 = v84;
    a2 = v82;
    v24 = v83;
  }

  v49 = a2 + v24;
  v50 = v97;
  sub_10000BE14(v49, v97, &unk_1019F33C0);
  if (v87(v50, 1, v16) == 1)
  {
    sub_10000CAAC(v50, &unk_1019F33C0);
    goto LABEL_8;
  }

  v52 = v17[4];
  v88 = v17 + 4;
  v87 = v52;
  v52(v23, v50, v16);
  v53 = *(a2 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename + 8);
  v96 = *(a2 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename);
  v54 = *(a2 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner);
  v97 = v53;

  v55 = [v54 store];
  v56 = *&v55[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v56 + 16));
  v57 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v58 = *&v55[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v58)
  {
    v86 = *&v55[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v59 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v60 = v55;
    v61 = sub_10001F1A0(v60);

    v62 = *&v55[v57];
    *&v55[v57] = v61;
    v86 = v61;

    v58 = 0;
  }

  v63 = *(v56 + 16);
  v64 = v58;
  os_unfair_lock_unlock(v63);

  v65 = v92;
  (*(v12 + 16))(v92, v98, v11);
  v66 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v98 = swift_allocObject();
  (*(v12 + 32))(v98 + v66, v65, v11);
  v67 = v94;
  v68 = v94[2];
  v69 = v90;
  v70 = v95;
  v71 = v89;
  v68(v90, v95, v89);
  v72 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v92 = swift_allocObject();
  v73 = v87;
  v87(v92 + v72, v69, v71);
  v74 = v93;
  v68(v93, v70, v71);
  v75 = swift_allocObject();
  v73(v75 + v72, v74, v71);
  v76 = v97;

  v77 = v86;
  sub_10108F508(v96, v76, sub_100CF5BC0, v92, sub_100CF5BEC, v75, sub_100CF5C90, v98);

  swift_bridgeObjectRelease_n();

  return (v94[1])(v95, v71);
}

uint64_t sub_100CF2EA0(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v63 = a1;
  v60 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v60);
  v62 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1005B981C(&qword_101A1B430);
  __chkstk_darwin(v66);
  v4 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = (&v53 - v6);
  __chkstk_darwin(v8);
  v61 = (&v53 - v9);
  __chkstk_darwin(v10);
  v65 = &v53 - v11;
  v12 = sub_1005B981C(&qword_101A1B428);
  __chkstk_darwin(v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v53 - v16;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  __chkstk_darwin(v23);
  v64 = &v53 - v24;
  v25 = sub_1005B981C(&unk_101A1B440);
  __chkstk_darwin(v25);
  v27 = (&v53 - v26);
  sub_10000BE14(v63, &v53 - v26, &unk_101A1B440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v7 = *v27;
    swift_storeEnumTagMultiPayload();
    sub_10000BE14(v7, v4, &qword_101A1B430);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v68 = *v4;
      sub_1005B981C(&qword_101A1B438);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      sub_1006008F0(v4, v62);
      sub_1005B981C(&qword_101A1B438);
      CheckedContinuation.resume(returning:)();
    }

    v50 = &qword_101A1B430;
    v51 = v7;
  }

  else
  {
    v28 = v64;
    sub_100CF5C18(v27, v64);
    sub_10000BE14(v28, v22, &qword_101A1B428);
    v29 = &v22[*(v12 + 48)];
    v30 = *v29;
    v31 = *(v29 + 1);
    v32 = *(v12 + 64);
    v33 = type metadata accessor for UUID();
    v63 = *(v33 - 8);
    v34 = *(v63 + 32);
    v57 = v33;
    v58 = v34;
    v34(v19, v22, v33);
    v35 = &v19[*(v12 + 48)];
    *v35 = v30;
    *(v35 + 1) = v31;
    v36 = *(v12 + 64);
    v37 = type metadata accessor for URL();
    v38 = *(v37 - 8);
    (*(v38 + 32))(&v19[v36], &v22[v32], v37);
    v39 = v14;
    v40 = v59;
    v41 = v60;
    v55 = *(v60 + 24);
    sub_10000BE14(v19, v59, &qword_101A1B428);

    v56 = *(v12 + 64);
    sub_100CF5C18(v19, v39);
    v42 = (v39 + *(v12 + 48));
    v43 = *v42;
    v44 = v42[1];
    v54 = *(v12 + 64);
    v45 = v65;
    v46 = v57;
    v58(v65, v40, v57);
    v47 = (v45 + *(v41 + 20));
    *v47 = v43;
    v47[1] = v44;
    *(v45 + v55) = _swiftEmptyDictionarySingleton;
    v48 = *(v38 + 8);
    v48(v39 + v54, v37);
    (*(v63 + 8))(v39, v46);
    v48(v40 + v56, v37);
    swift_storeEnumTagMultiPayload();
    v49 = v61;
    sub_10000BE14(v45, v61, &qword_101A1B430);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v68 = *v49;
      sub_1005B981C(&qword_101A1B438);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      sub_1006008F0(v49, v62);
      sub_1005B981C(&qword_101A1B438);
      CheckedContinuation.resume(returning:)();
    }

    sub_10000CAAC(v65, &qword_101A1B430);
    v50 = &qword_101A1B428;
    v51 = v64;
  }

  return sub_10000CAAC(v51, v50);
}

id sub_100CF34E8()
{
  v152 = sub_1005B981C(&qword_101A1B428);
  __chkstk_darwin(v152);
  v2 = v129 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v129 - v4;
  __chkstk_darwin(v6);
  v8 = v129 - v7;
  v9 = type metadata accessor for UUID();
  v153 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v12);
  v14 = v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v15 - 8);
  v17 = v129 - v16;
  v18 = type metadata accessor for URL();
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v29 = __chkstk_darwin(v21);
  v30 = v0;
  v31 = *&v0[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset];
  v32 = v31;
  if (!v31)
  {
    v138 = v8;
    v139 = v5;
    v147 = 0;
    v148 = v17;
    v142 = v24;
    v143 = v23;
    v144 = v28;
    v145 = v27;
    v146 = v11;
    v149 = v26;
    v150 = v129 - v25;
    v137 = v12;
    v33 = OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url;
    v34 = v26[6];
    v35 = v30;
    v151 = v22;
    v36 = v34(&v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], 1, v29);
    v140 = v2;
    v141 = v9;
    v136 = v14;
    if (v36 == 1)
    {
      v132 = v35;
      v134 = v33;
      v135 = v34;
      v133 = objc_opt_self();
      v37 = [v133 _atomicIncrementAssertCount];
      v154[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v154);
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
      v46 = sub_1005CF000();
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
      *(inited + 152) = 143;
      v49 = v38;
      v50 = v154[0];
      *(inited + 216) = v46;
      *(inited + 224) = v47;
      *(inited + 192) = v50;
      v51 = v49;
      v52 = v50;
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v55 = swift_allocObject();
      v55[2] = 8;
      v55[3] = 0;
      v55[4] = 0;
      v55[5] = 0;
      v56 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v58 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v59 = String._bridgeToObjectiveC()();

      [v133 handleFailureInFunction:v57 file:v58 lineNumber:143 isFatal:0 format:v59 args:v56];

      v33 = v134;
      v34 = v135;
      v35 = v132;
    }

    v60 = v148;
    sub_10000BE14(&v35[v33], v148, &unk_1019F33C0);
    v61 = v151;
    if ((v34)(v60, 1, v151) == 1)
    {
      sub_10000CAAC(v60, &unk_1019F33C0);
      v62 = objc_opt_self();
      v63 = [v62 _atomicIncrementAssertCount];
      v154[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v154);
      StaticString.description.getter();
      v64 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v65 = String._bridgeToObjectiveC()();

      v66 = [v65 lastPathComponent];

      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v70 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v71 = swift_initStackObject();
      *(v71 + 16) = xmmword_10146CA70;
      *(v71 + 56) = &type metadata for Int32;
      *(v71 + 64) = &protocol witness table for Int32;
      *(v71 + 32) = v63;
      v72 = sub_1005CF000();
      *(v71 + 96) = v72;
      v73 = sub_1005CF04C();
      *(v71 + 104) = v73;
      *(v71 + 72) = v64;
      *(v71 + 136) = &type metadata for String;
      v74 = sub_1000053B0();
      *(v71 + 112) = v67;
      *(v71 + 120) = v69;
      *(v71 + 176) = &type metadata for UInt;
      *(v71 + 184) = &protocol witness table for UInt;
      *(v71 + 144) = v74;
      *(v71 + 152) = 148;
      v75 = v154[0];
      *(v71 + 216) = v72;
      *(v71 + 224) = v73;
      *(v71 + 192) = v75;
      v76 = v64;
      v77 = v75;
      v78 = static os_log_type_t.error.getter();
      sub_100005404(v70, &_mh_execute_header, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v71);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v79 = static os_log_type_t.error.getter();
      sub_100005404(v70, &_mh_execute_header, v79, "Preinsertion asset wrapper missing necessary data from init", 59, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v80 = swift_allocObject();
      v80[2] = 8;
      v80[3] = 0;
      v80[4] = 0;
      v80[5] = 0;
      v81 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v82 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v83 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v84 = String._bridgeToObjectiveC()();

      [v62 handleFailureInFunction:v82 file:v83 lineNumber:148 isFatal:0 format:v84 args:v81];

      v32 = 0;
    }

    else
    {
      v85 = (v149 + 4);
      v86 = v149[4];
      v86(v150, v60, v61);
      v87 = *&v35[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename + 8];
      v133 = *&v35[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
      v88 = *&v35[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner];
      v129[1] = swift_getObjectType();

      v129[2] = v88;
      v89 = [v88 store];
      v90 = *&v89[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
      os_unfair_lock_lock(*(v90 + 16));
      v91 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
      v92 = *&v89[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      v134 = v86;
      v135 = v85;
      v148 = v87;
      if (v92)
      {
        v132 = v92;
      }

      else
      {
        v93 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
        v94 = v89;
        v95 = sub_10001F1A0(v94);

        v96 = *&v89[v91];
        *&v89[v91] = v95;
        v132 = v95;

        v92 = 0;
      }

      v97 = *(v90 + 16);
      v98 = v92;
      os_unfair_lock_unlock(v97);

      v99 = v150;
      v100 = v149 + 2;
      v130 = v149[2];
      v101 = v142;
      v102 = v151;
      v130(v142, v150, v151);
      v103 = (*(v100 + 64) + 16) & ~*(v100 + 64);
      v131 = swift_allocObject();
      v104 = v134;
      v134(&v131[v103], v101, v102);
      v105 = v144;
      v130(v144, v99, v102);
      v106 = swift_allocObject();
      v104(v106 + v103, v105, v102);
      v108 = v145;
      v107 = v146;
      v109 = v132;
      sub_10108EA70(v146, v145, v133, v148, sub_100CF5BC0, v131, sub_100CF5BEC, v106);
      v113 = v112;
      v115 = v114;

      v148 = *(v153 + 32);
      v116 = v138;
      v117 = v141;
      v148(v138, v107, v141);
      v118 = v152;
      v119 = (v116 + *(v152 + 48));
      *v119 = v113;
      v119[1] = v115;
      v134(v116 + *(v118 + 64), v108, v102);
      v120 = v137;
      v146 = *(v137 + 24);
      v121 = v139;
      sub_10000BE14(v116, v139, &qword_101A1B428);

      v145 = *(v118 + 64);
      v122 = v140;
      sub_100CF5C18(v116, v140);
      v123 = (v122 + *(v118 + 48));
      v124 = *v123;
      v125 = v123[1];
      v152 = *(v118 + 64);
      v126 = v136;
      v148(v136, v121, v117);
      v127 = (v126 + *(v120 + 20));
      *v127 = v124;
      v127[1] = v125;
      *(v126 + v146) = _swiftEmptyDictionarySingleton;
      v128 = v149[1];
      v128(v122 + v152, v102);
      (*(v153 + 8))(v122, v141);
      v128(&v145[v121], v102);
      v32 = sub_1009F7AA0(v126);
      v128(v150, v102);
      sub_10072C8E4(v126);
    }

    v31 = v147;
  }

  v110 = v31;
  return v32;
}

CGDataProviderRef sub_100CF4BE4()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v10 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v9);
    v11 = *(v10 + 40);
    v12 = v8;
    v13 = v11(v9, v10);

    return v13;
  }

  else
  {
    sub_10000BE14(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url, v3, &unk_1019F33C0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(v3, &unk_1019F33C0);
      return 0;
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      v18 = CGDataProviderCreateWithURL(v16);

      (*(v5 + 8))(v7, v4);
      return v18;
    }
  }
}

CGImageSourceRef sub_100CF4E34()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v10 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v9);
    v11 = *(v10 + 40);
    v12 = v8;
    v13 = v11(v9, v10);

    if (!v13)
    {
      return 0;
    }

LABEL_7:
    v17 = CGImageSourceCreateWithDataProvider(v13, 0);

    return v17;
  }

  sub_10000BE14(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url, v3, &unk_1019F33C0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v13 = CGDataProviderCreateWithURL(v15);

    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

CGImageRef sub_100CF50A0()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v10 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v9);
    v11 = *(v10 + 40);
    v12 = v8;
    v13 = v11(v9, v10);

    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    sub_10000BE14(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url, v3, &unk_1019F33C0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(v3, &unk_1019F33C0);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v13 = CGDataProviderCreateWithURL(v15);

    (*(v5 + 8))(v7, v4);
    if (!v13)
    {
      return 0;
    }
  }

  v17 = CGImageSourceCreateWithDataProvider(v13, 0);

  if (v17)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v17, 0, 0);

    return ImageAtIndex;
  }

  return 0;
}

id sub_100CF53B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLPreinsertionAssetWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLPreinsertionAssetWrapper()
{
  result = qword_101A1B418;
  if (!qword_101A1B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100CF54D4()
{
  sub_10084E720();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100CF5584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class a5)
{
  v9 = objc_allocWithZone(a5);

  return sub_100CF55F4(a1, a2, a3, a4, v9);
}

id sub_100CF55F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  if (!a3)
  {
    a2 = URL.lastPathComponent.getter();
    a3 = v15;
  }

  v53 = a2;
  v54 = a3;
  v52 = type metadata accessor for CRLPreinsertionAssetWrapper();
  v16 = objc_allocWithZone(v52);
  v50 = v12;
  v51 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v46 = v13;
    v47 = a4;
    v48 = a1;
    v49 = a5;
    v45 = objc_opt_self();
    v17 = [v45 _atomicIncrementAssertCount];
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
    *(inited + 152) = 82;
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
    sub_100005404(v24, &_mh_execute_header, v33, "Invalid init arguments.", 23, 2, _swiftEmptyArrayStorage);

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

    [v45 handleFailureInFunction:v36 file:v37 lineNumber:82 isFatal:0 format:v38 args:v35];

    a1 = v48;
    v13 = v46;
    a4 = v47;
  }

  v39 = v50;
  sub_10000BE14(v50, &v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], &unk_1019F33C0);
  v40 = &v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
  v41 = v54;
  *v40 = v53;
  v40[1] = v41;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = a4;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = 0;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = 0;
  v55.receiver = v16;
  v55.super_class = v52;
  v42 = objc_msgSendSuper2(&v55, "init");
  (*(v51 + 8))(a1, v13);
  sub_10000CAAC(v39, &unk_1019F33C0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v42;
}

uint64_t sub_100CF5C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1B428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CF5C90(uint64_t a1)
{
  v3 = *(sub_1005B981C(&qword_101A1B438) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100CF2EA0(a1, v4);
}

uint64_t sub_100CF5E04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_100CF22A0(v2, v3);
}

uint64_t sub_100CF5EB4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v22 - v4;
  v6 = [v0 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B9664();

  v7 = [v0 layout];
  swift_dynamicCastClassUnconditional();
  v22 = matrix_identity_float4x4.columns[3];
  sub_1008B9810(v22);

  if ((*(*&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController] + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) | 4) != 4)
  {
    sub_100F97F98(1);
  }

  v8 = [v0 interactiveCanvasController];
  [v8 layoutIfNeeded];

  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_hideKnobsDueToBoundsUpdate] = 1;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  type metadata accessor for MainActor();
  v18 = v1;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[1].n128_u64[0] = v19;
  v20[1].n128_u64[1] = &protocol witness table for MainActor;
  v20[2].n128_u64[0] = v18;
  v20[3] = v22;
  v20[4].n128_u64[0] = v14;
  v20[4].n128_u64[1] = v16;
  sub_10064191C(0, 0, v5, &unk_1014AC478, v20);
}

id sub_100CF61CC(void *a1, void *a2)
{
  v5 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_maxErrorRecoveryAttempts] = 10;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_suppressInvalidateForRenderingStateChange] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_hideKnobsDueToBoundsUpdate] = 0;
  v8 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for CRLUSDZKnobController()) init];
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_animationIsPaused] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_rendererHasBeenSuspended] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_externallySetAlpha] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewXConstraint] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewYConstraint] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewSize] = vdupq_n_s64(0x4049000000000000uLL);
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewHiddenBecauseTooSmall] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isZooming] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isResizing] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobsWereVisibleBeforeDynamicOperation] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_shouldUpdateRenderingStateForSceneCapture] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_didAddNotificationCenterAddObservers] = 0;
  v9 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy] = 4;
  if (!a2)
  {
    goto LABEL_8;
  }

  v10 = a2;
  if (![v10 isCanvasInteractive])
  {

LABEL_8:
    v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] = 0;
    goto LABEL_9;
  }

  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] = 1;
  if (qword_1019F1AB8 != -1)
  {
    swift_once();
  }

  v11 = byte_101AD6F08;

  if (v11)
  {
    v2[v9] = 3;
  }

  else
  {
    v2[v9] = 1;
  }

LABEL_9:
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  swift_storeEnumTagMultiPayload();
  v12 = &v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
  *v12 = 0;
  v12[8] = -64;
  v13 = type metadata accessor for CRLUSDZRep(0);
  v22.receiver = v2;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, "initWithLayout:canvas:", a1, a2);
  if (([v14 hasBeenRemoved] & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
    swift_beginAccess();
    sub_100D13C98(v14 + v15, v7, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {

        v19 = sub_1005B981C(&unk_101A1B858);
        sub_100D13C38(v7 + *(v19 + 48), type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError);
      }

      else
      {
        sub_100CFB5B4();
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_100D13C38(v7, type metadata accessor for CRLUSDZRep.PosterLoadingState);
      sub_100CFD188();
    }

    else
    {

      v17 = *(sub_1005B981C(&qword_101A1B828) + 48);
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 8))(v7 + v17, v18);
    }

    sub_100CF979C();
  }

  sub_100CF8070();
  sub_100D0CB5C();

  return v14;
}

uint64_t sub_100CF6624()
{
  v41 = type metadata accessor for UUID();
  v1 = *(v41 - 8);
  __chkstk_darwin(v41);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLAssetData();
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 info];
  type metadata accessor for CRLUSDZItem();
  v12 = swift_dynamicCastClassUnconditional();
  v13 = [v0 info];
  if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  v39 = v11;
  v40 = v1;
  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C98(v6, v10, type metadata accessor for CRLAssetData);
  sub_100D13C38(v6, type metadata accessor for CRLUSDZAssetDataStruct);
  v14 = [v12 store];
  v15 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v15 + 16));
  v16 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v17 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v17)
  {
    v18 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v19 = type metadata accessor for CRLAssetManager();
    v20 = objc_allocWithZone(v19);
    v37 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v21 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v22 = swift_allocObject();
    v38 = v12;
    v23 = v22;
    v24 = v14;
    v25 = swift_slowAlloc();
    *v25 = 0;
    *(v23 + 16) = v25;
    atomic_thread_fence(memory_order_acq_rel);
    *&v20[v21] = v23;
    *&v20[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v26 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v20[v26] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v20[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v42.receiver = v20;
    v42.super_class = v19;
    v27 = objc_msgSendSuper2(&v42, "init");

    v28 = *&v14[v16];
    *&v14[v16] = v27;
    v18 = v27;

    v12 = v38;
    v17 = 0;
  }

  v29 = *(v15 + 16);
  v30 = v17;
  os_unfair_lock_unlock(v29);

  v31 = sub_1011255E0(v10, v12, v18);
  swift_unknownObjectRelease();

  sub_100D13C38(v10, type metadata accessor for CRLAssetData);
  v32 = *&v31[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  v33 = *&v31[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
  sub_100020E58(&v31[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v32);
  (*(v33 + 24))(v32, v33);

  if (qword_1019F2878 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v34 = v41;
  sub_1005EB3DC(v41, qword_101AD8F08);
  v35 = static UUID.== infix(_:_:)();
  (*(v40 + 8))(v3, v34);
  return v35 & 1;
}

BOOL sub_100CF6B20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_100CF6B5C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  sub_100D13C98(v2, &v19 - v12, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100D13C98(v13, v10, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    v14 = *v10;
    v15 = *(sub_1005B981C(&unk_101A1B858) + 48);
    type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = *(v5 + 32);
      v17(v7, v10 + v15, v4);
      v18 = *(sub_1005B981C(&qword_101A1B828) + 48);
      *a1 = v14;
      v17(&a1[v18], v7, v4);
      swift_storeEnumTagMultiPayload();
      return sub_100D13C38(v13, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    }

    sub_100D13C38(v10 + v15, type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError);
  }

  sub_100D13C98(v2, a1, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  return sub_100D13C38(v13, type metadata accessor for CRLUSDZRep.PosterLoadingState);
}

uint64_t sub_100CF6DD0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  sub_100D13C98(v2, &v19 - v12, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_100D13C98(v13, v10, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v14 = *v10;
    v15 = *(sub_1005B981C(&qword_101A1B818) + 48);
    type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = *(v5 + 32);
      v17(v7, v10 + v15, v4);
      v18 = *(sub_1005B981C(&qword_101A1B828) + 48);
      *a1 = v14;
      v17(&a1[v18], v7, v4);
      swift_storeEnumTagMultiPayload();
      return sub_100D13C38(v13, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }

    sub_100D13C38(v10 + v15, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
  }

  sub_100D13C98(v2, a1, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  return sub_100D13C38(v13, type metadata accessor for CRLUSDZRep.AssetLoadingState);
}

uint64_t sub_100CF7044()
{
  v1 = type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D13C98(v0, v3, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v10 = [objc_opt_self() mainBundle];
      v11 = String._bridgeToObjectiveC()();
      v12 = String._bridgeToObjectiveC()();
      v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v6 = [objc_opt_self() mainBundle];
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
    }
  }

  else
  {
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
  }

  return v5;
}

uint64_t sub_100CF729C(uint64_t a1)
{
  v3 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
  swift_beginAccess();
  sub_100D15E6C(a1, v1 + v6, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  swift_endAccess();
  if (([v1 hasBeenRemoved] & 1) == 0)
  {
    sub_100D13C98(v1 + v6, v5, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {

        v10 = sub_1005B981C(&unk_101A1B858);
        sub_100D13C38(v5 + *(v10 + 48), type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError);
      }

      else
      {
        sub_100CFB5B4();
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_100D13C38(v5, type metadata accessor for CRLUSDZRep.PosterLoadingState);
      sub_100CFD188();
    }

    else
    {

      v8 = *(sub_1005B981C(&qword_101A1B828) + 48);
      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
    }

    sub_100CF979C();
  }

  return sub_100D13C38(a1, type metadata accessor for CRLUSDZRep.PosterLoadingState);
}

void sub_100CF749C()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView];
  *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView] = 0;

  if ((v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_suppressInvalidateForRenderingStateChange] & 1) == 0 && v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] == 1)
  {
    v2 = [v0 interactiveCanvasController];
    [v2 invalidateContentLayersForRep:v0];

    [v0 setNeedsDisplay];
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v5 = [v0 debugDescription];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(inited + 56) = &type metadata for String;
    v9 = sub_1000053B0();
    *(inited + 64) = v9;
    *(inited + 32) = v6;
    *(inited + 40) = v8;
    v10 = &v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    v11 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    LOBYTE(v6) = v10[8];
    sub_100D1548C(v11, v6);
    v12 = sub_100CF76B0(v11, v6);
    v14 = v13;
    sub_100D15590(v11, v6);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v9;
    *(inited + 72) = v12;
    *(inited + 80) = v14;
    v15 = static os_log_type_t.debug.getter();
    sub_100005404(v3, &_mh_execute_header, v15, "(USDZRep) [%{public}@] rendering state: %{public}@", 50, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
  }
}

uint64_t sub_100CF76B0(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 >> 6) <= 1u)
  {
    if (!(a2 >> 6))
    {
      return 0xD000000000000011;
    }

    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    v17 = (v16 >> 4) & 3;
    if (v17)
    {
      v18 = v6;
      if (v17 == 1)
      {
        v74 = *(a1 + 40);
        v75 = 0;
        v76 = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v19._object = 0x800000010159B030;
        v19._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v19);
        ObjectType = swift_getObjectType();
        (*(v14 + 8))(ObjectType, v14);
        UUID.uuidString.getter();
        String.index(_:offsetBy:)();
        String.subscript.getter();

        v21 = static String._fromSubstring(_:)();
        v23 = v22;

        (*(v5 + 8))(v9, v18);
        v24._countAndFlagsBits = v21;
        v24._object = v23;
        String.append(_:)(v24);

        v25._countAndFlagsBits = 0xD000000000000012;
        v25._object = 0x800000010159B050;
        String.append(_:)(v25);
        v26 = [v15 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30._countAndFlagsBits = v27;
        v30._object = v29;
        String.append(_:)(v30);

        v31._countAndFlagsBits = 0x6E69776F6873202CLL;
        v31._object = 0xEB00000000203A67;
        String.append(_:)(v31);
        v32._countAndFlagsBits = sub_100CF76B0(v74, v16 & 0xFFFFFFCF);
        String.append(_:)(v32);
      }

      else
      {
        v45 = [*(a1 + 32) layer];
        _s10MetalLayerCMa();
        v46 = swift_dynamicCastClass();
        if (v46)
        {
          v47 = v46;
          v75 = 0;
          v76 = 0xE000000000000000;
          _StringGuts.grow(_:)(39);

          v75 = 0xD000000000000013;
          v76 = 0x800000010159B030;
          v48 = swift_getObjectType();
          (*(v14 + 8))(v48, v14);
          UUID.uuidString.getter();
          String.index(_:offsetBy:)();
          String.subscript.getter();

          v49 = static String._fromSubstring(_:)();
          v51 = v50;

          (*(v5 + 8))(v9, v18);
          v52._countAndFlagsBits = v49;
          v52._object = v51;
          String.append(_:)(v52);

          v53._countAndFlagsBits = 0x206C6174656D202CLL;
          v53._object = 0xEF203A726579616CLL;
          String.append(_:)(v53);
          v54 = [v47 description];
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v58._countAndFlagsBits = v55;
          v58._object = v57;
          String.append(_:)(v58);

          v59._countAndFlagsBits = 41;
          v59._object = 0xE100000000000000;
          String.append(_:)(v59);

          return v75;
        }

        v75 = 0;
        v76 = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        v75 = 0xD000000000000013;
        v76 = 0x800000010159B030;
        v60 = swift_getObjectType();
        (*(v14 + 8))(v60, v14);
        UUID.uuidString.getter();
        String.index(_:offsetBy:)();
        String.subscript.getter();

        v61 = static String._fromSubstring(_:)();
        v63 = v62;

        (*(v5 + 8))(v9, v18);
        v64._countAndFlagsBits = v61;
        v64._object = v63;
        String.append(_:)(v64);

        v65._countAndFlagsBits = 0x3A726579616C202CLL;
        v65._object = 0xE900000000000020;
        String.append(_:)(v65);
        v66 = [v15 layer];
        v67 = [v66 description];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        v71._countAndFlagsBits = v68;
        v71._object = v70;
        String.append(_:)(v71);
      }
    }

    else
    {
      v75 = 0;
      v76 = 0xE000000000000000;
      v33 = v6;
      _StringGuts.grow(_:)(32);

      v75 = 0xD000000000000013;
      v76 = 0x800000010159B030;
      v34 = swift_getObjectType();
      (*(v14 + 8))(v34, v14);
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v35 = static String._fromSubstring(_:)();
      v37 = v36;

      (*(v5 + 8))(v9, v33);
      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._countAndFlagsBits = 0x203A77656976202CLL;
      v39._object = 0xE800000000000000;
      String.append(_:)(v39);
      v40 = [v15 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);
    }

    v72._countAndFlagsBits = 41;
    v72._object = 0xE100000000000000;
    String.append(_:)(v72);
    return v75;
  }

  if (a2 >> 6 == 2)
  {
    v75 = 0x6D49726574736F70;
    v76 = 0xEB00000000656761;
    if (a2)
    {
      v11 = 0x6E6E6970732B2820;
    }

    else
    {
      v11 = 0;
    }

    if (a2)
    {
      v12 = 0xEB00000000297265;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v13 = v12;
    String.append(_:)(*&v11);

    return v75;
  }

  if (a1 | a2 ^ 0xC0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_100CF7EC0()
{
  LODWORD(v1) = [v0 isSelected];
  if (v1)
  {
    v1 = sub_100D0BF4C();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 boardItems];
      type metadata accessor for CRLBoardItem(0);
      sub_100D15398(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1005B981C(&unk_1019F4D60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101465920;
      v6 = [v0 info];
      type metadata accessor for CRLUSDZItem();
      *(inited + 32) = swift_dynamicCastClassUnconditional();
      sub_1005BC5DC(inited);
      v8 = v7;
      swift_setDeallocating();
      swift_arrayDestroy();
      LOBYTE(inited) = sub_100BC5454(v4, v8);

      if (inited)
      {
        if (byte_1019F2C48 == 1)
        {
          LOBYTE(v1) = sub_100D0D22C();
        }

        else
        {
          LOBYTE(v1) = 1;
        }
      }

      else
      {
        LOBYTE(v1) = 0;
      }
    }
  }

  return v1 & 1;
}

void sub_100CF8070()
{
  *&v208 = type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
  __chkstk_darwin(v208);
  v209 = &v196 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v196 - v3;
  *&v210 = type metadata accessor for URL();
  v211 = *(v210 - 8);
  __chkstk_darwin(v210);
  v207 = &v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v196 - v7;
  __chkstk_darwin(v9);
  v11 = &v196 - v10;
  __chkstk_darwin(v12);
  v14 = &v196 - v13;
  __chkstk_darwin(v15);
  v17 = &v196 - v16;
  v18 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v18);
  v206 = (&v196 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = &v196 - v21;
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = (&v196 - v25);
  v212 = v0;
  if (([v0 hasBeenRemoved] & 1) == 0)
  {
    v204 = v22;
    v27 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    v28 = v212;
    swift_beginAccess();
    v203 = v27;
    sub_100D13C98(&v28[v27], v26, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v205 = v26;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v18;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v207 = v18;
        v40 = v205;

        v41 = sub_1005B981C(&qword_101A1B818);
        sub_100D15784(v40 + *(v41 + 48), v209, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
        if (qword_1019F21E0 != -1)
        {
          swift_once();
        }

        v42 = static OS_os_log.crlThreeDimensionalObjects;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        v210 = xmmword_10146BDE0;
        *(inited + 16) = xmmword_10146BDE0;
        v44 = [v212 debugDescription];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        *(inited + 56) = &type metadata for String;
        v48 = sub_1000053B0();
        *(inited + 64) = v48;
        *(inited + 32) = v45;
        *(inited + 40) = v47;
        v49 = sub_100CF7044();
        v50 = v212;
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v48;
        *(inited + 72) = v49;
        *(inited + 80) = v51;
        v52 = static os_log_type_t.error.getter();
        v211 = v42;
        sub_100005404(v42, &_mh_execute_header, v52, "(USDZRep) [%{public}@] error: %{public}@", 40, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v53 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts;
        v54 = *&v50[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts];
        if (v54 <= 10)
        {
          *&v50[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts] = v54 + 1;
          v97 = swift_initStackObject();
          *(v97 + 16) = v210;
          v98 = [v50 debugDescription];
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v100;

          *(v97 + 32) = v99;
          *(v97 + 56) = &type metadata for String;
          *(v97 + 64) = v48;
          *(v97 + 40) = v101;
          v102 = *&v50[v53];
          *(v97 + 96) = &type metadata for Int;
          *(v97 + 104) = &protocol witness table for Int;
          *(v97 + 72) = v102;
          v103 = static os_log_type_t.debug.getter();
          sub_100005404(v211, &_mh_execute_header, v103, "(USDZRep) [%{public}@] recovering from error with full reset (attempts: %{public}lld)", 85, 2, v97);
          swift_setDeallocating();
          swift_arrayDestroy();
          v104 = v204;
          swift_storeEnumTagMultiPayload();
          v105 = v203;
          swift_beginAccess();
          sub_100D15E6C(v104, &v50[v105], type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v106 = swift_endAccess();
          sub_100CF8070(v106);
          sub_100D13C38(v104, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v64 = v209;
        }

        else
        {
          v55 = swift_initStackObject();
          *(v55 + 16) = v210;
          v56 = [v50 debugDescription];
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          *(v55 + 56) = &type metadata for String;
          *(v55 + 64) = v48;
          *(v55 + 32) = v57;
          *(v55 + 40) = v59;
          v60 = v209;
          v61 = sub_100CF7044();
          *(v55 + 96) = &type metadata for String;
          *(v55 + 104) = v48;
          *(v55 + 72) = v61;
          *(v55 + 80) = v62;
          v63 = static os_log_type_t.error.getter();
          sub_100005404(v211, &_mh_execute_header, v63, "(USDZRep) [%{public}@] out of recovery attempts, giving up", 58, 2, v55);
          swift_setDeallocating();
          swift_arrayDestroy();
          v64 = v60;
        }

        sub_100D13C38(v64, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_100CFD258();
      }

      goto LABEL_73;
    }

    if (EnumCaseMultiPayload)
    {
      v31 = v205;
      if (EnumCaseMultiPayload == 1)
      {

        v32 = *(v31 + 8);
        v33 = *(sub_1005B981C(&qword_101A1B820) + 64);
        v34 = v210;
        if (v32 != 1)
        {
          (*(v211 + 8))(v31 + v33, v210);
          return;
        }

        v35 = v211;
        v36 = v212[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy];
        if (v36 <= 1)
        {
          if (v212[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy])
          {
            sub_100D00BFC();
          }

          else
          {
            sub_100D00350();
          }
        }

        else if (v36 == 2)
        {
          sub_100CFFAE8();
        }

        else if (v36 == 3)
        {
          sub_100D01480();
        }

        (*(v35 + 8))(v31 + v33, v34);
        goto LABEL_73;
      }

      v65 = *v205;
      v66 = sub_1005B981C(&unk_101A1B808);
      v209 = v66[12];
      v67 = *(v31 + v66[16]);
      v68 = (v31 + v66[20]);
      v69 = v68[4];
      v70 = v68[5];
      v71 = v68[6];
      if (!(v70 >> 62))
      {
        v208 = v67;
        v206 = v65;

        v107 = v211;
        v108 = v210;
        (*(v211 + 32))(v8, v205 + v209, v210);
        v109 = v204;
        if ((byte_1019F2C48 & 1) != 0 && (sub_100D0D22C() & 1) == 0)
        {
          v143 = *(sub_1005B981C(&qword_101A1B820) + 64);
          v144 = v206;
          *v109 = v206;
          *(v109 + 8) = 0;
          (*(v107 + 16))(v109 + v143, v8, v108);
          swift_storeEnumTagMultiPayload();
          v145 = v203;
          v146 = v212;
          swift_beginAccess();
          v147 = v144;
          sub_100D15E6C(v109, &v146[v145], type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v148 = swift_endAccess();
          sub_100CF8070(v148);

          swift_unknownObjectRelease();
          sub_100D13C38(v109, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          (*(v107 + 8))(v8, v108);
        }

        else
        {
          v110 = swift_allocObject();
          v111 = v212;
          *(v110 + 16) = v212;
          v112 = type metadata accessor for TaskPriority();
          (*(*(v112 - 8) + 56))(v4, 1, 1, v112);
          type metadata accessor for MainActor();
          v113 = v108;
          v114 = v111;
          swift_unknownObjectRetain();

          v115 = static MainActor.shared.getter();
          v116 = swift_allocObject();
          *(v116 + 16) = v115;
          *(v116 + 24) = &protocol witness table for MainActor;
          *(v116 + 32) = v114;
          *(v116 + 40) = v208;
          *(v116 + 56) = &unk_1014AC3E8;
          *(v116 + 64) = v110;
          sub_10064191C(0, 0, v4, &unk_1014AC3F0, v116);

          swift_unknownObjectRelease();

          (*(v107 + 8))(v8, v113);
        }

        goto LABEL_73;
      }

      v73 = *v68;
      v72 = v68[1];
      v74 = v68[2];
      v75 = v68[3];
      if (v70 >> 62 != 1)
      {
        v117 = v74 | v72;
        v118 = v211;
        if (v70 != 0x8000000000000000 || v117 | v73 | v75 | v69 | v71)
        {
          if (v70 == 0x8000000000000000 && v73 == 1 && !(v71 | v69 | v117 | v75))
          {
            swift_unknownObjectRelease();
            v142 = v210;
            (*(v118 + 32))(v14, v205 + v209, v210);
            if (byte_1019F2C48 == 1 && (sub_100D0D22C() & 1) == 0)
            {
              v175 = *(sub_1005B981C(&qword_101A1B820) + 64);
              v176 = v204;
              *v204 = v65;
              *(v176 + 8) = 0;
              (*(v118 + 16))(v176 + v175, v14, v142);
              swift_storeEnumTagMultiPayload();
              v177 = v203;
              v178 = v212;
              swift_beginAccess();
              v179 = v65;
              sub_100D15E6C(v176, &v178[v177], type metadata accessor for CRLUSDZRep.AssetLoadingState);
              v180 = swift_endAccess();
              sub_100CF8070(v180);

              sub_100D13C38(v176, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            }

            else
            {
            }

            (*(v118 + 8))(v14, v142);
          }

          else
          {
            swift_unknownObjectRelease();
            v149 = v210;
            (*(v118 + 32))(v11, v205 + v209, v210);
            if ((byte_1019F2C48 & 1) != 0 && (sub_100D0D22C() & 1) == 0)
            {
              v181 = *(sub_1005B981C(&qword_101A1B820) + 64);
              v182 = v204;
              *v204 = v65;
              *(v182 + 8) = 0;
              (*(v118 + 16))(v182 + v181, v11, v149);
              swift_storeEnumTagMultiPayload();
              v183 = v203;
              v184 = v212;
              swift_beginAccess();
              v185 = v65;
              sub_100D15E6C(v182, &v184[v183], type metadata accessor for CRLUSDZRep.AssetLoadingState);
              v186 = swift_endAccess();
              sub_100CF8070(v186);

              sub_100D13C38(v182, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            }

            else
            {
            }

            (*(v118 + 8))(v11, v149);
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v119 = v210;
          (*(v118 + 32))(v17, v205 + v209, v210);
          if (byte_1019F2C48 == 1 && (sub_100D0D22C() & 1) == 0)
          {
            v169 = *(sub_1005B981C(&qword_101A1B820) + 64);
            v170 = v204;
            *v204 = v65;
            *(v170 + 8) = 0;
            (*(v118 + 16))(v170 + v169, v17, v119);
            swift_storeEnumTagMultiPayload();
            v171 = v203;
            v172 = v212;
            swift_beginAccess();
            v173 = v65;
            sub_100D15E6C(v170, &v172[v171], type metadata accessor for CRLUSDZRep.AssetLoadingState);
            v174 = swift_endAccess();
            sub_100CF8070(v174);

            sub_100D13C38(v170, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          }

          else
          {
            sub_100D01D3C();
          }

          (*(v118 + 8))(v17, v119);
        }

        goto LABEL_73;
      }

      v197 = v68[3];
      v198 = v69;
      v199 = v71;
      v202 = v74;
      swift_unknownObjectRelease();
      v201 = v73;
      if (v202 == 4)
      {
        if (v72 == 1)
        {
          v76 = v211;
          v77 = v210;
          v78 = v207;
          v196 = *(v211 + 16);
          v196(v207, v205 + v209, v210);
          v79 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts;
          if (*&v212[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts] <= 9)
          {
            v80 = byte_1019F2C48;
            byte_1019F2C48 = 1;
            if ((v80 & 1) == 0)
            {
              if (qword_1019F21E0 != -1)
              {
                swift_once();
              }

              v81 = static OS_os_log.crlThreeDimensionalObjects;
              sub_1005B981C(&qword_1019F54E0);
              v82 = swift_initStackObject();
              *(v82 + 16) = xmmword_10146C6B0;
              v83 = byte_1019F2C48;
              *(v82 + 56) = &type metadata for Bool;
              *(v82 + 64) = &protocol witness table for Bool;
              *(v82 + 32) = v83;
              v84 = static os_log_type_t.error.getter();
              sub_100005404(v81, &_mh_execute_header, v84, "Last connection jetsamed set to: %d.", 36, 2, v82);
              swift_setDeallocating();
              sub_100005070(v82 + 32);
            }

            v85 = *&v212[v79];
            v86 = __OFADD__(v85, 1);
            v87 = v85 + 1;
            if (v86)
            {
              __break(1u);
            }

            else
            {
              *&v212[v79] = v87;
              if (qword_1019F21E0 == -1)
              {
LABEL_29:
                *&v208 = static OS_os_log.crlThreeDimensionalObjects;
                sub_1005B981C(&qword_1019F54E0);
                v88 = swift_initStackObject();
                *(v88 + 16) = xmmword_10146C6B0;
                v89 = [v212 debugDescription];
                v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v92 = v91;

                *(v88 + 56) = &type metadata for String;
                *(v88 + 64) = sub_1000053B0();
                *(v88 + 32) = v90;
                *(v88 + 40) = v92;
                v93 = static os_log_type_t.error.getter();
                sub_100005404(v208, &_mh_execute_header, v93, "(USDZRep) [%{public}@] extension disconnected, falling back to low memory mode...", 81, 2, v88);
                swift_setDeallocating();
                sub_100005070(v88 + 32);
                *v206 = v65;
                LODWORD(v88) = byte_1019F2C48;
                v94 = v65;
                if (v88 == 1)
                {
                  v95 = sub_100D0D22C();
                  v78 = v207;
                  v96 = v95;
                }

                else
                {
                  v96 = 1;
                }

                v187 = *(sub_1005B981C(&qword_101A1B820) + 64);
                v188 = v96 & 1;
                v189 = v206;
                *(v206 + 8) = v188;
                v190 = v210;
                v196(&v189[v187], v78, v210);
                swift_storeEnumTagMultiPayload();
                v191 = v203;
                v192 = v78;
                v193 = v212;
                swift_beginAccess();
                sub_100D15E6C(v189, &v193[v191], type metadata accessor for CRLUSDZRep.AssetLoadingState);
                v194 = swift_endAccess();
                sub_100CF8070(v194);
                sub_100863E8C(v201, 1uLL, v202, v197, v198, v70);

                sub_100D13C38(v189, type metadata accessor for CRLUSDZRep.AssetLoadingState);
                v195 = *(v211 + 8);
                v195(v192, v190);
                v195(v205 + v209, v190);
                goto LABEL_73;
              }
            }

            swift_once();
            goto LABEL_29;
          }

          (*(v76 + 8))(v78, v77);
          v73 = v201;
          v72 = 1;
        }

        v200 = v72;
        v206 = v65;
        v207 = v30;
        sub_10086756C(v73, v72, 4u);
        if (qword_1019F21E0 != -1)
        {
          swift_once();
        }

        v196 = static OS_os_log.crlThreeDimensionalObjects;
        sub_1005B981C(&qword_1019F54E0);
        v150 = swift_initStackObject();
        *(v150 + 16) = xmmword_10146BDE0;
        v151 = v212;
        v152 = [v212 debugDescription];
        v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v155 = v154;

        *(v150 + 56) = &type metadata for String;
        v156 = sub_1000053B0();
        *(v150 + 64) = v156;
        *(v150 + 32) = v153;
        *(v150 + 40) = v155;
        v157 = v200;
        v213 = v201;
        v214 = v200;
        sub_1008CF11C();
        v158 = v151;
        v159 = Error.localizedDescription.getter();
        *(v150 + 96) = &type metadata for String;
        *(v150 + 104) = v156;
        *(v150 + 72) = v159;
        *(v150 + 80) = v160;
        v161 = static os_log_type_t.error.getter();
        sub_100005404(v196, &_mh_execute_header, v161, "(USDZRep) [%{public}@] extension error: %{public}@", 50, 2, v150);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v162 = *(sub_1005B981C(&qword_101A1B818) + 48);
        v134 = v204;
        v163 = v206;
        *v204 = v206;
        v164 = swift_allocError();
        v165 = v201;
        *v166 = v201;
        v166[1] = v157;
        *(v134 + v162) = v164;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v167 = v203;
        swift_beginAccess();
        v140 = v163;
        sub_100D15E6C(v134, &v158[v167], type metadata accessor for CRLUSDZRep.AssetLoadingState);
        v168 = swift_endAccess();
        sub_100CF8070(v168);
        sub_100863E8C(v165, v157, v202, v197, v198, v70);
      }

      else
      {
        v200 = v72;
        v206 = v65;
        v207 = v30;
        if (qword_1019F21E0 != -1)
        {
          swift_once();
        }

        v199 = static OS_os_log.crlThreeDimensionalObjects;
        sub_1005B981C(&qword_1019F54E0);
        v120 = swift_initStackObject();
        *(v120 + 16) = xmmword_10146BDE0;
        v121 = v212;
        v122 = [v212 debugDescription];
        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v124;

        *(v120 + 56) = &type metadata for String;
        v126 = sub_1000053B0();
        *(v120 + 64) = v126;
        *(v120 + 32) = v123;
        *(v120 + 40) = v125;
        v127 = v201;
        v213 = v201;
        v214 = v200;
        v128 = v202;
        v215 = v202;
        sub_10086E6A0();
        v129 = v121;
        v130 = Error.localizedDescription.getter();
        *(v120 + 96) = &type metadata for String;
        *(v120 + 104) = v126;
        *(v120 + 72) = v130;
        *(v120 + 80) = v131;
        v132 = static os_log_type_t.error.getter();
        sub_100005404(v199, &_mh_execute_header, v132, "(USDZRep) [%{public}@] renderer error: %{public}@", 49, 2, v120);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v133 = *(sub_1005B981C(&qword_101A1B818) + 48);
        v134 = v204;
        v135 = v206;
        *v204 = v206;
        v136 = swift_allocError();
        v137 = v200;
        *v138 = v127;
        *(v138 + 8) = v137;
        *(v138 + 16) = v128;
        *(v134 + v133) = v136;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v139 = v203;
        swift_beginAccess();
        v140 = v135;
        sub_100D15E6C(v134, &v129[v139], type metadata accessor for CRLUSDZRep.AssetLoadingState);
        v141 = swift_endAccess();
        sub_100CF8070(v141);
      }

      sub_100D13C38(v134, type metadata accessor for CRLUSDZRep.AssetLoadingState);
      (*(v211 + 8))(v205 + v209, v210);
    }

    else
    {
      v37 = v205;

      v38 = *(sub_1005B981C(&qword_101A1B828) + 48);
      v39 = type metadata accessor for UUID();
      (*(*(v39 - 8) + 8))(v37 + v38, v39);
    }

LABEL_73:
    sub_100CF979C();
  }
}

void sub_100CF979C()
{
  v272 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v272);
  v270 = v254 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = (v254 - v3);
  __chkstk_darwin(v5);
  v7 = (v254 - v6);
  __chkstk_darwin(v8);
  v10 = (v254 - v9);
  v11 = sub_1005B981C(&qword_101A1B868);
  __chkstk_darwin(v11);
  v13 = v254 - v12;
  v273 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v273);
  v15 = v254 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v254 - v17;
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = v254 - v21;
  if (([v0 hasBeenRemoved] & 1) == 0)
  {
    v268 = v7;
    v269 = v4;
    v23 = v0;
    v24 = v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy];
    v25 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
    swift_beginAccess();
    sub_100D13C98(&v23[v25], v22, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    v26 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v27 = &v13[*(v11 + 48)];
    v28 = &v13[*(v11 + 64)];
    v29 = v22;
    v30 = v27;
    sub_100D15784(v29, v27, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    v271 = v23;
    sub_100D13C98(&v23[v26], v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        if (v24 != 3)
        {
          v32 = v271;
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {

              v112 = v30;
              v113 = *(sub_1005B981C(&unk_101A1B858) + 48);
              v114 = sub_100D033E8(v32);
              v116 = v115;
              v117 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
              v118 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
              *v117 = v114;
              v119 = v117[8];
              v117[8] = v115;
              sub_100D1548C(v114, v115);
              sub_100D15590(v118, v119);
              sub_100CF749C();
              sub_100D15590(v114, v116);
              sub_100D13C38(v112 + v113, type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError);
              goto LABEL_71;
            }
          }

          else
          {
            if (EnumCaseMultiPayload)
            {
              v126 = *(v30 + 8);

              if (swift_getEnumCaseMultiPayload() == 2)
              {
                sub_100D13C98(v28, v10, type metadata accessor for CRLUSDZRep.AssetLoadingState);

                v127 = sub_1005B981C(&unk_101A1B808);
                v128 = *(v127 + 48);
                swift_unknownObjectRelease();
                v129 = (v10 + *(v127 + 80));
                v130 = *v129;
                v131 = v129[1];
                v132 = v129[2];
                v133 = v129[3];
                v134 = v129[4];
                v135 = v129[5];
                v136 = v129[6];
                if (v135 >> 62 == 2)
                {
                  if ((v137 = v132 | v131 | v133 | v134, !v136) && v135 == 0x8000000000000000 && v130 == 1 && !v137 || !v136 && v135 == 0x8000000000000000 && v130 == 2 && !v137)
                  {
                    v138 = type metadata accessor for URL();
                    (*(*(v138 - 8) + 8))(v10 + v128, v138);
                    sub_100D13C38(v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
                    if (byte_1019F2C48 == 1)
                    {
                      v139 = sub_100D0D22C();
                    }

                    else
                    {
                      v139 = 1;
                    }

                    v205 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
                    v206 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
                    *v205 = v126;
                    v207 = v205[8];
                    v205[8] = v139 & 1 | 0x80;
                    v208 = v126;
                    sub_100D15590(v206, v207);
                    sub_100CF749C();

                    goto LABEL_77;
                  }
                }

                sub_100863E8C(v130, v131, v132, v133, v134, v135);
                v166 = type metadata accessor for URL();
                (*(*(v166 - 8) + 8))(v10 + v128, v166);
              }

              v167 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
              v168 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
              *v167 = v126;
              v169 = v167[8];
              v167[8] = 0x80;
              v170 = v126;
              sub_100D15590(v168, v169);
              sub_100CF749C();

              goto LABEL_71;
            }

            v97 = *(sub_1005B981C(&qword_101A1B828) + 48);
            v98 = type metadata accessor for UUID();
            (*(*(v98 - 8) + 8))(v30 + v97, v98);
          }

          sub_100D13C38(v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v120 = sub_100D033E8(v32);
          v122 = v121;
          v123 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v124 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          *v123 = v120;
          v125 = v123[8];
          v123[8] = v121;
          sub_100D1548C(v120, v121);
          sub_100D15590(v124, v125);
          sub_100CF749C();
          sub_100D15590(v120, v122);
          goto LABEL_77;
        }

        v31 = swift_getEnumCaseMultiPayload();
        v32 = v271;
        if (v31 == 1)
        {
          sub_100D13C98(v30, v15, type metadata accessor for CRLUSDZRep.PosterLoadingState);

          v33 = *(v15 + 1);
          if (swift_getEnumCaseMultiPayload() == 2)
          {

            v34 = sub_1005B981C(&unk_101A1B808);
            v35 = *(v34 + 48);
            swift_unknownObjectRelease();
            v36 = (v28 + *(v34 + 80));
            sub_100863E8C(*v36, v36[1], v36[2], v36[3], v36[4], v36[5]);
            v37 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v38 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            *v37 = v33;
            v39 = v37[8];
            v37[8] = 0x80;
            v40 = v33;
            sub_100D15590(v38, v39);
            sub_100CF749C();

            v41 = type metadata accessor for URL();
            (*(*(v41 - 8) + 8))(v28 + v35, v41);
LABEL_75:
            v194 = type metadata accessor for CRLUSDZRep.PosterLoadingState;
            v195 = v30;
            goto LABEL_76;
          }
        }

LABEL_69:
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          if (swift_getEnumCaseMultiPayload() == 5)
          {
            v196 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v197 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            *v196 = 1;
            v198 = v196[8];
            v196[8] = -64;
            sub_100D15590(v197, v198);
            sub_100CF749C();
          }

          else
          {
            v199 = sub_100D033E8(v32);
            v201 = v200;
            v202 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v203 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            *v202 = v199;
            v204 = v202[8];
            v202[8] = v200;
            sub_100D1548C(v199, v200);
            sub_100D15590(v203, v204);
            sub_100CF749C();
            sub_100D15590(v199, v201);
            sub_100D13C38(v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          }

          goto LABEL_75;
        }

        v187 = *(v30 + 8);

        v188 = v187;
        v189 = sub_100CF7EC0();
        v190 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
        v191 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
        *v190 = v188;
        v192 = v190[8];
        v190[8] = v189 & 1 | 0x80;
        v193 = v188;
        sub_100D15590(v191, v192);
        sub_100CF749C();

LABEL_71:
        v194 = type metadata accessor for CRLUSDZRep.AssetLoadingState;
        v195 = v28;
LABEL_76:
        sub_100D13C38(v195, v194);
LABEL_77:
        if (v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] == 1)
        {
          [v32 invalidateKnobs];
        }

        return;
      }

      v64 = swift_getEnumCaseMultiPayload();
      v32 = v271;
      if (v64 != 2)
      {
        goto LABEL_69;
      }

      v266 = v28;
      v267 = v30;
      v65 = v269;
      sub_100D13C98(v28, v269, type metadata accessor for CRLUSDZRep.AssetLoadingState);

      v66 = sub_1005B981C(&unk_101A1B808);
      v270 = v66[12];
      v67 = *(v65 + v66[16]);
      v68 = (v65 + v66[20]);
      v69 = *v68;
      v70 = v68[1];
      v71 = v68[2];
      v72 = v68[3];
      v73 = v68[4];
      v74 = v68[5];
      _s13ARViewBackendCMa(0);
      v75 = swift_dynamicCastClass();
      if (v75)
      {
        if (!(v74 >> 62))
        {
          v76 = v75;
          swift_unknownObjectRetain();

          v77 = v76[9];
          v268 = v67;
          if (v77 >> 62 == 1)
          {
            v78 = v76[16];
            v79 = v76[14];
            v263 = v76[15];
            v264 = v78;
            v80 = v76[13];
            v259 = v76[12];
            v81 = v76[10];
            v272 = v76[11];
            v273 = v80;
            v265 = v81;
            v82 = v76[8];
            v254[0] = v76[7];
            v254[1] = v79;
            v261 = v76[6];
            v83 = v261;
            v262 = v82;
            v84 = *(v254[0] + 88);
            v85 = &v271[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v256 = *&v271[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v257 = v84;
            v255 = v271[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
            v258 = v76;
            v86 = v77;
            v260 = v77;
            swift_unknownObjectRetain();
            v87 = v83;
            v88 = v254[0];
            sub_100D15C44(v87, v254[0], v82, v86);
            v89 = v88;

            v90 = v257;
            v91 = v256;
            LOBYTE(v88) = v255;
            sub_100D1548C(v256, v255);
            v92 = sub_100D13EF4(v258, v90, v91, v88);
            v94 = v93;
            sub_100D15590(v91, v88);
            swift_unknownObjectRelease();

            v95 = *v85;
            *v85 = v92;
            LOBYTE(v88) = v85[8];
            v85[8] = v94;
            sub_100D1548C(v92, v94);
            sub_100D15590(v95, v88);
            sub_100CF749C();
            sub_100D15590(v92, v94);

            swift_unknownObjectRelease_n();
            sub_100D15CC4(v261, v89, v262, v260);
          }

          else
          {
            v273 = objc_opt_self();
            v143 = [v273 _atomicIncrementAssertCount];
            v274 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v274);
            StaticString.description.getter();
            v144 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v145 = String._bridgeToObjectiveC()();

            v146 = [v145 lastPathComponent];

            v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v149 = v148;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v150 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146CA70;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v143;
            v152 = sub_100006370(0, &qword_1019F4D30);
            *(inited + 96) = v152;
            v153 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
            *(inited + 104) = v153;
            *(inited + 72) = v144;
            *(inited + 136) = &type metadata for String;
            v154 = sub_1000053B0();
            *(inited + 112) = v147;
            *(inited + 120) = v149;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 144) = v154;
            *(inited + 152) = 824;
            v155 = v274;
            *(inited + 216) = v152;
            *(inited + 224) = v153;
            *(inited + 192) = v155;
            v156 = v144;
            v157 = v155;
            v158 = static os_log_type_t.error.getter();
            sub_100005404(v150, &_mh_execute_header, v158, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v159 = static os_log_type_t.error.getter();
            sub_100005404(v150, &_mh_execute_header, v159, "USD renderer state mismatch - expected to find view.", 52, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v160 = swift_allocObject();
            v160[2] = 8;
            v160[3] = 0;
            v160[4] = 0;
            v160[5] = 0;
            v161 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v162 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v163 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v164 = String._bridgeToObjectiveC()();

            [v273 handleFailureInFunction:v162 file:v163 lineNumber:824 isFatal:0 format:v164 args:v161];
            swift_unknownObjectRelease_n();
          }

          v165 = type metadata accessor for URL();
          (*(*(v165 - 8) + 8))(v269 + v270, v165);
LABEL_56:
          sub_100D13C38(v266, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          sub_100D13C38(v267, type metadata accessor for CRLUSDZRep.PosterLoadingState);
          v32 = v271;
          goto LABEL_77;
        }

        sub_100863E8C(v69, v70, v71, v72, v73, v74);
        swift_unknownObjectRelease();
        v141 = type metadata accessor for URL();
        (*(*(v141 - 8) + 8))(v269 + v270, v141);
      }

      else
      {
        sub_100863E8C(v69, v70, v71, v72, v73, v74);
        swift_unknownObjectRelease();
        v140 = type metadata accessor for URL();
        (*(*(v140 - 8) + 8))(v65 + v270, v140);
      }

      v32 = v271;
      v28 = v266;
      v30 = v267;
      goto LABEL_69;
    }

    if (!v24)
    {
      v42 = swift_getEnumCaseMultiPayload();
      v32 = v271;
      if (v42 != 2)
      {
        goto LABEL_69;
      }

      v267 = v30;
      v43 = v270;
      sub_100D13C98(v28, v270, type metadata accessor for CRLUSDZRep.AssetLoadingState);

      v44 = sub_1005B981C(&unk_101A1B808);
      v45 = v44[12];
      v46 = *(v43 + v44[16]);
      v47 = (v43 + v44[20]);
      v48 = *v47;
      v49 = v47[1];
      v50 = v47[2];
      v266 = v47[3];
      v51 = v47[5];
      v268 = v47[4];
      v269 = v45;
      if (object_getClass(v46) == _TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend && v46 && (v265 = v46, !(v51 >> 62)))
      {
        v52 = v265;
        swift_unknownObjectRetain();

        if (v51)
        {
          v53 = *(v52 + 32);
          if (!v53)
          {
            v266 = v28;
            v273 = objc_opt_self();
            v209 = [v273 _atomicIncrementAssertCount];
            v274 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v274);
            StaticString.description.getter();
            v272 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v210 = String._bridgeToObjectiveC()();

            v211 = [v210 lastPathComponent];

            v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v268 = v213;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v214 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v215 = swift_initStackObject();
            *(v215 + 16) = xmmword_10146CA70;
            *(v215 + 56) = &type metadata for Int32;
            *(v215 + 64) = &protocol witness table for Int32;
            *(v215 + 32) = v209;
            v216 = sub_100006370(0, &qword_1019F4D30);
            *(v215 + 96) = v216;
            v217 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
            *(v215 + 104) = v217;
            v218 = v272;
            *(v215 + 72) = v272;
            *(v215 + 136) = &type metadata for String;
            v219 = sub_1000053B0();
            v220 = v268;
            *(v215 + 112) = v212;
            *(v215 + 120) = v220;
            *(v215 + 176) = &type metadata for UInt;
            *(v215 + 184) = &protocol witness table for UInt;
            *(v215 + 144) = v219;
            *(v215 + 152) = 841;
            v221 = v274;
            *(v215 + 216) = v216;
            *(v215 + 224) = v217;
            *(v215 + 192) = v221;
            v222 = v218;
            v223 = v221;
            v224 = static os_log_type_t.error.getter();
            sub_100005404(v214, &_mh_execute_header, v224, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v215);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v225 = static os_log_type_t.error.getter();
            sub_100005404(v214, &_mh_execute_header, v225, "USD renderer configuration mismatch - expected to find metal layer.", 67, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v226 = swift_allocObject();
            v226[2] = 8;
            v226[3] = 0;
            v226[4] = 0;
            v226[5] = 0;
            v227 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v228 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v229 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v230 = String._bridgeToObjectiveC()();

            [v273 handleFailureInFunction:v228 file:v229 lineNumber:841 isFatal:0 format:v230 args:v227];
            swift_unknownObjectRelease_n();

            v231 = type metadata accessor for URL();
            (*(*(v231 - 8) + 8))(v269 + v270, v231);
            v185 = v266;
            goto LABEL_85;
          }

          v54 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v55 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v56 = v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
          swift_unknownObjectRetain();
          v57 = v53;
          sub_100D1548C(v55, v56);
          v58 = sub_100D13DF8(v52, v57, v55, v56);
          v60 = v59;
          sub_100D15590(v55, v56);
          swift_unknownObjectRelease();
          v61 = *v54;
          *v54 = v58;
          v62 = v54[8];
          v54[8] = v60;
          sub_100D1548C(v58, v60);
          sub_100D15590(v61, v62);
          sub_100CF749C();
          sub_100D15590(v58, v60);
          swift_unknownObjectRelease_n();

          v63 = type metadata accessor for URL();
          (*(*(v63 - 8) + 8))(v269 + v270, v63);
LABEL_64:
          v185 = v28;
LABEL_85:
          sub_100D13C38(v185, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v194 = type metadata accessor for CRLUSDZRep.PosterLoadingState;
          v195 = v267;
          goto LABEL_76;
        }

        swift_unknownObjectRelease_n();
      }

      else
      {
        sub_100863E8C(v48, v49, v50, v266, v268, v51);
        swift_unknownObjectRelease();
      }

      v142 = type metadata accessor for URL();
      (*(*(v142 - 8) + 8))(v269 + v43, v142);
      v30 = v267;
      goto LABEL_69;
    }

    v99 = swift_getEnumCaseMultiPayload();
    v32 = v271;
    if (v99 != 2)
    {
      goto LABEL_69;
    }

    v100 = v268;
    sub_100D13C98(v28, v268, type metadata accessor for CRLUSDZRep.AssetLoadingState);

    v101 = sub_1005B981C(&unk_101A1B808);
    v102 = *(v101 + 48);
    v103 = (v100 + *(v101 + 80));
    v104 = v103[5];
    if (v104 >> 62)
    {
      sub_100863E8C(*v103, v103[1], v103[2], v103[3], v103[4], v103[5]);
      swift_unknownObjectRelease();
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v270 = v102;
        sub_100D13C98(v30, v18, type metadata accessor for CRLUSDZRep.PosterLoadingState);

        v105 = *(v18 + 1);
        v106 = v271;
        if (v271[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_shouldUpdateRenderingStateForSceneCapture] == 1)
        {
          swift_unknownObjectRelease();

          v107 = &v106[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v108 = *&v106[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          *v107 = v105;
          v109 = v107[8];
          v107[8] = 0x80;
          v110 = v105;
          sub_100D15590(v108, v109);
          sub_100CF749C();

          v111 = type metadata accessor for URL();
          (*(*(v111 - 8) + 8))(v100 + v270, v111);
          sub_100D13C38(v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          sub_100D13C38(v30, type metadata accessor for CRLUSDZRep.PosterLoadingState);
          v32 = v106;
          goto LABEL_77;
        }

        v102 = v270;
      }

      _s15AppExRepBackendCMa(0);
      v171 = swift_dynamicCastClass();
      if (v171)
      {
        v172 = v171;
        swift_unknownObjectRetain();

        if (v104)
        {
          v173 = *&v172[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_metalLayer];
          v267 = v30;
          v270 = v102;
          if (!v173)
          {
            v266 = v28;
            v273 = objc_opt_self();
            v232 = [v273 _atomicIncrementAssertCount];
            v274 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v274);
            StaticString.description.getter();
            v272 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v233 = String._bridgeToObjectiveC()();

            v234 = [v233 lastPathComponent];

            v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v236 = v235;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v237 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v238 = swift_initStackObject();
            *(v238 + 16) = xmmword_10146CA70;
            *(v238 + 56) = &type metadata for Int32;
            *(v238 + 64) = &protocol witness table for Int32;
            *(v238 + 32) = v232;
            v239 = sub_100006370(0, &qword_1019F4D30);
            *(v238 + 96) = v239;
            v240 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
            *(v238 + 104) = v240;
            v241 = v272;
            *(v238 + 72) = v272;
            *(v238 + 136) = &type metadata for String;
            v242 = sub_1000053B0();
            *(v238 + 112) = v269;
            *(v238 + 120) = v236;
            *(v238 + 176) = &type metadata for UInt;
            *(v238 + 184) = &protocol witness table for UInt;
            *(v238 + 144) = v242;
            *(v238 + 152) = 861;
            v243 = v274;
            *(v238 + 216) = v239;
            *(v238 + 224) = v240;
            *(v238 + 192) = v243;
            v244 = v241;
            v245 = v243;
            v246 = static os_log_type_t.error.getter();
            sub_100005404(v237, &_mh_execute_header, v246, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v238);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v247 = static os_log_type_t.error.getter();
            sub_100005404(v237, &_mh_execute_header, v247, "USD renderer configuration mismatch - expected to find metal layer.", 67, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v248 = swift_allocObject();
            v248[2] = 8;
            v248[3] = 0;
            v248[4] = 0;
            v248[5] = 0;
            v249 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v250 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v251 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v252 = String._bridgeToObjectiveC()();

            [v273 handleFailureInFunction:v250 file:v251 lineNumber:861 isFatal:0 format:v252 args:v249];
            swift_unknownObjectRelease_n();

            v253 = type metadata accessor for URL();
            (*(*(v253 - 8) + 8))(v268 + v270, v253);
            goto LABEL_56;
          }

          v174 = v271;
          v175 = &v271[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v176 = *&v271[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v177 = v271[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
          swift_unknownObjectRetain();
          v178 = v173;
          sub_100D1548C(v176, v177);
          v179 = sub_100D13D00(v172, v178, v176, v177);
          v181 = v180;
          sub_100D15590(v176, v177);
          swift_unknownObjectRelease();
          v182 = *v175;
          *v175 = v179;
          v183 = v175[8];
          v175[8] = v181;
          v32 = v174;
          sub_100D1548C(v179, v181);
          sub_100D15590(v182, v183);
          sub_100CF749C();
          sub_100D15590(v179, v181);
          swift_unknownObjectRelease_n();

          v184 = type metadata accessor for URL();
          (*(*(v184 - 8) + 8))(v268 + v270, v184);
          goto LABEL_64;
        }

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v186 = type metadata accessor for URL();
    (*(*(v186 - 8) + 8))(v100 + v102, v186);
    v32 = v271;
    goto LABEL_69;
  }
}

void sub_100CFB5B4()
{
  v1 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v1 - 8);
  v3 = v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v4 - 8);
  v6 = v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = v123 - v8;
  __chkstk_darwin(v9);
  v128 = v123 - v10;
  v11 = type metadata accessor for UUID();
  v133 = *(v11 - 1);
  v134 = v11;
  v12 = *(v133 + 64);
  __chkstk_darwin(v11);
  v13 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v129 = v123 - v15;
  __chkstk_darwin(v16);
  v132 = v123 - v17;
  v18 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v18);
  v127 = (v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v126 = (v123 - v21);
  __chkstk_darwin(v22);
  v24 = v123 - v23;
  __chkstk_darwin(v25);
  v27 = v123 - v26;
  v28 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
  swift_beginAccess();
  sub_100D13C98(v0 + v28, v27, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  v131 = v18;
  LODWORD(v28) = swift_getEnumCaseMultiPayload();
  sub_100D13C38(v27, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  if (v28 == 3)
  {
    v29 = [v0 info];
    type metadata accessor for CRLUSDZItem();
    v30 = swift_dynamicCastClassUnconditional();
    v125 = v0;
    if (sub_100CF6624())
    {
      swift_unknownObjectRelease();
      return;
    }

    sub_1007FDD4C();
    if (v38)
    {
      v127 = v30;
      v130 = v38;
      v30 = &v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
      v39 = *&v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
      v40 = *&v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
      sub_100020E58(&v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v39);
      (*(v40 + 24))(v39, v40);
      v41 = *(v30 + 3);
      v42 = *(v30 + 4);
      sub_100020E58(v30, v41);
      if (((*(v42 + 64))(v41, v42) & 1) == 0)
      {
        v81 = *(v30 + 3);
        v82 = *(v30 + 4);
        sub_100020E58(v30, v81);
        v83 = (*(v82 + 40))(v81, v82);
        if (v83 && (v84 = v83, v85 = CGImageSourceCreateWithDataProvider(v83, 0), v84, v85) && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v85, 0, 0), v85, ImageAtIndex))
        {
          v87 = v130;
          *v24 = v130;
          *(v24 + 1) = ImageAtIndex;
          swift_storeEnumTagMultiPayload();
          v88 = v87;
          v89 = ImageAtIndex;
          sub_100CF729C(v24);
        }

        else
        {
          v90 = v127;
          if (**(v127 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
          {
            __break(1u);
            return;
          }

          swift_beginAccess();

          sub_1005B981C(&unk_101A2EF00);
          CRRegister.wrappedValue.getter();
          swift_endAccess();

          sub_100D13C98(v3, v128, type metadata accessor for CRLAssetData);
          sub_100D13C38(v3, type metadata accessor for CRLUSDZAssetDataStruct);
          v91 = [v90 store];
          v92 = *&v91[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
          os_unfair_lock_lock(*(v92 + 16));
          v93 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
          v94 = *&v91[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
          if (v94)
          {
            v95 = *&v91[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
          }

          else
          {
            v109 = type metadata accessor for CRLAssetManager();
            v110 = objc_allocWithZone(v109);
            v124 = v29;
            swift_unknownObjectWeakInit();
            v111 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
            type metadata accessor for CRLUnfairLock();
            v112 = swift_allocObject();
            v113 = v91;
            v114 = swift_slowAlloc();
            *v114 = 0;
            *(v112 + 16) = v114;
            atomic_thread_fence(memory_order_acq_rel);
            *&v110[v111] = v112;
            *&v110[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
            v115 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
            *&v110[v115] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
            *&v110[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
            swift_unknownObjectWeakAssign();
            v135.receiver = v110;
            v135.super_class = v109;
            v116 = objc_msgSendSuper2(&v135, "init");

            v117 = *&v91[v93];
            *&v91[v93] = v116;
            v95 = v116;

            v94 = 0;
          }

          sub_1005B981C(&unk_101A1B858);
          v118 = *(v92 + 16);
          v119 = v94;
          os_unfair_lock_unlock(v118);

          v120 = v128;
          v121 = sub_1011255E0(v128, v127, v95);

          sub_100D13C38(v120, type metadata accessor for CRLAssetData);
          v122 = v126;
          *v126 = v121;
          type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_100CF729C(v122);
        }

        swift_unknownObjectRelease();
        (*(v133 + 8))(v132, v134);
        return;
      }

      v124 = v29;
      if (qword_1019F21E0 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

    v124 = v29;
    if (**&v30[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100D13C98(v3, v130, type metadata accessor for CRLAssetData);
      sub_100D13C38(v3, type metadata accessor for CRLUSDZAssetDataStruct);
      v76 = [v30 store];
      v77 = *&v76[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v77 + 16));
      v78 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v79 = *&v76[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v79)
      {
        v80 = *&v76[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v134 = type metadata accessor for CRLAssetManager();
        v96 = objc_allocWithZone(v134);
        swift_unknownObjectWeakInit();
        v97 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v98 = swift_allocObject();
        v99 = v76;
        v100 = swift_slowAlloc();
        *v100 = 0;
        *(v98 + 16) = v100;
        atomic_thread_fence(memory_order_acq_rel);
        *&v96[v97] = v98;
        *&v96[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v101 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v96[v101] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v96[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        swift_unknownObjectWeakAssign();
        v136.receiver = v96;
        v136.super_class = v134;
        v102 = objc_msgSendSuper2(&v136, "init");

        v103 = *&v76[v78];
        *&v76[v78] = v102;
        v80 = v102;

        v79 = 0;
      }

      sub_1005B981C(&unk_101A1B858);
      v104 = *(v77 + 16);
      v105 = v79;
      os_unfair_lock_unlock(v104);

      v106 = v130;
      v107 = sub_1011255E0(v130, v30, v80);

      sub_100D13C38(v106, type metadata accessor for CRLAssetData);
      v108 = v127;
      *v127 = v107;
      type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_100CF729C(v108);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v24 = [v0 info];
    type metadata accessor for CRLUSDZItem();
    if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      swift_unknownObjectRelease();
      sub_100D13C98(v3, v6, type metadata accessor for CRLAssetData);
      sub_100D13C38(v3, type metadata accessor for CRLUSDZAssetDataStruct);
      v33 = v133;
      v32 = v134;
      (*(v133 + 16))(v13, v6, v134);
      sub_100D13C38(v6, type metadata accessor for CRLAssetData);
      v34 = UUID.uuidString.getter();
      v36 = v35;
      (*(v33 + 8))(v13, v32);
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v34;
      *(inited + 40) = v36;
      v37 = static os_log_type_t.default.getter();
      sub_100005404(v30, &_mh_execute_header, v37, "Unexpected USDZ asset loading state for asset %{public}@", 56, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_33:
  swift_once();
LABEL_11:
  v43 = static OS_os_log.crlThreeDimensionalObjects;
  v127 = sub_1005B981C(&qword_1019F54E0);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_10146C6B0;
  v45 = UUID.uuidString.getter();
  v47 = v46;
  *(v44 + 56) = &type metadata for String;
  v128 = sub_1000053B0();
  *(v44 + 64) = v128;
  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  v48 = static os_log_type_t.default.getter();
  sub_100005404(v43, &_mh_execute_header, v48, "USDZ poster asset needs download. Adding download observer to assetUUID %{public}@", 82, 2, v44);
  swift_setDeallocating();
  sub_100005070(v44 + 32);
  v49 = v129;
  UUID.init()();
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = v133;
  v52 = v134;
  v53 = *(v133 + 16);
  v123[1] = v133 + 16;
  v126 = v53;
  v53(v13, v49, v134);
  v54 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  (*(v51 + 32))(v55 + v54, v13, v52);
  v56 = *(v30 + 3);
  v57 = *(v30 + 4);
  sub_100020E58(v30, v56);
  v123[0] = *(v57 + 72);

  v58 = v129;
  (v123[0])(v129, 6, sub_100D159D4, v55, v56, v57);

  v59 = *(sub_1005B981C(&qword_101A1B828) + 48);
  v60 = v130;
  *v24 = v130;
  v126(&v24[v59], v58, v134);
  swift_storeEnumTagMultiPayload();
  v131 = v60;
  sub_100CF729C(v24);
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v61 = static OS_os_log.assetManagement;
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_10146BDE0;
  v63 = v132;
  v64 = UUID.uuidString.getter();
  v65 = v128;
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v65;
  *(v62 + 32) = v64;
  *(v62 + 40) = v66;
  v67 = UUID.uuidString.getter();
  *(v62 + 96) = &type metadata for String;
  *(v62 + 104) = v65;
  *(v62 + 72) = v67;
  *(v62 + 80) = v68;
  v69 = static os_log_type_t.info.getter();
  sub_100005404(v61, &_mh_execute_header, v69, "Triggering poster asset download for asset UUID %{public}@, observerID %{public}@", 81, 2, v62);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v70 = *(v30 + 3);
  v71 = *(v30 + 4);
  sub_100020E58(v30, v70);
  if ((*(v71 + 64))(v70, v71))
  {
    v72 = *(v30 + 3);
    v73 = *(v30 + 4);
    sub_100020E58(v30, v72);
    (*(v73 + 88))(v72, v73);
  }

  swift_unknownObjectRelease();
  v74 = v134;
  v75 = *(v133 + 8);
  v75(v58, v134);
  v75(v63, v74);
}

uint64_t sub_100CFC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CFC6E8, v8, v7);
}

uint64_t sub_100CFC6E8()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100CFC760(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_100CFC760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v6 - 8);
  v83 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v89 = v8;
  v90 = v9;
  __chkstk_darwin(v8);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v78 - v12;
  v13 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v13);
  v80 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v78 - v16;
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.assetManagement;
  v87 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = a1;
  v23 = (inited + 32);
  v81 = a1;
  v24 = UUID.uuidString.getter();
  v26 = v25;
  *(inited + 96) = &type metadata for String;
  v85 = sub_1000053B0();
  *(inited + 104) = v85;
  *(inited + 72) = v24;
  *(inited + 80) = v26;
  v27 = static os_log_type_t.info.getter();
  sub_100005404(v21, &_mh_execute_header, v27, "posterDownloadComplete with status %d, observerID %{public}@", 60, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v28 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
  v29 = v88;
  swift_beginAccess();
  sub_100D13C98(v29 + v28, v20, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  sub_100CF6B5C(v17);
  sub_100D13C38(v20, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100D13C38(v17, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    v30 = v89;
LABEL_9:
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.crlThreeDimensionalObjects;
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_10146C6B0;
    [v29 info];
    type metadata accessor for CRLUSDZItem();
    if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00);
      v45 = v84;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      swift_unknownObjectRelease();
      v46 = v83;
      sub_100D13C98(v45, v83, type metadata accessor for CRLAssetData);
      sub_100D13C38(v45, type metadata accessor for CRLUSDZAssetDataStruct);
      v47 = v90;
      v48 = v86;
      v90[2](v86, v46, v30);
      sub_100D13C38(v46, type metadata accessor for CRLAssetData);
      v49 = UUID.uuidString.getter();
      v51 = v50;
      (v47[1])(v48, v30);
      v52 = v85;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = v52;
      *(v44 + 32) = v49;
      *(v44 + 40) = v51;
      v53 = static os_log_type_t.default.getter();
      sub_100005404(v43, &_mh_execute_header, v53, "Unexpected USDZ asset loading state for asset %{public}@", 56, 2, v44);
      swift_setDeallocating();
      sub_100005070(v44 + 32);
      return;
    }

    __break(1u);
LABEL_25:
    swift_once();
LABEL_22:
    v66 = static OS_os_log.crlThreeDimensionalObjects;
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_10146C6B0;
    v68 = &v30[*(v23 + 496)];
    v69 = *(v68 + 3);
    v70 = *(v68 + 4);
    sub_100020E58(v68, v69);
    v71 = v86;
    (*(v70 + 24))(v69, v70);
    v72 = UUID.uuidString.getter();
    v74 = v73;
    (v90)(v71, v89);
    v75 = v85;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = v75;
    *(v67 + 32) = v72;
    *(v67 + 40) = v74;
    v76 = static os_log_type_t.default.getter();
    sub_100005404(v66, &_mh_execute_header, v76, "Asset downloaded but poster image missing for asset %{public}@", 62, 2, v67);
    swift_setDeallocating();
    sub_100005070(v67 + 32);
    sub_1005B981C(&unk_101A1B858);
    v77 = v80;
    *v80 = v30;
    type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v37 = v30;
    sub_100CF729C(v77);
    goto LABEL_23;
  }

  v31 = v13;
  v32 = *v17;
  v33 = sub_1005B981C(&qword_101A1B828);
  v30 = v89;
  v34 = v90;
  v23 = v82;
  v90[4](v82, &v17[*(v33 + 48)], v89);
  sub_100D15398(&qword_1019F37C0, &type metadata accessor for UUID);
  v79 = a2;
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = v34[1];
  (v36)(v23, v30);
  if ((v35 & 1) == 0)
  {

    goto LABEL_9;
  }

  v37 = v32;
  v38 = [v29 info];
  type metadata accessor for CRLUSDZItem();
  swift_dynamicCastClassUnconditional();
  v39 = v81;
  if ((v81 - 2) < 2)
  {
    v40 = *(sub_1005B981C(&unk_101A1B858) + 48);
    v41 = v79;
    v42 = v80;
    *v80 = v37;
    v90[2]((v42 + v40), v41, v30);
    type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v37 = v37;
    sub_100CF729C(v42);
LABEL_23:
    swift_unknownObjectRelease();

    return;
  }

  if (!v81)
  {
    goto LABEL_23;
  }

  v90 = v36;
  if (v81 == 1)
  {
    v30 = v37;
    sub_1007FDD4C();
    v23 = &unk_101A17000;
    v78 = v31;
    if (v54)
    {
      v55 = v54;
      v56 = &v54[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
      v58 = *(v56 + 3);
      v57 = *(v56 + 4);
      sub_100020E58(v56, v58);
      v59 = (*(v57 + 40))(v58, v57);
      if (v59 && (v60 = v59, v61 = CGImageSourceCreateWithDataProvider(v59, 0), v60, v61))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v61, 0, 0);

        if (ImageAtIndex)
        {
          v63 = v80;
          *v80 = v30;
          *(v63 + 8) = ImageAtIndex;
          swift_storeEnumTagMultiPayload();
          v64 = v30;
          v65 = ImageAtIndex;
          sub_100CF729C(v63);
          swift_unknownObjectRelease();

          return;
        }
      }

      else
      {
      }
    }

    v84 = v38;
    if (qword_1019F21E0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  type metadata accessor for CRLAssetDownloadObserverStatus(0);
  v91 = v39;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void sub_100CFD188()
{
  v1 = [v0 layout];
  type metadata accessor for CRLUSDZLayout();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager);
  *(v2 + OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager) = 0;

  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive) == 1)
  {
    [v0 invalidateKnobs];
    v4 = [v0 layout];
    [v4 invalidate];
  }

  *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_hideKnobsDueToBoundsUpdate) = 0;
}

void sub_100CFD258()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v2 - 8);
  v183 = v169 - v3;
  v4 = type metadata accessor for URL();
  v184 = *(v4 - 1);
  v185 = v4;
  __chkstk_darwin(v4);
  v181 = v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v182 = v169 - v7;
  v8 = type metadata accessor for UUID();
  v190 = *(v8 - 8);
  v9 = v190[8];
  __chkstk_darwin(v8);
  v188 = v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v187 = v169 - v11;
  __chkstk_darwin(v12);
  v189 = v169 - v13;
  v14 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v14 - 8);
  v16 = v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v17);
  v19 = (v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = v169 - v21;
  __chkstk_darwin(v23);
  v191 = v169 - v24;
  v25 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v28 = v169 - v27;
  __chkstk_darwin(v29);
  __chkstk_darwin(v30);
  v35 = v169 - v34;
  if (*(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy) != 4)
  {
    v178 = v33;
    v179 = v32;
    v186 = v31;
    v180 = v8;
    if (sub_100CF6624())
    {
      v36 = v179;
      swift_storeEnumTagMultiPayload();
      v37 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
      swift_beginAccess();
      sub_100D15E6C(v36, v1 + v37, type metadata accessor for CRLUSDZRep.AssetLoadingState);
      v38 = swift_endAccess();
      sub_100CF8070(v38);
      v39 = type metadata accessor for CRLUSDZRep.AssetLoadingState;
      v40 = v36;
LABEL_35:
      sub_100D13C38(v40, v39);
      return;
    }

    v41 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v176 = v41;
    sub_100D13C98(v1 + v41, v35, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    LODWORD(v41) = swift_getEnumCaseMultiPayload();
    sub_100D13C38(v35, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    if (v41 == 4)
    {
      v170 = v28;
      v42 = [v1 info];
      type metadata accessor for CRLUSDZItem();
      v43 = swift_dynamicCastClassUnconditional();
      v171 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v19 = *(v43 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v19 == &off_101A2E658)
      {
        v44 = v43;
        swift_beginAccess();
        v177 = v42;
        swift_unknownObjectRetain();

        v169[1] = sub_1005B981C(&unk_101A2EF00);
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        sub_100D13C98(v16, v191, type metadata accessor for CRLAssetData);
        sub_100D13C38(v16, type metadata accessor for CRLUSDZAssetDataStruct);
        v174 = v44;
        v45 = [v44 store];
        v46 = *&v45[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
        os_unfair_lock_lock(*(v46 + 16));
        v47 = *&v45[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
        v175 = v1;
        v169[2] = v17;
        if (v47)
        {
          v48 = v47;
        }

        else
        {
          v172 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
          v59 = type metadata accessor for CRLAssetManager();
          v60 = objc_allocWithZone(v59);
          v173 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
          swift_unknownObjectWeakInit();
          v169[0] = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
          type metadata accessor for CRLUnfairLock();
          v61 = swift_allocObject();
          v62 = v45;
          v63 = swift_slowAlloc();
          *v63 = 0;
          *(v61 + 16) = v63;
          atomic_thread_fence(memory_order_acq_rel);
          *&v60[v169[0]] = v61;
          *&v60[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
          v64 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
          *&v60[v64] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
          *&v60[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
          swift_unknownObjectWeakAssign();
          v192.receiver = v60;
          v192.super_class = v59;
          v65 = objc_msgSendSuper2(&v192, "init");

          v66 = *(v172 + v45);
          *(v172 + v45) = v65;
          v48 = v65;

          v47 = 0;
        }

        v67 = *(v46 + 16);
        v68 = v47;
        os_unfair_lock_unlock(v67);

        v69 = v174;
        v70 = sub_1011255E0(v191, v174, v48);

        v173 = v70;
        v71 = (v70 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
        v72 = *(v70 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
        v73 = *(v70 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
        sub_100020E58((v70 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v72);
        (*(v73 + 24))(v72, v73);
        v74 = v71[3];
        v75 = v71[4];
        v172 = v71;
        sub_100020E58(v71, v74);
        if ((*(v75 + 64))(v74, v75))
        {
          swift_unknownObjectRelease();
          v51 = v187;
          UUID.init()();
          if (qword_1019F21E0 == -1)
          {
LABEL_14:
            v185 = static OS_os_log.crlThreeDimensionalObjects;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C4D0;
            v77 = [v175 debugDescription];
            v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v80 = v79;

            *(inited + 56) = &type metadata for String;
            v81 = sub_1000053B0();
            *(inited + 64) = v81;
            *(inited + 32) = v78;
            *(inited + 40) = v80;
            v82 = UUID.uuidString.getter();
            *(inited + 96) = &type metadata for String;
            *(inited + 104) = v81;
            *(inited + 72) = v82;
            *(inited + 80) = v83;
            v84 = UUID.uuidString.getter();
            *(inited + 136) = &type metadata for String;
            *(inited + 144) = v81;
            *(inited + 112) = v84;
            *(inited + 120) = v85;
            v86 = static os_log_type_t.debug.getter();
            sub_100005404(v185, &_mh_execute_header, v86, "(USDZRep) [%{public}@] USDZ asset needs download. Adding download observer to assetUUID %{public}@ observerUUID %{public}@", 122, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v87 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v88 = v190;
            v185 = v190[2];
            v89 = v188;
            v90 = v51;
            v91 = v180;
            v185(v188, v90, v180);
            v92 = (*(v88 + 80) + 24) & ~*(v88 + 80);
            v93 = swift_allocObject();
            *(v93 + 16) = v87;
            (v88[4])(v93 + v92, v89, v91);
            v94 = v172;
            v96 = v172[3];
            v95 = v172[4];
            sub_100020E58(v172, v96);
            v188 = *(v95 + 72);

            v97 = v187;
            (v188)(v187, 6, sub_100D157EC, v93, v96, v95);

            v98 = *(sub_1005B981C(&qword_101A1B828) + 48);
            v100 = v179;
            v99 = v180;
            v101 = v173;
            *v179 = v173;
            v185((v100 + v98), v97, v99);
            swift_storeEnumTagMultiPayload();
            v103 = v175;
            v102 = v176;
            swift_beginAccess();
            v104 = v101;
            sub_100D15E6C(v100, v103 + v102, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            v105 = swift_endAccess();
            sub_100CF8070(v105);
            sub_100D13C38(v100, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            v106 = v94[3];
            v107 = v94[4];
            sub_100020E58(v94, v106);
            if ((*(v107 + 64))(v106, v107))
            {
              v108 = v94[3];
              v109 = v94[4];
              sub_100020E58(v94, v108);
              (*(v109 + 88))(v108, v109);
            }

            swift_unknownObjectRelease();

            v110 = v190[1];
            v111 = v180;
            v110(v97, v180);
            v110(v189, v111);
            goto LABEL_34;
          }

LABEL_40:
          swift_once();
          goto LABEL_14;
        }

        if (**&v69[v171] == &off_101A2E658)
        {
          swift_beginAccess();

          CRRegister.wrappedValue.getter();
          swift_endAccess();

          sub_100D13C98(v16, v22, type metadata accessor for CRLAssetData);
          sub_100D13C38(v16, type metadata accessor for CRLUSDZAssetDataStruct);
          v112 = *&v69[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store];
          swift_unknownObjectRelease();
          v113 = *&v112[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
          os_unfair_lock_lock(*(v113 + 16));
          v114 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
          v115 = *&v112[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
          if (v115)
          {
            v116 = *&v112[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
          }

          else
          {
            v117 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
            v118 = v112;
            v119 = sub_10001F1A0(v118);

            v120 = *&v112[v114];
            *&v112[v114] = v119;
            v116 = v119;

            v115 = 0;
          }

          v121 = v170;
          v122 = *(v113 + 16);
          v123 = v115;
          os_unfair_lock_unlock(v122);
          v124 = v183;
          sub_10108CAF4(v22, 0, 3, 0, 0, v183);

          sub_100D13C38(v22, type metadata accessor for CRLAssetData);
          v126 = v184;
          v125 = v185;
          if ((*(v184 + 48))(v124, 1, v185) != 1)
          {
            v136 = v182;
            (*(v126 + 32))(v182, v124, v125);
            v137 = v173;
            *v121 = v173;
            v138 = byte_1019F2C48;
            v139 = v137;
            if (v138 == 1)
            {
              v140 = v175;
              v141 = sub_100D0D22C();
            }

            else
            {
              v141 = 1;
              v140 = v175;
            }

            v142 = *(sub_1005B981C(&qword_101A1B820) + 64);
            *(v121 + 8) = v141 & 1;
            (*(v126 + 16))(v121 + v142, v136, v125);
            swift_storeEnumTagMultiPayload();
            v143 = v176;
            swift_beginAccess();
            sub_100D15E6C(v121, v140 + v143, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            v144 = swift_endAccess();
            sub_100CF8070(v144);
            swift_unknownObjectRelease();

            sub_100D13C38(v121, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            (*(v126 + 8))(v136, v125);
            goto LABEL_33;
          }

          sub_10000CAAC(v124, &unk_1019F33C0);
          v127 = [objc_opt_self() mainBundle];
          v128 = String._bridgeToObjectiveC()();
          v129 = [v127 URLForResource:v128 withExtension:0];

          if (v129)
          {
            v130 = v181;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v131 = v173;
            *v178 = v173;
            v132 = byte_1019F2C48;
            v133 = v131;
            if (v132 == 1)
            {
              v134 = v175;
              v135 = sub_100D0D22C();
            }

            else
            {
              v135 = 1;
              v134 = v175;
            }

            v165 = *(sub_1005B981C(&qword_101A1B820) + 64);
            v166 = v178;
            *(v178 + 8) = v135 & 1;
            (*(v126 + 16))(v166 + v165, v130, v125);
            swift_storeEnumTagMultiPayload();
            v167 = v176;
            swift_beginAccess();
            sub_100D15E6C(v166, v134 + v167, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            v168 = swift_endAccess();
            sub_100CF8070(v168);
            swift_unknownObjectRelease();

            sub_100D13C38(v166, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            (*(v126 + 8))(v130, v125);
LABEL_33:
            (v190[1])(v189, v180);
            goto LABEL_34;
          }

          if (qword_1019F21E0 == -1)
          {
LABEL_30:
            v187 = static OS_os_log.crlThreeDimensionalObjects;
            sub_1005B981C(&qword_1019F54E0);
            v145 = swift_initStackObject();
            *(v145 + 16) = xmmword_10146BDE0;
            v146 = v175;
            v147 = [v175 debugDescription];
            v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v150 = v149;

            *(v145 + 56) = &type metadata for String;
            v151 = sub_1000053B0();
            *(v145 + 64) = v151;
            *(v145 + 32) = v148;
            *(v145 + 40) = v150;
            v152 = v172[3];
            v153 = v172[4];
            sub_100020E58(v172, v152);
            v154 = v188;
            (*(v153 + 24))(v152, v153);
            v155 = UUID.uuidString.getter();
            v157 = v156;
            v158 = v190[1];
            v158(v154, v180);
            *(v145 + 96) = &type metadata for String;
            *(v145 + 104) = v151;
            *(v145 + 72) = v155;
            *(v145 + 80) = v157;
            v159 = static os_log_type_t.debug.getter();
            sub_100005404(v187, &_mh_execute_header, v159, "(USDZRep) [%{public}@] Asset downloaded but URL missing for asset %{public}@", 76, 2, v145);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            sub_1005B981C(&qword_101A1B818);
            v160 = v179;
            v161 = v173;
            *v179 = v173;
            type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            v162 = v176;
            swift_beginAccess();
            v163 = v161;
            sub_100D15E6C(v160, v146 + v162, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            v164 = swift_endAccess();
            sub_100CF8070(v164);
            swift_unknownObjectRelease();

            sub_100D13C38(v160, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            v158(v189, v180);
LABEL_34:
            v39 = type metadata accessor for CRLAssetData;
            v40 = v191;
            goto LABEL_35;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (qword_1019F21E0 == -1)
    {
LABEL_9:
      v49 = static OS_os_log.crlThreeDimensionalObjects;
      sub_1005B981C(&qword_1019F54E0);
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_10146C6B0;
      v51 = [v1 info];
      type metadata accessor for CRLUSDZItem();
      if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
      {
        swift_beginAccess();

        sub_1005B981C(&unk_101A2EF00);
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        swift_unknownObjectRelease();
        sub_100D13C98(v16, v19, type metadata accessor for CRLAssetData);
        sub_100D13C38(v16, type metadata accessor for CRLUSDZAssetDataStruct);
        v52 = v190;
        v53 = v188;
        v54 = v180;
        (v190[2])(v188, v19, v180);
        sub_100D13C38(v19, type metadata accessor for CRLAssetData);
        v55 = UUID.uuidString.getter();
        v57 = v56;
        (v52[1])(v53, v54);
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = sub_1000053B0();
        *(v50 + 32) = v55;
        *(v50 + 40) = v57;
        v58 = static os_log_type_t.default.getter();
        sub_100005404(v49, &_mh_execute_header, v58, "Unexpected USDZ asset loading state for asset %{public}@", 56, 2, v50);
        swift_setDeallocating();
        sub_100005070(v50 + 32);
        return;
      }

      __break(1u);
      goto LABEL_40;
    }

    swift_once();
    goto LABEL_9;
  }
}

void sub_100CFE798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
    type metadata accessor for MainActor();
    v17 = v15;
    v18 = static MainActor.shared.getter();
    v19 = *(v9 + 80);
    v22 = a5;
    v20 = (v19 + 48) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 2) = v18;
    *(v21 + 3) = &protocol witness table for MainActor;
    *(v21 + 4) = v17;
    *(v21 + 5) = a1;
    (*(v9 + 32))(&v21[v20], &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    sub_10064191C(0, 0, v13, v22, v21);
  }
}

uint64_t sub_100CFE9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CFEA60, v8, v7);
}

uint64_t sub_100CFEA60()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100CFEAD8(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_100CFEAD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v139 = a1;
  v140 = a2;
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v143 = v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v6 - 8);
  v142 = v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v136 = v129 - v9;
  v10 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v10 - 8);
  v134 = v129 - v11;
  v12 = type metadata accessor for URL();
  v137 = *(v12 - 8);
  v138 = v12;
  __chkstk_darwin(v12);
  v135 = v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v145 = *(v14 - 8);
  __chkstk_darwin(v14);
  v144 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v129 - v17;
  v19 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v19);
  v21 = v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v129 - v23;
  __chkstk_darwin(v25);
  v27 = v129 - v26;
  __chkstk_darwin(v28);
  v30 = v129 - v29;
  v31 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  v146 = v3;
  sub_100D13C98(v3 + v31, v30, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  sub_100CF6DD0(v27);
  sub_100D13C38(v30, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload())
  {
    v32 = v145;
    v141 = v14;
    sub_100D13C38(v27, type metadata accessor for CRLUSDZRep.AssetLoadingState);
LABEL_7:
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v52 = v146;
    v53 = [v146 debugDescription];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    *(inited + 56) = &type metadata for String;
    v57 = sub_1000053B0();
    *(inited + 32) = v54;
    *(inited + 64) = v57;
    *(inited + 40) = v56;
    v58 = [v52 info];
    type metadata accessor for CRLUSDZItem();
    if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00);
      v146 = (inited + 32);
      v59 = v57;
      v60 = v143;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      swift_unknownObjectRelease();
      v61 = v142;
      sub_100D13C98(v60, v142, type metadata accessor for CRLAssetData);
      sub_100D13C38(v60, type metadata accessor for CRLUSDZAssetDataStruct);
      v62 = v144;
      v63 = v141;
      (*(v32 + 16))(v144, v61, v141);
      sub_100D13C38(v61, type metadata accessor for CRLAssetData);
      v64 = UUID.uuidString.getter();
      v66 = v65;
      (*(v32 + 8))(v62, v63);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v59;
      *(inited + 72) = v64;
      *(inited + 80) = v66;
      v67 = static os_log_type_t.debug.getter();
      sub_100005404(v50, &_mh_execute_header, v67, "(USDZRep) [%{public}@] Unexpected USDZ asset loading state for asset %{public}@", 79, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  v132 = v21;
  v133 = v31;
  v131 = v24;
  v33 = *v27;
  v34 = sub_1005B981C(&qword_101A1B828);
  v35 = v145;
  (*(v145 + 32))(v18, &v27[*(v34 + 48)], v14);
  sub_100D15398(&qword_1019F37C0, &type metadata accessor for UUID);
  v36 = v140;
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = v35;
  v40 = *(v35 + 8);
  v39 = v35 + 8;
  v38 = v40;
  v40(v18, v14);
  if ((v37 & 1) == 0)
  {
    v141 = v14;

    goto LABEL_7;
  }

  v130 = v38;
  v142 = v33;
  v41 = v146;
  v42 = [v146 info];
  type metadata accessor for CRLUSDZItem();
  v43 = swift_dynamicCastClassUnconditional();
  v44 = v139;
  if ((v139 - 2) < 2)
  {
    v45 = *(sub_1005B981C(&qword_101A1B818) + 48);
    v46 = v142;
    v47 = v132;
    *v132 = v142;
    (*(v32 + 16))(v47 + v45, v36, v14);
    type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v48 = v133;
    swift_beginAccess();
    v49 = v46;
    sub_100D15E6C(v47, v41 + v48, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();

    swift_unknownObjectRelease();
    sub_100D13C38(v47, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    return;
  }

  if (!v139)
  {
    swift_unknownObjectRelease();

    return;
  }

  v141 = v14;
  if (v139 == 1)
  {
    v145 = v39;
    v68 = v136;
    if (**(v43 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v69 = v43;
    swift_beginAccess();
    swift_unknownObjectRetain();

    sub_1005B981C(&unk_101A2EF00);
    v70 = v143;
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D13C98(v70, v68, type metadata accessor for CRLAssetData);
    sub_100D13C38(v70, type metadata accessor for CRLUSDZAssetDataStruct);
    v71 = *(v69 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    swift_unknownObjectRelease();
    v72 = *&v71[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    os_unfair_lock_lock(*(v72 + 16));
    v73 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v74 = *&v71[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v74)
    {
      v75 = *&v71[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v76 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
      v77 = v71;
      v78 = sub_10001F1A0(v77);

      v79 = *&v71[v73];
      *&v71[v73] = v78;
      v75 = v78;

      v74 = 0;
    }

    v80 = *(v72 + 16);
    v81 = v74;
    os_unfair_lock_unlock(v80);
    v82 = v134;
    sub_10108CAF4(v68, 0, 3, 0, 0, v134);

    sub_100D13C38(v68, type metadata accessor for CRLAssetData);
    v84 = v137;
    v83 = v138;
    v85 = (*(v137 + 48))(v82, 1, v138);
    v129[1] = v42;
    v129[2] = v19;
    if (v85 == 1)
    {
      sub_10000CAAC(v82, &unk_1019F33C0);
      if (qword_1019F21E0 == -1)
      {
LABEL_20:
        v143 = static OS_os_log.crlThreeDimensionalObjects;
        sub_1005B981C(&qword_1019F54E0);
        v86 = swift_initStackObject();
        *(v86 + 16) = xmmword_10146BDE0;
        v87 = v146;
        v88 = [v146 debugDescription];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        *(v86 + 56) = &type metadata for String;
        v92 = sub_1000053B0();
        *(v86 + 64) = v92;
        *(v86 + 32) = v89;
        *(v86 + 40) = v91;
        v93 = v142;
        v95 = *&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
        v94 = *&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
        sub_100020E58(&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v95);
        v96 = v144;
        (*(v94 + 24))(v95, v94);
        v97 = UUID.uuidString.getter();
        v99 = v98;
        v130(v96, v141);
        *(v86 + 96) = &type metadata for String;
        *(v86 + 104) = v92;
        *(v86 + 72) = v97;
        *(v86 + 80) = v99;
        v100 = static os_log_type_t.debug.getter();
        sub_100005404(v143, &_mh_execute_header, v100, "(USDZRep) [%{public}@] Asset downloaded but URL missing for asset %{public}@", 76, 2, v86);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        sub_1005B981C(&qword_101A1B818);
        v101 = v132;
        *v132 = v93;
        type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v102 = v133;
        swift_beginAccess();
        v103 = v93;
        sub_100D15E6C(v101, v87 + v102, type metadata accessor for CRLUSDZRep.AssetLoadingState);
        swift_endAccess();
        sub_100CF8070();

        swift_unknownObjectRelease();
        sub_100D13C38(v101, type metadata accessor for CRLUSDZRep.AssetLoadingState);
        return;
      }

LABEL_29:
      swift_once();
      goto LABEL_20;
    }

    (*(v84 + 32))(v135, v82, v83);
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v143 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    v104 = swift_initStackObject();
    *(v104 + 16) = xmmword_10146C4D0;
    v105 = [v146 debugDescription];
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    *(v104 + 56) = &type metadata for String;
    v109 = sub_1000053B0();
    *(v104 + 64) = v109;
    *(v104 + 32) = v106;
    *(v104 + 40) = v108;
    v110 = v142;
    v112 = *&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v111 = *&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v112);
    v113 = v144;
    (*(v111 + 24))(v112, v111);
    v114 = UUID.uuidString.getter();
    v116 = v115;
    v130(v113, v141);
    *(v104 + 96) = &type metadata for String;
    *(v104 + 104) = v109;
    *(v104 + 72) = v114;
    *(v104 + 80) = v116;
    v117 = UUID.uuidString.getter();
    *(v104 + 136) = &type metadata for String;
    *(v104 + 144) = v109;
    *(v104 + 112) = v117;
    *(v104 + 120) = v118;
    v119 = static os_log_type_t.debug.getter();
    sub_100005404(v143, &_mh_execute_header, v119, "(USDZRep) [%{public}@] USDZ asset downloaded %@, observerUUID %@", 64, 2, v104);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v120 = v131;
    *v131 = v110;
    LODWORD(v114) = byte_1019F2C48;
    v121 = v110;
    if (v114 == 1)
    {
      v122 = v146;
      v123 = sub_100D0D22C();
    }

    else
    {
      v123 = 1;
      v122 = v146;
    }

    v124 = v135;
    v125 = *(sub_1005B981C(&qword_101A1B820) + 64);
    *(v120 + 8) = v123 & 1;
    v127 = v137;
    v126 = v138;
    (*(v137 + 16))(v120 + v125, v124, v138);
    swift_storeEnumTagMultiPayload();
    v128 = v133;
    swift_beginAccess();
    sub_100D15E6C(v120, v122 + v128, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();

    swift_unknownObjectRelease();
    sub_100D13C38(v120, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    (*(v127 + 8))(v124, v126);
  }

  else
  {
    type metadata accessor for CRLAssetDownloadObserverStatus(0);
    v147 = v44;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

uint64_t sub_100CFFAE8()
{
  v61 = type metadata accessor for UUID();
  v1 = *(v61 - 8);
  __chkstk_darwin(v61);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v10);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy) == 2)
  {
    v59 = v1;
    v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v56 = v19;
    v60 = v0;
    sub_100D13C98(v0 + v19, v15, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v57 = v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = v12;
      v55 = v16;
      v20 = *v15;
      v21 = v15[8];
      v22 = *(sub_1005B981C(&qword_101A1B820) + 64);
      if (v21)
      {
        v61 = v20;
        v23 = v17;
        v24 = *(v17 + 32);
        v25 = v55;
        v24(v58, &v15[v22], v55);
        if (qword_1019F21E0 == -1)
        {
LABEL_5:
          v26 = static OS_os_log.crlThreeDimensionalObjects;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v28 = v60;
          v29 = [v60 debugDescription];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v30;
          *(inited + 40) = v32;
          v33 = static os_log_type_t.debug.getter();
          sub_100005404(v26, &_mh_execute_header, v33, "(USDZRep) [%{public}@] loadInProcessRenderer()", 46, 2, inited);
          swift_setDeallocating();
          sub_100005070(inited + 32);
          _s13ARViewBackendCMa(0);
          v34 = swift_allocObject();
          *(v34 + 24) = 0;
          swift_unknownObjectWeakInit();
          UUID.init()();
          *(v34 + 24) = &off_1018A11E0;
          swift_unknownObjectWeakAssign();
          *(v34 + 32) = 0;
          *(v34 + 48) = 0;
          *(v34 + 56) = 0;
          *(v34 + 64) = 0;
          *(v34 + 72) = 0xC000000000000000;
          *(v34 + 80) = 0u;
          *(v34 + 96) = 0u;
          *(v34 + 112) = 0u;
          *(v34 + 128) = 0;
          v35 = sub_1005B981C(&unk_101A1B808);
          v36 = v35[12];
          v37 = v54;
          v38 = (v54 + v35[16]);
          v39 = v54 + v35[20];
          v40 = v61;
          *v54 = v61;
          v41 = v58;
          (*(v23 + 16))(v37 + v36, v58, v25);
          *v38 = v34;
          v38[1] = &off_1018B9FF0;
          *v39 = 0u;
          *(v39 + 1) = 0u;
          *(v39 + 4) = 0;
          *(v39 + 40) = xmmword_101481DF0;
          swift_storeEnumTagMultiPayload();
          v42 = v56;
          swift_beginAccess();
          v43 = v40;

          sub_100D15E6C(v37, v28 + v42, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v44 = swift_endAccess();
          sub_100CF8070(v44);

          sub_100D13C38(v37, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          return (*(v23 + 8))(v41, v25);
        }

LABEL_14:
        swift_once();
        goto LABEL_5;
      }

      (*(v17 + 8))(&v15[v22], v55);
    }

    else
    {
      sub_100D13C38(v15, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }

    v1 = v59;
    v0 = v60;
  }

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v46 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10146C6B0;
  v47 = [v0 info];
  type metadata accessor for CRLUSDZItem();
  v25 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v25 != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C98(v6, v9, type metadata accessor for CRLAssetData);
  sub_100D13C38(v6, type metadata accessor for CRLUSDZAssetDataStruct);
  v48 = v61;
  (*(v1 + 16))(v3, v9, v61);
  sub_100D13C38(v9, type metadata accessor for CRLAssetData);
  v49 = UUID.uuidString.getter();
  v51 = v50;
  (*(v1 + 8))(v3, v48);
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_1000053B0();
  *(v23 + 32) = v49;
  *(v23 + 40) = v51;
  v52 = static os_log_type_t.default.getter();
  sub_100005404(v46, &_mh_execute_header, v52, "Cannot load USD renderer with unexpected loading state for asset %{public}@", 75, 2, v23);
  swift_setDeallocating();
  return sub_100005070(v23 + 32);
}

uint64_t sub_100D00350()
{
  v1 = v0;
  v65 = type metadata accessor for UUID();
  v2 = *(v65 - 1);
  __chkstk_darwin(v65);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v11 - 8);
  v13 = &v57 - v12;
  v14 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for URL();
  __chkstk_darwin(v20);
  if (!*(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy))
  {
    v60 = v13;
    v63 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = v23;
    v24 = v21;
    v25 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v61 = v25;
    sub_100D13C98(v1 + v25, v19, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v16;
      v62 = v24;
      v26 = *v19;
      v27 = v19[8];
      v28 = *(sub_1005B981C(&qword_101A1B820) + 64);
      if (v27)
      {
        v58 = v26;
        v29 = v64;
        (*(v64 + 32))(v63, &v19[v28], v62);
        if (qword_1019F21E0 == -1)
        {
LABEL_5:
          v30 = static OS_os_log.crlThreeDimensionalObjects;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v32 = [v1 debugDescription];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v33;
          *(inited + 40) = v35;
          v36 = static os_log_type_t.debug.getter();
          sub_100005404(v30, &_mh_execute_header, v36, "(USDZRep) [%{public}@] loadInProcessCoreRERenderer()", 52, 2, inited);
          swift_setDeallocating();
          sub_100005070(inited + 32);
          v37 = v60;
          (*(v2 + 56))(v60, 1, 1, v65);
          _s10RepBackendCMa();
          swift_allocObject();
          v65 = v1;
          v38 = sub_100867730(v37, v1, &off_1018A11E0, 2);
          v39 = sub_1005B981C(&unk_101A1B808);
          v40 = v39[12];
          v41 = v59;
          v42 = (v59 + v39[16]);
          v43 = v59 + v39[20];
          v44 = v58;
          *v59 = v58;
          v45 = v63;
          v46 = v62;
          (*(v29 + 16))(v41 + v40, v63, v62);
          *v42 = v38;
          v42[1] = &off_101889DF8;
          *v43 = 0u;
          *(v43 + 1) = 0u;
          *(v43 + 4) = 0;
          *(v43 + 40) = xmmword_101481DF0;
          swift_storeEnumTagMultiPayload();
          v47 = v61;
          swift_beginAccess();
          v48 = v44;

          sub_100D15E6C(v41, v1 + v47, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v49 = swift_endAccess();
          sub_100CF8070(v49);

          sub_100D13C38(v41, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          return (*(v29 + 8))(v45, v46);
        }

LABEL_13:
        swift_once();
        goto LABEL_5;
      }

      (*(v64 + 8))(&v19[v28], v62);
    }

    else
    {
      sub_100D13C38(v19, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }
  }

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v51 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  v1 = [v1 info];
  type metadata accessor for CRLUSDZItem();
  if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C98(v7, v10, type metadata accessor for CRLAssetData);
  sub_100D13C38(v7, type metadata accessor for CRLUSDZAssetDataStruct);
  v52 = v65;
  (*(v2 + 16))(v4, v10, v65);
  sub_100D13C38(v10, type metadata accessor for CRLAssetData);
  v53 = UUID.uuidString.getter();
  v55 = v54;
  (*(v2 + 8))(v4, v52);
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000053B0();
  *(v29 + 32) = v53;
  *(v29 + 40) = v55;
  v56 = static os_log_type_t.default.getter();
  sub_100005404(v51, &_mh_execute_header, v56, "Cannot load USD renderer with unexpected loading state for asset %{public}@", 75, 2, v29);
  swift_setDeallocating();
  return sub_100005070(v29 + 32);
}

uint64_t sub_100D00BFC()
{
  v1 = v0;
  v66 = type metadata accessor for UUID();
  v2 = *(v66 - 8);
  __chkstk_darwin(v66);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v8 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v11);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  if (v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy] != 1)
  {
    goto LABEL_13;
  }

  v65 = v2;
  v64 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1;
  v21 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  v62 = v21;
  v22 = &v20[v21];
  v1 = v20;
  sub_100D13C98(v22, v16, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  v63 = v11;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100D13C38(v16, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v2 = v65;
LABEL_13:
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v52 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v1 = [v1 info];
    type metadata accessor for CRLUSDZItem();
    v27 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v27 == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      swift_unknownObjectRelease();
      sub_100D13C98(v7, v10, type metadata accessor for CRLAssetData);
      sub_100D13C38(v7, type metadata accessor for CRLUSDZAssetDataStruct);
      v53 = v66;
      (*(v2 + 16))(v4, v10, v66);
      sub_100D13C38(v10, type metadata accessor for CRLAssetData);
      v54 = UUID.uuidString.getter();
      v56 = v55;
      (*(v2 + 8))(v4, v53);
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v54;
      *(inited + 40) = v56;
      v57 = static os_log_type_t.default.getter();
      sub_100005404(v52, &_mh_execute_header, v57, "Cannot load USD renderer with unexpected loading state for asset %{public}@", 75, 2, inited);
      swift_setDeallocating();
      return sub_100005070(inited + 32);
    }

    __break(1u);
    goto LABEL_18;
  }

  v61 = v18;
  v23 = *v16;
  v24 = v16[8];
  v60 = *(sub_1005B981C(&qword_101A1B820) + 64);
  v59 = v13;
  if (byte_1019F2C48 == 1)
  {
    v25 = sub_100D0D22C();
    v2 = v65;
    if (((v24 ^ v25) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v2 = v65;
  if ((v24 & 1) == 0)
  {
LABEL_12:

    (*(v61 + 8))(&v16[v60], v17);
    goto LABEL_13;
  }

LABEL_5:
  inited = v23;
  v27 = v61;
  v10 = v64;
  (*(v61 + 32))(v64, &v16[v60], v17);
  v2 = v17;
  if (qword_1019F21E0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v28 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  v30 = [v1 debugDescription];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000053B0();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v34 = static os_log_type_t.debug.getter();
  sub_100005404(v28, &_mh_execute_header, v34, "(USDZRep) [%{public}@] loadOutOfProcessCoreRERenderer()", 55, 2, v29);
  swift_setDeallocating();
  sub_100005070(v29 + 32);
  if (byte_1019F2C48)
  {
    v35 = 8;
  }

  else
  {
    v35 = 0;
  }

  v36 = objc_allocWithZone(_s15AppExRepBackendCMa(0));
  v37 = v1;
  v38 = sub_1008657BC(v1, &off_1018A11E0, v35);

  v39 = sub_1005B981C(&unk_101A1B808);
  v40 = v39[12];
  v41 = v59;
  v42 = (v59 + v39[16]);
  v43 = v59 + v39[20];
  *v59 = inited;
  v44 = v10;
  v45 = v2;
  (*(v27 + 16))(v41 + v40, v44, v2);
  *v42 = v38;
  v42[1] = &off_1018897F8;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 4) = 0;
  *(v43 + 40) = xmmword_101481DF0;
  swift_storeEnumTagMultiPayload();
  v46 = v1;
  v47 = v62;
  swift_beginAccess();
  v48 = inited;
  v49 = v38;
  sub_100D15E6C(v41, &v46[v47], type metadata accessor for CRLUSDZRep.AssetLoadingState);
  v50 = swift_endAccess();
  sub_100CF8070(v50);

  sub_100D13C38(v41, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  return (*(v27 + 8))(v64, v45);
}

uint64_t sub_100D01480()
{
  v62 = type metadata accessor for UUID();
  v1 = *(v62 - 8);
  __chkstk_darwin(v62);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v10);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy) == 3)
  {
    v60 = v1;
    v59 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v57 = v19;
    v61 = v0;
    sub_100D13C98(v0 + v19, v15, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v58 = v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = v12;
      v56 = v16;
      v20 = *v15;
      v21 = v15[8];
      v22 = *(sub_1005B981C(&qword_101A1B820) + 64);
      if (v21)
      {
        v62 = v20;
        v23 = &v15[v22];
        v24 = v56;
        (*(v17 + 32))(v59, v23, v56);
        if (qword_1019F21E0 == -1)
        {
LABEL_5:
          v25 = static OS_os_log.crlThreeDimensionalObjects;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v27 = v61;
          v28 = [v61 debugDescription];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v29;
          *(inited + 40) = v31;
          v32 = static os_log_type_t.debug.getter();
          sub_100005404(v25, &_mh_execute_header, v32, "(USDZRep) [%{public}@] loadQLRenderer()", 39, 2, inited);
          swift_setDeallocating();
          sub_100005070(inited + 32);
          _s17QLSnapshotBackendCMa(0);
          v33 = swift_allocObject();
          v33[1] = vdupq_n_s64(0x408F400000000000uLL);
          (*(v17 + 56))(v33->i64 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_modelURL, 1, 1, v24);
          v34 = &v33->i8[OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate];
          *(&v33->i64[1] + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate) = 0;
          swift_unknownObjectWeakInit();
          UUID.init()();
          *(v34 + 1) = &off_1018A11E0;
          swift_unknownObjectWeakAssign();
          _s17QLSnapshotBackendC12BackendStateOMa(0);
          swift_storeEnumTagMultiPayload();
          v35 = sub_1005B981C(&unk_101A1B808);
          v36 = v35[12];
          v37 = v17;
          v38 = v55;
          v39 = (v55 + v35[16]);
          v40 = v55 + v35[20];
          v41 = v62;
          *v55 = v62;
          v42 = v59;
          (*(v37 + 16))(v38 + v36, v59, v24);
          *v39 = v33;
          v39[1] = &off_10188D2F0;
          *v40 = 0u;
          *(v40 + 1) = 0u;
          *(v40 + 4) = 0;
          *(v40 + 40) = xmmword_101481DF0;
          swift_storeEnumTagMultiPayload();
          v43 = v57;
          swift_beginAccess();
          v44 = v41;

          sub_100D15E6C(v38, v27 + v43, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v45 = swift_endAccess();
          sub_100CF8070(v45);

          sub_100D13C38(v38, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          return (*(v37 + 8))(v42, v24);
        }

LABEL_14:
        swift_once();
        goto LABEL_5;
      }

      (*(v17 + 8))(&v15[v22], v56);
    }

    else
    {
      sub_100D13C38(v15, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }

    v1 = v60;
    v0 = v61;
  }

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v47 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_10146C6B0;
  v24 = [v0 info];
  type metadata accessor for CRLUSDZItem();
  v17 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v17 != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C98(v6, v9, type metadata accessor for CRLAssetData);
  sub_100D13C38(v6, type metadata accessor for CRLUSDZAssetDataStruct);
  v49 = v62;
  (*(v1 + 16))(v3, v9, v62);
  sub_100D13C38(v9, type metadata accessor for CRLAssetData);
  v50 = UUID.uuidString.getter();
  v52 = v51;
  (*(v1 + 8))(v3, v49);
  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = sub_1000053B0();
  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  v53 = static os_log_type_t.default.getter();
  sub_100005404(v47, &_mh_execute_header, v53, "Cannot load USD renderer with unexpected loading state for asset %{public}@", 75, 2, v48);
  swift_setDeallocating();
  return sub_100005070(v48 + 32);
}

void sub_100D01D3C()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v56 - v2;
  v4 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v4);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v56 - v12;
  v13 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v0 + v13, v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {

    v14 = sub_1005B981C(&unk_101A1B808);
    v15 = v14[12];
    v16 = v14[16];
    v17 = (v6 + v14[20]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = v17[4];
    v23 = v17[5];
    v58 = *(v6 + v16);
    sub_100863E8C(v18, v19, v20, v21, v22, v23);
    v57 = v3;
    v24 = *(v8 + 32);
    v25 = v6 + v15;
    v26 = v59;
    v24(v59, v25, v7);
    (*(v8 + 16))(v10, v26, v7);
    v27 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v0;
    v24((v28 + v27), v10, v7);
    v29 = type metadata accessor for TaskPriority();
    v30 = v57;
    (*(*(v29 - 8) + 56))(v57, 1, 1, v29);
    type metadata accessor for MainActor();
    v31 = v0;
    swift_unknownObjectRetain();

    v32 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = &protocol witness table for MainActor;
    *(v33 + 32) = v31;
    *(v33 + 40) = v58;
    *(v33 + 56) = &unk_1014AC3A0;
    *(v33 + 64) = v28;
    sub_10064191C(0, 0, v30, &unk_1014AC3A8, v33);
    swift_unknownObjectRelease();

    (*(v8 + 8))(v59, v7);
  }

  else
  {
    sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v59 = objc_opt_self();
    v34 = [v59 _atomicIncrementAssertCount];
    v60 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v60);
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    v37 = [v36 lastPathComponent];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v41 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v34;
    v43 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v43;
    v44 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v44;
    *(inited + 72) = v35;
    *(inited + 136) = &type metadata for String;
    v45 = sub_1000053B0();
    *(inited + 112) = v38;
    *(inited + 120) = v40;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v45;
    *(inited + 152) = 1351;
    v46 = v60;
    *(inited + 216) = v43;
    *(inited + 224) = v44;
    *(inited + 192) = v46;
    v47 = v35;
    v48 = v46;
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v41, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v41, &_mh_execute_header, v50, "Unexpected loading state for USD scene loading.", 47, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v51 = swift_allocObject();
    v51[2] = 8;
    v51[3] = 0;
    v51[4] = 0;
    v51[5] = 0;
    v52 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    [v59 handleFailureInFunction:v53 file:v54 lineNumber:1351 isFatal:0 format:v55 args:v52];
  }
}

uint64_t sub_100D02490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  sub_1005B981C(&unk_1019F33C0);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[26] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v7;
  v4[28] = v6;

  return _swift_task_switch(sub_100D02644, v7, v6);
}

uint64_t sub_100D02644()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v55 = v0[22];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[14];
  v5 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = [v3 debugDescription];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v5, &_mh_execute_header, v11, "(USDZRep) [%{public}@] loadSceneInRenderer()", 44, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v12 = *(v2 + 16);
  v12(v55, v4, v1);
  v13 = [v3 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B7648();
  v53 = v14;

  [v3 layerFrameInScaledCanvas];
  v59 = CGRectIntegral(v58);
  width = v59.size.width;
  height = v59.size.height;
  [v3 layerFrameInScaledCanvas];
  sub_100D0C010(v17, v18);
  v20 = v19;
  v22 = v21;
  v23 = [v3 canvas];
  if (v23)
  {
    v24 = v23;
    [v23 contentsScale];
    v26 = v25;
  }

  else
  {
    v26 = 2.0;
  }

  v27 = v0[21];
  v28 = v0[19];
  v29 = v0[20];
  v30 = v0[17];
  v31 = v0[15];
  v12(v27, v0[22], v28);
  v12(v30, v27, v28);
  v12(v31, v27, v28);
  (*(v29 + 56))(v31, 0, 1, v28);
  v29 += 8;
  v32 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
  v34 = v33;
  v35 = v0[24];
  v50 = v0[22];
  v51 = v0[23];
  v36 = v0[21];
  v38 = v0[18];
  v37 = v0[19];
  v39 = v0[17];
  v49 = v0[16];
  v56 = v0[12];
  v52 = v0[25];
  sub_10000CAAC(v0[15], &unk_1019F33C0);
  v40 = *v29;
  (*v29)(v36, v37);
  v40(v50, v37);
  v41 = (v39 + *(v49 + 20));
  *v41 = v32;
  v41[1] = v34;
  sub_100D15784(v39, v38, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  sub_100D15784(v38, v35, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  v42 = v35 + *(v51 + 20);
  *v42 = 1103626240;
  *(v42 + 16) = v53;
  *(v42 + 32) = width;
  *(v42 + 40) = height;
  *(v42 + 48) = v20;
  *(v42 + 56) = v22;
  *(v42 + 64) = v26;
  v43 = (v35 + *(v51 + 24));
  *v43 = 0u;
  v43[1] = 0u;
  sub_100D15784(v35, v52, type metadata accessor for CRLUSDRendering.SceneRequest);
  ObjectType = swift_getObjectType();
  v54 = (*(v56 + 16) + **(v56 + 16));
  v45 = swift_task_alloc();
  v0[29] = v45;
  *v45 = v0;
  v45[1] = sub_100D02C24;
  v46 = v0[25];
  v47 = v0[12];

  return v54(v46, ObjectType, v47);
}

uint64_t sub_100D02C24()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_100D02E40;
  }

  else
  {
    v5 = sub_100D02D60;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D02D60()
{
  v1 = *(v0 + 200);

  sub_100D13C38(v1, type metadata accessor for CRLUSDRendering.SceneRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D02E40()
{
  v1 = *(v0 + 200);

  sub_100D13C38(v1, type metadata accessor for CRLUSDRendering.SceneRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D02F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_100D02FB8, v5, v4);
}

uint64_t sub_100D02FB8()
{
  v1 = *(v0 + 104);
  v2 = [v1 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B7648();
  v20 = v3;

  [v1 layerFrameInScaledCanvas];
  v25 = CGRectIntegral(v24);
  width = v25.size.width;
  height = v25.size.height;
  [v1 layerFrameInScaledCanvas];
  sub_100D0C010(v6, v7);
  v9 = v8;
  v11 = v10;
  v12 = [v1 canvas];
  if (v12)
  {
    v13 = v12;
    [v12 contentsScale];
    v15 = v14;
  }

  else
  {
    v15 = 2.0;
  }

  v22 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = 1103626240;
  *(v0 + 32) = v20;
  *(v0 + 48) = width;
  *(v0 + 56) = height;
  *(v0 + 64) = v9;
  *(v0 + 72) = v11;
  *(v0 + 80) = v15;
  v21 = (*(v22 + 24) + **(v22 + 24));
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_100D031E4;
  v18 = *(v0 + 96);

  return v21(v0 + 16, ObjectType, v18);
}

uint64_t sub_100D031E4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_100D03384;
  }

  else
  {
    v5 = sub_100D03320;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D03320()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D03384()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100D033E8(char *a1)
{
  v58 = type metadata accessor for UUID();
  v2 = *(v58 - 8);
  __chkstk_darwin(v58);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_100D0BB70();
  v18 = v17;
  v19 = &a1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
  v20 = a1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
  if (v20 > 0x3F)
  {
    goto LABEL_11;
  }

  v52 = a1;
  v53 = v5;
  v56 = v20;
  v49 = v4;
  v50 = v10;
  v51 = &a1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
  v21 = *v19;
  v22 = *(*v19 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset);
  v23 = &unk_101A17000;
  v54 = *v19;
  v55 = v2;
  v57 = v17;
  if (v22)
  {
    v24 = v21;
    v26 = *&v22[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v25 = *&v22[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v22[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v26);
    v27 = *(v25 + 24);
    sub_100D1548C(v24, v56);
    v28 = v22;
    v29 = v26;
    v18 = v57;
    v2 = v55;
    v27(v29, v25);
    v23 = &unk_101A17000;

    v30 = *(v2 + 56);
    v31 = v58;
    v30(v16, 0, 1, v58);
  }

  else
  {
    v30 = *(v2 + 56);
    v31 = v58;
    v30(v16, 1, 1, v58);
    v32 = v21;
  }

  v33 = &v18[v23[496]];
  v34 = *(v33 + 3);
  v35 = *(v33 + 4);
  sub_100020E58(v33, v34);
  (*(v35 + 24))(v34, v35);
  v30(v13, 0, 1, v31);
  v36 = *(v53 + 48);
  sub_10000BE14(v16, v7, &qword_1019F6990);
  sub_10000BE14(v13, &v7[v36], &qword_1019F6990);
  v37 = *(v2 + 48);
  if (v37(v7, 1, v31) == 1)
  {
    sub_100D15590(v54, v56);
    sub_10000CAAC(v13, &qword_1019F6990);
    sub_10000CAAC(v16, &qword_1019F6990);
    if (v37(&v7[v36], 1, v31) == 1)
    {
      sub_10000CAAC(v7, &qword_1019F6990);
      v18 = v57;
      v38 = v51;
LABEL_14:

      v42 = *v38;
      sub_100D1548C(*v38, v38[8]);
      return v42;
    }

    goto LABEL_10;
  }

  v39 = v50;
  sub_10000BE14(v7, v50, &qword_1019F6990);
  if (v37(&v7[v36], 1, v31) == 1)
  {
    sub_100D15590(v54, v56);
    sub_10000CAAC(v13, &qword_1019F6990);
    sub_10000CAAC(v16, &qword_1019F6990);
    (*(v55 + 8))(v39, v31);
LABEL_10:
    sub_10000CAAC(v7, &unk_101A0AFE0);
    a1 = v52;
    v18 = v57;
    goto LABEL_11;
  }

  v44 = v55;
  v45 = &v7[v36];
  v46 = v49;
  (*(v55 + 32))(v49, v45, v31);
  sub_100D15398(&qword_1019F37C0, &type metadata accessor for UUID);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100D15590(v54, v56);
  v48 = *(v44 + 8);
  v48(v46, v31);
  sub_10000CAAC(v13, &qword_1019F6990);
  sub_10000CAAC(v16, &qword_1019F6990);
  v48(v39, v31);
  sub_10000CAAC(v7, &qword_1019F6990);
  v38 = v51;
  a1 = v52;
  v18 = v57;
  if (v47)
  {
    goto LABEL_14;
  }

LABEL_11:
  v40 = objc_allocWithZone(type metadata accessor for CRLUndownloadedAssetDrawingHelper());
  v41 = a1;
  v42 = sub_101252E28(v41, v18);

  return v42;
}

uint64_t sub_100D039C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  v9 = type metadata accessor for URL();
  v8[27] = v9;
  v8[28] = *(v9 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[35] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[36] = v11;
  v8[37] = v10;

  return _swift_task_switch(sub_100D03B18, v11, v10);
}

uint64_t sub_100D03B18()
{
  v1 = v0[34];
  v2 = v0[22];
  v3 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  v0[38] = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v2 + v3, v1, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v14 = v0[34];

    sub_100D13C38(v14, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    goto LABEL_5;
  }

  v4 = v0[34];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[23];
  v8 = *v4;
  v0[39] = *v4;
  v9 = sub_1005B981C(&unk_101A1B808);
  v0[40] = v9;
  v10 = v9[12];
  v11 = *(v4 + v9[16]);
  v0[41] = v11;
  v12 = (v4 + v9[20]);
  sub_100863E8C(*v12, v12[1], v12[2], v12[3], v12[4], v12[5]);
  v13 = *(v6 + 8);
  v0[42] = v13;
  v0[43] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v4 + v10, v5);
  if (v11 != v7)
  {

    swift_unknownObjectRelease();
LABEL_5:

    v15 = v0[1];

    return v15();
  }

  v20 = (v0[25] + *v0[25]);
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_100D03DB0;
  v19 = v0[23];
  v18 = v0[24];

  return v20(v19, v18);
}

uint64_t sub_100D03DB0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_100D03F9C;
  }

  else
  {
    v5 = sub_100D03EEC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D03EEC()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D03F9C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v3 = *(v0 + 176);

  sub_100D13C98(v3 + v1, v2, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v4 = *(v0 + 360);
    v5 = *(v0 + 320);
    v6 = *(v0 + 264);
    v7 = *(v0 + 248);
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);
    v11 = *v7;
    v12 = v5[12];
    v13 = (v7 + v5[20]);
    v38 = *(v7 + v5[16]);
    sub_100863E8C(*v13, v13[1], v13[2], v13[3], v13[4], v13[5]);
    (*(v9 + 32))(v8, v7 + v12, v10);
    v14 = v5[12];
    v15 = v5[16];
    *v6 = v11;
    (*(v9 + 16))(&v6[v14], v8, v10);
    *&v6[v15] = v38;
    *(v0 + 152) = v4;
    v37 = v11;
    swift_unknownObjectRetain();
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 112);
      v17 = *(v0 + 120);
      v18 = *(v0 + 128);
    }

    else
    {
      *(v0 + 160) = *(v0 + 360);
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v16 = *(v0 + 136);
        v17 = *(v0 + 144);
        v18 = 4;
      }

      else
      {
        swift_getErrorValue();
        v16 = Error.localizedDescription.getter();
        v18 = 5;
      }
    }

    v27 = *(v0 + 336);
    v29 = *(v0 + 304);
    v28 = *(v0 + 312);
    v30 = *(v0 + 264);
    v31 = *(v0 + 232);
    v32 = *(v0 + 216);
    v33 = *(v0 + 176);
    v34 = v30 + *(*(v0 + 320) + 80);
    *v34 = v16;
    *(v34 + 8) = v17;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 16) = v18;
    *(v34 + 40) = xmmword_101465930;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100D15E6C(v30, v33 + v29, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100D13C38(v30, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v27(v31, v32);
  }

  else
  {
    v19 = *(v0 + 360);
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    v24 = *(v0 + 176);
    v25 = *(sub_1005B981C(&qword_101A1B818) + 48);
    *v23 = v20;
    *(v23 + v25) = v19;
    type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    swift_errorRetain();
    v26 = v20;
    sub_100D15E6C(v23, v24 + v21, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();
    swift_unknownObjectRelease();

    sub_100D13C38(v23, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    sub_100D13C38(v22, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100D043BC(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10085E048;

  return v7(0, 0, ObjectType, a2);
}

void sub_100D0450C(char a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
  if ((v6 & 0xC0) == 0x40)
  {
    v7 = *&v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    v8 = swift_allocObject();
    v9 = type metadata accessor for TaskPriority();
    v15 = v7[1];
    *(v8 + 16) = a1 & 1;
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    type metadata accessor for MainActor();
    sub_100D1548C(v7, v6);
    v10 = v1;
    swift_unknownObjectRetain();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    *(v12 + 32) = v10;
    *(v12 + 40) = v15;
    *(v12 + 56) = &unk_1014AC378;
    *(v12 + 64) = v8;
    sub_10064191C(0, 0, v5, &unk_1014AC388, v12);

    sub_100D15590(v7, v6);
  }

  else
  {
    sub_100006370(0, &qword_1019F6EE0);
    *&v15 = static OS_os_log.default.getter();
    v13 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v13, "Incorrect renderingState to stop playback.", 42, 2, _swiftEmptyArrayStorage);
    v14 = v15;
  }
}

uint64_t sub_100D04764(uint64_t a1, uint64_t a2, char a3)
{
  v3[2] = type metadata accessor for MainActor();
  v3[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v10 = (*(a2 + 32) + **(a2 + 32));
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  if (a3)
  {
    v7[1] = sub_100D048E0;
    v8 = 4;
  }

  else
  {
    v7[1] = sub_100D04A3C;
    v8 = 5;
  }

  return v10(0, v8, ObjectType, a2);
}