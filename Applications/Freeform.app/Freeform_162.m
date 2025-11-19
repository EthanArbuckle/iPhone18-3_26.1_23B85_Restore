uint64_t sub_1012DF9AC(Swift::Int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for UUID();
  v12 = __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v69 = a4;
  v70 = v14;
  v67 = &v62 - v13;
  v68 = v15;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v16 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v16 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_100E6B218(v72, v5);
  swift_endAccess();

  if (v16)
  {
    swift_beginAccess();

    sub_100E6B218(v72, v5);
    swift_endAccess();
  }

  type metadata accessor for CRLContainerItem(0);
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    type metadata accessor for CRLBoard(0);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = *(v27 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
      v29 = v27;
      swift_unknownObjectRetain();
      v30 = v28;
      sub_101107D04();

      v31 = *(v29 + OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer);
      sub_101107D04();
      swift_unknownObjectRelease();
    }

    goto LABEL_29;
  }

  v18 = v17;
  v19 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v20 = *(v17 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  result = swift_unknownObjectRetain();
  if (!v20)
  {
    result = sub_10096C7D4();
    v20 = *(v18 + v19);
  }

  if (v20)
  {
    a4 = v20;
  }

  else
  {
    a4 = _swiftEmptyArrayStorage;
  }

  if (a4 >> 62)
  {
LABEL_27:
    result = _CocoaArrayWrapper.endIndex.getter();
    v22 = result;
    if (result)
    {
      goto LABEL_17;
    }

LABEL_28:

    swift_unknownObjectRelease();

    goto LABEL_29;
  }

  v22 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (v22 < 1)
  {
    __break(1u);
    return result;
  }

  v65 = v5;
  v23 = v11;
  v71 = a5;

  for (i = 0; i != v22; ++i)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(a4 + 8 * i + 32);
    }

    v26 = v25;
    sub_1010F8AD4(v25, a2, a3);
  }

  swift_unknownObjectRelease();

  a5 = v71;
  v11 = v23;
  v5 = v65;
LABEL_29:
  v32 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v33 = *(a3 + v32);

  v34 = sub_10079C5CC(v5, v33);

  v66 = v11;
  if (v34)
  {
    v65 = a1;
    v71 = a5;
    v64 = objc_opt_self();
    v35 = [v64 _atomicIncrementAssertCount];
    v72[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v72);
    StaticString.description.getter();
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    v37 = [v36 lastPathComponent];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v39;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v35;
    v42 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v42;
    v43 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v43;
    v44 = v63;
    *(inited + 72) = v63;
    *(inited + 136) = &type metadata for String;
    v45 = sub_1000053B0();
    v46 = v62;
    *(inited + 112) = v38;
    *(inited + 120) = v46;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v45;
    *(inited + 152) = 308;
    v47 = v72[0];
    *(inited + 216) = v42;
    *(inited + 224) = v43;
    *(inited + 192) = v47;
    v48 = v44;
    v49 = v47;
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v51 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v51, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v52 = swift_allocObject();
    v52[2] = 8;
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = 0;
    v53 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    [v64 handleFailureInFunction:v54 file:v55 lineNumber:308 isFatal:0 format:v56 args:v53];

    a5 = v71;
    a1 = v65;
  }

  v57 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v59 = *(v57 + 24);
  swift_unknownObjectRetain();
  v59(a1, a5, ObjectType, v57);
  swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v60 = v68;
    (*(a5 + 32))(v69, a5);
    swift_beginAccess();
    v61 = v67;
    sub_100E6AF38(v67, v60);
    (*(v70 + 8))(v61, v66);
    swift_endAccess();
  }
}

uint64_t sub_1012E01FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  type metadata accessor for CRLTransactionContext(0);
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = &_swiftEmptyDictionarySingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = &_swiftEmptyDictionarySingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v7 + 32))(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v9, v6);
  v11 = (v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  *v11 = a1;
  v11[1] = a4;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 0;
  *(v10 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = 0;
  swift_unknownObjectRetain();
  return v10;
}

uint64_t sub_1012E0400(uint64_t a1, uint64_t (**a2)(void, void))
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v147 = v8;
  type metadata accessor for CRLTransactableHashableWrapper();
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v149 = a2;
  v12 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
  swift_beginAccess();
  v13 = *(v4 + v12);
  swift_unknownObjectRetain();

  v14 = sub_10079C5CC(v11, v13);

  if (v14 & 1) != 0 || (v15 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects, swift_beginAccess(), v16 = *(v4 + v15), , v17 = sub_10079C5CC(v11, v16), , (v17))
  {
    a2 = v149;
    if (v149[1](ObjectType, v149))
    {
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v10 = v148;
    if (qword_1019F2098 == -1)
    {
LABEL_9:
      v19 = static OS_os_log.crlDefault;
      v20 = static os_log_type_t.debug.getter();
      sub_100005404(v19, &_mh_execute_header, v20, "Trying to modify a deleted object with no transactionContext set.", 65, 2, _swiftEmptyArrayStorage);
      sub_101277E70(v4, ObjectType, a2);

      if (v10)
      {
        return result;
      }

      return swift_unknownObjectRelease();
    }

LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  v21 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
  swift_beginAccess();
  v146 = v21;
  if (!*(*&v21[v4] + 16) || (, sub_1007C7FB8(v11), v23 = v22, , (v23 & 1) == 0))
  {
    v143 = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v27 = ObjectType;
    v145 = ObjectType;
    v28 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    v29 = v149;
    v149[4](v27, v149);
    v30 = UUID.uuidString.getter();
    v144 = v31;
    (*(v147 + 8))(v10, v7);
    v28[7] = &type metadata for String;
    v32 = sub_1000053B0();
    v28[4] = v30;
    v147 = v32;
    v28[8] = v32;
    v28[5] = v144;
    v33 = v29;
    v34 = v145;
    if (!(*(v33 + 8))(v145, v33))
    {
      swift_setDeallocating();
      sub_100005070((v28 + 4));
      v35 = v148;
      v36 = sub_101277E70(v4, v34, v33);
      if (v35)
      {
      }

      v38 = v36;
      v25 = v146;
      v39 = v37;
      swift_beginAccess();

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = *&v25[v4];
      *&v25[v4] = 0x8000000000000000;
      sub_100A9AB44(v38, v39, v11, isUniquelyReferenced_nonNull_native);

      *&v25[v4] = v152;
      swift_endAccess();
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    v149 = (v28 + 4);

    v146 = objc_opt_self();
    LODWORD(v50) = [v146 _atomicIncrementAssertCount];
    v150[0] = [objc_allocWithZone(NSString) init];
    v148 = v28;
    sub_100604538(v28, v150);
    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    v53 = [v52 lastPathComponent];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_64;
    }

LABEL_31:
    v57 = static OS_os_log.crlAssert;
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_10146CA70;
    *(v58 + 56) = &type metadata for Int32;
    *(v58 + 64) = &protocol witness table for Int32;
    *(v58 + 32) = v50;
    v59 = sub_100006370(0, &qword_1019F4D30);
    *(v58 + 96) = v59;
    v60 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v58 + 72) = v51;
    v61 = v147;
    *(v58 + 136) = &type metadata for String;
    *(v58 + 144) = v61;
    *(v58 + 104) = v60;
    *(v58 + 112) = v54;
    *(v58 + 120) = v56;
    *(v58 + 176) = &type metadata for UInt;
    *(v58 + 184) = &protocol witness table for UInt;
    *(v58 + 152) = 230;
    v62 = v150[0];
    *(v58 + 216) = v59;
    *(v58 + 224) = v60;
    *(v58 + 192) = v62;
    v63 = v51;
    v64 = v62;
    v65 = static os_log_type_t.error.getter();
    sub_100005404(v57, &_mh_execute_header, v65, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v58);

    v66 = static os_log_type_t.error.getter();
    v67 = v57;
    v68 = v148;
    sub_100005404(v67, &_mh_execute_header, v66, "First time we are seeing this transactable %@, it should not already have a transactionContext set", 98, 2, v148);

    sub_10063DF98(v68, "First time we are seeing this transactable %@, it should not already have a transactionContext set");
    type metadata accessor for __VaListBuilder();
    v69 = swift_allocObject();
    v69[2] = 8;
    v69[3] = 0;
    v70 = v69 + 3;
    v69[4] = 0;
    v69[5] = 0;
    v56 = *(v68 + 16);
    if (!v56)
    {
      goto LABEL_72;
    }

    v51 = 0;
    while (1)
    {
      sub_100020E58(&v149[5 * v51], v149[5 * v51 + 3]);
      v71 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v72 = *v70;
      v73 = *(v71 + 16);
      v74 = __OFADD__(*v70, v73);
      v75 = *v70 + v73;
      if (v74)
      {
        goto LABEL_56;
      }

      v76 = v71;
      v77 = v69[4];
      if (v77 >= v75)
      {
        goto LABEL_48;
      }

      if (v77 + 0x4000000000000000 < 0)
      {
        goto LABEL_57;
      }

      v78 = v69[5];
      if (2 * v77 > v75)
      {
        v75 = 2 * v77;
      }

      v69[4] = v75;
      if ((v75 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_58;
      }

      v79 = swift_slowAlloc();
      v69[5] = v79;
      if (v78)
      {
        break;
      }

LABEL_49:
      if (!v79)
      {
        __break(1u);
LABEL_72:
        v50 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v141 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v142 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v54 = String._bridgeToObjectiveC()();

        [v146 handleFailureInFunction:v141 file:v142 lineNumber:230 isFatal:1 format:v54 args:v50];

        goto LABEL_63;
      }

      v81 = *(v76 + 16);
      if (v81)
      {
        v82 = (v76 + 32);
        v83 = *v70;
        while (1)
        {
          v84 = *v82++;
          *&v79[8 * v83] = v84;
          v83 = *v70 + 1;
          if (__OFADD__(*v70, 1))
          {
            break;
          }

          *v70 = v83;
          if (!--v81)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v149 = objc_opt_self();
        v85 = [v149 _atomicIncrementAssertCount];
        v151 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v151);
        StaticString.description.getter();
        v86 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v87 = String._bridgeToObjectiveC()();

        v88 = [v87 lastPathComponent];

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v92 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_10146CA70;
        *(v56 + 56) = &type metadata for Int32;
        *(v56 + 64) = &protocol witness table for Int32;
        *(v56 + 32) = v85;
        v51 = NSString_ptr;
        v93 = sub_100006370(0, &qword_1019F4D30);
        *(v56 + 96) = v93;
        v94 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(v56 + 104) = v94;
        *(v56 + 72) = v86;
        *(v56 + 136) = &type metadata for String;
        v95 = sub_1000053B0();
        *(v56 + 112) = v89;
        *(v56 + 120) = v91;
        *(v56 + 176) = &type metadata for UInt;
        *(v56 + 184) = &protocol witness table for UInt;
        *(v56 + 144) = v95;
        *(v56 + 152) = 220;
        v96 = v151;
        *(v56 + 216) = v93;
        *(v56 + 224) = v94;
        *(v56 + 192) = v96;
        v50 = v86;
        v97 = v96;
        v98 = static os_log_type_t.error.getter();
        sub_100005404(v92, &_mh_execute_header, v98, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v56);

        v99 = static os_log_type_t.error.getter();
        sub_100005404(v92, &_mh_execute_header, v99, "Trying to modify a deleted object %@ that has a different transactionContext set on it already.", 95, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Trying to modify a deleted object %@ that has a different transactionContext set on it already.");
        type metadata accessor for __VaListBuilder();
        v100 = swift_allocObject();
        LODWORD(v50) = v100;
        v100[2] = 8;
        v100[3] = 0;
        v100[4] = 0;
        v100[5] = 0;
        v101 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v102 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v54 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v103 = String._bridgeToObjectiveC()();

        [v149 handleFailureInFunction:v102 file:v54 lineNumber:220 isFatal:1 format:v103 args:v101];
LABEL_62:

LABEL_63:
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v104, *&v105);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_64:
        swift_once();
        goto LABEL_31;
      }

LABEL_33:

      v51 = (v51 + 1);
      if (v51 == v56)
      {
        goto LABEL_72;
      }
    }

    if (v79 != v78 || v79 >= &v78[8 * v72])
    {
      memmove(v79, v78, 8 * v72);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_48:
    v79 = v69[5];
    goto LABEL_49;
  }

  if (!(v149[1])(ObjectType))
  {
    v149 = objc_opt_self();
    v107 = [v149 _atomicIncrementAssertCount];
    v150[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v150);
    StaticString.description.getter();
    v108 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v109 = String._bridgeToObjectiveC()();

    v110 = [v109 lastPathComponent];

    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v112;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v113 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v114 = swift_initStackObject();
    *(v114 + 16) = xmmword_10146CA70;
    *(v114 + 56) = &type metadata for Int32;
    *(v114 + 64) = &protocol witness table for Int32;
    *(v114 + 32) = v107;
    v51 = NSString_ptr;
    v115 = sub_100006370(0, &qword_1019F4D30);
    *(v114 + 96) = v115;
    v116 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v114 + 104) = v116;
    *(v114 + 72) = v108;
    *(v114 + 136) = &type metadata for String;
    v117 = sub_1000053B0();
    *(v114 + 112) = v111;
    *(v114 + 120) = v56;
    *(v114 + 176) = &type metadata for UInt;
    *(v114 + 184) = &protocol witness table for UInt;
    *(v114 + 144) = v117;
    *(v114 + 152) = 239;
    v118 = v150[0];
    *(v114 + 216) = v115;
    *(v114 + 224) = v116;
    *(v114 + 192) = v118;
    v50 = v108;
    v119 = v118;
    v120 = static os_log_type_t.error.getter();
    sub_100005404(v113, &_mh_execute_header, v120, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v114);

    v121 = static os_log_type_t.error.getter();
    sub_100005404(v113, &_mh_execute_header, v121, "Object already exists in modifiedObjects but does not have a transactionContext set", 83, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Object already exists in modifiedObjects but does not have a transactionContext set");
    type metadata accessor for __VaListBuilder();
    v122 = swift_allocObject();
    LODWORD(v50) = v122;
    v122[2] = 8;
    v122[3] = 0;
    v122[4] = 0;
    v122[5] = 0;
    v123 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v102 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v103 = String._bridgeToObjectiveC()();

    [v149 handleFailureInFunction:v102 file:v54 lineNumber:239 isFatal:1 format:v103 args:v123];
    goto LABEL_62;
  }

  v24 = static UUID.== infix(_:_:)();
  v25 = v146;
  if ((v24 & 1) == 0)
  {
    v149 = objc_opt_self();
    v124 = [v149 _atomicIncrementAssertCount];
    v150[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v150);
    StaticString.description.getter();
    v125 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v126 = String._bridgeToObjectiveC()();

    v127 = [v126 lastPathComponent];

    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v129;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v130 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v131 = swift_initStackObject();
    *(v131 + 16) = xmmword_10146CA70;
    *(v131 + 56) = &type metadata for Int32;
    *(v131 + 64) = &protocol witness table for Int32;
    *(v131 + 32) = v124;
    v51 = NSString_ptr;
    v132 = sub_100006370(0, &qword_1019F4D30);
    *(v131 + 96) = v132;
    v133 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v131 + 104) = v133;
    *(v131 + 72) = v125;
    *(v131 + 136) = &type metadata for String;
    v134 = sub_1000053B0();
    *(v131 + 112) = v128;
    *(v131 + 120) = v56;
    *(v131 + 176) = &type metadata for UInt;
    *(v131 + 184) = &protocol witness table for UInt;
    *(v131 + 144) = v134;
    *(v131 + 152) = 237;
    v135 = v150[0];
    *(v131 + 216) = v132;
    *(v131 + 224) = v133;
    *(v131 + 192) = v135;
    v50 = v125;
    v136 = v135;
    v137 = static os_log_type_t.error.getter();
    sub_100005404(v130, &_mh_execute_header, v137, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v131);

    v138 = static os_log_type_t.error.getter();
    sub_100005404(v130, &_mh_execute_header, v138, "Trying to store a different copy of a CRLTransactable with the same UUID", 72, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Trying to store a different copy of a CRLTransactable with the same UUID");
    type metadata accessor for __VaListBuilder();
    v139 = swift_allocObject();
    LODWORD(v50) = v139;
    v139[2] = 8;
    v139[3] = 0;
    v139[4] = 0;
    v139[5] = 0;
    v140 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v102 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v103 = String._bridgeToObjectiveC()();

    [v149 handleFailureInFunction:v102 file:v54 lineNumber:237 isFatal:1 format:v103 args:v140];
    goto LABEL_62;
  }

LABEL_19:
  v41 = *&v25[v4];
  if (*(v41 + 16))
  {

    v42 = sub_1007C7FB8(v11);
    if (v43)
    {
      v44 = (*(v41 + 56) + 16 * v42);
      v45 = *v44;
      v46 = v44[1];
      swift_unknownObjectRetain();
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  swift_beginAccess();

  sub_100BC1BD4(v45, v46, v11);
  swift_endAccess();
  v47 = *(v4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  v48 = swift_getObjectType();
  v49 = *(v47 + 24);
  swift_unknownObjectRetain();
  v49(a1, v149, v48, v47);

  return swift_unknownObjectRelease();
}

uint64_t sub_1012E1890(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v55 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v41 - v10;
  v47 = a4;
  v48 = a3;
  v11 = *(a3 + 56);
  v42 = a3 + 56;
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
  v46 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
  result = swift_beginAccess();
  v49 = 0;
  v16 = 0;
  v17 = (v12 + 63) >> 6;
  v54 = v7 + 16;
  v44 = v7;
  v45 = v17;
  v56 = (v7 + 8);
  while (v14)
  {
    v52 = (v14 - 1) & v14;
    v53 = v16;
    v18 = __clz(__rbit64(v14)) | (v16 << 6);
LABEL_13:
    v22 = *(v48 + 48);
    v50 = v18;
    v23 = *(v22 + 8 * v18);
    v24 = *(v47 + v46);
    v25 = *(v23 + 24);
    ObjectType = swift_getObjectType();
    v27 = *(v25 + 32);
    v51 = v23;

    v27(ObjectType, v25);
    v57 = v24;
    if (*(v24 + 16) && (v28 = v57, sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID), v29 = dispatch thunk of Hashable._rawHashValue(seed:)(), v30 = v28 + 56, v31 = -1 << *(v28 + 32), v32 = v29 & ~v31, ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      v34 = *(v44 + 72);
      v35 = *(v44 + 16);
      while (1)
      {
        v36 = v55;
        v35(v55, *(v57 + 48) + v34 * v32, v6);
        sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *v56;
        (*v56)(v36, v6);
        if (v37)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v38(v58, v6);

      v17 = v45;
      v14 = v52;
      v16 = v53;
    }

    else
    {
LABEL_18:

      (*v56)(v58, v6);

      *(v43 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v39 = __OFADD__(v49++, 1);
      v17 = v45;
      v14 = v52;
      v16 = v53;
      if (v39)
      {
        __break(1u);
LABEL_21:
        v40 = v48;

        return sub_1010F3F24(v43, v41, v49, v40);
      }
    }
  }

  v19 = v16;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_21;
    }

    v21 = *(v42 + 8 * v20);
    ++v19;
    if (v21)
    {
      v52 = (v21 - 1) & v21;
      v53 = v20;
      v18 = __clz(__rbit64(v21)) | (v20 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012E1CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v54 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = v39 - v8;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v40 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v40;

  if (v10 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v39[1] = v39;
    __chkstk_darwin(v12);
    v42 = v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v11);
    v13 = *(a1 + 56);
    v41 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v14 = v11 < 64 ? ~(-1 << v11) : -1;
    v15 = v14 & v13;
    v45 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
    swift_beginAccess();
    v47 = a2;
    v48 = 0;
    v16 = 0;
    v17 = (v11 + 63) >> 6;
    v53 = v5 + 16;
    v55 = (v5 + 8);
    v43 = v5;
    v44 = v17;
    v46 = a1;
    while (v15)
    {
      v51 = (v15 - 1) & v15;
      v52 = v16;
      v18 = __clz(__rbit64(v15)) | (v16 << 6);
LABEL_14:
      v22 = *(a1 + 48);
      v49 = v18;
      v11 = *(v22 + 8 * v18);
      v23 = *(a2 + v45);
      v5 = *(v11 + 16);
      v24 = *(v11 + 24);
      ObjectType = swift_getObjectType();
      v26 = *(v24 + 32);
      v50 = v11;

      v26(ObjectType, v24);
      v56 = v23;
      if (*(v23 + 16) && (v11 = v56, sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID), v5 = v57, v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = v11 + 56, v29 = -1 << *(v11 + 32), v30 = v27 & ~v29, ((*(v11 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        v32 = *(v43 + 72);
        v33 = *(v43 + 16);
        while (1)
        {
          v11 = v54;
          v33(v54, *(v56 + 48) + v32 * v30, v4);
          sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID);
          v5 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *v55;
          (*v55)(v11, v4);
          if (v5)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v28 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v34(v57, v4);

        a1 = v46;
        a2 = v47;
        v17 = v44;
        v15 = v51;
        v16 = v52;
      }

      else
      {
LABEL_19:

        (*v55)(v57, v4);

        *&v42[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
        a2 = v47;
        v35 = __OFADD__(v48++, 1);
        a1 = v46;
        v17 = v44;
        v15 = v51;
        v16 = v52;
        if (v35)
        {
          __break(1u);
LABEL_22:
          v36 = sub_1010F3F24(v42, v40, v48, a1);

          return v36;
        }
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_22;
      }

      v21 = *(v41 + 8 * v20);
      ++v19;
      if (v21)
      {
        v51 = (v21 - 1) & v21;
        v52 = v20;
        v18 = __clz(__rbit64(v21)) | (v20 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();

  v36 = sub_1012D4D28(v38, v40, a1, a2);

  return v36;
}

Swift::Int sub_1012E2240(uint64_t a1, uint64_t a2)
{
  v55 = type metadata accessor for UUID();
  v45 = *(v55 - 8);
  v5 = __chkstk_darwin(v55);
  v53 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = v44 - v7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = _swiftEmptySetSingleton;
    v59 = _swiftEmptySetSingleton;

    v8 = __CocoaSet.makeIterator()();
    v48 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
    swift_beginAccess();
    v49 = v8;
    v9 = __CocoaSet.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      v47 = type metadata accessor for CRLTransactableHashableWrapper();
      v11 = v10;
      v51 = v45 + 16;
      v54 = (v45 + 8);
      v46 = a2;
      v12 = v55;
      do
      {
        v50 = v2;
        v57 = v11;
        swift_dynamicCast();
        v23 = *(a2 + v48);
        v24 = *(v58 + 24);
        ObjectType = swift_getObjectType();
        v26 = *(v24 + 32);

        v26(ObjectType, v24);
        if (*(v23 + 16) && (sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(v23 + 32), v29 = v27 & ~v28, v52 = v23 + 56, ((*(v23 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
        {
          v30 = ~v28;
          v31 = *(v45 + 72);
          v32 = *(v45 + 16);
          while (1)
          {
            v33 = v53;
            v32(v53, *(v23 + 48) + v31 * v29, v12);
            sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID);
            v34 = dispatch thunk of static Equatable.== infix(_:_:)();
            v35 = *v54;
            (*v54)(v33, v12);
            if (v34)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v52 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v35(v56, v55);

          v2 = v50;
        }

        else
        {
LABEL_13:

          v36 = *v54;
          (*v54)(v56, v55);
          v37 = v58;
          if (v50[3] <= v50[2])
          {
            sub_100E7400C();
          }

          v2 = v59;
          Hasher.init(_seed:)();
          v13 = *(v37 + 24);
          v14 = swift_getObjectType();
          v15 = v53;
          (*(v13 + 32))(v14, v13);
          sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
          v16 = v55;
          dispatch thunk of Hashable.hash(into:)();
          v36(v15, v16);
          result = Hasher._finalize()();
          v18 = v2 + 7;
          v19 = -1 << *(v2 + 32);
          v20 = result & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~v2[(v20 >> 6) + 7]) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~v2[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v38 = 0;
            v39 = (63 - v19) >> 6;
            do
            {
              if (++v21 == v39 && (v38 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v40 = v21 == v39;
              if (v21 == v39)
              {
                v21 = 0;
              }

              v38 |= v40;
              v41 = v18[v21];
            }

            while (v41 == -1);
            v22 = __clz(__rbit64(~v41)) + (v21 << 6);
          }

          *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
          *(v2[6] + 8 * v22) = v37;
          ++v2[2];
        }

        v11 = __CocoaSet.Iterator.next()();
        a2 = v46;
      }

      while (v11);
    }
  }

  else
  {
    v42 = v44[1];
    v43 = sub_1012E1CC0(a1, a2);
    if (!v42)
    {
      return v43;
    }
  }

  return v2;
}

uint64_t sub_1012E27CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) & 1) == 0)
  {
    v35 = a1;
    v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v37 = v4;
    v34 = objc_opt_self();
    v8 = [v34 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38);
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    *(inited + 32) = v8;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v16;
    v17 = v33;
    *(inited + 72) = v33;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 560;
    v19 = v38;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v19;
    v20 = v17;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v23, "Should not be trying to watermark a transaction that doesnt want to be tracked.", 79, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v34 handleFailureInFunction:v26 file:v27 lineNumber:560 isFatal:0 format:v28 args:v25];

    v4 = v37;
    v7 = v36;
    a1 = v35;
  }

  v29 = *(v5 + 16);
  v37 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  v29(v7, a1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v4);
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = &_swiftEmptyDictionarySingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = &_swiftEmptyDictionarySingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v7, v4);
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner) = v37;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 1;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = 1;
  *(v2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 0;
  swift_unknownObjectRetain();
  return v2;
}

id sub_1012E2DEC()
{
  v1 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilHoveredRepManager_repsModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v11 = v1;
  v12 = v0;
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_16:
    *(v12 + v11) = _swiftEmptyArrayStorage;

    v10 = 1;
LABEL_18:
    swift_endAccess();
    return v10;
  }

LABEL_3:
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
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    result = [v5 styledLayout];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result dynamicOpacityChangeDidEnd];

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012E2F54()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
LABEL_15:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
LABEL_17:

      *v9 = _swiftEmptyArrayStorage;
      return 1;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    result = [v4 styledLayout];
    if (!result)
    {
      break;
    }

    v8 = result;
    [result dynamicOpacityChangeDidEnd];

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

id sub_1012E30E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSPencilHoveredRepManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall UIView.crl_setGlassBackground()()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v0 - 8);
  static _Glass._GlassVariant.regular.getter();
  v1[3] = type metadata accessor for _Glass();
  v1[4] = &protocol witness table for _Glass;
  sub_10002C58C(v1);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

uint64_t sub_1012E32BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_1012E33D0(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1012E34D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1012E35E4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a1;
  v23 = sub_1005B981C(&qword_1019FD550);
  __chkstk_darwin(v23);
  v7 = &v22 - v6;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v25 = a3;

  v14 = 0;
  while (v11)
  {
    v26 = v4;
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = v25;
    v19 = *(v25 + 48);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 16))(v7, v19 + *(*(v20 - 8) + 72) * v17, v20);
    *&v7[*(v23 + 48)] = *(*(v18 + 56) + 8 * v17);

    v21 = v26;
    v24(v7);
    v4 = v21;
    result = sub_10000CAAC(v7, &qword_1019FD550);
    if (v21)
    {
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
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v26 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012E37B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1012E384C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v23[0] = a1;
  v23[1] = a2;
  v25 = type metadata accessor for IndexSet.Index();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IndexSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A0F910);
  v13 = __chkstk_darwin(v12);
  v15 = v23 - v14;
  (*(v9 + 16))(v11, v4, v8, v13);
  sub_1012EE824(&unk_101A11A60, &type metadata accessor for IndexSet);
  dispatch thunk of Sequence.makeIterator()();
  sub_1012EE824(&qword_101A0F918, &type metadata accessor for IndexSet);
  v16 = (v5 + 8);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_1012EE824(&qword_101A11A70, &type metadata accessor for IndexSet.Index);
    v17 = v25;
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v16)(v7, v17);
    if (v18)
    {
      break;
    }

    v19 = dispatch thunk of Collection.subscript.read();
    v21 = *v20;
    v19(v24, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v24[0] = v21;
    (v23[0])(v24);
  }

  while (!v3);
  return sub_10000CAAC(v15, &qword_101A0F910);
}

uint64_t sub_1012E3C48(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = _swiftEmptySetSingleton;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = -1 << *(v7 + 32);
    v11 = v7 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v7 + 56);

    v13 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1005B981C(&qword_1019F3610);
  v9 = static _SetStorage.allocate(capacity:)();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  a2(0);
  sub_1012EE824(a3, a4);
  result = Set.Iterator.init(_cocoa:)();
  v7 = v36;
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
LABEL_11:
  v18 = v9 + 7;
  while (v7 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22)
    {
LABEL_34:
      sub_100035F90();

      return v9;
    }

    *&v33 = v22;
    a2(0);
    swift_dynamicCast();
LABEL_25:
    a2(0);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v9[5]);
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~v18[v27 >> 6]) != 0)
    {
      v19 = __clz(__rbit64((-1 << v27) & ~v18[v27 >> 6])) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v30 && (v29 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = v18[v28];
      }

      while (v32 == -1);
      v19 = __clz(__rbit64(~v32)) + (v28 << 6);
    }

    *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v20 = v9[6] + 40 * v19;
    *(v20 + 32) = v35;
    *v20 = v33;
    *(v20 + 16) = v34;
    ++v9[2];
  }

  if (v14)
  {
    v21 = v13;
LABEL_24:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = *(*(v7 + 48) + ((v21 << 9) | (8 * v24)));
    goto LABEL_25;
  }

  v23 = v13;
  while (1)
  {
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v21 >= ((v12 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v14 = *(v11 + 8 * v21);
    ++v23;
    if (v14)
    {
      v13 = v21;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1012E3FE0(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = _swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1005B981C(&qword_1019F37D8);
  v9 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  if (type metadata accessor for CRLBoardItem(0) == &type metadata for String)
  {
    if (v8)
    {

      __CocoaSet.makeIterator()();
      a2(0);
      sub_1012EE824(a3, a4);
      Set.Iterator.init(_cocoa:)();
      v7 = v45;
      v14 = v46;
      v15 = v47;
      v16 = v48;
      v17 = v49;
    }

    else
    {
      v36 = -1 << *(v7 + 32);
      v14 = v7 + 56;
      v15 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v17 = v38 & *(v7 + 56);

      v16 = 0;
    }

    while (1)
    {
      if (v7 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
LABEL_55:
          sub_100035F90();

          return;
        }

        a2(0);
        swift_dynamicCast();
        v41 = v44;
      }

      else
      {
        if (v17)
        {
          v39 = v16;
        }

        else
        {
          v42 = v16;
          do
          {
            v39 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_58;
            }

            if (v39 >= ((v15 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v17 = *(v14 + 8 * v39);
            ++v42;
          }

          while (!v17);
          v16 = v39;
        }

        v40 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v41 = *(*(v7 + 48) + ((v39 << 9) | (8 * v40)));
      }

      sub_1012ECF60(v41);
    }
  }

  v43 = a2;
  if (v8)
  {

    __CocoaSet.makeIterator()();
    a2(0);
    sub_1012EE824(a3, a4);
    Set.Iterator.init(_cocoa:)();
    v7 = v45;
    v10 = v46;
    v11 = v47;
    v12 = v48;
    v13 = v49;
  }

  else
  {
    v18 = -1 << *(v7 + 32);
    v10 = v7 + 56;
    v11 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v13 = v20 & *(v7 + 56);

    v12 = 0;
  }

  v21 = (v11 + 64) >> 6;
  v22 = v9 + 7;
  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_55;
    }

    v43(0);
    swift_dynamicCast();
    v25 = v44;
LABEL_29:
    v28 = NSObject._rawHashValue(seed:)(v9[5]);
    v29 = -1 << *(v9 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~v22[v30 >> 6]) != 0)
    {
      v23 = __clz(__rbit64((-1 << v30) & ~v22[v30 >> 6])) | v30 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = 0;
      v33 = (63 - v29) >> 6;
      do
      {
        if (++v31 == v33 && (v32 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v34 = v31 == v33;
        if (v31 == v33)
        {
          v31 = 0;
        }

        v32 |= v34;
        v35 = v22[v31];
      }

      while (v35 == -1);
      v23 = __clz(__rbit64(~v35)) + (v31 << 6);
    }

    *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v9[6] + 8 * v23) = v25;
    ++v9[2];
  }

  if (v13)
  {
    v24 = v12;
LABEL_28:
    v27 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v44 = *(*(v7 + 48) + ((v24 << 9) | (8 * v27)));
    v25 = v44;
    goto LABEL_29;
  }

  v26 = v12;
  while (1)
  {
    v24 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_55;
    }

    v13 = *(v10 + 8 * v24);
    ++v26;
    if (v13)
    {
      v12 = v24;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_1012E44CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  swift_unknownObjectRetain();
  LOBYTE(a4) = v7(v9, a3, a4);
  sub_100005070(v9);
  return a4 & 1;
}

void sub_1012E45C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t *a6, uint64_t a7, uint64_t (*a8)(id, uint64_t, uint64_t, uint64_t, void))
{
  v38 = a5;
  v39 = a8;
  v41 = a6;
  v42 = a7;
  v9 = v8;
  v43 = a3;
  v44 = a4;
  v40 = a2;
  v45 = a1;
  v10 = sub_1005B981C(&unk_1019FFD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v22 = *(*(v8 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = *&v22[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  (*(*v23 + 896))(v18);
  sub_1005E0A78(&v16[*(v14 + 20)], v20);
  v24 = v22;
  sub_1005E0ADC(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v20, v10);
  sub_1005E0ADC(v20, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.attributedString.getter();
  (*(v11 + 8))(v13, v10);
  v26 = [v25 length];

  v28 = v44;
  v27 = v45;
  v29 = v43;
  if (v26 >= 1)
  {
    if (!__OFSUB__(v44, v43))
    {
      if (v44 == v43)
      {
        sub_1012E6C98(v45, v40 & 1, v38, v41);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_7:
  v30 = [*(v9 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v31 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v30 forwardSelectionPath:v30 reverseSelectionPath:v30];
  v32 = *(v9 + v21);

  v33 = v39(v32, v29, v28, v27, v40 & 1);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong commandController];

    if (v36)
    {
      v37 = v31;
      sub_100888700(v33, 0, v31, 4, 0);
    }
  }

  sub_1012E7E04(v27, v41);
}

void sub_1012E4A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a7, uint64_t a8)
{
  v40 = a7;
  v41 = a8;
  v38 = a5;
  v39 = a6;
  v9 = v8;
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v43 = a1;
  v10 = sub_1005B981C(&unk_1019FFD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v22 = *(*(v8 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = *&v22[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  (*(*v23 + 896))(v18);
  sub_1005E0A78(&v16[*(v14 + 20)], v20);
  v24 = v22;
  sub_1005E0ADC(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v20, v10);
  sub_1005E0ADC(v20, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.attributedString.getter();
  (*(v11 + 8))(v13, v10);
  v26 = [v25 length];

  v28 = v44;
  v27 = v45;
  if (v26 >= 1)
  {
    if (!__OFSUB__(v45, v44))
    {
      if (v45 == v44)
      {
        v38(v43, v42);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_7:
  v29 = [*(v9 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v30 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v29 forwardSelectionPath:v29 reverseSelectionPath:v29];
  v31 = *(v9 + v21);
  v32 = v43;

  v33 = v39(v31, v28, v27, v32, v42);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong commandController];

    if (v36)
    {
      v37 = v30;
      sub_100888700(v33, 0, v30, 4, 0);
    }
  }

  sub_1012E7E04(v32, v40);
}

void sub_1012E4DFC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = v4;
  v36 = a2;
  v37 = a3;
  v38 = a1;
  v7 = sub_1005B981C(&unk_1019FFD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v19 = *(*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = *&v19[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    return;
  }

  (*(*v20 + 896))(v15);
  sub_1005E0A78(&v13[*(v11 + 20)], v17);
  v21 = v19;
  sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v8 + 16))(v10, v17, v7);
  sub_1005E0ADC(v17, type metadata accessor for CRLWPStorageCRDTData);
  v22 = CRAttributedString.attributedString.getter();
  (*(v8 + 8))(v10, v7);
  v23 = [v22 length];

  v25 = v37;
  v24 = v38;
  v26 = v36;
  if (v23 >= 1)
  {
    if (!__OFSUB__(v37, v36))
    {
      if (v37 == v36)
      {
        sub_1012E6EF4(v38, a4);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_7:
  v27 = [*(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v28 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v27 forwardSelectionPath:v27 reverseSelectionPath:v27];
  v29 = *(v5 + v18);

  v30 = sub_1012ED090(v29, v26, v25, v24, a4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v33 = [Strong commandController];

    if (v33)
    {
      v34 = v28;
      sub_100888700(v30, 0, v28, 4, 0);
    }
  }

  sub_1012E7E04(v24, &qword_101A0D8E8);
}

void sub_1012E51D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a5;
  v23 = a1;
  v24 = a2;
  v7 = sub_1005B981C(&unk_1019FFD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = *&v18[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v19)
  {
    (*(*v19 + 896))(v15);
    sub_1005E0A78(&v13[*(v11 + 20)], v17);
    v20 = v18;
    sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v8 + 16))(v10, v17, v7);
    sub_1005E0ADC(v17, type metadata accessor for CRLWPStorageCRDTData);
    v21 = CRAttributedString.attributedString.getter();
    (*(v8 + 8))(v10, v7);
    v22 = [v21 length];

    if (v22 < 1)
    {
LABEL_7:
      sub_1012E71B0(v23, v24, v25, a4, v26);
      return;
    }

    if (!__OFSUB__(v26, a4))
    {
      if (v26 == a4)
      {
        sub_1012E7034(v23, v24, v25);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
}

void sub_1012E54A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v25 = a4;
  v23 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v17)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = *&v17[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v18)
  {
    (*(*v18 + 896))(v14);
    sub_1005E0A78(&v12[*(v10 + 20)], v16);
    v19 = v17;
    sub_1005E0ADC(v12, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v7 + 16))(v9, v16, v6);
    sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
    v20 = CRAttributedString.attributedString.getter();
    (*(v7 + 8))(v9, v6);
    v21 = [v20 length];

    if (v21 < 1)
    {
LABEL_7:
      sub_1012E7350(v23, v24, a3, v25);
      return;
    }

    if (!__OFSUB__(v25, a3))
    {
      if (v25 == a3)
      {
        sub_1012E70FC(v23, v24);
        return;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
}

void sub_1012E57E0(uint64_t a1, char a2, void (*a3)(void, uint64_t), uint64_t *a4, uint64_t a5, uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t, void))
{
  v12 = sub_10094ABE4();
  if (v12)
  {
    v36 = v12;
    sub_1012E45C4(a1, a2 & 1, *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8], a3, a4, a5, a6);
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v23;
    v24 = sub_1005CF04C();
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 3002;
    v26 = v37;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v34 lineNumber:3002 isFatal:0 format:v35 args:v32];
  }
}

void sub_1012E5C74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(id, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t a6)
{
  v12 = sub_10094ABE4();
  if (v12)
  {
    v36 = v12;
    sub_1012E4A24(a1, a2, *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8], a3, a4, a5, a6);
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v23;
    v24 = sub_1005CF04C();
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 3002;
    v26 = v37;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v34 lineNumber:3002 isFatal:0 format:v35 args:v32];
  }
}

void sub_1012E6090(uint64_t a1, float a2)
{
  v4 = sub_10094ABE4();
  if (v4)
  {
    v28 = v4;
    sub_1012E4DFC(a1, *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8], a2);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
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
    *(inited + 152) = 3002;
    v18 = v29;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:3002 isFatal:0 format:v27 args:v24];
  }
}

void sub_1012E6498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10094ABE4();
  if (v6)
  {
    v30 = v6;
    sub_1012E51D8(a1, a2, a3, *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8]);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 3002;
    v20 = v31;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
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

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:3002 isFatal:0 format:v29 args:v26];
  }
}

void sub_1012E689C(uint64_t a1, void *a2)
{
  v4 = sub_10094ABE4();
  if (v4)
  {
    v28 = v4;
    sub_1012E54A4(a1, a2, *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8]);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
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
    *(inited + 152) = 3002;
    v18 = v29;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:3002 isFatal:0 format:v27 args:v24];
  }
}

void sub_1012E6C98(uint64_t a1, char a2, void (*a3)(void, uint64_t), uint64_t *a4)
{
  v7 = v4;
  v10 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v11 = *(v7 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v11 || (v12 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v13 = *(v7 + v10), *(v7 + v10) = v12, v13, (v11 = *(v7 + v10)) != 0))
  {
    v14 = v11;

    a3(a2 & 1, a1);
  }

  sub_1012E7E04(a1, a4);
}

void sub_1012E6D60(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v5 || (v6 = a1, v7 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v8 = *(v2 + v4), *(v2 + v4) = v7, v8, a1 = v6, (v5 = *(v2 + v4)) != 0))
  {
    v9 = v5 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
    *v9 = a2;
    *(v9 + 8) = 0;
  }

  sub_1012E7E04(a1, &qword_101A0D8C8);
}

void sub_1012E6DFC(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v6 || (v7 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v8 = *(v2 + v5), *(v2 + v5) = v7, v8, (v6 = *(v2 + v5)) != 0))
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2;
    }

    if ((v9 & 1) == 0)
    {
      v10 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    }

    v12 = v6 + *v10;
    *v12 = v11;
    *(v12 + 8) = v9 & 1;
  }

  sub_1012E7E04(a1, &qword_101A0D8D0);
}

void sub_1012E6EF4(uint64_t a1, float a2)
{
  v5 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v6 || (v7 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v8 = *(v2 + v5), *(v2 + v5) = v7, v8, (v6 = *(v2 + v5)) != 0))
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v9 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
    }

    else
    {
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v11 = v6 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
        *v11 = a2;
        *(v11 + 4) = 0;
        goto LABEL_9;
      }

      v9 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    }

    v10 = v6 + *v9;
    *v10 = 0;
    *(v10 + 8) = 1;
  }

LABEL_9:
  sub_1012E7E04(a1, &qword_101A0D8E8);
}

void sub_1012E7034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v9 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v9 || (v10 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v11 = *(v4 + v8), *(v4 + v8) = v10, v11, (v9 = *(v4 + v8)) != 0))
  {
    v12 = v9;

    sub_1012E79D0(a2, a3);
  }

  sub_1012E7E04(a1, &qword_101A0D8F0);
}

void sub_1012E70FC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  v7 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v7 || (v8 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v9 = *(v3 + v6), *(v3 + v6) = v8, v9, (v7 = *(v3 + v6)) != 0))
  {
    v10 = v7;

    v11 = a2;
    sub_1012E7B64(a2);
  }

  sub_1012E7E04(a1, &qword_101A0D8F8);
}

void sub_1012E71B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [*(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v12 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v11 forwardSelectionPath:v11 reverseSelectionPath:v11];
  v13 = *(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);

  v18 = sub_1012EDF78(v13, a4, a5, a1, a2, a3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong commandController];

    if (v16)
    {
      v17 = v12;
      sub_100888700(v18, 0, v12, 4, 0);
    }
  }

  sub_1012E7E04(a1, &qword_101A0D8F0);
}

void sub_1012E7350(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v10 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v9 forwardSelectionPath:v9 reverseSelectionPath:v9];
  v11 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);

  v16 = sub_1012EE5D0(v11, a3, a4, a1, a2);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong commandController];

    if (v14)
    {
      v15 = v10;
      sub_100888700(v16, 0, v10, 4, 0);
    }
  }

  sub_1012E7E04(a1, &qword_101A0D8F8);
}

void sub_1012E74DC(char a1)
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
LABEL_5:
    v4 = v1 + *v3;
    *v4 = 0;
    *(v4 + 8) = 1;
    return;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    goto LABEL_5;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v5 = v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
    *v5 = 0;
    *(v5 + 4) = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v6 = (v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName);
    *v6 = 0;
    v6[1] = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      if (a1 == 2)
      {
        v8 = 0;
      }

      else
      {
        sub_100006370(0, &qword_101A2BF30);
        v9 = swift_dynamicCast();
        v8 = v11;
        if (!v9)
        {
          v8 = 0;
        }
      }

      v10 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
      *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill) = v8;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold) = a1;
    }
  }
}

void sub_1012E7740(char a1)
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
LABEL_5:
    v4 = v1 + *v3;
    *v4 = 0;
    *(v4 + 8) = 1;
    return;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    goto LABEL_5;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v5 = v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
    *v5 = 0;
    *(v5 + 4) = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v6 = (v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName);
    *v6 = 0;
    v6[1] = 0;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    if (a1 == 2)
    {
      v7 = 0;
    }

    else
    {
      sub_100006370(0, &qword_101A2BF30);
      v10 = swift_dynamicCast();
      v7 = v12;
      if (!v10)
      {
        v7 = 0;
      }
    }

    v11 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
    *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill) = v7;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v9 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold;
    }

    else
    {
      v9 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic;
    }

    *(v1 + *v9) = a1;
  }
}

uint64_t sub_1012E79D0(uint64_t a1, uint64_t a2)
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    if (a2)
    {
    }

    v6 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
LABEL_9:
    v7 = v2 + *v6;
    *v7 = 0;
    *(v7 + 8) = 1;
    return result;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    if (a2)
    {
    }

    v6 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    goto LABEL_9;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    if (a2)
    {
    }

    v9 = v2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
    *v9 = 0;
    *(v9 + 4) = 1;
  }

  else
  {
    v10 = (v2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName);
    *v10 = a1;
    v10[1] = a2;
  }

  return result;
}

void sub_1012E7B64(void *a1)
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
LABEL_5:
    v4 = v1 + *v3;
    *v4 = 0;
    *(v4 + 8) = 1;
    return;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v3 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
    goto LABEL_5;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    if (a1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static Float._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    v7 = v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
    *v7 = 0;
    *(v7 + 4) = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      if (a1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          static String._conditionallyBridgeFromObjectiveC(_:result:)();
        }
      }

      v8 = (v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName);
      *v8 = 0;
      v8[1] = 0;
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
      *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill) = a1;
    }
  }
}

void sub_1012E7E04(uint64_t a1, uint64_t *a2)
{
  v5 = [objc_opt_self() defaultCenter];
  if (qword_1019F2368 != -1)
  {
    swift_once();
  }

  v6 = qword_101AD80C8;
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1005B981C(a2);
  *(inited + 72) = a1;

  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 postNotificationName:v6 object:v2 userInfo:isa];
}

uint64_t sub_1012E7FE4@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLWPShapeItemData(0);
  v5 = *swift_dynamicCastClassUnconditional();
  (*(v5 + 896))();
  type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  result = sub_1005E0ADC(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  *a1 = v7[15];
  return result;
}

uint64_t sub_1012E812C(uint64_t a1)
{
  result = sub_1011255D0(a1);
  if (result)
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v2 = *(*swift_dynamicCastClassUnconditional() + 912);

    v3 = v2(v4);
    type metadata accessor for CRLWPShapeItemCRDTData(0);
    type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.setter();
    v3(v4, 0);
  }

  return result;
}

void sub_1012E8268()
{
  v1 = [v0 wpEditors];
  type metadata accessor for CRLWPEditor();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 2;
    v8 = 2;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v2 + 8 * v6 + 32);
      }

      ++v6;
      v10 = v9;
      swift_getAtKeyPath();

      v11 = v14;
      if (((v4 ^ v14) & (v7 != 2)) != 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = v5;
      }

      if (v8 == 2)
      {
        v13 = v14 & 1;
      }

      else
      {
        v13 = v7;
      }

      if (v8 == 2)
      {
        v12 = HIBYTE(v14) & 1;
      }

      else
      {
        v11 = v7;
      }

      if (v14 != 2)
      {
        v7 = v13;
        v4 = v11;
        v8 = v13;
        v5 = v12;
      }
    }

    while (v3 != v6);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_1012E8400()
{
  v1 = [v0 wpEditors];
  type metadata accessor for CRLWPEditor();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    LODWORD(v5) = 2;
    v6 = 0.0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      swift_getAtKeyPath();

      if (v10 != 2)
      {
        if (v5 == 2)
        {
          v5 = ((LODWORD(v9) | (v10 << 32)) >> 32) & 1;
          v6 = v9;
        }

        else if (v6 != v9)
        {
          LODWORD(v5) = 1;
        }
      }

      ++v4;
    }

    while (v3 != v4);
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1012E858C(uint64_t a1, unint64_t *a2)
{
  v4 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = v5 & 0xC000000000000001;
    v21 = v6;
    do
    {
      if (v10)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      swift_getAtKeyPath();

      if (v23)
      {
        if (v8)
        {
          sub_100006370(0, a2);
          v13 = v10;
          v14 = v7;
          v15 = v5;
          v16 = a1;
          v17 = v8;
          v18 = v23;
          v19 = static NSObject.== infix(_:_:)();

          a1 = v16;
          v5 = v15;
          v7 = v14;
          v10 = v13;

          v20 = (v19 & 1) == 0;
          v6 = v21;
          if (v20)
          {
            v7 = 1;
          }
        }

        else
        {
          v7 = v24;

          v8 = v23;
        }
      }

      else
      {
      }

      ++v9;
    }

    while (v6 != v9);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1012E875C()
{
  v1 = [v0 wpEditors];
  type metadata accessor for CRLWPEditor();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 2;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      swift_getAtKeyPath();

      if (v11 != 2)
      {
        if (v10 == v4)
        {
          v9 = v6;
        }

        else
        {
          v9 = 1;
        }

        if (v6 == 2)
        {
          v4 = v10;
          v6 = v11 & 1;
        }

        else
        {
          v6 = v9;
        }
      }

      ++v5;
    }

    while (v3 != v5);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1012E88C4()
{
  v1 = [v0 wpEditors];
  type metadata accessor for CRLWPEditor();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_21:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 2;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      ++v5;
      v8 = v7;
      swift_getAtKeyPath();

      v9 = v12;
      if (v4 == v12)
      {
        v10 = v6;
      }

      else
      {
        v10 = 1;
      }

      if (v6 == 2)
      {
        v11 = HIBYTE(v12) & 1;
      }

      else
      {
        v11 = v10;
      }

      if (v6 != 2)
      {
        v9 = v4;
      }

      if ((v12 & 0xFF00) != 0x200)
      {
        v6 = v11;
        v4 = v9;
      }
    }

    while (v3 != v5);
    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_1012E8A70@<X0>(uint64_t (*a1)(void)@<X4>, _WORD *a2@<X8>)
{
  swift_getKeyPath();
  LOWORD(a1) = a1();

  *a2 = a1;
  return result;
}

uint64_t sub_1012E8B04@<X0>(uint64_t (*a1)(void)@<X4>, __int16 *a2@<X8>)
{
  swift_getKeyPath();
  v4 = a1();
  v6 = v5;
  v7 = v5;

  if (v7 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = (v4 != 0) | ((v6 & 1) << 8);
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1012E8B80@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100946008(KeyPath);
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  return result;
}

void sub_1012E8BD8()
{
  type metadata accessor for CRLWPShapeItem();
  v1 = [v0 sortedBoardItemsOfClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for CRLBoardItem(0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 2;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      if (swift_dynamicCastClass())
      {
        v9 = v8;
        swift_getAtKeyPath();

        if (v11 == v4)
        {
          v10 = v6;
        }

        else
        {
          v10 = 1;
        }

        if (v6 == 2)
        {
          v4 = v11;
          v6 = 0;
        }

        else
        {
          v6 = v10;
        }
      }

      else
      {
      }

      ++v5;
    }

    while (v3 != v5);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1012E8D64()
{
  type metadata accessor for CRLWPShapeItem();
  v1 = [v0 sortedBoardItemsOfClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for CRLBoardItem(0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 2;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      if (swift_dynamicCastClass())
      {
        v10 = v9;
        swift_getAtKeyPath();

        if (((v4 ^ v12) & (v7 != 2)) != 0)
        {
          v11 = 1;
        }

        else
        {
          v11 = v5;
        }

        if (v7 == 2)
        {
          v7 = v12;
          v5 = 0;
        }

        else
        {
          v5 = v11;
        }

        v4 = v7;
      }

      else
      {
      }

      ++v6;
    }

    while (v3 != v6);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_1012E8F08(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v4 interactiveCanvasController];
  if (!v11)
  {
    return;
  }

  v48 = v11;
  v52 = [v11 commandController];
  if (!v52)
  {
    v22 = v48;
LABEL_8:

    return;
  }

  v12 = [v48 editorController];
  if (!v12)
  {

    v22 = v52;
    goto LABEL_8;
  }

  LODWORD(v53) = a1;
  v43 = v12;
  v13 = [v12 selectionPath];
  v14 = objc_allocWithZone(CRLCommandSelectionBehavior);
  v42 = v13;
  v41 = [v14 initWithForwardSelectionPath:v13 reverseSelectionPath:v13];
  sub_10088E3FC(v41);
  v15 = [v4 boardItems];
  v16 = type metadata accessor for CRLBoardItem(0);
  sub_1012EE824(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = v16;
  if ((v17 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v17 = v57;
    v18 = v58;
    v19 = v59;
    v20 = v60;
    v21 = v61;
  }

  else
  {
    v20 = 0;
    v23 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v21 = v25 & *(v17 + 56);
  }

  v40 = v19;
  v26 = (v19 + 64) >> 6;
  v46 = (v7 + 32);
  v45 = v53 & 1;
  while (v17 < 0)
  {
    v32 = __CocoaSet.Iterator.next()();
    if (!v32 || (v54 = v32, swift_dynamicCast(), v31 = v55, v29 = v20, v30 = v21, !v55))
    {
LABEL_28:
      sub_100035F90();
      sub_10088E600(0);

      return;
    }

LABEL_26:
    v53 = v30;
    type metadata accessor for CRLWPShapeItem();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      v47 = sub_1005B981C(&qword_101A33220);
      v35 = objc_allocWithZone(v47);
      v36 = &v35[*((swift_isaMask & *v35) + 0xF0)];
      *v36 = 0;
      *(v36 + 1) = 0xE000000000000000;
      (*(**(v34 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v35);
      (*v46)(&v35[*((swift_isaMask & *v35) + 0xD8)], v10, v6);
      v35[*((swift_isaMask & *v35) + 0xE0)] = v45;
      *&v35[*((swift_isaMask & *v35) + 0xE8)] = v49;
      v56.receiver = v35;
      v56.super_class = v47;
      v37 = v31;

      v31 = objc_msgSendSuper2(&v56, "init", v40);
      v38 = (v31 + *((swift_isaMask & *v31) + 0xF0));
      v39 = v51;
      *v38 = v50;
      v38[1] = v39;

      sub_100888700(v31, 0, 0, 4, 0);
    }

    v20 = v29;
    v21 = v53;
  }

  v27 = v20;
  v28 = v21;
  v29 = v20;
  if (v21)
  {
LABEL_22:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v17 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      goto LABEL_28;
    }

    v28 = *(v18 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

char *sub_1012E9588(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v82 = a7;
  v88 = a5;
  v89 = a6;
  v79 = a4;
  v99 = a3;
  v94 = sub_1005B981C(&unk_1019FFD10);
  v8 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v79 - v9;
  v92 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v92);
  v91 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v90 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012E8268();
  LODWORD(isa) = v13;

  LODWORD(v15) = isa != 2;
  v16 = [v7 wpEditors];
  type metadata accessor for CRLWPEditor();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v100 = v17;
  if (v17 >> 62)
  {
LABEL_35:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_3;
    }
  }

  v18 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
  }

LABEL_3:
  v19 = 0;
  v83 = v15 & isa;
  v97 = v100 & 0xFFFFFFFFFFFFFF8;
  v98 = v100 & 0xC000000000000001;
  v86 = (v8 + 8);
  v87 = (v8 + 16);
  v85 = 0x8000000101562810;
  v15 = "setAttributeValue(_:value:)";
  v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v81 = xmmword_10146CA70;
  v84 = xmmword_10146C6B0;
  v80 = v18;
  while (1)
  {
    if (v98)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(v97 + 16))
      {
        goto LABEL_33;
      }

      v26 = *(v100 + 8 * v19 + 32);
    }

    v27 = v26;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    KeyPath = swift_getKeyPath();
    result = sub_10094ABE4();
    v102 = v19 + 1;
    v103 = v19;
    v105 = v27;
    if (!result)
    {
      v101 = objc_opt_self();
      v59 = [v101 _atomicIncrementAssertCount];
      v106 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v106);
      StaticString.description.getter();
      v96 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v60 = String._bridgeToObjectiveC()();

      v61 = [v60 lastPathComponent];

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v65 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v59;
      v67 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v67;
      v68 = sub_1005CF04C();
      *(inited + 104) = v68;
      v69 = v96;
      *(inited + 72) = v96;
      *(inited + 136) = &type metadata for String;
      v70 = sub_1000053B0();
      *(inited + 112) = v62;
      *(inited + 120) = v64;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 144) = v70;
      *(inited + 152) = 3002;
      v71 = v106;
      *(inited + 216) = v67;
      *(inited + 224) = v68;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 192) = v71;
      v72 = v69;
      v73 = v71;
      v74 = static os_log_type_t.error.getter();
      sub_100005404(v65, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v75 = static os_log_type_t.error.getter();
      sub_100005404(v65, &_mh_execute_header, v75, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v76 = swift_allocObject();
      v76[2] = 8;
      v76[3] = 0;
      v76[4] = 0;
      v76[5] = 0;
      v77 = __VaListBuilder.va_list()();
      v15 = "setAttributeValue(_:value:)";
      StaticString.description.getter();
      v78 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v20 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      isa = String._bridgeToObjectiveC()();

      [v101 handleFailureInFunction:v78 file:v20 lineNumber:3002 isFatal:0 format:isa args:v77];

      v24 = v78;
      v25 = v103;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
      v18 = v80;
      goto LABEL_8;
    }

    v29 = v18;
    v30 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v31 = *(*&v27[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v31)
    {
      break;
    }

    v32 = *&v31[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v32)
    {
      goto LABEL_38;
    }

    v101 = result;
    v33 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v34 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v35 = v91;
    (*(*v32 + 896))();
    v36 = v90;
    sub_1005E0A78(v35 + *(v92 + 20), v90);
    v37 = v31;
    sub_1005E0ADC(v35, type metadata accessor for CRLWPShapeItemCRDTData);
    v38 = v93;
    v39 = v94;
    (*v87)(v93, v36, v94);
    sub_1005E0ADC(v36, type metadata accessor for CRLWPStorageCRDTData);
    v8 = CRAttributedString.attributedString.getter();
    (*v86)(v38, v39);
    v40 = [v8 length];

    v15 = v29;
    v41 = KeyPath;
    isa = v105;
    if (v40 < 1)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v34, v33))
    {
      goto LABEL_34;
    }

    if (v34 == v33)
    {
      v42 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v43 = *&v105[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
      if (v43 || (v44 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v45 = *&isa[v42], *&isa[v42] = v44, v45, (v43 = *&isa[v42]) != 0))
      {
        v46 = v43;

        v79(v83 ^ 1, v41);
      }

      v20 = [objc_opt_self() defaultCenter];
      v25 = v103;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
      v18 = v15;
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v47 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v48 = swift_initStackObject();
      *(v48 + 16) = v84;
      v106 = 0xD000000000000021;
      v107 = v85;
      AnyHashable.init<A>(_:)();
      *(v48 + 96) = sub_1005B981C(v88);
      *(v48 + 72) = v41;

      sub_100078EA4(v48);
      swift_setDeallocating();
      sub_10000CAAC(v48 + 32, &unk_1019FB8B0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v49 = v47;
      v24 = v105;
      [v20 postNotificationName:v49 object:v105 userInfo:isa];
    }

    else
    {
LABEL_25:
      v50 = [*&v105[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v51 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v50 forwardSelectionPath:v50 reverseSelectionPath:v50];
      v52 = *&isa[v30];

      v53 = v52;
      v54 = v82();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v56 = Strong;
        v57 = [Strong commandController];

        if (v57)
        {
          v58 = v51;
          sub_100888700(v54, 0, v51, 4, 0);
        }
      }

      v95 = v54;
      v96 = v51;
      v20 = [objc_opt_self() defaultCenter];
      v8 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
      v18 = v15;
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v21 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v22 = swift_initStackObject();
      *(v22 + 16) = v84;
      v106 = 0xD000000000000021;
      v107 = v85;
      AnyHashable.init<A>(_:)();
      *(v22 + 96) = sub_1005B981C(v88);
      *(v22 + 72) = v41;

      sub_100078EA4(v22);
      swift_setDeallocating();
      sub_10000CAAC(v22 + 32, &unk_1019FB8B0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v23 = v105;
      [v20 postNotificationName:v21 object:v105 userInfo:isa];

      v24 = v95;
      v25 = v103;
    }

    v15 = "setAttributeValue(_:value:)";
LABEL_8:

    v19 = v25 + 1;
    if (v102 == v18)
    {
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

char *CRLWPShapeEditor.toggleUnderline(_:)()
{
  v75 = sub_1005B981C(&unk_1019FFD10);
  v1 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - v2;
  v73 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v73);
  v72 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012E8268();
  LODWORD(v7) = v6;

  LODWORD(v8) = v7 != 2;
  v9 = [v0 wpEditors];
  type metadata accessor for CRLWPEditor();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
LABEL_34:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
  }

LABEL_3:
  v12 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v66 = v8 & v7 ^ 1;
  v69 = (v1 + 8);
  v70 = (v1 + 16);
  v68 = 0x8000000101562810;
  v1 = "setAttributeValue(_:value:)";
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v65 = xmmword_10146CA70;
  v67 = xmmword_10146C6B0;
  v78 = v11;
  v79 = v10;
  while (1)
  {
    if (v81)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v80 + 16))
      {
        goto LABEL_32;
      }

      v17 = *(v10 + 8 * v12 + 32);
    }

    v8 = v17;
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    KeyPath = swift_getKeyPath();
    result = sub_10094ABE4();
    v83 = v12 + 1;
    if (!result)
    {
      v76 = v12;
      v82 = objc_opt_self();
      v45 = [v82 _atomicIncrementAssertCount];
      v85 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v85);
      StaticString.description.getter();
      v77 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v46 = String._bridgeToObjectiveC()();

      v47 = [v46 lastPathComponent];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v51 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v65;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v45;
      v53 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v53;
      v54 = sub_1005CF04C();
      *(inited + 104) = v54;
      v55 = v77;
      *(inited + 72) = v77;
      *(inited + 136) = &type metadata for String;
      v56 = sub_1000053B0();
      *(inited + 112) = v48;
      *(inited + 120) = v50;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 144) = v56;
      *(inited + 152) = 3002;
      v57 = v85;
      *(inited + 216) = v53;
      *(inited + 224) = v54;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 192) = v57;
      v58 = v55;
      v59 = v57;
      v60 = static os_log_type_t.error.getter();
      sub_100005404(v51, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v51, &_mh_execute_header, v61, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v62 = swift_allocObject();
      v62[2] = 8;
      v62[3] = 0;
      v62[4] = 0;
      v62[5] = 0;
      v63 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v64 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v13 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16.super.isa = String._bridgeToObjectiveC()();

      [v82 handleFailureInFunction:v64 file:v13 lineNumber:3002 isFatal:0 format:v16.super.isa args:v63];

      v8 = v64;
      v12 = v76;
      goto LABEL_7;
    }

    v19 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v20 = *(*&v8[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v20)
    {
      break;
    }

    v21 = *&v20[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v21)
    {
      goto LABEL_37;
    }

    v82 = result;
    v10 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v22 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v23 = v72;
    (*(*v21 + 896))();
    v24 = v71;
    sub_1005E0A78(v23 + *(v73 + 20), v71);
    v1 = v20;
    sub_1005E0ADC(v23, type metadata accessor for CRLWPShapeItemCRDTData);
    v25 = v74;
    v26 = v75;
    (*v70)(v74, v24, v75);
    sub_1005E0ADC(v24, type metadata accessor for CRLWPStorageCRDTData);
    v27 = CRAttributedString.attributedString.getter();
    (*v69)(v25, v26);
    v7 = [v27 length];

    if (v7 < 1)
    {
      goto LABEL_24;
    }

    if (__OFSUB__(v22, v10))
    {
      goto LABEL_33;
    }

    if (v22 == v10)
    {
      v28 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v29 = *&v8[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
      if (v29 || (v30 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v31 = *&v8[v28], *&v8[v28] = v30, v31, (v29 = *&v8[v28]) != 0))
      {
        v32 = v29 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
        *v32 = v66;
        *(v32 + 8) = 0;
      }

      v13 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v33 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v34 = swift_initStackObject();
      *(v34 + 16) = v67;
      v85 = 0xD000000000000021;
      v86 = v68;
      AnyHashable.init<A>(_:)();
      *(v34 + 96) = sub_1005B981C(&qword_101A0D8C8);
      *(v34 + 72) = KeyPath;

      sub_100078EA4(v34);
      swift_setDeallocating();
      sub_10000CAAC(v34 + 32, &unk_1019FB8B0);
      v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v13 postNotificationName:v33 object:v8 userInfo:v16.super.isa];
    }

    else
    {
LABEL_24:
      v35 = [*&v8[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v77 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v35 forwardSelectionPath:v35 reverseSelectionPath:v35];
      v36 = *&v8[v19];
      v37 = KeyPath;

      v38 = v36;
      v39 = sub_1012ED6BC(v38, v10, v22, v37, v66);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = Strong;
        v42 = [Strong commandController];

        if (v42)
        {
          v43 = v77;
          v44 = v77;
          sub_100888700(v39, 0, v43, 4, 0);
        }
      }

      v13 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v14 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v15 = swift_initStackObject();
      *(v15 + 16) = v67;
      v85 = 0xD000000000000021;
      v86 = v68;
      AnyHashable.init<A>(_:)();
      *(v15 + 96) = sub_1005B981C(&qword_101A0D8C8);
      *(v15 + 72) = KeyPath;

      sub_100078EA4(v15);
      swift_setDeallocating();
      sub_10000CAAC(v15 + 32, &unk_1019FB8B0);
      v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v13 postNotificationName:v14 object:v8 userInfo:v16.super.isa];

      v8 = v39;
    }

LABEL_7:

    ++v12;
    v10 = v79;
    v1 = "setAttributeValue(_:value:)";
    v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
    if (v83 == v78)
    {
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1012EAE6C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

char *CRLWPShapeEditor.toggleStrikethrough(_:)()
{
  v78 = sub_1005B981C(&unk_1019FFD10);
  v1 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v68 - v2;
  v76 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v76);
  v75 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012E8268();
  LODWORD(v7) = v6;

  LODWORD(v8) = v7 != 2;
  v9 = [v0 wpEditors];
  type metadata accessor for CRLWPEditor();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
LABEL_38:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
  }

LABEL_3:
  v12 = 0;
  v83 = v10 & 0xFFFFFFFFFFFFFF8;
  v84 = v10 & 0xC000000000000001;
  v69 = v8 & v7 ^ 1;
  v72 = (v1 + 8);
  v73 = (v1 + 16);
  v71 = 0x8000000101562810;
  v1 = "setAttributeValue(_:value:)";
  v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v68 = xmmword_10146CA70;
  v70 = xmmword_10146C6B0;
  v81 = v11;
  v82 = v10;
  while (1)
  {
    if (v84)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v83 + 16))
      {
        goto LABEL_36;
      }

      v17 = *(v10 + 8 * v12 + 32);
    }

    v8 = v17;
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    KeyPath = swift_getKeyPath();
    result = sub_10094ABE4();
    v86 = v12 + 1;
    if (!result)
    {
      v79 = v12;
      v85 = objc_opt_self();
      v48 = [v85 _atomicIncrementAssertCount];
      v88 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v88);
      StaticString.description.getter();
      v80 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      v50 = [v49 lastPathComponent];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v54 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v68;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v48;
      v56 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v56;
      v57 = sub_1005CF04C();
      *(inited + 104) = v57;
      v58 = v80;
      *(inited + 72) = v80;
      *(inited + 136) = &type metadata for String;
      v59 = sub_1000053B0();
      *(inited + 112) = v51;
      *(inited + 120) = v53;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 144) = v59;
      *(inited + 152) = 3002;
      v60 = v88;
      *(inited + 216) = v56;
      *(inited + 224) = v57;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 192) = v60;
      v61 = v58;
      v62 = v60;
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v54, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v54, &_mh_execute_header, v64, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v65 = swift_allocObject();
      v65[2] = 8;
      v65[3] = 0;
      v65[4] = 0;
      v65[5] = 0;
      v66 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v67 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v13 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16.super.isa = String._bridgeToObjectiveC()();

      [v85 handleFailureInFunction:v67 file:v13 lineNumber:3002 isFatal:0 format:v16.super.isa args:v66];

      v8 = v67;
      v12 = v79;
      goto LABEL_7;
    }

    v19 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v20 = *(*&v8[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v20)
    {
      break;
    }

    v21 = *&v20[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v21)
    {
      goto LABEL_41;
    }

    v85 = result;
    v10 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v22 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v23 = v75;
    (*(*v21 + 896))();
    v24 = v74;
    sub_1005E0A78(v23 + *(v76 + 20), v74);
    v1 = v20;
    sub_1005E0ADC(v23, type metadata accessor for CRLWPShapeItemCRDTData);
    v25 = v77;
    v26 = v78;
    (*v73)(v77, v24, v78);
    sub_1005E0ADC(v24, type metadata accessor for CRLWPStorageCRDTData);
    v27 = CRAttributedString.attributedString.getter();
    (*v72)(v25, v26);
    v7 = [v27 length];

    if (v7 < 1)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v22, v10))
    {
      goto LABEL_37;
    }

    if (v22 == v10)
    {
      v28 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v29 = *&v8[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
      if (v29 || (v30 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v31 = *&v8[v28], *&v8[v28] = v30, v31, (v29 = *&v8[v28]) != 0))
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v33 = v69;
        if (v32)
        {
          v33 = 0;
        }

        v34 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
        if ((v32 & 1) == 0)
        {
          v34 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
        }

        v35 = v29 + *v34;
        *v35 = v33;
        *(v35 + 8) = v32 & 1;
      }

      v13 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v36 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v37 = swift_initStackObject();
      *(v37 + 16) = v70;
      v88 = 0xD000000000000021;
      v89 = v71;
      AnyHashable.init<A>(_:)();
      *(v37 + 96) = sub_1005B981C(&qword_101A0D8D0);
      *(v37 + 72) = KeyPath;

      sub_100078EA4(v37);
      swift_setDeallocating();
      sub_10000CAAC(v37 + 32, &unk_1019FB8B0);
      v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v13 postNotificationName:v36 object:v8 userInfo:v16.super.isa];
    }

    else
    {
LABEL_28:
      v38 = [*&v8[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v80 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v38 forwardSelectionPath:v38 reverseSelectionPath:v38];
      v39 = *&v8[v19];
      v40 = KeyPath;

      v41 = v39;
      v42 = sub_1012ED8D0(v41, v10, v22, v40, v69);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v44 = Strong;
        v45 = [Strong commandController];

        if (v45)
        {
          v46 = v80;
          v47 = v80;
          sub_100888700(v42, 0, v46, 4, 0);
        }
      }

      v13 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v14 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v15 = swift_initStackObject();
      *(v15 + 16) = v70;
      v88 = 0xD000000000000021;
      v89 = v71;
      AnyHashable.init<A>(_:)();
      *(v15 + 96) = sub_1005B981C(&qword_101A0D8D0);
      *(v15 + 72) = KeyPath;

      sub_100078EA4(v15);
      swift_setDeallocating();
      sub_10000CAAC(v15 + 32, &unk_1019FB8B0);
      v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v13 postNotificationName:v14 object:v8 userInfo:v16.super.isa];

      v8 = v42;
    }

LABEL_7:

    ++v12;
    v10 = v82;
    v1 = "setAttributeValue(_:value:)";
    v7 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
    if (v86 == v81)
    {
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1012EBBDC(uint64_t a1, Swift::Int a2)
{
  v4 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_10094283C(a2);

      ++v7;
      if (v10 == i)
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

uint64_t sub_1012EBD54(uint64_t a1, void (*a2)(id *))
{
  v5 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8[2] = a1;
  sub_1012E33D0(a2, v8, v6);
}

void sub_1012EBDE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_100960E34();
  if (v4)
  {
    v5 = [v4 selectedTextRange];
    if (v5)
    {
      v6 = *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v7 = *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

      a3(v6, v7);
    }
  }
}

uint64_t sub_1012EBE7C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id *))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = [v6 wpEditors];
  type metadata accessor for CRLWPEditor();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10[2] = v11;
  sub_1012E33D0(a4, v10, v8);

  return sub_100005070(v11);
}

void CRLWPShapeEditor.addContextualMenuElements(to:at:)(void *a1)
{
  v2 = v1;
  v38.super_class = CRLWPShapeEditor;
  objc_msgSendSuper2(&v38, "addContextualMenuElementsToArray:atPoint:", a1);
  if ([v1 shouldAddAutosizeTextMenuItem])
  {
    v36 = sub_1012E44C8;
    v37 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v35 = sub_1012E44CC;
    *(&v35 + 1) = &unk_1018BBF70;
    v4 = _Block_copy(&aBlock);

    v5 = [a1 indexOfObjectPassingTest:v4];
    _Block_release(v4);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else if (v5 != NSNotFound.getter())
    {
      v6 = [a1 objectAtIndexedSubscript:v5];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006370(0, &qword_1019F6C00);
      if (swift_dynamicCast())
      {
        sub_100006370(0, &unk_1019FF3D0);
        v7 = objc_opt_self();
        v8 = [v7 mainBundle];
        v9 = String._bridgeToObjectiveC()();
        v10 = String._bridgeToObjectiveC()();
        v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = String._bridgeToObjectiveC()();
        v13 = objc_opt_self();
        v14 = [v13 systemImageNamed:v12];

        aBlock = 0u;
        v35 = 0u;
        v15 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        v16 = [v2 shrinkToFitControlState];
        if (v16)
        {
          v17 = v16;
          [v15 setState:{objc_msgSend(v16, "stateValue")}];
        }

        v18 = [v7 mainBundle];
        v19 = String._bridgeToObjectiveC()();
        v20 = String._bridgeToObjectiveC()();
        v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String._bridgeToObjectiveC()();
        v23 = [v13 imageNamed:v22];

        aBlock = 0u;
        v35 = 0u;
        v24 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        v25 = [v33 children];
        sub_100006370(0, &unk_1019F61A0);
        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&aBlock = v26;
        sub_1005B981C(&unk_1019F4D60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CE00;
        *(inited + 32) = v24;
        *(inited + 40) = v15;
        v28 = v24;
        v29 = v15;
        sub_10079A660(inited);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v31 = [v33 menuByReplacingChildren:isa];

        v32 = v31;
        [a1 replaceObjectAtIndex:v5 withObject:v32];
      }
    }
  }
}

Swift::Void __swiftcall CRLWPShapeEditor.updateStateForCommand(_:)(UICommand a1)
{
  sub_100006370(0, &qword_101A0F420);
  if ([swift_getObjCClassFromMetadata() superclass])
  {
    swift_getObjCClassMetadata();
    if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"updateStateForCommand:"])
    {
      v27.receiver = v1;
      v27.super_class = CRLWPShapeEditor;
      objc_msgSendSuper2(&v27, "updateStateForCommand:", a1.super.super.isa);
    }
  }

  [(objc_class *)a1.super.super.isa action];
  if (static Selector.== infix(_:_:)())
  {
    v3 = [v1 shrinkToFitControlState];
    if (v3)
    {
      v4 = v3;
      -[objc_class setState:](a1.super.super.isa, "setState:", [v3 stateValue]);
    }

    return;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    swift_getKeyPath();
    sub_1012E8268();
    v6 = v5;

    if (v6 == 2)
    {
      return;
    }

    if ((v6 & 0x100) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6 & 1;
    }

    goto LABEL_15;
  }

  if (static Selector.== infix(_:_:)())
  {
    swift_getKeyPath();
    sub_1012E875C();
    v9 = v8;
    v11 = v10;
    v12 = v10;

    if (v12 == 2)
    {
      return;
    }

    v13 = v9 == 1;
    goto LABEL_29;
  }

  if (static Selector.== infix(_:_:)())
  {
    swift_getKeyPath();
    sub_1012E875C();
    v15 = v14;
    v11 = v16;
    v17 = v16;

    if (v17 == 2)
    {
      return;
    }

    v13 = v15 == 0;
    goto LABEL_29;
  }

  if (static Selector.== infix(_:_:)())
  {
    swift_getKeyPath();
    sub_1012E875C();
    v19 = v18;
    v11 = v20;
    v21 = v20;

    if (v21 == 2)
    {
      return;
    }

    v13 = v19 == 2;
    goto LABEL_29;
  }

  if (static Selector.== infix(_:_:)())
  {
    swift_getKeyPath();
    sub_1012E875C();
    v23 = v22;
    v11 = v24;
    v25 = v24;

    if (v25 != 2)
    {
      v13 = v23 == 3;
LABEL_29:
      v26 = v13;
      v7 = v26 & ~v11;
LABEL_15:
      [(objc_class *)a1.super.super.isa setState:v7];
    }
  }
}

uint64_t sub_1012EC910()
{
  v1 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1012EE824(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = objc_opt_self();
  sub_1012E3C48(v2, type metadata accessor for CRLBoardItem, &qword_1019FCB80, type metadata accessor for CRLBoardItem);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v5 = [v3 anyInfoIsTextBox:isa];

  if (v5 & 1) != 0 || (sub_1012E3C48(v2, type metadata accessor for CRLBoardItem, &qword_1019FCB80, type metadata accessor for CRLBoardItem), v6 = Set._bridgeToObjectiveC()().super.isa, , v7 = [v3 anyInfoIsStickyNote:v6], v6, (v7) || (sub_1012E3C48(v2, type metadata accessor for CRLBoardItem, &qword_1019FCB80, type metadata accessor for CRLBoardItem), v8 = Set._bridgeToObjectiveC()().super.isa, , v9 = objc_msgSend(v3, "anyInfoIsLine:", v8), v8, (v9))
  {

    return 0;
  }

  else
  {
    sub_1012E3C48(v2, type metadata accessor for CRLBoardItem, &qword_1019FCB80, type metadata accessor for CRLBoardItem);

    v11 = Set._bridgeToObjectiveC()().super.isa;

    v12 = [v3 anyInfoIsConnectionLine:v11];

    return v12 ^ 1;
  }
}

uint64_t CRLWPShapeEditor.toggleShrinkToFit(_:)()
{
  swift_getKeyPath();
  sub_1012E8D64();
  v1 = v0;

  if (v1 != 2)
  {
    KeyPath = swift_getKeyPath();
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    sub_1012E8F08((v1 & 1) == 0, KeyPath, v9, v11);
  }

  return result;
}

id sub_1012ECEC4()
{
  swift_getKeyPath();
  sub_1012E8D64();
  v1 = v0;

  if (v1 == 2)
  {
    return 0;
  }

  if ((v1 & 0x100) != 0)
  {
    return [objc_allocWithZone(CRLPlatformControlState) initWithValue:2];
  }

  return [objc_allocWithZone(CRLPlatformControlState) initWithValue:(v1 & 1) != 0];
}

void sub_1012ECF60(uint64_t a1)
{
  v3 = *v1;
  v4 = NSObject._rawHashValue(seed:)(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    type metadata accessor for CRLBoardItem(0);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

uint64_t sub_1012ED090(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v21 = a3;
  v9 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  *(&v20 - v13) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v26 = &type metadata for CRLWPCharacterScope;
  v27 = &type metadata for CRLWPFontSizeAttribute;
  v15 = sub_10082465C();
  v28 = v15;
  v29 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v30, 0x657A6953746E6F66, 0xE800000000000000);

  v22 = &type metadata for CRLWPCharacterScope;
  v23 = &type metadata for CRLWPFontSizeAttribute;
  v24 = v15;
  v25 = KeyPath;
  swift_getKeyPath();
  *&v30 = a5;
  BYTE4(v30) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_1008246B0();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v14, v11, &qword_101A0D850);
  v17 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0));
  v18 = sub_100961810(a1, a2, v21, v11);
  sub_10000CAAC(v14, &qword_101A0D850);
  return v18;
}

uint64_t sub_1012ED2B0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPFontBoldAttribute;
  v14 = sub_1008244A8();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 1684828002, 0xE400000000000000);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPFontBoldAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  LOBYTE(v29) = a5;
  sub_1005B981C(qword_101A0CF60);
  sub_1008244FC();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A0D850);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850);
  return v17;
}

uint64_t sub_1012ED4B4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPFontItalicAttribute;
  v14 = sub_1008245B4();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x63696C617469, 0xE600000000000000);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPFontItalicAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  LOBYTE(v29) = a5;
  sub_1005B981C(qword_101A0CF60);
  sub_100824608();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A0D850);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850);
  return v17;
}

uint64_t sub_1012ED6BC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPUnderlineAttribute;
  v14 = sub_100824704();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x6E696C7265646E75, 0xE900000000000065);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPUnderlineAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  v29 = a5;
  LOBYTE(v30) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_100824758();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A0D850);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850);
  return v17;
}

uint64_t sub_1012ED8D0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPStrikethroughAttribute;
  v14 = sub_10096227C();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x6874656B69727473, 0xED00006867756F72);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPStrikethroughAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  v29 = a5;
  LOBYTE(v30) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_1009622D0();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A0D850);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850);
  return v17;
}

uint64_t sub_1012EDB4C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v7 = sub_1005B981C(&qword_101A06188);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  *(&v18 - v11) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v26 = &type metadata for CRLWPParagraphScope;
  v27 = &type metadata for CRLWPParagraphAlignmentAttribute;
  v13 = sub_1006ACAD4();
  v28 = v13;
  v29 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v30, 0xD000000000000012, 0x8000000101551650);

  v22 = &type metadata for CRLWPParagraphScope;
  v23 = &type metadata for CRLWPParagraphAlignmentAttribute;
  v24 = v13;
  v25 = KeyPath;
  swift_getKeyPath();
  v30 = a5;
  LOBYTE(v31) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_100962228();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v12, v10, &qword_101A06188);
  v15 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
  v16 = sub_100961C20(v19, v20, v21, v10);
  sub_10000CAAC(v12, &qword_101A06188);
  return v16;
}

uint64_t sub_1012EDD60(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPParagraphScope;
  v26 = &type metadata for CRLWPListStyleTypeAttribute;
  v14 = sub_100962180();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x6C7974537473696CLL, 0xE900000000000065);

  v21 = &type metadata for CRLWPParagraphScope;
  v22 = &type metadata for CRLWPListStyleTypeAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  v29 = a5;
  LOBYTE(v30) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_1009621D4();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A06188);
  v16 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
  v17 = sub_100961C20(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A06188);
  return v17;
}

uint64_t sub_1012EDF78(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v9 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  *(&v21 - v13) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v29 = &type metadata for CRLWPCharacterScope;
  v30 = &type metadata for CRLWPFontNameAttribute;
  v15 = sub_100962324();
  v31 = v15;
  v32 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(v33, 0x656D614E746E6F66, 0xE800000000000000);

  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPFontNameAttribute;
  v27 = v15;
  v28 = KeyPath;
  swift_getKeyPath();

  v33[0] = sub_100CB23B4(a5, a6);
  v33[1] = v17;
  v34 = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_1009623E4();
  CRAttributedString.Attributes.subscript.setter();

  sub_10000BE14(v14, v11, &qword_101A0D850);
  v18 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0));
  v19 = sub_100961810(v22, v23, v24, v11);
  sub_10000CAAC(v14, &qword_101A0D850);
  return v19;
}

uint64_t sub_1012EE1A8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v19 = a2;
  v20 = a3;
  v8 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPParagraphScope;
  v26 = &type metadata for CRLWPListStartAttribute;
  v14 = sub_1009620D8();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x726174537473696CLL, 0xE900000000000074);

  v21 = &type metadata for CRLWPParagraphScope;
  v22 = &type metadata for CRLWPListStartAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();
  v29 = a5;
  LOBYTE(v30) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_10096212C();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v13, v10, &qword_101A06188);
  v16 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
  v17 = sub_100961C20(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A06188);
  return v17;
}

uint64_t sub_1012EE3BC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v7 = sub_1005B981C(&qword_101A06188);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  *(&v18 - v11) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v26 = &type metadata for CRLWPParagraphScope;
  v27 = &type metadata for CRLWPWritingDirectionAttribute;
  v13 = sub_100962450();
  v28 = v13;
  v29 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v30, 0xD000000000000014, 0x800000010157BA40);

  v22 = &type metadata for CRLWPParagraphScope;
  v23 = &type metadata for CRLWPWritingDirectionAttribute;
  v24 = v13;
  v25 = KeyPath;
  swift_getKeyPath();
  v30 = a5;
  LOBYTE(v31) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_1009624A4();
  CRAttributedString.Attributes.subscript.setter();
  sub_10000BE14(v12, v10, &qword_101A06188);
  v15 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
  v16 = sub_100961C20(v19, v20, v21, v10);
  sub_10000CAAC(v12, &qword_101A06188);
  return v16;
}

uint64_t sub_1012EE5D0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = a3;
  v19 = a2;
  v8 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *(&v19 - v12) = _swiftEmptySetSingleton;
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  v25 = &type metadata for CRLWPCharacterScope;
  v26 = &type metadata for CRLWPCharacterFillAttribute;
  v14 = sub_10082489C();
  v27 = v14;
  v28 = a4;
  KeyPath = swift_getKeyPath();

  sub_100E6DE34(&v29, 0x6574636172616863, 0xED00006C6C694672);

  v21 = &type metadata for CRLWPCharacterScope;
  v22 = &type metadata for CRLWPCharacterFillAttribute;
  v23 = v14;
  v24 = KeyPath;
  swift_getKeyPath();

  sub_101247234(a5, &v29);
  sub_1005B981C(qword_101A0CF60);
  sub_1008248F0();
  CRAttributedString.Attributes.subscript.setter();

  sub_10000BE14(v13, v10, &qword_101A0D850);
  v16 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0));
  v17 = sub_100961810(a1, v19, v20, v10);
  sub_10000CAAC(v13, &qword_101A0D850);
  return v17;
}

uint64_t sub_1012EE824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1012EE86C(uint64_t a1)
{
  sub_100064288(a1, v10);
  sub_100006370(0, &qword_1019F6C00);
  if (swift_dynamicCast())
  {
    v1 = [v9 identifier];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1012EE9C4(void *a1)
{
  v3 = sub_1005B981C(&qword_101A33368);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1012EFA1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLFolderIdentifierStorage(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1012EEB80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1005B981C(&qword_101A33358);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CRLFolderIdentifierStorage(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1012EFA1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_10007C550(&qword_1019F43A8, &type metadata accessor for UUID);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_1012EFA70(v19, v18);
  sub_100005070(a1);
  return sub_1012EFAD4(v19);
}

uint64_t sub_1012EEEB0()
{
  if (*v0)
  {
    return 0x6D614E72656E776FLL;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_1012EEEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E72656E776FLL && a2 == 0xE900000000000065)
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

uint64_t sub_1012EEFCC(uint64_t a1)
{
  v2 = sub_1012EFA1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1012EF008(uint64_t a1)
{
  v2 = sub_1012EFA1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1012EF074()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1012EF11C()
{
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1012EF1B8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1012EF25C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A33370);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLFolderIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1012EFB30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_10007C550(&qword_101A33380, type metadata accessor for CRLFolderIdentifierStorage);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_10000C270(v13, v11, type metadata accessor for CRLFolderIdentifierStorage);
    sub_10000C270(v11, v12, type metadata accessor for CRLFolderIdentifier);
  }

  return sub_100005070(a1);
}

uint64_t sub_1012EF4D0(uint64_t a1)
{
  v2 = sub_1012EFB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1012EF50C(uint64_t a1)
{
  v2 = sub_1012EFB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1012EF560(void *a1)
{
  v2 = sub_1005B981C(&qword_101A33388);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_1012EFB30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  sub_10007C550(&qword_101A33390, type metadata accessor for CRLFolderIdentifierStorage);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_1012EF6D8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1012EF77C()
{
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return String.hash(into:)();
}

Swift::Int sub_1012EF81C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10007C550(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1012EF8BC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (static UUID.== infix(_:_:)())
  {
    v4 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v5 == *v7 && v6 == v7[1];
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1012EF928(void *a1)
{
  a1[1] = sub_10007C550(&qword_101A019C8, type metadata accessor for CRLFolderIdentifier);
  a1[2] = sub_10007C550(&qword_101A019D8, type metadata accessor for CRLFolderIdentifier);
  result = sub_10007C550(&qword_101A21C80, type metadata accessor for CRLFolderIdentifier);
  a1[3] = result;
  return result;
}

unint64_t sub_1012EFA1C()
{
  result = qword_101A33360;
  if (!qword_101A33360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A33360);
  }

  return result;
}

uint64_t sub_1012EFA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1012EFAD4(uint64_t a1)
{
  v2 = type metadata accessor for CRLFolderIdentifierStorage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1012EFB30()
{
  result = qword_101A33378;
  if (!qword_101A33378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A33378);
  }

  return result;
}

unint64_t sub_1012EFBA8()
{
  result = qword_101A33398;
  if (!qword_101A33398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A33398);
  }

  return result;
}

unint64_t sub_1012EFC00()
{
  result = qword_101A333A0;
  if (!qword_101A333A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A333A0);
  }

  return result;
}

unint64_t sub_1012EFC58()
{
  result = qword_101A333A8;
  if (!qword_101A333A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A333A8);
  }

  return result;
}

unint64_t sub_1012EFCB0()
{
  result = qword_101A333B0;
  if (!qword_101A333B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A333B0);
  }

  return result;
}

unint64_t sub_1012EFD08()
{
  result = qword_101A333B8;
  if (!qword_101A333B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A333B8);
  }

  return result;
}

unint64_t sub_1012EFD60()
{
  result = qword_101A333C0;
  if (!qword_101A333C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A333C0);
  }

  return result;
}

uint64_t sub_1012EFDC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 40))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1012EFE1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_1012EFEB4(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v10 = sub_1005B981C(&unk_101A33B10);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v2 + v16, v9);
  v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(a1 + v17, v6);
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);
  CRStruct_6.delta(_:from:)();
  sub_1005E2BDC(v6);
  sub_1005E2BDC(v9);
  sub_10000BE14(v15, v12, &unk_101A33B10);
  v18 = sub_1005B981C(&qword_101A33AA8);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    sub_10000CAAC(v15, &unk_101A33B10);
    sub_10000CAAC(v12, &unk_101A33B10);
    return 0;
  }

  else
  {
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v21, qword_101AD6348);
    sub_10001A2F8(&qword_101A33AA0, &qword_101A33AA8);
    v22 = v25[9];
    v23 = PartialCRDT.deltaSerializedData(_:version:)();
    if (v22)
    {
      sub_10000CAAC(v15, &unk_101A33B10);
      return (*(v19 + 8))(v12, v18);
    }

    else
    {
      v24 = v23;
      sub_10000CAAC(v15, &unk_101A33B10);
      (*(v19 + 8))(v12, v18);
      return v24;
    }
  }
}

uint64_t sub_1012F026C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + *(type metadata accessor for CRLUserBoardMetadataCRDTData(0) + 36)) = _swiftEmptyDictionarySingleton;
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  return CRRegister.init(wrappedValue:)();
}

unint64_t sub_1012F035C()
{
  v1 = v0[3];
  result = sub_10001FF1C();
  if (result >= v1)
  {
    v0[3] = sub_1012F0858();
    v3 = v0[4];
    if (sub_10001FF1C() >= v3)
    {
      v0[4] = sub_1012F0DC0();
    }

    v4 = v0[5];
    result = sub_10001FF1C();
    if (result >= v4)
    {
      result = sub_1012F1838();
      v0[5] = result;
    }
  }

  return result;
}

uint64_t sub_1012F03C0(uint64_t a1)
{
  v31 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A33AA8);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = *(a1 + 40);
  sub_1012F8098(a1, v34);
  sub_10001A2F8(&qword_101A33AA0, &qword_101A33AA8);
  v10 = v37;
  PartialCRDT.init(serializedData:)();
  if (!v10)
  {
    v27 = v5;
    v11 = v30;
    v28 = v3;
    v37 = 0;
    v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    v13 = v32;
    swift_beginAccess();
    sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);
    LOBYTE(v9) = CRStruct_6.merge(delta:)();
    swift_endAccess();
    if (v9)
    {
      v14 = *(a1 + 16);
      v35[0] = *a1;
      v35[1] = v14;
      v36 = *(a1 + 32);
      sub_1012F22F0(v35);
    }

    else
    {
      v31 = v6;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v26 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      sub_1005E2B78(v13 + v12, v11);
      sub_1005B981C(&unk_1019F5250);
      v16 = v27;
      CRRegister.wrappedValue.getter();
      sub_1005E2BDC(v11);
      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v29 + 8))(v16, v28);
      *(inited + 56) = &type metadata for String;
      v20 = sub_1000053B0();
      *(inited + 64) = v20;
      *(inited + 32) = v17;
      *(inited + 40) = v19;
      v34[0] = v13;
      type metadata accessor for CRLBoardData(0);

      v21 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v20;
      *(inited + 72) = v21;
      *(inited + 80) = v22;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v23, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v6 = v31;
    }

    (*(v33 + 8))(v8, v6);
  }

  return v9 & 1;
}

uint64_t sub_1012F0858()
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = inited + 32;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() < v2)
  {
    v42 = objc_opt_self();
    LODWORD(v4) = [v42 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v44);
    StaticString.description.getter();
    v43 = inited;
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146CA70;
      *(v12 + 56) = &type metadata for Int32;
      *(v12 + 64) = &protocol witness table for Int32;
      *(v12 + 32) = v4;
      v13 = sub_1005CF000();
      *(v12 + 96) = v13;
      v14 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000);
      *(v12 + 104) = v14;
      *(v12 + 72) = v5;
      *(v12 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v12 + 112) = v8;
      *(v12 + 120) = v10;
      *(v12 + 176) = &type metadata for UInt;
      *(v12 + 184) = &protocol witness table for UInt;
      *(v12 + 144) = v15;
      *(v12 + 152) = 68;
      v16 = v44;
      *(v12 + 216) = v13;
      *(v12 + 224) = v14;
      *(v12 + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Call to board computedMinRequiredVersion while current minRequiredVersion is higher than current: %{public}d", 108, 2, v43);

      type metadata accessor for __VaListBuilder();
      v5 = swift_allocObject();
      v5[2] = 8;
      v5[3] = 0;
      v21 = v5 + 3;
      v5[4] = 0;
      v5[5] = 0;
      v8 = *(v43 + 16);
      if (!v8)
      {
LABEL_29:
        v37 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        [v42 handleFailureInFunction:v38 file:v39 lineNumber:68 isFatal:0 format:v40 args:v37];

        return 0x1000000000000;
      }

      v10 = 0;
      while (1)
      {
        v22 = (v3 + 40 * v10);
        v4 = v22[3];
        sub_100020E58(v22, v4);
        v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v24 = *v21;
        v25 = *(v23 + 16);
        v26 = __OFADD__(*v21, v25);
        v27 = *v21 + v25;
        if (v26)
        {
          break;
        }

        v28 = v5[4];
        if (v28 >= v27)
        {
          goto LABEL_20;
        }

        if (v28 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v4 = v5[5];
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        v5[4] = v27;
        if ((v27 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v29 = v23;
        v30 = swift_slowAlloc();
        v31 = v30;
        v5[5] = v30;
        if (v4)
        {
          if (v30 != v4 || v30 >= &v4[8 * v24])
          {
            memmove(v30, v4, 8 * v24);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v23 = v29;
LABEL_20:
          v31 = v5[5];
          if (!v31)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v23 = v29;
        if (!v31)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v33 = *(v23 + 16);
        if (v33)
        {
          v34 = (v23 + 32);
          v35 = *v21;
          while (1)
          {
            v36 = *v34++;
            *&v31[8 * v35] = v36;
            v35 = *v21 + 1;
            if (__OFADD__(*v21, 1))
            {
              break;
            }

            *v21 = v35;
            if (!--v33)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v10 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

LABEL_28:

  return 0x1000000000000;
}

uint64_t sub_1012F0DC0()
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v84 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = inited + 32;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() >= v2)
  {
LABEL_28:

    goto LABEL_30;
  }

  v82 = v0;
  v81 = objc_opt_self();
  LODWORD(v5) = [v81 _atomicIncrementAssertCount];
  v85 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v85);
  StaticString.description.getter();
  v0 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v83 = inited;
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v9;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_69;
  }

LABEL_3:
  v10 = static OS_os_log.crlAssert;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10146CA70;
  *(v11 + 56) = &type metadata for Int32;
  *(v11 + 64) = &protocol witness table for Int32;
  *(v11 + 32) = v5;
  v12 = sub_1005CF000();
  *(v11 + 96) = v12;
  v13 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000);
  *(v11 + 104) = v13;
  *(v11 + 72) = v0;
  *(v11 + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(v11 + 112) = v8;
  *(v11 + 120) = v4;
  *(v11 + 176) = &type metadata for UInt;
  *(v11 + 184) = &protocol witness table for UInt;
  *(v11 + 144) = v14;
  *(v11 + 152) = 89;
  v15 = v85;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = v15;
  v16 = v0;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Call to board computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersion is higher than current: %{public}d", 129, 2, v83);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  *(v5 + 16) = 8;
  *(v5 + 24) = 0;
  v20 = (v5 + 24);
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v21 = v83[2];
  if (v21)
  {
    v22 = 0;
    v8 = 40;
    while (1)
    {
      v23 = (v3 + 40 * v22);
      v4 = v23[4];
      v0 = sub_100020E58(v23, v23[3]);
      v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v25 = *v20;
      v26 = *(v24 + 16);
      v27 = __OFADD__(*v20, v26);
      v28 = *v20 + v26;
      if (v27)
      {
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
        swift_once();
        goto LABEL_3;
      }

      v0 = *(v5 + 32);
      if (v0 >= v28)
      {
        goto LABEL_20;
      }

      if (v0 + 0x4000000000000000 < 0)
      {
        goto LABEL_65;
      }

      v4 = *(v5 + 40);
      if (2 * v0 > v28)
      {
        v28 = 2 * v0;
      }

      *(v5 + 32) = v28;
      if ((v28 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_66;
      }

      v29 = v24;
      v30 = swift_slowAlloc();
      v31 = v30;
      *(v5 + 40) = v30;
      if (v4)
      {
        break;
      }

      v24 = v29;
      if (!v31)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v33 = *(v24 + 16);
      if (v33)
      {
        v34 = (v24 + 32);
        v35 = *v20;
        while (1)
        {
          v36 = *v34++;
          *&v31[8 * v35] = v36;
          v35 = *v20 + 1;
          if (__OFADD__(*v20, 1))
          {
            break;
          }

          *v20 = v35;
          if (!--v33)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_5:

      if (++v22 == v21)
      {
        goto LABEL_29;
      }
    }

    if (v30 != v4 || v30 >= &v4[8 * v25])
    {
      memmove(v30, v4, 8 * v25);
    }

    v0 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v24 = v29;
LABEL_20:
    v31 = *(v5 + 40);
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v37 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  [v81 handleFailureInFunction:v38 file:v39 lineNumber:89 isFatal:0 format:v40 args:v37];

  v0 = v82;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
LABEL_30:
  v41 = swift_initStackObject();
  *(v41 + 16) = v84;
  v42 = *(v0 + 32);
  *(v41 + 32) = v42;
  v3 = v41 + 32;
  *(v41 + 56) = v4;
  *(v41 + 64) = v5;
  if (sub_10001FF1C() >= v42)
  {
LABEL_58:
  }

  else
  {
    v83 = objc_opt_self();
    v43 = [v83 _atomicIncrementAssertCount];
    v85 = [objc_allocWithZone(NSString) init];
    sub_100604538(v41, &v85);
    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    *&v84 = v41;
    v45 = String._bridgeToObjectiveC()();

    v46 = [v45 lastPathComponent];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.crlAssert;
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_10146CA70;
    *(v51 + 56) = &type metadata for Int32;
    *(v51 + 64) = &protocol witness table for Int32;
    *(v51 + 32) = v43;
    v52 = sub_1005CF000();
    *(v51 + 96) = v52;
    v53 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000);
    *(v51 + 104) = v53;
    *(v51 + 72) = v44;
    *(v51 + 136) = &type metadata for String;
    v54 = sub_1000053B0();
    *(v51 + 112) = v47;
    *(v51 + 120) = v49;
    *(v51 + 176) = &type metadata for UInt;
    *(v51 + 184) = &protocol witness table for UInt;
    *(v51 + 144) = v54;
    *(v51 + 152) = 90;
    v55 = v85;
    *(v51 + 216) = v52;
    *(v51 + 224) = v53;
    *(v51 + 192) = v55;
    v56 = v44;
    v57 = v55;
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v51);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v59, "Call to board computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 144, 2, v84);

    type metadata accessor for __VaListBuilder();
    v60 = swift_allocObject();
    v60[2] = 8;
    v60[3] = 0;
    v61 = v60 + 3;
    v60[4] = 0;
    v60[5] = 0;
    v62 = *(v84 + 16);
    if (v62)
    {
      v63 = 0;
      v8 = 40;
      while (1)
      {
        v64 = (v3 + 40 * v63);
        v4 = v64[3];
        v0 = sub_100020E58(v64, v4);
        v65 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v5 = *v61;
        v66 = *(v65 + 16);
        v27 = __OFADD__(*v61, v66);
        v67 = *v61 + v66;
        if (v27)
        {
          goto LABEL_64;
        }

        v0 = v60[4];
        if (v0 >= v67)
        {
          goto LABEL_50;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_67;
        }

        v4 = v60[5];
        if (2 * v0 > v67)
        {
          v67 = 2 * v0;
        }

        v60[4] = v67;
        if ((v67 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_68;
        }

        v68 = v65;
        v69 = swift_slowAlloc();
        v70 = v69;
        v60[5] = v69;
        if (v4)
        {
          break;
        }

        v65 = v68;
        if (!v70)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v72 = *(v65 + 16);
        if (v72)
        {
          v73 = (v65 + 32);
          v74 = *v61;
          do
          {
            v75 = *v73++;
            *&v70[8 * v74] = v75;
            v74 = *v61 + 1;
            if (__OFADD__(*v61, 1))
            {
              goto LABEL_62;
            }

            *v61 = v74;
          }

          while (--v72);
        }

        if (++v63 == v62)
        {
          goto LABEL_59;
        }
      }

      if (v69 != v4 || v69 >= &v4[8 * v5])
      {
        memmove(v69, v4, 8 * v5);
      }

      v0 = v60;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v65 = v68;
LABEL_50:
      v70 = v60[5];
      if (!v70)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v76 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v79 = String._bridgeToObjectiveC()();

    [v83 handleFailureInFunction:v77 file:v78 lineNumber:90 isFatal:0 format:v79 args:v76];
  }

  return 0x2000400000000;
}

uint64_t sub_1012F1838()
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = (inited + 32);
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  v81 = v0;
  if (sub_10001FF1C() >= v2)
  {
LABEL_28:

    goto LABEL_30;
  }

  v80 = objc_opt_self();
  LODWORD(v5) = [v80 _atomicIncrementAssertCount];
  v82 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v82);
  StaticString.description.getter();
  v0 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v9;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_75;
  }

LABEL_3:
  v10 = static OS_os_log.crlAssert;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10146CA70;
  *(v11 + 56) = &type metadata for Int32;
  *(v11 + 64) = &protocol witness table for Int32;
  *(v11 + 32) = v5;
  v12 = sub_1005CF000();
  *(v11 + 96) = v12;
  v13 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000);
  *(v11 + 104) = v13;
  *(v11 + 72) = v0;
  *(v11 + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(v11 + 112) = v8;
  *(v11 + 120) = v4;
  *(v11 + 176) = &type metadata for UInt;
  *(v11 + 184) = &protocol witness table for UInt;
  *(v11 + 144) = v14;
  *(v11 + 152) = 106;
  v8 = v82;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = v8;
  v15 = v0;
  v16 = v8;
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "Call to board computedMinRequiredVersionForFullFidelity while current minRequiredVersion is higher than current: %{public}d", 123, 2, inited);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v19 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v20 = *(inited + 16);
  if (v20)
  {
    v21 = 0;
    inited = 40;
    while (1)
    {
      v22 = &v3[40 * v21];
      v4 = *(v22 + 4);
      v0 = sub_100020E58(v22, *(v22 + 3));
      v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v24 = *v19;
      v25 = *(v23 + 16);
      v26 = __OFADD__(*v19, v25);
      v27 = *v19 + v25;
      if (v26)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        swift_once();
        goto LABEL_3;
      }

      v0 = v5[4];
      if (v0 >= v27)
      {
        goto LABEL_20;
      }

      if (v0 + 0x4000000000000000 < 0)
      {
        goto LABEL_71;
      }

      v4 = v5[5];
      if (2 * v0 > v27)
      {
        v27 = 2 * v0;
      }

      v5[4] = v27;
      if ((v27 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_72;
      }

      v8 = v23;
      v28 = swift_slowAlloc();
      v29 = v28;
      v5[5] = v28;
      if (v4)
      {
        break;
      }

      v23 = v8;
      if (!v29)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v31 = *(v23 + 16);
      if (v31)
      {
        v32 = (v23 + 32);
        v33 = *v19;
        while (1)
        {
          v34 = *v32++;
          *&v29[8 * v33] = v34;
          v33 = *v19 + 1;
          if (__OFADD__(*v19, 1))
          {
            break;
          }

          *v19 = v33;
          if (!--v31)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_5:

      if (++v21 == v20)
      {
        goto LABEL_29;
      }
    }

    if (v28 != v4 || v28 >= &v4[8 * v24])
    {
      memmove(v28, v4, 8 * v24);
    }

    v0 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v23 = v8;
LABEL_20:
    v29 = v5[5];
    if (!v29)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v35 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  [v80 handleFailureInFunction:v36 file:v37 lineNumber:106 isFatal:0 format:v38 args:v35];

  v0 = v81;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
LABEL_30:
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146C6B0;
  v40 = *(v0 + 40);
  *(v39 + 32) = v40;
  v8 = (v39 + 32);
  *(v39 + 56) = v4;
  *(v39 + 64) = v5;
  if (sub_10001FF1C() >= v40)
  {
LABEL_58:
  }

  else
  {
    v80 = objc_opt_self();
    v41 = [v80 _atomicIncrementAssertCount];
    v82 = [objc_allocWithZone(NSString) init];
    sub_100604538(v39, &v82);
    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    v44 = [v43 lastPathComponent];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v48 = static OS_os_log.crlAssert;
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_10146CA70;
    *(v49 + 56) = &type metadata for Int32;
    *(v49 + 64) = &protocol witness table for Int32;
    *(v49 + 32) = v41;
    v50 = sub_1005CF000();
    *(v49 + 96) = v50;
    v51 = sub_1000841C0(&qword_1019F52E0, sub_1005CF000);
    *(v49 + 104) = v51;
    *(v49 + 72) = v42;
    *(v49 + 136) = &type metadata for String;
    v52 = sub_1000053B0();
    *(v49 + 112) = v45;
    *(v49 + 120) = v47;
    *(v49 + 176) = &type metadata for UInt;
    *(v49 + 184) = &protocol witness table for UInt;
    *(v49 + 144) = v52;
    *(v49 + 152) = 107;
    v3 = v82;
    *(v49 + 216) = v50;
    *(v49 + 224) = v51;
    *(v49 + 192) = v3;
    v53 = v42;
    v54 = v3;
    v55 = static os_log_type_t.error.getter();
    sub_100005404(v48, &_mh_execute_header, v55, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v49);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v56 = static os_log_type_t.error.getter();
    sub_100005404(v48, &_mh_execute_header, v56, "Call to board computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 138, 2, v39);

    type metadata accessor for __VaListBuilder();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v57 = v5 + 3;
    v5[4] = 0;
    v5[5] = 0;
    v58 = *(v39 + 16);
    if (v58)
    {
      v59 = 0;
      inited = 40;
      while (1)
      {
        v60 = &v8[40 * v59];
        v4 = *(v60 + 4);
        v0 = sub_100020E58(v60, *(v60 + 3));
        v61 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v62 = *v57;
        v63 = *(v61 + 16);
        v26 = __OFADD__(*v57, v63);
        v64 = *v57 + v63;
        if (v26)
        {
          goto LABEL_70;
        }

        v0 = v5[4];
        if (v0 >= v64)
        {
          goto LABEL_50;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_73;
        }

        v4 = v5[5];
        if (2 * v0 > v64)
        {
          v64 = 2 * v0;
        }

        v5[4] = v64;
        if ((v64 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_74;
        }

        v3 = v61;
        v65 = swift_slowAlloc();
        v66 = v65;
        v5[5] = v65;
        if (v4)
        {
          break;
        }

        v61 = v3;
        if (!v66)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v68 = *(v61 + 16);
        if (v68)
        {
          v69 = (v61 + 32);
          v70 = *v57;
          do
          {
            v71 = *v69++;
            *&v66[8 * v70] = v71;
            v70 = *v57 + 1;
            if (__OFADD__(*v57, 1))
            {
              goto LABEL_68;
            }

            *v57 = v70;
          }

          while (--v68);
        }

        if (++v59 == v58)
        {
          goto LABEL_59;
        }
      }

      if (v65 != v4 || v65 >= &v4[8 * v62])
      {
        memmove(v65, v4, 8 * v62);
      }

      v0 = v5;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v61 = v3;
LABEL_50:
      v66 = v5[5];
      if (!v66)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v72 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v73 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v74 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v75 = String._bridgeToObjectiveC()();

    [v80 handleFailureInFunction:v73 file:v74 lineNumber:107 isFatal:0 format:v75 args:v72];

    v0 = v81;
    v4 = &type metadata for UInt64;
    v5 = &protocol witness table for UInt64;
  }

  if (*(v0 + 40) >= 0x2000400000000uLL)
  {
    v76 = *(v0 + 40);
  }

  else
  {
    v76 = 0x2000400000000;
  }

  if (*(v0 + 32) == 0x2000400000000)
  {
    v77 = *(v0 + 40);
  }

  else
  {
    v77 = v76;
  }

  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_10146C6B0;
  *(v78 + 56) = v4;
  *(v78 + 64) = v5;
  *(v78 + 32) = v77;

  return v77;
}

unint64_t sub_1012F22F0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
  result = sub_10001FF1C();
  if (result >= v2)
  {
    *(v1 + 24) = sub_1012F0858();
    v5 = *(v1 + 32);
    if (sub_10001FF1C() >= v5)
    {
      *(v1 + 32) = sub_1012F0DC0();
    }

    v6 = *(v1 + 40);
    result = sub_10001FF1C();
    if (result >= v6)
    {
      result = sub_1012F1838();
      *(v1 + 40) = result;
    }
  }

  return result;
}

void sub_1012F236C(uint64_t a1)
{
  v29 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v29);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v13 = v1 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    v23 = v13;
    swift_beginAccess();
    sub_1005E2B78(v13, v5);
    v28 = sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_1005E2BDC(v5);
    sub_100C03B78(v9, v12);
    v27 = a1;
    v24 = v2;
    v14 = *(v7 + 8);
    v14(v9, v6);
    v20 = v14;
    v15 = v23;
    swift_beginAccess();
    v16 = *(v7 + 16);
    v25 = v7 + 16;
    v26 = v16;
    v16(v9, v12, v6);
    CRRegister.wrappedValue.setter();
    v14(v12, v6);
    swift_endAccess();
    sub_1005E2B78(v15, v5);
    CRRegister.wrappedValue.getter();
    sub_1005E2BDC(v5);
    sub_100C03B78(v9, v12);
    v17 = v20;
    v22 = v7 + 8;
    v20(v9, v6);
    swift_beginAccess();
    v26(v9, v12, v6);
    v21 = v6;
    CRRegister.wrappedValue.setter();
    v17(v12, v6);
    swift_endAccess();
    sub_1005E2B78(v15, v5);
    type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
    CRRegister.wrappedValue.getter();
    sub_1005E2BDC(v5);
    sub_100C03B78(v9, v12);
    v18 = v21;
    v17(v9, v21);
    swift_beginAccess();
    v26(v9, v12, v18);
    CRRegister.wrappedValue.setter();
    v17(v12, v18);
    swift_endAccess();
  }
}

uint64_t sub_1012F2750()
{
  sub_1005E2BDC(v0 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData);

  return swift_deallocClassInstance();
}

void sub_1012F280C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for CRMaxRegister();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1012F28B0()
{
  if (!qword_101A33810)
  {
    sub_1005C4E5C(&qword_1019F4B88);
    sub_10007E3CC(&qword_101A33818, &qword_1019F4B88, &unk_10146CDF0, sub_10007E448);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A33810);
    }
  }
}

void sub_1012F2954()
{
  if (!qword_101A33820)
  {
    sub_1005C4E5C(&qword_1019F4B68);
    sub_10007E3CC(&qword_101A33828, &qword_1019F4B68, &unk_10146CDD0, sub_10007E614);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A33820);
    }
  }
}

void sub_1012F29F8()
{
  if (!qword_101A33830)
  {
    sub_1005C4E5C(&qword_1019F4B50);
    sub_10007E3CC(&qword_101A33838, &qword_1019F4B50, &unk_1014C6CA0, sub_10007E960);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A33830);
    }
  }
}

void sub_1012F2A9C()
{
  if (!qword_101A33840)
  {
    sub_1005C4E5C(&qword_1019F4B78);
    sub_10007E3CC(&qword_101A33848, &qword_1019F4B78, &unk_10146CDE0, sub_10007EF8C);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A33840);
    }
  }
}

void sub_1012F2B40()
{
  if (!qword_101A33850)
  {
    sub_1005C4E5C(&qword_1019F4B40);
    sub_10007E3CC(&unk_101A33858, &qword_1019F4B40, &unk_10146CDA8, sub_10007F0A0);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A33850);
    }
  }
}

void sub_1012F2C2C()
{
  sub_100039D58(319, &qword_1019F7D40);
  if (v0 <= 0x3F)
  {
    sub_100039F68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1012F2CD4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v15[-v8];
  v10 = *a1;
  v11 = *a2;
  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v10 + v12, v9);
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v11 + v13, v6);
  LOBYTE(v11) = sub_100084FA4(v9);
  sub_1005E2BDC(v6);
  sub_1005E2BDC(v9);
  return v11 & 1;
}

uint64_t sub_1012F2E04()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v0 + v4, v3);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  return sub_1005E2BDC(v3);
}

uint64_t sub_1012F2EE8(uint64_t a1)
{
  v2 = sub_1000841C0(&unk_101A22770, type metadata accessor for CRLBoardCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F2F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F2FD0()
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.actionUndoingDifference(from:)();
}

uint64_t sub_1012F3054()
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.apply(_:)();
}

uint64_t sub_1012F30D0()
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.hasDelta(from:)();
}

uint64_t sub_1012F314C()
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.delta(_:from:)();
}

uint64_t sub_1012F31E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F325C()
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.merge(delta:)();
}

uint64_t sub_1012F32D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F335C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F33E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F3474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F34F0()
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.needToFinalizeTimestamps()();
}

uint64_t sub_1012F355C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F35D8()
{
  sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.merge(_:)();
}

uint64_t sub_1012F365C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F3860(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return CRStruct_6.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012F38E0(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33A00, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F394C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F39C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1012F3A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_1012F3AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_1012F3B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1012F3BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F3C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F3CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F3D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F3DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F3E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F3EE8()
{
  sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_1012F3F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F3FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F4054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F4258(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012F42E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1012F4340(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33990, type metadata accessor for CRLBoardInsertStyleData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F43AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F4428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1012F44AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.apply(_:)(a1, a2, v4);
}

uint64_t sub_1012F4528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_1012F45A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1012F4638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F46B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F4730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F47B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F4838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F48CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F4948()
{
  sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.needToFinalizeTimestamps()();
}

uint64_t sub_1012F49B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F4A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F4AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F4CB8(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return CRStruct_7.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012F4D38@<X0>(void *a1@<X8>)
{
  if (qword_1019F2C18 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = *algn_101AD98E8;
  v3 = qword_101AD98F0;
  v2 = unk_101AD98F8;
  v4 = qword_101AD9900;
  v5 = qword_101AD9908;
  v6 = qword_101AD9910;
  v7 = qword_101AD9918;
  v9 = qword_101AD9920;
  v8 = unk_101AD9928;
  v10 = qword_101AD9930;
  v11 = qword_101AD9938;
  *a1 = qword_101AD98E0;
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
}

uint64_t sub_1012F4E24(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33A48, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F4E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F4F0C()
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.actionUndoingDifference(from:)();
}

uint64_t sub_1012F4F90()
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.apply(_:)();
}

uint64_t sub_1012F500C()
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.hasDelta(from:)();
}

uint64_t sub_1012F5088()
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.delta(_:from:)();
}

uint64_t sub_1012F511C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F5198()
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.merge(delta:)();
}

uint64_t sub_1012F5214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F5298(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F53B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F542C()
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.needToFinalizeTimestamps()();
}

uint64_t sub_1012F5498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F5514()
{
  sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.merge(_:)();
}

uint64_t sub_1012F5598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F579C(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return CRStruct_4.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012F5818()
{
  qword_101AD9940 = 97;
  *algn_101AD9948 = 0xE100000000000000;
  qword_101AD9950 = swift_getKeyPath();
  unk_101AD9958 = 98;
  qword_101AD9960 = 0xE100000000000000;
  qword_101AD9968 = swift_getKeyPath();
  qword_101AD9970 = 99;
  qword_101AD9978 = 0xE100000000000000;
  qword_101AD9980 = swift_getKeyPath();
  unk_101AD9988 = 100;
  qword_101AD9990 = 0xE100000000000000;
  qword_101AD9998 = swift_getKeyPath();
  qword_101AD99A0 = 101;
  qword_101AD99A8 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD99B0 = result;
  return result;
}

uint64_t sub_1012F58BC@<X0>(void *a1@<X8>)
{
  if (qword_1019F2C20 != -1)
  {
    v16 = a1;
    swift_once();
    a1 = v16;
  }

  v1 = *algn_101AD9948;
  v3 = qword_101AD9950;
  v2 = unk_101AD9958;
  v4 = qword_101AD9960;
  v5 = qword_101AD9968;
  v6 = qword_101AD9970;
  v7 = qword_101AD9978;
  v9 = qword_101AD9980;
  v8 = unk_101AD9988;
  v10 = qword_101AD9990;
  v11 = qword_101AD9998;
  v12 = qword_101AD99A0;
  v13 = qword_101AD99A8;
  v14 = qword_101AD99B0;
  *a1 = qword_101AD9940;
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

uint64_t sub_1012F59D0(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return static CRStruct_5.fieldKeys.getter(a1, v2);
}

uint64_t sub_1012F5A40(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33950, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1012F5AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012F5B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1012F5BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.apply(_:)(a1, a2, v4);
}

uint64_t sub_1012F5C28()
{
  sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.hasDelta(from:)();
}

uint64_t sub_1012F5CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1012F5D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F5DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1012F5E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F5EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012F5F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1012F5FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1012F6048()
{
  sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.needToFinalizeTimestamps()();
}

uint64_t sub_1012F60B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012F6130()
{
  sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.merge(_:)();
}

uint64_t sub_1012F61B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012F6438(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return CRStruct_5.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1012F69E8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
    CRRegister.wrappedValue.getter();
    CRRegister.wrappedValue.getter();
    v9 = static UUID.== infix(_:_:)();
    v8(v4, v0);
    v8(v6, v0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1012F6BB4()
{
  sub_1005B981C(&qword_1019F4858);
  CRMaxRegister.wrappedValue.getter();
  CRMaxRegister.wrappedValue.getter();
  type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_1019F4850);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  return 1;
}

uint64_t sub_1012F6CEC()
{
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  if (v11 == v10 && (type metadata accessor for CRLUserBoardMetadataCRDTData(0), CRRegister.wrappedValue.getter(), CRRegister.wrappedValue.getter(), v9 == v8) && (CRRegister.wrappedValue.getter(), CRRegister.wrappedValue.getter(), v7 == v6) && (CRRegister.wrappedValue.getter(), CRRegister.wrappedValue.getter(), v5 == v4))
  {
    CRRegister.wrappedValue.getter();
    CRRegister.wrappedValue.getter();
    v0 = v3 ^ v2 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1012F6E64(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_1005B981C(&unk_1019F4B90);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  memcpy(v25, v57, 0x370uLL);
  memcpy(&v25[110], v58, 0x370uLL);
  memcpy(v59, v57, sizeof(v59));
  if (sub_1000C0F9C(v59) == 1)
  {
    memcpy(v24, &v25[110], 0x370uLL);
    if (sub_1000C0F9C(v24) != 1)
    {
      goto LABEL_15;
    }

    memcpy(v46, v25, 0x370uLL);
    sub_10000CAAC(v46, &qword_1019F4B88);
  }

  else
  {
    memcpy(v24, &v25[110], 0x370uLL);
    if (sub_1000C0F9C(v24) == 1)
    {
      goto LABEL_15;
    }

    memcpy(v28, &v25[110], 0x370uLL);
    memcpy(v56, &v25[110], sizeof(v56));
    memcpy(v55, v25, sizeof(v55));
    sub_10000BE14(v57, v46, &qword_1019F4B88);
    sub_10000BE14(v58, v46, &qword_1019F4B88);
    v1 = sub_10109F874(v55, v56);
    sub_10000CAAC(v28, &qword_1019F4B88);
    sub_10000CAAC(v58, &qword_1019F4B88);
    sub_10000CAAC(v57, &qword_1019F4B88);
    memcpy(v46, v25, 0x370uLL);
    sub_10000CAAC(v46, &qword_1019F4B88);
    if ((v1 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  type metadata accessor for CRLBoardInsertStyleData(0);
  CRRegister.wrappedValue.getter();
  memcpy(v43, v25, sizeof(v43));
  CRRegister.wrappedValue.getter();
  memcpy(v44, v25, sizeof(v44));
  memcpy(v25, v43, 0x370uLL);
  memcpy(&v25[110], v44, 0x370uLL);
  memcpy(v45, v43, sizeof(v45));
  if (sub_1000C0F9C(v45) == 1)
  {
    memcpy(v24, &v25[110], 0x370uLL);
    if (sub_1000C0F9C(v24) != 1)
    {
      goto LABEL_15;
    }

    memcpy(v46, v25, 0x370uLL);
    sub_10000CAAC(v46, &qword_1019F4B88);
    goto LABEL_11;
  }

  memcpy(v24, &v25[110], 0x370uLL);
  if (sub_1000C0F9C(v24) == 1)
  {
    goto LABEL_15;
  }

  memcpy(v28, &v25[110], 0x370uLL);
  memcpy(v54, &v25[110], sizeof(v54));
  memcpy(v53, v25, sizeof(v53));
  sub_10000BE14(v43, v46, &qword_1019F4B88);
  sub_10000BE14(v44, v46, &qword_1019F4B88);
  v2 = sub_10109F874(v53, v54);
  sub_10000CAAC(v28, &qword_1019F4B88);
  sub_10000CAAC(v44, &qword_1019F4B88);
  sub_10000CAAC(v43, &qword_1019F4B88);
  memcpy(v46, v25, 0x370uLL);
  sub_10000CAAC(v46, &qword_1019F4B88);
  if (v2)
  {
LABEL_11:
    CRRegister.wrappedValue.getter();
    memcpy(v40, v25, sizeof(v40));
    CRRegister.wrappedValue.getter();
    memcpy(v41, v25, sizeof(v41));
    memcpy(v25, v40, 0x370uLL);
    memcpy(&v25[110], v41, 0x370uLL);
    memcpy(v42, v40, sizeof(v42));
    if (sub_1000C0F9C(v42) == 1)
    {
      memcpy(v24, &v25[110], 0x370uLL);
      if (sub_1000C0F9C(v24) == 1)
      {
        memcpy(v46, v25, 0x370uLL);
        sub_10000CAAC(v46, &qword_1019F4B88);
        goto LABEL_21;
      }
    }

    else
    {
      memcpy(v24, &v25[110], 0x370uLL);
      if (sub_1000C0F9C(v24) != 1)
      {
        memcpy(v28, &v25[110], 0x370uLL);
        memcpy(v52, &v25[110], sizeof(v52));
        memcpy(v51, v25, sizeof(v51));
        sub_10000BE14(v40, v46, &qword_1019F4B88);
        sub_10000BE14(v41, v46, &qword_1019F4B88);
        v7 = sub_10109F874(v51, v52);
        sub_10000CAAC(v28, &qword_1019F4B88);
        sub_10000CAAC(v41, &qword_1019F4B88);
        sub_10000CAAC(v40, &qword_1019F4B88);
        memcpy(v46, v25, 0x370uLL);
        sub_10000CAAC(v46, &qword_1019F4B88);
        if ((v7 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_21:
        sub_1005B981C(&qword_1019F4B70);
        CRRegister.wrappedValue.getter();
        memcpy(v36, v25, sizeof(v36));
        CRRegister.wrappedValue.getter();
        memcpy(v37, v25, sizeof(v37));
        memcpy(v35, v36, sizeof(v35));
        v8 = v36[47];
        memcpy(v24, v37, 0x180uLL);
        memcpy(v38, v36, sizeof(v38));
        v39 = v36[47];
        if (sub_1000B9764(v38) == 1)
        {
          memcpy(v25, v24, 0x180uLL);
          if (sub_1000B9764(v25) == 1)
          {
            memcpy(v46, v35, 0x178uLL);
            v46[47] = v8;
            sub_10000CAAC(v46, &qword_1019F4B68);
            goto LABEL_24;
          }
        }

        else
        {
          memcpy(v25, v24, 0x180uLL);
          if (sub_1000B9764(v25) != 1)
          {
            memcpy(v46, v24, 0x180uLL);
            memcpy(v50, v24, sizeof(v50));
            v9 = v46[47];
            memcpy(v49, v35, sizeof(v49));
            sub_10000BE14(v36, v28, &qword_1019F4B68);
            sub_10000BE14(v37, v28, &qword_1019F4B68);
            if ((sub_10110AAF8(v49, v50) & 1) == 0)
            {
              v11 = &qword_1019F4B68;
              sub_10000CAAC(v46, &qword_1019F4B68);
              sub_10000CAAC(v37, &qword_1019F4B68);
              sub_10000CAAC(v36, &qword_1019F4B68);
              v12 = v35;
              goto LABEL_45;
            }

            v10 = sub_100B3216C(v8, v9);
            sub_10000CAAC(v46, &qword_1019F4B68);
            sub_10000CAAC(v37, &qword_1019F4B68);
            sub_10000CAAC(v36, &qword_1019F4B68);
            memcpy(v28, v35, 0x178uLL);
            v28[47] = v8;
            sub_10000CAAC(v28, &qword_1019F4B68);
            if ((v10 & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_24:
            sub_1005B981C(&qword_1019F4B58);
            CRRegister.wrappedValue.getter();
            CRRegister.wrappedValue.getter();
            memcpy(v29, v30, sizeof(v29));
            v8 = v31;
            memcpy(v24, v32, 0x180uLL);
            memcpy(v33, v30, sizeof(v33));
            v34 = v31;
            if (sub_1000B9764(v33) == 1)
            {
              memcpy(v25, v24, 0x180uLL);
              if (sub_1000B9764(v25) == 1)
              {
                memcpy(v46, v29, 0x178uLL);
                v46[47] = v8;
                sub_10000CAAC(v46, &qword_1019F4B50);
LABEL_27:
                sub_1005B981C(&qword_1019F4B80);
                CRRegister.wrappedValue.getter();
                CRRegister.wrappedValue.getter();
                memcpy(v25, v26, 0x378uLL);
                memcpy(&v25[111], v27, 0x378uLL);
                memcpy(v28, v26, sizeof(v28));
                if (sub_1000C0F9C(v28) == 1)
                {
                  memcpy(v24, &v25[111], 0x378uLL);
                  if (sub_1000C0F9C(v24) == 1)
                  {
                    memcpy(v46, v25, sizeof(v46));
                    sub_10000CAAC(v46, &qword_1019F4B78);
LABEL_47:
                    sub_1005B981C(&qword_1019F4B48);
                    CRRegister.wrappedValue.getter();
                    CRRegister.wrappedValue.getter();
                    memcpy(v25, __src, 0x178uLL);
                    memcpy(&v25[47], v23, 0x178uLL);
                    memcpy(v16, __src, 0x178uLL);
                    if (sub_1011255E4(v16) == 1)
                    {
                      memcpy(v18, &v25[47], 0x178uLL);
                      if (sub_1011255E4(v18) == 1)
                      {
                        memcpy(v17, v25, 0x178uLL);
                        sub_10000CAAC(v17, &qword_1019F4B40);
                        v5 = 1;
                        return v5 & 1;
                      }
                    }

                    else
                    {
                      memcpy(v21, &v25[47], sizeof(v21));
                      if (sub_1011255E4(v21) != 1)
                      {
                        memcpy(v19, &v25[47], sizeof(v19));
                        memcpy(v18, &v25[47], 0x178uLL);
                        memcpy(v17, v25, 0x178uLL);
                        sub_10000BE14(__src, v20, &qword_1019F4B40);
                        sub_10000BE14(v23, v20, &qword_1019F4B40);
                        v5 = sub_101211B14(v17, v18);
                        sub_10000CAAC(v19, &qword_1019F4B40);
                        sub_10000CAAC(v23, &qword_1019F4B40);
                        sub_10000CAAC(__src, &qword_1019F4B40);
                        memcpy(v20, v25, sizeof(v20));
                        sub_10000CAAC(v20, &qword_1019F4B40);
                        return v5 & 1;
                      }
                    }

                    memcpy(v18, v25, 0x2F0uLL);
                    v3 = &unk_101A33AE0;
                    v4 = v18;
                    goto LABEL_17;
                  }
                }

                else
                {
                  memcpy(v18, &v25[111], sizeof(v18));
                  if (sub_1000C0F9C(v18) != 1)
                  {
                    memcpy(v16, &v25[111], sizeof(v16));
                    memcpy(v24, &v25[111], 0x378uLL);
                    memcpy(v46, v25, sizeof(v46));
                    sub_10000BE14(v26, v17, &qword_1019F4B78);
                    sub_10000BE14(v27, v17, &qword_1019F4B78);
                    v15 = sub_101266AD0(v46, v24);
                    sub_10000CAAC(v16, &qword_1019F4B78);
                    sub_10000CAAC(v27, &qword_1019F4B78);
                    sub_10000CAAC(v26, &qword_1019F4B78);
                    memcpy(v17, v25, sizeof(v17));
                    sub_10000CAAC(v17, &qword_1019F4B78);
                    if ((v15 & 1) == 0)
                    {
                      goto LABEL_18;
                    }

                    goto LABEL_47;
                  }
                }

                memcpy(v24, v25, sizeof(v24));
                v3 = &unk_101A33AD8;
                goto LABEL_16;
              }

              goto LABEL_36;
            }

            memcpy(v25, v24, 0x180uLL);
            if (sub_1000B9764(v25) == 1)
            {
LABEL_36:
              memcpy(v25, v29, 0x178uLL);
              v25[47] = v8;
              memcpy(&v25[48], v24, 0x180uLL);
              v3 = &unk_101A33AD0;
              goto LABEL_37;
            }

            memcpy(v46, v24, 0x180uLL);
            memcpy(v48, v24, sizeof(v48));
            v13 = v46[47];
            memcpy(v47, v29, sizeof(v47));
            sub_10000BE14(v30, v28, &qword_1019F4B50);
            sub_10000BE14(v32, v28, &qword_1019F4B50);
            if (sub_10110AAF8(v47, v48))
            {
              v14 = sub_100B3216C(v8, v13);
              sub_10000CAAC(v46, &qword_1019F4B50);
              sub_10000CAAC(v32, &qword_1019F4B50);
              sub_10000CAAC(v30, &qword_1019F4B50);
              memcpy(v28, v29, 0x178uLL);
              v28[47] = v8;
              sub_10000CAAC(v28, &qword_1019F4B50);
              if ((v14 & 1) == 0)
              {
                goto LABEL_18;
              }

              goto LABEL_27;
            }

            v11 = &qword_1019F4B50;
            sub_10000CAAC(v46, &qword_1019F4B50);
            sub_10000CAAC(v32, &qword_1019F4B50);
            sub_10000CAAC(v30, &qword_1019F4B50);
            v12 = v29;
LABEL_45:
            memcpy(v28, v12, 0x178uLL);
            v28[47] = v8;
            v4 = v28;
            v3 = v11;
            goto LABEL_17;
          }
        }

        memcpy(v25, v35, 0x178uLL);
        v25[47] = v8;
        memcpy(&v25[48], v24, 0x180uLL);
        v3 = &unk_101A33AC8;
LABEL_37:
        v4 = v25;
        goto LABEL_17;
      }
    }

LABEL_15:
    memcpy(v24, v25, 0x6E0uLL);
    v3 = &unk_101A33AC0;
LABEL_16:
    v4 = v24;
LABEL_17:
    sub_10000CAAC(v4, v3);
  }

LABEL_18:
  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1012F80F4()
{
  v33 = type metadata accessor for UUID();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019F6990);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v31 = _swiftEmptyArrayStorage;
  v8 = sub_100BD5554(_swiftEmptyArrayStorage);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = (v0 + 48);
  v28 = v0;
  v29 = (v0 + 32);
  v34 = v8;

  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_10000BE14(*(v34 + 56) + *(v32 + 72) * (v18 | (v16 << 6)), v7, &qword_1019F6990);
    sub_10063FD1C(v7, v4);
    if ((*v14)(v4, 1, v33) == 1)
    {
      result = sub_10000CAAC(v4, &qword_1019F6990);
    }

    else
    {
      v19 = *v29;
      (*v29)(v30, v4, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100B356D0(0, v31[2] + 1, 1, v31);
      }

      v21 = v31[2];
      v20 = v31[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v27 = v21 + 1;
        v25 = sub_100B356D0(v20 > 1, v21 + 1, 1, v31);
        v22 = v27;
        v31 = v25;
      }

      v23 = v30;
      v24 = v31;
      v31[2] = v22;
      result = (v19)(v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21, v23, v33);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      v26 = sub_100E93A84(v31);

      return v26;
    }

    v12 = *(v9 + 8 * v16);
    ++v17;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012F8468()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1012F84A8(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return _swift_task_switch(sub_1012F84CC, v2, 0);
}

uint64_t sub_1012F84CC()
{
  v1 = v0[39];
  v2 = v1[2];
  if (v2)
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for UInt64;
    *(inited + 64) = &protocol witness table for UInt64;
    *(inited + 32) = v2;
    *(inited + 96) = &type metadata for UInt64;
    *(inited + 104) = &protocol witness table for UInt64;
    *(inited + 72) = 0;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v5, "Received an encrypted message with version (%d) that is greater than the last supported version (%d) by this device. Dropping the message", 137, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v1[3];
    v9 = v1[4];
    v10 = swift_task_alloc();
    v0[42] = v10;
    *v10 = v0;
    v10[1] = sub_1012F86A0;

    return sub_1007B2A98(v8, v9);
  }
}

uint64_t sub_1012F86A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = v2;

  v6 = v4[41];
  if (v2)
  {
    v7 = sub_1012F8B88;
  }

  else
  {
    v7 = sub_1012F87D8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1012F87D8()
{
  v1 = *(v0[41] + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation__coder);
  type metadata accessor for CRLRealTimeMessage();
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  if (*(v1 + 16) != 1)
  {
    sub_1012FE520(&unk_101A33EA0, type metadata accessor for CRLRealTimeMessage);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (!v2)
    {
      v6 = v0[38];
      goto LABEL_12;
    }

LABEL_5:
    sub_10002640C(v0[43], v0[44]);
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v9 = Error.publicDescription.getter(v0[31], v0[32]);
    v11 = v10;
    *(inited + 56) = &type metadata for String;
    v12 = sub_1000053B0();
    *(inited + 64) = v12;
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    swift_getErrorValue();
    v13 = Error.fullDescription.getter(v0[34]);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v12;
    *(inited + 72) = v13;
    *(inited + 80) = v14;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v7, &_mh_execute_header, v15, "Failed to decrypt a real-time message with error %{public}@ <%@>", 64, 2, inited);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    goto LABEL_8;
  }

  sub_100024E98(v0[43], v0[44]);
  v5 = sub_100B8E490(v4, v3);
  if (v2)
  {
    goto LABEL_5;
  }

  v6 = v5;
LABEL_12:
  v0[46] = v6;
  v18 = v0[41] + OBJC_IVAR____TtC8Freeform34CRLRealTimeMessengerImplementation_helper;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[47] = Strong;
  if (Strong)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v26 = (*(v20 + 32) + **(v20 + 32));
    v22 = swift_task_alloc();
    v0[48] = v22;
    *v22 = v0;
    v22[1] = sub_1012F8D30;
    v23 = v0[40];

    return v26(v6, v23, ObjectType, v20);
  }

  v25 = v0[43];
  v24 = v0[44];

  sub_10002640C(v25, v24);
LABEL_8:
  v16 = v0[1];

  return v16();
}

uint64_t sub_1012F8B88()
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v3 = Error.publicDescription.getter(v0[31], v0[32]);
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.fullDescription.getter(v0[34]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Failed to decrypt a real-time message with error %{public}@ <%@>", 64, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1012F8D30()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = sub_1012F8EC8;
  }

  else
  {
    v5 = *(v2 + 328);
    swift_unknownObjectRelease();
    v4 = sub_1012F8E58;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1012F8E58()
{
  v1 = v0[43];
  v2 = v0[44];

  sub_10002640C(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1012F8EC8()
{
  v2 = v0[43];
  v1 = v0[44];

  sub_10002640C(v2, v1);
  swift_unknownObjectRelease();
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v5 = Error.publicDescription.getter(v0[31], v0[32]);
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  swift_getErrorValue();
  v9 = Error.fullDescription.getter(v0[34]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v11, "Failed to decrypt a real-time message with error %{public}@ <%@>", 64, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v12 = v0[1];

  return v12();
}