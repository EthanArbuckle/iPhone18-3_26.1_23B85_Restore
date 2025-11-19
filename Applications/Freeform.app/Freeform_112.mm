uint64_t sub_100E0C7BC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v93 = a4;
  v110 = a2;
  v113 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v96 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v106);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for UUID();
  v108 = *(v109 - 1);
  v12 = __chkstk_darwin(v109);
  v107 = (&v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = (&v90 - v14);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = v4;
  v20 = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v19 = v20;
  v21 = *(v17 + 104);
  v101 = enum case for DispatchPredicate.onQueue(_:);
  v103 = v17 + 104;
  v104 = v21;
  v21(v19);
  v22 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v24 = *(v17 + 8);
  v23 = v17 + 8;
  v99 = v19;
  v102 = v24;
  v24(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v105 = v11;
  v91 = v7;
  v92 = v6;
  v100 = v23;
  v98 = v16;
  if (qword_1019F2258 != -1)
  {
LABEL_13:
    swift_once();
  }

  v25 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v27 = UUID.uuidString.getter();
  v29 = v28;
  *(inited + 56) = &type metadata for String;
  v30 = sub_1000053B0();
  *(inited + 32) = v27;
  *(inited + 40) = v29;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v30;
  v31 = v110;
  *(inited + 64) = v30;
  *(inited + 72) = v31;
  *(inited + 80) = a3;

  v32 = static os_log_type_t.default.getter();
  sub_100005404(v25, &_mh_execute_header, v32, "Board %{public}@ purged with reason: %{public}@", 47, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v33 = v111;
  result = sub_100DEB448();
  if (!v33 && result)
  {
    v35 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
    v36 = result;
    swift_beginAccess();
    v37 = v108;
    v38 = *(v108 + 16);
    v111 = v36;
    v39 = v109;
    v38(v15, v36 + v35, v109);
    sub_100DFCA00(v15, v113);
    v40 = *(v37 + 8);
    v40(v15, v39);
    v41 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
    v42 = v111;
    swift_beginAccess();
    v43 = v42 + v41;
    v44 = v113;
    v45 = v107;
    v38(v107, v43, v39);
    sub_100DFCA00(v45, v44);
    v40(v45, v39);
    v46 = v105;
    sub_10000C83C(v44, v105, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    sub_100DF8718(v46);
    sub_100026028(v46, type metadata accessor for CRLAssetReferrerIdentifier);
    sub_100E0E4C8(v44);
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v48 = sub_10001CC04(v47, 0xD00000000000002FLL, 0x80000001015A5DF0);

    type metadata accessor for CRLBoardIdentifierStorage(0);
    v49 = sub_10084DAE4();
    v110 = 0;
    v109 = v50;
    v51 = v49;
    v52 = *(*(v48 + 16) + 32);
    v53 = v99;
    *v99 = v52;
    v54 = v101;
    v55 = v98;
    v104(v53);
    v56 = v52;
    LOBYTE(v52) = _dispatchPreconditionTest(_:)();
    v57 = v102;
    result = v102(v53, v55);
    if (v52)
    {

      v58 = v51;
      v59 = v51;
      v60 = v109;
      v61 = v110;
      sub_100DCCAB4(v59, v109, v48, 1);
      v110 = v61;
      sub_10002640C(v58, v60);
      v62 = *(*(v48 + 16) + 32);
      *v53 = v62;
      v63 = v104;
      (v104)(v53, v54, v55);
      v64 = v62;
      LOBYTE(v62) = _dispatchPreconditionTest(_:)();
      result = v57(v53, v55);
      if (v62)
      {
        v65 = *(v48 + 16);

        v66 = v65;
        v67 = v110;
        v68 = sub_10001CEC4(v66, v48);
        v110 = v67;

        if (v68 != 101)
        {
          sub_10089C7D0();
          swift_allocError();
          *v86 = v68;
          *(v86 + 8) = 0xD000000000000018;
          *(v86 + 16) = 0x80000001015A5E20;
          swift_willThrow();
          v87 = *(*(v48 + 16) + 32);
          *v53 = v87;
          v63(v53, v54, v55);
          v88 = v87;
          LOBYTE(v87) = _dispatchPreconditionTest(_:)();
          result = v57(v53, v55);
          if (v87)
          {
            swift_beginAccess();
            v89 = *(v48 + 24);
            if (v89)
            {
              sqlite3_finalize(v89);

              *(v48 + 24) = 0;
            }

LABEL_17:
          }

          goto LABEL_22;
        }

        sub_1005B981C(&unk_101A19BD0);
        v69 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
        v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_10146C6B0;
        sub_10000C83C(v113, v71 + v70, type metadata accessor for CRLBoardIdentifier);
        v72 = sub_1005BF2F8(v71);
        swift_setDeallocating();
        sub_100026028(v71 + v70, type metadata accessor for CRLBoardIdentifier);
        swift_deallocClassInstance();
        sub_100006370(0, &qword_1019F2D90);
        v113 = static OS_dispatch_queue.main.getter();
        v73 = swift_allocObject();
        *(v73 + 16) = v72;
        *(v73 + 24) = _swiftEmptySetSingleton;
        *(v73 + 32) = _swiftEmptySetSingleton;
        *(v73 + 40) = v93 & 1;
        v74 = v112;
        *(v73 + 48) = v112;
        aBlock[4] = sub_1000260F4;
        aBlock[5] = v73;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        aBlock[3] = &unk_1018A5870;
        v109 = _Block_copy(aBlock);
        v75 = v74;

        v76 = v94;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
        v77 = v53;
        sub_1005B981C(&unk_1019FF400);
        sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
        v78 = v48;
        v79 = v96;
        v80 = v92;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v81 = v109;
        v82 = v113;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v81);

        (*(v91 + 8))(v79, v80);
        (*(v95 + 8))(v76, v97);
        v83 = *(*(v78 + 16) + 32);
        *v77 = v83;
        (v104)(v77, v101, v55);
        v84 = v83;
        LOBYTE(v83) = _dispatchPreconditionTest(_:)();
        result = v102(v77, v55);
        if (v83)
        {
          swift_beginAccess();
          v85 = *(v78 + 24);
          if (v85)
          {
            sqlite3_finalize(v85);

            *(v78 + 24) = 0;
          }

          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100E0D678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5[2] = a1;
  v5[3] = a2;
  result = sub_10002FA9C(sub_100EA3334, v5);
  if (a3)
  {
    return a3(0);
  }

  return result;
}

uint64_t sub_100E0D928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E14284(a3, sub_100EA6324, v11, &unk_1018A5B78, sub_100EA3328, &unk_1018A5B90);
}

void sub_100E0DA9C(double a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
    *v16 = v19;
    (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    v21 = (*(v14 + 8))(v16, v13);
    if (v19)
    {
      v33 = v7;
      __chkstk_darwin(v21);
      *(&v31 - 2) = v18;
      sub_10002FA9C(sub_100EA6380, (&v31 - 4));
      v7 = _swiftEmptyArrayStorage;
      v32 = v8;
      if (a3)
      {
        a3(0);
      }
    }

    else
    {
      __break(1u);
      swift_once();
      v22 = static OS_os_log.boardStore;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v23, "Failed to tombstone expired boards", 34, 2, _swiftEmptyArrayStorage);
      if (a3)
      {
        swift_errorRetain();
        a3(v13);
      }
    }

    sub_100006370(0, &qword_1019F2D90);
    v31 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = &_swiftEmptySetSingleton;
    *(v24 + 24) = &_swiftEmptySetSingleton;
    *(v24 + 32) = &_swiftEmptySetSingleton;
    *(v24 + 40) = 0;
    *(v24 + 48) = v18;
    aBlock[4] = sub_1000260F4;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018A5EB0;
    v25 = _Block_copy(aBlock);
    v26 = v18;

    v27 = v12;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = v7;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v28 = v33;
    v29 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v31;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v32 + 8))(v29, v28);
    (*(v35 + 8))(v27, v36);
    *&v26[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_deletedBoardsCleanupWorkItem] = 0;

    sub_100034778(a3, a4, a1);
  }
}

uint64_t sub_100E0E004()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v39 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v37 = *(v3 + 8);
  v37(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v36 = v2;
  v38 = v8;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD00000000000003ELL, 0x80000001015A5480);

  if (v1)
  {
    return result;
  }

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v13 = sub_10084DAE4();
  v35 = v14;
  v15 = v13;
  v16 = *(*(v11 + 16) + 32);
  *v6 = v16;
  v17 = v36;
  v38(v6, v39, v36);
  v18 = v16;
  v19 = _dispatchPreconditionTest(_:)();
  v37(v6, v17);
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v15;
  v22 = v35;
  sub_100DCCAB4(v21, v35, v11, 1);
  sub_10002640C(v20, v22);
  v23 = *(*(v11 + 16) + 32);
  *v6 = v23;
  v38(v6, v39, v17);
  v24 = v23;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v25 = v37;
  v37(v6, v17);
  if ((v20 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v26 = *(v11 + 16);

  v27 = sub_10001CEC4(v26, v11);

  if (v27 == 101)
  {
    v28 = *(*(v11 + 16) + 32);
    *v6 = v28;
    v38(v6, v39, v17);
    v29 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    v25(v6, v17);
    if (v28)
    {
      swift_beginAccess();
      v30 = *(v11 + 24);
      if (v30)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

  sub_10089C7D0();
  swift_allocError();
  *v31 = v27;
  *(v31 + 8) = 0xD000000000000032;
  *(v31 + 16) = 0x80000001015A54C0;
  swift_willThrow();
  v32 = *(*(v11 + 16) + 32);
  *v6 = v32;
  v38(v6, v39, v17);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v25(v6, v17);
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v30 = *(v11 + 24);
  if (v30)
  {
LABEL_11:
    sqlite3_finalize(v30);
    *(v11 + 24) = 0;
  }
}

void sub_100E0E4C8(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = sub_100EFF9E4(a1);
    sub_100E64BEC(v10);
    if (v2)
    {
    }

    else
    {
      sub_100E650A8(v10);
      sub_1005B981C(&unk_1019F4D60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101465920;
      *(inited + 32) = v10;
      v12 = v10;
      sub_100E602B0(inited);

      swift_setDeallocating();
      swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100E0E6F8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v28 = a1;
  v29 = a4;
  v27 = a3;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A226F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = type metadata accessor for CRLBoardIdentifier(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  sub_10000C83C(v27, v18, type metadata accessor for CRLBoardIdentifier);
  (*(v12 + 16))(v14, v28, v11);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  sub_100025668(v18, v21 + v19, type metadata accessor for CRLBoardIdentifier);
  (*(v12 + 32))(v21 + v20, v14, v11);
  aBlock[4] = v31;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v32;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v36 + 8))(v8, v24);
  (*(v33 + 8))(v10, v35);
}

uint64_t sub_100E0EB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  a4(a2);
  sub_1005B981C(&unk_101A226F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E0EC04(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_101A21CD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12;
  v19[1] = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v11 + 16))(v19 - v12, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_100EA1F7C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4E70;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_100E0EFAC()
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v64 = *(v2 - 8);
  __chkstk_darwin(v2);
  v65 = &v59[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v5 + 104);
  v70 = enum case for DispatchPredicate.onQueue(_:);
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v69 = *(v5 + 8);
  v69(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_33;
  }

  v68 = v9;
  v67 = v5 + 104;
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v72 = 0x454C455320202020;
  v73 = 0xEB00000000205443;
  v11._countAndFlagsBits = sub_100EA017C(0, 0xE000000000000000);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x4F52462020202020;
  v12._object = 0xEA0000000000204DLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x6D5F736472616F62;
  v13._object = 0xEF61746164617465;
  String.append(_:)(v13);
  v14 = v72;
  v15 = v73;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v17 = sub_10001CC04(v16, v14, v15);
  v66 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v18 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = v21;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v23, "Failed to fetch board metadata records with error %@", 52, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v20;
    }

LABEL_34:
    swift_once();
    goto LABEL_4;
  }

  v24 = v17;

  v25 = *(*(v24 + 16) + 32);
  *v7 = v25;
  v26 = v68;
  v68(v7, v70, v4);
  v27 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v69(v7, v4);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v62 = v2;
  type metadata accessor for SQLiteRowIterator();
  v28 = swift_initStackObject();
  v28[3] = 0;
  v29 = v28 + 3;
  v28[4] = 0;
  v63 = v28 + 4;
  v28[5] = 1;
  v28[2] = v24;

  swift_beginAccess();
  v30 = *(*(v24 + 16) + 32);
  *v7 = v30;
  v26(v7, v70, v4);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v69(v7, v4);
  if ((v30 & 1) == 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v20 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    *v29 = 0;
    v28[4] = 0;
    v28[5] = 1;
    v32 = sqlite3_step(*(v24 + 24));
    if (v32 != 100)
    {
      if (v32 && v32 != 101)
      {
        *v29 = v32;
        v54 = v63;
        *v63 = 0;
        v54[1] = 0;
      }

      v55 = *(*(v24 + 16) + 32);
      *v7 = v55;
      v68(v7, v70, v4);
      v56 = v55;
      LOBYTE(v55) = _dispatchPreconditionTest(_:)();
      v69(v7, v4);
      if (v55)
      {
        v57 = *(v24 + 24);
        if (v57)
        {
          sqlite3_finalize(v57);
          *(v24 + 24) = 0;
        }

        return v20;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v33 = swift_retain_n();
    v34 = sub_100EA0450(v33, 0);
    if (!v34)
    {

      v35 = *(*(v24 + 16) + 32);
      *v7 = v35;
      v36 = v7;
      v37 = v70;
      v38 = v4;
      goto LABEL_11;
    }

    v41 = v34;
    v42 = v65;
    sub_10000C83C(v34 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v65, type metadata accessor for CRLBoardIdentifier);

    LODWORD(v61) = swift_isUniquelyReferenced_nonNull_native();
    v71 = v20;
    v44 = sub_1000486F0(v42);
    v45 = v20[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_37;
    }

    if (v20[3] >= v47)
    {
      if ((v61 & 1) == 0)
      {
        v60 = v43;
        sub_100AAC188();
        LOBYTE(v43) = v60;
      }

      goto LABEL_19;
    }

    v60 = v43;
    sub_100A969F4(v47, v61);
    v48 = sub_1000486F0(v65);
    v49 = v43 & 1;
    LOBYTE(v43) = v60;
    if ((v60 & 1) != v49)
    {
      break;
    }

    v44 = v48;
LABEL_19:
    v20 = v71;
    if (v43)
    {
      v50 = v71[7];
      v61 = *(v50 + 8 * v44);
      *(v50 + 8 * v44) = v41;

      sub_100026028(v65, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      v71[(v44 >> 6) + 8] |= 1 << v44;
      sub_10000C83C(v65, v20[6] + *(v64 + 72) * v44, type metadata accessor for CRLBoardIdentifier);
      *(v20[7] + 8 * v44) = v41;

      sub_100026028(v65, type metadata accessor for CRLBoardIdentifier);
      v51 = v20[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_38;
      }

      v20[2] = v53;
    }

    v35 = *(*(v24 + 16) + 32);
    *v7 = v35;
    v36 = v7;
    v37 = v70;
    v38 = v4;
LABEL_11:
    v68(v36, v37, v38);
    v39 = v35;
    v40 = _dispatchPreconditionTest(_:)();
    v69(v7, v4);
    if ((v40 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E0F880(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A22040);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  sub_10000C83C(v23, v15, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 16))(v11, v24, v8);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_100025668(v15, v18 + v16, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 32))(v18 + v17, v11, v8);
  aBlock[4] = sub_100EA5560;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6978;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v29 + 8))(v5, v21);
  (*(v26 + 8))(v7, v28);
}

uint64_t sub_100E0FCF8(uint64_t a1, void *a2)
{
  sub_100DE9BC0(a2, &v3);
  sub_1005B981C(&qword_101A22040);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E0FDD0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v22[1] = a3;
  v23 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_101A21CC8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - v15;
  v24 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v14 + 16))(v22 - v15, a1, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v14 + 32))(v18 + v17, v16, v13);
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v25;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v27 + 8))(v9, v7);
  (*(v10 + 8))(v12, v26);
}

uint64_t sub_100E102E0(uint64_t a1, char *a2, uint64_t a3)
{
  v22[0] = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A21FA8);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v22 - v14;
  v22[1] = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v12 + 16))(v22 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v18 = v22[0];
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_100EA4DB0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6310;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v7, v5);
  (*(v23 + 8))(v10, v24);
}

uint64_t sub_100E10814(uint64_t a1, void *aBlock, void *a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v5 = a3;

  return _swift_task_switch(sub_100E10890, 0, 0);
}

uint64_t sub_100E10890()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_1005B981C(&unk_1019F52B0);
  *v4 = v0;
  v4[1] = sub_100E10998;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001ELL, 0x80000001015A9270, sub_100EA4CE8, v3, v5);
}

uint64_t sub_100E10998()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100E10BB0;
  }

  else
  {

    v2 = sub_100E10AB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E10AB4()
{
  sub_100006370(0, &qword_1019F69D0);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v2 = *(v0 + 40);
  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E10BB0()
{

  v1 = _convertErrorToNSError(_:)();

  v2 = *(v0 + 40);
  (v2)[2](v2, 0, v1);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E10C5C(uint64_t a1, char *a2, uint64_t a3)
{
  v21[0] = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A21CC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - v13;
  v21[1] = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v12 + 16))(v21 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21[0];
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_100EA1F2C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4DD0;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v24 + 8))(v7, v5);
  (*(v22 + 8))(v10, v23);
}

uint64_t sub_100E1100C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t *a5)
{
  a4(a2);
  sub_1005B981C(a5);
  return CheckedContinuation.resume(returning:)();
}

void *sub_100E110A8@<X0>(void *a1@<X8>)
{
  result = sub_1000811B8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100E110D8(uint64_t **a1, uint64_t a2, int a3)
{
  v225 = a3;
  v226 = a2;
  v236 = sub_1005B981C(&qword_101A21C60);
  v6 = __chkstk_darwin(v236);
  v238 = &v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v237 = &v224 - v8;
  v249 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v249);
  v248 = &v224 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v247 = &v224 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for UUID();
  v229 = *(v262 - 8);
  v12 = __chkstk_darwin(v262);
  v227 = &v224 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v224 - v15;
  v17 = __chkstk_darwin(v14);
  v231 = &v224 - v18;
  v19 = __chkstk_darwin(v17);
  v233 = &v224 - v20;
  v21 = __chkstk_darwin(v19);
  v259 = &v224 - v22;
  __chkstk_darwin(v21);
  v258 = &v224 - v23;
  v224 = type metadata accessor for CRLBoardIdentifier(0);
  v251 = *(v224 - 8);
  v24 = __chkstk_darwin(v224);
  v239 = &v224 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v240 = &v224 - v27;
  v28 = __chkstk_darwin(v26);
  v263 = (&v224 - v29);
  v30 = __chkstk_darwin(v28);
  v246 = &v224 - v31;
  v32 = __chkstk_darwin(v30);
  v257 = &v224 - v33;
  __chkstk_darwin(v32);
  v265 = (&v224 - v34);
  v35 = type metadata accessor for DispatchPredicate();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = (&v224 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v260 = v3;
  v39 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v38 = v39;
  (*(v36 + 104))(v38, enum case for DispatchPredicate.onQueue(_:), v35);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  (*(v36 + 8))(v38, v35);
  if ((v39 & 1) == 0)
  {
    goto LABEL_133;
  }

  type metadata accessor for CRLBoardDatabaseFetchResult();
  v41 = swift_allocObject();
  v41[2] = &_swiftEmptyDictionarySingleton;
  v261 = v41 + 2;
  v41[3] = &_swiftEmptyDictionarySingleton;
  v234 = v41 + 3;
  v235 = v41;
  v41[4] = &_swiftEmptyDictionarySingleton;
  v232 = v41 + 4;
  v41[5] = &_swiftEmptyDictionarySingleton;
  v230 = v41 + 5;
  v228 = v16;
  if (a1)
  {
    v42 = a1[2];
    if (v42)
    {
      v43 = 0;
      v250 = _swiftEmptyArrayStorage;
      v256 = xmmword_10146C6B0;
      v44 = v4;
      v264 = a1;
LABEL_5:
      v45 = v43;
      v46 = v265;
      while (v45 < v42)
      {
        sub_10000C83C(a1 + ((*(v251 + 80) + 32) & ~*(v251 + 80)) + *(v251 + 72) * v45, v46, type metadata accessor for CRLBoardIdentifier);
        v47 = (v45 + 1);
        if (__OFADD__(v45, 1))
        {
          goto LABEL_128;
        }

        sub_100DE778C(v268);
        if (v44)
        {
          v153 = v46;
LABEL_61:
          sub_100026028(v153, type metadata accessor for CRLBoardIdentifier);

LABEL_120:
          swift_willThrow();
          v222 = v235;

          return v222;
        }

        v252 = 0;
        v48 = v268[0];
        if (v268[0])
        {
          v255 = (v45 + 1);
          v56 = v268[1];
          v55 = v268[2];
          v57 = v269;
          v58 = v270;
          v254 = v269;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v250 = sub_100B38D30(0, v250[2] + 1, 1, v250);
          }

          v60 = v250[2];
          v59 = v250[3];
          if (v60 >= v59 >> 1)
          {
            v250 = sub_100B38D30((v59 > 1), v60 + 1, 1, v250);
          }

          sub_100026028(v265, type metadata accessor for CRLBoardIdentifier);
          v61 = v250;
          v250[2] = v60 + 1;
          v62 = &v61[5 * v60];
          v62[4] = v48;
          v62[5] = v56;
          v62[6] = v55;
          v62[7] = v57;
          *(v62 + 64) = v58 & 1;
          v43 = v255;
          v44 = v252;
          a1 = v264;
          if (v255 != v42)
          {
            goto LABEL_5;
          }

          goto LABEL_23;
        }

        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v49 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v256;
        v51 = UUID.uuidString.getter();
        v53 = v52;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v51;
        *(inited + 40) = v53;
        v54 = static os_log_type_t.error.getter();
        sub_100005404(v49, &_mh_execute_header, v54, "Failed to fetch boardAndContainerData for board %{public}@", 58, 2, inited);
        swift_setDeallocating();
        v46 = v265;
        sub_100005070(inited + 32);
        sub_100026028(v46, type metadata accessor for CRLBoardIdentifier);
        ++v45;
        v44 = v252;
        a1 = v264;
        if (v47 == v42)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_127;
    }

    v250 = _swiftEmptyArrayStorage;
    v44 = v4;
  }

  else
  {
    v63 = sub_100DE62C0();
    v44 = v4;
    if (v4)
    {
      goto LABEL_120;
    }

    v250 = v63;
  }

LABEL_23:
  v252 = v44;
  v245 = v250[2];
  if (v245)
  {
    v64 = 0;
    v244 = (v229 + 16);
    v242 = (v229 + 8);
    v243 = CKCurrentUserDefaultName;
    v241 = (v229 + 32);
    v65 = (v250 + 8);
    while (1)
    {
      if (v64 >= v250[2])
      {
        goto LABEL_124;
      }

      v72 = *(v65 - 4);
      v71 = *(v65 - 3);
      v73 = *(v65 - 2);
      v74 = *(v65 - 1);
      LODWORD(v256) = *v65;
      v75 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v76 = v72 + v75;
      v77 = v247;
      sub_10000C83C(v76, v247, type metadata accessor for CRLBoardCRDTData);
      v255 = v74;
      v78 = v74;

      v265 = v71;

      v264 = v73;

      sub_1005B981C(&unk_1019F5250);
      v79 = v258;
      CRRegister.wrappedValue.getter();
      sub_100026028(v77, type metadata accessor for CRLBoardCRDTData);
      v80 = *(v72 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v81 = *(v72 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);
      (*v244)(v259, v79, v262);
      v83 = v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v81 == v82;
      if (v83 || (v84 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v84 & 1) != 0))
      {

        v80 = 0;
        v81 = 0xE000000000000000;
      }

      v85 = v262;
      (*v242)(v258, v262);
      v86 = v248;
      (*v241)(v248, v259, v85);
      v87 = (v86 + *(v249 + 20));
      *v87 = v80;
      v87[1] = v81;
      v88 = v246;
      sub_100025668(v86, v246, type metadata accessor for CRLBoardIdentifierStorage);
      v89 = v88;
      v90 = v257;
      sub_100025668(v89, v257, type metadata accessor for CRLBoardIdentifier);
      v91 = v263;
      sub_10000C83C(v90, v263, type metadata accessor for CRLBoardIdentifier);
      v92 = v261;
      swift_beginAccess();

      v93 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = *v92;
      v267 = v95;
      v96 = sub_1000486F0(v91);
      v98 = v95[2];
      v99 = (v97 & 1) == 0;
      v100 = __OFADD__(v98, v99);
      v101 = v98 + v99;
      if (v100)
      {
        break;
      }

      v102 = v97;
      v103 = v95[3];
      v253 = v93;
      if (v103 >= v101)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v114 = v96;
          sub_100AA7624();
          v96 = v114;
        }
      }

      else
      {
        sub_100A8DDE4(v101, isUniquelyReferenced_nonNull_native);
        v96 = sub_1000486F0(v263);
        if ((v102 & 1) != (v104 & 1))
        {
          goto LABEL_135;
        }
      }

      v254 = v64;
      v105 = v267;
      if (v102)
      {
        v66 = v267[7] + 40 * v96;
        v67 = *(v66 + 24);
        v69 = v264;
        v68 = v265;
        *v66 = v72;
        *(v66 + 8) = v68;
        v70 = v255;
        *(v66 + 16) = v69;
        *(v66 + 24) = v70;
        *(v66 + 32) = v256;

        sub_100026028(v263, type metadata accessor for CRLBoardIdentifier);
      }

      else
      {
        v267[(v96 >> 6) + 8] |= 1 << v96;
        v106 = v96;
        v107 = v263;
        sub_10000C83C(v263, v105[6] + *(v251 + 72) * v96, type metadata accessor for CRLBoardIdentifier);
        v108 = v105[7] + 40 * v106;
        v110 = v264;
        v109 = v265;
        *v108 = v72;
        *(v108 + 8) = v109;
        v111 = v255;
        *(v108 + 16) = v110;
        *(v108 + 24) = v111;
        *(v108 + 32) = v256;
        sub_100026028(v107, type metadata accessor for CRLBoardIdentifier);
        v112 = v105[2];
        v100 = __OFADD__(v112, 1);
        v113 = v112 + 1;
        if (v100)
        {
          goto LABEL_130;
        }

        v105[2] = v113;
      }

      v64 = v254 + 1;
      *v261 = v105;
      swift_endAccess();

      sub_100026028(v257, type metadata accessor for CRLBoardIdentifier);
      v65 += 40;
      if (v245 == v64)
      {
        goto LABEL_43;
      }
    }

LABEL_125:
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
    goto LABEL_132;
  }

LABEL_43:
  if (v226)
  {
    if (v226 == 1)
    {
      v115 = v261;
      swift_beginAccess();
      v116 = *v115;
      v119 = *(*v115 + 64);
      v118 = *v115 + 64;
      v117 = v119;
      v120 = 1 << v116[32];
      v121 = -1;
      if (v120 < 64)
      {
        v121 = ~(-1 << v120);
      }

      v122 = v121 & v117;
      v123 = (v120 + 63) >> 6;
      v264 = (v229 + 16);
      v265 = (v229 + 8);
      v258 = v116;
      swift_bridgeObjectRetain_n();
      v124 = 0;
      v125 = v237;
      v257 = v118;
      *&v256 = v123;
      while (v122)
      {
LABEL_54:
        v127 = __clz(__rbit64(v122)) | (v124 << 6);
        v128 = v258;
        sub_10000C83C(*(v258 + 6) + *(v251 + 72) * v127, v125, type metadata accessor for CRLBoardIdentifier);
        v129 = *(v128 + 7) + 40 * v127;
        v130 = *v129;
        v131 = *(v129 + 8);
        v133 = *(v129 + 16);
        v132 = *(v129 + 24);
        LOBYTE(v129) = *(v129 + 32);
        v134 = v125 + *(v236 + 48);
        *v134 = v130;
        *(v134 + 8) = v131;
        *(v134 + 16) = v133;
        *(v134 + 24) = v132;
        *(v134 + 32) = v129;
        v135 = *(*v131 + 744);
        swift_beginAccess();
        v136 = v131 + v135;
        v137 = v228;
        v138 = v262;
        v263 = *v264;
        (v263)(v228, v136, v262);
        v139 = v132;

        v140 = v252;
        v141 = sub_100DEBB44(v137, v237);
        v252 = v140;
        if (v140)
        {
          (*v265)(v137, v138);
          v125 = v237;
          goto LABEL_118;
        }

        v142 = v141;
        v259 = *v265;
        (v259)(v137, v138);
        v125 = v237;
        if (v142)
        {
          v143 = v239;
          sub_10000C83C(v237, v239, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();

          sub_100BC34FC(v144, v143);
          swift_endAccess();
        }

        v145 = *(*v133 + 744);
        swift_beginAccess();
        v146 = v227;
        v147 = v262;
        (v263)(v227, v133 + v145, v262);
        v148 = v252;
        v149 = sub_100DEBB44(v146, v125);
        v252 = v148;
        if (v148)
        {
          (v259)(v146, v147);
LABEL_118:

          sub_10000CAAC(v125, &qword_101A21C60);

LABEL_119:

          goto LABEL_120;
        }

        v150 = v149;
        (v259)(v146, v147);
        if (v150)
        {
          v151 = v239;
          sub_10000C83C(v125, v239, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();

          sub_100BC34FC(v152, v151);
          swift_endAccess();
        }

        v122 &= v122 - 1;
        sub_10000CAAC(v125, &qword_101A21C60);
        v118 = v257;
        v123 = v256;
      }

      while (1)
      {
        v126 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          break;
        }

        if (v126 >= v123)
        {

          goto LABEL_74;
        }

        v122 = *(v118 + 8 * v126);
        ++v124;
        if (v122)
        {
          v124 = v126;
          goto LABEL_54;
        }
      }

LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_135:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v154 = *(v226 + 16);
    if (v154)
    {
      v155 = v226 + ((*(v251 + 80) + 32) & ~*(v251 + 80));
      v259 = *(v251 + 72);
      v264 = (v229 + 8);
      v265 = (v229 + 16);
      v156 = v233;
      v157 = v240;
      do
      {
        sub_10000C83C(v155, v157, type metadata accessor for CRLBoardIdentifier);
        v158 = v252;
        v159 = sub_100DEB448();
        if (v158)
        {
          v153 = v240;
          goto LABEL_61;
        }

        v160 = v159;
        v252 = 0;
        if (v159)
        {
          v161 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
          swift_beginAccess();
          v162 = *v265;
          v163 = v262;
          (*v265)(v156, v160 + v161, v262);
          v164 = v252;
          v165 = sub_100DEBB44(v156, v240);
          v166 = v156;
          if (v164)
          {

            (*v264)(v156, v163);
            sub_100026028(v240, type metadata accessor for CRLBoardIdentifier);

            goto LABEL_120;
          }

          v167 = v165;
          v263 = *v264;
          (v263)(v166, v163);
          if (v167)
          {
            v168 = v239;
            sub_10000C83C(v240, v239, type metadata accessor for CRLBoardIdentifier);
            swift_beginAccess();

            sub_100BC34FC(v169, v168);
            swift_endAccess();
          }

          v170 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
          swift_beginAccess();
          v171 = v160 + v170;
          v172 = v231;
          v173 = v262;
          (v162)(v231, v171, v262);
          v174 = sub_100DEBB44(v172, v240);
          v252 = 0;
          v175 = v174;
          (v263)(v172, v173);
          if (v175)
          {
            v176 = v239;
            sub_10000C83C(v240, v239, type metadata accessor for CRLBoardIdentifier);
            swift_beginAccess();

            sub_100BC34FC(v177, v176);
            swift_endAccess();
          }

          v156 = v233;
        }

        v157 = v240;
        sub_100026028(v240, type metadata accessor for CRLBoardIdentifier);
        v155 += v259;
        --v154;
      }

      while (v154);
    }
  }

LABEL_74:
  if (v225)
  {
    v178 = v261;
    swift_beginAccess();
    v179 = *v178;
    v182 = *(*v178 + 64);
    v181 = *v178 + 64;
    v180 = v182;
    v183 = 1 << v179[32];
    v184 = -1;
    if (v183 < 64)
    {
      v184 = ~(-1 << v183);
    }

    v185 = v184 & v180;
    v186 = (v183 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v187 = 0;
    v257 = v181;
    v258 = v179;
    *&v256 = v186;
LABEL_80:
    if (v185)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v193 = v187 + 1;
      if (__OFADD__(v187, 1))
      {
        goto LABEL_129;
      }

      if (v193 >= v186)
      {
        break;
      }

      v185 = *(v181 + 8 * v193);
      ++v187;
      if (v185)
      {
        v187 = v193;
LABEL_85:
        v259 = v187;
        v194 = __clz(__rbit64(v185)) | (v187 << 6);
        v195 = v238;
        sub_10000C83C(*(v179 + 6) + *(v251 + 72) * v194, v238, type metadata accessor for CRLBoardIdentifier);
        v196 = *(v179 + 7) + 40 * v194;
        v197 = *v196;
        v198 = *(v196 + 8);
        v200 = *(v196 + 16);
        v199 = *(v196 + 24);
        LOBYTE(v196) = *(v196 + 32);
        v201 = v195 + *(v236 + 48);
        *v201 = v197;
        *(v201 + 8) = v198;
        *(v201 + 16) = v200;
        *(v201 + 24) = v199;
        *(v201 + 32) = v196;
        v202 = v199;

        v203 = v252;
        v204 = sub_100E12FDC(v195);
        v252 = v203;
        if (v203)
        {

          sub_10000CAAC(v238, &qword_101A21C60);

          goto LABEL_119;
        }

        v205 = v204;
        if (v204 >> 62)
        {
          v206 = _CocoaArrayWrapper.endIndex.getter();
          if (!v206)
          {
            goto LABEL_78;
          }

LABEL_88:
          v207 = 0;
          v264 = (v205 & 0xC000000000000001);
          v261 = (v205 & 0xFFFFFFFFFFFFFF8);
          v188 = &_swiftEmptyDictionarySingleton;
          v262 = v185;
          v263 = v205;
          while (2)
          {
            if (v264)
            {
              v208 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v209 = (v207 + 1);
              if (__OFADD__(v207, 1))
              {
                goto LABEL_122;
              }
            }

            else
            {
              if (v207 >= v261[2])
              {
                goto LABEL_131;
              }

              v208 = *(v205 + 8 * v207 + 32);

              v209 = (v207 + 1);
              if (__OFADD__(v207, 1))
              {
LABEL_122:
                __break(1u);
LABEL_123:
                __break(1u);
LABEL_124:
                __break(1u);
                goto LABEL_125;
              }
            }

            v265 = v209;
            v210 = *(v208 + 16);

            v211 = swift_isUniquelyReferenced_nonNull_native();
            v266 = v188;
            v213 = sub_1007C7EC0(v210);
            v214 = v188[2];
            v215 = (v212 & 1) == 0;
            v216 = v214 + v215;
            if (__OFADD__(v214, v215))
            {
              goto LABEL_123;
            }

            v217 = v212;
            if (v188[3] >= v216)
            {
              if (v211)
              {
                v188 = v266;
                if ((v212 & 1) == 0)
                {
                  goto LABEL_104;
                }
              }

              else
              {
                sub_100AA4700();
                v188 = v266;
                if ((v217 & 1) == 0)
                {
                  goto LABEL_104;
                }
              }
            }

            else
            {
              sub_100A89AE8(v216, v211);
              v218 = sub_1007C7EC0(v210);
              if ((v217 & 1) != (v219 & 1))
              {
                goto LABEL_134;
              }

              v213 = v218;
              v188 = v266;
              if ((v217 & 1) == 0)
              {
LABEL_104:
                v188[(v213 >> 6) + 8] |= 1 << v213;
                *(v188[6] + 8 * v213) = v210;
                *(v188[7] + 8 * v213) = v208;

                v220 = v188[2];
                v100 = __OFADD__(v220, 1);
                v221 = v220 + 1;
                if (v100)
                {
                  goto LABEL_126;
                }

                v188[2] = v221;
                goto LABEL_90;
              }
            }

            *(v188[7] + 8 * v213) = v208;

LABEL_90:
            ++v207;
            v185 = v262;
            v205 = v263;
            if (v265 == v206)
            {
              goto LABEL_79;
            }

            continue;
          }
        }

        v206 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v206)
        {
          goto LABEL_88;
        }

LABEL_78:
        v188 = &_swiftEmptyDictionarySingleton;
LABEL_79:
        v185 &= v185 - 1;

        sub_1005B981C(&qword_101A12978);
        v189 = swift_allocObject();
        *(v189 + 16) = v188;
        *(v189 + 24) = &_swiftEmptyDictionarySingleton;
        v190 = v230;
        swift_beginAccess();

        v191 = swift_isUniquelyReferenced_nonNull_native();
        v271 = *v190;
        v192 = v238;
        sub_100AA0D50(v189, v238, v191);
        *v190 = v271;
        swift_endAccess();

        sub_10000CAAC(v192, &qword_101A21C60);
        v181 = v257;
        v179 = v258;
        v186 = v256;
        v187 = v259;
        goto LABEL_80;
      }
    }
  }

  return v235;
}

uint64_t sub_100E12934(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&v5[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  aBlock[4] = sub_100EA1E4C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4D08;
  v18 = _Block_copy(aBlock);

  v19 = v5;
  sub_100EA1E60(a2);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v13, v11);
  (*(v14 + 8))(v16, v22);
}

uint64_t sub_100E12C40(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, void (*a5)(uint64_t, void))
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100E110D8(a2, a3, a4);

  a5(v14, 0);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v16 = v15;

  result = (*(v11 + 8))(v13, v10);
  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastFetchResultsTime) = v16;
  return result;
}

uint64_t sub_100E12DF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_1005B981C(&qword_101A21C58);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_100E12934(a3, a4, a5, sub_100EA1DC0, v14);
}

uint64_t sub_100E12F5C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(&qword_101A21C58);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_1005B981C(&qword_101A21C58);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100E12FDC(unint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = (*(v5 + 8))(v7, v4);
  if (v10)
  {
    v11 = sub_100E232E0(a1);
    if (v2)
    {
      return v10;
    }

    if (!(v11 >> 62))
    {
      v12 = v11;
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v12 = v11;
  v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v23 = sub_100BD9538(_swiftEmptyArrayStorage);
  type metadata accessor for CRLUnfairLock();
  inited = swift_initStackObject();
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(inited + 16) = v15;
  atomic_thread_fence(memory_order_acq_rel);
  v16 = sub_100006370(0, &qword_1019F2D90);
  __chkstk_darwin(v16);
  *(&v21 - 4) = v12;
  *(&v21 - 3) = inited;
  *(&v21 - 2) = &v23;
  static OS_dispatch_queue.concurrentPerform(iterations:execute:)();

  v22 = _swiftEmptyArrayStorage;
  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13)
    {
      v18 = 0;
      v10 = _swiftEmptyArrayStorage;
      v19 = v23;
      do
      {
        if (v19[2])
        {
          sub_1007C7EC0(v18);
          if (v20)
          {
            swift_retain_n();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v10 = v22;
          }
        }

        ++v18;
      }

      while (v13 != v18);
    }

    else
    {

      v10 = _swiftEmptyArrayStorage;
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E1330C(uint64_t a1, void (*a2)(void *, void))
{
  v3 = sub_100DE62C0();
  a2(v3, 0);
}

uint64_t sub_100E133C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27[0] = a1;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v27[0], v15, type metadata accessor for CRLBoardIdentifier);
  (*(v10 + 16))(v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v10 + 80) + v16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  sub_100025668(v15, v18 + v16, type metadata accessor for CRLBoardIdentifier);
  (*(v10 + 32))(v18 + v17, v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v19 = (v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  v20 = v29;
  *v19 = v28;
  v19[1] = v20;
  aBlock[4] = sub_100EA2420;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5208;
  v22 = _Block_copy(aBlock);
  v23 = v4;
  sub_10002E7A8(v21);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v24 = v30;
  v25 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v8, v33);
}

uint64_t sub_100E13864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  result = sub_10002FA9C(sub_100EA2520, v6);
  if (a4)
  {
    return a4(0);
  }

  return result;
}

uint64_t sub_100E13A64(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = v2;
  v55 = a2;
  v4 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v4 - 8);
  v57 = &v50 - v5;
  v58 = type metadata accessor for CRLBoardCRDTData(0);
  *&v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v50 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v13 = v14;
  v15 = enum case for DispatchPredicate.onQueue(_:);
  v16 = *(v10 + 104);
  (v16)(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v17 = v14;
  v18 = _dispatchPreconditionTest(_:)();
  v19 = *(v10 + 8);
  v19(v13, v9);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v13 = v20;
  v16(v13, v15, v9);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  v19(v13, v9);
  if ((v22 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v59;
  result = sub_100DEB448();
  if (v23)
  {
    return result;
  }

  if (!result)
  {
LABEL_8:
    if (qword_1019F2258 == -1)
    {
LABEL_9:
      v30 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v32 = sub_10084B8C8();
      v34 = v33;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v32;
      *(inited + 40) = v34;
      v35 = static os_log_type_t.default.getter();
      sub_100005404(v30, &_mh_execute_header, v35, "Attempted to update the last activity time but the board does not exist. Board identifier %@", 92, 2, inited);
      swift_setDeallocating();
      return sub_100005070(inited + 32);
    }

LABEL_15:
    swift_once();
    goto LABEL_9;
  }

  v25 = (result + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v26 = *(result + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  if (v26 >> 60 == 15)
  {

    goto LABEL_8;
  }

  v59 = result;
  v27 = *v25;
  sub_100024E98(*v25, v26);
  sub_100024E98(v27, v26);
  sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);
  v29 = v57;
  v28 = v58;
  CRDT.init(serializedData:)();
  v36 = *(v56 + 56);
  v60 = 0;
  v36(v29, 0, 1, v28);
  v51 = v27;
  v37 = v53;
  sub_100025668(v29, v53, type metadata accessor for CRLBoardCRDTData);
  v38 = v59;
  LODWORD(v57) = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
  v39 = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
  v56 = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
  v52 = v39;
  v40 = v54;
  sub_10000C83C(v37, v54, type metadata accessor for CRLBoardCRDTData);
  v41 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v42 = (v38 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20) + v41);
  v43 = *v42;
  v44 = v42[1];
  type metadata accessor for CRLBoardData(0);
  v45 = swift_allocObject();

  sub_100025870(v51, v26);

  sub_100026028(v37, type metadata accessor for CRLBoardCRDTData);
  *(v45 + 16) = 7;
  *(v45 + 40) = v52;
  *(v45 + 24) = v56;
  *(v45 + 56) = v57;
  sub_100025668(v40, v45 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
  v46 = (v45 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  *v46 = v43;
  v46[1] = v44;
  Date.timeIntervalSinceReferenceDate.getter();
  v48 = v47;
  swift_beginAccess();
  v61 = v48;
  sub_1005B981C(&qword_1019F4858);
  CRMaxRegister.wrappedValue.setter();
  swift_endAccess();
  v49 = v60;
  sub_100DFE838(v45, 0, 0, 0xF000000000000000, 0, 0);

  if (!v49)
  {
  }

  return result;
}

uint64_t sub_100E14110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E14284(a3, sub_10096B0D4, v11, &unk_1018A5B00, sub_100EA328C, &unk_1018A5B18);
}

uint64_t sub_100E14284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v23 = *(v15 - 8);
  v24 = v15;
  __chkstk_darwin(v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v18 = swift_allocObject();
  v18[2] = v6;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  aBlock[4] = a5;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a6;
  v19 = _Block_copy(aBlock);
  v20 = v6;

  sub_10002E7A8(a2);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v14, v12);
  (*(v23 + 8))(v17, v24);
}

uint64_t sub_100E14568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5[2] = a2;
  v5[3] = a1;
  result = sub_10002FA9C(sub_100EA3298, v5);
  if (a3)
  {
    return a3(0);
  }

  return result;
}

uint64_t sub_100E14818(int a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v42 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v5 + 104);
  (v11)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v12 = v9;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v14(v8, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v15;
  v11(v8, v10, v4);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v14(v8, v4);
  if ((v17 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v40;
  result = sub_100E07F54();
  if (v18)
  {
    return result;
  }

  v40 = 0;
  if (!result || (v20 = sub_100EA2998(result)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_15:
      v33 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v35 = UUID.uuidString.getter();
      v37 = v36;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v35;
      *(inited + 40) = v37;
      v38 = static os_log_type_t.default.getter();
      sub_100005404(v33, &_mh_execute_header, v38, "Attempted to set the favorite state on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 133, 2, inited);
      swift_setDeallocating();
      return sub_100005070(inited + 32);
    }

LABEL_19:
    swift_once();
    goto LABEL_15;
  }

  v21 = v20;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v22 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10146BDE0;
  v24 = sub_1000053B0();
  v25 = v24;
  v26 = v42 & 1;
  v27 = 1702195828;
  if ((v42 & 1) == 0)
  {
    v27 = 0x65736C6166;
  }

  v28 = 0xE500000000000000;
  if (v42)
  {
    v28 = 0xE400000000000000;
  }

  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v24;
  *(v23 + 32) = v27;
  *(v23 + 40) = v28;
  v29 = UUID.uuidString.getter();
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v25;
  *(v23 + 72) = v29;
  *(v23 + 80) = v30;
  v31 = static os_log_type_t.default.getter();
  sub_100005404(v22, &_mh_execute_header, v31, "Set favorite status to [%{public}@] for board identifier: %{public}@", 68, 2, v23);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_beginAccess();
  v43 = v26;
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v32 = v40;
  sub_100E06DBC(v21, 0, 0, 0xF000000000000000, 0);

  if (!v32)
  {
  }

  return result;
}

uint64_t sub_100E14C84(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A22030);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  sub_10000C83C(v23, v15, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 16))(v11, v24, v8);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_100025668(v15, v18 + v16, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 32))(v18 + v17, v11, v8);
  aBlock[4] = sub_10007C380;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6888;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v29 + 8))(v5, v21);
  (*(v26 + 8))(v7, v28);
}

uint64_t sub_100E150FC()
{
  v0 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  __chkstk_darwin(v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100E07F54())
  {
    sub_100969BD4(v2);
    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.getter();
    sub_1005B981C(&qword_101A22030);
    CheckedContinuation.resume(returning:)();

    return sub_100026028(v2, type metadata accessor for CRLUserBoardMetadataCRDTData);
  }

  else
  {
    LOBYTE(v4) = 2;
    sub_1005B981C(&qword_101A22030);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100E152B8(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = a1;
  sub_10002FA9C(sub_100EA3258, v3);
  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E1556C(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = sub_100E07F54();
  if (v2)
  {
    return result;
  }

  v31 = 0;
  if (!result || (v13 = sub_100EA2998(result)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_14:
      v25 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v27 = UUID.uuidString.getter();
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.default.getter();
      sub_100005404(v25, &_mh_execute_header, v30, "Attempted to enable collaborator cursors on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 138, 2, inited);
      swift_setDeallocating();
      return sub_100005070(inited + 32);
    }

LABEL_17:
    swift_once();
    goto LABEL_14;
  }

  v14 = v13;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_10146BDE0;
  v17 = sub_1000053B0();
  v18 = v17;
  v32 = a1 & 1;
  v19 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v19 = 0x65736C6166;
  }

  v20 = 0xE500000000000000;
  if (a1)
  {
    v20 = 0xE400000000000000;
  }

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = v17;
  *(v16 + 32) = v19;
  *(v16 + 40) = v20;
  v21 = UUID.uuidString.getter();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v18;
  *(v16 + 72) = v21;
  *(v16 + 80) = v22;
  v23 = static os_log_type_t.default.getter();
  sub_100005404(v15, &_mh_execute_header, v23, "Set enable collaborator cursors to [%{public}@] for board identifier: %{public}@", 80, 2, v16);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_beginAccess();
  v33 = v32;
  type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v24 = v31;
  sub_100E06DBC(v14, 0, 0, 0xF000000000000000, 0);

  if (!v24)
  {
  }

  return result;
}

uint64_t sub_100E15978(uint64_t a1, char *a2, uint64_t a3, _OWORD *a4)
{
  v29 = a3;
  v30 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A050F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v29, v15, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 16))(v11, v30, v8);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v9 + 80) + v17 + 73) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_100025668(v15, v19 + v16, type metadata accessor for CRLBoardIdentifier);
  v20 = (v19 + v17);
  v21 = a4[3];
  v20[2] = a4[2];
  v20[3] = v21;
  *(v20 + 57) = *(a4 + 57);
  v22 = a4[1];
  *v20 = *a4;
  v20[1] = v22;
  (*(v9 + 32))(v19 + v18, v11, v8);
  aBlock[4] = sub_100EA2D30;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A55F0;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  sub_1006D62AC(a4, &v38);
  v25 = v31;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v26 = v33;
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v37 + 8))(v26, v27);
  (*(v34 + 8))(v25, v36);
}

uint64_t sub_100E15E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_10002FA9C(sub_100EA2E1C, v4);
  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E16060(uint64_t a1, __int128 *a2)
{
  v46[1] = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v49 = enum case for DispatchPredicate.onQueue(_:);
  v50 = v11;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v47 = v5;
  v48 = v13;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v15 = sub_10001CC04(v14, 0xD000000000000049, 0x80000001015A59F0);
  if (v3)
  {
  }

  v16 = v15;

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v17 = a2[3];
  v53 = a2[2];
  v54[0] = v17;
  *(v54 + 9) = *(a2 + 57);
  v18 = a2[1];
  v51 = *a2;
  v52 = v18;
  sub_100EA2550();
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = v20;
  v22 = v19;

  v23 = *(*(v16 + 16) + 32);
  *v9 = v23;
  v24 = v47;
  v50(v9, v49, v47);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v48(v9, v24);
  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_100DCCAB4(v22, v21, v16, 1);
  sub_10002640C(v22, v21);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v26 = sub_10084DAE4();
  v28 = v27;
  v29 = v26;
  v30 = *(*(v16 + 16) + 32);
  *v9 = v30;
  v50(v9, v49, v24);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v48(v9, v24);
  if ((v30 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100DCCAB4(v29, v28, v16, 2);
  sub_10002640C(v29, v28);
  v32 = *(*(v16 + 16) + 32);
  *v9 = v32;
  v50(v9, v49, v24);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v34 = v48;
  v48(v9, v24);
  if ((v32 & 1) == 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v35 = *(v16 + 16);

  v36 = sub_10001CEC4(v35, v16);

  if (v36 == 101)
  {
    v37 = *(*(v16 + 16) + 32);
    *v9 = v37;
    v50(v9, v49, v24);
    v38 = v37;
    LOBYTE(v37) = _dispatchPreconditionTest(_:)();
    v34(v9, v24);
    if (v37)
    {
      swift_beginAccess();
      v39 = *(v16 + 24);
      if (v39)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_18;
  }

  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  *&v51 = 0xD000000000000026;
  *(&v51 + 1) = 0x80000001015A5A40;
  v40._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v40);

  v41 = v51;
  sub_10089C7D0();
  swift_allocError();
  *v42 = v36;
  *(v42 + 8) = v41;
  swift_willThrow();
  v43 = *(*(v16 + 16) + 32);
  *v9 = v43;
  v50(v9, v49, v24);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v48(v9, v24);
  if ((v43 & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v39 = *(v16 + 24);
  if (v39)
  {
LABEL_12:
    sqlite3_finalize(v39);
    *(v16 + 24) = 0;
  }
}

uint64_t sub_100E166B4(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A050F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v23, v15, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 16))(v11, v24, v8);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_100025668(v15, v18 + v16, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 32))(v18 + v17, v11, v8);
  aBlock[4] = sub_100E58E18;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4C40;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v29 + 8))(v5, v21);
  (*(v26 + 8))(v7, v28);
}

uint64_t sub_100E16B2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100E07F54();
  if (v3)
  {
    if ((*(v3 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion + 8) & 1) == 0)
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v4 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v6 = UUID.uuidString.getter();
      v8 = v7;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v6;
      *(inited + 40) = v8;
      v9 = static os_log_type_t.default.getter();
      sub_100005404(v4, &_mh_execute_header, v9, "Actually setting BoardDidNotCrash for board %{public}@", 54, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      sub_100E16D2C(a2, 0, 1);
      sub_100DE02C4(a2, &unk_1018A4C78, sub_100E58E54, &unk_1018A4C90);
    }
  }

  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E16D2C(uint64_t a1, sqlite3_int64 a2, int a3)
{
  v55 = a3;
  v53 = a2;
  v54 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v57 = enum case for DispatchPredicate.onQueue(_:);
  v58 = v10;
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v13 = v5;
  v56 = v6 + 8;
  v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = v6 + 104;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v16 = sub_10001CC04(v15, 0xD000000000000053, 0x80000001015A3060);

  if (v4)
  {
    return result;
  }

  if (v55)
  {
    v18 = *(*(v16 + 16) + 32);
    *v8 = v18;
    v19 = v57;
    v20 = v13;
    v58(v8, v57, v13);
    v21 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    v12(v8, v13);
    if (v18)
    {
      swift_beginAccess();
      sqlite3_bind_null(*(v16 + 24), 1);
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_100034254(v53, 1);
  v20 = v13;
  v19 = v57;
LABEL_7:
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v22 = sub_10084DAE4();
  v23 = v14;
  v24 = v20;
  v26 = v25;
  v27 = v19;
  v28 = v22;
  v29 = *(*(v16 + 16) + 32);
  *v8 = v29;
  v52 = v23;
  v58(v8, v27, v24);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v51 = v12;
  v12(v8, v24);
  if ((v29 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_100DCCAB4(v28, v26, v16, 2);
  sub_10002640C(v28, v26);
  v31 = *(*(v16 + 16) + 32);
  *v8 = v31;
  v32 = v58;
  v58(v8, v57, v24);
  v33 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v34 = v51;
  v51(v8, v24);
  if ((v31 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v35 = *(v16 + 16);

  v36 = sub_10001CEC4(v35, v16);

  if (v36 == 101)
  {
    v37 = *(*(v16 + 16) + 32);
    *v8 = v37;
    v32(v8, v57, v24);
    v38 = v37;
    LOBYTE(v37) = _dispatchPreconditionTest(_:)();
    v34(v8, v24);
    if (v37)
    {
      swift_beginAccess();
      v39 = *(v16 + 24);
      if (v39)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_22;
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  v50 = v36;
  _StringGuts.grow(_:)(52);
  v40._object = 0x80000001015A30C0;
  v40._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v40);
  v59 = v53;
  v60 = v55 & 1;
  sub_1005B981C(&qword_1019FB5C8);
  v41._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x616F6220726F6620;
  v42._object = 0xEB00000000206472;
  String.append(_:)(v42);
  v43._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v43);

  v44 = v61;
  v45 = v62;
  sub_10089C7D0();
  swift_allocError();
  *v46 = v50;
  *(v46 + 8) = v44;
  *(v46 + 16) = v45;
  swift_willThrow();
  v47 = *(*(v16 + 16) + 32);
  *v8 = v47;
  v32(v8, v57, v24);
  v48 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v34(v8, v24);
  if ((v47 & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v39 = *(v16 + 24);
  if (v39)
  {
LABEL_15:
    sqlite3_finalize(v39);
    *(v16 + 24) = 0;
  }
}

uint64_t sub_100E17384(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = sub_100E07F54();
  if (v2)
  {
    return result;
  }

  v31 = 0;
  if (!result || (v13 = sub_100EA2998(result)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_14:
      v25 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v27 = UUID.uuidString.getter();
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.default.getter();
      sub_100005404(v25, &_mh_execute_header, v30, "Attempted to set the canvas dot grid enabled state on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 148, 2, inited);
      swift_setDeallocating();
      return sub_100005070(inited + 32);
    }

LABEL_17:
    swift_once();
    goto LABEL_14;
  }

  v14 = v13;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_10146BDE0;
  v17 = sub_1000053B0();
  v18 = v17;
  v32 = a1 & 1;
  v19 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v19 = 0x65736C6166;
  }

  v20 = 0xE500000000000000;
  if (a1)
  {
    v20 = 0xE400000000000000;
  }

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = v17;
  *(v16 + 32) = v19;
  *(v16 + 40) = v20;
  v21 = UUID.uuidString.getter();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v18;
  *(v16 + 72) = v21;
  *(v16 + 80) = v22;
  v23 = static os_log_type_t.default.getter();
  sub_100005404(v15, &_mh_execute_header, v23, "Set canvas dot grid visible to [%{public}@] for board identifier: %{public}@", 76, 2, v16);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_beginAccess();
  v33 = v32;
  type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v24 = v31;
  sub_100E06DBC(v14, 0, 0, 0xF000000000000000, 0);

  if (!v24)
  {
  }

  return result;
}

uint64_t sub_100E177B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  sub_10002FA9C(a4, v5);
  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E17A64(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  result = sub_100E07F54();
  if (v2)
  {
    return result;
  }

  v32 = 0;
  if (!result || (v13 = sub_100EA2998(result)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_16:
      v24 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v26 = UUID.uuidString.getter();
      v28 = v27;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v26;
      *(inited + 40) = v28;
      v29 = static os_log_type_t.default.getter();
      sub_100005404(v24, &_mh_execute_header, v29, "Attempted to set the connector mode enabled state on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 147, 2, inited);
      swift_setDeallocating();
      return sub_100005070(inited + 32);
    }

LABEL_19:
    swift_once();
    goto LABEL_16;
  }

  v14 = v13;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v31 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v15 = swift_initStackObject();
  v16 = v15;
  *(v15 + 16) = xmmword_10146BDE0;
  v33 = a1 & 1;
  if (a1)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (a1)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  *(v15 + 56) = &type metadata for String;
  v19 = sub_1000053B0();
  v16[8] = v19;
  v16[4] = v17;
  v16[5] = v18;
  v20 = UUID.uuidString.getter();
  v16[12] = &type metadata for String;
  v16[13] = v19;
  v16[9] = v20;
  v16[10] = v21;
  v22 = static os_log_type_t.default.getter();
  sub_100005404(v31, &_mh_execute_header, v22, "Set connector mode enabled to [%{public}@] for board identifier: %{public}@", 75, 2, v16);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_beginAccess();
  v34 = v33;
  type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v23 = v32;
  sub_100E06DBC(v14, 0, 0, 0xF000000000000000, 0);

  if (!v23)
  {
  }

  return result;
}

uint64_t sub_100E17EA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v24 = a3;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v25 = a1;

  v17 = 0;
  while (v14)
  {
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_10000C83C(*(v25 + 48) + *(v22 + 72) * (v19 | (v18 << 6)), v10, type metadata accessor for CRLBoardIdentifierAndValue);
    v20 = v10[*(v23 + 20)];
    sub_10000C83C(v10, v7, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v10, type metadata accessor for CRLBoardIdentifierAndValue);
    v24(v20, v7);
    result = sub_100026028(v7, type metadata accessor for CRLBoardIdentifier);
    if (v3)
    {
LABEL_11:

      return 1;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_11;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100E180FC(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  result = sub_100E07F54();
  if (v2)
  {
    return result;
  }

  v32 = 0;
  if (!result || (v13 = sub_100EA2998(result)) == 0)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_16:
      v24 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v26 = UUID.uuidString.getter();
      v28 = v27;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v26;
      *(inited + 40) = v28;
      v29 = static os_log_type_t.default.getter();
      sub_100005404(v24, &_mh_execute_header, v29, "Attempted to set the scenes navigator open state on a board that does not exist or does not have associated metadata. Board identifier: %{public}@", 146, 2, inited);
      swift_setDeallocating();
      return sub_100005070(inited + 32);
    }

LABEL_19:
    swift_once();
    goto LABEL_16;
  }

  v14 = v13;
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v31 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v15 = swift_initStackObject();
  v16 = v15;
  *(v15 + 16) = xmmword_10146BDE0;
  v33 = a1 & 1;
  if (a1)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (a1)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  *(v15 + 56) = &type metadata for String;
  v19 = sub_1000053B0();
  v16[8] = v19;
  v16[4] = v17;
  v16[5] = v18;
  v20 = UUID.uuidString.getter();
  v16[12] = &type metadata for String;
  v16[13] = v19;
  v16[9] = v20;
  v16[10] = v21;
  v22 = static os_log_type_t.default.getter();
  sub_100005404(v31, &_mh_execute_header, v22, "Set scenes navigator open to [%{public}@] for board identifier: %{public}@", 74, 2, v16);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_beginAccess();
  v34 = v33;
  type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  swift_endAccess();
  v23 = v32;
  sub_100E06DBC(v14, 0, 0, 0xF000000000000000, 0);

  if (!v23)
  {
  }

  return result;
}

uint64_t sub_100E18518(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLBoardIdentifier);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLBoardIdentifier);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA21D0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5028;
  v21 = _Block_copy(aBlock);
  v22 = v3;

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

void sub_100E188D0(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v4 = sub_100E18A88();
  v5 = v4;
  a3(v4, 0);
}

void (*sub_100E18A88())(void *, uint64_t)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v55 = enum case for DispatchPredicate.onQueue(_:);
  v56 = v7;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v54 = v9;
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD00000000000003CLL, 0x80000001015A3E30);
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v14 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = v17;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v16;
      *(inited + 40) = v18;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v19, "Failed to fetch a ckShareData from board record with error %@", 61, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v9;
    }

LABEL_25:
    swift_once();
    goto LABEL_5;
  }

  v12 = v11;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v13 = sub_10084DAE4();
  v53 = v21;
  v22 = v13;
  v23 = *(*(v12 + 16) + 32);
  *v5 = v23;
  v56(v5, v55, v2);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v25 = v54;
  v54(v5, v2);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v26 = v22;
  v27 = v22;
  v28 = v53;
  sub_100DCCAB4(v27, v53, v12, 1);
  sub_10002640C(v26, v28);
  v29 = *(*(v12 + 16) + 32);
  *v5 = v29;
  v56(v5, v55, v2);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v25(v5, v2);
  if ((v29 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  type metadata accessor for SQLiteRowIterator();
  v31 = swift_initStackObject();
  v31[4] = 0;
  v31[5] = 1;
  v31[2] = v12;
  v31[3] = 0;

  v32 = sub_10001E1D0();
  if (v32)
  {
    v33 = v32;
    v34 = *(*(v32 + 16) + 32);
    *v5 = v34;
    v56(v5, v55, v2);
    v35 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v54(v5, v2);
    if (v34)
    {
      v36 = sub_10002C280(0, v33);
      if (v36)
      {
        v53 = v33;
        v38 = sub_100024DD4(v36, v37);
        v40 = v39;
        v52 = sub_100006370(0, &qword_101A1AEB0);
        sub_100006370(0, &qword_1019F52C0);
        v50 = v38;
        v51 = v40;
        v41 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        v9 = v41;
        if (v41)
        {
          v45 = v41;
          sub_100CE94A4();
        }

        sub_10002640C(v50, v51);
      }

      else
      {
        v9 = 0;
      }

      swift_setDeallocating();
      sub_10001E364(v31[3], v31[4], v31[5]);
      v46 = *(*(v12 + 16) + 32);
      *v5 = v46;
      v56(v5, v55, v2);
      v47 = v46;
      LOBYTE(v46) = _dispatchPreconditionTest(_:)();
      v54(v5, v2);
      if (v46)
      {
        v44 = (v12 + 24);
        swift_beginAccess();
        goto LABEL_21;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  swift_setDeallocating();
  sub_10001E364(v31[3], v31[4], v31[5]);
  v42 = *(*(v12 + 16) + 32);
  *v5 = v42;
  v56(v5, v55, v2);
  v43 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v25(v5, v2);
  if ((v42 & 1) == 0)
  {
    goto LABEL_30;
  }

  v44 = (v12 + 24);
  swift_beginAccess();
  v9 = 0;
LABEL_21:
  v48 = *(v12 + 24);
  if (v48)
  {
    sqlite3_finalize(v48);
    *v44 = 0;
  }

  return v9;
}

uint64_t sub_100E19284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_101A21CE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_100E18518(a3, sub_100EA21A8, v10);
}

uint64_t sub_100E193D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, void))
{
  v9[2] = a1;
  v9[3] = a2;
  v10 = a3;
  v11 = a4;
  sub_10002FA9C(sub_100EA20DC, v9);
  sub_100DE02C4(a2, &unk_1018A4F98, sub_100EA2104, &unk_1018A4FB0);
  return a5(a4, 0);
}

uint64_t sub_100E19608(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_100E18A88();
  if (!v4)
  {
    v9 = v8;
    v10 = 0;
    if ((a3 & 1) != 0 && a4)
    {
      if (v8)
      {
        sub_100006370(0, &qword_1019F52C0);
        v11 = v9;
        v12 = a4;
        v13 = static NSObject.== infix(_:_:)();

        v10 = v13 ^ 1;
      }

      else
      {
        v10 = 1;
      }
    }

    sub_100E196EC(a2, a4, v10 & 1);
  }

  return 1;
}

uint64_t sub_100E196EC(uint64_t a1, void *a2, char a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (a2)
    {
      v16 = a2;
      sub_100CE94A4();
      v17 = sub_100EEA848();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xF000000000000000;
    }

    sub_100DFE34C(a1, v17, v19, a3 & 1);
    if (!v4)
    {
      v20 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
      swift_beginAccess();
      v21 = *(v5 + v20);
      if (*(v21 + 16))
      {
        v22 = sub_1000486F0(a1);
        if (v23)
        {
          *(*(*(v21 + 56) + 8 * v22) + 17) = 0;
        }
      }

      swift_endAccess();
    }

    return sub_100025870(v17, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E198CC(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v36 = a5;
  v37 = a4;
  v33 = a2;
  v34 = a3;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&qword_101A21CE0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  (*(v15 + 16))(&v32 - v16, a1, v14);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  (*(v15 + 32))(v19 + v18, v17, v14);
  v20 = v33;
  v35 = *&v33[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v34, v13, type metadata accessor for CRLBoardIdentifier);
  v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v22 = v21 + v12;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  sub_100025668(v13, v23 + v21, type metadata accessor for CRLBoardIdentifier);
  *(v23 + v22) = v36;
  v24 = v37;
  *(v23 + (v22 & 0xFFFFFFFFFFFFFFF8) + 8) = v37;
  v25 = (v23 + (((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_100EA6328;
  v25[1] = v19;
  aBlock[4] = sub_100EA2038;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4F60;
  v26 = _Block_copy(aBlock);
  v27 = v24;

  v28 = v20;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v30 = v38;
  v29 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v42 + 8))(v30, v29);
  (*(v40 + 8))(v9, v41);
}

uint64_t sub_100E19DAC(void *a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(&qword_101A21CE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v3 = a1;
    sub_1005B981C(&qword_101A21CE0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100E19E2C@<X0>(sqlite3_int64 a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_100E19E60(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100E19E60(sqlite3_int64 a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v51 = enum case for DispatchPredicate.onQueue(_:);
  v52 = v10;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v50 = *(v5 + 8);
  v50(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_6:
    v17 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    *(inited + 56) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 64) = v22;
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v22;
    *(inited + 72) = v23;
    *(inited + 80) = v24;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v25, "Failed to fetch lastUpgradedVersion for board [%{public}@] from the database with error %@", 90, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_willThrow();
    return a1;
  }

  v53 = a1;
  a1 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000045, 0x80000001015AC2D0);
  if (v2)
  {
    v54 = v2;

    if (qword_1019F2258 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v14 = v13;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v15 = sub_10084DAE4();
  v54 = 0;
  v49 = v16;
  v27 = v15;
  v28 = *(*(v14 + 16) + 32);
  *v8 = v28;
  v52(v8, v51, v4);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v30 = v50;
  v50(v8, v4);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v31 = v27;
  v32 = v27;
  v33 = v49;
  v34 = v54;
  sub_100DCCAB4(v32, v49, v14, 1);
  v54 = v34;
  sub_10002640C(v31, v33);
  v35 = *(*(v14 + 16) + 32);
  *v8 = v35;
  v52(v8, v51, v4);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v30(v8, v4);
  if ((v35 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SQLiteRowIterator();
  v37 = swift_initStackObject();
  v37[4] = 0;
  v37[5] = 1;
  v37[2] = v14;
  v37[3] = 0;

  v38 = sub_10001E1D0();
  if (v38)
  {
    a1 = sub_100028894(0, v38);
    LODWORD(v49) = v39;
  }

  else
  {

    a1 = 0;
    LODWORD(v49) = 1;
  }

  v40 = *(*(v14 + 16) + 32);
  *v8 = v40;
  v52(v8, v51, v4);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v50(v8, v4);
  if ((v40 & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  v42 = *(v14 + 24);
  if (v42)
  {
    sqlite3_finalize(v42);
    *(v14 + 24) = 0;
  }

  if (v49)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_18:
      v43 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_10146C6B0;
      v45 = UUID.uuidString.getter();
      v47 = v46;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = sub_1000053B0();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v48, "Failed to fetch lastUpgradedVersion for board [%{public}@] from the database, returning the current version", 107, 2, v44);
      swift_setDeallocating();
      sub_100005070(v44 + 32);
      return sub_10001FF1C();
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  return a1;
}

uint64_t sub_100E1A4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v27 = *(v11 - 8);
  v28 = v11;
  __chkstk_darwin(v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a2, v17, type metadata accessor for CRLBoardIdentifier);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v26[0];
  *(v20 + 16) = v4;
  *(v20 + 24) = v21;
  sub_100025668(v17, v20 + v18, type metadata accessor for CRLBoardIdentifier);
  v22 = (v20 + v19);
  *v22 = a3;
  v22[1] = a4;
  aBlock[4] = sub_100EA5EF4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6E80;
  v23 = _Block_copy(aBlock);
  v24 = v4;
  sub_10002E7A8(a3);
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v29 + 8))(v10, v8);
  (*(v27 + 8))(v13, v28);
}

uint64_t sub_100E1A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  result = sub_10002FA9C(sub_100EA5F88, v6);
  if (a4)
  {
    return a4(0);
  }

  return result;
}

uint64_t sub_100E1AAA8(sqlite3_int64 a1, void (*a2)(void *, uint64_t))
{
  v43 = a1;
  v44 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v46 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = v4;
  v45 = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD000000000000046, 0x80000001015AC250);

  if (v3)
  {
    return result;
  }

  sub_100034254(v43, 1);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v16 = sub_10084DAE4();
  v41 = v17;
  v18 = v16;
  v19 = *(*(v14 + 16) + 32);
  *v8 = v19;
  v20 = v42;
  v45(v8, v46, v42);
  v21 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v12(v8, v20);
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = v41;
  sub_100DCCAB4(v18, v41, v14, 2);
  sub_10002640C(v18, v22);
  v23 = *(*(v14 + 16) + 32);
  *v8 = v23;
  v24 = v45;
  v45(v8, v46, v20);
  v25 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v12(v8, v20);
  if ((v23 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v26 = *(v14 + 16);

  v27 = sub_10001CEC4(v26, v14);

  if (v27 == 101)
  {
    v28 = *(*(v14 + 16) + 32);
    *v8 = v28;
    v24(v8, v46, v20);
    v29 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    v12(v8, v20);
    if (v28)
    {
      swift_beginAccess();
      v30 = *(v14 + 24);
      if (v30)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  LODWORD(v41) = v27;
  _StringGuts.grow(_:)(49);

  v48 = 0xD000000000000022;
  v49 = 0x80000001015AC2A0;
  v47 = v43;
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0x616F6220726F6620;
  v32._object = 0xEB00000000206472;
  String.append(_:)(v32);
  v33._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v33);

  v44 = v12;
  v34 = v24;
  v35 = v48;
  v36 = v49;
  sub_10089C7D0();
  swift_allocError();
  *v37 = v41;
  *(v37 + 8) = v35;
  *(v37 + 16) = v36;
  swift_willThrow();
  v38 = *(*(v14 + 16) + 32);
  *v8 = v38;
  v34(v8, v46, v20);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v44(v8, v20);
  if ((v38 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v30 = *(v14 + 24);
  if (v30)
  {
LABEL_11:
    sqlite3_finalize(v30);
    *(v14 + 24) = 0;
  }
}

uint64_t sub_100E1B004(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v13 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLBoardDataStoreChangeSet);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLBoardDataStoreChangeSet);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA25A4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A52F8;
  v21 = _Block_copy(aBlock);
  v22 = v3;

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

uint64_t sub_100E1B3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5[2] = a1;
  v5[3] = a2;
  sub_10002FA9C(sub_100034D68, v5);
  sub_100E1D84C();
  return a3(0);
}

uint64_t sub_100E1B5C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v209 = *(v4 - 8);
  v210 = v4;
  __chkstk_darwin(v4);
  v207 = &v201[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v208 = type metadata accessor for DispatchQoS();
  v206 = *(v208 - 8);
  __chkstk_darwin(v208);
  v205 = &v201[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v213 = sub_1005B981C(&qword_101A21E08);
  __chkstk_darwin(v213);
  v214 = &v201[-v7];
  v8 = type metadata accessor for UUID();
  v230 = *(v8 - 8);
  __chkstk_darwin(v8);
  v222 = &v201[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v224 = &v201[-v11];
  __chkstk_darwin(v12);
  v241 = &v201[-v13];
  __chkstk_darwin(v14);
  v243 = &v201[-v15];
  __chkstk_darwin(v16);
  v237 = &v201[-v17];
  __chkstk_darwin(v18);
  v20 = &v201[-v19];
  v21 = type metadata accessor for CRLBoardIdentifier(0);
  v211 = *(v21 - 8);
  __chkstk_darwin(v21 - 8);
  v23 = &v201[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  i = &v201[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v227 = v2;
  v29 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *i = v29;
  (*(v25 + 104))(i, enum case for DispatchPredicate.onQueue(_:), v24, v26);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(i, v24);
  if ((v31 & 1) == 0)
  {
    goto LABEL_230;
  }

  v34 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
  sub_10000C83C(a1 + v34[5], v23, type metadata accessor for CRLBoardIdentifier);
  v35 = *(v230 + 16);
  v36 = a1 + v34[6];
  v223 = v20;
  v238 = v35;
  v239 = (v230 + 16);
  v35(v20, v36, v8);
  v221 = v34;
  i = *(a1 + v34[7]);
  v32 = v23;
  v219 = a1;
  if (i)
  {

    v38 = v232;
    sub_100DFE838(v37, 0, 0, 0xF000000000000000, 1, 0);
    v232 = v38;
    if (v38)
    {

      (*(v230 + 8))(v223, v8);
      return sub_100026028(v32, type metadata accessor for CRLBoardIdentifier);
    }

    v41 = v39;

    LODWORD(i) = (v41 >> 8) & 1;

    a1 = v219;
  }

  v249 = *(a1 + v221[8]);
  if (*(a1 + v221[13]))
  {

    sub_10079BE48(v42);
  }

  else
  {
  }

  v244 = v8;
  v43 = *(v219 + v221[14]);
  v31 = v43;
  if (v43 >> 62)
  {
    goto LABEL_231;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v45 = _swiftEmptyArrayStorage;
  v226 = v32;
  v202 = i;
  if (v44)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    v46 = aBlock;
    sub_100776524(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      goto LABEL_235;
    }

    v47 = 0;
    v45 = aBlock[0];
    v48 = v31;
    *&v242 = v31 & 0xC000000000000001;
    v240 = v230 + 32;
    v49 = v237;
    v50 = v31;
    do
    {
      if (v242)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v51 = *(v48 + 8 * v47 + 32);
      }

      (*(*v51 + 264))();

      aBlock[0] = v45;
      v53 = v45[2];
      v52 = v45[3];
      if (v53 >= v52 >> 1)
      {
        sub_100776524(v52 > 1, v53 + 1, 1);
        v45 = aBlock[0];
      }

      ++v47;
      v45[2] = v53 + 1;
      (*(v230 + 32))(v45 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v53, v49, v244);
      v48 = v50;
    }

    while (v44 != v47);
    v31 = v50;
    v32 = v226;
  }

  v240 = sub_100E93A84(v45);

  sub_10079BE48(v54);
  v248 = _swiftEmptySetSingleton;
  v46 = v249;
  i = sub_100DCEEA8(v249, sub_100EA61F8, 0, sub_100EA6310, 0, sub_100EA6314, 0);

  v55 = i;
  v216 = i;
  if (i >> 62)
  {
    v149 = _CocoaArrayWrapper.endIndex.getter();
    v55 = v216;
    v56 = v149;
  }

  else
  {
    v56 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v56)
  {
    v57 = 0;
    v229 = 0;
    v215 = v55 & 0xC000000000000001;
    v203 = v55 + 32;
    v204 = v55 & 0xFFFFFFFFFFFFFF8;
    v237 = (v240 + 56);
    *&v242 = v230 + 8;
    v217 = xmmword_10146C6B0;
    v212 = v56;
    while (1)
    {
      if (v215)
      {
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v57 >= *(v204 + 16))
        {
          goto LABEL_234;
        }
      }

      v59 = __OFADD__(v57, 1);
      v60 = v57 + 1;
      if (v59)
      {
        goto LABEL_229;
      }

      v218 = v60;
      v220 = v58;
      v61 = *(v58 + 16);
      v246 = _swiftEmptyArrayStorage;
      swift_retain_n();
      v46 = &v246;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v226;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v62 = v246;
      if (!(v246 >> 62))
      {
        if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        goto LABEL_26;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        break;
      }

LABEL_26:

LABEL_27:

      v57 = v218;
      v55 = v216;
      if (v218 == v212)
      {
        goto LABEL_123;
      }
    }

    v225 = v61;
    while (1)
    {
      i = v62 & 0x8000000000000000;
      v32 = v62 >> 62;
      if (v62 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          v44 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_12;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_206;
        }
      }

      else if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_205;
      }

      if ((v62 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v63 = v62 & 0xFFFFFFFFFFFFFF8;
        if (!v32)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_207;
        }

        v31 = *(v62 + 32);

        v63 = v62 & 0xFFFFFFFFFFFFFF8;
        if (!v32)
        {
LABEL_43:
          v64 = *(v63 + 16);
          if (!v64)
          {
            goto LABEL_213;
          }

          goto LABEL_52;
        }
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_213;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_214;
      }

      v64 = _CocoaArrayWrapper.endIndex.getter();
LABEL_52:
      v65 = v64 - 1;
      if (__OFSUB__(v64, 1))
      {
        goto LABEL_208;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v32)
        {
          v66 = (v62 & 0xFFFFFFFFFFFFFF8);
          v32 = &qword_1019F37C0;
          if (v65 <= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

LABEL_59:
        _CocoaArrayWrapper.endIndex.getter();
        v32 = &qword_1019F37C0;
        goto LABEL_60;
      }

      if (v32)
      {
        goto LABEL_59;
      }

      v32 = &qword_1019F37C0;
LABEL_60:
      v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v66 = (v62 & 0xFFFFFFFFFFFFFF8);
      i = v62 & 0x8000000000000000;
LABEL_61:

      v231 = v62 >> 62;
      v228 = i;
      if (v62 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (__OFSUB__(result, 1))
        {
          __break(1u);
LABEL_275:
          __break(1u);
          return result;
        }

        memmove(v66 + 4, v66 + 5, 8 * (result - 1));
        v108 = _CocoaArrayWrapper.endIndex.getter();
        LODWORD(i) = v108;
        v67 = v108 - 1;
        if (__OFSUB__(v108, 1))
        {
          goto LABEL_209;
        }
      }

      else
      {
        i = v66[2];
        memmove(v66 + 4, v66 + 5, 8 * i - 8);
        v67 = i - 1;
        if (__OFSUB__(i, 1))
        {
          goto LABEL_209;
        }
      }

      v66[2] = v67;
      v68 = *v31;
      v69 = *(v31 + *(*v31 + 112));
      v233 = v31;
      if (v69)
      {
        v70 = v243;
        (*(*v69 + 264))();
        v71 = *(v240 + 16);
        v235 = v66;
        if (v71)
        {
          v234 = v62;
          v72 = v240;
          sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
          *&v236 = v69;

          v73 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v74 = -1 << *(v72 + 32);
          v75 = v73 & ~v74;
          if ((*&v237[(v75 >> 3) & 0xFFFFFFFFFFFFFF8] >> v75))
          {
            v76 = ~v74;
            v77 = *(v230 + 72);
            while (1)
            {
              v78 = v241;
              v79 = v244;
              v238(v241, *(v240 + 48) + v77 * v75, v244);
              sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID);
              v80 = dispatch thunk of static Equatable.== infix(_:_:)();
              v81 = *v242;
              (*v242)(v78, v79);
              if (v80)
              {
                break;
              }

              v75 = (v75 + 1) & v76;
              v70 = v243;
              if (((*&v237[(v75 >> 3) & 0xFFFFFFFFFFFFFF8] >> v75) & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v102 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = v217;
            v104 = UUID.uuidString.getter();
            v106 = v105;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v104;
            *(inited + 40) = v106;
            v107 = static os_log_type_t.default.getter();
            sub_100005404(v102, &_mh_execute_header, v107, "Saving a peer server synced added item %{public}@", 49, 2, inited);
            swift_setDeallocating();
            sub_100005070(inited + 32);
            v87 = 1;
            v31 = v233;
            v62 = v234;
            v66 = v235;
            v82 = v236;
            goto LABEL_76;
          }

LABEL_69:
          if (v229)
          {
            v229 = 1;
            v62 = v234;
            v82 = v236;
LABEL_75:
            v84 = v224;
            v85 = v244;
            v238(v224, v70, v244);
            v86 = v241;
            sub_100E6AF38(v241, v84);
            v81 = *v242;
            (*v242)(v86, v85);
            v87 = 0;
            v31 = v233;
            v66 = v235;
LABEL_76:
            v88 = v232;
            sub_100DF00A0(v82, v226, v87, 0, 0xF000000000000000, 1, 2, 0, 0xF000000000000000, 0, 0);
            v232 = v88;
            if (v88)
            {

              v109 = v244;
              v81(v243, v244);

              v81(v223, v109);
              sub_100026028(v226, type metadata accessor for CRLBoardIdentifier);
            }

            v81(v243, v244);
            v68 = *v31;
            goto LABEL_78;
          }

          v62 = v234;
          v82 = v236;
        }

        else
        {

          v82 = v69;
          if (v229)
          {
            v229 = 1;
            goto LABEL_75;
          }
        }

        v83 = *(sub_100743DF0() + 16);

        v229 |= v83 != 0;
        goto LABEL_75;
      }

LABEL_78:
      v89 = *(v68 + 120);
      swift_beginAccess();
      v32 = *(v31 + v89);
      i = v32 >> 62;
      if (v32 >> 62)
      {
        *&v236 = _CocoaArrayWrapper.endIndex.getter();
        v90 = v231;
        if (!v231)
        {
LABEL_80:
          v91 = v66[2];
          goto LABEL_81;
        }
      }

      else
      {
        *&v236 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v90 = v231;
        if (!v231)
        {
          goto LABEL_80;
        }
      }

      v91 = _CocoaArrayWrapper.endIndex.getter();
LABEL_81:
      v31 = v91 + v236;
      if (__OFADD__(v91, v236))
      {
        goto LABEL_210;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v90)
        {
          goto LABEL_89;
        }

LABEL_88:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_89;
      }

      if (v90)
      {
        goto LABEL_88;
      }

      if (v31 <= v66[3] >> 1)
      {
        v234 = v62;
        goto LABEL_90;
      }

LABEL_89:
      v234 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v66 = (v234 & 0xFFFFFFFFFFFFFF8);
LABEL_90:
      v92 = v66;
      v93 = v66[2];
      v235 = v92;
      v94 = v92[3];
      if (i)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
        if (v31)
        {
LABEL_92:
          if (((v94 >> 1) - v93) < v236)
          {
            goto LABEL_212;
          }

          v46 = v235;
          v95 = &v235[v93 + 4];
          if (i)
          {
            if (v31 < 1)
            {
              goto LABEL_223;
            }

            v96 = v32;
            v32 = &unk_1014B67B0;
            sub_10001A2F8(&qword_101A21E20, &qword_101A21E18);
            for (i = 0; i != v31; ++i)
            {
              sub_1005B981C(&qword_101A21E18);
              v97 = sub_100777A74(aBlock, i, v96);
              v99 = *v98;

              (v97)(aBlock, 0);
              *(v95 + 8 * i) = v99;
            }

            v46 = v235;
          }

          else
          {
            LODWORD(i) = v32 & 0xFFFFFFF8;
            sub_1005B981C(&qword_1019F6CD8);
            swift_arrayInitWithCopy();
          }

          v62 = v234;
          if (v236 > 0)
          {
            v100 = *(v46 + 16);
            v59 = __OFADD__(v100, v236);
            v101 = v100 + v236;
            if (v59)
            {
              goto LABEL_222;
            }

            *(v46 + 16) = v101;
          }

          goto LABEL_105;
        }
      }

      else
      {
        v31 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
          goto LABEL_92;
        }
      }

      v46 = v235;
      v62 = v234;
      if (v236 > 0)
      {
        goto LABEL_211;
      }

LABEL_105:
      if (v62 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_118:

          v32 = v226;
          goto LABEL_27;
        }
      }

      else if (!*(v46 + 16))
      {
        goto LABEL_118;
      }
    }
  }

  v229 = 0;
LABEL_123:
  v46 = v55;

  v110 = sub_100DCEEA8(*(v219 + v221[9]), sub_100EA61F8, 0, sub_100EA6310, 0, sub_100EA6314, 0);
  v111 = v110;
  v234 = v110;
  if (v110 >> 62)
  {
    goto LABEL_236;
  }

  v112 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v113 = v230;
  if (!v112)
  {
LABEL_237:

    v46 = *(v219 + v221[10]);
    if (v46 >> 62)
    {
      goto LABEL_264;
    }

    v150 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (j = v230; v150; j = v230)
    {
      v152 = 0;
      *&v242 = *(v219 + v221[11]);
      v243 = (v46 & 0xC000000000000001);
      v237 = (v46 & 0xFFFFFFFFFFFFFF8);
      v153 = (j + 8);
      v236 = xmmword_10146BDE0;
      v239 = (j + 8);
      v240 = v150;
      v241 = v46;
      while (1)
      {
        if (v243)
        {
          v154 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v152 >= *(v237 + 2))
          {
            goto LABEL_262;
          }

          v154 = *(v46 + 8 * v152 + 32);
        }

        v155 = v152 + 1;
        if (__OFADD__(v152, 1))
        {
          break;
        }

        v156 = v222;
        (*(*v154 + 264))();
        if (sub_1012CD63C(v156, v242))
        {
          v157 = v214;
          v158 = v232;
          v159 = sub_100DEF7D4(v214, v156, v32);
          v232 = v158;
          if (v158)
          {

            goto LABEL_259;
          }

          v161 = *(v213 + 64);
          *&v157[*(v213 + 48)] = v159;
          v157[v161] = v160 & 1;
          if ((v160 & 1) == 0)
          {
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v238 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0);
            v162 = swift_initStackObject();
            *(v162 + 16) = v236;
            v163 = UUID.uuidString.getter();
            v165 = v164;
            *(v162 + 56) = &type metadata for String;
            v166 = sub_1000053B0();
            *(v162 + 64) = v166;
            *(v162 + 32) = v163;
            *(v162 + 40) = v165;
            v167 = v226;
            v168 = UUID.uuidString.getter();
            *(v162 + 96) = &type metadata for String;
            *(v162 + 104) = v166;
            *(v162 + 72) = v168;
            *(v162 + 80) = v169;
            v170 = static os_log_type_t.default.getter();
            sub_100005404(v238, &_mh_execute_header, v170, "Create record for item %{public}@ we want to force writing a delete for. For Board: %{public}@", 94, 2, v162);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            v32 = v167;
            swift_arrayDestroy();
            v171 = v232;
            sub_100DF00A0(v154, v167, 0, 0, 0xF000000000000000, 1, 2, 0, 0xF000000000000000, 0, 0);
            v232 = v171;
            if (v171)
            {

              sub_10000CAAC(v214, &qword_101A21E08);
LABEL_259:
              v177 = *v239;
              v175 = v32;
              v178 = v244;
              (*v239)(v222, v244);

              v177(v223, v178);
              return sub_100026028(v175, type metadata accessor for CRLBoardIdentifier);
            }

            v157 = v214;
          }

          sub_10000CAAC(v157, &qword_101A21E08);
          v153 = v239;
        }

        v172 = v222;
        v173 = v232;
        sub_100DFC224(v222, v32);
        v232 = v173;
        if (v173)
        {

          v174 = *v153;
          v175 = v32;
          v176 = v244;
          (*v153)(v172, v244);

          v174(v223, v176);
          return sub_100026028(v175, type metadata accessor for CRLBoardIdentifier);
        }

        (*v153)(v172, v244);

        ++v152;
        v46 = v241;
        if (v155 == v240)
        {
          goto LABEL_265;
        }
      }

      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      v150 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_265:
    v179 = *(v219 + v221[12]);
    if (*(v179 + 16))
    {
      v180 = v232;
      sub_100E1DF3C(v179, v32, 0);
      v232 = v180;
      if (v180)
      {

        (*(v230 + 8))(v223, v244);
        return sub_100026028(v32, type metadata accessor for CRLBoardIdentifier);
      }

      v181 = v248;
    }

    else
    {
      v181 = v248;
    }

    sub_1005B981C(&unk_101A19BD0);
    v182 = (*(v211 + 80) + 32) & ~*(v211 + 80);
    v183 = swift_allocObject();
    v242 = xmmword_10146C6B0;
    *(v183 + 16) = xmmword_10146C6B0;
    v184 = v226;
    sub_10000C83C(v226, v183 + v182, type metadata accessor for CRLBoardIdentifier);
    v243 = sub_1005BF2F8(v183);
    swift_setDeallocating();
    sub_100026028(v183 + v182, type metadata accessor for CRLBoardIdentifier);
    swift_deallocClassInstance();
    sub_1005B981C(&qword_101A21E10);
    v185 = (sub_1005B981C(&qword_101A14610) - 8);
    v186 = (*(*v185 + 80) + 32) & ~*(*v185 + 80);
    v187 = swift_allocObject();
    *(v187 + 16) = v242;
    v188 = v187 + v186;
    v189 = v185[14];
    sub_10000C83C(v184, v188, type metadata accessor for CRLBoardIdentifier);
    *(v188 + v189) = v181;

    v190 = sub_100BD9514(v187);
    swift_setDeallocating();
    sub_10000CAAC(v188, &qword_101A14610);
    v191 = v243;
    swift_deallocClassInstance();
    if (*(v191 + 2))
    {
      sub_100006370(0, &qword_1019F2D90);
      *&v242 = v181;
      v241 = static OS_dispatch_queue.main.getter();
      v192 = swift_allocObject();
      v193 = v227;
      *(v192 + 16) = v227;
      *(v192 + 24) = v191;
      *(v192 + 32) = v202;
      *(v192 + 33) = v229 & 1;
      *(v192 + 40) = v190;
      aBlock[4] = sub_10007A268;
      aBlock[5] = v192;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018A5348;
      v194 = _Block_copy(aBlock);
      v195 = v193;

      v196 = v205;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400);
      sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
      v197 = v207;
      v198 = v210;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v199 = v241;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v194);

      (*(v209 + 8))(v197, v198);
      (*(v206 + 8))(v196, v208);
    }

    else
    {
    }

    v200 = v223;

    (*(v230 + 8))(v200, v244);
    return sub_100026028(v226, type metadata accessor for CRLBoardIdentifier);
  }

LABEL_125:
  v114 = 0;
  v233 = v111 & 0xC000000000000001;
  v228 = v111 & 0xFFFFFFFFFFFFFF8;
  v225 = v111 + 32;
  v240 = v113 + 8;
  v231 = v112;
  while (1)
  {
    if (v233)
    {
      v46 = v114;
      v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v114 >= *(v228 + 16))
      {
        goto LABEL_263;
      }
    }

    v59 = __OFADD__(v114, 1);
    v116 = (v114 + 1);
    if (v59)
    {
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      v112 = _CocoaArrayWrapper.endIndex.getter();
      v111 = v234;
      v113 = v230;
      if (!v112)
      {
        goto LABEL_237;
      }

      goto LABEL_125;
    }

    v235 = v116;
    *&v236 = v115;
    v117 = *(v115 + 16);
    v247 = _swiftEmptyArrayStorage;
    swift_retain_n();
    v46 = &v247;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v118 = *((v247 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v119 = *((v247 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v237 = v117;
    if (v118 >= v119 >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v120 = v247;
    if (!(v247 >> 62))
    {
      if (*((v247 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_136;
      }

      goto LABEL_126;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      break;
    }

LABEL_126:

    v114 = v235;
    v32 = v226;
    if (v235 == v231)
    {
      goto LABEL_237;
    }
  }

  while (1)
  {
LABEL_136:
    v32 = v120 & 0x8000000000000000;
    i = v120 >> 62;
    if (v120 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_215;
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_216;
      }
    }

    else if (!*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_215;
    }

    if ((v120 & 0xC000000000000001) != 0)
    {
      v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v122 = v120 & 0xFFFFFFFFFFFFFF8;
      if (!i)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (!*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_217;
      }

      v121 = *(v120 + 32);

      v122 = v120 & 0xFFFFFFFFFFFFFF8;
      if (!i)
      {
LABEL_141:
        v123 = *(v122 + 16);
        if (!v123)
        {
          goto LABEL_225;
        }

        goto LABEL_150;
      }
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_225;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_226;
    }

    v123 = _CocoaArrayWrapper.endIndex.getter();
LABEL_150:
    v124 = v123 - 1;
    if (__OFSUB__(v123, 1))
    {
      goto LABEL_218;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!i)
      {
        v31 = v120 & 0xFFFFFFFFFFFFFF8;
        if (v124 <= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_158;
        }

        goto LABEL_157;
      }

LABEL_156:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_157;
    }

    if (i)
    {
      goto LABEL_156;
    }

LABEL_157:
    v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v31 = v120 & 0xFFFFFFFFFFFFFF8;
    v32 = v120 & 0x8000000000000000;
LABEL_158:

    v125 = v120 >> 62;
    if (v120 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_275;
      }

      memmove((v31 + 32), (v31 + 40), 8 * (result - 1));
      v147 = _CocoaArrayWrapper.endIndex.getter();
      LODWORD(i) = v147;
      v126 = v147 - 1;
      if (__OFSUB__(v147, 1))
      {
        goto LABEL_219;
      }
    }

    else
    {
      i = *(v31 + 16);
      memmove((v31 + 32), (v31 + 40), 8 * i - 8);
      v126 = i - 1;
      if (__OFSUB__(i, 1))
      {
        goto LABEL_219;
      }
    }

    *&v242 = v32;
    v243 = v120;
    v32 = v31;
    *(v31 + 16) = v126;
    v127 = *v121;
    v128 = *(v121 + *(*v121 + 112));
    if (!v128)
    {
      goto LABEL_163;
    }

    v129 = v241;
    (*(*v128 + 264))();

    v130 = static UUID.== infix(_:_:)();
    v131 = *v240;
    (*v240)(v129, v244);
    v132 = v232;
    sub_100DF00A0(v128, v226, 0, 0, 0xF000000000000000, v130 & 1, 2, 0, 0xF000000000000000, 0, 0);
    v232 = v132;
    if (v132)
    {
      break;
    }

    v127 = *v121;
LABEL_163:
    v133 = *(v127 + 120);
    swift_beginAccess();
    v134 = *(v121 + v133);
    v46 = v134 >> 62;
    v120 = v243;
    v135 = v134;
    if (v134 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (!v125)
      {
LABEL_165:
        v136 = *(v32 + 16);
        i = v136 + v31;
        if (__OFADD__(v136, v31))
        {
          goto LABEL_220;
        }

        goto LABEL_166;
      }
    }

    else
    {
      v31 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v125)
      {
        goto LABEL_165;
      }
    }

    v148 = _CocoaArrayWrapper.endIndex.getter();
    i = v148 + v31;
    if (__OFADD__(v148, v31))
    {
      goto LABEL_220;
    }

LABEL_166:

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v125)
      {
        if (i <= *(v32 + 24) >> 1)
        {
          goto LABEL_173;
        }

        goto LABEL_172;
      }

LABEL_171:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_172;
    }

    if (v125)
    {
      goto LABEL_171;
    }

LABEL_172:
    v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v32 = v120 & 0xFFFFFFFFFFFFFF8;
LABEL_173:
    *&v242 = v121;
    i = *(v32 + 16);
    v137 = *(v32 + 24);
    v138 = v135;
    if (v46)
    {
      v141 = _CocoaArrayWrapper.endIndex.getter();
      v138 = v135;
      v139 = v141;
      if (!v141)
      {
LABEL_180:

        if (v31 > 0)
        {
          goto LABEL_221;
        }

        goto LABEL_188;
      }
    }

    else
    {
      v139 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v139)
      {
        goto LABEL_180;
      }
    }

    if (((v137 >> 1) - i) < v31)
    {
      goto LABEL_224;
    }

    v140 = v32 + 8 * i + 32;
    if (v46)
    {
      if (v139 < 1)
      {
        goto LABEL_228;
      }

      v238 = v31;
      v239 = v32;
      v243 = v120;
      v142 = v138;
      sub_10001A2F8(&qword_101A21E20, &qword_101A21E18);
      for (i = 0; i != v139; ++i)
      {
        sub_1005B981C(&qword_101A21E18);
        v143 = sub_100777A74(aBlock, i, v142);
        v46 = *v144;

        (v143)(aBlock, 0);
        *(v140 + 8 * i) = v46;
      }

      v120 = v243;
      v31 = v238;
      v32 = v239;
      if (v238 > 0)
      {
LABEL_186:
        v145 = *(v32 + 16);
        v59 = __OFADD__(v145, v31);
        v146 = v145 + v31;
        if (v59)
        {
          goto LABEL_227;
        }

        *(v32 + 16) = v146;
      }
    }

    else
    {
      v46 = v138 & 0xFFFFFFFFFFFFFF8;
      LODWORD(i) = v138;
      sub_1005B981C(&qword_1019F6CD8);
      swift_arrayInitWithCopy();

      if (v31 > 0)
      {
        goto LABEL_186;
      }
    }

LABEL_188:
    if (v120 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_126;
      }
    }

    else if (!*(v32 + 16))
    {
      goto LABEL_126;
    }
  }

  v131(v223, v244);
  sub_100026028(v226, type metadata accessor for CRLBoardIdentifier);
}

void sub_100E1D84C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (*(*&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database] + 24) != 1)
  {
    goto LABEL_5;
  }

  v33 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database];
  v34 = v0;
  v32 = objc_opt_self();
  LODWORD(v2) = [v32 _atomicIncrementAssertCount];
  v35 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v35);
  StaticString.description.getter();
  v0 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v12;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v2;
  v15 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v15;
  v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v16;
  *(inited + 72) = v0;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v1;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 6092;
  v18 = v35;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v0;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Vacuum cannot be performed when there is an open transaction on the database", 76, 2, _swiftEmptyArrayStorage);

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

  [v32 handleFailureInFunction:v25 file:v26 lineNumber:6092 isFatal:0 format:v27 args:v24];

  v0 = v34;
LABEL_5:
  v28 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_hasAttemptedVacuum;
  if ((v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_hasAttemptedVacuum] & 1) == 0)
  {
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.boardStore;
    v30 = static os_log_type_t.default.getter();
    sub_100005404(v29, &_mh_execute_header, v30, "Attempting to perform an incremental vacuum if needed", 53, 2, _swiftEmptyArrayStorage);
    v0[v28] = 1;
    sub_10089ACF0(0x200000, 0x100000);
  }
}

uint64_t sub_100E1DF3C(uint64_t a1, uint64_t a2, int a3)
{
  v23 = a3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  if (!v17)
  {
LABEL_6:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v17 = *(a1 + 64 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  while (1)
  {
    v20 = v19;
LABEL_9:

    sub_100E1E144(v21, a2, v23, 0, 0xF000000000000000, 0);
    if (v4)
    {
      break;
    }

    v17 &= v17 - 1;

    v19 = v20;
    if (!v17)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_100E1E144(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, void *a6)
{
  v8 = v7;
  v9 = v6;
  v153 = a6;
  v151 = a5;
  v148 = a4;
  LODWORD(v150) = a3;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v12 - 8);
  *&v147 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v149 = &v142 - v15;
  v16 = sub_1005B981C(&unk_101A341C0);
  v17 = *(v16 - 8);
  v154 = v16;
  v155 = v17;
  __chkstk_darwin(v16);
  v19 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v152 = &v142 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = (&v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22, v24);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  v31 = *(v23 + 8);
  v30 = (v23 + 8);
  v31(v26, v22);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v156 = a2;
  v157 = a1;
  v32 = *(a1 + 16);
  v33 = sub_100E213C8(a2, v32);
  v30 = v9;
  if (!v7)
  {
    v29 = v33;
    if (!v33)
    {
      v152 = v150 == 0;
      v42 = v154;
      if (v153)
      {
        v43 = v153;
        v44 = sub_100F00014(v43);
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0xF000000000000000;
      }

      v153 = v30;
      v53 = v157;
      v54 = *(*v157 + 120);
      swift_beginAccess();
      v155[2](v19, v53 + v54, v42);
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v55, qword_101AD6348);
      v56 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
      v58 = v57;
      v59 = v155[1];
      v155 = v56;
      (v59)(v19, v42);
      v60 = v147;
      sub_10000C83C(v156, v147, type metadata accessor for CRLBoardIdentifier);
      v61 = (v157 + *(*v157 + 128));
      v62 = *(v61 + 5);
      v150 = *(v61 + 4);
      v149 = v62;
      LODWORD(v146) = *(v61 + 48);
      type metadata accessor for CRLFreehandDrawingBucketDatabaseRow();
      v63 = swift_allocObject();
      *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
      *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = xmmword_101486780;
      v64 = v61[1];
      v145 = *v61;
      v144 = v64;
      sub_100025668(v60, v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v32;
      v65 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
      v66 = v155;
      *v65 = v155;
      v65[1] = v58;
      *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v152;
      v67 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v68 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v152 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      *&v147 = v68;
      v69 = v44;
      v70 = v46;
      v71 = v148;
      v72 = v151;
      sub_100024E84(v148, v151);
      v154 = v58;
      sub_100024E98(v66, v58);
      sub_100024E84(v69, v70);
      *v67 = v71;
      v67[1] = v72;
      v73 = v69;
      sub_100025870(v152, v147);
      v74 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v75 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
      v76 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
      sub_100024E84(v73, v70);
      *v74 = v73;
      v74[1] = v70;
      sub_100025870(v75, v76);
      sub_100025870(v73, v70);
      v77 = v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
      v78 = v144;
      *v77 = v145;
      *(v77 + 16) = v78;
      v79 = v149;
      *(v77 + 32) = v150;
      *(v77 + 40) = v79;
      *(v77 + 48) = v146;
      sub_100E227D0(v63);
      sub_10002640C(v155, v154);
      sub_100025870(v73, v70);
      goto LABEL_41;
    }

    *&v147 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges;
    v34 = *(v33 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges);

    sub_100E9FABC(v35);
    v37 = v36;
    v38 = v157;
    v39 = v153;
    a2 = v154;
    if (v36)
    {
      if (v150)
      {
        a1 = v152;
        if (v150 == 1)
        {
          v40 = sub_100E21B80(v157);
          v38 = v157;
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        v80 = sub_100E21B80(v36);
        v38 = v157;
        v41 = v80 | v34;
        a1 = v152;
      }

      sub_100E69D38(v38);
      v52 = v37;
    }

    else
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v150 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v48 = UUID.uuidString.getter();
      v50 = v49;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v48;
      *(inited + 40) = v50;
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v150, &_mh_execute_header, v51, "An existing drawing bucket in the database could not be deserialized for merging. Replacing the bucket with the incoming bucket. Board identifier %{public}@", 156, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      v41 = 0;
      v52 = swift_retain_n();
      a2 = v154;
      a1 = v152;
    }

    *(v29 + v147) = v41;
    v81 = v151;
    v150 = v52;
    if (v151 >> 60 == 15)
    {
    }

    else
    {
      v82 = (v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v83 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v84 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v85 = v148;
      *v82 = v148;
      v82[1] = v81;
      v86 = v81;

      v87 = v85;
      v39 = v153;
      sub_100024E84(v87, v86);
      sub_100025870(v83, v84);
      v52 = v150;
    }

    v19 = v155;
    if (!v39)
    {
LABEL_31:
      v97 = *(*v52 + 120);
      swift_beginAccess();
      (*(v19 + 2))(a1, v52 + v97, a2);
      if (qword_1019F1520 == -1)
      {
LABEL_32:
        v98 = type metadata accessor for CRCodableVersion();
        sub_1005EB3DC(v98, qword_101AD6348);
        v99 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
        v101 = (v19 + 8);
        v102 = v147;
        if (v8)
        {

          (*v101)(a1, a2);
          goto LABEL_35;
        }

        v103 = v150;
        v148 = v99;
        v151 = v100;

        (*v101)(a1, a2);
        sub_10000C83C(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, v149, type metadata accessor for CRLBoardIdentifier);
        v142 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
        v143 = *(v29 + v102);
        v104 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData;
        v106 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
        v105 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
        v107 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData;
        v108 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
        *&v145 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
        *&v144 = v108;
        v109 = v103 + *(*v103 + 128);
        v110 = *(v109 + 32);
        v154 = *(v109 + 40);
        v155 = v110;
        LODWORD(v152) = *(v109 + 48);
        type metadata accessor for CRLFreehandDrawingBucketDatabaseRow();
        v111 = swift_allocObject();
        v153 = v30;
        v63 = v111;
        v112 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier;
        v113 = *(v109 + 16);
        v147 = *v109;
        v146 = v113;
        *(v111 + v104) = xmmword_101486780;
        *(v111 + v107) = xmmword_101486780;
        sub_100025668(v149, v111 + v112, type metadata accessor for CRLBoardIdentifier);
        *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v142;
        v114 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
        v115 = v151;
        *v114 = v148;
        v114[1] = v115;
        *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v143;
        v116 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
        v117 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
        v151 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
        sub_100024E84(v106, v105);
        v118 = v105;
        sub_100024E84(v106, v105);
        v119 = v145;
        v120 = v144;
        sub_100024E84(v145, v144);
        *v116 = v106;
        v116[1] = v118;
        sub_100025870(v151, v117);
        sub_100025870(v106, v118);
        v121 = (v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
        v122 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
        v123 = *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
        sub_100024E84(v119, v120);
        *v121 = v119;
        v121[1] = v120;
        sub_100025870(v122, v123);
        sub_100025870(v119, v120);
        v124 = v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
        v125 = v146;
        *v124 = v147;
        *(v124 + 16) = v125;
        v126 = v154;
        *(v124 + 32) = v155;
        *(v124 + 40) = v126;
        *(v124 + 48) = v152;
        sub_100E21DC4(v63);

LABEL_41:
        v136 = v156;
        v137 = v157;
        swift_setDeallocating();
        sub_100026028(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        sub_10002640C(*(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
        sub_100025870(*(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
        sub_100025870(*(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v63 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
        swift_deallocClassInstance();
        v129 = v153;
        v127 = v137;
        v128 = v136;
        return sub_100E2322C(v129, v127, v128);
      }

LABEL_50:
      swift_once();
      goto LABEL_32;
    }

    v88 = (v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
    v89 = *(v29 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
    if (v89 >> 60 == 15)
    {
      v90 = v39;
LABEL_28:
      v92 = sub_100F00014(v39);
      v94 = v93;

LABEL_29:
      v95 = *v88;
      v96 = v88[1];
      *v88 = v92;
      v88[1] = v94;
      sub_100025870(v95, v96);
LABEL_30:
      v19 = v155;
      a1 = v152;
      v52 = v150;
      goto LABEL_31;
    }

    v91 = *v88;
    sub_100006370(0, &qword_101A1AEB0);
    sub_100006370(0, &unk_101A22DA0);
    sub_100024E84(v91, v89);
    sub_100024E84(v91, v89);
    v151 = v39;
    v131 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v132 = v151;
    sub_100025870(v91, v89);
    sub_100025870(v91, v89);
    if (!v131)
    {
      a2 = v154;
      goto LABEL_28;
    }

    v153 = v30;
    v158[0] = 0;
    if ([v131 mergeRecordValue:v132 error:v158])
    {
      v133 = v158[0];

      v134 = v131;
      v92 = sub_100F00014(v134);
      v94 = v135;

      if (v94 >> 60 != 15)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v138 = v158[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v139 = static OS_os_log.dataSync;
      v140 = static os_log_type_t.error.getter();
      sub_100005404(v139, &_mh_execute_header, v140, "Failed to merge serialized ckMergeableRecordValueDatas, keep existing data", 74, 2, _swiftEmptyArrayStorage);
      v92 = sub_100F00014(v131);
      v94 = v141;

      if (v94 >> 60 != 15)
      {
        v8 = 0;
LABEL_48:
        v30 = v153;
        a2 = v154;
        goto LABEL_29;
      }

      v8 = 0;
    }

    v30 = v153;
    a2 = v154;
    goto LABEL_30;
  }

LABEL_35:
  v128 = v156;
  v127 = v157;
  v129 = v30;
  return sub_100E2322C(v129, v127, v128);
}

void sub_100E1F188(uint64_t a1, unint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  *&v242 = a5;
  v239 = a4;
  v252 = a2;
  *&v255 = a1;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = __chkstk_darwin(v7 - 8);
  v237 = &v230 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v230 - v10;
  *&v241 = sub_1005B981C(&unk_101A22860);
  __chkstk_darwin(v241);
  v240 = &v230 - v12;
  *&v251 = sub_1005B981C(&unk_101A341C0);
  v254 = *(v251 - 8);
  v13 = __chkstk_darwin(v251);
  *&v243 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  *&v238 = &v230 - v16;
  v17 = __chkstk_darwin(v15);
  v235 = &v230 - v18;
  v19 = __chkstk_darwin(v17);
  *&v246 = &v230 - v20;
  __chkstk_darwin(v19);
  v233 = &v230 - v21;
  v22 = sub_1005B981C(&qword_101A21F48);
  v23 = __chkstk_darwin(v22 - 8);
  v244 = &v230 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v234 = &v230 - v26;
  __chkstk_darwin(v25);
  v247 = &v230 - v27;
  v28 = sub_1005B981C(&unk_101A22E30);
  v248 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v249 = &v230 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v245 = &v230 - v31;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = (&v230 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v35 = v36;
  (*(v33 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v32);
  v37 = v36;
  v38 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v35, v32);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v253 = v5;
  LODWORD(v236) = a3;
  if (a3 == 2)
  {
    v39 = v256;
    v59 = v255;
    goto LABEL_11;
  }

  v232 = v11;
  v39 = v256;
  if (!a3)
  {
    v250 = v28;
    v231 = objc_opt_self();
    LODWORD(v32) = [v231 _atomicIncrementAssertCount];
    v257._countAndFlagsBits = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v257);
    StaticString.description.getter();
    v230 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    v41 = [v40 lastPathComponent];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v42;

    if (qword_1019F20A0 == -1)
    {
LABEL_5:
      v43 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v32;
      v45 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v45;
      v46 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v46;
      v47 = v230;
      *(inited + 72) = v230;
      *(inited + 136) = &type metadata for String;
      v48 = sub_1000053B0();
      *(inited + 112) = v28;
      *(inited + 120) = v38;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v48;
      *(inited + 152) = 6239;
      countAndFlagsBits = v257._countAndFlagsBits;
      *(inited + 216) = v45;
      *(inited + 224) = v46;
      *(inited + 192) = countAndFlagsBits;
      v50 = v47;
      v51 = countAndFlagsBits;
      v52 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v53, "CKMergeable path for mergeFreehandDrawing should never be called with .trackAsUnsyncedChanges", 93, 2, _swiftEmptyArrayStorage);

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

      [v231 handleFailureInFunction:v56 file:v57 lineNumber:6239 isFatal:0 format:v58 args:v55];

      v39 = v256;
      v28 = v250;
      goto LABEL_6;
    }

LABEL_67:
    swift_once();
    goto LABEL_5;
  }

LABEL_6:
  v59 = v255;
  v60 = *(v255 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
  v61 = sub_100E213C8(v252, v60);
  if (v39)
  {
    return;
  }

  if (v61)
  {
    v62 = (v59 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions);
    v63 = v28;
    if (*(v59 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions + 49))
    {
      v62 = &v61[OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions];
    }

    LODWORD(v244) = v62[48];
    v249 = v60;
    v256 = 0;
    v112 = *(v62 + 1);
    v243 = *(v62 + 2);
    v113 = *(v59 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_ckMergeableRecordValue);
    v255 = v112;
    v238 = *v62;
    v231 = v61;
    v114 = *&v61[OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8];
    if (v114 >> 60 == 15)
    {
      v115 = v113;
      v116 = v63;
      v117 = v253;
    }

    else
    {
      v118 = *&v61[OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData];
      sub_100006370(0, &qword_101A1AEB0);
      sub_100006370(0, &unk_101A22DA0);
      sub_100024E84(v118, v114);
      sub_100024E84(v118, v114);
      v119 = v113;
      v120 = v256;
      v121 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v120)
      {

        sub_100025870(v118, v114);
        sub_100025870(v118, v114);
        v256 = 0;
        v116 = v63;
      }

      else
      {
        v115 = v121;
        v256 = 0;
        sub_100025870(v118, v114);
        sub_100025870(v118, v114);
        v116 = v63;
        if (v115)
        {
          v257._countAndFlagsBits = 0;
          v159 = [v115 mergeRecordValue:v119 error:&v257];
          v117 = v253;
          if (v159)
          {
            v160 = v257._countAndFlagsBits;
          }

          else
          {
            v250 = v63;
            v223 = v257._countAndFlagsBits;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            if (qword_1019F2270 != -1)
            {
              swift_once();
            }

            v224 = static OS_os_log.dataSync;
            sub_1005B981C(&qword_1019F54E0);
            v225 = swift_initStackObject();
            *(v225 + 16) = xmmword_10146C6B0;
            swift_getErrorValue();
            v226 = Error.localizedDescription.getter();
            v228 = v227;
            *(v225 + 56) = &type metadata for String;
            *(v225 + 64) = sub_1000053B0();
            *(v225 + 32) = v226;
            *(v225 + 40) = v228;
            v229 = static os_log_type_t.default.getter();
            sub_100005404(v224, &_mh_execute_header, v229, "Merge failed, this can happen if a record was deleted and replaced with something else and we're merging two distinctly different records. Super edge casey. %@", 159, 2, v225);

            swift_setDeallocating();
            sub_100005070(v225 + 32);
            v256 = 0;
            v116 = v250;
            v117 = v253;
          }

          goto LABEL_29;
        }
      }

      v117 = v253;
      v115 = v119;
    }

LABEL_29:
    v122 = v254;
    v123 = v251;
    (v254[7])(v247, 1, 1, v251);
    v124 = *(v117 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
    sub_10001A2F8(&unk_101A22E40, &unk_101A341C0);
    v125 = v124;
    v126 = v245;
    CRCKMergeable.init(crdt:context:)();
    sub_10001A2F8(&qword_101A21F50, &unk_101A22E30);
    v127 = v256;
    CKMergeable.merge(_:)();
    v128 = v115;
    if (v127)
    {
      (*(v248 + 8))(v126, v116);

      return;
    }

    v247 = v125;
    v152 = v234;
    v250 = v116;
    CRCKMergeable.crdt.getter();
    v153 = (v122[6])(v152, 1, v123);
    v256 = 0;
    if (v153 == 1)
    {
      sub_10000CAAC(v152, &qword_101A21F48);
      v257._countAndFlagsBits = v249;
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v236 = v155;
      v237 = v154;
      type metadata accessor for UUID();
      sub_1005B981C(&qword_101A228A0);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
      sub_10001A2F8(&qword_101A1F620, &qword_101A228A0);
      sub_10001A2F8(&unk_101A22E50, &qword_101A228A0);
      CRDictionary.init()();
      sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
      v156 = v246;
      Capsule.init(_:id:)();
      sub_1005B981C(&unk_101A228D0);
      v157 = swift_allocObject();
      *(v157 + *(*v157 + 136)) = 0;
      v157[2] = v249;
      (v254[4])(v157 + *(*v157 + 120), v156, v123);
      v158 = 0;
    }

    else
    {
      v161 = v122[4];
      v162 = v233;
      v161(v233, v152, v123);
      v163 = v246;
      v161(v246, v162, v123);
      sub_1005B981C(&unk_101A228D0);
      v157 = swift_allocObject();
      *(v157 + *(*v157 + 136)) = 0;
      v157[2] = v249;
      v161(v157 + *(*v157 + 120), v163, v123);
      v158 = 1;
    }

    *(v157 + *(*v157 + 136)) = v158;
    v164 = v157 + *(*v157 + 128);
    v165 = v255;
    *v164 = v238;
    *(v164 + 1) = v165;
    *(v164 + 2) = v243;
    v164[48] = v244 & 1;
    v166 = v231;

    sub_100E9FABC(v167);
    v169 = v168;
    *&v255 = v128;
    if (v168)
    {
      v170 = sub_100E21B80(v157);
      sub_100E69D38(v157);
      v171 = v169;
    }

    else
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v172 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      v173 = swift_initStackObject();
      *(v173 + 16) = xmmword_10146C6B0;
      v174 = UUID.uuidString.getter();
      v176 = v175;
      *(v173 + 56) = &type metadata for String;
      *(v173 + 64) = sub_1000053B0();
      *(v173 + 32) = v174;
      *(v173 + 40) = v176;
      v177 = static os_log_type_t.error.getter();
      sub_100005404(v172, &_mh_execute_header, v177, "An existing drawing bucket in the database failed to deserialize for merging. Replacing the bucket with the incoming bucket. Board identifier %{public}@", 152, 2, v173);
      swift_setDeallocating();
      sub_100005070(v173 + 32);
      swift_retain_n();
      v170 = 0;
      v171 = v157;
    }

    v178 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges;
    *(v166 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v170;
    v179 = v242;
    if (v242 >> 60 == 15)
    {
    }

    else
    {
      v180 = (v166 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v181 = *(v166 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
      v182 = *(v166 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
      v183 = v239;
      *v180 = v239;
      v180[1] = v179;

      sub_100024E84(v183, v179);
      sub_100025870(v181, v182);
    }

    v184 = v251;
    v185 = v232;
    v186 = *(*v171 + 120);
    swift_beginAccess();
    v187 = v171 + v186;
    v188 = v235;
    (v254[2])(v235, v187, v184);
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v189 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v189, qword_101AD6348);
    v190 = v256;
    v191 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
    if (v190)
    {

      (v254[1])(v188, v184);
      (*(v248 + 8))(v245, v250);
      return;
    }

    *&v251 = v191;
    v252 = v192;

    (v254[1])(v188, v184);
    *&v243 = sub_100F00014(v255);
    v244 = v193;
    sub_10000C83C(v166 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, v185, type metadata accessor for CRLBoardIdentifier);
    v240 = *(v166 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
    v254 = *(v166 + v178);
    v194 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData;
    v195 = *(v166 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
    v196 = *(v166 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
    v197 = *(*v171 + 128);
    v256 = 0;
    v198 = v171 + v197;
    v200 = *(v171 + v197 + 32);
    v199 = *(v171 + v197 + 40);
    v249 = v200;
    v247 = v199;
    LODWORD(v246) = v198[48];
    type metadata accessor for CRLFreehandDrawingBucketDatabaseRow();
    v201 = swift_allocObject();
    v202 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData;
    v203 = OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier;
    v204 = *v198;
    v241 = *(v198 + 1);
    v242 = v204;
    *(v201 + v194) = xmmword_101486780;
    *(v201 + v202) = xmmword_101486780;
    sub_100025668(v185, v201 + v203, type metadata accessor for CRLBoardIdentifier);
    *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v240;
    v205 = (v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
    v206 = v251;
    v207 = v252;
    *v205 = v251;
    v205[1] = v207;
    *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = v254;
    v208 = (v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
    v209 = *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
    v239 = *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
    v240 = v209;
    sub_100024E84(v195, v196);
    sub_100024E84(v195, v196);
    sub_100024E98(v206, v207);
    v254 = v171;
    v210 = v243;
    v211 = v244;
    sub_100024E84(v243, v244);
    *v208 = v195;
    v208[1] = v196;
    sub_100025870(v240, v239);
    sub_100025870(v195, v196);
    v212 = (v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
    v213 = *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
    v214 = *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
    sub_100024E84(v210, v211);
    *v212 = v210;
    v212[1] = v211;
    sub_100025870(v213, v214);
    sub_100025870(v210, v211);
    v215 = v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
    v216 = v241;
    *v215 = v242;
    *(v215 + 16) = v216;
    v217 = v247;
    *(v215 + 32) = v249;
    *(v215 + 40) = v217;
    *(v215 + 48) = v246;
    v218 = v256;
    sub_100E21DC4(v201);
    if (v218)
    {

      sub_10002640C(v251, v252);
      sub_100025870(v210, v211);

      swift_setDeallocating();
      sub_100026028(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      sub_10002640C(*(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
      sub_100025870(*(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
      sub_100025870(*(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
      swift_deallocClassInstance();

      (*(v248 + 8))(v245, v250);
      return;
    }

    sub_10002640C(v251, v252);
    sub_100025870(v210, v211);

    swift_setDeallocating();
    sub_100026028(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
    sub_100025870(*(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
    sub_100025870(*(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v201 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
    swift_deallocClassInstance();

    v221 = v245;
    v222 = v248;
    goto LABEL_60;
  }

LABEL_11:
  v64 = v59 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions;
  v65 = *(v59 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions + 49);
  v256 = v39;
  if (v65 == 1)
  {
    v250 = v28;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v245 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_10146C6B0;
    v67 = *(v59 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
    v68 = sub_100EFF9E4(v59 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier);
    v69 = sub_100006370(0, &qword_1019F6E98);
    v70 = qword_101A22C20;
    v71 = off_101A22C28;
    v257._countAndFlagsBits = v67;

    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    v74 = v73;
    v257._countAndFlagsBits = v70;
    v257._object = v71;

    v75._countAndFlagsBits = v72;
    v75._object = v74;
    String.append(_:)(v75);

    isa = CKRecordID.init(recordName:zoneID:)(v257, v68).super.isa;
    *(v66 + 56) = v69;
    *(v66 + 64) = sub_10000FDE0(&qword_101A22E90, &qword_1019F6E98);
    *(v66 + 32) = isa;
    v77 = static os_log_type_t.error.getter();
    sub_100005404(v245, &_mh_execute_header, v77, "Incorrectly received missing values (partial record?) when saving a new freehandDrawingRemoteRecord, using default value to proceed. Incoming recordIDforCKRecord: %{public}@", 173, 2, v66);
    swift_setDeallocating();
    v59 = v255;
    sub_100005070(v66 + 32);
    v245 = 0;
    LODWORD(v233) = 1;
    v230 = 0x1000000000000;
    v231 = 0x2000400000000;
    v234 = 0x1000000000000;
    v235 = 0x2000400000000;
    v232 = 0x1000000000000;
    v28 = v250;
  }

  else
  {
    v78 = *(v64 + 32);
    v245 = *(v64 + 40);
    v79 = *(v64 + 16);
    v80 = *(v64 + 24);
    v234 = v78;
    v235 = v79;
    v81 = *v64;
    v230 = *(v64 + 8);
    v231 = v80;
    v232 = v81;
    LODWORD(v233) = *(v64 + 48);
  }

  v82 = *(v59 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_ckMergeableRecordValue);
  v83 = v254;
  v84 = v251;
  (v254[7])(v247, 1, 1, v251);
  v85 = *(v253 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  sub_10001A2F8(&unk_101A22E40, &unk_101A341C0);
  v86 = v82;
  v87 = v84;
  v88 = v86;
  v89 = v85;
  v90 = v249;
  CRCKMergeable.init(crdt:context:)();
  sub_10001A2F8(&qword_101A21F50, &unk_101A22E30);
  v91 = v256;
  CKMergeable.merge(_:)();
  if (v91)
  {
    (*(v248 + 8))(v90, v28);

    return;
  }

  v256 = v89;
  v247 = v88;
  v92 = v244;
  v250 = v28;
  CRCKMergeable.crdt.getter();
  v93 = v87;
  if ((v83[6])(v92, 1, v87) == 1)
  {
    sub_10000CAAC(v92, &qword_101A21F48);
    v257._countAndFlagsBits = *(v255 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
    v94 = v257._countAndFlagsBits;
    *&v255 = dispatch thunk of CustomStringConvertible.description.getter();
    v244 = v95;
    *&v238 = type metadata accessor for UUID();
    sub_1005B981C(&qword_101A228A0);
    sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
    sub_10001A2F8(&qword_101A1F620, &qword_101A228A0);
    v96 = v254;
    sub_10001A2F8(&unk_101A22E50, &qword_101A228A0);
    CRDictionary.init()();
    sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
    v97 = v246;
    Capsule.init(_:id:)();
    sub_1005B981C(&unk_101A228D0);
    v98 = swift_allocObject();
    *(v98 + *(*v98 + 136)) = 0;
    v98[2] = v94;
    (v96[4])(v98 + *(*v98 + 120), v97, v87);
    v99 = 0;
  }

  else
  {
    v100 = v83[4];
    v101 = v238;
    v100(v238, v92, v93);
    v102 = *(v255 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
    v103 = v246;
    v100(v246, v101, v93);
    sub_1005B981C(&unk_101A228D0);
    v98 = swift_allocObject();
    *(v98 + *(*v98 + 136)) = 0;
    v98[2] = v102;
    v96 = v254;
    v100(v98 + *(*v98 + 120), v103, v93);
    v99 = 1;
  }

  v104 = v93;
  v105 = v243;
  *(v98 + *(*v98 + 136)) = v99;
  v106 = v98 + *(*v98 + 128);
  v107 = v230;
  *v106 = v232;
  *(v106 + 1) = v107;
  v108 = v231;
  *(v106 + 2) = v235;
  *(v106 + 3) = v108;
  v109 = v245;
  *(v106 + 4) = v234;
  *(v106 + 5) = v109;
  v106[48] = v233 & 1;
  v110 = *(*v98 + 120);
  swift_beginAccess();
  (v96[2])(v105, v98 + v110, v104);
  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v111, qword_101AD6348);
  v129 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
  v131 = v130;
  v256 = 0;
  (v254[1])(v105, v104);
  v132 = sub_100F00014(v247);
  v134 = v133;
  v135 = v237;
  sub_10000C83C(v252, v237, type metadata accessor for CRLBoardIdentifier);
  v245 = v98[2];
  v136 = v98 + *(*v98 + 128);
  v137 = *(v136 + 4);
  v254 = *(v136 + 5);
  *&v255 = v137;
  LODWORD(v252) = v136[48];
  type metadata accessor for CRLFreehandDrawingBucketDatabaseRow();
  v138 = swift_allocObject();
  *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
  *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = xmmword_101486780;
  v139 = *(v136 + 1);
  v251 = *v136;
  v246 = v139;
  sub_100025668(v135, v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v245;
  v140 = (v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  *v140 = v129;
  v140[1] = v131;
  *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = 0;
  v141 = (v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v142 = *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v143 = *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
  v144 = v239;
  v145 = v242;
  *v141 = v239;
  v141[1] = v145;
  sub_100024E84(v144, v145);
  sub_100024E84(v132, v134);
  sub_100025870(v142, v143);
  v146 = (v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v147 = *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v148 = *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
  *v146 = v132;
  v146[1] = v134;
  sub_100024E84(v132, v134);
  sub_100025870(v147, v148);
  sub_100025870(v132, v134);
  v149 = v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
  v150 = v246;
  *v149 = v251;
  *(v149 + 16) = v150;
  v151 = v254;
  *(v149 + 32) = v255;
  *(v149 + 40) = v151;
  *(v149 + 48) = v252;
  if (v236)
  {
    if (v236 == 1)
    {
      sub_100E227D0(v138);
    }

    else
    {
      sub_100E21DC4(v138);
    }

    sub_100025870(v132, v134);

    swift_setDeallocating();
    sub_100026028(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
    sub_100025870(*(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
    sub_100025870(*(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
    swift_deallocClassInstance();
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v219 = static OS_os_log.dataSync;
    v220 = static os_log_type_t.error.getter();
    sub_100005404(v219, &_mh_execute_header, v220, "CKMergeable path for mergeFreehandDrawing should never be called with .trackAsUnsyncedChanges", 93, 2, _swiftEmptyArrayStorage);
    sub_100025870(v132, v134);

    swift_setDeallocating();
    sub_100026028(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
    sub_100025870(*(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
    sub_100025870(*(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v138 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
    swift_deallocClassInstance();
  }

  v222 = v248;
  v221 = v249;
LABEL_60:
  (*(v222 + 8))(v221, v250);
}

uint64_t sub_100E213C8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v55 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v58 = *(v5 + 104);
  v58(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_5;
  }

  v57 = v9;
  v56 = v11;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v59 = 0x205443454C4553;
  v60 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_100E9E2A4(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x80000001015A31A0;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._object = 0x80000001015A38C0;
  v16._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x444E41203F203D20;
  v17._object = 0xE900000000000020;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x695F74656B637562;
  v18._object = 0xEC0000007865646ELL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x29203F203D20;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20 = v59;
  v21 = v60;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);
  if (!v3)
  {
    v24 = v23;

    type metadata accessor for CRLBoardIdentifierStorage(0);
    v25 = sub_10084DAE4();
    v34 = v33;
    v35 = v25;
    v36 = *(*(v24 + 16) + 32);
    *v7 = v36;
    v58(v7, v57, v4);
    v37 = v36;
    LOBYTE(v36) = _dispatchPreconditionTest(_:)();
    v56(v7, v4);
    if (v36)
    {

      sub_100DCCAB4(v35, v34, v24, 1);
      sub_10002640C(v35, v34);
      if (v54 >= 0xFFFFFFFF80000000)
      {
        v38 = v56;
        v39 = v58;
        if (v54 <= 0x7FFFFFFF)
        {
          v40 = *(*(v24 + 16) + 32);
          *v7 = v40;
          v41 = v57;
          v39(v7, v57, v4);
          v42 = v40;
          LOBYTE(v40) = _dispatchPreconditionTest(_:)();
          v38(v7, v4);
          if (v40)
          {
            swift_beginAccess();
            sqlite3_bind_int(*(v24 + 24), 2, v54);
            v43 = *(*(v24 + 16) + 32);
            *v7 = v43;
            v58(v7, v41, v4);
            v44 = v43;
            LOBYTE(v43) = _dispatchPreconditionTest(_:)();
            v38(v7, v4);
            if (v43)
            {
              v45 = v38;
              type metadata accessor for SQLiteRowIterator();
              inited = swift_initStackObject();
              inited[4] = 0;
              inited[5] = 1;
              inited[2] = v24;
              inited[3] = 0;

              v47 = sub_10001E1D0();
              if (!v47)
              {

                swift_setDeallocating();
                sub_10001E364(inited[3], inited[4], inited[5]);
                v51 = *(*(v24 + 16) + 32);
                *v7 = v51;
                v58(v7, v57, v4);
                v52 = v51;
                LOBYTE(v51) = _dispatchPreconditionTest(_:)();
                v45(v7, v4);
                if (v51)
                {
                  v28 = 0;
                  v50 = *(v24 + 24);
                  if (!v50)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_15;
                }

LABEL_28:
                __break(1u);
              }

              v28 = sub_100E9E61C(v47, 0);

              swift_setDeallocating();
              sub_10001E364(inited[3], inited[4], inited[5]);
              v48 = *(*(v24 + 16) + 32);
              *v7 = v48;
              v58(v7, v57, v4);
              v49 = v48;
              LOBYTE(v48) = _dispatchPreconditionTest(_:)();
              v45(v7, v4);
              if (v48)
              {
                v50 = *(v24 + 24);
                if (!v50)
                {
LABEL_16:

                  return v28;
                }

LABEL_15:
                sqlite3_finalize(v50);
                *(v24 + 24) = 0;
                goto LABEL_16;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_21;
  }

LABEL_5:
  v26 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v28 = Error.localizedDescription.getter();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_1000053B0();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v26, &_mh_execute_header, v31, "Failed to fetch a board drawing row with error %@", 49, 2, v27);
  swift_setDeallocating();
  sub_100005070(v27 + 32);
  swift_willThrow();
  return v28;
}

uint64_t sub_100E21B80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A341C0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v21[-v9];
  v11 = *(*v2 + 120);
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  v13 = *(*a1 + 120);
  swift_beginAccess();
  v12(v8, a1 + v13, v4);
  LOBYTE(v13) = Capsule.hasDelta(from:)();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  v15 = 2;
  if ((v13 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = (v2 + *(*v2 + 128));
  v17 = (a1 + *(*a1 + 128));
  if (*v16 != *v17)
  {
    v15 |= 4uLL;
  }

  if (v16[1] != v17[1])
  {
    v15 |= 8uLL;
  }

  if (v16[2] != v17[2])
  {
    v15 |= 0x10uLL;
  }

  v19 = v16[3];
  v18 = v16[4];
  if (v19 != v17[3])
  {
    v15 |= 0x20uLL;
  }

  if (v18 == v17[4])
  {
    return v15;
  }

  else
  {
    return v15 | 0x40;
  }
}

uint64_t sub_100E21DC4(uint64_t a1)
{
  v89 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = v4 + 104;
  v9 = *(v4 + 104);
  v92 = enum case for DispatchPredicate.onQueue(_:);
  v9(v6);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v13 = *(v4 + 8);
  v12 = v4 + 8;
  v11 = v13;
  v13(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    __break(1u);
    goto LABEL_25;
  }

  v90 = v2;
  v91 = v9;
  v93 = 0;
  v94 = 0xE000000000000000;
  _StringGuts.grow(_:)(116);
  v14._countAndFlagsBits = 0x20455441445055;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000018;
  v15._object = 0x80000001015A31A0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x2054455320;
  v16._object = 0xE500000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x645F74656B637562;
  v17._object = 0xEB00000000617461;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x202C3F203D20;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000010;
  v19._object = 0x80000001015A33D0;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x202C3F203D20;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x7461645F636E7973;
  v21._object = 0xE900000000000061;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x202C3F203D20;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._object = 0x80000001015A3920;
  v23._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x202C3F203D20;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  v25._object = 0x80000001015A3940;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x202C3F203D20;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._object = 0x80000001015A3960;
  v27._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x202C3F203D20;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000038;
  v29._object = 0x80000001015A3980;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C3F203D20;
  v30._object = 0xE600000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000037;
  v31._object = 0x80000001015A39C0;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x202C3F203D20;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000026;
  v33._object = 0x80000001015A33F0;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x202C3F203D20;
  v34._object = 0xE600000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001BLL;
  v35._object = 0x80000001015A3790;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x454857203F203D20;
  v36._object = 0xEB00000000204552;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000011;
  v37._object = 0x80000001015A38C0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x444E41203F203D20;
  v38._object = 0xE900000000000020;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x695F74656B637562;
  v39._object = 0xEC0000007865646ELL;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 1059077408;
  v40._object = 0xE400000000000000;
  String.append(_:)(v40);
  v41 = v93;
  v42 = v94;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v44 = v90;
  v45 = sub_10001CC04(v43, v41, v42);

  if (v44)
  {
    return result;
  }

  v47 = v8;
  v48 = v89;
  v49 = *(v89 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  v50 = *(v89 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
  v51 = *(v45 + 16);
  v90 = v11;
  v52 = v12;
  v53 = *(v51 + 32);
  *v6 = v53;
  v88[1] = v47;
  v91(v6, v92, v3);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v88[2] = v52;
  v90(v6, v3);
  v55 = v90;
  if ((v53 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100DCCAB4(v49, v50, v45, 1);
  sub_100034254(*(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges), 2);
  v56 = *(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v57 = *(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
  sub_100024E84(v56, v57);
  sub_10089BB64(v56, v57, 3);
  sub_100025870(v56, v57);
  v58 = *(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v59 = *(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
  sub_100024E84(v58, v59);
  sub_10089BB64(v58, v59, 4);
  sub_100025870(v58, v59);
  v60 = v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
  sub_100034254(*(v48 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions), 5);
  sub_100034254(*(v60 + 8), 6);
  sub_100034254(*(v60 + 16), 7);
  sub_100034254(*(v60 + 24), 8);
  sub_100034254(*(v60 + 32), 9);
  if ((*(v60 + 48) & 1) == 0)
  {
    sub_100034254(*(v60 + 40), 10);
    v62 = v91;
    goto LABEL_8;
  }

  v61 = *(*(v45 + 16) + 32);
  *v6 = v61;
  v62 = v91;
  v91(v6, v92, v3);
  v63 = v61;
  LOBYTE(v61) = _dispatchPreconditionTest(_:)();
  v55(v6, v3);
  if ((v61 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  sqlite3_bind_null(*(v45 + 24), 10);
LABEL_8:
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v64 = sub_10084DAE4();
  v66 = v62;
  v67 = v65;
  v68 = v64;
  v69 = *(*(v45 + 16) + 32);
  *v6 = v69;
  v66(v6, v92, v3);
  v70 = v69;
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  v90(v6, v3);
  if ((v69 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100DCCAB4(v68, v67, v45, 11);
  sub_10002640C(v68, v67);
  v71 = *(v89 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  if (v71 < 0xFFFFFFFF80000000)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v89 = 0;
  v72 = v91;
  v73 = v92;
  if (v71 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v74 = *(*(v45 + 16) + 32);
  *v6 = v74;
  v72(v6, v73, v3);
  v75 = v74;
  LOBYTE(v74) = _dispatchPreconditionTest(_:)();
  v76 = v90;
  v90(v6, v3);
  if ((v74 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v77 = (v45 + 24);
  swift_beginAccess();
  sqlite3_bind_int(*(v45 + 24), 12, v71);
  v78 = *(*(v45 + 16) + 32);
  *v6 = v78;
  v72(v6, v73, v3);
  v79 = v78;
  LOBYTE(v78) = _dispatchPreconditionTest(_:)();
  v76(v6, v3);
  if ((v78 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v80 = *(v45 + 16);

  LODWORD(v81) = sub_10001CEC4(v80, v45);

  if (v81 != 101)
  {
    goto LABEL_20;
  }

  v81 = *(*(v45 + 16) + 32);
  *v6 = v81;
  v91(v6, v92, v3);
  v82 = v81;
  v83 = _dispatchPreconditionTest(_:)();
  v90(v6, v3);
  if ((v83 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    sub_10089C7D0();
    swift_allocError();
    *v84 = v81;
    *(v84 + 8) = 0xD000000000000029;
    *(v84 + 16) = 0x80000001015A51A0;
    swift_willThrow();
    v85 = *(*(v45 + 16) + 32);
    *v6 = v85;
    v91(v6, v92, v3);
    v86 = v85;
    v87 = _dispatchPreconditionTest(_:)();
    v90(v6, v3);
    if (v87)
    {
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
  }

LABEL_21:
  if (*v77)
  {
    sqlite3_finalize(*v77);
    *v77 = 0;
  }
}

uint64_t sub_100E227D0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = v4 + 104;
  v9 = *(v4 + 104);
  v101 = enum case for DispatchPredicate.onQueue(_:);
  v9(v6);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v13 = *(v4 + 8);
  v12 = v4 + 8;
  v104 = v13;
  v13(v6, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v99 = a1;
  v100 = v12;
  v102 = v9;
  v103 = v3;
  v106 = v8;
  v107 = 0;
  v14 = 0xD000000000000010;
  v108 = 0xE000000000000000;
  _StringGuts.grow(_:)(160);
  v15._countAndFlagsBits = 0x4920545245534E49;
  v15._object = 0xEC000000204F544ELL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001015A31A0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000011;
  v18._object = 0x80000001015A38C0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x695F74656B637562;
  v20._object = 0xEC0000007865646ELL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x645F74656B637562;
  v22._object = 0xEB00000000617461;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._object = 0x80000001015A33D0;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x7461645F636E7973;
  v26._object = 0xE900000000000061;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 8236;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD00000000000001ELL;
  v28._object = 0x80000001015A3920;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD00000000000001FLL;
  v30._object = 0x80000001015A3940;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD00000000000001ELL;
  v32._object = 0x80000001015A3960;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 8236;
  v33._object = 0xE200000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000038;
  v34._object = 0x80000001015A3980;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD000000000000037;
  v36._object = 0x80000001015A39C0;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 8236;
  v37._object = 0xE200000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000026;
  v38._object = 0x80000001015A33F0;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 8236;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD00000000000001BLL;
  v40._object = 0x80000001015A3790;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD00000000000003CLL;
  v41._object = 0x80000001015A51D0;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD000000000000011;
  v42._object = 0x80000001015A38C0;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 8236;
  v43._object = 0xE200000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x695F74656B637562;
  v44._object = 0xEC0000007865646ELL;
  String.append(_:)(v44);
  v45._object = 0x80000001015A4700;
  v45._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x645F74656B637562;
  v46._object = 0xEB00000000617461;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x756C637865203D20;
  v47._object = 0xEC0000002E646564;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x645F74656B637562;
  v48._object = 0xEB00000000617461;
  String.append(_:)(v48);
  v49 = v107;
  v50 = v108;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v52 = v105;
  v53 = sub_10001CC04(v51, v49, v50);

  if (v52)
  {
    return result;
  }

  v55 = v99;
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v56 = sub_10084DAE4();
  v58 = v57;
  v59 = v56;
  v60 = *(*(v53 + 16) + 32);
  *v6 = v60;
  v61 = v103;
  v102(v6, v101, v103);
  v62 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  v104(v6, v61);
  if ((v60 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100DCCAB4(v59, v58, v53, 1);
  sub_10002640C(v59, v58);
  v63 = *(v55 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex);
  if (v63 < 0xFFFFFFFF80000000)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v98[1] = 0;
  v65 = v103;
  v64 = v104;
  if (v63 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v66 = *(*(v53 + 16) + 32);
  *v6 = v66;
  v67 = v102;
  v102(v6, v101, v65);
  v68 = v66;
  LOBYTE(v66) = _dispatchPreconditionTest(_:)();
  v64(v6, v65);
  if ((v66 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v105 = (v53 + 24);
  swift_beginAccess();
  sqlite3_bind_int(*(v53 + 24), 2, v63);
  v69 = v99;
  v71 = *(v99 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
  v70 = *(v99 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8);
  v72 = *(*(v53 + 16) + 32);
  *v6 = v72;
  v67(v6, v101, v65);
  v73 = v72;
  LOBYTE(v72) = _dispatchPreconditionTest(_:)();
  v104(v6, v65);
  if ((v72 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_100DCCAB4(v71, v70, v53, 3);
  sub_100034254(*(v69 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges), 4);
  v74 = *(v69 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
  v75 = *(v69 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
  sub_100024E84(v74, v75);
  sub_10089BB64(v74, v75, 5);
  sub_100025870(v74, v75);
  v76 = *(v69 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
  v77 = *(v69 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
  sub_100024E84(v76, v77);
  sub_10089BB64(v76, v77, 6);
  sub_100025870(v76, v77);
  v78 = v69 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
  sub_100034254(*(v69 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions), 7);
  sub_100034254(*(v78 + 8), 8);
  sub_100034254(*(v78 + 16), 9);
  sub_100034254(*(v78 + 24), 10);
  sub_100034254(*(v78 + 32), 11);
  if (*(v78 + 48))
  {
    v79 = *(*(v53 + 16) + 32);
    *v6 = v79;
    v80 = v101;
    v81 = v103;
    v102(v6, v101, v103);
    v82 = v79;
    LOBYTE(v79) = _dispatchPreconditionTest(_:)();
    v83 = v81;
    v84 = v104;
    v104(v6, v83);
    if ((v79 & 1) == 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sqlite3_bind_null(*v105, 12);
  }

  else
  {
    sub_100034254(*(v78 + 40), 12);
    v84 = v104;
    v80 = v101;
  }

  v85 = *(*(v53 + 16) + 32);
  *v6 = v85;
  v86 = v103;
  v102(v6, v80, v103);
  v87 = v85;
  LOBYTE(v85) = _dispatchPreconditionTest(_:)();
  v84(v6, v86);
  if ((v85 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v88 = *(v53 + 16);

  v89 = sub_10001CEC4(v88, v53);

  if (v89 != 101)
  {
    goto LABEL_20;
  }

  v14 = *(*(v53 + 16) + 32);
  *v6 = v14;
  v90 = v103;
  v102(v6, v80, v103);
  v91 = v14;
  v89 = _dispatchPreconditionTest(_:)();
  v104(v6, v90);
  if ((v89 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    sub_10089C7D0();
    swift_allocError();
    *v92 = v89;
    *(v92 + 8) = v14 + 30;
    *(v92 + 16) = 0x80000001015A5210;
    swift_willThrow();
    v93 = *(*(v53 + 16) + 32);
    *v6 = v93;
    v94 = v103;
    v102(v6, v80, v103);
    v95 = v93;
    v96 = _dispatchPreconditionTest(_:)();
    v104(v6, v94);
    if (v96)
    {
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
  }

LABEL_21:
  v97 = v105;
  if (*v105)
  {
    sqlite3_finalize(*v105);
    *v97 = 0;
  }
}

uint64_t sub_100E2322C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16))
  {
    sub_1000486F0(a3);
    if (v7)
    {
      swift_beginAccess();

      sub_100ED8FF8(v5);
      swift_endAccess();
    }
  }

  return swift_endAccess();
}

void *sub_100E232E0(unint64_t a1)
{
  v54 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v57 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

  v56 = v8;
  v55 = v10;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v59 = 0x205443454C4553;
  v60 = 0xE700000000000000;
  v11._countAndFlagsBits = sub_100E9E2A4(0, 0xE000000000000000);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x204D4F524620;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000018;
  v13._object = 0x80000001015A31A0;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x2820455245485720;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15._object = 0x80000001015A38C0;
  v15._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x293F203D20;
  v16._object = 0xE500000000000000;
  String.append(_:)(v16);
  v17 = v59;
  v18 = v60;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v20 = sub_10001CC04(v19, v17, v18);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v23 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = v26;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v28, "Failed to fetch board drawing rows with error %@", 48, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v25;
    }

LABEL_28:
    swift_once();
    goto LABEL_5;
  }

  v21 = v20;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v22 = sub_10084DAE4();
  v54 = v30;
  v31 = v22;
  v32 = *(*(v21 + 16) + 32);
  *v6 = v32;
  v56(v6, v57, v3);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v34 = v55;
  v55(v6, v3);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v35 = v31;
  v36 = v31;
  v37 = v54;
  sub_100DCCAB4(v36, v54, v21, 1);
  sub_10002640C(v35, v37);
  v58 = _swiftEmptyArrayStorage;
  v38 = *(*(v21 + 16) + 32);
  *v6 = v38;
  v56(v6, v57, v3);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v34(v6, v3);
  if ((v38 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v40 = swift_initStackObject();
  v40[3] = 0;
  v41 = v40 + 3;
  v40[4] = 0;
  v53 = v40 + 4;
  v40[5] = 1;
  v54 = v40;
  v40[2] = v21;

  swift_beginAccess();
  v42 = *(*(v21 + 16) + 32);
  *v6 = v42;
  v56(v6, v57, v3);
  v43 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v34(v6, v3);
  if ((v42 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v41 = 0;
    v41[1] = 0;
    v54[5] = 1;
    v44 = sqlite3_step(*(v21 + 24));
    if (v44 != 100)
    {
      break;
    }

    v45 = swift_retain_n();
    if (sub_100E9E61C(v45, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v52[1] = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v25 = v58;
    }

    else
    {
    }

    v46 = *(*(v21 + 16) + 32);
    *v6 = v46;
    v56(v6, v57, v3);
    v47 = v46;
    LOBYTE(v46) = _dispatchPreconditionTest(_:)();
    v55(v6, v3);
    if ((v46 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v44 && v44 != 101)
  {
    *v41 = v44;
    v48 = v53;
    *v53 = 0;
    v48[1] = 0;
  }

  v49 = *(*(v21 + 16) + 32);
  *v6 = v49;
  v56(v6, v57, v3);
  v50 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  v55(v6, v3);
  if ((v49 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v51 = *(v21 + 24);
  if (v51)
  {
    sqlite3_finalize(v51);
    *(v21 + 24) = 0;
  }

  return v25;
}

void *sub_100E23AE4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v5 + 104);
  v77 = enum case for DispatchPredicate.onQueue(_:);
  v9(v7);
  v10 = v8;
  v11 = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v12 = v14;
  v14(v7, v4);
  if ((v11 & 1) == 0)
  {
    goto LABEL_28;
  }

  v78 = v12;
  v76 = v9;
  v79 = v13;
  if (a1)
  {
    v15 = 15649;
  }

  else
  {
    v15 = 15677;
  }

  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v16._countAndFlagsBits = 0x205443454C4553;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = sub_100E9E2A4(0xD000000000000018, 0x80000001015A31A0);
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x204D4F524620;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._object = 0x80000001015A31A0;
  v19._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x4A2052454E4E4920;
  v20._object = 0xEC000000204E494FLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x736472616F62;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 542002976;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);
  v23._object = 0x80000001015A31A0;
  v23._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000011;
  v25._object = 0x80000001015A38C0;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 2112800;
  v26._object = 0xE300000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x736472616F62;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._object = 0x8000000101585360;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x20455245485720;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._object = 0x80000001015A31A0;
  v31._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._object = 0x80000001015A33D0;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x444E412030203E20;
  v34._object = 0xE900000000000020;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x736472616F62;
  v35._object = 0xE600000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 46;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x616E5F72656E776FLL;
  v37._object = 0xEA0000000000656DLL;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 32;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v15;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 16160;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  v41 = v81;
  v42 = v82;
  v80 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v44 = v75;
  v45 = sub_10001CC04(v43, v41, v42);
  v75 = v44;
  if (v44)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_7:
      v46 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v48 = Error.localizedDescription.getter();
      v50 = v49;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v48;
      *(inited + 40) = v50;
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v51, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v48;
    }

LABEL_29:
    swift_once();
    goto LABEL_7;
  }

  v52 = v45;

  sub_1000285F8(0, 0xE000000000000000, 1);
  v53 = *(*(v52 + 16) + 32);
  *v7 = v53;
  v54 = v77;
  v55 = v76;
  v76(v7, v77, v4);
  v56 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v78(v7, v4);
  if ((v53 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v57 = v55;
  v58 = v54;
  v59 = swift_initStackObject();
  v59[3] = 0;
  v60 = v59 + 3;
  v59[4] = 0;
  v74 = v59 + 4;
  v59[5] = 1;
  v59[2] = v52;

  swift_beginAccess();
  v61 = *(*(v52 + 16) + 32);
  *v7 = v61;
  v57(v7, v58, v4);
  v62 = v61;
  LOBYTE(v61) = _dispatchPreconditionTest(_:)();
  v78(v7, v4);
  if ((v61 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v48 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v60 = 0;
    v59[4] = 0;
    v59[5] = 1;
    v63 = sqlite3_step(*(v52 + 24));
    if (v63 != 100)
    {
      break;
    }

    v64 = swift_retain_n();
    if (sub_100E9E61C(v64, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v73 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v48 = v80;
    }

    else
    {
    }

    v65 = *(*(v52 + 16) + 32);
    *v7 = v65;
    v76(v7, v77, v4);
    v66 = v65;
    LOBYTE(v65) = _dispatchPreconditionTest(_:)();
    v78(v7, v4);
    if ((v65 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v63 && v63 != 101)
  {
    *v60 = v63;
    v67 = v74;
    *v74 = 0;
    v67[1] = 0;
  }

  v68 = *(*(v52 + 16) + 32);
  *v7 = v68;
  v76(v7, v77, v4);
  v69 = v68;
  v70 = _dispatchPreconditionTest(_:)();
  v78(v7, v4);
  if ((v70 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v71 = *(v52 + 24);
  if (v71)
  {
    sqlite3_finalize(v71);
    *(v52 + 24) = 0;
  }

  return v48;
}

void sub_100E24358(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    sub_100E9FABC(v9);
    if (!v10)
    {
      return;
    }

    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_100E9FABC(v5);
  if (!v6)
  {
    return;
  }

LABEL_5:
  v7 = *(a3 + 16);
  os_unfair_lock_lock(v7);

  sub_100BC225C(v8, a1);
  os_unfair_lock_unlock(v7);
}

void sub_100E2441C()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v25 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v25);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v10;
  v11 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 6691;
  v13 = v25;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Unexpected call to KeyValueTableKey initializer.", 48, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unexpected call to KeyValueTableKey initializer.");
  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:6691 isFatal:1 format:v22 args:v19];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v23, v24);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100E247F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000280F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100E24818(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = a5;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  v14 = v9 + 104;
  v13 = *(v9 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v43 = v13;
  v13(v11);
  v15 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v45 = *(v9 + 8);
  v45(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v42 = v8;
  v39 = a3;
  v40 = a2;
  a2 = sub_1000280F0();
  v17 = v16;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v19 = v46;
  v20 = sub_10001CC04(v18, 0xD00000000000003ALL, 0x80000001015A68E0);
  v46 = v19;
  if (v19)
  {
    v14 = v17;

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v21 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = a2;
      *(inited + 40) = v14;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v23, "Failed to fetch value for key %@", 32, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v25 = v20;

  sub_1000285F8(a2, v17, 1);

  v26 = *(*(v25 + 16) + 32);
  *v11 = v26;
  v27 = v44;
  v28 = v42;
  v29 = v43;
  v43(v11, v44, v42);
  v30 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  result = (v45)(v11, v28);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteRowIterator();
  v31 = swift_initStackObject();
  v31[4] = 0;
  v31[5] = 1;
  v31[2] = v25;
  v31[3] = 0;
  v32 = sub_10001E1D0();
  swift_setDeallocating();
  sub_10001E364(v31[3], v31[4], v31[5]);
  if (v32)
  {

    v33 = sub_10089C2BC(0, v32);
    v34 = v41;
    *v41 = v33;
    v34[1] = v35;

    if (v40)
    {
      v40(v32, 1);
    }
  }

  v36 = *(*(v25 + 16) + 32);
  *v11 = v36;
  v29(v11, v27, v28);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  result = (v45)(v11, v28);
  if ((v36 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v38 = *(v25 + 24);
  if (v38)
  {
    sqlite3_finalize(v38);
    *(v25 + 24) = 0;
  }
}

uint64_t sub_100E24C64(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a3;
  v54 = a5;
  v55 = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  v14 = *(v10 + 104);
  v59 = enum case for DispatchPredicate.onQueue(_:);
  v60 = v14;
  v14(v12);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v58 = *(v10 + 8);
  result = v58(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v57 = v10 + 104;
  v65 = a6;
  v56 = sub_1000280F0();
  v18 = v17;
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x80000001015A40C0;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x756C61765F79656BLL;
  v20._object = 0xEE00617461645F65;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 7955819;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x65756C6176;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6E695F6172747865;
  v26._object = 0xEA00000000006F66;
  String.append(_:)(v26);
  v27._object = 0x80000001015A40E0;
  v27._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v27);
  v28 = v63;
  v29 = v64;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v31 = sub_10001CC04(v30, v28, v29);
  if (v6)
  {
  }

  v32 = v31;

  v52 = v18;
  sub_1000285F8(v56, v18, 1);
  sub_1000285F8(v54, v65, 2);
  v33 = v55;
  if (v55)
  {

    v33(v32, 3);
    sub_1000C1014(v33);
    v34 = v58;
    goto LABEL_8;
  }

  v35 = *(*(v32 + 16) + 32);
  *v12 = v35;
  v60(v12, v59, v9);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v34 = v58;
  result = v58(v12, v9);
  if (v35)
  {
    swift_beginAccess();
    sqlite3_bind_null(*(v32 + 24), 3);
LABEL_8:
    v37 = *(*(v32 + 16) + 32);
    *v12 = v37;
    v60(v12, v59, v9);
    v38 = v37;
    LOBYTE(v37) = _dispatchPreconditionTest(_:)();
    result = v34(v12, v9);
    if (v37)
    {
      v39 = *(v32 + 16);

      v40 = sub_10001CEC4(v39, v32);

      if (v40 != 101)
      {
        v61 = 0;
        v62 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v61 = 0xD00000000000002CLL;
        v62 = 0x80000001015A4100;
        v44._countAndFlagsBits = v56;
        v44._object = v52;
        String.append(_:)(v44);

        v45 = v61;
        v46 = v62;
        sub_10089C7D0();
        swift_allocError();
        *v47 = v40;
        *(v47 + 8) = v45;
        *(v47 + 16) = v46;
        swift_willThrow();
        v48 = *(*(v32 + 16) + 32);
        *v12 = v48;
        v60(v12, v59, v9);
        v49 = v48;
        LOBYTE(v48) = _dispatchPreconditionTest(_:)();
        result = v58(v12, v9);
        if (v48)
        {
          swift_beginAccess();
          v50 = *(v32 + 24);
          if (v50)
          {
            sqlite3_finalize(v50);
            *(v32 + 24) = 0;
          }

          goto LABEL_17;
        }

        goto LABEL_22;
      }

      v41 = *(*(v32 + 16) + 32);
      *v12 = v41;
      v60(v12, v59, v9);
      v42 = v41;
      LOBYTE(v41) = _dispatchPreconditionTest(_:)();
      result = v34(v12, v9);
      if (v41)
      {
        swift_beginAccess();
        v43 = *(v32 + 24);
        if (v43)
        {
          sqlite3_finalize(v43);
          *(v32 + 24) = 0;
        }

LABEL_17:
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100E25224(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, sqlite3_int64 a5)
{
  v56 = a5;
  v57 = a2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  v14 = *(v9 + 104);
  v59 = enum case for DispatchPredicate.onQueue(_:);
  v65 = v9 + 104;
  v60 = v14;
  v14(v12, v10);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  result = v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v54[1] = a3;
  v58 = v16;
  v55 = sub_1000280F0();
  v19 = v18;
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x80000001015A40C0;
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
  v28._object = 0x80000001015A40E0;
  v28._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v28);
  v29 = v63;
  v30 = v64;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v32 = sub_10001CC04(v31, v29, v30);
  if (v5)
  {
  }

  v33 = v32;

  v34 = v55;
  sub_1000285F8(v55, v19, 1);
  sub_100034254(v56, 2);
  v35 = v57;
  if (v57)
  {

    v35(v33, 3);
    sub_1000C1014(v35);
    v36 = v58;
    goto LABEL_8;
  }

  v37 = *(*(v33 + 16) + 32);
  *v12 = v37;
  v60(v12, v59, v8);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  v36 = v58;
  result = v58(v12, v8);
  if (v37)
  {
    swift_beginAccess();
    sqlite3_bind_null(*(v33 + 24), 3);
LABEL_8:
    v39 = *(*(v33 + 16) + 32);
    *v12 = v39;
    v60(v12, v59, v8);
    v40 = v39;
    LOBYTE(v39) = _dispatchPreconditionTest(_:)();
    result = v36(v12, v8);
    if (v39)
    {
      v41 = v19;
      v42 = v34;
      v43 = *(v33 + 16);

      v44 = sub_10001CEC4(v43, v33);

      if (v44 != 101)
      {
        v61 = 0;
        v62 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v61 = 0xD00000000000002CLL;
        v62 = 0x80000001015A4100;
        v48._countAndFlagsBits = v42;
        v48._object = v41;
        String.append(_:)(v48);

        v49 = v61;
        v50 = v62;
        sub_10089C7D0();
        swift_allocError();
        *v51 = v44;
        *(v51 + 8) = v49;
        *(v51 + 16) = v50;
        swift_willThrow();
        v52 = *(*(v33 + 16) + 32);
        *v12 = v52;
        v60(v12, v59, v8);
        v53 = v52;
        LOBYTE(v52) = _dispatchPreconditionTest(_:)();
        result = v58(v12, v8);
        if (v52)
        {
          swift_beginAccess();
          v47 = *(v33 + 24);
          if (!v47)
          {
          }

          goto LABEL_15;
        }

        goto LABEL_20;
      }

      v45 = *(*(v33 + 16) + 32);
      *v12 = v45;
      v60(v12, v59, v8);
      v46 = v45;
      LOBYTE(v45) = _dispatchPreconditionTest(_:)();
      result = v58(v12, v8);
      if (v45)
      {
        swift_beginAccess();
        v47 = *(v33 + 24);
        if (!v47)
        {
        }

LABEL_15:
        sqlite3_finalize(v47);
        *(v33 + 24) = 0;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100E257D0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v71 = a5;
  v59 = a3;
  v61 = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  v14 = *(v10 + 104);
  v64 = enum case for DispatchPredicate.onQueue(_:);
  v65 = v14;
  v14(v12);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v63 = *(v10 + 8);
  result = v63(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v60 = v10 + 104;
  v66 = a6;
  v62 = sub_1000280F0();
  v18 = v17;
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x80000001015A40C0;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x756C61765F79656BLL;
  v20._object = 0xEE00617461645F65;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 7955819;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x65756C6176;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6E695F6172747865;
  v26._object = 0xEA00000000006F66;
  String.append(_:)(v26);
  v27._object = 0x80000001015A40E0;
  v27._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v27);
  v28 = v69;
  v29 = v70;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v31 = sub_10001CC04(v30, v28, v29);
  if (v6)
  {

    v32 = v66;
LABEL_19:
    v48 = v71;
    return sub_10002640C(v48, v32);
  }

  v33 = v31;

  v58 = v18;
  sub_1000285F8(v62, v18, 1);
  v34 = *(*(v33 + 16) + 32);
  *v12 = v34;
  v65(v12, v64, v9);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v36 = v63;
  result = v63(v12, v9);
  v37 = v66;
  if ((v34 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_100DCCAB4(v71, v37, v33, 2);
  v38 = v61;
  if (v61)
  {

    v38(v33, 3);
    v36 = v63;
    sub_1000C1014(v38);
    goto LABEL_9;
  }

  v39 = *(*(v33 + 16) + 32);
  *v12 = v39;
  v65(v12, v64, v9);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  result = v36(v12, v9);
  if (v39)
  {
    swift_beginAccess();
    sqlite3_bind_null(*(v33 + 24), 3);
LABEL_9:
    v41 = *(*(v33 + 16) + 32);
    *v12 = v41;
    v65(v12, v64, v9);
    v42 = v41;
    LOBYTE(v41) = _dispatchPreconditionTest(_:)();
    result = v36(v12, v9);
    if (v41)
    {
      v43 = *(v33 + 16);

      v44 = sub_10001CEC4(v43, v33);

      if (v44 != 101)
      {
        v67 = 0;
        v68 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v67 = 0xD00000000000002CLL;
        v68 = 0x80000001015A4100;
        v49._countAndFlagsBits = v62;
        v49._object = v58;
        String.append(_:)(v49);

        v50 = v67;
        v51 = v68;
        sub_10089C7D0();
        swift_allocError();
        *v52 = v44;
        *(v52 + 8) = v50;
        *(v52 + 16) = v51;
        swift_willThrow();
        v53 = *(*(v33 + 16) + 32);
        *v12 = v53;
        v65(v12, v64, v9);
        v54 = v53;
        LOBYTE(v53) = _dispatchPreconditionTest(_:)();
        result = v63(v12, v9);
        if (v53)
        {
          swift_beginAccess();
          v55 = *(v33 + 24);
          v56 = v66;
          if (v55)
          {
            sqlite3_finalize(v55);
            *(v33 + 24) = 0;
          }

          v32 = v56;
          goto LABEL_19;
        }

        goto LABEL_25;
      }

      v45 = *(*(v33 + 16) + 32);
      *v12 = v45;
      v65(v12, v64, v9);
      v46 = v45;
      LOBYTE(v45) = _dispatchPreconditionTest(_:)();
      result = v36(v12, v9);
      if (v45)
      {
        swift_beginAccess();
        v47 = *(v33 + 24);
        if (v47)
        {
          sqlite3_finalize(v47);
          *(v33 + 24) = 0;
        }

        v48 = v71;
        v32 = v66;
        return sub_10002640C(v48, v32);
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100E25E0C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  v14 = *(v9 + 104);
  v39 = enum case for DispatchPredicate.onQueue(_:);
  v40 = v14;
  v38[2] = v9 + 104;
  v14(v12, v10);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  v38[0] = v8;
  v38[1] = v9 + 8;
  v41 = v16;
  v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_10000C83C(a1, v7, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v17 = sub_1000280F0();
  v19 = v18;
  sub_100026028(v7, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, 0xD00000000000003ELL, 0x80000001015A5C10);
  if (v2)
  {
  }

  v23 = v21;

  sub_1000285F8(v17, v19, 1);
  v24 = *(*(v23 + 16) + 32);
  *v12 = v24;
  v25 = v38[0];
  v40(v12, v39, v38[0]);
  v26 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v41(v12, v25);
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

  v27 = *(v23 + 16);

  v28 = sub_10001CEC4(v27, v23);

  if (v28 != 101)
  {
    goto LABEL_8;
  }

  v29 = *(*(v23 + 16) + 32);
  *v12 = v29;
  v40(v12, v39, v25);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v41(v12, v25);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v42 = 0xD000000000000021;
    v43 = 0x80000001015A5C50;
    v31._countAndFlagsBits = v17;
    v31._object = v19;
    String.append(_:)(v31);

    v32 = v42;
    v33 = v43;
    sub_10089C7D0();
    swift_allocError();
    *v34 = v28;
    *(v34 + 8) = v32;
    *(v34 + 16) = v33;
    swift_willThrow();
    v35 = *(*(v23 + 16) + 32);
    *v12 = v35;
    v40(v12, v39, v25);
    v36 = v35;
    LOBYTE(v35) = _dispatchPreconditionTest(_:)();
    v41(v12, v25);
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
  }

LABEL_9:
  swift_beginAccess();
  v37 = *(v23 + 24);
  if (v37)
  {
    sqlite3_finalize(v37);
    *(v23 + 24) = 0;
  }
}