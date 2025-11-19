void *sub_100E3F264(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v66 = enum case for DispatchPredicate.onQueue(_:);
  v69 = v10;
  v10(v8);
  v11 = v9;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  if ((v12 & 1) == 0)
  {
    goto LABEL_26;
  }

  result = _swiftEmptyArrayStorage;
  if (a1)
  {
    return result;
  }

  v68 = v13;
  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v15._countAndFlagsBits = 0x205443454C4553;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v67 = v2;
  v16._countAndFlagsBits = sub_100EA017C(0x6D5F736472616F62, 0xEF61746164617465);
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x204D4F524620;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6D5F736472616F62;
  v18._object = 0xEF61746164617465;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x4A2052454E4E4920;
  v19._object = 0xEC000000204E494FLL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x736472616F62;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 542002976;
  v21._object = 0xE400000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24._object = 0x8000000101585360;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 2112800;
  v25._object = 0xE300000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6D5F736472616F62;
  v26._object = 0xEF61746164617465;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 46;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28._object = 0x8000000101585360;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x20455245485720;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x6D5F736472616F62;
  v30._object = 0xEF61746164617465;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 46;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._object = 0x80000001015A33D0;
  v32._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 807419424;
  v33._object = 0xE400000000000000;
  String.append(_:)(v33);
  v34 = v71;
  v35 = v72;
  v70 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v37 = v67;
  v38 = sub_10001CC04(v36, v34, v35);
  if (v37)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v39 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      v43 = v42;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v41;
      *(inited + 40) = v43;
      v44 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v44, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_27:
    swift_once();
    goto LABEL_5;
  }

  v45 = v38;
  v67 = 0;

  v46 = *(*(v45 + 16) + 32);
  *v8 = v46;
  v47 = v66;
  v69(v8, v66, v5);
  v48 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v68(v8, v5);
  if ((v46 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  type metadata accessor for SQLiteRowIterator();
  v49 = swift_initStackObject();
  v49[3] = 0;
  v50 = v49 + 3;
  v49[4] = 0;
  v64 = v49 + 4;
  v49[5] = 1;
  v49[2] = v45;

  swift_beginAccess();
  v51 = *(*(v45 + 16) + 32);
  *v8 = v51;
  v69(v8, v47, v5);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  v68(v8, v5);
  if ((v51 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v65 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v50 = 0;
    v49[4] = 0;
    v49[5] = 1;
    v53 = sqlite3_step(*(v45 + 24));
    if (v53 != 100)
    {
      break;
    }

    v54 = swift_retain_n();
    if (sub_100EA0450(v54, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v65 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v65 = v70;
      v55 = *(*(v45 + 16) + 32);
      *v8 = v55;
      v56 = v8;
      v47 = v66;
    }

    else
    {

      v55 = *(*(v45 + 16) + 32);
      *v8 = v55;
      v56 = v8;
    }

    v69(v56, v47, v5);
    v57 = v55;
    v58 = _dispatchPreconditionTest(_:)();
    v68(v8, v5);
    if ((v58 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (v53 && v53 != 101)
  {
    *v50 = v53;
    v59 = v64;
    *v64 = 0;
    v59[1] = 0;
  }

  v60 = *(*(v45 + 16) + 32);
  *v8 = v60;
  v69(v8, v47, v5);
  v61 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  v68(v8, v5);
  if ((v60 & 1) == 0)
  {
LABEL_29:
    __break(1u);
  }

  v62 = *(v45 + 24);
  if (v62)
  {
    sqlite3_finalize(v62);
    *(v45 + 24) = 0;
  }

  return v65;
}

uint64_t sub_100E3FA50@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v83 = a3;
  ObjectType = swift_getObjectType();
  v82 = type metadata accessor for UUID();
  v81 = *(v82 - 8);
  v7 = __chkstk_darwin(v82);
  v87 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = &v72 - v9;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v85 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v88);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v14 - 8);
  v16 = &v72 - v15;
  v17 = type metadata accessor for CRLBoardCRDTData(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  *&v79 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  *&v78 = &v72 - v21;
  v22 = *a1;
  v23 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  v24 = *&a2[v23];
  v25 = v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v26 = *(v24 + 16);
  v89 = v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  if (v26)
  {

    v27 = sub_1000486F0(v25);
    if (v28)
    {
      v29 = *(*(v24 + 56) + 8 * v27);

      v30 = *(v29 + 16);

      if (v30)
      {
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v31 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v33 = sub_10084B8C8();
        v35 = v34;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v33;
        *(inited + 40) = v35;
        v36 = static os_log_type_t.default.getter();
        sub_100005404(v31, &_mh_execute_header, v36, "Excluding board from unsynced changes. Board identifier: %{public}@", 67, 2, inited);
        swift_setDeallocating();
        result = sub_100005070(inited + 32);
        *v83 = 0;
        return result;
      }
    }

    else
    {
    }
  }

  v38 = (v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v39 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  if (v39 >> 60 == 15)
  {
    v40 = 0;
  }

  else
  {
    v84 = a2;
    v41 = v4;
    v42 = *v38;
    sub_100024E84(*v38, v39);
    sub_100024E84(v42, v39);
    sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

    CRDT.init(serializedData:)();
    if (v41)
    {

      sub_100025870(v42, v39);

      (*(v18 + 56))(v16, 1, 1, v17);
      sub_10000CAAC(v16, &qword_101A21C68);
      v40 = 0;
    }

    else
    {
      (*(v18 + 56))(v16, 0, 1, v17);
      v77 = type metadata accessor for CRLBoardCRDTData;
      v43 = v78;
      sub_100025668(v16, v78, type metadata accessor for CRLBoardCRDTData);
      v76 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
      v44 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
      v75 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
      v74 = v44;
      v45 = v79;
      sub_10000C83C(v43, v79, type metadata accessor for CRLBoardCRDTData);
      v46 = (v89 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v47 = v46[1];
      v73 = *v46;
      type metadata accessor for CRLBoardData(0);
      v40 = swift_allocObject();

      sub_100025870(v42, v39);

      sub_100026028(v43, type metadata accessor for CRLBoardCRDTData);
      *(v40 + 16) = 7;
      *(v40 + 40) = v74;
      *(v40 + 24) = v75;
      *(v40 + 56) = v76;
      sub_100025668(v45, v40 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v77);
      v48 = (v40 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      *v48 = v73;
      v48[1] = v47;
    }

    v4 = 0;
    a2 = v84;
  }

  v49 = v89;
  sub_10000C83C(v89, v13, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v50 = sub_100E320D4(v13);
  sub_100026028(v13, type metadata accessor for CRLAssetReferrerIdentifier);
  if (v4)
  {
  }

  v93 = &_swiftEmptySetSingleton;
  sub_100DCB554(v50);
  v88 = 0;

  sub_10000C83C(v49, v85, type metadata accessor for CRLBoardIdentifier);
  LODWORD(v89) = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
  v51 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  v52 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
  v79 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
  v78 = v52;
  swift_beginAccess();
  v53 = v81;
  v54 = *(v81 + 16);
  v55 = v82;
  v54(v86, v22 + v51, v82);
  v56 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
  swift_beginAccess();
  v54(v87, v22 + v56, v55);
  v57 = a2;
  v84 = a2;
  LODWORD(v77) = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone);
  v76 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted);
  v58 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges);
  v59 = v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData;
  v60 = *(v22 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
  v61 = *(v59 + 8);
  v62 = v93;
  v91 = ObjectType;
  v92 = &off_1018A4BB8;
  *&v90 = v57;
  type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
  v63 = swift_allocObject();
  v64 = OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData;
  *(v63 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData) = 0;
  sub_100050F74(&v90, v63 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_persistenceContext);
  *(v63 + v64) = v40;
  *(v63 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedChanges) = v58;
  *(v63 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedAssetUUIDs) = v62;
  *(v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData) = xmmword_101486780;
  sub_100025668(v85, v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v65 = v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions;
  v66 = v78;
  *v65 = v79;
  *(v65 + 16) = v66;
  *(v65 + 32) = v89;
  v67 = *(v53 + 32);
  v67(v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID, v86, v55);
  v67(v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v87, v55);
  *(v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned) = v77;
  *(v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted) = v76;
  v68 = (v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
  v69 = *(v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
  v70 = *(v63 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8);
  *v68 = v60;
  v68[1] = v61;
  sub_100024E84(v60, v61);
  sub_100024E84(v60, v61);

  v71 = v84;
  sub_100025870(v69, v70);
  sub_100025870(v60, v61);

  *v83 = v63;
  return result;
}

uint64_t sub_100E404F0@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v72 = a4;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  v13 = *&a2[v12];
  v14 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  v15 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier;
  if (*(v13 + 16))
  {

    v16 = sub_1000486F0(v11 + v15);
    if (v17)
    {
      v18 = *(*(v13 + 56) + 8 * v16);
      swift_beginAccess();
      LOBYTE(v18) = sub_1007A03F0(v14, *(v18 + 32));

      if (v18)
      {
        v19 = v72;
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v20 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        *(inited + 56) = &type metadata for Int;
        *(inited + 64) = &protocol witness table for Int;
        *(inited + 32) = v14;
        v22 = sub_10084B8C8();
        v24 = v23;
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = sub_1000053B0();
        *(inited + 72) = v22;
        *(inited + 80) = v24;
        v25 = static os_log_type_t.default.getter();
        sub_100005404(v20, &_mh_execute_header, v25, "Excluding freehand drawing bucket from unsynced changes. Bucket Index: %d, board identifier: %{public}@", 103, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        result = swift_arrayDestroy();
        *v19 = 0;
        return result;
      }
    }

    else
    {
    }
  }

  v68 = v14;
  if (*(*a3 + 16))
  {
    sub_1000486F0(v11 + v15);
    if (v27)
    {
      v67 = v4;

LABEL_14:
      v66 = v10;
      sub_10000C83C(v11 + v15, v10, type metadata accessor for CRLBoardIdentifier);
      v29 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
      v30 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
      v31 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v62 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v32 = v62;
      v57 = v31;
      v33 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v34 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
      v35 = (v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions);
      v36 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 40);
      v65 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 32);
      v64 = v36;
      v63 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions + 48);
      v61 = *(v11 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges);
      v37 = type metadata accessor for CRLBoardDataStore(0);
      v38 = v35[1];
      v60 = *v35;
      v59 = v38;
      v70 = v37;
      v71 = &off_1018A4BB8;
      sub_100024E98(v29, v30);
      v39 = v32;
      v40 = v57;
      sub_100024E84(v39, v57);
      sub_100024E84(v33, v34);
      v41 = a2;

      *&v69 = v41;
      type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
      v42 = swift_allocObject();
      v43 = (v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData);
      v58 = xmmword_101486780;
      *(v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
      sub_100050F74(&v69, v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_persistenceContext);
      v44 = (v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData);
      *v44 = v29;
      v44[1] = v30;
      v45 = *v43;
      v46 = v43[1];
      *v43 = v33;
      v43[1] = v34;
      sub_100025870(v45, v46);
      *(v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_unsyncedChanges) = v61;
      v47 = v42 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions;
      v48 = v59;
      *v47 = v60;
      *(v47 + 16) = v48;
      v49 = v64;
      *(v47 + 32) = v65;
      *(v47 + 40) = v49;
      *(v47 + 48) = v63;
      *(v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData) = v58;
      sub_100025668(v66, v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex) = v68;
      v50 = (v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
      v51 = *(v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
      v52 = *(v42 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData + 8);
      v53 = v62;
      *v50 = v62;
      v50[1] = v40;
      sub_100024E84(v53, v40);
      sub_100025870(v51, v52);
      result = sub_100025870(v53, v40);
      *v72 = v42;
      return result;
    }
  }

  result = sub_100DEB448();
  if (v4)
  {
    return result;
  }

  if (result)
  {
    v67 = 0;
    sub_10000C83C(result + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, v10, type metadata accessor for CRLBoardIdentifier);

    sub_100BC4904(v28, v10);
    goto LABEL_14;
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v54 = static OS_os_log.dataSync;
  v55 = static os_log_type_t.error.getter();
  result = sub_100005404(v54, &_mh_execute_header, v55, "Found a freehandDrawingBucket database row that has no corresponding board database row", 87, 2, _swiftEmptyArrayStorage);
  *v72 = 0;
  return result;
}

uint64_t sub_100E40B04@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *&v132 = a3;
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v126 = &v116 - v8;
  v9 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v9 - 8);
  v134 = &v116 - v10;
  v131 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v131);
  v12 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v13 - 8);
  v127 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  *&v133 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v116 - v19;
  v21 = *a1;
  v22 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  v137 = a2;
  v23 = *&a2[v22];
  v24 = *(v16 + 16);
  v129 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID;
  v140 = v24;
  v141 = v16 + 16;
  v24(v20, v21 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v15);
  v25 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier;

  v135 = v25;
  v136 = v21;
  LOBYTE(a2) = sub_101270BB4(v20, v21 + v25, v23);

  v125 = v16;
  v138 = *(v16 + 8);
  v139 = v16 + 8;
  v138(v20, v15);
  v128 = a4;
  if ((a2 & 1) == 0)
  {
    v36 = *v132;
    if (*(*v132 + 16) && (v37 = sub_1000486F0(v136 + v135), (v38 & 1) != 0))
    {
      v39 = *(*(v36 + 56) + 8 * v37);
      swift_retain_n();
      v40 = v137;
    }

    else
    {
      v40 = v137;
      v41 = v142;
      result = sub_100DEB448();
      if (v41)
      {
        return result;
      }

      if (!result)
      {
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v78 = static OS_os_log.dataSync;
        v79 = static os_log_type_t.error.getter();
        result = sub_100005404(v78, &_mh_execute_header, v79, "Found a boardItem database row that has no corresponding board database row", 75, 2, _swiftEmptyArrayStorage);
LABEL_41:
        *v128 = 0;
        return result;
      }

      v142 = 0;
      v39 = result;
      v42 = v127;
      sub_10000C83C(result + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, v127, type metadata accessor for CRLBoardIdentifier);
      v43 = swift_retain_n();
      sub_100BC4904(v43, v42);
    }

    v44 = v136;
    v45 = sub_100E929EC(v136);
    v46 = *(sub_1005B981C(&qword_1019F4720) + 48);
    v140(v12, v44 + v129, v15);
    sub_10000C83C(v39 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, &v12[v46], type metadata accessor for CRLBoardIdentifier);

    swift_storeEnumTagMultiPayload();
    v47 = v142;
    v48 = sub_100E320D4(v12);
    v49 = v47;
    sub_100026028(v12, type metadata accessor for CRLAssetReferrerIdentifier);
    if (v47)
    {
    }

    v117 = v45;
    v118 = v39;
    v146 = &_swiftEmptySetSingleton;
    if (v48 >> 62)
    {
LABEL_45:
      v50 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v128;
      if (v50)
      {
LABEL_14:
        v52 = 0;
        v53 = *&v40[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
        v131 = v15;
        *&v132 = v53;
        v119 = v48 & 0xFFFFFFFFFFFFFF8;
        v120 = v50;
        v123 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
        v124 = v48 & 0xC000000000000001;
        v142 = v49;
        v121 = v48;
        v122 = v20;
        while (1)
        {
          if (v124)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v52 >= *(v119 + 16))
            {
              __break(1u);
              goto LABEL_45;
            }
          }

          v15 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          v55 = OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID;
          *&v130 = v54;
          v56 = v40;
          v57 = v133;
          v58 = v131;
          v140(v133, v54 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v131);
          v59 = v57;
          v60 = v56;
          sub_100E6AF38(v20, v59);
          v138(v20, v58);
          os_unfair_lock_lock(*(v132 + 16));
          v61 = v123;
          v62 = *&v60[v123];
          if (v62)
          {
            v63 = *&v60[v123];
          }

          else
          {
            v64 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
            v65 = v60;
            v66 = v60;
            v67 = sub_10001F1A0(v66);

            v68 = *&v65[v61];
            *&v65[v61] = v67;
            v63 = v67;

            v62 = 0;
          }

          v69 = *(v132 + 16);
          v70 = v62;
          os_unfair_lock_unlock(v69);
          v71 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v72 = swift_allocObject();
          v73 = v130;
          *(v72 + 16) = v71;
          *(v72 + 24) = v73;

          v74 = v134;
          sub_10108CAF4(v73 + v55, 0, 3, sub_100EA53E8, v72, v134);

          v75 = type metadata accessor for URL();
          if ((*(*(v75 - 8) + 48))(v74, 1, v75) == 1)
          {
            break;
          }

          sub_10000CAAC(v74, &unk_1019F33C0);
          ++v52;
          v48 = v121;
          v76 = v15 == v120;
          v49 = v142;
          v15 = v131;
          v40 = v137;
          v20 = v122;
          if (v76)
          {

            v77 = v146;
            v51 = v128;
            goto LABEL_47;
          }
        }

        sub_10000CAAC(v74, &unk_1019F33C0);
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v80 = static OS_os_log.dataSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v82 = v122;
        if (v117)
        {
          (*(*v117 + 264))();
          v83 = UUID.uuidString.getter();
          v85 = v84;
          v138(v82, v131);
        }

        else
        {
          v83 = 0;
          v85 = 0;
        }

        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        if (v85)
        {
          v86 = v83;
        }

        else
        {
          v86 = 0;
        }

        v87 = 0xE000000000000000;
        if (v85)
        {
          v87 = v85;
        }

        *(inited + 32) = v86;
        *(inited + 40) = v87;

        v88 = static os_log_type_t.default.getter();
        sub_100005404(v80, &_mh_execute_header, v88, "Skipping item with id %{public}@ when fetching unsynced changes because file for the item's asset doesn't exists", 112, 2, inited);

        swift_setDeallocating();
        result = sub_100005070(inited + 32);
        goto LABEL_41;
      }
    }

    else
    {
      v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v51 = v128;
      if (v50)
      {
        goto LABEL_14;
      }
    }

    v77 = &_swiftEmptySetSingleton;
LABEL_47:
    v89 = sub_100E2F2E8(v77);
    if (v49)
    {
    }

    else if (v89)
    {
      v90 = v136;
      v140(v20, v136 + v129, v15);
      LODWORD(v134) = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 32);
      v140 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
      v91 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
      v138 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8);
      v139 = v91;
      LODWORD(v137) = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16);
      v92 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
      v93 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
      v132 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 16);
      v133 = v93;
      swift_beginAccess();
      sub_10000BE14(v90 + v92, v126, &qword_1019F6990);
      sub_10000C83C(v90 + v135, v127, type metadata accessor for CRLBoardIdentifier);
      LODWORD(v141) = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone);
      v94 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
      v142 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
      v131 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges);
      v95 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
      v96 = *(v90 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
      v135 = v96;
      v136 = v95;
      v144 = type metadata accessor for CRLBoardDataStore(0);
      v145 = &off_1018A4BB8;
      v97 = v40;
      sub_100024E84(v142, v94);
      sub_100024E84(v95, v96);

      *&v143 = v97;
      type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
      v98 = swift_allocObject();
      v99 = v15;
      v100 = OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData;
      *(v98 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData) = 0;
      v101 = (v98 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData);
      v130 = xmmword_101486780;
      *(v98 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
      sub_100050F74(&v143, v98 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_persistenceContext);
      *(v98 + v100) = v117;
      v102 = *v101;
      v103 = v101[1];
      *v101 = v142;
      v101[1] = v94;
      sub_100025870(v102, v103);
      *(v98 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedChanges) = v131;
      *(v98 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedAssetUUIDs) = v77;
      v104 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
      v105 = v125;
      (*(v125 + 56))(v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID, 1, 1, v99);
      *(v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData) = v130;
      (*(v105 + 32))(v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v20, v99);
      v106 = v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions;
      *(v106 + 32) = v134;
      v107 = v132;
      *v106 = v133;
      *(v106 + 16) = v107;
      v108 = v139;
      *(v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_objectOptions) = v140;
      v109 = v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues;
      v110 = v138;
      *v109 = v108;
      *(v109 + 8) = v110;
      *(v109 + 16) = v137;
      swift_beginAccess();
      sub_10002C638(v126, v98 + v104, &qword_1019F6990);
      swift_endAccess();
      sub_100025668(v127, v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned) = v141;
      v111 = (v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
      v112 = *(v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
      v113 = *(v98 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8);
      v115 = v135;
      v114 = v136;
      *v111 = v136;
      v111[1] = v115;
      sub_100024E84(v114, v115);
      sub_100025870(v112, v113);
      result = sub_100025870(v114, v115);
      *v128 = v98;
    }

    else
    {

      *v51 = 0;
    }

    return result;
  }

  if (qword_1019F2258 != -1)
  {
LABEL_43:
    swift_once();
  }

  v26 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_10146BDE0;
  v140(v20, v136 + v129, v15);
  v28 = UUID.uuidString.getter();
  v30 = v29;
  v138(v20, v15);
  *(v27 + 56) = &type metadata for String;
  v31 = sub_1000053B0();
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v32 = sub_10084B8C8();
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v31;
  *(v27 + 72) = v32;
  *(v27 + 80) = v33;
  v34 = static os_log_type_t.default.getter();
  sub_100005404(v26, &_mh_execute_header, v34, "Excluding board item from unsynced changes item UUID: %{public}@, board identifier: %{public}@", 94, 2, v27);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  result = swift_arrayDestroy();
  *v128 = 0;
  return result;
}

uint64_t sub_100E4197C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_100E2D8C8();
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = UUID.uuidString.getter();
    v7 = v6;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v8 = static os_log_type_t.error.getter();
    sub_100005404(v3, &_mh_execute_header, v8, "Failed to fetch asset row for assetUUID id %{public}@ when fetching unsynced changes", 84, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    return v2;
  }

  return result;
}

uint64_t sub_100E41AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  *&v49 = a3;
  v46 = a4;
  v47 = a5;
  v44 = a1;
  v45 = a2;
  v6 = type metadata accessor for UUID();
  v50 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v5;
  v19 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    static Date.timeIntervalSinceReferenceDate.getter();
    v23 = v22;
    sub_10000C83C(v44, v14, type metadata accessor for CRLBoardIdentifier);
    v44 = 0x2000400000000;
    v24 = v50;
    v25 = *(v50 + 16);
    v25(v11, v45, v6);
    v25(v9, v49, v6);
    v45 = sub_10001FF1C();
    type metadata accessor for CRLBoardDatabaseRow();
    v26 = swift_allocObject();
    v49 = xmmword_101486780;
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data) = xmmword_101486780;
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData) = xmmword_101486780;
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData) = xmmword_101486780;
    sub_10000C83C(v14, v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v27 = &v14[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
    v28 = *v27;
    v29 = *(v27 + 1);

    sub_100026028(v14, type metadata accessor for CRLBoardIdentifier);
    v30 = (v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName);
    *v30 = v28;
    v30[1] = v29;
    v31 = v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
    v32 = v44;
    *v31 = 0x1000000000000;
    *(v31 + 8) = v32;
    *(v31 + 16) = 0x1000000000000;
    *(v31 + 24) = 0;
    *(v31 + 32) = 1;
    v33 = *(v24 + 32);
    v33(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID, v11, v6);
    v33(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID, v9, v6);
    v34 = *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
    v35 = *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data) = v49;
    sub_100025870(v34, v35);
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone) = 1;
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges) = 0;
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges) = 0;
    v36 = (v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
    v37 = *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
    v38 = *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8);
    v40 = v46;
    v39 = v47;
    sub_100024E84(v46, v47);
    *v36 = v40;
    v36[1] = v39;
    sub_100025870(v37, v38);
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate) = v23;
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted) = 0;
    v41 = *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
    v42 = *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData) = v49;
    sub_100025870(v41, v42);
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime) = v23;
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable) = 0;
    *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion) = v45;
    sub_100E03D90(v26);
    swift_setDeallocating();
    sub_100026028(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);

    v43 = *(v50 + 8);
    v43(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID, v6);
    v43(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID, v6);
    sub_100025870(*(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data), *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8));
    sub_100025870(*(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData), *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8));
    sub_100025870(*(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData), *(v26 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8));
    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

sqlite3_int64 sub_100E420CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v147 = a8;
  v143 = a7;
  v144 = a5;
  LODWORD(v140) = a4;
  v139 = a3;
  v138 = a2;
  *&v154 = a1;
  v141 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v141);
  v142 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v14 - 8);
  v137 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v16 - 8);
  v136 = &v134 - v17;
  v18 = type metadata accessor for UUID();
  v151 = *(v18 - 1);
  v152 = v18;
  __chkstk_darwin(v18);
  v135 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&qword_101A21E08);
  v21 = __chkstk_darwin(v20);
  v134 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v134 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *&v10[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v28 = v29;
  v30 = *(v26 + 104);
  v146 = enum case for DispatchPredicate.onQueue(_:);
  v148 = v30;
  v149 = v26 + 104;
  v30(v28);
  v31 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v33 = *(v26 + 8);
  v32 = v26 + 8;
  v150 = v28;
  v34 = v28;
  v35 = v33;
  v145 = v25;
  v33(v34, v25);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v36 = v153;
  result = sub_100DEF7D4(v24, v154, a6);
  if (!v36)
  {
    v39 = a6;
    v153 = 0;
    v40 = *(v20 + 64);
    *&v24[*(v20 + 48)] = result;
    v24[v40] = v38 & 1;
    if (v38)
    {
      v140 = result;
      v41 = *(sub_1005B981C(&qword_1019F4720) + 48);
      v42 = v142;
      (*(v151 + 16))(v142, v154, v152);
      sub_10000C83C(v39, v42 + v41, type metadata accessor for CRLBoardIdentifier);
      swift_storeEnumTagMultiPayload();
      v43 = v153;
      sub_100DF8718(v42);
      sub_100026028(v42, type metadata accessor for CRLAssetReferrerIdentifier);
      if (v43)
      {
        return sub_10000CAAC(v24, &qword_101A21E08);
      }

      v151 = v39;
      v142 = v11;
      v152 = v35;
      v153 = v32;
      v76 = v24;
      v77 = v147;
      if (v147 >> 60 == 15)
      {
        v78 = 0;
      }

      else
      {
        v78 = 0x645F636E79732C20;
      }

      if (v147 >> 60 == 15)
      {
        v79 = 0xE000000000000000;
      }

      else
      {
        v79 = 0xEF3F203D20617461;
      }

      v141 = v76;
      v80 = v134;
      sub_10000BE14(v76, v134, &qword_101A21E08);
      if (*(v80 + *(v20 + 48)))
      {
        sub_10000CAAC(v80, &qword_1019F6990);
        v81 = v150;
        if (v140 != 16)
        {
          v82 = 0;
          v83 = 0xE000000000000000;
          goto LABEL_19;
        }
      }

      else
      {
        sub_10000CAAC(v80, &qword_1019F6990);
        v81 = v150;
      }

      v83 = 0x80000001015A7390;
      v82 = 0xD000000000000029;
LABEL_19:
      v155 = 0;
      v156 = 0xE000000000000000;
      _StringGuts.grow(_:)(67);
      v84._countAndFlagsBits = 0x20455441445055;
      v84._object = 0xE700000000000000;
      String.append(_:)(v84);
      v85._countAndFlagsBits = 0x74695F6472616F62;
      v85._object = 0xEB00000000736D65;
      String.append(_:)(v85);
      v86._countAndFlagsBits = 0x2054455320;
      v86._object = 0xE500000000000000;
      String.append(_:)(v86);
      v87._countAndFlagsBits = 0x755F746E65726170;
      v87._object = 0xEB00000000646975;
      String.append(_:)(v87);
      v88._countAndFlagsBits = 0x202C3F203D20;
      v88._object = 0xE600000000000000;
      String.append(_:)(v88);
      v89._countAndFlagsBits = 0x6E6F7473626D6F74;
      v89._object = 0xEA00000000006465;
      String.append(_:)(v89);
      v90._countAndFlagsBits = 0x202C31203D20;
      v90._object = 0xE600000000000000;
      String.append(_:)(v90);
      v91._countAndFlagsBits = v82;
      v91._object = v83;
      String.append(_:)(v91);

      v92._countAndFlagsBits = 32;
      v92._object = 0xE100000000000000;
      String.append(_:)(v92);
      v93._object = 0x80000001015A33D0;
      v93._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v93);
      v94._countAndFlagsBits = 1059077408;
      v94._object = 0xE400000000000000;
      String.append(_:)(v94);
      v95._countAndFlagsBits = v78;
      v95._object = v79;
      String.append(_:)(v95);

      v96._countAndFlagsBits = 0x2820455245485720;
      v96._object = 0xE800000000000000;
      String.append(_:)(v96);
      v97._countAndFlagsBits = 0x6975755F6D657469;
      v97._object = 0xE900000000000064;
      String.append(_:)(v97);
      v98._countAndFlagsBits = 0x444E41203F203D20;
      v98._object = 0xE900000000000020;
      String.append(_:)(v98);
      v99._object = 0x8000000101585360;
      v99._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v99);
      v100._countAndFlagsBits = 0x293F203D20;
      v100._object = 0xE500000000000000;
      String.append(_:)(v100);
      v101 = v155;
      v102 = v156;
      type metadata accessor for SQLiteStatement();
      swift_initStackObject();

      v104 = sub_10001CC04(v103, v101, v102);

      sub_10089BD40(v144, 1);
      sub_100034254(v140 & 0xFFFFFFFFFFFFFFEFLL, 2);
      if (v77 >> 60 == 15)
      {
        v147 = 3;
        v105 = v152;
      }

      else
      {
        v106 = *(*(v104 + 16) + 32);
        *v81 = v106;
        v107 = v145;
        (v148)(v81, v146, v145);
        v108 = v143;
        sub_100024E84(v143, v77);
        v109 = v106;
        LOBYTE(v106) = _dispatchPreconditionTest(_:)();
        v105 = v152;
        v152(v81, v107);
        if ((v106 & 1) == 0)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        sub_100DCCAB4(v108, v77, v104, 3);
        sub_100025870(v108, v77);
        v147 = 4;
      }

      v110 = v146;
      v111 = UUID.crl_data()();
      v113 = v112;
      v114 = *(*(v104 + 16) + 32);
      *v81 = v114;
      v115 = v145;
      (v148)(v81, v110, v145);
      v116 = v114;
      LOBYTE(v114) = _dispatchPreconditionTest(_:)();
      v105(v81, v115);
      if (v114)
      {

        sub_100DCCAB4(v111, v113, v104, v147);
        sub_10002640C(v111, v113);
        type metadata accessor for CRLBoardIdentifierStorage(0);
        v152 = sub_10084DAE4();
        *&v154 = v117;
        v118 = *(*(v104 + 16) + 32);
        *v81 = v118;
        v119 = v110;
        v120 = v148;
        (v148)(v81, v119, v115);
        v121 = v118;
        LOBYTE(v118) = _dispatchPreconditionTest(_:)();
        v105(v81, v115);
        if (v118)
        {

          sub_100DCCAB4(v152, v154, v104, v147 + 1);
          v122 = *(*(v104 + 16) + 32);
          *v81 = v122;
          v120(v81, v146, v115);
          v123 = v122;
          LOBYTE(v122) = _dispatchPreconditionTest(_:)();
          v105(v81, v115);
          if (v122)
          {
            v124 = *(v104 + 16);

            v125 = sub_10001CEC4(v124, v104);

            if (v125 == 101)
            {
              sub_10002640C(v152, v154);
              v126 = *(*(v104 + 16) + 32);
              v127 = v150;
              *v150 = v126;
              (v148)(v127, v146, v115);
              v128 = v126;
              LOBYTE(v126) = _dispatchPreconditionTest(_:)();
              v105(v127, v115);
              if ((v126 & 1) == 0)
              {
                __break(1u);
                sub_10000CAAC(v141, &qword_101A21E08);
              }

LABEL_35:
              swift_beginAccess();
              v133 = *(v104 + 24);
              if (v133)
              {
                sqlite3_finalize(v133);
                sub_10000CAAC(v141, &qword_101A21E08);
                *(v104 + 24) = 0;
              }

              else
              {
                sub_10000CAAC(v141, &qword_101A21E08);
              }
            }

            sub_10089C7D0();
            swift_allocError();
            *v129 = v125;
            *(v129 + 8) = 0xD000000000000024;
            *(v129 + 16) = 0x80000001015A5280;
            swift_willThrow();
            sub_10002640C(v152, v154);
            v130 = *(*(v104 + 16) + 32);
            v131 = v150;
            *v150 = v130;
            (v148)(v131, v146, v115);
            v132 = v130;
            LOBYTE(v130) = _dispatchPreconditionTest(_:)();
            v105(v131, v115);
            if (v130)
            {
              goto LABEL_35;
            }

LABEL_43:
            __break(1u);
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_39:
      __break(1u);
      __break(1u);
      goto LABEL_40;
    }

    v44 = a6;
    v142 = v11;
    v141 = v24;
    v45 = v150;
    *v150 = v31;
    v46 = v145;
    (v148)(v45, v146, v145);
    v47 = v31;
    v48 = _dispatchPreconditionTest(_:)();
    v35(v45, v46);
    if (v48)
    {
      v149 = a9;
      v150 = a10;
      v50 = v151;
      v49 = v152;
      v51 = v135;
      (*(v151 + 16))(v135, v154, v152);
      v148 = 0x2000400000000;
      v52 = v136;
      sub_10000BE14(v144, v136, &qword_1019F6990);
      v53 = v137;
      sub_10000C83C(v44, v137, type metadata accessor for CRLBoardIdentifier);
      type metadata accessor for CRLBoardItemDatabaseRow();
      v54 = swift_allocObject();
      v55 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
      (*(v50 + 56))(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v49);
      v154 = xmmword_101486780;
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
      (*(v50 + 32))(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v51, v49);
      v56 = v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
      v57 = v148;
      *v56 = 0x1000000000000;
      *(v56 + 8) = v57;
      *(v56 + 16) = 0x1000000000000;
      *(v56 + 24) = 0;
      *(v56 + 32) = 1;
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
      swift_beginAccess();
      sub_10002C638(v52, v54 + v55, &qword_1019F6990);
      swift_endAccess();
      sub_100025668(v53, v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      v58 = v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
      v59 = v139;
      *v58 = v138;
      *(v58 + 8) = v59;
      *(v58 + 16) = v140 & 1;
      v60 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
      v61 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v154;
      sub_100025870(v60, v61);
      v62 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
      v63 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v154;
      sub_100025870(v62, v63);
      v64 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
      v65 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v154;
      sub_100025870(v64, v65);
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 1;
      *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
      v66 = (v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
      v67 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
      v68 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
      v69 = v143;
      v70 = v147;
      sub_100024E84(v143, v147);
      *v66 = v69;
      v66[1] = v70;
      sub_100025870(v67, v68);
      v71 = (v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
      v72 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
      v73 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
      v75 = v149;
      v74 = v150;
      sub_100024E84(v149, v150);
      *v71 = v75;
      v71[1] = v74;
      sub_100025870(v72, v73);
      sub_100DF5A90(v54);
      sub_10000CAAC(v141, &qword_101A21E08);
      swift_setDeallocating();
      sub_100FE3A40();
      return swift_deallocClassInstance();
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_100E43198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = v5;
  v105 = a4;
  v103 = a3;
  v101 = type metadata accessor for DispatchWorkItemFlags();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for DispatchQoS();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v16 = v17;
  v18 = *(v14 + 104);
  v106 = enum case for DispatchPredicate.onQueue(_:);
  v107 = v14 + 104;
  v108 = v18;
  v18(v16);
  v19 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v20 = *(v14 + 8);
  v104 = v13;
  v102 = v20;
  v20(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  result = sub_100DEB448();
  if (v6)
  {
    return result;
  }

  v95 = v7;
  v94 = a1;
  if (!result)
  {
    return sub_100E41AFC(v94, a2, v103, v105, a5);
  }

  v103 = result;
  if (a5 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x7461645F636E7973;
  }

  if (a5 >> 60 == 15)
  {
    v23 = 0xE000000000000000;
  }

  else
  {
    v23 = 0xEE002C3F203D2061;
  }

  aBlock = 0;
  v110 = 0xE000000000000000;
  v93 = 0;
  _StringGuts.grow(_:)(52);
  v24._countAndFlagsBits = 0x20455441445055;
  v24._object = 0xE700000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x736472616F62;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x2054455320;
  v26._object = 0xE500000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x6E6F7473626D6F74;
  v27._object = 0xEA00000000006465;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x202C31203D20;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29._object = 0x80000001015A33D0;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C3F203D20;
  v30._object = 0xE600000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = v22;
  v31._object = v23;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 10;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._object = 0xEE00657461645F65;
  v33._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x4548570A3F203D20;
  v34._object = 0xEB00000000204552;
  String.append(_:)(v34);
  v35._object = 0x8000000101585360;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 1059077408;
  v36._object = 0xE400000000000000;
  String.append(_:)(v36);
  v37 = aBlock;
  v38 = v110;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v40 = v93;
  v41 = sub_10001CC04(v39, v37, v38);

  if (!v40)
  {
    sub_100034254(*(v103 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges) & 0xFFFFFFFFFFFFFFFBLL, 1);
    if (a5 >> 60 == 15)
    {
      v105 = 2;
      v42 = v102;
      v43 = v104;
    }

    else
    {
      v44 = *(*(v41 + 16) + 32);
      *v16 = v44;
      v45 = v104;
      v108(v16, v106, v104);
      v46 = v105;
      sub_100024E84(v105, a5);
      v47 = v44;
      LOBYTE(v44) = _dispatchPreconditionTest(_:)();
      v48 = v45;
      v49 = v45;
      v42 = v102;
      v102(v16, v49);
      if ((v44 & 1) == 0)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      sub_100DCCAB4(v46, a5, v41, 2);
      sub_100025870(v46, a5);
      v105 = 3;
      v43 = v48;
    }

    v50 = *(v103 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate);
    v51 = v41;
    v52 = *(*(v41 + 16) + 32);
    *v16 = v52;
    v53 = v106;
    v108(v16, v106, v43);
    v54 = v52;
    LOBYTE(v52) = _dispatchPreconditionTest(_:)();
    v55 = v43;
    v56 = v42;
    v42(v16, v55);
    if (v52)
    {
      swift_beginAccess();
      sqlite3_bind_double(*(v51 + 24), v105, v50);
      type metadata accessor for CRLBoardIdentifierStorage(0);
      v57 = sub_10084DAE4();
      v93 = v58;
      v92 = v57;
      v59 = *(*(v51 + 16) + 32);
      *v16 = v59;
      v60 = v104;
      v108(v16, v53, v104);
      v61 = v59;
      v62 = _dispatchPreconditionTest(_:)();
      v56(v16, v60);
      if (v62)
      {

        v63 = v92;
        v64 = v93;
        sub_100DCCAB4(v92, v93, v51, v105 + 1);
        v105 = 0;
        sub_10002640C(v63, v64);
        v65 = *(*(v51 + 16) + 32);
        *v16 = v65;
        v108(v16, v106, v60);
        v66 = v65;
        LOBYTE(v65) = _dispatchPreconditionTest(_:)();
        v67 = v102;
        v102(v16, v60);
        if (v65)
        {
          v68 = *(v51 + 16);

          v69 = v68;
          v70 = v105;
          v71 = sub_10001CEC4(v69, v51);
          v93 = v70;

          v72 = v51;
          if (v71 != 101)
          {
            sub_10089C7D0();
            swift_allocError();
            *v89 = v71;
            *(v89 + 8) = 0xD000000000000024;
            *(v89 + 16) = 0x80000001015A5280;
            swift_willThrow();
            v90 = *(*(v51 + 16) + 32);
            *v16 = v90;
            v108(v16, v106, v60);
            v91 = v90;
            LOBYTE(v90) = _dispatchPreconditionTest(_:)();
            v67(v16, v60);
            if (v90)
            {
              v88 = *(v51 + 24);
              if (v88)
              {
LABEL_26:
                sqlite3_finalize(v88);

                *(v51 + 24) = 0;
              }

LABEL_27:
            }

LABEL_35:
            __break(1u);
          }

          sub_1005B981C(&unk_101A19BD0);
          v73 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
          v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_10146C6B0;
          sub_10000C83C(v94, v75 + v74, type metadata accessor for CRLBoardIdentifier);
          v76 = sub_1005BF2F8(v75);
          v105 = v72;
          v77 = v76;
          swift_setDeallocating();
          sub_100026028(v75 + v74, type metadata accessor for CRLBoardIdentifier);
          swift_deallocClassInstance();
          sub_100006370(0, &qword_1019F2D90);
          v94 = static OS_dispatch_queue.main.getter();
          v78 = swift_allocObject();
          *(v78 + 16) = v77;
          *(v78 + 24) = _swiftEmptySetSingleton;
          *(v78 + 32) = _swiftEmptySetSingleton;
          *(v78 + 40) = 0;
          v79 = v95;
          *(v78 + 48) = v95;
          v113 = sub_1000260F4;
          v114 = v78;
          aBlock = _NSConcreteStackBlock;
          v110 = *"";
          v111 = sub_100007638;
          v112 = &unk_1018A5CD0;
          v80 = _Block_copy(&aBlock);
          v81 = v79;

          v82 = v96;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          v95 = sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
          sub_1005B981C(&unk_1019FF400);
          sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
          v83 = v98;
          v84 = v101;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v85 = v94;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v80);

          v51 = v105;
          (*(v100 + 8))(v83, v84);
          (*(v97 + 8))(v82, v99);
          v86 = *(*(v51 + 16) + 32);
          *v16 = v86;
          v108(v16, v106, v60);
          v87 = v86;
          LOBYTE(v86) = _dispatchPreconditionTest(_:)();
          v102(v16, v60);
          if (v86)
          {
            v88 = *(v51 + 24);
            if (v88)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_30:
    __break(1u);
    __break(1u);
    goto LABEL_31;
  }
}

uint64_t sub_100E43E74(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  if (*(*a2 + 16))
  {
    result = sub_1000486F0(a1);
    if (v7)
    {
      if (*(*(v5 + 56) + result))
      {
        return result;
      }

LABEL_7:
      sub_100EA3464();
      swift_allocError();
      return swift_willThrow();
    }
  }

  result = sub_100DEE8DC(a1, 1);
  if (!v2)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a2;
    result = sub_100AA0F68(v8 & 1, a1, isUniquelyReferenced_nonNull_native);
    *a2 = v10;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_100E43F64(int64_t a1, uint64_t a2, int a3, int a4)
{
  v261 = a4;
  LODWORD(v260) = a3;
  *&v271 = a2;
  v6 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v6 - 8);
  v249 = &v236 - v7;
  v252 = type metadata accessor for URL();
  v250 = *(v252 - 8);
  v8 = __chkstk_darwin(v252);
  v247 = &v236 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v248 = &v236 - v10;
  v258 = sub_1005B981C(&qword_101A21F30);
  __chkstk_darwin(v258);
  v265 = &v236 - v11;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v12 - 8);
  v257 = &v236 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = type metadata accessor for UUID();
  v266 = *(v279 - 8);
  v14 = __chkstk_darwin(v279);
  v253 = &v236 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v263 = &v236 - v17;
  v18 = __chkstk_darwin(v16);
  v256 = (&v236 - v19);
  __chkstk_darwin(v18);
  v262 = &v236 - v20;
  v21 = sub_1005B981C(&qword_1019F6990);
  v22 = __chkstk_darwin(v21 - 8);
  v255 = &v236 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v259 = &v236 - v25;
  v26 = __chkstk_darwin(v24);
  v254 = &v236 - v27;
  v28 = __chkstk_darwin(v26);
  v264 = (&v236 - v29);
  v30 = __chkstk_darwin(v28);
  v32 = &v236 - v31;
  __chkstk_darwin(v30);
  v282 = (&v236 - v33);
  v34 = type metadata accessor for DispatchPredicate();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = (&v236 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v37 = v38;
  v39 = *(v35 + 104);
  v275 = enum case for DispatchPredicate.onQueue(_:);
  v273 = v39;
  v274 = v35 + 104;
  v39(v37);
  v40 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v42 = *(v35 + 8);
  v41 = (v35 + 8);
  v276 = v37;
  v277 = v41;
  v278 = v34;
  v272 = v42;
  v42(v37, v34);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_99;
  }

  v43 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  v44 = sub_100E98A48(a1, v43, 0, 0xF000000000000000);
  *&v281 = v4;
  if (v44)
  {
    v280 = v44;
    v245 = 0;
    goto LABEL_4;
  }

  v52 = v283;
  v53 = sub_100DECDC4(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier);
  if (!v52)
  {
    v240 = a1;
    v283 = 0;
    if (v53 && (v54 = *(v53 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData), v55 = *(v53 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8), sub_100024E84(v54, v55), , v55 >> 60 != 15))
    {
      sub_100024E98(v54, v55);
      a1 = v240;
      v107 = sub_100E98A48(v240, v43, v54, v55);
      sub_100025870(v54, v55);
      sub_100025870(v54, v55);
      v280 = v107;
      v245 = v107 != 0;
    }

    else
    {
      v245 = 0;
      v280 = 0;
      a1 = v240;
    }

LABEL_4:
    v45 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues);
    v243 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 8);
    v244 = v45;
    v242 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 16);
    v46 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
    swift_beginAccess();
    sub_10000BE14(a1 + v46, v282, &qword_1019F6990);
    LODWORD(v251) = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned);
    v47 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
    v48 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8);
    v49 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData);
    v4 = v281;
    v268 = v47;
    v269 = v48;
    sub_100024E84(v47, v48);
    if (v49)
    {
      v50 = v49;
      v267 = sub_100F00014(v50);
      v270 = v51;
    }

    else
    {
      v267 = 0;
      v270 = 0xF000000000000000;
    }

    *&v246 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
    v56 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
    v41 = v276;
    *v276 = v40;
    v57 = v278;
    v273(v41, v275, v278);
    v40 = v40;
    v58 = _dispatchPreconditionTest(_:)();
    v272(v41, v57);
    if (v58)
    {
      v59 = v283;
      sub_100E43E74(a1 + v56, v271);
      v60 = v59;
      if (v59)
      {
        sub_100025870(v267, v270);
        sub_100025870(v268, v269);

        v61 = v282;
LABEL_14:
        sub_10000CAAC(v61, &qword_1019F6990);
        return v4;
      }

      v239 = v40;
      sub_10000BE14(v282, v32, &qword_1019F6990);
      v63 = v266;
      v64 = v279;
      v65 = (*(v266 + 48))(v32, 1, v279);
      v241 = v56;
      if (v65 == 1)
      {
        sub_10000CAAC(v32, &qword_1019F6990);
      }

      else
      {
        v283 = 0;
        v98 = *(v63 + 32);
        v99 = v262;
        v98(v262, v32, v64);
        v100 = v283;
        v101 = sub_100DEEFC0(v99, a1 + v56);
        v283 = v100;
        if (v100)
        {
          sub_100025870(v267, v270);
          sub_100025870(v268, v269);

          (*(v63 + 8))(v99, v64);
          sub_10000CAAC(v282, &qword_1019F6990);
          return v4;
        }

        v237 = v98;
        v238 = v63 + 32;
        v105 = v241;
        v106 = a1;
        if (v101)
        {
          (*(v266 + 8))(v262, v279);
          v60 = v283;
          v66 = v280;
          v56 = v105;
LABEL_19:
          v67 = v264;
          sub_10000BE14(v282, v264, &qword_1019F6990);
          if (v66)
          {
            v283 = v60;
            v68 = qword_1019F2270;

            v280 = v66;
            if (v68 != -1)
            {
              goto LABEL_102;
            }

            while (1)
            {
              v262 = static OS_os_log.dataSync;
              sub_1005B981C(&qword_1019F54E0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10146C6B0;
              v70 = UUID.uuidString.getter();
              v72 = v71;
              *(inited + 56) = &type metadata for String;
              v73 = a1;
              v74 = sub_1000053B0();
              *(inited + 64) = v74;
              *(inited + 32) = v70;
              *(inited + 40) = v72;
              v75 = static os_log_type_t.info.getter();
              v76 = v262;
              sub_100005404(v262, &_mh_execute_header, v75, "Merging board item data with id %{public}@", 42, 2, inited);
              swift_setDeallocating();
              sub_100005070(inited + 32);
              v77 = swift_initStackObject();
              v78 = v77;
              *(v77 + 16) = xmmword_10146C4D0;
              v79 = (v260 & 1) == 0;
              v80 = 0x676E696772654DLL;
              if (v260)
              {
                v80 = 0x746972777265764FLL;
              }

              v81 = 0xE700000000000000;
              if (v260)
              {
                v81 = 0xEB00000000676E69;
              }

              *(v77 + 56) = &type metadata for String;
              *(v77 + 64) = v74;
              *(v77 + 32) = v80;
              *(v77 + 40) = v81;
              if (v79)
              {
                v82 = 1;
              }

              else
              {
                v82 = 2;
              }

              LODWORD(v271) = v82;
              v83 = UUID.uuidString.getter();
              v78[12] = &type metadata for String;
              v78[13] = v74;
              v78[9] = v83;
              v78[10] = v84;
              v85 = v241;
              v86 = UUID.uuidString.getter();
              v78[17] = &type metadata for String;
              v78[18] = v74;
              a1 = v73;
              v78[14] = v86;
              v78[15] = v87;
              v88 = static os_log_type_t.info.getter();
              sub_100005404(v76, &_mh_execute_header, v88, "%{public}@ board item with id: %{public}@, boardID: %{public}@", 62, 2, v78);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v89 = v270;
              v90 = v73 + v85;
              v92 = v268;
              v91 = v269;
              v93 = v267;
              v94 = v283;
              v95 = sub_100DF00A0(v280, v90, v271, v268, v269, v251 ^ 1, v251, v267, v270, v261 & 1, v245);
              if (v94)
              {

                sub_100025870(v93, v89);
                sub_100025870(v92, v91);

                v4 = &qword_1019F6990;
                sub_10000CAAC(v264, &qword_1019F6990);
                goto LABEL_30;
              }

              v102 = v95;
              v108 = v96;
              v109 = v264;
              if (v95)
              {
                v261 = v97;
                v110 = *(*v95 + 272);

                v112 = v109;
                v113 = v254;
                v110(v111);

                sub_10000CAAC(v112, &qword_1019F6990);
                v114 = v113;
                v109 = v112;
                sub_10003DFF8(v114, v112, &qword_1019F6990);
              }

              else
              {

                v261 = 0;
              }

              v56 = v241;
              v104 = v246;
              v103 = 0;
              if (v251 && (v108 & 0x10) == 0)
              {
LABEL_47:
                v262 = v102;
                v283 = v103;
                if (qword_1019F2270 != -1)
                {
                  swift_once();
                }

                v143 = static OS_os_log.dataSync;
                sub_1005B981C(&qword_1019F54E0);
                v144 = swift_initStackObject();
                *(v144 + 16) = xmmword_10146C6B0;
                v145 = UUID.uuidString.getter();
                v146 = a1;
                v148 = v147;
                *(v144 + 56) = &type metadata for String;
                *(v144 + 64) = sub_1000053B0();
                *(v144 + 32) = v145;
                *(v144 + 40) = v148;
                a1 = v146;
                v149 = static os_log_type_t.default.getter();
                sub_100005404(v143, &_mh_execute_header, v149, "Merging a tombstoned BoardItem record with id %{public}@", 56, 2, v144);
                swift_setDeallocating();
                sub_100005070(v144 + 32);
                v150 = v270;
                v151 = v267;
                v152 = a1 + v104;
                v56 = v241;
                v109 = v264;
                v154 = v268;
                v153 = v269;
                v155 = v283;
                sub_100E420CC(v152, v244, v243, v242, v264, a1 + v241, v268, v269, v267, v270);
                if (v155)
                {

                  sub_100025870(v151, v150);
                  sub_100025870(v154, v153);

                  v4 = &qword_1019F6990;
                  sub_10000CAAC(v109, &qword_1019F6990);
                  sub_10000CAAC(v282, &qword_1019F6990);
                  return v4;
                }

                v102 = v262;
              }

              v60 = 0;
              sub_100025870(v267, v270);
              sub_100025870(v268, v269);
              sub_10000CAAC(v109, &qword_1019F6990);
              sub_10000CAAC(v282, &qword_1019F6990);
              if (!v102)
              {
                break;
              }

              if (v251)
              {
                goto LABEL_86;
              }

              v283 = 0;

              v156 = sub_100E45BF8();
              v157 = sub_100E45F8C();
              v158 = sub_1010ACAA4(v157, v156);
              v159 = OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_assets;
              swift_beginAccess();
              v240 = a1;
              v160 = *(a1 + v159);
              v161 = v160 + 64;
              v162 = 1 << *(v160 + 32);
              if (v162 < 64)
              {
                v163 = ~(-1 << v162);
              }

              else
              {
                v163 = -1;
              }

              v164 = v163 & *(v160 + 64);
              v254 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
              v255 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
              a1 = (v162 + 63) >> 6;
              v165 = v266;
              v282 = (v266 + 16);
              v268 = (v266 + 8);
              v269 = v158 + 56;
              v256 = (v250 + 6);
              v166 = (v250 + 4);
              ++v250;
              v251 = v166;
              v264 = v160;
              swift_bridgeObjectRetain_n();
              v167 = 0;
              v246 = xmmword_10146C6B0;
              v259 = a1;
              v260 = v161;
              v262 = v102;
              while (v164)
              {
LABEL_65:
                v169 = __clz(__rbit64(v164)) | (v167 << 6);
                v170 = v264;
                v171 = v264[6];
                v270 = *(v165 + 72);
                v172 = *(v165 + 16);
                v173 = v265;
                *&v271 = v172;
                v172(v265, v171 + v270 * v169, v279);
                v174 = *(v170 + 56);
                v175 = v173;
                v176 = *(v174 + 8 * v169);
                *(v175 + *(v258 + 48)) = v176;
                v177 = *(v158 + 16);
                v267 = v164;
                if (v177)
                {
                  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);

                  v178 = dispatch thunk of Hashable._rawHashValue(seed:)();
                  v179 = -1 << *(v158 + 32);
                  v180 = v178 & ~v179;
                  if ((*(v269 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v180))
                  {
                    v257 = v176;
                    v181 = ~v179;
                    while (1)
                    {
                      v182 = v158;
                      v183 = *(v158 + 48) + v180 * v270;
                      v184 = v263;
                      v185 = v279;
                      (v271)(v263, v183, v279);
                      sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
                      v186 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v41 = *v268;
                      (*v268)(v184, v185);
                      if (v186)
                      {
                        break;
                      }

                      v180 = (v180 + 1) & v181;
                      v158 = v182;
                      v175 = v265;
                      if (((*(v269 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v180) & 1) == 0)
                      {
                        goto LABEL_59;
                      }
                    }

                    v187 = v276;
                    v188 = v239;
                    *v276 = v239;
                    v189 = v278;
                    v273(v187, v275, v278);
                    v190 = v188;
                    LOBYTE(v188) = _dispatchPreconditionTest(_:)();
                    result = v272(v187, v189);
                    if ((v188 & 1) == 0)
                    {
                      __break(1u);
                      return result;
                    }

                    v191 = v257;
                    v192 = v257 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata;
                    v40 = v253;
                    v32 = v279;
                    (v271)(v253, v257 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata, v279);
                    v193 = (v192 + *(type metadata accessor for CRLAssetSyncMetadata() + 20));
                    v194 = *v193;
                    v270 = v193[1];
                    *&v271 = v194;
                    v195 = v283;
                    sub_100E2CA3C(v40, v194, v270);
                    v283 = v195;
                    v196 = v252;
                    if (v195)
                    {
                      goto LABEL_100;
                    }

                    v197 = v249;
                    sub_10000BE14(v191 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_downloadedFileURL, v249, &unk_1019F33C0);
                    if ((*v256)(v197, 1, v196) == 1)
                    {
                      (v41)(v40, v32);
                      sub_10000CAAC(v197, &unk_1019F33C0);
                    }

                    else
                    {
                      (*v251)(v248, v197, v196);
                      v198 = v281;
                      v199 = *(v281 + v255);
                      os_unfair_lock_lock(*(v199 + 16));
                      v200 = v254;
                      v201 = *&v254[v198];
                      if (v201)
                      {
                        v202 = *&v254[v198];
                      }

                      else
                      {
                        v203 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
                        v204 = v198;
                        v205 = sub_10001F1A0(v204);

                        v206 = *&v200[v198];
                        *&v200[v198] = v205;
                        v202 = v205;

                        v201 = 0;
                      }

                      v208 = v270;
                      v207 = v271;
                      v209 = *(v199 + 16);
                      v210 = v201;
                      os_unfair_lock_unlock(v209);
                      v211 = v247;
                      v212 = v253;
                      v213 = v207;
                      v214 = v248;
                      v215 = v283;
                      sub_10109223C(v253, v213, v208, v248, 1, v247);
                      v283 = v215;
                      if (v215)
                      {

                        if (qword_1019F2258 != -1)
                        {
                          swift_once();
                        }

                        v216 = static OS_os_log.boardStore;
                        sub_1005B981C(&qword_1019F54E0);
                        v217 = swift_initStackObject();
                        *(v217 + 16) = v246;
                        swift_getErrorValue();
                        v218 = Error.localizedDescription.getter();
                        v270 = v219;
                        *&v271 = v218;
                        *(v217 + 56) = &type metadata for String;
                        *(v217 + 64) = sub_1000053B0();
                        v220 = v270;
                        *(v217 + 32) = v271;
                        *(v217 + 40) = v220;
                        v221 = static os_log_type_t.error.getter();
                        sub_100005404(v216, &_mh_execute_header, v221, "Failed to create an asset from data with error: %@", 50, 2, v217);

                        swift_setDeallocating();
                        sub_100005070(v217 + 32);
                        (*v250)(v214, v252);
                        (v41)(v253, v279);
                        v283 = 0;
                      }

                      else
                      {

                        v222 = *v250;
                        v223 = v211;
                        v224 = v252;
                        (*v250)(v223, v252);
                        v222(v214, v224);
                        (v41)(v212, v279);
                      }
                    }

                    v158 = v182;
                    v175 = v265;
                  }
                }

                else
                {
                }

LABEL_59:
                v164 = (v267 - 1) & v267;
                sub_10000CAAC(v175, &qword_101A21F30);
                v165 = v266;
                v102 = v262;
                a1 = v259;
                v161 = v260;
              }

              while (1)
              {
                v168 = v167 + 1;
                if (__OFADD__(v167, 1))
                {
                  break;
                }

                if (v168 >= a1)
                {
                  v60 = v283;

                  a1 = v240;
                  v56 = v241;
                  goto LABEL_86;
                }

                v164 = *(v161 + 8 * v168);
                ++v167;
                if (v164)
                {
                  v167 = v168;
                  goto LABEL_65;
                }
              }

              __break(1u);
LABEL_102:
              swift_once();
            }

            v261 = 0;
          }

          else
          {
            if (v251)
            {
              v261 = 0;
              v102 = 0;
              v103 = v60;
              v104 = v246;
              goto LABEL_47;
            }

            sub_100025870(v267, v270);
            sub_100025870(v268, v269);
            sub_10000CAAC(v67, &qword_1019F6990);
            sub_10000CAAC(v282, &qword_1019F6990);
            v261 = 0;
            v102 = 0;
          }

LABEL_86:
          v282 = sub_100EFF9E4(a1 + v56);
          v225 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_minRequiredVersionForSync);
          v226 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions + 16);
          v227 = sub_10001FF1C();
          v228 = v227;
          v262 = v102;
          if (v227 < v225)
          {
            v283 = v60;
            v261 = 2;
            goto LABEL_90;
          }

          if (v227 < v226)
          {
            v283 = v60;
LABEL_90:
            sub_1005B981C(&unk_1019F4D60);
            v229 = swift_initStackObject();
            v281 = xmmword_101465920;
            *(v229 + 16) = xmmword_101465920;
            v230 = v282;
            *(v229 + 32) = v282;
            v231 = v230;
            sub_1005BFFC4(v229);
            v4 = v232;
            swift_setDeallocating();
            swift_arrayDestroy();
            if (v228 < v225)
            {
              v233 = swift_initStackObject();
              *(v233 + 16) = v281;
              *(v233 + 32) = v231;
              v234 = v231;
              sub_1005BFFC4(v233);

              return v4;
            }

LABEL_95:
            if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
            {
              sub_1005BFFC4(_swiftEmptyArrayStorage);
            }

            else
            {
            }

            return v4;
          }

          if (!(_swiftEmptyArrayStorage >> 62))
          {
LABEL_94:
            v4 = _swiftEmptySetSingleton;
            goto LABEL_95;
          }

LABEL_106:
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_1005BFFC4(_swiftEmptyArrayStorage);
            v4 = v235;
            goto LABEL_95;
          }

          goto LABEL_94;
        }

        v115 = v266;
        *&v271 = *(v266 + 56);
        (v271)(v259, 1, 1, v279);
        v116 = v276;
        v117 = v239;
        *v276 = v239;
        v118 = v278;
        v273(v116, v275, v278);
        v119 = v117;
        LOBYTE(v117) = _dispatchPreconditionTest(_:)();
        v272(v116, v118);
        if ((v117 & 1) == 0)
        {
          __break(1u);
          goto LABEL_106;
        }

        v120 = *(v115 + 16);
        v121 = v256;
        v122 = v279;
        v120(v256, v262, v279);
        v236 = 0x2000400000000;
        v123 = v255;
        sub_10000BE14(v259, v255, &qword_1019F6990);
        v240 = v106;
        v124 = v106 + v105;
        v125 = v257;
        sub_10000C83C(v124, v257, type metadata accessor for CRLBoardIdentifier);
        type metadata accessor for CRLBoardItemDatabaseRow();
        v126 = swift_allocObject();
        v127 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
        (v271)(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v122);
        v271 = xmmword_101486780;
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
        v237(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v121, v122);
        v128 = v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
        v129 = v236;
        *v128 = 0x1000000000000;
        *(v128 + 8) = v129;
        *(v128 + 16) = 0x1000000000000;
        *(v128 + 24) = 0;
        *(v128 + 32) = 1;
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
        swift_beginAccess();
        sub_10002C638(v123, v126 + v127, &qword_1019F6990);
        swift_endAccess();
        sub_100025668(v125, v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        v130 = v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
        *v130 = xmmword_101474CF0;
        *(v130 + 16) = 1;
        v131 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
        v132 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v271;
        sub_100025870(v131, v132);
        v133 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
        v134 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v271;
        sub_100025870(v133, v134);
        v135 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
        v136 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v271;
        sub_100025870(v135, v136);
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
        v137 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
        v138 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = v271;
        sub_100025870(v137, v138);
        v139 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
        v140 = *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
        *(v126 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = v271;
        sub_100025870(v139, v140);
        v141 = v283;
        sub_100DF5A90(v126);
        v60 = v141;
        v142 = v270;
        if (v141)
        {

          sub_100025870(v267, v142);
          sub_100025870(v268, v269);
          swift_setDeallocating();
          sub_100FE3A40();
          swift_deallocClassInstance();
          v4 = &qword_1019F6990;
          sub_10000CAAC(v259, &qword_1019F6990);
          (*(v266 + 8))(v262, v279);
LABEL_30:
          v61 = v282;
          goto LABEL_14;
        }

        swift_setDeallocating();
        sub_100FE3A40();
        swift_deallocClassInstance();
        sub_10000CAAC(v259, &qword_1019F6990);
        (*(v266 + 8))(v262, v279);
        a1 = v240;
        v56 = v241;
      }

      v66 = v280;
      goto LABEL_19;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    (v41)(v40, v32);

    v4 = v264;

    sub_10000CAAC(v265, &qword_101A21F30);
  }

  return v4;
}

uint64_t sub_100E45BF8()
{
  v38 = type metadata accessor for UUID();
  v1 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019F6990);
  v37 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - v8;
  v10 = (*(*v0 + 664))(v7);
  v11 = v10;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = (v1 + 48);
  v33 = v1;
  v34 = (v1 + 32);

  v19 = 0;
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v19;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_10000BE14(*(v11 + 56) + *(v37 + 72) * (v21 | (v19 << 6)), v9, &qword_1019F6990);
    sub_10003DFF8(v9, v6, &qword_1019F6990);
    if ((*v17)(v6, 1, v38) == 1)
    {
      result = sub_10000CAAC(v6, &qword_1019F6990);
    }

    else
    {
      v32 = *v34;
      v32(v35, v6, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100B356D0(0, v36[2] + 1, 1, v36);
      }

      v23 = v36[2];
      v22 = v36[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v30 = v36[2];
        v31 = v23 + 1;
        v27 = sub_100B356D0(v22 > 1, v23 + 1, 1, v36);
        v23 = v30;
        v24 = v31;
        v36 = v27;
      }

      v25 = v35;
      v26 = v36;
      v36[2] = v24;
      result = (v32)(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23, v25, v38);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v28 = sub_100E93A84(v36);

      return v28;
    }

    v15 = *(v12 + 8 * v19);
    ++v20;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100E45F8C()
{
  v38 = type metadata accessor for UUID();
  v1 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019F6990);
  v37 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - v8;
  v10 = (*(*v0 + 672))(v7);
  v11 = v10;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = (v1 + 48);
  v33 = v1;
  v34 = (v1 + 32);

  v19 = 0;
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v19;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_10000BE14(*(v11 + 56) + *(v37 + 72) * (v21 | (v19 << 6)), v9, &qword_1019F6990);
    sub_10003DFF8(v9, v6, &qword_1019F6990);
    if ((*v17)(v6, 1, v38) == 1)
    {
      result = sub_10000CAAC(v6, &qword_1019F6990);
    }

    else
    {
      v32 = *v34;
      v32(v35, v6, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100B356D0(0, v36[2] + 1, 1, v36);
      }

      v23 = v36[2];
      v22 = v36[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v30 = v36[2];
        v31 = v23 + 1;
        v27 = sub_100B356D0(v22 > 1, v23 + 1, 1, v36);
        v23 = v30;
        v24 = v31;
        v36 = v27;
      }

      v25 = v35;
      v26 = v36;
      v36[2] = v24;
      result = (v32)(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23, v25, v38);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v28 = sub_100E93A84(v36);

      return v28;
    }

    v15 = *(v12 + 8 * v19);
    ++v20;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_100E46320(uint64_t a1, void *a2)
{
  LODWORD(v4) = v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  inited = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((inited & 1) == 0)
  {
    goto LABEL_37;
  }

  v15 = sub_100DEB448();
  if (!v3)
  {
    v58 = 0;
    if (v15)
    {

      sub_100E469D8(a2, a1);
      return;
    }

    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v16 = UUID.uuidString.getter();
    v18 = v17;
    *(inited + 56) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 32) = v16;
    v60 = v19;
    v61 = inited + 32;
    *(inited + 64) = v19;
    *(inited + 40) = v18;
    v55 = objc_opt_self();
    LODWORD(v4) = [v55 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v62);
    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v22;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_38;
    }

LABEL_6:
    v23 = static OS_os_log.crlAssert;
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146CA70;
    *(v24 + 56) = &type metadata for Int32;
    *(v24 + 64) = &protocol witness table for Int32;
    *(v24 + 32) = v4;
    v25 = sub_100006370(0, &qword_1019F4D30);
    *(v24 + 96) = v25;
    v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    v27 = v57;
    *(v24 + 72) = v57;
    v28 = v60;
    *(v24 + 136) = &type metadata for String;
    *(v24 + 144) = v28;
    *(v24 + 104) = v26;
    *(v24 + 112) = a1;
    *(v24 + 120) = v56;
    *(v24 + 176) = &type metadata for UInt;
    *(v24 + 184) = &protocol witness table for UInt;
    *(v24 + 152) = 9681;
    v29 = v62;
    *(v24 + 216) = v25;
    *(v24 + 224) = v26;
    *(v24 + 192) = v29;
    v30 = v27;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
    swift_setDeallocating();
    v57 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v33, "Trying to apply merge of a CKShare from server when we don't have a corresponding local board database row. {public}%@", 118, 2, inited);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v35 = v34 + 3;
    v34[4] = 0;
    v34[5] = 0;
    a1 = *(inited + 16);
    if (a1)
    {
      v36 = 0;
      v59 = inited;
      v60 = a1;
      while (1)
      {
        sub_100020E58((v61 + 40 * v36), *(v61 + 40 * v36 + 24));
        v37 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v4 = *v35;
        v38 = *(v37 + 16);
        v39 = __OFADD__(*v35, v38);
        v40 = *v35 + v38;
        if (v39)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          swift_once();
          goto LABEL_6;
        }

        v41 = v34[4];
        if (v41 >= v40)
        {
          goto LABEL_23;
        }

        if (v41 + 0x4000000000000000 < 0)
        {
          goto LABEL_35;
        }

        v42 = v34[5];
        if (2 * v41 > v40)
        {
          v40 = 2 * v41;
        }

        v34[4] = v40;
        if ((v40 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_36;
        }

        v43 = v37;
        v44 = swift_slowAlloc();
        v45 = v44;
        v34[5] = v44;
        if (v42)
        {
          break;
        }

        v37 = v43;
        a1 = v60;
        inited = v59;
        if (!v45)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_24:
        v47 = *(v37 + 16);
        if (v47)
        {
          v48 = (v37 + 32);
          v49 = *v35;
          while (1)
          {
            v50 = *v48++;
            *&v45[8 * v49] = v50;
            v49 = *v35 + 1;
            if (__OFADD__(*v35, 1))
            {
              break;
            }

            *v35 = v49;
            if (!--v47)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          goto LABEL_34;
        }

LABEL_8:

        if (++v36 == a1)
        {
          goto LABEL_31;
        }
      }

      if (v44 != v42 || v44 >= &v42[8 * v4])
      {
        memmove(v44, v42, 8 * v4);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v37 = v43;
      inited = v59;
      a1 = v60;
LABEL_23:
      v45 = v34[5];
      if (!v45)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

LABEL_31:
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    [v55 handleFailureInFunction:v52 file:v53 lineNumber:9681 isFatal:0 format:v54 args:v51];

    swift_setDeallocating();
    swift_arrayDestroy();
  }
}

void sub_100E469D8(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
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
  v13 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v24[11] = a1;
  sub_1005B981C(&qword_101A21F40);
  v15 = Optional.debugDescription.getter();
  v17 = v16;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v15;
  *(inited + 40) = v17;
  v18 = static os_log_type_t.debug.getter();
  sub_100005404(v13, &_mh_execute_header, v18, "sync overwrite local CKShare with remote CKShare %@", 51, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v19 = sub_100E18A88();
  if (v3)
  {
    return;
  }

  v20 = v19;
  sub_100E196EC(a2, a1, 0);
  if (a1)
  {
    if (v20)
    {
      sub_100006370(0, &qword_1019F52C0);
      v21 = a1;
      v22 = v20;
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        goto LABEL_10;
      }
    }
  }

  else if (!v20)
  {
    return;
  }

  sub_100DE02C4(a2, &unk_1018A5D08, sub_100EA34B8, &unk_1018A5D20);
  v22 = v20;
LABEL_10:
}

uint64_t sub_100E46CD0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v27 = a3;
  v26 = a2;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v6 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (!a1)
  {
    return result;
  }

  sub_10000C83C(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, v10, type metadata accessor for CRLBoardIdentifier);
  v19 = qword_1019F2270;

  if (v19 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v20 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v22 = UUID.uuidString.getter();
  v24 = v23;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v22;
  *(inited + 40) = v24;
  v25 = static os_log_type_t.info.getter();
  sub_100005404(v20, &_mh_execute_header, v25, "Merging board metadata data with id %{public}@", 46, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100E06DBC(a1, 1, v26, v27, 1);
  if (v5)
  {
    sub_100026028(v10, type metadata accessor for CRLBoardIdentifier);
  }

  else
  {

    return sub_100026028(v10, type metadata accessor for CRLBoardIdentifier);
  }
}

void (*sub_100E46FDC(uint64_t a1, uint64_t *a2, int a3))(objc_class **, uint64_t)
{
  HIDWORD(v44) = a3;
  v46 = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v48 = v3;
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = v6 + 104;
  v12 = *(v6 + 104);
  v12(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v49 = v9;
  v13 = _dispatchPreconditionTest(_:)();
  v16 = *(v6 + 8);
  v15 = v6 + 8;
  v14 = v16;
  v16(v8, v5);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v13 = OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier;
  v45 = a1;
  v17 = a1 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData;
  v19 = *(a1 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
  v18 = *(v17 + 8);
  *v8 = v49;
  v20 = v10;
  v21 = v18;
  v12(v8, v20, v5);
  v11 = v19;
  sub_100024E84(v19, v21);
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v14(v8, v5);
  if ((v19 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_8;
  }

  v15 = v45;
  v22 = v47;
  sub_100E43E74(v45 + v13, v46);
  v8 = v22;
  if (v22)
  {
LABEL_13:
    sub_100025870(v11, v21);
    return v14;
  }

  v49 = v21;
  LOBYTE(v14) = BYTE4(v44);
  if ((v44 & 0x100000000) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  LODWORD(v47) = v23;
  if (qword_1019F2270 != -1)
  {
    goto LABEL_27;
  }

LABEL_8:
  v46 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v25 = sub_1000053B0();
  v26 = v25;
  v27 = 0x676E696772654DLL;
  if (v14)
  {
    v27 = 0x746972777265764FLL;
  }

  v28 = 0xE700000000000000;
  if (v14)
  {
    v28 = 0xEB00000000676E69;
  }

  v14 = &type metadata for String;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v25;
  *(inited + 32) = v27;
  *(inited + 40) = v28;
  v29 = *(v15 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v29;
  v30 = UUID.uuidString.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v26;
  *(inited + 112) = v30;
  *(inited + 120) = v31;
  v32 = static os_log_type_t.info.getter();
  sub_100005404(v46, &_mh_execute_header, v32, "%{public}@ freehand bucket with index %{public}d, boardID: %{public}@", 69, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v21 = v49;
  sub_100E1F188(v15, v15 + v13, v47, v11, v49);
  if (v8)
  {
    goto LABEL_13;
  }

  sub_100025870(v11, v21);
  v34 = sub_100EFF9E4(v15 + v13);
  if (*(v15 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersionForSync + 8) & 1) != 0 || (v35 = v15 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions, (*(v15 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions + 49)) || (v36 = *(v15 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersionForSync), v37 = *(v35 + 32), v38 = sub_10001FF1C(), v39 = v38, v38 >= v36) && v38 >= v37)
  {
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005BFFC4(_swiftEmptyArrayStorage);
      v14 = v43;
    }

    else
    {
      v14 = _swiftEmptySetSingleton;
    }
  }

  else
  {
    sub_1005B981C(&unk_1019F4D60);
    v40 = swift_initStackObject();
    v48 = xmmword_101465920;
    *(v40 + 16) = xmmword_101465920;
    *(v40 + 32) = v34;
    v49 = v34;
    sub_1005BFFC4(v40);
    v14 = v41;
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v39 < v36)
    {
      v42 = swift_initStackObject();
      *(v42 + 16) = v48;
      *(v42 + 32) = v49;
      sub_1005BFFC4(v42);
      swift_setDeallocating();
      swift_arrayDestroy();
      return v14;
    }
  }

  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BFFC4(_swiftEmptyArrayStorage);
  }

  else
  {
  }

  return v14;
}

void *sub_100E4755C(int64_t a1, int a2)
{
  LODWORD(v186) = a2;
  v181 = a1;
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v162 = &v153 - v4;
  v5 = type metadata accessor for URL();
  v164 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v161 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v163 = &v153 - v8;
  *&v193 = type metadata accessor for UUID();
  v172 = *(v193 - 8);
  v9 = __chkstk_darwin(v193);
  v166 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v190 = &v153 - v11;
  v171 = sub_1005B981C(&qword_101A21F30);
  __chkstk_darwin(v171);
  v192 = &v153 - v12;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v13 - 8);
  v187 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v15 - 8);
  v17 = &v153 - v16;
  v18 = type metadata accessor for CRLBoardCRDTData(0);
  v189 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v188 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v185 = &v153 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v25 = v26;
  v27 = *(v23 + 104);
  v177 = enum case for DispatchPredicate.onQueue(_:);
  v175 = v27;
  v176 = v23 + 104;
  v27(v25);
  v174 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v28 = *(v23 + 8);
  v178 = v25;
  v179 = v23 + 8;
  v180 = v22;
  v173 = v28;
  v28(v25, v22);
  if ((v26 & 1) == 0)
  {
    goto LABEL_88;
  }

  v165 = v5;
  v182 = v2;
  v5 = v181;
  v29 = (v181 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData);
  v30 = *(v181 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData + 8);
  if (v30 >> 60 == 15)
  {
    v31 = 0;
    v32 = v191;
  }

  else
  {
    v33 = *v29;
    sub_100024E84(*v29, *(v181 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData + 8));
    sub_100024E84(v33, v30);
    sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

    v34 = v191;
    CRDT.init(serializedData:)();
    if (v34)
    {

      sub_100025870(v33, v30);

      (*(v189 + 56))(v17, 1, 1, v18);
      sub_10000CAAC(v17, &qword_101A21C68);
      v31 = 0;
    }

    else
    {
      (*(v189 + 56))(v17, 0, 1, v18);
      v191 = type metadata accessor for CRLBoardCRDTData;
      v35 = v185;
      sub_100025668(v17, v185, type metadata accessor for CRLBoardCRDTData);
      LODWORD(v189) = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 32);
      v36 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions);
      v183 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 16);
      v184 = v36;
      v37 = v188;
      sub_10000C83C(v35, v188, type metadata accessor for CRLBoardCRDTData);
      v38 = v187;
      sub_10000C83C(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v187, type metadata accessor for CRLBoardIdentifier);
      v39 = &v38[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
      v40 = v39[1];
      v170 = *v39;

      sub_100026028(v38, type metadata accessor for CRLBoardIdentifier);
      sub_100025870(v33, v30);

      type metadata accessor for CRLBoardData(0);
      v31 = swift_allocObject();
      sub_100026028(v35, type metadata accessor for CRLBoardCRDTData);
      *(v31 + 16) = 7;
      v41 = v184;
      *(v31 + 40) = v183;
      *(v31 + 24) = v41;
      *(v31 + 56) = v189;
      sub_100025668(v37, v31 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v191);
      v42 = (v31 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      *v42 = v170;
      v42[1] = v40;
    }

    v32 = 0;
  }

  *&v183 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier;
  LODWORD(v188) = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned);
  *&v184 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID;
  v18 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted);
  v169 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID;
  v2 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
  v43 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8);
  v44 = v178;
  v45 = v175;
  *v178 = v174;
  v46 = v180;
  v45(v44, v177, v180);
  v189 = v2;
  sub_100024E84(v2, v43);
  LOBYTE(v2) = _dispatchPreconditionTest(_:)();
  v173(v44, v46);
  if ((v2 & 1) == 0)
  {
    goto LABEL_89;
  }

  v187 = v43;
  LODWORD(v185) = v18;
  if (!v31)
  {
    v168 = 0;
    v63 = 0;
    v58 = v189;
    goto LABEL_25;
  }

  v191 = v32;
  LOBYTE(v2) = v186;
  if (v186)
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  LODWORD(v170) = v47;
  v48 = qword_1019F2270;

  v18 = v31;
  if (v48 != -1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v49 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v51 = sub_1000053B0();
    v52 = v51;
    v53 = 0x676E696772654DLL;
    if (v2)
    {
      v53 = 0x746972777265764FLL;
    }

    v54 = 0xE700000000000000;
    if (v2)
    {
      v54 = 0xEB00000000676E69;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v51;
    *(inited + 32) = v53;
    *(inited + 40) = v54;
    v55 = UUID.uuidString.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v52;
    *(inited + 72) = v55;
    *(inited + 80) = v56;
    v57 = static os_log_type_t.info.getter();
    sub_100005404(v49, &_mh_execute_header, v57, "%{public}@ board data with id %{public}@", 40, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v58 = v189;
    v43 = v187;
    v59 = v182;
    v60 = v191;
    v61 = sub_100DFE838(v18, v170, v189, v187, v188 ^ 1, 1);
    v32 = v60;
    v31 = v18;
    if (v60)
    {

      sub_100025870(v58, v43);
LABEL_36:

      return v59;
    }

    v63 = v61;
    v64 = v62;

    if (v63)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v168 = v65;
    LODWORD(v18) = v185;
LABEL_25:
    v167 = v31;
    v170 = v63;
    if (v188)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v66 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v67 = swift_initStackObject();
      *(v67 + 16) = xmmword_10146C6B0;
      v68 = v183;
      v69 = UUID.uuidString.getter();
      v71 = v70;
      *(v67 + 56) = &type metadata for String;
      *(v67 + 64) = sub_1000053B0();
      *(v67 + 32) = v69;
      *(v67 + 40) = v71;
      v72 = static os_log_type_t.default.getter();
      sub_100005404(v66, &_mh_execute_header, v72, "Merging a tombstoned Board record with id %{public}@", 52, 2, v67);
      swift_setDeallocating();
      sub_100005070(v67 + 32);
      v58 = v189;
      v43 = v187;
      v59 = v182;
      sub_100E43198(v5 + v68, v5 + v184, v5 + v169, v189, v187);
      if (v32)
      {
        sub_100025870(v58, v43);
        goto LABEL_35;
      }

      v63 = v170;
      LODWORD(v18) = v185;
    }

    if (v18)
    {
      break;
    }

    sub_100025870(v58, v43);
    if (!v63)
    {
      v168 = 0;
LABEL_74:
      v75 = v183;
      goto LABEL_75;
    }

    v191 = v32;

    v82 = sub_100E9DF44();
    v83 = OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_assets;
    swift_beginAccess();
    v84 = *(v5 + v83);
    v85 = v84 + 64;
    v86 = 1 << *(v84 + 32);
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    else
    {
      v87 = -1;
    }

    v88 = v87 & *(v84 + 64);
    v156 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v157 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    v5 = (v86 + 63) >> 6;
    v189 = v172 + 16;
    v185 = v82 + 56;
    *&v184 = v172 + 8;
    v158 = (v164 + 48);
    v154 = (v164 + 8);
    v155 = (v164 + 32);
    v169 = v84;
    swift_bridgeObjectRetain_n();
    v18 = 0;
    v153 = xmmword_10146C6B0;
    v89 = v192;
    v188 = v82;
    v164 = v85;
    v160 = v5;
    while (v88)
    {
LABEL_51:
      v91 = __clz(__rbit64(v88)) | (v18 << 6);
      v92 = v169;
      v93 = *(v169 + 48) + *(v172 + 72) * v91;
      v94 = *(v172 + 16);
      v186 = *(v172 + 72);
      v187 = v94;
      (v94)(v89, v93, v193);
      v95 = *(*(v92 + 56) + 8 * v91);
      *(v89 + *(v171 + 48)) = v95;
      v96 = v188;
      if (*(v188 + 16))
      {
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
        v159 = v95;

        v97 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v98 = -1 << *(v96 + 32);
        v99 = v97 & ~v98;
        if ((*(v185 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99))
        {
          v100 = ~v98;
          while (1)
          {
            v101 = *(v96 + 48) + v99 * v186;
            v102 = v190;
            v103 = v193;
            (v187)(v190, v101, v193);
            sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
            v104 = dispatch thunk of static Equatable.== infix(_:_:)();
            v105 = *v184;
            (*v184)(v102, v103);
            if (v104)
            {
              break;
            }

            v99 = (v99 + 1) & v100;
            v96 = v188;
            if (((*(v185 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v106 = v178;
          v108 = v174;
          v107 = v175;
          *v178 = v174;
          v109 = v180;
          v107(v106, v177, v180);
          v110 = v108;
          LOBYTE(v108) = _dispatchPreconditionTest(_:)();
          v173(v106, v109);
          if ((v108 & 1) == 0)
          {
            __break(1u);
            goto LABEL_94;
          }

          v111 = v159;
          v112 = v159 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata;
          v113 = v166;
          (v187)(v166, v159 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata, v193);
          v114 = (v112 + *(type metadata accessor for CRLAssetSyncMetadata() + 20));
          v115 = *v114;
          v186 = v114[1];
          v187 = v115;
          v116 = v191;
          sub_100E2CA3C(v113, v115, v186);
          v117 = v165;
          if (v116)
          {
            (v105)(v113, v193);

            v59 = v169;

            sub_10000CAAC(v192, &qword_101A21F30);

            return v59;
          }

          v118 = v162;
          sub_10000BE14(v111 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_downloadedFileURL, v162, &unk_1019F33C0);
          v119 = (*v158)(v118, 1, v117);
          v191 = 0;
          if (v119 == 1)
          {
            (v105)(v113, v193);
            sub_10000CAAC(v118, &unk_1019F33C0);
          }

          else
          {
            (*v155)(v163, v118, v117);
            v120 = v182;
            v121 = *(v182 + v157);
            os_unfair_lock_lock(*(v121 + 16));
            v122 = v156;
            v123 = *&v120[v156];
            if (v123)
            {
              v124 = *&v120[v156];
            }

            else
            {
              v125 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
              v126 = v120;
              v127 = sub_10001F1A0(v126);

              v128 = *&v120[v122];
              *&v120[v122] = v127;
              v124 = v127;

              v123 = 0;
            }

            v129 = *(v121 + 16);
            v130 = v123;
            os_unfair_lock_unlock(v129);
            v131 = v161;
            v132 = v166;
            v133 = v163;
            v134 = v191;
            sub_10109223C(v166, v187, v186, v163, 1, v161);
            if (v134)
            {

              if (qword_1019F2258 != -1)
              {
                swift_once();
              }

              v135 = static OS_os_log.boardStore;
              sub_1005B981C(&qword_1019F54E0);
              v136 = swift_initStackObject();
              *(v136 + 16) = v153;
              swift_getErrorValue();
              v191 = Error.localizedDescription.getter();
              v187 = v137;
              *(v136 + 56) = &type metadata for String;
              *(v136 + 64) = sub_1000053B0();
              *(v136 + 32) = v191;
              *(v136 + 40) = v187;
              v138 = static os_log_type_t.error.getter();
              sub_100005404(v135, &_mh_execute_header, v138, "Failed to create an asset from data with error: %@", 50, 2, v136);

              swift_setDeallocating();
              sub_100005070(v136 + 32);
              (*v154)(v133, v165);
              (v105)(v166, v193);
              v191 = 0;
            }

            else
            {
              v191 = 0;

              v139 = *v154;
              v140 = v131;
              v141 = v165;
              (*v154)(v140, v165);
              v139(v133, v141);
              (v105)(v132, v193);
            }
          }
        }
      }

      else
      {
      }

LABEL_44:
      v88 &= v88 - 1;
      v89 = v192;
      sub_10000CAAC(v192, &qword_101A21F30);
      v85 = v164;
      v5 = v160;
    }

    v2 = v191;
    while (1)
    {
      v90 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v90 >= v5)
      {

        v5 = v181;
        v32 = v2;
        goto LABEL_74;
      }

      v88 = *(v85 + 8 * v90);
      ++v18;
      if (v88)
      {
        v18 = v90;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    swift_once();
  }

  v191 = v32;
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v73 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_10146C6B0;
  v75 = v183;
  v76 = UUID.uuidString.getter();
  v78 = v77;
  *(v74 + 56) = &type metadata for String;
  *(v74 + 64) = sub_1000053B0();
  *(v74 + 32) = v76;
  *(v74 + 40) = v78;
  v79 = static os_log_type_t.default.getter();
  sub_100005404(v73, &_mh_execute_header, v79, "Purging board with id %{public}@ after syncing hideFromRecentlyDeleted state", 76, 2, v74);
  swift_setDeallocating();
  sub_100005070(v74 + 32);
  v59 = v182;
  v80 = v191;
  sub_100E0C7BC((v5 + v75), 0xD000000000000025, 0x80000001015A7410, 0);
  v32 = v80;
  sub_100025870(v189, v187);
  if (v80)
  {
LABEL_35:

    goto LABEL_36;
  }

  v142 = v168;
  if (!v170)
  {
    v142 = 0;
  }

  v168 = v142;
LABEL_75:
  v105 = sub_100EFF9E4(v5 + v75);
  v143 = *(v5 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_minRequiredVersionForSync);
  v144 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 16);
  v145 = sub_10001FF1C();
  v146 = v145;
  if (v145 < v143)
  {
    v191 = v32;
    v168 = 2;
    goto LABEL_79;
  }

  if (v145 < v144)
  {
    v191 = v32;
LABEL_79:
    sub_1005B981C(&unk_1019F4D60);
    v147 = swift_initStackObject();
    v193 = xmmword_101465920;
    *(v147 + 16) = xmmword_101465920;
    *(v147 + 32) = v105;
    v148 = v105;
    sub_1005BFFC4(v147);
    v59 = v149;
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v146 < v143)
    {
      v150 = swift_initStackObject();
      *(v150 + 16) = v193;
      *(v150 + 32) = v148;
      v151 = v148;
      sub_1005BFFC4(v150);

      return v59;
    }

    goto LABEL_84;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_94:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005BFFC4(_swiftEmptyArrayStorage);
      v59 = v152;
      goto LABEL_84;
    }
  }

  v59 = _swiftEmptySetSingleton;
LABEL_84:
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BFFC4(_swiftEmptyArrayStorage);
  }

  else
  {
  }

  return v59;
}

void *sub_100E48B08(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_6;
  }

  v11 = sub_100E9FE1C(v10);
  if (v11)
  {
    sub_100E46CD0(v11, *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData), *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData + 8));
    if (v2)
    {

      return v1;
    }

    if (qword_1019F25F8 != -1)
    {
      swift_once();
    }

    v18 = qword_101AD87A8;
    v19 = sub_100EFF9E4(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier);
    v20 = *(a1 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_minRequiredVersionForSync);
    v21 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_minRequiredVersionForFullFidelity);
    v22 = sub_10001FF1C();
    if (v22 >= v20 && v22 >= v21)
    {
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        v1 = _swiftEmptySetSingleton;
        goto LABEL_19;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1005BFFC4(_swiftEmptyArrayStorage);
        v1 = v32;
      }

      else
      {
        v1 = _swiftEmptySetSingleton;
      }

      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v24 = v22;
      sub_1005B981C(&unk_1019F4D60);
      inited = swift_initStackObject();
      v33 = xmmword_101465920;
      *(inited + 16) = xmmword_101465920;
      *(inited + 32) = v18;
      v26 = v18;
      sub_1005BFFC4(inited);
      v1 = v27;
      swift_setDeallocating();
      swift_arrayDestroy();
      if (v24 < v20)
      {
        v28 = swift_initStackObject();
        *(v28 + 16) = v33;
        *(v28 + 32) = v19;
        v29 = v19;
        sub_1005BFFC4(v28);

        return v1;
      }

      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_19:

        return v1;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005BFFC4(_swiftEmptyArrayStorage);

      return v1;
    }

    goto LABEL_19;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_22;
  }

LABEL_6:
  v12 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_10146C6B0;
  v14 = UUID.uuidString.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_1000053B0();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v17, "Unable to create CRLUserBoardMetadataData from CRLUserBoardMetadataSyncRemoteRecord remoteRecord: %{public}@.", 109, 2, v13);
  swift_setDeallocating();
  sub_100005070(v13 + 32);
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    return _swiftEmptySetSingleton;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BFFC4(_swiftEmptyArrayStorage);
    v1 = v31;
  }

  else
  {
    v1 = _swiftEmptySetSingleton;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BFFC4(_swiftEmptyArrayStorage);
  }

  return v1;
}

uint64_t sub_100E48FE0(uint64_t a1, char a2)
{
  LOBYTE(v4) = a2;
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v73 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v74 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = v63 - v10;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = (v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v87 = _swiftEmptyDictionarySingleton;
    v85 = _swiftEmptySetSingleton;
    v86 = _swiftEmptySetSingleton;
    v84 = _swiftEmptySetSingleton;
    v83 = 0;
    v82 = _swiftEmptySetSingleton;
    aBlock = _swiftEmptyArrayStorage;
    swift_retain_n();
    v11 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) < *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v17 = aBlock;
  if (aBlock >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v18 = v4;
    while (1)
    {
      v19 = v17 >> 62;
      if (v17 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          return result;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_72;
        }
      }

      else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = v17 & 0xFFFFFFFFFFFFFF8;
        if (!v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v4 = *(v17 + 32);

        v20 = v17 & 0xFFFFFFFFFFFFFF8;
        if (!v19)
        {
LABEL_11:
          v21 = *(v20 + 16);
          if (!v21)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        }
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_38;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_39;
      }

      v21 = _CocoaArrayWrapper.endIndex.getter();
LABEL_20:
      v23 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      aBlock = v17;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v19)
        {
          if (v23 <= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_27;
      }

      if (v19)
      {
        goto LABEL_26;
      }

LABEL_27:
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      aBlock = v17;
LABEL_28:
      sub_10067CF10(0, 1, 0);
      aBlock = v17;
      sub_100E49C30(v4, v11, v18 == 1, &v87, &v86, &v85, &v84, &v83);
      if (v3)
      {

        goto LABEL_47;
      }

      swift_beginAccess();

      sub_10079B674(v25);

      v17 = aBlock;
      if (aBlock >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_33:

          v26 = v86;
          goto LABEL_44;
        }
      }

      else if (!*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }
    }
  }

  v26 = _swiftEmptySetSingleton;
LABEL_44:
  v27 = sub_10001FF1C();
  sub_100E2863C(v26, v27);
  if (v3)
  {

LABEL_47:
  }

  else
  {
    v28 = v85;
    sub_100E2B4E8(v85);
    v63[1] = v28;
    v63[2] = v26;
    v29 = v82;
    v30 = v82 + 7;
    v31 = 1 << *(v82 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v82[7];
    v34 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
    v35 = (v31 + 63) >> 6;

    v36 = 0;
    v64 = v29;
    while (v33)
    {
LABEL_59:
      v38 = v29[6];
      v65 = *(v73 + 72);
      v39 = v72;
      sub_10000C83C(v38 + v65 * (__clz(__rbit64(v33)) | (v36 << 6)), v72, type metadata accessor for CRLBoardIdentifier);
      v40 = v74;
      sub_100025668(v39, v74, type metadata accessor for CRLBoardIdentifier);
      swift_beginAccess();
      v41 = sub_1000486F0(v40);
      if (v42)
      {
        v43 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *&v11[v34];
        v81 = v45;
        *&v11[v34] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100AAC740();
          v45 = v81;
        }

        sub_100026028(*(v45 + 48) + v43 * v65, type metadata accessor for CRLBoardIdentifier);

        sub_100BDBBA4(v43, v45);
        *&v11[v34] = v45;
      }

      v33 &= v33 - 1;
      swift_endAccess();
      result = sub_100026028(v74, type metadata accessor for CRLBoardIdentifier);
      v29 = v64;
    }

    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_71;
      }

      if (v37 >= v35)
      {
        break;
      }

      v33 = v30[v37];
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_59;
      }
    }

    v46 = &unk_101466000;
    v47 = v66;
    if (v29[2])
    {
      v48 = sub_100BD9514(_swiftEmptyArrayStorage);
      if (v29[2])
      {
        sub_100006370(0, &qword_1019F2D90);
        v74 = static OS_dispatch_queue.main.getter();
        v49 = swift_allocObject();
        *(v49 + 16) = v11;
        *(v49 + 24) = v29;
        *(v49 + 32) = 0;
        *(v49 + 40) = v48;
        v79 = sub_10007A268;
        v80 = v49;
        aBlock = _NSConcreteStackBlock;
        v76 = *"";
        v77 = sub_100007638;
        v78 = &unk_1018A5C30;
        v50 = _Block_copy(&aBlock);
        v51 = v11;

        v52 = v67;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
        sub_1005B981C(&unk_1019FF400);
        sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
        v53 = v69;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v54 = v74;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v50);

        v55 = v53;
        v46 = &unk_101466000;
        (*(v71 + 8))(v55, v47);
        (*(v68 + 8))(v52, v70);
      }

      else
      {
      }
    }

    v56 = v84;
    if ((v83 & 1) != 0 || v84[2])
    {
      sub_100006370(0, &qword_1019F2D90);
      v74 = static OS_dispatch_queue.main.getter();
      v57 = swift_allocObject();
      *(v57 + 16) = _swiftEmptySetSingleton;
      *(v57 + 24) = _swiftEmptySetSingleton;
      *(v57 + 32) = v56;
      *(v57 + 40) = 0;
      *(v57 + 48) = v11;
      v79 = sub_1000260F4;
      v80 = v57;
      aBlock = _NSConcreteStackBlock;
      v76 = v46[308];
      v77 = sub_100007638;
      v78 = &unk_1018A5C80;
      v58 = _Block_copy(&aBlock);
      v59 = v11;

      v60 = v67;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400);
      sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
      v61 = v69;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v62 = v74;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v58);

      (*(v71 + 8))(v61, v47);
      (*(v68 + 8))(v60, v70);
    }
  }
}

void sub_100E49C30(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v145 = a8;
  v146 = a7;
  v148 = a6;
  v151 = a4;
  LODWORD(v152) = a3;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = __chkstk_darwin(v12 - 8);
  v153 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v140 - v15;
  v154 = type metadata accessor for DispatchPredicate();
  v17 = *(v154 - 1);
  __chkstk_darwin(v154);
  v19 = (&v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(a1 + 32);
  if (!v20)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_9:
      v29 = static OS_os_log.boardStore;
      v30 = static os_log_type_t.info.getter();
      sub_100005404(v29, &_mh_execute_header, v30, "Skipping a change with no data", 30, 2, _swiftEmptyArrayStorage);
      return;
    }

LABEL_50:
    swift_once();
    goto LABEL_9;
  }

  v147 = v16;
  v143 = a5;
  v149 = a2;
  v150 = v8;
  v21 = *(a2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v19 = v21;
  v22 = enum case for DispatchPredicate.onQueue(_:);
  v23 = v154;
  v142 = *(v17 + 104);
  v142(v19, enum case for DispatchPredicate.onQueue(_:), v154);
  swift_unknownObjectRetain();
  v141 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v24 = *(v17 + 8);
  v24(v19, v23);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  type metadata accessor for CRLBoardItemSyncRemoteRecord(0);
  if (swift_dynamicCastClass() || (type metadata accessor for CRLBoardItemSyncRemoteRecord.Partial(0), swift_dynamicCastClass()))
  {
    type metadata accessor for CRLBoardItemSyncRemoteRecord.Partial(0);
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      swift_unknownObjectRetain();
      v26 = v150;
      v27 = sub_100E4AE54(v25);
      v28 = v26;
      swift_unknownObjectRelease();
      if (v26)
      {
        goto LABEL_27;
      }

      v144 = v20;
    }

    else
    {
      v27 = swift_dynamicCastClassUnconditional();
      v144 = v20;
      swift_unknownObjectRetain();
      v28 = v150;
    }

    v31 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
    v32 = v153;
    sub_10000C83C(v27 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, v153, type metadata accessor for CRLBoardIdentifier);

    v33 = v147;
    sub_100031F10(v147, v32);
    sub_100026028(v33, type metadata accessor for CRLBoardIdentifier);
    sub_100E43F64(v27, v151, v152 & 1, v25 != 0);
    if (v28)
    {
      swift_unknownObjectRelease();

      return;
    }

    v35 = v34;

    sub_100637378(v36);

    sub_100637378(v37);
    if (!v35)
    {
      swift_unknownObjectRelease();

      return;
    }

    if (v35 == 1)
    {

      *v145 = 1;
    }

    else
    {
      v48 = v153;
      sub_10000C83C(v27 + v31, v153, type metadata accessor for CRLBoardIdentifier);
      v49 = v147;
      sub_100031F10(v147, v48);

      sub_100026028(v49, type metadata accessor for CRLBoardIdentifier);
    }

    goto LABEL_27;
  }

  type metadata accessor for CRLBoardSyncRemoteRecord(0);
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v144 = v20;
    v39 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier;
    v40 = v38;
    v41 = v153;
    sub_10000C83C(v38 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v153, type metadata accessor for CRLBoardIdentifier);
    v42 = v147;
    sub_100031F10(v147, v41);
    sub_100026028(v42, type metadata accessor for CRLBoardIdentifier);
    v43 = v150;
    sub_100E4755C(v40, v152 & 1);
    if (!v43)
    {
      v45 = v44;
      v154 = v39;

      sub_100637378(v46);

      sub_100637378(v47);
      if (v45)
      {
        if (v45 == 1)
        {

          *v145 = 1;
        }

        else
        {
          sub_10000C83C(v154 + v40, v41, type metadata accessor for CRLBoardIdentifier);
          v61 = v147;
          sub_100031F10(v147, v41);

          sub_100026028(v61, type metadata accessor for CRLBoardIdentifier);
        }

        goto LABEL_27;
      }

      goto LABEL_31;
    }

LABEL_27:
    swift_unknownObjectRelease();
    return;
  }

  type metadata accessor for CRLBoardShareSyncRemoteRecord(0);
  v50 = swift_dynamicCastClass();
  if (v50)
  {
    v51 = v50;
    v144 = v20;
    v20 = v141;
    v52 = v142;
    *v19 = v141;
    v53 = v154;
    v52(v19, v22, v154);
    v54 = v20;
    v55 = _dispatchPreconditionTest(_:)();
    v24(v19, v53);
    if (v55)
    {
      sub_100E469D8(*(v51 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare), v51 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier);
      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    swift_once();
LABEL_39:
    v66 = static OS_os_log.boardStore;
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v67, "Attempted to apply unknown CRLSyncRemoteRecord type", 51, 2, _swiftEmptyArrayStorage);
    type metadata accessor for CRLUnknownSyncRemoteRecord();
    v68 = swift_dynamicCastClass();
    if (v68)
    {
      v144 = v20;
      v69 = *(v68 + 16);
      v70 = [v69 zoneID];
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v154 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v72 = [v69 recordName];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      *(inited + 56) = &type metadata for String;
      v76 = sub_1000053B0();
      *(inited + 64) = v76;
      *(inited + 32) = v73;
      *(inited + 40) = v75;
      v77 = [v70 zoneName];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v76;
      *(inited + 72) = v78;
      *(inited + 80) = v80;
      v81 = static os_log_type_t.default.getter();
      sub_100005404(v154, &_mh_execute_header, v81, "Adding unknown remote record to zonesNeedingRefetch, recordID: %@, zoneID: %@", 77, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      sub_100E7227C(&v155, v70, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
      v82 = v155;
      swift_unknownObjectRelease();
    }

    else
    {
      v154 = objc_opt_self();
      v116 = [v154 _atomicIncrementAssertCount];
      v155 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v155);
      StaticString.description.getter();
      v117 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v118 = String._bridgeToObjectiveC()();

      v119 = [v118 lastPathComponent];

      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v123 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v124 = swift_initStackObject();
      *(v124 + 16) = xmmword_10146CA70;
      *(v124 + 56) = &type metadata for Int32;
      *(v124 + 64) = &protocol witness table for Int32;
      *(v124 + 32) = v116;
      v125 = sub_100006370(0, &qword_1019F4D30);
      *(v124 + 96) = v125;
      v126 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v124 + 104) = v126;
      *(v124 + 72) = v117;
      *(v124 + 136) = &type metadata for String;
      v127 = sub_1000053B0();
      *(v124 + 112) = v120;
      *(v124 + 120) = v122;
      *(v124 + 176) = &type metadata for UInt;
      *(v124 + 184) = &protocol witness table for UInt;
      *(v124 + 144) = v127;
      *(v124 + 152) = 9865;
      v128 = v155;
      *(v124 + 216) = v125;
      *(v124 + 224) = v126;
      *(v124 + 192) = v128;
      v129 = v117;
      v130 = v128;
      v131 = static os_log_type_t.error.getter();
      sub_100005404(v123, &_mh_execute_header, v131, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v124);

      v132 = static os_log_type_t.error.getter();
      sub_100005404(v123, &_mh_execute_header, v132, "Unknown record type", 19, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Unknown record type");
      type metadata accessor for __VaListBuilder();
      v133 = swift_allocObject();
      v133[2] = 8;
      v133[3] = 0;
      v133[4] = 0;
      v133[5] = 0;
      v134 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v135 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v136 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v137 = String._bridgeToObjectiveC()();

      [v154 handleFailureInFunction:v135 file:v136 lineNumber:9865 isFatal:1 format:v137 args:v134];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v138, v139);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return;
  }

  type metadata accessor for CRLFreehandDrawingBucketSyncRemoteRecord(0);
  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v57 = v150;
    v58 = sub_100E46FDC(v56, v151, v152 & 1);
    if (!v57)
    {
      v60 = v59;
      sub_100637378(v58);
      sub_100637378(v60);
    }

    goto LABEL_27;
  }

  type metadata accessor for CRLUserBoardMetadataSyncRemoteRecord(0);
  v62 = swift_dynamicCastClass();
  v63 = v150;
  if (!v62)
  {
    if (qword_1019F2258 == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_54;
  }

  if (v152)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v64 = static OS_os_log.dataSync;
    v65 = static os_log_type_t.error.getter();
    sub_100005404(v64, &_mh_execute_header, v65, "Unexpected call to overwrite a boardMetadataRecord.", 51, 2, _swiftEmptyArrayStorage);
    goto LABEL_27;
  }

  v83 = v62;
  v84 = sub_100E48B08(v62);
  if (v63)
  {
    goto LABEL_27;
  }

  v87 = v84;
  v88 = v85;
  v89 = v86;

  sub_100637378(v90);

  sub_100637378(v91);
  if (!v89)
  {
LABEL_31:
    swift_unknownObjectRelease();

    return;
  }

  if (v89 != 1)
  {
    v114 = v153;
    sub_10000C83C(v83 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v153, type metadata accessor for CRLBoardIdentifier);
    v115 = v147;
    sub_100031F10(v147, v114);

    sub_100026028(v115, type metadata accessor for CRLBoardIdentifier);
    goto LABEL_27;
  }

  v152 = v88;
  v153 = v87;
  v144 = v20;
  v150 = 0;
  v151 = objc_opt_self();
  v92 = [v151 _atomicIncrementAssertCount];
  v155 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v155);
  StaticString.description.getter();
  v154 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v93 = String._bridgeToObjectiveC()();

  v94 = [v93 lastPathComponent];

  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v96;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v98 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v99 = swift_initStackObject();
  *(v99 + 16) = xmmword_10146CA70;
  *(v99 + 56) = &type metadata for Int32;
  *(v99 + 64) = &protocol witness table for Int32;
  *(v99 + 32) = v92;
  v100 = sub_100006370(0, &qword_1019F4D30);
  *(v99 + 96) = v100;
  v101 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v99 + 104) = v101;
  v102 = v154;
  *(v99 + 72) = v154;
  *(v99 + 136) = &type metadata for String;
  v103 = sub_1000053B0();
  *(v99 + 112) = v95;
  *(v99 + 120) = v97;
  *(v99 + 176) = &type metadata for UInt;
  *(v99 + 184) = &protocol witness table for UInt;
  *(v99 + 144) = v103;
  *(v99 + 152) = 9967;
  v104 = v155;
  *(v99 + 216) = v100;
  *(v99 + 224) = v101;
  *(v99 + 192) = v104;
  v105 = v102;
  v106 = v104;
  v107 = static os_log_type_t.error.getter();
  sub_100005404(v98, &_mh_execute_header, v107, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v99);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v108 = static os_log_type_t.error.getter();
  sub_100005404(v98, &_mh_execute_header, v108, "Merging a CRLUserBoardMetadataSyncRemoteRecord shouldn't result in us becoming supported again.", 95, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v109 = swift_allocObject();
  v109[2] = 8;
  v109[3] = 0;
  v109[4] = 0;
  v109[5] = 0;
  v110 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v111 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v112 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v113 = String._bridgeToObjectiveC()();

  [v151 handleFailureInFunction:v111 file:v112 lineNumber:9967 isFatal:0 format:v113 args:v110];
  swift_unknownObjectRelease();
}

uint64_t sub_100E4AE54(uint64_t a1)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v138 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v134 = *(v6 - 8);
  __chkstk_darwin(v6);
  v135 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v136 = &v116 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_id;
  v17 = OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_boardIdentifier;
  v18 = sub_100DECDC4(a1 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_id, a1 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_boardIdentifier);
  if (v2)
  {

    goto LABEL_4;
  }

  v38 = v18;
  if (!v18)
  {
LABEL_4:
    v138 = objc_opt_self();
    LODWORD(v6) = [v138 _atomicIncrementAssertCount];
    v137[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v137);
    StaticString.description.getter();
    v136 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v21;

    if (qword_1019F20A0 == -1)
    {
LABEL_5:
      v22 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v6;
      v24 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v24;
      v25 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v25;
      v26 = v136;
      *(inited + 72) = v136;
      *(inited + 136) = &type metadata for String;
      v27 = sub_1000053B0();
      *(inited + 112) = v135;
      *(inited + 120) = v13;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v27;
      *(inited + 152) = 11888;
      v28 = v137[0];
      *(inited + 216) = v24;
      *(inited + 224) = v25;
      *(inited + 192) = v28;
      v29 = v26;
      v30 = v28;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v32, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v33 = swift_allocObject();
      v33[2] = 8;
      v33[3] = 0;
      v33[4] = 0;
      v33[5] = 0;
      v34 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      [v138 handleFailureInFunction:v35 file:v36 lineNumber:11888 isFatal:0 format:v37 args:v34];

      sub_100EA3410();
      swift_allocError();
      swift_willThrow();
      return v36;
    }

LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  *&v128 = v17;
  v133 = v6;
  v39 = *(v18 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
  v131 = *(v18 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 16);
  v132 = v39;
  v129 = *(v18 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 32);
  v130 = *(v18 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
  sub_1005B981C(&qword_1019F54E0);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_10146BDE0;
  v41 = *(a1 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_rawMainTypeValue);
  *(v40 + 32) = v41;
  *(v40 + 56) = &type metadata for Int;
  *(v40 + 64) = &protocol witness table for Int;
  v42 = v38 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
  v43 = *(v38 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
  *(v40 + 96) = &type metadata for Int;
  *(v40 + 104) = &protocol witness table for Int;
  *(v40 + 72) = v43;
  if (v41 == v43)
  {
    v121 = 0x1000000000000;
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v44 = *v42;
    v125 = *(v42 + 8);
    v126 = v44;
    v124 = *(v42 + 16);
    v45 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
    swift_beginAccess();
    sub_10000BE14(v38 + v45, v136, &qword_1019F6990);
    v127 = *(v38 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone);
    v46 = *(v38 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v116 = *(v38 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
    v117 = v46;
    v48 = *(v38 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v118 = *(v38 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    v47 = v118;
    v119 = v48;
    v120 = *(a1 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_capsuleMergeableData);
    v49 = *(v38 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v122 = *(v38 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    v50 = v122;
    v123 = v49;
    sub_100024E84(v46, v116);
    sub_100024E84(v48, v47);
    sub_100024E84(v49, v50);

    v51 = v134;
    (*(v134 + 16))(v135, a1 + v16, v133);
    sub_10000C83C(a1 + v128, v138, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for CRLBoardItemSyncRemoteRecord(0);
    v36 = swift_allocObject();
    v52 = &v36[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData];
    v128 = xmmword_101486780;
    *v52 = xmmword_101486780;
    v53 = &v36[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData];
    *&v36[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData] = xmmword_101486780;
    v54 = OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData;
    *&v36[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData] = 0;
    *&v36[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_assets] = _swiftEmptyDictionarySingleton;
    v55 = *v52;
    v56 = *(v52 + 1);
    v57 = v116;
    *v52 = v117;
    *(v52 + 1) = v57;
    v58 = v120;
    v59 = v120;
    sub_100025870(v55, v56);
    v60 = *v53;
    v61 = v53[1];
    v62 = v118;
    *v53 = v119;
    v53[1] = v62;
    sub_100025870(v60, v61);
    *&v36[v54] = v58;
    *&v36[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_minRequiredVersionForSync] = v121;
    v63 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
    v64 = v133;
    (*(v51 + 56))(&v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID], 1, 1, v133);
    *&v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData] = v128;
    (*(v51 + 32))(&v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id], v135, v64);
    v65 = &v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions];
    v65[32] = v129;
    v66 = v131;
    *v65 = v132;
    *(v65 + 1) = v66;
    *&v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_objectOptions] = v130;
    v67 = &v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues];
    v68 = v125;
    *v67 = v126;
    *(v67 + 1) = v68;
    v67[16] = v124;
    swift_beginAccess();
    sub_10002C638(v136, &v36[v63], &qword_1019F6990);
    swift_endAccess();
    sub_100025668(v138, &v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier], type metadata accessor for CRLBoardIdentifier);
    v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned] = v127;
    v69 = &v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData];
    v70 = *&v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData];
    v71 = *&v36[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8];
    v73 = v122;
    v72 = v123;
    sub_100024E84(v123, v122);
    *v69 = v72;
    v69[1] = v73;
    sub_100025870(v70, v71);
    sub_100025870(v72, v73);
    return v36;
  }

  v138 = (v40 + 32);
  v75 = v40;
  v135 = objc_opt_self();
  LODWORD(v76) = [v135 _atomicIncrementAssertCount];
  v137[0] = [objc_allocWithZone(NSString) init];
  v136 = v75;
  sub_100604538(v75, v137);
  StaticString.description.getter();
  v77 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v78 = String._bridgeToObjectiveC()();

  v79 = [v78 lastPathComponent];

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  if (qword_1019F20A0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v83 = static OS_os_log.crlAssert;
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_10146CA70;
  *(v84 + 56) = &type metadata for Int32;
  *(v84 + 64) = &protocol witness table for Int32;
  *(v84 + 32) = v76;
  v85 = sub_100006370(0, &qword_1019F4D30);
  *(v84 + 96) = v85;
  v86 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v84 + 104) = v86;
  v87 = v77;
  *(v84 + 72) = v77;
  *(v84 + 136) = &type metadata for String;
  v88 = sub_1000053B0();
  *(v84 + 112) = v80;
  *(v84 + 120) = v82;
  *(v84 + 176) = &type metadata for UInt;
  *(v84 + 184) = &protocol witness table for UInt;
  *(v84 + 144) = v88;
  *(v84 + 152) = 11895;
  v89 = v137[0];
  *(v84 + 216) = v85;
  *(v84 + 224) = v86;
  *(v84 + 192) = v89;
  v90 = v87;
  v91 = v89;
  v92 = static os_log_type_t.error.getter();
  sub_100005404(v83, &_mh_execute_header, v92, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v84);

  v93 = static os_log_type_t.error.getter();
  v94 = v83;
  v95 = v136;
  sub_100005404(v94, &_mh_execute_header, v93, "Expected remote partial and local full record types to match but %{public}d did not match %{public}d", 100, 2, v136);

  sub_10063DF98(v95, "Expected remote partial and local full record types to match but %{public}d did not match %{public}d");
  type metadata accessor for __VaListBuilder();
  v76 = swift_allocObject();
  v76[2] = 8;
  v76[3] = 0;
  v82 = v76 + 3;
  v76[4] = 0;
  v76[5] = 0;
  v96 = v95[2];
  if (v96)
  {
    v77 = 0;
    while (1)
    {
      v80 = sub_100020E58(&v138[40 * v77], *&v138[40 * v77 + 24]);
      v97 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v98 = *v82;
      v99 = *(v97 + 16);
      v100 = __OFADD__(*v82, v99);
      v101 = *v82 + v99;
      if (v100)
      {
        goto LABEL_38;
      }

      v102 = v97;
      v80 = v76[4];
      if (v80 >= v101)
      {
        goto LABEL_30;
      }

      if (v80 + 0x4000000000000000 < 0)
      {
        goto LABEL_39;
      }

      v103 = v76[5];
      if (2 * v80 > v101)
      {
        v101 = 2 * v80;
      }

      v76[4] = v101;
      if ((v101 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_40;
      }

      v104 = swift_slowAlloc();
      v76[5] = v104;
      if (v103)
      {
        break;
      }

LABEL_31:
      if (!v104)
      {
        __break(1u);
        goto LABEL_43;
      }

      v106 = *(v102 + 16);
      if (v106)
      {
        v107 = (v102 + 32);
        v108 = *v82;
        while (1)
        {
          v109 = *v107++;
          *&v104[8 * v108] = v109;
          v108 = *v82 + 1;
          if (__OFADD__(*v82, 1))
          {
            break;
          }

          *v82 = v108;
          if (!--v106)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_15:

      v77 = v77 + 1;
      if (v77 == v96)
      {
        goto LABEL_43;
      }
    }

    if (v104 != v103 || v104 >= &v103[8 * v98])
    {
      memmove(v104, v103, 8 * v98);
    }

    v80 = v76;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_30:
    v104 = v76[5];
    goto LABEL_31;
  }

LABEL_43:
  v110 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v111 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v112 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v113 = String._bridgeToObjectiveC()();

  [v135 handleFailureInFunction:v111 file:v112 lineNumber:11895 isFatal:1 format:v113 args:v110];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v114, v115);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100E4BDC0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_recordIDsToOverwrite;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = __CocoaSet.count.getter();

    if (!v4)
    {
      return sub_10069AC44();
    }
  }

  else if (!*(v3 + 16))
  {
    return sub_10069AC44();
  }

  v28 = objc_opt_self();
  v5 = [v28 _atomicIncrementAssertCount];
  v29 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v29);
  StaticString.description.getter();
  v6 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v7 lastPathComponent];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v5;
  v14 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v14;
  v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v15;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for String;
  v16 = sub_1000053B0();
  *(inited + 112) = v9;
  *(inited + 120) = v11;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v16;
  *(inited + 152) = 9981;
  v17 = v29;
  *(inited + 216) = v14;
  *(inited + 224) = v15;
  *(inited + 192) = v17;
  v18 = v6;
  v19 = v17;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v21, "Expected recordIDsToOverwrite to be empty before saving new changes.", 68, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v22 = swift_allocObject();
  v22[2] = 8;
  v22[3] = 0;
  v22[4] = 0;
  v22[5] = 0;
  v23 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  [v28 handleFailureInFunction:v24 file:v25 lineNumber:9981 isFatal:0 format:v26 args:v23];

  return sub_10069AC44();
}

uint64_t sub_100E4C1F4(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_recordIDsToOverwrite;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = __CocoaSet.count.getter();

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else if (!*(v5 + 16))
  {
    goto LABEL_10;
  }

  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper))
  {

    sub_10112D538(v7, 1, a2 & 1);
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.dataSync;
    v9 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "Refetching readOnly changes was cancelled because there is no syncHelper set on the dataStore", 93, 2, _swiftEmptyArrayStorage);
  }

LABEL_10:
  *(a1 + v4) = _swiftEmptySetSingleton;

  return sub_10069BFA4();
}

uint64_t sub_100E4C368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v7[2] = a1;
  v7[3] = a2;
  v8 = a3 & 1;
  result = sub_10002FA9C(sub_100EA5470, v7);
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t sub_100E4C3C8(uint64_t a1, int a2)
{
  v4 = v3;
  LODWORD(v124) = a2;
  v109 = type metadata accessor for DispatchWorkItemFlags();
  v114 = *(v109 - 8);
  __chkstk_darwin(v109);
  v112 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DispatchQoS();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v125 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v116 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v117 = &v108 - v11;
  __chkstk_darwin(v12);
  v118 = &v108 - v13;
  __chkstk_darwin(v14);
  v121 = &v108 - v15;
  __chkstk_darwin(v16);
  v122 = &v108 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (&v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18, v20);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v25)
  {
    v141 = _swiftEmptyDictionarySingleton;
    v139 = _swiftEmptySetSingleton;
    v140 = _swiftEmptySetSingleton;
    v137 = _swiftEmptySetSingleton;
    v138 = _swiftEmptySetSingleton;
    v136 = _swiftEmptySetSingleton;
    v135 = 0;
    v134 = _swiftEmptySetSingleton;
    v23 = *(a1 + 16);
    v127 = _swiftEmptyArrayStorage;
    swift_retain_n();
    v126 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26 = v127;
  if (v127 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v123 = v23;
    v23 = (v124 & 1);
    while (1)
    {
      v27 = v26 >> 62;
      if (v26 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_105;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_106;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v29 = v26 & 0xFFFFFFFFFFFFFF8;
        if (!v27)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v28 = *(v26 + 32);

        v29 = v26 & 0xFFFFFFFFFFFFFF8;
        if (!v27)
        {
LABEL_11:
          v30 = *(v29 + 16);
          if (!v30)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        }
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_38;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_39;
      }

      v30 = _CocoaArrayWrapper.endIndex.getter();
LABEL_20:
      v32 = v30 - 1;
      if (__OFSUB__(v30, 1))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v127 = v26;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v27)
        {
          if (v32 <= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_27;
      }

      if (v27)
      {
        goto LABEL_26;
      }

LABEL_27:
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v127 = v26;
LABEL_28:
      sub_10067D1CC(0, 1, 0);
      v127 = v26;
      sub_100E51B74(v28, v126, &v141, &v138, &v137, &v136, &v135, &v134, v23);
      if (v3)
      {

LABEL_78:

LABEL_79:
      }

      swift_beginAccess();

      sub_10079BF64(v34);

      v26 = v127;
      if (v127 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_33:

          v35 = v140;
          goto LABEL_44;
        }
      }

      else if (!*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }
    }
  }

  v35 = _swiftEmptySetSingleton;
LABEL_44:
  v36 = v35 + 7;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v35[7];
  v40 = (v37 + 63) >> 6;
  v115 = "se to userDeleteZone error";

  v41 = 0;
  v124 = xmmword_10146C6B0;
  i = v35 + 7;
  v120 = v35;
  v42 = v121;
  while (v39)
  {
LABEL_56:
    v49 = v122;
    sub_10000C83C(v35[6] + *(v125 + 72) * (__clz(__rbit64(v39)) | (v41 << 6)), v122, type metadata accessor for CRLBoardIdentifier);
    sub_100025668(v49, v42, type metadata accessor for CRLBoardIdentifier);
    v50 = sub_100DEE194(v42);
    if (v4)
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v123 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v124;
      swift_getErrorValue();
      v44 = Error.localizedDescription.getter();
      v46 = v45;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v44;
      *(inited + 40) = v46;
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v123, &_mh_execute_header, v47, "Failed to purge board in response to user deleted zone with error: %@", 69, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
      v4 = 0;
      v35 = v120;
      v42 = v121;
    }

    else if (v50)
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v51 = static OS_os_log.boardStore;
      v52 = static os_log_type_t.default.getter();
      sub_100005404(v51, &_mh_execute_header, v52, "User deleted zone was synced at least once. Purging it in response to userDeleteZone error", 90, 2, _swiftEmptyArrayStorage);
      sub_100E0C7BC(v42, 0xD00000000000001FLL, v115 | 0x8000000000000000, 0);
    }

    v36 = i;
    v39 &= v39 - 1;
    result = sub_100026028(v42, type metadata accessor for CRLBoardIdentifier);
  }

  while (1)
  {
    v48 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v48 >= v40)
    {
      break;
    }

    v39 = v36[v48];
    ++v41;
    if (v39)
    {
      v41 = v48;
      goto LABEL_56;
    }
  }

  v53 = v139;
  v54 = v139 + 7;
  v55 = 1 << *(v139 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & v139[7];
  v58 = (v55 + 63) >> 6;
  v121 = "called _sync_applySaveResults()";

  v59 = 0;
  v60 = v118;
  for (i = v53; v57; v53 = i)
  {
LABEL_70:
    while (1)
    {
      v62 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      sub_10000C83C(v53[6] + *(v125 + 72) * (v62 | (v59 << 6)), v60, type metadata accessor for CRLBoardIdentifier);
      v63 = v4;
      sub_100E0C7BC(v60, 0xD00000000000001DLL, v121 | 0x8000000000000000, 0);
      if (v4)
      {
        break;
      }

      result = sub_100026028(v60, type metadata accessor for CRLBoardIdentifier);
      if (!v57)
      {
        goto LABEL_66;
      }
    }

    sub_100026028(v60, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v122 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    v64 = swift_initStackObject();
    *(v64 + 16) = v124;
    v123 = v63;
    swift_getErrorValue();
    v65 = Error.localizedDescription.getter();
    v67 = v66;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 64) = sub_1000053B0();
    *(v64 + 32) = v65;
    *(v64 + 40) = v67;
    v68 = static os_log_type_t.error.getter();
    sub_100005404(v122, &_mh_execute_header, v68, "Failed to purge board in response to zone not found for shared zone. Error: %@", 78, 2, v64);

    swift_setDeallocating();
    result = sub_100005070(v64 + 32);
    v4 = 0;
    v60 = v118;
  }

LABEL_66:
  while (1)
  {
    v61 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v61 >= v58)
    {

      v69 = v138;
      v70 = sub_10001FF1C();
      sub_100E2863C(v69, v70);
      if (v4)
      {

        goto LABEL_78;
      }

      v71 = v137;
      sub_100E2B4E8(v137);
      v72 = 0;
      v115 = v71;
      v118 = v69;
      v73 = v134;
      v74 = v134 + 7;
      v75 = 1 << *(v134 + 32);
      v76 = -1;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      v77 = v76 & v134[7];
      v123 = 0;
      *&v124 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
      v78 = (v75 + 63) >> 6;

      v79 = v116;
      v122 = v73;
      while (v77)
      {
LABEL_90:
        v81 = *(v73 + 48);
        v121 = *(v125 + 72);
        v82 = v117;
        sub_10000C83C(v81 + v121 * (__clz(__rbit64(v77)) | (v72 << 6)), v117, type metadata accessor for CRLBoardIdentifier);
        sub_100025668(v82, v79, type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        v83 = sub_1000486F0(v79);
        if (v84)
        {
          v85 = v83;
          v86 = v126;
          v87 = v124;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = *&v86[v87];
          v133 = v89;
          *&v86[v87] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100AAC740();
            v89 = v133;
          }

          sub_100026028(*(v89 + 48) + v85 * v121, type metadata accessor for CRLBoardIdentifier);

          sub_100BDBBA4(v85, v89);
          *&v86[v87] = v89;
          v79 = v116;
        }

        v77 &= v77 - 1;
        swift_endAccess();
        result = sub_100026028(v79, type metadata accessor for CRLBoardIdentifier);
        v73 = v122;
      }

      while (1)
      {
        v80 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_104;
        }

        if (v80 >= v78)
        {

          v90 = v109;
          if (*(v73 + 16))
          {
            v91 = sub_100BD9514(_swiftEmptyArrayStorage);
            v92 = v122;
            if (*(v122 + 16))
            {
              sub_100006370(0, &qword_1019F2D90);
              v125 = static OS_dispatch_queue.main.getter();
              v93 = swift_allocObject();
              v94 = v126;
              *(v93 + 16) = v126;
              *(v93 + 24) = v92;
              *(v93 + 32) = 0;
              *(v93 + 40) = v91;
              v131 = sub_10007A268;
              v132 = v93;
              v127 = _NSConcreteStackBlock;
              v128 = *"";
              v129 = sub_100007638;
              v130 = &unk_1018A6720;
              v95 = _Block_copy(&v127);
              v96 = v94;

              v97 = v110;
              static DispatchQoS.unspecified.getter();
              v127 = _swiftEmptyArrayStorage;
              *&v124 = sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
              sub_1005B981C(&unk_1019FF400);
              sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
              v98 = v112;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v99 = v125;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v95);

              (*(v114 + 8))(v98, v90);
              (*(v111 + 8))(v97, v113);
            }

            else
            {
            }
          }

          v100 = v136;
          if ((v135 & 1) != 0 || *(v136 + 2))
          {
            sub_100006370(0, &qword_1019F2D90);
            v125 = static OS_dispatch_queue.main.getter();
            v101 = swift_allocObject();
            *(v101 + 16) = _swiftEmptySetSingleton;
            *(v101 + 24) = _swiftEmptySetSingleton;
            *(v101 + 32) = v100;
            *(v101 + 40) = 0;
            v102 = v126;
            *(v101 + 48) = v126;
            v131 = sub_1000260F4;
            v132 = v101;
            v127 = _NSConcreteStackBlock;
            v128 = *"";
            v129 = sub_100007638;
            v130 = &unk_1018A6770;
            *&v124 = _Block_copy(&v127);
            v103 = v102;

            v104 = v110;
            static DispatchQoS.unspecified.getter();
            v127 = _swiftEmptyArrayStorage;
            sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
            sub_1005B981C(&unk_1019FF400);
            v126 = v100;
            sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
            v105 = v112;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v106 = v124;
            v107 = v125;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v106);

            (*(v114 + 8))(v105, v90);
            (*(v111 + 8))(v104, v113);
          }

          else
          {
          }

          goto LABEL_79;
        }

        v77 = v74[v80];
        ++v72;
        if (v77)
        {
          v72 = v80;
          goto LABEL_90;
        }
      }
    }

    v57 = v54[v61];
    ++v59;
    if (v57)
    {
      v59 = v61;
      goto LABEL_70;
    }
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_100E4D61C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v7 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v47 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v11;
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v17 = v18;
  v19 = *(v15 + 104);
  v56 = enum case for DispatchPredicate.onQueue(_:);
  v55 = v15 + 104;
  v54 = v19;
  v19(v17);
  v53 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v20 = *(v15 + 8);
  v57 = v17;
  v58 = v15 + 8;
  v59 = v14;
  v52 = v20;
  result = v20(v17, v14);
  if (v18)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = a1 + 32;
      v43 = v65;
      v42 = (v63 + 8);
      v41 = (v7 + 8);
      v63 = " ck record from cache with id ";
      v44 = v13;
      while (1)
      {
        sub_10000630C(v23, v67);
        sub_10000630C(v67, aBlock);
        sub_1005B981C(&qword_101A21F90);
        type metadata accessor for CRLBoardSyncRemoteRecordIdentifier(0);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_10000630C(v67, aBlock);
        type metadata accessor for CRLBoardItemSyncRemoteRecordIdentifier(0);
        if (swift_dynamicCast())
        {
          v24 = v3;
          sub_100DFCA00((v66 + OBJC_IVAR____TtC8Freeform38CRLBoardItemSyncRemoteRecordIdentifier_itemUUID), (v66 + OBJC_IVAR____TtC8Freeform38CRLBoardItemSyncRemoteRecordIdentifier_boardIdentifier));
LABEL_5:
          v3 = v24;

          if (v24)
          {
            return sub_100005070(v67);
          }

LABEL_6:
          result = sub_100005070(v67);
          goto LABEL_7;
        }

        sub_10000630C(v67, aBlock);
        type metadata accessor for CRLBoardShareSyncRemoteRecordIdentifier(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_6;
        }

        v62 = v66;
        v25 = v57;
        v26 = v53;
        *v57 = v53;
        v27 = v59;
        v54(v25, v56, v59);
        v28 = v26;
        LOBYTE(v26) = _dispatchPreconditionTest(_:)();
        result = v52(v25, v27);
        if ((v26 & 1) == 0)
        {
          __break(1u);
          goto LABEL_19;
        }

        sub_10000C83C(v62 + OBJC_IVAR____TtC8Freeform39CRLBoardShareSyncRemoteRecordIdentifier_boardIdentifier, v13, type metadata accessor for CRLBoardIdentifier);
        sub_100DFE34C(v13, 0, 0xF000000000000000, 0);
        if (v3)
        {

          sub_100026028(v13, type metadata accessor for CRLBoardIdentifier);
          return sub_100005070(v67);
        }

        sub_100006370(0, &qword_1019F2D90);
        v61 = static OS_dispatch_queue.main.getter();
        v29 = v45;
        sub_10000C83C(v13, v45, type metadata accessor for CRLBoardIdentifier);
        v30 = (*(v47 + 80) + 24) & ~*(v47 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = v4;
        sub_100025668(v29, v31 + v30, type metadata accessor for CRLBoardIdentifier);
        v65[2] = sub_100EA3628;
        v65[3] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        v65[0] = sub_100007638;
        v65[1] = &unk_1018A5D70;
        v60 = _Block_copy(aBlock);
        v32 = v4;

        v33 = v48;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
        sub_1005B981C(&unk_1019FF400);
        sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
        v34 = v50;
        v35 = v4;
        v36 = v51;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v38 = v60;
        v37 = v61;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v38);

        v39 = v36;
        v4 = v35;
        (*v42)(v34, v39);
        v40 = v33;
        v13 = v44;
        (*v41)(v40, v49);

        sub_100026028(v13, type metadata accessor for CRLBoardIdentifier);
        result = sub_100005070(v67);
LABEL_7:
        v23 += 40;
        if (!--v22)
        {
          return result;
        }
      }

      v24 = v3;
      sub_100E0C7BC((v66 + OBJC_IVAR____TtC8Freeform34CRLBoardSyncRemoteRecordIdentifier_boardIdentifier), 0xD000000000000020, v63 | 0x8000000000000000, 0);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100E4DE54(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v6 = __chkstk_darwin(v5 - 8);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v27 = &v26 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - v11;
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = a1 + 32;
    v24 = v26;
    do
    {
      v30 = _swiftEmptySetSingleton;
      sub_10000630C(v23, v29);
      sub_1005B981C(&qword_101A21F90);
      type metadata accessor for CRLBoardSyncRemoteRecordIdentifier(0);
      if (swift_dynamicCast())
      {
        sub_10000C83C(v28 + OBJC_IVAR____TtC8Freeform34CRLBoardSyncRemoteRecordIdentifier_boardIdentifier, v12, type metadata accessor for CRLBoardIdentifier);

        sub_100025668(v12, v14, type metadata accessor for CRLBoardIdentifier);
        sub_100E36FC8();
        if (v2)
        {
          return sub_100026028(v14, type metadata accessor for CRLBoardIdentifier);
        }

        sub_100E4E254(1);
        sub_100E4E6C8(1);
        sub_100E4EB3C();
        sub_100E09120(v14, 1);
        sub_100E4EFA4(1);
        sub_100E4F418(1);
        sub_100E4F88C(v14);
        sub_10000C83C(v14, v24, type metadata accessor for CRLBoardIdentifier);
        v25 = v27;
        sub_100031F10(v27, v24);
        sub_100026028(v25, type metadata accessor for CRLBoardIdentifier);
        sub_100026028(v14, type metadata accessor for CRLBoardIdentifier);
      }

      if (v30[2])
      {
        sub_100E513C0();
        if (v2)
        {
        }
      }

      v23 += 40;
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t sub_100E4E254(sqlite3_int64 a1)
{
  v40 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v38 = *(v4 + 8);
  v38(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v37 = v3;
  v39 = v8;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD00000000000005ALL, 0x80000001015A85A0);

  if (v2)
  {
    return result;
  }

  sub_100034254(v40, 1);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v13 = sub_10084DAE4();
  v40 = v14;
  v15 = v13;
  v16 = *(*(v11 + 16) + 32);
  *v6 = v16;
  v17 = v37;
  v39(v6, v41, v37);
  v18 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = v38;
  v38(v6, v17);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v15;
  v22 = v40;
  sub_100DCCAB4(v21, v40, v11, 2);
  sub_10002640C(v20, v22);
  v23 = *(*(v11 + 16) + 32);
  *v6 = v23;
  v24 = v39;
  v39(v6, v41, v17);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v19(v6, v17);
  if ((v23 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = *(v11 + 16);

  v27 = sub_10001CEC4(v26, v11);

  if (v27 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v32 = v27;
    *(v32 + 8) = 0xD00000000000002DLL;
    *(v32 + 16) = 0x80000001015A8600;
    swift_willThrow();
    v33 = *(*(v11 + 16) + 32);
    *v6 = v33;
    v24(v6, v41, v17);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v38(v6, v17);
    if (v35)
    {
      swift_beginAccess();
      v31 = *(v11 + 24);
      if (!v31)
      {
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v28 = *(*(v11 + 16) + 32);
  *v6 = v28;
  v24(v6, v41, v17);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v19(v6, v17);
  if ((v30 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v31 = *(v11 + 24);
  if (v31)
  {
LABEL_11:
    sqlite3_finalize(v31);
    *(v11 + 24) = 0;
  }
}

uint64_t sub_100E4E6C8(sqlite3_int64 a1)
{
  v40 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v38 = *(v4 + 8);
  v38(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v37 = v3;
  v39 = v8;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD000000000000054, 0x80000001015A8510);

  if (v2)
  {
    return result;
  }

  sub_100034254(v40, 1);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v13 = sub_10084DAE4();
  v40 = v14;
  v15 = v13;
  v16 = *(*(v11 + 16) + 32);
  *v6 = v16;
  v17 = v37;
  v39(v6, v41, v37);
  v18 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = v38;
  v38(v6, v17);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v15;
  v22 = v40;
  sub_100DCCAB4(v21, v40, v11, 2);
  sub_10002640C(v20, v22);
  v23 = *(*(v11 + 16) + 32);
  *v6 = v23;
  v24 = v39;
  v39(v6, v41, v17);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v19(v6, v17);
  if ((v23 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = *(v11 + 16);

  v27 = sub_10001CEC4(v26, v11);

  if (v27 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v32 = v27;
    *(v32 + 8) = 0xD000000000000027;
    *(v32 + 16) = 0x80000001015A8570;
    swift_willThrow();
    v33 = *(*(v11 + 16) + 32);
    *v6 = v33;
    v24(v6, v41, v17);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v38(v6, v17);
    if (v35)
    {
      swift_beginAccess();
      v31 = *(v11 + 24);
      if (!v31)
      {
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v28 = *(*(v11 + 16) + 32);
  *v6 = v28;
  v24(v6, v41, v17);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v19(v6, v17);
  if ((v30 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v31 = *(v11 + 24);
  if (v31)
  {
LABEL_11:
    sqlite3_finalize(v31);
    *(v11 + 24) = 0;
  }
}

uint64_t sub_100E4EB3C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v38 = enum case for DispatchPredicate.onQueue(_:);
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v36 = *(v3 + 8);
  v36(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v2;
  v37 = v7;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v10 = sub_10001CC04(v9, 0xD00000000000005ELL, 0x80000001015A8460);

  if (v1)
  {
    return result;
  }

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v12 = sub_10084DAE4();
  v34 = v13;
  v14 = v12;
  v15 = *(*(v10 + 16) + 32);
  *v5 = v15;
  v16 = v35;
  v37(v5, v38, v35);
  v17 = v15;
  v18 = _dispatchPreconditionTest(_:)();
  v36(v5, v16);
  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v14;
  v21 = v34;
  sub_100DCCAB4(v20, v34, v10, 1);
  sub_10002640C(v19, v21);
  v22 = *(*(v10 + 16) + 32);
  *v5 = v22;
  v37(v5, v38, v16);
  v23 = v22;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v24 = v36;
  v36(v5, v16);
  if ((v19 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = *(v10 + 16);

  v26 = sub_10001CEC4(v25, v10);

  if (v26 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v30 = v26;
    *(v30 + 8) = 0xD000000000000043;
    *(v30 + 16) = 0x80000001015A84C0;
    swift_willThrow();
    v31 = *(*(v10 + 16) + 32);
    *v5 = v31;
    v37(v5, v38, v16);
    v32 = v31;
    LOBYTE(v31) = _dispatchPreconditionTest(_:)();
    v24(v5, v16);
    if (v31)
    {
      swift_beginAccess();
      v29 = *(v10 + 24);
      if (!v29)
      {
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v27 = *(*(v10 + 16) + 32);
  *v5 = v27;
  v37(v5, v38, v16);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v24(v5, v16);
  if ((v27 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v29 = *(v10 + 24);
  if (v29)
  {
LABEL_11:
    sqlite3_finalize(v29);
    *(v10 + 24) = 0;
  }
}

uint64_t sub_100E4EFA4(sqlite3_int64 a1)
{
  v40 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v38 = *(v4 + 8);
  v38(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v37 = v3;
  v39 = v8;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD000000000000054, 0x80000001015A8310);

  if (v2)
  {
    return result;
  }

  sub_100034254(v40, 1);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v13 = sub_10084DAE4();
  v40 = v14;
  v15 = v13;
  v16 = *(*(v11 + 16) + 32);
  *v6 = v16;
  v17 = v37;
  v39(v6, v41, v37);
  v18 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = v38;
  v38(v6, v17);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v15;
  v22 = v40;
  sub_100DCCAB4(v21, v40, v11, 2);
  sub_10002640C(v20, v22);
  v23 = *(*(v11 + 16) + 32);
  *v6 = v23;
  v24 = v39;
  v39(v6, v41, v17);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v19(v6, v17);
  if ((v23 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = *(v11 + 16);

  v27 = sub_10001CEC4(v26, v11);

  if (v27 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v32 = v27;
    *(v32 + 8) = 0xD000000000000032;
    *(v32 + 16) = 0x80000001015A8370;
    swift_willThrow();
    v33 = *(*(v11 + 16) + 32);
    *v6 = v33;
    v24(v6, v41, v17);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v38(v6, v17);
    if (v35)
    {
      swift_beginAccess();
      v31 = *(v11 + 24);
      if (!v31)
      {
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v28 = *(*(v11 + 16) + 32);
  *v6 = v28;
  v24(v6, v41, v17);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v19(v6, v17);
  if ((v30 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v31 = *(v11 + 24);
  if (v31)
  {
LABEL_11:
    sqlite3_finalize(v31);
    *(v11 + 24) = 0;
  }
}

uint64_t sub_100E4F418(sqlite3_int64 a1)
{
  v40 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v38 = *(v4 + 8);
  v38(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v37 = v3;
  v39 = v8;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD00000000000004ALL, 0x80000001015A8280);

  if (v2)
  {
    return result;
  }

  sub_100034254(v40, 1);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v13 = sub_10084DAE4();
  v40 = v14;
  v15 = v13;
  v16 = *(*(v11 + 16) + 32);
  *v6 = v16;
  v17 = v37;
  v39(v6, v41, v37);
  v18 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = v38;
  v38(v6, v17);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v15;
  v22 = v40;
  sub_100DCCAB4(v21, v40, v11, 2);
  sub_10002640C(v20, v22);
  v23 = *(*(v11 + 16) + 32);
  *v6 = v23;
  v24 = v39;
  v39(v6, v41, v17);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v19(v6, v17);
  if ((v23 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = *(v11 + 16);

  v27 = sub_10001CEC4(v26, v11);

  if (v27 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v32 = v27;
    *(v32 + 8) = 0xD000000000000030;
    *(v32 + 16) = 0x80000001015A82D0;
    swift_willThrow();
    v33 = *(*(v11 + 16) + 32);
    *v6 = v33;
    v24(v6, v41, v17);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v38(v6, v17);
    if (v35)
    {
      swift_beginAccess();
      v31 = *(v11 + 24);
      if (!v31)
      {
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v28 = *(*(v11 + 16) + 32);
  *v6 = v28;
  v24(v6, v41, v17);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v19(v6, v17);
  if ((v30 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v31 = *(v11 + 24);
  if (v31)
  {
LABEL_11:
    sqlite3_finalize(v31);
    *(v11 + 24) = 0;
  }
}

uint64_t sub_100E4F88C(uint64_t a1)
{
  v171 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = (v4 + 104);
  v9 = *(v4 + 104);
  v173 = enum case for DispatchPredicate.onQueue(_:);
  v9(v6);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v14 = *(v4 + 8);
  v12 = v4 + 8;
  v13 = v14;
  v14(v6, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v169 = v13;
  v172 = v9;
  v170 = v8;
  v15 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  v16 = type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v18 = sub_10001CC04(v17, 0xD000000000000042, 0x80000001015A8090);
  if (v2)
  {
  }

  v19 = v18;
  v168 = v16;

  v20 = (v171 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v21 = *v20;
  v22 = v20[1];
  v23 = sub_10084DAE4();
  v25 = v15;
  v26 = v23;
  v167 = v24;
  v162 = v22;
  v163 = v21;
  v164 = v25;
  v165 = 0;
  v27 = v169;
  v28 = v12;
  v29 = *(*(v19 + 16) + 32);
  *v6 = v29;
  v30 = v170;
  v172(v6, v173, v3);
  v31 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v32 = v27(v6, v3);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v34 = v167;
  v35 = v165;
  sub_100DCCAB4(v26, v167, v19, 1);
  v165 = v35;
  sub_10002640C(v26, v34);
  v36 = *(*(v19 + 16) + 32);
  *v6 = v36;
  v172(v6, v173, v3);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v166 = v3;
  v167 = v28;
  v32 = v27(v6, v3);
  if ((v36 & 1) == 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    v115 = v32;
    v116 = v33;
    v117 = *(*(v28 + 16) + 32);
    *v6 = v117;
    v172(v6, v173, v19);
    v118 = v117;
    LOBYTE(v117) = _dispatchPreconditionTest(_:)();
    result = v169(v6, v19);
    if (v117)
    {

      sub_100DCCAB4(v115, v116, v28, 1);
      sub_10002640C(v115, v116);
      v119 = *(*(v28 + 16) + 32);
      *v30 = v119;
      v120 = v166;
      v172(v30, v173, v166);
      v121 = v119;
      LOBYTE(v119) = _dispatchPreconditionTest(_:)();
      result = v169(v30, v120);
      if (v119)
      {
        v122 = *(v28 + 16);

        v123 = sub_10001CEC4(v122, v28);

        if (v123 != 101)
        {
          goto LABEL_59;
        }

        v124 = *(*(v28 + 16) + 32);
        *v30 = v124;
        v125 = v166;
        v172(v30, v173, v166);
        v126 = v124;
        LOBYTE(v124) = _dispatchPreconditionTest(_:)();
        result = v169(v30, v125);
        if (v124)
        {
          swift_beginAccess();
          v127 = *(v28 + 24);
          if (v127)
          {
            sqlite3_finalize(v127);
            *(v28 + 24) = 0;
          }

          v128 = *(*(v3 + 16) + 32);
          *v30 = v128;
          v129 = v166;
          v172(v30, v173, v166);
          v130 = v128;
          LOBYTE(v128) = _dispatchPreconditionTest(_:)();
          result = v169(v30, v129);
          if (v128)
          {
            swift_beginAccess();
            v131 = *(v3 + 24);
            if (v131)
            {
              sqlite3_finalize(v131);
              *(v3 + 24) = 0;
            }

            v132 = *(*(v160 + 16) + 32);
            *v30 = v132;
            v133 = v166;
            v172(v30, v173, v166);
            v134 = v132;
            LOBYTE(v132) = _dispatchPreconditionTest(_:)();
            result = v169(v30, v133);
            if (v132)
            {
              v135 = v160;
              swift_beginAccess();
              v136 = *(v135 + 24);
              if (v136)
              {
                sqlite3_finalize(v136);
                *(v160 + 24) = 0;
              }

              v137 = *(*(v161 + 16) + 32);
              *v30 = v137;
              v138 = v166;
              v172(v30, v173, v166);
              v139 = v137;
              LOBYTE(v137) = _dispatchPreconditionTest(_:)();
              result = v169(v30, v138);
              if (v137)
              {
                v140 = v161;
                swift_beginAccess();
                v141 = *(v140 + 24);
                if (!v141)
                {
                }

                goto LABEL_70;
              }

              goto LABEL_89;
            }

            goto LABEL_87;
          }

          goto LABEL_85;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v38 = v19;
  v28 = v27;
  v39 = *(v19 + 16);

  v40 = v39;
  v41 = v165;
  v42 = sub_10001CEC4(v40, v19);

  if (v42 == 101)
  {
    swift_initStackObject();

    v42 = v43;
    v44 = sub_10001CC04(v43, 0xD00000000000003DLL, 0x80000001015A8110);
    v45 = v166;
    if (v41)
    {

      v46 = *(*(v38 + 16) + 32);
      *v6 = v46;
      v172(v6, v173, v45);
      v47 = v46;
      LOBYTE(v46) = _dispatchPreconditionTest(_:)();
      v27(v6, v45);
      if (v46)
      {
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_11;
    }

    v53 = v44;

    v54 = sub_10084DAE4();
    v161 = v38;
    v56 = v55;
    v57 = v54;
    v58 = *(*(v53 + 16) + 32);
    *v6 = v58;
    v172(v6, v173, v45);
    v59 = v58;
    LOBYTE(v58) = _dispatchPreconditionTest(_:)();
    v27(v6, v45);
    if (v58)
    {

      sub_100DCCAB4(v57, v56, v53, 1);
      sub_10002640C(v57, v56);
      v60 = *(*(v53 + 16) + 32);
      *v6 = v60;
      v172(v6, v173, v45);
      v61 = v60;
      LOBYTE(v60) = _dispatchPreconditionTest(_:)();
      (v28)(v6, v45);
      if (v60)
      {
        v62 = *(v53 + 16);

        v63 = sub_10001CEC4(v62, v53);

        if (v63 == 101)
        {
          swift_initStackObject();

          v65 = sub_10001CC04(v64, 0xD000000000000050, 0x80000001015A8170);
          v66 = v166;
          v81 = v65;

          v82 = sub_10084DAE4();
          v160 = v53;
          v84 = v83;
          v85 = v82;
          v86 = *(*(v81 + 16) + 32);
          *v6 = v86;
          v172(v6, v173, v66);
          v87 = v86;
          LOBYTE(v86) = _dispatchPreconditionTest(_:)();
          v88 = v66;
          v89 = v66;
          v8 = v169;
          result = v169(v6, v88);
          if (v86)
          {

            sub_100DCCAB4(v85, v84, v81, 1);
            sub_10002640C(v85, v84);
            v91 = *(*(v81 + 16) + 32);
            *v6 = v91;
            v172(v6, v173, v89);
            v92 = v91;
            LOBYTE(v91) = _dispatchPreconditionTest(_:)();
            result = (v8)(v6, v89);
            if (v91)
            {
              v11 = v81;
              v93 = *(v81 + 16);

              v94 = sub_10001CEC4(v93, v81);

              v3 = v160;
              v12 = 0xD00000000000001FLL;
              if (v94 == 101)
              {
                v3 = v81;
                swift_initStackObject();

                v96 = sub_10001CC04(v95, 0xD000000000000046, 0x80000001015A8200);
                v19 = v166;
                v28 = v96;

                v32 = sub_10084DAE4();
                v30 = v6;
                goto LABEL_43;
              }

LABEL_31:
              sub_10089C7D0();
              v97 = swift_allocError();
              *v98 = 101;
              *(v98 + 8) = v12 + 11;
              *(v98 + 16) = 0x80000001015A81D0;
              v165 = v97;
              swift_willThrow();
              v99 = *(*(v11 + 16) + 32);
              *v6 = v99;
              v100 = v173;
              v101 = v166;
              v102 = v172;
              v172(v6, v173, v166);
              v103 = v99;
              LOBYTE(v99) = _dispatchPreconditionTest(_:)();
              result = (v8)(v6, v101);
              if (v99)
              {
                swift_beginAccess();
                v104 = *(v11 + 24);
                if (v104)
                {
                  sqlite3_finalize(v104);
                  *(v11 + 24) = 0;
                }

                v105 = *(*(v3 + 16) + 32);
                *v6 = v105;
                v106 = v166;
                v102(v6, v100, v166);
                v107 = v105;
                LOBYTE(v105) = _dispatchPreconditionTest(_:)();
                result = v169(v6, v106);
                if (v105)
                {
                  swift_beginAccess();
                  v108 = *(v3 + 24);
                  v109 = v161;
                  if (v108)
                  {
                    sqlite3_finalize(v108);
                    *(v3 + 24) = 0;
                  }

                  v110 = *(*(v109 + 16) + 32);
                  *v6 = v110;
                  v111 = v100;
                  v112 = v166;
                  v102(v6, v111, v166);
                  v113 = v110;
                  LOBYTE(v110) = _dispatchPreconditionTest(_:)();
                  result = v169(v6, v112);
                  if (v110)
                  {
                    swift_beginAccess();
                    v114 = *(v109 + 24);
                    if (v114)
                    {
                      sqlite3_finalize(v114);
                      *(v109 + 24) = 0;
                    }
                  }

                  goto LABEL_80;
                }

LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                goto LABEL_81;
              }

LABEL_78:
              __break(1u);
              goto LABEL_79;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_78;
        }

        sub_10089C7D0();
        swift_allocError();
        *v67 = v63;
        *(v67 + 8) = 0xD00000000000001FLL;
        *(v67 + 16) = 0x80000001015A8150;
        swift_willThrow();
        v68 = *(*(v53 + 16) + 32);
        *v6 = v68;
        v69 = v173;
        v70 = v166;
        v71 = v172;
        v172(v6, v173, v166);
        v72 = v68;
        LOBYTE(v68) = _dispatchPreconditionTest(_:)();
        v73 = v70;
        v74 = v28;
        (v28)(v6, v73);
        if (v68)
        {
          swift_beginAccess();
          v75 = *(v53 + 24);
          if (v75)
          {
            sqlite3_finalize(v75);
            *(v53 + 24) = 0;
          }

          v76 = v161;
          v77 = *(*(v161 + 16) + 32);
          *v6 = v77;
          v78 = v166;
          v71(v6, v69, v166);
          v79 = v77;
          LOBYTE(v77) = _dispatchPreconditionTest(_:)();
          v74(v6, v78);
          if (v77)
          {
            swift_beginAccess();
            v80 = *(v76 + 24);
            if (v80)
            {
              sqlite3_finalize(v80);
              *(v76 + 24) = 0;
            }
          }

LABEL_75:
          __break(1u);
          __break(1u);
          __break(1u);
        }

LABEL_74:
        __break(1u);
        goto LABEL_75;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_74;
  }

LABEL_11:
  sub_10089C7D0();
  swift_allocError();
  *v48 = v42;
  *(v48 + 8) = 0xD000000000000025;
  *(v48 + 16) = 0x80000001015A80E0;
  swift_willThrow();
  v49 = *(*(v38 + 16) + 32);
  *v6 = v49;
  v50 = v166;
  v172(v6, v173, v166);
  v51 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  v27(v6, v50);
  if (v49)
  {
LABEL_12:
    swift_beginAccess();
    v52 = *(v38 + 24);
    if (v52)
    {
      sqlite3_finalize(v52);
      *(v38 + 24) = 0;
    }
  }

  __break(1u);
LABEL_59:
  sub_10089C7D0();
  swift_allocError();
  *v142 = 101;
  *(v142 + 8) = 0xD000000000000028;
  *(v142 + 16) = 0x80000001015A8250;
  swift_willThrow();
  v143 = *(*(v28 + 16) + 32);
  *v30 = v143;
  v144 = v166;
  v172(v30, v173, v166);
  v145 = v143;
  LOBYTE(v143) = _dispatchPreconditionTest(_:)();
  result = v169(v30, v144);
  if ((v143 & 1) == 0)
  {
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
    goto LABEL_90;
  }

  swift_beginAccess();
  v146 = *(v28 + 24);
  if (v146)
  {
    sqlite3_finalize(v146);
    *(v28 + 24) = 0;
  }

  v147 = *(*(v3 + 16) + 32);
  *v30 = v147;
  v148 = v166;
  v172(v30, v173, v166);
  v149 = v147;
  LOBYTE(v147) = _dispatchPreconditionTest(_:)();
  result = v169(v30, v148);
  if ((v147 & 1) == 0)
  {
    goto LABEL_86;
  }

  swift_beginAccess();
  v150 = *(v3 + 24);
  if (v150)
  {
    sqlite3_finalize(v150);
    *(v3 + 24) = 0;
  }

  v151 = *(*(v160 + 16) + 32);
  *v30 = v151;
  v152 = v166;
  v172(v30, v173, v166);
  v153 = v151;
  LOBYTE(v151) = _dispatchPreconditionTest(_:)();
  result = v169(v30, v152);
  if ((v151 & 1) == 0)
  {
    goto LABEL_88;
  }

  v154 = v160;
  swift_beginAccess();
  v155 = *(v154 + 24);
  if (v155)
  {
    sqlite3_finalize(v155);
    *(v160 + 24) = 0;
  }

  v156 = *(*(v161 + 16) + 32);
  *v30 = v156;
  v157 = v166;
  v172(v30, v173, v166);
  v158 = v156;
  LOBYTE(v156) = _dispatchPreconditionTest(_:)();
  result = v169(v30, v157);
  if (v156)
  {
    v159 = v161;
    swift_beginAccess();
    v141 = *(v159 + 24);
    if (!v141)
    {
    }

LABEL_70:
    sqlite3_finalize(v141);
    *(v161 + 24) = 0;
  }

LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_100E513C0()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v9 = sub_10002BB60(v8);
  if (v1)
  {

LABEL_4:
    v11 = _swiftEmptySetSingleton;
    goto LABEL_5;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v20 = v9;
  v21 = v10;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v22 = JSONDecoder.init()();
  sub_1005B981C(&unk_101A22E80);
  sub_100034CCC(&qword_101A21F10, &qword_1019F4758);
  v23 = v20;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100025870(v23, v21);

  v11 = v25;
LABEL_5:
  v26 = v11;

  sub_100636CB4(v12);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v25 = v26;
  sub_1005B981C(&unk_101A22E80);
  sub_100034CCC(&qword_101A21F98, &qword_1019F4780);
  v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v15 = v14;

  v16 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v5 = v16;
  v17 = v24;
  (*(v24 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v3);
  v18 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v5, v3);
  if (v16)
  {
    sub_100024E98(v13, v15);
    sub_100E257D0(v8, 0, 0, v2, v13, v15);
    sub_100026028(v8, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    return sub_10002640C(v13, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E517DC(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = sub_101270CEC(a3);
  v5[40] = 1;
  v5[16] = 1;
  v5[41] = a1;
  swift_endAccess();
}

uint64_t sub_100E51860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6[2] = a1;
  v6[3] = a2;
  result = sub_10002FA9C(sub_100EA52E0, v6);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_100E518B8(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = sub_10002BB60(v5);
  if (v1)
  {

LABEL_4:
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.boardStore;
    v9 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "Attempted to remove board identifiers from sync reset boards but data not found", 79, 2, _swiftEmptyArrayStorage);
    return sub_100026028(v5, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v11 = v6;
  v12 = v7;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005B981C(&unk_101A22E80);
  sub_100034CCC(&qword_101A21F10, &qword_1019F4758);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (*(a1 + 16) <= v14[2] >> 3)
  {
    sub_1012D515C(a1);
  }

  else
  {
    sub_1012D77B4(a1, v14);
  }

  sub_100E513C0();
  sub_100026028(v5, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

  return sub_100025870(v11, v12);
}

void sub_100E51B74(void *a1, char *a2, uint64_t *a3, uint64_t a4, void *a5, char *a6, _BYTE *a7, uint64_t a8, char a9)
{
  v778 = a2;
  v763 = a8;
  v757 = a7;
  v758 = a6;
  v760 = a4;
  v761 = a5;
  v767 = a3;
  v748 = sub_1005B981C(&unk_101A22860);
  __chkstk_darwin(v748);
  v738 = &v732 - v10;
  v11 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v11 - 8);
  v749 = (&v732 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v741 = (&v732 - v14);
  v15 = sub_1005B981C(&unk_101A341C0);
  v16 = *(v15 - 8);
  v743 = v15;
  v744 = v16;
  __chkstk_darwin(v15);
  v739 = &v732 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v737 = &v732 - v19;
  __chkstk_darwin(v20);
  v747 = &v732 - v21;
  v754 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v754);
  v755 = &v732 - v22;
  *&v774 = type metadata accessor for DispatchPredicate();
  *&v777 = *(v774 - 8);
  __chkstk_darwin(v774);
  *&v771 = &v732 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CRLBoardIdentifier(0);
  v751 = *(v24 - 8);
  v752 = v24;
  __chkstk_darwin(v24);
  v26 = &v732 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v736 = &v732 - v28;
  __chkstk_darwin(v29);
  v31 = &v732 - v30;
  __chkstk_darwin(v32);
  v34 = &v732 - v33;
  __chkstk_darwin(v35);
  v37 = &v732 - v36;
  __chkstk_darwin(v38);
  v740 = (&v732 - v39);
  __chkstk_darwin(v40);
  v766 = (&v732 - v41);
  __chkstk_darwin(v42);
  v765 = &v732 - v43;
  __chkstk_darwin(v44);
  v742 = &v732 - v45;
  __chkstk_darwin(v46);
  v764 = (&v732 - v47);
  __chkstk_darwin(v48);
  v746 = &v732 - v49;
  __chkstk_darwin(v50);
  *&v769 = &v732 - v51;
  v52 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v52 - 8);
  v745 = &v732 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v759 = &v732 - v55;
  __chkstk_darwin(v56);
  v750 = &v732 - v57;
  __chkstk_darwin(v58);
  v762 = &v732 - v59;
  __chkstk_darwin(v60);
  v756 = (&v732 - v61);
  __chkstk_darwin(v62);
  v753 = &v732 - v63;
  __chkstk_darwin(v64);
  v66 = &v732 - v65;
  __chkstk_darwin(v67);
  *&v768 = &v732 - v68;
  __chkstk_darwin(v69);
  v770 = &v732 - v70;
  v71 = type metadata accessor for UUID();
  __chkstk_darwin(v71);
  v73 = &v732 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v76 = &v732 - v75;
  __chkstk_darwin(v77);
  __chkstk_darwin(v78);
  v80 = (&v732 - v79);
  __chkstk_darwin(v81);
  __chkstk_darwin(v82);
  __chkstk_darwin(v83);
  v92 = __chkstk_darwin(v84);
  v93 = a1[5];
  if ((~v93 & 0xF000000000000007) == 0)
  {
    return;
  }

  v94 = a1[4];
  v772 = a1[6];
  v773 = v93;
  v95 = a1[7];
  v96 = a1[8];
  v775 = v94;
  v776 = v95;
  if (!(v93 >> 62))
  {
    v758 = v87;
    v760 = v91;
    v761 = v86;
    v766 = v80;
    v732 = v90;
    v733 = &v732 - v88;
    v763 = v89;
    v734 = v85;
    type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
    v113 = v775;
    v114 = swift_dynamicCastClass();
    if (v114)
    {
      v115 = *(v763 + 16);
      v116 = v114;
      v751 = v763 + 16;
      v749 = v115;
      v115(v733, v114 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v734);
      v117 = *(v116 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues);
      v747 = *(v116 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 8);
      v748 = v117;
      LODWORD(v744) = *(v116 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 16);
      v766 = *(v116 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData);
      v118 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
      swift_beginAccess();
      v735 = v96;
      sub_10000BE14(v116 + v118, v770, &qword_1019F6990);
      sub_10000BE14(v116 + v118, v768, &qword_1019F6990);
      sub_10000C83C(v116 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, v769, type metadata accessor for CRLBoardIdentifier);
      LODWORD(v757) = *(v116 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned);
      v752 = v116;
      v119 = *(v116 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData);
      v120 = *(v116 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData + 8);
      v761 = *&v778[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
      v34 = v771;
      *v771 = v761;
      v121 = v777;
      v122 = *(v777 + 104);
      LODWORD(v742) = enum case for DispatchPredicate.onQueue(_:);
      v743 = v777 + 104;
      v741 = v122;
      v122(v34);
      v123 = swift_unknownObjectRetain_n();
      v124 = v772;
      v125 = v776;
      v126 = v735;
      sub_100EA54FC(v123, v773, v772, v776, v735);
      sub_100024E84(v124, v125);

      v127 = v126;
      v764 = v120;
      v765 = v119;
      sub_100024E84(v119, v120);
      v128 = v761;
      v129 = _dispatchPreconditionTest(_:)();
      v130 = *(v121 + 8);
      *&v777 = v121 + 8;
      v131 = v130(v34, v774);
      if (v129)
      {
        v132 = v769;
        v133 = v779;
        sub_100E43E74(v769, v767);
        v779 = v133;
        if (v133)
        {
          v134 = v772;
          v135 = v776;
          sub_100025870(v772, v776);
          sub_100025870(v765, v764);
          v136 = v775;
          swift_unknownObjectRelease();

          sub_100EA5510(v136, v773, v134, v135, v735);

          swift_unknownObjectRelease();
          sub_100026028(v132, type metadata accessor for CRLBoardIdentifier);
          sub_10000CAAC(v770, &qword_1019F6990);
          (*(v763 + 8))(v733, v734);
          goto LABEL_15;
        }

        v761 = v128;
        v767 = v127;
        sub_10000BE14(v770, v66, &qword_1019F6990);
        v240 = v763;
        v241 = *(v763 + 48);
        v242 = v734;
        if ((v241)(v66, 1, v734) == 1)
        {
          v243 = v66;
        }

        else
        {
          v292 = v760;
          v739 = *(v240 + 32);
          v740 = (v240 + 32);
          (v739)(v760, v66, v242);
          v293 = (v241)(v768, 1, v242);
          v294 = v759;
          if (v293 == 1)
          {
            goto LABEL_163;
          }

          v295 = v753;
          v296 = v734;
          v749(v753, v292, v734);
          (*(v763 + 56))(v295, 0, 1, v296);
          v297 = v755;
          v298 = *(v754 + 48);
          sub_10000BE14(v295, v755, &qword_1019F6990);
          sub_10000BE14(v768, v297 + v298, &qword_1019F6990);
          if ((v241)(v297, 1, v296) != 1)
          {
            goto LABEL_160;
          }

          sub_10000CAAC(v295, &qword_1019F6990);
          if ((v241)(v297 + v298, 1, v296) != 1)
          {
LABEL_162:
            sub_10000CAAC(v297, &unk_101A0AFE0);
            v294 = v759;
            v292 = v760;
            goto LABEL_163;
          }

          (*(v763 + 8))(v760, v734);
          v243 = v297;
        }

        sub_10000CAAC(v243, &qword_1019F6990);
        goto LABEL_65;
      }

      __break(1u);
LABEL_300:
      v675 = v131;
      sub_100026028(v34, type metadata accessor for CRLBoardIdentifier);
      if (v675)
      {
        v676 = *(v675 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
        v677 = *(v675 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
        *(v675 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
        sub_100025870(v676, v677);
        sub_100E21DC4(v675);
        if (!v129)
        {
          goto LABEL_309;
        }

        v678 = v772;
        sub_1009F5E04(v772, 0);
        sub_100EA5510(v775, v773, v678, v776, v735);
        swift_unknownObjectRelease_n();
LABEL_310:

        return;
      }

LABEL_307:
      v681 = v775;
      swift_unknownObjectRelease();
      v682 = v772;
      sub_1009F5E04(v772, 0);
      swift_unknownObjectRelease();
      sub_100EA5510(v681, v773, v682, v776, v735);
      return;
    }

LABEL_45:
    type metadata accessor for CRLBoardSyncLocalChangeRecord(v114);
    v184 = swift_dynamicCastClass();
    if (v184)
    {
      v185 = v96;
      v186 = v184;
      sub_10000C83C(v184 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v764, type metadata accessor for CRLBoardIdentifier);
      v187 = *(v763 + 16);
      v188 = v734;
      v187(v766, v186 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID, v734);
      v187(v761, v186 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v188);
      v189 = *(v186 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData);
      LODWORD(v770) = *(v186 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned);
      LODWORD(v768) = *(v186 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted);
      v190 = *&v778[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
      v191 = v771;
      *v771 = v190;
      v192 = v777;
      v193 = v774;
      (*(v777 + 104))(v191, enum case for DispatchPredicate.onQueue(_:), v774);
      v194 = swift_unknownObjectRetain();
      v195 = v772;
      v196 = v776;
      sub_100EA54FC(v194, v773, v772, v776, v185);
      sub_100024E84(v195, v196);

      v735 = v185;
      v197 = v185;
      v198 = v190;
      LOBYTE(v190) = _dispatchPreconditionTest(_:)();
      (*(v192 + 8))(v191, v193);
      if (v190)
      {
        *&v769 = v197;
        if (v189)
        {
          v199 = qword_1019F2270;

          if (v199 != -1)
          {
            swift_once();
          }

          v200 = static OS_os_log.dataSync;
          sub_1005B981C(&qword_1019F54E0);
          v201 = swift_allocObject();
          *(v201 + 16) = xmmword_10146BDE0;
          *(v201 + 56) = &type metadata for String;
          v202 = sub_1000053B0();
          *(v201 + 64) = v202;
          *(v201 + 32) = 0x676E696772654DLL;
          *(v201 + 40) = 0xE700000000000000;
          v203 = UUID.uuidString.getter();
          *(v201 + 96) = &type metadata for String;
          *(v201 + 104) = v202;
          *(v201 + 72) = v203;
          *(v201 + 80) = v204;
          v205 = static os_log_type_t.info.getter();
          sub_100005404(v200, &_mh_execute_header, v205, "%{public}@ board data with id %{public}@", 40, 2, v201);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v206 = v770;
          v195 = v772;
          v196 = v776;
          v207 = v779;
          sub_100DFE838(v189, 1, v772, v776, v770 ^ 1, 1);
          v779 = v207;
          if (v207)
          {
            sub_100025870(v195, v196);
            v208 = v775;
            swift_unknownObjectRelease();

            goto LABEL_173;
          }

          v299 = v735;
        }

        else
        {
          v299 = v735;
          v206 = v770;
        }

        if (v206)
        {
          if (qword_1019F2270 != -1)
          {
            swift_once();
          }

          v317 = static OS_os_log.dataSync;
          sub_1005B981C(&qword_1019F54E0);
          v318 = swift_allocObject();
          *(v318 + 16) = xmmword_10146C6B0;
          v319 = v764;
          v320 = UUID.uuidString.getter();
          v322 = v321;
          *(v318 + 56) = &type metadata for String;
          *(v318 + 64) = sub_1000053B0();
          *(v318 + 32) = v320;
          *(v318 + 40) = v322;
          v323 = static os_log_type_t.default.getter();
          sub_100005404(v317, &_mh_execute_header, v323, "Merging a tombstoned Board record with id %{public}@", 52, 2, v318);
          swift_setDeallocating();
          sub_100005070(v318 + 32);
          swift_deallocClassInstance();
          v324 = v319;
          v195 = v772;
          v196 = v776;
          v325 = v779;
          sub_100E43198(v324, v766, v761, v772, v776);
          v326 = v325;
          if (v325)
          {
            v327 = v195;
            goto LABEL_172;
          }

          v299 = v735;
        }

        else
        {
          v326 = v779;
        }

        v414 = v775;
        if (v768)
        {
          v779 = v326;
          if (qword_1019F2270 != -1)
          {
            goto LABEL_313;
          }

          goto LABEL_170;
        }

        goto LABEL_191;
      }

      __break(1u);
      goto LABEL_307;
    }

    type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
    v274 = swift_dynamicCastClass();
    v130 = v776;
    v275 = v772;
    if (v274)
    {
      v276 = *(v274 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_boardMetadataData);
      v277 = swift_unknownObjectRetain();
      v278 = v773;
      sub_100EA54FC(v277, v773, v275, v130, v96);
      sub_100024E84(v275, v130);

      v279 = v96;
      v280 = v779;
      sub_100E46CD0(v276, v275, v130);
      if (!v280)
      {

        sub_100025870(v275, v130);
        sub_100EA5510(v113, v278, v275, v130, v96);
        swift_unknownObjectRelease();
        goto LABEL_310;
      }

      sub_100025870(v275, v130);
      swift_unknownObjectRelease();
      v281 = v113;
      v282 = v278;
      v283 = v275;
      v284 = v130;
      v285 = v96;
LABEL_253:
      sub_100EA5510(v281, v282, v283, v284, v285);
      return;
    }

    type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
    v328 = swift_dynamicCastClass();
    if (!v328)
    {
      v444 = v96;
      type metadata accessor for CRLBoardShareSyncLocalChangeRecord(0);
      v445 = swift_dynamicCastClass();
      if (!v445)
      {
        v685 = objc_opt_self();
        v686 = swift_unknownObjectRetain();
        v687 = v772;
        sub_100EA54FC(v686, v773, v772, v130, v96);
        sub_100024E84(v687, v130);
        v688 = v96;
        v779 = v685;
        v689 = [v685 _atomicIncrementAssertCount];
        v781 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v781);
        StaticString.description.getter();
        v690 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v691 = String._bridgeToObjectiveC()();

        v692 = [v691 lastPathComponent];

        v693 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v695 = v694;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v696 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v697 = swift_allocObject();
        *(v697 + 16) = xmmword_10146CA70;
        *(v697 + 56) = &type metadata for Int32;
        *(v697 + 64) = &protocol witness table for Int32;
        *(v697 + 32) = v689;
        v698 = sub_100006370(0, &qword_1019F4D30);
        *(v697 + 96) = v698;
        v699 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(v697 + 104) = v699;
        *(v697 + 72) = v690;
        *(v697 + 136) = &type metadata for String;
        v700 = sub_1000053B0();
        *(v697 + 112) = v693;
        *(v697 + 120) = v695;
        *(v697 + 176) = &type metadata for UInt;
        *(v697 + 184) = &protocol witness table for UInt;
        *(v697 + 144) = v700;
        *(v697 + 152) = 10145;
        v701 = v781;
        *(v697 + 216) = v698;
        *(v697 + 224) = v699;
        *(v697 + 192) = v701;
        v702 = v690;
        v703 = v701;
        v704 = static os_log_type_t.error.getter();
        sub_100005404(v696, &_mh_execute_header, v704, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v697);

        v705 = static os_log_type_t.error.getter();
        sub_100005404(v696, &_mh_execute_header, v705, "Unknown record type", 19, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Unknown record type");
        type metadata accessor for __VaListBuilder();
        v706 = swift_allocObject();
        v706[2] = 8;
        v706[3] = 0;
        v706[4] = 0;
        v706[5] = 0;
        v707 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v708 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v709 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v710 = String._bridgeToObjectiveC()();

        [v779 handleFailureInFunction:v708 file:v709 lineNumber:10145 isFatal:1 format:v710 args:v707];
        goto LABEL_323;
      }

      v446 = v445;
      objc_opt_self();
      v447 = swift_dynamicCastObjCClass();
      *&v777 = v446;
      if (v447)
      {
        v448 = v444;
      }

      v449 = OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier;
      v450 = swift_unknownObjectRetain();
      v452 = v772;
      v451 = v773;
      sub_100EA54FC(v450, v773, v772, v130, v444);
      sub_100024E84(v452, v130);
      v453 = v444;
      sub_100E46320(v777 + v449, v447);

      sub_100025870(v452, v130);
      swift_unknownObjectRelease();

      v281 = v113;
      v282 = v451;
      v283 = v452;
      v284 = v130;
      v285 = v444;
      goto LABEL_253;
    }

    v329 = v328;
    v330 = swift_unknownObjectRetain_n();
    sub_100EA54FC(v330, v773, v275, v130, v96);
    sub_100024E84(v275, v130);
    v735 = v96;
    v331 = v96;
    v332 = sub_100EEB05C(0x6C6261656772654DLL, 0xEF74656B63754265, 1);
    v770 = v331;
    if (!v332)
    {
      if (qword_1019F2270 != -1)
      {
        goto LABEL_317;
      }

      goto LABEL_212;
    }

    v333 = v332;
    v334 = *(v329 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
    v335 = *(v329 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData);
    v336 = *(v329 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData + 8);
    v337 = *(v329 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions);
    v768 = *(v329 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 16);
    v769 = v337;
    v338 = *(v329 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 32);
    v765 = *(v329 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 40);
    v766 = v338;
    v167 = v113;
    v339 = *(v329 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 48);
    swift_unknownObjectRetain();
    sub_100024E98(v335, v336);
    sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
    v340 = v747;
    v341 = v779;
    Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
    v779 = v341;
    if (v341)
    {

      swift_unknownObjectRelease();
      v342 = v772;
      v343 = v776;
      sub_100025870(v772, v776);
      swift_unknownObjectRelease_n();

      v236 = v167;
      v237 = v773;
      v238 = v342;
      v239 = v343;
      goto LABEL_61;
    }

    sub_1005B981C(&unk_101A228D0);
    v168 = swift_allocObject();
    *(v168 + *(*v168 + 136)) = 0;
    v168[2] = v334;
    (*(v744 + 32))(v168 + *(*v168 + 120), v340, v743);
    *(v168 + *(*v168 + 136)) = 0;
    v531 = v168 + *(*v168 + 128);
    v532 = v768;
    *v531 = v769;
    *(v531 + 1) = v532;
    v533 = v765;
    *(v531 + 4) = v766;
    *(v531 + 5) = v533;
    v531[48] = v339;
    sub_10000C83C(v329 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v742, type metadata accessor for CRLBoardIdentifier);
    swift_unknownObjectRelease();
    v534 = *&v778[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
    v535 = v771;
    *v771 = v534;
    v536 = v777;
    v537 = v774;
    (*(v777 + 104))(v535, enum case for DispatchPredicate.onQueue(_:), v774);
    *&v769 = v333;
    v538 = v534;
    LOBYTE(v534) = _dispatchPreconditionTest(_:)();
    v539 = *(v536 + 8);
    v429 = v536 + 8;
    v539(v535, v537);
    if (v534)
    {
      v169 = v742;
      v540 = v779;
      sub_100E43E74(v742, v767);
      v138 = v776;
      if (!v540)
      {
        sub_100E1E144(v168, v169, 1, v772, v776, v333);
LABEL_282:

        v621 = v772;
        sub_100025870(v772, v138);
        v622 = v769;

        swift_setDeallocating();
        (*(v744 + 8))(v168 + *(*v168 + 120), v743);
        swift_deallocClassInstance();
        swift_unknownObjectRelease_n();
        sub_100EA5510(v167, v773, v621, v138, v735);
        sub_100026028(v169, type metadata accessor for CRLBoardIdentifier);
        return;
      }

      v541 = v735;

      v563 = v772;
      sub_100025870(v772, v138);
      v564 = v769;

      swift_setDeallocating();
      (*(v744 + 8))(v168 + *(*v168 + 120), v743);
      swift_deallocClassInstance();
      swift_unknownObjectRelease_n();
      sub_100EA5510(v167, v773, v563, v138, v541);
      v228 = v169;
      goto LABEL_245;
    }

    __break(1u);
    goto LABEL_319;
  }

  if (v93 >> 62 == 1)
  {
    v97 = *&v778[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
    v98 = v771;
    *v771 = v97;
    v99 = v96;
    v100 = enum case for DispatchPredicate.onQueue(_:);
    v101 = v777;
    v102 = (v777 + 104);
    v103 = v774;
    v770 = *(v777 + 104);
    (v770)(v98, enum case for DispatchPredicate.onQueue(_:), v774, v92);
    v104 = v772;
    v735 = v99;
    sub_100EA54FC(v775, v773, v772, v776, v99);
    swift_unknownObjectRetain();
    *&v769 = v97;
    LOBYTE(v99) = _dispatchPreconditionTest(_:)();
    v105 = *(v101 + 8);
    *&v777 = v101 + 8;
    v106 = v105(v98, v103);
    if (v99)
    {
      type metadata accessor for CRLBoardItemSyncRemoteRecord(0);
      v107 = swift_dynamicCastClass();
      v108 = v766;
      if (v107 || (type metadata accessor for CRLBoardItemSyncRemoteRecord.Partial(0), swift_dynamicCastClass()))
      {
        type metadata accessor for CRLBoardItemSyncRemoteRecord.Partial(0);
        v109 = swift_dynamicCastClass();
        if (v109)
        {
          swift_unknownObjectRetain();
          v110 = v779;
          v111 = sub_100E4AE54(v109);
          v112 = v110;
          if (v110)
          {
            sub_100EA5510(v775, v773, v104, v776, v735);
            swift_unknownObjectRelease_n();
            return;
          }

          v229 = v111;
          swift_unknownObjectRelease();
        }

        else
        {
          v229 = swift_dynamicCastClassUnconditional();
          swift_unknownObjectRetain();
          v112 = v779;
        }

        v268 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
        sub_10000C83C(v229 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, v108, type metadata accessor for CRLBoardIdentifier);

        v269 = v765;
        sub_100031F10(v765, v108);
        sub_100026028(v269, type metadata accessor for CRLBoardIdentifier);
        sub_100E43F64(v229, v767, 0, v109 != 0);
        if (v112)
        {
          sub_100EA5510(v775, v773, v772, v776, v735);
          swift_unknownObjectRelease();

          return;
        }

        v271 = v270;

        sub_100637378(v272);

        sub_100637378(v273);
        if (v271)
        {
          if (v271 == 1)
          {

            *v757 = 1;
          }

          else
          {
            v305 = v766;
            sub_10000C83C(v229 + v268, v766, type metadata accessor for CRLBoardIdentifier);
            sub_100031F10(v269, v305);

            sub_100026028(v269, type metadata accessor for CRLBoardIdentifier);
          }
        }

        else
        {
        }

        v104 = v772;
        v306 = v776;
        sub_10069B83C(v229);

        goto LABEL_95;
      }

      type metadata accessor for CRLBoardSyncRemoteRecord(0);
      v286 = swift_dynamicCastClass();
      if (v286)
      {
        v287 = v286;
        v288 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier;
        sub_10000C83C(v286 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v108, type metadata accessor for CRLBoardIdentifier);
        v289 = v765;
        sub_100031F10(v765, v108);
        sub_100026028(v289, type metadata accessor for CRLBoardIdentifier);
        v290 = v779;
        sub_100E4755C(v287, 0);
        if (!v290)
        {
          v358 = v291;

          sub_100637378(v359);

          sub_100637378(v360);
          v362 = v358;
          v361 = v358 == 0;
          v363 = v776;
          if (v361)
          {
          }

          else if (v362 == 1)
          {

            *v757 = 1;
          }

          else
          {
            v519 = v766;
            sub_10000C83C(v287 + v288, v766, type metadata accessor for CRLBoardIdentifier);
            sub_100031F10(v289, v519);

            sub_100026028(v289, type metadata accessor for CRLBoardIdentifier);
          }

          v307 = v735;
          v104 = v772;
          v306 = v363;
          goto LABEL_96;
        }

        sub_100EA5510(v775, v773, v772, v776, v735);
LABEL_189:
        swift_unknownObjectRelease();
        return;
      }

      type metadata accessor for CRLBoardShareSyncRemoteRecord(0);
      v344 = swift_dynamicCastClass();
      v345 = v779;
      if (v344)
      {
        v346 = v344;
        v347 = v770;
        v348 = v771;
        v349 = v769;
        *v771 = v769;
        v315 = v774;
        (v347)(v348, v100, v774);
        v350 = v349;
        v351 = _dispatchPreconditionTest(_:)();
        v105(v348, v315);
        if (v351)
        {
          sub_100E469D8(*(v346 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare), v346 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier);
          v306 = v776;
          v104 = v772;
          if (!v345)
          {
            goto LABEL_95;
          }

          goto LABEL_188;
        }

        __break(1u);
        goto LABEL_315;
      }

      type metadata accessor for CRLFreehandDrawingBucketSyncRemoteRecord(0);
      v454 = swift_dynamicCastClass();
      if (v454)
      {
        v455 = sub_100E46FDC(v454, v767, 0);
        v306 = v776;
        if (!v345)
        {
          v557 = v456;
          sub_100637378(v455);
          sub_100637378(v557);
LABEL_95:
          v307 = v735;
          goto LABEL_96;
        }

LABEL_188:
        sub_100EA5510(v775, v773, v104, v306, v735);
        goto LABEL_189;
      }

      type metadata accessor for CRLUserBoardMetadataSyncRemoteRecord(0);
      v542 = swift_dynamicCastClass();
      v543 = v776;
      if (v542)
      {
        v544 = v542;
        v546 = sub_100E48B08(v542);
        if (v345)
        {
          sub_100EA5510(v775, v773, v772, v543, v735);
          swift_unknownObjectRelease();
          return;
        }

        v589 = v545;

        sub_100637378(v590);

        sub_100637378(v591);
        if (v589)
        {
          if (v589 == 1)
          {
            v778 = v546;
            v779 = 0;
            *&v777 = objc_opt_self();
            v592 = [v777 _atomicIncrementAssertCount];
            v781 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v781);
            StaticString.description.getter();
            *&v774 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v593 = String._bridgeToObjectiveC()();

            v594 = [v593 lastPathComponent];

            v595 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v770 = v596;
            *&v771 = v595;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v597 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v598 = swift_allocObject();
            *(v598 + 16) = xmmword_10146CA70;
            *(v598 + 56) = &type metadata for Int32;
            *(v598 + 64) = &protocol witness table for Int32;
            *(v598 + 32) = v592;
            v599 = sub_100006370(0, &qword_1019F4D30);
            *(v598 + 96) = v599;
            v600 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
            *(v598 + 104) = v600;
            v601 = v774;
            *(v598 + 72) = v774;
            *(v598 + 136) = &type metadata for String;
            v602 = sub_1000053B0();
            v603 = v770;
            *(v598 + 112) = v771;
            *(v598 + 120) = v603;
            *(v598 + 176) = &type metadata for UInt;
            *(v598 + 184) = &protocol witness table for UInt;
            *(v598 + 144) = v602;
            *(v598 + 152) = 9967;
            v604 = v781;
            *(v598 + 216) = v599;
            *(v598 + 224) = v600;
            *(v598 + 192) = v604;
            v605 = v601;
            v606 = v604;
            v607 = static os_log_type_t.error.getter();
            sub_100005404(v597, &_mh_execute_header, v607, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v598);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v608 = static os_log_type_t.error.getter();
            sub_100005404(v597, &_mh_execute_header, v608, "Merging a CRLUserBoardMetadataSyncRemoteRecord shouldn't result in us becoming supported again.", 95, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v609 = swift_allocObject();
            v609[2] = 8;
            v609[3] = 0;
            v609[4] = 0;
            v609[5] = 0;
            v610 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v611 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v612 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v613 = String._bridgeToObjectiveC()();

            [v777 handleFailureInFunction:v611 file:v612 lineNumber:9967 isFatal:0 format:v613 args:v610];

            v307 = v735;
            v306 = v776;
            v104 = v772;
            goto LABEL_96;
          }

          v642 = v766;
          sub_10000C83C(v544 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v766, type metadata accessor for CRLBoardIdentifier);
          v643 = v765;
          sub_100031F10(v765, v642);

          sub_100026028(v643, type metadata accessor for CRLBoardIdentifier);
          v307 = v735;
          v104 = v772;
        }

        else
        {

          v307 = v735;
          v104 = v772;
        }

        v306 = v543;
LABEL_96:
        swift_unknownObjectRelease();
        sub_100EA5510(v775, v773, v104, v306, v307);
        return;
      }

      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v565 = static OS_os_log.boardStore;
      v566 = static os_log_type_t.error.getter();
      sub_100005404(v565, &_mh_execute_header, v566, "Attempted to apply unknown CRLSyncRemoteRecord type", 51, 2, _swiftEmptyArrayStorage);
      v778 = objc_opt_self();
      v567 = [v778 _atomicIncrementAssertCount];
      v781 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v781);
      StaticString.description.getter();
      *&v777 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v568 = String._bridgeToObjectiveC()();

      v569 = [v568 lastPathComponent];

      *&v774 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v571 = v570;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v572 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v573 = swift_allocObject();
      *(v573 + 16) = xmmword_10146CA70;
      *(v573 + 56) = &type metadata for Int32;
      *(v573 + 64) = &protocol witness table for Int32;
      *(v573 + 32) = v567;
      v574 = sub_100006370(0, &qword_1019F4D30);
      *(v573 + 96) = v574;
      v575 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v573 + 104) = v575;
      v576 = v777;
      *(v573 + 72) = v777;
      *(v573 + 136) = &type metadata for String;
      v577 = sub_1000053B0();
      *(v573 + 112) = v774;
      *(v573 + 120) = v571;
      *(v573 + 176) = &type metadata for UInt;
      *(v573 + 184) = &protocol witness table for UInt;
      *(v573 + 144) = v577;
      *(v573 + 152) = 10149;
      v578 = v781;
      *(v573 + 216) = v574;
      *(v573 + 224) = v575;
      *(v573 + 192) = v578;
      v579 = v576;
      v580 = v578;
      v581 = static os_log_type_t.error.getter();
      sub_100005404(v572, &_mh_execute_header, v581, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v573);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v582 = static os_log_type_t.error.getter();
      sub_100005404(v572, &_mh_execute_header, v582, "Failed to handle remote record!", 31, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v583 = swift_allocObject();
      v583[2] = 8;
      v583[3] = 0;
      v583[4] = 0;
      v583[5] = 0;
      v584 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v585 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v586 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v587 = String._bridgeToObjectiveC()();

      [v778 handleFailureInFunction:v585 file:v586 lineNumber:10149 isFatal:0 format:v587 args:v584];
      v588 = v772;
      swift_unknownObjectRelease();

      v236 = v775;
      v237 = v773;
      v238 = v588;
      goto LABEL_60;
    }

    __break(1u);
LABEL_293:
    type metadata accessor for CRLBoardShareSyncLocalChangeRecord(v106);
    v644 = swift_dynamicCastClass();
    if (!v644)
    {
      while (1)
      {
        v779 = objc_opt_self();
        v713 = [v779 _atomicIncrementAssertCount];
        v781 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v781);
        StaticString.description.getter();
        v714 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v715 = String._bridgeToObjectiveC()();

        v716 = [v715 lastPathComponent];

        v717 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v719 = v718;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v720 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v721 = swift_allocObject();
        *(v721 + 16) = xmmword_10146CA70;
        *(v721 + 56) = &type metadata for Int32;
        *(v721 + 64) = &protocol witness table for Int32;
        *(v721 + 32) = v713;
        v722 = sub_100006370(0, &qword_1019F4D30);
        *(v721 + 96) = v722;
        v723 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(v721 + 104) = v723;
        *(v721 + 72) = v714;
        *(v721 + 136) = &type metadata for String;
        v724 = sub_1000053B0();
        *(v721 + 112) = v717;
        *(v721 + 120) = v719;
        *(v721 + 176) = &type metadata for UInt;
        *(v721 + 184) = &protocol witness table for UInt;
        *(v721 + 144) = v724;
        *(v721 + 152) = 10197;
        v725 = v781;
        *(v721 + 216) = v722;
        *(v721 + 224) = v723;
        *(v721 + 192) = v725;
        v726 = v714;
        v727 = v725;
        v728 = static os_log_type_t.error.getter();
        sub_100005404(v720, &_mh_execute_header, v728, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v721);

        v729 = static os_log_type_t.error.getter();
        sub_100005404(v720, &_mh_execute_header, v729, "Unknown record type", 19, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Unknown record type");
        type metadata accessor for __VaListBuilder();
        v730 = swift_allocObject();
        v730[2] = 8;
        v730[3] = 0;
        v730[4] = 0;
        v730[5] = 0;
        v731 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v708 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v709 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v710 = String._bridgeToObjectiveC()();

        [v779 handleFailureInFunction:v708 file:v709 lineNumber:10197 isFatal:1 format:v710 args:v731];
LABEL_323:

        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v711, v712);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    v645 = v644;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    *&v777 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v647 = OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier;
    v648 = v765;
    sub_10000C83C(v645 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier, v765, type metadata accessor for CRLBoardIdentifier);
    v649 = v763;
    v650 = v732;
    v651 = v734;
    (*(v763 + 16))(v732, v648, v734);
    sub_100026028(v648, type metadata accessor for CRLBoardIdentifier);
    v652 = UUID.uuidString.getter();
    v654 = v653;
    (*(v649 + 8))(v650, v651);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v652;
    *(inited + 40) = v654;
    v655 = static os_log_type_t.default.getter();
    sub_100005404(v777, &_mh_execute_header, v655, "Board %{public}@ set ckShare to nil with reason: CKError Unknown Item.", 70, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_100E196EC(v645 + v647, 0, 0);
    v656 = v772;
    sub_1009F5E04(v772, 0);
    v657 = v775;
    swift_unknownObjectRelease();
    sub_100EA5510(v657, v773, v656, v776, v735);
    return;
  }

  *&v777 = v31;
  v137 = v776;
  if (!v776)
  {
    v732 = v90;
    v763 = v89;
    v734 = v85;
    v210 = v772;
    v209 = v773;
    *&v771 = v773 & 0x3FFFFFFFFFFFFFFFLL;
    v780 = v772;
    sub_1009F5EE8(v772, 0);
    v211 = v209;
    v212 = v776;
    v735 = v96;
    sub_100EA54FC(v775, v211, v210, v776, v96);
    sub_1009F5EE8(v210, 0);
    type metadata accessor for CKError(0);
    v214 = v213;
    v215 = sub_1000066D0(&qword_1019F3348, type metadata accessor for CKError);
    swift_unknownObjectRetain();
    *&v774 = v215;
    _BridgedStoredNSError.code.getter();
    if (v785 > 0x23)
    {
      goto LABEL_103;
    }

    if (((1 << v785) & 0xC8A0B1000) != 0)
    {
      type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
      v171 = v775;
      v216 = swift_dynamicCastClass();
      if (v216)
      {
        v217 = v216;
        sub_1009F5E04(v772, 0);
        v218 = v763;
        *&v771 = *(v763 + 16);
        v219 = v732;
        (v771)(v732, &v217[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id], v734);
        v770 = v217;
        *&v768 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
        *&v777 = v214;
        v220 = v765;
        sub_10000C83C(&v217[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier], v765, type metadata accessor for CRLBoardIdentifier);
        v221 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
        swift_beginAccess();
        *&v769 = v221;
        sub_101270CEC(v220);
        v222 = v219;
        v223 = v734;
        (v771)(v73, v222, v734);
        v224 = v772;
        swift_beginAccess();
        sub_100E6AF38(v76, v73);
        v225 = *(v218 + 8);
        v225(v76, v223);
        swift_endAccess();

        swift_endAccess();
        sub_100026028(v220, type metadata accessor for CRLBoardIdentifier);
        v225(v732, v223);
        v781 = v224;
        _BridgedStoredNSError.code.getter();
        if (v780 != 34)
        {
          v781 = v224;
          _BridgedStoredNSError.code.getter();
          if (v780 != 25)
          {
            sub_1009F5E04(v224, 0);
            v357 = v775;
            swift_unknownObjectRelease();
            v236 = v357;
            v237 = v773;
            v238 = v224;
            goto LABEL_60;
          }
        }

        sub_10000C83C(&v770[v768], v220, type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        v226 = sub_101270CEC(v220);
        *(v226 + 16) = 1;
        *(v226 + 42) = 1;
        swift_endAccess();

        sub_1009F5E04(v224, 0);
        v227 = v775;
        swift_unknownObjectRelease();
        sub_100EA5510(v227, v773, v224, v776, v735);
        v228 = v220;
LABEL_245:
        sub_100026028(v228, type metadata accessor for CRLBoardIdentifier);
        return;
      }

      type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
      v300 = swift_dynamicCastClass();
      if (v300)
      {
        v301 = v300;
        v302 = v772;
        sub_1009F5E04(v772, 0);
        v781 = v302;
        _BridgedStoredNSError.code.getter();
        v303 = v765;
        if (v780 == 34 || (v781 = v302, _BridgedStoredNSError.code.getter(), v780 == 25))
        {
          sub_10000C83C(v301 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v303, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          v304 = sub_101270CEC(v303);
          *(v304 + 16) = 1;
          *(v304 + 42) = 1;
        }

        else
        {
          sub_10000C83C(v301 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v303, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          *(sub_101270CEC(v303) + 16) = 1;
        }

        swift_endAccess();

        sub_1009F5E04(v302, 0);
        swift_unknownObjectRelease();
        sub_100EA5510(v171, v773, v302, v776, v735);
        v228 = v303;
        goto LABEL_245;
      }

      type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
      v364 = swift_dynamicCastClass();
      v365 = v779;
      v366 = v765;
      v167 = v772;
      if (!v364)
      {
        sub_1009F5E04(v772, 0);
        type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
        v517 = swift_dynamicCastClass();
        if (v517)
        {
          v518 = *(v517 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
          sub_10000C83C(v517 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v366, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          sub_101270CEC(v366);
          swift_beginAccess();
          sub_100E7219C(&v785, v518);
          swift_endAccess();

          swift_endAccess();
        }

        else
        {
          type metadata accessor for CRLBoardShareSyncLocalChangeRecord(0);
          v558 = swift_dynamicCastClass();
          if (!v558)
          {
            if (qword_1019F2270 != -1)
            {
              swift_once();
            }

            v614 = static OS_os_log.dataSync;
            v615 = static os_log_type_t.default.getter();
            sub_100005404(v614, &_mh_execute_header, v615, "Failed to apply sync save causing transient sync exclusion, unknown local record type", 85, 2, _swiftEmptyArrayStorage);
            sub_1009F5E04(v167, 0);
            sub_100EA5510(v171, v773, v167, v776, v735);
            swift_unknownObjectRelease();
            return;
          }

          sub_10000C83C(v558 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier, v366, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          *(sub_101270CEC(v366) + 17) = 1;
          swift_endAccess();
        }

        sub_1009F5E04(v167, 0);
        swift_unknownObjectRelease();
        sub_100EA5510(v171, v773, v167, v776, v735);
        v228 = v366;
        goto LABEL_245;
      }

      v367 = v364;
      v781 = v772;
      swift_unknownObjectRetain();
      _BridgedStoredNSError.code.getter();
      if (v780 == 31)
      {
        sub_1005B981C(&qword_1019F54E0);
        v368 = swift_initStackObject();
        *(v368 + 16) = xmmword_10146C6B0;
        *&v768 = v367;
        sub_10000C83C(v367 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v366, type metadata accessor for CRLBoardIdentifier);
        v369 = v763;
        v370 = v732;
        v371 = v734;
        (*(v763 + 16))(v732, v366, v734);
        sub_100026028(v366, type metadata accessor for CRLBoardIdentifier);
        v372 = UUID.uuidString.getter();
        v374 = v373;
        (*(v369 + 8))(v370, v371);
        v375 = v368;
        *(v368 + 56) = &type metadata for String;
        v376 = sub_1000053B0();
        *(v368 + 32) = v372;
        *&v774 = v368 + 32;
        *&v771 = v376;
        *(v368 + 64) = v376;
        *(v368 + 40) = v374;
        v767 = objc_opt_self();
        v377 = [v767 _atomicIncrementAssertCount];
        v781 = [objc_allocWithZone(NSString) init];
        sub_100604538(v368, &v781);
        StaticString.description.getter();
        v770 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v378 = String._bridgeToObjectiveC()();

        v379 = [v378 lastPathComponent];

        v380 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *&v769 = v381;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v382 = static OS_os_log.crlAssert;
        v383 = swift_initStackObject();
        *(v383 + 16) = xmmword_10146CA70;
        *(v383 + 56) = &type metadata for Int32;
        *(v383 + 64) = &protocol witness table for Int32;
        *(v383 + 32) = v377;
        v384 = sub_100006370(0, &qword_1019F4D30);
        *(v383 + 96) = v384;
        v385 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        v386 = v770;
        *(v383 + 72) = v770;
        v387 = v771;
        *(v383 + 136) = &type metadata for String;
        *(v383 + 144) = v387;
        *(v383 + 104) = v385;
        *(v383 + 112) = v380;
        *(v383 + 120) = v769;
        *(v383 + 176) = &type metadata for UInt;
        *(v383 + 184) = &protocol witness table for UInt;
        *(v383 + 152) = 10219;
        v388 = v781;
        *(v383 + 216) = v384;
        *(v383 + 224) = v385;
        *(v383 + 192) = v388;
        v389 = v386;
        v390 = v388;
        v391 = static os_log_type_t.error.getter();
        sub_100005404(v382, &_mh_execute_header, v391, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v383);
        swift_setDeallocating();
        v770 = sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v392 = static os_log_type_t.error.getter();
        sub_100005404(v382, &_mh_execute_header, v392, "Logic error. A reference violation for UserBoardMetadata should never happen because the record does not save any references. Metadata boardIdentifier %{public}@", 161, 2, v368);

        type metadata accessor for __VaListBuilder();
        v298 = swift_allocObject();
        *(v298 + 16) = 8;
        *(v298 + 24) = 0;
        v212 = (v298 + 24);
        *(v298 + 32) = 0;
        *(v298 + 40) = 0;
        *&v771 = *(v368 + 16);
        if (v771)
        {
          v241 = 0;
          while (1)
          {
            v130 = v375;
            v393 = (v774 + 40 * v241);
            v296 = v393[4];
            sub_100020E58(v393, v393[3]);
            v394 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
            v297 = *v212;
            v395 = *(v394 + 16);
            v173 = __OFADD__(*v212, v395);
            v396 = *v212 + v395;
            if (v173)
            {
              __break(1u);
LABEL_309:
              v683 = v775;
              swift_unknownObjectRelease();
              v684 = v772;
              sub_1009F5E04(v772, 0);
              swift_unknownObjectRelease();
              sub_100EA5510(v683, v773, v684, v776, v735);
              goto LABEL_310;
            }

            v295 = *(v298 + 32);
            if (v295 >= v396)
            {
              goto LABEL_152;
            }

            if (v295 + 0x4000000000000000 < 0)
            {
              __break(1u);
LABEL_312:
              __break(1u);
LABEL_313:
              swift_once();
LABEL_170:
              v415 = static OS_os_log.dataSync;
              sub_1005B981C(&qword_1019F54E0);
              v416 = swift_allocObject();
              *(v416 + 16) = xmmword_10146C6B0;
              v417 = v764;
              v418 = UUID.uuidString.getter();
              v420 = v419;
              *(v416 + 56) = &type metadata for String;
              *(v416 + 64) = sub_1000053B0();
              *(v416 + 32) = v418;
              *(v416 + 40) = v420;
              v421 = static os_log_type_t.default.getter();
              sub_100005404(v415, &_mh_execute_header, v421, "Purging board with id %{public}@ after syncing hideFromRecentlyDeleted state", 76, 2, v416);
              swift_setDeallocating();
              sub_100005070(v416 + 32);
              swift_deallocClassInstance();
              v422 = v779;
              sub_100E0C7BC(v417, 0xD000000000000025, 0x80000001015A7410, 0);
              if (v422)
              {
                v195 = v772;
                v327 = v772;
                v196 = v776;
LABEL_172:
                sub_100025870(v327, v196);
                v208 = v775;
                swift_unknownObjectRelease();

LABEL_173:
                v423 = v735;
                v424 = v208;
                v425 = v773;
                v426 = v195;
                v427 = v196;
LABEL_192:
                sub_100EA5510(v424, v425, v426, v427, v423);

                v457 = *(v763 + 8);
                v458 = v734;
                v457(v761, v734);
                v457(v766, v458);
                sub_100026028(v764, type metadata accessor for CRLBoardIdentifier);
                return;
              }

              v299 = v735;
              v414 = v775;
              v196 = v776;
              v195 = v772;
LABEL_191:
              sub_100025870(v195, v196);

              swift_unknownObjectRelease();

              v424 = v414;
              v425 = v773;
              v426 = v195;
              v427 = v196;
              v423 = v299;
              goto LABEL_192;
            }

            v397 = *(v298 + 40);
            if (2 * v295 > v396)
            {
              v396 = 2 * v295;
            }

            *(v298 + 32) = v396;
            if ((v396 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_312;
            }

            v296 = v394;
            v398 = swift_slowAlloc();
            v399 = v398;
            *(v298 + 40) = v398;
            if (v397)
            {
              break;
            }

            v394 = v296;
            if (!v399)
            {
LABEL_159:
              __break(1u);
LABEL_160:
              sub_10000BE14(v297, v756, &qword_1019F6990);
              if ((v241)(v297 + v298, 1, v296) == 1)
              {
                sub_10000CAAC(v295, &qword_1019F6990);
                (*(v763 + 8))(v756, v296);
                goto LABEL_162;
              }

              v487 = v732;
              (v739)(v732, v297 + v298, v296);
              sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
              v488 = v756;
              v489 = v295;
              LODWORD(v754) = dispatch thunk of static Equatable.== infix(_:_:)();
              v490 = *(v763 + 8);
              v490(v487, v296);
              sub_10000CAAC(v489, &qword_1019F6990);
              v490(v488, v296);
              sub_10000CAAC(v297, &qword_1019F6990);
              v294 = v759;
              v292 = v760;
              if (v754)
              {
                v490(v760, v734);
LABEL_65:
                v244 = v779;
LABEL_66:
                v245 = v775;
                v168 = v776;
                v246 = v766;
                v247 = v762;
                sub_10000BE14(v770, v762, &qword_1019F6990);
                v248 = v752;
                if (v246)
                {
                  v779 = v244;
                  v249 = qword_1019F2270;

                  if (v249 != -1)
                  {
                    swift_once();
                  }

                  v250 = static OS_os_log.dataSync;
                  sub_1005B981C(&qword_1019F54E0);
                  v251 = swift_allocObject();
                  *(v251 + 16) = xmmword_10146C6B0;
                  v252 = UUID.uuidString.getter();
                  v254 = v253;
                  *(v251 + 56) = &type metadata for String;
                  v255 = sub_1000053B0();
                  *(v251 + 64) = v255;
                  *(v251 + 32) = v252;
                  *(v251 + 40) = v254;
                  v256 = static os_log_type_t.info.getter();
                  sub_100005404(v250, &_mh_execute_header, v256, "Merging board item data with id %{public}@", 42, 2, v251);
                  swift_setDeallocating();
                  sub_100005070(v251 + 32);
                  swift_deallocClassInstance();
                  v257 = swift_allocObject();
                  *(v257 + 16) = xmmword_10146C4D0;
                  *(v257 + 56) = &type metadata for String;
                  *(v257 + 64) = v255;
                  *(v257 + 32) = 0x676E696772654DLL;
                  *(v257 + 40) = 0xE700000000000000;
                  v258 = UUID.uuidString.getter();
                  *(v257 + 96) = &type metadata for String;
                  *(v257 + 104) = v255;
                  *(v257 + 72) = v258;
                  *(v257 + 80) = v259;
                  v260 = v769;
                  v261 = UUID.uuidString.getter();
                  *(v257 + 136) = &type metadata for String;
                  *(v257 + 144) = v255;
                  *(v257 + 112) = v261;
                  *(v257 + 120) = v262;
                  v263 = static os_log_type_t.info.getter();
                  sub_100005404(v250, &_mh_execute_header, v263, "%{public}@ board item with id: %{public}@, boardID: %{public}@", 62, 2, v257);
                  swift_setDeallocating();
                  sub_1005B981C(&unk_1019F5670);
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  v167 = v764;
                  v264 = v765;
                  v265 = v772;
                  v168 = v776;
                  v80 = v779;
                  v114 = sub_100DF00A0(v766, v260, 1, v772, v776, v757 ^ 1, v757, v765, v764, 0, 0);
                  if (!v80)
                  {
                    goto LABEL_123;
                  }

                  sub_100025870(v265, v168);

                  sub_100025870(v264, v167);
                  v266 = v775;
                  swift_unknownObjectRelease();

                  sub_100EA5510(v266, v773, v265, v168, v735);

                  swift_unknownObjectRelease();
                  sub_10000CAAC(v762, &qword_1019F6990);
                  v267 = v260;
                }

                else
                {
                  if ((v757 & 1) == 0)
                  {
                    sub_100025870(v765, v764);
                    goto LABEL_221;
                  }

LABEL_202:
                  v779 = v244;
                  if (qword_1019F2270 != -1)
                  {
                    swift_once();
                  }

                  v491 = static OS_os_log.dataSync;
                  sub_1005B981C(&qword_1019F54E0);
                  v492 = swift_allocObject();
                  *(v492 + 16) = xmmword_10146C6B0;
                  v493 = v733;
                  v494 = UUID.uuidString.getter();
                  v496 = v495;
                  *(v492 + 56) = &type metadata for String;
                  *(v492 + 64) = sub_1000053B0();
                  *(v492 + 32) = v494;
                  *(v492 + 40) = v496;
                  v497 = static os_log_type_t.default.getter();
                  sub_100005404(v491, &_mh_execute_header, v497, "Merging a tombstoned BoardItem record with id %{public}@", 56, 2, v492);
                  swift_setDeallocating();
                  sub_100005070(v492 + 32);
                  swift_deallocClassInstance();
                  v498 = v764;
                  v499 = v765;
                  v500 = v772;
                  v168 = v776;
                  v501 = v779;
                  sub_100E420CC(v493, v748, v747, v744, v762, v769, v772, v776, v765, v764);
                  if (!v501)
                  {

                    sub_100025870(v499, v498);

                    v247 = v762;
                    v248 = v752;
                    v245 = v775;
                    goto LABEL_221;
                  }

                  sub_100025870(v500, v168);

                  sub_100025870(v499, v498);
                  v502 = v775;
                  swift_unknownObjectRelease();

                  sub_100EA5510(v502, v773, v500, v168, v735);

                  swift_unknownObjectRelease();
                  sub_10000CAAC(v762, &qword_1019F6990);
                  v267 = v769;
                }

                sub_100026028(v267, type metadata accessor for CRLBoardIdentifier);
                sub_10000CAAC(v770, &qword_1019F6990);
                (*(v763 + 8))(v733, v734);
                goto LABEL_15;
              }

LABEL_163:
              v405 = v769;
              v406 = v779;
              v407 = sub_100DEEFC0(v292, v769);
              v779 = v406;
              if (v406)
              {
                v408 = v405;
                v409 = v772;
                v410 = v776;
                sub_100025870(v772, v776);
                sub_100025870(v765, v764);
                v411 = v775;
                swift_unknownObjectRelease();

                sub_100EA5510(v411, v773, v409, v410, v735);

                swift_unknownObjectRelease();
                v412 = *(v763 + 8);
                v413 = v734;
                v412(v292, v734);
                sub_100026028(v408, type metadata accessor for CRLBoardIdentifier);
                sub_10000CAAC(v770, &qword_1019F6990);
                v412(v733, v413);
                goto LABEL_15;
              }

              if (v407)
              {
                (*(v763 + 8))(v760, v734);
                v244 = v779;
                goto LABEL_66;
              }

              v113 = v734;
              v756 = *(v763 + 56);
              (v756)(v294, 1, 1, v734);
              v459 = v771;
              v460 = v761;
              *v771 = v761;
              v329 = v774;
              (v741)(v459, v742, v774);
              v461 = v460;
              LOBYTE(v460) = _dispatchPreconditionTest(_:)();
              v130(v459, v329);
              if (v460)
              {
                v462 = v758;
                v749(v758, v760, v113);
                *&v774 = 0x2000400000000;
                v463 = v745;
                sub_10000BE14(v294, v745, &qword_1019F6990);
                v464 = v746;
                sub_10000C83C(v405, v746, type metadata accessor for CRLBoardIdentifier);
                type metadata accessor for CRLBoardItemDatabaseRow();
                v465 = swift_allocObject();
                v466 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
                (v756)(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v113);
                v777 = xmmword_101486780;
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
                (v739)(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v462, v113);
                v467 = v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
                v468 = v774;
                *v467 = 0x1000000000000;
                *(v467 + 8) = v468;
                *(v467 + 16) = 0x1000000000000;
                *(v467 + 24) = 0;
                *(v467 + 32) = 1;
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
                swift_beginAccess();
                sub_10002C638(v463, v465 + v466, &qword_1019F6990);
                swift_endAccess();
                sub_100025668(v464, v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
                v469 = v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
                *v469 = xmmword_101474CF0;
                *(v469 + 16) = 1;
                v470 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
                v471 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v777;
                sub_100025870(v470, v471);
                v472 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
                v473 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v777;
                sub_100025870(v472, v473);
                v474 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
                v475 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v777;
                sub_100025870(v474, v475);
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
                v476 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
                v477 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = v777;
                sub_100025870(v476, v477);
                v478 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
                v479 = *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
                *(v465 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = v777;
                sub_100025870(v478, v479);
                v480 = v779;
                sub_100DF5A90(v465);
                v244 = v480;
                if (!v480)
                {
                  swift_setDeallocating();
                  sub_100FE3A40();
                  swift_deallocClassInstance();
                  sub_10000CAAC(v759, &qword_1019F6990);
                  (*(v763 + 8))(v760, v734);
                  goto LABEL_66;
                }

                sub_100025870(v765, v764);
                v481 = v775;
                swift_unknownObjectRelease_n();

                v482 = v481;
                v483 = v772;
                v484 = v776;
                sub_100EA5510(v482, v773, v772, v776, v735);
                sub_100025870(v483, v484);
                swift_setDeallocating();
                sub_100FE3A40();
                swift_deallocClassInstance();
                sub_10000CAAC(v759, &qword_1019F6990);
                v485 = *(v763 + 8);
                v486 = v734;
                v485(v760, v734);
                sub_100026028(v769, type metadata accessor for CRLBoardIdentifier);
                sub_10000CAAC(v770, &qword_1019F6990);
                v485(v733, v486);
LABEL_15:
                sub_10000CAAC(v768, &qword_1019F6990);
                return;
              }

              __break(1u);
LABEL_317:
              swift_once();
LABEL_212:
              *&v777 = static OS_os_log.dataSync;
              sub_1005B981C(&qword_1019F54E0);
              v503 = swift_allocObject();
              *(v503 + 16) = xmmword_10146BDE0;
              v504 = *(v329 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
              *(v503 + 56) = &type metadata for Int;
              *(v503 + 64) = &protocol witness table for Int;
              *(v503 + 32) = v504;
              v778 = (v503 + 32);
              v505 = v765;
              sub_10000C83C(v329 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v765, type metadata accessor for CRLBoardIdentifier);
              v506 = v763;
              v507 = v732;
              v508 = v734;
              (*(v763 + 16))(v732, v505, v734);
              sub_100026028(v505, type metadata accessor for CRLBoardIdentifier);
              v509 = UUID.uuidString.getter();
              v511 = v510;
              (*(v506 + 8))(v507, v508);
              *(v503 + 96) = &type metadata for String;
              *(v503 + 104) = sub_1000053B0();
              *(v503 + 72) = v509;
              *(v503 + 80) = v511;
              v512 = static os_log_type_t.error.getter();
              sub_100005404(v777, &_mh_execute_header, v512, "_sync_applySyncSaveResults unable to get ckMergeableRecordValue for bucket %{public}d, probably a partial record. Board: %{public}@", 131, 2, v503);
              v513 = v772;
              sub_100025870(v772, v130);
              swift_unknownObjectRelease_n();

              sub_100EA5510(v113, v773, v513, v130, v735);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              return;
            }

LABEL_153:
            v375 = v130;
            v401 = *(v394 + 16);
            if (v401)
            {
              v402 = (v394 + 32);
              v403 = *v212;
              while (1)
              {
                v404 = *v402++;
                *&v399[8 * v403] = v404;
                v403 = *v212 + 1;
                if (__OFADD__(*v212, 1))
                {
                  break;
                }

                *v212 = v403;
                if (!--v401)
                {
                  goto LABEL_137;
                }
              }

              __break(1u);
LABEL_274:
              if (qword_1019F2270 != -1)
              {
                swift_once();
              }

              v616 = static OS_os_log.dataSync;
              v617 = static os_log_type_t.default.getter();
              sub_100005404(v616, &_mh_execute_header, v617, "Failed to apply sync save permission failure, unknown local record type", 71, 2, _swiftEmptyArrayStorage);
              sub_1009F5E04(v130, 0);
              sub_100EA5510(v296, v773, v130, v212, v735);
              swift_unknownObjectRelease();
              return;
            }

LABEL_137:

            if (++v241 == v771)
            {
              goto LABEL_228;
            }
          }

          if (v398 != v397 || v398 >= &v397[8 * v297])
          {
            memmove(v398, v397, 8 * v297);
          }

          v295 = v298;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v394 = v296;
LABEL_152:
          v399 = *(v298 + 40);
          if (!v399)
          {
            goto LABEL_159;
          }

          goto LABEL_153;
        }

LABEL_228:
        v525 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v526 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v527 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v528 = String._bridgeToObjectiveC()();

        [v767 handleFailureInFunction:v526 file:v527 lineNumber:10219 isFatal:0 format:v528 args:v525];

        swift_setDeallocating();
        swift_arrayDestroy();
        v365 = v779;
        v167 = v772;
        v171 = v775;
        v367 = v768;
      }

      v529 = v777;
      sub_10000C83C(v367 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v777, type metadata accessor for CRLBoardIdentifier);
      v530 = sub_100E07F54();
      if (!v365)
      {
        v547 = v530;
        sub_100026028(v529, type metadata accessor for CRLBoardIdentifier);
        v138 = v776;
        if (!v547)
        {
LABEL_264:
          sub_1009F5E04(v167, 0);
          sub_1009F5E04(v167, 0);
          swift_unknownObjectRelease_n();
          sub_100EA5510(v171, v773, v167, v138, v735);
          return;
        }

        *(v547 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = 0;
        sub_100E08660(v547);
        sub_1009F5E04(v167, 0);
        sub_1009F5E04(v167, 0);
        swift_unknownObjectRelease_n();
        sub_100EA5510(v171, v773, v167, v138, v735);
        goto LABEL_310;
      }

      sub_1009F5E04(v167, 0);
      sub_1009F5E04(v167, 0);
      swift_unknownObjectRelease_n();
      sub_100EA5510(v171, v773, v167, v776, v735);
      v228 = v529;
      goto LABEL_245;
    }

    if (v785 != 26)
    {
      if (v785 == 28)
      {
        v308 = v772;
        sub_1009F5E04(v772, 0);
        v309 = v775;
        ObjectType = swift_getObjectType();
        v781 = v309;
        v311 = (*(*(v771 + 8) + 8))(ObjectType);
        v312 = [v311 zoneID];

        v313 = v749;
        sub_100EE9190(v749);

        if ((*(v751 + 48))(v313, 1, v752) == 1)
        {
          sub_1009F5E04(v308, 0);
          swift_unknownObjectRelease();
          sub_100EA5510(v309, v773, v308, v212, v735);
          sub_10000CAAC(v313, &unk_1019F52D0);
          return;
        }

        sub_100025668(v313, v26, type metadata accessor for CRLBoardIdentifier);
        v514 = v766;
        sub_10000C83C(v26, v766, type metadata accessor for CRLBoardIdentifier);
        v515 = v765;
        sub_100031F10(v765, v514);
        sub_1009F5E04(v308, 0);
        swift_unknownObjectRelease();
        sub_100EA5510(v309, v773, v308, v212, v735);
        sub_100026028(v515, type metadata accessor for CRLBoardIdentifier);
        v228 = v26;
        goto LABEL_245;
      }

LABEL_103:
      if (v785 != 10)
      {
        v314 = v779;
        v315 = v775;
        if (v785 != 11)
        {
          v102 = v772;
          sub_1009F5E04(v772, 0);
          if (qword_1019F2270 == -1)
          {
LABEL_181:
            v438 = static OS_os_log.dataSync;
            sub_1005B981C(&qword_1019F54E0);
            v439 = swift_initStackObject();
            *(v439 + 16) = xmmword_10146C6B0;
            v781 = v102;
            sub_1000066D0(&qword_1019F31E0, type metadata accessor for CKError);
            v440 = Error.localizedDescription.getter();
            v442 = v441;
            *(v439 + 56) = &type metadata for String;
            *(v439 + 64) = sub_1000053B0();
            *(v439 + 32) = v440;
            *(v439 + 40) = v442;
            v443 = static os_log_type_t.default.getter();
            sub_100005404(v438, &_mh_execute_header, v443, "Failed to apply sync save result because of an unhandled CKError %@", 67, 2, v439);
            sub_1009F5E04(v102, 0);
            swift_unknownObjectRelease();
            sub_100EA5510(v315, v773, v102, v776, v735);
            swift_setDeallocating();
            sub_100005070(v439 + 32);
            return;
          }

LABEL_315:
          swift_once();
          goto LABEL_181;
        }

        sub_1009F5E04(v772, 0);
        type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
        v316 = swift_dynamicCastClass();
        if (v316)
        {
          sub_100DFCA00((v316 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id), (v316 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier));
LABEL_227:
          v524 = v772;
          sub_1009F5E04(v772, 0);
          swift_unknownObjectRelease();
          v281 = v315;
          v282 = v773;
          v283 = v524;
LABEL_236:
          v284 = v212;
          v285 = v735;
          goto LABEL_253;
        }

        type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
        v523 = swift_dynamicCastClass();
        if (v523)
        {
          sub_100E0C7BC((v523 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier), 0xD000000000000014, 0x80000001015ABC60, 0);
          goto LABEL_227;
        }

        type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
        v560 = swift_dynamicCastClass();
        if (v560)
        {
          sub_10000C83C(v560 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v37, type metadata accessor for CRLBoardIdentifier);
          swift_unknownObjectRetain();
          v561 = sub_100E07F54();
          if (!v314)
          {
            v641 = v561;
            sub_100026028(v37, type metadata accessor for CRLBoardIdentifier);
            if (!v641)
            {
              swift_unknownObjectRelease();
              v679 = v772;
              sub_1009F5E04(v772, 0);
              swift_unknownObjectRelease();
              sub_100EA5510(v315, v773, v679, v212, v735);
              return;
            }

            *(v641 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = 0;
            sub_100E08660(v641);
            swift_unknownObjectRelease();
            v680 = v772;
            sub_1009F5E04(v772, 0);
            swift_unknownObjectRelease();
            sub_100EA5510(v315, v773, v680, v212, v735);
            goto LABEL_310;
          }

          v562 = v772;
          sub_1009F5E04(v772, 0);
          swift_unknownObjectRelease_n();
          sub_100EA5510(v315, v773, v562, v212, v735);
          v228 = v37;
          goto LABEL_245;
        }

        type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
        v106 = swift_dynamicCastClass();
        if (!v106)
        {
          goto LABEL_293;
        }

        v618 = v106;
        sub_10000C83C(v106 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v34, type metadata accessor for CRLBoardIdentifier);
        v619 = *(v618 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
        swift_unknownObjectRetain();
        v131 = sub_100E213C8(v34, v619);
        v129 = v314;
        if (v314)
        {
          v620 = v772;
          sub_1009F5E04(v772, 0);
          swift_unknownObjectRelease_n();
          sub_100EA5510(v315, v773, v620, v212, v735);
          sub_100026028(v34, type metadata accessor for CRLBoardIdentifier);
          return;
        }

        goto LABEL_300;
      }

      v130 = v772;
      sub_1009F5E04(v772, 0);
      v296 = v775;
      v435 = swift_getObjectType();
      v783 = v296;
      v436 = (*(*(v771 + 8) + 8))(v435);
      swift_beginAccess();
      sub_100E7227C(v784, v436, &qword_1019F6E98, CKRecordID_ptr, &qword_101A22010, &unk_1014B6B10);
      swift_endAccess();

      type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
      v437 = swift_dynamicCastClass();
      if (v437)
      {
        if ((*(v437 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedChanges) & 1) == 0)
        {
          sub_1009F5E04(v130, 0);
          swift_unknownObjectRelease();
          v281 = v296;
          v282 = v773;
          v283 = v130;
          v284 = v212;
          v285 = v735;
          goto LABEL_253;
        }

        sub_100DFCA00((v437 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id), (v437 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier));
LABEL_235:
        sub_1009F5E04(v130, 0);
        swift_unknownObjectRelease();
        v281 = v296;
        v282 = v773;
        v283 = v130;
        goto LABEL_236;
      }

      type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
      v521 = swift_dynamicCastClass();
      v522 = v735;
      if (v521)
      {
        if (*(v521 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedChanges))
        {
          sub_100E0C7BC((v521 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier), 0xD00000000000001ALL, 0x80000001015ABAE0, 0);
          goto LABEL_235;
        }
      }

      else
      {
        type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
        v559 = swift_dynamicCastClass();
        if (!v559)
        {
          goto LABEL_274;
        }

        if (*(v559 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_unsyncedChanges))
        {
          v623 = *(v559 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
          *&v777 = v559;
          v624 = *(v559 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions);
          v771 = *(v559 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 16);
          v774 = v624;
          v625 = *(v559 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 40);
          v770 = *(v559 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 32);
          *&v769 = v625;
          LODWORD(v768) = *(v559 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 48);
          v767 = v623;
          v781 = v623;
          swift_unknownObjectRetain();
          dispatch thunk of CustomStringConvertible.description.getter();
          sub_1005B981C(&qword_101A228A0);
          sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
          sub_10001A2F8(&qword_101A1F620, &qword_101A228A0);
          sub_10001A2F8(&unk_101A22E50, &qword_101A228A0);
          CRDictionary.init()();
          sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
          v626 = v737;
          Capsule.init(_:id:)();
          sub_1005B981C(&unk_101A228D0);
          v627 = swift_allocObject();
          *(v627 + *(*v627 + 136)) = 0;
          v628 = *(*v627 + 120);
          v630 = v743;
          v629 = v744;
          (*(v744 + 32))(v627 + v628, v626, v743);
          swift_beginAccess();
          v631 = v627 + v628;
          v632 = v739;
          (*(v629 + 16))(v739, v631, v630);
          if (qword_1019F1520 != -1)
          {
            swift_once();
          }

          v633 = type metadata accessor for CRCodableVersion();
          sub_1005EB3DC(v633, qword_101AD6348);
          v634 = v779;
          v635 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
          v779 = v634;
          if (v634)
          {
            v637 = v632;
            v638 = v772;
            sub_1009F5E04(v772, 0);
            swift_setDeallocating();
            v639 = *(v629 + 8);
            v639(v627 + *(*v627 + 120), v630);
            swift_deallocClassInstance();
            v640 = v775;
            swift_unknownObjectRelease_n();
            sub_100EA5510(v640, v773, v638, v776, v735);
            v639(v637, v630);
          }

          else
          {
            v658 = v635;
            v659 = v636;
            v660 = *(v629 + 8);
            v744 = v629 + 8;
            v766 = v660;
            (v660)(v632, v630);
            v661 = v736;
            sub_10000C83C(v777 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v736, type metadata accessor for CRLBoardIdentifier);
            type metadata accessor for CRLFreehandDrawingBucketDatabaseRow();
            v662 = swift_allocObject();
            v777 = xmmword_101486780;
            *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
            *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = xmmword_101486780;
            sub_100025668(v661, v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
            *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v767;
            v663 = (v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
            *v663 = v658;
            v663[1] = v659;
            *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = 0;
            v664 = (v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
            v665 = *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
            v666 = *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
            sub_100024E98(v658, v659);
            *v664 = v777;
            sub_100025870(v665, v666);
            v667 = *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
            v668 = *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
            *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = v777;
            sub_100025870(v667, v668);
            v669 = v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
            v670 = v771;
            *v669 = v774;
            *(v669 + 16) = v670;
            v671 = v769;
            *(v669 + 32) = v770;
            *(v669 + 40) = v671;
            *(v669 + 48) = v768;
            v672 = v779;
            sub_100E21DC4(v662);
            sub_10002640C(v658, v659);
            swift_setDeallocating();
            (v766)(v627 + *(*v627 + 120), v630);
            swift_deallocClassInstance();
            if (v672)
            {
              v673 = v775;
              swift_unknownObjectRelease_n();
              v674 = v772;
              sub_1009F5E04(v772, 0);
            }

            else
            {
              v674 = v772;
              sub_1009F5E04(v772, 0);
              v673 = v775;
              swift_unknownObjectRelease_n();
            }

            sub_100EA5510(v673, v773, v674, v776, v735);
            swift_setDeallocating();
            sub_100026028(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
            sub_10002640C(*(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
            sub_100025870(*(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
            sub_100025870(*(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v662 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
            swift_deallocClassInstance();
          }

          return;
        }
      }

      sub_1009F5E04(v130, 0);
      swift_unknownObjectRelease();
      v281 = v296;
      v282 = v773;
      v283 = v130;
      v284 = v212;
      v285 = v522;
      goto LABEL_253;
    }

    v428 = v772;
    sub_1009F5E04(v772, 0);
    if ((a9 & 1) == 0)
    {
      sub_1009F5E04(v428, 0);
      v516 = v775;
      swift_unknownObjectRelease();
      v236 = v516;
      v237 = v773;
      v238 = v428;
      v239 = v212;
      goto LABEL_61;
    }

    v429 = v775;
    v430 = swift_getObjectType();
    v781 = v429;
    v431 = (*(*(v771 + 8) + 8))(v430);
    v432 = [v431 zoneID];

    v433 = v741;
    sub_100EE9190(v741);

    if ((*(v751 + 48))(v433, 1, v752) == 1)
    {
      v434 = v772;
      sub_1009F5E04(v772, 0);
      swift_unknownObjectRelease();
      sub_100EA5510(v429, v773, v434, v776, v735);
      sub_10000CAAC(v433, &unk_1019F52D0);
      return;
    }

    v167 = v740;
    sub_100025668(v433, v740, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F2270 == -1)
    {
LABEL_244:
      v548 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v549 = swift_allocObject();
      *(v549 + 16) = xmmword_10146C6B0;
      v550 = UUID.uuidString.getter();
      v552 = v551;
      *(v549 + 56) = &type metadata for String;
      *(v549 + 64) = sub_1000053B0();
      *(v549 + 32) = v550;
      *(v549 + 40) = v552;
      v553 = static os_log_type_t.default.getter();
      sub_100005404(v548, &_mh_execute_header, v553, "Adding board identifier to be purged in response to zoneNotFound for shared zone %{public}@ .", 93, 2, v549);
      swift_setDeallocating();
      sub_100005070(v549 + 32);
      swift_deallocClassInstance();
      v554 = v766;
      sub_10000C83C(v167, v766, type metadata accessor for CRLBoardIdentifier);
      v555 = v765;
      sub_100031F10(v765, v554);
      v556 = v772;
      sub_1009F5E04(v772, 0);
      swift_unknownObjectRelease();
      sub_100EA5510(v429, v773, v556, v776, v735);
      sub_100026028(v555, type metadata accessor for CRLBoardIdentifier);
      v228 = v167;
      goto LABEL_245;
    }

LABEL_319:
    swift_once();
    goto LABEL_244;
  }

  if (v776 != 1)
  {
    return;
  }

  sub_1005B981C(&qword_1019F54E0);
  v138 = swift_initStackObject();
  *(v138 + 16) = xmmword_10146C6B0;
  v781 = 0x203A65707954;
  v782 = 0xE600000000000000;
  v139 = v772;
  v735 = v96;
  sub_100EA54FC(v775, v773, v772, v137, v96);
  sub_1009F5EE8(v139, 1u);
  swift_unknownObjectRetain();
  v140._countAndFlagsBits = CKRecord.recordType.getter();
  String.append(_:)(v140);

  v141._countAndFlagsBits = 0x203A444920;
  v141._object = 0xE500000000000000;
  String.append(_:)(v141);
  v142 = [v139 recordID];
  v143 = [v142 recordName];

  v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v146 = v145;

  v147._countAndFlagsBits = v144;
  v147._object = v146;
  String.append(_:)(v147);

  v148 = v781;
  v149 = v782;
  *(v138 + 56) = &type metadata for String;
  v150 = sub_1000053B0();
  *(v138 + 32) = v148;
  v778 = (v138 + 32);
  *&v777 = v150;
  *(v138 + 64) = v150;
  *(v138 + 40) = v149;
  *&v769 = objc_opt_self();
  v151 = [v769 _atomicIncrementAssertCount];
  v781 = [objc_allocWithZone(NSString) init];
  sub_100604538(v138, &v781);
  StaticString.description.getter();
  *&v771 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v152 = String._bridgeToObjectiveC()();

  v153 = [v152 lastPathComponent];

  v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v770 = v155;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v156 = static OS_os_log.crlAssert;
  v157 = swift_initStackObject();
  *(v157 + 16) = xmmword_10146CA70;
  *(v157 + 56) = &type metadata for Int32;
  *(v157 + 64) = &protocol witness table for Int32;
  *(v157 + 32) = v151;
  v158 = sub_100006370(0, &qword_1019F4D30);
  *(v157 + 96) = v158;
  v159 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  v160 = v771;
  *(v157 + 72) = v771;
  v161 = v777;
  *(v157 + 136) = &type metadata for String;
  *(v157 + 144) = v161;
  *(v157 + 104) = v159;
  *(v157 + 112) = v154;
  *(v157 + 120) = v770;
  *(v157 + 176) = &type metadata for UInt;
  *(v157 + 184) = &protocol witness table for UInt;
  *(v157 + 152) = 10274;
  v162 = v781;
  *(v157 + 216) = v158;
  *(v157 + 224) = v159;
  *(v157 + 192) = v162;
  v163 = v160;
  v164 = v162;
  v165 = static os_log_type_t.error.getter();
  sub_100005404(v156, &_mh_execute_header, v165, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v157);
  swift_setDeallocating();
  *&v771 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v166 = static os_log_type_t.error.getter();
  sub_100005404(v156, &_mh_execute_header, v166, "Logic error. Failed to convert record to remote record object %{public}@", 72, 2, v138);

  type metadata accessor for __VaListBuilder();
  v167 = swift_allocObject();
  v167[2] = 8;
  v167[3] = 0;
  v168 = v167 + 3;
  v167[4] = 0;
  v167[5] = 0;
  v169 = *(v138 + 16);
  if (!v169)
  {
LABEL_59:
    v230 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v231 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v232 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v233 = String._bridgeToObjectiveC()();

    [v769 handleFailureInFunction:v231 file:v232 lineNumber:10274 isFatal:0 format:v233 args:v230];

    swift_setDeallocating();
    swift_arrayDestroy();
    v234 = v772;
    sub_1009F5E04(v772, 1u);
    v235 = v775;
    swift_unknownObjectRelease();
    v236 = v235;
    v237 = v773;
    v238 = v234;
LABEL_60:
    v239 = v776;
LABEL_61:
    sub_100EA5510(v236, v237, v238, v239, v735);
    return;
  }

  v113 = 0;
  *&v777 = *(v138 + 16);
  *&v774 = v138;
  while (1)
  {
    sub_100020E58(&v778[40 * v113], *&v778[40 * v113 + 24]);
    v114 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v171 = *v168;
    v172 = v114[2];
    v173 = __OFADD__(*v168, v172);
    v174 = *v168 + v172;
    if (v173)
    {
      __break(1u);
      goto LABEL_264;
    }

    v96 = v167[4];
    if (v96 >= v174)
    {
      goto LABEL_37;
    }

    if (v96 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_281:
      __break(1u);
      goto LABEL_282;
    }

    v175 = v167[5];
    if (2 * v96 > v174)
    {
      v174 = 2 * v96;
    }

    v167[4] = v174;
    if ((v174 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_281;
    }

    v176 = v114;
    v177 = swift_slowAlloc();
    v178 = v177;
    v167[5] = v177;
    if (v175)
    {
      if (v177 != v175 || v177 >= &v175[8 * v171])
      {
        memmove(v177, v175, 8 * v171);
      }

      v96 = v167;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v114 = v176;
      v138 = v774;
      v169 = v777;
LABEL_37:
      v178 = v167[5];
      if (!v178)
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }

    v114 = v176;
    v169 = v777;
    v138 = v774;
    if (!v178)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_38:
    v180 = v114[2];
    if (v180)
    {
      break;
    }

LABEL_22:

    if (++v113 == v169)
    {
      goto LABEL_59;
    }
  }

  v181 = v114 + 4;
  v182 = *v168;
  while (1)
  {
    v183 = *v181++;
    *&v178[8 * v182] = v183;
    v182 = *v168 + 1;
    if (__OFADD__(*v168, 1))
    {
      break;
    }

    *v168 = v182;
    if (!--v180)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_123:
  v779 = v80;
  *&v777 = v170;
  v245 = v775;
  if (v114)
  {
    v352 = *(*v114 + 272);

    v354 = v750;
    v352(v353);

    v355 = v762;
    sub_10000CAAC(v762, &qword_1019F6990);
    v356 = v355;
    v167 = v764;
    sub_10003DFF8(v354, v356, &qword_1019F6990);
  }

  else
  {
  }

  v248 = v752;
  if (v757 && (v777 & 0x10) == 0)
  {
    v244 = v779;
    goto LABEL_202;
  }

  sub_100025870(v765, v167);

  v247 = v762;
LABEL_221:
  sub_10000CAAC(v247, &qword_1019F6990);
  sub_100026028(v769, type metadata accessor for CRLBoardIdentifier);
  sub_10000CAAC(v770, &qword_1019F6990);
  (*(v763 + 8))(v733, v734);
  sub_10000CAAC(v768, &qword_1019F6990);
  sub_10069B3C8(v248);

  v520 = v772;
  sub_100025870(v772, v168);
  swift_unknownObjectRelease();
  sub_100EA5510(v245, v773, v520, v168, v735);
  swift_unknownObjectRelease();
}