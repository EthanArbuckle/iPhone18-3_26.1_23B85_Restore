unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CRLBoardDataStore.SchemaVersion@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CRLBoardDataStore.SchemaVersion.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized CRLStore._schemaVersion()()
{
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = v5[13];
  v89 = enum case for DispatchPredicate.onQueue(_:);
  v90 = v10;
  v91 = v5 + 13;
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v13 = v5[1];
  v12 = v5 + 1;
  v92 = v13;
  v93 = v8;
  v13(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_48;
  }

  v14 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v17 = specialized SQLiteStatement.init(database:query:)(v16, 0xD000000000000013, 0x8000000000040690);
  v2 = v1;

  if (!v1)
  {
    v18 = *(*(v17 + 16) + 32);
    v19 = v17;
    v8 = v93;
    *v93 = v18;
    v90(v8, v89, v4);
    v20 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    v92(v8, v4);
    if ((v18 & 1) == 0)
    {
      goto LABEL_49;
    }

    type metadata accessor for SQLiteRowIterator();
    v21 = swift_initStackObject();
    v21[4] = 0;
    v21[5] = 1;
    v21[2] = v19;
    v21[3] = 0;
    v22 = SQLiteRowIterator.next()();
    swift_setDeallocating();
    outlined consume of SQLiteError?(v21[3], v21[4], v21[5]);
    v23 = v19;
    if (v22)
    {
      v96 = SQLiteRow.getInt32(at:)(0);
      value = v96.value;
      is_nil = v96.is_nil;

      if (is_nil)
      {
        value = 0;
      }
    }

    else
    {
      value = 0;
    }

    v26 = specialized CRLBoardDataStore.SchemaVersion.init(rawValue:)(value);
    if (v26 == 10)
    {
      v85 = v23;
      v86 = v12;
      v87 = v4;
      v27 = value;
      v28 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_3A860;
      *(v29 + 56) = &type metadata for Int;
      *(v29 + 64) = &protocol witness table for Int;
      *(v29 + 32) = v27;
      v30 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v28, &dword_0, v30, "Invalid schema version detected: %{public}d", 43, 2, v29);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((v29 + 32));
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_3A290;
      v84 = v27;
      *(v31 + 32) = v27;
      v94 = v31 + 32;
      v12 = v31;
      *(v31 + 56) = &type metadata for Int;
      *(v31 + 64) = &protocol witness table for Int;
      v32 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName);
      v33 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName + 8);
      *(v31 + 96) = &type metadata for String;
      v88 = lazy protocol witness table accessor for type String and conformance String();
      v12[13] = v88;
      v12[9] = v32;
      v12[10] = v33;
      v34 = objc_opt_self();

      v83 = v34;
      LODWORD(v3) = [v34 _atomicIncrementAssertCount];
      v95 = [objc_allocWithZone(NSString) init];
      specialized withVaList<A>(_:_:)(v12, &v95);
      StaticString.description.getter();
      v4 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      v36 = [v35 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v37;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v38 = static OS_os_log.crlAssert;
        v39 = swift_initStackObject();
        *(v39 + 16) = xmmword_3AA20;
        *(v39 + 56) = &type metadata for Int32;
        *(v39 + 64) = &protocol witness table for Int32;
        *(v39 + 32) = v3;
        v40 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
        *(v39 + 96) = v40;
        v41 = lazy protocol witness table accessor for type NSString and conformance NSObject();
        *(v39 + 72) = v4;
        v42 = v88;
        *(v39 + 136) = &type metadata for String;
        *(v39 + 144) = v42;
        *(v39 + 104) = v41;
        *(v39 + 112) = v8;
        *(v39 + 120) = v2;
        *(v39 + 176) = &type metadata for UInt;
        *(v39 + 184) = &protocol witness table for UInt;
        *(v39 + 152) = 130;
        v43 = v95;
        *(v39 + 216) = v40;
        *(v39 + 224) = v41;
        *(v39 + 192) = v43;
        v44 = v4;
        v45 = v43;
        v46 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v38, &dword_0, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
        swift_setDeallocating();
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
        swift_arrayDestroy();
        v47 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v38, &dword_0, v47, "Invalid schema version detected: %{public}d for database %{public}@", 67, 2, v12);

        type metadata accessor for __VaListBuilder();
        v48 = swift_allocObject();
        v49 = v12;
        v12 = v48;
        v48[2] = 8;
        v48[3] = 0;
        v50 = v48 + 3;
        v48[4] = 0;
        v48[5] = 0;
        v88 = v49;
        v3 = v49[2];
        if (!v3)
        {
LABEL_39:
          v70 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v71 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v72 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v73 = String._bridgeToObjectiveC()();

          [v83 handleFailureInFunction:v71 file:v72 lineNumber:130 isFatal:0 format:v73 args:v70];

          swift_setDeallocating();
          swift_arrayDestroy();
          lazy protocol witness table accessor for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError();
          swift_allocError();
          *v74 = v84;
          swift_willThrow();
          v75 = v85;
          v76 = *(*(v85 + 16) + 32);
          v77 = v93;
          *v93 = v76;
          v78 = v87;
          v90(v77, v89, v87);
          v79 = v76;
          LOBYTE(v76) = _dispatchPreconditionTest(_:)();
          v92(v77, v78);
          if (v76)
          {
            swift_beginAccess();
            v80 = *(v75 + 24);
            inited = v75;
            if (v80)
            {
              sqlite3_finalize(v80);
              *(v75 + 24) = 0;
            }

            goto LABEL_42;
          }

LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
        }

        v8 = 0;
        while (1)
        {
          v51 = (v94 + 40 * v8);
          v2 = v51[4];
          __swift_project_boxed_opaque_existential_1(v51, v51[3]);
          v52 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v4 = *v50;
          v53 = *(v52 + 16);
          v54 = __OFADD__(*v50, v53);
          v55 = *v50 + v53;
          if (v54)
          {
            break;
          }

          v56 = v52;
          v57 = v12[4];
          if (v57 >= v55)
          {
            goto LABEL_28;
          }

          if (v57 + 0x4000000000000000 < 0)
          {
            goto LABEL_46;
          }

          v2 = v12[5];
          if (2 * v57 > v55)
          {
            v55 = 2 * v57;
          }

          v12[4] = v55;
          if ((v55 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_47;
          }

          v58 = swift_slowAlloc();
          v12[5] = v58;
          if (v2)
          {
            if (v58 != v2 || v58 >= &v2[8 * v4])
            {
              memmove(v58, v2, 8 * v4);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_28:
            v58 = v12[5];
          }

          if (!v58)
          {
            goto LABEL_53;
          }

          v60 = *(v56 + 16);
          if (v60)
          {
            v61 = (v56 + 32);
            v62 = *v50;
            while (1)
            {
              v63 = *v61++;
              *&v58[8 * v62] = v63;
              v62 = *v50 + 1;
              if (__OFADD__(*v50, 1))
              {
                break;
              }

              *v50 = v62;
              if (!--v60)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
            break;
          }

LABEL_13:

          if (++v8 == v3)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        swift_once();
      }
    }

    inited = v26;
    v64 = v23;
    v65 = *(*(v23 + 16) + 32);
    v66 = v93;
    *v93 = v65;
    v90(v66, v89, v4);
    v67 = v65;
    v68 = _dispatchPreconditionTest(_:)();
    v92(v66, v4);
    if ((v68 & 1) == 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    swift_beginAccess();
    v69 = *(v64 + 24);
    if (v69)
    {
      sqlite3_finalize(v69);
      *(v64 + 24) = 0;
    }

LABEL_42:
  }

  return inited;
}

uint64_t CRLBoardDataStore._createDatabaseSchema()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3 + 13;
  v63 = v3[13];
  (v63)(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v61 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v62 = v3[1];
  (v62)(v6, v2);
  if (v7)
  {
    if (one-time initialization token for boardStore == -1)
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
  v11 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Creating schema for a new board database", 40, 2, &_swiftEmptyArrayStorage);
  result = specialized CRLStore._schemaVersion()();
  if (v1)
  {
    return result;
  }

  v13 = result;
  v58 = v8;
  v59 = 0;
  v60 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 32) = v13;
  *(inited + 16) = xmmword_3A290;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 1;
  if (!v13)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    swift_arrayDestroy();
    v15 = *(v60 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    v16 = swift_initStackObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;

    SQLTransaction.begin()();
    if (v17)
    {
    }

    v57[1] = v16;
    v59 = v15;
    CRLBoardDataStore._createBoardsTable()();
    CRLBoardDataStore._createBoardsMetadataTable()();
    CRLBoardDataStore._createBoardItemsTable()();
    CRLBoardDataStore._createFreehandDrawingBucketsTable()();
    CRLBoardDataStore._createKeyValueDataTable()();
    CRLBoardDataStore._createAssetsTable()();
    CRLBoardDataStore._createAssetReferencesTable()();
    CRLBoardDataStore._createCommandHistoryItemsTable()();
    CRLBoardDataStore._createCommandHistoryAssetReferencesTable()();
    v18 = 0;
    v20 = v61;
    *v6 = v61;
    (v63)(v6, v58, v2);
    v19 = v20;
    LODWORD(v20) = _dispatchPreconditionTest(_:)();
    (v62)(v6, v2);
    if (v20)
    {
      specialized CRLStore._setRawSchemaVersion(rawVersion:)(1);
      SQLTransaction.commit()();
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v63 = (inited + 32);
  v21 = inited;
  v61 = objc_opt_self();
  LODWORD(v20) = [v61 _atomicIncrementAssertCount];
  v64 = [objc_allocWithZone(NSString) init];
  v62 = v21;
  specialized withVaList<A>(_:_:)(v21, &v64);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v22 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v24;

  if (one-time initialization token for crlAssert != -1)
  {
LABEL_43:
    swift_once();
  }

  v25 = static OS_os_log.crlAssert;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_3AA20;
  *(v26 + 56) = &type metadata for Int32;
  *(v26 + 64) = &protocol witness table for Int32;
  *(v26 + 32) = v20;
  v27 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
  *(v26 + 96) = v27;
  v28 = lazy protocol witness table accessor for type NSString and conformance NSObject();
  *(v26 + 104) = v28;
  *(v26 + 72) = v2;
  *(v26 + 136) = &type metadata for String;
  v29 = lazy protocol witness table accessor for type String and conformance String();
  *(v26 + 112) = v18;
  *(v26 + 120) = v9;
  *(v26 + 176) = &type metadata for UInt;
  *(v26 + 184) = &protocol witness table for UInt;
  *(v26 + 144) = v29;
  *(v26 + 152) = 746;
  v30 = v64;
  *(v26 + 216) = v27;
  *(v26 + 224) = v28;
  *(v26 + 192) = v30;
  v31 = v2;
  v32 = v30;
  v33 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v25, &dword_0, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v26);

  v34 = static os_log_type_t.error.getter();
  v35 = v25;
  v36 = v62;
  _CRLLog(_:dso:type:format:_:)(v35, &dword_0, v34, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v62);

  specialized withVaList<A>(_:_:)(v36, "Current schema version %{public}d before migration to %{public}d is unexpected");
  type metadata accessor for __VaListBuilder();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v9 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v18 = v36[2];
  if (!v18)
  {
    goto LABEL_45;
  }

  v37 = 0;
  while (1)
  {
    v38 = &v63[40 * v37];
    v39 = *(v38 + 4);
    LODWORD(v20) = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
    v40 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v41 = *v9;
    v42 = *(v40 + 16);
    v43 = __OFADD__(*v9, v42);
    v44 = *v9 + v42;
    if (v43)
    {
      goto LABEL_39;
    }

    v45 = v40;
    v20 = v2[4];
    if (v20 >= v44)
    {
      goto LABEL_31;
    }

    if (v20 + 0x4000000000000000 < 0)
    {
      goto LABEL_41;
    }

    v46 = v2[5];
    if (2 * v20 > v44)
    {
      v44 = 2 * v20;
    }

    v2[4] = v44;
    if ((v44 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_42;
    }

    v47 = swift_slowAlloc();
    v2[5] = v47;
    if (v46)
    {
      if (v47 != v46 || v47 >= &v46[8 * v41])
      {
        memmove(v47, v46, 8 * v41);
      }

      LODWORD(v20) = v2;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_31:
      v47 = v2[5];
    }

    if (!v47)
    {
      break;
    }

    v49 = *(v45 + 16);
    if (v49)
    {
      v50 = (v45 + 32);
      v51 = *v9;
      while (1)
      {
        v52 = *v50++;
        *&v47[8 * v51] = v52;
        v51 = *v9 + 1;
        if (__OFADD__(*v9, 1))
        {
          break;
        }

        *v9 = v51;
        if (!--v49)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_16:

    if (++v37 == v18)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_45:
  v53 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v56 = String._bridgeToObjectiveC()();

  [v61 handleFailureInFunction:v54 file:v55 lineNumber:746 isFatal:1 format:v56 args:v53];

  CRLCrashBreakpoint();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CRLBoardDataStore._migrateToMinRequiredVersionForGoodEnoughFidelitySchema()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v65 = v4[13];
  (v65)(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v63 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v64 = v4[1];
  (v64)(v7, v3);
  if (v8)
  {
    v62 = v9;
    if (one-time initialization token for boardStore == -1)
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
  v11 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Migrating database to minRequiredVersionForGoodEnoughFidelity schema version", 76, 2, &_swiftEmptyArrayStorage);
  result = specialized CRLStore._schemaVersion()();
  if (v1)
  {
    return result;
  }

  v13 = result;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3A290;
  *(inited + 32) = v13;
  v15 = (inited + 32);
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 2;
  if (v13 != 1)
  {
LABEL_15:
    v65 = v15;
    v21 = inited;
    v63 = objc_opt_self();
    LODWORD(v22) = [v63 _atomicIncrementAssertCount];
    v66 = [objc_allocWithZone(NSString) init];
    v64 = v21;
    specialized withVaList<A>(_:_:)(v21, &v66);
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (one-time initialization token for crlAssert != -1)
    {
LABEL_44:
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_3AA20;
    *(v30 + 56) = &type metadata for Int32;
    *(v30 + 64) = &protocol witness table for Int32;
    *(v30 + 32) = v22;
    v31 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
    *(v30 + 96) = v31;
    v32 = lazy protocol witness table accessor for type NSString and conformance NSObject();
    *(v30 + 104) = v32;
    *(v30 + 72) = v23;
    *(v30 + 136) = &type metadata for String;
    v33 = lazy protocol witness table accessor for type String and conformance String();
    *(v30 + 112) = v26;
    *(v30 + 120) = v28;
    *(v30 + 176) = &type metadata for UInt;
    *(v30 + 184) = &protocol witness table for UInt;
    *(v30 + 144) = v33;
    *(v30 + 152) = 639;
    v34 = v66;
    *(v30 + 216) = v31;
    *(v30 + 224) = v32;
    *(v30 + 192) = v34;
    v35 = v23;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    _CRLLog(_:dso:type:format:_:)(v29, &dword_0, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v30);

    v38 = static os_log_type_t.error.getter();
    v39 = v29;
    v40 = v64;
    _CRLLog(_:dso:type:format:_:)(v39, &dword_0, v38, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v64);

    specialized withVaList<A>(_:_:)(v40, "Current schema version %{public}d before migration to %{public}d is unexpected");
    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v28 = v22 + 3;
    v22[4] = 0;
    v22[5] = 0;
    v26 = v40[2];
    if (!v26)
    {
LABEL_46:
      v56 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v58 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v59 = String._bridgeToObjectiveC()();

      [v63 handleFailureInFunction:v57 file:v58 lineNumber:639 isFatal:1 format:v59 args:v56];

      CRLCrashBreakpoint();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v41 = 0;
    while (1)
    {
      v42 = &v65[40 * v41];
      v23 = *(v42 + 3);
      __swift_project_boxed_opaque_existential_1(v42, v23);
      v43 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v44 = *v28;
      v45 = *(v43 + 16);
      v46 = __OFADD__(*v28, v45);
      v47 = *v28 + v45;
      if (v46)
      {
        goto LABEL_41;
      }

      v23 = v43;
      v48 = v22[4];
      if (v48 >= v47)
      {
        goto LABEL_33;
      }

      if (v48 + 0x4000000000000000 < 0)
      {
        goto LABEL_42;
      }

      v49 = v22[5];
      if (2 * v48 > v47)
      {
        v47 = 2 * v48;
      }

      v22[4] = v47;
      if ((v47 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_43;
      }

      v50 = swift_slowAlloc();
      v22[5] = v50;
      if (v49)
      {
        break;
      }

LABEL_34:
      if (!v50)
      {
        __break(1u);
        goto LABEL_46;
      }

      v52 = v23[2];
      if (v52)
      {
        v53 = v23 + 4;
        v54 = *v28;
        while (1)
        {
          v55 = *v53++;
          *&v50[8 * v54] = v55;
          v54 = *v28 + 1;
          if (__OFADD__(*v28, 1))
          {
            break;
          }

          *v28 = v54;
          if (!--v52)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_18:

      if (++v41 == v26)
      {
        goto LABEL_46;
      }
    }

    if (v50 != v49 || v50 >= &v49[8 * v44])
    {
      memmove(v50, v49, 8 * v44);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_33:
    v50 = v22[5];
    goto LABEL_34;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  swift_arrayDestroy();
  v15 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLTransaction();
  v16 = swift_initStackObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;

  SQLTransaction.begin()();
  if (!v17)
  {
    CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityToBoardsTable()();
    CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityToBoardItemsTable()();
    CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityForBucketToFreehandDrawingBucketsTable()();
    CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityForItemsToFreehandDrawingBucketsTable()();
    v61 = 0;
    v18 = v63;
    *v7 = v63;
    (v65)(v7, v62, v3);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    inited = (v64)(v7, v3);
    if (v18)
    {
      v20 = v61;
      specialized CRLStore._setRawSchemaVersion(rawVersion:)(2);
      if (v20)
      {
        SQLTransaction.rollback()();
        swift_willThrow();
      }

      else
      {
        SQLTransaction.commit()();
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t CRLBoardDataStore._migrateToMinRequiredVersionForFullFidelitySchema()()
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = v4[13];
  v156 = enum case for DispatchPredicate.onQueue(_:);
  v157 = v9;
  v158 = v4 + 13;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v155 = v3;
  v159 = v11;
  v160 = v4 + 1;
  (v11)(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (one-time initialization token for boardStore != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v12 = static OS_os_log.boardStore;
    v13 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Migrating database to minRequiredVersionForFullFidelity schema version", 70, 2, &_swiftEmptyArrayStorage);
    result = specialized CRLStore._schemaVersion()();
    if (v2)
    {
      return result;
    }

    v15 = result;
    v146 = v10;
    v153 = v0;
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    v143 = xmmword_3A290;
    *(inited + 16) = xmmword_3A290;
    *(inited + 32) = v15;
    v17 = inited + 32;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = 3;
    if (v15 != 2)
    {
      v77 = inited;
      v159 = objc_opt_self();
      LODWORD(v78) = [v159 _atomicIncrementAssertCount];
      v162 = [objc_allocWithZone(NSString) init];
      v160 = v77;
      specialized withVaList<A>(_:_:)(v77, &v162);
      StaticString.description.getter();
      v76 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v79 = String._bridgeToObjectiveC()();

      v80 = [v79 lastPathComponent];

      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_86;
      }

      while (1)
      {
        v84 = static OS_os_log.crlAssert;
        v85 = swift_initStackObject();
        *(v85 + 16) = xmmword_3AA20;
        *(v85 + 56) = &type metadata for Int32;
        *(v85 + 64) = &protocol witness table for Int32;
        *(v85 + 32) = v78;
        v86 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
        *(v85 + 96) = v86;
        v87 = lazy protocol witness table accessor for type NSString and conformance NSObject();
        *(v85 + 104) = v87;
        *(v85 + 72) = v76;
        *(v85 + 136) = &type metadata for String;
        v88 = lazy protocol witness table accessor for type String and conformance String();
        *(v85 + 112) = v81;
        *(v85 + 120) = v83;
        *(v85 + 176) = &type metadata for UInt;
        *(v85 + 184) = &protocol witness table for UInt;
        *(v85 + 144) = v88;
        *(v85 + 152) = 595;
        v89 = v162;
        *(v85 + 216) = v86;
        *(v85 + 224) = v87;
        *(v85 + 192) = v89;
        v90 = v76;
        v91 = v89;
        v92 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v84, &dword_0, v92, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);

        v93 = static os_log_type_t.error.getter();
        v94 = v84;
        v95 = v160;
        _CRLLog(_:dso:type:format:_:)(v94, &dword_0, v93, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v160);

        specialized withVaList<A>(_:_:)(v95, "Current schema version %{public}d before migration to %{public}d is unexpected");
        type metadata accessor for __VaListBuilder();
        v76 = swift_allocObject();
        v76[2] = 8;
        v76[3] = 0;
        v81 = v76 + 3;
        v76[4] = 0;
        v76[5] = 0;
        v160 = *(v95 + 16);
        if (!v160)
        {
          goto LABEL_93;
        }

        v83 = 0;
        while (1)
        {
          v96 = (v17 + 40 * v83);
          v75 = v96[4];
          __swift_project_boxed_opaque_existential_1(v96, v96[3]);
          v97 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v98 = *v81;
          v99 = *(v97 + 16);
          v100 = __OFADD__(*v81, v99);
          v101 = *v81 + v99;
          if (v100)
          {
            goto LABEL_57;
          }

          v75 = v97;
          v78 = v76[4];
          if (v78 >= v101)
          {
            goto LABEL_49;
          }

          if (v78 + 0x4000000000000000 < 0)
          {
            goto LABEL_58;
          }

          v102 = v76[5];
          if (2 * v78 > v101)
          {
            v101 = 2 * v78;
          }

          v76[4] = v101;
          if ((v101 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_59;
          }

          v103 = swift_slowAlloc();
          v76[5] = v103;
          if (v102)
          {
            if (v103 != v102 || v103 >= &v102[8 * v98])
            {
              memmove(v103, v102, 8 * v98);
            }

            LODWORD(v78) = v76;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_49:
            v103 = v76[5];
          }

          if (!v103)
          {
            goto LABEL_90;
          }

          v105 = v75[2];
          if (v105)
          {
            break;
          }

LABEL_34:

          if (++v83 == v160)
          {
            goto LABEL_93;
          }
        }

        v106 = v75 + 4;
        v107 = *v81;
        while (1)
        {
          v108 = *v106++;
          *&v103[8 * v107] = v108;
          v107 = *v81 + 1;
          if (__OFADD__(*v81, 1))
          {
            break;
          }

          *v81 = v107;
          if (!--v105)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v159 = objc_opt_self();
        LODWORD(v78) = [v159 _atomicIncrementAssertCount];
        v162 = [objc_allocWithZone(NSString) init];
        v160 = v75;
        specialized withVaList<A>(_:_:)(v75, &v162);
        StaticString.description.getter();
        v98 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v109 = String._bridgeToObjectiveC()();

        v110 = [v109 lastPathComponent];

        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v111;

        if (one-time initialization token for crlAssert != -1)
        {
          goto LABEL_91;
        }

        while (2)
        {
          v112 = static OS_os_log.crlAssert;
          v113 = swift_initStackObject();
          *(v113 + 16) = xmmword_3AA20;
          *(v113 + 56) = &type metadata for Int32;
          *(v113 + 64) = &protocol witness table for Int32;
          *(v113 + 32) = v78;
          v114 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
          *(v113 + 96) = v114;
          v115 = lazy protocol witness table accessor for type NSString and conformance NSObject();
          *(v113 + 104) = v115;
          *(v113 + 72) = v98;
          *(v113 + 136) = &type metadata for String;
          v116 = lazy protocol witness table accessor for type String and conformance String();
          *(v113 + 112) = v81;
          *(v113 + 120) = v83;
          *(v113 + 176) = &type metadata for UInt;
          *(v113 + 184) = &protocol witness table for UInt;
          *(v113 + 144) = v116;
          *(v113 + 152) = 629;
          v117 = v162;
          *(v113 + 216) = v114;
          *(v113 + 224) = v115;
          *(v113 + 192) = v117;
          v118 = v98;
          v119 = v117;
          v120 = static os_log_type_t.error.getter();
          _CRLLog(_:dso:type:format:_:)(v112, &dword_0, v120, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v113);

          v121 = static os_log_type_t.error.getter();
          v122 = v112;
          v123 = v160;
          _CRLLog(_:dso:type:format:_:)(v122, &dword_0, v121, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2, v160);

          specialized withVaList<A>(_:_:)(v123, "Queried schema version %{public}d after migration to %{public}d is unexpected");
          type metadata accessor for __VaListBuilder();
          v98 = swift_allocObject();
          *(v98 + 16) = 8;
          *(v98 + 24) = 0;
          v81 = (v98 + 24);
          *(v98 + 32) = 0;
          *(v98 + 40) = 0;
          v160 = *(v123 + 16);
          if (!v160)
          {
            while (1)
            {
LABEL_95:
              v141 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v142 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v139 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v140 = String._bridgeToObjectiveC()();

              [v159 handleFailureInFunction:v142 file:v139 lineNumber:629 isFatal:1 format:v140 args:v141];

LABEL_94:
              CRLCrashBreakpoint();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }
          }

          v83 = 0;
LABEL_64:
          v124 = &v76[5 * v83];
          v125 = v124[4];
          LODWORD(v78) = __swift_project_boxed_opaque_existential_1(v124, v124[3]);
          v126 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v17 = *v81;
          v127 = *(v126 + 16);
          v100 = __OFADD__(*v81, v127);
          v128 = *v81 + v127;
          if (v100)
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            swift_once();
            continue;
          }

          break;
        }

        v129 = v126;
        v78 = *(v98 + 32);
        if (v78 >= v128)
        {
          goto LABEL_78;
        }

        if (v78 + 0x4000000000000000 < 0)
        {
          goto LABEL_88;
        }

        v130 = *(v98 + 40);
        if (2 * v78 > v128)
        {
          v128 = 2 * v78;
        }

        *(v98 + 32) = v128;
        if ((v128 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_89;
        }

        v131 = swift_slowAlloc();
        *(v98 + 40) = v131;
        if (v130)
        {
          if (v131 != v130 || v131 >= &v130[8 * v17])
          {
            memmove(v131, v130, 8 * v17);
          }

          LODWORD(v78) = v98;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_78:
          v131 = *(v98 + 40);
        }

        if (!v131)
        {
          __break(1u);
LABEL_93:
          v137 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v138 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v139 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v140 = String._bridgeToObjectiveC()();

          [v159 handleFailureInFunction:v138 file:v139 lineNumber:595 isFatal:1 format:v140 args:v137];

          goto LABEL_94;
        }

        v133 = *(v129 + 16);
        if (!v133)
        {
LABEL_63:

          if (++v83 == v160)
          {
            goto LABEL_95;
          }

          goto LABEL_64;
        }

        v134 = (v129 + 32);
        v135 = *v81;
        while (1)
        {
          v136 = *v134++;
          *&v131[8 * v135] = v136;
          v135 = *v81 + 1;
          if (__OFADD__(*v81, 1))
          {
            break;
          }

          *v81 = v135;
          if (!--v133)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_86:
        swift_once();
      }
    }

    swift_setDeallocating();
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    swift_arrayDestroy();
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v18._object = 0xEC00000020454C42;
    v18._countAndFlagsBits = 0x4154205245544C41;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x736472616F62;
    v19._object = 0xE600000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x4C4F432044444120;
    v20._object = 0xEC000000204E4D55;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0xD000000000000026;
    v21._object = 0x80000000000401E0;
    String.append(_:)(v21);
    v22._object = 0x800000000003FE80;
    v22._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v22);
    v151 = 0x1000000000000;
    v161 = 0x1000000000000;
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 59;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v152 = v162;
    v154 = v163;
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v25._countAndFlagsBits = 0x4154205245544C41;
    v25._object = 0xEC00000020454C42;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0x74695F6472616F62;
    v26._object = 0xEB00000000736D65;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0x4C4F432044444120;
    v27._object = 0xEC000000204E4D55;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0xD000000000000026;
    v28._object = 0x80000000000401E0;
    String.append(_:)(v28);
    v29._object = 0x800000000003FE80;
    v29._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v29);
    v161 = 0x1000000000000;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 59;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v149 = v163;
    v150 = v162;
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v32._countAndFlagsBits = 0x4154205245544C41;
    v32._object = 0xEC00000020454C42;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0xD000000000000018;
    v33._object = 0x800000000003F200;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0x4C4F432044444120;
    v34._object = 0xEC000000204E4D55;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 0xD000000000000026;
    v35._object = 0x80000000000401E0;
    String.append(_:)(v35);
    v36._object = 0x800000000003FE80;
    v36._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v36);
    v161 = 0x1000000000000;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 59;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v147 = v163;
    v148 = v162;
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v39._countAndFlagsBits = 0x4154205245544C41;
    v39._object = 0xEC00000020454C42;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0x6D5F736472616F62;
    v40._object = 0xEF61746164617465;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 0x4C4F432044444120;
    v41._object = 0xEC000000204E4D55;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0xD000000000000026;
    v42._object = 0x80000000000401E0;
    String.append(_:)(v42);
    v43._object = 0x800000000003FE80;
    v43._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v43);
    v161 = v151;
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 59;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v46 = v162;
    v47 = v163;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v48 = swift_initStackObject();
    v49 = v153;
    *(v48 + 32) = v152;
    *(v48 + 16) = xmmword_3AA30;
    v50 = v149;
    v51 = v150;
    *(v48 + 40) = v154;
    *(v48 + 48) = v51;
    *(v48 + 56) = v50;
    v52 = v147;
    *(v48 + 64) = v148;
    *(v48 + 72) = v52;
    *(v48 + 80) = v46;
    *(v48 + 88) = v47;
    v2 = *(v49 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    v53 = swift_initStackObject();
    *(v53 + 16) = v2;
    *(v53 + 24) = 0;

    SQLTransaction.begin()();
    if (v54)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    v152 = v53;
    v154 = type metadata accessor for SQLiteStatement();
    v55 = 0;
LABEL_9:
    v57 = *(v48 + v55 + 32);
    v56 = *(v48 + v55 + 40);
    swift_initStackObject();

    v58 = specialized SQLiteStatement.init(database:query:)(v2, v57, v56);

    v59 = *(*(v58 + 16) + 32);
    *v7 = v59;
    v0 = v155;
    v157(v7, v156, v155);
    v60 = v59;
    v10 = _dispatchPreconditionTest(_:)();
    (v159)(v7, v0);
    if (v10)
    {
      break;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v61 = *(v58 + 16);

  v62 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v61, v58);

  if (v62 != 101)
  {

    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v66 = v62;
    *(v66 + 8) = 0xD000000000000017;
    *(v66 + 16) = 0x8000000000040210;
    swift_willThrow();
    v67 = *(*(v58 + 16) + 32);
    *v7 = v67;
    v157(v7, v156, v0);
    v68 = v67;
    LOBYTE(v67) = _dispatchPreconditionTest(_:)();
    (v159)(v7, v0);
    if (v67)
    {
      swift_beginAccess();
      v69 = *(v58 + 24);
      if (v69)
      {
        sqlite3_finalize(v69);
        *(v58 + 24) = 0;
      }

      SQLTransaction.rollback()();
      swift_willThrow();
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  v63 = *(*(v58 + 16) + 32);
  *v7 = v63;
  v157(v7, v156, v0);
  v64 = v63;
  v10 = _dispatchPreconditionTest(_:)();
  (v159)(v7, v0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v65 = *(v58 + 24);
  if (v65)
  {
    sqlite3_finalize(v65);
    *(v58 + 24) = 0;
  }

  v55 += 16;
  if (v55 != 64)
  {
    goto LABEL_9;
  }

  v70 = v146;
  *v7 = v146;
  v71 = v155;
  v157(v7, v156, v155);
  v72 = v70;
  LOBYTE(v70) = _dispatchPreconditionTest(_:)();
  (v159)(v7, v71);
  if ((v70 & 1) == 0)
  {
    goto LABEL_30;
  }

  specialized CRLStore._setRawSchemaVersion(rawVersion:)(3);
  SQLTransaction.commit()();
  if (v73)
  {
  }

  v74 = specialized CRLStore._schemaVersion()();
  v75 = swift_initStackObject();
  *(v75 + 1) = v143;
  v75[4] = v74;
  v76 = v75 + 4;
  v75[7] = &type metadata for Int;
  v75[12] = &type metadata for Int;
  v75[13] = &protocol witness table for Int;
  v75[8] = &protocol witness table for Int;
  v75[9] = 3;
  if (v74 != 3)
  {
    goto LABEL_60;
  }

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t CRLBoardDataStore._migrateToOptimizedSubtreeQuerySchema()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = v4[13];
  LODWORD(v122) = enum case for DispatchPredicate.onQueue(_:);
  v123 = v9;
  (v9)(v7);
  v121 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = v4[1];
  v10(v7, v3);
  if (v8)
  {
    if (one-time initialization token for boardStore == -1)
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
  v12 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v12, "Migrating database to optimizeSubtreeQuery schema version", 57, 2, &_swiftEmptyArrayStorage);
  result = specialized CRLStore._schemaVersion()();
  if (v1)
  {
    return result;
  }

  v14 = result;
  v120 = v10;
  v124 = 0;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  v118 = xmmword_3A290;
  *(inited + 16) = xmmword_3A290;
  *(inited + 32) = v14;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 4;
  if (v14 != 3)
  {
    v124 = (inited + 32);
    v47 = inited;
    v122 = objc_opt_self();
    LODWORD(v48) = [v122 _atomicIncrementAssertCount];
    v126 = [objc_allocWithZone(NSString) init];
    v123 = v47;
    specialized withVaList<A>(_:_:)(v47, &v126);
    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    v50 = [v49 lastPathComponent];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    if (one-time initialization token for crlAssert != -1)
    {
      goto LABEL_89;
    }

    while (1)
    {
      v54 = static OS_os_log.crlAssert;
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_3AA20;
      *(v55 + 56) = &type metadata for Int32;
      *(v55 + 64) = &protocol witness table for Int32;
      *(v55 + 32) = v48;
      v56 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
      *(v55 + 96) = v56;
      v57 = lazy protocol witness table accessor for type NSString and conformance NSObject();
      *(v55 + 104) = v57;
      *(v55 + 72) = v45;
      *(v55 + 136) = &type metadata for String;
      v58 = lazy protocol witness table accessor for type String and conformance String();
      *(v55 + 112) = v51;
      *(v55 + 120) = v53;
      *(v55 + 176) = &type metadata for UInt;
      *(v55 + 184) = &protocol witness table for UInt;
      *(v55 + 144) = v58;
      *(v55 + 152) = 555;
      v59 = v126;
      *(v55 + 216) = v56;
      *(v55 + 224) = v57;
      *(v55 + 192) = v59;
      v60 = v45;
      v61 = v59;
      v62 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v54, &dword_0, v62, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v55);

      v63 = static os_log_type_t.error.getter();
      v64 = v54;
      v65 = v123;
      _CRLLog(_:dso:type:format:_:)(v64, &dword_0, v63, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v123);

      specialized withVaList<A>(_:_:)(v65, "Current schema version %{public}d before migration to %{public}d is unexpected");
      type metadata accessor for __VaListBuilder();
      v45 = swift_allocObject();
      v45[2] = 8;
      v45[3] = 0;
      v66 = v45 + 3;
      v45[4] = 0;
      v45[5] = 0;
      v53 = v65[2];
      if (!v53)
      {
        goto LABEL_96;
      }

      v67 = 0;
      while (1)
      {
        v68 = &v124[5 * v67];
        v46 = v68[3];
        __swift_project_boxed_opaque_existential_1(v68, v46);
        v69 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v70 = *v66;
        v71 = *(v69 + 16);
        v72 = __OFADD__(*v66, v71);
        v73 = *v66 + v71;
        if (v72)
        {
          goto LABEL_60;
        }

        v46 = v69;
        v48 = v45[4];
        if (v48 >= v73)
        {
          goto LABEL_52;
        }

        if (v48 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v74 = v45[5];
        if (2 * v48 > v73)
        {
          v73 = 2 * v48;
        }

        v45[4] = v73;
        if ((v73 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_62;
        }

        v75 = swift_slowAlloc();
        v45[5] = v75;
        if (v74)
        {
          if (v75 != v74 || v75 >= &v74[8 * v70])
          {
            memmove(v75, v74, 8 * v70);
          }

          LODWORD(v48) = v45;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_52:
          v75 = v45[5];
        }

        if (!v75)
        {
          goto LABEL_91;
        }

        v77 = *(v46 + 16);
        if (v77)
        {
          break;
        }

LABEL_37:

        if (++v67 == v53)
        {
          goto LABEL_96;
        }
      }

      v78 = (v46 + 32);
      v79 = *v66;
      while (1)
      {
        v80 = *v78++;
        *&v75[8 * v79] = v80;
        v79 = *v66 + 1;
        if (__OFADD__(*v66, 1))
        {
          break;
        }

        *v66 = v79;
        if (!--v77)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v123 = objc_opt_self();
      LODWORD(v48) = [v123 _atomicIncrementAssertCount];
      v81 = [objc_allocWithZone(NSString) init];
      v124 = v45;
      v125 = v81;
      specialized withVaList<A>(_:_:)(v45, &v125);
      StaticString.description.getter();
      v45 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v82 = String._bridgeToObjectiveC()();

      v83 = [v82 lastPathComponent];

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v84;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_94;
      }

      while (2)
      {
        v85 = static OS_os_log.crlAssert;
        v86 = swift_initStackObject();
        *(v86 + 16) = xmmword_3AA20;
        *(v86 + 56) = &type metadata for Int32;
        *(v86 + 64) = &protocol witness table for Int32;
        *(v86 + 32) = v48;
        v87 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
        *(v86 + 96) = v87;
        v88 = lazy protocol witness table accessor for type NSString and conformance NSObject();
        *(v86 + 104) = v88;
        *(v86 + 72) = v45;
        *(v86 + 136) = &type metadata for String;
        v89 = lazy protocol witness table accessor for type String and conformance String();
        *(v86 + 112) = v53;
        *(v86 + 120) = v67;
        *(v86 + 176) = &type metadata for UInt;
        *(v86 + 184) = &protocol witness table for UInt;
        *(v86 + 144) = v89;
        *(v86 + 152) = 583;
        v90 = v125;
        *(v86 + 216) = v87;
        *(v86 + 224) = v88;
        *(v86 + 192) = v90;
        v91 = v45;
        v92 = v90;
        v93 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v85, &dword_0, v93, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v86);

        v94 = static os_log_type_t.error.getter();
        v51 = "Queried schema version %{public}d after migration to %{public}d is unexpected";
        v95 = v124;
        _CRLLog(_:dso:type:format:_:)(v85, &dword_0, v94, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2, v124);

        specialized withVaList<A>(_:_:)(v95, "Queried schema version %{public}d after migration to %{public}d is unexpected");
        type metadata accessor for __VaListBuilder();
        v45 = swift_allocObject();
        v45[2] = 8;
        v45[3] = 0;
        v53 = v45 + 3;
        v45[4] = 0;
        v45[5] = 0;
        v124 = *(v95 + 16);
        if (!v124)
        {
          while (1)
          {
LABEL_98:
            v113 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v114 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v115 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v116 = String._bridgeToObjectiveC()();

            [v123 handleFailureInFunction:v114 file:v115 lineNumber:583 isFatal:1 format:v116 args:v113];

LABEL_97:
            CRLCrashBreakpoint();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

        v67 = 0;
LABEL_67:
        v96 = (v46 + 40 * v67);
        v97 = v96[4];
        LODWORD(v48) = __swift_project_boxed_opaque_existential_1(v96, v96[3]);
        v98 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v99 = *v53;
        v100 = *(v98 + 16);
        v72 = __OFADD__(*v53, v100);
        v101 = *v53 + v100;
        if (v72)
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          swift_once();
          continue;
        }

        break;
      }

      v102 = v98;
      v48 = v45[4];
      if (v48 >= v101)
      {
        goto LABEL_81;
      }

      if (v48 + 0x4000000000000000 < 0)
      {
        goto LABEL_92;
      }

      v51 = v45[5];
      if (2 * v48 > v101)
      {
        v101 = 2 * v48;
      }

      v45[4] = v101;
      if ((v101 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_93;
      }

      v103 = swift_slowAlloc();
      v45[5] = v103;
      if (v51)
      {
        if (v103 != v51 || v103 >= &v51[8 * v99])
        {
          memmove(v103, v51, 8 * v99);
        }

        LODWORD(v48) = v45;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_81:
        v103 = v45[5];
      }

      if (!v103)
      {
        __break(1u);
LABEL_96:
        v109 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v110 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v111 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v112 = String._bridgeToObjectiveC()();

        [v122 handleFailureInFunction:v110 file:v111 lineNumber:555 isFatal:1 format:v112 args:v109];

        goto LABEL_97;
      }

      v105 = *(v102 + 16);
      if (!v105)
      {
LABEL_66:

        if (++v67 == v124)
        {
          goto LABEL_98;
        }

        goto LABEL_67;
      }

      v106 = (v102 + 32);
      v107 = *v53;
      while (1)
      {
        v108 = *v106++;
        *&v103[8 * v107] = v108;
        v107 = *v53 + 1;
        if (__OFADD__(*v53, 1))
        {
          break;
        }

        *v53 = v107;
        if (!--v105)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_89:
      swift_once();
    }
  }

  swift_setDeallocating();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  swift_arrayDestroy();
  v17 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLTransaction();
  v18 = swift_initStackObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;

  SQLTransaction.begin()();
  v124 = v19;
  if (v19)
  {
  }

  v117[2] = v16;
  v117[3] = v18;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = v124;
  v22 = specialized SQLiteStatement.init(database:query:)(v20, 0xD000000000000061, 0x80000000000402F0);
  v124 = v21;
  if (v21)
  {
    goto LABEL_17;
  }

  v23 = v22;
  v117[1] = v17;

  v24 = *(*(v23 + 16) + 32);
  *v7 = v24;
  (v123)(v7, v122, v3);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v120(v7, v3);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v26 = *(v23 + 16);

  v27 = v26;
  v28 = v124;
  v29 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v27, v23);

  if (v29 != 101)
  {
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    v35 = swift_allocError();
    *v36 = v29;
    *(v36 + 8) = 0xD00000000000003DLL;
    *(v36 + 16) = 0x8000000000040360;
    v124 = v35;
    swift_willThrow();
    v37 = *(*(v23 + 16) + 32);
    *v7 = v37;
    (v123)(v7, v122, v3);
    v38 = v37;
    LOBYTE(v37) = _dispatchPreconditionTest(_:)();
    v120(v7, v3);
    if ((v37 & 1) == 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    swift_beginAccess();
    v34 = *(v23 + 24);
    if (v34)
    {
LABEL_16:
      sqlite3_finalize(v34);
      *(v23 + 24) = 0;
    }

LABEL_17:

    SQLTransaction.rollback()();
    swift_willThrow();
  }

  v30 = v121;
  *v7 = v121;
  (v123)(v7, v122, v3);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v120(v7, v3);
  if ((v30 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  specialized CRLStore._setRawSchemaVersion(rawVersion:)(4);
  v124 = v28;
  if (v28)
  {
    v32 = *(*(v23 + 16) + 32);
    *v7 = v32;
    (v123)(v7, v122, v3);
    v33 = v32;
    LOBYTE(v32) = _dispatchPreconditionTest(_:)();
    v120(v7, v3);
    if (v32)
    {
      swift_beginAccess();
      v34 = *(v23 + 24);
      if (!v34)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_32;
  }

  v39 = *(*(v23 + 16) + 32);
  *v7 = v39;
  (v123)(v7, v122, v3);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v120(v7, v3);
  if ((v39 & 1) == 0)
  {
    goto LABEL_33;
  }

  swift_beginAccess();
  v41 = *(v23 + 24);
  if (v41)
  {
    sqlite3_finalize(v41);
    *(v23 + 24) = 0;
  }

  SQLTransaction.commit()();
  if (v42)
  {
    v124 = v42;
  }

  v43 = specialized CRLStore._schemaVersion()();
  v124 = 0;
  v44 = v43;
  v45 = swift_initStackObject();
  *(v45 + 1) = v118;
  v45[4] = v44;
  v46 = (v45 + 4);
  v45[7] = &type metadata for Int;
  v45[12] = &type metadata for Int;
  v45[13] = &protocol witness table for Int;
  v45[8] = &protocol witness table for Int;
  v45[9] = 4;
  if (v44 != 4)
  {
    goto LABEL_63;
  }

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(uint64_t a1, char *a2, char *a3)
{
  v109 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  v111 = v3;
  v12 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v36 = v104;
    v109 = a3;
    v37 = objc_opt_self();

    *&v107 = v37;
    LODWORD(v30) = [v37 _atomicIncrementAssertCount];
    v110[0] = [objc_allocWithZone(NSString) init];
    v108 = v11;
    specialized withVaList<A>(_:_:)(v11, v110);
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (one-time initialization token for crlAssert != -1)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v44 = static OS_os_log.crlAssert;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3AA20;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v30;
      v46 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
      *(inited + 96) = v46;
      v47 = lazy protocol witness table accessor for type NSString and conformance NSObject();
      *(inited + 72) = v38;
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v36;
      *(inited + 104) = v47;
      *(inited + 112) = v41;
      *(inited + 120) = v43;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 152) = 211;
      v48 = v110[0];
      *(inited + 216) = v46;
      *(inited + 224) = v47;
      *(inited + 192) = v48;
      v49 = v38;
      v50 = v48;
      v51 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v44, &dword_0, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v52 = static os_log_type_t.error.getter();
      v53 = v108;
      _CRLLog(_:dso:type:format:_:)(v44, &dword_0, v52, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2, v108);

      specialized withVaList<A>(_:_:)(v53, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v54 = swift_allocObject();
      v54[2] = 8;
      v54[3] = 0;
      v36 = v54 + 3;
      v54[4] = 0;
      v54[5] = 0;
      v41 = *(v53 + 2);
      if (!v41)
      {
        goto LABEL_71;
      }

      v43 = 0;
      while (1)
      {
        v55 = &v109[40 * v43];
        v38 = *(v55 + 3);
        LODWORD(v30) = __swift_project_boxed_opaque_existential_1(v55, v38);
        v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v57 = *v36;
        v58 = *(v56 + 16);
        v59 = __OFADD__(*v36, v58);
        v60 = *v36 + v58;
        if (v59)
        {
          goto LABEL_61;
        }

        v38 = v56;
        v30 = v54[4];
        if (v30 >= v60)
        {
          goto LABEL_27;
        }

        if (v30 + 0x4000000000000000 < 0)
        {
          goto LABEL_62;
        }

        v61 = v54[5];
        if (2 * v30 > v60)
        {
          v60 = 2 * v30;
        }

        v54[4] = v60;
        if ((v60 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_63;
        }

        v29 = swift_slowAlloc();
        v54[5] = v29;
        if (v61)
        {
          if (v29 != v61 || v29 >= v61 + 8 * v57)
          {
            memmove(v29, v61, 8 * v57);
          }

          v30 = v54;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
          v29 = v54[5];
        }

        if (!v29)
        {
          __break(1u);
LABEL_69:
          swift_once();
          goto LABEL_36;
        }

        v63 = v38[2];
        if (v63)
        {
          break;
        }

LABEL_12:

        if (++v43 == v41)
        {
          goto LABEL_71;
        }
      }

      v64 = v38 + 4;
      v31 = *v36;
      while (1)
      {
        v65 = *v64++;
        *(v29 + 8 * v31) = v65;
        v31 = *v36 + 1;
        if (__OFADD__(*v36, 1))
        {
          break;
        }

        *v36 = v31;
        if (!--v63)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_35:
      v109 = v30;
      v36 = v31;
      v66 = v29;
      v67 = objc_opt_self();

      *&v107 = v67;
      LODWORD(v30) = [v67 _atomicIncrementAssertCount];
      v110[0] = [objc_allocWithZone(NSString) init];
      v108 = v66;
      specialized withVaList<A>(_:_:)(v66, v110);
      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      v69 = [v68 lastPathComponent];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v70;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_69;
      }

LABEL_36:
      v71 = static OS_os_log.crlAssert;
      v72 = swift_initStackObject();
      *(v72 + 16) = xmmword_3AA20;
      *(v72 + 56) = &type metadata for Int32;
      *(v72 + 64) = &protocol witness table for Int32;
      *(v72 + 32) = v30;
      v73 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
      *(v72 + 96) = v73;
      v74 = lazy protocol witness table accessor for type NSString and conformance NSObject();
      *(v72 + 72) = v38;
      *(v72 + 136) = &type metadata for String;
      *(v72 + 144) = v36;
      *(v72 + 104) = v74;
      *(v72 + 112) = v41;
      *(v72 + 120) = v43;
      *(v72 + 176) = &type metadata for UInt;
      *(v72 + 184) = &protocol witness table for UInt;
      *(v72 + 152) = 230;
      v75 = v110[0];
      *(v72 + 216) = v73;
      *(v72 + 224) = v74;
      *(v72 + 192) = v75;
      v76 = v38;
      v77 = v75;
      v78 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v71, &dword_0, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v72);

      v79 = static os_log_type_t.error.getter();
      v80 = v108;
      _CRLLog(_:dso:type:format:_:)(v71, &dword_0, v79, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2, v108);

      specialized withVaList<A>(_:_:)(v80, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v81 = swift_allocObject();
      v81[2] = 8;
      v81[3] = 0;
      v36 = v81 + 3;
      v81[4] = 0;
      v81[5] = 0;
      v41 = *(v80 + 2);
      if (!v41)
      {
        while (1)
        {
LABEL_73:
          v98 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v95 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v96 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v97 = String._bridgeToObjectiveC()();

          [v107 handleFailureInFunction:v95 file:v96 lineNumber:230 isFatal:1 format:v97 args:v98];
LABEL_72:

          CRLCrashBreakpoint();
          v100 = 0;
          v99 = (&stru_158 + 4);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v43 = 0;
      while (2)
      {
        v82 = &v109[40 * v43];
        v38 = *(v82 + 3);
        LODWORD(v30) = __swift_project_boxed_opaque_existential_1(v82, v38);
        v83 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v84 = *v36;
        v85 = *(v83 + 16);
        v59 = __OFADD__(*v36, v85);
        v86 = *v36 + v85;
        if (v59)
        {
          goto LABEL_64;
        }

        v38 = v83;
        v30 = v81[4];
        if (v30 >= v86)
        {
LABEL_53:
          v88 = v81[5];
        }

        else
        {
          if (v30 + 0x4000000000000000 < 0)
          {
            goto LABEL_65;
          }

          v87 = v81[5];
          if (2 * v30 > v86)
          {
            v86 = 2 * v30;
          }

          v81[4] = v86;
          if ((v86 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_66;
          }

          v88 = swift_slowAlloc();
          v81[5] = v88;
          if (v87)
          {
            if (v88 != v87 || v88 >= &v87[8 * v84])
            {
              memmove(v88, v87, 8 * v84);
            }

            LODWORD(v30) = v81;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            goto LABEL_53;
          }
        }

        if (!v88)
        {
          __break(1u);
LABEL_71:
          v94 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v95 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v96 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v97 = String._bridgeToObjectiveC()();

          [v107 handleFailureInFunction:v95 file:v96 lineNumber:211 isFatal:1 format:v97 args:v94];
          goto LABEL_72;
        }

        v90 = v38[2];
        if (!v90)
        {
LABEL_38:

          if (++v43 == v41)
          {
            goto LABEL_73;
          }

          continue;
        }

        break;
      }

      v91 = v38 + 4;
      v92 = *v36;
      while (1)
      {
        v93 = *v91++;
        *&v88[8 * v92] = v93;
        v92 = *v36 + 1;
        if (__OFADD__(*v36, 1))
        {
          break;
        }

        *v36 = v92;
        if (!--v90)
        {
          goto LABEL_38;
        }
      }

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
      swift_once();
    }
  }

  v108 = a3;
  v14 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_initStackObject();
  v107 = xmmword_3A860;
  *(v16 + 16) = xmmword_3A860;
  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  v17 = a1;
  *(v16 + 32) = a1;
  v18 = v14;
  v19 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v18, &dword_0, v19, "Migrating database to schema version %{public}d", 47, 2, v16);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v16 + 32));
  result = specialized CRLStore._schemaVersion()();
  if (v4)
  {
    return result;
  }

  v21 = result;
  v101 = v18;
  v103 = a1;
  v105 = v15;
  v106 = 0;
  v11 = swift_initStackObject();
  *(v11 + 1) = xmmword_3AA30;
  *(v11 + 4) = v21;
  a3 = v11 + 32;
  *(v11 + 7) = &type metadata for Int;
  v112 = v21;
  *(v11 + 12) = &type metadata for Int;
  *(v11 + 13) = &protocol witness table for Int;
  v22 = v109;
  v23 = v109;
  *(v11 + 8) = &protocol witness table for Int;
  *(v11 + 9) = v23;
  *(v11 + 17) = &type metadata for Int;
  *(v11 + 18) = &protocol witness table for Int;
  *(v11 + 14) = v17;
  v25 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName);
  v24 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName + 8);
  *(v11 + 22) = &type metadata for String;
  v104 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 23) = v104;
  v102 = v25;
  *(v11 + 19) = v25;
  *(v11 + 20) = v24;
  if (v112 != v22)
  {
    goto LABEL_9;
  }

  swift_setDeallocating();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  v26 = swift_arrayDestroy();
  __chkstk_darwin(v26);
  *(&v101 - 4) = v108;
  *(&v101 - 3) = &v111;
  v99 = &v113;
  v27 = v106;
  result = specialized CRLStore._performWithTransaction(_:)(partial apply for specialized closure #1 in CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:), (&v101 - 6));
  if (!v27)
  {
    v28 = specialized CRLStore._schemaVersion()();
    v106 = 0;
    v29 = swift_initStackObject();
    *(v29 + 32) = v28;
    v30 = v29 + 32;
    *(v29 + 16) = xmmword_3A890;
    *(v29 + 56) = &type metadata for Int;
    *(v29 + 64) = &protocol witness table for Int;
    *(v29 + 96) = &type metadata for Int;
    *(v29 + 104) = &protocol witness table for Int;
    *(v29 + 72) = v17;
    v31 = v104;
    *(v29 + 136) = &type metadata for String;
    *(v29 + 144) = v31;
    v32 = v103;
    *(v29 + 112) = v102;
    *(v29 + 120) = v24;
    if (v28 != v32)
    {
      goto LABEL_35;
    }

    swift_setDeallocating();

    swift_arrayDestroy();
    v33 = swift_initStackObject();
    *(v33 + 16) = v107;
    *(v33 + 56) = &type metadata for Int;
    *(v33 + 64) = &protocol witness table for Int;
    *(v33 + 32) = v28;
    v34 = v101;
    v35 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v34, &dword_0, v35, "Successfully migrated database to schema version %{public}d", 59, 2, v33);

    swift_setDeallocating();
    return __swift_destroy_boxed_opaque_existential_0((v33 + 32));
  }

  return result;
}

unint64_t CRLBoardDataStore.Table.sqlString.getter(char a1)
{
  result = 0x736472616F62;
  switch(a1)
  {
    case 1:
      result = 0x74695F6472616F62;
      break;
    case 2:
      result = 0x756C61765F79656BLL;
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 11:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0x6D5F736472616F62;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x64726F6365726B63;
      break;
    case 10:
      result = 0x635F656E6F7A6B63;
      break;
    case 12:
      result = 0x737265646C6F66;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

id @objc CRLBoardDataStore.storeName.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

uint64_t CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityToBoardsTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v40 = v4[13];
  v40(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v11(v7, v3);
  if (v8)
  {
    v39 = v11;
    if (one-time initialization token for boardStore == -1)
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
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Adding MinRequiredVersionForGoodEnoughFidelity to the boards table", 66, 2, &_swiftEmptyArrayStorage);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v14._countAndFlagsBits = 0x4154205245544C41;
  v14._object = 0xEC00000020454C42;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x736472616F62;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x4C4F43204444410ALL;
  v16._object = 0xEC000000204E4D55;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD00000000000002DLL;
  v17._object = 0x8000000000040070;
  String.append(_:)(v17);
  v18._object = 0x800000000003FE80;
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v18);
  v41 = 0x2000400000000;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 59;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21 = v42;
  v22 = v43;
  v23 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v25 = specialized SQLiteStatement.init(database:query:)(v24, v21, v22);

  if (v1)
  {
    return result;
  }

  v27 = *(*(v25 + 16) + 32);
  *v7 = v27;
  v40(v7, v9, v3);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v29 = v39;
  v39(v7, v3);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = *(v25 + 16);

  LODWORD(v31) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v30, v25);

  if (v31 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = 0xD000000000000020;
    *(v33 + 16) = 0x8000000000040120;
    swift_willThrow();
    v34 = *(*(v25 + 16) + 32);
    *v7 = v34;
    v40(v7, v9, v3);
    v35 = v34;
    v36 = _dispatchPreconditionTest(_:)();
    v39(v7, v3);
    if (v36)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v31 = *(*(v25 + 16) + 32);
  *v7 = v31;
  v40(v7, v9, v3);
  v32 = v31;
  v9 = _dispatchPreconditionTest(_:)();
  v29(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v37 = *(v25 + 24);
  if (v37)
  {
    sqlite3_finalize(v37);
    *(v25 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityToBoardItemsTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v40 = v4[13];
  v40(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v11(v7, v3);
  if (v8)
  {
    v39 = v11;
    if (one-time initialization token for boardStore == -1)
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
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Adding MinRequiredVersionForGoodEnoughFidelity to the board items table", 71, 2, &_swiftEmptyArrayStorage);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v14._countAndFlagsBits = 0x4154205245544C41;
  v14._object = 0xEC00000020454C42;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x74695F6472616F62;
  v15._object = 0xEB00000000736D65;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x4C4F43204444410ALL;
  v16._object = 0xEC000000204E4D55;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD00000000000002DLL;
  v17._object = 0x8000000000040070;
  String.append(_:)(v17);
  v18._object = 0x800000000003FE80;
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v18);
  v41 = 0x2000400000000;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 59;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21 = v42;
  v22 = v43;
  v23 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v25 = specialized SQLiteStatement.init(database:query:)(v24, v21, v22);

  if (v1)
  {
    return result;
  }

  v27 = *(*(v25 + 16) + 32);
  *v7 = v27;
  v40(v7, v9, v3);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v29 = v39;
  v39(v7, v3);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = *(v25 + 16);

  LODWORD(v31) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v30, v25);

  if (v31 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = 0xD000000000000025;
    *(v33 + 16) = 0x80000000000400A0;
    swift_willThrow();
    v34 = *(*(v25 + 16) + 32);
    *v7 = v34;
    v40(v7, v9, v3);
    v35 = v34;
    v36 = _dispatchPreconditionTest(_:)();
    v39(v7, v3);
    if (v36)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v31 = *(*(v25 + 16) + 32);
  *v7 = v31;
  v40(v7, v9, v3);
  v32 = v31;
  v9 = _dispatchPreconditionTest(_:)();
  v29(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v37 = *(v25 + 24);
  if (v37)
  {
    sqlite3_finalize(v37);
    *(v25 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityForBucketToFreehandDrawingBucketsTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v40 = v4[13];
  v40(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v11(v7, v3);
  if (v8)
  {
    v39 = v11;
    if (one-time initialization token for boardStore == -1)
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
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Adding MinRequiredVersionForGoodEnoughFidelityForBucket to the freehand drawing buckets table", 93, 2, &_swiftEmptyArrayStorage);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v14._countAndFlagsBits = 0x4154205245544C41;
  v14._object = 0xEC00000020454C42;
  String.append(_:)(v14);
  v15._object = 0x800000000003F200;
  v15._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x4C4F43204444410ALL;
  v16._object = 0xEC000000204E4D55;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000038;
  v17._object = 0x800000000003FF70;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x800000000003FE80;
  String.append(_:)(v18);
  v41 = 0x2000400000000;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 59;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21 = v42;
  v22 = v43;
  v23 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v25 = specialized SQLiteStatement.init(database:query:)(v24, v21, v22);

  if (v1)
  {
    return result;
  }

  v27 = *(*(v25 + 16) + 32);
  *v7 = v27;
  v40(v7, v9, v3);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v29 = v39;
  v39(v7, v3);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = *(v25 + 16);

  LODWORD(v31) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v30, v25);

  if (v31 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = 0xD000000000000065;
    *(v33 + 16) = 0x800000000003FFB0;
    swift_willThrow();
    v34 = *(*(v25 + 16) + 32);
    *v7 = v34;
    v40(v7, v9, v3);
    v35 = v34;
    v36 = _dispatchPreconditionTest(_:)();
    v39(v7, v3);
    if (v36)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v31 = *(*(v25 + 16) + 32);
  *v7 = v31;
  v40(v7, v9, v3);
  v32 = v31;
  v9 = _dispatchPreconditionTest(_:)();
  v29(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v37 = *(v25 + 24);
  if (v37)
  {
    sqlite3_finalize(v37);
    *(v25 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityForItemsToFreehandDrawingBucketsTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v40 = v4[13];
  v40(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v11(v7, v3);
  if (v8)
  {
    v39 = v11;
    if (one-time initialization token for boardStore == -1)
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
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Adding MinRequiredVersionForGoodEnoughFidelityForItems to the freehand drawing buckets table", 92, 2, &_swiftEmptyArrayStorage);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v14._countAndFlagsBits = 0x4154205245544C41;
  v14._object = 0xEC00000020454C42;
  String.append(_:)(v14);
  v15._object = 0x800000000003F200;
  v15._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x4C4F43204444410ALL;
  v16._object = 0xEC000000204E4D55;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000037;
  v17._object = 0x800000000003FE40;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x800000000003FE80;
  String.append(_:)(v18);
  v41 = 0x2000400000000;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 59;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21 = v42;
  v22 = v43;
  v23 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v25 = specialized SQLiteStatement.init(database:query:)(v24, v21, v22);

  if (v1)
  {
    return result;
  }

  v27 = *(*(v25 + 16) + 32);
  *v7 = v27;
  v40(v7, v9, v3);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v29 = v39;
  v39(v7, v3);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = *(v25 + 16);

  LODWORD(v31) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v30, v25);

  if (v31 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = 0xD000000000000064;
    *(v33 + 16) = 0x800000000003FEA0;
    swift_willThrow();
    v34 = *(*(v25 + 16) + 32);
    *v7 = v34;
    v40(v7, v9, v3);
    v35 = v34;
    v36 = _dispatchPreconditionTest(_:)();
    v39(v7, v3);
    if (v36)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v31 = *(*(v25 + 16) + 32);
  *v7 = v31;
  v40(v7, v9, v3);
  v32 = v31;
  v9 = _dispatchPreconditionTest(_:)();
  v29(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v37 = *(v25 + 24);
  if (v37)
  {
    sqlite3_finalize(v37);
    *(v25 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createBoardsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v9 = v3 + 13;
  v8 = v3[13];
  v95 = enum case for DispatchPredicate.onQueue(_:);
  v96 = v8;
  v8(v6);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v14 = v3[1];
  v13 = v3 + 1;
  v12 = v14;
  v14(v6, v2);
  if (v11)
  {
    v98 = v0;
    v99 = v1;
    v93 = v2;
    v94 = v9;
    v91 = v12;
    v92 = v13;
    if (one-time initialization token for boardStore == -1)
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
  v15 = 0xD000000000000010;
  v16 = static OS_os_log.boardStore;
  v17 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v16, &dword_0, v17, "Creating schema for the boards table", 36, 2, &_swiftEmptyArrayStorage);
  v100 = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(479);
  v18._countAndFlagsBits = 0x5420455441455243;
  v18._object = 0xED000020454C4241;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x736472616F62;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._object = 0x800000000003F290;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD00000000000001CLL;
  v22._object = 0x800000000003F5D0;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x616E5F72656E776FLL;
  v23._object = 0xEA0000000000656DLL;
  String.append(_:)(v23);
  v24._object = 0x800000000003F3A0;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x656E6961746E6F63;
  v25._object = 0xEE00646975755F72;
  String.append(_:)(v25);
  v26._object = 0x800000000003F2B0;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v97 = "for the boards table";
  v27._countAndFlagsBits = 0xD000000000000018;
  v27._object = 0x800000000003FBC0;
  String.append(_:)(v27);
  v28._object = 0x800000000003F2B0;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 1635017060;
  v29._object = 0xE400000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C424F4C4220;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000012;
  v31._object = 0x800000000003FBE0;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x202C4C41455220;
  v32._object = 0xE700000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x6E6F7473626D6F74;
  v33._object = 0xEA00000000006465;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000013;
  v34._object = 0x800000000003F3C0;
  String.append(_:)(v34);
  v35._object = 0x800000000003F3E0;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD00000000000001DLL;
  v36._object = 0x800000000003F710;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000018;
  v37._object = 0x800000000003FC00;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000014;
  v38._object = 0x800000000003FC20;
  String.append(_:)(v38);
  v39._object = 0xE900000000000061;
  v39._countAndFlagsBits = 0x7461645F636E7973;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x202C424F4C4220;
  v40._object = 0xE700000000000000;
  String.append(_:)(v40);
  v41._object = 0xEE00657461645F65;
  v41._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x202C4C41455220;
  v42._object = 0xE700000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD00000000000001ALL;
  v43._object = 0x800000000003FC40;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD000000000000013;
  v44._object = 0x800000000003F3C0;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x5F65726168736B63;
  v45._object = 0xEC00000061746164;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x202C424F4C4220;
  v46._object = 0xE700000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD000000000000014;
  v47._object = 0x800000000003F8F0;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD00000000000001DLL;
  v48._object = 0x800000000003F710;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x61637369645F7369;
  v49._object = 0xEE00656C62616472;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0xD000000000000020;
  v50._object = 0x800000000003FC60;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0x656E6961746E6F63;
  v51._object = 0xEE00646975755F72;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 8236;
  v52._object = 0xE200000000000000;
  String.append(_:)(v52);
  v53._object = 0x800000000003F290;
  v53._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0x4552454645522029;
  v54._object = 0xED0000205345434ELL;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 0x74695F6472616F62;
  v55._object = 0xEB00000000736D65;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 10272;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 0x6975755F6D657469;
  v57._object = 0xE900000000000064;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 8236;
  v58._object = 0xE200000000000000;
  String.append(_:)(v58);
  v59._object = 0x800000000003F290;
  v59._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 0xD000000000000040;
  v60._object = 0x800000000003FC90;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 0xD000000000000018;
  v61._object = (v97 | 0x8000000000000000);
  String.append(_:)(v61);
  v62._countAndFlagsBits = 8236;
  v62._object = 0xE200000000000000;
  String.append(_:)(v62);
  v63._object = 0x800000000003F290;
  v63._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v63);
  v64._countAndFlagsBits = 0x4552454645522029;
  v64._object = 0xED0000205345434ELL;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 0x74695F6472616F62;
  v65._object = 0xEB00000000736D65;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 10272;
  v66._object = 0xE200000000000000;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 0x6975755F6D657469;
  v67._object = 0xE900000000000064;
  String.append(_:)(v67);
  v68._countAndFlagsBits = 8236;
  v68._object = 0xE200000000000000;
  String.append(_:)(v68);
  v69._object = 0x800000000003F290;
  v69._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v69);
  v70._countAndFlagsBits = 0xD000000000000033;
  v70._object = 0x800000000003FCE0;
  String.append(_:)(v70);
  v71 = v100;
  v72 = v101;
  v73 = *(v98 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v75 = v99;
  v76 = specialized SQLiteStatement.init(database:query:)(v74, v71, v72);

  if (v75)
  {
    return result;
  }

  v78 = *(*(v76 + 16) + 32);
  *v6 = v78;
  v79 = v93;
  v96(v6, v95, v93);
  v80 = v78;
  LOBYTE(v78) = _dispatchPreconditionTest(_:)();
  v81 = v91;
  v91(v6, v79);
  if ((v78 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v82 = *(v76 + 16);

  v83 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v82, v76);

  if (v83 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v85 = v83;
    *(v85 + 8) = v15 + 17;
    *(v85 + 16) = 0x800000000003FD20;
    swift_willThrow();
    v86 = *(*(v76 + 16) + 32);
    *v6 = v86;
    v96(v6, v95, v79);
    v87 = v86;
    v88 = _dispatchPreconditionTest(_:)();
    v81(v6, v79);
    if (v88)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v15 = *(*(v76 + 16) + 32);
  *v6 = v15;
  v96(v6, v95, v79);
  v84 = v15;
  v83 = _dispatchPreconditionTest(_:)();
  v81(v6, v79);
  if ((v83 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v89 = *(v76 + 24);
  if (v89)
  {
    sqlite3_finalize(v89);
    *(v76 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createBoardsMetadataTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = v4[13];
  v57 = enum case for DispatchPredicate.onQueue(_:);
  v58 = v9;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v11(v7, v3);
  if (v8)
  {
    v59 = v1;
    v56 = v11;
    if (one-time initialization token for boardStore == -1)
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
  v12 = 0xD000000000000010;
  v13 = static OS_os_log.boardStore;
  v14 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v13, &dword_0, v14, "Creating schema for the boards metadata table", 45, 2, &_swiftEmptyArrayStorage);
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v15._countAndFlagsBits = 0x5420455441455243;
  v15._object = 0xED000020454C4241;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x6D5F736472616F62;
  v16._object = 0xEF61746164617465;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._object = 0x800000000003F290;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000026;
  v19._object = 0x800000000003FAC0;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x736472616F62;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._object = 0x800000000003F290;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x800000000003EFC0;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x7461645F74647263;
  v24._object = 0xE900000000000061;
  String.append(_:)(v24);
  v25._object = 0x800000000003F2B0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x726F7661665F7369;
  v26._object = 0xEB00000000657469;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x800000000003F3C0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD00000000000001BLL;
  v28._object = 0x800000000003FAF0;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000013;
  v29._object = 0x800000000003F3C0;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x6174735F77656976;
  v30._object = 0xEF617461645F6574;
  String.append(_:)(v30);
  v31._object = 0x800000000003F2B0;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD000000000000019;
  v32._object = 0x800000000003FB10;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000020;
  v33._object = 0x800000000003FB30;
  String.append(_:)(v33);
  v34._object = 0x800000000003F3E0;
  v34._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x800000000003F710;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x7461645F636E7973;
  v36._object = 0xE900000000000061;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x2920424F4C4220;
  v37._object = 0xE700000000000000;
  String.append(_:)(v37);
  v38 = v60;
  v39 = v61;
  v40 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v42 = v59;
  v43 = specialized SQLiteStatement.init(database:query:)(v41, v38, v39);

  if (v42)
  {
    return result;
  }

  v45 = *(*(v43 + 16) + 32);
  *v7 = v45;
  v58(v7, v57, v3);
  v46 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  v47 = v56;
  v56(v7, v3);
  if ((v45 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v48 = *(v43 + 16);

  v49 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v48, v43);

  if (v49 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v52 = v49;
    *(v52 + 8) = v12 + 26;
    *(v52 + 16) = 0x800000000003FB60;
    swift_willThrow();
    v53 = *(*(v43 + 16) + 32);
    *v7 = v53;
    v58(v7, v57, v3);
    v54 = v53;
    LOBYTE(v53) = _dispatchPreconditionTest(_:)();
    v56(v7, v3);
    if (v53)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v50 = *(*(v43 + 16) + 32);
  *v7 = v50;
  v58(v7, v57, v3);
  v51 = v50;
  v12 = _dispatchPreconditionTest(_:)();
  v47(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v55 = *(v43 + 24);
  if (v55)
  {
    sqlite3_finalize(v55);
    *(v43 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createBoardItemsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = v3[13];
  v85 = enum case for DispatchPredicate.onQueue(_:);
  v86 = v8;
  v87 = v3 + 13;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v88 = v3[1];
  v88(v6, v2);
  if (v7)
  {
    v90 = v0;
    v91 = v1;
    if (one-time initialization token for boardStore == -1)
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
  _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v12, "Creating schema for the board items table", 41, 2, &_swiftEmptyArrayStorage);
  v89 = "(item_uuid, board_identifier)";
  v92 = 0;
  v93 = 0xE000000000000000;
  _StringGuts.grow(_:)(328);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x74695F6472616F62;
  v14._object = 0xEB00000000736D65;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x6975755F6D657469;
  v16._object = 0xE900000000000064;
  String.append(_:)(v16);
  v17._object = 0x800000000003F2B0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x755F746E65726170;
  v18._object = 0xEB00000000646975;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x202C424F4C4220;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._object = 0x800000000003F290;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD00000000000001ALL;
  v21._object = 0x800000000003EF80;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._object = 0x800000000003F290;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000015;
  v25._object = 0x800000000003EFC0;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x7079745F6D657469;
  v26._object = 0xE900000000000065;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x800000000003F3C0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v28._object = 0xEB00000000617461;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x202C424F4C4220;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x6369666963657073;
  v30._object = 0xED0000617461645FLL;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C424F4C4220;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x6E6F7473626D6F74;
  v32._object = 0xEA00000000006465;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000013;
  v33._object = 0x800000000003F3C0;
  String.append(_:)(v33);
  v34._object = 0x800000000003F3E0;
  v34._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x800000000003F710;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x7461645F636E7973;
  v36._object = 0xE900000000000061;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x202C424F4C4220;
  v37._object = 0xE700000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000014;
  v38._object = 0x800000000003F8F0;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD00000000000001DLL;
  v39._object = 0x800000000003F710;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v40._object = 0xEE00736E6F697470;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD000000000000029;
  v41._object = 0x800000000003F910;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD00000000000001DLL;
  v42._object = 0x800000000003F8B0;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x474945524F460A2CLL;
  v43._object = 0xEE002059454B204ELL;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD00000000000001FLL;
  v44._object = (v89 | 0x8000000000000000);
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x4E45524546455220;
  v45._object = 0xEC00000020534543;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x74695F6472616F62;
  v46._object = 0xEB00000000736D65;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 32;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD00000000000001DLL;
  v48._object = 0x800000000003F8B0;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0xD000000000000014;
  v49._object = 0x800000000003F940;
  String.append(_:)(v49);
  v50 = v92;
  v51 = v93;
  v52 = *(v90 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v54 = v91;
  v55 = specialized SQLiteStatement.init(database:query:)(v53, v50, v51);
  if (v54)
  {
  }

  v56 = v55;

  v57 = *(*(v56 + 16) + 32);
  *v6 = v57;
  v86(v6, v85, v2);
  v58 = v57;
  v59 = _dispatchPreconditionTest(_:)();
  v88(v6, v2);
  if ((v59 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v60 = *(v56 + 16);

  v61 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v60, v56);

  if (v61 == 101)
  {
    v62 = specialized static SQLiteStatement.execute(database:query:)(v52, 0xD000000000000035, 0x800000000003F990);
    if (v62 == 101)
    {
      v63 = specialized static SQLiteStatement.execute(database:query:)(v52, 0xD00000000000004FLL, 0x800000000003FA10);
      if (v63 == 101)
      {
        v64 = *(*(v56 + 16) + 32);
        *v6 = v64;
        v86(v6, v85, v2);
        v65 = v64;
        LOBYTE(v64) = _dispatchPreconditionTest(_:)();
        v88(v6, v2);
        if (v64)
        {
          swift_beginAccess();
          v66 = *(v56 + 24);
          if (v66)
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
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v67 = v61;
    *(v67 + 8) = 0xD000000000000026;
    *(v67 + 16) = 0x800000000003F960;
    swift_willThrow();
    v68 = *(*(v56 + 16) + 32);
    *v6 = v68;
    v86(v6, v85, v2);
    v69 = v68;
    v10 = _dispatchPreconditionTest(_:)();
    v62 = (v88)(v6, v2);
    if (v10)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v70 = v62;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v71 = v70;
  *(v71 + 8) = v10 + 40;
  *(v71 + 16) = 0x800000000003F9D0;
  swift_willThrow();
  v72 = *(*(v56 + 16) + 32);
  *v6 = v72;
  v86(v6, v85, v2);
  v73 = v72;
  v10 = _dispatchPreconditionTest(_:)();
  v63 = (v88)(v6, v2);
  if (v10)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v74 = v63;
  v92 = 0;
  v93 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v75._countAndFlagsBits = v10 + 7;
  v75._object = 0x800000000003F830;
  String.append(_:)(v75);
  v76._countAndFlagsBits = 0x74695F6472616F62;
  v76._object = 0xEB00000000736D65;
  String.append(_:)(v76);
  v77._countAndFlagsBits = v10 + 27;
  v77._object = 0x800000000003FA60;
  String.append(_:)(v77);
  v78 = v92;
  v79 = v93;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v80 = v74;
  *(v80 + 8) = v78;
  *(v80 + 16) = v79;
  swift_willThrow();
  v81 = *(*(v56 + 16) + 32);
  *v6 = v81;
  v86(v6, v85, v2);
  v82 = v81;
  LOBYTE(v81) = _dispatchPreconditionTest(_:)();
  v88(v6, v2);
  if ((v81 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v66 = *(v56 + 24);
  if (v66)
  {
LABEL_17:
    sqlite3_finalize(v66);
    *(v56 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createFreehandDrawingBucketsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = v3[13];
  v76 = enum case for DispatchPredicate.onQueue(_:);
  v77 = v8;
  v78 = v3 + 13;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v3[1];
  v10 = v3 + 1;
  v79 = v11;
  v11(v6, v2);
  if (v7)
  {
    v80 = v0;
    v81 = v1;
    v74 = v10;
    v75 = v2;
    if (one-time initialization token for boardStore == -1)
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
  v12 = 0xD000000000000010;
  v13 = static OS_os_log.boardStore;
  v14 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v13, &dword_0, v14, "Creating schema for the board drawings table", 44, 2, &_swiftEmptyArrayStorage);
  v82 = 0;
  v83 = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v15._countAndFlagsBits = 0x5420455441455243;
  v15._object = 0xED000020454C4241;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v73 = "asset_references";
  v16._object = 0x800000000003F200;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000011;
  v18._object = 0x800000000003F6F0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x800000000003EF80;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x736472616F62;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._object = 0x800000000003F290;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x800000000003EFC0;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x695F74656B637562;
  v24._object = 0xEC0000007865646ELL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000013;
  v25._object = 0x800000000003F3C0;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x645F74656B637562;
  v26._object = 0xEB00000000617461;
  String.append(_:)(v26);
  v27._object = 0x800000000003F2B0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._object = 0x800000000003F3E0;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD00000000000001DLL;
  v29._object = 0x800000000003F710;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x7461645F636E7973;
  v30._object = 0xE900000000000061;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C424F4C4220;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD00000000000001ELL;
  v32._object = 0x800000000003F730;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x202C424F4C4220;
  v33._object = 0xE700000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD00000000000001FLL;
  v34._object = 0x800000000003F750;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x800000000003F710;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD00000000000001ELL;
  v36._object = 0x800000000003F770;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000024;
  v37._object = 0x800000000003F400;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000011;
  v38._object = 0x800000000003F6F0;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 44;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x695F74656B637562;
  v40._object = 0xEC0000007865646ELL;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 10537;
  v41._object = 0xE200000000000000;
  String.append(_:)(v41);
  v42 = v82;
  v43 = v83;
  v44 = *(v80 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v46 = v81;
  v47 = specialized SQLiteStatement.init(database:query:)(v45, v42, v43);

  if (v46)
  {
    return result;
  }

  v49 = *(*(v47 + 16) + 32);
  *v6 = v49;
  v50 = v75;
  v77(v6, v76, v75);
  v51 = v49;
  v52 = _dispatchPreconditionTest(_:)();
  v79(v6, v50);
  if ((v52 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v53 = *(v47 + 16);

  v54 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v53, v47);

  if (v54 == 101)
  {
    v55 = specialized static SQLiteStatement.execute(database:query:)(v44, 0xD00000000000006ALL, 0x800000000003F7C0);
    if (v55 == 101)
    {
      v56 = *(*(v47 + 16) + 32);
      *v6 = v56;
      v77(v6, v76, v50);
      v57 = v56;
      v58 = _dispatchPreconditionTest(_:)();
      v79(v6, v50);
      if (v58)
      {
        swift_beginAccess();
        v59 = *(v47 + 24);
        if (v59)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v60 = v54;
    *(v60 + 8) = 0xD000000000000029;
    *(v60 + 16) = 0x800000000003F790;
    swift_willThrow();
    v61 = *(*(v47 + 16) + 32);
    *v6 = v61;
    v77(v6, v76, v50);
    v62 = v61;
    v12 = _dispatchPreconditionTest(_:)();
    v55 = (v79)(v6, v50);
    if (v12)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v63 = v55;
  v82 = 0;
  v83 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v64._countAndFlagsBits = v12 + 7;
  v64._object = 0x800000000003F830;
  String.append(_:)(v64);
  v65._countAndFlagsBits = v12 + 8;
  v65._object = (v73 | 0x8000000000000000);
  String.append(_:)(v65);
  v66._countAndFlagsBits = v12 + 30;
  v66._object = 0x800000000003F850;
  String.append(_:)(v66);
  v67 = v82;
  v68 = v83;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v69 = v63;
  *(v69 + 8) = v67;
  *(v69 + 16) = v68;
  swift_willThrow();
  v70 = *(*(v47 + 16) + 32);
  *v6 = v70;
  v77(v6, v76, v50);
  v71 = v70;
  LOBYTE(v68) = _dispatchPreconditionTest(_:)();
  v79(v6, v50);
  if ((v68 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  swift_beginAccess();
  v59 = *(v47 + 24);
  if (v59)
  {
LABEL_14:
    sqlite3_finalize(v59);
    *(v47 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createKeyValueDataTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v41 = v4[13];
  v41(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v11(v7, v3);
  if (v8)
  {
    v40 = v11;
    if (one-time initialization token for boardStore == -1)
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
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Creating schema for the key/value table", 39, 2, &_swiftEmptyArrayStorage);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v14._countAndFlagsBits = 0x5420455441455243;
  v14._object = 0xED000020454C4241;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x756C61765F79656BLL;
  v15._object = 0xEE00617461645F65;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 7955819;
  v17._object = 0xE300000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD00000000000001CLL;
  v18._object = 0x800000000003F670;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x65756C6176;
  v19._object = 0xE500000000000000;
  String.append(_:)(v19);
  v20._object = 0x800000000003F3A0;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x6E695F6172747865;
  v21._object = 0xEA00000000006F66;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x29205458455420;
  v22._object = 0xE700000000000000;
  String.append(_:)(v22);
  v23 = v42;
  v24 = v43;
  v25 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v27 = specialized SQLiteStatement.init(database:query:)(v26, v23, v24);

  if (v1)
  {
    return result;
  }

  v29 = *(*(v27 + 16) + 32);
  *v7 = v29;
  v41(v7, v9, v3);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v31 = v40;
  v40(v7, v3);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v32 = *(v27 + 16);

  LODWORD(v33) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v32, v27);

  if (v33 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v35 = v33;
    *(v35 + 8) = 0xD000000000000024;
    *(v35 + 16) = 0x800000000003F690;
    swift_willThrow();
    v36 = *(*(v27 + 16) + 32);
    *v7 = v36;
    v41(v7, v9, v3);
    v37 = v36;
    v38 = _dispatchPreconditionTest(_:)();
    v40(v7, v3);
    if (v38)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v33 = *(*(v27 + 16) + 32);
  *v7 = v33;
  v41(v7, v9, v3);
  v34 = v33;
  v9 = _dispatchPreconditionTest(_:)();
  v31(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v39 = *(v27 + 24);
  if (v39)
  {
    sqlite3_finalize(v39);
    *(v27 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createAssetsTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v41 = v4[13];
  v41(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v11(v7, v3);
  if (v8)
  {
    v40 = v11;
    if (one-time initialization token for boardStore == -1)
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
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Creating schema for the assets table", 36, 2, &_swiftEmptyArrayStorage);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v14._countAndFlagsBits = 0x5420455441455243;
  v14._object = 0xED000020454C4241;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x737465737361;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x75755F7465737361;
  v17._object = 0xEA00000000006469;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD00000000000001CLL;
  v18._object = 0x800000000003F5D0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6F69736E65747865;
  v19._object = 0xE90000000000006ELL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x202C5458455420;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x6E6F7473626D6F74;
  v21._object = 0xEE00657461645F65;
  String.append(_:)(v21);
  v22._object = 0x800000000003F5F0;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23 = v42;
  v24 = v43;
  v25 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v27 = specialized SQLiteStatement.init(database:query:)(v26, v23, v24);

  if (v1)
  {
    return result;
  }

  v29 = *(*(v27 + 16) + 32);
  *v7 = v29;
  v41(v7, v9, v3);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v31 = v40;
  v40(v7, v3);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v32 = *(v27 + 16);

  LODWORD(v33) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v32, v27);

  if (v33 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v35 = v33;
    *(v35 + 8) = 0xD000000000000021;
    *(v35 + 16) = 0x800000000003F610;
    swift_willThrow();
    v36 = *(*(v27 + 16) + 32);
    *v7 = v36;
    v41(v7, v9, v3);
    v37 = v36;
    v38 = _dispatchPreconditionTest(_:)();
    v40(v7, v3);
    if (v38)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v33 = *(*(v27 + 16) + 32);
  *v7 = v33;
  v41(v7, v9, v3);
  v34 = v33;
  v9 = _dispatchPreconditionTest(_:)();
  v31(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v39 = *(v27 + 24);
  if (v39)
  {
    sqlite3_finalize(v39);
    *(v27 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createAssetReferencesTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = v4[13];
  v62 = enum case for DispatchPredicate.onQueue(_:);
  v63 = v9;
  v61[1] = v4 + 13;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v64 = v4[1];
  v64(v7, v3);
  if (v8)
  {
    v65 = v1;
    if (one-time initialization token for boardStore == -1)
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
  _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v12, "Creating schema for the asset_references table", 46, 2, &_swiftEmptyArrayStorage);
  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(146);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._object = 0x800000000003F1E0;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x800000000003F360;
  String.append(_:)(v16);
  v17._object = 0x800000000003F2B0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._object = 0x800000000003F290;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x202C424F4C4220;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD000000000000013;
  v20._object = 0x800000000003F380;
  String.append(_:)(v20);
  v21._object = 0x800000000003F3A0;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x75755F7465737361;
  v22._object = 0xEA00000000006469;
  String.append(_:)(v22);
  v23._object = 0x800000000003F2B0;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x7265727265666572;
  v24._object = 0xED0000657079745FLL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000013;
  v25._object = 0x800000000003F3C0;
  String.append(_:)(v25);
  v26._object = 0x800000000003F3E0;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000024;
  v27._object = 0x800000000003F400;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000013;
  v28._object = 0x800000000003F360;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 44;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000013;
  v30._object = 0x800000000003F380;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 10537;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32 = v66;
  v33 = v67;
  v34 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v36 = v65;
  v37 = specialized SQLiteStatement.init(database:query:)(v35, v32, v33);
  if (v36)
  {
  }

  v38 = v37;

  v39 = *(*(v38 + 16) + 32);
  *v7 = v39;
  v63(v7, v62, v3);
  v40 = v39;
  v41 = _dispatchPreconditionTest(_:)();
  v64(v7, v3);
  if ((v41 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v42 = *(v38 + 16);

  v43 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v42, v38);

  if (v43 == 101)
  {
    v44 = specialized static SQLiteStatement.execute(database:query:)(v34, 0xD00000000000004ELL, 0x800000000003F460);
    if (v44 == 101)
    {
      v45 = specialized static SQLiteStatement.execute(database:query:)(v34, 0xD00000000000004DLL, 0x800000000003F500);
      v46 = 0xD000000000000010;
      if (v45 == 101)
      {
        v47 = *(*(v38 + 16) + 32);
        *v7 = v47;
        v63(v7, v62, v3);
        v48 = v47;
        LOBYTE(v47) = _dispatchPreconditionTest(_:)();
        v64(v7, v3);
        if (v47)
        {
          swift_beginAccess();
          v49 = *(v38 + 24);
          if (v49)
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
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v50 = v43;
    *(v50 + 8) = 0xD00000000000002BLL;
    *(v50 + 16) = 0x800000000003F430;
    swift_willThrow();
    v51 = *(*(v38 + 16) + 32);
    *v7 = v51;
    v63(v7, v62, v3);
    v52 = v51;
    LOBYTE(v51) = _dispatchPreconditionTest(_:)();
    v44 = (v64)(v7, v3);
    if (v51)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v46 = v44;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v53 = v46;
  *(v53 + 8) = 0xD000000000000044;
  *(v53 + 16) = 0x800000000003F4B0;
  swift_willThrow();
  v54 = *(*(v38 + 16) + 32);
  *v7 = v54;
  v63(v7, v62, v3);
  v55 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  v45 = (v64)(v7, v3);
  if (v54)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v56 = v45;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v57 = v56;
  *(v57 + 8) = v46 + 48;
  *(v57 + 16) = 0x800000000003F550;
  swift_willThrow();
  v58 = *(*(v38 + 16) + 32);
  *v7 = v58;
  v63(v7, v62, v3);
  v59 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v64(v7, v3);
  if ((v58 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v49 = *(v38 + 24);
  if (v49)
  {
LABEL_17:
    sqlite3_finalize(v49);
    *(v38 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createCommandHistoryItemsTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = v4[13];
  v51 = enum case for DispatchPredicate.onQueue(_:);
  v52 = v9;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v11(v7, v3);
  if (v8)
  {
    v53 = v1;
    v50 = v11;
    if (one-time initialization token for boardStore == -1)
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
  v12 = 0xD000000000000010;
  v13 = static OS_os_log.boardStore;
  v14 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v13, &dword_0, v14, "Creating schema for the command_history_items table", 51, 2, &_swiftEmptyArrayStorage);
  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(167);
  v15._countAndFlagsBits = 0x5420455441455243;
  v15._object = 0xED000020454C4241;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000015;
  v16._object = 0x800000000003EFA0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x64695F6D657469;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000024;
  v19._object = 0x800000000003F260;
  String.append(_:)(v19);
  v20._object = 0x800000000003F290;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD00000000000001ALL;
  v21._object = 0x800000000003EF80;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._object = 0x800000000003F290;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000015;
  v25._object = 0x800000000003EFC0;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6975755F6D657469;
  v26._object = 0xE900000000000064;
  String.append(_:)(v26);
  v27._object = 0x800000000003F2B0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x7461645F6D657469;
  v28._object = 0xE900000000000061;
  String.append(_:)(v28);
  v29._object = 0x800000000003F2B0;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x616C665F6F646E75;
  v30._object = 0xE900000000000067;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000013;
  v31._object = 0x800000000003F2D0;
  String.append(_:)(v31);
  v32 = v54;
  v33 = v55;
  v34 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v36 = v53;
  v37 = specialized SQLiteStatement.init(database:query:)(v35, v32, v33);

  if (v36)
  {
    return result;
  }

  v39 = *(*(v37 + 16) + 32);
  *v7 = v39;
  v52(v7, v51, v3);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v41 = v50;
  v50(v7, v3);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v42 = *(v37 + 16);

  v43 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v42, v37);

  if (v43 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v46 = v43;
    *(v46 + 8) = v12 + 32;
    *(v46 + 16) = 0x800000000003F2F0;
    swift_willThrow();
    v47 = *(*(v37 + 16) + 32);
    *v7 = v47;
    v52(v7, v51, v3);
    v48 = v47;
    LOBYTE(v47) = _dispatchPreconditionTest(_:)();
    v50(v7, v3);
    if (v47)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v44 = *(*(v37 + 16) + 32);
  *v7 = v44;
  v52(v7, v51, v3);
  v45 = v44;
  v12 = _dispatchPreconditionTest(_:)();
  v41(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v49 = *(v37 + 24);
  if (v49)
  {
    sqlite3_finalize(v49);
    *(v37 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createCommandHistoryAssetReferencesTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = v4[13];
  v70 = enum case for DispatchPredicate.onQueue(_:);
  v71 = v9;
  v72 = v4 + 13;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v69 = v3;
  (v11)(v7, v3);
  if (v8)
  {
    v68 = v11;
    if (one-time initialization token for boardStore == -1)
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
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Creating schema for the command_history_asset_references table", 62, 2, &_swiftEmptyArrayStorage);
  v73 = 0;
  v74 = 0xE000000000000000;
  _StringGuts.grow(_:)(105);
  v14._countAndFlagsBits = 0x5420455441455243;
  v14._object = 0xED000020454C4241;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000020;
  v15._object = 0x800000000003EF30;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._object = 0x800000000003EF60;
  v17._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x800000000003EF80;
  String.append(_:)(v18);
  v19._object = 0x800000000003EFA0;
  v19._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x64695F6D657469;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._object = 0x800000000003EFC0;
  v22._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x75755F7465737361;
  v23._object = 0xEA00000000006469;
  String.append(_:)(v23);
  v24._object = 0x800000000003EFE0;
  v24._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v24);
  v25._object = 0x800000000003EF60;
  v25._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x75755F7465737361;
  v27._object = 0xEA00000000006469;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 10537;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29 = v73;
  v30 = v74;
  v31 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v33 = specialized SQLiteStatement.init(database:query:)(v32, v29, v30);
  if (v1)
  {
  }

  v34 = v33;

  v35 = *(*(v34 + 16) + 32);
  *v7 = v35;
  v36 = v69;
  v71(v7, v70, v69);
  v37 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v38 = v36;
  v39 = v68;
  (v68)(v7, v38);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v40 = *(v34 + 16);

  v41 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v40, v34);

  if (v41 == 101)
  {
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v42._countAndFlagsBits = 0xD00000000000002ELL;
    v42._object = 0x800000000003F040;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 0xD000000000000020;
    v43._object = 0x800000000003EF30;
    String.append(_:)(v43);
    v44._countAndFlagsBits = 10272;
    v44._object = 0xE200000000000000;
    String.append(_:)(v44);
    v45._object = 0x800000000003EF60;
    v45._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v45);
    v46._countAndFlagsBits = 41;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v39 = v74;
    v47 = specialized static SQLiteStatement.execute(database:query:)(v31, v73, v74);

    if (v47 == 101)
    {
      v48 = specialized static SQLiteStatement.execute(database:query:)(v31, 0xD00000000000006DLL, 0x800000000003F0D0);
      v31 = v68;
      v39 = 0xD000000000000017;
      if (v48 == 101)
      {
        v49 = *(*(v34 + 16) + 32);
        *v7 = v49;
        v50 = v69;
        v71(v7, v70, v69);
        v51 = v49;
        LOBYTE(v49) = _dispatchPreconditionTest(_:)();
        (v31)(v7, v50);
        if (v49)
        {
          swift_beginAccess();
          v52 = *(v34 + 24);
          if (v52)
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
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v53 = v41;
    *(v53 + 8) = 0xD00000000000003BLL;
    *(v53 + 16) = 0x800000000003F000;
    swift_willThrow();
    v54 = *(*(v34 + 16) + 32);
    *v7 = v54;
    v55 = v69;
    v71(v7, v70, v69);
    v56 = v54;
    v47 = _dispatchPreconditionTest(_:)();
    (v39)(v7, v55);
    if (v47)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v57 = v47;
  *(v57 + 8) = 0xD00000000000005FLL;
  *(v57 + 16) = 0x800000000003F070;
  swift_willThrow();
  v58 = *(*(v34 + 16) + 32);
  *v7 = v58;
  v59 = v69;
  v71(v7, v70, v69);
  v60 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v48 = (v68)(v7, v59);
  if (v58)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v61 = v48;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v62 = v61;
  *(v62 + 8) = v39 + 57;
  *(v62 + 16) = 0x800000000003F140;
  swift_willThrow();
  v63 = *(*(v34 + 16) + 32);
  *v7 = v63;
  v64 = v69;
  v71(v7, v70, v69);
  v65 = v63;
  LOBYTE(v63) = _dispatchPreconditionTest(_:)();
  (v31)(v7, v64);
  if ((v63 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v52 = *(v34 + 24);
  if (v52)
  {
LABEL_17:
    sqlite3_finalize(v52);
    *(v34 + 24) = 0;
  }
}

uint64_t type metadata accessor for CRLBoardDataStore()
{
  result = type metadata singleton initialization cache for CRLBoardDataStore;
  if (!type metadata singleton initialization cache for CRLBoardDataStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CRLBoardDataStore()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t specialized CRLBoardDataStore._fetchValue(for:valueExtractor:extraInfoExtractor:)(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, Swift::String_optional *a5)
{
  v46 = a5;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v13 = v14;
  v15 = v10[13];
  v48 = enum case for DispatchPredicate.onQueue(_:);
  v47 = v15;
  v15(v13);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v49 = v10[1];
  v49(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v44 = a3;
  v45 = a2;
  v17 = "rForCarmelDataclassAccountKey";
  v18 = "CloudSharedSyncMetadata";
  v19 = " or update a value for key: ";
  v20 = 0xD000000000000017;
  if (a1 != 3)
  {
    v20 = 0xD000000000000024;
    v19 = "Leaving data behind.";
  }

  if (a1 == 2)
  {
    v20 = 0xD000000000000011;
  }

  else
  {
    v18 = v19;
  }

  v21 = 0xD00000000000002DLL;
  if (a1)
  {
    v17 = "CloudSyncMetadata";
  }

  else
  {
    v21 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v50 = v22;
  if (a1 > 1u)
  {
    v17 = v18;
  }

  a1 = (v17 | 0x8000000000000000);
  v23 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v25 = v51;
  v26 = specialized SQLiteStatement.init(database:query:)(v24, 0xD00000000000003ALL, 0x8000000000040E10);
  v51 = v25;
  if (v25)
  {

    if (one-time initialization token for boardStore == -1)
    {
LABEL_17:
      v27 = static OS_os_log.boardStore;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v50;
      *(inited + 40) = a1;
      v29 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v27, &dword_0, v29, "Failed to fetch value for key %@", 32, 2, inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      return swift_willThrow();
    }

LABEL_28:
    swift_once();
    goto LABEL_17;
  }

  v31 = v26;

  v32._countAndFlagsBits = v50;
  v32._object = a1;
  SQLiteStatement.bind(_:at:)(v32, 1);

  v33 = *(*(v31 + 16) + 32);
  *v13 = v33;
  v34 = v48;
  v35 = v47;
  v47(v13, v48, v9);
  v36 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  result = (v49)(v13, v9);
  if ((v33 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteRowIterator();
  v37 = swift_initStackObject();
  v37[4] = 0;
  v37[5] = 1;
  v37[2] = v31;
  v37[3] = 0;
  v38 = SQLiteRowIterator.next()();
  swift_setDeallocating();
  outlined consume of SQLiteError?(v37[3], v37[4], v37[5]);
  if (v38)
  {

    v39 = SQLiteRow.getString(at:)(0);
    object = v46->value._object;
    *v46 = v39;

    if (v45)
    {
      v45(v38, 1);
    }
  }

  v41 = *(*(v31 + 16) + 32);
  *v13 = v41;
  v35(v13, v34, v9);
  v42 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  result = (v49)(v13, v9);
  if ((v41 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v43 = *(v31 + 24);
  if (v43)
  {
    sqlite3_finalize(v43);
    *(v31 + 24) = 0;
  }
}

uint64_t specialized CRLBoardDataStore._saveValue(for:valueBinder:extraInfoBinder:)(unsigned __int8 a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v54 = a3;
  v55 = a5;
  v56 = a2;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue);
  *v14 = v15;
  v16 = v11[13];
  v58 = enum case for DispatchPredicate.onQueue(_:);
  v59 = v16;
  v16(v14);
  v17 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v60 = v11[1];
  result = v60(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v61 = a6;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v66 = "CloudSyncMetadata";
      v19 = 0xD00000000000002DLL;
    }

    else
    {
      v66 = "rForCarmelDataclassAccountKey";
      v19 = 0xD000000000000012;
    }
  }

  else if (a1 == 2)
  {
    v66 = "CloudSharedSyncMetadata";
    v19 = 0xD000000000000011;
  }

  else if (a1 == 3)
  {
    v66 = " or update a value for key: ";
    v19 = 0xD000000000000017;
  }

  else
  {
    v66 = "Leaving data behind.";
    v19 = 0xD000000000000024;
  }

  v57 = v19;
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x8000000000040820;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x756C61765F79656BLL;
  v21._object = 0xEE00617461645F65;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 10272;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 7955819;
  v23._object = 0xE300000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x65756C6176;
  v25._object = 0xE500000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x6E695F6172747865;
  v27._object = 0xEA00000000006F66;
  String.append(_:)(v27);
  v28._object = 0x8000000000040840;
  v28._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v28);
  v29 = v64;
  v30 = v65;
  v31 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v33 = specialized SQLiteStatement.init(database:query:)(v32, v29, v30);
  if (v6)
  {
  }

  v34 = v33;

  v35._object = (v66 | 0x8000000000000000);
  v35._countAndFlagsBits = v57;
  SQLiteStatement.bind(_:at:)(v35, 1);
  v36._countAndFlagsBits = v55;
  v36._object = v61;
  SQLiteStatement.bind(_:at:)(v36, 2);
  v37 = v56;
  if (v56)
  {

    v37(v34, 3);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SQLiteStatement, @unowned Int) -> ())?(v37);
    goto LABEL_17;
  }

  v38 = *(*(v34 + 16) + 32);
  *v14 = v38;
  v59(v14, v58, v10);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  result = v60(v14, v10);
  if (v38)
  {
    swift_beginAccess();
    sqlite3_bind_null(*(v34 + 24), 3);
LABEL_17:
    v40 = *(*(v34 + 16) + 32);
    *v14 = v40;
    v59(v14, v58, v10);
    v41 = v40;
    LOBYTE(v40) = _dispatchPreconditionTest(_:)();
    result = v60(v14, v10);
    if (v40)
    {
      v42 = *(v34 + 16);

      v43 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v42, v34);

      if (v43 != 101)
      {
        v62 = 0;
        v63 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v62 = 0xD00000000000002CLL;
        v63 = 0x8000000000040860;
        v47._object = (v66 | 0x8000000000000000);
        v47._countAndFlagsBits = v57;
        String.append(_:)(v47);

        v48 = v62;
        v49 = v63;
        lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
        swift_allocError();
        *v50 = v43;
        *(v50 + 8) = v48;
        *(v50 + 16) = v49;
        swift_willThrow();
        v51 = *(*(v34 + 16) + 32);
        *v14 = v51;
        v59(v14, v58, v10);
        v52 = v51;
        LOBYTE(v51) = _dispatchPreconditionTest(_:)();
        result = v60(v14, v10);
        if (v51)
        {
          swift_beginAccess();
          v53 = *(v34 + 24);
          if (v53)
          {
            sqlite3_finalize(v53);
            *(v34 + 24) = 0;
          }

          goto LABEL_26;
        }

        goto LABEL_31;
      }

      v44 = *(*(v34 + 16) + 32);
      *v14 = v44;
      v59(v14, v58, v10);
      v45 = v44;
      LOBYTE(v44) = _dispatchPreconditionTest(_:)();
      result = v60(v14, v10);
      if (v44)
      {
        swift_beginAccess();
        v46 = *(v34 + 24);
        if (v46)
        {
          sqlite3_finalize(v46);
          *(v34 + 24) = 0;
        }

LABEL_26:
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t CRLBoardDataStore._fetchStringValue(for:)(void *a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v12.value._countAndFlagsBits - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12.value._countAndFlagsBits = 0;
    v12.value._object = 0;
    specialized CRLBoardDataStore._fetchValue(for:valueExtractor:extraInfoExtractor:)(a1, 0, 0, v1, &v12);
    if (v2)
    {
    }

    else
    {
      return v12.value._countAndFlagsBits;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized CRLStore._performWithTransaction(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    inited = swift_initStackObject();
    *(inited + 16) = v13;
    *(inited + 24) = 0;
    *(&v17 - 4) = __chkstk_darwin(inited);
    *(&v17 - 3) = a1;
    *(&v17 - 2) = a2;
    *(&v17 - 1) = &v18;
    swift_retain_n();
    v15 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(partial apply for specialized closure #1 in CRLStore._performWithTransaction(_:), (&v17 - 6));

    swift_setDeallocating();
    v16 = *(inited + 16);

    return v15 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRLBoardDataStore._saveAccountIdentifierForFreeformDataclassAccount(accountIdentifier:)(uint64_t a1, void *a2)
{
  v20 = a2;
  v18 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  result = v13(v7, v3);
  if (v12)
  {
    *v7 = v11;
    v10(v7, v9, v3);
    v15 = _dispatchPreconditionTest(_:)();
    result = v13(v7, v3);
    if (v15)
    {
      v16 = v20;

      return specialized CRLBoardDataStore._saveValue(for:valueBinder:extraInfoBinder:)(1u, 0, 0, v19, v18, v16);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CRLBoardDataStore._removeAllData(from:)(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = v6[13];
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v45 = v11;
  v11(v9);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = v6[1];
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v42 = v5;
  v43 = v13;
  strcpy(v46, "DELETE FROM ");
  BYTE5(v46[1]) = 0;
  HIWORD(v46[1]) = -5120;
  v14._countAndFlagsBits = CRLBoardDataStore.Table.sqlString.getter(a1);
  countAndFlagsBits = v14._countAndFlagsBits;
  object = v14._object;
  String.append(_:)(v14);

  v17._countAndFlagsBits = 59;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18 = v46[0];
  v19 = v46[1];
  v20 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = specialized SQLiteStatement.init(database:query:)(v21, v18, v19);

  if (v2)
  {
    return result;
  }

  v41 = countAndFlagsBits;
  v24 = *(*(v22 + 16) + 32);
  *v9 = v24;
  v25 = v42;
  v45(v9, v44, v42);
  v26 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v27 = v43;
  v43(v9, v25);
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

  v28 = *(v22 + 16);

  v29 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v28, v22);

  if (v29 != 101)
  {
    goto LABEL_7;
  }

  object = *(*(v22 + 16) + 32);
  *v9 = object;
  v45(v9, v44, v25);
  v30 = object;
  v31 = _dispatchPreconditionTest(_:)();
  v27(v9, v25);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v46[0] = 0xD000000000000021;
    v46[1] = 0x8000000000040960;
    v32._countAndFlagsBits = v41;
    v32._object = object;
    String.append(_:)(v32);

    v33 = v46[0];
    v34 = v46[1];
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v35 = v29;
    *(v35 + 8) = v33;
    *(v35 + 16) = v34;
    swift_willThrow();
    v36 = *(*(v22 + 16) + 32);
    *v9 = v36;
    v45(v9, v44, v25);
    v37 = v36;
    v38 = _dispatchPreconditionTest(_:)();
    v43(v9, v25);
    if (v38)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v39 = *(v22 + 24);
  if (v39)
  {
    sqlite3_finalize(v39);
    *(v22 + 24) = 0;
  }
}

void CRLBoardDataStore._sync_removeAllAccountData()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for boardStore == -1)
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
  v9 = static OS_os_log.boardStore;
  v10 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v10, "Removing all assets.", 20, 2, &_swiftEmptyArrayStorage);
  v11 = *&v1[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v11 + 16));
  v12 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager;
  v13 = *&v1[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager];
  if (v13)
  {
    v14 = *&v1[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v15 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v16 = v1;
    v17 = specialized CRLAssetFileManager.init(store:)();

    v18 = *&v1[v12];
    *&v1[v12] = v17;
    v14 = v17;

    v13 = 0;
  }

  v19 = *(v11 + 16);
  v20 = v13;
  os_unfair_lock_unlock(v19);
  CRLAssetFileManager.purgeAllAssetsFromDisk()();

  if (!v21)
  {
    v22 = 0;
    v36 = 0x800000000003F1A0;
    v33 = 0x800000000003EF30;
    v34 = 0x800000000003F1C0;
    v31 = 0x800000000003F1E0;
    v32 = 0x800000000003EFA0;
    v30 = 0x800000000003F200;
    v35 = xmmword_3A860;
    do
    {
      v23 = *(&outlined read-only object #0 of static CRLBoardDataStore.Table.allCases.getter + v22++ + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v35;
      v25 = 0xE600000000000000;
      v26 = 0x736472616F62;
      v27 = inited;
      switch(v23)
      {
        case 1:
          v26 = 0x74695F6472616F62;
          v25 = 0xEB00000000736D65;
          break;
        case 2:
          v26 = 0x756C61765F79656BLL;
          v25 = 0xEE00617461645F65;
          break;
        case 3:
          v26 = 0x737465737361;
          break;
        case 4:
          v26 = 0xD000000000000010;
          v25 = v31;
          break;
        case 5:
          v26 = 0xD000000000000015;
          v25 = v32;
          break;
        case 6:
          v26 = 0xD000000000000020;
          v25 = v33;
          break;
        case 7:
          v26 = 0x6D5F736472616F62;
          v25 = 0xEF61746164617465;
          break;
        case 8:
          v26 = 0xD000000000000018;
          v25 = v30;
          break;
        case 9:
          v26 = 0x64726F6365726B63;
          v25 = 0xEE0065686361635FLL;
          break;
        case 10:
          v26 = 0x635F656E6F7A6B63;
          v25 = 0xEC00000065686361;
          break;
        case 11:
          v26 = 0xD000000000000015;
          v25 = v34;
          break;
        case 12:
          v25 = 0xE700000000000000;
          v26 = 0x737265646C6F66;
          break;
        case 13:
          v26 = 0xD000000000000010;
          v25 = v36;
          break;
        default:
          break;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 32) = v26;
      *(v27 + 40) = v25;
      v28 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v28, "Removing data for table: %@", 27, 2, v27);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((v27 + 32));
      CRLBoardDataStore._removeAllData(from:)(v23);
    }

    while (v22 != 14);
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CRLBoardDataStore.CRLBoardDataStoreMetadata()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return CRLBoardDataStore.CRLBoardDataStoreMetadata.description.getter(v1 | *v0, *(v0 + 1), *(v0 + 2));
}

unint64_t lazy protocol witness table accessor for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion()
{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table()
{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CRLBoardDataStore.Table(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table();
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CRLBoardDataStore.SchemaVersion(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion();
  a1[2] = lazy protocol witness table accessor for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion();
  result = lazy protocol witness table accessor for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion();
  a1[3] = result;
  return result;
}

uint64_t closure #1 in static CRLBoardDataStore.fetchBoardDataStoreMetadata(dataDirectory:)@<X0>(uint64_t a1@<X8>)
{
  result = CRLBoardDataStore._openDatabase(isReadOnlyMode:)(1);
  if (!v1)
  {
    BoardDataStore = CRLBoardDataStore._fetchBoardDataStoreMetadata()();
    *a1 = BoardDataStore & 1;
    *(a1 + 1) = HIBYTE(BoardDataStore) & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    return specialized CRLBoardDataStore._closeDatabase(alsoCloseSideStore:)();
  }

  return result;
}

uint64_t CRLBoardDataStore._fetchBoardDataStoreMetadata()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v22 = v3[13];
  v22(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v21 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  v10 = v3[1];
  result = v10(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = CRLBoardDataStore._checkHasUnsyncedChanges()();
  if (v1)
  {
    return result;
  }

  v20 = result;
  if (result)
  {
    v19 = 1;
  }

  else
  {
    v12 = CRLBoardDataStore._checkHasData()();
    v19 = v12;
  }

  v14 = v21;
  v13 = v22;
  *v6 = v21;
  v13(v6, v8, v2);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = v10(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  CRLBoardDataStore._fetchStringValue(for:)(&dword_0 + 1);
  if (v19)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 0xFFFFFFFE | v20 & 1;
}

uint64_t CRLBoardDataStore._checkHasUnsyncedChanges()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = v4[13];
  v78 = enum case for DispatchPredicate.onQueue(_:);
  v80 = v4 + 13;
  v79 = v9;
  v9(v7);
  v10 = v8;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = v4[1];
  v82 = v4 + 1;
  v81 = v12;
  v12(v7, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v77 = v3;
  v85 = 0;
  v86 = 0xE000000000000000;
  _StringGuts.grow(_:)(234);
  v84 = v1;
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v13._object = 0x8000000000040EE0;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x74695F6472616F62;
  v14._object = 0xEB00000000736D65;
  String.append(_:)(v14);
  v83 = v2;
  v15._countAndFlagsBits = 0x20455245485720;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x74695F6472616F62;
  v16._object = 0xEB00000000736D65;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._object = 0x800000000003F3E0;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD00000000000001DLL;
  v19._object = 0x8000000000040F00;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x736472616F62;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x20455245485720;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24._object = 0x800000000003F3E0;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x20524F2030203E20;
  v25._object = 0xE800000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x736472616F62;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 46;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000018;
  v28._object = 0x800000000003FC00;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD00000000000001DLL;
  v29._object = 0x8000000000040F00;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x6D5F736472616F62;
  v30._object = 0xEF61746164617465;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x20455245485720;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x6D5F736472616F62;
  v32._object = 0xEF61746164617465;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._object = 0x800000000003F3E0;
  v34._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x8000000000040F00;
  String.append(_:)(v35);
  v36._object = 0x800000000003F1E0;
  v36._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x20455245485720;
  v37._object = 0xE700000000000000;
  String.append(_:)(v37);
  v38._object = 0x800000000003F1E0;
  v38._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 46;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v40._object = 0x800000000003F3E0;
  v40._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD00000000000001DLL;
  v41._object = 0x8000000000040F00;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD000000000000018;
  v42._object = 0x800000000003F200;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x20455245485720;
  v43._object = 0xE700000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD000000000000018;
  v44._object = 0x800000000003F200;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 46;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  v46._object = 0x800000000003F3E0;
  v46._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x292030203E20;
  v47._object = 0xE600000000000000;
  String.append(_:)(v47);
  v48 = v85;
  v49 = v86;
  v50 = *(v83 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v52 = v84;
  v53 = specialized SQLiteStatement.init(database:query:)(v51, v48, v49);
  if (!v52)
  {
    v60 = v53;

    v61 = *(*(v60 + 16) + 32);
    *v7 = v61;
    v62 = v77;
    v79(v7, v78, v77);
    v63 = v61;
    v64 = _dispatchPreconditionTest(_:)();
    v81(v7, v62);
    if (v64)
    {
      type metadata accessor for SQLiteRowIterator();
      inited = swift_initStackObject();
      inited[4] = 0;
      inited[5] = 1;
      inited[2] = v60;
      inited[3] = 0;

      if (SQLiteRowIterator.next()())
      {
        v87 = SQLiteRow.getInt32(at:)(0);
        value = v87.value;
        is_nil = v87.is_nil;

        swift_setDeallocating();
        outlined consume of SQLiteError?(inited[3], inited[4], inited[5]);
        if (!is_nil)
        {
          v68 = *(*(v60 + 16) + 32);
          *v7 = v68;
          v79(v7, v78, v62);
          v69 = v68;
          v70 = _dispatchPreconditionTest(_:)();
          v81(v7, v62);
          if (v70)
          {
            LOBYTE(v56) = value > 0;
            v71 = (v60 + 24);
            swift_beginAccess();
            v72 = *(v60 + 24);
            if (!v72)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_21:
          __break(1u);
        }
      }

      else
      {

        swift_setDeallocating();
        outlined consume of SQLiteError?(inited[3], inited[4], inited[5]);
      }

      v73 = *(*(v60 + 16) + 32);
      *v7 = v73;
      v79(v7, v78, v62);
      v74 = v73;
      v75 = _dispatchPreconditionTest(_:)();
      v81(v7, v62);
      if (v75)
      {
        v71 = (v60 + 24);
        swift_beginAccess();
        LOBYTE(v56) = 0;
        v72 = *(v60 + 24);
        if (!v72)
        {
LABEL_15:

          return v56 & 1;
        }

LABEL_14:
        sqlite3_finalize(v72);
        *v71 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (one-time initialization token for boardStore != -1)
  {
LABEL_18:
    swift_once();
  }

  v54 = static OS_os_log.boardStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_3A860;
  swift_getErrorValue();
  v56 = Error.localizedDescription.getter();
  v58 = v57;
  *(v55 + 56) = &type metadata for String;
  *(v55 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v55 + 32) = v56;
  *(v55 + 40) = v58;
  v59 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v54, &dword_0, v59, "Failed to check if database has unsynced changes with error: %@", 63, 2, v55);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v55 + 32));
  swift_willThrow();
  return v56 & 1;
}

uint64_t closure #1 in static CRLBoardDataStore.performWriteWithDatabase(at:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  result = CRLBoardDataStore._openDatabase(isReadOnlyMode:)(0);
  if (!v3)
  {
    v10[7] = a3;
    __chkstk_darwin(result);
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v9 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CRLBoardDataStore and conformance CRLBoardDataStore, type metadata accessor for CRLBoardDataStore);
    CRLStore._performWithTransaction(_:)(partial apply for closure #1 in closure #1 in static CRLBoardDataStore.performWriteWithDatabase(at:block:), v10, ObjectType, v9);
    return specialized CRLBoardDataStore._closeDatabase(alsoCloseSideStore:)();
  }

  return result;
}

void closure #3 in static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:)(uint64_t a1, uint64_t a2, void *a3)
{
  CRLBoardDataStore._sync_removeAllAccountData()();
  if (!v3)
  {
    CRLBoardDataStore._saveAccountIdentifierForFreeformDataclassAccount(accountIdentifier:)(a2, a3);
  }
}

uint64_t specialized CRLStore._setRawSchemaVersion(rawVersion:)(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v31 = v5[13];
  v31(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v30 = v5[1];
  v30(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  v33 = 0;
  v34 = 0xE000000000000000;

  _StringGuts.grow(_:)(24);

  v33 = 0xD000000000000016;
  v34 = 0x800000000003EED0;
  v32 = a1;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = v33;
  v15 = v34;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();
  v16 = specialized SQLiteStatement.init(database:query:)(v12, v14, v15);

  if (v2)
  {
    return result;
  }

  v18 = *(*(v16 + 16) + 32);
  *v8 = v18;
  v31(v8, v10, v4);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v20 = v30;
  v30(v8, v4);
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  v21 = *(v16 + 16);

  LODWORD(v22) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v21, v16);

  if (v22 != 101)
  {
    goto LABEL_7;
  }

  v22 = *(*(v16 + 16) + 32);
  *v8 = v22;
  v31(v8, v10, v4);
  v23 = v22;
  v10 = _dispatchPreconditionTest(_:)();
  v20(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v24 = v22;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    swift_willThrow();
    v25 = *(*(v16 + 16) + 32);
    *v8 = v25;
    v31(v8, v10, v4);
    v26 = v25;
    v27 = _dispatchPreconditionTest(_:)();
    v20(v8, v4);
    if (v27)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v28 = *(v16 + 24);
  if (v28)
  {
    sqlite3_finalize(v28);
    *(v16 + 24) = 0;
  }
}

uint64_t specialized closure #1 in CRLStore._performWithTransaction(_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  SQLTransaction.begin()();
  if (v6)
  {
    goto LABEL_2;
  }

  if ((a2() & 1) == 0)
  {
    v17 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory);
    v18 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v17, &dword_0, v18, "The block of SQL code returned false. This means we should roll back the transaction", 84, 2, &_swiftEmptyArrayStorage);
    SQLTransaction.rollback()();
    v14 = 0;
    return v14 & 1;
  }

  SQLTransaction.commit()();
  if (v16)
  {
LABEL_2:
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v7 = (SQLiteError.localizedDescription.getter)(v19);
      v9 = v8;
    }

    else
    {
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = v10;
    }

    v11 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A860;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    v13 = static os_log_type_t.error.getter();
    _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v13, "Failed transactional database operation with error %@", 53, 2, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 32));
    SQLTransaction.rollback()();
    swift_willThrow();
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t specialized closure #1 in CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = type metadata accessor for DispatchPredicate();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  v50 = enum case for DispatchPredicate.onQueue(_:);
  if (!v12)
  {
    v32 = *(v8 + 104);
    goto LABEL_16;
  }

  v43 = v8;
  v44 = a3;
  v46 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database;
  v13 = v8 + 104;
  v49 = (v8 + 8);
  v45 = type metadata accessor for SQLiteStatement();
  v14 = (a1 + 40);
  v48 = v13;
  v42 = v13 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  while (1)
  {
    v16 = *(v14 - 1);
    v15 = *v14;
    v17 = *(a2 + v46);
    swift_initStackObject();

    v19 = specialized SQLiteStatement.init(database:query:)(v18, v16, v15);

    if (v4)
    {
      return 1;
    }

    v20 = a2;
    v21 = *(*(v19 + 16) + 32);
    *v11 = v21;
    v22 = v51;
    v47 = *v48;
    v47(v11, v50, v51);
    v23 = v21;
    v24 = _dispatchPreconditionTest(_:)();
    v25 = *v49;
    (*v49)(v11, v22);
    if ((v24 & 1) == 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v26 = *(v19 + 16);

    v27 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v26, v19);

    if (v27 != 101)
    {
      break;
    }

    v28 = *(*(v19 + 16) + 32);
    *v11 = v28;
    v29 = v51;
    v47(v11, v50, v51);
    v30 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    v25(v11, v29);
    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v31 = *(v19 + 24);
    if (v31)
    {
      sqlite3_finalize(v31);
      *(v19 + 24) = 0;
    }

    v14 += 2;
    --v12;
    a2 = v20;
    if (!v12)
    {
      v8 = v43;
      LOBYTE(a3) = v44;
      v32 = v47;
LABEL_16:
      v38 = *(a2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
      *v11 = v38;
      v39 = v51;
      v32(v11, v50, v51);
      v40 = v38;
      LOBYTE(v38) = _dispatchPreconditionTest(_:)();
      (*(v8 + 8))(v11, v39);
      if (v38)
      {
        specialized CRLStore._setRawSchemaVersion(rawVersion:)(a3);
        return 1;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }
  }

  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v33 = v27;
  *(v33 + 8) = 0xD000000000000020;
  *(v33 + 16) = 0x8000000000040660;
  swift_willThrow();
  v34 = *(*(v19 + 16) + 32);
  *v11 = v34;
  v35 = v51;
  v47(v11, v50, v51);
  v36 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v25(v11, v35);
  if ((v34 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v37 = *(v19 + 24);
  if (v37)
  {
    sqlite3_finalize(v37);
    *(v19 + 24) = 0;
  }

  return 1;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return v8();
}

uint64_t _sIeAgH_ytIeAgHr_TRTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of TaskPriority?(a3, v25 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

    return v23;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id specialized CRLBoardDataStore.init(dataDirectory:temporaryDirectory:sideStoreProvider:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v196 = a5;
  v207 = a2;
  v208 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URL();
  v209 = *(v7 - 8);
  v210 = v7;
  v8 = *(v209 + 64);
  v9 = __chkstk_darwin(v7);
  v203 = v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v204 = v189 - v11;
  v206 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v202 = *(v206 - 8);
  v12 = *(v202 + 64);
  __chkstk_darwin(v206);
  v201 = v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v199 - 8) + 64);
  __chkstk_darwin(v199);
  v200 = v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v197 = v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  a6[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_hasAttemptedVacuum] = 0;
  v19 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory;
  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  v20 = static OS_os_log.boardStore;
  *&a6[v19] = static OS_os_log.boardStore;
  v21 = &a6[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName];
  *v21 = 0x7461446472616F62;
  v21[1] = 0xE900000000000061;
  v198 = v21;
  v22 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_userDefaults;
  v23 = objc_opt_self();
  v24 = v20;
  *&a6[v22] = [v23 standardUserDefaults];
  v25 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManagerLock;
  type metadata accessor for CRLUnfairLock();
  v26 = swift_allocObject();
  v27 = swift_slowAlloc();
  *v27 = 0;
  *(v26 + 16) = v27;
  atomic_thread_fence(memory_order_acq_rel);
  *&a6[v25] = v26;
  *&a6[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager] = 0;
  v195 = &a6[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersTableCreationSQLQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(241);
  v192 = "com.apple.freeform.store";
  v211 = a6;
  v28._object = 0x8000000000040A60;
  v28._countAndFlagsBits = 0xD000000000000011;
  v191 = 0xD000000000000011;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x737265646C6F66;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202020202820;
  v30._object = 0xE600000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x696669746E656469;
  v31._object = 0xEA00000000007265;
  String.append(_:)(v31);
  v194 = "    CREATE TABLE ";
  v32._countAndFlagsBits = 0xD000000000000020;
  v32._object = 0x8000000000040A80;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 1635017060;
  v33._object = 0xE400000000000000;
  String.append(_:)(v33);
  v193 = "Y NOT NULL,     ";
  v34._object = 0x8000000000040AB0;
  v34._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x5F65726168736B63;
  v35._object = 0xEC00000061746164;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x20202C424F4C4220;
  v36._object = 0xEB00000000202020;
  String.append(_:)(v36);
  v37._object = 0x8000000000040AD0;
  v37._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x20202C424F4C4220;
  v38._object = 0xEB00000000202020;
  String.append(_:)(v38);
  v39._object = 0x800000000003F8F0;
  v39._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD00000000000001ALL;
  v40._object = 0x800000000003FE80;
  String.append(_:)(v40);
  v213 = 0x4000000000000;
  v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x20202020202CLL;
  v42._object = 0xE600000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD00000000000002DLL;
  v43._object = 0x8000000000040070;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD00000000000001ALL;
  v44._object = 0x800000000003FE80;
  String.append(_:)(v44);
  v213 = 0x4000000000000;
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0x20202020202CLL;
  v46._object = 0xE600000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD000000000000026;
  v47._object = 0x80000000000401E0;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD00000000000001ALL;
  v48._object = 0x800000000003FE80;
  String.append(_:)(v48);
  v213 = 0x4000000000000;
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x20202020202CLL;
  v50._object = 0xE600000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0x656C746974;
  v51._object = 0xE500000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x20202C5458455420;
  v52._object = 0xEB00000000202020;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0xD000000000000012;
  v53._object = 0x800000000003FBE0;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0x2020204C41455220;
  v54._object = 0xEB00000000292020;
  String.append(_:)(v54);
  v55 = v215;
  v56 = v195;
  *v195 = v214;
  *(v56 + 1) = v55;
  v57 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(158);
  v58 = v192;
  v59._object = (v192 | 0x8000000000000000);
  v60 = v191;
  v59._countAndFlagsBits = v191;
  String.append(_:)(v59);
  v61._countAndFlagsBits = 0xD000000000000010;
  v195 = 0xD000000000000010;
  v61._object = 0x800000000003F1A0;
  String.append(_:)(v61);
  v62._countAndFlagsBits = 0x202020202820;
  v62._object = 0xE600000000000000;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 0x696669746E656469;
  v63._object = 0xEA00000000007265;
  String.append(_:)(v63);
  v64._countAndFlagsBits = 0xD00000000000002ALL;
  v64._object = 0x8000000000040AF0;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 0x737265646C6F66;
  v65._object = 0xE700000000000000;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 10272;
  v66._object = 0xE200000000000000;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 0x696669746E656469;
  v67._object = 0xEA00000000007265;
  String.append(_:)(v67);
  v68._countAndFlagsBits = 0xD000000000000019;
  v68._object = 0x8000000000040B20;
  String.append(_:)(v68);
  v69._countAndFlagsBits = 1635017060;
  v69._object = 0xE400000000000000;
  String.append(_:)(v69);
  v70 = v193;
  v71._object = (v193 | 0x8000000000000000);
  v71._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v71);
  v72._countAndFlagsBits = 0xD000000000000026;
  v72._object = 0x80000000000401E0;
  String.append(_:)(v72);
  v73._countAndFlagsBits = 0xD00000000000001ALL;
  v73._object = 0x800000000003FE80;
  String.append(_:)(v73);
  v213 = 0x4000000000000;
  v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v74);

  v75._countAndFlagsBits = 0x292020202020;
  v75._object = 0xE600000000000000;
  String.append(_:)(v75);
  v76 = v215;
  *v57 = v214;
  *(v57 + 1) = v76;
  v77 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v78._object = (v58 | 0x8000000000000000);
  v78._countAndFlagsBits = v60;
  String.append(_:)(v78);
  v79._countAndFlagsBits = 0x64726F6365726B63;
  v79._object = 0xEE0065686361635FLL;
  String.append(_:)(v79);
  v80._countAndFlagsBits = 0x202020202820;
  v80._object = 0xE600000000000000;
  String.append(_:)(v80);
  v81._countAndFlagsBits = 0x695F64726F636572;
  v81._object = 0xE900000000000064;
  String.append(_:)(v81);
  v82._countAndFlagsBits = 0xD000000000000020;
  v83 = v194;
  v82._object = (v194 | 0x8000000000000000);
  String.append(_:)(v82);
  v84._countAndFlagsBits = 0x64695F656E6F7ALL;
  v84._object = 0xE700000000000000;
  String.append(_:)(v84);
  v85._object = (v70 | 0x8000000000000000);
  v85._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v85);
  v86._countAndFlagsBits = 0x64726F636572;
  v86._object = 0xE600000000000000;
  String.append(_:)(v86);
  v87._object = 0x8000000000040B40;
  v87._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v87);
  v88 = v215;
  *v77 = v214;
  *(v77 + 1) = v88;
  v89 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(107);
  v90._object = (v58 | 0x8000000000000000);
  v90._countAndFlagsBits = v60;
  String.append(_:)(v90);
  v91._countAndFlagsBits = 0x635F656E6F7A6B63;
  v91._object = 0xEC00000065686361;
  String.append(_:)(v91);
  v92._countAndFlagsBits = 0x202020202820;
  v92._object = 0xE600000000000000;
  String.append(_:)(v92);
  v93._countAndFlagsBits = 0x64695F656E6F7ALL;
  v93._object = 0xE700000000000000;
  String.append(_:)(v93);
  v94._countAndFlagsBits = 0xD000000000000020;
  v94._object = (v83 | 0x8000000000000000);
  String.append(_:)(v94);
  v95._countAndFlagsBits = 0x646574656C6564;
  v95._object = 0xE700000000000000;
  String.append(_:)(v95);
  v96._countAndFlagsBits = 0x52454745544E4920;
  v96._object = 0xEE0020202020202CLL;
  String.append(_:)(v96);
  v97._countAndFlagsBits = 0x646567727570;
  v97._object = 0xE600000000000000;
  String.append(_:)(v97);
  v98._countAndFlagsBits = 0x52454745544E4920;
  v98._object = 0xEE0020202020202CLL;
  String.append(_:)(v98);
  v99._countAndFlagsBits = 0xD000000000000028;
  v99._object = 0x8000000000040B60;
  String.append(_:)(v99);
  v100._object = 0xEE00292020202020;
  v100._countAndFlagsBits = 0x52454745544E4920;
  String.append(_:)(v100);
  v101 = v215;
  *v89 = v214;
  *(v89 + 1) = v101;
  v102 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v103._object = (v58 | 0x8000000000000000);
  v103._countAndFlagsBits = v60;
  String.append(_:)(v103);
  v104._countAndFlagsBits = 0xD000000000000015;
  v104._object = 0x800000000003F1C0;
  String.append(_:)(v104);
  v105._countAndFlagsBits = 0x202020202820;
  v105._object = 0xE600000000000000;
  String.append(_:)(v105);
  v106._countAndFlagsBits = 0x695F64726F636572;
  v106._object = 0xE900000000000064;
  String.append(_:)(v106);
  v107._countAndFlagsBits = 0xD000000000000020;
  v107._object = (v83 | 0x8000000000000000);
  String.append(_:)(v107);
  v108._countAndFlagsBits = 0x64695F656E6F7ALL;
  v108._object = 0xE700000000000000;
  String.append(_:)(v108);
  v109._object = (v70 | 0x8000000000000000);
  v109._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v109);
  v110._countAndFlagsBits = 0x745F64726F636572;
  v110._object = 0xEB00000000657079;
  String.append(_:)(v110);
  v111._object = 0x8000000000040B90;
  v111._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v111);
  v112 = v215;
  *v102 = v214;
  *(v102 + 1) = v112;
  v113 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery];
  *v113 = 0xD00000000000004FLL;
  *(v113 + 1) = 0x8000000000040BB0;
  v114 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery];
  *v114 = 0xD00000000000005DLL;
  *(v114 + 1) = 0x8000000000040C00;
  v115 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v116._object = 0x8000000000040C60;
  v117 = v195;
  v116._countAndFlagsBits = v195;
  String.append(_:)(v116);
  v118._countAndFlagsBits = 0x736472616F62;
  v118._object = 0xE600000000000000;
  String.append(_:)(v118);
  v119._countAndFlagsBits = 0x4C4F432044444120;
  v119._object = 0xEC000000204E4D55;
  String.append(_:)(v119);
  v120._countAndFlagsBits = 0xD000000000000015;
  v120._object = 0x8000000000040C80;
  String.append(_:)(v120);
  v121._countAndFlagsBits = 0xD00000000000001CLL;
  v121._object = 0x8000000000040CA0;
  String.append(_:)(v121);
  v122 = v215;
  *v115 = v214;
  *(v115 + 1) = v122;
  v123 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v124._object = 0x8000000000040C60;
  v124._countAndFlagsBits = v117;
  String.append(_:)(v124);
  v125._countAndFlagsBits = 0x736472616F62;
  v125._object = 0xE600000000000000;
  String.append(_:)(v125);
  v126._countAndFlagsBits = 0x4C4F432044444120;
  v126._object = 0xEC000000204E4D55;
  String.append(_:)(v126);
  v127._countAndFlagsBits = 0xD00000000000001BLL;
  v127._object = 0x8000000000040CC0;
  String.append(_:)(v127);
  v128._countAndFlagsBits = 0xD00000000000001FLL;
  v128._object = 0x8000000000040CE0;
  String.append(_:)(v128);
  v129 = v215;
  *v123 = v214;
  *(v123 + 1) = v129;
  v130 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v131._object = 0x8000000000040C60;
  v131._countAndFlagsBits = v117;
  String.append(_:)(v131);
  v132._countAndFlagsBits = 0x74695F6472616F62;
  v132._object = 0xEB00000000736D65;
  String.append(_:)(v132);
  v133._countAndFlagsBits = 0x4C4F432044444120;
  v133._object = 0xEC000000204E4D55;
  String.append(_:)(v133);
  v134._countAndFlagsBits = 0xD00000000000001BLL;
  v134._object = 0x8000000000040CC0;
  String.append(_:)(v134);
  v135._countAndFlagsBits = 0xD00000000000001FLL;
  v135._object = 0x8000000000040CE0;
  String.append(_:)(v135);
  v136 = v215;
  *v130 = v214;
  *(v130 + 1) = v136;
  v137 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v138._object = 0x8000000000040C60;
  v138._countAndFlagsBits = v117;
  String.append(_:)(v138);
  v139._countAndFlagsBits = 0xD000000000000018;
  v139._object = 0x800000000003F200;
  String.append(_:)(v139);
  v140._countAndFlagsBits = 0x4C4F432044444120;
  v140._object = 0xEC000000204E4D55;
  String.append(_:)(v140);
  v141._countAndFlagsBits = 0xD00000000000001BLL;
  v141._object = 0x8000000000040CC0;
  String.append(_:)(v141);
  v142._countAndFlagsBits = 0xD00000000000001FLL;
  v142._object = 0x8000000000040CE0;
  String.append(_:)(v142);
  v143 = v215;
  *v137 = v214;
  *(v137 + 1) = v143;
  v144 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery];
  v214 = 0;
  v215 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v145._object = 0x8000000000040C60;
  v145._countAndFlagsBits = v117;
  String.append(_:)(v145);
  v146._countAndFlagsBits = 0x74695F6472616F62;
  v146._object = 0xEB00000000736D65;
  String.append(_:)(v146);
  v147._countAndFlagsBits = 0x4C4F432044444120;
  v147._object = 0xEC000000204E4D55;
  String.append(_:)(v147);
  v148._countAndFlagsBits = 0x6D6574695F627573;
  v148._object = 0xED0000657079745FLL;
  String.append(_:)(v148);
  v149._countAndFlagsBits = 0xD000000000000013;
  v149._object = 0x8000000000040D00;
  String.append(_:)(v149);
  v150 = v215;
  *v144 = v214;
  *(v144 + 1) = v150;
  v151 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery];
  *v151 = 0xD000000000000039;
  *(v151 + 1) = 0x8000000000040D20;
  v152 = v210;
  v153 = &v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery];
  *v153 = 0xD000000000000046;
  *(v153 + 1) = 0x8000000000040D60;
  v154 = *(v209 + 16);
  v195 = (v209 + 16);
  v194 = v154;
  (v154)(&v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_dataDirectory], v208, v152);
  v155 = v207;
  *&v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_temporaryDirectory] = v207;
  v156 = v155;
  *&v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastFetchResultsTime] = 0;
  v157 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue;
  v158 = v196;
  *&v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue] = v196;
  v191 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v159 = v156;
  v160 = v158;
  v214 = OS_dispatch_queue.label.getter();
  v215 = v161;
  v162._countAndFlagsBits = 0x646165722ELL;
  v162._object = 0xE500000000000000;
  String.append(_:)(v162);
  v189[1] = v214;
  v189[0] = v215;
  v163 = *&v211[v157];
  static DispatchQoS.unspecified.getter();
  v214 = &_swiftEmptyArrayStorage;
  v193 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v196 = lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LODWORD(v192) = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v190 = *(v202 + 104);
  v164 = v201;
  v190(v201);
  *&v211[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_readQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v165 = *&v211[v157];
  v166 = OS_dispatch_queue.label.getter();
  v168 = v167;

  v214 = v166;
  v215 = v168;
  v169._countAndFlagsBits = 0x65746972772ELL;
  v169._object = 0xE600000000000000;
  String.append(_:)(v169);
  v202 = v157;
  v170 = *&v211[v157];
  static DispatchQoS.unspecified.getter();
  v214 = &_swiftEmptyArrayStorage;
  v171 = v211;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v190)(v164, v192, v206);
  *&v171[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (v207)
  {
    v172 = v208;
    v173 = v204;
    if (one-time initialization token for inMemoryDatabaseURL != -1)
    {
      swift_once();
    }

    v174 = v210;
    v175 = __swift_project_value_buffer(v210, static SQLiteDatabase.inMemoryDatabaseURL);
    v176 = v194;
    (v194)(v173, v175, v174);
    v177 = v209;
  }

  else
  {
    v173 = v204;
    v172 = v208;
    URL.appendingPathComponent(_:)();
    v177 = v209;
    v174 = v210;
    v176 = v194;
  }

  v178 = *v198;
  v179 = v198[1];
  v180 = v203;
  v176(v203, v173, v174);
  v181 = *&v171[v202];
  v182 = type metadata accessor for SQLiteDatabase();
  v183 = *(v182 + 48);
  v184 = *(v182 + 52);
  swift_allocObject();

  *&v171[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database] = SQLiteDatabase.init(name:url:accessQueue:)(v178, v179, v180, v181);
  v185 = [objc_opt_self() mainBundle];
  v186 = *(v177 + 8);
  v186(v173, v174);
  *&v171[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_assetBundle] = v185;
  v212.receiver = v171;
  v212.super_class = ObjectType;
  v187 = objc_msgSendSuper2(&v212, "init");
  v186(v172, v174);
  return v187;
}

uint64_t specialized static CRLBoardDataStore.CRLBoardDataStoreMetadata.fromUserDefaults.getter()
{
  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.boardStore;
  v1 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v0, &dword_0, v1, "Populating CRLBoardDataStoreMetadata from userdefaults", 54, 2, &_swiftEmptyArrayStorage);
  v2 = CRLAppBundleIdentifier();
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:v4];

  if (v5)
  {
    v6 = [v5 BOOLForKey:@"CRLUserHasUnsyncedDataUserDefault"];
    v7 = @"CRLUserHasDataUserDefault";
    v8 = [v5 BOOLForKey:v7];

    if (v8)
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v6 = 0;
    v9 = 0;
  }

  return v9 | v6;
}

uint64_t specialized static CRLBoardDataStore.fetchBoardDataStoreMetadata(dataDirectory:)(uint64_t a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  outlined init with copy of TaskPriority?(a1, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = *(v16 + 48);
  if (v23(v14, 1, v15) == 1)
  {
    v45 = v10;
    type metadata accessor for CRLBoardDataStoreProvider();
    static CRLBoardDataStoreProvider.mainDataDirectory(legacyLocation:)(0, v22);
    v24 = v23(v14, 1, v15);
    v46 = 0;
    if (v24 != 1)
    {
      outlined destroy of TaskPriority?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    v46 = 0;
    (*(v16 + 32))(v22, v14, v15);
  }

  (*(v16 + 16))(v20, v22, v15);
  v45 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v52 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v50 + 104))(v49, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
  v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = objc_allocWithZone(type metadata accessor for CRLBoardDataStore());
  v27 = specialized CRLBoardDataStore.init(dataDirectory:temporaryDirectory:sideStoreProvider:queue:)(v20, 0, 0, 0, v25, v26);

  v28 = *&v27[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_readQueue];
  __chkstk_darwin(v29);
  *(&v44 - 2) = v27;
  v31 = v30;
  v32 = v46;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v32)
  {
    (*(v16 + 8))(v22, v15);

    if (one-time initialization token for boardStore != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.boardStore;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A860;
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = v36;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v35;
    *(inited + 40) = v37;
    v38 = static os_log_type_t.error.getter();
    _CRLLog(_:dso:type:format:_:)(v33, &dword_0, v38, "Failed to fetch data store metadata with error: %@", 50, 2, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 32));
    v39 = specialized static CRLBoardDataStore.CRLBoardDataStoreMetadata.fromUserDefaults.getter();
    v40 = v39;
    v41 = (v39 >> 8) & 1;
  }

  else
  {
    (*(v16 + 8))(v22, v15);

    v40 = v52;
    v41 = BYTE1(v52);
  }

  if (v41)
  {
    v42 = 256;
  }

  else
  {
    v42 = 0;
  }

  return v42 & 0xFFFFFFFE | v40 & 1;
}

uint64_t specialized static CRLBoardDataStore.dataStoreDataClassAction(_:)(unint64_t a1)
{
  if (a1 < 9)
  {
    return byte_3B066[a1];
  }

  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.dataclassOwner;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3A860;
  type metadata accessor for ACDataclassActionType(0);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v2, &dword_0, v7, "Unknown action type: %@.", 24, 2, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  return 0;
}

void specialized static CRLBoardDataStore.performWriteWithDatabase(at:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v41 = a2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v38 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v35[3] = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v35 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v35 - v22;
  outlined init with copy of TaskPriority?(a1, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v23, v15, v16);
LABEL_6:
    (*(v17 + 16))(v21, v23, v16);
    v26 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v35[1] = "nc data was removed.";
    v35[2] = v26;
    static DispatchQoS.unspecified.getter();
    v44 = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v39 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
    v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v28 = objc_allocWithZone(type metadata accessor for CRLBoardDataStore());
    v29 = specialized CRLBoardDataStore.init(dataDirectory:temporaryDirectory:sideStoreProvider:queue:)(v21, 0, 0, 0, v27, v28);

    v30 = *&v29[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue];
    __chkstk_darwin(v31);
    v32 = v42;
    v35[-4] = v41;
    v35[-3] = v32;
    v35[-2] = v29;
    v34 = v33;
    OS_dispatch_queue.sync<A>(execute:)();
    (*(v17 + 8))(v23, v16);

    return;
  }

  type metadata accessor for CRLBoardDataStoreProvider();
  v25 = v43;
  static CRLBoardDataStoreProvider.mainDataDirectory(legacyLocation:)(0, v23);
  if (!v25)
  {
    v43 = 0;
    if (v24(v15, 1, v16) != 1)
    {
      outlined destroy of TaskPriority?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    goto LABEL_6;
  }

  if (v24(v15, 1, v16) != 1)
  {
    outlined destroy of TaskPriority?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}

void specialized static CRLBoardDataStore.setDefaultToIndicateSyncDataWasRemoved()()
{
  v0 = CRLAppBundleIdentifier();
  if (v0)
  {
    v1 = v0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v7 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:v2];

  if (v7)
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.dataclassOwner;
    v4 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v3, &dword_0, v4, "Setting the user default to tell the app that sync data was removed.", 68, 2, &_swiftEmptyArrayStorage);
    [v7 setBool:1 forKey:@"CRLSyncDataWasRemovedUserDefault"];
  }

  else
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.dataclassOwner;
    v6 = static os_log_type_t.fault.getter();

    _CRLLog(_:dso:type:format:_:)(v5, &dword_0, v6, "Unable to access Freeform's defaults for setting CRLSyncDataWasRemovedUserDefault.", 82, 2, &_swiftEmptyArrayStorage);
  }
}

void specialized static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v7 = ACAccount.crl_identifier.getter();
      v9 = v8;
      if (one-time initialization token for dataclassOwner != -1)
      {
        swift_once();
      }

      v10 = static OS_os_log.dataclassOwner;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v7;
      *(inited + 40) = v9;

      v12 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v12, "Saving account identifier: %@", 29, 2, inited);
      swift_setDeallocating();
      v13 = __swift_destroy_boxed_opaque_existential_0((inited + 32));
      __chkstk_darwin(v13);
      v24 = v7;
      v25 = v9;
      specialized static CRLBoardDataStore.performWriteWithDatabase(at:block:)(a3, partial apply for closure #1 in static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:), v23);
    }

    else
    {
      v16 = ACAccount.crl_identifier.getter();
      v18 = v17;
      if (one-time initialization token for dataclassOwner != -1)
      {
        swift_once();
      }

      v19 = static OS_os_log.dataclassOwner;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_3A860;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;

      v21 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v19, &dword_0, v21, "Removing local data and saving account identifier: %@", 53, 2, v20);
      swift_setDeallocating();
      v22 = __swift_destroy_boxed_opaque_existential_0((v20 + 32));
      __chkstk_darwin(v22);
      v24 = v16;
      v25 = v18;
      specialized static CRLBoardDataStore.performWriteWithDatabase(at:block:)(a3, partial apply for closure #3 in static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:), v23);
      if (!v3)
      {

        goto LABEL_19;
      }
    }

    return;
  }

  if (!a1)
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.dataclassOwner;
    v6 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v5, &dword_0, v6, "Leaving data behind.", 20, 2, &_swiftEmptyArrayStorage);
    return;
  }

  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.dataclassOwner;
  v15 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v14, &dword_0, v15, "Deleting all sync data.", 23, 2, &_swiftEmptyArrayStorage);
  specialized static CRLBoardDataStore.performWriteWithDatabase(at:block:)(a3, closure #2 in static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:), 0);
  if (!v3)
  {
LABEL_19:
    specialized static CRLBoardDataStore.setDefaultToIndicateSyncDataWasRemoved()();
  }
}

unint64_t specialized CRLBoardDataStore.SchemaVersion.init(rawValue:)(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in CRLBoardDataStore.closeDatabase()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in CRLBoardDataStore.closeDatabase()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t sub_33250()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_25(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in CRLBoardDataStore.closeDatabase()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CheckedContinuation.resume(returning:)();
}

uint64_t partial apply for closure #1 in CRLBoardDataStore.closeDatabase(completion:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = specialized CRLBoardDataStore._closeDatabase(alsoCloseSideStore:)();
  return v1(v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized CRLBoardDataStore._closeDatabase(alsoCloseSideStore:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = v2[13];
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = v2[1];
  v10(v5, v1);
  if (v6)
  {
    if (one-time initialization token for boardStore == -1)
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
  v12 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v12, "Closing the board database", 26, 2, &_swiftEmptyArrayStorage);
  v13 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  v14 = *(v13 + 32);
  *v5 = v14;
  v8(v5, v7, v1);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (v10)(v5, v1);
  if (v16)
  {

    specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v18, v13);

    result = swift_beginAccess();
    *(v13 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_336FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in CRLBoardDataStore.openDatabase()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return @objc closure #1 in CRLBoardDataStore.openDatabase()(v2, v3);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_32Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in CRLBoardDataStore.openDatabase()(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in CRLBoardDataStore.openDatabase()(a1);
}

uint64_t objectdestroy_35Tm()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in CRLStore._performWithTransaction(_:)@<X0>(_BYTE *a1@<X8>)
{
  result = specialized closure #1 in CRLStore._performWithTransaction(_:)(*(v1 + 16), *(v1 + 24), *(v1 + 32), **(v1 + 40));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError()
{
  result = lazy protocol witness table cache variable for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError;
  if (!lazy protocol witness table cache variable for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError);
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed SQLiteStatement, @unowned Int) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static CRLBoardDataStore.performWriteWithDatabase(at:block:)()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 32));
  return 1;
}

uint64_t getEnumTagSinglePayload for CRLBoardDataStore.Table(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardDataStore.Table(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLBoardDataStore.SchemaVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardDataStore.SchemaVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ACAccount.crl_identifier.getter()
{
  v1 = inited;
  if ([inited aa_isAccountClass:AAAccountClassPrimary])
  {
    v2 = [inited aa_altDSID];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A860;
    v2 = [v1 accountDescription];
    if (v2)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v6 = v2;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = &type metadata for String;
  *(inited + 56) = &type metadata for String;
  v10 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v10;
  *(inited + 32) = v11;
  *(inited + 40) = v8;
  v45 = objc_opt_self();
  LODWORD(v11) = [v45 _atomicIncrementAssertCount];
  v46 = [objc_allocWithZone(NSString) init];
  specialized withVaList<A>(_:_:)(inited, &v46);
  StaticString.description.getter();
  v12 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (one-time initialization token for crlAssert != -1)
  {
LABEL_36:
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_3AA20;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v11;
  v20 = type metadata accessor for NSString();
  *(v19 + 96) = v20;
  v21 = lazy protocol witness table accessor for type NSString and conformance NSObject();
  *(v19 + 72) = v12;
  *(v19 + 136) = v9;
  *(v19 + 144) = v10;
  *(v19 + 104) = v21;
  *(v19 + 112) = v15;
  *(v19 + 120) = v17;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 152) = 17;
  v22 = v46;
  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v22;
  v23 = v12;
  v24 = v22;
  v25 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v18, &dword_0, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);

  v26 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v18, &dword_0, v26, "No stable account identifier found for %{public}@", 49, 2, inited);

  specialized withVaList<A>(_:_:)(inited, "No stable account identifier found for %{public}@");
  type metadata accessor for __VaListBuilder();
  v27 = swift_allocObject();
  v27[2] = 8;
  v27[3] = 0;
  v12 = v27 + 3;
  v27[4] = 0;
  v27[5] = 0;
  v28 = *(inited + 16);
  if (v28)
  {
    v15 = 0;
    v17 = inited + 32;
    v9 = (&stru_20 + 8);
    while (1)
    {
      v29 = (v17 + 40 * v15);
      v10 = v29[3];
      v11 = v29[4];
      inited = __swift_project_boxed_opaque_existential_1(v29, v10);
      v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v31 = *v12;
      v32 = *(v30 + 16);
      v33 = __OFADD__(*v12, v32);
      v34 = *v12 + v32;
      if (v33)
      {
        goto LABEL_33;
      }

      v10 = v30;
      inited = v27[4];
      if (inited >= v34)
      {
        goto LABEL_25;
      }

      if (inited + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v11 = v27[5];
      if (2 * inited > v34)
      {
        v34 = 2 * inited;
      }

      v27[4] = v34;
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      v35 = swift_slowAlloc();
      v27[5] = v35;
      if (v11)
      {
        break;
      }

LABEL_26:
      if (!v35)
      {
        __break(1u);
        goto LABEL_38;
      }

      v37 = *(v10 + 16);
      if (v37)
      {
        v38 = (v10 + 32);
        v39 = *v12;
        while (1)
        {
          v40 = *v38++;
          *&v35[8 * v39] = v40;
          v39 = *v12 + 1;
          if (__OFADD__(*v12, 1))
          {
            break;
          }

          *v12 = v39;
          if (!--v37)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_10:

      if (++v15 == v28)
      {
        goto LABEL_38;
      }
    }

    if (v35 != v11 || v35 >= &v11[8 * v31])
    {
      memmove(v35, v11, 8 * v31);
    }

    inited = v27;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_25:
    v35 = v27[5];
    goto LABEL_26;
  }

LABEL_38:
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  [v45 handleFailureInFunction:v42 file:v43 lineNumber:17 isFatal:1 format:v44 args:v41];

  CRLCrashBreakpoint();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

uint64_t CRLStore._performWithTransaction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = (*(a4 + 48))(a3, a4);
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = *(a4 + 40);
    v17 = v16(a3, a4);
    type metadata accessor for SQLTransaction();
    inited = swift_initStackObject();
    *(inited + 16) = v17;
    *(inited + 24) = 0;
    v19 = v16(a3, a4);
    __chkstk_darwin(v19);
    v22[-6] = a3;
    v22[-5] = a4;
    v22[-4] = inited;
    v22[-3] = a1;
    v22[-2] = a2;
    v22[-1] = v4;
    v20 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(partial apply for closure #1 in CRLStore._performWithTransaction(_:), &v22[-8]);

    swift_setDeallocating();
    v21 = *(inited + 16);

    return v20 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in CRLStore._performWithTransaction(_:)(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, _BYTE *a4@<X8>)
{
  SQLTransaction.begin()();
  if (!v8)
  {
    if ((a1() & 1) == 0)
    {
      v17 = (*(a3 + 56))(a2, a3);
      v18 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v17, &dword_0, v18, "The block of SQL code returned false. This means we should roll back the transaction", 84, 2, &_swiftEmptyArrayStorage);

      SQLTransaction.rollback()();
      *a4 = 0;
      return;
    }

    SQLTransaction.commit()();
    if (!v16)
    {
      *a4 = 1;
      return;
    }
  }

  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v9 = SQLiteError.localizedDescription.getter(v19);
    v11 = v10;
  }

  else
  {
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = v12;
  }

  v13 = (*(a3 + 56))(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3A860;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v15 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v13, &dword_0, v15, "Failed transactional database operation with error %@", 53, 2, inited);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  SQLTransaction.rollback()();
  swift_willThrow();
}

void partial apply for closure #1 in CRLStore._performWithTransaction(_:)(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  closure #1 in CRLStore._performWithTransaction(_:)(*(v1 + 40), *(v1 + 16), *(v1 + 24), a1);
}

uint64_t getEnumTagSinglePayload for CRLSQLSchemaVersionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLSQLSchemaVersionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void ___sendCategoryAddedNotification_block_invoke_cold_2(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "void _sendCategoryAddedNotification(NSString *__strong)_block_invoke";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLLog.m";
  v7 = 1024;
  v8 = 151;
  v9 = 2082;
  v10 = "category";
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void ___sendCategoryAddedNotification_block_invoke_cold_4(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void CRLAdjustSelectionRangeForChangedRange_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0(&dword_0, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected selectionRange to start within changingRange", v2, v3, v4, v5, v6);
}

void CRLAdjustSelectionRangeForChangedRange_cold_6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0(&dword_0, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad delta passed to CRLAdjustSelectionRangeForChangedRange", v2, v3, v4, v5, v6);
}

void CRLAdjustSelectionRangeForChangedRange_cold_10()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0(&dword_0, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad selectionRange passed to CRLAdjustSelectionRangeForChangedRange", v2, v3, v4, v5, v6);
}

void CRLAdjustSelectionRangeForChangedRange_cold_14()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0(&dword_0, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad changingRange passed to CRLAdjustSelectionRangeForChangedRange", v2, v3, v4, v5, v6);
}

void CRLVersionFromNSString_cold_2(int a1)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)";
  v5 = 2082;
  OUTLINED_FUNCTION_3_0();
  v6 = 172;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Version should consist of 3 numbers separated by '.'", v2, 0x22u);
}

void CRLVersionFromNSString_cold_4(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, 0x12u);
}

void CRLVersionFromNSString_cold_5()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_18);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  }

  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_21);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    v8 = v0;
    v9 = [OUTLINED_FUNCTION_13() packedBacktraceString];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
  }

  [OUTLINED_FUNCTION_7() stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_12() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [OUTLINED_FUNCTION_6_0() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void CRLVersionFromNSString_cold_6()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_11);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  }

  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_14);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    v8 = v0;
    v9 = [OUTLINED_FUNCTION_13() packedBacktraceString];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
  }

  [OUTLINED_FUNCTION_7() stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_12() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [OUTLINED_FUNCTION_6_0() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void CRLVersionFromNSString_cold_7()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_31);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  }

  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_34);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    v8 = v0;
    v9 = [OUTLINED_FUNCTION_13() packedBacktraceString];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
  }

  [OUTLINED_FUNCTION_7() stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_12() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [OUTLINED_FUNCTION_6_0() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void CRLVersionFromNSString_cold_8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_25);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  }

  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_28);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    v8 = v0;
    v9 = [OUTLINED_FUNCTION_13() packedBacktraceString];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
  }

  [OUTLINED_FUNCTION_7() stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_12() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [OUTLINED_FUNCTION_6_0() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void CRLVersionFromNSString_cold_9(void *a1, void *a2)
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  OUTLINED_FUNCTION_14();
  if (!v5)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_43);
  }

  if (OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
  }

  OUTLINED_FUNCTION_14();
  if (!v5)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_46);
  }

  if (OUTLINED_FUNCTION_9())
  {
    v11 = v2;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
  }

  *a2 = 0;
  *a1 = "Out-of-bounds type assignment was clamped to min";
}

void CRLVersionFromNSString_cold_10(void *a1, void *a2)
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  OUTLINED_FUNCTION_14();
  if (!v5)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_37);
  }

  if (OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
  }

  OUTLINED_FUNCTION_14();
  if (!v5)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_40);
  }

  if (OUTLINED_FUNCTION_9())
  {
    v11 = v2;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
  }

  *a2 = 0xFFFFFFFFLL;
  *a1 = "Out-of-bounds type assignment was clamped to max";
}

void __CRLAppBundleIdentifier_block_invoke_cold_1()
{
  v0 = 138412290;
  v1 = CRLAppBundleIdentifier_identifier;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "App bundle identifier (%@) has unexpected prefix.", &v0, 0xCu);
}

void __CRLAppGroupIdentifier_block_invoke_cold_1()
{
  v0 = 138412290;
  v1 = CRLAppGroupIdentifier_identifier;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "App group identifier (%@) has unexpected prefix.", &v0, 0xCu);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}